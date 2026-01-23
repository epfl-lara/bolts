; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10414 () Bool)

(assert start!10414)

(declare-fun b!105068 () Bool)

(declare-fun b_free!3177 () Bool)

(declare-fun b_next!3177 () Bool)

(assert (=> b!105068 (= b_free!3177 (not b_next!3177))))

(declare-fun tp!58385 () Bool)

(declare-fun b_and!4695 () Bool)

(assert (=> b!105068 (= tp!58385 b_and!4695)))

(declare-fun b_free!3179 () Bool)

(declare-fun b_next!3179 () Bool)

(assert (=> b!105068 (= b_free!3179 (not b_next!3179))))

(declare-fun tp!58386 () Bool)

(declare-fun b_and!4697 () Bool)

(assert (=> b!105068 (= tp!58386 b_and!4697)))

(declare-fun tp!58384 () Bool)

(declare-datatypes ((List!1710 0))(
  ( (Nil!1704) (Cons!1704 (h!7101 (_ BitVec 16)) (t!21399 List!1710)) )
))
(declare-datatypes ((TokenValue!363 0))(
  ( (FloatLiteralValue!726 (text!2986 List!1710)) (TokenValueExt!362 (__x!1821 Int)) (Broken!1815 (value!13492 List!1710)) (Object!368) (End!363) (Def!363) (Underscore!363) (Match!363) (Else!363) (Error!363) (Case!363) (If!363) (Extends!363) (Abstract!363) (Class!363) (Val!363) (DelimiterValue!726 (del!423 List!1710)) (KeywordValue!369 (value!13493 List!1710)) (CommentValue!726 (value!13494 List!1710)) (WhitespaceValue!726 (value!13495 List!1710)) (IndentationValue!363 (value!13496 List!1710)) (String!2206) (Int32!363) (Broken!1816 (value!13497 List!1710)) (Boolean!364) (Unit!1119) (OperatorValue!366 (op!423 List!1710)) (IdentifierValue!726 (value!13498 List!1710)) (IdentifierValue!727 (value!13499 List!1710)) (WhitespaceValue!727 (value!13500 List!1710)) (True!726) (False!726) (Broken!1817 (value!13501 List!1710)) (Broken!1818 (value!13502 List!1710)) (True!727) (RightBrace!363) (RightBracket!363) (Colon!363) (Null!363) (Comma!363) (LeftBracket!363) (False!727) (LeftBrace!363) (ImaginaryLiteralValue!363 (text!2987 List!1710)) (StringLiteralValue!1089 (value!13503 List!1710)) (EOFValue!363 (value!13504 List!1710)) (IdentValue!363 (value!13505 List!1710)) (DelimiterValue!727 (value!13506 List!1710)) (DedentValue!363 (value!13507 List!1710)) (NewLineValue!363 (value!13508 List!1710)) (IntegerValue!1089 (value!13509 (_ BitVec 32)) (text!2988 List!1710)) (IntegerValue!1090 (value!13510 Int) (text!2989 List!1710)) (Times!363) (Or!363) (Equal!363) (Minus!363) (Broken!1819 (value!13511 List!1710)) (And!363) (Div!363) (LessEqual!363) (Mod!363) (Concat!804) (Not!363) (Plus!363) (SpaceValue!363 (value!13512 List!1710)) (IntegerValue!1091 (value!13513 Int) (text!2990 List!1710)) (StringLiteralValue!1090 (text!2991 List!1710)) (FloatLiteralValue!727 (text!2992 List!1710)) (BytesLiteralValue!363 (value!13514 List!1710)) (CommentValue!727 (value!13515 List!1710)) (StringLiteralValue!1091 (value!13516 List!1710)) (ErrorTokenValue!363 (msg!424 List!1710)) )
))
(declare-datatypes ((C!1804 0))(
  ( (C!1805 (val!509 Int)) )
))
(declare-datatypes ((List!1711 0))(
  ( (Nil!1705) (Cons!1705 (h!7102 C!1804) (t!21400 List!1711)) )
))
(declare-datatypes ((IArray!1081 0))(
  ( (IArray!1082 (innerList!598 List!1711)) )
))
(declare-datatypes ((Conc!540 0))(
  ( (Node!540 (left!1303 Conc!540) (right!1633 Conc!540) (csize!1310 Int) (cheight!751 Int)) (Leaf!862 (xs!3131 IArray!1081) (csize!1311 Int)) (Empty!540) )
))
(declare-datatypes ((BalanceConc!1084 0))(
  ( (BalanceConc!1085 (c!25296 Conc!540)) )
))
(declare-datatypes ((Regex!441 0))(
  ( (ElementMatch!441 (c!25297 C!1804)) (Concat!805 (regOne!1394 Regex!441) (regTwo!1394 Regex!441)) (EmptyExpr!441) (Star!441 (reg!770 Regex!441)) (EmptyLang!441) (Union!441 (regOne!1395 Regex!441) (regTwo!1395 Regex!441)) )
))
(declare-datatypes ((String!2207 0))(
  ( (String!2208 (value!13517 String)) )
))
(declare-datatypes ((TokenValueInjection!550 0))(
  ( (TokenValueInjection!551 (toValue!960 Int) (toChars!819 Int)) )
))
(declare-datatypes ((Rule!546 0))(
  ( (Rule!547 (regex!373 Regex!441) (tag!551 String!2207) (isSeparator!373 Bool) (transformation!373 TokenValueInjection!550)) )
))
(declare-datatypes ((List!1712 0))(
  ( (Nil!1706) (Cons!1706 (h!7103 Rule!546) (t!21401 List!1712)) )
))
(declare-fun rules!1152 () List!1712)

(declare-fun e!58324 () Bool)

(declare-fun e!58326 () Bool)

(declare-fun b!105067 () Bool)

(declare-fun inv!2074 (String!2207) Bool)

(declare-fun inv!2078 (TokenValueInjection!550) Bool)

(assert (=> b!105067 (= e!58326 (and tp!58384 (inv!2074 (tag!551 (h!7103 rules!1152))) (inv!2078 (transformation!373 (h!7103 rules!1152))) e!58324))))

(declare-fun res!50554 () Bool)

(declare-fun e!58327 () Bool)

(assert (=> start!10414 (=> (not res!50554) (not e!58327))))

(declare-datatypes ((LexerInterface!265 0))(
  ( (LexerInterfaceExt!262 (__x!1822 Int)) (Lexer!263) )
))
(declare-fun thiss!11428 () LexerInterface!265)

(get-info :version)

(assert (=> start!10414 (= res!50554 ((_ is Lexer!263) thiss!11428))))

(assert (=> start!10414 e!58327))

(assert (=> start!10414 true))

(declare-fun e!58320 () Bool)

(assert (=> start!10414 e!58320))

(declare-fun input!576 () BalanceConc!1084)

(declare-fun e!58328 () Bool)

(declare-fun inv!2079 (BalanceConc!1084) Bool)

(assert (=> start!10414 (and (inv!2079 input!576) e!58328)))

(assert (=> b!105068 (= e!58324 (and tp!58385 tp!58386))))

(declare-fun b!105069 () Bool)

(declare-fun res!50556 () Bool)

(assert (=> b!105069 (=> (not res!50556) (not e!58327))))

(declare-fun isEmpty!793 (List!1712) Bool)

(assert (=> b!105069 (= res!50556 (not (isEmpty!793 rules!1152)))))

(declare-fun b!105070 () Bool)

(declare-fun e!58322 () Bool)

(declare-datatypes ((Token!490 0))(
  ( (Token!491 (value!13518 TokenValue!363) (rule!876 Rule!546) (size!1512 Int) (originalCharacters!416 List!1711)) )
))
(declare-datatypes ((List!1713 0))(
  ( (Nil!1707) (Cons!1707 (h!7104 Token!490) (t!21402 List!1713)) )
))
(declare-datatypes ((IArray!1083 0))(
  ( (IArray!1084 (innerList!599 List!1713)) )
))
(declare-datatypes ((Conc!541 0))(
  ( (Node!541 (left!1304 Conc!541) (right!1634 Conc!541) (csize!1312 Int) (cheight!752 Int)) (Leaf!863 (xs!3132 IArray!1083) (csize!1313 Int)) (Empty!541) )
))
(declare-datatypes ((BalanceConc!1086 0))(
  ( (BalanceConc!1087 (c!25298 Conc!541)) )
))
(declare-datatypes ((tuple2!1856 0))(
  ( (tuple2!1857 (_1!1135 BalanceConc!1086) (_2!1135 BalanceConc!1084)) )
))
(declare-fun lt!29080 () tuple2!1856)

(declare-fun isEmpty!794 (BalanceConc!1086) Bool)

(assert (=> b!105070 (= e!58322 (isEmpty!794 (_1!1135 lt!29080)))))

(declare-fun b!105071 () Bool)

(declare-fun tp!58383 () Bool)

(assert (=> b!105071 (= e!58320 (and e!58326 tp!58383))))

(declare-fun b!105072 () Bool)

(declare-fun e!58321 () Bool)

(assert (=> b!105072 (= e!58321 e!58322)))

(declare-fun res!50558 () Bool)

(declare-fun size!1513 (BalanceConc!1084) Int)

(assert (=> b!105072 (= res!50558 (>= (size!1513 (_2!1135 lt!29080)) (size!1513 input!576)))))

(assert (=> b!105072 (=> res!50558 e!58322)))

(declare-fun b!105073 () Bool)

(declare-fun e!58323 () Bool)

(declare-datatypes ((tuple2!1858 0))(
  ( (tuple2!1859 (_1!1136 List!1713) (_2!1136 List!1711)) )
))
(declare-fun lt!29079 () tuple2!1858)

(declare-fun list!723 (BalanceConc!1084) List!1711)

(assert (=> b!105073 (= e!58323 (not (= (list!723 (_2!1135 lt!29080)) (_2!1136 lt!29079))))))

(declare-fun b!105074 () Bool)

(assert (=> b!105074 (= e!58321 (not (= (_2!1135 lt!29080) input!576)))))

(declare-fun b!105075 () Bool)

(declare-fun e!58319 () Bool)

(assert (=> b!105075 (= e!58327 e!58319)))

(declare-fun res!50557 () Bool)

(assert (=> b!105075 (=> res!50557 e!58319)))

(assert (=> b!105075 (= res!50557 e!58321)))

(declare-fun c!25295 () Bool)

(declare-fun size!1514 (BalanceConc!1086) Int)

(assert (=> b!105075 (= c!25295 (> (size!1514 (_1!1135 lt!29080)) 0))))

(declare-fun lexTailRec!6 (LexerInterface!265 List!1712 BalanceConc!1084 BalanceConc!1084 BalanceConc!1084 BalanceConc!1086) tuple2!1856)

(assert (=> b!105075 (= lt!29080 (lexTailRec!6 thiss!11428 rules!1152 input!576 (BalanceConc!1085 Empty!540) input!576 (BalanceConc!1087 Empty!541)))))

(declare-fun b!105076 () Bool)

(assert (=> b!105076 (= e!58319 e!58323)))

(declare-fun res!50555 () Bool)

(assert (=> b!105076 (=> res!50555 e!58323)))

(declare-fun list!724 (BalanceConc!1086) List!1713)

(assert (=> b!105076 (= res!50555 (not (= (list!724 (_1!1135 lt!29080)) (_1!1136 lt!29079))))))

(declare-fun lexList!83 (LexerInterface!265 List!1712 List!1711) tuple2!1858)

(assert (=> b!105076 (= lt!29079 (lexList!83 thiss!11428 rules!1152 (list!723 input!576)))))

(declare-fun b!105077 () Bool)

(declare-fun res!50559 () Bool)

(assert (=> b!105077 (=> (not res!50559) (not e!58327))))

(declare-fun rulesInvariant!259 (LexerInterface!265 List!1712) Bool)

(assert (=> b!105077 (= res!50559 (rulesInvariant!259 thiss!11428 rules!1152))))

(declare-fun b!105078 () Bool)

(declare-fun tp!58382 () Bool)

(declare-fun inv!2080 (Conc!540) Bool)

(assert (=> b!105078 (= e!58328 (and (inv!2080 (c!25296 input!576)) tp!58382))))

(assert (= (and start!10414 res!50554) b!105069))

(assert (= (and b!105069 res!50556) b!105077))

(assert (= (and b!105077 res!50559) b!105075))

(assert (= (and b!105075 c!25295) b!105072))

(assert (= (and b!105075 (not c!25295)) b!105074))

(assert (= (and b!105072 (not res!50558)) b!105070))

(assert (= (and b!105075 (not res!50557)) b!105076))

(assert (= (and b!105076 (not res!50555)) b!105073))

(assert (= b!105067 b!105068))

(assert (= b!105071 b!105067))

(assert (= (and start!10414 ((_ is Cons!1706) rules!1152)) b!105071))

(assert (= start!10414 b!105078))

(declare-fun m!91448 () Bool)

(assert (=> b!105073 m!91448))

(declare-fun m!91450 () Bool)

(assert (=> b!105067 m!91450))

(declare-fun m!91452 () Bool)

(assert (=> b!105067 m!91452))

(declare-fun m!91454 () Bool)

(assert (=> b!105069 m!91454))

(declare-fun m!91456 () Bool)

(assert (=> b!105076 m!91456))

(declare-fun m!91458 () Bool)

(assert (=> b!105076 m!91458))

(assert (=> b!105076 m!91458))

(declare-fun m!91460 () Bool)

(assert (=> b!105076 m!91460))

(declare-fun m!91462 () Bool)

(assert (=> b!105072 m!91462))

(declare-fun m!91464 () Bool)

(assert (=> b!105072 m!91464))

(declare-fun m!91466 () Bool)

(assert (=> start!10414 m!91466))

(declare-fun m!91468 () Bool)

(assert (=> b!105078 m!91468))

(declare-fun m!91470 () Bool)

(assert (=> b!105075 m!91470))

(declare-fun m!91472 () Bool)

(assert (=> b!105075 m!91472))

(declare-fun m!91474 () Bool)

(assert (=> b!105077 m!91474))

(declare-fun m!91476 () Bool)

(assert (=> b!105070 m!91476))

(check-sat (not b_next!3179) (not b!105070) b_and!4697 (not b!105073) b_and!4695 (not b!105067) (not b!105071) (not b!105075) (not b!105072) (not b!105069) (not start!10414) (not b!105078) (not b!105076) (not b!105077) (not b_next!3177))
(check-sat b_and!4697 b_and!4695 (not b_next!3179) (not b_next!3177))
(get-model)

(declare-fun d!25230 () Bool)

(declare-fun lt!29083 () Int)

(declare-fun size!1519 (List!1711) Int)

(assert (=> d!25230 (= lt!29083 (size!1519 (list!723 (_2!1135 lt!29080))))))

(declare-fun size!1520 (Conc!540) Int)

(assert (=> d!25230 (= lt!29083 (size!1520 (c!25296 (_2!1135 lt!29080))))))

(assert (=> d!25230 (= (size!1513 (_2!1135 lt!29080)) lt!29083)))

(declare-fun bs!10133 () Bool)

(assert (= bs!10133 d!25230))

(assert (=> bs!10133 m!91448))

(assert (=> bs!10133 m!91448))

(declare-fun m!91478 () Bool)

(assert (=> bs!10133 m!91478))

(declare-fun m!91480 () Bool)

(assert (=> bs!10133 m!91480))

(assert (=> b!105072 d!25230))

(declare-fun d!25232 () Bool)

(declare-fun lt!29084 () Int)

(assert (=> d!25232 (= lt!29084 (size!1519 (list!723 input!576)))))

(assert (=> d!25232 (= lt!29084 (size!1520 (c!25296 input!576)))))

(assert (=> d!25232 (= (size!1513 input!576) lt!29084)))

(declare-fun bs!10134 () Bool)

(assert (= bs!10134 d!25232))

(assert (=> bs!10134 m!91458))

(assert (=> bs!10134 m!91458))

(declare-fun m!91482 () Bool)

(assert (=> bs!10134 m!91482))

(declare-fun m!91484 () Bool)

(assert (=> bs!10134 m!91484))

(assert (=> b!105072 d!25232))

(declare-fun d!25234 () Bool)

(assert (=> d!25234 (= (inv!2074 (tag!551 (h!7103 rules!1152))) (= (mod (str.len (value!13517 (tag!551 (h!7103 rules!1152)))) 2) 0))))

(assert (=> b!105067 d!25234))

(declare-fun d!25238 () Bool)

(declare-fun res!50562 () Bool)

(declare-fun e!58331 () Bool)

(assert (=> d!25238 (=> (not res!50562) (not e!58331))))

(declare-fun semiInverseModEq!99 (Int Int) Bool)

(assert (=> d!25238 (= res!50562 (semiInverseModEq!99 (toChars!819 (transformation!373 (h!7103 rules!1152))) (toValue!960 (transformation!373 (h!7103 rules!1152)))))))

(assert (=> d!25238 (= (inv!2078 (transformation!373 (h!7103 rules!1152))) e!58331)))

(declare-fun b!105081 () Bool)

(declare-fun equivClasses!94 (Int Int) Bool)

(assert (=> b!105081 (= e!58331 (equivClasses!94 (toChars!819 (transformation!373 (h!7103 rules!1152))) (toValue!960 (transformation!373 (h!7103 rules!1152)))))))

(assert (= (and d!25238 res!50562) b!105081))

(declare-fun m!91488 () Bool)

(assert (=> d!25238 m!91488))

(declare-fun m!91490 () Bool)

(assert (=> b!105081 m!91490))

(assert (=> b!105067 d!25238))

(declare-fun d!25242 () Bool)

(declare-fun c!25301 () Bool)

(assert (=> d!25242 (= c!25301 ((_ is Node!540) (c!25296 input!576)))))

(declare-fun e!58336 () Bool)

(assert (=> d!25242 (= (inv!2080 (c!25296 input!576)) e!58336)))

(declare-fun b!105088 () Bool)

(declare-fun inv!2084 (Conc!540) Bool)

(assert (=> b!105088 (= e!58336 (inv!2084 (c!25296 input!576)))))

(declare-fun b!105089 () Bool)

(declare-fun e!58337 () Bool)

(assert (=> b!105089 (= e!58336 e!58337)))

(declare-fun res!50565 () Bool)

(assert (=> b!105089 (= res!50565 (not ((_ is Leaf!862) (c!25296 input!576))))))

(assert (=> b!105089 (=> res!50565 e!58337)))

(declare-fun b!105090 () Bool)

(declare-fun inv!2085 (Conc!540) Bool)

(assert (=> b!105090 (= e!58337 (inv!2085 (c!25296 input!576)))))

(assert (= (and d!25242 c!25301) b!105088))

(assert (= (and d!25242 (not c!25301)) b!105089))

(assert (= (and b!105089 (not res!50565)) b!105090))

(declare-fun m!91492 () Bool)

(assert (=> b!105088 m!91492))

(declare-fun m!91494 () Bool)

(assert (=> b!105090 m!91494))

(assert (=> b!105078 d!25242))

(declare-fun d!25244 () Bool)

(declare-fun list!727 (Conc!540) List!1711)

(assert (=> d!25244 (= (list!723 (_2!1135 lt!29080)) (list!727 (c!25296 (_2!1135 lt!29080))))))

(declare-fun bs!10136 () Bool)

(assert (= bs!10136 d!25244))

(declare-fun m!91496 () Bool)

(assert (=> bs!10136 m!91496))

(assert (=> b!105073 d!25244))

(declare-fun d!25246 () Bool)

(assert (=> d!25246 (= (isEmpty!793 rules!1152) ((_ is Nil!1706) rules!1152))))

(assert (=> b!105069 d!25246))

(declare-fun d!25248 () Bool)

(declare-fun lt!29087 () Int)

(declare-fun size!1521 (List!1713) Int)

(assert (=> d!25248 (= lt!29087 (size!1521 (list!724 (_1!1135 lt!29080))))))

(declare-fun size!1522 (Conc!541) Int)

(assert (=> d!25248 (= lt!29087 (size!1522 (c!25298 (_1!1135 lt!29080))))))

(assert (=> d!25248 (= (size!1514 (_1!1135 lt!29080)) lt!29087)))

(declare-fun bs!10137 () Bool)

(assert (= bs!10137 d!25248))

(assert (=> bs!10137 m!91456))

(assert (=> bs!10137 m!91456))

(declare-fun m!91498 () Bool)

(assert (=> bs!10137 m!91498))

(declare-fun m!91500 () Bool)

(assert (=> bs!10137 m!91500))

(assert (=> b!105075 d!25248))

(declare-fun lt!29237 () tuple2!1856)

(declare-fun e!58401 () Bool)

(declare-fun b!105192 () Bool)

(declare-fun lexRec!60 (LexerInterface!265 List!1712 BalanceConc!1084) tuple2!1856)

(assert (=> b!105192 (= e!58401 (= (list!723 (_2!1135 lt!29237)) (list!723 (_2!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))

(declare-fun b!105193 () Bool)

(declare-fun e!58400 () tuple2!1856)

(assert (=> b!105193 (= e!58400 (tuple2!1857 (BalanceConc!1087 Empty!541) input!576))))

(declare-datatypes ((tuple2!1864 0))(
  ( (tuple2!1865 (_1!1139 Token!490) (_2!1139 BalanceConc!1084)) )
))
(declare-datatypes ((Option!197 0))(
  ( (None!196) (Some!196 (v!13005 tuple2!1864)) )
))
(declare-fun lt!29252 () Option!197)

(declare-fun lt!29246 () tuple2!1856)

(declare-fun b!105194 () Bool)

(assert (=> b!105194 (= lt!29246 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29252))))))

(declare-fun e!58403 () tuple2!1856)

(declare-fun prepend!141 (BalanceConc!1086 Token!490) BalanceConc!1086)

(assert (=> b!105194 (= e!58403 (tuple2!1857 (prepend!141 (_1!1135 lt!29246) (_1!1139 (v!13005 lt!29252))) (_2!1135 lt!29246)))))

(declare-fun b!105195 () Bool)

(declare-fun lt!29240 () Option!197)

(declare-fun lt!29235 () tuple2!1856)

(assert (=> b!105195 (= lt!29235 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29240))))))

(declare-fun e!58402 () tuple2!1856)

(assert (=> b!105195 (= e!58402 (tuple2!1857 (prepend!141 (_1!1135 lt!29235) (_1!1139 (v!13005 lt!29240))) (_2!1135 lt!29235)))))

(declare-fun b!105196 () Bool)

(declare-fun lt!29247 () Option!197)

(declare-fun ++!282 (BalanceConc!1084 BalanceConc!1084) BalanceConc!1084)

(declare-fun charsOf!88 (Token!490) BalanceConc!1084)

(declare-fun append!61 (BalanceConc!1086 Token!490) BalanceConc!1086)

(assert (=> b!105196 (= e!58400 (lexTailRec!6 thiss!11428 rules!1152 input!576 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (_2!1139 (v!13005 lt!29247)) (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247)))))))

(declare-fun lt!29251 () tuple2!1856)

(assert (=> b!105196 (= lt!29251 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29247))))))

(declare-fun lt!29255 () List!1711)

(assert (=> b!105196 (= lt!29255 (list!723 (BalanceConc!1085 Empty!540)))))

(declare-fun lt!29250 () List!1711)

(assert (=> b!105196 (= lt!29250 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))

(declare-fun lt!29241 () List!1711)

(assert (=> b!105196 (= lt!29241 (list!723 (_2!1139 (v!13005 lt!29247))))))

(declare-datatypes ((Unit!1124 0))(
  ( (Unit!1125) )
))
(declare-fun lt!29248 () Unit!1124)

(declare-fun lemmaConcatAssociativity!104 (List!1711 List!1711 List!1711) Unit!1124)

(assert (=> b!105196 (= lt!29248 (lemmaConcatAssociativity!104 lt!29255 lt!29250 lt!29241))))

(declare-fun ++!283 (List!1711 List!1711) List!1711)

(assert (=> b!105196 (= (++!283 (++!283 lt!29255 lt!29250) lt!29241) (++!283 lt!29255 (++!283 lt!29250 lt!29241)))))

(declare-fun lt!29245 () Unit!1124)

(assert (=> b!105196 (= lt!29245 lt!29248)))

(declare-fun maxPrefixZipperSequence!56 (LexerInterface!265 List!1712 BalanceConc!1084) Option!197)

(assert (=> b!105196 (= lt!29240 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 input!576))))

(declare-fun c!25326 () Bool)

(assert (=> b!105196 (= c!25326 ((_ is Some!196) lt!29240))))

(assert (=> b!105196 (= (lexRec!60 thiss!11428 rules!1152 input!576) e!58402)))

(declare-fun lt!29243 () Unit!1124)

(declare-fun Unit!1126 () Unit!1124)

(assert (=> b!105196 (= lt!29243 Unit!1126)))

(declare-fun lt!29249 () List!1713)

(assert (=> b!105196 (= lt!29249 (list!724 (BalanceConc!1087 Empty!541)))))

(declare-fun lt!29244 () List!1713)

(assert (=> b!105196 (= lt!29244 (Cons!1707 (_1!1139 (v!13005 lt!29247)) Nil!1707))))

(declare-fun lt!29256 () List!1713)

(assert (=> b!105196 (= lt!29256 (list!724 (_1!1135 lt!29251)))))

(declare-fun lt!29239 () Unit!1124)

(declare-fun lemmaConcatAssociativity!105 (List!1713 List!1713 List!1713) Unit!1124)

(assert (=> b!105196 (= lt!29239 (lemmaConcatAssociativity!105 lt!29249 lt!29244 lt!29256))))

(declare-fun ++!284 (List!1713 List!1713) List!1713)

(assert (=> b!105196 (= (++!284 (++!284 lt!29249 lt!29244) lt!29256) (++!284 lt!29249 (++!284 lt!29244 lt!29256)))))

(declare-fun lt!29236 () Unit!1124)

(assert (=> b!105196 (= lt!29236 lt!29239)))

(declare-fun lt!29254 () List!1711)

(assert (=> b!105196 (= lt!29254 (++!283 (list!723 (BalanceConc!1085 Empty!540)) (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(declare-fun lt!29232 () List!1711)

(assert (=> b!105196 (= lt!29232 (list!723 (_2!1139 (v!13005 lt!29247))))))

(declare-fun lt!29234 () List!1713)

(assert (=> b!105196 (= lt!29234 (list!724 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247)))))))

(declare-fun lt!29242 () Unit!1124)

(declare-fun lemmaLexThenLexPrefix!47 (LexerInterface!265 List!1712 List!1711 List!1711 List!1713 List!1713 List!1711) Unit!1124)

(assert (=> b!105196 (= lt!29242 (lemmaLexThenLexPrefix!47 thiss!11428 rules!1152 lt!29254 lt!29232 lt!29234 (list!724 (_1!1135 lt!29251)) (list!723 (_2!1135 lt!29251))))))

(assert (=> b!105196 (= (lexList!83 thiss!11428 rules!1152 lt!29254) (tuple2!1859 lt!29234 Nil!1705))))

(declare-fun lt!29253 () Unit!1124)

(assert (=> b!105196 (= lt!29253 lt!29242)))

(declare-fun lt!29233 () BalanceConc!1084)

(assert (=> b!105196 (= lt!29233 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))

(assert (=> b!105196 (= lt!29252 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 lt!29233))))

(declare-fun c!25327 () Bool)

(assert (=> b!105196 (= c!25327 ((_ is Some!196) lt!29252))))

(assert (=> b!105196 (= (lexRec!60 thiss!11428 rules!1152 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) e!58403)))

(declare-fun lt!29238 () Unit!1124)

(declare-fun Unit!1127 () Unit!1124)

(assert (=> b!105196 (= lt!29238 Unit!1127)))

(declare-fun b!105197 () Bool)

(assert (=> b!105197 (= e!58403 (tuple2!1857 (BalanceConc!1087 Empty!541) lt!29233))))

(declare-fun d!25250 () Bool)

(assert (=> d!25250 e!58401))

(declare-fun res!50583 () Bool)

(assert (=> d!25250 (=> (not res!50583) (not e!58401))))

(assert (=> d!25250 (= res!50583 (= (list!724 (_1!1135 lt!29237)) (list!724 (_1!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))

(assert (=> d!25250 (= lt!29237 e!58400)))

(declare-fun c!25328 () Bool)

(assert (=> d!25250 (= c!25328 ((_ is Some!196) lt!29247))))

(assert (=> d!25250 (= lt!29247 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 input!576))))

(assert (=> d!25250 (= (lexTailRec!6 thiss!11428 rules!1152 input!576 (BalanceConc!1085 Empty!540) input!576 (BalanceConc!1087 Empty!541)) lt!29237)))

(declare-fun b!105198 () Bool)

(assert (=> b!105198 (= e!58402 (tuple2!1857 (BalanceConc!1087 Empty!541) input!576))))

(assert (= (and d!25250 c!25328) b!105196))

(assert (= (and d!25250 (not c!25328)) b!105193))

(assert (= (and b!105196 c!25326) b!105195))

(assert (= (and b!105196 (not c!25326)) b!105198))

(assert (= (and b!105196 c!25327) b!105194))

(assert (= (and b!105196 (not c!25327)) b!105197))

(assert (= (and d!25250 res!50583) b!105192))

(declare-fun m!91630 () Bool)

(assert (=> b!105196 m!91630))

(declare-fun m!91632 () Bool)

(assert (=> b!105196 m!91632))

(declare-fun m!91634 () Bool)

(assert (=> b!105196 m!91634))

(declare-fun m!91636 () Bool)

(assert (=> b!105196 m!91636))

(declare-fun m!91638 () Bool)

(assert (=> b!105196 m!91638))

(declare-fun m!91640 () Bool)

(assert (=> b!105196 m!91640))

(declare-fun m!91642 () Bool)

(assert (=> b!105196 m!91642))

(declare-fun m!91644 () Bool)

(assert (=> b!105196 m!91644))

(declare-fun m!91646 () Bool)

(assert (=> b!105196 m!91646))

(declare-fun m!91648 () Bool)

(assert (=> b!105196 m!91648))

(declare-fun m!91650 () Bool)

(assert (=> b!105196 m!91650))

(declare-fun m!91652 () Bool)

(assert (=> b!105196 m!91652))

(declare-fun m!91654 () Bool)

(assert (=> b!105196 m!91654))

(declare-fun m!91656 () Bool)

(assert (=> b!105196 m!91656))

(declare-fun m!91658 () Bool)

(assert (=> b!105196 m!91658))

(assert (=> b!105196 m!91654))

(declare-fun m!91660 () Bool)

(assert (=> b!105196 m!91660))

(declare-fun m!91662 () Bool)

(assert (=> b!105196 m!91662))

(assert (=> b!105196 m!91660))

(declare-fun m!91664 () Bool)

(assert (=> b!105196 m!91664))

(declare-fun m!91666 () Bool)

(assert (=> b!105196 m!91666))

(assert (=> b!105196 m!91648))

(declare-fun m!91668 () Bool)

(assert (=> b!105196 m!91668))

(assert (=> b!105196 m!91636))

(assert (=> b!105196 m!91650))

(declare-fun m!91670 () Bool)

(assert (=> b!105196 m!91670))

(assert (=> b!105196 m!91662))

(declare-fun m!91672 () Bool)

(assert (=> b!105196 m!91672))

(declare-fun m!91674 () Bool)

(assert (=> b!105196 m!91674))

(assert (=> b!105196 m!91638))

(declare-fun m!91676 () Bool)

(assert (=> b!105196 m!91676))

(declare-fun m!91678 () Bool)

(assert (=> b!105196 m!91678))

(declare-fun m!91680 () Bool)

(assert (=> b!105196 m!91680))

(assert (=> b!105196 m!91662))

(assert (=> b!105196 m!91648))

(declare-fun m!91682 () Bool)

(assert (=> b!105196 m!91682))

(assert (=> b!105196 m!91660))

(assert (=> b!105196 m!91640))

(assert (=> b!105196 m!91676))

(declare-fun m!91684 () Bool)

(assert (=> b!105196 m!91684))

(assert (=> b!105196 m!91630))

(declare-fun m!91686 () Bool)

(assert (=> b!105196 m!91686))

(assert (=> b!105196 m!91644))

(declare-fun m!91688 () Bool)

(assert (=> d!25250 m!91688))

(assert (=> d!25250 m!91674))

(declare-fun m!91690 () Bool)

(assert (=> d!25250 m!91690))

(assert (=> d!25250 m!91664))

(declare-fun m!91692 () Bool)

(assert (=> b!105194 m!91692))

(declare-fun m!91694 () Bool)

(assert (=> b!105194 m!91694))

(declare-fun m!91696 () Bool)

(assert (=> b!105195 m!91696))

(declare-fun m!91698 () Bool)

(assert (=> b!105195 m!91698))

(declare-fun m!91700 () Bool)

(assert (=> b!105192 m!91700))

(assert (=> b!105192 m!91674))

(declare-fun m!91702 () Bool)

(assert (=> b!105192 m!91702))

(assert (=> b!105075 d!25250))

(declare-fun d!25278 () Bool)

(declare-fun lt!29259 () Bool)

(declare-fun isEmpty!797 (List!1713) Bool)

(assert (=> d!25278 (= lt!29259 (isEmpty!797 (list!724 (_1!1135 lt!29080))))))

(declare-fun isEmpty!798 (Conc!541) Bool)

(assert (=> d!25278 (= lt!29259 (isEmpty!798 (c!25298 (_1!1135 lt!29080))))))

(assert (=> d!25278 (= (isEmpty!794 (_1!1135 lt!29080)) lt!29259)))

(declare-fun bs!10145 () Bool)

(assert (= bs!10145 d!25278))

(assert (=> bs!10145 m!91456))

(assert (=> bs!10145 m!91456))

(declare-fun m!91704 () Bool)

(assert (=> bs!10145 m!91704))

(declare-fun m!91706 () Bool)

(assert (=> bs!10145 m!91706))

(assert (=> b!105070 d!25278))

(declare-fun d!25280 () Bool)

(declare-fun list!728 (Conc!541) List!1713)

(assert (=> d!25280 (= (list!724 (_1!1135 lt!29080)) (list!728 (c!25298 (_1!1135 lt!29080))))))

(declare-fun bs!10146 () Bool)

(assert (= bs!10146 d!25280))

(declare-fun m!91708 () Bool)

(assert (=> bs!10146 m!91708))

(assert (=> b!105076 d!25280))

(declare-fun d!25282 () Bool)

(declare-fun e!58411 () Bool)

(assert (=> d!25282 e!58411))

(declare-fun c!25334 () Bool)

(declare-fun lt!29267 () tuple2!1858)

(assert (=> d!25282 (= c!25334 (> (size!1521 (_1!1136 lt!29267)) 0))))

(declare-fun e!58412 () tuple2!1858)

(assert (=> d!25282 (= lt!29267 e!58412)))

(declare-fun c!25333 () Bool)

(declare-datatypes ((tuple2!1866 0))(
  ( (tuple2!1867 (_1!1140 Token!490) (_2!1140 List!1711)) )
))
(declare-datatypes ((Option!198 0))(
  ( (None!197) (Some!197 (v!13006 tuple2!1866)) )
))
(declare-fun lt!29268 () Option!198)

(assert (=> d!25282 (= c!25333 ((_ is Some!197) lt!29268))))

(declare-fun maxPrefix!93 (LexerInterface!265 List!1712 List!1711) Option!198)

(assert (=> d!25282 (= lt!29268 (maxPrefix!93 thiss!11428 rules!1152 (list!723 input!576)))))

(assert (=> d!25282 (= (lexList!83 thiss!11428 rules!1152 (list!723 input!576)) lt!29267)))

(declare-fun b!105209 () Bool)

(declare-fun lt!29266 () tuple2!1858)

(assert (=> b!105209 (= e!58412 (tuple2!1859 (Cons!1707 (_1!1140 (v!13006 lt!29268)) (_1!1136 lt!29266)) (_2!1136 lt!29266)))))

(assert (=> b!105209 (= lt!29266 (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!29268))))))

(declare-fun b!105210 () Bool)

(assert (=> b!105210 (= e!58412 (tuple2!1859 Nil!1707 (list!723 input!576)))))

(declare-fun b!105211 () Bool)

(declare-fun e!58410 () Bool)

(assert (=> b!105211 (= e!58410 (not (isEmpty!797 (_1!1136 lt!29267))))))

(declare-fun b!105212 () Bool)

(assert (=> b!105212 (= e!58411 e!58410)))

(declare-fun res!50586 () Bool)

(assert (=> b!105212 (= res!50586 (< (size!1519 (_2!1136 lt!29267)) (size!1519 (list!723 input!576))))))

(assert (=> b!105212 (=> (not res!50586) (not e!58410))))

(declare-fun b!105213 () Bool)

(assert (=> b!105213 (= e!58411 (= (_2!1136 lt!29267) (list!723 input!576)))))

(assert (= (and d!25282 c!25333) b!105209))

(assert (= (and d!25282 (not c!25333)) b!105210))

(assert (= (and d!25282 c!25334) b!105212))

(assert (= (and d!25282 (not c!25334)) b!105213))

(assert (= (and b!105212 res!50586) b!105211))

(declare-fun m!91710 () Bool)

(assert (=> d!25282 m!91710))

(assert (=> d!25282 m!91458))

(declare-fun m!91712 () Bool)

(assert (=> d!25282 m!91712))

(declare-fun m!91714 () Bool)

(assert (=> b!105209 m!91714))

(declare-fun m!91716 () Bool)

(assert (=> b!105211 m!91716))

(declare-fun m!91718 () Bool)

(assert (=> b!105212 m!91718))

(assert (=> b!105212 m!91458))

(assert (=> b!105212 m!91482))

(assert (=> b!105076 d!25282))

(declare-fun d!25284 () Bool)

(assert (=> d!25284 (= (list!723 input!576) (list!727 (c!25296 input!576)))))

(declare-fun bs!10147 () Bool)

(assert (= bs!10147 d!25284))

(declare-fun m!91720 () Bool)

(assert (=> bs!10147 m!91720))

(assert (=> b!105076 d!25284))

(declare-fun d!25286 () Bool)

(declare-fun isBalanced!149 (Conc!540) Bool)

(assert (=> d!25286 (= (inv!2079 input!576) (isBalanced!149 (c!25296 input!576)))))

(declare-fun bs!10148 () Bool)

(assert (= bs!10148 d!25286))

(declare-fun m!91722 () Bool)

(assert (=> bs!10148 m!91722))

(assert (=> start!10414 d!25286))

(declare-fun d!25288 () Bool)

(declare-fun res!50589 () Bool)

(declare-fun e!58415 () Bool)

(assert (=> d!25288 (=> (not res!50589) (not e!58415))))

(declare-fun rulesValid!107 (LexerInterface!265 List!1712) Bool)

(assert (=> d!25288 (= res!50589 (rulesValid!107 thiss!11428 rules!1152))))

(assert (=> d!25288 (= (rulesInvariant!259 thiss!11428 rules!1152) e!58415)))

(declare-fun b!105216 () Bool)

(declare-datatypes ((List!1715 0))(
  ( (Nil!1709) (Cons!1709 (h!7106 String!2207) (t!21404 List!1715)) )
))
(declare-fun noDuplicateTag!107 (LexerInterface!265 List!1712 List!1715) Bool)

(assert (=> b!105216 (= e!58415 (noDuplicateTag!107 thiss!11428 rules!1152 Nil!1709))))

(assert (= (and d!25288 res!50589) b!105216))

(declare-fun m!91724 () Bool)

(assert (=> d!25288 m!91724))

(declare-fun m!91726 () Bool)

(assert (=> b!105216 m!91726))

(assert (=> b!105077 d!25288))

(declare-fun b!105228 () Bool)

(declare-fun e!58418 () Bool)

(declare-fun tp!58436 () Bool)

(declare-fun tp!58437 () Bool)

(assert (=> b!105228 (= e!58418 (and tp!58436 tp!58437))))

(declare-fun b!105227 () Bool)

(declare-fun tp_is_empty!789 () Bool)

(assert (=> b!105227 (= e!58418 tp_is_empty!789)))

(declare-fun b!105230 () Bool)

(declare-fun tp!58435 () Bool)

(declare-fun tp!58434 () Bool)

(assert (=> b!105230 (= e!58418 (and tp!58435 tp!58434))))

(declare-fun b!105229 () Bool)

(declare-fun tp!58433 () Bool)

(assert (=> b!105229 (= e!58418 tp!58433)))

(assert (=> b!105067 (= tp!58384 e!58418)))

(assert (= (and b!105067 ((_ is ElementMatch!441) (regex!373 (h!7103 rules!1152)))) b!105227))

(assert (= (and b!105067 ((_ is Concat!805) (regex!373 (h!7103 rules!1152)))) b!105228))

(assert (= (and b!105067 ((_ is Star!441) (regex!373 (h!7103 rules!1152)))) b!105229))

(assert (= (and b!105067 ((_ is Union!441) (regex!373 (h!7103 rules!1152)))) b!105230))

(declare-fun tp!58446 () Bool)

(declare-fun e!58424 () Bool)

(declare-fun tp!58444 () Bool)

(declare-fun b!105239 () Bool)

(assert (=> b!105239 (= e!58424 (and (inv!2080 (left!1303 (c!25296 input!576))) tp!58446 (inv!2080 (right!1633 (c!25296 input!576))) tp!58444))))

(declare-fun b!105241 () Bool)

(declare-fun e!58423 () Bool)

(declare-fun tp!58445 () Bool)

(assert (=> b!105241 (= e!58423 tp!58445)))

(declare-fun b!105240 () Bool)

(declare-fun inv!2086 (IArray!1081) Bool)

(assert (=> b!105240 (= e!58424 (and (inv!2086 (xs!3131 (c!25296 input!576))) e!58423))))

(assert (=> b!105078 (= tp!58382 (and (inv!2080 (c!25296 input!576)) e!58424))))

(assert (= (and b!105078 ((_ is Node!540) (c!25296 input!576))) b!105239))

(assert (= b!105240 b!105241))

(assert (= (and b!105078 ((_ is Leaf!862) (c!25296 input!576))) b!105240))

(declare-fun m!91728 () Bool)

(assert (=> b!105239 m!91728))

(declare-fun m!91730 () Bool)

(assert (=> b!105239 m!91730))

(declare-fun m!91732 () Bool)

(assert (=> b!105240 m!91732))

(assert (=> b!105078 m!91468))

(declare-fun b!105252 () Bool)

(declare-fun b_free!3185 () Bool)

(declare-fun b_next!3185 () Bool)

(assert (=> b!105252 (= b_free!3185 (not b_next!3185))))

(declare-fun tp!58457 () Bool)

(declare-fun b_and!4703 () Bool)

(assert (=> b!105252 (= tp!58457 b_and!4703)))

(declare-fun b_free!3187 () Bool)

(declare-fun b_next!3187 () Bool)

(assert (=> b!105252 (= b_free!3187 (not b_next!3187))))

(declare-fun tp!58456 () Bool)

(declare-fun b_and!4705 () Bool)

(assert (=> b!105252 (= tp!58456 b_and!4705)))

(declare-fun e!58434 () Bool)

(assert (=> b!105252 (= e!58434 (and tp!58457 tp!58456))))

(declare-fun tp!58458 () Bool)

(declare-fun e!58433 () Bool)

(declare-fun b!105251 () Bool)

(assert (=> b!105251 (= e!58433 (and tp!58458 (inv!2074 (tag!551 (h!7103 (t!21401 rules!1152)))) (inv!2078 (transformation!373 (h!7103 (t!21401 rules!1152)))) e!58434))))

(declare-fun b!105250 () Bool)

(declare-fun e!58435 () Bool)

(declare-fun tp!58455 () Bool)

(assert (=> b!105250 (= e!58435 (and e!58433 tp!58455))))

(assert (=> b!105071 (= tp!58383 e!58435)))

(assert (= b!105251 b!105252))

(assert (= b!105250 b!105251))

(assert (= (and b!105071 ((_ is Cons!1706) (t!21401 rules!1152))) b!105250))

(declare-fun m!91734 () Bool)

(assert (=> b!105251 m!91734))

(declare-fun m!91736 () Bool)

(assert (=> b!105251 m!91736))

(check-sat (not b!105230) (not d!25284) (not b!105212) (not b!105250) (not b!105195) (not d!25232) (not b!105081) (not b!105192) (not d!25250) (not b_next!3179) b_and!4697 (not b!105090) (not b!105228) (not b!105211) (not b_next!3187) tp_is_empty!789 (not b!105196) b_and!4695 (not b!105239) (not d!25230) (not b!105216) (not d!25244) b_and!4705 (not b_next!3185) (not b!105088) (not d!25286) (not d!25238) (not b!105251) (not d!25248) (not b!105241) (not d!25280) (not d!25288) b_and!4703 (not b!105209) (not b!105078) (not d!25278) (not b!105229) (not b!105240) (not d!25282) (not b_next!3177) (not b!105194))
(check-sat (not b_next!3179) b_and!4697 (not b_next!3187) b_and!4695 b_and!4703 (not b_next!3177) b_and!4705 (not b_next!3185))
(get-model)

(declare-fun d!25320 () Bool)

(declare-fun e!58480 () Bool)

(assert (=> d!25320 e!58480))

(declare-fun c!25361 () Bool)

(declare-fun lt!29295 () tuple2!1858)

(assert (=> d!25320 (= c!25361 (> (size!1521 (_1!1136 lt!29295)) 0))))

(declare-fun e!58481 () tuple2!1858)

(assert (=> d!25320 (= lt!29295 e!58481)))

(declare-fun c!25360 () Bool)

(declare-fun lt!29296 () Option!198)

(assert (=> d!25320 (= c!25360 ((_ is Some!197) lt!29296))))

(assert (=> d!25320 (= lt!29296 (maxPrefix!93 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!29268))))))

(assert (=> d!25320 (= (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!29268))) lt!29295)))

(declare-fun b!105339 () Bool)

(declare-fun lt!29294 () tuple2!1858)

(assert (=> b!105339 (= e!58481 (tuple2!1859 (Cons!1707 (_1!1140 (v!13006 lt!29296)) (_1!1136 lt!29294)) (_2!1136 lt!29294)))))

(assert (=> b!105339 (= lt!29294 (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!29296))))))

(declare-fun b!105340 () Bool)

(assert (=> b!105340 (= e!58481 (tuple2!1859 Nil!1707 (_2!1140 (v!13006 lt!29268))))))

(declare-fun b!105341 () Bool)

(declare-fun e!58479 () Bool)

(assert (=> b!105341 (= e!58479 (not (isEmpty!797 (_1!1136 lt!29295))))))

(declare-fun b!105342 () Bool)

(assert (=> b!105342 (= e!58480 e!58479)))

(declare-fun res!50634 () Bool)

(assert (=> b!105342 (= res!50634 (< (size!1519 (_2!1136 lt!29295)) (size!1519 (_2!1140 (v!13006 lt!29268)))))))

(assert (=> b!105342 (=> (not res!50634) (not e!58479))))

(declare-fun b!105343 () Bool)

(assert (=> b!105343 (= e!58480 (= (_2!1136 lt!29295) (_2!1140 (v!13006 lt!29268))))))

(assert (= (and d!25320 c!25360) b!105339))

(assert (= (and d!25320 (not c!25360)) b!105340))

(assert (= (and d!25320 c!25361) b!105342))

(assert (= (and d!25320 (not c!25361)) b!105343))

(assert (= (and b!105342 res!50634) b!105341))

(declare-fun m!91822 () Bool)

(assert (=> d!25320 m!91822))

(declare-fun m!91824 () Bool)

(assert (=> d!25320 m!91824))

(declare-fun m!91826 () Bool)

(assert (=> b!105339 m!91826))

(declare-fun m!91828 () Bool)

(assert (=> b!105341 m!91828))

(declare-fun m!91830 () Bool)

(assert (=> b!105342 m!91830))

(declare-fun m!91832 () Bool)

(assert (=> b!105342 m!91832))

(assert (=> b!105209 d!25320))

(declare-fun d!25322 () Bool)

(assert (=> d!25322 (= (list!724 (_1!1135 lt!29237)) (list!728 (c!25298 (_1!1135 lt!29237))))))

(declare-fun bs!10153 () Bool)

(assert (= bs!10153 d!25322))

(declare-fun m!91834 () Bool)

(assert (=> bs!10153 m!91834))

(assert (=> d!25250 d!25322))

(declare-fun d!25324 () Bool)

(assert (=> d!25324 (= (list!724 (_1!1135 (lexRec!60 thiss!11428 rules!1152 input!576))) (list!728 (c!25298 (_1!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))

(declare-fun bs!10154 () Bool)

(assert (= bs!10154 d!25324))

(declare-fun m!91836 () Bool)

(assert (=> bs!10154 m!91836))

(assert (=> d!25250 d!25324))

(declare-fun b!105402 () Bool)

(declare-fun e!58519 () tuple2!1856)

(declare-fun lt!29331 () tuple2!1856)

(declare-fun lt!29333 () Option!197)

(assert (=> b!105402 (= e!58519 (tuple2!1857 (prepend!141 (_1!1135 lt!29331) (_1!1139 (v!13005 lt!29333))) (_2!1135 lt!29331)))))

(assert (=> b!105402 (= lt!29331 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29333))))))

(declare-fun lt!29332 () tuple2!1856)

(declare-fun e!58520 () Bool)

(declare-fun b!105403 () Bool)

(assert (=> b!105403 (= e!58520 (= (list!723 (_2!1135 lt!29332)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 input!576)))))))

(declare-fun b!105404 () Bool)

(declare-fun e!58521 () Bool)

(assert (=> b!105404 (= e!58521 (not (isEmpty!794 (_1!1135 lt!29332))))))

(declare-fun b!105405 () Bool)

(assert (=> b!105405 (= e!58519 (tuple2!1857 (BalanceConc!1087 Empty!541) input!576))))

(declare-fun b!105407 () Bool)

(declare-fun e!58518 () Bool)

(assert (=> b!105407 (= e!58518 e!58521)))

(declare-fun res!50669 () Bool)

(assert (=> b!105407 (= res!50669 (< (size!1513 (_2!1135 lt!29332)) (size!1513 input!576)))))

(assert (=> b!105407 (=> (not res!50669) (not e!58521))))

(declare-fun b!105408 () Bool)

(declare-fun res!50671 () Bool)

(assert (=> b!105408 (=> (not res!50671) (not e!58520))))

(assert (=> b!105408 (= res!50671 (= (list!724 (_1!1135 lt!29332)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 input!576)))))))

(declare-fun b!105406 () Bool)

(assert (=> b!105406 (= e!58518 (= (list!723 (_2!1135 lt!29332)) (list!723 input!576)))))

(declare-fun d!25326 () Bool)

(assert (=> d!25326 e!58520))

(declare-fun res!50670 () Bool)

(assert (=> d!25326 (=> (not res!50670) (not e!58520))))

(assert (=> d!25326 (= res!50670 e!58518)))

(declare-fun c!25375 () Bool)

(assert (=> d!25326 (= c!25375 (> (size!1514 (_1!1135 lt!29332)) 0))))

(assert (=> d!25326 (= lt!29332 e!58519)))

(declare-fun c!25374 () Bool)

(assert (=> d!25326 (= c!25374 ((_ is Some!196) lt!29333))))

(assert (=> d!25326 (= lt!29333 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 input!576))))

(assert (=> d!25326 (= (lexRec!60 thiss!11428 rules!1152 input!576) lt!29332)))

(assert (= (and d!25326 c!25374) b!105402))

(assert (= (and d!25326 (not c!25374)) b!105405))

(assert (= (and d!25326 c!25375) b!105407))

(assert (= (and d!25326 (not c!25375)) b!105406))

(assert (= (and b!105407 res!50669) b!105404))

(assert (= (and d!25326 res!50670) b!105408))

(assert (= (and b!105408 res!50671) b!105403))

(declare-fun m!91910 () Bool)

(assert (=> b!105402 m!91910))

(declare-fun m!91912 () Bool)

(assert (=> b!105402 m!91912))

(declare-fun m!91914 () Bool)

(assert (=> b!105408 m!91914))

(assert (=> b!105408 m!91458))

(assert (=> b!105408 m!91458))

(assert (=> b!105408 m!91460))

(declare-fun m!91916 () Bool)

(assert (=> b!105407 m!91916))

(assert (=> b!105407 m!91464))

(declare-fun m!91918 () Bool)

(assert (=> b!105403 m!91918))

(assert (=> b!105403 m!91458))

(assert (=> b!105403 m!91458))

(assert (=> b!105403 m!91460))

(declare-fun m!91920 () Bool)

(assert (=> d!25326 m!91920))

(assert (=> d!25326 m!91664))

(declare-fun m!91922 () Bool)

(assert (=> b!105404 m!91922))

(assert (=> b!105406 m!91918))

(assert (=> b!105406 m!91458))

(assert (=> d!25250 d!25326))

(declare-fun b!105495 () Bool)

(declare-fun res!50724 () Bool)

(declare-fun e!58576 () Bool)

(assert (=> b!105495 (=> (not res!50724) (not e!58576))))

(declare-fun e!58575 () Bool)

(assert (=> b!105495 (= res!50724 e!58575)))

(declare-fun res!50723 () Bool)

(assert (=> b!105495 (=> res!50723 e!58575)))

(declare-fun lt!29411 () Option!197)

(declare-fun isDefined!71 (Option!197) Bool)

(assert (=> b!105495 (= res!50723 (not (isDefined!71 lt!29411)))))

(declare-fun b!105496 () Bool)

(declare-fun e!58573 () Bool)

(declare-fun e!58577 () Bool)

(assert (=> b!105496 (= e!58573 e!58577)))

(declare-fun res!50726 () Bool)

(assert (=> b!105496 (=> (not res!50726) (not e!58577))))

(declare-fun get!437 (Option!197) tuple2!1864)

(declare-fun get!438 (Option!198) tuple2!1866)

(assert (=> b!105496 (= res!50726 (= (_1!1139 (get!437 lt!29411)) (_1!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 input!576))))))))

(declare-fun b!105497 () Bool)

(assert (=> b!105497 (= e!58577 (= (list!723 (_2!1139 (get!437 lt!29411))) (_2!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 input!576))))))))

(declare-fun e!58574 () Bool)

(declare-fun b!105498 () Bool)

(declare-fun maxPrefixZipper!17 (LexerInterface!265 List!1712 List!1711) Option!198)

(assert (=> b!105498 (= e!58574 (= (list!723 (_2!1139 (get!437 lt!29411))) (_2!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 input!576))))))))

(declare-fun bm!4548 () Bool)

(declare-fun call!4553 () Option!197)

(declare-fun maxPrefixOneRuleZipperSequence!18 (LexerInterface!265 Rule!546 BalanceConc!1084) Option!197)

(assert (=> bm!4548 (= call!4553 (maxPrefixOneRuleZipperSequence!18 thiss!11428 (h!7103 rules!1152) input!576))))

(declare-fun d!25342 () Bool)

(assert (=> d!25342 e!58576))

(declare-fun res!50722 () Bool)

(assert (=> d!25342 (=> (not res!50722) (not e!58576))))

(declare-fun isDefined!72 (Option!198) Bool)

(assert (=> d!25342 (= res!50722 (= (isDefined!71 lt!29411) (isDefined!72 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 input!576)))))))

(declare-fun e!58572 () Option!197)

(assert (=> d!25342 (= lt!29411 e!58572)))

(declare-fun c!25396 () Bool)

(assert (=> d!25342 (= c!25396 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!29412 () Unit!1124)

(declare-fun lt!29410 () Unit!1124)

(assert (=> d!25342 (= lt!29412 lt!29410)))

(declare-fun lt!29407 () List!1711)

(declare-fun lt!29406 () List!1711)

(declare-fun isPrefix!51 (List!1711 List!1711) Bool)

(assert (=> d!25342 (isPrefix!51 lt!29407 lt!29406)))

(declare-fun lemmaIsPrefixRefl!51 (List!1711 List!1711) Unit!1124)

(assert (=> d!25342 (= lt!29410 (lemmaIsPrefixRefl!51 lt!29407 lt!29406))))

(assert (=> d!25342 (= lt!29406 (list!723 input!576))))

(assert (=> d!25342 (= lt!29407 (list!723 input!576))))

(declare-fun rulesValidInductive!84 (LexerInterface!265 List!1712) Bool)

(assert (=> d!25342 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!25342 (= (maxPrefixZipperSequence!56 thiss!11428 rules!1152 input!576) lt!29411)))

(declare-fun b!105499 () Bool)

(assert (=> b!105499 (= e!58576 e!58573)))

(declare-fun res!50725 () Bool)

(assert (=> b!105499 (=> res!50725 e!58573)))

(assert (=> b!105499 (= res!50725 (not (isDefined!71 lt!29411)))))

(declare-fun b!105500 () Bool)

(assert (=> b!105500 (= e!58575 e!58574)))

(declare-fun res!50721 () Bool)

(assert (=> b!105500 (=> (not res!50721) (not e!58574))))

(assert (=> b!105500 (= res!50721 (= (_1!1139 (get!437 lt!29411)) (_1!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 input!576))))))))

(declare-fun b!105501 () Bool)

(declare-fun lt!29408 () Option!197)

(declare-fun lt!29409 () Option!197)

(assert (=> b!105501 (= e!58572 (ite (and ((_ is None!196) lt!29408) ((_ is None!196) lt!29409)) None!196 (ite ((_ is None!196) lt!29409) lt!29408 (ite ((_ is None!196) lt!29408) lt!29409 (ite (>= (size!1512 (_1!1139 (v!13005 lt!29408))) (size!1512 (_1!1139 (v!13005 lt!29409)))) lt!29408 lt!29409)))))))

(assert (=> b!105501 (= lt!29408 call!4553)))

(assert (=> b!105501 (= lt!29409 (maxPrefixZipperSequence!56 thiss!11428 (t!21401 rules!1152) input!576))))

(declare-fun b!105502 () Bool)

(assert (=> b!105502 (= e!58572 call!4553)))

(assert (= (and d!25342 c!25396) b!105502))

(assert (= (and d!25342 (not c!25396)) b!105501))

(assert (= (or b!105502 b!105501) bm!4548))

(assert (= (and d!25342 res!50722) b!105495))

(assert (= (and b!105495 (not res!50723)) b!105500))

(assert (= (and b!105500 res!50721) b!105498))

(assert (= (and b!105495 res!50724) b!105499))

(assert (= (and b!105499 (not res!50725)) b!105496))

(assert (= (and b!105496 res!50726) b!105497))

(declare-fun m!92140 () Bool)

(assert (=> b!105501 m!92140))

(declare-fun m!92142 () Bool)

(assert (=> b!105497 m!92142))

(assert (=> b!105497 m!91458))

(assert (=> b!105497 m!91712))

(assert (=> b!105497 m!91458))

(assert (=> b!105497 m!91712))

(declare-fun m!92144 () Bool)

(assert (=> b!105497 m!92144))

(declare-fun m!92146 () Bool)

(assert (=> b!105497 m!92146))

(assert (=> b!105500 m!92142))

(assert (=> b!105500 m!91458))

(assert (=> b!105500 m!91458))

(declare-fun m!92148 () Bool)

(assert (=> b!105500 m!92148))

(assert (=> b!105500 m!92148))

(declare-fun m!92150 () Bool)

(assert (=> b!105500 m!92150))

(assert (=> b!105498 m!92142))

(assert (=> b!105498 m!92148))

(assert (=> b!105498 m!92150))

(assert (=> b!105498 m!92146))

(assert (=> b!105498 m!91458))

(assert (=> b!105498 m!91458))

(assert (=> b!105498 m!92148))

(declare-fun m!92152 () Bool)

(assert (=> bm!4548 m!92152))

(declare-fun m!92154 () Bool)

(assert (=> b!105495 m!92154))

(assert (=> d!25342 m!92148))

(declare-fun m!92156 () Bool)

(assert (=> d!25342 m!92156))

(assert (=> d!25342 m!92154))

(declare-fun m!92158 () Bool)

(assert (=> d!25342 m!92158))

(declare-fun m!92160 () Bool)

(assert (=> d!25342 m!92160))

(declare-fun m!92162 () Bool)

(assert (=> d!25342 m!92162))

(assert (=> d!25342 m!91458))

(assert (=> d!25342 m!91458))

(assert (=> d!25342 m!92148))

(assert (=> b!105499 m!92154))

(assert (=> b!105496 m!92142))

(assert (=> b!105496 m!91458))

(assert (=> b!105496 m!91458))

(assert (=> b!105496 m!91712))

(assert (=> b!105496 m!91712))

(assert (=> b!105496 m!92144))

(assert (=> d!25250 d!25342))

(declare-fun b!105515 () Bool)

(declare-fun res!50739 () Bool)

(declare-fun e!58583 () Bool)

(assert (=> b!105515 (=> (not res!50739) (not e!58583))))

(declare-fun height!64 (Conc!540) Int)

(assert (=> b!105515 (= res!50739 (<= (- (height!64 (left!1303 (c!25296 input!576))) (height!64 (right!1633 (c!25296 input!576)))) 1))))

(declare-fun b!105516 () Bool)

(declare-fun res!50742 () Bool)

(assert (=> b!105516 (=> (not res!50742) (not e!58583))))

(assert (=> b!105516 (= res!50742 (isBalanced!149 (left!1303 (c!25296 input!576))))))

(declare-fun b!105517 () Bool)

(declare-fun isEmpty!800 (Conc!540) Bool)

(assert (=> b!105517 (= e!58583 (not (isEmpty!800 (right!1633 (c!25296 input!576)))))))

(declare-fun b!105518 () Bool)

(declare-fun e!58582 () Bool)

(assert (=> b!105518 (= e!58582 e!58583)))

(declare-fun res!50740 () Bool)

(assert (=> b!105518 (=> (not res!50740) (not e!58583))))

(assert (=> b!105518 (= res!50740 (<= (- 1) (- (height!64 (left!1303 (c!25296 input!576))) (height!64 (right!1633 (c!25296 input!576))))))))

(declare-fun b!105519 () Bool)

(declare-fun res!50741 () Bool)

(assert (=> b!105519 (=> (not res!50741) (not e!58583))))

(assert (=> b!105519 (= res!50741 (not (isEmpty!800 (left!1303 (c!25296 input!576)))))))

(declare-fun b!105520 () Bool)

(declare-fun res!50743 () Bool)

(assert (=> b!105520 (=> (not res!50743) (not e!58583))))

(assert (=> b!105520 (= res!50743 (isBalanced!149 (right!1633 (c!25296 input!576))))))

(declare-fun d!25378 () Bool)

(declare-fun res!50744 () Bool)

(assert (=> d!25378 (=> res!50744 e!58582)))

(assert (=> d!25378 (= res!50744 (not ((_ is Node!540) (c!25296 input!576))))))

(assert (=> d!25378 (= (isBalanced!149 (c!25296 input!576)) e!58582)))

(assert (= (and d!25378 (not res!50744)) b!105518))

(assert (= (and b!105518 res!50740) b!105515))

(assert (= (and b!105515 res!50739) b!105516))

(assert (= (and b!105516 res!50742) b!105520))

(assert (= (and b!105520 res!50743) b!105519))

(assert (= (and b!105519 res!50741) b!105517))

(declare-fun m!92164 () Bool)

(assert (=> b!105515 m!92164))

(declare-fun m!92166 () Bool)

(assert (=> b!105515 m!92166))

(declare-fun m!92168 () Bool)

(assert (=> b!105520 m!92168))

(declare-fun m!92170 () Bool)

(assert (=> b!105517 m!92170))

(assert (=> b!105518 m!92164))

(assert (=> b!105518 m!92166))

(declare-fun m!92172 () Bool)

(assert (=> b!105519 m!92172))

(declare-fun m!92174 () Bool)

(assert (=> b!105516 m!92174))

(assert (=> d!25286 d!25378))

(declare-fun d!25380 () Bool)

(declare-fun res!50749 () Bool)

(declare-fun e!58588 () Bool)

(assert (=> d!25380 (=> res!50749 e!58588)))

(assert (=> d!25380 (= res!50749 ((_ is Nil!1706) rules!1152))))

(assert (=> d!25380 (= (noDuplicateTag!107 thiss!11428 rules!1152 Nil!1709) e!58588)))

(declare-fun b!105525 () Bool)

(declare-fun e!58589 () Bool)

(assert (=> b!105525 (= e!58588 e!58589)))

(declare-fun res!50750 () Bool)

(assert (=> b!105525 (=> (not res!50750) (not e!58589))))

(declare-fun contains!276 (List!1715 String!2207) Bool)

(assert (=> b!105525 (= res!50750 (not (contains!276 Nil!1709 (tag!551 (h!7103 rules!1152)))))))

(declare-fun b!105526 () Bool)

(assert (=> b!105526 (= e!58589 (noDuplicateTag!107 thiss!11428 (t!21401 rules!1152) (Cons!1709 (tag!551 (h!7103 rules!1152)) Nil!1709)))))

(assert (= (and d!25380 (not res!50749)) b!105525))

(assert (= (and b!105525 res!50750) b!105526))

(declare-fun m!92176 () Bool)

(assert (=> b!105525 m!92176))

(declare-fun m!92178 () Bool)

(assert (=> b!105526 m!92178))

(assert (=> b!105216 d!25380))

(declare-fun d!25382 () Bool)

(assert (=> d!25382 true))

(declare-fun lambda!1950 () Int)

(declare-fun order!835 () Int)

(declare-fun order!833 () Int)

(declare-fun dynLambda!533 (Int Int) Int)

(declare-fun dynLambda!534 (Int Int) Int)

(assert (=> d!25382 (< (dynLambda!533 order!833 (toValue!960 (transformation!373 (h!7103 rules!1152)))) (dynLambda!534 order!835 lambda!1950))))

(declare-fun Forall2!65 (Int) Bool)

(assert (=> d!25382 (= (equivClasses!94 (toChars!819 (transformation!373 (h!7103 rules!1152))) (toValue!960 (transformation!373 (h!7103 rules!1152)))) (Forall2!65 lambda!1950))))

(declare-fun bs!10169 () Bool)

(assert (= bs!10169 d!25382))

(declare-fun m!92200 () Bool)

(assert (=> bs!10169 m!92200))

(assert (=> b!105081 d!25382))

(declare-fun d!25402 () Bool)

(assert (=> d!25402 true))

(declare-fun lambda!1953 () Int)

(declare-fun order!839 () Int)

(declare-fun order!837 () Int)

(declare-fun dynLambda!535 (Int Int) Int)

(declare-fun dynLambda!536 (Int Int) Int)

(assert (=> d!25402 (< (dynLambda!535 order!837 (toChars!819 (transformation!373 (h!7103 rules!1152)))) (dynLambda!536 order!839 lambda!1953))))

(assert (=> d!25402 true))

(assert (=> d!25402 (< (dynLambda!533 order!833 (toValue!960 (transformation!373 (h!7103 rules!1152)))) (dynLambda!536 order!839 lambda!1953))))

(declare-fun Forall!77 (Int) Bool)

(assert (=> d!25402 (= (semiInverseModEq!99 (toChars!819 (transformation!373 (h!7103 rules!1152))) (toValue!960 (transformation!373 (h!7103 rules!1152)))) (Forall!77 lambda!1953))))

(declare-fun bs!10170 () Bool)

(assert (= bs!10170 d!25402))

(declare-fun m!92202 () Bool)

(assert (=> bs!10170 m!92202))

(assert (=> d!25238 d!25402))

(declare-fun d!25404 () Bool)

(assert (=> d!25404 (= (inv!2086 (xs!3131 (c!25296 input!576))) (<= (size!1519 (innerList!598 (xs!3131 (c!25296 input!576)))) 2147483647))))

(declare-fun bs!10171 () Bool)

(assert (= bs!10171 d!25404))

(declare-fun m!92204 () Bool)

(assert (=> bs!10171 m!92204))

(assert (=> b!105240 d!25404))

(declare-fun d!25406 () Bool)

(declare-fun c!25400 () Bool)

(assert (=> d!25406 (= c!25400 ((_ is Node!540) (left!1303 (c!25296 input!576))))))

(declare-fun e!58606 () Bool)

(assert (=> d!25406 (= (inv!2080 (left!1303 (c!25296 input!576))) e!58606)))

(declare-fun b!105559 () Bool)

(assert (=> b!105559 (= e!58606 (inv!2084 (left!1303 (c!25296 input!576))))))

(declare-fun b!105560 () Bool)

(declare-fun e!58607 () Bool)

(assert (=> b!105560 (= e!58606 e!58607)))

(declare-fun res!50767 () Bool)

(assert (=> b!105560 (= res!50767 (not ((_ is Leaf!862) (left!1303 (c!25296 input!576)))))))

(assert (=> b!105560 (=> res!50767 e!58607)))

(declare-fun b!105561 () Bool)

(assert (=> b!105561 (= e!58607 (inv!2085 (left!1303 (c!25296 input!576))))))

(assert (= (and d!25406 c!25400) b!105559))

(assert (= (and d!25406 (not c!25400)) b!105560))

(assert (= (and b!105560 (not res!50767)) b!105561))

(declare-fun m!92206 () Bool)

(assert (=> b!105559 m!92206))

(declare-fun m!92208 () Bool)

(assert (=> b!105561 m!92208))

(assert (=> b!105239 d!25406))

(declare-fun d!25408 () Bool)

(declare-fun c!25401 () Bool)

(assert (=> d!25408 (= c!25401 ((_ is Node!540) (right!1633 (c!25296 input!576))))))

(declare-fun e!58608 () Bool)

(assert (=> d!25408 (= (inv!2080 (right!1633 (c!25296 input!576))) e!58608)))

(declare-fun b!105562 () Bool)

(assert (=> b!105562 (= e!58608 (inv!2084 (right!1633 (c!25296 input!576))))))

(declare-fun b!105563 () Bool)

(declare-fun e!58609 () Bool)

(assert (=> b!105563 (= e!58608 e!58609)))

(declare-fun res!50768 () Bool)

(assert (=> b!105563 (= res!50768 (not ((_ is Leaf!862) (right!1633 (c!25296 input!576)))))))

(assert (=> b!105563 (=> res!50768 e!58609)))

(declare-fun b!105564 () Bool)

(assert (=> b!105564 (= e!58609 (inv!2085 (right!1633 (c!25296 input!576))))))

(assert (= (and d!25408 c!25401) b!105562))

(assert (= (and d!25408 (not c!25401)) b!105563))

(assert (= (and b!105563 (not res!50768)) b!105564))

(declare-fun m!92210 () Bool)

(assert (=> b!105562 m!92210))

(declare-fun m!92212 () Bool)

(assert (=> b!105564 m!92212))

(assert (=> b!105239 d!25408))

(declare-fun b!105576 () Bool)

(declare-fun e!58615 () List!1711)

(assert (=> b!105576 (= e!58615 (++!283 (list!727 (left!1303 (c!25296 (_2!1135 lt!29080)))) (list!727 (right!1633 (c!25296 (_2!1135 lt!29080))))))))

(declare-fun d!25410 () Bool)

(declare-fun c!25406 () Bool)

(assert (=> d!25410 (= c!25406 ((_ is Empty!540) (c!25296 (_2!1135 lt!29080))))))

(declare-fun e!58614 () List!1711)

(assert (=> d!25410 (= (list!727 (c!25296 (_2!1135 lt!29080))) e!58614)))

(declare-fun b!105574 () Bool)

(assert (=> b!105574 (= e!58614 e!58615)))

(declare-fun c!25407 () Bool)

(assert (=> b!105574 (= c!25407 ((_ is Leaf!862) (c!25296 (_2!1135 lt!29080))))))

(declare-fun b!105575 () Bool)

(declare-fun list!731 (IArray!1081) List!1711)

(assert (=> b!105575 (= e!58615 (list!731 (xs!3131 (c!25296 (_2!1135 lt!29080)))))))

(declare-fun b!105573 () Bool)

(assert (=> b!105573 (= e!58614 Nil!1705)))

(assert (= (and d!25410 c!25406) b!105573))

(assert (= (and d!25410 (not c!25406)) b!105574))

(assert (= (and b!105574 c!25407) b!105575))

(assert (= (and b!105574 (not c!25407)) b!105576))

(declare-fun m!92214 () Bool)

(assert (=> b!105576 m!92214))

(declare-fun m!92216 () Bool)

(assert (=> b!105576 m!92216))

(assert (=> b!105576 m!92214))

(assert (=> b!105576 m!92216))

(declare-fun m!92218 () Bool)

(assert (=> b!105576 m!92218))

(declare-fun m!92220 () Bool)

(assert (=> b!105575 m!92220))

(assert (=> d!25244 d!25410))

(declare-fun d!25412 () Bool)

(declare-fun lt!29421 () Int)

(assert (=> d!25412 (>= lt!29421 0)))

(declare-fun e!58618 () Int)

(assert (=> d!25412 (= lt!29421 e!58618)))

(declare-fun c!25410 () Bool)

(assert (=> d!25412 (= c!25410 ((_ is Nil!1705) (list!723 (_2!1135 lt!29080))))))

(assert (=> d!25412 (= (size!1519 (list!723 (_2!1135 lt!29080))) lt!29421)))

(declare-fun b!105581 () Bool)

(assert (=> b!105581 (= e!58618 0)))

(declare-fun b!105582 () Bool)

(assert (=> b!105582 (= e!58618 (+ 1 (size!1519 (t!21400 (list!723 (_2!1135 lt!29080))))))))

(assert (= (and d!25412 c!25410) b!105581))

(assert (= (and d!25412 (not c!25410)) b!105582))

(declare-fun m!92222 () Bool)

(assert (=> b!105582 m!92222))

(assert (=> d!25230 d!25412))

(assert (=> d!25230 d!25244))

(declare-fun d!25414 () Bool)

(declare-fun lt!29424 () Int)

(assert (=> d!25414 (= lt!29424 (size!1519 (list!727 (c!25296 (_2!1135 lt!29080)))))))

(assert (=> d!25414 (= lt!29424 (ite ((_ is Empty!540) (c!25296 (_2!1135 lt!29080))) 0 (ite ((_ is Leaf!862) (c!25296 (_2!1135 lt!29080))) (csize!1311 (c!25296 (_2!1135 lt!29080))) (csize!1310 (c!25296 (_2!1135 lt!29080))))))))

(assert (=> d!25414 (= (size!1520 (c!25296 (_2!1135 lt!29080))) lt!29424)))

(declare-fun bs!10172 () Bool)

(assert (= bs!10172 d!25414))

(assert (=> bs!10172 m!91496))

(assert (=> bs!10172 m!91496))

(declare-fun m!92224 () Bool)

(assert (=> bs!10172 m!92224))

(assert (=> d!25230 d!25414))

(declare-fun d!25416 () Bool)

(declare-fun lt!29425 () Int)

(assert (=> d!25416 (>= lt!29425 0)))

(declare-fun e!58619 () Int)

(assert (=> d!25416 (= lt!29425 e!58619)))

(declare-fun c!25411 () Bool)

(assert (=> d!25416 (= c!25411 ((_ is Nil!1705) (_2!1136 lt!29267)))))

(assert (=> d!25416 (= (size!1519 (_2!1136 lt!29267)) lt!29425)))

(declare-fun b!105583 () Bool)

(assert (=> b!105583 (= e!58619 0)))

(declare-fun b!105584 () Bool)

(assert (=> b!105584 (= e!58619 (+ 1 (size!1519 (t!21400 (_2!1136 lt!29267)))))))

(assert (= (and d!25416 c!25411) b!105583))

(assert (= (and d!25416 (not c!25411)) b!105584))

(declare-fun m!92226 () Bool)

(assert (=> b!105584 m!92226))

(assert (=> b!105212 d!25416))

(declare-fun d!25418 () Bool)

(declare-fun lt!29426 () Int)

(assert (=> d!25418 (>= lt!29426 0)))

(declare-fun e!58620 () Int)

(assert (=> d!25418 (= lt!29426 e!58620)))

(declare-fun c!25412 () Bool)

(assert (=> d!25418 (= c!25412 ((_ is Nil!1705) (list!723 input!576)))))

(assert (=> d!25418 (= (size!1519 (list!723 input!576)) lt!29426)))

(declare-fun b!105585 () Bool)

(assert (=> b!105585 (= e!58620 0)))

(declare-fun b!105586 () Bool)

(assert (=> b!105586 (= e!58620 (+ 1 (size!1519 (t!21400 (list!723 input!576)))))))

(assert (= (and d!25418 c!25412) b!105585))

(assert (= (and d!25418 (not c!25412)) b!105586))

(declare-fun m!92228 () Bool)

(assert (=> b!105586 m!92228))

(assert (=> b!105212 d!25418))

(declare-fun d!25420 () Bool)

(assert (=> d!25420 (= (isEmpty!797 (_1!1136 lt!29267)) ((_ is Nil!1707) (_1!1136 lt!29267)))))

(assert (=> b!105211 d!25420))

(declare-fun b!105597 () Bool)

(declare-fun e!58626 () List!1713)

(declare-fun list!732 (IArray!1083) List!1713)

(assert (=> b!105597 (= e!58626 (list!732 (xs!3132 (c!25298 (_1!1135 lt!29080)))))))

(declare-fun b!105596 () Bool)

(declare-fun e!58625 () List!1713)

(assert (=> b!105596 (= e!58625 e!58626)))

(declare-fun c!25418 () Bool)

(assert (=> b!105596 (= c!25418 ((_ is Leaf!863) (c!25298 (_1!1135 lt!29080))))))

(declare-fun b!105595 () Bool)

(assert (=> b!105595 (= e!58625 Nil!1707)))

(declare-fun b!105598 () Bool)

(assert (=> b!105598 (= e!58626 (++!284 (list!728 (left!1304 (c!25298 (_1!1135 lt!29080)))) (list!728 (right!1634 (c!25298 (_1!1135 lt!29080))))))))

(declare-fun d!25422 () Bool)

(declare-fun c!25417 () Bool)

(assert (=> d!25422 (= c!25417 ((_ is Empty!541) (c!25298 (_1!1135 lt!29080))))))

(assert (=> d!25422 (= (list!728 (c!25298 (_1!1135 lt!29080))) e!58625)))

(assert (= (and d!25422 c!25417) b!105595))

(assert (= (and d!25422 (not c!25417)) b!105596))

(assert (= (and b!105596 c!25418) b!105597))

(assert (= (and b!105596 (not c!25418)) b!105598))

(declare-fun m!92230 () Bool)

(assert (=> b!105597 m!92230))

(declare-fun m!92232 () Bool)

(assert (=> b!105598 m!92232))

(declare-fun m!92234 () Bool)

(assert (=> b!105598 m!92234))

(assert (=> b!105598 m!92232))

(assert (=> b!105598 m!92234))

(declare-fun m!92236 () Bool)

(assert (=> b!105598 m!92236))

(assert (=> d!25280 d!25422))

(assert (=> d!25232 d!25418))

(assert (=> d!25232 d!25284))

(declare-fun d!25424 () Bool)

(declare-fun lt!29427 () Int)

(assert (=> d!25424 (= lt!29427 (size!1519 (list!727 (c!25296 input!576))))))

(assert (=> d!25424 (= lt!29427 (ite ((_ is Empty!540) (c!25296 input!576)) 0 (ite ((_ is Leaf!862) (c!25296 input!576)) (csize!1311 (c!25296 input!576)) (csize!1310 (c!25296 input!576)))))))

(assert (=> d!25424 (= (size!1520 (c!25296 input!576)) lt!29427)))

(declare-fun bs!10173 () Bool)

(assert (= bs!10173 d!25424))

(assert (=> bs!10173 m!91720))

(assert (=> bs!10173 m!91720))

(declare-fun m!92238 () Bool)

(assert (=> bs!10173 m!92238))

(assert (=> d!25232 d!25424))

(assert (=> b!105078 d!25242))

(declare-fun d!25426 () Bool)

(declare-fun lt!29430 () Int)

(assert (=> d!25426 (>= lt!29430 0)))

(declare-fun e!58629 () Int)

(assert (=> d!25426 (= lt!29430 e!58629)))

(declare-fun c!25421 () Bool)

(assert (=> d!25426 (= c!25421 ((_ is Nil!1707) (_1!1136 lt!29267)))))

(assert (=> d!25426 (= (size!1521 (_1!1136 lt!29267)) lt!29430)))

(declare-fun b!105603 () Bool)

(assert (=> b!105603 (= e!58629 0)))

(declare-fun b!105604 () Bool)

(assert (=> b!105604 (= e!58629 (+ 1 (size!1521 (t!21402 (_1!1136 lt!29267)))))))

(assert (= (and d!25426 c!25421) b!105603))

(assert (= (and d!25426 (not c!25421)) b!105604))

(declare-fun m!92240 () Bool)

(assert (=> b!105604 m!92240))

(assert (=> d!25282 d!25426))

(declare-fun b!105696 () Bool)

(declare-fun res!50827 () Bool)

(declare-fun e!58673 () Bool)

(assert (=> b!105696 (=> (not res!50827) (not e!58673))))

(declare-fun lt!29476 () Option!198)

(assert (=> b!105696 (= res!50827 (< (size!1519 (_2!1140 (get!438 lt!29476))) (size!1519 (list!723 input!576))))))

(declare-fun b!105697 () Bool)

(declare-fun res!50830 () Bool)

(assert (=> b!105697 (=> (not res!50830) (not e!58673))))

(assert (=> b!105697 (= res!50830 (= (++!283 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476)))) (_2!1140 (get!438 lt!29476))) (list!723 input!576)))))

(declare-fun b!105698 () Bool)

(declare-fun res!50831 () Bool)

(assert (=> b!105698 (=> (not res!50831) (not e!58673))))

(declare-fun matchR!48 (Regex!441 List!1711) Bool)

(assert (=> b!105698 (= res!50831 (matchR!48 (regex!373 (rule!876 (_1!1140 (get!438 lt!29476)))) (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476))))))))

(declare-fun b!105699 () Bool)

(declare-fun contains!277 (List!1712 Rule!546) Bool)

(assert (=> b!105699 (= e!58673 (contains!277 rules!1152 (rule!876 (_1!1140 (get!438 lt!29476)))))))

(declare-fun b!105700 () Bool)

(declare-fun res!50828 () Bool)

(assert (=> b!105700 (=> (not res!50828) (not e!58673))))

(assert (=> b!105700 (= res!50828 (= (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476)))) (originalCharacters!416 (_1!1140 (get!438 lt!29476)))))))

(declare-fun b!105701 () Bool)

(declare-fun e!58671 () Bool)

(assert (=> b!105701 (= e!58671 e!58673)))

(declare-fun res!50832 () Bool)

(assert (=> b!105701 (=> (not res!50832) (not e!58673))))

(assert (=> b!105701 (= res!50832 (isDefined!72 lt!29476))))

(declare-fun b!105702 () Bool)

(declare-fun res!50826 () Bool)

(assert (=> b!105702 (=> (not res!50826) (not e!58673))))

(declare-fun apply!268 (TokenValueInjection!550 BalanceConc!1084) TokenValue!363)

(declare-fun seqFromList!204 (List!1711) BalanceConc!1084)

(assert (=> b!105702 (= res!50826 (= (value!13518 (_1!1140 (get!438 lt!29476))) (apply!268 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476)))) (seqFromList!204 (originalCharacters!416 (_1!1140 (get!438 lt!29476)))))))))

(declare-fun call!4559 () Option!198)

(declare-fun bm!4554 () Bool)

(declare-fun maxPrefixOneRule!44 (LexerInterface!265 Rule!546 List!1711) Option!198)

(assert (=> bm!4554 (= call!4559 (maxPrefixOneRule!44 thiss!11428 (h!7103 rules!1152) (list!723 input!576)))))

(declare-fun b!105703 () Bool)

(declare-fun e!58672 () Option!198)

(assert (=> b!105703 (= e!58672 call!4559)))

(declare-fun d!25428 () Bool)

(assert (=> d!25428 e!58671))

(declare-fun res!50829 () Bool)

(assert (=> d!25428 (=> res!50829 e!58671)))

(declare-fun isEmpty!801 (Option!198) Bool)

(assert (=> d!25428 (= res!50829 (isEmpty!801 lt!29476))))

(assert (=> d!25428 (= lt!29476 e!58672)))

(declare-fun c!25440 () Bool)

(assert (=> d!25428 (= c!25440 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!29475 () Unit!1124)

(declare-fun lt!29474 () Unit!1124)

(assert (=> d!25428 (= lt!29475 lt!29474)))

(assert (=> d!25428 (isPrefix!51 (list!723 input!576) (list!723 input!576))))

(assert (=> d!25428 (= lt!29474 (lemmaIsPrefixRefl!51 (list!723 input!576) (list!723 input!576)))))

(assert (=> d!25428 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!25428 (= (maxPrefix!93 thiss!11428 rules!1152 (list!723 input!576)) lt!29476)))

(declare-fun b!105704 () Bool)

(declare-fun lt!29477 () Option!198)

(declare-fun lt!29478 () Option!198)

(assert (=> b!105704 (= e!58672 (ite (and ((_ is None!197) lt!29477) ((_ is None!197) lt!29478)) None!197 (ite ((_ is None!197) lt!29478) lt!29477 (ite ((_ is None!197) lt!29477) lt!29478 (ite (>= (size!1512 (_1!1140 (v!13006 lt!29477))) (size!1512 (_1!1140 (v!13006 lt!29478)))) lt!29477 lt!29478)))))))

(assert (=> b!105704 (= lt!29477 call!4559)))

(assert (=> b!105704 (= lt!29478 (maxPrefix!93 thiss!11428 (t!21401 rules!1152) (list!723 input!576)))))

(assert (= (and d!25428 c!25440) b!105703))

(assert (= (and d!25428 (not c!25440)) b!105704))

(assert (= (or b!105703 b!105704) bm!4554))

(assert (= (and d!25428 (not res!50829)) b!105701))

(assert (= (and b!105701 res!50832) b!105700))

(assert (= (and b!105700 res!50828) b!105696))

(assert (= (and b!105696 res!50827) b!105697))

(assert (= (and b!105697 res!50830) b!105702))

(assert (= (and b!105702 res!50826) b!105698))

(assert (= (and b!105698 res!50831) b!105699))

(declare-fun m!92374 () Bool)

(assert (=> d!25428 m!92374))

(assert (=> d!25428 m!91458))

(assert (=> d!25428 m!91458))

(declare-fun m!92376 () Bool)

(assert (=> d!25428 m!92376))

(assert (=> d!25428 m!91458))

(assert (=> d!25428 m!91458))

(declare-fun m!92378 () Bool)

(assert (=> d!25428 m!92378))

(assert (=> d!25428 m!92158))

(declare-fun m!92380 () Bool)

(assert (=> b!105698 m!92380))

(declare-fun m!92382 () Bool)

(assert (=> b!105698 m!92382))

(assert (=> b!105698 m!92382))

(declare-fun m!92384 () Bool)

(assert (=> b!105698 m!92384))

(assert (=> b!105698 m!92384))

(declare-fun m!92386 () Bool)

(assert (=> b!105698 m!92386))

(assert (=> b!105700 m!92380))

(assert (=> b!105700 m!92382))

(assert (=> b!105700 m!92382))

(assert (=> b!105700 m!92384))

(assert (=> b!105702 m!92380))

(declare-fun m!92388 () Bool)

(assert (=> b!105702 m!92388))

(assert (=> b!105702 m!92388))

(declare-fun m!92390 () Bool)

(assert (=> b!105702 m!92390))

(assert (=> b!105699 m!92380))

(declare-fun m!92392 () Bool)

(assert (=> b!105699 m!92392))

(assert (=> b!105704 m!91458))

(declare-fun m!92394 () Bool)

(assert (=> b!105704 m!92394))

(declare-fun m!92396 () Bool)

(assert (=> b!105701 m!92396))

(assert (=> b!105697 m!92380))

(assert (=> b!105697 m!92382))

(assert (=> b!105697 m!92382))

(assert (=> b!105697 m!92384))

(assert (=> b!105697 m!92384))

(declare-fun m!92398 () Bool)

(assert (=> b!105697 m!92398))

(assert (=> b!105696 m!92380))

(declare-fun m!92400 () Bool)

(assert (=> b!105696 m!92400))

(assert (=> b!105696 m!91458))

(assert (=> b!105696 m!91482))

(assert (=> bm!4554 m!91458))

(declare-fun m!92402 () Bool)

(assert (=> bm!4554 m!92402))

(assert (=> d!25282 d!25428))

(declare-fun d!25460 () Bool)

(assert (=> d!25460 (= (list!723 (_2!1135 lt!29237)) (list!727 (c!25296 (_2!1135 lt!29237))))))

(declare-fun bs!10176 () Bool)

(assert (= bs!10176 d!25460))

(declare-fun m!92404 () Bool)

(assert (=> bs!10176 m!92404))

(assert (=> b!105192 d!25460))

(declare-fun d!25462 () Bool)

(assert (=> d!25462 (= (list!723 (_2!1135 (lexRec!60 thiss!11428 rules!1152 input!576))) (list!727 (c!25296 (_2!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))

(declare-fun bs!10177 () Bool)

(assert (= bs!10177 d!25462))

(declare-fun m!92406 () Bool)

(assert (=> bs!10177 m!92406))

(assert (=> b!105192 d!25462))

(assert (=> b!105192 d!25326))

(declare-fun d!25464 () Bool)

(declare-fun res!50837 () Bool)

(declare-fun e!58680 () Bool)

(assert (=> d!25464 (=> (not res!50837) (not e!58680))))

(assert (=> d!25464 (= res!50837 (<= (size!1519 (list!731 (xs!3131 (c!25296 input!576)))) 512))))

(assert (=> d!25464 (= (inv!2085 (c!25296 input!576)) e!58680)))

(declare-fun b!105727 () Bool)

(declare-fun res!50838 () Bool)

(assert (=> b!105727 (=> (not res!50838) (not e!58680))))

(assert (=> b!105727 (= res!50838 (= (csize!1311 (c!25296 input!576)) (size!1519 (list!731 (xs!3131 (c!25296 input!576))))))))

(declare-fun b!105728 () Bool)

(assert (=> b!105728 (= e!58680 (and (> (csize!1311 (c!25296 input!576)) 0) (<= (csize!1311 (c!25296 input!576)) 512)))))

(assert (= (and d!25464 res!50837) b!105727))

(assert (= (and b!105727 res!50838) b!105728))

(declare-fun m!92414 () Bool)

(assert (=> d!25464 m!92414))

(assert (=> d!25464 m!92414))

(declare-fun m!92416 () Bool)

(assert (=> d!25464 m!92416))

(assert (=> b!105727 m!92414))

(assert (=> b!105727 m!92414))

(assert (=> b!105727 m!92416))

(assert (=> b!105090 d!25464))

(declare-fun d!25470 () Bool)

(assert (=> d!25470 (= (isEmpty!797 (list!724 (_1!1135 lt!29080))) ((_ is Nil!1707) (list!724 (_1!1135 lt!29080))))))

(assert (=> d!25278 d!25470))

(assert (=> d!25278 d!25280))

(declare-fun d!25472 () Bool)

(declare-fun lt!29483 () Bool)

(assert (=> d!25472 (= lt!29483 (isEmpty!797 (list!728 (c!25298 (_1!1135 lt!29080)))))))

(assert (=> d!25472 (= lt!29483 (= (size!1522 (c!25298 (_1!1135 lt!29080))) 0))))

(assert (=> d!25472 (= (isEmpty!798 (c!25298 (_1!1135 lt!29080))) lt!29483)))

(declare-fun bs!10180 () Bool)

(assert (= bs!10180 d!25472))

(assert (=> bs!10180 m!91708))

(assert (=> bs!10180 m!91708))

(declare-fun m!92422 () Bool)

(assert (=> bs!10180 m!92422))

(assert (=> bs!10180 m!91500))

(assert (=> d!25278 d!25472))

(declare-fun d!25474 () Bool)

(assert (=> d!25474 (= (inv!2074 (tag!551 (h!7103 (t!21401 rules!1152)))) (= (mod (str.len (value!13517 (tag!551 (h!7103 (t!21401 rules!1152))))) 2) 0))))

(assert (=> b!105251 d!25474))

(declare-fun d!25476 () Bool)

(declare-fun res!50839 () Bool)

(declare-fun e!58695 () Bool)

(assert (=> d!25476 (=> (not res!50839) (not e!58695))))

(assert (=> d!25476 (= res!50839 (semiInverseModEq!99 (toChars!819 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toValue!960 (transformation!373 (h!7103 (t!21401 rules!1152))))))))

(assert (=> d!25476 (= (inv!2078 (transformation!373 (h!7103 (t!21401 rules!1152)))) e!58695)))

(declare-fun b!105755 () Bool)

(assert (=> b!105755 (= e!58695 (equivClasses!94 (toChars!819 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toValue!960 (transformation!373 (h!7103 (t!21401 rules!1152))))))))

(assert (= (and d!25476 res!50839) b!105755))

(declare-fun m!92430 () Bool)

(assert (=> d!25476 m!92430))

(declare-fun m!92436 () Bool)

(assert (=> b!105755 m!92436))

(assert (=> b!105251 d!25476))

(declare-fun d!25478 () Bool)

(assert (=> d!25478 true))

(declare-fun lt!29486 () Bool)

(assert (=> d!25478 (= lt!29486 (rulesValidInductive!84 thiss!11428 rules!1152))))

(declare-fun lambda!1959 () Int)

(declare-fun forall!227 (List!1712 Int) Bool)

(assert (=> d!25478 (= lt!29486 (forall!227 rules!1152 lambda!1959))))

(assert (=> d!25478 (= (rulesValid!107 thiss!11428 rules!1152) lt!29486)))

(declare-fun bs!10181 () Bool)

(assert (= bs!10181 d!25478))

(assert (=> bs!10181 m!92158))

(declare-fun m!92440 () Bool)

(assert (=> bs!10181 m!92440))

(assert (=> d!25288 d!25478))

(declare-fun b!105761 () Bool)

(declare-fun e!58697 () List!1711)

(assert (=> b!105761 (= e!58697 (++!283 (list!727 (left!1303 (c!25296 input!576))) (list!727 (right!1633 (c!25296 input!576)))))))

(declare-fun d!25480 () Bool)

(declare-fun c!25442 () Bool)

(assert (=> d!25480 (= c!25442 ((_ is Empty!540) (c!25296 input!576)))))

(declare-fun e!58696 () List!1711)

(assert (=> d!25480 (= (list!727 (c!25296 input!576)) e!58696)))

(declare-fun b!105759 () Bool)

(assert (=> b!105759 (= e!58696 e!58697)))

(declare-fun c!25443 () Bool)

(assert (=> b!105759 (= c!25443 ((_ is Leaf!862) (c!25296 input!576)))))

(declare-fun b!105760 () Bool)

(assert (=> b!105760 (= e!58697 (list!731 (xs!3131 (c!25296 input!576))))))

(declare-fun b!105758 () Bool)

(assert (=> b!105758 (= e!58696 Nil!1705)))

(assert (= (and d!25480 c!25442) b!105758))

(assert (= (and d!25480 (not c!25442)) b!105759))

(assert (= (and b!105759 c!25443) b!105760))

(assert (= (and b!105759 (not c!25443)) b!105761))

(declare-fun m!92442 () Bool)

(assert (=> b!105761 m!92442))

(declare-fun m!92444 () Bool)

(assert (=> b!105761 m!92444))

(assert (=> b!105761 m!92442))

(assert (=> b!105761 m!92444))

(declare-fun m!92446 () Bool)

(assert (=> b!105761 m!92446))

(assert (=> b!105760 m!92414))

(assert (=> d!25284 d!25480))

(declare-fun b!105770 () Bool)

(declare-fun res!50848 () Bool)

(declare-fun e!58700 () Bool)

(assert (=> b!105770 (=> (not res!50848) (not e!58700))))

(declare-fun ++!286 (Conc!540 Conc!540) Conc!540)

(assert (=> b!105770 (= res!50848 (isBalanced!149 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun d!25482 () Bool)

(assert (=> d!25482 e!58700))

(declare-fun res!50851 () Bool)

(assert (=> d!25482 (=> (not res!50851) (not e!58700))))

(declare-fun appendAssocInst!11 (Conc!540 Conc!540) Bool)

(assert (=> d!25482 (= res!50851 (appendAssocInst!11 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(declare-fun lt!29489 () BalanceConc!1084)

(assert (=> d!25482 (= lt!29489 (BalanceConc!1085 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(assert (=> d!25482 (= (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) lt!29489)))

(declare-fun b!105771 () Bool)

(declare-fun res!50850 () Bool)

(assert (=> b!105771 (=> (not res!50850) (not e!58700))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!105771 (= res!50850 (<= (height!64 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (+ (max!0 (height!64 (c!25296 (BalanceConc!1085 Empty!540))) (height!64 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) 1)))))

(declare-fun b!105772 () Bool)

(declare-fun res!50849 () Bool)

(assert (=> b!105772 (=> (not res!50849) (not e!58700))))

(assert (=> b!105772 (= res!50849 (>= (height!64 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (max!0 (height!64 (c!25296 (BalanceConc!1085 Empty!540))) (height!64 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun b!105773 () Bool)

(assert (=> b!105773 (= e!58700 (= (list!723 lt!29489) (++!283 (list!723 (BalanceConc!1085 Empty!540)) (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(assert (= (and d!25482 res!50851) b!105770))

(assert (= (and b!105770 res!50848) b!105771))

(assert (= (and b!105771 res!50850) b!105772))

(assert (= (and b!105772 res!50849) b!105773))

(declare-fun m!92448 () Bool)

(assert (=> b!105772 m!92448))

(declare-fun m!92450 () Bool)

(assert (=> b!105772 m!92450))

(assert (=> b!105772 m!92450))

(declare-fun m!92452 () Bool)

(assert (=> b!105772 m!92452))

(assert (=> b!105772 m!92448))

(declare-fun m!92454 () Bool)

(assert (=> b!105772 m!92454))

(declare-fun m!92456 () Bool)

(assert (=> b!105772 m!92456))

(assert (=> b!105772 m!92454))

(assert (=> b!105770 m!92450))

(assert (=> b!105770 m!92450))

(declare-fun m!92458 () Bool)

(assert (=> b!105770 m!92458))

(declare-fun m!92460 () Bool)

(assert (=> b!105773 m!92460))

(assert (=> b!105773 m!91638))

(assert (=> b!105773 m!91660))

(assert (=> b!105773 m!91640))

(assert (=> b!105773 m!91638))

(assert (=> b!105773 m!91640))

(assert (=> b!105773 m!91642))

(declare-fun m!92462 () Bool)

(assert (=> d!25482 m!92462))

(assert (=> d!25482 m!92450))

(assert (=> b!105771 m!92448))

(assert (=> b!105771 m!92450))

(assert (=> b!105771 m!92450))

(assert (=> b!105771 m!92452))

(assert (=> b!105771 m!92448))

(assert (=> b!105771 m!92454))

(assert (=> b!105771 m!92456))

(assert (=> b!105771 m!92454))

(assert (=> b!105196 d!25482))

(assert (=> b!105196 d!25326))

(declare-fun d!25484 () Bool)

(declare-fun e!58703 () Bool)

(assert (=> d!25484 e!58703))

(declare-fun res!50854 () Bool)

(assert (=> d!25484 (=> (not res!50854) (not e!58703))))

(declare-fun isBalanced!151 (Conc!541) Bool)

(declare-fun append!63 (Conc!541 Token!490) Conc!541)

(assert (=> d!25484 (= res!50854 (isBalanced!151 (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247)))))))

(declare-fun lt!29492 () BalanceConc!1086)

(assert (=> d!25484 (= lt!29492 (BalanceConc!1087 (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247)))))))

(assert (=> d!25484 (= (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))) lt!29492)))

(declare-fun b!105776 () Bool)

(declare-fun $colon+!10 (List!1713 Token!490) List!1713)

(assert (=> b!105776 (= e!58703 (= (list!724 lt!29492) ($colon+!10 (list!724 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247)))))))

(assert (= (and d!25484 res!50854) b!105776))

(declare-fun m!92464 () Bool)

(assert (=> d!25484 m!92464))

(assert (=> d!25484 m!92464))

(declare-fun m!92466 () Bool)

(assert (=> d!25484 m!92466))

(declare-fun m!92468 () Bool)

(assert (=> b!105776 m!92468))

(assert (=> b!105776 m!91680))

(assert (=> b!105776 m!91680))

(declare-fun m!92470 () Bool)

(assert (=> b!105776 m!92470))

(assert (=> b!105196 d!25484))

(declare-fun lt!29498 () tuple2!1856)

(declare-fun e!58705 () Bool)

(declare-fun b!105777 () Bool)

(assert (=> b!105777 (= e!58705 (= (list!723 (_2!1135 lt!29498)) (list!723 (_2!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))

(declare-fun b!105778 () Bool)

(declare-fun e!58704 () tuple2!1856)

(assert (=> b!105778 (= e!58704 (tuple2!1857 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))) (_2!1139 (v!13005 lt!29247))))))

(declare-fun lt!29507 () tuple2!1856)

(declare-fun b!105779 () Bool)

(declare-fun lt!29513 () Option!197)

(assert (=> b!105779 (= lt!29507 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29513))))))

(declare-fun e!58707 () tuple2!1856)

(assert (=> b!105779 (= e!58707 (tuple2!1857 (prepend!141 (_1!1135 lt!29507) (_1!1139 (v!13005 lt!29513))) (_2!1135 lt!29507)))))

(declare-fun lt!29501 () Option!197)

(declare-fun lt!29496 () tuple2!1856)

(declare-fun b!105780 () Bool)

(assert (=> b!105780 (= lt!29496 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29501))))))

(declare-fun e!58706 () tuple2!1856)

(assert (=> b!105780 (= e!58706 (tuple2!1857 (prepend!141 (_1!1135 lt!29496) (_1!1139 (v!13005 lt!29501))) (_2!1135 lt!29496)))))

(declare-fun lt!29508 () Option!197)

(declare-fun b!105781 () Bool)

(assert (=> b!105781 (= e!58704 (lexTailRec!6 thiss!11428 rules!1152 input!576 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508)))) (_2!1139 (v!13005 lt!29508)) (append!61 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))) (_1!1139 (v!13005 lt!29508)))))))

(declare-fun lt!29512 () tuple2!1856)

(assert (=> b!105781 (= lt!29512 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29508))))))

(declare-fun lt!29516 () List!1711)

(assert (=> b!105781 (= lt!29516 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(declare-fun lt!29511 () List!1711)

(assert (=> b!105781 (= lt!29511 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29508)))))))

(declare-fun lt!29502 () List!1711)

(assert (=> b!105781 (= lt!29502 (list!723 (_2!1139 (v!13005 lt!29508))))))

(declare-fun lt!29509 () Unit!1124)

(assert (=> b!105781 (= lt!29509 (lemmaConcatAssociativity!104 lt!29516 lt!29511 lt!29502))))

(assert (=> b!105781 (= (++!283 (++!283 lt!29516 lt!29511) lt!29502) (++!283 lt!29516 (++!283 lt!29511 lt!29502)))))

(declare-fun lt!29506 () Unit!1124)

(assert (=> b!105781 (= lt!29506 lt!29509)))

(assert (=> b!105781 (= lt!29501 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29247))))))

(declare-fun c!25448 () Bool)

(assert (=> b!105781 (= c!25448 ((_ is Some!196) lt!29501))))

(assert (=> b!105781 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29247))) e!58706)))

(declare-fun lt!29504 () Unit!1124)

(declare-fun Unit!1130 () Unit!1124)

(assert (=> b!105781 (= lt!29504 Unit!1130)))

(declare-fun lt!29510 () List!1713)

(assert (=> b!105781 (= lt!29510 (list!724 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247)))))))

(declare-fun lt!29505 () List!1713)

(assert (=> b!105781 (= lt!29505 (Cons!1707 (_1!1139 (v!13005 lt!29508)) Nil!1707))))

(declare-fun lt!29517 () List!1713)

(assert (=> b!105781 (= lt!29517 (list!724 (_1!1135 lt!29512)))))

(declare-fun lt!29500 () Unit!1124)

(assert (=> b!105781 (= lt!29500 (lemmaConcatAssociativity!105 lt!29510 lt!29505 lt!29517))))

(assert (=> b!105781 (= (++!284 (++!284 lt!29510 lt!29505) lt!29517) (++!284 lt!29510 (++!284 lt!29505 lt!29517)))))

(declare-fun lt!29497 () Unit!1124)

(assert (=> b!105781 (= lt!29497 lt!29500)))

(declare-fun lt!29515 () List!1711)

(assert (=> b!105781 (= lt!29515 (++!283 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29508))))))))

(declare-fun lt!29493 () List!1711)

(assert (=> b!105781 (= lt!29493 (list!723 (_2!1139 (v!13005 lt!29508))))))

(declare-fun lt!29495 () List!1713)

(assert (=> b!105781 (= lt!29495 (list!724 (append!61 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))) (_1!1139 (v!13005 lt!29508)))))))

(declare-fun lt!29503 () Unit!1124)

(assert (=> b!105781 (= lt!29503 (lemmaLexThenLexPrefix!47 thiss!11428 rules!1152 lt!29515 lt!29493 lt!29495 (list!724 (_1!1135 lt!29512)) (list!723 (_2!1135 lt!29512))))))

(assert (=> b!105781 (= (lexList!83 thiss!11428 rules!1152 lt!29515) (tuple2!1859 lt!29495 Nil!1705))))

(declare-fun lt!29514 () Unit!1124)

(assert (=> b!105781 (= lt!29514 lt!29503)))

(declare-fun lt!29494 () BalanceConc!1084)

(assert (=> b!105781 (= lt!29494 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508)))))))

(assert (=> b!105781 (= lt!29513 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 lt!29494))))

(declare-fun c!25449 () Bool)

(assert (=> b!105781 (= c!25449 ((_ is Some!196) lt!29513))))

(assert (=> b!105781 (= (lexRec!60 thiss!11428 rules!1152 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508))))) e!58707)))

(declare-fun lt!29499 () Unit!1124)

(declare-fun Unit!1131 () Unit!1124)

(assert (=> b!105781 (= lt!29499 Unit!1131)))

(declare-fun b!105782 () Bool)

(assert (=> b!105782 (= e!58707 (tuple2!1857 (BalanceConc!1087 Empty!541) lt!29494))))

(declare-fun d!25486 () Bool)

(assert (=> d!25486 e!58705))

(declare-fun res!50855 () Bool)

(assert (=> d!25486 (=> (not res!50855) (not e!58705))))

(assert (=> d!25486 (= res!50855 (= (list!724 (_1!1135 lt!29498)) (list!724 (_1!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))

(assert (=> d!25486 (= lt!29498 e!58704)))

(declare-fun c!25450 () Bool)

(assert (=> d!25486 (= c!25450 ((_ is Some!196) lt!29508))))

(assert (=> d!25486 (= lt!29508 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29247))))))

(assert (=> d!25486 (= (lexTailRec!6 thiss!11428 rules!1152 input!576 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (_2!1139 (v!13005 lt!29247)) (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247)))) lt!29498)))

(declare-fun b!105783 () Bool)

(assert (=> b!105783 (= e!58706 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29247))))))

(assert (= (and d!25486 c!25450) b!105781))

(assert (= (and d!25486 (not c!25450)) b!105778))

(assert (= (and b!105781 c!25448) b!105780))

(assert (= (and b!105781 (not c!25448)) b!105783))

(assert (= (and b!105781 c!25449) b!105779))

(assert (= (and b!105781 (not c!25449)) b!105782))

(assert (= (and d!25486 res!50855) b!105777))

(declare-fun m!92472 () Bool)

(assert (=> b!105781 m!92472))

(declare-fun m!92474 () Bool)

(assert (=> b!105781 m!92474))

(declare-fun m!92476 () Bool)

(assert (=> b!105781 m!92476))

(declare-fun m!92478 () Bool)

(assert (=> b!105781 m!92478))

(declare-fun m!92480 () Bool)

(assert (=> b!105781 m!92480))

(declare-fun m!92482 () Bool)

(assert (=> b!105781 m!92482))

(declare-fun m!92484 () Bool)

(assert (=> b!105781 m!92484))

(declare-fun m!92486 () Bool)

(assert (=> b!105781 m!92486))

(declare-fun m!92488 () Bool)

(assert (=> b!105781 m!92488))

(assert (=> b!105781 m!91648))

(declare-fun m!92490 () Bool)

(assert (=> b!105781 m!92490))

(declare-fun m!92492 () Bool)

(assert (=> b!105781 m!92492))

(declare-fun m!92494 () Bool)

(assert (=> b!105781 m!92494))

(declare-fun m!92496 () Bool)

(assert (=> b!105781 m!92496))

(declare-fun m!92498 () Bool)

(assert (=> b!105781 m!92498))

(declare-fun m!92500 () Bool)

(assert (=> b!105781 m!92500))

(assert (=> b!105781 m!92496))

(assert (=> b!105781 m!91662))

(declare-fun m!92502 () Bool)

(assert (=> b!105781 m!92502))

(declare-fun m!92504 () Bool)

(assert (=> b!105781 m!92504))

(assert (=> b!105781 m!92502))

(declare-fun m!92506 () Bool)

(assert (=> b!105781 m!92506))

(declare-fun m!92508 () Bool)

(assert (=> b!105781 m!92508))

(assert (=> b!105781 m!92490))

(declare-fun m!92510 () Bool)

(assert (=> b!105781 m!92510))

(assert (=> b!105781 m!92478))

(assert (=> b!105781 m!92492))

(declare-fun m!92512 () Bool)

(assert (=> b!105781 m!92512))

(assert (=> b!105781 m!92504))

(declare-fun m!92514 () Bool)

(assert (=> b!105781 m!92514))

(assert (=> b!105781 m!91666))

(assert (=> b!105781 m!91662))

(assert (=> b!105781 m!92480))

(declare-fun m!92516 () Bool)

(assert (=> b!105781 m!92516))

(declare-fun m!92518 () Bool)

(assert (=> b!105781 m!92518))

(assert (=> b!105781 m!91648))

(assert (=> b!105781 m!91668))

(assert (=> b!105781 m!92504))

(assert (=> b!105781 m!92490))

(declare-fun m!92520 () Bool)

(assert (=> b!105781 m!92520))

(assert (=> b!105781 m!92502))

(assert (=> b!105781 m!92482))

(assert (=> b!105781 m!92516))

(declare-fun m!92522 () Bool)

(assert (=> b!105781 m!92522))

(assert (=> b!105781 m!92472))

(declare-fun m!92524 () Bool)

(assert (=> b!105781 m!92524))

(assert (=> b!105781 m!92486))

(declare-fun m!92526 () Bool)

(assert (=> d!25486 m!92526))

(assert (=> d!25486 m!91674))

(assert (=> d!25486 m!91690))

(assert (=> d!25486 m!92506))

(declare-fun m!92528 () Bool)

(assert (=> b!105779 m!92528))

(declare-fun m!92530 () Bool)

(assert (=> b!105779 m!92530))

(declare-fun m!92532 () Bool)

(assert (=> b!105780 m!92532))

(declare-fun m!92534 () Bool)

(assert (=> b!105780 m!92534))

(declare-fun m!92536 () Bool)

(assert (=> b!105777 m!92536))

(assert (=> b!105777 m!91674))

(assert (=> b!105777 m!91702))

(assert (=> b!105196 d!25486))

(declare-fun d!25488 () Bool)

(declare-fun e!58713 () Bool)

(assert (=> d!25488 e!58713))

(declare-fun res!50861 () Bool)

(assert (=> d!25488 (=> (not res!50861) (not e!58713))))

(declare-fun lt!29520 () List!1713)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!145 (List!1713) (InoxSet Token!490))

(assert (=> d!25488 (= res!50861 (= (content!145 lt!29520) ((_ map or) (content!145 lt!29244) (content!145 lt!29256))))))

(declare-fun e!58712 () List!1713)

(assert (=> d!25488 (= lt!29520 e!58712)))

(declare-fun c!25453 () Bool)

(assert (=> d!25488 (= c!25453 ((_ is Nil!1707) lt!29244))))

(assert (=> d!25488 (= (++!284 lt!29244 lt!29256) lt!29520)))

(declare-fun b!105795 () Bool)

(assert (=> b!105795 (= e!58713 (or (not (= lt!29256 Nil!1707)) (= lt!29520 lt!29244)))))

(declare-fun b!105793 () Bool)

(assert (=> b!105793 (= e!58712 (Cons!1707 (h!7104 lt!29244) (++!284 (t!21402 lt!29244) lt!29256)))))

(declare-fun b!105794 () Bool)

(declare-fun res!50860 () Bool)

(assert (=> b!105794 (=> (not res!50860) (not e!58713))))

(assert (=> b!105794 (= res!50860 (= (size!1521 lt!29520) (+ (size!1521 lt!29244) (size!1521 lt!29256))))))

(declare-fun b!105792 () Bool)

(assert (=> b!105792 (= e!58712 lt!29256)))

(assert (= (and d!25488 c!25453) b!105792))

(assert (= (and d!25488 (not c!25453)) b!105793))

(assert (= (and d!25488 res!50861) b!105794))

(assert (= (and b!105794 res!50860) b!105795))

(declare-fun m!92538 () Bool)

(assert (=> d!25488 m!92538))

(declare-fun m!92540 () Bool)

(assert (=> d!25488 m!92540))

(declare-fun m!92542 () Bool)

(assert (=> d!25488 m!92542))

(declare-fun m!92544 () Bool)

(assert (=> b!105793 m!92544))

(declare-fun m!92546 () Bool)

(assert (=> b!105794 m!92546))

(declare-fun m!92548 () Bool)

(assert (=> b!105794 m!92548))

(declare-fun m!92550 () Bool)

(assert (=> b!105794 m!92550))

(assert (=> b!105196 d!25488))

(declare-fun d!25490 () Bool)

(assert (=> d!25490 (= (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (list!727 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(declare-fun bs!10182 () Bool)

(assert (= bs!10182 d!25490))

(declare-fun m!92552 () Bool)

(assert (=> bs!10182 m!92552))

(assert (=> b!105196 d!25490))

(declare-fun d!25492 () Bool)

(assert (=> d!25492 (= (++!284 (++!284 lt!29249 lt!29244) lt!29256) (++!284 lt!29249 (++!284 lt!29244 lt!29256)))))

(declare-fun lt!29523 () Unit!1124)

(declare-fun choose!1402 (List!1713 List!1713 List!1713) Unit!1124)

(assert (=> d!25492 (= lt!29523 (choose!1402 lt!29249 lt!29244 lt!29256))))

(assert (=> d!25492 (= (lemmaConcatAssociativity!105 lt!29249 lt!29244 lt!29256) lt!29523)))

(declare-fun bs!10183 () Bool)

(assert (= bs!10183 d!25492))

(assert (=> bs!10183 m!91676))

(assert (=> bs!10183 m!91676))

(assert (=> bs!10183 m!91678))

(assert (=> bs!10183 m!91630))

(declare-fun m!92554 () Bool)

(assert (=> bs!10183 m!92554))

(assert (=> bs!10183 m!91630))

(assert (=> bs!10183 m!91632))

(assert (=> b!105196 d!25492))

(declare-fun d!25494 () Bool)

(declare-fun e!58715 () Bool)

(assert (=> d!25494 e!58715))

(declare-fun res!50863 () Bool)

(assert (=> d!25494 (=> (not res!50863) (not e!58715))))

(declare-fun lt!29524 () List!1713)

(assert (=> d!25494 (= res!50863 (= (content!145 lt!29524) ((_ map or) (content!145 (++!284 lt!29249 lt!29244)) (content!145 lt!29256))))))

(declare-fun e!58714 () List!1713)

(assert (=> d!25494 (= lt!29524 e!58714)))

(declare-fun c!25454 () Bool)

(assert (=> d!25494 (= c!25454 ((_ is Nil!1707) (++!284 lt!29249 lt!29244)))))

(assert (=> d!25494 (= (++!284 (++!284 lt!29249 lt!29244) lt!29256) lt!29524)))

(declare-fun b!105799 () Bool)

(assert (=> b!105799 (= e!58715 (or (not (= lt!29256 Nil!1707)) (= lt!29524 (++!284 lt!29249 lt!29244))))))

(declare-fun b!105797 () Bool)

(assert (=> b!105797 (= e!58714 (Cons!1707 (h!7104 (++!284 lt!29249 lt!29244)) (++!284 (t!21402 (++!284 lt!29249 lt!29244)) lt!29256)))))

(declare-fun b!105798 () Bool)

(declare-fun res!50862 () Bool)

(assert (=> b!105798 (=> (not res!50862) (not e!58715))))

(assert (=> b!105798 (= res!50862 (= (size!1521 lt!29524) (+ (size!1521 (++!284 lt!29249 lt!29244)) (size!1521 lt!29256))))))

(declare-fun b!105796 () Bool)

(assert (=> b!105796 (= e!58714 lt!29256)))

(assert (= (and d!25494 c!25454) b!105796))

(assert (= (and d!25494 (not c!25454)) b!105797))

(assert (= (and d!25494 res!50863) b!105798))

(assert (= (and b!105798 res!50862) b!105799))

(declare-fun m!92556 () Bool)

(assert (=> d!25494 m!92556))

(assert (=> d!25494 m!91676))

(declare-fun m!92558 () Bool)

(assert (=> d!25494 m!92558))

(assert (=> d!25494 m!92542))

(declare-fun m!92560 () Bool)

(assert (=> b!105797 m!92560))

(declare-fun m!92562 () Bool)

(assert (=> b!105798 m!92562))

(assert (=> b!105798 m!91676))

(declare-fun m!92564 () Bool)

(assert (=> b!105798 m!92564))

(assert (=> b!105798 m!92550))

(assert (=> b!105196 d!25494))

(declare-fun lt!29527 () List!1711)

(declare-fun b!105811 () Bool)

(declare-fun e!58720 () Bool)

(assert (=> b!105811 (= e!58720 (or (not (= (++!283 lt!29250 lt!29241) Nil!1705)) (= lt!29527 lt!29255)))))

(declare-fun e!58721 () List!1711)

(declare-fun b!105809 () Bool)

(assert (=> b!105809 (= e!58721 (Cons!1705 (h!7102 lt!29255) (++!283 (t!21400 lt!29255) (++!283 lt!29250 lt!29241))))))

(declare-fun d!25496 () Bool)

(assert (=> d!25496 e!58720))

(declare-fun res!50869 () Bool)

(assert (=> d!25496 (=> (not res!50869) (not e!58720))))

(declare-fun content!146 (List!1711) (InoxSet C!1804))

(assert (=> d!25496 (= res!50869 (= (content!146 lt!29527) ((_ map or) (content!146 lt!29255) (content!146 (++!283 lt!29250 lt!29241)))))))

(assert (=> d!25496 (= lt!29527 e!58721)))

(declare-fun c!25457 () Bool)

(assert (=> d!25496 (= c!25457 ((_ is Nil!1705) lt!29255))))

(assert (=> d!25496 (= (++!283 lt!29255 (++!283 lt!29250 lt!29241)) lt!29527)))

(declare-fun b!105808 () Bool)

(assert (=> b!105808 (= e!58721 (++!283 lt!29250 lt!29241))))

(declare-fun b!105810 () Bool)

(declare-fun res!50868 () Bool)

(assert (=> b!105810 (=> (not res!50868) (not e!58720))))

(assert (=> b!105810 (= res!50868 (= (size!1519 lt!29527) (+ (size!1519 lt!29255) (size!1519 (++!283 lt!29250 lt!29241)))))))

(assert (= (and d!25496 c!25457) b!105808))

(assert (= (and d!25496 (not c!25457)) b!105809))

(assert (= (and d!25496 res!50869) b!105810))

(assert (= (and b!105810 res!50868) b!105811))

(assert (=> b!105809 m!91644))

(declare-fun m!92566 () Bool)

(assert (=> b!105809 m!92566))

(declare-fun m!92568 () Bool)

(assert (=> d!25496 m!92568))

(declare-fun m!92570 () Bool)

(assert (=> d!25496 m!92570))

(assert (=> d!25496 m!91644))

(declare-fun m!92572 () Bool)

(assert (=> d!25496 m!92572))

(declare-fun m!92574 () Bool)

(assert (=> b!105810 m!92574))

(declare-fun m!92576 () Bool)

(assert (=> b!105810 m!92576))

(assert (=> b!105810 m!91644))

(declare-fun m!92578 () Bool)

(assert (=> b!105810 m!92578))

(assert (=> b!105196 d!25496))

(declare-fun d!25498 () Bool)

(assert (=> d!25498 (= (lexList!83 thiss!11428 rules!1152 lt!29254) (tuple2!1859 lt!29234 Nil!1705))))

(declare-fun lt!29530 () Unit!1124)

(declare-fun choose!1403 (LexerInterface!265 List!1712 List!1711 List!1711 List!1713 List!1713 List!1711) Unit!1124)

(assert (=> d!25498 (= lt!29530 (choose!1403 thiss!11428 rules!1152 lt!29254 lt!29232 lt!29234 (list!724 (_1!1135 lt!29251)) (list!723 (_2!1135 lt!29251))))))

(assert (=> d!25498 (not (isEmpty!793 rules!1152))))

(assert (=> d!25498 (= (lemmaLexThenLexPrefix!47 thiss!11428 rules!1152 lt!29254 lt!29232 lt!29234 (list!724 (_1!1135 lt!29251)) (list!723 (_2!1135 lt!29251))) lt!29530)))

(declare-fun bs!10184 () Bool)

(assert (= bs!10184 d!25498))

(assert (=> bs!10184 m!91652))

(assert (=> bs!10184 m!91636))

(assert (=> bs!10184 m!91650))

(declare-fun m!92580 () Bool)

(assert (=> bs!10184 m!92580))

(assert (=> bs!10184 m!91454))

(assert (=> b!105196 d!25498))

(declare-fun d!25500 () Bool)

(assert (=> d!25500 (= (list!723 (_2!1139 (v!13005 lt!29247))) (list!727 (c!25296 (_2!1139 (v!13005 lt!29247)))))))

(declare-fun bs!10185 () Bool)

(assert (= bs!10185 d!25500))

(declare-fun m!92582 () Bool)

(assert (=> bs!10185 m!92582))

(assert (=> b!105196 d!25500))

(declare-fun d!25502 () Bool)

(assert (=> d!25502 (= (list!723 (_2!1135 lt!29251)) (list!727 (c!25296 (_2!1135 lt!29251))))))

(declare-fun bs!10186 () Bool)

(assert (= bs!10186 d!25502))

(declare-fun m!92584 () Bool)

(assert (=> bs!10186 m!92584))

(assert (=> b!105196 d!25502))

(declare-fun e!58722 () Bool)

(declare-fun b!105815 () Bool)

(declare-fun lt!29531 () List!1711)

(assert (=> b!105815 (= e!58722 (or (not (= lt!29241 Nil!1705)) (= lt!29531 lt!29250)))))

(declare-fun b!105813 () Bool)

(declare-fun e!58723 () List!1711)

(assert (=> b!105813 (= e!58723 (Cons!1705 (h!7102 lt!29250) (++!283 (t!21400 lt!29250) lt!29241)))))

(declare-fun d!25504 () Bool)

(assert (=> d!25504 e!58722))

(declare-fun res!50871 () Bool)

(assert (=> d!25504 (=> (not res!50871) (not e!58722))))

(assert (=> d!25504 (= res!50871 (= (content!146 lt!29531) ((_ map or) (content!146 lt!29250) (content!146 lt!29241))))))

(assert (=> d!25504 (= lt!29531 e!58723)))

(declare-fun c!25458 () Bool)

(assert (=> d!25504 (= c!25458 ((_ is Nil!1705) lt!29250))))

(assert (=> d!25504 (= (++!283 lt!29250 lt!29241) lt!29531)))

(declare-fun b!105812 () Bool)

(assert (=> b!105812 (= e!58723 lt!29241)))

(declare-fun b!105814 () Bool)

(declare-fun res!50870 () Bool)

(assert (=> b!105814 (=> (not res!50870) (not e!58722))))

(assert (=> b!105814 (= res!50870 (= (size!1519 lt!29531) (+ (size!1519 lt!29250) (size!1519 lt!29241))))))

(assert (= (and d!25504 c!25458) b!105812))

(assert (= (and d!25504 (not c!25458)) b!105813))

(assert (= (and d!25504 res!50871) b!105814))

(assert (= (and b!105814 res!50870) b!105815))

(declare-fun m!92586 () Bool)

(assert (=> b!105813 m!92586))

(declare-fun m!92588 () Bool)

(assert (=> d!25504 m!92588))

(declare-fun m!92590 () Bool)

(assert (=> d!25504 m!92590))

(declare-fun m!92592 () Bool)

(assert (=> d!25504 m!92592))

(declare-fun m!92594 () Bool)

(assert (=> b!105814 m!92594))

(declare-fun m!92596 () Bool)

(assert (=> b!105814 m!92596))

(declare-fun m!92598 () Bool)

(assert (=> b!105814 m!92598))

(assert (=> b!105196 d!25504))

(declare-fun d!25506 () Bool)

(assert (=> d!25506 (= (list!723 (BalanceConc!1085 Empty!540)) (list!727 (c!25296 (BalanceConc!1085 Empty!540))))))

(declare-fun bs!10187 () Bool)

(assert (= bs!10187 d!25506))

(declare-fun m!92600 () Bool)

(assert (=> bs!10187 m!92600))

(assert (=> b!105196 d!25506))

(declare-fun d!25508 () Bool)

(declare-fun e!58725 () Bool)

(assert (=> d!25508 e!58725))

(declare-fun c!25460 () Bool)

(declare-fun lt!29533 () tuple2!1858)

(assert (=> d!25508 (= c!25460 (> (size!1521 (_1!1136 lt!29533)) 0))))

(declare-fun e!58726 () tuple2!1858)

(assert (=> d!25508 (= lt!29533 e!58726)))

(declare-fun c!25459 () Bool)

(declare-fun lt!29534 () Option!198)

(assert (=> d!25508 (= c!25459 ((_ is Some!197) lt!29534))))

(assert (=> d!25508 (= lt!29534 (maxPrefix!93 thiss!11428 rules!1152 lt!29254))))

(assert (=> d!25508 (= (lexList!83 thiss!11428 rules!1152 lt!29254) lt!29533)))

(declare-fun b!105816 () Bool)

(declare-fun lt!29532 () tuple2!1858)

(assert (=> b!105816 (= e!58726 (tuple2!1859 (Cons!1707 (_1!1140 (v!13006 lt!29534)) (_1!1136 lt!29532)) (_2!1136 lt!29532)))))

(assert (=> b!105816 (= lt!29532 (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!29534))))))

(declare-fun b!105817 () Bool)

(assert (=> b!105817 (= e!58726 (tuple2!1859 Nil!1707 lt!29254))))

(declare-fun b!105818 () Bool)

(declare-fun e!58724 () Bool)

(assert (=> b!105818 (= e!58724 (not (isEmpty!797 (_1!1136 lt!29533))))))

(declare-fun b!105819 () Bool)

(assert (=> b!105819 (= e!58725 e!58724)))

(declare-fun res!50872 () Bool)

(assert (=> b!105819 (= res!50872 (< (size!1519 (_2!1136 lt!29533)) (size!1519 lt!29254)))))

(assert (=> b!105819 (=> (not res!50872) (not e!58724))))

(declare-fun b!105820 () Bool)

(assert (=> b!105820 (= e!58725 (= (_2!1136 lt!29533) lt!29254))))

(assert (= (and d!25508 c!25459) b!105816))

(assert (= (and d!25508 (not c!25459)) b!105817))

(assert (= (and d!25508 c!25460) b!105819))

(assert (= (and d!25508 (not c!25460)) b!105820))

(assert (= (and b!105819 res!50872) b!105818))

(declare-fun m!92602 () Bool)

(assert (=> d!25508 m!92602))

(declare-fun m!92604 () Bool)

(assert (=> d!25508 m!92604))

(declare-fun m!92606 () Bool)

(assert (=> b!105816 m!92606))

(declare-fun m!92608 () Bool)

(assert (=> b!105818 m!92608))

(declare-fun m!92610 () Bool)

(assert (=> b!105819 m!92610))

(declare-fun m!92612 () Bool)

(assert (=> b!105819 m!92612))

(assert (=> b!105196 d!25508))

(declare-fun d!25510 () Bool)

(declare-fun e!58728 () Bool)

(assert (=> d!25510 e!58728))

(declare-fun res!50874 () Bool)

(assert (=> d!25510 (=> (not res!50874) (not e!58728))))

(declare-fun lt!29535 () List!1713)

(assert (=> d!25510 (= res!50874 (= (content!145 lt!29535) ((_ map or) (content!145 lt!29249) (content!145 (++!284 lt!29244 lt!29256)))))))

(declare-fun e!58727 () List!1713)

(assert (=> d!25510 (= lt!29535 e!58727)))

(declare-fun c!25461 () Bool)

(assert (=> d!25510 (= c!25461 ((_ is Nil!1707) lt!29249))))

(assert (=> d!25510 (= (++!284 lt!29249 (++!284 lt!29244 lt!29256)) lt!29535)))

(declare-fun b!105824 () Bool)

(assert (=> b!105824 (= e!58728 (or (not (= (++!284 lt!29244 lt!29256) Nil!1707)) (= lt!29535 lt!29249)))))

(declare-fun b!105822 () Bool)

(assert (=> b!105822 (= e!58727 (Cons!1707 (h!7104 lt!29249) (++!284 (t!21402 lt!29249) (++!284 lt!29244 lt!29256))))))

(declare-fun b!105823 () Bool)

(declare-fun res!50873 () Bool)

(assert (=> b!105823 (=> (not res!50873) (not e!58728))))

(assert (=> b!105823 (= res!50873 (= (size!1521 lt!29535) (+ (size!1521 lt!29249) (size!1521 (++!284 lt!29244 lt!29256)))))))

(declare-fun b!105821 () Bool)

(assert (=> b!105821 (= e!58727 (++!284 lt!29244 lt!29256))))

(assert (= (and d!25510 c!25461) b!105821))

(assert (= (and d!25510 (not c!25461)) b!105822))

(assert (= (and d!25510 res!50874) b!105823))

(assert (= (and b!105823 res!50873) b!105824))

(declare-fun m!92614 () Bool)

(assert (=> d!25510 m!92614))

(declare-fun m!92616 () Bool)

(assert (=> d!25510 m!92616))

(assert (=> d!25510 m!91630))

(declare-fun m!92618 () Bool)

(assert (=> d!25510 m!92618))

(assert (=> b!105822 m!91630))

(declare-fun m!92620 () Bool)

(assert (=> b!105822 m!92620))

(declare-fun m!92622 () Bool)

(assert (=> b!105823 m!92622))

(declare-fun m!92624 () Bool)

(assert (=> b!105823 m!92624))

(assert (=> b!105823 m!91630))

(declare-fun m!92626 () Bool)

(assert (=> b!105823 m!92626))

(assert (=> b!105196 d!25510))

(declare-fun d!25512 () Bool)

(assert (=> d!25512 (= (list!724 (BalanceConc!1087 Empty!541)) (list!728 (c!25298 (BalanceConc!1087 Empty!541))))))

(declare-fun bs!10188 () Bool)

(assert (= bs!10188 d!25512))

(declare-fun m!92628 () Bool)

(assert (=> bs!10188 m!92628))

(assert (=> b!105196 d!25512))

(declare-fun d!25514 () Bool)

(declare-fun lt!29538 () BalanceConc!1084)

(assert (=> d!25514 (= (list!723 lt!29538) (originalCharacters!416 (_1!1139 (v!13005 lt!29247))))))

(declare-fun dynLambda!539 (Int TokenValue!363) BalanceConc!1084)

(assert (=> d!25514 (= lt!29538 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247)))))))

(assert (=> d!25514 (= (charsOf!88 (_1!1139 (v!13005 lt!29247))) lt!29538)))

(declare-fun b_lambda!1163 () Bool)

(assert (=> (not b_lambda!1163) (not d!25514)))

(declare-fun t!21423 () Bool)

(declare-fun tb!3077 () Bool)

(assert (=> (and b!105068 (= (toChars!819 (transformation!373 (h!7103 rules!1152))) (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247)))))) t!21423) tb!3077))

(declare-fun b!105829 () Bool)

(declare-fun e!58731 () Bool)

(declare-fun tp!58507 () Bool)

(assert (=> b!105829 (= e!58731 (and (inv!2080 (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247)))))) tp!58507))))

(declare-fun result!4566 () Bool)

(assert (=> tb!3077 (= result!4566 (and (inv!2079 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247))))) e!58731))))

(assert (= tb!3077 b!105829))

(declare-fun m!92630 () Bool)

(assert (=> b!105829 m!92630))

(declare-fun m!92632 () Bool)

(assert (=> tb!3077 m!92632))

(assert (=> d!25514 t!21423))

(declare-fun b_and!4715 () Bool)

(assert (= b_and!4697 (and (=> t!21423 result!4566) b_and!4715)))

(declare-fun t!21425 () Bool)

(declare-fun tb!3079 () Bool)

(assert (=> (and b!105252 (= (toChars!819 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247)))))) t!21425) tb!3079))

(declare-fun result!4570 () Bool)

(assert (= result!4570 result!4566))

(assert (=> d!25514 t!21425))

(declare-fun b_and!4717 () Bool)

(assert (= b_and!4705 (and (=> t!21425 result!4570) b_and!4717)))

(declare-fun m!92634 () Bool)

(assert (=> d!25514 m!92634))

(declare-fun m!92636 () Bool)

(assert (=> d!25514 m!92636))

(assert (=> b!105196 d!25514))

(declare-fun b!105830 () Bool)

(declare-fun e!58733 () tuple2!1856)

(declare-fun lt!29539 () tuple2!1856)

(declare-fun lt!29541 () Option!197)

(assert (=> b!105830 (= e!58733 (tuple2!1857 (prepend!141 (_1!1135 lt!29539) (_1!1139 (v!13005 lt!29541))) (_2!1135 lt!29539)))))

(assert (=> b!105830 (= lt!29539 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29541))))))

(declare-fun lt!29540 () tuple2!1856)

(declare-fun e!58734 () Bool)

(declare-fun b!105831 () Bool)

(assert (=> b!105831 (= e!58734 (= (list!723 (_2!1135 lt!29540)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))))

(declare-fun b!105832 () Bool)

(declare-fun e!58735 () Bool)

(assert (=> b!105832 (= e!58735 (not (isEmpty!794 (_1!1135 lt!29540))))))

(declare-fun b!105833 () Bool)

(assert (=> b!105833 (= e!58733 (tuple2!1857 (BalanceConc!1087 Empty!541) (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(declare-fun b!105835 () Bool)

(declare-fun e!58732 () Bool)

(assert (=> b!105835 (= e!58732 e!58735)))

(declare-fun res!50875 () Bool)

(assert (=> b!105835 (= res!50875 (< (size!1513 (_2!1135 lt!29540)) (size!1513 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(assert (=> b!105835 (=> (not res!50875) (not e!58735))))

(declare-fun b!105836 () Bool)

(declare-fun res!50877 () Bool)

(assert (=> b!105836 (=> (not res!50877) (not e!58734))))

(assert (=> b!105836 (= res!50877 (= (list!724 (_1!1135 lt!29540)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))))

(declare-fun b!105834 () Bool)

(assert (=> b!105834 (= e!58732 (= (list!723 (_2!1135 lt!29540)) (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun d!25516 () Bool)

(assert (=> d!25516 e!58734))

(declare-fun res!50876 () Bool)

(assert (=> d!25516 (=> (not res!50876) (not e!58734))))

(assert (=> d!25516 (= res!50876 e!58732)))

(declare-fun c!25463 () Bool)

(assert (=> d!25516 (= c!25463 (> (size!1514 (_1!1135 lt!29540)) 0))))

(assert (=> d!25516 (= lt!29540 e!58733)))

(declare-fun c!25462 () Bool)

(assert (=> d!25516 (= c!25462 ((_ is Some!196) lt!29541))))

(assert (=> d!25516 (= lt!29541 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(assert (=> d!25516 (= (lexRec!60 thiss!11428 rules!1152 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) lt!29540)))

(assert (= (and d!25516 c!25462) b!105830))

(assert (= (and d!25516 (not c!25462)) b!105833))

(assert (= (and d!25516 c!25463) b!105835))

(assert (= (and d!25516 (not c!25463)) b!105834))

(assert (= (and b!105835 res!50875) b!105832))

(assert (= (and d!25516 res!50876) b!105836))

(assert (= (and b!105836 res!50877) b!105831))

(declare-fun m!92638 () Bool)

(assert (=> b!105830 m!92638))

(declare-fun m!92640 () Bool)

(assert (=> b!105830 m!92640))

(declare-fun m!92642 () Bool)

(assert (=> b!105836 m!92642))

(assert (=> b!105836 m!91662))

(assert (=> b!105836 m!92480))

(assert (=> b!105836 m!92480))

(declare-fun m!92644 () Bool)

(assert (=> b!105836 m!92644))

(declare-fun m!92646 () Bool)

(assert (=> b!105835 m!92646))

(assert (=> b!105835 m!91662))

(declare-fun m!92648 () Bool)

(assert (=> b!105835 m!92648))

(declare-fun m!92650 () Bool)

(assert (=> b!105831 m!92650))

(assert (=> b!105831 m!91662))

(assert (=> b!105831 m!92480))

(assert (=> b!105831 m!92480))

(assert (=> b!105831 m!92644))

(declare-fun m!92652 () Bool)

(assert (=> d!25516 m!92652))

(assert (=> d!25516 m!91662))

(declare-fun m!92654 () Bool)

(assert (=> d!25516 m!92654))

(declare-fun m!92656 () Bool)

(assert (=> b!105832 m!92656))

(assert (=> b!105834 m!92650))

(assert (=> b!105834 m!91662))

(assert (=> b!105834 m!92480))

(assert (=> b!105196 d!25516))

(declare-fun d!25518 () Bool)

(assert (=> d!25518 (= (++!283 (++!283 lt!29255 lt!29250) lt!29241) (++!283 lt!29255 (++!283 lt!29250 lt!29241)))))

(declare-fun lt!29544 () Unit!1124)

(declare-fun choose!1404 (List!1711 List!1711 List!1711) Unit!1124)

(assert (=> d!25518 (= lt!29544 (choose!1404 lt!29255 lt!29250 lt!29241))))

(assert (=> d!25518 (= (lemmaConcatAssociativity!104 lt!29255 lt!29250 lt!29241) lt!29544)))

(declare-fun bs!10189 () Bool)

(assert (= bs!10189 d!25518))

(assert (=> bs!10189 m!91654))

(assert (=> bs!10189 m!91656))

(assert (=> bs!10189 m!91654))

(assert (=> bs!10189 m!91644))

(declare-fun m!92658 () Bool)

(assert (=> bs!10189 m!92658))

(assert (=> bs!10189 m!91644))

(assert (=> bs!10189 m!91646))

(assert (=> b!105196 d!25518))

(declare-fun d!25520 () Bool)

(declare-fun e!58737 () Bool)

(assert (=> d!25520 e!58737))

(declare-fun res!50879 () Bool)

(assert (=> d!25520 (=> (not res!50879) (not e!58737))))

(declare-fun lt!29545 () List!1713)

(assert (=> d!25520 (= res!50879 (= (content!145 lt!29545) ((_ map or) (content!145 lt!29249) (content!145 lt!29244))))))

(declare-fun e!58736 () List!1713)

(assert (=> d!25520 (= lt!29545 e!58736)))

(declare-fun c!25464 () Bool)

(assert (=> d!25520 (= c!25464 ((_ is Nil!1707) lt!29249))))

(assert (=> d!25520 (= (++!284 lt!29249 lt!29244) lt!29545)))

(declare-fun b!105840 () Bool)

(assert (=> b!105840 (= e!58737 (or (not (= lt!29244 Nil!1707)) (= lt!29545 lt!29249)))))

(declare-fun b!105838 () Bool)

(assert (=> b!105838 (= e!58736 (Cons!1707 (h!7104 lt!29249) (++!284 (t!21402 lt!29249) lt!29244)))))

(declare-fun b!105839 () Bool)

(declare-fun res!50878 () Bool)

(assert (=> b!105839 (=> (not res!50878) (not e!58737))))

(assert (=> b!105839 (= res!50878 (= (size!1521 lt!29545) (+ (size!1521 lt!29249) (size!1521 lt!29244))))))

(declare-fun b!105837 () Bool)

(assert (=> b!105837 (= e!58736 lt!29244)))

(assert (= (and d!25520 c!25464) b!105837))

(assert (= (and d!25520 (not c!25464)) b!105838))

(assert (= (and d!25520 res!50879) b!105839))

(assert (= (and b!105839 res!50878) b!105840))

(declare-fun m!92660 () Bool)

(assert (=> d!25520 m!92660))

(assert (=> d!25520 m!92616))

(assert (=> d!25520 m!92540))

(declare-fun m!92662 () Bool)

(assert (=> b!105838 m!92662))

(declare-fun m!92664 () Bool)

(assert (=> b!105839 m!92664))

(assert (=> b!105839 m!92624))

(assert (=> b!105839 m!92548))

(assert (=> b!105196 d!25520))

(declare-fun lt!29546 () List!1711)

(declare-fun e!58738 () Bool)

(declare-fun b!105844 () Bool)

(assert (=> b!105844 (= e!58738 (or (not (= lt!29250 Nil!1705)) (= lt!29546 lt!29255)))))

(declare-fun b!105842 () Bool)

(declare-fun e!58739 () List!1711)

(assert (=> b!105842 (= e!58739 (Cons!1705 (h!7102 lt!29255) (++!283 (t!21400 lt!29255) lt!29250)))))

(declare-fun d!25522 () Bool)

(assert (=> d!25522 e!58738))

(declare-fun res!50881 () Bool)

(assert (=> d!25522 (=> (not res!50881) (not e!58738))))

(assert (=> d!25522 (= res!50881 (= (content!146 lt!29546) ((_ map or) (content!146 lt!29255) (content!146 lt!29250))))))

(assert (=> d!25522 (= lt!29546 e!58739)))

(declare-fun c!25465 () Bool)

(assert (=> d!25522 (= c!25465 ((_ is Nil!1705) lt!29255))))

(assert (=> d!25522 (= (++!283 lt!29255 lt!29250) lt!29546)))

(declare-fun b!105841 () Bool)

(assert (=> b!105841 (= e!58739 lt!29250)))

(declare-fun b!105843 () Bool)

(declare-fun res!50880 () Bool)

(assert (=> b!105843 (=> (not res!50880) (not e!58738))))

(assert (=> b!105843 (= res!50880 (= (size!1519 lt!29546) (+ (size!1519 lt!29255) (size!1519 lt!29250))))))

(assert (= (and d!25522 c!25465) b!105841))

(assert (= (and d!25522 (not c!25465)) b!105842))

(assert (= (and d!25522 res!50881) b!105843))

(assert (= (and b!105843 res!50880) b!105844))

(declare-fun m!92666 () Bool)

(assert (=> b!105842 m!92666))

(declare-fun m!92668 () Bool)

(assert (=> d!25522 m!92668))

(assert (=> d!25522 m!92570))

(assert (=> d!25522 m!92590))

(declare-fun m!92670 () Bool)

(assert (=> b!105843 m!92670))

(assert (=> b!105843 m!92576))

(assert (=> b!105843 m!92596))

(assert (=> b!105196 d!25522))

(declare-fun d!25524 () Bool)

(assert (=> d!25524 (= (list!724 (_1!1135 lt!29251)) (list!728 (c!25298 (_1!1135 lt!29251))))))

(declare-fun bs!10190 () Bool)

(assert (= bs!10190 d!25524))

(declare-fun m!92672 () Bool)

(assert (=> bs!10190 m!92672))

(assert (=> b!105196 d!25524))

(declare-fun d!25526 () Bool)

(assert (=> d!25526 (= (list!724 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247)))) (list!728 (c!25298 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))))))))

(declare-fun bs!10191 () Bool)

(assert (= bs!10191 d!25526))

(declare-fun m!92674 () Bool)

(assert (=> bs!10191 m!92674))

(assert (=> b!105196 d!25526))

(assert (=> b!105196 d!25342))

(declare-fun b!105845 () Bool)

(declare-fun e!58741 () tuple2!1856)

(declare-fun lt!29547 () tuple2!1856)

(declare-fun lt!29549 () Option!197)

(assert (=> b!105845 (= e!58741 (tuple2!1857 (prepend!141 (_1!1135 lt!29547) (_1!1139 (v!13005 lt!29549))) (_2!1135 lt!29547)))))

(assert (=> b!105845 (= lt!29547 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29549))))))

(declare-fun b!105846 () Bool)

(declare-fun e!58742 () Bool)

(declare-fun lt!29548 () tuple2!1856)

(assert (=> b!105846 (= e!58742 (= (list!723 (_2!1135 lt!29548)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29247)))))))))

(declare-fun b!105847 () Bool)

(declare-fun e!58743 () Bool)

(assert (=> b!105847 (= e!58743 (not (isEmpty!794 (_1!1135 lt!29548))))))

(declare-fun b!105848 () Bool)

(assert (=> b!105848 (= e!58741 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29247))))))

(declare-fun b!105850 () Bool)

(declare-fun e!58740 () Bool)

(assert (=> b!105850 (= e!58740 e!58743)))

(declare-fun res!50882 () Bool)

(assert (=> b!105850 (= res!50882 (< (size!1513 (_2!1135 lt!29548)) (size!1513 (_2!1139 (v!13005 lt!29247)))))))

(assert (=> b!105850 (=> (not res!50882) (not e!58743))))

(declare-fun b!105851 () Bool)

(declare-fun res!50884 () Bool)

(assert (=> b!105851 (=> (not res!50884) (not e!58742))))

(assert (=> b!105851 (= res!50884 (= (list!724 (_1!1135 lt!29548)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29247)))))))))

(declare-fun b!105849 () Bool)

(assert (=> b!105849 (= e!58740 (= (list!723 (_2!1135 lt!29548)) (list!723 (_2!1139 (v!13005 lt!29247)))))))

(declare-fun d!25528 () Bool)

(assert (=> d!25528 e!58742))

(declare-fun res!50883 () Bool)

(assert (=> d!25528 (=> (not res!50883) (not e!58742))))

(assert (=> d!25528 (= res!50883 e!58740)))

(declare-fun c!25467 () Bool)

(assert (=> d!25528 (= c!25467 (> (size!1514 (_1!1135 lt!29548)) 0))))

(assert (=> d!25528 (= lt!29548 e!58741)))

(declare-fun c!25466 () Bool)

(assert (=> d!25528 (= c!25466 ((_ is Some!196) lt!29549))))

(assert (=> d!25528 (= lt!29549 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29247))))))

(assert (=> d!25528 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29247))) lt!29548)))

(assert (= (and d!25528 c!25466) b!105845))

(assert (= (and d!25528 (not c!25466)) b!105848))

(assert (= (and d!25528 c!25467) b!105850))

(assert (= (and d!25528 (not c!25467)) b!105849))

(assert (= (and b!105850 res!50882) b!105847))

(assert (= (and d!25528 res!50883) b!105851))

(assert (= (and b!105851 res!50884) b!105846))

(declare-fun m!92676 () Bool)

(assert (=> b!105845 m!92676))

(declare-fun m!92678 () Bool)

(assert (=> b!105845 m!92678))

(declare-fun m!92680 () Bool)

(assert (=> b!105851 m!92680))

(assert (=> b!105851 m!91684))

(assert (=> b!105851 m!91684))

(declare-fun m!92682 () Bool)

(assert (=> b!105851 m!92682))

(declare-fun m!92684 () Bool)

(assert (=> b!105850 m!92684))

(declare-fun m!92686 () Bool)

(assert (=> b!105850 m!92686))

(declare-fun m!92688 () Bool)

(assert (=> b!105846 m!92688))

(assert (=> b!105846 m!91684))

(assert (=> b!105846 m!91684))

(assert (=> b!105846 m!92682))

(declare-fun m!92690 () Bool)

(assert (=> d!25528 m!92690))

(assert (=> d!25528 m!92506))

(declare-fun m!92692 () Bool)

(assert (=> b!105847 m!92692))

(assert (=> b!105849 m!92688))

(assert (=> b!105849 m!91684))

(assert (=> b!105196 d!25528))

(declare-fun b!105855 () Bool)

(declare-fun e!58744 () Bool)

(declare-fun lt!29550 () List!1711)

(assert (=> b!105855 (= e!58744 (or (not (= (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247)))) Nil!1705)) (= lt!29550 (list!723 (BalanceConc!1085 Empty!540)))))))

(declare-fun b!105853 () Bool)

(declare-fun e!58745 () List!1711)

(assert (=> b!105853 (= e!58745 (Cons!1705 (h!7102 (list!723 (BalanceConc!1085 Empty!540))) (++!283 (t!21400 (list!723 (BalanceConc!1085 Empty!540))) (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun d!25530 () Bool)

(assert (=> d!25530 e!58744))

(declare-fun res!50886 () Bool)

(assert (=> d!25530 (=> (not res!50886) (not e!58744))))

(assert (=> d!25530 (= res!50886 (= (content!146 lt!29550) ((_ map or) (content!146 (list!723 (BalanceConc!1085 Empty!540))) (content!146 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(assert (=> d!25530 (= lt!29550 e!58745)))

(declare-fun c!25468 () Bool)

(assert (=> d!25530 (= c!25468 ((_ is Nil!1705) (list!723 (BalanceConc!1085 Empty!540))))))

(assert (=> d!25530 (= (++!283 (list!723 (BalanceConc!1085 Empty!540)) (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) lt!29550)))

(declare-fun b!105852 () Bool)

(assert (=> b!105852 (= e!58745 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))

(declare-fun b!105854 () Bool)

(declare-fun res!50885 () Bool)

(assert (=> b!105854 (=> (not res!50885) (not e!58744))))

(assert (=> b!105854 (= res!50885 (= (size!1519 lt!29550) (+ (size!1519 (list!723 (BalanceConc!1085 Empty!540))) (size!1519 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(assert (= (and d!25530 c!25468) b!105852))

(assert (= (and d!25530 (not c!25468)) b!105853))

(assert (= (and d!25530 res!50886) b!105854))

(assert (= (and b!105854 res!50885) b!105855))

(assert (=> b!105853 m!91640))

(declare-fun m!92694 () Bool)

(assert (=> b!105853 m!92694))

(declare-fun m!92696 () Bool)

(assert (=> d!25530 m!92696))

(assert (=> d!25530 m!91638))

(declare-fun m!92698 () Bool)

(assert (=> d!25530 m!92698))

(assert (=> d!25530 m!91640))

(declare-fun m!92700 () Bool)

(assert (=> d!25530 m!92700))

(declare-fun m!92702 () Bool)

(assert (=> b!105854 m!92702))

(assert (=> b!105854 m!91638))

(declare-fun m!92704 () Bool)

(assert (=> b!105854 m!92704))

(assert (=> b!105854 m!91640))

(declare-fun m!92706 () Bool)

(assert (=> b!105854 m!92706))

(assert (=> b!105196 d!25530))

(declare-fun b!105856 () Bool)

(declare-fun res!50890 () Bool)

(declare-fun e!58750 () Bool)

(assert (=> b!105856 (=> (not res!50890) (not e!58750))))

(declare-fun e!58749 () Bool)

(assert (=> b!105856 (= res!50890 e!58749)))

(declare-fun res!50889 () Bool)

(assert (=> b!105856 (=> res!50889 e!58749)))

(declare-fun lt!29556 () Option!197)

(assert (=> b!105856 (= res!50889 (not (isDefined!71 lt!29556)))))

(declare-fun b!105857 () Bool)

(declare-fun e!58747 () Bool)

(declare-fun e!58751 () Bool)

(assert (=> b!105857 (= e!58747 e!58751)))

(declare-fun res!50892 () Bool)

(assert (=> b!105857 (=> (not res!50892) (not e!58751))))

(assert (=> b!105857 (= res!50892 (= (_1!1139 (get!437 lt!29556)) (_1!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 lt!29233))))))))

(declare-fun b!105858 () Bool)

(assert (=> b!105858 (= e!58751 (= (list!723 (_2!1139 (get!437 lt!29556))) (_2!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 lt!29233))))))))

(declare-fun b!105859 () Bool)

(declare-fun e!58748 () Bool)

(assert (=> b!105859 (= e!58748 (= (list!723 (_2!1139 (get!437 lt!29556))) (_2!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 lt!29233))))))))

(declare-fun bm!4555 () Bool)

(declare-fun call!4560 () Option!197)

(assert (=> bm!4555 (= call!4560 (maxPrefixOneRuleZipperSequence!18 thiss!11428 (h!7103 rules!1152) lt!29233))))

(declare-fun d!25532 () Bool)

(assert (=> d!25532 e!58750))

(declare-fun res!50888 () Bool)

(assert (=> d!25532 (=> (not res!50888) (not e!58750))))

(assert (=> d!25532 (= res!50888 (= (isDefined!71 lt!29556) (isDefined!72 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 lt!29233)))))))

(declare-fun e!58746 () Option!197)

(assert (=> d!25532 (= lt!29556 e!58746)))

(declare-fun c!25469 () Bool)

(assert (=> d!25532 (= c!25469 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!29557 () Unit!1124)

(declare-fun lt!29555 () Unit!1124)

(assert (=> d!25532 (= lt!29557 lt!29555)))

(declare-fun lt!29552 () List!1711)

(declare-fun lt!29551 () List!1711)

(assert (=> d!25532 (isPrefix!51 lt!29552 lt!29551)))

(assert (=> d!25532 (= lt!29555 (lemmaIsPrefixRefl!51 lt!29552 lt!29551))))

(assert (=> d!25532 (= lt!29551 (list!723 lt!29233))))

(assert (=> d!25532 (= lt!29552 (list!723 lt!29233))))

(assert (=> d!25532 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!25532 (= (maxPrefixZipperSequence!56 thiss!11428 rules!1152 lt!29233) lt!29556)))

(declare-fun b!105860 () Bool)

(assert (=> b!105860 (= e!58750 e!58747)))

(declare-fun res!50891 () Bool)

(assert (=> b!105860 (=> res!50891 e!58747)))

(assert (=> b!105860 (= res!50891 (not (isDefined!71 lt!29556)))))

(declare-fun b!105861 () Bool)

(assert (=> b!105861 (= e!58749 e!58748)))

(declare-fun res!50887 () Bool)

(assert (=> b!105861 (=> (not res!50887) (not e!58748))))

(assert (=> b!105861 (= res!50887 (= (_1!1139 (get!437 lt!29556)) (_1!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 lt!29233))))))))

(declare-fun b!105862 () Bool)

(declare-fun lt!29553 () Option!197)

(declare-fun lt!29554 () Option!197)

(assert (=> b!105862 (= e!58746 (ite (and ((_ is None!196) lt!29553) ((_ is None!196) lt!29554)) None!196 (ite ((_ is None!196) lt!29554) lt!29553 (ite ((_ is None!196) lt!29553) lt!29554 (ite (>= (size!1512 (_1!1139 (v!13005 lt!29553))) (size!1512 (_1!1139 (v!13005 lt!29554)))) lt!29553 lt!29554)))))))

(assert (=> b!105862 (= lt!29553 call!4560)))

(assert (=> b!105862 (= lt!29554 (maxPrefixZipperSequence!56 thiss!11428 (t!21401 rules!1152) lt!29233))))

(declare-fun b!105863 () Bool)

(assert (=> b!105863 (= e!58746 call!4560)))

(assert (= (and d!25532 c!25469) b!105863))

(assert (= (and d!25532 (not c!25469)) b!105862))

(assert (= (or b!105863 b!105862) bm!4555))

(assert (= (and d!25532 res!50888) b!105856))

(assert (= (and b!105856 (not res!50889)) b!105861))

(assert (= (and b!105861 res!50887) b!105859))

(assert (= (and b!105856 res!50890) b!105860))

(assert (= (and b!105860 (not res!50891)) b!105857))

(assert (= (and b!105857 res!50892) b!105858))

(declare-fun m!92708 () Bool)

(assert (=> b!105862 m!92708))

(declare-fun m!92710 () Bool)

(assert (=> b!105858 m!92710))

(declare-fun m!92712 () Bool)

(assert (=> b!105858 m!92712))

(declare-fun m!92714 () Bool)

(assert (=> b!105858 m!92714))

(assert (=> b!105858 m!92712))

(assert (=> b!105858 m!92714))

(declare-fun m!92716 () Bool)

(assert (=> b!105858 m!92716))

(declare-fun m!92718 () Bool)

(assert (=> b!105858 m!92718))

(assert (=> b!105861 m!92710))

(assert (=> b!105861 m!92712))

(assert (=> b!105861 m!92712))

(declare-fun m!92720 () Bool)

(assert (=> b!105861 m!92720))

(assert (=> b!105861 m!92720))

(declare-fun m!92722 () Bool)

(assert (=> b!105861 m!92722))

(assert (=> b!105859 m!92710))

(assert (=> b!105859 m!92720))

(assert (=> b!105859 m!92722))

(assert (=> b!105859 m!92718))

(assert (=> b!105859 m!92712))

(assert (=> b!105859 m!92712))

(assert (=> b!105859 m!92720))

(declare-fun m!92724 () Bool)

(assert (=> bm!4555 m!92724))

(declare-fun m!92726 () Bool)

(assert (=> b!105856 m!92726))

(assert (=> d!25532 m!92720))

(declare-fun m!92728 () Bool)

(assert (=> d!25532 m!92728))

(assert (=> d!25532 m!92726))

(assert (=> d!25532 m!92158))

(declare-fun m!92730 () Bool)

(assert (=> d!25532 m!92730))

(declare-fun m!92732 () Bool)

(assert (=> d!25532 m!92732))

(assert (=> d!25532 m!92712))

(assert (=> d!25532 m!92712))

(assert (=> d!25532 m!92720))

(assert (=> b!105860 m!92726))

(assert (=> b!105857 m!92710))

(assert (=> b!105857 m!92712))

(assert (=> b!105857 m!92712))

(assert (=> b!105857 m!92714))

(assert (=> b!105857 m!92714))

(assert (=> b!105857 m!92716))

(assert (=> b!105196 d!25532))

(declare-fun lt!29558 () List!1711)

(declare-fun e!58752 () Bool)

(declare-fun b!105867 () Bool)

(assert (=> b!105867 (= e!58752 (or (not (= lt!29241 Nil!1705)) (= lt!29558 (++!283 lt!29255 lt!29250))))))

(declare-fun e!58753 () List!1711)

(declare-fun b!105865 () Bool)

(assert (=> b!105865 (= e!58753 (Cons!1705 (h!7102 (++!283 lt!29255 lt!29250)) (++!283 (t!21400 (++!283 lt!29255 lt!29250)) lt!29241)))))

(declare-fun d!25534 () Bool)

(assert (=> d!25534 e!58752))

(declare-fun res!50894 () Bool)

(assert (=> d!25534 (=> (not res!50894) (not e!58752))))

(assert (=> d!25534 (= res!50894 (= (content!146 lt!29558) ((_ map or) (content!146 (++!283 lt!29255 lt!29250)) (content!146 lt!29241))))))

(assert (=> d!25534 (= lt!29558 e!58753)))

(declare-fun c!25470 () Bool)

(assert (=> d!25534 (= c!25470 ((_ is Nil!1705) (++!283 lt!29255 lt!29250)))))

(assert (=> d!25534 (= (++!283 (++!283 lt!29255 lt!29250) lt!29241) lt!29558)))

(declare-fun b!105864 () Bool)

(assert (=> b!105864 (= e!58753 lt!29241)))

(declare-fun b!105866 () Bool)

(declare-fun res!50893 () Bool)

(assert (=> b!105866 (=> (not res!50893) (not e!58752))))

(assert (=> b!105866 (= res!50893 (= (size!1519 lt!29558) (+ (size!1519 (++!283 lt!29255 lt!29250)) (size!1519 lt!29241))))))

(assert (= (and d!25534 c!25470) b!105864))

(assert (= (and d!25534 (not c!25470)) b!105865))

(assert (= (and d!25534 res!50894) b!105866))

(assert (= (and b!105866 res!50893) b!105867))

(declare-fun m!92734 () Bool)

(assert (=> b!105865 m!92734))

(declare-fun m!92736 () Bool)

(assert (=> d!25534 m!92736))

(assert (=> d!25534 m!91654))

(declare-fun m!92738 () Bool)

(assert (=> d!25534 m!92738))

(assert (=> d!25534 m!92592))

(declare-fun m!92740 () Bool)

(assert (=> b!105866 m!92740))

(assert (=> b!105866 m!91654))

(declare-fun m!92742 () Bool)

(assert (=> b!105866 m!92742))

(assert (=> b!105866 m!92598))

(assert (=> b!105196 d!25534))

(declare-fun b!105868 () Bool)

(declare-fun e!58755 () tuple2!1856)

(declare-fun lt!29559 () tuple2!1856)

(declare-fun lt!29561 () Option!197)

(assert (=> b!105868 (= e!58755 (tuple2!1857 (prepend!141 (_1!1135 lt!29559) (_1!1139 (v!13005 lt!29561))) (_2!1135 lt!29559)))))

(assert (=> b!105868 (= lt!29559 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29561))))))

(declare-fun b!105869 () Bool)

(declare-fun e!58756 () Bool)

(declare-fun lt!29560 () tuple2!1856)

(assert (=> b!105869 (= e!58756 (= (list!723 (_2!1135 lt!29560)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29240)))))))))

(declare-fun b!105870 () Bool)

(declare-fun e!58757 () Bool)

(assert (=> b!105870 (= e!58757 (not (isEmpty!794 (_1!1135 lt!29560))))))

(declare-fun b!105871 () Bool)

(assert (=> b!105871 (= e!58755 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29240))))))

(declare-fun b!105873 () Bool)

(declare-fun e!58754 () Bool)

(assert (=> b!105873 (= e!58754 e!58757)))

(declare-fun res!50895 () Bool)

(assert (=> b!105873 (= res!50895 (< (size!1513 (_2!1135 lt!29560)) (size!1513 (_2!1139 (v!13005 lt!29240)))))))

(assert (=> b!105873 (=> (not res!50895) (not e!58757))))

(declare-fun b!105874 () Bool)

(declare-fun res!50897 () Bool)

(assert (=> b!105874 (=> (not res!50897) (not e!58756))))

(assert (=> b!105874 (= res!50897 (= (list!724 (_1!1135 lt!29560)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29240)))))))))

(declare-fun b!105872 () Bool)

(assert (=> b!105872 (= e!58754 (= (list!723 (_2!1135 lt!29560)) (list!723 (_2!1139 (v!13005 lt!29240)))))))

(declare-fun d!25536 () Bool)

(assert (=> d!25536 e!58756))

(declare-fun res!50896 () Bool)

(assert (=> d!25536 (=> (not res!50896) (not e!58756))))

(assert (=> d!25536 (= res!50896 e!58754)))

(declare-fun c!25472 () Bool)

(assert (=> d!25536 (= c!25472 (> (size!1514 (_1!1135 lt!29560)) 0))))

(assert (=> d!25536 (= lt!29560 e!58755)))

(declare-fun c!25471 () Bool)

(assert (=> d!25536 (= c!25471 ((_ is Some!196) lt!29561))))

(assert (=> d!25536 (= lt!29561 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29240))))))

(assert (=> d!25536 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29240))) lt!29560)))

(assert (= (and d!25536 c!25471) b!105868))

(assert (= (and d!25536 (not c!25471)) b!105871))

(assert (= (and d!25536 c!25472) b!105873))

(assert (= (and d!25536 (not c!25472)) b!105872))

(assert (= (and b!105873 res!50895) b!105870))

(assert (= (and d!25536 res!50896) b!105874))

(assert (= (and b!105874 res!50897) b!105869))

(declare-fun m!92744 () Bool)

(assert (=> b!105868 m!92744))

(declare-fun m!92746 () Bool)

(assert (=> b!105868 m!92746))

(declare-fun m!92748 () Bool)

(assert (=> b!105874 m!92748))

(declare-fun m!92750 () Bool)

(assert (=> b!105874 m!92750))

(assert (=> b!105874 m!92750))

(declare-fun m!92752 () Bool)

(assert (=> b!105874 m!92752))

(declare-fun m!92754 () Bool)

(assert (=> b!105873 m!92754))

(declare-fun m!92756 () Bool)

(assert (=> b!105873 m!92756))

(declare-fun m!92758 () Bool)

(assert (=> b!105869 m!92758))

(assert (=> b!105869 m!92750))

(assert (=> b!105869 m!92750))

(assert (=> b!105869 m!92752))

(declare-fun m!92760 () Bool)

(assert (=> d!25536 m!92760))

(declare-fun m!92762 () Bool)

(assert (=> d!25536 m!92762))

(declare-fun m!92764 () Bool)

(assert (=> b!105870 m!92764))

(assert (=> b!105872 m!92758))

(assert (=> b!105872 m!92750))

(assert (=> b!105195 d!25536))

(declare-fun d!25538 () Bool)

(declare-fun e!58760 () Bool)

(assert (=> d!25538 e!58760))

(declare-fun res!50900 () Bool)

(assert (=> d!25538 (=> (not res!50900) (not e!58760))))

(declare-fun prepend!143 (Conc!541 Token!490) Conc!541)

(assert (=> d!25538 (= res!50900 (isBalanced!151 (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240)))))))

(declare-fun lt!29564 () BalanceConc!1086)

(assert (=> d!25538 (= lt!29564 (BalanceConc!1087 (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240)))))))

(assert (=> d!25538 (= (prepend!141 (_1!1135 lt!29235) (_1!1139 (v!13005 lt!29240))) lt!29564)))

(declare-fun b!105877 () Bool)

(assert (=> b!105877 (= e!58760 (= (list!724 lt!29564) (Cons!1707 (_1!1139 (v!13005 lt!29240)) (list!724 (_1!1135 lt!29235)))))))

(assert (= (and d!25538 res!50900) b!105877))

(declare-fun m!92766 () Bool)

(assert (=> d!25538 m!92766))

(assert (=> d!25538 m!92766))

(declare-fun m!92768 () Bool)

(assert (=> d!25538 m!92768))

(declare-fun m!92770 () Bool)

(assert (=> b!105877 m!92770))

(declare-fun m!92772 () Bool)

(assert (=> b!105877 m!92772))

(assert (=> b!105195 d!25538))

(declare-fun d!25540 () Bool)

(declare-fun lt!29565 () Int)

(assert (=> d!25540 (>= lt!29565 0)))

(declare-fun e!58761 () Int)

(assert (=> d!25540 (= lt!29565 e!58761)))

(declare-fun c!25474 () Bool)

(assert (=> d!25540 (= c!25474 ((_ is Nil!1707) (list!724 (_1!1135 lt!29080))))))

(assert (=> d!25540 (= (size!1521 (list!724 (_1!1135 lt!29080))) lt!29565)))

(declare-fun b!105878 () Bool)

(assert (=> b!105878 (= e!58761 0)))

(declare-fun b!105879 () Bool)

(assert (=> b!105879 (= e!58761 (+ 1 (size!1521 (t!21402 (list!724 (_1!1135 lt!29080))))))))

(assert (= (and d!25540 c!25474) b!105878))

(assert (= (and d!25540 (not c!25474)) b!105879))

(declare-fun m!92774 () Bool)

(assert (=> b!105879 m!92774))

(assert (=> d!25248 d!25540))

(assert (=> d!25248 d!25280))

(declare-fun d!25542 () Bool)

(declare-fun lt!29568 () Int)

(assert (=> d!25542 (= lt!29568 (size!1521 (list!728 (c!25298 (_1!1135 lt!29080)))))))

(assert (=> d!25542 (= lt!29568 (ite ((_ is Empty!541) (c!25298 (_1!1135 lt!29080))) 0 (ite ((_ is Leaf!863) (c!25298 (_1!1135 lt!29080))) (csize!1313 (c!25298 (_1!1135 lt!29080))) (csize!1312 (c!25298 (_1!1135 lt!29080))))))))

(assert (=> d!25542 (= (size!1522 (c!25298 (_1!1135 lt!29080))) lt!29568)))

(declare-fun bs!10192 () Bool)

(assert (= bs!10192 d!25542))

(assert (=> bs!10192 m!91708))

(assert (=> bs!10192 m!91708))

(declare-fun m!92776 () Bool)

(assert (=> bs!10192 m!92776))

(assert (=> d!25248 d!25542))

(declare-fun b!105880 () Bool)

(declare-fun e!58763 () tuple2!1856)

(declare-fun lt!29569 () tuple2!1856)

(declare-fun lt!29571 () Option!197)

(assert (=> b!105880 (= e!58763 (tuple2!1857 (prepend!141 (_1!1135 lt!29569) (_1!1139 (v!13005 lt!29571))) (_2!1135 lt!29569)))))

(assert (=> b!105880 (= lt!29569 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29571))))))

(declare-fun b!105881 () Bool)

(declare-fun e!58764 () Bool)

(declare-fun lt!29570 () tuple2!1856)

(assert (=> b!105881 (= e!58764 (= (list!723 (_2!1135 lt!29570)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29252)))))))))

(declare-fun b!105882 () Bool)

(declare-fun e!58765 () Bool)

(assert (=> b!105882 (= e!58765 (not (isEmpty!794 (_1!1135 lt!29570))))))

(declare-fun b!105883 () Bool)

(assert (=> b!105883 (= e!58763 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29252))))))

(declare-fun b!105885 () Bool)

(declare-fun e!58762 () Bool)

(assert (=> b!105885 (= e!58762 e!58765)))

(declare-fun res!50901 () Bool)

(assert (=> b!105885 (= res!50901 (< (size!1513 (_2!1135 lt!29570)) (size!1513 (_2!1139 (v!13005 lt!29252)))))))

(assert (=> b!105885 (=> (not res!50901) (not e!58765))))

(declare-fun b!105886 () Bool)

(declare-fun res!50903 () Bool)

(assert (=> b!105886 (=> (not res!50903) (not e!58764))))

(assert (=> b!105886 (= res!50903 (= (list!724 (_1!1135 lt!29570)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29252)))))))))

(declare-fun b!105884 () Bool)

(assert (=> b!105884 (= e!58762 (= (list!723 (_2!1135 lt!29570)) (list!723 (_2!1139 (v!13005 lt!29252)))))))

(declare-fun d!25544 () Bool)

(assert (=> d!25544 e!58764))

(declare-fun res!50902 () Bool)

(assert (=> d!25544 (=> (not res!50902) (not e!58764))))

(assert (=> d!25544 (= res!50902 e!58762)))

(declare-fun c!25476 () Bool)

(assert (=> d!25544 (= c!25476 (> (size!1514 (_1!1135 lt!29570)) 0))))

(assert (=> d!25544 (= lt!29570 e!58763)))

(declare-fun c!25475 () Bool)

(assert (=> d!25544 (= c!25475 ((_ is Some!196) lt!29571))))

(assert (=> d!25544 (= lt!29571 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29252))))))

(assert (=> d!25544 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29252))) lt!29570)))

(assert (= (and d!25544 c!25475) b!105880))

(assert (= (and d!25544 (not c!25475)) b!105883))

(assert (= (and d!25544 c!25476) b!105885))

(assert (= (and d!25544 (not c!25476)) b!105884))

(assert (= (and b!105885 res!50901) b!105882))

(assert (= (and d!25544 res!50902) b!105886))

(assert (= (and b!105886 res!50903) b!105881))

(declare-fun m!92778 () Bool)

(assert (=> b!105880 m!92778))

(declare-fun m!92780 () Bool)

(assert (=> b!105880 m!92780))

(declare-fun m!92782 () Bool)

(assert (=> b!105886 m!92782))

(declare-fun m!92784 () Bool)

(assert (=> b!105886 m!92784))

(assert (=> b!105886 m!92784))

(declare-fun m!92786 () Bool)

(assert (=> b!105886 m!92786))

(declare-fun m!92788 () Bool)

(assert (=> b!105885 m!92788))

(declare-fun m!92790 () Bool)

(assert (=> b!105885 m!92790))

(declare-fun m!92792 () Bool)

(assert (=> b!105881 m!92792))

(assert (=> b!105881 m!92784))

(assert (=> b!105881 m!92784))

(assert (=> b!105881 m!92786))

(declare-fun m!92794 () Bool)

(assert (=> d!25544 m!92794))

(declare-fun m!92796 () Bool)

(assert (=> d!25544 m!92796))

(declare-fun m!92798 () Bool)

(assert (=> b!105882 m!92798))

(assert (=> b!105884 m!92792))

(assert (=> b!105884 m!92784))

(assert (=> b!105194 d!25544))

(declare-fun d!25546 () Bool)

(declare-fun e!58766 () Bool)

(assert (=> d!25546 e!58766))

(declare-fun res!50904 () Bool)

(assert (=> d!25546 (=> (not res!50904) (not e!58766))))

(assert (=> d!25546 (= res!50904 (isBalanced!151 (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252)))))))

(declare-fun lt!29572 () BalanceConc!1086)

(assert (=> d!25546 (= lt!29572 (BalanceConc!1087 (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252)))))))

(assert (=> d!25546 (= (prepend!141 (_1!1135 lt!29246) (_1!1139 (v!13005 lt!29252))) lt!29572)))

(declare-fun b!105887 () Bool)

(assert (=> b!105887 (= e!58766 (= (list!724 lt!29572) (Cons!1707 (_1!1139 (v!13005 lt!29252)) (list!724 (_1!1135 lt!29246)))))))

(assert (= (and d!25546 res!50904) b!105887))

(declare-fun m!92800 () Bool)

(assert (=> d!25546 m!92800))

(assert (=> d!25546 m!92800))

(declare-fun m!92802 () Bool)

(assert (=> d!25546 m!92802))

(declare-fun m!92804 () Bool)

(assert (=> b!105887 m!92804))

(declare-fun m!92806 () Bool)

(assert (=> b!105887 m!92806))

(assert (=> b!105194 d!25546))

(declare-fun d!25548 () Bool)

(declare-fun res!50911 () Bool)

(declare-fun e!58769 () Bool)

(assert (=> d!25548 (=> (not res!50911) (not e!58769))))

(assert (=> d!25548 (= res!50911 (= (csize!1310 (c!25296 input!576)) (+ (size!1520 (left!1303 (c!25296 input!576))) (size!1520 (right!1633 (c!25296 input!576))))))))

(assert (=> d!25548 (= (inv!2084 (c!25296 input!576)) e!58769)))

(declare-fun b!105894 () Bool)

(declare-fun res!50912 () Bool)

(assert (=> b!105894 (=> (not res!50912) (not e!58769))))

(assert (=> b!105894 (= res!50912 (and (not (= (left!1303 (c!25296 input!576)) Empty!540)) (not (= (right!1633 (c!25296 input!576)) Empty!540))))))

(declare-fun b!105895 () Bool)

(declare-fun res!50913 () Bool)

(assert (=> b!105895 (=> (not res!50913) (not e!58769))))

(assert (=> b!105895 (= res!50913 (= (cheight!751 (c!25296 input!576)) (+ (max!0 (height!64 (left!1303 (c!25296 input!576))) (height!64 (right!1633 (c!25296 input!576)))) 1)))))

(declare-fun b!105896 () Bool)

(assert (=> b!105896 (= e!58769 (<= 0 (cheight!751 (c!25296 input!576))))))

(assert (= (and d!25548 res!50911) b!105894))

(assert (= (and b!105894 res!50912) b!105895))

(assert (= (and b!105895 res!50913) b!105896))

(declare-fun m!92808 () Bool)

(assert (=> d!25548 m!92808))

(declare-fun m!92810 () Bool)

(assert (=> d!25548 m!92810))

(assert (=> b!105895 m!92164))

(assert (=> b!105895 m!92166))

(assert (=> b!105895 m!92164))

(assert (=> b!105895 m!92166))

(declare-fun m!92812 () Bool)

(assert (=> b!105895 m!92812))

(assert (=> b!105088 d!25548))

(declare-fun tp!58508 () Bool)

(declare-fun e!58771 () Bool)

(declare-fun tp!58510 () Bool)

(declare-fun b!105897 () Bool)

(assert (=> b!105897 (= e!58771 (and (inv!2080 (left!1303 (left!1303 (c!25296 input!576)))) tp!58510 (inv!2080 (right!1633 (left!1303 (c!25296 input!576)))) tp!58508))))

(declare-fun b!105899 () Bool)

(declare-fun e!58770 () Bool)

(declare-fun tp!58509 () Bool)

(assert (=> b!105899 (= e!58770 tp!58509)))

(declare-fun b!105898 () Bool)

(assert (=> b!105898 (= e!58771 (and (inv!2086 (xs!3131 (left!1303 (c!25296 input!576)))) e!58770))))

(assert (=> b!105239 (= tp!58446 (and (inv!2080 (left!1303 (c!25296 input!576))) e!58771))))

(assert (= (and b!105239 ((_ is Node!540) (left!1303 (c!25296 input!576)))) b!105897))

(assert (= b!105898 b!105899))

(assert (= (and b!105239 ((_ is Leaf!862) (left!1303 (c!25296 input!576)))) b!105898))

(declare-fun m!92814 () Bool)

(assert (=> b!105897 m!92814))

(declare-fun m!92816 () Bool)

(assert (=> b!105897 m!92816))

(declare-fun m!92818 () Bool)

(assert (=> b!105898 m!92818))

(assert (=> b!105239 m!91728))

(declare-fun b!105900 () Bool)

(declare-fun tp!58513 () Bool)

(declare-fun tp!58511 () Bool)

(declare-fun e!58773 () Bool)

(assert (=> b!105900 (= e!58773 (and (inv!2080 (left!1303 (right!1633 (c!25296 input!576)))) tp!58513 (inv!2080 (right!1633 (right!1633 (c!25296 input!576)))) tp!58511))))

(declare-fun b!105902 () Bool)

(declare-fun e!58772 () Bool)

(declare-fun tp!58512 () Bool)

(assert (=> b!105902 (= e!58772 tp!58512)))

(declare-fun b!105901 () Bool)

(assert (=> b!105901 (= e!58773 (and (inv!2086 (xs!3131 (right!1633 (c!25296 input!576)))) e!58772))))

(assert (=> b!105239 (= tp!58444 (and (inv!2080 (right!1633 (c!25296 input!576))) e!58773))))

(assert (= (and b!105239 ((_ is Node!540) (right!1633 (c!25296 input!576)))) b!105900))

(assert (= b!105901 b!105902))

(assert (= (and b!105239 ((_ is Leaf!862) (right!1633 (c!25296 input!576)))) b!105901))

(declare-fun m!92820 () Bool)

(assert (=> b!105900 m!92820))

(declare-fun m!92822 () Bool)

(assert (=> b!105900 m!92822))

(declare-fun m!92824 () Bool)

(assert (=> b!105901 m!92824))

(assert (=> b!105239 m!91730))

(declare-fun b!105904 () Bool)

(declare-fun e!58774 () Bool)

(declare-fun tp!58517 () Bool)

(declare-fun tp!58518 () Bool)

(assert (=> b!105904 (= e!58774 (and tp!58517 tp!58518))))

(declare-fun b!105903 () Bool)

(assert (=> b!105903 (= e!58774 tp_is_empty!789)))

(declare-fun b!105906 () Bool)

(declare-fun tp!58516 () Bool)

(declare-fun tp!58515 () Bool)

(assert (=> b!105906 (= e!58774 (and tp!58516 tp!58515))))

(declare-fun b!105905 () Bool)

(declare-fun tp!58514 () Bool)

(assert (=> b!105905 (= e!58774 tp!58514)))

(assert (=> b!105230 (= tp!58435 e!58774)))

(assert (= (and b!105230 ((_ is ElementMatch!441) (regOne!1395 (regex!373 (h!7103 rules!1152))))) b!105903))

(assert (= (and b!105230 ((_ is Concat!805) (regOne!1395 (regex!373 (h!7103 rules!1152))))) b!105904))

(assert (= (and b!105230 ((_ is Star!441) (regOne!1395 (regex!373 (h!7103 rules!1152))))) b!105905))

(assert (= (and b!105230 ((_ is Union!441) (regOne!1395 (regex!373 (h!7103 rules!1152))))) b!105906))

(declare-fun b!105908 () Bool)

(declare-fun e!58775 () Bool)

(declare-fun tp!58522 () Bool)

(declare-fun tp!58523 () Bool)

(assert (=> b!105908 (= e!58775 (and tp!58522 tp!58523))))

(declare-fun b!105907 () Bool)

(assert (=> b!105907 (= e!58775 tp_is_empty!789)))

(declare-fun b!105910 () Bool)

(declare-fun tp!58521 () Bool)

(declare-fun tp!58520 () Bool)

(assert (=> b!105910 (= e!58775 (and tp!58521 tp!58520))))

(declare-fun b!105909 () Bool)

(declare-fun tp!58519 () Bool)

(assert (=> b!105909 (= e!58775 tp!58519)))

(assert (=> b!105230 (= tp!58434 e!58775)))

(assert (= (and b!105230 ((_ is ElementMatch!441) (regTwo!1395 (regex!373 (h!7103 rules!1152))))) b!105907))

(assert (= (and b!105230 ((_ is Concat!805) (regTwo!1395 (regex!373 (h!7103 rules!1152))))) b!105908))

(assert (= (and b!105230 ((_ is Star!441) (regTwo!1395 (regex!373 (h!7103 rules!1152))))) b!105909))

(assert (= (and b!105230 ((_ is Union!441) (regTwo!1395 (regex!373 (h!7103 rules!1152))))) b!105910))

(declare-fun b!105912 () Bool)

(declare-fun e!58776 () Bool)

(declare-fun tp!58527 () Bool)

(declare-fun tp!58528 () Bool)

(assert (=> b!105912 (= e!58776 (and tp!58527 tp!58528))))

(declare-fun b!105911 () Bool)

(assert (=> b!105911 (= e!58776 tp_is_empty!789)))

(declare-fun b!105914 () Bool)

(declare-fun tp!58526 () Bool)

(declare-fun tp!58525 () Bool)

(assert (=> b!105914 (= e!58776 (and tp!58526 tp!58525))))

(declare-fun b!105913 () Bool)

(declare-fun tp!58524 () Bool)

(assert (=> b!105913 (= e!58776 tp!58524)))

(assert (=> b!105251 (= tp!58458 e!58776)))

(assert (= (and b!105251 ((_ is ElementMatch!441) (regex!373 (h!7103 (t!21401 rules!1152))))) b!105911))

(assert (= (and b!105251 ((_ is Concat!805) (regex!373 (h!7103 (t!21401 rules!1152))))) b!105912))

(assert (= (and b!105251 ((_ is Star!441) (regex!373 (h!7103 (t!21401 rules!1152))))) b!105913))

(assert (= (and b!105251 ((_ is Union!441) (regex!373 (h!7103 (t!21401 rules!1152))))) b!105914))

(declare-fun b!105916 () Bool)

(declare-fun e!58777 () Bool)

(declare-fun tp!58532 () Bool)

(declare-fun tp!58533 () Bool)

(assert (=> b!105916 (= e!58777 (and tp!58532 tp!58533))))

(declare-fun b!105915 () Bool)

(assert (=> b!105915 (= e!58777 tp_is_empty!789)))

(declare-fun b!105918 () Bool)

(declare-fun tp!58531 () Bool)

(declare-fun tp!58530 () Bool)

(assert (=> b!105918 (= e!58777 (and tp!58531 tp!58530))))

(declare-fun b!105917 () Bool)

(declare-fun tp!58529 () Bool)

(assert (=> b!105917 (= e!58777 tp!58529)))

(assert (=> b!105229 (= tp!58433 e!58777)))

(assert (= (and b!105229 ((_ is ElementMatch!441) (reg!770 (regex!373 (h!7103 rules!1152))))) b!105915))

(assert (= (and b!105229 ((_ is Concat!805) (reg!770 (regex!373 (h!7103 rules!1152))))) b!105916))

(assert (= (and b!105229 ((_ is Star!441) (reg!770 (regex!373 (h!7103 rules!1152))))) b!105917))

(assert (= (and b!105229 ((_ is Union!441) (reg!770 (regex!373 (h!7103 rules!1152))))) b!105918))

(declare-fun b!105921 () Bool)

(declare-fun b_free!3193 () Bool)

(declare-fun b_next!3193 () Bool)

(assert (=> b!105921 (= b_free!3193 (not b_next!3193))))

(declare-fun tp!58536 () Bool)

(declare-fun b_and!4719 () Bool)

(assert (=> b!105921 (= tp!58536 b_and!4719)))

(declare-fun b_free!3195 () Bool)

(declare-fun b_next!3195 () Bool)

(assert (=> b!105921 (= b_free!3195 (not b_next!3195))))

(declare-fun t!21428 () Bool)

(declare-fun tb!3081 () Bool)

(assert (=> (and b!105921 (= (toChars!819 (transformation!373 (h!7103 (t!21401 (t!21401 rules!1152))))) (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247)))))) t!21428) tb!3081))

(declare-fun result!4572 () Bool)

(assert (= result!4572 result!4566))

(assert (=> d!25514 t!21428))

(declare-fun b_and!4721 () Bool)

(declare-fun tp!58535 () Bool)

(assert (=> b!105921 (= tp!58535 (and (=> t!21428 result!4572) b_and!4721))))

(declare-fun e!58779 () Bool)

(assert (=> b!105921 (= e!58779 (and tp!58536 tp!58535))))

(declare-fun e!58778 () Bool)

(declare-fun b!105920 () Bool)

(declare-fun tp!58537 () Bool)

(assert (=> b!105920 (= e!58778 (and tp!58537 (inv!2074 (tag!551 (h!7103 (t!21401 (t!21401 rules!1152))))) (inv!2078 (transformation!373 (h!7103 (t!21401 (t!21401 rules!1152))))) e!58779))))

(declare-fun b!105919 () Bool)

(declare-fun e!58780 () Bool)

(declare-fun tp!58534 () Bool)

(assert (=> b!105919 (= e!58780 (and e!58778 tp!58534))))

(assert (=> b!105250 (= tp!58455 e!58780)))

(assert (= b!105920 b!105921))

(assert (= b!105919 b!105920))

(assert (= (and b!105250 ((_ is Cons!1706) (t!21401 (t!21401 rules!1152)))) b!105919))

(declare-fun m!92826 () Bool)

(assert (=> b!105920 m!92826))

(declare-fun m!92828 () Bool)

(assert (=> b!105920 m!92828))

(declare-fun b!105926 () Bool)

(declare-fun e!58784 () Bool)

(declare-fun tp!58540 () Bool)

(assert (=> b!105926 (= e!58784 (and tp_is_empty!789 tp!58540))))

(assert (=> b!105241 (= tp!58445 e!58784)))

(assert (= (and b!105241 ((_ is Cons!1705) (innerList!598 (xs!3131 (c!25296 input!576))))) b!105926))

(declare-fun b!105928 () Bool)

(declare-fun e!58785 () Bool)

(declare-fun tp!58544 () Bool)

(declare-fun tp!58545 () Bool)

(assert (=> b!105928 (= e!58785 (and tp!58544 tp!58545))))

(declare-fun b!105927 () Bool)

(assert (=> b!105927 (= e!58785 tp_is_empty!789)))

(declare-fun b!105930 () Bool)

(declare-fun tp!58543 () Bool)

(declare-fun tp!58542 () Bool)

(assert (=> b!105930 (= e!58785 (and tp!58543 tp!58542))))

(declare-fun b!105929 () Bool)

(declare-fun tp!58541 () Bool)

(assert (=> b!105929 (= e!58785 tp!58541)))

(assert (=> b!105228 (= tp!58436 e!58785)))

(assert (= (and b!105228 ((_ is ElementMatch!441) (regOne!1394 (regex!373 (h!7103 rules!1152))))) b!105927))

(assert (= (and b!105228 ((_ is Concat!805) (regOne!1394 (regex!373 (h!7103 rules!1152))))) b!105928))

(assert (= (and b!105228 ((_ is Star!441) (regOne!1394 (regex!373 (h!7103 rules!1152))))) b!105929))

(assert (= (and b!105228 ((_ is Union!441) (regOne!1394 (regex!373 (h!7103 rules!1152))))) b!105930))

(declare-fun b!105932 () Bool)

(declare-fun e!58786 () Bool)

(declare-fun tp!58549 () Bool)

(declare-fun tp!58550 () Bool)

(assert (=> b!105932 (= e!58786 (and tp!58549 tp!58550))))

(declare-fun b!105931 () Bool)

(assert (=> b!105931 (= e!58786 tp_is_empty!789)))

(declare-fun b!105934 () Bool)

(declare-fun tp!58548 () Bool)

(declare-fun tp!58547 () Bool)

(assert (=> b!105934 (= e!58786 (and tp!58548 tp!58547))))

(declare-fun b!105933 () Bool)

(declare-fun tp!58546 () Bool)

(assert (=> b!105933 (= e!58786 tp!58546)))

(assert (=> b!105228 (= tp!58437 e!58786)))

(assert (= (and b!105228 ((_ is ElementMatch!441) (regTwo!1394 (regex!373 (h!7103 rules!1152))))) b!105931))

(assert (= (and b!105228 ((_ is Concat!805) (regTwo!1394 (regex!373 (h!7103 rules!1152))))) b!105932))

(assert (= (and b!105228 ((_ is Star!441) (regTwo!1394 (regex!373 (h!7103 rules!1152))))) b!105933))

(assert (= (and b!105228 ((_ is Union!441) (regTwo!1394 (regex!373 (h!7103 rules!1152))))) b!105934))

(check-sat (not b!105847) (not b!105835) (not d!25538) (not b_next!3179) (not b!105810) (not b!105819) (not b!105813) (not d!25492) (not b!105898) (not b!105845) (not b!105934) (not d!25484) (not b!105776) (not b!105818) (not b!105773) (not b_next!3193) (not b!105701) (not b!105700) (not b!105342) (not d!25520) (not d!25342) (not b!105814) (not d!25514) (not b!105858) (not b!105900) (not d!25518) (not b!105831) (not b!105498) (not b!105516) (not b!105832) (not b!105861) (not b!105341) (not b!105771) (not b!105822) (not d!25546) (not b!105702) (not b!105576) (not b!105772) (not b!105697) (not b!105846) (not d!25524) (not b!105920) (not b!105905) (not b!105798) (not b!105780) (not d!25322) (not b!105918) (not b!105497) (not b!105857) (not b!105859) (not bm!4554) (not d!25404) (not b!105872) (not b!105777) (not b!105908) (not b!105895) (not b!105793) (not b!105834) (not b_next!3187) tp_is_empty!789 (not b!105526) (not d!25526) (not b!105902) (not d!25548) (not b_next!3195) (not b!105562) b_and!4695 (not b!105884) (not b!105926) (not b!105564) (not b!105239) (not d!25482) (not d!25486) (not b!105501) (not b!105886) (not d!25506) (not b!105403) (not b!105598) (not b!105917) (not b!105520) (not b!105849) b_and!4719 (not d!25428) (not b!105919) (not d!25516) (not d!25534) (not b_lambda!1163) (not b!105879) (not b!105877) (not b!105770) (not b!105929) (not b!105862) (not b!105880) (not b!105406) (not b!105842) (not b!105797) (not b!105809) (not d!25476) (not d!25490) (not b!105586) (not b!105500) (not b!105559) (not d!25500) (not b!105696) (not b!105760) (not bm!4555) (not b!105781) (not b!105517) (not b!105582) (not d!25508) (not b!105499) (not b_next!3185) (not b!105761) (not b!105853) (not d!25536) b_and!4715 (not b!105704) (not d!25502) (not b!105836) (not bm!4548) (not b!105881) (not b!105495) (not b!105779) (not b!105854) (not b!105874) (not b!105901) (not b!105584) (not b!105860) (not b!105869) b_and!4721 (not b!105865) (not b!105575) (not d!25530) (not b!105914) (not b!105561) (not b!105913) (not d!25498) (not b!105916) (not b!105496) (not b!105794) (not b!105830) (not b!105519) (not d!25326) (not d!25382) (not b!105866) (not b!105755) (not b!105851) (not b!105604) (not b!105873) (not b!105829) b_and!4703 (not d!25414) (not b!105899) (not b!105839) (not d!25460) (not d!25464) (not b!105910) (not b!105870) (not b!105404) b_and!4717 (not d!25504) (not b!105909) (not d!25488) (not b!105906) (not b!105698) (not b!105897) (not d!25522) (not d!25532) (not b!105928) (not d!25324) (not b!105408) (not b!105882) (not d!25320) (not b!105887) (not b!105856) (not b!105816) (not d!25462) (not b!105904) (not d!25528) (not d!25402) (not d!25510) (not b!105850) (not b!105597) (not b!105933) (not d!25542) (not b!105518) (not d!25472) (not d!25478) (not b!105525) (not b!105932) (not tb!3077) (not b!105930) (not b!105699) (not b!105868) (not b!105515) (not b!105838) (not d!25496) (not d!25512) (not b!105339) (not d!25424) (not b!105727) (not b!105407) (not b!105823) (not b!105843) (not d!25544) (not d!25494) (not b!105912) (not b!105402) (not b!105885) (not b_next!3177))
(check-sat (not b_next!3179) (not b_next!3193) b_and!4695 b_and!4719 (not b_next!3185) b_and!4715 b_and!4721 b_and!4703 b_and!4717 (not b_next!3177) (not b_next!3195) (not b_next!3187))
(get-model)

(declare-fun d!25962 () Bool)

(declare-fun lt!29904 () Int)

(assert (=> d!25962 (>= lt!29904 0)))

(declare-fun e!59180 () Int)

(assert (=> d!25962 (= lt!29904 e!59180)))

(declare-fun c!25661 () Bool)

(assert (=> d!25962 (= c!25661 ((_ is Nil!1705) (list!727 (c!25296 input!576))))))

(assert (=> d!25962 (= (size!1519 (list!727 (c!25296 input!576))) lt!29904)))

(declare-fun b!106632 () Bool)

(assert (=> b!106632 (= e!59180 0)))

(declare-fun b!106633 () Bool)

(assert (=> b!106633 (= e!59180 (+ 1 (size!1519 (t!21400 (list!727 (c!25296 input!576))))))))

(assert (= (and d!25962 c!25661) b!106632))

(assert (= (and d!25962 (not c!25661)) b!106633))

(declare-fun m!94262 () Bool)

(assert (=> b!106633 m!94262))

(assert (=> d!25424 d!25962))

(assert (=> d!25424 d!25480))

(declare-fun d!25964 () Bool)

(assert (=> d!25964 (= (inv!2079 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247))))) (isBalanced!149 (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun bs!10252 () Bool)

(assert (= bs!10252 d!25964))

(declare-fun m!94264 () Bool)

(assert (=> bs!10252 m!94264))

(assert (=> tb!3077 d!25964))

(declare-fun d!25966 () Bool)

(declare-fun lt!29905 () Int)

(assert (=> d!25966 (>= lt!29905 0)))

(declare-fun e!59181 () Int)

(assert (=> d!25966 (= lt!29905 e!59181)))

(declare-fun c!25662 () Bool)

(assert (=> d!25966 (= c!25662 ((_ is Nil!1707) lt!29545))))

(assert (=> d!25966 (= (size!1521 lt!29545) lt!29905)))

(declare-fun b!106634 () Bool)

(assert (=> b!106634 (= e!59181 0)))

(declare-fun b!106635 () Bool)

(assert (=> b!106635 (= e!59181 (+ 1 (size!1521 (t!21402 lt!29545))))))

(assert (= (and d!25966 c!25662) b!106634))

(assert (= (and d!25966 (not c!25662)) b!106635))

(declare-fun m!94266 () Bool)

(assert (=> b!106635 m!94266))

(assert (=> b!105839 d!25966))

(declare-fun d!25968 () Bool)

(declare-fun lt!29906 () Int)

(assert (=> d!25968 (>= lt!29906 0)))

(declare-fun e!59182 () Int)

(assert (=> d!25968 (= lt!29906 e!59182)))

(declare-fun c!25663 () Bool)

(assert (=> d!25968 (= c!25663 ((_ is Nil!1707) lt!29249))))

(assert (=> d!25968 (= (size!1521 lt!29249) lt!29906)))

(declare-fun b!106636 () Bool)

(assert (=> b!106636 (= e!59182 0)))

(declare-fun b!106637 () Bool)

(assert (=> b!106637 (= e!59182 (+ 1 (size!1521 (t!21402 lt!29249))))))

(assert (= (and d!25968 c!25663) b!106636))

(assert (= (and d!25968 (not c!25663)) b!106637))

(declare-fun m!94268 () Bool)

(assert (=> b!106637 m!94268))

(assert (=> b!105839 d!25968))

(declare-fun d!25970 () Bool)

(declare-fun lt!29907 () Int)

(assert (=> d!25970 (>= lt!29907 0)))

(declare-fun e!59183 () Int)

(assert (=> d!25970 (= lt!29907 e!59183)))

(declare-fun c!25664 () Bool)

(assert (=> d!25970 (= c!25664 ((_ is Nil!1707) lt!29244))))

(assert (=> d!25970 (= (size!1521 lt!29244) lt!29907)))

(declare-fun b!106638 () Bool)

(assert (=> b!106638 (= e!59183 0)))

(declare-fun b!106639 () Bool)

(assert (=> b!106639 (= e!59183 (+ 1 (size!1521 (t!21402 lt!29244))))))

(assert (= (and d!25970 c!25664) b!106638))

(assert (= (and d!25970 (not c!25664)) b!106639))

(declare-fun m!94270 () Bool)

(assert (=> b!106639 m!94270))

(assert (=> b!105839 d!25970))

(declare-fun d!25972 () Bool)

(assert (=> d!25972 (= (list!724 (_1!1135 lt!29498)) (list!728 (c!25298 (_1!1135 lt!29498))))))

(declare-fun bs!10253 () Bool)

(assert (= bs!10253 d!25972))

(declare-fun m!94272 () Bool)

(assert (=> bs!10253 m!94272))

(assert (=> d!25486 d!25972))

(assert (=> d!25486 d!25324))

(assert (=> d!25486 d!25326))

(declare-fun b!106646 () Bool)

(declare-fun res!51254 () Bool)

(declare-fun e!59190 () Bool)

(assert (=> b!106646 (=> (not res!51254) (not e!59190))))

(declare-fun e!59189 () Bool)

(assert (=> b!106646 (= res!51254 e!59189)))

(declare-fun res!51253 () Bool)

(assert (=> b!106646 (=> res!51253 e!59189)))

(declare-fun lt!29913 () Option!197)

(assert (=> b!106646 (= res!51253 (not (isDefined!71 lt!29913)))))

(declare-fun b!106647 () Bool)

(declare-fun e!59187 () Bool)

(declare-fun e!59191 () Bool)

(assert (=> b!106647 (= e!59187 e!59191)))

(declare-fun res!51256 () Bool)

(assert (=> b!106647 (=> (not res!51256) (not e!59191))))

(assert (=> b!106647 (= res!51256 (= (_1!1139 (get!437 lt!29913)) (_1!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29247))))))))))

(declare-fun b!106648 () Bool)

(assert (=> b!106648 (= e!59191 (= (list!723 (_2!1139 (get!437 lt!29913))) (_2!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29247))))))))))

(declare-fun e!59188 () Bool)

(declare-fun b!106649 () Bool)

(assert (=> b!106649 (= e!59188 (= (list!723 (_2!1139 (get!437 lt!29913))) (_2!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29247))))))))))

(declare-fun bm!4643 () Bool)

(declare-fun call!4648 () Option!197)

(assert (=> bm!4643 (= call!4648 (maxPrefixOneRuleZipperSequence!18 thiss!11428 (h!7103 rules!1152) (_2!1139 (v!13005 lt!29247))))))

(declare-fun d!25974 () Bool)

(assert (=> d!25974 e!59190))

(declare-fun res!51252 () Bool)

(assert (=> d!25974 (=> (not res!51252) (not e!59190))))

(assert (=> d!25974 (= res!51252 (= (isDefined!71 lt!29913) (isDefined!72 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29247)))))))))

(declare-fun e!59186 () Option!197)

(assert (=> d!25974 (= lt!29913 e!59186)))

(declare-fun c!25665 () Bool)

(assert (=> d!25974 (= c!25665 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!29914 () Unit!1124)

(declare-fun lt!29912 () Unit!1124)

(assert (=> d!25974 (= lt!29914 lt!29912)))

(declare-fun lt!29909 () List!1711)

(declare-fun lt!29908 () List!1711)

(assert (=> d!25974 (isPrefix!51 lt!29909 lt!29908)))

(assert (=> d!25974 (= lt!29912 (lemmaIsPrefixRefl!51 lt!29909 lt!29908))))

(assert (=> d!25974 (= lt!29908 (list!723 (_2!1139 (v!13005 lt!29247))))))

(assert (=> d!25974 (= lt!29909 (list!723 (_2!1139 (v!13005 lt!29247))))))

(assert (=> d!25974 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!25974 (= (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29247))) lt!29913)))

(declare-fun b!106650 () Bool)

(assert (=> b!106650 (= e!59190 e!59187)))

(declare-fun res!51255 () Bool)

(assert (=> b!106650 (=> res!51255 e!59187)))

(assert (=> b!106650 (= res!51255 (not (isDefined!71 lt!29913)))))

(declare-fun b!106651 () Bool)

(assert (=> b!106651 (= e!59189 e!59188)))

(declare-fun res!51251 () Bool)

(assert (=> b!106651 (=> (not res!51251) (not e!59188))))

(assert (=> b!106651 (= res!51251 (= (_1!1139 (get!437 lt!29913)) (_1!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29247))))))))))

(declare-fun b!106652 () Bool)

(declare-fun lt!29910 () Option!197)

(declare-fun lt!29911 () Option!197)

(assert (=> b!106652 (= e!59186 (ite (and ((_ is None!196) lt!29910) ((_ is None!196) lt!29911)) None!196 (ite ((_ is None!196) lt!29911) lt!29910 (ite ((_ is None!196) lt!29910) lt!29911 (ite (>= (size!1512 (_1!1139 (v!13005 lt!29910))) (size!1512 (_1!1139 (v!13005 lt!29911)))) lt!29910 lt!29911)))))))

(assert (=> b!106652 (= lt!29910 call!4648)))

(assert (=> b!106652 (= lt!29911 (maxPrefixZipperSequence!56 thiss!11428 (t!21401 rules!1152) (_2!1139 (v!13005 lt!29247))))))

(declare-fun b!106653 () Bool)

(assert (=> b!106653 (= e!59186 call!4648)))

(assert (= (and d!25974 c!25665) b!106653))

(assert (= (and d!25974 (not c!25665)) b!106652))

(assert (= (or b!106653 b!106652) bm!4643))

(assert (= (and d!25974 res!51252) b!106646))

(assert (= (and b!106646 (not res!51253)) b!106651))

(assert (= (and b!106651 res!51251) b!106649))

(assert (= (and b!106646 res!51254) b!106650))

(assert (= (and b!106650 (not res!51255)) b!106647))

(assert (= (and b!106647 res!51256) b!106648))

(declare-fun m!94274 () Bool)

(assert (=> b!106652 m!94274))

(declare-fun m!94276 () Bool)

(assert (=> b!106648 m!94276))

(assert (=> b!106648 m!91684))

(declare-fun m!94278 () Bool)

(assert (=> b!106648 m!94278))

(assert (=> b!106648 m!91684))

(assert (=> b!106648 m!94278))

(declare-fun m!94280 () Bool)

(assert (=> b!106648 m!94280))

(declare-fun m!94282 () Bool)

(assert (=> b!106648 m!94282))

(assert (=> b!106651 m!94276))

(assert (=> b!106651 m!91684))

(assert (=> b!106651 m!91684))

(declare-fun m!94284 () Bool)

(assert (=> b!106651 m!94284))

(assert (=> b!106651 m!94284))

(declare-fun m!94286 () Bool)

(assert (=> b!106651 m!94286))

(assert (=> b!106649 m!94276))

(assert (=> b!106649 m!94284))

(assert (=> b!106649 m!94286))

(assert (=> b!106649 m!94282))

(assert (=> b!106649 m!91684))

(assert (=> b!106649 m!91684))

(assert (=> b!106649 m!94284))

(declare-fun m!94288 () Bool)

(assert (=> bm!4643 m!94288))

(declare-fun m!94290 () Bool)

(assert (=> b!106646 m!94290))

(assert (=> d!25974 m!94284))

(declare-fun m!94292 () Bool)

(assert (=> d!25974 m!94292))

(assert (=> d!25974 m!94290))

(assert (=> d!25974 m!92158))

(declare-fun m!94294 () Bool)

(assert (=> d!25974 m!94294))

(declare-fun m!94296 () Bool)

(assert (=> d!25974 m!94296))

(assert (=> d!25974 m!91684))

(assert (=> d!25974 m!91684))

(assert (=> d!25974 m!94284))

(assert (=> b!106650 m!94290))

(assert (=> b!106647 m!94276))

(assert (=> b!106647 m!91684))

(assert (=> b!106647 m!91684))

(assert (=> b!106647 m!94278))

(assert (=> b!106647 m!94278))

(assert (=> b!106647 m!94280))

(assert (=> d!25486 d!25974))

(declare-fun d!25976 () Bool)

(declare-fun lt!29964 () Option!198)

(assert (=> d!25976 (= lt!29964 (maxPrefix!93 thiss!11428 rules!1152 (list!723 lt!29233)))))

(declare-fun e!59224 () Option!198)

(assert (=> d!25976 (= lt!29964 e!59224)))

(declare-fun c!25683 () Bool)

(assert (=> d!25976 (= c!25683 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!29962 () Unit!1124)

(declare-fun lt!29965 () Unit!1124)

(assert (=> d!25976 (= lt!29962 lt!29965)))

(assert (=> d!25976 (isPrefix!51 (list!723 lt!29233) (list!723 lt!29233))))

(assert (=> d!25976 (= lt!29965 (lemmaIsPrefixRefl!51 (list!723 lt!29233) (list!723 lt!29233)))))

(assert (=> d!25976 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!25976 (= (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 lt!29233)) lt!29964)))

(declare-fun bm!4657 () Bool)

(declare-fun call!4662 () Option!198)

(declare-fun maxPrefixOneRuleZipper!9 (LexerInterface!265 Rule!546 List!1711) Option!198)

(assert (=> bm!4657 (= call!4662 (maxPrefixOneRuleZipper!9 thiss!11428 (h!7103 rules!1152) (list!723 lt!29233)))))

(declare-fun b!106713 () Bool)

(assert (=> b!106713 (= e!59224 call!4662)))

(declare-fun b!106714 () Bool)

(declare-fun lt!29963 () Option!198)

(declare-fun lt!29961 () Option!198)

(assert (=> b!106714 (= e!59224 (ite (and ((_ is None!197) lt!29963) ((_ is None!197) lt!29961)) None!197 (ite ((_ is None!197) lt!29961) lt!29963 (ite ((_ is None!197) lt!29963) lt!29961 (ite (>= (size!1512 (_1!1140 (v!13006 lt!29963))) (size!1512 (_1!1140 (v!13006 lt!29961)))) lt!29963 lt!29961)))))))

(assert (=> b!106714 (= lt!29963 call!4662)))

(assert (=> b!106714 (= lt!29961 (maxPrefixZipper!17 thiss!11428 (t!21401 rules!1152) (list!723 lt!29233)))))

(assert (= (and d!25976 c!25683) b!106713))

(assert (= (and d!25976 (not c!25683)) b!106714))

(assert (= (or b!106713 b!106714) bm!4657))

(assert (=> d!25976 m!92712))

(assert (=> d!25976 m!92714))

(assert (=> d!25976 m!92712))

(assert (=> d!25976 m!92712))

(declare-fun m!94478 () Bool)

(assert (=> d!25976 m!94478))

(assert (=> d!25976 m!92712))

(assert (=> d!25976 m!92712))

(declare-fun m!94480 () Bool)

(assert (=> d!25976 m!94480))

(assert (=> d!25976 m!92158))

(assert (=> bm!4657 m!92712))

(declare-fun m!94482 () Bool)

(assert (=> bm!4657 m!94482))

(assert (=> b!106714 m!92712))

(declare-fun m!94484 () Bool)

(assert (=> b!106714 m!94484))

(assert (=> b!105859 d!25976))

(declare-fun d!26016 () Bool)

(assert (=> d!26016 (= (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 lt!29233))) (v!13006 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 lt!29233))))))

(assert (=> b!105859 d!26016))

(declare-fun d!26018 () Bool)

(assert (=> d!26018 (= (list!723 lt!29233) (list!727 (c!25296 lt!29233)))))

(declare-fun bs!10261 () Bool)

(assert (= bs!10261 d!26018))

(declare-fun m!94486 () Bool)

(assert (=> bs!10261 m!94486))

(assert (=> b!105859 d!26018))

(declare-fun d!26020 () Bool)

(assert (=> d!26020 (= (get!437 lt!29556) (v!13005 lt!29556))))

(assert (=> b!105859 d!26020))

(declare-fun d!26022 () Bool)

(assert (=> d!26022 (= (list!723 (_2!1139 (get!437 lt!29556))) (list!727 (c!25296 (_2!1139 (get!437 lt!29556)))))))

(declare-fun bs!10262 () Bool)

(assert (= bs!10262 d!26022))

(declare-fun m!94488 () Bool)

(assert (=> bs!10262 m!94488))

(assert (=> b!105859 d!26022))

(declare-fun d!26024 () Bool)

(declare-fun lt!29968 () Int)

(assert (=> d!26024 (>= lt!29968 0)))

(declare-fun e!59239 () Int)

(assert (=> d!26024 (= lt!29968 e!59239)))

(declare-fun c!25690 () Bool)

(assert (=> d!26024 (= c!25690 ((_ is Nil!1705) lt!29558))))

(assert (=> d!26024 (= (size!1519 lt!29558) lt!29968)))

(declare-fun b!106743 () Bool)

(assert (=> b!106743 (= e!59239 0)))

(declare-fun b!106744 () Bool)

(assert (=> b!106744 (= e!59239 (+ 1 (size!1519 (t!21400 lt!29558))))))

(assert (= (and d!26024 c!25690) b!106743))

(assert (= (and d!26024 (not c!25690)) b!106744))

(declare-fun m!94490 () Bool)

(assert (=> b!106744 m!94490))

(assert (=> b!105866 d!26024))

(declare-fun d!26026 () Bool)

(declare-fun lt!29969 () Int)

(assert (=> d!26026 (>= lt!29969 0)))

(declare-fun e!59240 () Int)

(assert (=> d!26026 (= lt!29969 e!59240)))

(declare-fun c!25691 () Bool)

(assert (=> d!26026 (= c!25691 ((_ is Nil!1705) (++!283 lt!29255 lt!29250)))))

(assert (=> d!26026 (= (size!1519 (++!283 lt!29255 lt!29250)) lt!29969)))

(declare-fun b!106745 () Bool)

(assert (=> b!106745 (= e!59240 0)))

(declare-fun b!106746 () Bool)

(assert (=> b!106746 (= e!59240 (+ 1 (size!1519 (t!21400 (++!283 lt!29255 lt!29250)))))))

(assert (= (and d!26026 c!25691) b!106745))

(assert (= (and d!26026 (not c!25691)) b!106746))

(declare-fun m!94492 () Bool)

(assert (=> b!106746 m!94492))

(assert (=> b!105866 d!26026))

(declare-fun d!26028 () Bool)

(declare-fun lt!29970 () Int)

(assert (=> d!26028 (>= lt!29970 0)))

(declare-fun e!59241 () Int)

(assert (=> d!26028 (= lt!29970 e!59241)))

(declare-fun c!25692 () Bool)

(assert (=> d!26028 (= c!25692 ((_ is Nil!1705) lt!29241))))

(assert (=> d!26028 (= (size!1519 lt!29241) lt!29970)))

(declare-fun b!106747 () Bool)

(assert (=> b!106747 (= e!59241 0)))

(declare-fun b!106748 () Bool)

(assert (=> b!106748 (= e!59241 (+ 1 (size!1519 (t!21400 lt!29241))))))

(assert (= (and d!26028 c!25692) b!106747))

(assert (= (and d!26028 (not c!25692)) b!106748))

(declare-fun m!94494 () Bool)

(assert (=> b!106748 m!94494))

(assert (=> b!105866 d!26028))

(declare-fun d!26030 () Bool)

(declare-fun res!51298 () Bool)

(declare-fun e!59242 () Bool)

(assert (=> d!26030 (=> (not res!51298) (not e!59242))))

(assert (=> d!26030 (= res!51298 (= (csize!1310 (left!1303 (c!25296 input!576))) (+ (size!1520 (left!1303 (left!1303 (c!25296 input!576)))) (size!1520 (right!1633 (left!1303 (c!25296 input!576)))))))))

(assert (=> d!26030 (= (inv!2084 (left!1303 (c!25296 input!576))) e!59242)))

(declare-fun b!106749 () Bool)

(declare-fun res!51299 () Bool)

(assert (=> b!106749 (=> (not res!51299) (not e!59242))))

(assert (=> b!106749 (= res!51299 (and (not (= (left!1303 (left!1303 (c!25296 input!576))) Empty!540)) (not (= (right!1633 (left!1303 (c!25296 input!576))) Empty!540))))))

(declare-fun b!106750 () Bool)

(declare-fun res!51300 () Bool)

(assert (=> b!106750 (=> (not res!51300) (not e!59242))))

(assert (=> b!106750 (= res!51300 (= (cheight!751 (left!1303 (c!25296 input!576))) (+ (max!0 (height!64 (left!1303 (left!1303 (c!25296 input!576)))) (height!64 (right!1633 (left!1303 (c!25296 input!576))))) 1)))))

(declare-fun b!106751 () Bool)

(assert (=> b!106751 (= e!59242 (<= 0 (cheight!751 (left!1303 (c!25296 input!576)))))))

(assert (= (and d!26030 res!51298) b!106749))

(assert (= (and b!106749 res!51299) b!106750))

(assert (= (and b!106750 res!51300) b!106751))

(declare-fun m!94496 () Bool)

(assert (=> d!26030 m!94496))

(declare-fun m!94498 () Bool)

(assert (=> d!26030 m!94498))

(declare-fun m!94500 () Bool)

(assert (=> b!106750 m!94500))

(declare-fun m!94502 () Bool)

(assert (=> b!106750 m!94502))

(assert (=> b!106750 m!94500))

(assert (=> b!106750 m!94502))

(declare-fun m!94504 () Bool)

(assert (=> b!106750 m!94504))

(assert (=> b!105559 d!26030))

(declare-fun d!26032 () Bool)

(declare-fun lt!29971 () Int)

(assert (=> d!26032 (>= lt!29971 0)))

(declare-fun e!59243 () Int)

(assert (=> d!26032 (= lt!29971 e!59243)))

(declare-fun c!25693 () Bool)

(assert (=> d!26032 (= c!25693 ((_ is Nil!1705) (t!21400 (list!723 input!576))))))

(assert (=> d!26032 (= (size!1519 (t!21400 (list!723 input!576))) lt!29971)))

(declare-fun b!106752 () Bool)

(assert (=> b!106752 (= e!59243 0)))

(declare-fun b!106753 () Bool)

(assert (=> b!106753 (= e!59243 (+ 1 (size!1519 (t!21400 (t!21400 (list!723 input!576))))))))

(assert (= (and d!26032 c!25693) b!106752))

(assert (= (and d!26032 (not c!25693)) b!106753))

(declare-fun m!94506 () Bool)

(assert (=> b!106753 m!94506))

(assert (=> b!105586 d!26032))

(assert (=> b!105497 d!25428))

(declare-fun d!26034 () Bool)

(assert (=> d!26034 (= (list!723 (_2!1139 (get!437 lt!29411))) (list!727 (c!25296 (_2!1139 (get!437 lt!29411)))))))

(declare-fun bs!10263 () Bool)

(assert (= bs!10263 d!26034))

(declare-fun m!94508 () Bool)

(assert (=> bs!10263 m!94508))

(assert (=> b!105497 d!26034))

(declare-fun d!26036 () Bool)

(assert (=> d!26036 (= (get!437 lt!29411) (v!13005 lt!29411))))

(assert (=> b!105497 d!26036))

(assert (=> b!105497 d!25284))

(declare-fun d!26038 () Bool)

(assert (=> d!26038 (= (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 input!576))) (v!13006 (maxPrefix!93 thiss!11428 rules!1152 (list!723 input!576))))))

(assert (=> b!105497 d!26038))

(declare-fun d!26040 () Bool)

(declare-fun c!25696 () Bool)

(assert (=> d!26040 (= c!25696 ((_ is Nil!1705) lt!29531))))

(declare-fun e!59246 () (InoxSet C!1804))

(assert (=> d!26040 (= (content!146 lt!29531) e!59246)))

(declare-fun b!106758 () Bool)

(assert (=> b!106758 (= e!59246 ((as const (Array C!1804 Bool)) false))))

(declare-fun b!106759 () Bool)

(assert (=> b!106759 (= e!59246 ((_ map or) (store ((as const (Array C!1804 Bool)) false) (h!7102 lt!29531) true) (content!146 (t!21400 lt!29531))))))

(assert (= (and d!26040 c!25696) b!106758))

(assert (= (and d!26040 (not c!25696)) b!106759))

(declare-fun m!94510 () Bool)

(assert (=> b!106759 m!94510))

(declare-fun m!94512 () Bool)

(assert (=> b!106759 m!94512))

(assert (=> d!25504 d!26040))

(declare-fun d!26042 () Bool)

(declare-fun c!25697 () Bool)

(assert (=> d!26042 (= c!25697 ((_ is Nil!1705) lt!29250))))

(declare-fun e!59247 () (InoxSet C!1804))

(assert (=> d!26042 (= (content!146 lt!29250) e!59247)))

(declare-fun b!106760 () Bool)

(assert (=> b!106760 (= e!59247 ((as const (Array C!1804 Bool)) false))))

(declare-fun b!106761 () Bool)

(assert (=> b!106761 (= e!59247 ((_ map or) (store ((as const (Array C!1804 Bool)) false) (h!7102 lt!29250) true) (content!146 (t!21400 lt!29250))))))

(assert (= (and d!26042 c!25697) b!106760))

(assert (= (and d!26042 (not c!25697)) b!106761))

(declare-fun m!94514 () Bool)

(assert (=> b!106761 m!94514))

(declare-fun m!94516 () Bool)

(assert (=> b!106761 m!94516))

(assert (=> d!25504 d!26042))

(declare-fun d!26044 () Bool)

(declare-fun c!25698 () Bool)

(assert (=> d!26044 (= c!25698 ((_ is Nil!1705) lt!29241))))

(declare-fun e!59248 () (InoxSet C!1804))

(assert (=> d!26044 (= (content!146 lt!29241) e!59248)))

(declare-fun b!106762 () Bool)

(assert (=> b!106762 (= e!59248 ((as const (Array C!1804 Bool)) false))))

(declare-fun b!106763 () Bool)

(assert (=> b!106763 (= e!59248 ((_ map or) (store ((as const (Array C!1804 Bool)) false) (h!7102 lt!29241) true) (content!146 (t!21400 lt!29241))))))

(assert (= (and d!26044 c!25698) b!106762))

(assert (= (and d!26044 (not c!25698)) b!106763))

(declare-fun m!94518 () Bool)

(assert (=> b!106763 m!94518))

(declare-fun m!94520 () Bool)

(assert (=> b!106763 m!94520))

(assert (=> d!25504 d!26044))

(declare-fun b!106833 () Bool)

(declare-fun e!59300 () Bool)

(declare-fun e!59304 () Bool)

(assert (=> b!106833 (= e!59300 e!59304)))

(declare-fun res!51345 () Bool)

(assert (=> b!106833 (=> res!51345 e!59304)))

(assert (=> b!106833 (= res!51345 (not ((_ is Node!540) (right!1633 (c!25296 (BalanceConc!1085 Empty!540))))))))

(declare-fun b!106834 () Bool)

(declare-fun e!59297 () Bool)

(declare-fun appendAssoc!9 (List!1711 List!1711 List!1711) Bool)

(assert (=> b!106834 (= e!59297 (appendAssoc!9 (++!283 (list!727 (c!25296 (BalanceConc!1085 Empty!540))) (list!727 (left!1303 (left!1303 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))) (list!727 (right!1633 (left!1303 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))) (list!727 (right!1633 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun d!26046 () Bool)

(declare-fun e!59301 () Bool)

(assert (=> d!26046 e!59301))

(declare-fun res!51348 () Bool)

(assert (=> d!26046 (=> (not res!51348) (not e!59301))))

(declare-fun e!59296 () Bool)

(assert (=> d!26046 (= res!51348 e!59296)))

(declare-fun res!51341 () Bool)

(assert (=> d!26046 (=> res!51341 e!59296)))

(assert (=> d!26046 (= res!51341 (not ((_ is Node!540) (c!25296 (BalanceConc!1085 Empty!540)))))))

(assert (=> d!26046 (= (appendAssocInst!11 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) true)))

(declare-fun b!106835 () Bool)

(declare-fun e!59299 () Bool)

(assert (=> b!106835 (= e!59304 e!59299)))

(declare-fun res!51347 () Bool)

(assert (=> b!106835 (=> (not res!51347) (not e!59299))))

(assert (=> b!106835 (= res!51347 (appendAssoc!9 (list!727 (left!1303 (right!1633 (c!25296 (BalanceConc!1085 Empty!540))))) (list!727 (right!1633 (right!1633 (c!25296 (BalanceConc!1085 Empty!540))))) (list!727 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun b!106836 () Bool)

(declare-fun e!59303 () Bool)

(assert (=> b!106836 (= e!59301 e!59303)))

(declare-fun res!51344 () Bool)

(assert (=> b!106836 (=> res!51344 e!59303)))

(assert (=> b!106836 (= res!51344 (not ((_ is Node!540) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun b!106837 () Bool)

(declare-fun e!59298 () Bool)

(declare-fun e!59302 () Bool)

(assert (=> b!106837 (= e!59298 e!59302)))

(declare-fun res!51340 () Bool)

(assert (=> b!106837 (=> res!51340 e!59302)))

(assert (=> b!106837 (= res!51340 (not ((_ is Node!540) (left!1303 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun b!106838 () Bool)

(assert (=> b!106838 (= e!59299 (appendAssoc!9 (list!727 (left!1303 (c!25296 (BalanceConc!1085 Empty!540)))) (list!727 (left!1303 (right!1633 (c!25296 (BalanceConc!1085 Empty!540))))) (++!283 (list!727 (right!1633 (right!1633 (c!25296 (BalanceConc!1085 Empty!540))))) (list!727 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun b!106839 () Bool)

(assert (=> b!106839 (= e!59303 e!59298)))

(declare-fun res!51343 () Bool)

(assert (=> b!106839 (=> (not res!51343) (not e!59298))))

(assert (=> b!106839 (= res!51343 (appendAssoc!9 (list!727 (c!25296 (BalanceConc!1085 Empty!540))) (list!727 (left!1303 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (list!727 (right!1633 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun b!106840 () Bool)

(assert (=> b!106840 (= e!59296 e!59300)))

(declare-fun res!51346 () Bool)

(assert (=> b!106840 (=> (not res!51346) (not e!59300))))

(assert (=> b!106840 (= res!51346 (appendAssoc!9 (list!727 (left!1303 (c!25296 (BalanceConc!1085 Empty!540)))) (list!727 (right!1633 (c!25296 (BalanceConc!1085 Empty!540)))) (list!727 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun b!106841 () Bool)

(assert (=> b!106841 (= e!59302 e!59297)))

(declare-fun res!51342 () Bool)

(assert (=> b!106841 (=> (not res!51342) (not e!59297))))

(assert (=> b!106841 (= res!51342 (appendAssoc!9 (list!727 (c!25296 (BalanceConc!1085 Empty!540))) (list!727 (left!1303 (left!1303 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))) (list!727 (right!1633 (left!1303 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))))

(assert (= (and d!26046 (not res!51341)) b!106840))

(assert (= (and b!106840 res!51346) b!106833))

(assert (= (and b!106833 (not res!51345)) b!106835))

(assert (= (and b!106835 res!51347) b!106838))

(assert (= (and d!26046 res!51348) b!106836))

(assert (= (and b!106836 (not res!51344)) b!106839))

(assert (= (and b!106839 res!51343) b!106837))

(assert (= (and b!106837 (not res!51340)) b!106841))

(assert (= (and b!106841 res!51342) b!106834))

(declare-fun m!94650 () Bool)

(assert (=> b!106835 m!94650))

(declare-fun m!94652 () Bool)

(assert (=> b!106835 m!94652))

(assert (=> b!106835 m!92552))

(assert (=> b!106835 m!94650))

(assert (=> b!106835 m!94652))

(assert (=> b!106835 m!92552))

(declare-fun m!94654 () Bool)

(assert (=> b!106835 m!94654))

(assert (=> b!106838 m!92552))

(assert (=> b!106838 m!94650))

(assert (=> b!106838 m!94652))

(declare-fun m!94658 () Bool)

(assert (=> b!106838 m!94658))

(assert (=> b!106838 m!94650))

(declare-fun m!94660 () Bool)

(assert (=> b!106838 m!94660))

(declare-fun m!94662 () Bool)

(assert (=> b!106838 m!94662))

(assert (=> b!106838 m!94658))

(assert (=> b!106838 m!94652))

(assert (=> b!106838 m!92552))

(assert (=> b!106838 m!94660))

(assert (=> b!106839 m!92600))

(declare-fun m!94664 () Bool)

(assert (=> b!106839 m!94664))

(declare-fun m!94666 () Bool)

(assert (=> b!106839 m!94666))

(assert (=> b!106839 m!92600))

(assert (=> b!106839 m!94664))

(assert (=> b!106839 m!94666))

(declare-fun m!94668 () Bool)

(assert (=> b!106839 m!94668))

(assert (=> b!106840 m!94658))

(declare-fun m!94670 () Bool)

(assert (=> b!106840 m!94670))

(assert (=> b!106840 m!92552))

(assert (=> b!106840 m!94658))

(assert (=> b!106840 m!94670))

(assert (=> b!106840 m!92552))

(declare-fun m!94672 () Bool)

(assert (=> b!106840 m!94672))

(assert (=> b!106834 m!94666))

(assert (=> b!106834 m!92600))

(declare-fun m!94674 () Bool)

(assert (=> b!106834 m!94674))

(declare-fun m!94676 () Bool)

(assert (=> b!106834 m!94676))

(assert (=> b!106834 m!92600))

(declare-fun m!94678 () Bool)

(assert (=> b!106834 m!94678))

(assert (=> b!106834 m!94674))

(assert (=> b!106834 m!94676))

(assert (=> b!106834 m!94678))

(assert (=> b!106834 m!94666))

(declare-fun m!94682 () Bool)

(assert (=> b!106834 m!94682))

(assert (=> b!106841 m!92600))

(assert (=> b!106841 m!94674))

(assert (=> b!106841 m!94678))

(assert (=> b!106841 m!92600))

(assert (=> b!106841 m!94674))

(assert (=> b!106841 m!94678))

(declare-fun m!94684 () Bool)

(assert (=> b!106841 m!94684))

(assert (=> d!25482 d!26046))

(declare-fun b!107071 () Bool)

(declare-fun e!59403 () Conc!540)

(declare-fun call!4710 () Conc!540)

(assert (=> b!107071 (= e!59403 call!4710)))

(declare-fun b!107072 () Bool)

(declare-fun c!25750 () Bool)

(declare-fun lt!30023 () Int)

(assert (=> b!107072 (= c!25750 (and (<= (- 1) lt!30023) (<= lt!30023 1)))))

(assert (=> b!107072 (= lt!30023 (- (height!64 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (height!64 (c!25296 (BalanceConc!1085 Empty!540)))))))

(declare-fun e!59401 () Conc!540)

(declare-fun e!59400 () Conc!540)

(assert (=> b!107072 (= e!59401 e!59400)))

(declare-fun b!107073 () Bool)

(declare-fun e!59406 () Conc!540)

(declare-fun call!4711 () Conc!540)

(assert (=> b!107073 (= e!59406 call!4711)))

(declare-fun bm!4694 () Bool)

(declare-fun call!4712 () Conc!540)

(declare-fun call!4713 () Conc!540)

(assert (=> bm!4694 (= call!4712 call!4713)))

(declare-fun b!107074 () Bool)

(declare-fun res!51374 () Bool)

(declare-fun e!59404 () Bool)

(assert (=> b!107074 (=> (not res!51374) (not e!59404))))

(declare-fun lt!30024 () Conc!540)

(assert (=> b!107074 (= res!51374 (isBalanced!149 lt!30024))))

(declare-fun b!107075 () Bool)

(declare-fun e!59407 () Conc!540)

(assert (=> b!107075 (= e!59407 e!59401)))

(declare-fun c!25748 () Bool)

(assert (=> b!107075 (= c!25748 (= (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))) Empty!540))))

(declare-fun b!107076 () Bool)

(declare-fun e!59399 () Conc!540)

(assert (=> b!107076 (= e!59399 e!59403)))

(declare-fun lt!30021 () Conc!540)

(assert (=> b!107076 (= lt!30021 call!4712)))

(declare-fun c!25744 () Bool)

(declare-fun call!4706 () Int)

(declare-fun call!4700 () Int)

(assert (=> b!107076 (= c!25744 (= call!4706 (- call!4700 3)))))

(declare-fun b!107077 () Bool)

(assert (=> b!107077 (= e!59401 (c!25296 (BalanceConc!1085 Empty!540)))))

(declare-fun bm!4695 () Bool)

(declare-fun call!4708 () Conc!540)

(declare-fun call!4714 () Conc!540)

(assert (=> bm!4695 (= call!4708 call!4714)))

(declare-fun b!107078 () Bool)

(declare-fun res!51373 () Bool)

(assert (=> b!107078 (=> (not res!51373) (not e!59404))))

(assert (=> b!107078 (= res!51373 (>= (height!64 lt!30024) (max!0 (height!64 (c!25296 (BalanceConc!1085 Empty!540))) (height!64 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun b!107079 () Bool)

(declare-fun e!59402 () Conc!540)

(declare-fun call!4701 () Conc!540)

(assert (=> b!107079 (= e!59402 call!4701)))

(declare-fun bm!4697 () Bool)

(declare-fun call!4702 () Int)

(declare-fun c!25745 () Bool)

(assert (=> bm!4697 (= call!4702 (height!64 (ite c!25745 (left!1303 (c!25296 (BalanceConc!1085 Empty!540))) (right!1633 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun b!107080 () Bool)

(declare-fun e!59405 () Conc!540)

(assert (=> b!107080 (= e!59400 e!59405)))

(assert (=> b!107080 (= c!25745 (< lt!30023 (- 1)))))

(declare-fun bm!4698 () Bool)

(declare-fun call!4704 () Conc!540)

(assert (=> bm!4698 (= call!4704 call!4714)))

(declare-fun b!107081 () Bool)

(assert (=> b!107081 (= e!59406 e!59402)))

(declare-fun lt!30022 () Conc!540)

(declare-fun call!4709 () Conc!540)

(assert (=> b!107081 (= lt!30022 call!4709)))

(declare-fun c!25749 () Bool)

(declare-fun call!4707 () Int)

(assert (=> b!107081 (= c!25749 (= call!4700 (- call!4707 3)))))

(declare-fun bm!4699 () Bool)

(assert (=> bm!4699 (= call!4709 call!4713)))

(declare-fun b!107082 () Bool)

(assert (=> b!107082 (= e!59404 (= (list!727 lt!30024) (++!283 (list!727 (c!25296 (BalanceConc!1085 Empty!540))) (list!727 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun call!4705 () Conc!540)

(declare-fun bm!4700 () Bool)

(declare-fun <>!13 (Conc!540 Conc!540) Conc!540)

(assert (=> bm!4700 (= call!4705 (<>!13 (ite c!25750 (c!25296 (BalanceConc!1085 Empty!540)) (ite c!25745 (ite c!25744 (left!1303 (right!1633 (c!25296 (BalanceConc!1085 Empty!540)))) (left!1303 (c!25296 (BalanceConc!1085 Empty!540)))) (ite c!25749 lt!30022 (right!1633 (left!1303 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))) (ite c!25750 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (ite c!25745 (ite c!25744 lt!30021 (left!1303 (right!1633 (c!25296 (BalanceConc!1085 Empty!540))))) (ite c!25749 (right!1633 (left!1303 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (right!1633 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))))

(declare-fun b!107083 () Bool)

(declare-fun c!25746 () Bool)

(assert (=> b!107083 (= c!25746 (>= call!4702 call!4706))))

(assert (=> b!107083 (= e!59405 e!59406)))

(declare-fun bm!4701 () Bool)

(assert (=> bm!4701 (= call!4701 call!4711)))

(declare-fun bm!4702 () Bool)

(declare-fun call!4699 () Conc!540)

(assert (=> bm!4702 (= call!4710 call!4699)))

(declare-fun b!107084 () Bool)

(declare-fun res!51377 () Bool)

(assert (=> b!107084 (=> (not res!51377) (not e!59404))))

(assert (=> b!107084 (= res!51377 (<= (height!64 lt!30024) (+ (max!0 (height!64 (c!25296 (BalanceConc!1085 Empty!540))) (height!64 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) 1)))))

(declare-fun c!25747 () Bool)

(declare-fun bm!4703 () Bool)

(assert (=> bm!4703 (= call!4713 (++!286 (ite c!25745 (ite c!25747 (right!1633 (c!25296 (BalanceConc!1085 Empty!540))) (right!1633 (right!1633 (c!25296 (BalanceConc!1085 Empty!540))))) (c!25296 (BalanceConc!1085 Empty!540))) (ite c!25745 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (ite c!25746 (left!1303 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (left!1303 (left!1303 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))))

(declare-fun b!107085 () Bool)

(declare-fun e!59398 () Bool)

(assert (=> b!107085 (= e!59398 (isBalanced!149 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(declare-fun bm!4704 () Bool)

(declare-fun call!4703 () Conc!540)

(assert (=> bm!4704 (= call!4699 call!4703)))

(declare-fun bm!4705 () Bool)

(assert (=> bm!4705 (= call!4706 (height!64 (ite c!25745 lt!30021 (left!1303 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun b!107086 () Bool)

(assert (=> b!107086 (= c!25747 (>= call!4702 call!4707))))

(assert (=> b!107086 (= e!59405 e!59399)))

(declare-fun bm!4706 () Bool)

(assert (=> bm!4706 (= call!4703 (<>!13 (ite c!25745 (ite (or c!25747 c!25744) (left!1303 (c!25296 (BalanceConc!1085 Empty!540))) call!4708) (ite c!25746 call!4709 (ite c!25749 call!4704 lt!30022))) (ite c!25745 (ite c!25747 call!4712 (ite c!25744 call!4708 lt!30021)) (ite (or c!25746 c!25749) (right!1633 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) call!4704))))))

(declare-fun b!107087 () Bool)

(assert (=> b!107087 (= e!59407 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))

(declare-fun bm!4707 () Bool)

(assert (=> bm!4707 (= call!4700 (height!64 (ite c!25745 (c!25296 (BalanceConc!1085 Empty!540)) lt!30022)))))

(declare-fun b!107088 () Bool)

(assert (=> b!107088 (= e!59399 call!4699)))

(declare-fun bm!4708 () Bool)

(assert (=> bm!4708 (= call!4714 call!4705)))

(declare-fun b!107089 () Bool)

(assert (=> b!107089 (= e!59402 call!4701)))

(declare-fun b!107090 () Bool)

(assert (=> b!107090 (= e!59400 call!4705)))

(declare-fun bm!4709 () Bool)

(assert (=> bm!4709 (= call!4711 call!4703)))

(declare-fun b!107091 () Bool)

(assert (=> b!107091 (= e!59403 call!4710)))

(declare-fun d!26108 () Bool)

(assert (=> d!26108 e!59404))

(declare-fun res!51376 () Bool)

(assert (=> d!26108 (=> (not res!51376) (not e!59404))))

(assert (=> d!26108 (= res!51376 (appendAssocInst!11 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(assert (=> d!26108 (= lt!30024 e!59407)))

(declare-fun c!25751 () Bool)

(assert (=> d!26108 (= c!25751 (= (c!25296 (BalanceConc!1085 Empty!540)) Empty!540))))

(assert (=> d!26108 e!59398))

(declare-fun res!51375 () Bool)

(assert (=> d!26108 (=> (not res!51375) (not e!59398))))

(assert (=> d!26108 (= res!51375 (isBalanced!149 (c!25296 (BalanceConc!1085 Empty!540))))))

(assert (=> d!26108 (= (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) lt!30024)))

(declare-fun bm!4696 () Bool)

(assert (=> bm!4696 (= call!4707 (height!64 (ite c!25745 (right!1633 (c!25296 (BalanceConc!1085 Empty!540))) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(assert (= (and d!26108 res!51375) b!107085))

(assert (= (and d!26108 c!25751) b!107087))

(assert (= (and d!26108 (not c!25751)) b!107075))

(assert (= (and b!107075 c!25748) b!107077))

(assert (= (and b!107075 (not c!25748)) b!107072))

(assert (= (and b!107072 c!25750) b!107090))

(assert (= (and b!107072 (not c!25750)) b!107080))

(assert (= (and b!107080 c!25745) b!107086))

(assert (= (and b!107080 (not c!25745)) b!107083))

(assert (= (and b!107086 c!25747) b!107088))

(assert (= (and b!107086 (not c!25747)) b!107076))

(assert (= (and b!107076 c!25744) b!107071))

(assert (= (and b!107076 (not c!25744)) b!107091))

(assert (= (or b!107071 b!107091) bm!4695))

(assert (= (or b!107071 b!107091) bm!4702))

(assert (= (or b!107088 b!107076) bm!4694))

(assert (= (or b!107088 bm!4702) bm!4704))

(assert (= (and b!107083 c!25746) b!107073))

(assert (= (and b!107083 (not c!25746)) b!107081))

(assert (= (and b!107081 c!25749) b!107079))

(assert (= (and b!107081 (not c!25749)) b!107089))

(assert (= (or b!107079 b!107089) bm!4698))

(assert (= (or b!107079 b!107089) bm!4701))

(assert (= (or b!107073 b!107081) bm!4699))

(assert (= (or b!107073 bm!4701) bm!4709))

(assert (= (or bm!4695 bm!4698) bm!4708))

(assert (= (or b!107076 b!107081) bm!4707))

(assert (= (or b!107086 b!107081) bm!4696))

(assert (= (or bm!4704 bm!4709) bm!4706))

(assert (= (or b!107076 b!107083) bm!4705))

(assert (= (or bm!4694 bm!4699) bm!4703))

(assert (= (or b!107086 b!107083) bm!4697))

(assert (= (or b!107090 bm!4708) bm!4700))

(assert (= (and d!26108 res!51376) b!107074))

(assert (= (and b!107074 res!51374) b!107084))

(assert (= (and b!107084 res!51377) b!107078))

(assert (= (and b!107078 res!51373) b!107082))

(declare-fun m!94814 () Bool)

(assert (=> b!107078 m!94814))

(assert (=> b!107078 m!92448))

(assert (=> b!107078 m!92454))

(assert (=> b!107078 m!92448))

(assert (=> b!107078 m!92454))

(assert (=> b!107078 m!92456))

(declare-fun m!94816 () Bool)

(assert (=> b!107074 m!94816))

(declare-fun m!94818 () Bool)

(assert (=> bm!4700 m!94818))

(assert (=> b!107072 m!92454))

(assert (=> b!107072 m!92448))

(declare-fun m!94820 () Bool)

(assert (=> bm!4705 m!94820))

(declare-fun m!94822 () Bool)

(assert (=> b!107082 m!94822))

(assert (=> b!107082 m!92600))

(assert (=> b!107082 m!92552))

(assert (=> b!107082 m!92600))

(assert (=> b!107082 m!92552))

(declare-fun m!94824 () Bool)

(assert (=> b!107082 m!94824))

(declare-fun m!94826 () Bool)

(assert (=> bm!4706 m!94826))

(assert (=> b!107084 m!94814))

(assert (=> b!107084 m!92448))

(assert (=> b!107084 m!92454))

(assert (=> b!107084 m!92448))

(assert (=> b!107084 m!92454))

(assert (=> b!107084 m!92456))

(assert (=> d!26108 m!92462))

(declare-fun m!94828 () Bool)

(assert (=> d!26108 m!94828))

(declare-fun m!94830 () Bool)

(assert (=> bm!4697 m!94830))

(declare-fun m!94832 () Bool)

(assert (=> bm!4696 m!94832))

(declare-fun m!94834 () Bool)

(assert (=> b!107085 m!94834))

(declare-fun m!94836 () Bool)

(assert (=> bm!4707 m!94836))

(declare-fun m!94838 () Bool)

(assert (=> bm!4703 m!94838))

(assert (=> d!25482 d!26108))

(declare-fun d!26146 () Bool)

(declare-fun c!25752 () Bool)

(assert (=> d!26146 (= c!25752 ((_ is Node!540) (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun e!59408 () Bool)

(assert (=> d!26146 (= (inv!2080 (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247)))))) e!59408)))

(declare-fun b!107092 () Bool)

(assert (=> b!107092 (= e!59408 (inv!2084 (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun b!107093 () Bool)

(declare-fun e!59409 () Bool)

(assert (=> b!107093 (= e!59408 e!59409)))

(declare-fun res!51378 () Bool)

(assert (=> b!107093 (= res!51378 (not ((_ is Leaf!862) (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247))))))))))

(assert (=> b!107093 (=> res!51378 e!59409)))

(declare-fun b!107094 () Bool)

(assert (=> b!107094 (= e!59409 (inv!2085 (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247)))))))))

(assert (= (and d!26146 c!25752) b!107092))

(assert (= (and d!26146 (not c!25752)) b!107093))

(assert (= (and b!107093 (not res!51378)) b!107094))

(declare-fun m!94840 () Bool)

(assert (=> b!107092 m!94840))

(declare-fun m!94842 () Bool)

(assert (=> b!107094 m!94842))

(assert (=> b!105829 d!26146))

(assert (=> d!25532 d!25976))

(declare-fun d!26148 () Bool)

(assert (=> d!26148 (= (isDefined!72 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 lt!29233))) (not (isEmpty!801 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 lt!29233)))))))

(declare-fun bs!10283 () Bool)

(assert (= bs!10283 d!26148))

(assert (=> bs!10283 m!92720))

(declare-fun m!94844 () Bool)

(assert (=> bs!10283 m!94844))

(assert (=> d!25532 d!26148))

(declare-fun d!26150 () Bool)

(assert (=> d!26150 (isPrefix!51 lt!29552 lt!29551)))

(declare-fun lt!30027 () Unit!1124)

(declare-fun choose!1407 (List!1711 List!1711) Unit!1124)

(assert (=> d!26150 (= lt!30027 (choose!1407 lt!29552 lt!29551))))

(assert (=> d!26150 (= (lemmaIsPrefixRefl!51 lt!29552 lt!29551) lt!30027)))

(declare-fun bs!10284 () Bool)

(assert (= bs!10284 d!26150))

(assert (=> bs!10284 m!92732))

(declare-fun m!94846 () Bool)

(assert (=> bs!10284 m!94846))

(assert (=> d!25532 d!26150))

(assert (=> d!25532 d!26018))

(declare-fun b!107106 () Bool)

(declare-fun e!59417 () Bool)

(assert (=> b!107106 (= e!59417 (>= (size!1519 lt!29551) (size!1519 lt!29552)))))

(declare-fun b!107104 () Bool)

(declare-fun res!51387 () Bool)

(declare-fun e!59418 () Bool)

(assert (=> b!107104 (=> (not res!51387) (not e!59418))))

(declare-fun head!464 (List!1711) C!1804)

(assert (=> b!107104 (= res!51387 (= (head!464 lt!29552) (head!464 lt!29551)))))

(declare-fun b!107105 () Bool)

(declare-fun tail!176 (List!1711) List!1711)

(assert (=> b!107105 (= e!59418 (isPrefix!51 (tail!176 lt!29552) (tail!176 lt!29551)))))

(declare-fun d!26152 () Bool)

(assert (=> d!26152 e!59417))

(declare-fun res!51390 () Bool)

(assert (=> d!26152 (=> res!51390 e!59417)))

(declare-fun lt!30030 () Bool)

(assert (=> d!26152 (= res!51390 (not lt!30030))))

(declare-fun e!59416 () Bool)

(assert (=> d!26152 (= lt!30030 e!59416)))

(declare-fun res!51389 () Bool)

(assert (=> d!26152 (=> res!51389 e!59416)))

(assert (=> d!26152 (= res!51389 ((_ is Nil!1705) lt!29552))))

(assert (=> d!26152 (= (isPrefix!51 lt!29552 lt!29551) lt!30030)))

(declare-fun b!107103 () Bool)

(assert (=> b!107103 (= e!59416 e!59418)))

(declare-fun res!51388 () Bool)

(assert (=> b!107103 (=> (not res!51388) (not e!59418))))

(assert (=> b!107103 (= res!51388 (not ((_ is Nil!1705) lt!29551)))))

(assert (= (and d!26152 (not res!51389)) b!107103))

(assert (= (and b!107103 res!51388) b!107104))

(assert (= (and b!107104 res!51387) b!107105))

(assert (= (and d!26152 (not res!51390)) b!107106))

(declare-fun m!94848 () Bool)

(assert (=> b!107106 m!94848))

(declare-fun m!94850 () Bool)

(assert (=> b!107106 m!94850))

(declare-fun m!94852 () Bool)

(assert (=> b!107104 m!94852))

(declare-fun m!94854 () Bool)

(assert (=> b!107104 m!94854))

(declare-fun m!94856 () Bool)

(assert (=> b!107105 m!94856))

(declare-fun m!94858 () Bool)

(assert (=> b!107105 m!94858))

(assert (=> b!107105 m!94856))

(assert (=> b!107105 m!94858))

(declare-fun m!94860 () Bool)

(assert (=> b!107105 m!94860))

(assert (=> d!25532 d!26152))

(declare-fun d!26154 () Bool)

(declare-fun isEmpty!806 (Option!197) Bool)

(assert (=> d!26154 (= (isDefined!71 lt!29556) (not (isEmpty!806 lt!29556)))))

(declare-fun bs!10285 () Bool)

(assert (= bs!10285 d!26154))

(declare-fun m!94862 () Bool)

(assert (=> bs!10285 m!94862))

(assert (=> d!25532 d!26154))

(declare-fun bs!10286 () Bool)

(declare-fun d!26156 () Bool)

(assert (= bs!10286 (and d!26156 d!25478)))

(declare-fun lambda!1973 () Int)

(assert (=> bs!10286 (= lambda!1973 lambda!1959)))

(assert (=> d!26156 true))

(declare-fun lt!30033 () Bool)

(assert (=> d!26156 (= lt!30033 (forall!227 rules!1152 lambda!1973))))

(declare-fun e!59424 () Bool)

(assert (=> d!26156 (= lt!30033 e!59424)))

(declare-fun res!51395 () Bool)

(assert (=> d!26156 (=> res!51395 e!59424)))

(assert (=> d!26156 (= res!51395 (not ((_ is Cons!1706) rules!1152)))))

(assert (=> d!26156 (= (rulesValidInductive!84 thiss!11428 rules!1152) lt!30033)))

(declare-fun b!107111 () Bool)

(declare-fun e!59423 () Bool)

(assert (=> b!107111 (= e!59424 e!59423)))

(declare-fun res!51396 () Bool)

(assert (=> b!107111 (=> (not res!51396) (not e!59423))))

(declare-fun ruleValid!48 (LexerInterface!265 Rule!546) Bool)

(assert (=> b!107111 (= res!51396 (ruleValid!48 thiss!11428 (h!7103 rules!1152)))))

(declare-fun b!107112 () Bool)

(assert (=> b!107112 (= e!59423 (rulesValidInductive!84 thiss!11428 (t!21401 rules!1152)))))

(assert (= (and d!26156 (not res!51395)) b!107111))

(assert (= (and b!107111 res!51396) b!107112))

(declare-fun m!94864 () Bool)

(assert (=> d!26156 m!94864))

(declare-fun m!94866 () Bool)

(assert (=> b!107111 m!94866))

(declare-fun m!94868 () Bool)

(assert (=> b!107112 m!94868))

(assert (=> d!25532 d!26156))

(declare-fun b!107141 () Bool)

(declare-fun e!59441 () Bool)

(assert (=> b!107141 (= e!59441 (not (= (head!464 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476))))) (c!25297 (regex!373 (rule!876 (_1!1140 (get!438 lt!29476))))))))))

(declare-fun b!107142 () Bool)

(declare-fun e!59440 () Bool)

(declare-fun e!59444 () Bool)

(assert (=> b!107142 (= e!59440 e!59444)))

(declare-fun c!25761 () Bool)

(assert (=> b!107142 (= c!25761 ((_ is EmptyLang!441) (regex!373 (rule!876 (_1!1140 (get!438 lt!29476))))))))

(declare-fun b!107143 () Bool)

(declare-fun lt!30036 () Bool)

(declare-fun call!4717 () Bool)

(assert (=> b!107143 (= e!59440 (= lt!30036 call!4717))))

(declare-fun b!107144 () Bool)

(declare-fun e!59442 () Bool)

(assert (=> b!107144 (= e!59442 (= (head!464 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476))))) (c!25297 (regex!373 (rule!876 (_1!1140 (get!438 lt!29476)))))))))

(declare-fun b!107145 () Bool)

(declare-fun e!59443 () Bool)

(declare-fun e!59445 () Bool)

(assert (=> b!107145 (= e!59443 e!59445)))

(declare-fun res!51413 () Bool)

(assert (=> b!107145 (=> (not res!51413) (not e!59445))))

(assert (=> b!107145 (= res!51413 (not lt!30036))))

(declare-fun b!107146 () Bool)

(assert (=> b!107146 (= e!59444 (not lt!30036))))

(declare-fun b!107147 () Bool)

(declare-fun e!59439 () Bool)

(declare-fun derivativeStep!35 (Regex!441 C!1804) Regex!441)

(assert (=> b!107147 (= e!59439 (matchR!48 (derivativeStep!35 (regex!373 (rule!876 (_1!1140 (get!438 lt!29476)))) (head!464 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476)))))) (tail!176 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476)))))))))

(declare-fun b!107148 () Bool)

(declare-fun nullable!53 (Regex!441) Bool)

(assert (=> b!107148 (= e!59439 (nullable!53 (regex!373 (rule!876 (_1!1140 (get!438 lt!29476))))))))

(declare-fun bm!4712 () Bool)

(declare-fun isEmpty!807 (List!1711) Bool)

(assert (=> bm!4712 (= call!4717 (isEmpty!807 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476))))))))

(declare-fun b!107150 () Bool)

(declare-fun res!51415 () Bool)

(assert (=> b!107150 (=> res!51415 e!59443)))

(assert (=> b!107150 (= res!51415 (not ((_ is ElementMatch!441) (regex!373 (rule!876 (_1!1140 (get!438 lt!29476)))))))))

(assert (=> b!107150 (= e!59444 e!59443)))

(declare-fun b!107151 () Bool)

(declare-fun res!51419 () Bool)

(assert (=> b!107151 (=> res!51419 e!59443)))

(assert (=> b!107151 (= res!51419 e!59442)))

(declare-fun res!51416 () Bool)

(assert (=> b!107151 (=> (not res!51416) (not e!59442))))

(assert (=> b!107151 (= res!51416 lt!30036)))

(declare-fun b!107152 () Bool)

(declare-fun res!51417 () Bool)

(assert (=> b!107152 (=> res!51417 e!59441)))

(assert (=> b!107152 (= res!51417 (not (isEmpty!807 (tail!176 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476))))))))))

(declare-fun d!26158 () Bool)

(assert (=> d!26158 e!59440))

(declare-fun c!25759 () Bool)

(assert (=> d!26158 (= c!25759 ((_ is EmptyExpr!441) (regex!373 (rule!876 (_1!1140 (get!438 lt!29476))))))))

(assert (=> d!26158 (= lt!30036 e!59439)))

(declare-fun c!25760 () Bool)

(assert (=> d!26158 (= c!25760 (isEmpty!807 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476))))))))

(declare-fun validRegex!60 (Regex!441) Bool)

(assert (=> d!26158 (validRegex!60 (regex!373 (rule!876 (_1!1140 (get!438 lt!29476)))))))

(assert (=> d!26158 (= (matchR!48 (regex!373 (rule!876 (_1!1140 (get!438 lt!29476)))) (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476))))) lt!30036)))

(declare-fun b!107149 () Bool)

(declare-fun res!51418 () Bool)

(assert (=> b!107149 (=> (not res!51418) (not e!59442))))

(assert (=> b!107149 (= res!51418 (not call!4717))))

(declare-fun b!107153 () Bool)

(declare-fun res!51420 () Bool)

(assert (=> b!107153 (=> (not res!51420) (not e!59442))))

(assert (=> b!107153 (= res!51420 (isEmpty!807 (tail!176 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476)))))))))

(declare-fun b!107154 () Bool)

(assert (=> b!107154 (= e!59445 e!59441)))

(declare-fun res!51414 () Bool)

(assert (=> b!107154 (=> res!51414 e!59441)))

(assert (=> b!107154 (= res!51414 call!4717)))

(assert (= (and d!26158 c!25760) b!107148))

(assert (= (and d!26158 (not c!25760)) b!107147))

(assert (= (and d!26158 c!25759) b!107143))

(assert (= (and d!26158 (not c!25759)) b!107142))

(assert (= (and b!107142 c!25761) b!107146))

(assert (= (and b!107142 (not c!25761)) b!107150))

(assert (= (and b!107150 (not res!51415)) b!107151))

(assert (= (and b!107151 res!51416) b!107149))

(assert (= (and b!107149 res!51418) b!107153))

(assert (= (and b!107153 res!51420) b!107144))

(assert (= (and b!107151 (not res!51419)) b!107145))

(assert (= (and b!107145 res!51413) b!107154))

(assert (= (and b!107154 (not res!51414)) b!107152))

(assert (= (and b!107152 (not res!51417)) b!107141))

(assert (= (or b!107143 b!107149 b!107154) bm!4712))

(assert (=> b!107141 m!92384))

(declare-fun m!94870 () Bool)

(assert (=> b!107141 m!94870))

(assert (=> bm!4712 m!92384))

(declare-fun m!94872 () Bool)

(assert (=> bm!4712 m!94872))

(declare-fun m!94874 () Bool)

(assert (=> b!107148 m!94874))

(assert (=> b!107144 m!92384))

(assert (=> b!107144 m!94870))

(assert (=> b!107153 m!92384))

(declare-fun m!94876 () Bool)

(assert (=> b!107153 m!94876))

(assert (=> b!107153 m!94876))

(declare-fun m!94878 () Bool)

(assert (=> b!107153 m!94878))

(assert (=> d!26158 m!92384))

(assert (=> d!26158 m!94872))

(declare-fun m!94880 () Bool)

(assert (=> d!26158 m!94880))

(assert (=> b!107152 m!92384))

(assert (=> b!107152 m!94876))

(assert (=> b!107152 m!94876))

(assert (=> b!107152 m!94878))

(assert (=> b!107147 m!92384))

(assert (=> b!107147 m!94870))

(assert (=> b!107147 m!94870))

(declare-fun m!94882 () Bool)

(assert (=> b!107147 m!94882))

(assert (=> b!107147 m!92384))

(assert (=> b!107147 m!94876))

(assert (=> b!107147 m!94882))

(assert (=> b!107147 m!94876))

(declare-fun m!94884 () Bool)

(assert (=> b!107147 m!94884))

(assert (=> b!105698 d!26158))

(declare-fun d!26160 () Bool)

(assert (=> d!26160 (= (get!438 lt!29476) (v!13006 lt!29476))))

(assert (=> b!105698 d!26160))

(declare-fun d!26162 () Bool)

(assert (=> d!26162 (= (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476)))) (list!727 (c!25296 (charsOf!88 (_1!1140 (get!438 lt!29476))))))))

(declare-fun bs!10287 () Bool)

(assert (= bs!10287 d!26162))

(declare-fun m!94886 () Bool)

(assert (=> bs!10287 m!94886))

(assert (=> b!105698 d!26162))

(declare-fun d!26164 () Bool)

(declare-fun lt!30037 () BalanceConc!1084)

(assert (=> d!26164 (= (list!723 lt!30037) (originalCharacters!416 (_1!1140 (get!438 lt!29476))))))

(assert (=> d!26164 (= lt!30037 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476))))) (value!13518 (_1!1140 (get!438 lt!29476)))))))

(assert (=> d!26164 (= (charsOf!88 (_1!1140 (get!438 lt!29476))) lt!30037)))

(declare-fun b_lambda!1177 () Bool)

(assert (=> (not b_lambda!1177) (not d!26164)))

(declare-fun t!21462 () Bool)

(declare-fun tb!3109 () Bool)

(assert (=> (and b!105068 (= (toChars!819 (transformation!373 (h!7103 rules!1152))) (toChars!819 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476)))))) t!21462) tb!3109))

(declare-fun b!107155 () Bool)

(declare-fun e!59446 () Bool)

(declare-fun tp!58730 () Bool)

(assert (=> b!107155 (= e!59446 (and (inv!2080 (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476))))) (value!13518 (_1!1140 (get!438 lt!29476)))))) tp!58730))))

(declare-fun result!4604 () Bool)

(assert (=> tb!3109 (= result!4604 (and (inv!2079 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476))))) (value!13518 (_1!1140 (get!438 lt!29476))))) e!59446))))

(assert (= tb!3109 b!107155))

(declare-fun m!94888 () Bool)

(assert (=> b!107155 m!94888))

(declare-fun m!94890 () Bool)

(assert (=> tb!3109 m!94890))

(assert (=> d!26164 t!21462))

(declare-fun b_and!4745 () Bool)

(assert (= b_and!4715 (and (=> t!21462 result!4604) b_and!4745)))

(declare-fun tb!3111 () Bool)

(declare-fun t!21464 () Bool)

(assert (=> (and b!105252 (= (toChars!819 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toChars!819 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476)))))) t!21464) tb!3111))

(declare-fun result!4606 () Bool)

(assert (= result!4606 result!4604))

(assert (=> d!26164 t!21464))

(declare-fun b_and!4747 () Bool)

(assert (= b_and!4717 (and (=> t!21464 result!4606) b_and!4747)))

(declare-fun tb!3113 () Bool)

(declare-fun t!21466 () Bool)

(assert (=> (and b!105921 (= (toChars!819 (transformation!373 (h!7103 (t!21401 (t!21401 rules!1152))))) (toChars!819 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476)))))) t!21466) tb!3113))

(declare-fun result!4608 () Bool)

(assert (= result!4608 result!4604))

(assert (=> d!26164 t!21466))

(declare-fun b_and!4749 () Bool)

(assert (= b_and!4721 (and (=> t!21466 result!4608) b_and!4749)))

(declare-fun m!94892 () Bool)

(assert (=> d!26164 m!94892))

(declare-fun m!94894 () Bool)

(assert (=> d!26164 m!94894))

(assert (=> b!105698 d!26164))

(declare-fun b!107156 () Bool)

(declare-fun res!51424 () Bool)

(declare-fun e!59451 () Bool)

(assert (=> b!107156 (=> (not res!51424) (not e!59451))))

(declare-fun e!59450 () Bool)

(assert (=> b!107156 (= res!51424 e!59450)))

(declare-fun res!51423 () Bool)

(assert (=> b!107156 (=> res!51423 e!59450)))

(declare-fun lt!30043 () Option!197)

(assert (=> b!107156 (= res!51423 (not (isDefined!71 lt!30043)))))

(declare-fun b!107157 () Bool)

(declare-fun e!59448 () Bool)

(declare-fun e!59452 () Bool)

(assert (=> b!107157 (= e!59448 e!59452)))

(declare-fun res!51426 () Bool)

(assert (=> b!107157 (=> (not res!51426) (not e!59452))))

(assert (=> b!107157 (= res!51426 (= (_1!1139 (get!437 lt!30043)) (_1!1140 (get!438 (maxPrefix!93 thiss!11428 (t!21401 rules!1152) (list!723 lt!29233))))))))

(declare-fun b!107158 () Bool)

(assert (=> b!107158 (= e!59452 (= (list!723 (_2!1139 (get!437 lt!30043))) (_2!1140 (get!438 (maxPrefix!93 thiss!11428 (t!21401 rules!1152) (list!723 lt!29233))))))))

(declare-fun e!59449 () Bool)

(declare-fun b!107159 () Bool)

(assert (=> b!107159 (= e!59449 (= (list!723 (_2!1139 (get!437 lt!30043))) (_2!1140 (get!438 (maxPrefixZipper!17 thiss!11428 (t!21401 rules!1152) (list!723 lt!29233))))))))

(declare-fun call!4718 () Option!197)

(declare-fun bm!4713 () Bool)

(assert (=> bm!4713 (= call!4718 (maxPrefixOneRuleZipperSequence!18 thiss!11428 (h!7103 (t!21401 rules!1152)) lt!29233))))

(declare-fun d!26166 () Bool)

(assert (=> d!26166 e!59451))

(declare-fun res!51422 () Bool)

(assert (=> d!26166 (=> (not res!51422) (not e!59451))))

(assert (=> d!26166 (= res!51422 (= (isDefined!71 lt!30043) (isDefined!72 (maxPrefixZipper!17 thiss!11428 (t!21401 rules!1152) (list!723 lt!29233)))))))

(declare-fun e!59447 () Option!197)

(assert (=> d!26166 (= lt!30043 e!59447)))

(declare-fun c!25762 () Bool)

(assert (=> d!26166 (= c!25762 (and ((_ is Cons!1706) (t!21401 rules!1152)) ((_ is Nil!1706) (t!21401 (t!21401 rules!1152)))))))

(declare-fun lt!30044 () Unit!1124)

(declare-fun lt!30042 () Unit!1124)

(assert (=> d!26166 (= lt!30044 lt!30042)))

(declare-fun lt!30039 () List!1711)

(declare-fun lt!30038 () List!1711)

(assert (=> d!26166 (isPrefix!51 lt!30039 lt!30038)))

(assert (=> d!26166 (= lt!30042 (lemmaIsPrefixRefl!51 lt!30039 lt!30038))))

(assert (=> d!26166 (= lt!30038 (list!723 lt!29233))))

(assert (=> d!26166 (= lt!30039 (list!723 lt!29233))))

(assert (=> d!26166 (rulesValidInductive!84 thiss!11428 (t!21401 rules!1152))))

(assert (=> d!26166 (= (maxPrefixZipperSequence!56 thiss!11428 (t!21401 rules!1152) lt!29233) lt!30043)))

(declare-fun b!107160 () Bool)

(assert (=> b!107160 (= e!59451 e!59448)))

(declare-fun res!51425 () Bool)

(assert (=> b!107160 (=> res!51425 e!59448)))

(assert (=> b!107160 (= res!51425 (not (isDefined!71 lt!30043)))))

(declare-fun b!107161 () Bool)

(assert (=> b!107161 (= e!59450 e!59449)))

(declare-fun res!51421 () Bool)

(assert (=> b!107161 (=> (not res!51421) (not e!59449))))

(assert (=> b!107161 (= res!51421 (= (_1!1139 (get!437 lt!30043)) (_1!1140 (get!438 (maxPrefixZipper!17 thiss!11428 (t!21401 rules!1152) (list!723 lt!29233))))))))

(declare-fun b!107162 () Bool)

(declare-fun lt!30040 () Option!197)

(declare-fun lt!30041 () Option!197)

(assert (=> b!107162 (= e!59447 (ite (and ((_ is None!196) lt!30040) ((_ is None!196) lt!30041)) None!196 (ite ((_ is None!196) lt!30041) lt!30040 (ite ((_ is None!196) lt!30040) lt!30041 (ite (>= (size!1512 (_1!1139 (v!13005 lt!30040))) (size!1512 (_1!1139 (v!13005 lt!30041)))) lt!30040 lt!30041)))))))

(assert (=> b!107162 (= lt!30040 call!4718)))

(assert (=> b!107162 (= lt!30041 (maxPrefixZipperSequence!56 thiss!11428 (t!21401 (t!21401 rules!1152)) lt!29233))))

(declare-fun b!107163 () Bool)

(assert (=> b!107163 (= e!59447 call!4718)))

(assert (= (and d!26166 c!25762) b!107163))

(assert (= (and d!26166 (not c!25762)) b!107162))

(assert (= (or b!107163 b!107162) bm!4713))

(assert (= (and d!26166 res!51422) b!107156))

(assert (= (and b!107156 (not res!51423)) b!107161))

(assert (= (and b!107161 res!51421) b!107159))

(assert (= (and b!107156 res!51424) b!107160))

(assert (= (and b!107160 (not res!51425)) b!107157))

(assert (= (and b!107157 res!51426) b!107158))

(declare-fun m!94896 () Bool)

(assert (=> b!107162 m!94896))

(declare-fun m!94898 () Bool)

(assert (=> b!107158 m!94898))

(assert (=> b!107158 m!92712))

(declare-fun m!94900 () Bool)

(assert (=> b!107158 m!94900))

(assert (=> b!107158 m!92712))

(assert (=> b!107158 m!94900))

(declare-fun m!94902 () Bool)

(assert (=> b!107158 m!94902))

(declare-fun m!94904 () Bool)

(assert (=> b!107158 m!94904))

(assert (=> b!107161 m!94898))

(assert (=> b!107161 m!92712))

(assert (=> b!107161 m!92712))

(assert (=> b!107161 m!94484))

(assert (=> b!107161 m!94484))

(declare-fun m!94906 () Bool)

(assert (=> b!107161 m!94906))

(assert (=> b!107159 m!94898))

(assert (=> b!107159 m!94484))

(assert (=> b!107159 m!94906))

(assert (=> b!107159 m!94904))

(assert (=> b!107159 m!92712))

(assert (=> b!107159 m!92712))

(assert (=> b!107159 m!94484))

(declare-fun m!94908 () Bool)

(assert (=> bm!4713 m!94908))

(declare-fun m!94910 () Bool)

(assert (=> b!107156 m!94910))

(assert (=> d!26166 m!94484))

(declare-fun m!94912 () Bool)

(assert (=> d!26166 m!94912))

(assert (=> d!26166 m!94910))

(assert (=> d!26166 m!94868))

(declare-fun m!94914 () Bool)

(assert (=> d!26166 m!94914))

(declare-fun m!94916 () Bool)

(assert (=> d!26166 m!94916))

(assert (=> d!26166 m!92712))

(assert (=> d!26166 m!92712))

(assert (=> d!26166 m!94484))

(assert (=> b!107160 m!94910))

(assert (=> b!107157 m!94898))

(assert (=> b!107157 m!92712))

(assert (=> b!107157 m!92712))

(assert (=> b!107157 m!94900))

(assert (=> b!107157 m!94900))

(assert (=> b!107157 m!94902))

(assert (=> b!105862 d!26166))

(declare-fun b!107167 () Bool)

(declare-fun e!59453 () Bool)

(declare-fun lt!30045 () List!1711)

(assert (=> b!107167 (= e!59453 (or (not (= lt!29241 Nil!1705)) (= lt!30045 (t!21400 lt!29250))))))

(declare-fun b!107165 () Bool)

(declare-fun e!59454 () List!1711)

(assert (=> b!107165 (= e!59454 (Cons!1705 (h!7102 (t!21400 lt!29250)) (++!283 (t!21400 (t!21400 lt!29250)) lt!29241)))))

(declare-fun d!26168 () Bool)

(assert (=> d!26168 e!59453))

(declare-fun res!51428 () Bool)

(assert (=> d!26168 (=> (not res!51428) (not e!59453))))

(assert (=> d!26168 (= res!51428 (= (content!146 lt!30045) ((_ map or) (content!146 (t!21400 lt!29250)) (content!146 lt!29241))))))

(assert (=> d!26168 (= lt!30045 e!59454)))

(declare-fun c!25763 () Bool)

(assert (=> d!26168 (= c!25763 ((_ is Nil!1705) (t!21400 lt!29250)))))

(assert (=> d!26168 (= (++!283 (t!21400 lt!29250) lt!29241) lt!30045)))

(declare-fun b!107164 () Bool)

(assert (=> b!107164 (= e!59454 lt!29241)))

(declare-fun b!107166 () Bool)

(declare-fun res!51427 () Bool)

(assert (=> b!107166 (=> (not res!51427) (not e!59453))))

(assert (=> b!107166 (= res!51427 (= (size!1519 lt!30045) (+ (size!1519 (t!21400 lt!29250)) (size!1519 lt!29241))))))

(assert (= (and d!26168 c!25763) b!107164))

(assert (= (and d!26168 (not c!25763)) b!107165))

(assert (= (and d!26168 res!51428) b!107166))

(assert (= (and b!107166 res!51427) b!107167))

(declare-fun m!94918 () Bool)

(assert (=> b!107165 m!94918))

(declare-fun m!94920 () Bool)

(assert (=> d!26168 m!94920))

(assert (=> d!26168 m!94516))

(assert (=> d!26168 m!92592))

(declare-fun m!94922 () Bool)

(assert (=> b!107166 m!94922))

(declare-fun m!94924 () Bool)

(assert (=> b!107166 m!94924))

(assert (=> b!107166 m!92598))

(assert (=> b!105813 d!26168))

(declare-fun d!26170 () Bool)

(declare-fun c!25764 () Bool)

(assert (=> d!26170 (= c!25764 ((_ is Node!540) (left!1303 (left!1303 (c!25296 input!576)))))))

(declare-fun e!59455 () Bool)

(assert (=> d!26170 (= (inv!2080 (left!1303 (left!1303 (c!25296 input!576)))) e!59455)))

(declare-fun b!107168 () Bool)

(assert (=> b!107168 (= e!59455 (inv!2084 (left!1303 (left!1303 (c!25296 input!576)))))))

(declare-fun b!107169 () Bool)

(declare-fun e!59456 () Bool)

(assert (=> b!107169 (= e!59455 e!59456)))

(declare-fun res!51429 () Bool)

(assert (=> b!107169 (= res!51429 (not ((_ is Leaf!862) (left!1303 (left!1303 (c!25296 input!576))))))))

(assert (=> b!107169 (=> res!51429 e!59456)))

(declare-fun b!107170 () Bool)

(assert (=> b!107170 (= e!59456 (inv!2085 (left!1303 (left!1303 (c!25296 input!576)))))))

(assert (= (and d!26170 c!25764) b!107168))

(assert (= (and d!26170 (not c!25764)) b!107169))

(assert (= (and b!107169 (not res!51429)) b!107170))

(declare-fun m!94926 () Bool)

(assert (=> b!107168 m!94926))

(declare-fun m!94928 () Bool)

(assert (=> b!107170 m!94928))

(assert (=> b!105897 d!26170))

(declare-fun d!26172 () Bool)

(declare-fun c!25765 () Bool)

(assert (=> d!26172 (= c!25765 ((_ is Node!540) (right!1633 (left!1303 (c!25296 input!576)))))))

(declare-fun e!59457 () Bool)

(assert (=> d!26172 (= (inv!2080 (right!1633 (left!1303 (c!25296 input!576)))) e!59457)))

(declare-fun b!107171 () Bool)

(assert (=> b!107171 (= e!59457 (inv!2084 (right!1633 (left!1303 (c!25296 input!576)))))))

(declare-fun b!107172 () Bool)

(declare-fun e!59458 () Bool)

(assert (=> b!107172 (= e!59457 e!59458)))

(declare-fun res!51430 () Bool)

(assert (=> b!107172 (= res!51430 (not ((_ is Leaf!862) (right!1633 (left!1303 (c!25296 input!576))))))))

(assert (=> b!107172 (=> res!51430 e!59458)))

(declare-fun b!107173 () Bool)

(assert (=> b!107173 (= e!59458 (inv!2085 (right!1633 (left!1303 (c!25296 input!576)))))))

(assert (= (and d!26172 c!25765) b!107171))

(assert (= (and d!26172 (not c!25765)) b!107172))

(assert (= (and b!107172 (not res!51430)) b!107173))

(declare-fun m!94930 () Bool)

(assert (=> b!107171 m!94930))

(declare-fun m!94932 () Bool)

(assert (=> b!107173 m!94932))

(assert (=> b!105897 d!26172))

(declare-fun d!26174 () Bool)

(declare-fun e!59459 () Bool)

(assert (=> d!26174 e!59459))

(declare-fun res!51431 () Bool)

(assert (=> d!26174 (=> (not res!51431) (not e!59459))))

(assert (=> d!26174 (= res!51431 (isBalanced!151 (prepend!143 (c!25298 (_1!1135 lt!29331)) (_1!1139 (v!13005 lt!29333)))))))

(declare-fun lt!30046 () BalanceConc!1086)

(assert (=> d!26174 (= lt!30046 (BalanceConc!1087 (prepend!143 (c!25298 (_1!1135 lt!29331)) (_1!1139 (v!13005 lt!29333)))))))

(assert (=> d!26174 (= (prepend!141 (_1!1135 lt!29331) (_1!1139 (v!13005 lt!29333))) lt!30046)))

(declare-fun b!107174 () Bool)

(assert (=> b!107174 (= e!59459 (= (list!724 lt!30046) (Cons!1707 (_1!1139 (v!13005 lt!29333)) (list!724 (_1!1135 lt!29331)))))))

(assert (= (and d!26174 res!51431) b!107174))

(declare-fun m!94934 () Bool)

(assert (=> d!26174 m!94934))

(assert (=> d!26174 m!94934))

(declare-fun m!94936 () Bool)

(assert (=> d!26174 m!94936))

(declare-fun m!94938 () Bool)

(assert (=> b!107174 m!94938))

(declare-fun m!94940 () Bool)

(assert (=> b!107174 m!94940))

(assert (=> b!105402 d!26174))

(declare-fun b!107175 () Bool)

(declare-fun e!59461 () tuple2!1856)

(declare-fun lt!30047 () tuple2!1856)

(declare-fun lt!30049 () Option!197)

(assert (=> b!107175 (= e!59461 (tuple2!1857 (prepend!141 (_1!1135 lt!30047) (_1!1139 (v!13005 lt!30049))) (_2!1135 lt!30047)))))

(assert (=> b!107175 (= lt!30047 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!30049))))))

(declare-fun e!59462 () Bool)

(declare-fun b!107176 () Bool)

(declare-fun lt!30048 () tuple2!1856)

(assert (=> b!107176 (= e!59462 (= (list!723 (_2!1135 lt!30048)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29333)))))))))

(declare-fun b!107177 () Bool)

(declare-fun e!59463 () Bool)

(assert (=> b!107177 (= e!59463 (not (isEmpty!794 (_1!1135 lt!30048))))))

(declare-fun b!107178 () Bool)

(assert (=> b!107178 (= e!59461 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29333))))))

(declare-fun b!107180 () Bool)

(declare-fun e!59460 () Bool)

(assert (=> b!107180 (= e!59460 e!59463)))

(declare-fun res!51432 () Bool)

(assert (=> b!107180 (= res!51432 (< (size!1513 (_2!1135 lt!30048)) (size!1513 (_2!1139 (v!13005 lt!29333)))))))

(assert (=> b!107180 (=> (not res!51432) (not e!59463))))

(declare-fun b!107181 () Bool)

(declare-fun res!51434 () Bool)

(assert (=> b!107181 (=> (not res!51434) (not e!59462))))

(assert (=> b!107181 (= res!51434 (= (list!724 (_1!1135 lt!30048)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29333)))))))))

(declare-fun b!107179 () Bool)

(assert (=> b!107179 (= e!59460 (= (list!723 (_2!1135 lt!30048)) (list!723 (_2!1139 (v!13005 lt!29333)))))))

(declare-fun d!26176 () Bool)

(assert (=> d!26176 e!59462))

(declare-fun res!51433 () Bool)

(assert (=> d!26176 (=> (not res!51433) (not e!59462))))

(assert (=> d!26176 (= res!51433 e!59460)))

(declare-fun c!25767 () Bool)

(assert (=> d!26176 (= c!25767 (> (size!1514 (_1!1135 lt!30048)) 0))))

(assert (=> d!26176 (= lt!30048 e!59461)))

(declare-fun c!25766 () Bool)

(assert (=> d!26176 (= c!25766 ((_ is Some!196) lt!30049))))

(assert (=> d!26176 (= lt!30049 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29333))))))

(assert (=> d!26176 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29333))) lt!30048)))

(assert (= (and d!26176 c!25766) b!107175))

(assert (= (and d!26176 (not c!25766)) b!107178))

(assert (= (and d!26176 c!25767) b!107180))

(assert (= (and d!26176 (not c!25767)) b!107179))

(assert (= (and b!107180 res!51432) b!107177))

(assert (= (and d!26176 res!51433) b!107181))

(assert (= (and b!107181 res!51434) b!107176))

(declare-fun m!94942 () Bool)

(assert (=> b!107175 m!94942))

(declare-fun m!94944 () Bool)

(assert (=> b!107175 m!94944))

(declare-fun m!94946 () Bool)

(assert (=> b!107181 m!94946))

(declare-fun m!94948 () Bool)

(assert (=> b!107181 m!94948))

(assert (=> b!107181 m!94948))

(declare-fun m!94950 () Bool)

(assert (=> b!107181 m!94950))

(declare-fun m!94952 () Bool)

(assert (=> b!107180 m!94952))

(declare-fun m!94954 () Bool)

(assert (=> b!107180 m!94954))

(declare-fun m!94956 () Bool)

(assert (=> b!107176 m!94956))

(assert (=> b!107176 m!94948))

(assert (=> b!107176 m!94948))

(assert (=> b!107176 m!94950))

(declare-fun m!94958 () Bool)

(assert (=> d!26176 m!94958))

(declare-fun m!94960 () Bool)

(assert (=> d!26176 m!94960))

(declare-fun m!94962 () Bool)

(assert (=> b!107177 m!94962))

(assert (=> b!107179 m!94956))

(assert (=> b!107179 m!94948))

(assert (=> b!105402 d!26176))

(declare-fun d!26178 () Bool)

(declare-fun lt!30052 () Bool)

(declare-fun content!149 (List!1715) (InoxSet String!2207))

(assert (=> d!26178 (= lt!30052 (select (content!149 Nil!1709) (tag!551 (h!7103 rules!1152))))))

(declare-fun e!59469 () Bool)

(assert (=> d!26178 (= lt!30052 e!59469)))

(declare-fun res!51439 () Bool)

(assert (=> d!26178 (=> (not res!51439) (not e!59469))))

(assert (=> d!26178 (= res!51439 ((_ is Cons!1709) Nil!1709))))

(assert (=> d!26178 (= (contains!276 Nil!1709 (tag!551 (h!7103 rules!1152))) lt!30052)))

(declare-fun b!107186 () Bool)

(declare-fun e!59468 () Bool)

(assert (=> b!107186 (= e!59469 e!59468)))

(declare-fun res!51440 () Bool)

(assert (=> b!107186 (=> res!51440 e!59468)))

(assert (=> b!107186 (= res!51440 (= (h!7106 Nil!1709) (tag!551 (h!7103 rules!1152))))))

(declare-fun b!107187 () Bool)

(assert (=> b!107187 (= e!59468 (contains!276 (t!21404 Nil!1709) (tag!551 (h!7103 rules!1152))))))

(assert (= (and d!26178 res!51439) b!107186))

(assert (= (and b!107186 (not res!51440)) b!107187))

(declare-fun m!94964 () Bool)

(assert (=> d!26178 m!94964))

(declare-fun m!94966 () Bool)

(assert (=> d!26178 m!94966))

(declare-fun m!94968 () Bool)

(assert (=> b!107187 m!94968))

(assert (=> b!105525 d!26178))

(declare-fun d!26180 () Bool)

(declare-fun lt!30053 () Int)

(assert (=> d!26180 (>= lt!30053 0)))

(declare-fun e!59470 () Int)

(assert (=> d!26180 (= lt!30053 e!59470)))

(declare-fun c!25768 () Bool)

(assert (=> d!26180 (= c!25768 ((_ is Nil!1705) lt!29550))))

(assert (=> d!26180 (= (size!1519 lt!29550) lt!30053)))

(declare-fun b!107188 () Bool)

(assert (=> b!107188 (= e!59470 0)))

(declare-fun b!107189 () Bool)

(assert (=> b!107189 (= e!59470 (+ 1 (size!1519 (t!21400 lt!29550))))))

(assert (= (and d!26180 c!25768) b!107188))

(assert (= (and d!26180 (not c!25768)) b!107189))

(declare-fun m!94970 () Bool)

(assert (=> b!107189 m!94970))

(assert (=> b!105854 d!26180))

(declare-fun d!26182 () Bool)

(declare-fun lt!30054 () Int)

(assert (=> d!26182 (>= lt!30054 0)))

(declare-fun e!59471 () Int)

(assert (=> d!26182 (= lt!30054 e!59471)))

(declare-fun c!25769 () Bool)

(assert (=> d!26182 (= c!25769 ((_ is Nil!1705) (list!723 (BalanceConc!1085 Empty!540))))))

(assert (=> d!26182 (= (size!1519 (list!723 (BalanceConc!1085 Empty!540))) lt!30054)))

(declare-fun b!107190 () Bool)

(assert (=> b!107190 (= e!59471 0)))

(declare-fun b!107191 () Bool)

(assert (=> b!107191 (= e!59471 (+ 1 (size!1519 (t!21400 (list!723 (BalanceConc!1085 Empty!540))))))))

(assert (= (and d!26182 c!25769) b!107190))

(assert (= (and d!26182 (not c!25769)) b!107191))

(declare-fun m!94972 () Bool)

(assert (=> b!107191 m!94972))

(assert (=> b!105854 d!26182))

(declare-fun d!26184 () Bool)

(declare-fun lt!30055 () Int)

(assert (=> d!26184 (>= lt!30055 0)))

(declare-fun e!59472 () Int)

(assert (=> d!26184 (= lt!30055 e!59472)))

(declare-fun c!25770 () Bool)

(assert (=> d!26184 (= c!25770 ((_ is Nil!1705) (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(assert (=> d!26184 (= (size!1519 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) lt!30055)))

(declare-fun b!107192 () Bool)

(assert (=> b!107192 (= e!59472 0)))

(declare-fun b!107193 () Bool)

(assert (=> b!107193 (= e!59472 (+ 1 (size!1519 (t!21400 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(assert (= (and d!26184 c!25770) b!107192))

(assert (= (and d!26184 (not c!25770)) b!107193))

(declare-fun m!94974 () Bool)

(assert (=> b!107193 m!94974))

(assert (=> b!105854 d!26184))

(assert (=> b!105500 d!26036))

(declare-fun d!26186 () Bool)

(assert (=> d!26186 (= (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 input!576))) (v!13006 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 input!576))))))

(assert (=> b!105500 d!26186))

(declare-fun d!26188 () Bool)

(declare-fun lt!30059 () Option!198)

(assert (=> d!26188 (= lt!30059 (maxPrefix!93 thiss!11428 rules!1152 (list!723 input!576)))))

(declare-fun e!59473 () Option!198)

(assert (=> d!26188 (= lt!30059 e!59473)))

(declare-fun c!25771 () Bool)

(assert (=> d!26188 (= c!25771 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!30057 () Unit!1124)

(declare-fun lt!30060 () Unit!1124)

(assert (=> d!26188 (= lt!30057 lt!30060)))

(assert (=> d!26188 (isPrefix!51 (list!723 input!576) (list!723 input!576))))

(assert (=> d!26188 (= lt!30060 (lemmaIsPrefixRefl!51 (list!723 input!576) (list!723 input!576)))))

(assert (=> d!26188 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!26188 (= (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 input!576)) lt!30059)))

(declare-fun bm!4714 () Bool)

(declare-fun call!4719 () Option!198)

(assert (=> bm!4714 (= call!4719 (maxPrefixOneRuleZipper!9 thiss!11428 (h!7103 rules!1152) (list!723 input!576)))))

(declare-fun b!107194 () Bool)

(assert (=> b!107194 (= e!59473 call!4719)))

(declare-fun b!107195 () Bool)

(declare-fun lt!30058 () Option!198)

(declare-fun lt!30056 () Option!198)

(assert (=> b!107195 (= e!59473 (ite (and ((_ is None!197) lt!30058) ((_ is None!197) lt!30056)) None!197 (ite ((_ is None!197) lt!30056) lt!30058 (ite ((_ is None!197) lt!30058) lt!30056 (ite (>= (size!1512 (_1!1140 (v!13006 lt!30058))) (size!1512 (_1!1140 (v!13006 lt!30056)))) lt!30058 lt!30056)))))))

(assert (=> b!107195 (= lt!30058 call!4719)))

(assert (=> b!107195 (= lt!30056 (maxPrefixZipper!17 thiss!11428 (t!21401 rules!1152) (list!723 input!576)))))

(assert (= (and d!26188 c!25771) b!107194))

(assert (= (and d!26188 (not c!25771)) b!107195))

(assert (= (or b!107194 b!107195) bm!4714))

(assert (=> d!26188 m!91458))

(assert (=> d!26188 m!91712))

(assert (=> d!26188 m!91458))

(assert (=> d!26188 m!91458))

(assert (=> d!26188 m!92376))

(assert (=> d!26188 m!91458))

(assert (=> d!26188 m!91458))

(assert (=> d!26188 m!92378))

(assert (=> d!26188 m!92158))

(assert (=> bm!4714 m!91458))

(declare-fun m!94976 () Bool)

(assert (=> bm!4714 m!94976))

(assert (=> b!107195 m!91458))

(declare-fun m!94978 () Bool)

(assert (=> b!107195 m!94978))

(assert (=> b!105500 d!26188))

(assert (=> b!105500 d!25284))

(declare-fun d!26190 () Bool)

(declare-fun lt!30061 () Int)

(assert (=> d!26190 (>= lt!30061 0)))

(declare-fun e!59474 () Int)

(assert (=> d!26190 (= lt!30061 e!59474)))

(declare-fun c!25772 () Bool)

(assert (=> d!26190 (= c!25772 ((_ is Nil!1705) (_2!1136 lt!29533)))))

(assert (=> d!26190 (= (size!1519 (_2!1136 lt!29533)) lt!30061)))

(declare-fun b!107196 () Bool)

(assert (=> b!107196 (= e!59474 0)))

(declare-fun b!107197 () Bool)

(assert (=> b!107197 (= e!59474 (+ 1 (size!1519 (t!21400 (_2!1136 lt!29533)))))))

(assert (= (and d!26190 c!25772) b!107196))

(assert (= (and d!26190 (not c!25772)) b!107197))

(declare-fun m!94980 () Bool)

(assert (=> b!107197 m!94980))

(assert (=> b!105819 d!26190))

(declare-fun d!26192 () Bool)

(declare-fun lt!30062 () Int)

(assert (=> d!26192 (>= lt!30062 0)))

(declare-fun e!59475 () Int)

(assert (=> d!26192 (= lt!30062 e!59475)))

(declare-fun c!25773 () Bool)

(assert (=> d!26192 (= c!25773 ((_ is Nil!1705) lt!29254))))

(assert (=> d!26192 (= (size!1519 lt!29254) lt!30062)))

(declare-fun b!107198 () Bool)

(assert (=> b!107198 (= e!59475 0)))

(declare-fun b!107199 () Bool)

(assert (=> b!107199 (= e!59475 (+ 1 (size!1519 (t!21400 lt!29254))))))

(assert (= (and d!26192 c!25773) b!107198))

(assert (= (and d!26192 (not c!25773)) b!107199))

(declare-fun m!94982 () Bool)

(assert (=> b!107199 m!94982))

(assert (=> b!105819 d!26192))

(declare-fun d!26194 () Bool)

(declare-fun lt!30063 () Int)

(assert (=> d!26194 (>= lt!30063 0)))

(declare-fun e!59476 () Int)

(assert (=> d!26194 (= lt!30063 e!59476)))

(declare-fun c!25774 () Bool)

(assert (=> d!26194 (= c!25774 ((_ is Nil!1707) (t!21402 (list!724 (_1!1135 lt!29080)))))))

(assert (=> d!26194 (= (size!1521 (t!21402 (list!724 (_1!1135 lt!29080)))) lt!30063)))

(declare-fun b!107200 () Bool)

(assert (=> b!107200 (= e!59476 0)))

(declare-fun b!107201 () Bool)

(assert (=> b!107201 (= e!59476 (+ 1 (size!1521 (t!21402 (t!21402 (list!724 (_1!1135 lt!29080)))))))))

(assert (= (and d!26194 c!25774) b!107200))

(assert (= (and d!26194 (not c!25774)) b!107201))

(declare-fun m!94984 () Bool)

(assert (=> b!107201 m!94984))

(assert (=> b!105879 d!26194))

(declare-fun d!26196 () Bool)

(assert (=> d!26196 (= (list!723 (_2!1135 lt!29498)) (list!727 (c!25296 (_2!1135 lt!29498))))))

(declare-fun bs!10288 () Bool)

(assert (= bs!10288 d!26196))

(declare-fun m!94986 () Bool)

(assert (=> bs!10288 m!94986))

(assert (=> b!105777 d!26196))

(assert (=> b!105777 d!25462))

(assert (=> b!105777 d!25326))

(declare-fun d!26198 () Bool)

(declare-fun lt!30064 () Int)

(assert (=> d!26198 (>= lt!30064 0)))

(declare-fun e!59477 () Int)

(assert (=> d!26198 (= lt!30064 e!59477)))

(declare-fun c!25775 () Bool)

(assert (=> d!26198 (= c!25775 ((_ is Nil!1705) (t!21400 (list!723 (_2!1135 lt!29080)))))))

(assert (=> d!26198 (= (size!1519 (t!21400 (list!723 (_2!1135 lt!29080)))) lt!30064)))

(declare-fun b!107202 () Bool)

(assert (=> b!107202 (= e!59477 0)))

(declare-fun b!107203 () Bool)

(assert (=> b!107203 (= e!59477 (+ 1 (size!1519 (t!21400 (t!21400 (list!723 (_2!1135 lt!29080)))))))))

(assert (= (and d!26198 c!25775) b!107202))

(assert (= (and d!26198 (not c!25775)) b!107203))

(declare-fun m!94988 () Bool)

(assert (=> b!107203 m!94988))

(assert (=> b!105582 d!26198))

(declare-fun b!107207 () Bool)

(declare-fun e!59478 () Bool)

(declare-fun lt!30065 () List!1711)

(assert (=> b!107207 (= e!59478 (or (not (= (list!727 (right!1633 (c!25296 input!576))) Nil!1705)) (= lt!30065 (list!727 (left!1303 (c!25296 input!576))))))))

(declare-fun b!107205 () Bool)

(declare-fun e!59479 () List!1711)

(assert (=> b!107205 (= e!59479 (Cons!1705 (h!7102 (list!727 (left!1303 (c!25296 input!576)))) (++!283 (t!21400 (list!727 (left!1303 (c!25296 input!576)))) (list!727 (right!1633 (c!25296 input!576))))))))

(declare-fun d!26200 () Bool)

(assert (=> d!26200 e!59478))

(declare-fun res!51442 () Bool)

(assert (=> d!26200 (=> (not res!51442) (not e!59478))))

(assert (=> d!26200 (= res!51442 (= (content!146 lt!30065) ((_ map or) (content!146 (list!727 (left!1303 (c!25296 input!576)))) (content!146 (list!727 (right!1633 (c!25296 input!576)))))))))

(assert (=> d!26200 (= lt!30065 e!59479)))

(declare-fun c!25776 () Bool)

(assert (=> d!26200 (= c!25776 ((_ is Nil!1705) (list!727 (left!1303 (c!25296 input!576)))))))

(assert (=> d!26200 (= (++!283 (list!727 (left!1303 (c!25296 input!576))) (list!727 (right!1633 (c!25296 input!576)))) lt!30065)))

(declare-fun b!107204 () Bool)

(assert (=> b!107204 (= e!59479 (list!727 (right!1633 (c!25296 input!576))))))

(declare-fun b!107206 () Bool)

(declare-fun res!51441 () Bool)

(assert (=> b!107206 (=> (not res!51441) (not e!59478))))

(assert (=> b!107206 (= res!51441 (= (size!1519 lt!30065) (+ (size!1519 (list!727 (left!1303 (c!25296 input!576)))) (size!1519 (list!727 (right!1633 (c!25296 input!576)))))))))

(assert (= (and d!26200 c!25776) b!107204))

(assert (= (and d!26200 (not c!25776)) b!107205))

(assert (= (and d!26200 res!51442) b!107206))

(assert (= (and b!107206 res!51441) b!107207))

(assert (=> b!107205 m!92444))

(declare-fun m!94990 () Bool)

(assert (=> b!107205 m!94990))

(declare-fun m!94992 () Bool)

(assert (=> d!26200 m!94992))

(assert (=> d!26200 m!92442))

(declare-fun m!94994 () Bool)

(assert (=> d!26200 m!94994))

(assert (=> d!26200 m!92444))

(declare-fun m!94996 () Bool)

(assert (=> d!26200 m!94996))

(declare-fun m!94998 () Bool)

(assert (=> b!107206 m!94998))

(assert (=> b!107206 m!92442))

(declare-fun m!95000 () Bool)

(assert (=> b!107206 m!95000))

(assert (=> b!107206 m!92444))

(declare-fun m!95002 () Bool)

(assert (=> b!107206 m!95002))

(assert (=> b!105761 d!26200))

(declare-fun b!107211 () Bool)

(declare-fun e!59481 () List!1711)

(assert (=> b!107211 (= e!59481 (++!283 (list!727 (left!1303 (left!1303 (c!25296 input!576)))) (list!727 (right!1633 (left!1303 (c!25296 input!576))))))))

(declare-fun d!26202 () Bool)

(declare-fun c!25777 () Bool)

(assert (=> d!26202 (= c!25777 ((_ is Empty!540) (left!1303 (c!25296 input!576))))))

(declare-fun e!59480 () List!1711)

(assert (=> d!26202 (= (list!727 (left!1303 (c!25296 input!576))) e!59480)))

(declare-fun b!107209 () Bool)

(assert (=> b!107209 (= e!59480 e!59481)))

(declare-fun c!25778 () Bool)

(assert (=> b!107209 (= c!25778 ((_ is Leaf!862) (left!1303 (c!25296 input!576))))))

(declare-fun b!107210 () Bool)

(assert (=> b!107210 (= e!59481 (list!731 (xs!3131 (left!1303 (c!25296 input!576)))))))

(declare-fun b!107208 () Bool)

(assert (=> b!107208 (= e!59480 Nil!1705)))

(assert (= (and d!26202 c!25777) b!107208))

(assert (= (and d!26202 (not c!25777)) b!107209))

(assert (= (and b!107209 c!25778) b!107210))

(assert (= (and b!107209 (not c!25778)) b!107211))

(declare-fun m!95004 () Bool)

(assert (=> b!107211 m!95004))

(declare-fun m!95006 () Bool)

(assert (=> b!107211 m!95006))

(assert (=> b!107211 m!95004))

(assert (=> b!107211 m!95006))

(declare-fun m!95008 () Bool)

(assert (=> b!107211 m!95008))

(declare-fun m!95010 () Bool)

(assert (=> b!107210 m!95010))

(assert (=> b!105761 d!26202))

(declare-fun b!107215 () Bool)

(declare-fun e!59483 () List!1711)

(assert (=> b!107215 (= e!59483 (++!283 (list!727 (left!1303 (right!1633 (c!25296 input!576)))) (list!727 (right!1633 (right!1633 (c!25296 input!576))))))))

(declare-fun d!26204 () Bool)

(declare-fun c!25779 () Bool)

(assert (=> d!26204 (= c!25779 ((_ is Empty!540) (right!1633 (c!25296 input!576))))))

(declare-fun e!59482 () List!1711)

(assert (=> d!26204 (= (list!727 (right!1633 (c!25296 input!576))) e!59482)))

(declare-fun b!107213 () Bool)

(assert (=> b!107213 (= e!59482 e!59483)))

(declare-fun c!25780 () Bool)

(assert (=> b!107213 (= c!25780 ((_ is Leaf!862) (right!1633 (c!25296 input!576))))))

(declare-fun b!107214 () Bool)

(assert (=> b!107214 (= e!59483 (list!731 (xs!3131 (right!1633 (c!25296 input!576)))))))

(declare-fun b!107212 () Bool)

(assert (=> b!107212 (= e!59482 Nil!1705)))

(assert (= (and d!26204 c!25779) b!107212))

(assert (= (and d!26204 (not c!25779)) b!107213))

(assert (= (and b!107213 c!25780) b!107214))

(assert (= (and b!107213 (not c!25780)) b!107215))

(declare-fun m!95012 () Bool)

(assert (=> b!107215 m!95012))

(declare-fun m!95014 () Bool)

(assert (=> b!107215 m!95014))

(assert (=> b!107215 m!95012))

(assert (=> b!107215 m!95014))

(declare-fun m!95016 () Bool)

(assert (=> b!107215 m!95016))

(declare-fun m!95018 () Bool)

(assert (=> b!107214 m!95018))

(assert (=> b!105761 d!26204))

(declare-fun d!26206 () Bool)

(declare-fun lt!30066 () Bool)

(assert (=> d!26206 (= lt!30066 (isEmpty!797 (list!724 (_1!1135 lt!29570))))))

(assert (=> d!26206 (= lt!30066 (isEmpty!798 (c!25298 (_1!1135 lt!29570))))))

(assert (=> d!26206 (= (isEmpty!794 (_1!1135 lt!29570)) lt!30066)))

(declare-fun bs!10289 () Bool)

(assert (= bs!10289 d!26206))

(assert (=> bs!10289 m!92782))

(assert (=> bs!10289 m!92782))

(declare-fun m!95020 () Bool)

(assert (=> bs!10289 m!95020))

(declare-fun m!95022 () Bool)

(assert (=> bs!10289 m!95022))

(assert (=> b!105882 d!26206))

(declare-fun d!26208 () Bool)

(declare-fun lt!30069 () Bool)

(assert (=> d!26208 (= lt!30069 (isEmpty!807 (list!727 (left!1303 (c!25296 input!576)))))))

(assert (=> d!26208 (= lt!30069 (= (size!1520 (left!1303 (c!25296 input!576))) 0))))

(assert (=> d!26208 (= (isEmpty!800 (left!1303 (c!25296 input!576))) lt!30069)))

(declare-fun bs!10290 () Bool)

(assert (= bs!10290 d!26208))

(assert (=> bs!10290 m!92442))

(assert (=> bs!10290 m!92442))

(declare-fun m!95024 () Bool)

(assert (=> bs!10290 m!95024))

(assert (=> bs!10290 m!92808))

(assert (=> b!105519 d!26208))

(declare-fun d!26210 () Bool)

(assert (=> d!26210 (= (list!723 (_2!1135 lt!29548)) (list!727 (c!25296 (_2!1135 lt!29548))))))

(declare-fun bs!10291 () Bool)

(assert (= bs!10291 d!26210))

(declare-fun m!95026 () Bool)

(assert (=> bs!10291 m!95026))

(assert (=> b!105849 d!26210))

(assert (=> b!105849 d!25500))

(declare-fun d!26212 () Bool)

(declare-fun lt!30070 () Int)

(assert (=> d!26212 (= lt!30070 (size!1519 (list!727 (left!1303 (c!25296 input!576)))))))

(assert (=> d!26212 (= lt!30070 (ite ((_ is Empty!540) (left!1303 (c!25296 input!576))) 0 (ite ((_ is Leaf!862) (left!1303 (c!25296 input!576))) (csize!1311 (left!1303 (c!25296 input!576))) (csize!1310 (left!1303 (c!25296 input!576))))))))

(assert (=> d!26212 (= (size!1520 (left!1303 (c!25296 input!576))) lt!30070)))

(declare-fun bs!10292 () Bool)

(assert (= bs!10292 d!26212))

(assert (=> bs!10292 m!92442))

(assert (=> bs!10292 m!92442))

(assert (=> bs!10292 m!95000))

(assert (=> d!25548 d!26212))

(declare-fun d!26214 () Bool)

(declare-fun lt!30071 () Int)

(assert (=> d!26214 (= lt!30071 (size!1519 (list!727 (right!1633 (c!25296 input!576)))))))

(assert (=> d!26214 (= lt!30071 (ite ((_ is Empty!540) (right!1633 (c!25296 input!576))) 0 (ite ((_ is Leaf!862) (right!1633 (c!25296 input!576))) (csize!1311 (right!1633 (c!25296 input!576))) (csize!1310 (right!1633 (c!25296 input!576))))))))

(assert (=> d!26214 (= (size!1520 (right!1633 (c!25296 input!576))) lt!30071)))

(declare-fun bs!10293 () Bool)

(assert (= bs!10293 d!26214))

(assert (=> bs!10293 m!92444))

(assert (=> bs!10293 m!92444))

(assert (=> bs!10293 m!95002))

(assert (=> d!25548 d!26214))

(declare-fun d!26216 () Bool)

(declare-fun e!59494 () Bool)

(assert (=> d!26216 e!59494))

(declare-fun res!51457 () Bool)

(assert (=> d!26216 (=> res!51457 e!59494)))

(declare-fun lt!30083 () Option!198)

(assert (=> d!26216 (= res!51457 (isEmpty!801 lt!30083))))

(declare-fun e!59492 () Option!198)

(assert (=> d!26216 (= lt!30083 e!59492)))

(declare-fun c!25783 () Bool)

(declare-datatypes ((tuple2!1872 0))(
  ( (tuple2!1873 (_1!1143 List!1711) (_2!1143 List!1711)) )
))
(declare-fun lt!30085 () tuple2!1872)

(assert (=> d!26216 (= c!25783 (isEmpty!807 (_1!1143 lt!30085)))))

(declare-fun findLongestMatch!29 (Regex!441 List!1711) tuple2!1872)

(assert (=> d!26216 (= lt!30085 (findLongestMatch!29 (regex!373 (h!7103 rules!1152)) (list!723 input!576)))))

(assert (=> d!26216 (ruleValid!48 thiss!11428 (h!7103 rules!1152))))

(assert (=> d!26216 (= (maxPrefixOneRule!44 thiss!11428 (h!7103 rules!1152) (list!723 input!576)) lt!30083)))

(declare-fun b!107234 () Bool)

(assert (=> b!107234 (= e!59492 (Some!197 (tuple2!1867 (Token!491 (apply!268 (transformation!373 (h!7103 rules!1152)) (seqFromList!204 (_1!1143 lt!30085))) (h!7103 rules!1152) (size!1513 (seqFromList!204 (_1!1143 lt!30085))) (_1!1143 lt!30085)) (_2!1143 lt!30085))))))

(declare-fun lt!30084 () Unit!1124)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!34 (Regex!441 List!1711) Unit!1124)

(assert (=> b!107234 (= lt!30084 (longestMatchIsAcceptedByMatchOrIsEmpty!34 (regex!373 (h!7103 rules!1152)) (list!723 input!576)))))

(declare-fun res!51463 () Bool)

(declare-fun findLongestMatchInner!33 (Regex!441 List!1711 Int List!1711 List!1711 Int) tuple2!1872)

(assert (=> b!107234 (= res!51463 (isEmpty!807 (_1!1143 (findLongestMatchInner!33 (regex!373 (h!7103 rules!1152)) Nil!1705 (size!1519 Nil!1705) (list!723 input!576) (list!723 input!576) (size!1519 (list!723 input!576))))))))

(declare-fun e!59495 () Bool)

(assert (=> b!107234 (=> res!51463 e!59495)))

(assert (=> b!107234 e!59495))

(declare-fun lt!30082 () Unit!1124)

(assert (=> b!107234 (= lt!30082 lt!30084)))

(declare-fun lt!30086 () Unit!1124)

(declare-fun lemmaSemiInverse!29 (TokenValueInjection!550 BalanceConc!1084) Unit!1124)

(assert (=> b!107234 (= lt!30086 (lemmaSemiInverse!29 (transformation!373 (h!7103 rules!1152)) (seqFromList!204 (_1!1143 lt!30085))))))

(declare-fun b!107235 () Bool)

(assert (=> b!107235 (= e!59492 None!197)))

(declare-fun b!107236 () Bool)

(declare-fun res!51462 () Bool)

(declare-fun e!59493 () Bool)

(assert (=> b!107236 (=> (not res!51462) (not e!59493))))

(assert (=> b!107236 (= res!51462 (= (rule!876 (_1!1140 (get!438 lt!30083))) (h!7103 rules!1152)))))

(declare-fun b!107237 () Bool)

(declare-fun res!51458 () Bool)

(assert (=> b!107237 (=> (not res!51458) (not e!59493))))

(assert (=> b!107237 (= res!51458 (= (++!283 (list!723 (charsOf!88 (_1!1140 (get!438 lt!30083)))) (_2!1140 (get!438 lt!30083))) (list!723 input!576)))))

(declare-fun b!107238 () Bool)

(declare-fun res!51459 () Bool)

(assert (=> b!107238 (=> (not res!51459) (not e!59493))))

(assert (=> b!107238 (= res!51459 (< (size!1519 (_2!1140 (get!438 lt!30083))) (size!1519 (list!723 input!576))))))

(declare-fun b!107239 () Bool)

(assert (=> b!107239 (= e!59493 (= (size!1512 (_1!1140 (get!438 lt!30083))) (size!1519 (originalCharacters!416 (_1!1140 (get!438 lt!30083))))))))

(declare-fun b!107240 () Bool)

(declare-fun res!51461 () Bool)

(assert (=> b!107240 (=> (not res!51461) (not e!59493))))

(assert (=> b!107240 (= res!51461 (= (value!13518 (_1!1140 (get!438 lt!30083))) (apply!268 (transformation!373 (rule!876 (_1!1140 (get!438 lt!30083)))) (seqFromList!204 (originalCharacters!416 (_1!1140 (get!438 lt!30083)))))))))

(declare-fun b!107241 () Bool)

(assert (=> b!107241 (= e!59495 (matchR!48 (regex!373 (h!7103 rules!1152)) (_1!1143 (findLongestMatchInner!33 (regex!373 (h!7103 rules!1152)) Nil!1705 (size!1519 Nil!1705) (list!723 input!576) (list!723 input!576) (size!1519 (list!723 input!576))))))))

(declare-fun b!107242 () Bool)

(assert (=> b!107242 (= e!59494 e!59493)))

(declare-fun res!51460 () Bool)

(assert (=> b!107242 (=> (not res!51460) (not e!59493))))

(assert (=> b!107242 (= res!51460 (matchR!48 (regex!373 (h!7103 rules!1152)) (list!723 (charsOf!88 (_1!1140 (get!438 lt!30083))))))))

(assert (= (and d!26216 c!25783) b!107235))

(assert (= (and d!26216 (not c!25783)) b!107234))

(assert (= (and b!107234 (not res!51463)) b!107241))

(assert (= (and d!26216 (not res!51457)) b!107242))

(assert (= (and b!107242 res!51460) b!107237))

(assert (= (and b!107237 res!51458) b!107238))

(assert (= (and b!107238 res!51459) b!107236))

(assert (= (and b!107236 res!51462) b!107240))

(assert (= (and b!107240 res!51461) b!107239))

(assert (=> b!107234 m!91458))

(declare-fun m!95028 () Bool)

(assert (=> b!107234 m!95028))

(declare-fun m!95030 () Bool)

(assert (=> b!107234 m!95030))

(declare-fun m!95032 () Bool)

(assert (=> b!107234 m!95032))

(assert (=> b!107234 m!91458))

(assert (=> b!107234 m!91482))

(assert (=> b!107234 m!95030))

(declare-fun m!95034 () Bool)

(assert (=> b!107234 m!95034))

(declare-fun m!95036 () Bool)

(assert (=> b!107234 m!95036))

(assert (=> b!107234 m!95036))

(assert (=> b!107234 m!91458))

(assert (=> b!107234 m!91458))

(assert (=> b!107234 m!91482))

(declare-fun m!95038 () Bool)

(assert (=> b!107234 m!95038))

(declare-fun m!95040 () Bool)

(assert (=> b!107234 m!95040))

(assert (=> b!107234 m!95030))

(declare-fun m!95042 () Bool)

(assert (=> b!107234 m!95042))

(assert (=> b!107234 m!95030))

(declare-fun m!95044 () Bool)

(assert (=> b!107242 m!95044))

(declare-fun m!95046 () Bool)

(assert (=> b!107242 m!95046))

(assert (=> b!107242 m!95046))

(declare-fun m!95048 () Bool)

(assert (=> b!107242 m!95048))

(assert (=> b!107242 m!95048))

(declare-fun m!95050 () Bool)

(assert (=> b!107242 m!95050))

(assert (=> b!107238 m!95044))

(declare-fun m!95052 () Bool)

(assert (=> b!107238 m!95052))

(assert (=> b!107238 m!91458))

(assert (=> b!107238 m!91482))

(assert (=> b!107237 m!95044))

(assert (=> b!107237 m!95046))

(assert (=> b!107237 m!95046))

(assert (=> b!107237 m!95048))

(assert (=> b!107237 m!95048))

(declare-fun m!95054 () Bool)

(assert (=> b!107237 m!95054))

(assert (=> b!107240 m!95044))

(declare-fun m!95056 () Bool)

(assert (=> b!107240 m!95056))

(assert (=> b!107240 m!95056))

(declare-fun m!95058 () Bool)

(assert (=> b!107240 m!95058))

(assert (=> b!107241 m!95036))

(assert (=> b!107241 m!91458))

(assert (=> b!107241 m!91482))

(assert (=> b!107241 m!95036))

(assert (=> b!107241 m!91458))

(assert (=> b!107241 m!91458))

(assert (=> b!107241 m!91482))

(assert (=> b!107241 m!95038))

(declare-fun m!95060 () Bool)

(assert (=> b!107241 m!95060))

(declare-fun m!95062 () Bool)

(assert (=> d!26216 m!95062))

(declare-fun m!95064 () Bool)

(assert (=> d!26216 m!95064))

(assert (=> d!26216 m!91458))

(declare-fun m!95066 () Bool)

(assert (=> d!26216 m!95066))

(assert (=> d!26216 m!94866))

(assert (=> b!107236 m!95044))

(assert (=> b!107239 m!95044))

(declare-fun m!95068 () Bool)

(assert (=> b!107239 m!95068))

(assert (=> bm!4554 d!26216))

(declare-fun d!26218 () Bool)

(declare-fun lt!30087 () Int)

(assert (=> d!26218 (= lt!30087 (size!1519 (list!723 (_2!1135 lt!29332))))))

(assert (=> d!26218 (= lt!30087 (size!1520 (c!25296 (_2!1135 lt!29332))))))

(assert (=> d!26218 (= (size!1513 (_2!1135 lt!29332)) lt!30087)))

(declare-fun bs!10294 () Bool)

(assert (= bs!10294 d!26218))

(assert (=> bs!10294 m!91918))

(assert (=> bs!10294 m!91918))

(declare-fun m!95070 () Bool)

(assert (=> bs!10294 m!95070))

(declare-fun m!95072 () Bool)

(assert (=> bs!10294 m!95072))

(assert (=> b!105407 d!26218))

(assert (=> b!105407 d!25232))

(declare-fun d!26220 () Bool)

(declare-fun e!59496 () Bool)

(assert (=> d!26220 e!59496))

(declare-fun res!51464 () Bool)

(assert (=> d!26220 (=> (not res!51464) (not e!59496))))

(assert (=> d!26220 (= res!51464 (isBalanced!151 (prepend!143 (c!25298 (_1!1135 lt!29547)) (_1!1139 (v!13005 lt!29549)))))))

(declare-fun lt!30088 () BalanceConc!1086)

(assert (=> d!26220 (= lt!30088 (BalanceConc!1087 (prepend!143 (c!25298 (_1!1135 lt!29547)) (_1!1139 (v!13005 lt!29549)))))))

(assert (=> d!26220 (= (prepend!141 (_1!1135 lt!29547) (_1!1139 (v!13005 lt!29549))) lt!30088)))

(declare-fun b!107243 () Bool)

(assert (=> b!107243 (= e!59496 (= (list!724 lt!30088) (Cons!1707 (_1!1139 (v!13005 lt!29549)) (list!724 (_1!1135 lt!29547)))))))

(assert (= (and d!26220 res!51464) b!107243))

(declare-fun m!95074 () Bool)

(assert (=> d!26220 m!95074))

(assert (=> d!26220 m!95074))

(declare-fun m!95076 () Bool)

(assert (=> d!26220 m!95076))

(declare-fun m!95078 () Bool)

(assert (=> b!107243 m!95078))

(declare-fun m!95080 () Bool)

(assert (=> b!107243 m!95080))

(assert (=> b!105845 d!26220))

(declare-fun b!107244 () Bool)

(declare-fun e!59498 () tuple2!1856)

(declare-fun lt!30089 () tuple2!1856)

(declare-fun lt!30091 () Option!197)

(assert (=> b!107244 (= e!59498 (tuple2!1857 (prepend!141 (_1!1135 lt!30089) (_1!1139 (v!13005 lt!30091))) (_2!1135 lt!30089)))))

(assert (=> b!107244 (= lt!30089 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!30091))))))

(declare-fun b!107245 () Bool)

(declare-fun e!59499 () Bool)

(declare-fun lt!30090 () tuple2!1856)

(assert (=> b!107245 (= e!59499 (= (list!723 (_2!1135 lt!30090)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29549)))))))))

(declare-fun b!107246 () Bool)

(declare-fun e!59500 () Bool)

(assert (=> b!107246 (= e!59500 (not (isEmpty!794 (_1!1135 lt!30090))))))

(declare-fun b!107247 () Bool)

(assert (=> b!107247 (= e!59498 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29549))))))

(declare-fun b!107249 () Bool)

(declare-fun e!59497 () Bool)

(assert (=> b!107249 (= e!59497 e!59500)))

(declare-fun res!51465 () Bool)

(assert (=> b!107249 (= res!51465 (< (size!1513 (_2!1135 lt!30090)) (size!1513 (_2!1139 (v!13005 lt!29549)))))))

(assert (=> b!107249 (=> (not res!51465) (not e!59500))))

(declare-fun b!107250 () Bool)

(declare-fun res!51467 () Bool)

(assert (=> b!107250 (=> (not res!51467) (not e!59499))))

(assert (=> b!107250 (= res!51467 (= (list!724 (_1!1135 lt!30090)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29549)))))))))

(declare-fun b!107248 () Bool)

(assert (=> b!107248 (= e!59497 (= (list!723 (_2!1135 lt!30090)) (list!723 (_2!1139 (v!13005 lt!29549)))))))

(declare-fun d!26222 () Bool)

(assert (=> d!26222 e!59499))

(declare-fun res!51466 () Bool)

(assert (=> d!26222 (=> (not res!51466) (not e!59499))))

(assert (=> d!26222 (= res!51466 e!59497)))

(declare-fun c!25785 () Bool)

(assert (=> d!26222 (= c!25785 (> (size!1514 (_1!1135 lt!30090)) 0))))

(assert (=> d!26222 (= lt!30090 e!59498)))

(declare-fun c!25784 () Bool)

(assert (=> d!26222 (= c!25784 ((_ is Some!196) lt!30091))))

(assert (=> d!26222 (= lt!30091 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29549))))))

(assert (=> d!26222 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29549))) lt!30090)))

(assert (= (and d!26222 c!25784) b!107244))

(assert (= (and d!26222 (not c!25784)) b!107247))

(assert (= (and d!26222 c!25785) b!107249))

(assert (= (and d!26222 (not c!25785)) b!107248))

(assert (= (and b!107249 res!51465) b!107246))

(assert (= (and d!26222 res!51466) b!107250))

(assert (= (and b!107250 res!51467) b!107245))

(declare-fun m!95082 () Bool)

(assert (=> b!107244 m!95082))

(declare-fun m!95084 () Bool)

(assert (=> b!107244 m!95084))

(declare-fun m!95086 () Bool)

(assert (=> b!107250 m!95086))

(declare-fun m!95088 () Bool)

(assert (=> b!107250 m!95088))

(assert (=> b!107250 m!95088))

(declare-fun m!95090 () Bool)

(assert (=> b!107250 m!95090))

(declare-fun m!95092 () Bool)

(assert (=> b!107249 m!95092))

(declare-fun m!95094 () Bool)

(assert (=> b!107249 m!95094))

(declare-fun m!95096 () Bool)

(assert (=> b!107245 m!95096))

(assert (=> b!107245 m!95088))

(assert (=> b!107245 m!95088))

(assert (=> b!107245 m!95090))

(declare-fun m!95098 () Bool)

(assert (=> d!26222 m!95098))

(declare-fun m!95100 () Bool)

(assert (=> d!26222 m!95100))

(declare-fun m!95102 () Bool)

(assert (=> b!107246 m!95102))

(assert (=> b!107248 m!95096))

(assert (=> b!107248 m!95088))

(assert (=> b!105845 d!26222))

(declare-fun d!26224 () Bool)

(assert (=> d!26224 (= (list!723 (_2!1135 lt!29540)) (list!727 (c!25296 (_2!1135 lt!29540))))))

(declare-fun bs!10295 () Bool)

(assert (= bs!10295 d!26224))

(declare-fun m!95104 () Bool)

(assert (=> bs!10295 m!95104))

(assert (=> b!105831 d!26224))

(declare-fun d!26226 () Bool)

(declare-fun e!59502 () Bool)

(assert (=> d!26226 e!59502))

(declare-fun c!25787 () Bool)

(declare-fun lt!30093 () tuple2!1858)

(assert (=> d!26226 (= c!25787 (> (size!1521 (_1!1136 lt!30093)) 0))))

(declare-fun e!59503 () tuple2!1858)

(assert (=> d!26226 (= lt!30093 e!59503)))

(declare-fun c!25786 () Bool)

(declare-fun lt!30094 () Option!198)

(assert (=> d!26226 (= c!25786 ((_ is Some!197) lt!30094))))

(assert (=> d!26226 (= lt!30094 (maxPrefix!93 thiss!11428 rules!1152 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(assert (=> d!26226 (= (lexList!83 thiss!11428 rules!1152 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) lt!30093)))

(declare-fun b!107251 () Bool)

(declare-fun lt!30092 () tuple2!1858)

(assert (=> b!107251 (= e!59503 (tuple2!1859 (Cons!1707 (_1!1140 (v!13006 lt!30094)) (_1!1136 lt!30092)) (_2!1136 lt!30092)))))

(assert (=> b!107251 (= lt!30092 (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!30094))))))

(declare-fun b!107252 () Bool)

(assert (=> b!107252 (= e!59503 (tuple2!1859 Nil!1707 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun b!107253 () Bool)

(declare-fun e!59501 () Bool)

(assert (=> b!107253 (= e!59501 (not (isEmpty!797 (_1!1136 lt!30093))))))

(declare-fun b!107254 () Bool)

(assert (=> b!107254 (= e!59502 e!59501)))

(declare-fun res!51468 () Bool)

(assert (=> b!107254 (= res!51468 (< (size!1519 (_2!1136 lt!30093)) (size!1519 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(assert (=> b!107254 (=> (not res!51468) (not e!59501))))

(declare-fun b!107255 () Bool)

(assert (=> b!107255 (= e!59502 (= (_2!1136 lt!30093) (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(assert (= (and d!26226 c!25786) b!107251))

(assert (= (and d!26226 (not c!25786)) b!107252))

(assert (= (and d!26226 c!25787) b!107254))

(assert (= (and d!26226 (not c!25787)) b!107255))

(assert (= (and b!107254 res!51468) b!107253))

(declare-fun m!95106 () Bool)

(assert (=> d!26226 m!95106))

(assert (=> d!26226 m!92480))

(declare-fun m!95108 () Bool)

(assert (=> d!26226 m!95108))

(declare-fun m!95110 () Bool)

(assert (=> b!107251 m!95110))

(declare-fun m!95112 () Bool)

(assert (=> b!107253 m!95112))

(declare-fun m!95114 () Bool)

(assert (=> b!107254 m!95114))

(assert (=> b!107254 m!92480))

(declare-fun m!95116 () Bool)

(assert (=> b!107254 m!95116))

(assert (=> b!105831 d!26226))

(declare-fun d!26228 () Bool)

(assert (=> d!26228 (= (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (list!727 (c!25296 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun bs!10296 () Bool)

(assert (= bs!10296 d!26228))

(declare-fun m!95118 () Bool)

(assert (=> bs!10296 m!95118))

(assert (=> b!105831 d!26228))

(declare-fun d!26230 () Bool)

(assert (=> d!26230 (= (list!723 (_2!1135 lt!29560)) (list!727 (c!25296 (_2!1135 lt!29560))))))

(declare-fun bs!10297 () Bool)

(assert (= bs!10297 d!26230))

(declare-fun m!95120 () Bool)

(assert (=> bs!10297 m!95120))

(assert (=> b!105872 d!26230))

(declare-fun d!26232 () Bool)

(assert (=> d!26232 (= (list!723 (_2!1139 (v!13005 lt!29240))) (list!727 (c!25296 (_2!1139 (v!13005 lt!29240)))))))

(declare-fun bs!10298 () Bool)

(assert (= bs!10298 d!26232))

(declare-fun m!95122 () Bool)

(assert (=> bs!10298 m!95122))

(assert (=> b!105872 d!26232))

(assert (=> d!25342 d!26188))

(declare-fun b!107259 () Bool)

(declare-fun e!59505 () Bool)

(assert (=> b!107259 (= e!59505 (>= (size!1519 lt!29406) (size!1519 lt!29407)))))

(declare-fun b!107257 () Bool)

(declare-fun res!51469 () Bool)

(declare-fun e!59506 () Bool)

(assert (=> b!107257 (=> (not res!51469) (not e!59506))))

(assert (=> b!107257 (= res!51469 (= (head!464 lt!29407) (head!464 lt!29406)))))

(declare-fun b!107258 () Bool)

(assert (=> b!107258 (= e!59506 (isPrefix!51 (tail!176 lt!29407) (tail!176 lt!29406)))))

(declare-fun d!26234 () Bool)

(assert (=> d!26234 e!59505))

(declare-fun res!51472 () Bool)

(assert (=> d!26234 (=> res!51472 e!59505)))

(declare-fun lt!30095 () Bool)

(assert (=> d!26234 (= res!51472 (not lt!30095))))

(declare-fun e!59504 () Bool)

(assert (=> d!26234 (= lt!30095 e!59504)))

(declare-fun res!51471 () Bool)

(assert (=> d!26234 (=> res!51471 e!59504)))

(assert (=> d!26234 (= res!51471 ((_ is Nil!1705) lt!29407))))

(assert (=> d!26234 (= (isPrefix!51 lt!29407 lt!29406) lt!30095)))

(declare-fun b!107256 () Bool)

(assert (=> b!107256 (= e!59504 e!59506)))

(declare-fun res!51470 () Bool)

(assert (=> b!107256 (=> (not res!51470) (not e!59506))))

(assert (=> b!107256 (= res!51470 (not ((_ is Nil!1705) lt!29406)))))

(assert (= (and d!26234 (not res!51471)) b!107256))

(assert (= (and b!107256 res!51470) b!107257))

(assert (= (and b!107257 res!51469) b!107258))

(assert (= (and d!26234 (not res!51472)) b!107259))

(declare-fun m!95124 () Bool)

(assert (=> b!107259 m!95124))

(declare-fun m!95126 () Bool)

(assert (=> b!107259 m!95126))

(declare-fun m!95128 () Bool)

(assert (=> b!107257 m!95128))

(declare-fun m!95130 () Bool)

(assert (=> b!107257 m!95130))

(declare-fun m!95132 () Bool)

(assert (=> b!107258 m!95132))

(declare-fun m!95134 () Bool)

(assert (=> b!107258 m!95134))

(assert (=> b!107258 m!95132))

(assert (=> b!107258 m!95134))

(declare-fun m!95136 () Bool)

(assert (=> b!107258 m!95136))

(assert (=> d!25342 d!26234))

(assert (=> d!25342 d!25284))

(declare-fun d!26236 () Bool)

(assert (=> d!26236 (isPrefix!51 lt!29407 lt!29406)))

(declare-fun lt!30096 () Unit!1124)

(assert (=> d!26236 (= lt!30096 (choose!1407 lt!29407 lt!29406))))

(assert (=> d!26236 (= (lemmaIsPrefixRefl!51 lt!29407 lt!29406) lt!30096)))

(declare-fun bs!10299 () Bool)

(assert (= bs!10299 d!26236))

(assert (=> bs!10299 m!92162))

(declare-fun m!95138 () Bool)

(assert (=> bs!10299 m!95138))

(assert (=> d!25342 d!26236))

(declare-fun d!26238 () Bool)

(assert (=> d!26238 (= (isDefined!72 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 input!576))) (not (isEmpty!801 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 input!576)))))))

(declare-fun bs!10300 () Bool)

(assert (= bs!10300 d!26238))

(assert (=> bs!10300 m!92148))

(declare-fun m!95140 () Bool)

(assert (=> bs!10300 m!95140))

(assert (=> d!25342 d!26238))

(declare-fun d!26240 () Bool)

(assert (=> d!26240 (= (isDefined!71 lt!29411) (not (isEmpty!806 lt!29411)))))

(declare-fun bs!10301 () Bool)

(assert (= bs!10301 d!26240))

(declare-fun m!95142 () Bool)

(assert (=> bs!10301 m!95142))

(assert (=> d!25342 d!26240))

(assert (=> d!25342 d!26156))

(declare-fun d!26242 () Bool)

(declare-fun lt!30097 () Int)

(assert (=> d!26242 (>= lt!30097 0)))

(declare-fun e!59507 () Int)

(assert (=> d!26242 (= lt!30097 e!59507)))

(declare-fun c!25788 () Bool)

(assert (=> d!26242 (= c!25788 ((_ is Nil!1705) lt!29531))))

(assert (=> d!26242 (= (size!1519 lt!29531) lt!30097)))

(declare-fun b!107260 () Bool)

(assert (=> b!107260 (= e!59507 0)))

(declare-fun b!107261 () Bool)

(assert (=> b!107261 (= e!59507 (+ 1 (size!1519 (t!21400 lt!29531))))))

(assert (= (and d!26242 c!25788) b!107260))

(assert (= (and d!26242 (not c!25788)) b!107261))

(declare-fun m!95144 () Bool)

(assert (=> b!107261 m!95144))

(assert (=> b!105814 d!26242))

(declare-fun d!26244 () Bool)

(declare-fun lt!30098 () Int)

(assert (=> d!26244 (>= lt!30098 0)))

(declare-fun e!59508 () Int)

(assert (=> d!26244 (= lt!30098 e!59508)))

(declare-fun c!25789 () Bool)

(assert (=> d!26244 (= c!25789 ((_ is Nil!1705) lt!29250))))

(assert (=> d!26244 (= (size!1519 lt!29250) lt!30098)))

(declare-fun b!107262 () Bool)

(assert (=> b!107262 (= e!59508 0)))

(declare-fun b!107263 () Bool)

(assert (=> b!107263 (= e!59508 (+ 1 (size!1519 (t!21400 lt!29250))))))

(assert (= (and d!26244 c!25789) b!107262))

(assert (= (and d!26244 (not c!25789)) b!107263))

(assert (=> b!107263 m!94924))

(assert (=> b!105814 d!26244))

(assert (=> b!105814 d!26028))

(declare-fun d!26246 () Bool)

(declare-fun c!25790 () Bool)

(assert (=> d!26246 (= c!25790 ((_ is Nil!1705) lt!29546))))

(declare-fun e!59509 () (InoxSet C!1804))

(assert (=> d!26246 (= (content!146 lt!29546) e!59509)))

(declare-fun b!107264 () Bool)

(assert (=> b!107264 (= e!59509 ((as const (Array C!1804 Bool)) false))))

(declare-fun b!107265 () Bool)

(assert (=> b!107265 (= e!59509 ((_ map or) (store ((as const (Array C!1804 Bool)) false) (h!7102 lt!29546) true) (content!146 (t!21400 lt!29546))))))

(assert (= (and d!26246 c!25790) b!107264))

(assert (= (and d!26246 (not c!25790)) b!107265))

(declare-fun m!95146 () Bool)

(assert (=> b!107265 m!95146))

(declare-fun m!95148 () Bool)

(assert (=> b!107265 m!95148))

(assert (=> d!25522 d!26246))

(declare-fun d!26248 () Bool)

(declare-fun c!25791 () Bool)

(assert (=> d!26248 (= c!25791 ((_ is Nil!1705) lt!29255))))

(declare-fun e!59510 () (InoxSet C!1804))

(assert (=> d!26248 (= (content!146 lt!29255) e!59510)))

(declare-fun b!107266 () Bool)

(assert (=> b!107266 (= e!59510 ((as const (Array C!1804 Bool)) false))))

(declare-fun b!107267 () Bool)

(assert (=> b!107267 (= e!59510 ((_ map or) (store ((as const (Array C!1804 Bool)) false) (h!7102 lt!29255) true) (content!146 (t!21400 lt!29255))))))

(assert (= (and d!26248 c!25791) b!107266))

(assert (= (and d!26248 (not c!25791)) b!107267))

(declare-fun m!95150 () Bool)

(assert (=> b!107267 m!95150))

(declare-fun m!95152 () Bool)

(assert (=> b!107267 m!95152))

(assert (=> d!25522 d!26248))

(assert (=> d!25522 d!26042))

(declare-fun d!26250 () Bool)

(assert (=> d!26250 (= (list!724 (_1!1135 lt!29570)) (list!728 (c!25298 (_1!1135 lt!29570))))))

(declare-fun bs!10302 () Bool)

(assert (= bs!10302 d!26250))

(declare-fun m!95154 () Bool)

(assert (=> bs!10302 m!95154))

(assert (=> b!105886 d!26250))

(declare-fun d!26252 () Bool)

(declare-fun e!59512 () Bool)

(assert (=> d!26252 e!59512))

(declare-fun c!25793 () Bool)

(declare-fun lt!30100 () tuple2!1858)

(assert (=> d!26252 (= c!25793 (> (size!1521 (_1!1136 lt!30100)) 0))))

(declare-fun e!59513 () tuple2!1858)

(assert (=> d!26252 (= lt!30100 e!59513)))

(declare-fun c!25792 () Bool)

(declare-fun lt!30101 () Option!198)

(assert (=> d!26252 (= c!25792 ((_ is Some!197) lt!30101))))

(assert (=> d!26252 (= lt!30101 (maxPrefix!93 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29252)))))))

(assert (=> d!26252 (= (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29252)))) lt!30100)))

(declare-fun b!107268 () Bool)

(declare-fun lt!30099 () tuple2!1858)

(assert (=> b!107268 (= e!59513 (tuple2!1859 (Cons!1707 (_1!1140 (v!13006 lt!30101)) (_1!1136 lt!30099)) (_2!1136 lt!30099)))))

(assert (=> b!107268 (= lt!30099 (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!30101))))))

(declare-fun b!107269 () Bool)

(assert (=> b!107269 (= e!59513 (tuple2!1859 Nil!1707 (list!723 (_2!1139 (v!13005 lt!29252)))))))

(declare-fun b!107270 () Bool)

(declare-fun e!59511 () Bool)

(assert (=> b!107270 (= e!59511 (not (isEmpty!797 (_1!1136 lt!30100))))))

(declare-fun b!107271 () Bool)

(assert (=> b!107271 (= e!59512 e!59511)))

(declare-fun res!51473 () Bool)

(assert (=> b!107271 (= res!51473 (< (size!1519 (_2!1136 lt!30100)) (size!1519 (list!723 (_2!1139 (v!13005 lt!29252))))))))

(assert (=> b!107271 (=> (not res!51473) (not e!59511))))

(declare-fun b!107272 () Bool)

(assert (=> b!107272 (= e!59512 (= (_2!1136 lt!30100) (list!723 (_2!1139 (v!13005 lt!29252)))))))

(assert (= (and d!26252 c!25792) b!107268))

(assert (= (and d!26252 (not c!25792)) b!107269))

(assert (= (and d!26252 c!25793) b!107271))

(assert (= (and d!26252 (not c!25793)) b!107272))

(assert (= (and b!107271 res!51473) b!107270))

(declare-fun m!95156 () Bool)

(assert (=> d!26252 m!95156))

(assert (=> d!26252 m!92784))

(declare-fun m!95158 () Bool)

(assert (=> d!26252 m!95158))

(declare-fun m!95160 () Bool)

(assert (=> b!107268 m!95160))

(declare-fun m!95162 () Bool)

(assert (=> b!107270 m!95162))

(declare-fun m!95164 () Bool)

(assert (=> b!107271 m!95164))

(assert (=> b!107271 m!92784))

(declare-fun m!95166 () Bool)

(assert (=> b!107271 m!95166))

(assert (=> b!105886 d!26252))

(declare-fun d!26254 () Bool)

(assert (=> d!26254 (= (list!723 (_2!1139 (v!13005 lt!29252))) (list!727 (c!25296 (_2!1139 (v!13005 lt!29252)))))))

(declare-fun bs!10303 () Bool)

(assert (= bs!10303 d!26254))

(declare-fun m!95168 () Bool)

(assert (=> bs!10303 m!95168))

(assert (=> b!105886 d!26254))

(declare-fun d!26256 () Bool)

(declare-fun lt!30102 () Int)

(assert (=> d!26256 (= lt!30102 (size!1521 (list!724 (_1!1135 lt!29548))))))

(assert (=> d!26256 (= lt!30102 (size!1522 (c!25298 (_1!1135 lt!29548))))))

(assert (=> d!26256 (= (size!1514 (_1!1135 lt!29548)) lt!30102)))

(declare-fun bs!10304 () Bool)

(assert (= bs!10304 d!26256))

(assert (=> bs!10304 m!92680))

(assert (=> bs!10304 m!92680))

(declare-fun m!95170 () Bool)

(assert (=> bs!10304 m!95170))

(declare-fun m!95172 () Bool)

(assert (=> bs!10304 m!95172))

(assert (=> d!25528 d!26256))

(assert (=> d!25528 d!25974))

(declare-fun lt!30103 () List!1711)

(declare-fun b!107276 () Bool)

(declare-fun e!59514 () Bool)

(assert (=> b!107276 (= e!59514 (or (not (= (++!283 lt!29250 lt!29241) Nil!1705)) (= lt!30103 (t!21400 lt!29255))))))

(declare-fun e!59515 () List!1711)

(declare-fun b!107274 () Bool)

(assert (=> b!107274 (= e!59515 (Cons!1705 (h!7102 (t!21400 lt!29255)) (++!283 (t!21400 (t!21400 lt!29255)) (++!283 lt!29250 lt!29241))))))

(declare-fun d!26258 () Bool)

(assert (=> d!26258 e!59514))

(declare-fun res!51475 () Bool)

(assert (=> d!26258 (=> (not res!51475) (not e!59514))))

(assert (=> d!26258 (= res!51475 (= (content!146 lt!30103) ((_ map or) (content!146 (t!21400 lt!29255)) (content!146 (++!283 lt!29250 lt!29241)))))))

(assert (=> d!26258 (= lt!30103 e!59515)))

(declare-fun c!25794 () Bool)

(assert (=> d!26258 (= c!25794 ((_ is Nil!1705) (t!21400 lt!29255)))))

(assert (=> d!26258 (= (++!283 (t!21400 lt!29255) (++!283 lt!29250 lt!29241)) lt!30103)))

(declare-fun b!107273 () Bool)

(assert (=> b!107273 (= e!59515 (++!283 lt!29250 lt!29241))))

(declare-fun b!107275 () Bool)

(declare-fun res!51474 () Bool)

(assert (=> b!107275 (=> (not res!51474) (not e!59514))))

(assert (=> b!107275 (= res!51474 (= (size!1519 lt!30103) (+ (size!1519 (t!21400 lt!29255)) (size!1519 (++!283 lt!29250 lt!29241)))))))

(assert (= (and d!26258 c!25794) b!107273))

(assert (= (and d!26258 (not c!25794)) b!107274))

(assert (= (and d!26258 res!51475) b!107275))

(assert (= (and b!107275 res!51474) b!107276))

(assert (=> b!107274 m!91644))

(declare-fun m!95174 () Bool)

(assert (=> b!107274 m!95174))

(declare-fun m!95176 () Bool)

(assert (=> d!26258 m!95176))

(assert (=> d!26258 m!95152))

(assert (=> d!26258 m!91644))

(assert (=> d!26258 m!92572))

(declare-fun m!95178 () Bool)

(assert (=> b!107275 m!95178))

(declare-fun m!95180 () Bool)

(assert (=> b!107275 m!95180))

(assert (=> b!107275 m!91644))

(assert (=> b!107275 m!92578))

(assert (=> b!105809 d!26258))

(assert (=> d!25518 d!25522))

(declare-fun d!26260 () Bool)

(assert (=> d!26260 (= (++!283 (++!283 lt!29255 lt!29250) lt!29241) (++!283 lt!29255 (++!283 lt!29250 lt!29241)))))

(assert (=> d!26260 true))

(declare-fun _$52!543 () Unit!1124)

(assert (=> d!26260 (= (choose!1404 lt!29255 lt!29250 lt!29241) _$52!543)))

(declare-fun bs!10305 () Bool)

(assert (= bs!10305 d!26260))

(assert (=> bs!10305 m!91654))

(assert (=> bs!10305 m!91654))

(assert (=> bs!10305 m!91656))

(assert (=> bs!10305 m!91644))

(assert (=> bs!10305 m!91644))

(assert (=> bs!10305 m!91646))

(assert (=> d!25518 d!26260))

(assert (=> d!25518 d!25496))

(assert (=> d!25518 d!25504))

(assert (=> d!25518 d!25534))

(declare-fun d!26262 () Bool)

(assert (=> d!26262 (= (list!724 (_1!1135 lt!29512)) (list!728 (c!25298 (_1!1135 lt!29512))))))

(declare-fun bs!10306 () Bool)

(assert (= bs!10306 d!26262))

(declare-fun m!95182 () Bool)

(assert (=> bs!10306 m!95182))

(assert (=> b!105781 d!26262))

(declare-fun d!26264 () Bool)

(declare-fun e!59517 () Bool)

(assert (=> d!26264 e!59517))

(declare-fun c!25796 () Bool)

(declare-fun lt!30105 () tuple2!1858)

(assert (=> d!26264 (= c!25796 (> (size!1521 (_1!1136 lt!30105)) 0))))

(declare-fun e!59518 () tuple2!1858)

(assert (=> d!26264 (= lt!30105 e!59518)))

(declare-fun c!25795 () Bool)

(declare-fun lt!30106 () Option!198)

(assert (=> d!26264 (= c!25795 ((_ is Some!197) lt!30106))))

(assert (=> d!26264 (= lt!30106 (maxPrefix!93 thiss!11428 rules!1152 lt!29515))))

(assert (=> d!26264 (= (lexList!83 thiss!11428 rules!1152 lt!29515) lt!30105)))

(declare-fun b!107277 () Bool)

(declare-fun lt!30104 () tuple2!1858)

(assert (=> b!107277 (= e!59518 (tuple2!1859 (Cons!1707 (_1!1140 (v!13006 lt!30106)) (_1!1136 lt!30104)) (_2!1136 lt!30104)))))

(assert (=> b!107277 (= lt!30104 (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!30106))))))

(declare-fun b!107278 () Bool)

(assert (=> b!107278 (= e!59518 (tuple2!1859 Nil!1707 lt!29515))))

(declare-fun b!107279 () Bool)

(declare-fun e!59516 () Bool)

(assert (=> b!107279 (= e!59516 (not (isEmpty!797 (_1!1136 lt!30105))))))

(declare-fun b!107280 () Bool)

(assert (=> b!107280 (= e!59517 e!59516)))

(declare-fun res!51476 () Bool)

(assert (=> b!107280 (= res!51476 (< (size!1519 (_2!1136 lt!30105)) (size!1519 lt!29515)))))

(assert (=> b!107280 (=> (not res!51476) (not e!59516))))

(declare-fun b!107281 () Bool)

(assert (=> b!107281 (= e!59517 (= (_2!1136 lt!30105) lt!29515))))

(assert (= (and d!26264 c!25795) b!107277))

(assert (= (and d!26264 (not c!25795)) b!107278))

(assert (= (and d!26264 c!25796) b!107280))

(assert (= (and d!26264 (not c!25796)) b!107281))

(assert (= (and b!107280 res!51476) b!107279))

(declare-fun m!95184 () Bool)

(assert (=> d!26264 m!95184))

(declare-fun m!95186 () Bool)

(assert (=> d!26264 m!95186))

(declare-fun m!95188 () Bool)

(assert (=> b!107277 m!95188))

(declare-fun m!95190 () Bool)

(assert (=> b!107279 m!95190))

(declare-fun m!95192 () Bool)

(assert (=> b!107280 m!95192))

(declare-fun m!95194 () Bool)

(assert (=> b!107280 m!95194))

(assert (=> b!105781 d!26264))

(declare-fun b!107282 () Bool)

(declare-fun res!51480 () Bool)

(declare-fun e!59523 () Bool)

(assert (=> b!107282 (=> (not res!51480) (not e!59523))))

(declare-fun e!59522 () Bool)

(assert (=> b!107282 (= res!51480 e!59522)))

(declare-fun res!51479 () Bool)

(assert (=> b!107282 (=> res!51479 e!59522)))

(declare-fun lt!30112 () Option!197)

(assert (=> b!107282 (= res!51479 (not (isDefined!71 lt!30112)))))

(declare-fun b!107283 () Bool)

(declare-fun e!59520 () Bool)

(declare-fun e!59524 () Bool)

(assert (=> b!107283 (= e!59520 e!59524)))

(declare-fun res!51482 () Bool)

(assert (=> b!107283 (=> (not res!51482) (not e!59524))))

(assert (=> b!107283 (= res!51482 (= (_1!1139 (get!437 lt!30112)) (_1!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 lt!29494))))))))

(declare-fun b!107284 () Bool)

(assert (=> b!107284 (= e!59524 (= (list!723 (_2!1139 (get!437 lt!30112))) (_2!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 lt!29494))))))))

(declare-fun e!59521 () Bool)

(declare-fun b!107285 () Bool)

(assert (=> b!107285 (= e!59521 (= (list!723 (_2!1139 (get!437 lt!30112))) (_2!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 lt!29494))))))))

(declare-fun bm!4715 () Bool)

(declare-fun call!4720 () Option!197)

(assert (=> bm!4715 (= call!4720 (maxPrefixOneRuleZipperSequence!18 thiss!11428 (h!7103 rules!1152) lt!29494))))

(declare-fun d!26266 () Bool)

(assert (=> d!26266 e!59523))

(declare-fun res!51478 () Bool)

(assert (=> d!26266 (=> (not res!51478) (not e!59523))))

(assert (=> d!26266 (= res!51478 (= (isDefined!71 lt!30112) (isDefined!72 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 lt!29494)))))))

(declare-fun e!59519 () Option!197)

(assert (=> d!26266 (= lt!30112 e!59519)))

(declare-fun c!25797 () Bool)

(assert (=> d!26266 (= c!25797 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!30113 () Unit!1124)

(declare-fun lt!30111 () Unit!1124)

(assert (=> d!26266 (= lt!30113 lt!30111)))

(declare-fun lt!30108 () List!1711)

(declare-fun lt!30107 () List!1711)

(assert (=> d!26266 (isPrefix!51 lt!30108 lt!30107)))

(assert (=> d!26266 (= lt!30111 (lemmaIsPrefixRefl!51 lt!30108 lt!30107))))

(assert (=> d!26266 (= lt!30107 (list!723 lt!29494))))

(assert (=> d!26266 (= lt!30108 (list!723 lt!29494))))

(assert (=> d!26266 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!26266 (= (maxPrefixZipperSequence!56 thiss!11428 rules!1152 lt!29494) lt!30112)))

(declare-fun b!107286 () Bool)

(assert (=> b!107286 (= e!59523 e!59520)))

(declare-fun res!51481 () Bool)

(assert (=> b!107286 (=> res!51481 e!59520)))

(assert (=> b!107286 (= res!51481 (not (isDefined!71 lt!30112)))))

(declare-fun b!107287 () Bool)

(assert (=> b!107287 (= e!59522 e!59521)))

(declare-fun res!51477 () Bool)

(assert (=> b!107287 (=> (not res!51477) (not e!59521))))

(assert (=> b!107287 (= res!51477 (= (_1!1139 (get!437 lt!30112)) (_1!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 lt!29494))))))))

(declare-fun b!107288 () Bool)

(declare-fun lt!30109 () Option!197)

(declare-fun lt!30110 () Option!197)

(assert (=> b!107288 (= e!59519 (ite (and ((_ is None!196) lt!30109) ((_ is None!196) lt!30110)) None!196 (ite ((_ is None!196) lt!30110) lt!30109 (ite ((_ is None!196) lt!30109) lt!30110 (ite (>= (size!1512 (_1!1139 (v!13005 lt!30109))) (size!1512 (_1!1139 (v!13005 lt!30110)))) lt!30109 lt!30110)))))))

(assert (=> b!107288 (= lt!30109 call!4720)))

(assert (=> b!107288 (= lt!30110 (maxPrefixZipperSequence!56 thiss!11428 (t!21401 rules!1152) lt!29494))))

(declare-fun b!107289 () Bool)

(assert (=> b!107289 (= e!59519 call!4720)))

(assert (= (and d!26266 c!25797) b!107289))

(assert (= (and d!26266 (not c!25797)) b!107288))

(assert (= (or b!107289 b!107288) bm!4715))

(assert (= (and d!26266 res!51478) b!107282))

(assert (= (and b!107282 (not res!51479)) b!107287))

(assert (= (and b!107287 res!51477) b!107285))

(assert (= (and b!107282 res!51480) b!107286))

(assert (= (and b!107286 (not res!51481)) b!107283))

(assert (= (and b!107283 res!51482) b!107284))

(declare-fun m!95196 () Bool)

(assert (=> b!107288 m!95196))

(declare-fun m!95198 () Bool)

(assert (=> b!107284 m!95198))

(declare-fun m!95200 () Bool)

(assert (=> b!107284 m!95200))

(declare-fun m!95202 () Bool)

(assert (=> b!107284 m!95202))

(assert (=> b!107284 m!95200))

(assert (=> b!107284 m!95202))

(declare-fun m!95204 () Bool)

(assert (=> b!107284 m!95204))

(declare-fun m!95206 () Bool)

(assert (=> b!107284 m!95206))

(assert (=> b!107287 m!95198))

(assert (=> b!107287 m!95200))

(assert (=> b!107287 m!95200))

(declare-fun m!95208 () Bool)

(assert (=> b!107287 m!95208))

(assert (=> b!107287 m!95208))

(declare-fun m!95210 () Bool)

(assert (=> b!107287 m!95210))

(assert (=> b!107285 m!95198))

(assert (=> b!107285 m!95208))

(assert (=> b!107285 m!95210))

(assert (=> b!107285 m!95206))

(assert (=> b!107285 m!95200))

(assert (=> b!107285 m!95200))

(assert (=> b!107285 m!95208))

(declare-fun m!95212 () Bool)

(assert (=> bm!4715 m!95212))

(declare-fun m!95214 () Bool)

(assert (=> b!107282 m!95214))

(assert (=> d!26266 m!95208))

(declare-fun m!95216 () Bool)

(assert (=> d!26266 m!95216))

(assert (=> d!26266 m!95214))

(assert (=> d!26266 m!92158))

(declare-fun m!95218 () Bool)

(assert (=> d!26266 m!95218))

(declare-fun m!95220 () Bool)

(assert (=> d!26266 m!95220))

(assert (=> d!26266 m!95200))

(assert (=> d!26266 m!95200))

(assert (=> d!26266 m!95208))

(assert (=> b!107286 m!95214))

(assert (=> b!107283 m!95198))

(assert (=> b!107283 m!95200))

(assert (=> b!107283 m!95200))

(assert (=> b!107283 m!95202))

(assert (=> b!107283 m!95202))

(assert (=> b!107283 m!95204))

(assert (=> b!105781 d!26266))

(declare-fun lt!30114 () List!1711)

(declare-fun e!59525 () Bool)

(declare-fun b!107293 () Bool)

(assert (=> b!107293 (= e!59525 (or (not (= lt!29502 Nil!1705)) (= lt!30114 (++!283 lt!29516 lt!29511))))))

(declare-fun b!107291 () Bool)

(declare-fun e!59526 () List!1711)

(assert (=> b!107291 (= e!59526 (Cons!1705 (h!7102 (++!283 lt!29516 lt!29511)) (++!283 (t!21400 (++!283 lt!29516 lt!29511)) lt!29502)))))

(declare-fun d!26268 () Bool)

(assert (=> d!26268 e!59525))

(declare-fun res!51484 () Bool)

(assert (=> d!26268 (=> (not res!51484) (not e!59525))))

(assert (=> d!26268 (= res!51484 (= (content!146 lt!30114) ((_ map or) (content!146 (++!283 lt!29516 lt!29511)) (content!146 lt!29502))))))

(assert (=> d!26268 (= lt!30114 e!59526)))

(declare-fun c!25798 () Bool)

(assert (=> d!26268 (= c!25798 ((_ is Nil!1705) (++!283 lt!29516 lt!29511)))))

(assert (=> d!26268 (= (++!283 (++!283 lt!29516 lt!29511) lt!29502) lt!30114)))

(declare-fun b!107290 () Bool)

(assert (=> b!107290 (= e!59526 lt!29502)))

(declare-fun b!107292 () Bool)

(declare-fun res!51483 () Bool)

(assert (=> b!107292 (=> (not res!51483) (not e!59525))))

(assert (=> b!107292 (= res!51483 (= (size!1519 lt!30114) (+ (size!1519 (++!283 lt!29516 lt!29511)) (size!1519 lt!29502))))))

(assert (= (and d!26268 c!25798) b!107290))

(assert (= (and d!26268 (not c!25798)) b!107291))

(assert (= (and d!26268 res!51484) b!107292))

(assert (= (and b!107292 res!51483) b!107293))

(declare-fun m!95222 () Bool)

(assert (=> b!107291 m!95222))

(declare-fun m!95224 () Bool)

(assert (=> d!26268 m!95224))

(assert (=> d!26268 m!92496))

(declare-fun m!95226 () Bool)

(assert (=> d!26268 m!95226))

(declare-fun m!95228 () Bool)

(assert (=> d!26268 m!95228))

(declare-fun m!95230 () Bool)

(assert (=> b!107292 m!95230))

(assert (=> b!107292 m!92496))

(declare-fun m!95232 () Bool)

(assert (=> b!107292 m!95232))

(declare-fun m!95234 () Bool)

(assert (=> b!107292 m!95234))

(assert (=> b!105781 d!26268))

(declare-fun d!26270 () Bool)

(declare-fun e!59528 () Bool)

(assert (=> d!26270 e!59528))

(declare-fun res!51486 () Bool)

(assert (=> d!26270 (=> (not res!51486) (not e!59528))))

(declare-fun lt!30115 () List!1713)

(assert (=> d!26270 (= res!51486 (= (content!145 lt!30115) ((_ map or) (content!145 lt!29510) (content!145 (++!284 lt!29505 lt!29517)))))))

(declare-fun e!59527 () List!1713)

(assert (=> d!26270 (= lt!30115 e!59527)))

(declare-fun c!25799 () Bool)

(assert (=> d!26270 (= c!25799 ((_ is Nil!1707) lt!29510))))

(assert (=> d!26270 (= (++!284 lt!29510 (++!284 lt!29505 lt!29517)) lt!30115)))

(declare-fun b!107297 () Bool)

(assert (=> b!107297 (= e!59528 (or (not (= (++!284 lt!29505 lt!29517) Nil!1707)) (= lt!30115 lt!29510)))))

(declare-fun b!107295 () Bool)

(assert (=> b!107295 (= e!59527 (Cons!1707 (h!7104 lt!29510) (++!284 (t!21402 lt!29510) (++!284 lt!29505 lt!29517))))))

(declare-fun b!107296 () Bool)

(declare-fun res!51485 () Bool)

(assert (=> b!107296 (=> (not res!51485) (not e!59528))))

(assert (=> b!107296 (= res!51485 (= (size!1521 lt!30115) (+ (size!1521 lt!29510) (size!1521 (++!284 lt!29505 lt!29517)))))))

(declare-fun b!107294 () Bool)

(assert (=> b!107294 (= e!59527 (++!284 lt!29505 lt!29517))))

(assert (= (and d!26270 c!25799) b!107294))

(assert (= (and d!26270 (not c!25799)) b!107295))

(assert (= (and d!26270 res!51486) b!107296))

(assert (= (and b!107296 res!51485) b!107297))

(declare-fun m!95236 () Bool)

(assert (=> d!26270 m!95236))

(declare-fun m!95238 () Bool)

(assert (=> d!26270 m!95238))

(assert (=> d!26270 m!92472))

(declare-fun m!95240 () Bool)

(assert (=> d!26270 m!95240))

(assert (=> b!107295 m!92472))

(declare-fun m!95242 () Bool)

(assert (=> b!107295 m!95242))

(declare-fun m!95244 () Bool)

(assert (=> b!107296 m!95244))

(declare-fun m!95246 () Bool)

(assert (=> b!107296 m!95246))

(assert (=> b!107296 m!92472))

(declare-fun m!95248 () Bool)

(assert (=> b!107296 m!95248))

(assert (=> b!105781 d!26270))

(declare-fun b!107298 () Bool)

(declare-fun res!51487 () Bool)

(declare-fun e!59529 () Bool)

(assert (=> b!107298 (=> (not res!51487) (not e!59529))))

(assert (=> b!107298 (= res!51487 (isBalanced!149 (++!286 (c!25296 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29508)))))))))

(declare-fun d!26272 () Bool)

(assert (=> d!26272 e!59529))

(declare-fun res!51490 () Bool)

(assert (=> d!26272 (=> (not res!51490) (not e!59529))))

(assert (=> d!26272 (= res!51490 (appendAssocInst!11 (c!25296 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29508))))))))

(declare-fun lt!30116 () BalanceConc!1084)

(assert (=> d!26272 (= lt!30116 (BalanceConc!1085 (++!286 (c!25296 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29508)))))))))

(assert (=> d!26272 (= (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508)))) lt!30116)))

(declare-fun b!107299 () Bool)

(declare-fun res!51489 () Bool)

(assert (=> b!107299 (=> (not res!51489) (not e!59529))))

(assert (=> b!107299 (= res!51489 (<= (height!64 (++!286 (c!25296 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29508)))))) (+ (max!0 (height!64 (c!25296 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (height!64 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29508)))))) 1)))))

(declare-fun b!107300 () Bool)

(declare-fun res!51488 () Bool)

(assert (=> b!107300 (=> (not res!51488) (not e!59529))))

(assert (=> b!107300 (= res!51488 (>= (height!64 (++!286 (c!25296 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29508)))))) (max!0 (height!64 (c!25296 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (height!64 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29508))))))))))

(declare-fun b!107301 () Bool)

(assert (=> b!107301 (= e!59529 (= (list!723 lt!30116) (++!283 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29508)))))))))

(assert (= (and d!26272 res!51490) b!107298))

(assert (= (and b!107298 res!51487) b!107299))

(assert (= (and b!107299 res!51489) b!107300))

(assert (= (and b!107300 res!51488) b!107301))

(declare-fun m!95250 () Bool)

(assert (=> b!107300 m!95250))

(declare-fun m!95252 () Bool)

(assert (=> b!107300 m!95252))

(assert (=> b!107300 m!95252))

(declare-fun m!95254 () Bool)

(assert (=> b!107300 m!95254))

(assert (=> b!107300 m!95250))

(declare-fun m!95256 () Bool)

(assert (=> b!107300 m!95256))

(declare-fun m!95258 () Bool)

(assert (=> b!107300 m!95258))

(assert (=> b!107300 m!95256))

(assert (=> b!107298 m!95252))

(assert (=> b!107298 m!95252))

(declare-fun m!95260 () Bool)

(assert (=> b!107298 m!95260))

(declare-fun m!95262 () Bool)

(assert (=> b!107301 m!95262))

(assert (=> b!107301 m!91662))

(assert (=> b!107301 m!92480))

(assert (=> b!107301 m!92502))

(assert (=> b!107301 m!92482))

(assert (=> b!107301 m!92480))

(assert (=> b!107301 m!92482))

(assert (=> b!107301 m!92484))

(declare-fun m!95264 () Bool)

(assert (=> d!26272 m!95264))

(assert (=> d!26272 m!95252))

(assert (=> b!107299 m!95250))

(assert (=> b!107299 m!95252))

(assert (=> b!107299 m!95252))

(assert (=> b!107299 m!95254))

(assert (=> b!107299 m!95250))

(assert (=> b!107299 m!95256))

(assert (=> b!107299 m!95258))

(assert (=> b!107299 m!95256))

(assert (=> b!105781 d!26272))

(assert (=> b!105781 d!25528))

(declare-fun d!26274 () Bool)

(assert (=> d!26274 (= (list!723 (_2!1139 (v!13005 lt!29508))) (list!727 (c!25296 (_2!1139 (v!13005 lt!29508)))))))

(declare-fun bs!10307 () Bool)

(assert (= bs!10307 d!26274))

(declare-fun m!95266 () Bool)

(assert (=> bs!10307 m!95266))

(assert (=> b!105781 d!26274))

(declare-fun lt!30122 () tuple2!1856)

(declare-fun b!107302 () Bool)

(declare-fun e!59531 () Bool)

(assert (=> b!107302 (= e!59531 (= (list!723 (_2!1135 lt!30122)) (list!723 (_2!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))

(declare-fun b!107303 () Bool)

(declare-fun e!59530 () tuple2!1856)

(assert (=> b!107303 (= e!59530 (tuple2!1857 (append!61 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))) (_1!1139 (v!13005 lt!29508))) (_2!1139 (v!13005 lt!29508))))))

(declare-fun b!107304 () Bool)

(declare-fun lt!30131 () tuple2!1856)

(declare-fun lt!30137 () Option!197)

(assert (=> b!107304 (= lt!30131 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!30137))))))

(declare-fun e!59533 () tuple2!1856)

(assert (=> b!107304 (= e!59533 (tuple2!1857 (prepend!141 (_1!1135 lt!30131) (_1!1139 (v!13005 lt!30137))) (_2!1135 lt!30131)))))

(declare-fun b!107305 () Bool)

(declare-fun lt!30120 () tuple2!1856)

(declare-fun lt!30125 () Option!197)

(assert (=> b!107305 (= lt!30120 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!30125))))))

(declare-fun e!59532 () tuple2!1856)

(assert (=> b!107305 (= e!59532 (tuple2!1857 (prepend!141 (_1!1135 lt!30120) (_1!1139 (v!13005 lt!30125))) (_2!1135 lt!30120)))))

(declare-fun b!107306 () Bool)

(declare-fun lt!30132 () Option!197)

(assert (=> b!107306 (= e!59530 (lexTailRec!6 thiss!11428 rules!1152 input!576 (++!282 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508)))) (charsOf!88 (_1!1139 (v!13005 lt!30132)))) (_2!1139 (v!13005 lt!30132)) (append!61 (append!61 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))) (_1!1139 (v!13005 lt!29508))) (_1!1139 (v!13005 lt!30132)))))))

(declare-fun lt!30136 () tuple2!1856)

(assert (=> b!107306 (= lt!30136 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!30132))))))

(declare-fun lt!30140 () List!1711)

(assert (=> b!107306 (= lt!30140 (list!723 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508))))))))

(declare-fun lt!30135 () List!1711)

(assert (=> b!107306 (= lt!30135 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!30132)))))))

(declare-fun lt!30126 () List!1711)

(assert (=> b!107306 (= lt!30126 (list!723 (_2!1139 (v!13005 lt!30132))))))

(declare-fun lt!30133 () Unit!1124)

(assert (=> b!107306 (= lt!30133 (lemmaConcatAssociativity!104 lt!30140 lt!30135 lt!30126))))

(assert (=> b!107306 (= (++!283 (++!283 lt!30140 lt!30135) lt!30126) (++!283 lt!30140 (++!283 lt!30135 lt!30126)))))

(declare-fun lt!30130 () Unit!1124)

(assert (=> b!107306 (= lt!30130 lt!30133)))

(assert (=> b!107306 (= lt!30125 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29508))))))

(declare-fun c!25800 () Bool)

(assert (=> b!107306 (= c!25800 ((_ is Some!196) lt!30125))))

(assert (=> b!107306 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29508))) e!59532)))

(declare-fun lt!30128 () Unit!1124)

(declare-fun Unit!1134 () Unit!1124)

(assert (=> b!107306 (= lt!30128 Unit!1134)))

(declare-fun lt!30134 () List!1713)

(assert (=> b!107306 (= lt!30134 (list!724 (append!61 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))) (_1!1139 (v!13005 lt!29508)))))))

(declare-fun lt!30129 () List!1713)

(assert (=> b!107306 (= lt!30129 (Cons!1707 (_1!1139 (v!13005 lt!30132)) Nil!1707))))

(declare-fun lt!30141 () List!1713)

(assert (=> b!107306 (= lt!30141 (list!724 (_1!1135 lt!30136)))))

(declare-fun lt!30124 () Unit!1124)

(assert (=> b!107306 (= lt!30124 (lemmaConcatAssociativity!105 lt!30134 lt!30129 lt!30141))))

(assert (=> b!107306 (= (++!284 (++!284 lt!30134 lt!30129) lt!30141) (++!284 lt!30134 (++!284 lt!30129 lt!30141)))))

(declare-fun lt!30121 () Unit!1124)

(assert (=> b!107306 (= lt!30121 lt!30124)))

(declare-fun lt!30139 () List!1711)

(assert (=> b!107306 (= lt!30139 (++!283 (list!723 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508))))) (list!723 (charsOf!88 (_1!1139 (v!13005 lt!30132))))))))

(declare-fun lt!30117 () List!1711)

(assert (=> b!107306 (= lt!30117 (list!723 (_2!1139 (v!13005 lt!30132))))))

(declare-fun lt!30119 () List!1713)

(assert (=> b!107306 (= lt!30119 (list!724 (append!61 (append!61 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))) (_1!1139 (v!13005 lt!29508))) (_1!1139 (v!13005 lt!30132)))))))

(declare-fun lt!30127 () Unit!1124)

(assert (=> b!107306 (= lt!30127 (lemmaLexThenLexPrefix!47 thiss!11428 rules!1152 lt!30139 lt!30117 lt!30119 (list!724 (_1!1135 lt!30136)) (list!723 (_2!1135 lt!30136))))))

(assert (=> b!107306 (= (lexList!83 thiss!11428 rules!1152 lt!30139) (tuple2!1859 lt!30119 Nil!1705))))

(declare-fun lt!30138 () Unit!1124)

(assert (=> b!107306 (= lt!30138 lt!30127)))

(declare-fun lt!30118 () BalanceConc!1084)

(assert (=> b!107306 (= lt!30118 (++!282 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508)))) (charsOf!88 (_1!1139 (v!13005 lt!30132)))))))

(assert (=> b!107306 (= lt!30137 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 lt!30118))))

(declare-fun c!25801 () Bool)

(assert (=> b!107306 (= c!25801 ((_ is Some!196) lt!30137))))

(assert (=> b!107306 (= (lexRec!60 thiss!11428 rules!1152 (++!282 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508)))) (charsOf!88 (_1!1139 (v!13005 lt!30132))))) e!59533)))

(declare-fun lt!30123 () Unit!1124)

(declare-fun Unit!1135 () Unit!1124)

(assert (=> b!107306 (= lt!30123 Unit!1135)))

(declare-fun b!107307 () Bool)

(assert (=> b!107307 (= e!59533 (tuple2!1857 (BalanceConc!1087 Empty!541) lt!30118))))

(declare-fun d!26276 () Bool)

(assert (=> d!26276 e!59531))

(declare-fun res!51491 () Bool)

(assert (=> d!26276 (=> (not res!51491) (not e!59531))))

(assert (=> d!26276 (= res!51491 (= (list!724 (_1!1135 lt!30122)) (list!724 (_1!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))

(assert (=> d!26276 (= lt!30122 e!59530)))

(declare-fun c!25802 () Bool)

(assert (=> d!26276 (= c!25802 ((_ is Some!196) lt!30132))))

(assert (=> d!26276 (= lt!30132 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29508))))))

(assert (=> d!26276 (= (lexTailRec!6 thiss!11428 rules!1152 input!576 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508)))) (_2!1139 (v!13005 lt!29508)) (append!61 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))) (_1!1139 (v!13005 lt!29508)))) lt!30122)))

(declare-fun b!107308 () Bool)

(assert (=> b!107308 (= e!59532 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29508))))))

(assert (= (and d!26276 c!25802) b!107306))

(assert (= (and d!26276 (not c!25802)) b!107303))

(assert (= (and b!107306 c!25800) b!107305))

(assert (= (and b!107306 (not c!25800)) b!107308))

(assert (= (and b!107306 c!25801) b!107304))

(assert (= (and b!107306 (not c!25801)) b!107307))

(assert (= (and d!26276 res!51491) b!107302))

(declare-fun m!95268 () Bool)

(assert (=> b!107306 m!95268))

(declare-fun m!95270 () Bool)

(assert (=> b!107306 m!95270))

(declare-fun m!95272 () Bool)

(assert (=> b!107306 m!95272))

(declare-fun m!95274 () Bool)

(assert (=> b!107306 m!95274))

(declare-fun m!95276 () Bool)

(assert (=> b!107306 m!95276))

(declare-fun m!95278 () Bool)

(assert (=> b!107306 m!95278))

(declare-fun m!95280 () Bool)

(assert (=> b!107306 m!95280))

(declare-fun m!95282 () Bool)

(assert (=> b!107306 m!95282))

(declare-fun m!95284 () Bool)

(assert (=> b!107306 m!95284))

(assert (=> b!107306 m!92490))

(declare-fun m!95286 () Bool)

(assert (=> b!107306 m!95286))

(declare-fun m!95288 () Bool)

(assert (=> b!107306 m!95288))

(declare-fun m!95290 () Bool)

(assert (=> b!107306 m!95290))

(declare-fun m!95292 () Bool)

(assert (=> b!107306 m!95292))

(declare-fun m!95294 () Bool)

(assert (=> b!107306 m!95294))

(declare-fun m!95296 () Bool)

(assert (=> b!107306 m!95296))

(assert (=> b!107306 m!95292))

(assert (=> b!107306 m!92504))

(declare-fun m!95298 () Bool)

(assert (=> b!107306 m!95298))

(declare-fun m!95300 () Bool)

(assert (=> b!107306 m!95300))

(assert (=> b!107306 m!95298))

(declare-fun m!95302 () Bool)

(assert (=> b!107306 m!95302))

(declare-fun m!95304 () Bool)

(assert (=> b!107306 m!95304))

(assert (=> b!107306 m!95286))

(declare-fun m!95306 () Bool)

(assert (=> b!107306 m!95306))

(assert (=> b!107306 m!95274))

(assert (=> b!107306 m!95288))

(declare-fun m!95308 () Bool)

(assert (=> b!107306 m!95308))

(assert (=> b!107306 m!95300))

(declare-fun m!95310 () Bool)

(assert (=> b!107306 m!95310))

(assert (=> b!107306 m!92508))

(assert (=> b!107306 m!92504))

(assert (=> b!107306 m!95276))

(declare-fun m!95312 () Bool)

(assert (=> b!107306 m!95312))

(declare-fun m!95314 () Bool)

(assert (=> b!107306 m!95314))

(assert (=> b!107306 m!92490))

(assert (=> b!107306 m!92510))

(assert (=> b!107306 m!95300))

(assert (=> b!107306 m!95286))

(declare-fun m!95316 () Bool)

(assert (=> b!107306 m!95316))

(assert (=> b!107306 m!95298))

(assert (=> b!107306 m!95278))

(assert (=> b!107306 m!95312))

(declare-fun m!95318 () Bool)

(assert (=> b!107306 m!95318))

(assert (=> b!107306 m!95268))

(declare-fun m!95320 () Bool)

(assert (=> b!107306 m!95320))

(assert (=> b!107306 m!95282))

(declare-fun m!95322 () Bool)

(assert (=> d!26276 m!95322))

(assert (=> d!26276 m!91674))

(assert (=> d!26276 m!91690))

(assert (=> d!26276 m!95302))

(declare-fun m!95324 () Bool)

(assert (=> b!107304 m!95324))

(declare-fun m!95326 () Bool)

(assert (=> b!107304 m!95326))

(declare-fun m!95328 () Bool)

(assert (=> b!107305 m!95328))

(declare-fun m!95330 () Bool)

(assert (=> b!107305 m!95330))

(declare-fun m!95332 () Bool)

(assert (=> b!107302 m!95332))

(assert (=> b!107302 m!91674))

(assert (=> b!107302 m!91702))

(assert (=> b!105781 d!26276))

(declare-fun e!59534 () Bool)

(declare-fun b!107312 () Bool)

(declare-fun lt!30142 () List!1711)

(assert (=> b!107312 (= e!59534 (or (not (= (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29508)))) Nil!1705)) (= lt!30142 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun b!107310 () Bool)

(declare-fun e!59535 () List!1711)

(assert (=> b!107310 (= e!59535 (Cons!1705 (h!7102 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (++!283 (t!21400 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29508)))))))))

(declare-fun d!26278 () Bool)

(assert (=> d!26278 e!59534))

(declare-fun res!51493 () Bool)

(assert (=> d!26278 (=> (not res!51493) (not e!59534))))

(assert (=> d!26278 (= res!51493 (= (content!146 lt!30142) ((_ map or) (content!146 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (content!146 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29508))))))))))

(assert (=> d!26278 (= lt!30142 e!59535)))

(declare-fun c!25803 () Bool)

(assert (=> d!26278 (= c!25803 ((_ is Nil!1705) (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(assert (=> d!26278 (= (++!283 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29508))))) lt!30142)))

(declare-fun b!107309 () Bool)

(assert (=> b!107309 (= e!59535 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29508)))))))

(declare-fun b!107311 () Bool)

(declare-fun res!51492 () Bool)

(assert (=> b!107311 (=> (not res!51492) (not e!59534))))

(assert (=> b!107311 (= res!51492 (= (size!1519 lt!30142) (+ (size!1519 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (size!1519 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29508))))))))))

(assert (= (and d!26278 c!25803) b!107309))

(assert (= (and d!26278 (not c!25803)) b!107310))

(assert (= (and d!26278 res!51493) b!107311))

(assert (= (and b!107311 res!51492) b!107312))

(assert (=> b!107310 m!92482))

(declare-fun m!95334 () Bool)

(assert (=> b!107310 m!95334))

(declare-fun m!95336 () Bool)

(assert (=> d!26278 m!95336))

(assert (=> d!26278 m!92480))

(declare-fun m!95338 () Bool)

(assert (=> d!26278 m!95338))

(assert (=> d!26278 m!92482))

(declare-fun m!95340 () Bool)

(assert (=> d!26278 m!95340))

(declare-fun m!95342 () Bool)

(assert (=> b!107311 m!95342))

(assert (=> b!107311 m!92480))

(assert (=> b!107311 m!95116))

(assert (=> b!107311 m!92482))

(declare-fun m!95344 () Bool)

(assert (=> b!107311 m!95344))

(assert (=> b!105781 d!26278))

(assert (=> b!105781 d!26228))

(declare-fun b!107313 () Bool)

(declare-fun e!59537 () tuple2!1856)

(declare-fun lt!30143 () tuple2!1856)

(declare-fun lt!30145 () Option!197)

(assert (=> b!107313 (= e!59537 (tuple2!1857 (prepend!141 (_1!1135 lt!30143) (_1!1139 (v!13005 lt!30145))) (_2!1135 lt!30143)))))

(assert (=> b!107313 (= lt!30143 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!30145))))))

(declare-fun e!59538 () Bool)

(declare-fun b!107314 () Bool)

(declare-fun lt!30144 () tuple2!1856)

(assert (=> b!107314 (= e!59538 (= (list!723 (_2!1135 lt!30144)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29508)))))))))

(declare-fun b!107315 () Bool)

(declare-fun e!59539 () Bool)

(assert (=> b!107315 (= e!59539 (not (isEmpty!794 (_1!1135 lt!30144))))))

(declare-fun b!107316 () Bool)

(assert (=> b!107316 (= e!59537 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29508))))))

(declare-fun b!107318 () Bool)

(declare-fun e!59536 () Bool)

(assert (=> b!107318 (= e!59536 e!59539)))

(declare-fun res!51494 () Bool)

(assert (=> b!107318 (= res!51494 (< (size!1513 (_2!1135 lt!30144)) (size!1513 (_2!1139 (v!13005 lt!29508)))))))

(assert (=> b!107318 (=> (not res!51494) (not e!59539))))

(declare-fun b!107319 () Bool)

(declare-fun res!51496 () Bool)

(assert (=> b!107319 (=> (not res!51496) (not e!59538))))

(assert (=> b!107319 (= res!51496 (= (list!724 (_1!1135 lt!30144)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29508)))))))))

(declare-fun b!107317 () Bool)

(assert (=> b!107317 (= e!59536 (= (list!723 (_2!1135 lt!30144)) (list!723 (_2!1139 (v!13005 lt!29508)))))))

(declare-fun d!26280 () Bool)

(assert (=> d!26280 e!59538))

(declare-fun res!51495 () Bool)

(assert (=> d!26280 (=> (not res!51495) (not e!59538))))

(assert (=> d!26280 (= res!51495 e!59536)))

(declare-fun c!25805 () Bool)

(assert (=> d!26280 (= c!25805 (> (size!1514 (_1!1135 lt!30144)) 0))))

(assert (=> d!26280 (= lt!30144 e!59537)))

(declare-fun c!25804 () Bool)

(assert (=> d!26280 (= c!25804 ((_ is Some!196) lt!30145))))

(assert (=> d!26280 (= lt!30145 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29508))))))

(assert (=> d!26280 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29508))) lt!30144)))

(assert (= (and d!26280 c!25804) b!107313))

(assert (= (and d!26280 (not c!25804)) b!107316))

(assert (= (and d!26280 c!25805) b!107318))

(assert (= (and d!26280 (not c!25805)) b!107317))

(assert (= (and b!107318 res!51494) b!107315))

(assert (= (and d!26280 res!51495) b!107319))

(assert (= (and b!107319 res!51496) b!107314))

(declare-fun m!95346 () Bool)

(assert (=> b!107313 m!95346))

(declare-fun m!95348 () Bool)

(assert (=> b!107313 m!95348))

(declare-fun m!95350 () Bool)

(assert (=> b!107319 m!95350))

(assert (=> b!107319 m!92522))

(assert (=> b!107319 m!92522))

(declare-fun m!95352 () Bool)

(assert (=> b!107319 m!95352))

(declare-fun m!95354 () Bool)

(assert (=> b!107318 m!95354))

(declare-fun m!95356 () Bool)

(assert (=> b!107318 m!95356))

(declare-fun m!95358 () Bool)

(assert (=> b!107314 m!95358))

(assert (=> b!107314 m!92522))

(assert (=> b!107314 m!92522))

(assert (=> b!107314 m!95352))

(declare-fun m!95360 () Bool)

(assert (=> d!26280 m!95360))

(assert (=> d!26280 m!95302))

(declare-fun m!95362 () Bool)

(assert (=> b!107315 m!95362))

(assert (=> b!107317 m!95358))

(assert (=> b!107317 m!92522))

(assert (=> b!105781 d!26280))

(declare-fun d!26282 () Bool)

(assert (=> d!26282 (= (++!283 (++!283 lt!29516 lt!29511) lt!29502) (++!283 lt!29516 (++!283 lt!29511 lt!29502)))))

(declare-fun lt!30146 () Unit!1124)

(assert (=> d!26282 (= lt!30146 (choose!1404 lt!29516 lt!29511 lt!29502))))

(assert (=> d!26282 (= (lemmaConcatAssociativity!104 lt!29516 lt!29511 lt!29502) lt!30146)))

(declare-fun bs!10308 () Bool)

(assert (= bs!10308 d!26282))

(assert (=> bs!10308 m!92496))

(assert (=> bs!10308 m!92498))

(assert (=> bs!10308 m!92496))

(assert (=> bs!10308 m!92486))

(declare-fun m!95364 () Bool)

(assert (=> bs!10308 m!95364))

(assert (=> bs!10308 m!92486))

(assert (=> bs!10308 m!92488))

(assert (=> b!105781 d!26282))

(declare-fun b!107320 () Bool)

(declare-fun e!59541 () tuple2!1856)

(declare-fun lt!30147 () tuple2!1856)

(declare-fun lt!30149 () Option!197)

(assert (=> b!107320 (= e!59541 (tuple2!1857 (prepend!141 (_1!1135 lt!30147) (_1!1139 (v!13005 lt!30149))) (_2!1135 lt!30147)))))

(assert (=> b!107320 (= lt!30147 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!30149))))))

(declare-fun b!107321 () Bool)

(declare-fun lt!30148 () tuple2!1856)

(declare-fun e!59542 () Bool)

(assert (=> b!107321 (= e!59542 (= (list!723 (_2!1135 lt!30148)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508)))))))))))

(declare-fun b!107322 () Bool)

(declare-fun e!59543 () Bool)

(assert (=> b!107322 (= e!59543 (not (isEmpty!794 (_1!1135 lt!30148))))))

(declare-fun b!107323 () Bool)

(assert (=> b!107323 (= e!59541 (tuple2!1857 (BalanceConc!1087 Empty!541) (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508))))))))

(declare-fun b!107325 () Bool)

(declare-fun e!59540 () Bool)

(assert (=> b!107325 (= e!59540 e!59543)))

(declare-fun res!51497 () Bool)

(assert (=> b!107325 (= res!51497 (< (size!1513 (_2!1135 lt!30148)) (size!1513 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508)))))))))

(assert (=> b!107325 (=> (not res!51497) (not e!59543))))

(declare-fun b!107326 () Bool)

(declare-fun res!51499 () Bool)

(assert (=> b!107326 (=> (not res!51499) (not e!59542))))

(assert (=> b!107326 (= res!51499 (= (list!724 (_1!1135 lt!30148)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508)))))))))))

(declare-fun b!107324 () Bool)

(assert (=> b!107324 (= e!59540 (= (list!723 (_2!1135 lt!30148)) (list!723 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508)))))))))

(declare-fun d!26284 () Bool)

(assert (=> d!26284 e!59542))

(declare-fun res!51498 () Bool)

(assert (=> d!26284 (=> (not res!51498) (not e!59542))))

(assert (=> d!26284 (= res!51498 e!59540)))

(declare-fun c!25807 () Bool)

(assert (=> d!26284 (= c!25807 (> (size!1514 (_1!1135 lt!30148)) 0))))

(assert (=> d!26284 (= lt!30148 e!59541)))

(declare-fun c!25806 () Bool)

(assert (=> d!26284 (= c!25806 ((_ is Some!196) lt!30149))))

(assert (=> d!26284 (= lt!30149 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508))))))))

(assert (=> d!26284 (= (lexRec!60 thiss!11428 rules!1152 (++!282 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))) (charsOf!88 (_1!1139 (v!13005 lt!29508))))) lt!30148)))

(assert (= (and d!26284 c!25806) b!107320))

(assert (= (and d!26284 (not c!25806)) b!107323))

(assert (= (and d!26284 c!25807) b!107325))

(assert (= (and d!26284 (not c!25807)) b!107324))

(assert (= (and b!107325 res!51497) b!107322))

(assert (= (and d!26284 res!51498) b!107326))

(assert (= (and b!107326 res!51499) b!107321))

(declare-fun m!95366 () Bool)

(assert (=> b!107320 m!95366))

(declare-fun m!95368 () Bool)

(assert (=> b!107320 m!95368))

(declare-fun m!95370 () Bool)

(assert (=> b!107326 m!95370))

(assert (=> b!107326 m!92504))

(assert (=> b!107326 m!95276))

(assert (=> b!107326 m!95276))

(declare-fun m!95372 () Bool)

(assert (=> b!107326 m!95372))

(declare-fun m!95374 () Bool)

(assert (=> b!107325 m!95374))

(assert (=> b!107325 m!92504))

(declare-fun m!95376 () Bool)

(assert (=> b!107325 m!95376))

(declare-fun m!95378 () Bool)

(assert (=> b!107321 m!95378))

(assert (=> b!107321 m!92504))

(assert (=> b!107321 m!95276))

(assert (=> b!107321 m!95276))

(assert (=> b!107321 m!95372))

(declare-fun m!95380 () Bool)

(assert (=> d!26284 m!95380))

(assert (=> d!26284 m!92504))

(declare-fun m!95382 () Bool)

(assert (=> d!26284 m!95382))

(declare-fun m!95384 () Bool)

(assert (=> b!107322 m!95384))

(assert (=> b!107324 m!95378))

(assert (=> b!107324 m!92504))

(assert (=> b!107324 m!95276))

(assert (=> b!105781 d!26284))

(declare-fun d!26286 () Bool)

(assert (=> d!26286 (= (list!723 (_2!1135 lt!29512)) (list!727 (c!25296 (_2!1135 lt!29512))))))

(declare-fun bs!10309 () Bool)

(assert (= bs!10309 d!26286))

(declare-fun m!95386 () Bool)

(assert (=> bs!10309 m!95386))

(assert (=> b!105781 d!26286))

(declare-fun d!26288 () Bool)

(assert (=> d!26288 (= (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29508)))) (list!727 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29508))))))))

(declare-fun bs!10310 () Bool)

(assert (= bs!10310 d!26288))

(declare-fun m!95388 () Bool)

(assert (=> bs!10310 m!95388))

(assert (=> b!105781 d!26288))

(declare-fun lt!30150 () List!1711)

(declare-fun b!107330 () Bool)

(declare-fun e!59544 () Bool)

(assert (=> b!107330 (= e!59544 (or (not (= (++!283 lt!29511 lt!29502) Nil!1705)) (= lt!30150 lt!29516)))))

(declare-fun b!107328 () Bool)

(declare-fun e!59545 () List!1711)

(assert (=> b!107328 (= e!59545 (Cons!1705 (h!7102 lt!29516) (++!283 (t!21400 lt!29516) (++!283 lt!29511 lt!29502))))))

(declare-fun d!26290 () Bool)

(assert (=> d!26290 e!59544))

(declare-fun res!51501 () Bool)

(assert (=> d!26290 (=> (not res!51501) (not e!59544))))

(assert (=> d!26290 (= res!51501 (= (content!146 lt!30150) ((_ map or) (content!146 lt!29516) (content!146 (++!283 lt!29511 lt!29502)))))))

(assert (=> d!26290 (= lt!30150 e!59545)))

(declare-fun c!25808 () Bool)

(assert (=> d!26290 (= c!25808 ((_ is Nil!1705) lt!29516))))

(assert (=> d!26290 (= (++!283 lt!29516 (++!283 lt!29511 lt!29502)) lt!30150)))

(declare-fun b!107327 () Bool)

(assert (=> b!107327 (= e!59545 (++!283 lt!29511 lt!29502))))

(declare-fun b!107329 () Bool)

(declare-fun res!51500 () Bool)

(assert (=> b!107329 (=> (not res!51500) (not e!59544))))

(assert (=> b!107329 (= res!51500 (= (size!1519 lt!30150) (+ (size!1519 lt!29516) (size!1519 (++!283 lt!29511 lt!29502)))))))

(assert (= (and d!26290 c!25808) b!107327))

(assert (= (and d!26290 (not c!25808)) b!107328))

(assert (= (and d!26290 res!51501) b!107329))

(assert (= (and b!107329 res!51500) b!107330))

(assert (=> b!107328 m!92486))

(declare-fun m!95390 () Bool)

(assert (=> b!107328 m!95390))

(declare-fun m!95392 () Bool)

(assert (=> d!26290 m!95392))

(declare-fun m!95394 () Bool)

(assert (=> d!26290 m!95394))

(assert (=> d!26290 m!92486))

(declare-fun m!95396 () Bool)

(assert (=> d!26290 m!95396))

(declare-fun m!95398 () Bool)

(assert (=> b!107329 m!95398))

(declare-fun m!95400 () Bool)

(assert (=> b!107329 m!95400))

(assert (=> b!107329 m!92486))

(declare-fun m!95402 () Bool)

(assert (=> b!107329 m!95402))

(assert (=> b!105781 d!26290))

(declare-fun d!26292 () Bool)

(declare-fun e!59547 () Bool)

(assert (=> d!26292 e!59547))

(declare-fun res!51503 () Bool)

(assert (=> d!26292 (=> (not res!51503) (not e!59547))))

(declare-fun lt!30151 () List!1713)

(assert (=> d!26292 (= res!51503 (= (content!145 lt!30151) ((_ map or) (content!145 lt!29510) (content!145 lt!29505))))))

(declare-fun e!59546 () List!1713)

(assert (=> d!26292 (= lt!30151 e!59546)))

(declare-fun c!25809 () Bool)

(assert (=> d!26292 (= c!25809 ((_ is Nil!1707) lt!29510))))

(assert (=> d!26292 (= (++!284 lt!29510 lt!29505) lt!30151)))

(declare-fun b!107334 () Bool)

(assert (=> b!107334 (= e!59547 (or (not (= lt!29505 Nil!1707)) (= lt!30151 lt!29510)))))

(declare-fun b!107332 () Bool)

(assert (=> b!107332 (= e!59546 (Cons!1707 (h!7104 lt!29510) (++!284 (t!21402 lt!29510) lt!29505)))))

(declare-fun b!107333 () Bool)

(declare-fun res!51502 () Bool)

(assert (=> b!107333 (=> (not res!51502) (not e!59547))))

(assert (=> b!107333 (= res!51502 (= (size!1521 lt!30151) (+ (size!1521 lt!29510) (size!1521 lt!29505))))))

(declare-fun b!107331 () Bool)

(assert (=> b!107331 (= e!59546 lt!29505)))

(assert (= (and d!26292 c!25809) b!107331))

(assert (= (and d!26292 (not c!25809)) b!107332))

(assert (= (and d!26292 res!51503) b!107333))

(assert (= (and b!107333 res!51502) b!107334))

(declare-fun m!95404 () Bool)

(assert (=> d!26292 m!95404))

(assert (=> d!26292 m!95238))

(declare-fun m!95406 () Bool)

(assert (=> d!26292 m!95406))

(declare-fun m!95408 () Bool)

(assert (=> b!107332 m!95408))

(declare-fun m!95410 () Bool)

(assert (=> b!107333 m!95410))

(assert (=> b!107333 m!95246))

(declare-fun m!95412 () Bool)

(assert (=> b!107333 m!95412))

(assert (=> b!105781 d!26292))

(assert (=> b!105781 d!25974))

(assert (=> b!105781 d!25526))

(declare-fun d!26294 () Bool)

(declare-fun e!59549 () Bool)

(assert (=> d!26294 e!59549))

(declare-fun res!51505 () Bool)

(assert (=> d!26294 (=> (not res!51505) (not e!59549))))

(declare-fun lt!30152 () List!1713)

(assert (=> d!26294 (= res!51505 (= (content!145 lt!30152) ((_ map or) (content!145 lt!29505) (content!145 lt!29517))))))

(declare-fun e!59548 () List!1713)

(assert (=> d!26294 (= lt!30152 e!59548)))

(declare-fun c!25810 () Bool)

(assert (=> d!26294 (= c!25810 ((_ is Nil!1707) lt!29505))))

(assert (=> d!26294 (= (++!284 lt!29505 lt!29517) lt!30152)))

(declare-fun b!107338 () Bool)

(assert (=> b!107338 (= e!59549 (or (not (= lt!29517 Nil!1707)) (= lt!30152 lt!29505)))))

(declare-fun b!107336 () Bool)

(assert (=> b!107336 (= e!59548 (Cons!1707 (h!7104 lt!29505) (++!284 (t!21402 lt!29505) lt!29517)))))

(declare-fun b!107337 () Bool)

(declare-fun res!51504 () Bool)

(assert (=> b!107337 (=> (not res!51504) (not e!59549))))

(assert (=> b!107337 (= res!51504 (= (size!1521 lt!30152) (+ (size!1521 lt!29505) (size!1521 lt!29517))))))

(declare-fun b!107335 () Bool)

(assert (=> b!107335 (= e!59548 lt!29517)))

(assert (= (and d!26294 c!25810) b!107335))

(assert (= (and d!26294 (not c!25810)) b!107336))

(assert (= (and d!26294 res!51505) b!107337))

(assert (= (and b!107337 res!51504) b!107338))

(declare-fun m!95414 () Bool)

(assert (=> d!26294 m!95414))

(assert (=> d!26294 m!95406))

(declare-fun m!95416 () Bool)

(assert (=> d!26294 m!95416))

(declare-fun m!95418 () Bool)

(assert (=> b!107336 m!95418))

(declare-fun m!95420 () Bool)

(assert (=> b!107337 m!95420))

(assert (=> b!107337 m!95412))

(declare-fun m!95422 () Bool)

(assert (=> b!107337 m!95422))

(assert (=> b!105781 d!26294))

(declare-fun d!26296 () Bool)

(assert (=> d!26296 (= (list!724 (append!61 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))) (_1!1139 (v!13005 lt!29508)))) (list!728 (c!25298 (append!61 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))) (_1!1139 (v!13005 lt!29508))))))))

(declare-fun bs!10311 () Bool)

(assert (= bs!10311 d!26296))

(declare-fun m!95424 () Bool)

(assert (=> bs!10311 m!95424))

(assert (=> b!105781 d!26296))

(declare-fun d!26298 () Bool)

(assert (=> d!26298 (= (++!284 (++!284 lt!29510 lt!29505) lt!29517) (++!284 lt!29510 (++!284 lt!29505 lt!29517)))))

(declare-fun lt!30153 () Unit!1124)

(assert (=> d!26298 (= lt!30153 (choose!1402 lt!29510 lt!29505 lt!29517))))

(assert (=> d!26298 (= (lemmaConcatAssociativity!105 lt!29510 lt!29505 lt!29517) lt!30153)))

(declare-fun bs!10312 () Bool)

(assert (= bs!10312 d!26298))

(assert (=> bs!10312 m!92516))

(assert (=> bs!10312 m!92516))

(assert (=> bs!10312 m!92518))

(assert (=> bs!10312 m!92472))

(declare-fun m!95426 () Bool)

(assert (=> bs!10312 m!95426))

(assert (=> bs!10312 m!92472))

(assert (=> bs!10312 m!92474))

(assert (=> b!105781 d!26298))

(declare-fun d!26300 () Bool)

(declare-fun e!59550 () Bool)

(assert (=> d!26300 e!59550))

(declare-fun res!51506 () Bool)

(assert (=> d!26300 (=> (not res!51506) (not e!59550))))

(assert (=> d!26300 (= res!51506 (isBalanced!151 (append!63 (c!25298 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247)))) (_1!1139 (v!13005 lt!29508)))))))

(declare-fun lt!30154 () BalanceConc!1086)

(assert (=> d!26300 (= lt!30154 (BalanceConc!1087 (append!63 (c!25298 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247)))) (_1!1139 (v!13005 lt!29508)))))))

(assert (=> d!26300 (= (append!61 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))) (_1!1139 (v!13005 lt!29508))) lt!30154)))

(declare-fun b!107339 () Bool)

(assert (=> b!107339 (= e!59550 (= (list!724 lt!30154) ($colon+!10 (list!724 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247)))) (_1!1139 (v!13005 lt!29508)))))))

(assert (= (and d!26300 res!51506) b!107339))

(declare-fun m!95428 () Bool)

(assert (=> d!26300 m!95428))

(assert (=> d!26300 m!95428))

(declare-fun m!95430 () Bool)

(assert (=> d!26300 m!95430))

(declare-fun m!95432 () Bool)

(assert (=> b!107339 m!95432))

(assert (=> b!107339 m!91648))

(assert (=> b!107339 m!91668))

(assert (=> b!107339 m!91668))

(declare-fun m!95434 () Bool)

(assert (=> b!107339 m!95434))

(assert (=> b!105781 d!26300))

(declare-fun d!26302 () Bool)

(declare-fun e!59552 () Bool)

(assert (=> d!26302 e!59552))

(declare-fun res!51508 () Bool)

(assert (=> d!26302 (=> (not res!51508) (not e!59552))))

(declare-fun lt!30155 () List!1713)

(assert (=> d!26302 (= res!51508 (= (content!145 lt!30155) ((_ map or) (content!145 (++!284 lt!29510 lt!29505)) (content!145 lt!29517))))))

(declare-fun e!59551 () List!1713)

(assert (=> d!26302 (= lt!30155 e!59551)))

(declare-fun c!25811 () Bool)

(assert (=> d!26302 (= c!25811 ((_ is Nil!1707) (++!284 lt!29510 lt!29505)))))

(assert (=> d!26302 (= (++!284 (++!284 lt!29510 lt!29505) lt!29517) lt!30155)))

(declare-fun b!107343 () Bool)

(assert (=> b!107343 (= e!59552 (or (not (= lt!29517 Nil!1707)) (= lt!30155 (++!284 lt!29510 lt!29505))))))

(declare-fun b!107341 () Bool)

(assert (=> b!107341 (= e!59551 (Cons!1707 (h!7104 (++!284 lt!29510 lt!29505)) (++!284 (t!21402 (++!284 lt!29510 lt!29505)) lt!29517)))))

(declare-fun b!107342 () Bool)

(declare-fun res!51507 () Bool)

(assert (=> b!107342 (=> (not res!51507) (not e!59552))))

(assert (=> b!107342 (= res!51507 (= (size!1521 lt!30155) (+ (size!1521 (++!284 lt!29510 lt!29505)) (size!1521 lt!29517))))))

(declare-fun b!107340 () Bool)

(assert (=> b!107340 (= e!59551 lt!29517)))

(assert (= (and d!26302 c!25811) b!107340))

(assert (= (and d!26302 (not c!25811)) b!107341))

(assert (= (and d!26302 res!51508) b!107342))

(assert (= (and b!107342 res!51507) b!107343))

(declare-fun m!95436 () Bool)

(assert (=> d!26302 m!95436))

(assert (=> d!26302 m!92516))

(declare-fun m!95438 () Bool)

(assert (=> d!26302 m!95438))

(assert (=> d!26302 m!95416))

(declare-fun m!95440 () Bool)

(assert (=> b!107341 m!95440))

(declare-fun m!95442 () Bool)

(assert (=> b!107342 m!95442))

(assert (=> b!107342 m!92516))

(declare-fun m!95444 () Bool)

(assert (=> b!107342 m!95444))

(assert (=> b!107342 m!95422))

(assert (=> b!105781 d!26302))

(declare-fun e!59553 () Bool)

(declare-fun lt!30156 () List!1711)

(declare-fun b!107347 () Bool)

(assert (=> b!107347 (= e!59553 (or (not (= lt!29502 Nil!1705)) (= lt!30156 lt!29511)))))

(declare-fun b!107345 () Bool)

(declare-fun e!59554 () List!1711)

(assert (=> b!107345 (= e!59554 (Cons!1705 (h!7102 lt!29511) (++!283 (t!21400 lt!29511) lt!29502)))))

(declare-fun d!26304 () Bool)

(assert (=> d!26304 e!59553))

(declare-fun res!51510 () Bool)

(assert (=> d!26304 (=> (not res!51510) (not e!59553))))

(assert (=> d!26304 (= res!51510 (= (content!146 lt!30156) ((_ map or) (content!146 lt!29511) (content!146 lt!29502))))))

(assert (=> d!26304 (= lt!30156 e!59554)))

(declare-fun c!25812 () Bool)

(assert (=> d!26304 (= c!25812 ((_ is Nil!1705) lt!29511))))

(assert (=> d!26304 (= (++!283 lt!29511 lt!29502) lt!30156)))

(declare-fun b!107344 () Bool)

(assert (=> b!107344 (= e!59554 lt!29502)))

(declare-fun b!107346 () Bool)

(declare-fun res!51509 () Bool)

(assert (=> b!107346 (=> (not res!51509) (not e!59553))))

(assert (=> b!107346 (= res!51509 (= (size!1519 lt!30156) (+ (size!1519 lt!29511) (size!1519 lt!29502))))))

(assert (= (and d!26304 c!25812) b!107344))

(assert (= (and d!26304 (not c!25812)) b!107345))

(assert (= (and d!26304 res!51510) b!107346))

(assert (= (and b!107346 res!51509) b!107347))

(declare-fun m!95446 () Bool)

(assert (=> b!107345 m!95446))

(declare-fun m!95448 () Bool)

(assert (=> d!26304 m!95448))

(declare-fun m!95450 () Bool)

(assert (=> d!26304 m!95450))

(assert (=> d!26304 m!95228))

(declare-fun m!95452 () Bool)

(assert (=> b!107346 m!95452))

(declare-fun m!95454 () Bool)

(assert (=> b!107346 m!95454))

(assert (=> b!107346 m!95234))

(assert (=> b!105781 d!26304))

(declare-fun lt!30157 () List!1711)

(declare-fun b!107351 () Bool)

(declare-fun e!59555 () Bool)

(assert (=> b!107351 (= e!59555 (or (not (= lt!29511 Nil!1705)) (= lt!30157 lt!29516)))))

(declare-fun b!107349 () Bool)

(declare-fun e!59556 () List!1711)

(assert (=> b!107349 (= e!59556 (Cons!1705 (h!7102 lt!29516) (++!283 (t!21400 lt!29516) lt!29511)))))

(declare-fun d!26306 () Bool)

(assert (=> d!26306 e!59555))

(declare-fun res!51512 () Bool)

(assert (=> d!26306 (=> (not res!51512) (not e!59555))))

(assert (=> d!26306 (= res!51512 (= (content!146 lt!30157) ((_ map or) (content!146 lt!29516) (content!146 lt!29511))))))

(assert (=> d!26306 (= lt!30157 e!59556)))

(declare-fun c!25813 () Bool)

(assert (=> d!26306 (= c!25813 ((_ is Nil!1705) lt!29516))))

(assert (=> d!26306 (= (++!283 lt!29516 lt!29511) lt!30157)))

(declare-fun b!107348 () Bool)

(assert (=> b!107348 (= e!59556 lt!29511)))

(declare-fun b!107350 () Bool)

(declare-fun res!51511 () Bool)

(assert (=> b!107350 (=> (not res!51511) (not e!59555))))

(assert (=> b!107350 (= res!51511 (= (size!1519 lt!30157) (+ (size!1519 lt!29516) (size!1519 lt!29511))))))

(assert (= (and d!26306 c!25813) b!107348))

(assert (= (and d!26306 (not c!25813)) b!107349))

(assert (= (and d!26306 res!51512) b!107350))

(assert (= (and b!107350 res!51511) b!107351))

(declare-fun m!95456 () Bool)

(assert (=> b!107349 m!95456))

(declare-fun m!95458 () Bool)

(assert (=> d!26306 m!95458))

(assert (=> d!26306 m!95394))

(assert (=> d!26306 m!95450))

(declare-fun m!95460 () Bool)

(assert (=> b!107350 m!95460))

(assert (=> b!107350 m!95400))

(assert (=> b!107350 m!95454))

(assert (=> b!105781 d!26306))

(declare-fun d!26308 () Bool)

(declare-fun lt!30158 () BalanceConc!1084)

(assert (=> d!26308 (= (list!723 lt!30158) (originalCharacters!416 (_1!1139 (v!13005 lt!29508))))))

(assert (=> d!26308 (= lt!30158 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29508))))) (value!13518 (_1!1139 (v!13005 lt!29508)))))))

(assert (=> d!26308 (= (charsOf!88 (_1!1139 (v!13005 lt!29508))) lt!30158)))

(declare-fun b_lambda!1179 () Bool)

(assert (=> (not b_lambda!1179) (not d!26308)))

(declare-fun tb!3115 () Bool)

(declare-fun t!21469 () Bool)

(assert (=> (and b!105068 (= (toChars!819 (transformation!373 (h!7103 rules!1152))) (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29508)))))) t!21469) tb!3115))

(declare-fun b!107352 () Bool)

(declare-fun e!59557 () Bool)

(declare-fun tp!58731 () Bool)

(assert (=> b!107352 (= e!59557 (and (inv!2080 (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29508))))) (value!13518 (_1!1139 (v!13005 lt!29508)))))) tp!58731))))

(declare-fun result!4610 () Bool)

(assert (=> tb!3115 (= result!4610 (and (inv!2079 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29508))))) (value!13518 (_1!1139 (v!13005 lt!29508))))) e!59557))))

(assert (= tb!3115 b!107352))

(declare-fun m!95462 () Bool)

(assert (=> b!107352 m!95462))

(declare-fun m!95464 () Bool)

(assert (=> tb!3115 m!95464))

(assert (=> d!26308 t!21469))

(declare-fun b_and!4751 () Bool)

(assert (= b_and!4745 (and (=> t!21469 result!4610) b_and!4751)))

(declare-fun tb!3117 () Bool)

(declare-fun t!21471 () Bool)

(assert (=> (and b!105252 (= (toChars!819 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29508)))))) t!21471) tb!3117))

(declare-fun result!4612 () Bool)

(assert (= result!4612 result!4610))

(assert (=> d!26308 t!21471))

(declare-fun b_and!4753 () Bool)

(assert (= b_and!4747 (and (=> t!21471 result!4612) b_and!4753)))

(declare-fun t!21473 () Bool)

(declare-fun tb!3119 () Bool)

(assert (=> (and b!105921 (= (toChars!819 (transformation!373 (h!7103 (t!21401 (t!21401 rules!1152))))) (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29508)))))) t!21473) tb!3119))

(declare-fun result!4614 () Bool)

(assert (= result!4614 result!4610))

(assert (=> d!26308 t!21473))

(declare-fun b_and!4755 () Bool)

(assert (= b_and!4749 (and (=> t!21473 result!4614) b_and!4755)))

(declare-fun m!95466 () Bool)

(assert (=> d!26308 m!95466))

(declare-fun m!95468 () Bool)

(assert (=> d!26308 m!95468))

(assert (=> b!105781 d!26308))

(declare-fun d!26310 () Bool)

(assert (=> d!26310 (= (lexList!83 thiss!11428 rules!1152 lt!29515) (tuple2!1859 lt!29495 Nil!1705))))

(declare-fun lt!30159 () Unit!1124)

(assert (=> d!26310 (= lt!30159 (choose!1403 thiss!11428 rules!1152 lt!29515 lt!29493 lt!29495 (list!724 (_1!1135 lt!29512)) (list!723 (_2!1135 lt!29512))))))

(assert (=> d!26310 (not (isEmpty!793 rules!1152))))

(assert (=> d!26310 (= (lemmaLexThenLexPrefix!47 thiss!11428 rules!1152 lt!29515 lt!29493 lt!29495 (list!724 (_1!1135 lt!29512)) (list!723 (_2!1135 lt!29512))) lt!30159)))

(declare-fun bs!10313 () Bool)

(assert (= bs!10313 d!26310))

(assert (=> bs!10313 m!92494))

(assert (=> bs!10313 m!92478))

(assert (=> bs!10313 m!92492))

(declare-fun m!95470 () Bool)

(assert (=> bs!10313 m!95470))

(assert (=> bs!10313 m!91454))

(assert (=> b!105781 d!26310))

(declare-fun d!26312 () Bool)

(declare-fun lt!30160 () Int)

(assert (=> d!26312 (>= lt!30160 0)))

(declare-fun e!59558 () Int)

(assert (=> d!26312 (= lt!30160 e!59558)))

(declare-fun c!25814 () Bool)

(assert (=> d!26312 (= c!25814 ((_ is Nil!1705) (list!727 (c!25296 (_2!1135 lt!29080)))))))

(assert (=> d!26312 (= (size!1519 (list!727 (c!25296 (_2!1135 lt!29080)))) lt!30160)))

(declare-fun b!107353 () Bool)

(assert (=> b!107353 (= e!59558 0)))

(declare-fun b!107354 () Bool)

(assert (=> b!107354 (= e!59558 (+ 1 (size!1519 (t!21400 (list!727 (c!25296 (_2!1135 lt!29080)))))))))

(assert (= (and d!26312 c!25814) b!107353))

(assert (= (and d!26312 (not c!25814)) b!107354))

(declare-fun m!95472 () Bool)

(assert (=> b!107354 m!95472))

(assert (=> d!25414 d!26312))

(assert (=> d!25414 d!25410))

(declare-fun d!26314 () Bool)

(assert (=> d!26314 (= (isEmpty!797 (list!728 (c!25298 (_1!1135 lt!29080)))) ((_ is Nil!1707) (list!728 (c!25298 (_1!1135 lt!29080)))))))

(assert (=> d!25472 d!26314))

(assert (=> d!25472 d!25422))

(assert (=> d!25472 d!25542))

(declare-fun b!107358 () Bool)

(declare-fun e!59559 () Bool)

(declare-fun lt!30161 () List!1711)

(assert (=> b!107358 (= e!59559 (or (not (= lt!29250 Nil!1705)) (= lt!30161 (t!21400 lt!29255))))))

(declare-fun b!107356 () Bool)

(declare-fun e!59560 () List!1711)

(assert (=> b!107356 (= e!59560 (Cons!1705 (h!7102 (t!21400 lt!29255)) (++!283 (t!21400 (t!21400 lt!29255)) lt!29250)))))

(declare-fun d!26316 () Bool)

(assert (=> d!26316 e!59559))

(declare-fun res!51514 () Bool)

(assert (=> d!26316 (=> (not res!51514) (not e!59559))))

(assert (=> d!26316 (= res!51514 (= (content!146 lt!30161) ((_ map or) (content!146 (t!21400 lt!29255)) (content!146 lt!29250))))))

(assert (=> d!26316 (= lt!30161 e!59560)))

(declare-fun c!25815 () Bool)

(assert (=> d!26316 (= c!25815 ((_ is Nil!1705) (t!21400 lt!29255)))))

(assert (=> d!26316 (= (++!283 (t!21400 lt!29255) lt!29250) lt!30161)))

(declare-fun b!107355 () Bool)

(assert (=> b!107355 (= e!59560 lt!29250)))

(declare-fun b!107357 () Bool)

(declare-fun res!51513 () Bool)

(assert (=> b!107357 (=> (not res!51513) (not e!59559))))

(assert (=> b!107357 (= res!51513 (= (size!1519 lt!30161) (+ (size!1519 (t!21400 lt!29255)) (size!1519 lt!29250))))))

(assert (= (and d!26316 c!25815) b!107355))

(assert (= (and d!26316 (not c!25815)) b!107356))

(assert (= (and d!26316 res!51514) b!107357))

(assert (= (and b!107357 res!51513) b!107358))

(declare-fun m!95474 () Bool)

(assert (=> b!107356 m!95474))

(declare-fun m!95476 () Bool)

(assert (=> d!26316 m!95476))

(assert (=> d!26316 m!95152))

(assert (=> d!26316 m!92590))

(declare-fun m!95478 () Bool)

(assert (=> b!107357 m!95478))

(assert (=> b!107357 m!95180))

(assert (=> b!107357 m!92596))

(assert (=> b!105842 d!26316))

(assert (=> d!25492 d!25510))

(assert (=> d!25492 d!25488))

(assert (=> d!25492 d!25520))

(assert (=> d!25492 d!25494))

(declare-fun d!26318 () Bool)

(assert (=> d!26318 (= (++!284 (++!284 lt!29249 lt!29244) lt!29256) (++!284 lt!29249 (++!284 lt!29244 lt!29256)))))

(assert (=> d!26318 true))

(declare-fun _$52!546 () Unit!1124)

(assert (=> d!26318 (= (choose!1402 lt!29249 lt!29244 lt!29256) _$52!546)))

(declare-fun bs!10314 () Bool)

(assert (= bs!10314 d!26318))

(assert (=> bs!10314 m!91676))

(assert (=> bs!10314 m!91676))

(assert (=> bs!10314 m!91678))

(assert (=> bs!10314 m!91630))

(assert (=> bs!10314 m!91630))

(assert (=> bs!10314 m!91632))

(assert (=> d!25492 d!26318))

(declare-fun d!26320 () Bool)

(declare-fun lt!30162 () Int)

(assert (=> d!26320 (= lt!30162 (size!1519 (list!723 (_2!1135 lt!29540))))))

(assert (=> d!26320 (= lt!30162 (size!1520 (c!25296 (_2!1135 lt!29540))))))

(assert (=> d!26320 (= (size!1513 (_2!1135 lt!29540)) lt!30162)))

(declare-fun bs!10315 () Bool)

(assert (= bs!10315 d!26320))

(assert (=> bs!10315 m!92650))

(assert (=> bs!10315 m!92650))

(declare-fun m!95480 () Bool)

(assert (=> bs!10315 m!95480))

(declare-fun m!95482 () Bool)

(assert (=> bs!10315 m!95482))

(assert (=> b!105835 d!26320))

(declare-fun d!26322 () Bool)

(declare-fun lt!30163 () Int)

(assert (=> d!26322 (= lt!30163 (size!1519 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(assert (=> d!26322 (= lt!30163 (size!1520 (c!25296 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(assert (=> d!26322 (= (size!1513 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) lt!30163)))

(declare-fun bs!10316 () Bool)

(assert (= bs!10316 d!26322))

(assert (=> bs!10316 m!91662))

(assert (=> bs!10316 m!92480))

(assert (=> bs!10316 m!92480))

(assert (=> bs!10316 m!95116))

(declare-fun m!95484 () Bool)

(assert (=> bs!10316 m!95484))

(assert (=> b!105835 d!26322))

(assert (=> d!25478 d!26156))

(declare-fun d!26324 () Bool)

(declare-fun res!51519 () Bool)

(declare-fun e!59565 () Bool)

(assert (=> d!26324 (=> res!51519 e!59565)))

(assert (=> d!26324 (= res!51519 ((_ is Nil!1706) rules!1152))))

(assert (=> d!26324 (= (forall!227 rules!1152 lambda!1959) e!59565)))

(declare-fun b!107363 () Bool)

(declare-fun e!59566 () Bool)

(assert (=> b!107363 (= e!59565 e!59566)))

(declare-fun res!51520 () Bool)

(assert (=> b!107363 (=> (not res!51520) (not e!59566))))

(declare-fun dynLambda!543 (Int Rule!546) Bool)

(assert (=> b!107363 (= res!51520 (dynLambda!543 lambda!1959 (h!7103 rules!1152)))))

(declare-fun b!107364 () Bool)

(assert (=> b!107364 (= e!59566 (forall!227 (t!21401 rules!1152) lambda!1959))))

(assert (= (and d!26324 (not res!51519)) b!107363))

(assert (= (and b!107363 res!51520) b!107364))

(declare-fun b_lambda!1181 () Bool)

(assert (=> (not b_lambda!1181) (not b!107363)))

(declare-fun m!95486 () Bool)

(assert (=> b!107363 m!95486))

(declare-fun m!95488 () Bool)

(assert (=> b!107364 m!95488))

(assert (=> d!25478 d!26324))

(declare-fun b!107367 () Bool)

(declare-fun e!59568 () List!1713)

(assert (=> b!107367 (= e!59568 (list!732 (xs!3132 (c!25298 (_1!1135 lt!29237)))))))

(declare-fun b!107366 () Bool)

(declare-fun e!59567 () List!1713)

(assert (=> b!107366 (= e!59567 e!59568)))

(declare-fun c!25817 () Bool)

(assert (=> b!107366 (= c!25817 ((_ is Leaf!863) (c!25298 (_1!1135 lt!29237))))))

(declare-fun b!107365 () Bool)

(assert (=> b!107365 (= e!59567 Nil!1707)))

(declare-fun b!107368 () Bool)

(assert (=> b!107368 (= e!59568 (++!284 (list!728 (left!1304 (c!25298 (_1!1135 lt!29237)))) (list!728 (right!1634 (c!25298 (_1!1135 lt!29237))))))))

(declare-fun d!26326 () Bool)

(declare-fun c!25816 () Bool)

(assert (=> d!26326 (= c!25816 ((_ is Empty!541) (c!25298 (_1!1135 lt!29237))))))

(assert (=> d!26326 (= (list!728 (c!25298 (_1!1135 lt!29237))) e!59567)))

(assert (= (and d!26326 c!25816) b!107365))

(assert (= (and d!26326 (not c!25816)) b!107366))

(assert (= (and b!107366 c!25817) b!107367))

(assert (= (and b!107366 (not c!25817)) b!107368))

(declare-fun m!95490 () Bool)

(assert (=> b!107367 m!95490))

(declare-fun m!95492 () Bool)

(assert (=> b!107368 m!95492))

(declare-fun m!95494 () Bool)

(assert (=> b!107368 m!95494))

(assert (=> b!107368 m!95492))

(assert (=> b!107368 m!95494))

(declare-fun m!95496 () Bool)

(assert (=> b!107368 m!95496))

(assert (=> d!25322 d!26326))

(declare-fun d!26328 () Bool)

(declare-fun res!51521 () Bool)

(declare-fun e!59569 () Bool)

(assert (=> d!26328 (=> (not res!51521) (not e!59569))))

(assert (=> d!26328 (= res!51521 (= (csize!1310 (right!1633 (c!25296 input!576))) (+ (size!1520 (left!1303 (right!1633 (c!25296 input!576)))) (size!1520 (right!1633 (right!1633 (c!25296 input!576)))))))))

(assert (=> d!26328 (= (inv!2084 (right!1633 (c!25296 input!576))) e!59569)))

(declare-fun b!107369 () Bool)

(declare-fun res!51522 () Bool)

(assert (=> b!107369 (=> (not res!51522) (not e!59569))))

(assert (=> b!107369 (= res!51522 (and (not (= (left!1303 (right!1633 (c!25296 input!576))) Empty!540)) (not (= (right!1633 (right!1633 (c!25296 input!576))) Empty!540))))))

(declare-fun b!107370 () Bool)

(declare-fun res!51523 () Bool)

(assert (=> b!107370 (=> (not res!51523) (not e!59569))))

(assert (=> b!107370 (= res!51523 (= (cheight!751 (right!1633 (c!25296 input!576))) (+ (max!0 (height!64 (left!1303 (right!1633 (c!25296 input!576)))) (height!64 (right!1633 (right!1633 (c!25296 input!576))))) 1)))))

(declare-fun b!107371 () Bool)

(assert (=> b!107371 (= e!59569 (<= 0 (cheight!751 (right!1633 (c!25296 input!576)))))))

(assert (= (and d!26328 res!51521) b!107369))

(assert (= (and b!107369 res!51522) b!107370))

(assert (= (and b!107370 res!51523) b!107371))

(declare-fun m!95498 () Bool)

(assert (=> d!26328 m!95498))

(declare-fun m!95500 () Bool)

(assert (=> d!26328 m!95500))

(declare-fun m!95502 () Bool)

(assert (=> b!107370 m!95502))

(declare-fun m!95504 () Bool)

(assert (=> b!107370 m!95504))

(assert (=> b!107370 m!95502))

(assert (=> b!107370 m!95504))

(declare-fun m!95506 () Bool)

(assert (=> b!107370 m!95506))

(assert (=> b!105562 d!26328))

(assert (=> b!105772 d!26108))

(declare-fun d!26330 () Bool)

(assert (=> d!26330 (= (height!64 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (ite ((_ is Empty!540) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) 0 (ite ((_ is Leaf!862) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) 1 (cheight!751 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(assert (=> b!105772 d!26330))

(declare-fun d!26332 () Bool)

(assert (=> d!26332 (= (height!64 (c!25296 (BalanceConc!1085 Empty!540))) (ite ((_ is Empty!540) (c!25296 (BalanceConc!1085 Empty!540))) 0 (ite ((_ is Leaf!862) (c!25296 (BalanceConc!1085 Empty!540))) 1 (cheight!751 (c!25296 (BalanceConc!1085 Empty!540))))))))

(assert (=> b!105772 d!26332))

(declare-fun d!26334 () Bool)

(assert (=> d!26334 (= (height!64 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (ite ((_ is Empty!540) (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) 0 (ite ((_ is Leaf!862) (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) 1 (cheight!751 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))))

(assert (=> b!105772 d!26334))

(declare-fun d!26336 () Bool)

(assert (=> d!26336 (= (max!0 (height!64 (c!25296 (BalanceConc!1085 Empty!540))) (height!64 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (ite (< (height!64 (c!25296 (BalanceConc!1085 Empty!540))) (height!64 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (height!64 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) (height!64 (c!25296 (BalanceConc!1085 Empty!540)))))))

(assert (=> b!105772 d!26336))

(declare-fun d!26338 () Bool)

(declare-fun e!59571 () Bool)

(assert (=> d!26338 e!59571))

(declare-fun res!51525 () Bool)

(assert (=> d!26338 (=> (not res!51525) (not e!59571))))

(declare-fun lt!30164 () List!1713)

(assert (=> d!26338 (= res!51525 (= (content!145 lt!30164) ((_ map or) (content!145 (t!21402 (++!284 lt!29249 lt!29244))) (content!145 lt!29256))))))

(declare-fun e!59570 () List!1713)

(assert (=> d!26338 (= lt!30164 e!59570)))

(declare-fun c!25818 () Bool)

(assert (=> d!26338 (= c!25818 ((_ is Nil!1707) (t!21402 (++!284 lt!29249 lt!29244))))))

(assert (=> d!26338 (= (++!284 (t!21402 (++!284 lt!29249 lt!29244)) lt!29256) lt!30164)))

(declare-fun b!107375 () Bool)

(assert (=> b!107375 (= e!59571 (or (not (= lt!29256 Nil!1707)) (= lt!30164 (t!21402 (++!284 lt!29249 lt!29244)))))))

(declare-fun b!107373 () Bool)

(assert (=> b!107373 (= e!59570 (Cons!1707 (h!7104 (t!21402 (++!284 lt!29249 lt!29244))) (++!284 (t!21402 (t!21402 (++!284 lt!29249 lt!29244))) lt!29256)))))

(declare-fun b!107374 () Bool)

(declare-fun res!51524 () Bool)

(assert (=> b!107374 (=> (not res!51524) (not e!59571))))

(assert (=> b!107374 (= res!51524 (= (size!1521 lt!30164) (+ (size!1521 (t!21402 (++!284 lt!29249 lt!29244))) (size!1521 lt!29256))))))

(declare-fun b!107372 () Bool)

(assert (=> b!107372 (= e!59570 lt!29256)))

(assert (= (and d!26338 c!25818) b!107372))

(assert (= (and d!26338 (not c!25818)) b!107373))

(assert (= (and d!26338 res!51525) b!107374))

(assert (= (and b!107374 res!51524) b!107375))

(declare-fun m!95508 () Bool)

(assert (=> d!26338 m!95508))

(declare-fun m!95510 () Bool)

(assert (=> d!26338 m!95510))

(assert (=> d!26338 m!92542))

(declare-fun m!95512 () Bool)

(assert (=> b!107373 m!95512))

(declare-fun m!95514 () Bool)

(assert (=> b!107374 m!95514))

(declare-fun m!95516 () Bool)

(assert (=> b!107374 m!95516))

(assert (=> b!107374 m!92550))

(assert (=> b!105797 d!26338))

(declare-fun d!26340 () Bool)

(assert (=> d!26340 (= (inv!2074 (tag!551 (h!7103 (t!21401 (t!21401 rules!1152))))) (= (mod (str.len (value!13517 (tag!551 (h!7103 (t!21401 (t!21401 rules!1152)))))) 2) 0))))

(assert (=> b!105920 d!26340))

(declare-fun d!26342 () Bool)

(declare-fun res!51526 () Bool)

(declare-fun e!59572 () Bool)

(assert (=> d!26342 (=> (not res!51526) (not e!59572))))

(assert (=> d!26342 (= res!51526 (semiInverseModEq!99 (toChars!819 (transformation!373 (h!7103 (t!21401 (t!21401 rules!1152))))) (toValue!960 (transformation!373 (h!7103 (t!21401 (t!21401 rules!1152)))))))))

(assert (=> d!26342 (= (inv!2078 (transformation!373 (h!7103 (t!21401 (t!21401 rules!1152))))) e!59572)))

(declare-fun b!107376 () Bool)

(assert (=> b!107376 (= e!59572 (equivClasses!94 (toChars!819 (transformation!373 (h!7103 (t!21401 (t!21401 rules!1152))))) (toValue!960 (transformation!373 (h!7103 (t!21401 (t!21401 rules!1152)))))))))

(assert (= (and d!26342 res!51526) b!107376))

(declare-fun m!95518 () Bool)

(assert (=> d!26342 m!95518))

(declare-fun m!95520 () Bool)

(assert (=> b!107376 m!95520))

(assert (=> b!105920 d!26342))

(declare-fun d!26344 () Bool)

(declare-fun lt!30165 () Int)

(assert (=> d!26344 (= lt!30165 (size!1521 (list!724 (_1!1135 lt!29560))))))

(assert (=> d!26344 (= lt!30165 (size!1522 (c!25298 (_1!1135 lt!29560))))))

(assert (=> d!26344 (= (size!1514 (_1!1135 lt!29560)) lt!30165)))

(declare-fun bs!10317 () Bool)

(assert (= bs!10317 d!26344))

(assert (=> bs!10317 m!92748))

(assert (=> bs!10317 m!92748))

(declare-fun m!95522 () Bool)

(assert (=> bs!10317 m!95522))

(declare-fun m!95524 () Bool)

(assert (=> bs!10317 m!95524))

(assert (=> d!25536 d!26344))

(declare-fun b!107377 () Bool)

(declare-fun res!51530 () Bool)

(declare-fun e!59577 () Bool)

(assert (=> b!107377 (=> (not res!51530) (not e!59577))))

(declare-fun e!59576 () Bool)

(assert (=> b!107377 (= res!51530 e!59576)))

(declare-fun res!51529 () Bool)

(assert (=> b!107377 (=> res!51529 e!59576)))

(declare-fun lt!30171 () Option!197)

(assert (=> b!107377 (= res!51529 (not (isDefined!71 lt!30171)))))

(declare-fun b!107378 () Bool)

(declare-fun e!59574 () Bool)

(declare-fun e!59578 () Bool)

(assert (=> b!107378 (= e!59574 e!59578)))

(declare-fun res!51532 () Bool)

(assert (=> b!107378 (=> (not res!51532) (not e!59578))))

(assert (=> b!107378 (= res!51532 (= (_1!1139 (get!437 lt!30171)) (_1!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29240))))))))))

(declare-fun b!107379 () Bool)

(assert (=> b!107379 (= e!59578 (= (list!723 (_2!1139 (get!437 lt!30171))) (_2!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29240))))))))))

(declare-fun e!59575 () Bool)

(declare-fun b!107380 () Bool)

(assert (=> b!107380 (= e!59575 (= (list!723 (_2!1139 (get!437 lt!30171))) (_2!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29240))))))))))

(declare-fun bm!4716 () Bool)

(declare-fun call!4721 () Option!197)

(assert (=> bm!4716 (= call!4721 (maxPrefixOneRuleZipperSequence!18 thiss!11428 (h!7103 rules!1152) (_2!1139 (v!13005 lt!29240))))))

(declare-fun d!26346 () Bool)

(assert (=> d!26346 e!59577))

(declare-fun res!51528 () Bool)

(assert (=> d!26346 (=> (not res!51528) (not e!59577))))

(assert (=> d!26346 (= res!51528 (= (isDefined!71 lt!30171) (isDefined!72 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29240)))))))))

(declare-fun e!59573 () Option!197)

(assert (=> d!26346 (= lt!30171 e!59573)))

(declare-fun c!25819 () Bool)

(assert (=> d!26346 (= c!25819 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!30172 () Unit!1124)

(declare-fun lt!30170 () Unit!1124)

(assert (=> d!26346 (= lt!30172 lt!30170)))

(declare-fun lt!30167 () List!1711)

(declare-fun lt!30166 () List!1711)

(assert (=> d!26346 (isPrefix!51 lt!30167 lt!30166)))

(assert (=> d!26346 (= lt!30170 (lemmaIsPrefixRefl!51 lt!30167 lt!30166))))

(assert (=> d!26346 (= lt!30166 (list!723 (_2!1139 (v!13005 lt!29240))))))

(assert (=> d!26346 (= lt!30167 (list!723 (_2!1139 (v!13005 lt!29240))))))

(assert (=> d!26346 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!26346 (= (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29240))) lt!30171)))

(declare-fun b!107381 () Bool)

(assert (=> b!107381 (= e!59577 e!59574)))

(declare-fun res!51531 () Bool)

(assert (=> b!107381 (=> res!51531 e!59574)))

(assert (=> b!107381 (= res!51531 (not (isDefined!71 lt!30171)))))

(declare-fun b!107382 () Bool)

(assert (=> b!107382 (= e!59576 e!59575)))

(declare-fun res!51527 () Bool)

(assert (=> b!107382 (=> (not res!51527) (not e!59575))))

(assert (=> b!107382 (= res!51527 (= (_1!1139 (get!437 lt!30171)) (_1!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29240))))))))))

(declare-fun b!107383 () Bool)

(declare-fun lt!30168 () Option!197)

(declare-fun lt!30169 () Option!197)

(assert (=> b!107383 (= e!59573 (ite (and ((_ is None!196) lt!30168) ((_ is None!196) lt!30169)) None!196 (ite ((_ is None!196) lt!30169) lt!30168 (ite ((_ is None!196) lt!30168) lt!30169 (ite (>= (size!1512 (_1!1139 (v!13005 lt!30168))) (size!1512 (_1!1139 (v!13005 lt!30169)))) lt!30168 lt!30169)))))))

(assert (=> b!107383 (= lt!30168 call!4721)))

(assert (=> b!107383 (= lt!30169 (maxPrefixZipperSequence!56 thiss!11428 (t!21401 rules!1152) (_2!1139 (v!13005 lt!29240))))))

(declare-fun b!107384 () Bool)

(assert (=> b!107384 (= e!59573 call!4721)))

(assert (= (and d!26346 c!25819) b!107384))

(assert (= (and d!26346 (not c!25819)) b!107383))

(assert (= (or b!107384 b!107383) bm!4716))

(assert (= (and d!26346 res!51528) b!107377))

(assert (= (and b!107377 (not res!51529)) b!107382))

(assert (= (and b!107382 res!51527) b!107380))

(assert (= (and b!107377 res!51530) b!107381))

(assert (= (and b!107381 (not res!51531)) b!107378))

(assert (= (and b!107378 res!51532) b!107379))

(declare-fun m!95526 () Bool)

(assert (=> b!107383 m!95526))

(declare-fun m!95528 () Bool)

(assert (=> b!107379 m!95528))

(assert (=> b!107379 m!92750))

(declare-fun m!95530 () Bool)

(assert (=> b!107379 m!95530))

(assert (=> b!107379 m!92750))

(assert (=> b!107379 m!95530))

(declare-fun m!95532 () Bool)

(assert (=> b!107379 m!95532))

(declare-fun m!95534 () Bool)

(assert (=> b!107379 m!95534))

(assert (=> b!107382 m!95528))

(assert (=> b!107382 m!92750))

(assert (=> b!107382 m!92750))

(declare-fun m!95536 () Bool)

(assert (=> b!107382 m!95536))

(assert (=> b!107382 m!95536))

(declare-fun m!95538 () Bool)

(assert (=> b!107382 m!95538))

(assert (=> b!107380 m!95528))

(assert (=> b!107380 m!95536))

(assert (=> b!107380 m!95538))

(assert (=> b!107380 m!95534))

(assert (=> b!107380 m!92750))

(assert (=> b!107380 m!92750))

(assert (=> b!107380 m!95536))

(declare-fun m!95540 () Bool)

(assert (=> bm!4716 m!95540))

(declare-fun m!95542 () Bool)

(assert (=> b!107377 m!95542))

(assert (=> d!26346 m!95536))

(declare-fun m!95544 () Bool)

(assert (=> d!26346 m!95544))

(assert (=> d!26346 m!95542))

(assert (=> d!26346 m!92158))

(declare-fun m!95546 () Bool)

(assert (=> d!26346 m!95546))

(declare-fun m!95548 () Bool)

(assert (=> d!26346 m!95548))

(assert (=> d!26346 m!92750))

(assert (=> d!26346 m!92750))

(assert (=> d!26346 m!95536))

(assert (=> b!107381 m!95542))

(assert (=> b!107378 m!95528))

(assert (=> b!107378 m!92750))

(assert (=> b!107378 m!92750))

(assert (=> b!107378 m!95530))

(assert (=> b!107378 m!95530))

(assert (=> b!107378 m!95532))

(assert (=> d!25536 d!26346))

(assert (=> b!105499 d!26240))

(declare-fun b!107387 () Bool)

(declare-fun e!59580 () List!1713)

(assert (=> b!107387 (= e!59580 (list!732 (xs!3132 (c!25298 (BalanceConc!1087 Empty!541)))))))

(declare-fun b!107386 () Bool)

(declare-fun e!59579 () List!1713)

(assert (=> b!107386 (= e!59579 e!59580)))

(declare-fun c!25821 () Bool)

(assert (=> b!107386 (= c!25821 ((_ is Leaf!863) (c!25298 (BalanceConc!1087 Empty!541))))))

(declare-fun b!107385 () Bool)

(assert (=> b!107385 (= e!59579 Nil!1707)))

(declare-fun b!107388 () Bool)

(assert (=> b!107388 (= e!59580 (++!284 (list!728 (left!1304 (c!25298 (BalanceConc!1087 Empty!541)))) (list!728 (right!1634 (c!25298 (BalanceConc!1087 Empty!541))))))))

(declare-fun d!26348 () Bool)

(declare-fun c!25820 () Bool)

(assert (=> d!26348 (= c!25820 ((_ is Empty!541) (c!25298 (BalanceConc!1087 Empty!541))))))

(assert (=> d!26348 (= (list!728 (c!25298 (BalanceConc!1087 Empty!541))) e!59579)))

(assert (= (and d!26348 c!25820) b!107385))

(assert (= (and d!26348 (not c!25820)) b!107386))

(assert (= (and b!107386 c!25821) b!107387))

(assert (= (and b!107386 (not c!25821)) b!107388))

(declare-fun m!95550 () Bool)

(assert (=> b!107387 m!95550))

(declare-fun m!95552 () Bool)

(assert (=> b!107388 m!95552))

(declare-fun m!95554 () Bool)

(assert (=> b!107388 m!95554))

(assert (=> b!107388 m!95552))

(assert (=> b!107388 m!95554))

(declare-fun m!95556 () Bool)

(assert (=> b!107388 m!95556))

(assert (=> d!25512 d!26348))

(declare-fun d!26350 () Bool)

(declare-fun c!25824 () Bool)

(assert (=> d!26350 (= c!25824 ((_ is Nil!1707) lt!29520))))

(declare-fun e!59583 () (InoxSet Token!490))

(assert (=> d!26350 (= (content!145 lt!29520) e!59583)))

(declare-fun b!107393 () Bool)

(assert (=> b!107393 (= e!59583 ((as const (Array Token!490 Bool)) false))))

(declare-fun b!107394 () Bool)

(assert (=> b!107394 (= e!59583 ((_ map or) (store ((as const (Array Token!490 Bool)) false) (h!7104 lt!29520) true) (content!145 (t!21402 lt!29520))))))

(assert (= (and d!26350 c!25824) b!107393))

(assert (= (and d!26350 (not c!25824)) b!107394))

(declare-fun m!95558 () Bool)

(assert (=> b!107394 m!95558))

(declare-fun m!95560 () Bool)

(assert (=> b!107394 m!95560))

(assert (=> d!25488 d!26350))

(declare-fun d!26352 () Bool)

(declare-fun c!25825 () Bool)

(assert (=> d!26352 (= c!25825 ((_ is Nil!1707) lt!29244))))

(declare-fun e!59584 () (InoxSet Token!490))

(assert (=> d!26352 (= (content!145 lt!29244) e!59584)))

(declare-fun b!107395 () Bool)

(assert (=> b!107395 (= e!59584 ((as const (Array Token!490 Bool)) false))))

(declare-fun b!107396 () Bool)

(assert (=> b!107396 (= e!59584 ((_ map or) (store ((as const (Array Token!490 Bool)) false) (h!7104 lt!29244) true) (content!145 (t!21402 lt!29244))))))

(assert (= (and d!26352 c!25825) b!107395))

(assert (= (and d!26352 (not c!25825)) b!107396))

(declare-fun m!95562 () Bool)

(assert (=> b!107396 m!95562))

(declare-fun m!95564 () Bool)

(assert (=> b!107396 m!95564))

(assert (=> d!25488 d!26352))

(declare-fun d!26354 () Bool)

(declare-fun c!25826 () Bool)

(assert (=> d!26354 (= c!25826 ((_ is Nil!1707) lt!29256))))

(declare-fun e!59585 () (InoxSet Token!490))

(assert (=> d!26354 (= (content!145 lt!29256) e!59585)))

(declare-fun b!107397 () Bool)

(assert (=> b!107397 (= e!59585 ((as const (Array Token!490 Bool)) false))))

(declare-fun b!107398 () Bool)

(assert (=> b!107398 (= e!59585 ((_ map or) (store ((as const (Array Token!490 Bool)) false) (h!7104 lt!29256) true) (content!145 (t!21402 lt!29256))))))

(assert (= (and d!26354 c!25826) b!107397))

(assert (= (and d!26354 (not c!25826)) b!107398))

(declare-fun m!95566 () Bool)

(assert (=> b!107398 m!95566))

(declare-fun m!95568 () Bool)

(assert (=> b!107398 m!95568))

(assert (=> d!25488 d!26354))

(declare-fun lt!30173 () List!1711)

(declare-fun e!59586 () Bool)

(declare-fun b!107402 () Bool)

(assert (=> b!107402 (= e!59586 (or (not (= lt!29241 Nil!1705)) (= lt!30173 (t!21400 (++!283 lt!29255 lt!29250)))))))

(declare-fun e!59587 () List!1711)

(declare-fun b!107400 () Bool)

(assert (=> b!107400 (= e!59587 (Cons!1705 (h!7102 (t!21400 (++!283 lt!29255 lt!29250))) (++!283 (t!21400 (t!21400 (++!283 lt!29255 lt!29250))) lt!29241)))))

(declare-fun d!26356 () Bool)

(assert (=> d!26356 e!59586))

(declare-fun res!51534 () Bool)

(assert (=> d!26356 (=> (not res!51534) (not e!59586))))

(assert (=> d!26356 (= res!51534 (= (content!146 lt!30173) ((_ map or) (content!146 (t!21400 (++!283 lt!29255 lt!29250))) (content!146 lt!29241))))))

(assert (=> d!26356 (= lt!30173 e!59587)))

(declare-fun c!25827 () Bool)

(assert (=> d!26356 (= c!25827 ((_ is Nil!1705) (t!21400 (++!283 lt!29255 lt!29250))))))

(assert (=> d!26356 (= (++!283 (t!21400 (++!283 lt!29255 lt!29250)) lt!29241) lt!30173)))

(declare-fun b!107399 () Bool)

(assert (=> b!107399 (= e!59587 lt!29241)))

(declare-fun b!107401 () Bool)

(declare-fun res!51533 () Bool)

(assert (=> b!107401 (=> (not res!51533) (not e!59586))))

(assert (=> b!107401 (= res!51533 (= (size!1519 lt!30173) (+ (size!1519 (t!21400 (++!283 lt!29255 lt!29250))) (size!1519 lt!29241))))))

(assert (= (and d!26356 c!25827) b!107399))

(assert (= (and d!26356 (not c!25827)) b!107400))

(assert (= (and d!26356 res!51534) b!107401))

(assert (= (and b!107401 res!51533) b!107402))

(declare-fun m!95570 () Bool)

(assert (=> b!107400 m!95570))

(declare-fun m!95572 () Bool)

(assert (=> d!26356 m!95572))

(declare-fun m!95574 () Bool)

(assert (=> d!26356 m!95574))

(assert (=> d!26356 m!92592))

(declare-fun m!95576 () Bool)

(assert (=> b!107401 m!95576))

(assert (=> b!107401 m!94492))

(assert (=> b!107401 m!92598))

(assert (=> b!105865 d!26356))

(declare-fun d!26358 () Bool)

(assert (=> d!26358 (= (isEmpty!797 (_1!1136 lt!29533)) ((_ is Nil!1707) (_1!1136 lt!29533)))))

(assert (=> b!105818 d!26358))

(declare-fun d!26360 () Bool)

(assert (=> d!26360 (= (list!724 lt!29572) (list!728 (c!25298 lt!29572)))))

(declare-fun bs!10318 () Bool)

(assert (= bs!10318 d!26360))

(declare-fun m!95578 () Bool)

(assert (=> bs!10318 m!95578))

(assert (=> b!105887 d!26360))

(declare-fun d!26362 () Bool)

(assert (=> d!26362 (= (list!724 (_1!1135 lt!29246)) (list!728 (c!25298 (_1!1135 lt!29246))))))

(declare-fun bs!10319 () Bool)

(assert (= bs!10319 d!26362))

(declare-fun m!95580 () Bool)

(assert (=> bs!10319 m!95580))

(assert (=> b!105887 d!26362))

(declare-fun d!26364 () Bool)

(assert (not d!26364))

(assert (=> b!105853 d!26364))

(assert (=> b!105858 d!26018))

(assert (=> b!105858 d!26020))

(assert (=> b!105858 d!26022))

(declare-fun b!107403 () Bool)

(declare-fun res!51536 () Bool)

(declare-fun e!59590 () Bool)

(assert (=> b!107403 (=> (not res!51536) (not e!59590))))

(declare-fun lt!30176 () Option!198)

(assert (=> b!107403 (= res!51536 (< (size!1519 (_2!1140 (get!438 lt!30176))) (size!1519 (list!723 lt!29233))))))

(declare-fun b!107404 () Bool)

(declare-fun res!51539 () Bool)

(assert (=> b!107404 (=> (not res!51539) (not e!59590))))

(assert (=> b!107404 (= res!51539 (= (++!283 (list!723 (charsOf!88 (_1!1140 (get!438 lt!30176)))) (_2!1140 (get!438 lt!30176))) (list!723 lt!29233)))))

(declare-fun b!107405 () Bool)

(declare-fun res!51540 () Bool)

(assert (=> b!107405 (=> (not res!51540) (not e!59590))))

(assert (=> b!107405 (= res!51540 (matchR!48 (regex!373 (rule!876 (_1!1140 (get!438 lt!30176)))) (list!723 (charsOf!88 (_1!1140 (get!438 lt!30176))))))))

(declare-fun b!107406 () Bool)

(assert (=> b!107406 (= e!59590 (contains!277 rules!1152 (rule!876 (_1!1140 (get!438 lt!30176)))))))

(declare-fun b!107407 () Bool)

(declare-fun res!51537 () Bool)

(assert (=> b!107407 (=> (not res!51537) (not e!59590))))

(assert (=> b!107407 (= res!51537 (= (list!723 (charsOf!88 (_1!1140 (get!438 lt!30176)))) (originalCharacters!416 (_1!1140 (get!438 lt!30176)))))))

(declare-fun b!107408 () Bool)

(declare-fun e!59588 () Bool)

(assert (=> b!107408 (= e!59588 e!59590)))

(declare-fun res!51541 () Bool)

(assert (=> b!107408 (=> (not res!51541) (not e!59590))))

(assert (=> b!107408 (= res!51541 (isDefined!72 lt!30176))))

(declare-fun b!107409 () Bool)

(declare-fun res!51535 () Bool)

(assert (=> b!107409 (=> (not res!51535) (not e!59590))))

(assert (=> b!107409 (= res!51535 (= (value!13518 (_1!1140 (get!438 lt!30176))) (apply!268 (transformation!373 (rule!876 (_1!1140 (get!438 lt!30176)))) (seqFromList!204 (originalCharacters!416 (_1!1140 (get!438 lt!30176)))))))))

(declare-fun bm!4717 () Bool)

(declare-fun call!4722 () Option!198)

(assert (=> bm!4717 (= call!4722 (maxPrefixOneRule!44 thiss!11428 (h!7103 rules!1152) (list!723 lt!29233)))))

(declare-fun b!107410 () Bool)

(declare-fun e!59589 () Option!198)

(assert (=> b!107410 (= e!59589 call!4722)))

(declare-fun d!26366 () Bool)

(assert (=> d!26366 e!59588))

(declare-fun res!51538 () Bool)

(assert (=> d!26366 (=> res!51538 e!59588)))

(assert (=> d!26366 (= res!51538 (isEmpty!801 lt!30176))))

(assert (=> d!26366 (= lt!30176 e!59589)))

(declare-fun c!25828 () Bool)

(assert (=> d!26366 (= c!25828 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!30175 () Unit!1124)

(declare-fun lt!30174 () Unit!1124)

(assert (=> d!26366 (= lt!30175 lt!30174)))

(assert (=> d!26366 (isPrefix!51 (list!723 lt!29233) (list!723 lt!29233))))

(assert (=> d!26366 (= lt!30174 (lemmaIsPrefixRefl!51 (list!723 lt!29233) (list!723 lt!29233)))))

(assert (=> d!26366 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!26366 (= (maxPrefix!93 thiss!11428 rules!1152 (list!723 lt!29233)) lt!30176)))

(declare-fun b!107411 () Bool)

(declare-fun lt!30177 () Option!198)

(declare-fun lt!30178 () Option!198)

(assert (=> b!107411 (= e!59589 (ite (and ((_ is None!197) lt!30177) ((_ is None!197) lt!30178)) None!197 (ite ((_ is None!197) lt!30178) lt!30177 (ite ((_ is None!197) lt!30177) lt!30178 (ite (>= (size!1512 (_1!1140 (v!13006 lt!30177))) (size!1512 (_1!1140 (v!13006 lt!30178)))) lt!30177 lt!30178)))))))

(assert (=> b!107411 (= lt!30177 call!4722)))

(assert (=> b!107411 (= lt!30178 (maxPrefix!93 thiss!11428 (t!21401 rules!1152) (list!723 lt!29233)))))

(assert (= (and d!26366 c!25828) b!107410))

(assert (= (and d!26366 (not c!25828)) b!107411))

(assert (= (or b!107410 b!107411) bm!4717))

(assert (= (and d!26366 (not res!51538)) b!107408))

(assert (= (and b!107408 res!51541) b!107407))

(assert (= (and b!107407 res!51537) b!107403))

(assert (= (and b!107403 res!51536) b!107404))

(assert (= (and b!107404 res!51539) b!107409))

(assert (= (and b!107409 res!51535) b!107405))

(assert (= (and b!107405 res!51540) b!107406))

(declare-fun m!95582 () Bool)

(assert (=> d!26366 m!95582))

(assert (=> d!26366 m!92712))

(assert (=> d!26366 m!92712))

(assert (=> d!26366 m!94478))

(assert (=> d!26366 m!92712))

(assert (=> d!26366 m!92712))

(assert (=> d!26366 m!94480))

(assert (=> d!26366 m!92158))

(declare-fun m!95584 () Bool)

(assert (=> b!107405 m!95584))

(declare-fun m!95586 () Bool)

(assert (=> b!107405 m!95586))

(assert (=> b!107405 m!95586))

(declare-fun m!95588 () Bool)

(assert (=> b!107405 m!95588))

(assert (=> b!107405 m!95588))

(declare-fun m!95590 () Bool)

(assert (=> b!107405 m!95590))

(assert (=> b!107407 m!95584))

(assert (=> b!107407 m!95586))

(assert (=> b!107407 m!95586))

(assert (=> b!107407 m!95588))

(assert (=> b!107409 m!95584))

(declare-fun m!95592 () Bool)

(assert (=> b!107409 m!95592))

(assert (=> b!107409 m!95592))

(declare-fun m!95594 () Bool)

(assert (=> b!107409 m!95594))

(assert (=> b!107406 m!95584))

(declare-fun m!95596 () Bool)

(assert (=> b!107406 m!95596))

(assert (=> b!107411 m!92712))

(assert (=> b!107411 m!94900))

(declare-fun m!95598 () Bool)

(assert (=> b!107408 m!95598))

(assert (=> b!107404 m!95584))

(assert (=> b!107404 m!95586))

(assert (=> b!107404 m!95586))

(assert (=> b!107404 m!95588))

(assert (=> b!107404 m!95588))

(declare-fun m!95600 () Bool)

(assert (=> b!107404 m!95600))

(assert (=> b!107403 m!95584))

(declare-fun m!95602 () Bool)

(assert (=> b!107403 m!95602))

(assert (=> b!107403 m!92712))

(declare-fun m!95604 () Bool)

(assert (=> b!107403 m!95604))

(assert (=> bm!4717 m!92712))

(declare-fun m!95606 () Bool)

(assert (=> bm!4717 m!95606))

(assert (=> b!105858 d!26366))

(declare-fun d!26368 () Bool)

(assert (=> d!26368 (= (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 lt!29233))) (v!13006 (maxPrefix!93 thiss!11428 rules!1152 (list!723 lt!29233))))))

(assert (=> b!105858 d!26368))

(declare-fun b!107424 () Bool)

(declare-fun e!59595 () Bool)

(declare-fun e!59596 () Bool)

(assert (=> b!107424 (= e!59595 e!59596)))

(declare-fun res!51554 () Bool)

(assert (=> b!107424 (=> (not res!51554) (not e!59596))))

(declare-fun height!66 (Conc!541) Int)

(assert (=> b!107424 (= res!51554 (<= (- 1) (- (height!66 (left!1304 (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252))))) (height!66 (right!1634 (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252))))))))))

(declare-fun b!107425 () Bool)

(assert (=> b!107425 (= e!59596 (not (isEmpty!798 (right!1634 (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252)))))))))

(declare-fun b!107426 () Bool)

(declare-fun res!51559 () Bool)

(assert (=> b!107426 (=> (not res!51559) (not e!59596))))

(assert (=> b!107426 (= res!51559 (isBalanced!151 (right!1634 (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252))))))))

(declare-fun b!107427 () Bool)

(declare-fun res!51558 () Bool)

(assert (=> b!107427 (=> (not res!51558) (not e!59596))))

(assert (=> b!107427 (= res!51558 (isBalanced!151 (left!1304 (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252))))))))

(declare-fun d!26370 () Bool)

(declare-fun res!51557 () Bool)

(assert (=> d!26370 (=> res!51557 e!59595)))

(assert (=> d!26370 (= res!51557 (not ((_ is Node!541) (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252))))))))

(assert (=> d!26370 (= (isBalanced!151 (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252)))) e!59595)))

(declare-fun b!107428 () Bool)

(declare-fun res!51555 () Bool)

(assert (=> b!107428 (=> (not res!51555) (not e!59596))))

(assert (=> b!107428 (= res!51555 (not (isEmpty!798 (left!1304 (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252)))))))))

(declare-fun b!107429 () Bool)

(declare-fun res!51556 () Bool)

(assert (=> b!107429 (=> (not res!51556) (not e!59596))))

(assert (=> b!107429 (= res!51556 (<= (- (height!66 (left!1304 (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252))))) (height!66 (right!1634 (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252)))))) 1))))

(assert (= (and d!26370 (not res!51557)) b!107424))

(assert (= (and b!107424 res!51554) b!107429))

(assert (= (and b!107429 res!51556) b!107427))

(assert (= (and b!107427 res!51558) b!107426))

(assert (= (and b!107426 res!51559) b!107428))

(assert (= (and b!107428 res!51555) b!107425))

(declare-fun m!95608 () Bool)

(assert (=> b!107426 m!95608))

(declare-fun m!95610 () Bool)

(assert (=> b!107429 m!95610))

(declare-fun m!95612 () Bool)

(assert (=> b!107429 m!95612))

(assert (=> b!107424 m!95610))

(assert (=> b!107424 m!95612))

(declare-fun m!95614 () Bool)

(assert (=> b!107425 m!95614))

(declare-fun m!95616 () Bool)

(assert (=> b!107427 m!95616))

(declare-fun m!95618 () Bool)

(assert (=> b!107428 m!95618))

(assert (=> d!25546 d!26370))

(declare-fun d!26372 () Bool)

(declare-fun e!59599 () Bool)

(assert (=> d!26372 e!59599))

(declare-fun res!51562 () Bool)

(assert (=> d!26372 (=> (not res!51562) (not e!59599))))

(declare-fun lt!30181 () Conc!541)

(assert (=> d!26372 (= res!51562 (isBalanced!151 lt!30181))))

(declare-fun ++!288 (Conc!541 Conc!541) Conc!541)

(declare-fun fill!33 (Int Token!490) IArray!1083)

(assert (=> d!26372 (= lt!30181 (++!288 (Leaf!863 (fill!33 1 (_1!1139 (v!13005 lt!29252))) 1) (c!25298 (_1!1135 lt!29246))))))

(assert (=> d!26372 (isBalanced!151 (c!25298 (_1!1135 lt!29246)))))

(assert (=> d!26372 (= (prepend!143 (c!25298 (_1!1135 lt!29246)) (_1!1139 (v!13005 lt!29252))) lt!30181)))

(declare-fun b!107432 () Bool)

(assert (=> b!107432 (= e!59599 (= (list!728 lt!30181) (Cons!1707 (_1!1139 (v!13005 lt!29252)) (list!728 (c!25298 (_1!1135 lt!29246))))))))

(assert (= (and d!26372 res!51562) b!107432))

(declare-fun m!95620 () Bool)

(assert (=> d!26372 m!95620))

(declare-fun m!95622 () Bool)

(assert (=> d!26372 m!95622))

(declare-fun m!95624 () Bool)

(assert (=> d!26372 m!95624))

(declare-fun m!95626 () Bool)

(assert (=> d!26372 m!95626))

(declare-fun m!95628 () Bool)

(assert (=> b!107432 m!95628))

(assert (=> b!107432 m!95580))

(assert (=> d!25546 d!26372))

(assert (=> b!105496 d!26036))

(assert (=> b!105496 d!26038))

(assert (=> b!105496 d!25428))

(assert (=> b!105496 d!25284))

(declare-fun d!26374 () Bool)

(declare-fun e!59601 () Bool)

(assert (=> d!26374 e!59601))

(declare-fun res!51564 () Bool)

(assert (=> d!26374 (=> (not res!51564) (not e!59601))))

(declare-fun lt!30182 () List!1713)

(assert (=> d!26374 (= res!51564 (= (content!145 lt!30182) ((_ map or) (content!145 (t!21402 lt!29249)) (content!145 lt!29244))))))

(declare-fun e!59600 () List!1713)

(assert (=> d!26374 (= lt!30182 e!59600)))

(declare-fun c!25829 () Bool)

(assert (=> d!26374 (= c!25829 ((_ is Nil!1707) (t!21402 lt!29249)))))

(assert (=> d!26374 (= (++!284 (t!21402 lt!29249) lt!29244) lt!30182)))

(declare-fun b!107436 () Bool)

(assert (=> b!107436 (= e!59601 (or (not (= lt!29244 Nil!1707)) (= lt!30182 (t!21402 lt!29249))))))

(declare-fun b!107434 () Bool)

(assert (=> b!107434 (= e!59600 (Cons!1707 (h!7104 (t!21402 lt!29249)) (++!284 (t!21402 (t!21402 lt!29249)) lt!29244)))))

(declare-fun b!107435 () Bool)

(declare-fun res!51563 () Bool)

(assert (=> b!107435 (=> (not res!51563) (not e!59601))))

(assert (=> b!107435 (= res!51563 (= (size!1521 lt!30182) (+ (size!1521 (t!21402 lt!29249)) (size!1521 lt!29244))))))

(declare-fun b!107433 () Bool)

(assert (=> b!107433 (= e!59600 lt!29244)))

(assert (= (and d!26374 c!25829) b!107433))

(assert (= (and d!26374 (not c!25829)) b!107434))

(assert (= (and d!26374 res!51564) b!107435))

(assert (= (and b!107435 res!51563) b!107436))

(declare-fun m!95630 () Bool)

(assert (=> d!26374 m!95630))

(declare-fun m!95632 () Bool)

(assert (=> d!26374 m!95632))

(assert (=> d!26374 m!92540))

(declare-fun m!95634 () Bool)

(assert (=> b!107434 m!95634))

(declare-fun m!95636 () Bool)

(assert (=> b!107435 m!95636))

(assert (=> b!107435 m!94268))

(assert (=> b!107435 m!92548))

(assert (=> b!105838 d!26374))

(assert (=> b!105239 d!25406))

(assert (=> b!105239 d!25408))

(assert (=> b!105861 d!26020))

(assert (=> b!105861 d!26016))

(assert (=> b!105861 d!25976))

(assert (=> b!105861 d!26018))

(declare-fun d!26376 () Bool)

(declare-fun lt!30183 () Int)

(assert (=> d!26376 (>= lt!30183 0)))

(declare-fun e!59602 () Int)

(assert (=> d!26376 (= lt!30183 e!59602)))

(declare-fun c!25830 () Bool)

(assert (=> d!26376 (= c!25830 ((_ is Nil!1707) lt!29535))))

(assert (=> d!26376 (= (size!1521 lt!29535) lt!30183)))

(declare-fun b!107437 () Bool)

(assert (=> b!107437 (= e!59602 0)))

(declare-fun b!107438 () Bool)

(assert (=> b!107438 (= e!59602 (+ 1 (size!1521 (t!21402 lt!29535))))))

(assert (= (and d!26376 c!25830) b!107437))

(assert (= (and d!26376 (not c!25830)) b!107438))

(declare-fun m!95638 () Bool)

(assert (=> b!107438 m!95638))

(assert (=> b!105823 d!26376))

(assert (=> b!105823 d!25968))

(declare-fun d!26378 () Bool)

(declare-fun lt!30184 () Int)

(assert (=> d!26378 (>= lt!30184 0)))

(declare-fun e!59603 () Int)

(assert (=> d!26378 (= lt!30184 e!59603)))

(declare-fun c!25831 () Bool)

(assert (=> d!26378 (= c!25831 ((_ is Nil!1707) (++!284 lt!29244 lt!29256)))))

(assert (=> d!26378 (= (size!1521 (++!284 lt!29244 lt!29256)) lt!30184)))

(declare-fun b!107439 () Bool)

(assert (=> b!107439 (= e!59603 0)))

(declare-fun b!107440 () Bool)

(assert (=> b!107440 (= e!59603 (+ 1 (size!1521 (t!21402 (++!284 lt!29244 lt!29256)))))))

(assert (= (and d!26378 c!25831) b!107439))

(assert (= (and d!26378 (not c!25831)) b!107440))

(declare-fun m!95640 () Bool)

(assert (=> b!107440 m!95640))

(assert (=> b!105823 d!26378))

(declare-fun b!107444 () Bool)

(declare-fun e!59604 () Bool)

(declare-fun lt!30185 () List!1711)

(assert (=> b!107444 (= e!59604 (or (not (= (_2!1140 (get!438 lt!29476)) Nil!1705)) (= lt!30185 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476)))))))))

(declare-fun b!107442 () Bool)

(declare-fun e!59605 () List!1711)

(assert (=> b!107442 (= e!59605 (Cons!1705 (h!7102 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476))))) (++!283 (t!21400 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476))))) (_2!1140 (get!438 lt!29476)))))))

(declare-fun d!26380 () Bool)

(assert (=> d!26380 e!59604))

(declare-fun res!51566 () Bool)

(assert (=> d!26380 (=> (not res!51566) (not e!59604))))

(assert (=> d!26380 (= res!51566 (= (content!146 lt!30185) ((_ map or) (content!146 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476))))) (content!146 (_2!1140 (get!438 lt!29476))))))))

(assert (=> d!26380 (= lt!30185 e!59605)))

(declare-fun c!25832 () Bool)

(assert (=> d!26380 (= c!25832 ((_ is Nil!1705) (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476))))))))

(assert (=> d!26380 (= (++!283 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476)))) (_2!1140 (get!438 lt!29476))) lt!30185)))

(declare-fun b!107441 () Bool)

(assert (=> b!107441 (= e!59605 (_2!1140 (get!438 lt!29476)))))

(declare-fun b!107443 () Bool)

(declare-fun res!51565 () Bool)

(assert (=> b!107443 (=> (not res!51565) (not e!59604))))

(assert (=> b!107443 (= res!51565 (= (size!1519 lt!30185) (+ (size!1519 (list!723 (charsOf!88 (_1!1140 (get!438 lt!29476))))) (size!1519 (_2!1140 (get!438 lt!29476))))))))

(assert (= (and d!26380 c!25832) b!107441))

(assert (= (and d!26380 (not c!25832)) b!107442))

(assert (= (and d!26380 res!51566) b!107443))

(assert (= (and b!107443 res!51565) b!107444))

(declare-fun m!95642 () Bool)

(assert (=> b!107442 m!95642))

(declare-fun m!95644 () Bool)

(assert (=> d!26380 m!95644))

(assert (=> d!26380 m!92384))

(declare-fun m!95646 () Bool)

(assert (=> d!26380 m!95646))

(declare-fun m!95648 () Bool)

(assert (=> d!26380 m!95648))

(declare-fun m!95650 () Bool)

(assert (=> b!107443 m!95650))

(assert (=> b!107443 m!92384))

(declare-fun m!95652 () Bool)

(assert (=> b!107443 m!95652))

(assert (=> b!107443 m!92400))

(assert (=> b!105697 d!26380))

(assert (=> b!105697 d!26162))

(assert (=> b!105697 d!26164))

(assert (=> b!105697 d!26160))

(declare-fun d!26382 () Bool)

(declare-fun lt!30186 () Int)

(assert (=> d!26382 (>= lt!30186 0)))

(declare-fun e!59606 () Int)

(assert (=> d!26382 (= lt!30186 e!59606)))

(declare-fun c!25833 () Bool)

(assert (=> d!26382 (= c!25833 ((_ is Nil!1707) (t!21402 (_1!1136 lt!29267))))))

(assert (=> d!26382 (= (size!1521 (t!21402 (_1!1136 lt!29267))) lt!30186)))

(declare-fun b!107445 () Bool)

(assert (=> b!107445 (= e!59606 0)))

(declare-fun b!107446 () Bool)

(assert (=> b!107446 (= e!59606 (+ 1 (size!1521 (t!21402 (t!21402 (_1!1136 lt!29267))))))))

(assert (= (and d!26382 c!25833) b!107445))

(assert (= (and d!26382 (not c!25833)) b!107446))

(declare-fun m!95654 () Bool)

(assert (=> b!107446 m!95654))

(assert (=> b!105604 d!26382))

(assert (=> b!105771 d!26108))

(assert (=> b!105771 d!26330))

(assert (=> b!105771 d!26332))

(assert (=> b!105771 d!26334))

(assert (=> b!105771 d!26336))

(assert (=> b!105702 d!26160))

(declare-fun d!26384 () Bool)

(declare-fun dynLambda!545 (Int BalanceConc!1084) TokenValue!363)

(assert (=> d!26384 (= (apply!268 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476)))) (seqFromList!204 (originalCharacters!416 (_1!1140 (get!438 lt!29476))))) (dynLambda!545 (toValue!960 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476))))) (seqFromList!204 (originalCharacters!416 (_1!1140 (get!438 lt!29476))))))))

(declare-fun b_lambda!1183 () Bool)

(assert (=> (not b_lambda!1183) (not d!26384)))

(declare-fun tb!3121 () Bool)

(declare-fun t!21478 () Bool)

(assert (=> (and b!105068 (= (toValue!960 (transformation!373 (h!7103 rules!1152))) (toValue!960 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476)))))) t!21478) tb!3121))

(declare-fun result!4616 () Bool)

(declare-fun inv!21 (TokenValue!363) Bool)

(assert (=> tb!3121 (= result!4616 (inv!21 (dynLambda!545 (toValue!960 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476))))) (seqFromList!204 (originalCharacters!416 (_1!1140 (get!438 lt!29476)))))))))

(declare-fun m!95656 () Bool)

(assert (=> tb!3121 m!95656))

(assert (=> d!26384 t!21478))

(declare-fun b_and!4757 () Bool)

(assert (= b_and!4695 (and (=> t!21478 result!4616) b_and!4757)))

(declare-fun t!21480 () Bool)

(declare-fun tb!3123 () Bool)

(assert (=> (and b!105252 (= (toValue!960 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toValue!960 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476)))))) t!21480) tb!3123))

(declare-fun result!4620 () Bool)

(assert (= result!4620 result!4616))

(assert (=> d!26384 t!21480))

(declare-fun b_and!4759 () Bool)

(assert (= b_and!4703 (and (=> t!21480 result!4620) b_and!4759)))

(declare-fun t!21482 () Bool)

(declare-fun tb!3125 () Bool)

(assert (=> (and b!105921 (= (toValue!960 (transformation!373 (h!7103 (t!21401 (t!21401 rules!1152))))) (toValue!960 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476)))))) t!21482) tb!3125))

(declare-fun result!4622 () Bool)

(assert (= result!4622 result!4616))

(assert (=> d!26384 t!21482))

(declare-fun b_and!4761 () Bool)

(assert (= b_and!4719 (and (=> t!21482 result!4622) b_and!4761)))

(assert (=> d!26384 m!92388))

(declare-fun m!95658 () Bool)

(assert (=> d!26384 m!95658))

(assert (=> b!105702 d!26384))

(declare-fun d!26386 () Bool)

(declare-fun fromListB!95 (List!1711) BalanceConc!1084)

(assert (=> d!26386 (= (seqFromList!204 (originalCharacters!416 (_1!1140 (get!438 lt!29476)))) (fromListB!95 (originalCharacters!416 (_1!1140 (get!438 lt!29476)))))))

(declare-fun bs!10320 () Bool)

(assert (= bs!10320 d!26386))

(declare-fun m!95660 () Bool)

(assert (=> bs!10320 m!95660))

(assert (=> b!105702 d!26386))

(declare-fun d!26388 () Bool)

(declare-fun c!25834 () Bool)

(assert (=> d!26388 (= c!25834 ((_ is Nil!1707) lt!29545))))

(declare-fun e!59610 () (InoxSet Token!490))

(assert (=> d!26388 (= (content!145 lt!29545) e!59610)))

(declare-fun b!107449 () Bool)

(assert (=> b!107449 (= e!59610 ((as const (Array Token!490 Bool)) false))))

(declare-fun b!107450 () Bool)

(assert (=> b!107450 (= e!59610 ((_ map or) (store ((as const (Array Token!490 Bool)) false) (h!7104 lt!29545) true) (content!145 (t!21402 lt!29545))))))

(assert (= (and d!26388 c!25834) b!107449))

(assert (= (and d!26388 (not c!25834)) b!107450))

(declare-fun m!95662 () Bool)

(assert (=> b!107450 m!95662))

(declare-fun m!95664 () Bool)

(assert (=> b!107450 m!95664))

(assert (=> d!25520 d!26388))

(declare-fun d!26390 () Bool)

(declare-fun c!25835 () Bool)

(assert (=> d!26390 (= c!25835 ((_ is Nil!1707) lt!29249))))

(declare-fun e!59611 () (InoxSet Token!490))

(assert (=> d!26390 (= (content!145 lt!29249) e!59611)))

(declare-fun b!107451 () Bool)

(assert (=> b!107451 (= e!59611 ((as const (Array Token!490 Bool)) false))))

(declare-fun b!107452 () Bool)

(assert (=> b!107452 (= e!59611 ((_ map or) (store ((as const (Array Token!490 Bool)) false) (h!7104 lt!29249) true) (content!145 (t!21402 lt!29249))))))

(assert (= (and d!26390 c!25835) b!107451))

(assert (= (and d!26390 (not c!25835)) b!107452))

(declare-fun m!95666 () Bool)

(assert (=> b!107452 m!95666))

(assert (=> b!107452 m!95632))

(assert (=> d!25520 d!26390))

(assert (=> d!25520 d!26352))

(declare-fun d!26392 () Bool)

(declare-fun lt!30187 () Int)

(assert (=> d!26392 (>= lt!30187 0)))

(declare-fun e!59612 () Int)

(assert (=> d!26392 (= lt!30187 e!59612)))

(declare-fun c!25836 () Bool)

(assert (=> d!26392 (= c!25836 ((_ is Nil!1707) (_1!1136 lt!29533)))))

(assert (=> d!26392 (= (size!1521 (_1!1136 lt!29533)) lt!30187)))

(declare-fun b!107453 () Bool)

(assert (=> b!107453 (= e!59612 0)))

(declare-fun b!107454 () Bool)

(assert (=> b!107454 (= e!59612 (+ 1 (size!1521 (t!21402 (_1!1136 lt!29533)))))))

(assert (= (and d!26392 c!25836) b!107453))

(assert (= (and d!26392 (not c!25836)) b!107454))

(declare-fun m!95668 () Bool)

(assert (=> b!107454 m!95668))

(assert (=> d!25508 d!26392))

(declare-fun b!107455 () Bool)

(declare-fun res!51568 () Bool)

(declare-fun e!59615 () Bool)

(assert (=> b!107455 (=> (not res!51568) (not e!59615))))

(declare-fun lt!30190 () Option!198)

(assert (=> b!107455 (= res!51568 (< (size!1519 (_2!1140 (get!438 lt!30190))) (size!1519 lt!29254)))))

(declare-fun b!107456 () Bool)

(declare-fun res!51571 () Bool)

(assert (=> b!107456 (=> (not res!51571) (not e!59615))))

(assert (=> b!107456 (= res!51571 (= (++!283 (list!723 (charsOf!88 (_1!1140 (get!438 lt!30190)))) (_2!1140 (get!438 lt!30190))) lt!29254))))

(declare-fun b!107457 () Bool)

(declare-fun res!51572 () Bool)

(assert (=> b!107457 (=> (not res!51572) (not e!59615))))

(assert (=> b!107457 (= res!51572 (matchR!48 (regex!373 (rule!876 (_1!1140 (get!438 lt!30190)))) (list!723 (charsOf!88 (_1!1140 (get!438 lt!30190))))))))

(declare-fun b!107458 () Bool)

(assert (=> b!107458 (= e!59615 (contains!277 rules!1152 (rule!876 (_1!1140 (get!438 lt!30190)))))))

(declare-fun b!107459 () Bool)

(declare-fun res!51569 () Bool)

(assert (=> b!107459 (=> (not res!51569) (not e!59615))))

(assert (=> b!107459 (= res!51569 (= (list!723 (charsOf!88 (_1!1140 (get!438 lt!30190)))) (originalCharacters!416 (_1!1140 (get!438 lt!30190)))))))

(declare-fun b!107460 () Bool)

(declare-fun e!59613 () Bool)

(assert (=> b!107460 (= e!59613 e!59615)))

(declare-fun res!51573 () Bool)

(assert (=> b!107460 (=> (not res!51573) (not e!59615))))

(assert (=> b!107460 (= res!51573 (isDefined!72 lt!30190))))

(declare-fun b!107461 () Bool)

(declare-fun res!51567 () Bool)

(assert (=> b!107461 (=> (not res!51567) (not e!59615))))

(assert (=> b!107461 (= res!51567 (= (value!13518 (_1!1140 (get!438 lt!30190))) (apply!268 (transformation!373 (rule!876 (_1!1140 (get!438 lt!30190)))) (seqFromList!204 (originalCharacters!416 (_1!1140 (get!438 lt!30190)))))))))

(declare-fun call!4723 () Option!198)

(declare-fun bm!4718 () Bool)

(assert (=> bm!4718 (= call!4723 (maxPrefixOneRule!44 thiss!11428 (h!7103 rules!1152) lt!29254))))

(declare-fun b!107462 () Bool)

(declare-fun e!59614 () Option!198)

(assert (=> b!107462 (= e!59614 call!4723)))

(declare-fun d!26394 () Bool)

(assert (=> d!26394 e!59613))

(declare-fun res!51570 () Bool)

(assert (=> d!26394 (=> res!51570 e!59613)))

(assert (=> d!26394 (= res!51570 (isEmpty!801 lt!30190))))

(assert (=> d!26394 (= lt!30190 e!59614)))

(declare-fun c!25837 () Bool)

(assert (=> d!26394 (= c!25837 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!30189 () Unit!1124)

(declare-fun lt!30188 () Unit!1124)

(assert (=> d!26394 (= lt!30189 lt!30188)))

(assert (=> d!26394 (isPrefix!51 lt!29254 lt!29254)))

(assert (=> d!26394 (= lt!30188 (lemmaIsPrefixRefl!51 lt!29254 lt!29254))))

(assert (=> d!26394 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!26394 (= (maxPrefix!93 thiss!11428 rules!1152 lt!29254) lt!30190)))

(declare-fun b!107463 () Bool)

(declare-fun lt!30191 () Option!198)

(declare-fun lt!30192 () Option!198)

(assert (=> b!107463 (= e!59614 (ite (and ((_ is None!197) lt!30191) ((_ is None!197) lt!30192)) None!197 (ite ((_ is None!197) lt!30192) lt!30191 (ite ((_ is None!197) lt!30191) lt!30192 (ite (>= (size!1512 (_1!1140 (v!13006 lt!30191))) (size!1512 (_1!1140 (v!13006 lt!30192)))) lt!30191 lt!30192)))))))

(assert (=> b!107463 (= lt!30191 call!4723)))

(assert (=> b!107463 (= lt!30192 (maxPrefix!93 thiss!11428 (t!21401 rules!1152) lt!29254))))

(assert (= (and d!26394 c!25837) b!107462))

(assert (= (and d!26394 (not c!25837)) b!107463))

(assert (= (or b!107462 b!107463) bm!4718))

(assert (= (and d!26394 (not res!51570)) b!107460))

(assert (= (and b!107460 res!51573) b!107459))

(assert (= (and b!107459 res!51569) b!107455))

(assert (= (and b!107455 res!51568) b!107456))

(assert (= (and b!107456 res!51571) b!107461))

(assert (= (and b!107461 res!51567) b!107457))

(assert (= (and b!107457 res!51572) b!107458))

(declare-fun m!95670 () Bool)

(assert (=> d!26394 m!95670))

(declare-fun m!95672 () Bool)

(assert (=> d!26394 m!95672))

(declare-fun m!95674 () Bool)

(assert (=> d!26394 m!95674))

(assert (=> d!26394 m!92158))

(declare-fun m!95676 () Bool)

(assert (=> b!107457 m!95676))

(declare-fun m!95678 () Bool)

(assert (=> b!107457 m!95678))

(assert (=> b!107457 m!95678))

(declare-fun m!95680 () Bool)

(assert (=> b!107457 m!95680))

(assert (=> b!107457 m!95680))

(declare-fun m!95682 () Bool)

(assert (=> b!107457 m!95682))

(assert (=> b!107459 m!95676))

(assert (=> b!107459 m!95678))

(assert (=> b!107459 m!95678))

(assert (=> b!107459 m!95680))

(assert (=> b!107461 m!95676))

(declare-fun m!95684 () Bool)

(assert (=> b!107461 m!95684))

(assert (=> b!107461 m!95684))

(declare-fun m!95686 () Bool)

(assert (=> b!107461 m!95686))

(assert (=> b!107458 m!95676))

(declare-fun m!95688 () Bool)

(assert (=> b!107458 m!95688))

(declare-fun m!95690 () Bool)

(assert (=> b!107463 m!95690))

(declare-fun m!95692 () Bool)

(assert (=> b!107460 m!95692))

(assert (=> b!107456 m!95676))

(assert (=> b!107456 m!95678))

(assert (=> b!107456 m!95678))

(assert (=> b!107456 m!95680))

(assert (=> b!107456 m!95680))

(declare-fun m!95694 () Bool)

(assert (=> b!107456 m!95694))

(assert (=> b!107455 m!95676))

(declare-fun m!95696 () Bool)

(assert (=> b!107455 m!95696))

(assert (=> b!107455 m!92612))

(declare-fun m!95698 () Bool)

(assert (=> bm!4718 m!95698))

(assert (=> d!25508 d!26394))

(declare-fun d!26396 () Bool)

(declare-fun lt!30193 () Int)

(assert (=> d!26396 (>= lt!30193 0)))

(declare-fun e!59616 () Int)

(assert (=> d!26396 (= lt!30193 e!59616)))

(declare-fun c!25838 () Bool)

(assert (=> d!26396 (= c!25838 ((_ is Nil!1705) (t!21400 (_2!1136 lt!29267))))))

(assert (=> d!26396 (= (size!1519 (t!21400 (_2!1136 lt!29267))) lt!30193)))

(declare-fun b!107464 () Bool)

(assert (=> b!107464 (= e!59616 0)))

(declare-fun b!107465 () Bool)

(assert (=> b!107465 (= e!59616 (+ 1 (size!1519 (t!21400 (t!21400 (_2!1136 lt!29267))))))))

(assert (= (and d!26396 c!25838) b!107464))

(assert (= (and d!26396 (not c!25838)) b!107465))

(declare-fun m!95700 () Bool)

(assert (=> b!107465 m!95700))

(assert (=> b!105584 d!26396))

(declare-fun d!26398 () Bool)

(assert (=> d!26398 (= (list!723 (_2!1135 lt!29570)) (list!727 (c!25296 (_2!1135 lt!29570))))))

(declare-fun bs!10321 () Bool)

(assert (= bs!10321 d!26398))

(declare-fun m!95702 () Bool)

(assert (=> bs!10321 m!95702))

(assert (=> b!105881 d!26398))

(assert (=> b!105881 d!26252))

(assert (=> b!105881 d!26254))

(declare-fun d!26400 () Bool)

(assert (=> d!26400 (= (height!64 (left!1303 (c!25296 input!576))) (ite ((_ is Empty!540) (left!1303 (c!25296 input!576))) 0 (ite ((_ is Leaf!862) (left!1303 (c!25296 input!576))) 1 (cheight!751 (left!1303 (c!25296 input!576))))))))

(assert (=> b!105518 d!26400))

(declare-fun d!26402 () Bool)

(assert (=> d!26402 (= (height!64 (right!1633 (c!25296 input!576))) (ite ((_ is Empty!540) (right!1633 (c!25296 input!576))) 0 (ite ((_ is Leaf!862) (right!1633 (c!25296 input!576))) 1 (cheight!751 (right!1633 (c!25296 input!576))))))))

(assert (=> b!105518 d!26402))

(declare-fun d!26404 () Bool)

(declare-fun e!59617 () Bool)

(assert (=> d!26404 e!59617))

(declare-fun res!51574 () Bool)

(assert (=> d!26404 (=> (not res!51574) (not e!59617))))

(assert (=> d!26404 (= res!51574 (isBalanced!151 (prepend!143 (c!25298 (_1!1135 lt!29539)) (_1!1139 (v!13005 lt!29541)))))))

(declare-fun lt!30194 () BalanceConc!1086)

(assert (=> d!26404 (= lt!30194 (BalanceConc!1087 (prepend!143 (c!25298 (_1!1135 lt!29539)) (_1!1139 (v!13005 lt!29541)))))))

(assert (=> d!26404 (= (prepend!141 (_1!1135 lt!29539) (_1!1139 (v!13005 lt!29541))) lt!30194)))

(declare-fun b!107466 () Bool)

(assert (=> b!107466 (= e!59617 (= (list!724 lt!30194) (Cons!1707 (_1!1139 (v!13005 lt!29541)) (list!724 (_1!1135 lt!29539)))))))

(assert (= (and d!26404 res!51574) b!107466))

(declare-fun m!95704 () Bool)

(assert (=> d!26404 m!95704))

(assert (=> d!26404 m!95704))

(declare-fun m!95706 () Bool)

(assert (=> d!26404 m!95706))

(declare-fun m!95708 () Bool)

(assert (=> b!107466 m!95708))

(declare-fun m!95710 () Bool)

(assert (=> b!107466 m!95710))

(assert (=> b!105830 d!26404))

(declare-fun b!107467 () Bool)

(declare-fun e!59619 () tuple2!1856)

(declare-fun lt!30195 () tuple2!1856)

(declare-fun lt!30197 () Option!197)

(assert (=> b!107467 (= e!59619 (tuple2!1857 (prepend!141 (_1!1135 lt!30195) (_1!1139 (v!13005 lt!30197))) (_2!1135 lt!30195)))))

(assert (=> b!107467 (= lt!30195 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!30197))))))

(declare-fun b!107468 () Bool)

(declare-fun lt!30196 () tuple2!1856)

(declare-fun e!59620 () Bool)

(assert (=> b!107468 (= e!59620 (= (list!723 (_2!1135 lt!30196)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29541)))))))))

(declare-fun b!107469 () Bool)

(declare-fun e!59621 () Bool)

(assert (=> b!107469 (= e!59621 (not (isEmpty!794 (_1!1135 lt!30196))))))

(declare-fun b!107470 () Bool)

(assert (=> b!107470 (= e!59619 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29541))))))

(declare-fun b!107472 () Bool)

(declare-fun e!59618 () Bool)

(assert (=> b!107472 (= e!59618 e!59621)))

(declare-fun res!51575 () Bool)

(assert (=> b!107472 (= res!51575 (< (size!1513 (_2!1135 lt!30196)) (size!1513 (_2!1139 (v!13005 lt!29541)))))))

(assert (=> b!107472 (=> (not res!51575) (not e!59621))))

(declare-fun b!107473 () Bool)

(declare-fun res!51577 () Bool)

(assert (=> b!107473 (=> (not res!51577) (not e!59620))))

(assert (=> b!107473 (= res!51577 (= (list!724 (_1!1135 lt!30196)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29541)))))))))

(declare-fun b!107471 () Bool)

(assert (=> b!107471 (= e!59618 (= (list!723 (_2!1135 lt!30196)) (list!723 (_2!1139 (v!13005 lt!29541)))))))

(declare-fun d!26406 () Bool)

(assert (=> d!26406 e!59620))

(declare-fun res!51576 () Bool)

(assert (=> d!26406 (=> (not res!51576) (not e!59620))))

(assert (=> d!26406 (= res!51576 e!59618)))

(declare-fun c!25840 () Bool)

(assert (=> d!26406 (= c!25840 (> (size!1514 (_1!1135 lt!30196)) 0))))

(assert (=> d!26406 (= lt!30196 e!59619)))

(declare-fun c!25839 () Bool)

(assert (=> d!26406 (= c!25839 ((_ is Some!196) lt!30197))))

(assert (=> d!26406 (= lt!30197 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29541))))))

(assert (=> d!26406 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29541))) lt!30196)))

(assert (= (and d!26406 c!25839) b!107467))

(assert (= (and d!26406 (not c!25839)) b!107470))

(assert (= (and d!26406 c!25840) b!107472))

(assert (= (and d!26406 (not c!25840)) b!107471))

(assert (= (and b!107472 res!51575) b!107469))

(assert (= (and d!26406 res!51576) b!107473))

(assert (= (and b!107473 res!51577) b!107468))

(declare-fun m!95712 () Bool)

(assert (=> b!107467 m!95712))

(declare-fun m!95714 () Bool)

(assert (=> b!107467 m!95714))

(declare-fun m!95716 () Bool)

(assert (=> b!107473 m!95716))

(declare-fun m!95718 () Bool)

(assert (=> b!107473 m!95718))

(assert (=> b!107473 m!95718))

(declare-fun m!95720 () Bool)

(assert (=> b!107473 m!95720))

(declare-fun m!95722 () Bool)

(assert (=> b!107472 m!95722))

(declare-fun m!95724 () Bool)

(assert (=> b!107472 m!95724))

(declare-fun m!95726 () Bool)

(assert (=> b!107468 m!95726))

(assert (=> b!107468 m!95718))

(assert (=> b!107468 m!95718))

(assert (=> b!107468 m!95720))

(declare-fun m!95728 () Bool)

(assert (=> d!26406 m!95728))

(declare-fun m!95730 () Bool)

(assert (=> d!26406 m!95730))

(declare-fun m!95732 () Bool)

(assert (=> b!107469 m!95732))

(assert (=> b!107471 m!95726))

(assert (=> b!107471 m!95718))

(assert (=> b!105830 d!26406))

(declare-fun b!107477 () Bool)

(declare-fun e!59623 () List!1711)

(assert (=> b!107477 (= e!59623 (++!283 (list!727 (left!1303 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) (list!727 (right!1633 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun d!26408 () Bool)

(declare-fun c!25841 () Bool)

(assert (=> d!26408 (= c!25841 ((_ is Empty!540) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(declare-fun e!59622 () List!1711)

(assert (=> d!26408 (= (list!727 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) e!59622)))

(declare-fun b!107475 () Bool)

(assert (=> b!107475 (= e!59622 e!59623)))

(declare-fun c!25842 () Bool)

(assert (=> b!107475 (= c!25842 ((_ is Leaf!862) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(declare-fun b!107476 () Bool)

(assert (=> b!107476 (= e!59623 (list!731 (xs!3131 (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun b!107474 () Bool)

(assert (=> b!107474 (= e!59622 Nil!1705)))

(assert (= (and d!26408 c!25841) b!107474))

(assert (= (and d!26408 (not c!25841)) b!107475))

(assert (= (and b!107475 c!25842) b!107476))

(assert (= (and b!107475 (not c!25842)) b!107477))

(assert (=> b!107477 m!94664))

(assert (=> b!107477 m!94666))

(assert (=> b!107477 m!94664))

(assert (=> b!107477 m!94666))

(declare-fun m!95734 () Bool)

(assert (=> b!107477 m!95734))

(declare-fun m!95736 () Bool)

(assert (=> b!107476 m!95736))

(assert (=> d!25490 d!26408))

(declare-fun d!26410 () Bool)

(assert (=> d!26410 (= (list!731 (xs!3131 (c!25296 input!576))) (innerList!598 (xs!3131 (c!25296 input!576))))))

(assert (=> b!105760 d!26410))

(declare-fun d!26412 () Bool)

(declare-fun lt!30198 () Int)

(assert (=> d!26412 (>= lt!30198 0)))

(declare-fun e!59624 () Int)

(assert (=> d!26412 (= lt!30198 e!59624)))

(declare-fun c!25843 () Bool)

(assert (=> d!26412 (= c!25843 ((_ is Nil!1707) (list!728 (c!25298 (_1!1135 lt!29080)))))))

(assert (=> d!26412 (= (size!1521 (list!728 (c!25298 (_1!1135 lt!29080)))) lt!30198)))

(declare-fun b!107478 () Bool)

(assert (=> b!107478 (= e!59624 0)))

(declare-fun b!107479 () Bool)

(assert (=> b!107479 (= e!59624 (+ 1 (size!1521 (t!21402 (list!728 (c!25298 (_1!1135 lt!29080)))))))))

(assert (= (and d!26412 c!25843) b!107478))

(assert (= (and d!26412 (not c!25843)) b!107479))

(declare-fun m!95738 () Bool)

(assert (=> b!107479 m!95738))

(assert (=> d!25542 d!26412))

(assert (=> d!25542 d!25422))

(declare-fun d!26414 () Bool)

(assert (=> d!26414 (= (list!723 (_2!1135 lt!29332)) (list!727 (c!25296 (_2!1135 lt!29332))))))

(declare-fun bs!10322 () Bool)

(assert (= bs!10322 d!26414))

(declare-fun m!95740 () Bool)

(assert (=> bs!10322 m!95740))

(assert (=> b!105406 d!26414))

(assert (=> b!105406 d!25284))

(declare-fun d!26416 () Bool)

(declare-fun lt!30199 () Int)

(assert (=> d!26416 (>= lt!30199 0)))

(declare-fun e!59625 () Int)

(assert (=> d!26416 (= lt!30199 e!59625)))

(declare-fun c!25844 () Bool)

(assert (=> d!26416 (= c!25844 ((_ is Nil!1705) (innerList!598 (xs!3131 (c!25296 input!576)))))))

(assert (=> d!26416 (= (size!1519 (innerList!598 (xs!3131 (c!25296 input!576)))) lt!30199)))

(declare-fun b!107480 () Bool)

(assert (=> b!107480 (= e!59625 0)))

(declare-fun b!107481 () Bool)

(assert (=> b!107481 (= e!59625 (+ 1 (size!1519 (t!21400 (innerList!598 (xs!3131 (c!25296 input!576)))))))))

(assert (= (and d!26416 c!25844) b!107480))

(assert (= (and d!26416 (not c!25844)) b!107481))

(declare-fun m!95742 () Bool)

(assert (=> b!107481 m!95742))

(assert (=> d!25404 d!26416))

(declare-fun d!26418 () Bool)

(declare-fun e!59627 () Bool)

(assert (=> d!26418 e!59627))

(declare-fun c!25846 () Bool)

(declare-fun lt!30201 () tuple2!1858)

(assert (=> d!26418 (= c!25846 (> (size!1521 (_1!1136 lt!30201)) 0))))

(declare-fun e!59628 () tuple2!1858)

(assert (=> d!26418 (= lt!30201 e!59628)))

(declare-fun c!25845 () Bool)

(declare-fun lt!30202 () Option!198)

(assert (=> d!26418 (= c!25845 ((_ is Some!197) lt!30202))))

(assert (=> d!26418 (= lt!30202 (maxPrefix!93 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!29296))))))

(assert (=> d!26418 (= (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!29296))) lt!30201)))

(declare-fun b!107482 () Bool)

(declare-fun lt!30200 () tuple2!1858)

(assert (=> b!107482 (= e!59628 (tuple2!1859 (Cons!1707 (_1!1140 (v!13006 lt!30202)) (_1!1136 lt!30200)) (_2!1136 lt!30200)))))

(assert (=> b!107482 (= lt!30200 (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!30202))))))

(declare-fun b!107483 () Bool)

(assert (=> b!107483 (= e!59628 (tuple2!1859 Nil!1707 (_2!1140 (v!13006 lt!29296))))))

(declare-fun b!107484 () Bool)

(declare-fun e!59626 () Bool)

(assert (=> b!107484 (= e!59626 (not (isEmpty!797 (_1!1136 lt!30201))))))

(declare-fun b!107485 () Bool)

(assert (=> b!107485 (= e!59627 e!59626)))

(declare-fun res!51578 () Bool)

(assert (=> b!107485 (= res!51578 (< (size!1519 (_2!1136 lt!30201)) (size!1519 (_2!1140 (v!13006 lt!29296)))))))

(assert (=> b!107485 (=> (not res!51578) (not e!59626))))

(declare-fun b!107486 () Bool)

(assert (=> b!107486 (= e!59627 (= (_2!1136 lt!30201) (_2!1140 (v!13006 lt!29296))))))

(assert (= (and d!26418 c!25845) b!107482))

(assert (= (and d!26418 (not c!25845)) b!107483))

(assert (= (and d!26418 c!25846) b!107485))

(assert (= (and d!26418 (not c!25846)) b!107486))

(assert (= (and b!107485 res!51578) b!107484))

(declare-fun m!95744 () Bool)

(assert (=> d!26418 m!95744))

(declare-fun m!95746 () Bool)

(assert (=> d!26418 m!95746))

(declare-fun m!95748 () Bool)

(assert (=> b!107482 m!95748))

(declare-fun m!95750 () Bool)

(assert (=> b!107484 m!95750))

(declare-fun m!95752 () Bool)

(assert (=> b!107485 m!95752))

(declare-fun m!95754 () Bool)

(assert (=> b!107485 m!95754))

(assert (=> b!105339 d!26418))

(declare-fun d!26420 () Bool)

(declare-fun lt!30203 () Int)

(assert (=> d!26420 (= lt!30203 (size!1521 (list!724 (_1!1135 lt!29540))))))

(assert (=> d!26420 (= lt!30203 (size!1522 (c!25298 (_1!1135 lt!29540))))))

(assert (=> d!26420 (= (size!1514 (_1!1135 lt!29540)) lt!30203)))

(declare-fun bs!10323 () Bool)

(assert (= bs!10323 d!26420))

(assert (=> bs!10323 m!92642))

(assert (=> bs!10323 m!92642))

(declare-fun m!95756 () Bool)

(assert (=> bs!10323 m!95756))

(declare-fun m!95758 () Bool)

(assert (=> bs!10323 m!95758))

(assert (=> d!25516 d!26420))

(declare-fun b!107487 () Bool)

(declare-fun res!51582 () Bool)

(declare-fun e!59633 () Bool)

(assert (=> b!107487 (=> (not res!51582) (not e!59633))))

(declare-fun e!59632 () Bool)

(assert (=> b!107487 (= res!51582 e!59632)))

(declare-fun res!51581 () Bool)

(assert (=> b!107487 (=> res!51581 e!59632)))

(declare-fun lt!30209 () Option!197)

(assert (=> b!107487 (= res!51581 (not (isDefined!71 lt!30209)))))

(declare-fun b!107488 () Bool)

(declare-fun e!59630 () Bool)

(declare-fun e!59634 () Bool)

(assert (=> b!107488 (= e!59630 e!59634)))

(declare-fun res!51584 () Bool)

(assert (=> b!107488 (=> (not res!51584) (not e!59634))))

(assert (=> b!107488 (= res!51584 (= (_1!1139 (get!437 lt!30209)) (_1!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))))

(declare-fun b!107489 () Bool)

(assert (=> b!107489 (= e!59634 (= (list!723 (_2!1139 (get!437 lt!30209))) (_2!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))))

(declare-fun b!107490 () Bool)

(declare-fun e!59631 () Bool)

(assert (=> b!107490 (= e!59631 (= (list!723 (_2!1139 (get!437 lt!30209))) (_2!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))))

(declare-fun call!4724 () Option!197)

(declare-fun bm!4719 () Bool)

(assert (=> bm!4719 (= call!4724 (maxPrefixOneRuleZipperSequence!18 thiss!11428 (h!7103 rules!1152) (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(declare-fun d!26422 () Bool)

(assert (=> d!26422 e!59633))

(declare-fun res!51580 () Bool)

(assert (=> d!26422 (=> (not res!51580) (not e!59633))))

(assert (=> d!26422 (= res!51580 (= (isDefined!71 lt!30209) (isDefined!72 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))))

(declare-fun e!59629 () Option!197)

(assert (=> d!26422 (= lt!30209 e!59629)))

(declare-fun c!25847 () Bool)

(assert (=> d!26422 (= c!25847 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!30210 () Unit!1124)

(declare-fun lt!30208 () Unit!1124)

(assert (=> d!26422 (= lt!30210 lt!30208)))

(declare-fun lt!30205 () List!1711)

(declare-fun lt!30204 () List!1711)

(assert (=> d!26422 (isPrefix!51 lt!30205 lt!30204)))

(assert (=> d!26422 (= lt!30208 (lemmaIsPrefixRefl!51 lt!30205 lt!30204))))

(assert (=> d!26422 (= lt!30204 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(assert (=> d!26422 (= lt!30205 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(assert (=> d!26422 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!26422 (= (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))) lt!30209)))

(declare-fun b!107491 () Bool)

(assert (=> b!107491 (= e!59633 e!59630)))

(declare-fun res!51583 () Bool)

(assert (=> b!107491 (=> res!51583 e!59630)))

(assert (=> b!107491 (= res!51583 (not (isDefined!71 lt!30209)))))

(declare-fun b!107492 () Bool)

(assert (=> b!107492 (= e!59632 e!59631)))

(declare-fun res!51579 () Bool)

(assert (=> b!107492 (=> (not res!51579) (not e!59631))))

(assert (=> b!107492 (= res!51579 (= (_1!1139 (get!437 lt!30209)) (_1!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))))

(declare-fun b!107493 () Bool)

(declare-fun lt!30206 () Option!197)

(declare-fun lt!30207 () Option!197)

(assert (=> b!107493 (= e!59629 (ite (and ((_ is None!196) lt!30206) ((_ is None!196) lt!30207)) None!196 (ite ((_ is None!196) lt!30207) lt!30206 (ite ((_ is None!196) lt!30206) lt!30207 (ite (>= (size!1512 (_1!1139 (v!13005 lt!30206))) (size!1512 (_1!1139 (v!13005 lt!30207)))) lt!30206 lt!30207)))))))

(assert (=> b!107493 (= lt!30206 call!4724)))

(assert (=> b!107493 (= lt!30207 (maxPrefixZipperSequence!56 thiss!11428 (t!21401 rules!1152) (++!282 (BalanceConc!1085 Empty!540) (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(declare-fun b!107494 () Bool)

(assert (=> b!107494 (= e!59629 call!4724)))

(assert (= (and d!26422 c!25847) b!107494))

(assert (= (and d!26422 (not c!25847)) b!107493))

(assert (= (or b!107494 b!107493) bm!4719))

(assert (= (and d!26422 res!51580) b!107487))

(assert (= (and b!107487 (not res!51581)) b!107492))

(assert (= (and b!107492 res!51579) b!107490))

(assert (= (and b!107487 res!51582) b!107491))

(assert (= (and b!107491 (not res!51583)) b!107488))

(assert (= (and b!107488 res!51584) b!107489))

(assert (=> b!107493 m!91662))

(declare-fun m!95760 () Bool)

(assert (=> b!107493 m!95760))

(declare-fun m!95762 () Bool)

(assert (=> b!107489 m!95762))

(assert (=> b!107489 m!92480))

(assert (=> b!107489 m!95108))

(assert (=> b!107489 m!91662))

(assert (=> b!107489 m!92480))

(assert (=> b!107489 m!95108))

(declare-fun m!95764 () Bool)

(assert (=> b!107489 m!95764))

(declare-fun m!95766 () Bool)

(assert (=> b!107489 m!95766))

(assert (=> b!107492 m!95762))

(assert (=> b!107492 m!91662))

(assert (=> b!107492 m!92480))

(assert (=> b!107492 m!92480))

(declare-fun m!95768 () Bool)

(assert (=> b!107492 m!95768))

(assert (=> b!107492 m!95768))

(declare-fun m!95770 () Bool)

(assert (=> b!107492 m!95770))

(assert (=> b!107490 m!95762))

(assert (=> b!107490 m!95768))

(assert (=> b!107490 m!95770))

(assert (=> b!107490 m!95766))

(assert (=> b!107490 m!91662))

(assert (=> b!107490 m!92480))

(assert (=> b!107490 m!92480))

(assert (=> b!107490 m!95768))

(assert (=> bm!4719 m!91662))

(declare-fun m!95772 () Bool)

(assert (=> bm!4719 m!95772))

(declare-fun m!95774 () Bool)

(assert (=> b!107487 m!95774))

(assert (=> d!26422 m!95768))

(declare-fun m!95776 () Bool)

(assert (=> d!26422 m!95776))

(assert (=> d!26422 m!95774))

(assert (=> d!26422 m!92158))

(declare-fun m!95778 () Bool)

(assert (=> d!26422 m!95778))

(declare-fun m!95780 () Bool)

(assert (=> d!26422 m!95780))

(assert (=> d!26422 m!91662))

(assert (=> d!26422 m!92480))

(assert (=> d!26422 m!92480))

(assert (=> d!26422 m!95768))

(assert (=> b!107491 m!95774))

(assert (=> b!107488 m!95762))

(assert (=> b!107488 m!91662))

(assert (=> b!107488 m!92480))

(assert (=> b!107488 m!92480))

(assert (=> b!107488 m!95108))

(assert (=> b!107488 m!95108))

(assert (=> b!107488 m!95764))

(assert (=> d!25516 d!26422))

(declare-fun b!107498 () Bool)

(declare-fun e!59636 () List!1711)

(assert (=> b!107498 (= e!59636 (++!283 (list!727 (left!1303 (c!25296 (_2!1135 lt!29237)))) (list!727 (right!1633 (c!25296 (_2!1135 lt!29237))))))))

(declare-fun d!26424 () Bool)

(declare-fun c!25848 () Bool)

(assert (=> d!26424 (= c!25848 ((_ is Empty!540) (c!25296 (_2!1135 lt!29237))))))

(declare-fun e!59635 () List!1711)

(assert (=> d!26424 (= (list!727 (c!25296 (_2!1135 lt!29237))) e!59635)))

(declare-fun b!107496 () Bool)

(assert (=> b!107496 (= e!59635 e!59636)))

(declare-fun c!25849 () Bool)

(assert (=> b!107496 (= c!25849 ((_ is Leaf!862) (c!25296 (_2!1135 lt!29237))))))

(declare-fun b!107497 () Bool)

(assert (=> b!107497 (= e!59636 (list!731 (xs!3131 (c!25296 (_2!1135 lt!29237)))))))

(declare-fun b!107495 () Bool)

(assert (=> b!107495 (= e!59635 Nil!1705)))

(assert (= (and d!26424 c!25848) b!107495))

(assert (= (and d!26424 (not c!25848)) b!107496))

(assert (= (and b!107496 c!25849) b!107497))

(assert (= (and b!107496 (not c!25849)) b!107498))

(declare-fun m!95782 () Bool)

(assert (=> b!107498 m!95782))

(declare-fun m!95784 () Bool)

(assert (=> b!107498 m!95784))

(assert (=> b!107498 m!95782))

(assert (=> b!107498 m!95784))

(declare-fun m!95786 () Bool)

(assert (=> b!107498 m!95786))

(declare-fun m!95788 () Bool)

(assert (=> b!107497 m!95788))

(assert (=> d!25460 d!26424))

(declare-fun d!26426 () Bool)

(declare-fun lt!30211 () Int)

(assert (=> d!26426 (= lt!30211 (size!1519 (list!723 (_2!1135 lt!29570))))))

(assert (=> d!26426 (= lt!30211 (size!1520 (c!25296 (_2!1135 lt!29570))))))

(assert (=> d!26426 (= (size!1513 (_2!1135 lt!29570)) lt!30211)))

(declare-fun bs!10324 () Bool)

(assert (= bs!10324 d!26426))

(assert (=> bs!10324 m!92792))

(assert (=> bs!10324 m!92792))

(declare-fun m!95790 () Bool)

(assert (=> bs!10324 m!95790))

(declare-fun m!95792 () Bool)

(assert (=> bs!10324 m!95792))

(assert (=> b!105885 d!26426))

(declare-fun d!26428 () Bool)

(declare-fun lt!30212 () Int)

(assert (=> d!26428 (= lt!30212 (size!1519 (list!723 (_2!1139 (v!13005 lt!29252)))))))

(assert (=> d!26428 (= lt!30212 (size!1520 (c!25296 (_2!1139 (v!13005 lt!29252)))))))

(assert (=> d!26428 (= (size!1513 (_2!1139 (v!13005 lt!29252))) lt!30212)))

(declare-fun bs!10325 () Bool)

(assert (= bs!10325 d!26428))

(assert (=> bs!10325 m!92784))

(assert (=> bs!10325 m!92784))

(assert (=> bs!10325 m!95166))

(declare-fun m!95794 () Bool)

(assert (=> bs!10325 m!95794))

(assert (=> b!105885 d!26428))

(declare-fun b!107502 () Bool)

(declare-fun e!59638 () List!1711)

(assert (=> b!107502 (= e!59638 (++!283 (list!727 (left!1303 (c!25296 (_2!1135 lt!29251)))) (list!727 (right!1633 (c!25296 (_2!1135 lt!29251))))))))

(declare-fun d!26430 () Bool)

(declare-fun c!25850 () Bool)

(assert (=> d!26430 (= c!25850 ((_ is Empty!540) (c!25296 (_2!1135 lt!29251))))))

(declare-fun e!59637 () List!1711)

(assert (=> d!26430 (= (list!727 (c!25296 (_2!1135 lt!29251))) e!59637)))

(declare-fun b!107500 () Bool)

(assert (=> b!107500 (= e!59637 e!59638)))

(declare-fun c!25851 () Bool)

(assert (=> b!107500 (= c!25851 ((_ is Leaf!862) (c!25296 (_2!1135 lt!29251))))))

(declare-fun b!107501 () Bool)

(assert (=> b!107501 (= e!59638 (list!731 (xs!3131 (c!25296 (_2!1135 lt!29251)))))))

(declare-fun b!107499 () Bool)

(assert (=> b!107499 (= e!59637 Nil!1705)))

(assert (= (and d!26430 c!25850) b!107499))

(assert (= (and d!26430 (not c!25850)) b!107500))

(assert (= (and b!107500 c!25851) b!107501))

(assert (= (and b!107500 (not c!25851)) b!107502))

(declare-fun m!95796 () Bool)

(assert (=> b!107502 m!95796))

(declare-fun m!95798 () Bool)

(assert (=> b!107502 m!95798))

(assert (=> b!107502 m!95796))

(assert (=> b!107502 m!95798))

(declare-fun m!95800 () Bool)

(assert (=> b!107502 m!95800))

(declare-fun m!95802 () Bool)

(assert (=> b!107501 m!95802))

(assert (=> d!25502 d!26430))

(declare-fun d!26432 () Bool)

(declare-fun c!25852 () Bool)

(assert (=> d!26432 (= c!25852 ((_ is Nil!1705) lt!29558))))

(declare-fun e!59639 () (InoxSet C!1804))

(assert (=> d!26432 (= (content!146 lt!29558) e!59639)))

(declare-fun b!107503 () Bool)

(assert (=> b!107503 (= e!59639 ((as const (Array C!1804 Bool)) false))))

(declare-fun b!107504 () Bool)

(assert (=> b!107504 (= e!59639 ((_ map or) (store ((as const (Array C!1804 Bool)) false) (h!7102 lt!29558) true) (content!146 (t!21400 lt!29558))))))

(assert (= (and d!26432 c!25852) b!107503))

(assert (= (and d!26432 (not c!25852)) b!107504))

(declare-fun m!95804 () Bool)

(assert (=> b!107504 m!95804))

(declare-fun m!95806 () Bool)

(assert (=> b!107504 m!95806))

(assert (=> d!25534 d!26432))

(declare-fun d!26434 () Bool)

(declare-fun c!25853 () Bool)

(assert (=> d!26434 (= c!25853 ((_ is Nil!1705) (++!283 lt!29255 lt!29250)))))

(declare-fun e!59640 () (InoxSet C!1804))

(assert (=> d!26434 (= (content!146 (++!283 lt!29255 lt!29250)) e!59640)))

(declare-fun b!107505 () Bool)

(assert (=> b!107505 (= e!59640 ((as const (Array C!1804 Bool)) false))))

(declare-fun b!107506 () Bool)

(assert (=> b!107506 (= e!59640 ((_ map or) (store ((as const (Array C!1804 Bool)) false) (h!7102 (++!283 lt!29255 lt!29250)) true) (content!146 (t!21400 (++!283 lt!29255 lt!29250)))))))

(assert (= (and d!26434 c!25853) b!107505))

(assert (= (and d!26434 (not c!25853)) b!107506))

(declare-fun m!95808 () Bool)

(assert (=> b!107506 m!95808))

(assert (=> b!107506 m!95574))

(assert (=> d!25534 d!26434))

(assert (=> d!25534 d!26044))

(declare-fun b!107507 () Bool)

(declare-fun e!59642 () tuple2!1856)

(declare-fun lt!30213 () tuple2!1856)

(declare-fun lt!30215 () Option!197)

(assert (=> b!107507 (= e!59642 (tuple2!1857 (prepend!141 (_1!1135 lt!30213) (_1!1139 (v!13005 lt!30215))) (_2!1135 lt!30213)))))

(assert (=> b!107507 (= lt!30213 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!30215))))))

(declare-fun b!107508 () Bool)

(declare-fun e!59643 () Bool)

(declare-fun lt!30214 () tuple2!1856)

(assert (=> b!107508 (= e!59643 (= (list!723 (_2!1135 lt!30214)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29501)))))))))

(declare-fun b!107509 () Bool)

(declare-fun e!59644 () Bool)

(assert (=> b!107509 (= e!59644 (not (isEmpty!794 (_1!1135 lt!30214))))))

(declare-fun b!107510 () Bool)

(assert (=> b!107510 (= e!59642 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29501))))))

(declare-fun b!107512 () Bool)

(declare-fun e!59641 () Bool)

(assert (=> b!107512 (= e!59641 e!59644)))

(declare-fun res!51585 () Bool)

(assert (=> b!107512 (= res!51585 (< (size!1513 (_2!1135 lt!30214)) (size!1513 (_2!1139 (v!13005 lt!29501)))))))

(assert (=> b!107512 (=> (not res!51585) (not e!59644))))

(declare-fun b!107513 () Bool)

(declare-fun res!51587 () Bool)

(assert (=> b!107513 (=> (not res!51587) (not e!59643))))

(assert (=> b!107513 (= res!51587 (= (list!724 (_1!1135 lt!30214)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29501)))))))))

(declare-fun b!107511 () Bool)

(assert (=> b!107511 (= e!59641 (= (list!723 (_2!1135 lt!30214)) (list!723 (_2!1139 (v!13005 lt!29501)))))))

(declare-fun d!26436 () Bool)

(assert (=> d!26436 e!59643))

(declare-fun res!51586 () Bool)

(assert (=> d!26436 (=> (not res!51586) (not e!59643))))

(assert (=> d!26436 (= res!51586 e!59641)))

(declare-fun c!25855 () Bool)

(assert (=> d!26436 (= c!25855 (> (size!1514 (_1!1135 lt!30214)) 0))))

(assert (=> d!26436 (= lt!30214 e!59642)))

(declare-fun c!25854 () Bool)

(assert (=> d!26436 (= c!25854 ((_ is Some!196) lt!30215))))

(assert (=> d!26436 (= lt!30215 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29501))))))

(assert (=> d!26436 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29501))) lt!30214)))

(assert (= (and d!26436 c!25854) b!107507))

(assert (= (and d!26436 (not c!25854)) b!107510))

(assert (= (and d!26436 c!25855) b!107512))

(assert (= (and d!26436 (not c!25855)) b!107511))

(assert (= (and b!107512 res!51585) b!107509))

(assert (= (and d!26436 res!51586) b!107513))

(assert (= (and b!107513 res!51587) b!107508))

(declare-fun m!95810 () Bool)

(assert (=> b!107507 m!95810))

(declare-fun m!95812 () Bool)

(assert (=> b!107507 m!95812))

(declare-fun m!95814 () Bool)

(assert (=> b!107513 m!95814))

(declare-fun m!95816 () Bool)

(assert (=> b!107513 m!95816))

(assert (=> b!107513 m!95816))

(declare-fun m!95818 () Bool)

(assert (=> b!107513 m!95818))

(declare-fun m!95820 () Bool)

(assert (=> b!107512 m!95820))

(declare-fun m!95822 () Bool)

(assert (=> b!107512 m!95822))

(declare-fun m!95824 () Bool)

(assert (=> b!107508 m!95824))

(assert (=> b!107508 m!95816))

(assert (=> b!107508 m!95816))

(assert (=> b!107508 m!95818))

(declare-fun m!95826 () Bool)

(assert (=> d!26436 m!95826))

(declare-fun m!95828 () Bool)

(assert (=> d!26436 m!95828))

(declare-fun m!95830 () Bool)

(assert (=> b!107509 m!95830))

(assert (=> b!107511 m!95824))

(assert (=> b!107511 m!95816))

(assert (=> b!105780 d!26436))

(declare-fun d!26438 () Bool)

(declare-fun e!59645 () Bool)

(assert (=> d!26438 e!59645))

(declare-fun res!51588 () Bool)

(assert (=> d!26438 (=> (not res!51588) (not e!59645))))

(assert (=> d!26438 (= res!51588 (isBalanced!151 (prepend!143 (c!25298 (_1!1135 lt!29496)) (_1!1139 (v!13005 lt!29501)))))))

(declare-fun lt!30216 () BalanceConc!1086)

(assert (=> d!26438 (= lt!30216 (BalanceConc!1087 (prepend!143 (c!25298 (_1!1135 lt!29496)) (_1!1139 (v!13005 lt!29501)))))))

(assert (=> d!26438 (= (prepend!141 (_1!1135 lt!29496) (_1!1139 (v!13005 lt!29501))) lt!30216)))

(declare-fun b!107514 () Bool)

(assert (=> b!107514 (= e!59645 (= (list!724 lt!30216) (Cons!1707 (_1!1139 (v!13005 lt!29501)) (list!724 (_1!1135 lt!29496)))))))

(assert (= (and d!26438 res!51588) b!107514))

(declare-fun m!95832 () Bool)

(assert (=> d!26438 m!95832))

(assert (=> d!26438 m!95832))

(declare-fun m!95834 () Bool)

(assert (=> d!26438 m!95834))

(declare-fun m!95836 () Bool)

(assert (=> b!107514 m!95836))

(declare-fun m!95838 () Bool)

(assert (=> b!107514 m!95838))

(assert (=> b!105780 d!26438))

(assert (=> b!105834 d!26224))

(assert (=> b!105834 d!26228))

(declare-fun d!26440 () Bool)

(declare-fun lt!30217 () Int)

(assert (=> d!26440 (>= lt!30217 0)))

(declare-fun e!59646 () Int)

(assert (=> d!26440 (= lt!30217 e!59646)))

(declare-fun c!25856 () Bool)

(assert (=> d!26440 (= c!25856 ((_ is Nil!1707) lt!29520))))

(assert (=> d!26440 (= (size!1521 lt!29520) lt!30217)))

(declare-fun b!107515 () Bool)

(assert (=> b!107515 (= e!59646 0)))

(declare-fun b!107516 () Bool)

(assert (=> b!107516 (= e!59646 (+ 1 (size!1521 (t!21402 lt!29520))))))

(assert (= (and d!26440 c!25856) b!107515))

(assert (= (and d!26440 (not c!25856)) b!107516))

(declare-fun m!95840 () Bool)

(assert (=> b!107516 m!95840))

(assert (=> b!105794 d!26440))

(assert (=> b!105794 d!25970))

(declare-fun d!26442 () Bool)

(declare-fun lt!30218 () Int)

(assert (=> d!26442 (>= lt!30218 0)))

(declare-fun e!59647 () Int)

(assert (=> d!26442 (= lt!30218 e!59647)))

(declare-fun c!25857 () Bool)

(assert (=> d!26442 (= c!25857 ((_ is Nil!1707) lt!29256))))

(assert (=> d!26442 (= (size!1521 lt!29256) lt!30218)))

(declare-fun b!107517 () Bool)

(assert (=> b!107517 (= e!59647 0)))

(declare-fun b!107518 () Bool)

(assert (=> b!107518 (= e!59647 (+ 1 (size!1521 (t!21402 lt!29256))))))

(assert (= (and d!26442 c!25857) b!107517))

(assert (= (and d!26442 (not c!25857)) b!107518))

(declare-fun m!95842 () Bool)

(assert (=> b!107518 m!95842))

(assert (=> b!105794 d!26442))

(declare-fun d!26444 () Bool)

(assert (=> d!26444 (= (max!0 (height!64 (left!1303 (c!25296 input!576))) (height!64 (right!1633 (c!25296 input!576)))) (ite (< (height!64 (left!1303 (c!25296 input!576))) (height!64 (right!1633 (c!25296 input!576)))) (height!64 (right!1633 (c!25296 input!576))) (height!64 (left!1303 (c!25296 input!576)))))))

(assert (=> b!105895 d!26444))

(assert (=> b!105895 d!26400))

(assert (=> b!105895 d!26402))

(declare-fun d!26446 () Bool)

(assert (=> d!26446 (= (inv!2086 (xs!3131 (right!1633 (c!25296 input!576)))) (<= (size!1519 (innerList!598 (xs!3131 (right!1633 (c!25296 input!576))))) 2147483647))))

(declare-fun bs!10326 () Bool)

(assert (= bs!10326 d!26446))

(declare-fun m!95844 () Bool)

(assert (=> bs!10326 m!95844))

(assert (=> b!105901 d!26446))

(assert (=> b!105857 d!26020))

(assert (=> b!105857 d!26368))

(assert (=> b!105857 d!26366))

(assert (=> b!105857 d!26018))

(declare-fun d!26448 () Bool)

(declare-fun lt!30219 () Int)

(assert (=> d!26448 (>= lt!30219 0)))

(declare-fun e!59648 () Int)

(assert (=> d!26448 (= lt!30219 e!59648)))

(declare-fun c!25858 () Bool)

(assert (=> d!26448 (= c!25858 ((_ is Nil!1705) (_2!1136 lt!29295)))))

(assert (=> d!26448 (= (size!1519 (_2!1136 lt!29295)) lt!30219)))

(declare-fun b!107519 () Bool)

(assert (=> b!107519 (= e!59648 0)))

(declare-fun b!107520 () Bool)

(assert (=> b!107520 (= e!59648 (+ 1 (size!1519 (t!21400 (_2!1136 lt!29295)))))))

(assert (= (and d!26448 c!25858) b!107519))

(assert (= (and d!26448 (not c!25858)) b!107520))

(declare-fun m!95846 () Bool)

(assert (=> b!107520 m!95846))

(assert (=> b!105342 d!26448))

(declare-fun d!26450 () Bool)

(declare-fun lt!30220 () Int)

(assert (=> d!26450 (>= lt!30220 0)))

(declare-fun e!59649 () Int)

(assert (=> d!26450 (= lt!30220 e!59649)))

(declare-fun c!25859 () Bool)

(assert (=> d!26450 (= c!25859 ((_ is Nil!1705) (_2!1140 (v!13006 lt!29268))))))

(assert (=> d!26450 (= (size!1519 (_2!1140 (v!13006 lt!29268))) lt!30220)))

(declare-fun b!107521 () Bool)

(assert (=> b!107521 (= e!59649 0)))

(declare-fun b!107522 () Bool)

(assert (=> b!107522 (= e!59649 (+ 1 (size!1519 (t!21400 (_2!1140 (v!13006 lt!29268))))))))

(assert (= (and d!26450 c!25859) b!107521))

(assert (= (and d!26450 (not c!25859)) b!107522))

(declare-fun m!95848 () Bool)

(assert (=> b!107522 m!95848))

(assert (=> b!105342 d!26450))

(declare-fun bs!10327 () Bool)

(declare-fun b!107539 () Bool)

(assert (= bs!10327 (and b!107539 d!25402)))

(declare-fun lambda!1978 () Int)

(assert (=> bs!10327 (= lambda!1978 lambda!1953)))

(declare-fun b!107548 () Bool)

(declare-fun e!59670 () Bool)

(assert (=> b!107548 (= e!59670 true)))

(declare-fun b!107547 () Bool)

(declare-fun e!59669 () Bool)

(assert (=> b!107547 (= e!59669 e!59670)))

(assert (=> b!107539 e!59669))

(assert (= b!107547 b!107548))

(assert (= b!107539 b!107547))

(assert (=> b!107548 (< (dynLambda!533 order!833 (toValue!960 (transformation!373 (h!7103 rules!1152)))) (dynLambda!536 order!839 lambda!1978))))

(assert (=> b!107548 (< (dynLambda!535 order!837 (toChars!819 (transformation!373 (h!7103 rules!1152)))) (dynLambda!536 order!839 lambda!1978))))

(declare-fun b!107535 () Bool)

(declare-fun e!59662 () Option!197)

(assert (=> b!107535 (= e!59662 None!196)))

(declare-fun lt!30243 () Option!197)

(declare-fun b!107536 () Bool)

(declare-fun e!59663 () Bool)

(assert (=> b!107536 (= e!59663 (= (list!723 (_2!1139 (get!437 lt!30243))) (_2!1140 (get!438 (maxPrefixOneRule!44 thiss!11428 (h!7103 rules!1152) (list!723 input!576))))))))

(declare-fun b!107537 () Bool)

(declare-fun e!59660 () Bool)

(declare-fun lt!30248 () List!1711)

(assert (=> b!107537 (= e!59660 (matchR!48 (regex!373 (h!7103 rules!1152)) (_1!1143 (findLongestMatchInner!33 (regex!373 (h!7103 rules!1152)) Nil!1705 (size!1519 Nil!1705) lt!30248 lt!30248 (size!1519 lt!30248)))))))

(declare-fun b!107538 () Bool)

(declare-fun e!59664 () Bool)

(assert (=> b!107538 (= e!59664 e!59663)))

(declare-fun res!51597 () Bool)

(assert (=> b!107538 (=> (not res!51597) (not e!59663))))

(assert (=> b!107538 (= res!51597 (= (_1!1139 (get!437 lt!30243)) (_1!1140 (get!438 (maxPrefixOneRule!44 thiss!11428 (h!7103 rules!1152) (list!723 input!576))))))))

(declare-datatypes ((tuple2!1874 0))(
  ( (tuple2!1875 (_1!1144 BalanceConc!1084) (_2!1144 BalanceConc!1084)) )
))
(declare-fun lt!30244 () tuple2!1874)

(assert (=> b!107539 (= e!59662 (Some!196 (tuple2!1865 (Token!491 (apply!268 (transformation!373 (h!7103 rules!1152)) (_1!1144 lt!30244)) (h!7103 rules!1152) (size!1513 (_1!1144 lt!30244)) (list!723 (_1!1144 lt!30244))) (_2!1144 lt!30244))))))

(assert (=> b!107539 (= lt!30248 (list!723 input!576))))

(declare-fun lt!30249 () Unit!1124)

(assert (=> b!107539 (= lt!30249 (longestMatchIsAcceptedByMatchOrIsEmpty!34 (regex!373 (h!7103 rules!1152)) lt!30248))))

(declare-fun res!51600 () Bool)

(assert (=> b!107539 (= res!51600 (isEmpty!807 (_1!1143 (findLongestMatchInner!33 (regex!373 (h!7103 rules!1152)) Nil!1705 (size!1519 Nil!1705) lt!30248 lt!30248 (size!1519 lt!30248)))))))

(assert (=> b!107539 (=> res!51600 e!59660)))

(assert (=> b!107539 e!59660))

(declare-fun lt!30245 () Unit!1124)

(assert (=> b!107539 (= lt!30245 lt!30249)))

(declare-fun lt!30247 () Unit!1124)

(declare-fun lemmaInv!12 (TokenValueInjection!550) Unit!1124)

(assert (=> b!107539 (= lt!30247 (lemmaInv!12 (transformation!373 (h!7103 rules!1152))))))

(declare-fun lt!30241 () Unit!1124)

(declare-fun ForallOf!9 (Int BalanceConc!1084) Unit!1124)

(assert (=> b!107539 (= lt!30241 (ForallOf!9 lambda!1978 (_1!1144 lt!30244)))))

(declare-fun lt!30250 () Unit!1124)

(assert (=> b!107539 (= lt!30250 (ForallOf!9 lambda!1978 (seqFromList!204 (list!723 (_1!1144 lt!30244)))))))

(declare-fun lt!30242 () Option!197)

(assert (=> b!107539 (= lt!30242 (Some!196 (tuple2!1865 (Token!491 (apply!268 (transformation!373 (h!7103 rules!1152)) (_1!1144 lt!30244)) (h!7103 rules!1152) (size!1513 (_1!1144 lt!30244)) (list!723 (_1!1144 lt!30244))) (_2!1144 lt!30244))))))

(declare-fun lt!30246 () Unit!1124)

(declare-fun lemmaEqSameImage!9 (TokenValueInjection!550 BalanceConc!1084 BalanceConc!1084) Unit!1124)

(assert (=> b!107539 (= lt!30246 (lemmaEqSameImage!9 (transformation!373 (h!7103 rules!1152)) (_1!1144 lt!30244) (seqFromList!204 (list!723 (_1!1144 lt!30244)))))))

(declare-fun d!26452 () Bool)

(declare-fun e!59661 () Bool)

(assert (=> d!26452 e!59661))

(declare-fun res!51599 () Bool)

(assert (=> d!26452 (=> (not res!51599) (not e!59661))))

(assert (=> d!26452 (= res!51599 (= (isDefined!71 lt!30243) (isDefined!72 (maxPrefixOneRule!44 thiss!11428 (h!7103 rules!1152) (list!723 input!576)))))))

(assert (=> d!26452 (= lt!30243 e!59662)))

(declare-fun c!25862 () Bool)

(declare-fun isEmpty!808 (BalanceConc!1084) Bool)

(assert (=> d!26452 (= c!25862 (isEmpty!808 (_1!1144 lt!30244)))))

(declare-fun findLongestMatchWithZipperSequence!9 (Regex!441 BalanceConc!1084) tuple2!1874)

(assert (=> d!26452 (= lt!30244 (findLongestMatchWithZipperSequence!9 (regex!373 (h!7103 rules!1152)) input!576))))

(assert (=> d!26452 (ruleValid!48 thiss!11428 (h!7103 rules!1152))))

(assert (=> d!26452 (= (maxPrefixOneRuleZipperSequence!18 thiss!11428 (h!7103 rules!1152) input!576) lt!30243)))

(declare-fun b!107540 () Bool)

(assert (=> b!107540 (= e!59661 e!59664)))

(declare-fun res!51598 () Bool)

(assert (=> b!107540 (=> res!51598 e!59664)))

(assert (=> b!107540 (= res!51598 (not (isDefined!71 lt!30243)))))

(assert (= (and d!26452 c!25862) b!107535))

(assert (= (and d!26452 (not c!25862)) b!107539))

(assert (= (and b!107539 (not res!51600)) b!107537))

(assert (= (and d!26452 res!51599) b!107540))

(assert (= (and b!107540 (not res!51598)) b!107538))

(assert (= (and b!107538 res!51597) b!107536))

(declare-fun m!95850 () Bool)

(assert (=> d!26452 m!95850))

(declare-fun m!95852 () Bool)

(assert (=> d!26452 m!95852))

(assert (=> d!26452 m!94866))

(assert (=> d!26452 m!91458))

(assert (=> d!26452 m!92402))

(assert (=> d!26452 m!91458))

(assert (=> d!26452 m!92402))

(declare-fun m!95854 () Bool)

(assert (=> d!26452 m!95854))

(declare-fun m!95856 () Bool)

(assert (=> d!26452 m!95856))

(declare-fun m!95858 () Bool)

(assert (=> b!107539 m!95858))

(declare-fun m!95860 () Bool)

(assert (=> b!107539 m!95860))

(declare-fun m!95862 () Bool)

(assert (=> b!107539 m!95862))

(declare-fun m!95864 () Bool)

(assert (=> b!107539 m!95864))

(declare-fun m!95866 () Bool)

(assert (=> b!107539 m!95866))

(declare-fun m!95868 () Bool)

(assert (=> b!107539 m!95868))

(declare-fun m!95870 () Bool)

(assert (=> b!107539 m!95870))

(declare-fun m!95872 () Bool)

(assert (=> b!107539 m!95872))

(assert (=> b!107539 m!91458))

(assert (=> b!107539 m!95036))

(assert (=> b!107539 m!95864))

(declare-fun m!95874 () Bool)

(assert (=> b!107539 m!95874))

(assert (=> b!107539 m!95860))

(declare-fun m!95876 () Bool)

(assert (=> b!107539 m!95876))

(declare-fun m!95878 () Bool)

(assert (=> b!107539 m!95878))

(assert (=> b!107539 m!95878))

(assert (=> b!107539 m!95860))

(declare-fun m!95880 () Bool)

(assert (=> b!107539 m!95880))

(assert (=> b!107539 m!95036))

(declare-fun m!95882 () Bool)

(assert (=> b!107536 m!95882))

(assert (=> b!107536 m!91458))

(assert (=> b!107536 m!92402))

(assert (=> b!107536 m!92402))

(declare-fun m!95884 () Bool)

(assert (=> b!107536 m!95884))

(declare-fun m!95886 () Bool)

(assert (=> b!107536 m!95886))

(assert (=> b!107536 m!91458))

(assert (=> b!107540 m!95850))

(assert (=> b!107538 m!95882))

(assert (=> b!107538 m!91458))

(assert (=> b!107538 m!91458))

(assert (=> b!107538 m!92402))

(assert (=> b!107538 m!92402))

(assert (=> b!107538 m!95884))

(assert (=> b!107537 m!95036))

(assert (=> b!107537 m!95864))

(assert (=> b!107537 m!95036))

(assert (=> b!107537 m!95864))

(assert (=> b!107537 m!95874))

(declare-fun m!95888 () Bool)

(assert (=> b!107537 m!95888))

(assert (=> bm!4548 d!26452))

(declare-fun d!26454 () Bool)

(declare-fun lt!30251 () Int)

(assert (=> d!26454 (= lt!30251 (size!1521 (list!724 (_1!1135 lt!29570))))))

(assert (=> d!26454 (= lt!30251 (size!1522 (c!25298 (_1!1135 lt!29570))))))

(assert (=> d!26454 (= (size!1514 (_1!1135 lt!29570)) lt!30251)))

(declare-fun bs!10328 () Bool)

(assert (= bs!10328 d!26454))

(assert (=> bs!10328 m!92782))

(assert (=> bs!10328 m!92782))

(declare-fun m!95890 () Bool)

(assert (=> bs!10328 m!95890))

(declare-fun m!95892 () Bool)

(assert (=> bs!10328 m!95892))

(assert (=> d!25544 d!26454))

(declare-fun b!107549 () Bool)

(declare-fun res!51604 () Bool)

(declare-fun e!59675 () Bool)

(assert (=> b!107549 (=> (not res!51604) (not e!59675))))

(declare-fun e!59674 () Bool)

(assert (=> b!107549 (= res!51604 e!59674)))

(declare-fun res!51603 () Bool)

(assert (=> b!107549 (=> res!51603 e!59674)))

(declare-fun lt!30257 () Option!197)

(assert (=> b!107549 (= res!51603 (not (isDefined!71 lt!30257)))))

(declare-fun b!107550 () Bool)

(declare-fun e!59672 () Bool)

(declare-fun e!59676 () Bool)

(assert (=> b!107550 (= e!59672 e!59676)))

(declare-fun res!51606 () Bool)

(assert (=> b!107550 (=> (not res!51606) (not e!59676))))

(assert (=> b!107550 (= res!51606 (= (_1!1139 (get!437 lt!30257)) (_1!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29252))))))))))

(declare-fun b!107551 () Bool)

(assert (=> b!107551 (= e!59676 (= (list!723 (_2!1139 (get!437 lt!30257))) (_2!1140 (get!438 (maxPrefix!93 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29252))))))))))

(declare-fun b!107552 () Bool)

(declare-fun e!59673 () Bool)

(assert (=> b!107552 (= e!59673 (= (list!723 (_2!1139 (get!437 lt!30257))) (_2!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29252))))))))))

(declare-fun bm!4720 () Bool)

(declare-fun call!4725 () Option!197)

(assert (=> bm!4720 (= call!4725 (maxPrefixOneRuleZipperSequence!18 thiss!11428 (h!7103 rules!1152) (_2!1139 (v!13005 lt!29252))))))

(declare-fun d!26456 () Bool)

(assert (=> d!26456 e!59675))

(declare-fun res!51602 () Bool)

(assert (=> d!26456 (=> (not res!51602) (not e!59675))))

(assert (=> d!26456 (= res!51602 (= (isDefined!71 lt!30257) (isDefined!72 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29252)))))))))

(declare-fun e!59671 () Option!197)

(assert (=> d!26456 (= lt!30257 e!59671)))

(declare-fun c!25863 () Bool)

(assert (=> d!26456 (= c!25863 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!30258 () Unit!1124)

(declare-fun lt!30256 () Unit!1124)

(assert (=> d!26456 (= lt!30258 lt!30256)))

(declare-fun lt!30253 () List!1711)

(declare-fun lt!30252 () List!1711)

(assert (=> d!26456 (isPrefix!51 lt!30253 lt!30252)))

(assert (=> d!26456 (= lt!30256 (lemmaIsPrefixRefl!51 lt!30253 lt!30252))))

(assert (=> d!26456 (= lt!30252 (list!723 (_2!1139 (v!13005 lt!29252))))))

(assert (=> d!26456 (= lt!30253 (list!723 (_2!1139 (v!13005 lt!29252))))))

(assert (=> d!26456 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!26456 (= (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29252))) lt!30257)))

(declare-fun b!107553 () Bool)

(assert (=> b!107553 (= e!59675 e!59672)))

(declare-fun res!51605 () Bool)

(assert (=> b!107553 (=> res!51605 e!59672)))

(assert (=> b!107553 (= res!51605 (not (isDefined!71 lt!30257)))))

(declare-fun b!107554 () Bool)

(assert (=> b!107554 (= e!59674 e!59673)))

(declare-fun res!51601 () Bool)

(assert (=> b!107554 (=> (not res!51601) (not e!59673))))

(assert (=> b!107554 (= res!51601 (= (_1!1139 (get!437 lt!30257)) (_1!1140 (get!438 (maxPrefixZipper!17 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29252))))))))))

(declare-fun b!107555 () Bool)

(declare-fun lt!30254 () Option!197)

(declare-fun lt!30255 () Option!197)

(assert (=> b!107555 (= e!59671 (ite (and ((_ is None!196) lt!30254) ((_ is None!196) lt!30255)) None!196 (ite ((_ is None!196) lt!30255) lt!30254 (ite ((_ is None!196) lt!30254) lt!30255 (ite (>= (size!1512 (_1!1139 (v!13005 lt!30254))) (size!1512 (_1!1139 (v!13005 lt!30255)))) lt!30254 lt!30255)))))))

(assert (=> b!107555 (= lt!30254 call!4725)))

(assert (=> b!107555 (= lt!30255 (maxPrefixZipperSequence!56 thiss!11428 (t!21401 rules!1152) (_2!1139 (v!13005 lt!29252))))))

(declare-fun b!107556 () Bool)

(assert (=> b!107556 (= e!59671 call!4725)))

(assert (= (and d!26456 c!25863) b!107556))

(assert (= (and d!26456 (not c!25863)) b!107555))

(assert (= (or b!107556 b!107555) bm!4720))

(assert (= (and d!26456 res!51602) b!107549))

(assert (= (and b!107549 (not res!51603)) b!107554))

(assert (= (and b!107554 res!51601) b!107552))

(assert (= (and b!107549 res!51604) b!107553))

(assert (= (and b!107553 (not res!51605)) b!107550))

(assert (= (and b!107550 res!51606) b!107551))

(declare-fun m!95894 () Bool)

(assert (=> b!107555 m!95894))

(declare-fun m!95896 () Bool)

(assert (=> b!107551 m!95896))

(assert (=> b!107551 m!92784))

(assert (=> b!107551 m!95158))

(assert (=> b!107551 m!92784))

(assert (=> b!107551 m!95158))

(declare-fun m!95898 () Bool)

(assert (=> b!107551 m!95898))

(declare-fun m!95900 () Bool)

(assert (=> b!107551 m!95900))

(assert (=> b!107554 m!95896))

(assert (=> b!107554 m!92784))

(assert (=> b!107554 m!92784))

(declare-fun m!95902 () Bool)

(assert (=> b!107554 m!95902))

(assert (=> b!107554 m!95902))

(declare-fun m!95904 () Bool)

(assert (=> b!107554 m!95904))

(assert (=> b!107552 m!95896))

(assert (=> b!107552 m!95902))

(assert (=> b!107552 m!95904))

(assert (=> b!107552 m!95900))

(assert (=> b!107552 m!92784))

(assert (=> b!107552 m!92784))

(assert (=> b!107552 m!95902))

(declare-fun m!95906 () Bool)

(assert (=> bm!4720 m!95906))

(declare-fun m!95908 () Bool)

(assert (=> b!107549 m!95908))

(assert (=> d!26456 m!95902))

(declare-fun m!95910 () Bool)

(assert (=> d!26456 m!95910))

(assert (=> d!26456 m!95908))

(assert (=> d!26456 m!92158))

(declare-fun m!95912 () Bool)

(assert (=> d!26456 m!95912))

(declare-fun m!95914 () Bool)

(assert (=> d!26456 m!95914))

(assert (=> d!26456 m!92784))

(assert (=> d!26456 m!92784))

(assert (=> d!26456 m!95902))

(assert (=> b!107553 m!95908))

(assert (=> b!107550 m!95896))

(assert (=> b!107550 m!92784))

(assert (=> b!107550 m!92784))

(assert (=> b!107550 m!95158))

(assert (=> b!107550 m!95158))

(assert (=> b!107550 m!95898))

(assert (=> d!25544 d!26456))

(declare-fun d!26458 () Bool)

(declare-fun lt!30259 () Int)

(assert (=> d!26458 (>= lt!30259 0)))

(declare-fun e!59677 () Int)

(assert (=> d!26458 (= lt!30259 e!59677)))

(declare-fun c!25864 () Bool)

(assert (=> d!26458 (= c!25864 ((_ is Nil!1705) (list!731 (xs!3131 (c!25296 input!576)))))))

(assert (=> d!26458 (= (size!1519 (list!731 (xs!3131 (c!25296 input!576)))) lt!30259)))

(declare-fun b!107557 () Bool)

(assert (=> b!107557 (= e!59677 0)))

(declare-fun b!107558 () Bool)

(assert (=> b!107558 (= e!59677 (+ 1 (size!1519 (t!21400 (list!731 (xs!3131 (c!25296 input!576)))))))))

(assert (= (and d!26458 c!25864) b!107557))

(assert (= (and d!26458 (not c!25864)) b!107558))

(declare-fun m!95916 () Bool)

(assert (=> b!107558 m!95916))

(assert (=> d!25464 d!26458))

(assert (=> d!25464 d!26410))

(declare-fun d!26460 () Bool)

(declare-fun c!25865 () Bool)

(assert (=> d!26460 (= c!25865 ((_ is Nil!1705) lt!29527))))

(declare-fun e!59678 () (InoxSet C!1804))

(assert (=> d!26460 (= (content!146 lt!29527) e!59678)))

(declare-fun b!107559 () Bool)

(assert (=> b!107559 (= e!59678 ((as const (Array C!1804 Bool)) false))))

(declare-fun b!107560 () Bool)

(assert (=> b!107560 (= e!59678 ((_ map or) (store ((as const (Array C!1804 Bool)) false) (h!7102 lt!29527) true) (content!146 (t!21400 lt!29527))))))

(assert (= (and d!26460 c!25865) b!107559))

(assert (= (and d!26460 (not c!25865)) b!107560))

(declare-fun m!95918 () Bool)

(assert (=> b!107560 m!95918))

(declare-fun m!95920 () Bool)

(assert (=> b!107560 m!95920))

(assert (=> d!25496 d!26460))

(assert (=> d!25496 d!26248))

(declare-fun d!26462 () Bool)

(declare-fun c!25866 () Bool)

(assert (=> d!26462 (= c!25866 ((_ is Nil!1705) (++!283 lt!29250 lt!29241)))))

(declare-fun e!59679 () (InoxSet C!1804))

(assert (=> d!26462 (= (content!146 (++!283 lt!29250 lt!29241)) e!59679)))

(declare-fun b!107561 () Bool)

(assert (=> b!107561 (= e!59679 ((as const (Array C!1804 Bool)) false))))

(declare-fun b!107562 () Bool)

(assert (=> b!107562 (= e!59679 ((_ map or) (store ((as const (Array C!1804 Bool)) false) (h!7102 (++!283 lt!29250 lt!29241)) true) (content!146 (t!21400 (++!283 lt!29250 lt!29241)))))))

(assert (= (and d!26462 c!25866) b!107561))

(assert (= (and d!26462 (not c!25866)) b!107562))

(declare-fun m!95922 () Bool)

(assert (=> b!107562 m!95922))

(declare-fun m!95924 () Bool)

(assert (=> b!107562 m!95924))

(assert (=> d!25496 d!26462))

(declare-fun b!107565 () Bool)

(declare-fun e!59681 () List!1713)

(assert (=> b!107565 (= e!59681 (list!732 (xs!3132 (c!25298 (_1!1135 lt!29251)))))))

(declare-fun b!107564 () Bool)

(declare-fun e!59680 () List!1713)

(assert (=> b!107564 (= e!59680 e!59681)))

(declare-fun c!25868 () Bool)

(assert (=> b!107564 (= c!25868 ((_ is Leaf!863) (c!25298 (_1!1135 lt!29251))))))

(declare-fun b!107563 () Bool)

(assert (=> b!107563 (= e!59680 Nil!1707)))

(declare-fun b!107566 () Bool)

(assert (=> b!107566 (= e!59681 (++!284 (list!728 (left!1304 (c!25298 (_1!1135 lt!29251)))) (list!728 (right!1634 (c!25298 (_1!1135 lt!29251))))))))

(declare-fun d!26464 () Bool)

(declare-fun c!25867 () Bool)

(assert (=> d!26464 (= c!25867 ((_ is Empty!541) (c!25298 (_1!1135 lt!29251))))))

(assert (=> d!26464 (= (list!728 (c!25298 (_1!1135 lt!29251))) e!59680)))

(assert (= (and d!26464 c!25867) b!107563))

(assert (= (and d!26464 (not c!25867)) b!107564))

(assert (= (and b!107564 c!25868) b!107565))

(assert (= (and b!107564 (not c!25868)) b!107566))

(declare-fun m!95926 () Bool)

(assert (=> b!107565 m!95926))

(declare-fun m!95928 () Bool)

(assert (=> b!107566 m!95928))

(declare-fun m!95930 () Bool)

(assert (=> b!107566 m!95930))

(assert (=> b!107566 m!95928))

(assert (=> b!107566 m!95930))

(declare-fun m!95932 () Bool)

(assert (=> b!107566 m!95932))

(assert (=> d!25524 d!26464))

(declare-fun b!107567 () Bool)

(declare-fun res!51607 () Bool)

(declare-fun e!59683 () Bool)

(assert (=> b!107567 (=> (not res!51607) (not e!59683))))

(assert (=> b!107567 (= res!51607 (<= (- (height!64 (left!1303 (left!1303 (c!25296 input!576)))) (height!64 (right!1633 (left!1303 (c!25296 input!576))))) 1))))

(declare-fun b!107568 () Bool)

(declare-fun res!51610 () Bool)

(assert (=> b!107568 (=> (not res!51610) (not e!59683))))

(assert (=> b!107568 (= res!51610 (isBalanced!149 (left!1303 (left!1303 (c!25296 input!576)))))))

(declare-fun b!107569 () Bool)

(assert (=> b!107569 (= e!59683 (not (isEmpty!800 (right!1633 (left!1303 (c!25296 input!576))))))))

(declare-fun b!107570 () Bool)

(declare-fun e!59682 () Bool)

(assert (=> b!107570 (= e!59682 e!59683)))

(declare-fun res!51608 () Bool)

(assert (=> b!107570 (=> (not res!51608) (not e!59683))))

(assert (=> b!107570 (= res!51608 (<= (- 1) (- (height!64 (left!1303 (left!1303 (c!25296 input!576)))) (height!64 (right!1633 (left!1303 (c!25296 input!576)))))))))

(declare-fun b!107571 () Bool)

(declare-fun res!51609 () Bool)

(assert (=> b!107571 (=> (not res!51609) (not e!59683))))

(assert (=> b!107571 (= res!51609 (not (isEmpty!800 (left!1303 (left!1303 (c!25296 input!576))))))))

(declare-fun b!107572 () Bool)

(declare-fun res!51611 () Bool)

(assert (=> b!107572 (=> (not res!51611) (not e!59683))))

(assert (=> b!107572 (= res!51611 (isBalanced!149 (right!1633 (left!1303 (c!25296 input!576)))))))

(declare-fun d!26466 () Bool)

(declare-fun res!51612 () Bool)

(assert (=> d!26466 (=> res!51612 e!59682)))

(assert (=> d!26466 (= res!51612 (not ((_ is Node!540) (left!1303 (c!25296 input!576)))))))

(assert (=> d!26466 (= (isBalanced!149 (left!1303 (c!25296 input!576))) e!59682)))

(assert (= (and d!26466 (not res!51612)) b!107570))

(assert (= (and b!107570 res!51608) b!107567))

(assert (= (and b!107567 res!51607) b!107568))

(assert (= (and b!107568 res!51610) b!107572))

(assert (= (and b!107572 res!51611) b!107571))

(assert (= (and b!107571 res!51609) b!107569))

(assert (=> b!107567 m!94500))

(assert (=> b!107567 m!94502))

(declare-fun m!95934 () Bool)

(assert (=> b!107572 m!95934))

(declare-fun m!95936 () Bool)

(assert (=> b!107569 m!95936))

(assert (=> b!107570 m!94500))

(assert (=> b!107570 m!94502))

(declare-fun m!95938 () Bool)

(assert (=> b!107571 m!95938))

(declare-fun m!95940 () Bool)

(assert (=> b!107568 m!95940))

(assert (=> b!105516 d!26466))

(declare-fun d!26468 () Bool)

(declare-fun lt!30260 () Bool)

(assert (=> d!26468 (= lt!30260 (isEmpty!797 (list!724 (_1!1135 lt!29332))))))

(assert (=> d!26468 (= lt!30260 (isEmpty!798 (c!25298 (_1!1135 lt!29332))))))

(assert (=> d!26468 (= (isEmpty!794 (_1!1135 lt!29332)) lt!30260)))

(declare-fun bs!10329 () Bool)

(assert (= bs!10329 d!26468))

(assert (=> bs!10329 m!91914))

(assert (=> bs!10329 m!91914))

(declare-fun m!95942 () Bool)

(assert (=> bs!10329 m!95942))

(declare-fun m!95944 () Bool)

(assert (=> bs!10329 m!95944))

(assert (=> b!105404 d!26468))

(declare-fun b!107576 () Bool)

(declare-fun e!59685 () List!1711)

(assert (=> b!107576 (= e!59685 (++!283 (list!727 (left!1303 (c!25296 (_2!1135 (lexRec!60 thiss!11428 rules!1152 input!576))))) (list!727 (right!1633 (c!25296 (_2!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))))

(declare-fun c!25869 () Bool)

(declare-fun d!26470 () Bool)

(assert (=> d!26470 (= c!25869 ((_ is Empty!540) (c!25296 (_2!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))

(declare-fun e!59684 () List!1711)

(assert (=> d!26470 (= (list!727 (c!25296 (_2!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))) e!59684)))

(declare-fun b!107574 () Bool)

(assert (=> b!107574 (= e!59684 e!59685)))

(declare-fun c!25870 () Bool)

(assert (=> b!107574 (= c!25870 ((_ is Leaf!862) (c!25296 (_2!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))

(declare-fun b!107575 () Bool)

(assert (=> b!107575 (= e!59685 (list!731 (xs!3131 (c!25296 (_2!1135 (lexRec!60 thiss!11428 rules!1152 input!576))))))))

(declare-fun b!107573 () Bool)

(assert (=> b!107573 (= e!59684 Nil!1705)))

(assert (= (and d!26470 c!25869) b!107573))

(assert (= (and d!26470 (not c!25869)) b!107574))

(assert (= (and b!107574 c!25870) b!107575))

(assert (= (and b!107574 (not c!25870)) b!107576))

(declare-fun m!95946 () Bool)

(assert (=> b!107576 m!95946))

(declare-fun m!95948 () Bool)

(assert (=> b!107576 m!95948))

(assert (=> b!107576 m!95946))

(assert (=> b!107576 m!95948))

(declare-fun m!95950 () Bool)

(assert (=> b!107576 m!95950))

(declare-fun m!95952 () Bool)

(assert (=> b!107575 m!95952))

(assert (=> d!25462 d!26470))

(assert (=> b!105869 d!26230))

(declare-fun d!26472 () Bool)

(declare-fun e!59687 () Bool)

(assert (=> d!26472 e!59687))

(declare-fun c!25872 () Bool)

(declare-fun lt!30262 () tuple2!1858)

(assert (=> d!26472 (= c!25872 (> (size!1521 (_1!1136 lt!30262)) 0))))

(declare-fun e!59688 () tuple2!1858)

(assert (=> d!26472 (= lt!30262 e!59688)))

(declare-fun c!25871 () Bool)

(declare-fun lt!30263 () Option!198)

(assert (=> d!26472 (= c!25871 ((_ is Some!197) lt!30263))))

(assert (=> d!26472 (= lt!30263 (maxPrefix!93 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29240)))))))

(assert (=> d!26472 (= (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29240)))) lt!30262)))

(declare-fun b!107577 () Bool)

(declare-fun lt!30261 () tuple2!1858)

(assert (=> b!107577 (= e!59688 (tuple2!1859 (Cons!1707 (_1!1140 (v!13006 lt!30263)) (_1!1136 lt!30261)) (_2!1136 lt!30261)))))

(assert (=> b!107577 (= lt!30261 (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!30263))))))

(declare-fun b!107578 () Bool)

(assert (=> b!107578 (= e!59688 (tuple2!1859 Nil!1707 (list!723 (_2!1139 (v!13005 lt!29240)))))))

(declare-fun b!107579 () Bool)

(declare-fun e!59686 () Bool)

(assert (=> b!107579 (= e!59686 (not (isEmpty!797 (_1!1136 lt!30262))))))

(declare-fun b!107580 () Bool)

(assert (=> b!107580 (= e!59687 e!59686)))

(declare-fun res!51613 () Bool)

(assert (=> b!107580 (= res!51613 (< (size!1519 (_2!1136 lt!30262)) (size!1519 (list!723 (_2!1139 (v!13005 lt!29240))))))))

(assert (=> b!107580 (=> (not res!51613) (not e!59686))))

(declare-fun b!107581 () Bool)

(assert (=> b!107581 (= e!59687 (= (_2!1136 lt!30262) (list!723 (_2!1139 (v!13005 lt!29240)))))))

(assert (= (and d!26472 c!25871) b!107577))

(assert (= (and d!26472 (not c!25871)) b!107578))

(assert (= (and d!26472 c!25872) b!107580))

(assert (= (and d!26472 (not c!25872)) b!107581))

(assert (= (and b!107580 res!51613) b!107579))

(declare-fun m!95954 () Bool)

(assert (=> d!26472 m!95954))

(assert (=> d!26472 m!92750))

(assert (=> d!26472 m!95530))

(declare-fun m!95956 () Bool)

(assert (=> b!107577 m!95956))

(declare-fun m!95958 () Bool)

(assert (=> b!107579 m!95958))

(declare-fun m!95960 () Bool)

(assert (=> b!107580 m!95960))

(assert (=> b!107580 m!92750))

(declare-fun m!95962 () Bool)

(assert (=> b!107580 m!95962))

(assert (=> b!105869 d!26472))

(assert (=> b!105869 d!26232))

(declare-fun b!107585 () Bool)

(declare-fun e!59689 () Bool)

(declare-fun lt!30264 () List!1711)

(assert (=> b!107585 (= e!59689 (or (not (= (list!727 (right!1633 (c!25296 (_2!1135 lt!29080)))) Nil!1705)) (= lt!30264 (list!727 (left!1303 (c!25296 (_2!1135 lt!29080)))))))))

(declare-fun b!107583 () Bool)

(declare-fun e!59690 () List!1711)

(assert (=> b!107583 (= e!59690 (Cons!1705 (h!7102 (list!727 (left!1303 (c!25296 (_2!1135 lt!29080))))) (++!283 (t!21400 (list!727 (left!1303 (c!25296 (_2!1135 lt!29080))))) (list!727 (right!1633 (c!25296 (_2!1135 lt!29080)))))))))

(declare-fun d!26474 () Bool)

(assert (=> d!26474 e!59689))

(declare-fun res!51615 () Bool)

(assert (=> d!26474 (=> (not res!51615) (not e!59689))))

(assert (=> d!26474 (= res!51615 (= (content!146 lt!30264) ((_ map or) (content!146 (list!727 (left!1303 (c!25296 (_2!1135 lt!29080))))) (content!146 (list!727 (right!1633 (c!25296 (_2!1135 lt!29080))))))))))

(assert (=> d!26474 (= lt!30264 e!59690)))

(declare-fun c!25873 () Bool)

(assert (=> d!26474 (= c!25873 ((_ is Nil!1705) (list!727 (left!1303 (c!25296 (_2!1135 lt!29080))))))))

(assert (=> d!26474 (= (++!283 (list!727 (left!1303 (c!25296 (_2!1135 lt!29080)))) (list!727 (right!1633 (c!25296 (_2!1135 lt!29080))))) lt!30264)))

(declare-fun b!107582 () Bool)

(assert (=> b!107582 (= e!59690 (list!727 (right!1633 (c!25296 (_2!1135 lt!29080)))))))

(declare-fun b!107584 () Bool)

(declare-fun res!51614 () Bool)

(assert (=> b!107584 (=> (not res!51614) (not e!59689))))

(assert (=> b!107584 (= res!51614 (= (size!1519 lt!30264) (+ (size!1519 (list!727 (left!1303 (c!25296 (_2!1135 lt!29080))))) (size!1519 (list!727 (right!1633 (c!25296 (_2!1135 lt!29080))))))))))

(assert (= (and d!26474 c!25873) b!107582))

(assert (= (and d!26474 (not c!25873)) b!107583))

(assert (= (and d!26474 res!51615) b!107584))

(assert (= (and b!107584 res!51614) b!107585))

(assert (=> b!107583 m!92216))

(declare-fun m!95964 () Bool)

(assert (=> b!107583 m!95964))

(declare-fun m!95966 () Bool)

(assert (=> d!26474 m!95966))

(assert (=> d!26474 m!92214))

(declare-fun m!95968 () Bool)

(assert (=> d!26474 m!95968))

(assert (=> d!26474 m!92216))

(declare-fun m!95970 () Bool)

(assert (=> d!26474 m!95970))

(declare-fun m!95972 () Bool)

(assert (=> b!107584 m!95972))

(assert (=> b!107584 m!92214))

(declare-fun m!95974 () Bool)

(assert (=> b!107584 m!95974))

(assert (=> b!107584 m!92216))

(declare-fun m!95976 () Bool)

(assert (=> b!107584 m!95976))

(assert (=> b!105576 d!26474))

(declare-fun b!107589 () Bool)

(declare-fun e!59692 () List!1711)

(assert (=> b!107589 (= e!59692 (++!283 (list!727 (left!1303 (left!1303 (c!25296 (_2!1135 lt!29080))))) (list!727 (right!1633 (left!1303 (c!25296 (_2!1135 lt!29080)))))))))

(declare-fun d!26476 () Bool)

(declare-fun c!25874 () Bool)

(assert (=> d!26476 (= c!25874 ((_ is Empty!540) (left!1303 (c!25296 (_2!1135 lt!29080)))))))

(declare-fun e!59691 () List!1711)

(assert (=> d!26476 (= (list!727 (left!1303 (c!25296 (_2!1135 lt!29080)))) e!59691)))

(declare-fun b!107587 () Bool)

(assert (=> b!107587 (= e!59691 e!59692)))

(declare-fun c!25875 () Bool)

(assert (=> b!107587 (= c!25875 ((_ is Leaf!862) (left!1303 (c!25296 (_2!1135 lt!29080)))))))

(declare-fun b!107588 () Bool)

(assert (=> b!107588 (= e!59692 (list!731 (xs!3131 (left!1303 (c!25296 (_2!1135 lt!29080))))))))

(declare-fun b!107586 () Bool)

(assert (=> b!107586 (= e!59691 Nil!1705)))

(assert (= (and d!26476 c!25874) b!107586))

(assert (= (and d!26476 (not c!25874)) b!107587))

(assert (= (and b!107587 c!25875) b!107588))

(assert (= (and b!107587 (not c!25875)) b!107589))

(declare-fun m!95978 () Bool)

(assert (=> b!107589 m!95978))

(declare-fun m!95980 () Bool)

(assert (=> b!107589 m!95980))

(assert (=> b!107589 m!95978))

(assert (=> b!107589 m!95980))

(declare-fun m!95982 () Bool)

(assert (=> b!107589 m!95982))

(declare-fun m!95984 () Bool)

(assert (=> b!107588 m!95984))

(assert (=> b!105576 d!26476))

(declare-fun b!107593 () Bool)

(declare-fun e!59694 () List!1711)

(assert (=> b!107593 (= e!59694 (++!283 (list!727 (left!1303 (right!1633 (c!25296 (_2!1135 lt!29080))))) (list!727 (right!1633 (right!1633 (c!25296 (_2!1135 lt!29080)))))))))

(declare-fun d!26478 () Bool)

(declare-fun c!25876 () Bool)

(assert (=> d!26478 (= c!25876 ((_ is Empty!540) (right!1633 (c!25296 (_2!1135 lt!29080)))))))

(declare-fun e!59693 () List!1711)

(assert (=> d!26478 (= (list!727 (right!1633 (c!25296 (_2!1135 lt!29080)))) e!59693)))

(declare-fun b!107591 () Bool)

(assert (=> b!107591 (= e!59693 e!59694)))

(declare-fun c!25877 () Bool)

(assert (=> b!107591 (= c!25877 ((_ is Leaf!862) (right!1633 (c!25296 (_2!1135 lt!29080)))))))

(declare-fun b!107592 () Bool)

(assert (=> b!107592 (= e!59694 (list!731 (xs!3131 (right!1633 (c!25296 (_2!1135 lt!29080))))))))

(declare-fun b!107590 () Bool)

(assert (=> b!107590 (= e!59693 Nil!1705)))

(assert (= (and d!26478 c!25876) b!107590))

(assert (= (and d!26478 (not c!25876)) b!107591))

(assert (= (and b!107591 c!25877) b!107592))

(assert (= (and b!107591 (not c!25877)) b!107593))

(declare-fun m!95986 () Bool)

(assert (=> b!107593 m!95986))

(declare-fun m!95988 () Bool)

(assert (=> b!107593 m!95988))

(assert (=> b!107593 m!95986))

(assert (=> b!107593 m!95988))

(declare-fun m!95990 () Bool)

(assert (=> b!107593 m!95990))

(declare-fun m!95992 () Bool)

(assert (=> b!107592 m!95992))

(assert (=> b!105576 d!26478))

(assert (=> b!105727 d!26458))

(assert (=> b!105727 d!26410))

(declare-fun d!26480 () Bool)

(declare-fun e!59696 () Bool)

(assert (=> d!26480 e!59696))

(declare-fun res!51617 () Bool)

(assert (=> d!26480 (=> (not res!51617) (not e!59696))))

(declare-fun lt!30265 () List!1713)

(assert (=> d!26480 (= res!51617 (= (content!145 lt!30265) ((_ map or) (content!145 (t!21402 lt!29249)) (content!145 (++!284 lt!29244 lt!29256)))))))

(declare-fun e!59695 () List!1713)

(assert (=> d!26480 (= lt!30265 e!59695)))

(declare-fun c!25878 () Bool)

(assert (=> d!26480 (= c!25878 ((_ is Nil!1707) (t!21402 lt!29249)))))

(assert (=> d!26480 (= (++!284 (t!21402 lt!29249) (++!284 lt!29244 lt!29256)) lt!30265)))

(declare-fun b!107597 () Bool)

(assert (=> b!107597 (= e!59696 (or (not (= (++!284 lt!29244 lt!29256) Nil!1707)) (= lt!30265 (t!21402 lt!29249))))))

(declare-fun b!107595 () Bool)

(assert (=> b!107595 (= e!59695 (Cons!1707 (h!7104 (t!21402 lt!29249)) (++!284 (t!21402 (t!21402 lt!29249)) (++!284 lt!29244 lt!29256))))))

(declare-fun b!107596 () Bool)

(declare-fun res!51616 () Bool)

(assert (=> b!107596 (=> (not res!51616) (not e!59696))))

(assert (=> b!107596 (= res!51616 (= (size!1521 lt!30265) (+ (size!1521 (t!21402 lt!29249)) (size!1521 (++!284 lt!29244 lt!29256)))))))

(declare-fun b!107594 () Bool)

(assert (=> b!107594 (= e!59695 (++!284 lt!29244 lt!29256))))

(assert (= (and d!26480 c!25878) b!107594))

(assert (= (and d!26480 (not c!25878)) b!107595))

(assert (= (and d!26480 res!51617) b!107596))

(assert (= (and b!107596 res!51616) b!107597))

(declare-fun m!95994 () Bool)

(assert (=> d!26480 m!95994))

(assert (=> d!26480 m!95632))

(assert (=> d!26480 m!91630))

(assert (=> d!26480 m!92618))

(assert (=> b!107595 m!91630))

(declare-fun m!95996 () Bool)

(assert (=> b!107595 m!95996))

(declare-fun m!95998 () Bool)

(assert (=> b!107596 m!95998))

(assert (=> b!107596 m!94268))

(assert (=> b!107596 m!91630))

(assert (=> b!107596 m!92626))

(assert (=> b!105822 d!26480))

(declare-fun d!26482 () Bool)

(declare-fun lt!30266 () Int)

(assert (=> d!26482 (>= lt!30266 0)))

(declare-fun e!59697 () Int)

(assert (=> d!26482 (= lt!30266 e!59697)))

(declare-fun c!25879 () Bool)

(assert (=> d!26482 (= c!25879 ((_ is Nil!1705) (_2!1140 (get!438 lt!29476))))))

(assert (=> d!26482 (= (size!1519 (_2!1140 (get!438 lt!29476))) lt!30266)))

(declare-fun b!107598 () Bool)

(assert (=> b!107598 (= e!59697 0)))

(declare-fun b!107599 () Bool)

(assert (=> b!107599 (= e!59697 (+ 1 (size!1519 (t!21400 (_2!1140 (get!438 lt!29476))))))))

(assert (= (and d!26482 c!25879) b!107598))

(assert (= (and d!26482 (not c!25879)) b!107599))

(declare-fun m!96000 () Bool)

(assert (=> b!107599 m!96000))

(assert (=> b!105696 d!26482))

(assert (=> b!105696 d!26160))

(assert (=> b!105696 d!25418))

(declare-fun d!26484 () Bool)

(declare-fun lt!30267 () Int)

(assert (=> d!26484 (= lt!30267 (size!1521 (list!724 (_1!1135 lt!29332))))))

(assert (=> d!26484 (= lt!30267 (size!1522 (c!25298 (_1!1135 lt!29332))))))

(assert (=> d!26484 (= (size!1514 (_1!1135 lt!29332)) lt!30267)))

(declare-fun bs!10330 () Bool)

(assert (= bs!10330 d!26484))

(assert (=> bs!10330 m!91914))

(assert (=> bs!10330 m!91914))

(declare-fun m!96002 () Bool)

(assert (=> bs!10330 m!96002))

(declare-fun m!96004 () Bool)

(assert (=> bs!10330 m!96004))

(assert (=> d!25326 d!26484))

(assert (=> d!25326 d!25342))

(declare-fun d!26486 () Bool)

(declare-fun res!51618 () Bool)

(declare-fun e!59698 () Bool)

(assert (=> d!26486 (=> (not res!51618) (not e!59698))))

(assert (=> d!26486 (= res!51618 (<= (size!1519 (list!731 (xs!3131 (left!1303 (c!25296 input!576))))) 512))))

(assert (=> d!26486 (= (inv!2085 (left!1303 (c!25296 input!576))) e!59698)))

(declare-fun b!107600 () Bool)

(declare-fun res!51619 () Bool)

(assert (=> b!107600 (=> (not res!51619) (not e!59698))))

(assert (=> b!107600 (= res!51619 (= (csize!1311 (left!1303 (c!25296 input!576))) (size!1519 (list!731 (xs!3131 (left!1303 (c!25296 input!576)))))))))

(declare-fun b!107601 () Bool)

(assert (=> b!107601 (= e!59698 (and (> (csize!1311 (left!1303 (c!25296 input!576))) 0) (<= (csize!1311 (left!1303 (c!25296 input!576))) 512)))))

(assert (= (and d!26486 res!51618) b!107600))

(assert (= (and b!107600 res!51619) b!107601))

(assert (=> d!26486 m!95010))

(assert (=> d!26486 m!95010))

(declare-fun m!96006 () Bool)

(assert (=> d!26486 m!96006))

(assert (=> b!107600 m!95010))

(assert (=> b!107600 m!95010))

(assert (=> b!107600 m!96006))

(assert (=> b!105561 d!26486))

(assert (=> b!105860 d!26154))

(declare-fun b!107602 () Bool)

(declare-fun res!51620 () Bool)

(declare-fun e!59700 () Bool)

(assert (=> b!107602 (=> (not res!51620) (not e!59700))))

(assert (=> b!107602 (= res!51620 (<= (- (height!64 (left!1303 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))) (height!64 (right!1633 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))) 1))))

(declare-fun b!107603 () Bool)

(declare-fun res!51623 () Bool)

(assert (=> b!107603 (=> (not res!51623) (not e!59700))))

(assert (=> b!107603 (= res!51623 (isBalanced!149 (left!1303 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun b!107604 () Bool)

(assert (=> b!107604 (= e!59700 (not (isEmpty!800 (right!1633 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))))

(declare-fun b!107605 () Bool)

(declare-fun e!59699 () Bool)

(assert (=> b!107605 (= e!59699 e!59700)))

(declare-fun res!51621 () Bool)

(assert (=> b!107605 (=> (not res!51621) (not e!59700))))

(assert (=> b!107605 (= res!51621 (<= (- 1) (- (height!64 (left!1303 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))) (height!64 (right!1633 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))))

(declare-fun b!107606 () Bool)

(declare-fun res!51622 () Bool)

(assert (=> b!107606 (=> (not res!51622) (not e!59700))))

(assert (=> b!107606 (= res!51622 (not (isEmpty!800 (left!1303 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))))))))

(declare-fun b!107607 () Bool)

(declare-fun res!51624 () Bool)

(assert (=> b!107607 (=> (not res!51624) (not e!59700))))

(assert (=> b!107607 (= res!51624 (isBalanced!149 (right!1633 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun d!26488 () Bool)

(declare-fun res!51625 () Bool)

(assert (=> d!26488 (=> res!51625 e!59699)))

(assert (=> d!26488 (= res!51625 (not ((_ is Node!540) (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(assert (=> d!26488 (= (isBalanced!149 (++!286 (c!25296 (BalanceConc!1085 Empty!540)) (c!25296 (charsOf!88 (_1!1139 (v!13005 lt!29247)))))) e!59699)))

(assert (= (and d!26488 (not res!51625)) b!107605))

(assert (= (and b!107605 res!51621) b!107602))

(assert (= (and b!107602 res!51620) b!107603))

(assert (= (and b!107603 res!51623) b!107607))

(assert (= (and b!107607 res!51624) b!107606))

(assert (= (and b!107606 res!51622) b!107604))

(declare-fun m!96008 () Bool)

(assert (=> b!107602 m!96008))

(declare-fun m!96010 () Bool)

(assert (=> b!107602 m!96010))

(declare-fun m!96012 () Bool)

(assert (=> b!107607 m!96012))

(declare-fun m!96014 () Bool)

(assert (=> b!107604 m!96014))

(assert (=> b!107605 m!96008))

(assert (=> b!107605 m!96010))

(declare-fun m!96016 () Bool)

(assert (=> b!107606 m!96016))

(declare-fun m!96018 () Bool)

(assert (=> b!107603 m!96018))

(assert (=> b!105770 d!26488))

(assert (=> b!105770 d!26108))

(declare-fun d!26490 () Bool)

(declare-fun choose!1409 (Int) Bool)

(assert (=> d!26490 (= (Forall2!65 lambda!1950) (choose!1409 lambda!1950))))

(declare-fun bs!10331 () Bool)

(assert (= bs!10331 d!26490))

(declare-fun m!96020 () Bool)

(assert (=> bs!10331 m!96020))

(assert (=> d!25382 d!26490))

(declare-fun d!26492 () Bool)

(declare-fun e!59701 () Bool)

(assert (=> d!26492 e!59701))

(declare-fun res!51626 () Bool)

(assert (=> d!26492 (=> (not res!51626) (not e!59701))))

(assert (=> d!26492 (= res!51626 (isBalanced!151 (prepend!143 (c!25298 (_1!1135 lt!29569)) (_1!1139 (v!13005 lt!29571)))))))

(declare-fun lt!30268 () BalanceConc!1086)

(assert (=> d!26492 (= lt!30268 (BalanceConc!1087 (prepend!143 (c!25298 (_1!1135 lt!29569)) (_1!1139 (v!13005 lt!29571)))))))

(assert (=> d!26492 (= (prepend!141 (_1!1135 lt!29569) (_1!1139 (v!13005 lt!29571))) lt!30268)))

(declare-fun b!107608 () Bool)

(assert (=> b!107608 (= e!59701 (= (list!724 lt!30268) (Cons!1707 (_1!1139 (v!13005 lt!29571)) (list!724 (_1!1135 lt!29569)))))))

(assert (= (and d!26492 res!51626) b!107608))

(declare-fun m!96022 () Bool)

(assert (=> d!26492 m!96022))

(assert (=> d!26492 m!96022))

(declare-fun m!96024 () Bool)

(assert (=> d!26492 m!96024))

(declare-fun m!96026 () Bool)

(assert (=> b!107608 m!96026))

(declare-fun m!96028 () Bool)

(assert (=> b!107608 m!96028))

(assert (=> b!105880 d!26492))

(declare-fun b!107609 () Bool)

(declare-fun e!59703 () tuple2!1856)

(declare-fun lt!30269 () tuple2!1856)

(declare-fun lt!30271 () Option!197)

(assert (=> b!107609 (= e!59703 (tuple2!1857 (prepend!141 (_1!1135 lt!30269) (_1!1139 (v!13005 lt!30271))) (_2!1135 lt!30269)))))

(assert (=> b!107609 (= lt!30269 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!30271))))))

(declare-fun e!59704 () Bool)

(declare-fun lt!30270 () tuple2!1856)

(declare-fun b!107610 () Bool)

(assert (=> b!107610 (= e!59704 (= (list!723 (_2!1135 lt!30270)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29571)))))))))

(declare-fun b!107611 () Bool)

(declare-fun e!59705 () Bool)

(assert (=> b!107611 (= e!59705 (not (isEmpty!794 (_1!1135 lt!30270))))))

(declare-fun b!107612 () Bool)

(assert (=> b!107612 (= e!59703 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29571))))))

(declare-fun b!107614 () Bool)

(declare-fun e!59702 () Bool)

(assert (=> b!107614 (= e!59702 e!59705)))

(declare-fun res!51627 () Bool)

(assert (=> b!107614 (= res!51627 (< (size!1513 (_2!1135 lt!30270)) (size!1513 (_2!1139 (v!13005 lt!29571)))))))

(assert (=> b!107614 (=> (not res!51627) (not e!59705))))

(declare-fun b!107615 () Bool)

(declare-fun res!51629 () Bool)

(assert (=> b!107615 (=> (not res!51629) (not e!59704))))

(assert (=> b!107615 (= res!51629 (= (list!724 (_1!1135 lt!30270)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29571)))))))))

(declare-fun b!107613 () Bool)

(assert (=> b!107613 (= e!59702 (= (list!723 (_2!1135 lt!30270)) (list!723 (_2!1139 (v!13005 lt!29571)))))))

(declare-fun d!26494 () Bool)

(assert (=> d!26494 e!59704))

(declare-fun res!51628 () Bool)

(assert (=> d!26494 (=> (not res!51628) (not e!59704))))

(assert (=> d!26494 (= res!51628 e!59702)))

(declare-fun c!25881 () Bool)

(assert (=> d!26494 (= c!25881 (> (size!1514 (_1!1135 lt!30270)) 0))))

(assert (=> d!26494 (= lt!30270 e!59703)))

(declare-fun c!25880 () Bool)

(assert (=> d!26494 (= c!25880 ((_ is Some!196) lt!30271))))

(assert (=> d!26494 (= lt!30271 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29571))))))

(assert (=> d!26494 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29571))) lt!30270)))

(assert (= (and d!26494 c!25880) b!107609))

(assert (= (and d!26494 (not c!25880)) b!107612))

(assert (= (and d!26494 c!25881) b!107614))

(assert (= (and d!26494 (not c!25881)) b!107613))

(assert (= (and b!107614 res!51627) b!107611))

(assert (= (and d!26494 res!51628) b!107615))

(assert (= (and b!107615 res!51629) b!107610))

(declare-fun m!96030 () Bool)

(assert (=> b!107609 m!96030))

(declare-fun m!96032 () Bool)

(assert (=> b!107609 m!96032))

(declare-fun m!96034 () Bool)

(assert (=> b!107615 m!96034))

(declare-fun m!96036 () Bool)

(assert (=> b!107615 m!96036))

(assert (=> b!107615 m!96036))

(declare-fun m!96038 () Bool)

(assert (=> b!107615 m!96038))

(declare-fun m!96040 () Bool)

(assert (=> b!107614 m!96040))

(declare-fun m!96042 () Bool)

(assert (=> b!107614 m!96042))

(declare-fun m!96044 () Bool)

(assert (=> b!107610 m!96044))

(assert (=> b!107610 m!96036))

(assert (=> b!107610 m!96036))

(assert (=> b!107610 m!96038))

(declare-fun m!96046 () Bool)

(assert (=> d!26494 m!96046))

(declare-fun m!96048 () Bool)

(assert (=> d!26494 m!96048))

(declare-fun m!96050 () Bool)

(assert (=> b!107611 m!96050))

(assert (=> b!107613 m!96044))

(assert (=> b!107613 m!96036))

(assert (=> b!105880 d!26494))

(declare-fun b!107618 () Bool)

(declare-fun e!59707 () List!1713)

(assert (=> b!107618 (= e!59707 (list!732 (xs!3132 (c!25298 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun b!107617 () Bool)

(declare-fun e!59706 () List!1713)

(assert (=> b!107617 (= e!59706 e!59707)))

(declare-fun c!25883 () Bool)

(assert (=> b!107617 (= c!25883 ((_ is Leaf!863) (c!25298 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))))))))

(declare-fun b!107616 () Bool)

(assert (=> b!107616 (= e!59706 Nil!1707)))

(declare-fun b!107619 () Bool)

(assert (=> b!107619 (= e!59707 (++!284 (list!728 (left!1304 (c!25298 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247)))))) (list!728 (right!1634 (c!25298 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun d!26496 () Bool)

(declare-fun c!25882 () Bool)

(assert (=> d!26496 (= c!25882 ((_ is Empty!541) (c!25298 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))))))))

(assert (=> d!26496 (= (list!728 (c!25298 (append!61 (BalanceConc!1087 Empty!541) (_1!1139 (v!13005 lt!29247))))) e!59706)))

(assert (= (and d!26496 c!25882) b!107616))

(assert (= (and d!26496 (not c!25882)) b!107617))

(assert (= (and b!107617 c!25883) b!107618))

(assert (= (and b!107617 (not c!25883)) b!107619))

(declare-fun m!96052 () Bool)

(assert (=> b!107618 m!96052))

(declare-fun m!96054 () Bool)

(assert (=> b!107619 m!96054))

(declare-fun m!96056 () Bool)

(assert (=> b!107619 m!96056))

(assert (=> b!107619 m!96054))

(assert (=> b!107619 m!96056))

(declare-fun m!96058 () Bool)

(assert (=> b!107619 m!96058))

(assert (=> d!25526 d!26496))

(declare-fun d!26498 () Bool)

(declare-fun e!59709 () Bool)

(assert (=> d!26498 e!59709))

(declare-fun res!51631 () Bool)

(assert (=> d!26498 (=> (not res!51631) (not e!59709))))

(declare-fun lt!30272 () List!1713)

(assert (=> d!26498 (= res!51631 (= (content!145 lt!30272) ((_ map or) (content!145 (t!21402 lt!29244)) (content!145 lt!29256))))))

(declare-fun e!59708 () List!1713)

(assert (=> d!26498 (= lt!30272 e!59708)))

(declare-fun c!25884 () Bool)

(assert (=> d!26498 (= c!25884 ((_ is Nil!1707) (t!21402 lt!29244)))))

(assert (=> d!26498 (= (++!284 (t!21402 lt!29244) lt!29256) lt!30272)))

(declare-fun b!107623 () Bool)

(assert (=> b!107623 (= e!59709 (or (not (= lt!29256 Nil!1707)) (= lt!30272 (t!21402 lt!29244))))))

(declare-fun b!107621 () Bool)

(assert (=> b!107621 (= e!59708 (Cons!1707 (h!7104 (t!21402 lt!29244)) (++!284 (t!21402 (t!21402 lt!29244)) lt!29256)))))

(declare-fun b!107622 () Bool)

(declare-fun res!51630 () Bool)

(assert (=> b!107622 (=> (not res!51630) (not e!59709))))

(assert (=> b!107622 (= res!51630 (= (size!1521 lt!30272) (+ (size!1521 (t!21402 lt!29244)) (size!1521 lt!29256))))))

(declare-fun b!107620 () Bool)

(assert (=> b!107620 (= e!59708 lt!29256)))

(assert (= (and d!26498 c!25884) b!107620))

(assert (= (and d!26498 (not c!25884)) b!107621))

(assert (= (and d!26498 res!51631) b!107622))

(assert (= (and b!107622 res!51630) b!107623))

(declare-fun m!96060 () Bool)

(assert (=> d!26498 m!96060))

(assert (=> d!26498 m!95564))

(assert (=> d!26498 m!92542))

(declare-fun m!96062 () Bool)

(assert (=> b!107621 m!96062))

(declare-fun m!96064 () Bool)

(assert (=> b!107622 m!96064))

(assert (=> b!107622 m!94270))

(assert (=> b!107622 m!92550))

(assert (=> b!105793 d!26498))

(declare-fun d!26500 () Bool)

(declare-fun lt!30273 () Bool)

(assert (=> d!26500 (= lt!30273 (isEmpty!797 (list!724 (_1!1135 lt!29548))))))

(assert (=> d!26500 (= lt!30273 (isEmpty!798 (c!25298 (_1!1135 lt!29548))))))

(assert (=> d!26500 (= (isEmpty!794 (_1!1135 lt!29548)) lt!30273)))

(declare-fun bs!10332 () Bool)

(assert (= bs!10332 d!26500))

(assert (=> bs!10332 m!92680))

(assert (=> bs!10332 m!92680))

(declare-fun m!96066 () Bool)

(assert (=> bs!10332 m!96066))

(declare-fun m!96068 () Bool)

(assert (=> bs!10332 m!96068))

(assert (=> b!105847 d!26500))

(declare-fun b!107627 () Bool)

(declare-fun e!59711 () List!1711)

(assert (=> b!107627 (= e!59711 (++!283 (list!727 (left!1303 (c!25296 (_2!1139 (v!13005 lt!29247))))) (list!727 (right!1633 (c!25296 (_2!1139 (v!13005 lt!29247)))))))))

(declare-fun d!26502 () Bool)

(declare-fun c!25885 () Bool)

(assert (=> d!26502 (= c!25885 ((_ is Empty!540) (c!25296 (_2!1139 (v!13005 lt!29247)))))))

(declare-fun e!59710 () List!1711)

(assert (=> d!26502 (= (list!727 (c!25296 (_2!1139 (v!13005 lt!29247)))) e!59710)))

(declare-fun b!107625 () Bool)

(assert (=> b!107625 (= e!59710 e!59711)))

(declare-fun c!25886 () Bool)

(assert (=> b!107625 (= c!25886 ((_ is Leaf!862) (c!25296 (_2!1139 (v!13005 lt!29247)))))))

(declare-fun b!107626 () Bool)

(assert (=> b!107626 (= e!59711 (list!731 (xs!3131 (c!25296 (_2!1139 (v!13005 lt!29247))))))))

(declare-fun b!107624 () Bool)

(assert (=> b!107624 (= e!59710 Nil!1705)))

(assert (= (and d!26502 c!25885) b!107624))

(assert (= (and d!26502 (not c!25885)) b!107625))

(assert (= (and b!107625 c!25886) b!107626))

(assert (= (and b!107625 (not c!25886)) b!107627))

(declare-fun m!96070 () Bool)

(assert (=> b!107627 m!96070))

(declare-fun m!96072 () Bool)

(assert (=> b!107627 m!96072))

(assert (=> b!107627 m!96070))

(assert (=> b!107627 m!96072))

(declare-fun m!96074 () Bool)

(assert (=> b!107627 m!96074))

(declare-fun m!96076 () Bool)

(assert (=> b!107626 m!96076))

(assert (=> d!25500 d!26502))

(declare-fun d!26504 () Bool)

(assert (=> d!26504 (= (list!724 lt!29492) (list!728 (c!25298 lt!29492)))))

(declare-fun bs!10333 () Bool)

(assert (= bs!10333 d!26504))

(declare-fun m!96078 () Bool)

(assert (=> bs!10333 m!96078))

(assert (=> b!105776 d!26504))

(declare-fun d!26506 () Bool)

(declare-fun e!59720 () Bool)

(assert (=> d!26506 e!59720))

(declare-fun res!51643 () Bool)

(assert (=> d!26506 (=> (not res!51643) (not e!59720))))

(declare-fun lt!30276 () List!1713)

(assert (=> d!26506 (= res!51643 ((_ is Cons!1707) lt!30276))))

(declare-fun e!59719 () List!1713)

(assert (=> d!26506 (= lt!30276 e!59719)))

(declare-fun c!25891 () Bool)

(assert (=> d!26506 (= c!25891 ((_ is Nil!1707) (list!724 (BalanceConc!1087 Empty!541))))))

(assert (=> d!26506 (= ($colon+!10 (list!724 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247))) lt!30276)))

(declare-fun b!107644 () Bool)

(declare-fun e!59718 () Bool)

(declare-fun call!4730 () (_ BitVec 32))

(declare-fun call!4731 () (_ BitVec 32))

(assert (=> b!107644 (= e!59718 (= call!4730 (bvadd call!4731 #b00000000000000000000000000000001)))))

(declare-fun b!107645 () Bool)

(assert (=> b!107645 (= e!59720 (= lt!30276 (++!284 (list!724 (BalanceConc!1087 Empty!541)) (Cons!1707 (_1!1139 (v!13005 lt!29247)) Nil!1707))))))

(declare-fun b!107646 () Bool)

(declare-fun res!51640 () Bool)

(assert (=> b!107646 (=> (not res!51640) (not e!59720))))

(assert (=> b!107646 (= res!51640 e!59718)))

(declare-fun c!25892 () Bool)

(declare-fun isize!7 (List!1713) (_ BitVec 32))

(assert (=> b!107646 (= c!25892 (bvslt (isize!7 (list!724 (BalanceConc!1087 Empty!541))) #b01111111111111111111111111111111))))

(declare-fun b!107647 () Bool)

(assert (=> b!107647 (= e!59718 (= call!4730 call!4731))))

(declare-fun b!107648 () Bool)

(assert (=> b!107648 (= e!59719 (Cons!1707 (h!7104 (list!724 (BalanceConc!1087 Empty!541))) ($colon+!10 (t!21402 (list!724 (BalanceConc!1087 Empty!541))) (_1!1139 (v!13005 lt!29247)))))))

(declare-fun b!107649 () Bool)

(assert (=> b!107649 (= e!59719 (Cons!1707 (_1!1139 (v!13005 lt!29247)) (list!724 (BalanceConc!1087 Empty!541))))))

(declare-fun b!107650 () Bool)

(declare-fun res!51642 () Bool)

(assert (=> b!107650 (=> (not res!51642) (not e!59720))))

(assert (=> b!107650 (= res!51642 (= (content!145 lt!30276) ((_ map or) (content!145 (list!724 (BalanceConc!1087 Empty!541))) (store ((as const (Array Token!490 Bool)) false) (_1!1139 (v!13005 lt!29247)) true))))))

(declare-fun bm!4725 () Bool)

(assert (=> bm!4725 (= call!4731 (isize!7 (list!724 (BalanceConc!1087 Empty!541))))))

(declare-fun bm!4726 () Bool)

(assert (=> bm!4726 (= call!4730 (isize!7 lt!30276))))

(declare-fun b!107651 () Bool)

(declare-fun res!51641 () Bool)

(assert (=> b!107651 (=> (not res!51641) (not e!59720))))

(assert (=> b!107651 (= res!51641 (= (size!1521 lt!30276) (+ (size!1521 (list!724 (BalanceConc!1087 Empty!541))) 1)))))

(assert (= (and d!26506 c!25891) b!107649))

(assert (= (and d!26506 (not c!25891)) b!107648))

(assert (= (and d!26506 res!51643) b!107651))

(assert (= (and b!107651 res!51641) b!107646))

(assert (= (and b!107646 c!25892) b!107644))

(assert (= (and b!107646 (not c!25892)) b!107647))

(assert (= (or b!107644 b!107647) bm!4726))

(assert (= (or b!107644 b!107647) bm!4725))

(assert (= (and b!107646 res!51640) b!107650))

(assert (= (and b!107650 res!51642) b!107645))

(declare-fun m!96080 () Bool)

(assert (=> bm!4726 m!96080))

(declare-fun m!96082 () Bool)

(assert (=> b!107648 m!96082))

(assert (=> b!107645 m!91680))

(declare-fun m!96084 () Bool)

(assert (=> b!107645 m!96084))

(assert (=> b!107646 m!91680))

(declare-fun m!96086 () Bool)

(assert (=> b!107646 m!96086))

(assert (=> bm!4725 m!91680))

(assert (=> bm!4725 m!96086))

(declare-fun m!96088 () Bool)

(assert (=> b!107651 m!96088))

(assert (=> b!107651 m!91680))

(declare-fun m!96090 () Bool)

(assert (=> b!107651 m!96090))

(declare-fun m!96092 () Bool)

(assert (=> b!107650 m!96092))

(assert (=> b!107650 m!91680))

(declare-fun m!96094 () Bool)

(assert (=> b!107650 m!96094))

(declare-fun m!96096 () Bool)

(assert (=> b!107650 m!96096))

(assert (=> b!105776 d!26506))

(assert (=> b!105776 d!25512))

(declare-fun d!26508 () Bool)

(assert (=> d!26508 (= (list!724 (_1!1135 lt!29560)) (list!728 (c!25298 (_1!1135 lt!29560))))))

(declare-fun bs!10334 () Bool)

(assert (= bs!10334 d!26508))

(declare-fun m!96098 () Bool)

(assert (=> bs!10334 m!96098))

(assert (=> b!105874 d!26508))

(assert (=> b!105874 d!26472))

(assert (=> b!105874 d!26232))

(declare-fun b!107652 () Bool)

(declare-fun e!59721 () Bool)

(declare-fun e!59722 () Bool)

(assert (=> b!107652 (= e!59721 e!59722)))

(declare-fun res!51644 () Bool)

(assert (=> b!107652 (=> (not res!51644) (not e!59722))))

(assert (=> b!107652 (= res!51644 (<= (- 1) (- (height!66 (left!1304 (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247))))) (height!66 (right!1634 (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247))))))))))

(declare-fun b!107653 () Bool)

(assert (=> b!107653 (= e!59722 (not (isEmpty!798 (right!1634 (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun b!107654 () Bool)

(declare-fun res!51649 () Bool)

(assert (=> b!107654 (=> (not res!51649) (not e!59722))))

(assert (=> b!107654 (= res!51649 (isBalanced!151 (right!1634 (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247))))))))

(declare-fun b!107655 () Bool)

(declare-fun res!51648 () Bool)

(assert (=> b!107655 (=> (not res!51648) (not e!59722))))

(assert (=> b!107655 (= res!51648 (isBalanced!151 (left!1304 (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247))))))))

(declare-fun d!26510 () Bool)

(declare-fun res!51647 () Bool)

(assert (=> d!26510 (=> res!51647 e!59721)))

(assert (=> d!26510 (= res!51647 (not ((_ is Node!541) (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247))))))))

(assert (=> d!26510 (= (isBalanced!151 (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247)))) e!59721)))

(declare-fun b!107656 () Bool)

(declare-fun res!51645 () Bool)

(assert (=> b!107656 (=> (not res!51645) (not e!59722))))

(assert (=> b!107656 (= res!51645 (not (isEmpty!798 (left!1304 (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247)))))))))

(declare-fun b!107657 () Bool)

(declare-fun res!51646 () Bool)

(assert (=> b!107657 (=> (not res!51646) (not e!59722))))

(assert (=> b!107657 (= res!51646 (<= (- (height!66 (left!1304 (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247))))) (height!66 (right!1634 (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247)))))) 1))))

(assert (= (and d!26510 (not res!51647)) b!107652))

(assert (= (and b!107652 res!51644) b!107657))

(assert (= (and b!107657 res!51646) b!107655))

(assert (= (and b!107655 res!51648) b!107654))

(assert (= (and b!107654 res!51649) b!107656))

(assert (= (and b!107656 res!51645) b!107653))

(declare-fun m!96100 () Bool)

(assert (=> b!107654 m!96100))

(declare-fun m!96102 () Bool)

(assert (=> b!107657 m!96102))

(declare-fun m!96104 () Bool)

(assert (=> b!107657 m!96104))

(assert (=> b!107652 m!96102))

(assert (=> b!107652 m!96104))

(declare-fun m!96106 () Bool)

(assert (=> b!107653 m!96106))

(declare-fun m!96108 () Bool)

(assert (=> b!107655 m!96108))

(declare-fun m!96110 () Bool)

(assert (=> b!107656 m!96110))

(assert (=> d!25484 d!26510))

(declare-fun bm!4747 () Bool)

(declare-fun call!4756 () IArray!1083)

(assert (=> bm!4747 (= call!4756 (fill!33 1 (_1!1139 (v!13005 lt!29247))))))

(declare-fun bm!4748 () Bool)

(declare-fun c!25906 () Bool)

(declare-fun c!25905 () Bool)

(assert (=> bm!4748 (= c!25906 c!25905)))

(declare-fun call!4757 () Conc!541)

(declare-fun e!59735 () Conc!541)

(declare-fun <>!15 (Conc!541 Conc!541) Conc!541)

(assert (=> bm!4748 (= call!4757 (<>!15 (ite c!25905 (left!1304 (c!25298 (BalanceConc!1087 Empty!541))) (c!25298 (BalanceConc!1087 Empty!541))) e!59735))))

(declare-fun bm!4749 () Bool)

(declare-fun call!4759 () List!1713)

(declare-fun c!25907 () Bool)

(declare-fun lt!30317 () Conc!541)

(assert (=> bm!4749 (= call!4759 (list!728 (ite c!25907 (right!1634 (c!25298 (BalanceConc!1087 Empty!541))) (left!1304 lt!30317))))))

(declare-fun bm!4750 () Bool)

(declare-fun call!4752 () Unit!1124)

(declare-fun lt!30323 () List!1713)

(declare-fun lt!30326 () List!1713)

(declare-fun lt!30321 () List!1713)

(declare-fun lt!30316 () List!1713)

(declare-fun lt!30324 () List!1713)

(declare-fun lt!30320 () List!1713)

(declare-fun lemmaConcatAssociativity!107 (List!1713 List!1713 List!1713) Unit!1124)

(assert (=> bm!4750 (= call!4752 (lemmaConcatAssociativity!107 (ite c!25907 lt!30321 lt!30323) (ite c!25907 lt!30316 lt!30326) (ite c!25907 lt!30320 lt!30324)))))

(declare-fun b!107684 () Bool)

(declare-fun res!51658 () Bool)

(declare-fun e!59740 () Bool)

(assert (=> b!107684 (=> (not res!51658) (not e!59740))))

(declare-fun lt!30327 () Conc!541)

(assert (=> b!107684 (= res!51658 (<= (height!66 (c!25298 (BalanceConc!1087 Empty!541))) (height!66 lt!30327)))))

(declare-fun lt!30315 () List!1713)

(declare-fun lt!30325 () List!1713)

(declare-fun call!4761 () List!1713)

(declare-fun bm!4751 () Bool)

(assert (=> bm!4751 (= call!4761 (++!284 (ite c!25907 lt!30316 lt!30325) (ite c!25907 lt!30320 lt!30315)))))

(declare-fun bm!4752 () Bool)

(declare-fun call!4754 () List!1713)

(assert (=> bm!4752 (= call!4754 (list!728 (left!1304 (c!25298 (BalanceConc!1087 Empty!541)))))))

(declare-fun d!26512 () Bool)

(assert (=> d!26512 e!59740))

(declare-fun res!51657 () Bool)

(assert (=> d!26512 (=> (not res!51657) (not e!59740))))

(assert (=> d!26512 (= res!51657 (isBalanced!151 lt!30327))))

(declare-fun e!59738 () Conc!541)

(assert (=> d!26512 (= lt!30327 e!59738)))

(declare-fun c!25903 () Bool)

(assert (=> d!26512 (= c!25903 ((_ is Empty!541) (c!25298 (BalanceConc!1087 Empty!541))))))

(assert (=> d!26512 (isBalanced!151 (c!25298 (BalanceConc!1087 Empty!541)))))

(assert (=> d!26512 (= (append!63 (c!25298 (BalanceConc!1087 Empty!541)) (_1!1139 (v!13005 lt!29247))) lt!30327)))

(declare-fun b!107685 () Bool)

(declare-fun res!51656 () Bool)

(assert (=> b!107685 (=> (not res!51656) (not e!59740))))

(assert (=> b!107685 (= res!51656 (<= (height!66 lt!30327) (+ (height!66 (c!25298 (BalanceConc!1087 Empty!541))) 1)))))

(declare-fun b!107686 () Bool)

(declare-fun e!59737 () Conc!541)

(declare-fun call!4755 () Conc!541)

(assert (=> b!107686 (= e!59737 (<>!15 call!4755 (right!1634 lt!30317)))))

(assert (=> b!107686 (= lt!30325 call!4754)))

(assert (=> b!107686 (= lt!30315 call!4759)))

(declare-fun lt!30313 () List!1713)

(assert (=> b!107686 (= lt!30313 (list!728 (right!1634 lt!30317)))))

(declare-fun lt!30318 () Unit!1124)

(assert (=> b!107686 (= lt!30318 (lemmaConcatAssociativity!107 lt!30325 lt!30315 lt!30313))))

(declare-fun call!4758 () List!1713)

(assert (=> b!107686 (= (++!284 call!4761 lt!30313) (++!284 lt!30325 call!4758))))

(declare-fun lt!30314 () Unit!1124)

(assert (=> b!107686 (= lt!30314 lt!30318)))

(assert (=> b!107686 (= lt!30323 call!4754)))

(assert (=> b!107686 (= lt!30326 (list!728 (right!1634 (c!25298 (BalanceConc!1087 Empty!541)))))))

(assert (=> b!107686 (= lt!30324 (Cons!1707 (_1!1139 (v!13005 lt!29247)) Nil!1707))))

(declare-fun lt!30322 () Unit!1124)

(assert (=> b!107686 (= lt!30322 call!4752)))

(declare-fun call!4753 () List!1713)

(declare-fun call!4760 () List!1713)

(assert (=> b!107686 (= (++!284 call!4760 lt!30324) (++!284 lt!30323 call!4753))))

(declare-fun lt!30328 () Unit!1124)

(assert (=> b!107686 (= lt!30328 lt!30322)))

(declare-fun bm!4753 () Bool)

(assert (=> bm!4753 (= call!4755 call!4757)))

(declare-fun b!107687 () Bool)

(declare-fun e!59736 () Conc!541)

(declare-fun append!65 (IArray!1083 Token!490) IArray!1083)

(assert (=> b!107687 (= e!59736 (Leaf!863 (append!65 (xs!3132 (c!25298 (BalanceConc!1087 Empty!541))) (_1!1139 (v!13005 lt!29247))) (+ (csize!1313 (c!25298 (BalanceConc!1087 Empty!541))) 1)))))

(declare-fun lt!30319 () List!1713)

(assert (=> b!107687 (= lt!30319 ($colon+!10 (list!732 (xs!3132 (c!25298 (BalanceConc!1087 Empty!541)))) (_1!1139 (v!13005 lt!29247))))))

(declare-fun b!107688 () Bool)

(assert (=> b!107688 (= c!25907 (<= (height!66 lt!30317) (+ (height!66 (left!1304 (c!25298 (BalanceConc!1087 Empty!541)))) 1)))))

(assert (=> b!107688 (= lt!30317 (append!63 (right!1634 (c!25298 (BalanceConc!1087 Empty!541))) (_1!1139 (v!13005 lt!29247))))))

(declare-fun e!59739 () Conc!541)

(assert (=> b!107688 (= e!59739 e!59737)))

(declare-fun b!107689 () Bool)

(assert (=> b!107689 (= e!59738 (Leaf!863 call!4756 1))))

(declare-fun b!107690 () Bool)

(assert (=> b!107690 (= e!59737 call!4755)))

(assert (=> b!107690 (= lt!30321 call!4754)))

(assert (=> b!107690 (= lt!30316 call!4759)))

(assert (=> b!107690 (= lt!30320 (Cons!1707 (_1!1139 (v!13005 lt!29247)) Nil!1707))))

(declare-fun lt!30330 () Unit!1124)

(assert (=> b!107690 (= lt!30330 call!4752)))

(assert (=> b!107690 (= call!4758 call!4753)))

(declare-fun lt!30329 () Unit!1124)

(assert (=> b!107690 (= lt!30329 lt!30330)))

(declare-fun bm!4754 () Bool)

(assert (=> bm!4754 (= call!4753 (++!284 (ite c!25907 lt!30321 lt!30326) (ite c!25907 call!4761 lt!30324)))))

(declare-fun b!107691 () Bool)

(assert (=> b!107691 (= e!59735 (Leaf!863 call!4756 1))))

(declare-fun bm!4755 () Bool)

(assert (=> bm!4755 (= call!4760 (++!284 (ite c!25907 lt!30321 lt!30323) (ite c!25907 lt!30316 lt!30326)))))

(declare-fun bm!4756 () Bool)

(assert (=> bm!4756 (= call!4758 (++!284 (ite c!25907 call!4760 lt!30315) (ite c!25907 lt!30320 lt!30313)))))

(declare-fun b!107692 () Bool)

(declare-fun c!25904 () Bool)

(assert (=> b!107692 (= c!25904 (< (csize!1313 (c!25298 (BalanceConc!1087 Empty!541))) 512))))

(assert (=> b!107692 (= e!59739 e!59736)))

(declare-fun b!107693 () Bool)

(assert (=> b!107693 (= e!59740 (= (list!728 lt!30327) ($colon+!10 (list!728 (c!25298 (BalanceConc!1087 Empty!541))) (_1!1139 (v!13005 lt!29247)))))))

(declare-fun b!107694 () Bool)

(assert (=> b!107694 (= e!59735 (ite c!25907 lt!30317 (left!1304 lt!30317)))))

(declare-fun b!107695 () Bool)

(assert (=> b!107695 (= e!59738 e!59739)))

(assert (=> b!107695 (= c!25905 ((_ is Node!541) (c!25298 (BalanceConc!1087 Empty!541))))))

(declare-fun b!107696 () Bool)

(assert (=> b!107696 (= e!59736 call!4757)))

(assert (= (and d!26512 c!25903) b!107689))

(assert (= (and d!26512 (not c!25903)) b!107695))

(assert (= (and b!107695 c!25905) b!107688))

(assert (= (and b!107695 (not c!25905)) b!107692))

(assert (= (and b!107688 c!25907) b!107690))

(assert (= (and b!107688 (not c!25907)) b!107686))

(assert (= (or b!107690 b!107686) bm!4750))

(assert (= (or b!107690 b!107686) bm!4749))

(assert (= (or b!107690 b!107686) bm!4755))

(assert (= (or b!107690 b!107686) bm!4751))

(assert (= (or b!107690 b!107686) bm!4753))

(assert (= (or b!107690 b!107686) bm!4752))

(assert (= (or b!107690 b!107686) bm!4756))

(assert (= (or b!107690 b!107686) bm!4754))

(assert (= (and b!107692 c!25904) b!107687))

(assert (= (and b!107692 (not c!25904)) b!107696))

(assert (= (or bm!4753 b!107696) bm!4748))

(assert (= (and bm!4748 c!25906) b!107694))

(assert (= (and bm!4748 (not c!25906)) b!107691))

(assert (= (or b!107689 b!107691) bm!4747))

(assert (= (and d!26512 res!51657) b!107684))

(assert (= (and b!107684 res!51658) b!107685))

(assert (= (and b!107685 res!51656) b!107693))

(declare-fun m!96112 () Bool)

(assert (=> bm!4751 m!96112))

(declare-fun m!96114 () Bool)

(assert (=> d!26512 m!96114))

(declare-fun m!96116 () Bool)

(assert (=> d!26512 m!96116))

(declare-fun m!96118 () Bool)

(assert (=> b!107687 m!96118))

(assert (=> b!107687 m!95550))

(assert (=> b!107687 m!95550))

(declare-fun m!96120 () Bool)

(assert (=> b!107687 m!96120))

(declare-fun m!96122 () Bool)

(assert (=> bm!4747 m!96122))

(declare-fun m!96124 () Bool)

(assert (=> b!107688 m!96124))

(declare-fun m!96126 () Bool)

(assert (=> b!107688 m!96126))

(declare-fun m!96128 () Bool)

(assert (=> b!107688 m!96128))

(declare-fun m!96130 () Bool)

(assert (=> bm!4755 m!96130))

(declare-fun m!96132 () Bool)

(assert (=> bm!4750 m!96132))

(declare-fun m!96134 () Bool)

(assert (=> bm!4756 m!96134))

(declare-fun m!96136 () Bool)

(assert (=> b!107693 m!96136))

(assert (=> b!107693 m!92628))

(assert (=> b!107693 m!92628))

(declare-fun m!96138 () Bool)

(assert (=> b!107693 m!96138))

(assert (=> bm!4752 m!95552))

(declare-fun m!96140 () Bool)

(assert (=> b!107685 m!96140))

(declare-fun m!96142 () Bool)

(assert (=> b!107685 m!96142))

(declare-fun m!96144 () Bool)

(assert (=> bm!4749 m!96144))

(declare-fun m!96146 () Bool)

(assert (=> bm!4748 m!96146))

(assert (=> b!107684 m!96142))

(assert (=> b!107684 m!96140))

(declare-fun m!96148 () Bool)

(assert (=> b!107686 m!96148))

(declare-fun m!96150 () Bool)

(assert (=> b!107686 m!96150))

(declare-fun m!96152 () Bool)

(assert (=> b!107686 m!96152))

(declare-fun m!96154 () Bool)

(assert (=> b!107686 m!96154))

(declare-fun m!96156 () Bool)

(assert (=> b!107686 m!96156))

(assert (=> b!107686 m!95554))

(declare-fun m!96158 () Bool)

(assert (=> b!107686 m!96158))

(declare-fun m!96160 () Bool)

(assert (=> b!107686 m!96160))

(declare-fun m!96162 () Bool)

(assert (=> bm!4754 m!96162))

(assert (=> d!25484 d!26512))

(declare-fun d!26514 () Bool)

(assert (=> d!26514 (= (isDefined!72 lt!29476) (not (isEmpty!801 lt!29476)))))

(declare-fun bs!10335 () Bool)

(assert (= bs!10335 d!26514))

(assert (=> bs!10335 m!92374))

(assert (=> b!105701 d!26514))

(declare-fun d!26516 () Bool)

(declare-fun lt!30331 () Bool)

(assert (=> d!26516 (= lt!30331 (isEmpty!797 (list!724 (_1!1135 lt!29560))))))

(assert (=> d!26516 (= lt!30331 (isEmpty!798 (c!25298 (_1!1135 lt!29560))))))

(assert (=> d!26516 (= (isEmpty!794 (_1!1135 lt!29560)) lt!30331)))

(declare-fun bs!10336 () Bool)

(assert (= bs!10336 d!26516))

(assert (=> bs!10336 m!92748))

(assert (=> bs!10336 m!92748))

(declare-fun m!96164 () Bool)

(assert (=> bs!10336 m!96164))

(declare-fun m!96166 () Bool)

(assert (=> bs!10336 m!96166))

(assert (=> b!105870 d!26516))

(declare-fun d!26518 () Bool)

(declare-fun lt!30332 () Bool)

(assert (=> d!26518 (= lt!30332 (isEmpty!807 (list!727 (right!1633 (c!25296 input!576)))))))

(assert (=> d!26518 (= lt!30332 (= (size!1520 (right!1633 (c!25296 input!576))) 0))))

(assert (=> d!26518 (= (isEmpty!800 (right!1633 (c!25296 input!576))) lt!30332)))

(declare-fun bs!10337 () Bool)

(assert (= bs!10337 d!26518))

(assert (=> bs!10337 m!92444))

(assert (=> bs!10337 m!92444))

(declare-fun m!96168 () Bool)

(assert (=> bs!10337 m!96168))

(assert (=> bs!10337 m!92810))

(assert (=> b!105517 d!26518))

(declare-fun d!26520 () Bool)

(declare-fun c!25908 () Bool)

(assert (=> d!26520 (= c!25908 ((_ is Nil!1707) lt!29535))))

(declare-fun e!59741 () (InoxSet Token!490))

(assert (=> d!26520 (= (content!145 lt!29535) e!59741)))

(declare-fun b!107697 () Bool)

(assert (=> b!107697 (= e!59741 ((as const (Array Token!490 Bool)) false))))

(declare-fun b!107698 () Bool)

(assert (=> b!107698 (= e!59741 ((_ map or) (store ((as const (Array Token!490 Bool)) false) (h!7104 lt!29535) true) (content!145 (t!21402 lt!29535))))))

(assert (= (and d!26520 c!25908) b!107697))

(assert (= (and d!26520 (not c!25908)) b!107698))

(declare-fun m!96170 () Bool)

(assert (=> b!107698 m!96170))

(declare-fun m!96172 () Bool)

(assert (=> b!107698 m!96172))

(assert (=> d!25510 d!26520))

(assert (=> d!25510 d!26390))

(declare-fun d!26522 () Bool)

(declare-fun c!25909 () Bool)

(assert (=> d!26522 (= c!25909 ((_ is Nil!1707) (++!284 lt!29244 lt!29256)))))

(declare-fun e!59742 () (InoxSet Token!490))

(assert (=> d!26522 (= (content!145 (++!284 lt!29244 lt!29256)) e!59742)))

(declare-fun b!107699 () Bool)

(assert (=> b!107699 (= e!59742 ((as const (Array Token!490 Bool)) false))))

(declare-fun b!107700 () Bool)

(assert (=> b!107700 (= e!59742 ((_ map or) (store ((as const (Array Token!490 Bool)) false) (h!7104 (++!284 lt!29244 lt!29256)) true) (content!145 (t!21402 (++!284 lt!29244 lt!29256)))))))

(assert (= (and d!26522 c!25909) b!107699))

(assert (= (and d!26522 (not c!25909)) b!107700))

(declare-fun m!96174 () Bool)

(assert (=> b!107700 m!96174))

(declare-fun m!96176 () Bool)

(assert (=> b!107700 m!96176))

(assert (=> d!25510 d!26522))

(assert (=> b!105495 d!26240))

(declare-fun b!107701 () Bool)

(declare-fun e!59744 () tuple2!1856)

(declare-fun lt!30333 () tuple2!1856)

(declare-fun lt!30335 () Option!197)

(assert (=> b!107701 (= e!59744 (tuple2!1857 (prepend!141 (_1!1135 lt!30333) (_1!1139 (v!13005 lt!30335))) (_2!1135 lt!30333)))))

(assert (=> b!107701 (= lt!30333 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!30335))))))

(declare-fun lt!30334 () tuple2!1856)

(declare-fun e!59745 () Bool)

(declare-fun b!107702 () Bool)

(assert (=> b!107702 (= e!59745 (= (list!723 (_2!1135 lt!30334)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29513)))))))))

(declare-fun b!107703 () Bool)

(declare-fun e!59746 () Bool)

(assert (=> b!107703 (= e!59746 (not (isEmpty!794 (_1!1135 lt!30334))))))

(declare-fun b!107704 () Bool)

(assert (=> b!107704 (= e!59744 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29513))))))

(declare-fun b!107706 () Bool)

(declare-fun e!59743 () Bool)

(assert (=> b!107706 (= e!59743 e!59746)))

(declare-fun res!51659 () Bool)

(assert (=> b!107706 (= res!51659 (< (size!1513 (_2!1135 lt!30334)) (size!1513 (_2!1139 (v!13005 lt!29513)))))))

(assert (=> b!107706 (=> (not res!51659) (not e!59746))))

(declare-fun b!107707 () Bool)

(declare-fun res!51661 () Bool)

(assert (=> b!107707 (=> (not res!51661) (not e!59745))))

(assert (=> b!107707 (= res!51661 (= (list!724 (_1!1135 lt!30334)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29513)))))))))

(declare-fun b!107705 () Bool)

(assert (=> b!107705 (= e!59743 (= (list!723 (_2!1135 lt!30334)) (list!723 (_2!1139 (v!13005 lt!29513)))))))

(declare-fun d!26524 () Bool)

(assert (=> d!26524 e!59745))

(declare-fun res!51660 () Bool)

(assert (=> d!26524 (=> (not res!51660) (not e!59745))))

(assert (=> d!26524 (= res!51660 e!59743)))

(declare-fun c!25911 () Bool)

(assert (=> d!26524 (= c!25911 (> (size!1514 (_1!1135 lt!30334)) 0))))

(assert (=> d!26524 (= lt!30334 e!59744)))

(declare-fun c!25910 () Bool)

(assert (=> d!26524 (= c!25910 ((_ is Some!196) lt!30335))))

(assert (=> d!26524 (= lt!30335 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29513))))))

(assert (=> d!26524 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29513))) lt!30334)))

(assert (= (and d!26524 c!25910) b!107701))

(assert (= (and d!26524 (not c!25910)) b!107704))

(assert (= (and d!26524 c!25911) b!107706))

(assert (= (and d!26524 (not c!25911)) b!107705))

(assert (= (and b!107706 res!51659) b!107703))

(assert (= (and d!26524 res!51660) b!107707))

(assert (= (and b!107707 res!51661) b!107702))

(declare-fun m!96178 () Bool)

(assert (=> b!107701 m!96178))

(declare-fun m!96180 () Bool)

(assert (=> b!107701 m!96180))

(declare-fun m!96182 () Bool)

(assert (=> b!107707 m!96182))

(declare-fun m!96184 () Bool)

(assert (=> b!107707 m!96184))

(assert (=> b!107707 m!96184))

(declare-fun m!96186 () Bool)

(assert (=> b!107707 m!96186))

(declare-fun m!96188 () Bool)

(assert (=> b!107706 m!96188))

(declare-fun m!96190 () Bool)

(assert (=> b!107706 m!96190))

(declare-fun m!96192 () Bool)

(assert (=> b!107702 m!96192))

(assert (=> b!107702 m!96184))

(assert (=> b!107702 m!96184))

(assert (=> b!107702 m!96186))

(declare-fun m!96194 () Bool)

(assert (=> d!26524 m!96194))

(declare-fun m!96196 () Bool)

(assert (=> d!26524 m!96196))

(declare-fun m!96198 () Bool)

(assert (=> b!107703 m!96198))

(assert (=> b!107705 m!96192))

(assert (=> b!107705 m!96184))

(assert (=> b!105779 d!26524))

(declare-fun d!26526 () Bool)

(declare-fun e!59747 () Bool)

(assert (=> d!26526 e!59747))

(declare-fun res!51662 () Bool)

(assert (=> d!26526 (=> (not res!51662) (not e!59747))))

(assert (=> d!26526 (= res!51662 (isBalanced!151 (prepend!143 (c!25298 (_1!1135 lt!29507)) (_1!1139 (v!13005 lt!29513)))))))

(declare-fun lt!30336 () BalanceConc!1086)

(assert (=> d!26526 (= lt!30336 (BalanceConc!1087 (prepend!143 (c!25298 (_1!1135 lt!29507)) (_1!1139 (v!13005 lt!29513)))))))

(assert (=> d!26526 (= (prepend!141 (_1!1135 lt!29507) (_1!1139 (v!13005 lt!29513))) lt!30336)))

(declare-fun b!107708 () Bool)

(assert (=> b!107708 (= e!59747 (= (list!724 lt!30336) (Cons!1707 (_1!1139 (v!13005 lt!29513)) (list!724 (_1!1135 lt!29507)))))))

(assert (= (and d!26526 res!51662) b!107708))

(declare-fun m!96200 () Bool)

(assert (=> d!26526 m!96200))

(assert (=> d!26526 m!96200))

(declare-fun m!96202 () Bool)

(assert (=> d!26526 m!96202))

(declare-fun m!96204 () Bool)

(assert (=> b!107708 m!96204))

(declare-fun m!96206 () Bool)

(assert (=> b!107708 m!96206))

(assert (=> b!105779 d!26526))

(declare-fun d!26528 () Bool)

(declare-fun res!51663 () Bool)

(declare-fun e!59748 () Bool)

(assert (=> d!26528 (=> (not res!51663) (not e!59748))))

(assert (=> d!26528 (= res!51663 (<= (size!1519 (list!731 (xs!3131 (right!1633 (c!25296 input!576))))) 512))))

(assert (=> d!26528 (= (inv!2085 (right!1633 (c!25296 input!576))) e!59748)))

(declare-fun b!107709 () Bool)

(declare-fun res!51664 () Bool)

(assert (=> b!107709 (=> (not res!51664) (not e!59748))))

(assert (=> b!107709 (= res!51664 (= (csize!1311 (right!1633 (c!25296 input!576))) (size!1519 (list!731 (xs!3131 (right!1633 (c!25296 input!576)))))))))

(declare-fun b!107710 () Bool)

(assert (=> b!107710 (= e!59748 (and (> (csize!1311 (right!1633 (c!25296 input!576))) 0) (<= (csize!1311 (right!1633 (c!25296 input!576))) 512)))))

(assert (= (and d!26528 res!51663) b!107709))

(assert (= (and b!107709 res!51664) b!107710))

(assert (=> d!26528 m!95018))

(assert (=> d!26528 m!95018))

(declare-fun m!96208 () Bool)

(assert (=> d!26528 m!96208))

(assert (=> b!107709 m!95018))

(assert (=> b!107709 m!95018))

(assert (=> b!107709 m!96208))

(assert (=> b!105564 d!26528))

(declare-fun d!26530 () Bool)

(declare-fun e!59750 () Bool)

(assert (=> d!26530 e!59750))

(declare-fun res!51666 () Bool)

(assert (=> d!26530 (=> (not res!51666) (not e!59750))))

(declare-fun lt!30337 () List!1713)

(assert (=> d!26530 (= res!51666 (= (content!145 lt!30337) ((_ map or) (content!145 (list!728 (left!1304 (c!25298 (_1!1135 lt!29080))))) (content!145 (list!728 (right!1634 (c!25298 (_1!1135 lt!29080))))))))))

(declare-fun e!59749 () List!1713)

(assert (=> d!26530 (= lt!30337 e!59749)))

(declare-fun c!25912 () Bool)

(assert (=> d!26530 (= c!25912 ((_ is Nil!1707) (list!728 (left!1304 (c!25298 (_1!1135 lt!29080))))))))

(assert (=> d!26530 (= (++!284 (list!728 (left!1304 (c!25298 (_1!1135 lt!29080)))) (list!728 (right!1634 (c!25298 (_1!1135 lt!29080))))) lt!30337)))

(declare-fun b!107714 () Bool)

(assert (=> b!107714 (= e!59750 (or (not (= (list!728 (right!1634 (c!25298 (_1!1135 lt!29080)))) Nil!1707)) (= lt!30337 (list!728 (left!1304 (c!25298 (_1!1135 lt!29080)))))))))

(declare-fun b!107712 () Bool)

(assert (=> b!107712 (= e!59749 (Cons!1707 (h!7104 (list!728 (left!1304 (c!25298 (_1!1135 lt!29080))))) (++!284 (t!21402 (list!728 (left!1304 (c!25298 (_1!1135 lt!29080))))) (list!728 (right!1634 (c!25298 (_1!1135 lt!29080)))))))))

(declare-fun b!107713 () Bool)

(declare-fun res!51665 () Bool)

(assert (=> b!107713 (=> (not res!51665) (not e!59750))))

(assert (=> b!107713 (= res!51665 (= (size!1521 lt!30337) (+ (size!1521 (list!728 (left!1304 (c!25298 (_1!1135 lt!29080))))) (size!1521 (list!728 (right!1634 (c!25298 (_1!1135 lt!29080))))))))))

(declare-fun b!107711 () Bool)

(assert (=> b!107711 (= e!59749 (list!728 (right!1634 (c!25298 (_1!1135 lt!29080)))))))

(assert (= (and d!26530 c!25912) b!107711))

(assert (= (and d!26530 (not c!25912)) b!107712))

(assert (= (and d!26530 res!51666) b!107713))

(assert (= (and b!107713 res!51665) b!107714))

(declare-fun m!96210 () Bool)

(assert (=> d!26530 m!96210))

(assert (=> d!26530 m!92232))

(declare-fun m!96212 () Bool)

(assert (=> d!26530 m!96212))

(assert (=> d!26530 m!92234))

(declare-fun m!96214 () Bool)

(assert (=> d!26530 m!96214))

(assert (=> b!107712 m!92234))

(declare-fun m!96216 () Bool)

(assert (=> b!107712 m!96216))

(declare-fun m!96218 () Bool)

(assert (=> b!107713 m!96218))

(assert (=> b!107713 m!92232))

(declare-fun m!96220 () Bool)

(assert (=> b!107713 m!96220))

(assert (=> b!107713 m!92234))

(declare-fun m!96222 () Bool)

(assert (=> b!107713 m!96222))

(assert (=> b!105598 d!26530))

(declare-fun b!107717 () Bool)

(declare-fun e!59752 () List!1713)

(assert (=> b!107717 (= e!59752 (list!732 (xs!3132 (left!1304 (c!25298 (_1!1135 lt!29080))))))))

(declare-fun b!107716 () Bool)

(declare-fun e!59751 () List!1713)

(assert (=> b!107716 (= e!59751 e!59752)))

(declare-fun c!25914 () Bool)

(assert (=> b!107716 (= c!25914 ((_ is Leaf!863) (left!1304 (c!25298 (_1!1135 lt!29080)))))))

(declare-fun b!107715 () Bool)

(assert (=> b!107715 (= e!59751 Nil!1707)))

(declare-fun b!107718 () Bool)

(assert (=> b!107718 (= e!59752 (++!284 (list!728 (left!1304 (left!1304 (c!25298 (_1!1135 lt!29080))))) (list!728 (right!1634 (left!1304 (c!25298 (_1!1135 lt!29080)))))))))

(declare-fun d!26532 () Bool)

(declare-fun c!25913 () Bool)

(assert (=> d!26532 (= c!25913 ((_ is Empty!541) (left!1304 (c!25298 (_1!1135 lt!29080)))))))

(assert (=> d!26532 (= (list!728 (left!1304 (c!25298 (_1!1135 lt!29080)))) e!59751)))

(assert (= (and d!26532 c!25913) b!107715))

(assert (= (and d!26532 (not c!25913)) b!107716))

(assert (= (and b!107716 c!25914) b!107717))

(assert (= (and b!107716 (not c!25914)) b!107718))

(declare-fun m!96224 () Bool)

(assert (=> b!107717 m!96224))

(declare-fun m!96226 () Bool)

(assert (=> b!107718 m!96226))

(declare-fun m!96228 () Bool)

(assert (=> b!107718 m!96228))

(assert (=> b!107718 m!96226))

(assert (=> b!107718 m!96228))

(declare-fun m!96230 () Bool)

(assert (=> b!107718 m!96230))

(assert (=> b!105598 d!26532))

(declare-fun b!107721 () Bool)

(declare-fun e!59754 () List!1713)

(assert (=> b!107721 (= e!59754 (list!732 (xs!3132 (right!1634 (c!25298 (_1!1135 lt!29080))))))))

(declare-fun b!107720 () Bool)

(declare-fun e!59753 () List!1713)

(assert (=> b!107720 (= e!59753 e!59754)))

(declare-fun c!25916 () Bool)

(assert (=> b!107720 (= c!25916 ((_ is Leaf!863) (right!1634 (c!25298 (_1!1135 lt!29080)))))))

(declare-fun b!107719 () Bool)

(assert (=> b!107719 (= e!59753 Nil!1707)))

(declare-fun b!107722 () Bool)

(assert (=> b!107722 (= e!59754 (++!284 (list!728 (left!1304 (right!1634 (c!25298 (_1!1135 lt!29080))))) (list!728 (right!1634 (right!1634 (c!25298 (_1!1135 lt!29080)))))))))

(declare-fun d!26534 () Bool)

(declare-fun c!25915 () Bool)

(assert (=> d!26534 (= c!25915 ((_ is Empty!541) (right!1634 (c!25298 (_1!1135 lt!29080)))))))

(assert (=> d!26534 (= (list!728 (right!1634 (c!25298 (_1!1135 lt!29080)))) e!59753)))

(assert (= (and d!26534 c!25915) b!107719))

(assert (= (and d!26534 (not c!25915)) b!107720))

(assert (= (and b!107720 c!25916) b!107721))

(assert (= (and b!107720 (not c!25916)) b!107722))

(declare-fun m!96232 () Bool)

(assert (=> b!107721 m!96232))

(declare-fun m!96234 () Bool)

(assert (=> b!107722 m!96234))

(declare-fun m!96236 () Bool)

(assert (=> b!107722 m!96236))

(assert (=> b!107722 m!96234))

(assert (=> b!107722 m!96236))

(declare-fun m!96238 () Bool)

(assert (=> b!107722 m!96238))

(assert (=> b!105598 d!26534))

(declare-fun bs!10338 () Bool)

(declare-fun d!26536 () Bool)

(assert (= bs!10338 (and d!26536 d!25402)))

(declare-fun lambda!1979 () Int)

(assert (=> bs!10338 (= (and (= (toChars!819 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toChars!819 (transformation!373 (h!7103 rules!1152)))) (= (toValue!960 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toValue!960 (transformation!373 (h!7103 rules!1152))))) (= lambda!1979 lambda!1953))))

(declare-fun bs!10339 () Bool)

(assert (= bs!10339 (and d!26536 b!107539)))

(assert (=> bs!10339 (= (and (= (toChars!819 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toChars!819 (transformation!373 (h!7103 rules!1152)))) (= (toValue!960 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toValue!960 (transformation!373 (h!7103 rules!1152))))) (= lambda!1979 lambda!1978))))

(assert (=> d!26536 true))

(assert (=> d!26536 (< (dynLambda!535 order!837 (toChars!819 (transformation!373 (h!7103 (t!21401 rules!1152))))) (dynLambda!536 order!839 lambda!1979))))

(assert (=> d!26536 true))

(assert (=> d!26536 (< (dynLambda!533 order!833 (toValue!960 (transformation!373 (h!7103 (t!21401 rules!1152))))) (dynLambda!536 order!839 lambda!1979))))

(assert (=> d!26536 (= (semiInverseModEq!99 (toChars!819 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toValue!960 (transformation!373 (h!7103 (t!21401 rules!1152))))) (Forall!77 lambda!1979))))

(declare-fun bs!10340 () Bool)

(assert (= bs!10340 d!26536))

(declare-fun m!96240 () Bool)

(assert (=> bs!10340 m!96240))

(assert (=> d!25476 d!26536))

(declare-fun b!107723 () Bool)

(declare-fun res!51668 () Bool)

(declare-fun e!59757 () Bool)

(assert (=> b!107723 (=> (not res!51668) (not e!59757))))

(declare-fun lt!30340 () Option!198)

(assert (=> b!107723 (= res!51668 (< (size!1519 (_2!1140 (get!438 lt!30340))) (size!1519 (list!723 input!576))))))

(declare-fun b!107724 () Bool)

(declare-fun res!51671 () Bool)

(assert (=> b!107724 (=> (not res!51671) (not e!59757))))

(assert (=> b!107724 (= res!51671 (= (++!283 (list!723 (charsOf!88 (_1!1140 (get!438 lt!30340)))) (_2!1140 (get!438 lt!30340))) (list!723 input!576)))))

(declare-fun b!107725 () Bool)

(declare-fun res!51672 () Bool)

(assert (=> b!107725 (=> (not res!51672) (not e!59757))))

(assert (=> b!107725 (= res!51672 (matchR!48 (regex!373 (rule!876 (_1!1140 (get!438 lt!30340)))) (list!723 (charsOf!88 (_1!1140 (get!438 lt!30340))))))))

(declare-fun b!107726 () Bool)

(assert (=> b!107726 (= e!59757 (contains!277 (t!21401 rules!1152) (rule!876 (_1!1140 (get!438 lt!30340)))))))

(declare-fun b!107727 () Bool)

(declare-fun res!51669 () Bool)

(assert (=> b!107727 (=> (not res!51669) (not e!59757))))

(assert (=> b!107727 (= res!51669 (= (list!723 (charsOf!88 (_1!1140 (get!438 lt!30340)))) (originalCharacters!416 (_1!1140 (get!438 lt!30340)))))))

(declare-fun b!107728 () Bool)

(declare-fun e!59755 () Bool)

(assert (=> b!107728 (= e!59755 e!59757)))

(declare-fun res!51673 () Bool)

(assert (=> b!107728 (=> (not res!51673) (not e!59757))))

(assert (=> b!107728 (= res!51673 (isDefined!72 lt!30340))))

(declare-fun b!107729 () Bool)

(declare-fun res!51667 () Bool)

(assert (=> b!107729 (=> (not res!51667) (not e!59757))))

(assert (=> b!107729 (= res!51667 (= (value!13518 (_1!1140 (get!438 lt!30340))) (apply!268 (transformation!373 (rule!876 (_1!1140 (get!438 lt!30340)))) (seqFromList!204 (originalCharacters!416 (_1!1140 (get!438 lt!30340)))))))))

(declare-fun bm!4757 () Bool)

(declare-fun call!4762 () Option!198)

(assert (=> bm!4757 (= call!4762 (maxPrefixOneRule!44 thiss!11428 (h!7103 (t!21401 rules!1152)) (list!723 input!576)))))

(declare-fun b!107730 () Bool)

(declare-fun e!59756 () Option!198)

(assert (=> b!107730 (= e!59756 call!4762)))

(declare-fun d!26538 () Bool)

(assert (=> d!26538 e!59755))

(declare-fun res!51670 () Bool)

(assert (=> d!26538 (=> res!51670 e!59755)))

(assert (=> d!26538 (= res!51670 (isEmpty!801 lt!30340))))

(assert (=> d!26538 (= lt!30340 e!59756)))

(declare-fun c!25917 () Bool)

(assert (=> d!26538 (= c!25917 (and ((_ is Cons!1706) (t!21401 rules!1152)) ((_ is Nil!1706) (t!21401 (t!21401 rules!1152)))))))

(declare-fun lt!30339 () Unit!1124)

(declare-fun lt!30338 () Unit!1124)

(assert (=> d!26538 (= lt!30339 lt!30338)))

(assert (=> d!26538 (isPrefix!51 (list!723 input!576) (list!723 input!576))))

(assert (=> d!26538 (= lt!30338 (lemmaIsPrefixRefl!51 (list!723 input!576) (list!723 input!576)))))

(assert (=> d!26538 (rulesValidInductive!84 thiss!11428 (t!21401 rules!1152))))

(assert (=> d!26538 (= (maxPrefix!93 thiss!11428 (t!21401 rules!1152) (list!723 input!576)) lt!30340)))

(declare-fun b!107731 () Bool)

(declare-fun lt!30341 () Option!198)

(declare-fun lt!30342 () Option!198)

(assert (=> b!107731 (= e!59756 (ite (and ((_ is None!197) lt!30341) ((_ is None!197) lt!30342)) None!197 (ite ((_ is None!197) lt!30342) lt!30341 (ite ((_ is None!197) lt!30341) lt!30342 (ite (>= (size!1512 (_1!1140 (v!13006 lt!30341))) (size!1512 (_1!1140 (v!13006 lt!30342)))) lt!30341 lt!30342)))))))

(assert (=> b!107731 (= lt!30341 call!4762)))

(assert (=> b!107731 (= lt!30342 (maxPrefix!93 thiss!11428 (t!21401 (t!21401 rules!1152)) (list!723 input!576)))))

(assert (= (and d!26538 c!25917) b!107730))

(assert (= (and d!26538 (not c!25917)) b!107731))

(assert (= (or b!107730 b!107731) bm!4757))

(assert (= (and d!26538 (not res!51670)) b!107728))

(assert (= (and b!107728 res!51673) b!107727))

(assert (= (and b!107727 res!51669) b!107723))

(assert (= (and b!107723 res!51668) b!107724))

(assert (= (and b!107724 res!51671) b!107729))

(assert (= (and b!107729 res!51667) b!107725))

(assert (= (and b!107725 res!51672) b!107726))

(declare-fun m!96242 () Bool)

(assert (=> d!26538 m!96242))

(assert (=> d!26538 m!91458))

(assert (=> d!26538 m!91458))

(assert (=> d!26538 m!92376))

(assert (=> d!26538 m!91458))

(assert (=> d!26538 m!91458))

(assert (=> d!26538 m!92378))

(assert (=> d!26538 m!94868))

(declare-fun m!96244 () Bool)

(assert (=> b!107725 m!96244))

(declare-fun m!96246 () Bool)

(assert (=> b!107725 m!96246))

(assert (=> b!107725 m!96246))

(declare-fun m!96248 () Bool)

(assert (=> b!107725 m!96248))

(assert (=> b!107725 m!96248))

(declare-fun m!96250 () Bool)

(assert (=> b!107725 m!96250))

(assert (=> b!107727 m!96244))

(assert (=> b!107727 m!96246))

(assert (=> b!107727 m!96246))

(assert (=> b!107727 m!96248))

(assert (=> b!107729 m!96244))

(declare-fun m!96252 () Bool)

(assert (=> b!107729 m!96252))

(assert (=> b!107729 m!96252))

(declare-fun m!96254 () Bool)

(assert (=> b!107729 m!96254))

(assert (=> b!107726 m!96244))

(declare-fun m!96256 () Bool)

(assert (=> b!107726 m!96256))

(assert (=> b!107731 m!91458))

(declare-fun m!96258 () Bool)

(assert (=> b!107731 m!96258))

(declare-fun m!96260 () Bool)

(assert (=> b!107728 m!96260))

(assert (=> b!107724 m!96244))

(assert (=> b!107724 m!96246))

(assert (=> b!107724 m!96246))

(assert (=> b!107724 m!96248))

(assert (=> b!107724 m!96248))

(declare-fun m!96262 () Bool)

(assert (=> b!107724 m!96262))

(assert (=> b!107723 m!96244))

(declare-fun m!96264 () Bool)

(assert (=> b!107723 m!96264))

(assert (=> b!107723 m!91458))

(assert (=> b!107723 m!91482))

(assert (=> bm!4757 m!91458))

(declare-fun m!96266 () Bool)

(assert (=> bm!4757 m!96266))

(assert (=> b!105704 d!26538))

(assert (=> b!105884 d!26398))

(assert (=> b!105884 d!26254))

(declare-fun d!26540 () Bool)

(assert (=> d!26540 (= (list!724 (_1!1135 lt!29548)) (list!728 (c!25298 (_1!1135 lt!29548))))))

(declare-fun bs!10341 () Bool)

(assert (= bs!10341 d!26540))

(declare-fun m!96268 () Bool)

(assert (=> bs!10341 m!96268))

(assert (=> b!105851 d!26540))

(declare-fun d!26542 () Bool)

(declare-fun e!59759 () Bool)

(assert (=> d!26542 e!59759))

(declare-fun c!25919 () Bool)

(declare-fun lt!30344 () tuple2!1858)

(assert (=> d!26542 (= c!25919 (> (size!1521 (_1!1136 lt!30344)) 0))))

(declare-fun e!59760 () tuple2!1858)

(assert (=> d!26542 (= lt!30344 e!59760)))

(declare-fun c!25918 () Bool)

(declare-fun lt!30345 () Option!198)

(assert (=> d!26542 (= c!25918 ((_ is Some!197) lt!30345))))

(assert (=> d!26542 (= lt!30345 (maxPrefix!93 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29247)))))))

(assert (=> d!26542 (= (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29247)))) lt!30344)))

(declare-fun b!107732 () Bool)

(declare-fun lt!30343 () tuple2!1858)

(assert (=> b!107732 (= e!59760 (tuple2!1859 (Cons!1707 (_1!1140 (v!13006 lt!30345)) (_1!1136 lt!30343)) (_2!1136 lt!30343)))))

(assert (=> b!107732 (= lt!30343 (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!30345))))))

(declare-fun b!107733 () Bool)

(assert (=> b!107733 (= e!59760 (tuple2!1859 Nil!1707 (list!723 (_2!1139 (v!13005 lt!29247)))))))

(declare-fun b!107734 () Bool)

(declare-fun e!59758 () Bool)

(assert (=> b!107734 (= e!59758 (not (isEmpty!797 (_1!1136 lt!30344))))))

(declare-fun b!107735 () Bool)

(assert (=> b!107735 (= e!59759 e!59758)))

(declare-fun res!51674 () Bool)

(assert (=> b!107735 (= res!51674 (< (size!1519 (_2!1136 lt!30344)) (size!1519 (list!723 (_2!1139 (v!13005 lt!29247))))))))

(assert (=> b!107735 (=> (not res!51674) (not e!59758))))

(declare-fun b!107736 () Bool)

(assert (=> b!107736 (= e!59759 (= (_2!1136 lt!30344) (list!723 (_2!1139 (v!13005 lt!29247)))))))

(assert (= (and d!26542 c!25918) b!107732))

(assert (= (and d!26542 (not c!25918)) b!107733))

(assert (= (and d!26542 c!25919) b!107735))

(assert (= (and d!26542 (not c!25919)) b!107736))

(assert (= (and b!107735 res!51674) b!107734))

(declare-fun m!96270 () Bool)

(assert (=> d!26542 m!96270))

(assert (=> d!26542 m!91684))

(assert (=> d!26542 m!94278))

(declare-fun m!96272 () Bool)

(assert (=> b!107732 m!96272))

(declare-fun m!96274 () Bool)

(assert (=> b!107734 m!96274))

(declare-fun m!96276 () Bool)

(assert (=> b!107735 m!96276))

(assert (=> b!107735 m!91684))

(declare-fun m!96278 () Bool)

(assert (=> b!107735 m!96278))

(assert (=> b!105851 d!26542))

(assert (=> b!105851 d!25500))

(declare-fun d!26544 () Bool)

(declare-fun e!59762 () Bool)

(assert (=> d!26544 e!59762))

(declare-fun c!25921 () Bool)

(declare-fun lt!30347 () tuple2!1858)

(assert (=> d!26544 (= c!25921 (> (size!1521 (_1!1136 lt!30347)) 0))))

(declare-fun e!59763 () tuple2!1858)

(assert (=> d!26544 (= lt!30347 e!59763)))

(declare-fun c!25920 () Bool)

(declare-fun lt!30348 () Option!198)

(assert (=> d!26544 (= c!25920 ((_ is Some!197) lt!30348))))

(assert (=> d!26544 (= lt!30348 (maxPrefix!93 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!29534))))))

(assert (=> d!26544 (= (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!29534))) lt!30347)))

(declare-fun b!107737 () Bool)

(declare-fun lt!30346 () tuple2!1858)

(assert (=> b!107737 (= e!59763 (tuple2!1859 (Cons!1707 (_1!1140 (v!13006 lt!30348)) (_1!1136 lt!30346)) (_2!1136 lt!30346)))))

(assert (=> b!107737 (= lt!30346 (lexList!83 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!30348))))))

(declare-fun b!107738 () Bool)

(assert (=> b!107738 (= e!59763 (tuple2!1859 Nil!1707 (_2!1140 (v!13006 lt!29534))))))

(declare-fun b!107739 () Bool)

(declare-fun e!59761 () Bool)

(assert (=> b!107739 (= e!59761 (not (isEmpty!797 (_1!1136 lt!30347))))))

(declare-fun b!107740 () Bool)

(assert (=> b!107740 (= e!59762 e!59761)))

(declare-fun res!51675 () Bool)

(assert (=> b!107740 (= res!51675 (< (size!1519 (_2!1136 lt!30347)) (size!1519 (_2!1140 (v!13006 lt!29534)))))))

(assert (=> b!107740 (=> (not res!51675) (not e!59761))))

(declare-fun b!107741 () Bool)

(assert (=> b!107741 (= e!59762 (= (_2!1136 lt!30347) (_2!1140 (v!13006 lt!29534))))))

(assert (= (and d!26544 c!25920) b!107737))

(assert (= (and d!26544 (not c!25920)) b!107738))

(assert (= (and d!26544 c!25921) b!107740))

(assert (= (and d!26544 (not c!25921)) b!107741))

(assert (= (and b!107740 res!51675) b!107739))

(declare-fun m!96280 () Bool)

(assert (=> d!26544 m!96280))

(declare-fun m!96282 () Bool)

(assert (=> d!26544 m!96282))

(declare-fun m!96284 () Bool)

(assert (=> b!107737 m!96284))

(declare-fun m!96286 () Bool)

(assert (=> b!107739 m!96286))

(declare-fun m!96288 () Bool)

(assert (=> b!107740 m!96288))

(declare-fun m!96290 () Bool)

(assert (=> b!107740 m!96290))

(assert (=> b!105816 d!26544))

(declare-fun d!26546 () Bool)

(assert (=> d!26546 (= (isEmpty!801 lt!29476) (not ((_ is Some!197) lt!29476)))))

(assert (=> d!25428 d!26546))

(declare-fun b!107745 () Bool)

(declare-fun e!59765 () Bool)

(assert (=> b!107745 (= e!59765 (>= (size!1519 (list!723 input!576)) (size!1519 (list!723 input!576))))))

(declare-fun b!107743 () Bool)

(declare-fun res!51676 () Bool)

(declare-fun e!59766 () Bool)

(assert (=> b!107743 (=> (not res!51676) (not e!59766))))

(assert (=> b!107743 (= res!51676 (= (head!464 (list!723 input!576)) (head!464 (list!723 input!576))))))

(declare-fun b!107744 () Bool)

(assert (=> b!107744 (= e!59766 (isPrefix!51 (tail!176 (list!723 input!576)) (tail!176 (list!723 input!576))))))

(declare-fun d!26548 () Bool)

(assert (=> d!26548 e!59765))

(declare-fun res!51679 () Bool)

(assert (=> d!26548 (=> res!51679 e!59765)))

(declare-fun lt!30349 () Bool)

(assert (=> d!26548 (= res!51679 (not lt!30349))))

(declare-fun e!59764 () Bool)

(assert (=> d!26548 (= lt!30349 e!59764)))

(declare-fun res!51678 () Bool)

(assert (=> d!26548 (=> res!51678 e!59764)))

(assert (=> d!26548 (= res!51678 ((_ is Nil!1705) (list!723 input!576)))))

(assert (=> d!26548 (= (isPrefix!51 (list!723 input!576) (list!723 input!576)) lt!30349)))

(declare-fun b!107742 () Bool)

(assert (=> b!107742 (= e!59764 e!59766)))

(declare-fun res!51677 () Bool)

(assert (=> b!107742 (=> (not res!51677) (not e!59766))))

(assert (=> b!107742 (= res!51677 (not ((_ is Nil!1705) (list!723 input!576))))))

(assert (= (and d!26548 (not res!51678)) b!107742))

(assert (= (and b!107742 res!51677) b!107743))

(assert (= (and b!107743 res!51676) b!107744))

(assert (= (and d!26548 (not res!51679)) b!107745))

(assert (=> b!107745 m!91458))

(assert (=> b!107745 m!91482))

(assert (=> b!107745 m!91458))

(assert (=> b!107745 m!91482))

(assert (=> b!107743 m!91458))

(declare-fun m!96292 () Bool)

(assert (=> b!107743 m!96292))

(assert (=> b!107743 m!91458))

(assert (=> b!107743 m!96292))

(assert (=> b!107744 m!91458))

(declare-fun m!96294 () Bool)

(assert (=> b!107744 m!96294))

(assert (=> b!107744 m!91458))

(assert (=> b!107744 m!96294))

(assert (=> b!107744 m!96294))

(assert (=> b!107744 m!96294))

(declare-fun m!96296 () Bool)

(assert (=> b!107744 m!96296))

(assert (=> d!25428 d!26548))

(declare-fun d!26550 () Bool)

(assert (=> d!26550 (isPrefix!51 (list!723 input!576) (list!723 input!576))))

(declare-fun lt!30350 () Unit!1124)

(assert (=> d!26550 (= lt!30350 (choose!1407 (list!723 input!576) (list!723 input!576)))))

(assert (=> d!26550 (= (lemmaIsPrefixRefl!51 (list!723 input!576) (list!723 input!576)) lt!30350)))

(declare-fun bs!10342 () Bool)

(assert (= bs!10342 d!26550))

(assert (=> bs!10342 m!91458))

(assert (=> bs!10342 m!91458))

(assert (=> bs!10342 m!92376))

(assert (=> bs!10342 m!91458))

(assert (=> bs!10342 m!91458))

(declare-fun m!96298 () Bool)

(assert (=> bs!10342 m!96298))

(assert (=> d!25428 d!26550))

(assert (=> d!25428 d!26156))

(declare-fun b!107748 () Bool)

(declare-fun e!59768 () List!1713)

(assert (=> b!107748 (= e!59768 (list!732 (xs!3132 (c!25298 (_1!1135 (lexRec!60 thiss!11428 rules!1152 input!576))))))))

(declare-fun b!107747 () Bool)

(declare-fun e!59767 () List!1713)

(assert (=> b!107747 (= e!59767 e!59768)))

(declare-fun c!25923 () Bool)

(assert (=> b!107747 (= c!25923 ((_ is Leaf!863) (c!25298 (_1!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))

(declare-fun b!107746 () Bool)

(assert (=> b!107746 (= e!59767 Nil!1707)))

(declare-fun b!107749 () Bool)

(assert (=> b!107749 (= e!59768 (++!284 (list!728 (left!1304 (c!25298 (_1!1135 (lexRec!60 thiss!11428 rules!1152 input!576))))) (list!728 (right!1634 (c!25298 (_1!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))))

(declare-fun d!26552 () Bool)

(declare-fun c!25922 () Bool)

(assert (=> d!26552 (= c!25922 ((_ is Empty!541) (c!25298 (_1!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))))))

(assert (=> d!26552 (= (list!728 (c!25298 (_1!1135 (lexRec!60 thiss!11428 rules!1152 input!576)))) e!59767)))

(assert (= (and d!26552 c!25922) b!107746))

(assert (= (and d!26552 (not c!25922)) b!107747))

(assert (= (and b!107747 c!25923) b!107748))

(assert (= (and b!107747 (not c!25923)) b!107749))

(declare-fun m!96300 () Bool)

(assert (=> b!107748 m!96300))

(declare-fun m!96302 () Bool)

(assert (=> b!107749 m!96302))

(declare-fun m!96304 () Bool)

(assert (=> b!107749 m!96304))

(assert (=> b!107749 m!96302))

(assert (=> b!107749 m!96304))

(declare-fun m!96306 () Bool)

(assert (=> b!107749 m!96306))

(assert (=> d!25324 d!26552))

(assert (=> b!105498 d!26188))

(assert (=> b!105498 d!26034))

(assert (=> b!105498 d!26186))

(assert (=> b!105498 d!26036))

(assert (=> b!105498 d!25284))

(declare-fun d!26554 () Bool)

(assert (=> d!26554 (= (isEmpty!797 (_1!1136 lt!29295)) ((_ is Nil!1707) (_1!1136 lt!29295)))))

(assert (=> b!105341 d!26554))

(declare-fun d!26556 () Bool)

(declare-fun lt!30351 () Int)

(assert (=> d!26556 (>= lt!30351 0)))

(declare-fun e!59769 () Int)

(assert (=> d!26556 (= lt!30351 e!59769)))

(declare-fun c!25924 () Bool)

(assert (=> d!26556 (= c!25924 ((_ is Nil!1705) lt!29527))))

(assert (=> d!26556 (= (size!1519 lt!29527) lt!30351)))

(declare-fun b!107750 () Bool)

(assert (=> b!107750 (= e!59769 0)))

(declare-fun b!107751 () Bool)

(assert (=> b!107751 (= e!59769 (+ 1 (size!1519 (t!21400 lt!29527))))))

(assert (= (and d!26556 c!25924) b!107750))

(assert (= (and d!26556 (not c!25924)) b!107751))

(declare-fun m!96308 () Bool)

(assert (=> b!107751 m!96308))

(assert (=> b!105810 d!26556))

(declare-fun d!26558 () Bool)

(declare-fun lt!30352 () Int)

(assert (=> d!26558 (>= lt!30352 0)))

(declare-fun e!59770 () Int)

(assert (=> d!26558 (= lt!30352 e!59770)))

(declare-fun c!25925 () Bool)

(assert (=> d!26558 (= c!25925 ((_ is Nil!1705) lt!29255))))

(assert (=> d!26558 (= (size!1519 lt!29255) lt!30352)))

(declare-fun b!107752 () Bool)

(assert (=> b!107752 (= e!59770 0)))

(declare-fun b!107753 () Bool)

(assert (=> b!107753 (= e!59770 (+ 1 (size!1519 (t!21400 lt!29255))))))

(assert (= (and d!26558 c!25925) b!107752))

(assert (= (and d!26558 (not c!25925)) b!107753))

(assert (=> b!107753 m!95180))

(assert (=> b!105810 d!26558))

(declare-fun d!26560 () Bool)

(declare-fun lt!30353 () Int)

(assert (=> d!26560 (>= lt!30353 0)))

(declare-fun e!59771 () Int)

(assert (=> d!26560 (= lt!30353 e!59771)))

(declare-fun c!25926 () Bool)

(assert (=> d!26560 (= c!25926 ((_ is Nil!1705) (++!283 lt!29250 lt!29241)))))

(assert (=> d!26560 (= (size!1519 (++!283 lt!29250 lt!29241)) lt!30353)))

(declare-fun b!107754 () Bool)

(assert (=> b!107754 (= e!59771 0)))

(declare-fun b!107755 () Bool)

(assert (=> b!107755 (= e!59771 (+ 1 (size!1519 (t!21400 (++!283 lt!29250 lt!29241)))))))

(assert (= (and d!26560 c!25926) b!107754))

(assert (= (and d!26560 (not c!25926)) b!107755))

(declare-fun m!96310 () Bool)

(assert (=> b!107755 m!96310))

(assert (=> b!105810 d!26560))

(declare-fun d!26562 () Bool)

(declare-fun c!25927 () Bool)

(assert (=> d!26562 (= c!25927 ((_ is Node!540) (left!1303 (right!1633 (c!25296 input!576)))))))

(declare-fun e!59772 () Bool)

(assert (=> d!26562 (= (inv!2080 (left!1303 (right!1633 (c!25296 input!576)))) e!59772)))

(declare-fun b!107756 () Bool)

(assert (=> b!107756 (= e!59772 (inv!2084 (left!1303 (right!1633 (c!25296 input!576)))))))

(declare-fun b!107757 () Bool)

(declare-fun e!59773 () Bool)

(assert (=> b!107757 (= e!59772 e!59773)))

(declare-fun res!51680 () Bool)

(assert (=> b!107757 (= res!51680 (not ((_ is Leaf!862) (left!1303 (right!1633 (c!25296 input!576))))))))

(assert (=> b!107757 (=> res!51680 e!59773)))

(declare-fun b!107758 () Bool)

(assert (=> b!107758 (= e!59773 (inv!2085 (left!1303 (right!1633 (c!25296 input!576)))))))

(assert (= (and d!26562 c!25927) b!107756))

(assert (= (and d!26562 (not c!25927)) b!107757))

(assert (= (and b!107757 (not res!51680)) b!107758))

(declare-fun m!96312 () Bool)

(assert (=> b!107756 m!96312))

(declare-fun m!96314 () Bool)

(assert (=> b!107758 m!96314))

(assert (=> b!105900 d!26562))

(declare-fun d!26564 () Bool)

(declare-fun c!25928 () Bool)

(assert (=> d!26564 (= c!25928 ((_ is Node!540) (right!1633 (right!1633 (c!25296 input!576)))))))

(declare-fun e!59774 () Bool)

(assert (=> d!26564 (= (inv!2080 (right!1633 (right!1633 (c!25296 input!576)))) e!59774)))

(declare-fun b!107759 () Bool)

(assert (=> b!107759 (= e!59774 (inv!2084 (right!1633 (right!1633 (c!25296 input!576)))))))

(declare-fun b!107760 () Bool)

(declare-fun e!59775 () Bool)

(assert (=> b!107760 (= e!59774 e!59775)))

(declare-fun res!51681 () Bool)

(assert (=> b!107760 (= res!51681 (not ((_ is Leaf!862) (right!1633 (right!1633 (c!25296 input!576))))))))

(assert (=> b!107760 (=> res!51681 e!59775)))

(declare-fun b!107761 () Bool)

(assert (=> b!107761 (= e!59775 (inv!2085 (right!1633 (right!1633 (c!25296 input!576)))))))

(assert (= (and d!26564 c!25928) b!107759))

(assert (= (and d!26564 (not c!25928)) b!107760))

(assert (= (and b!107760 (not res!51681)) b!107761))

(declare-fun m!96316 () Bool)

(assert (=> b!107759 m!96316))

(declare-fun m!96318 () Bool)

(assert (=> b!107761 m!96318))

(assert (=> b!105900 d!26564))

(assert (=> b!105856 d!26154))

(declare-fun d!26566 () Bool)

(declare-fun e!59776 () Bool)

(assert (=> d!26566 e!59776))

(declare-fun res!51682 () Bool)

(assert (=> d!26566 (=> (not res!51682) (not e!59776))))

(assert (=> d!26566 (= res!51682 (isBalanced!151 (prepend!143 (c!25298 (_1!1135 lt!29559)) (_1!1139 (v!13005 lt!29561)))))))

(declare-fun lt!30354 () BalanceConc!1086)

(assert (=> d!26566 (= lt!30354 (BalanceConc!1087 (prepend!143 (c!25298 (_1!1135 lt!29559)) (_1!1139 (v!13005 lt!29561)))))))

(assert (=> d!26566 (= (prepend!141 (_1!1135 lt!29559) (_1!1139 (v!13005 lt!29561))) lt!30354)))

(declare-fun b!107762 () Bool)

(assert (=> b!107762 (= e!59776 (= (list!724 lt!30354) (Cons!1707 (_1!1139 (v!13005 lt!29561)) (list!724 (_1!1135 lt!29559)))))))

(assert (= (and d!26566 res!51682) b!107762))

(declare-fun m!96320 () Bool)

(assert (=> d!26566 m!96320))

(assert (=> d!26566 m!96320))

(declare-fun m!96322 () Bool)

(assert (=> d!26566 m!96322))

(declare-fun m!96324 () Bool)

(assert (=> b!107762 m!96324))

(declare-fun m!96326 () Bool)

(assert (=> b!107762 m!96326))

(assert (=> b!105868 d!26566))

(declare-fun b!107763 () Bool)

(declare-fun e!59778 () tuple2!1856)

(declare-fun lt!30355 () tuple2!1856)

(declare-fun lt!30357 () Option!197)

(assert (=> b!107763 (= e!59778 (tuple2!1857 (prepend!141 (_1!1135 lt!30355) (_1!1139 (v!13005 lt!30357))) (_2!1135 lt!30355)))))

(assert (=> b!107763 (= lt!30355 (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!30357))))))

(declare-fun e!59779 () Bool)

(declare-fun b!107764 () Bool)

(declare-fun lt!30356 () tuple2!1856)

(assert (=> b!107764 (= e!59779 (= (list!723 (_2!1135 lt!30356)) (_2!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29561)))))))))

(declare-fun b!107765 () Bool)

(declare-fun e!59780 () Bool)

(assert (=> b!107765 (= e!59780 (not (isEmpty!794 (_1!1135 lt!30356))))))

(declare-fun b!107766 () Bool)

(assert (=> b!107766 (= e!59778 (tuple2!1857 (BalanceConc!1087 Empty!541) (_2!1139 (v!13005 lt!29561))))))

(declare-fun b!107768 () Bool)

(declare-fun e!59777 () Bool)

(assert (=> b!107768 (= e!59777 e!59780)))

(declare-fun res!51683 () Bool)

(assert (=> b!107768 (= res!51683 (< (size!1513 (_2!1135 lt!30356)) (size!1513 (_2!1139 (v!13005 lt!29561)))))))

(assert (=> b!107768 (=> (not res!51683) (not e!59780))))

(declare-fun b!107769 () Bool)

(declare-fun res!51685 () Bool)

(assert (=> b!107769 (=> (not res!51685) (not e!59779))))

(assert (=> b!107769 (= res!51685 (= (list!724 (_1!1135 lt!30356)) (_1!1136 (lexList!83 thiss!11428 rules!1152 (list!723 (_2!1139 (v!13005 lt!29561)))))))))

(declare-fun b!107767 () Bool)

(assert (=> b!107767 (= e!59777 (= (list!723 (_2!1135 lt!30356)) (list!723 (_2!1139 (v!13005 lt!29561)))))))

(declare-fun d!26568 () Bool)

(assert (=> d!26568 e!59779))

(declare-fun res!51684 () Bool)

(assert (=> d!26568 (=> (not res!51684) (not e!59779))))

(assert (=> d!26568 (= res!51684 e!59777)))

(declare-fun c!25930 () Bool)

(assert (=> d!26568 (= c!25930 (> (size!1514 (_1!1135 lt!30356)) 0))))

(assert (=> d!26568 (= lt!30356 e!59778)))

(declare-fun c!25929 () Bool)

(assert (=> d!26568 (= c!25929 ((_ is Some!196) lt!30357))))

(assert (=> d!26568 (= lt!30357 (maxPrefixZipperSequence!56 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29561))))))

(assert (=> d!26568 (= (lexRec!60 thiss!11428 rules!1152 (_2!1139 (v!13005 lt!29561))) lt!30356)))

(assert (= (and d!26568 c!25929) b!107763))

(assert (= (and d!26568 (not c!25929)) b!107766))

(assert (= (and d!26568 c!25930) b!107768))

(assert (= (and d!26568 (not c!25930)) b!107767))

(assert (= (and b!107768 res!51683) b!107765))

(assert (= (and d!26568 res!51684) b!107769))

(assert (= (and b!107769 res!51685) b!107764))

(declare-fun m!96328 () Bool)

(assert (=> b!107763 m!96328))

(declare-fun m!96330 () Bool)

(assert (=> b!107763 m!96330))

(declare-fun m!96332 () Bool)

(assert (=> b!107769 m!96332))

(declare-fun m!96334 () Bool)

(assert (=> b!107769 m!96334))

(assert (=> b!107769 m!96334))

(declare-fun m!96336 () Bool)

(assert (=> b!107769 m!96336))

(declare-fun m!96338 () Bool)

(assert (=> b!107768 m!96338))

(declare-fun m!96340 () Bool)

(assert (=> b!107768 m!96340))

(declare-fun m!96342 () Bool)

(assert (=> b!107764 m!96342))

(assert (=> b!107764 m!96334))

(assert (=> b!107764 m!96334))

(assert (=> b!107764 m!96336))

(declare-fun m!96344 () Bool)

(assert (=> d!26568 m!96344))

(declare-fun m!96346 () Bool)

(assert (=> d!26568 m!96346))

(declare-fun m!96348 () Bool)

(assert (=> b!107765 m!96348))

(assert (=> b!107767 m!96342))

(assert (=> b!107767 m!96334))

(assert (=> b!105868 d!26568))

(assert (=> b!105515 d!26400))

(assert (=> b!105515 d!26402))

(declare-fun d!26570 () Bool)

(declare-fun lt!30360 () Bool)

(declare-fun content!150 (List!1712) (InoxSet Rule!546))

(assert (=> d!26570 (= lt!30360 (select (content!150 rules!1152) (rule!876 (_1!1140 (get!438 lt!29476)))))))

(declare-fun e!59785 () Bool)

(assert (=> d!26570 (= lt!30360 e!59785)))

(declare-fun res!51690 () Bool)

(assert (=> d!26570 (=> (not res!51690) (not e!59785))))

(assert (=> d!26570 (= res!51690 ((_ is Cons!1706) rules!1152))))

(assert (=> d!26570 (= (contains!277 rules!1152 (rule!876 (_1!1140 (get!438 lt!29476)))) lt!30360)))

(declare-fun b!107774 () Bool)

(declare-fun e!59786 () Bool)

(assert (=> b!107774 (= e!59785 e!59786)))

(declare-fun res!51691 () Bool)

(assert (=> b!107774 (=> res!51691 e!59786)))

(assert (=> b!107774 (= res!51691 (= (h!7103 rules!1152) (rule!876 (_1!1140 (get!438 lt!29476)))))))

(declare-fun b!107775 () Bool)

(assert (=> b!107775 (= e!59786 (contains!277 (t!21401 rules!1152) (rule!876 (_1!1140 (get!438 lt!29476)))))))

(assert (= (and d!26570 res!51690) b!107774))

(assert (= (and b!107774 (not res!51691)) b!107775))

(declare-fun m!96350 () Bool)

(assert (=> d!26570 m!96350))

(declare-fun m!96352 () Bool)

(assert (=> d!26570 m!96352))

(declare-fun m!96354 () Bool)

(assert (=> b!107775 m!96354))

(assert (=> b!105699 d!26570))

(assert (=> b!105699 d!26160))

(assert (=> b!105403 d!26414))

(assert (=> b!105403 d!25282))

(assert (=> b!105403 d!25284))

(declare-fun d!26572 () Bool)

(assert (=> d!26572 (= (inv!2086 (xs!3131 (left!1303 (c!25296 input!576)))) (<= (size!1519 (innerList!598 (xs!3131 (left!1303 (c!25296 input!576))))) 2147483647))))

(declare-fun bs!10343 () Bool)

(assert (= bs!10343 d!26572))

(declare-fun m!96356 () Bool)

(assert (=> bs!10343 m!96356))

(assert (=> b!105898 d!26572))

(declare-fun d!26574 () Bool)

(declare-fun res!51692 () Bool)

(declare-fun e!59787 () Bool)

(assert (=> d!26574 (=> res!51692 e!59787)))

(assert (=> d!26574 (= res!51692 ((_ is Nil!1706) (t!21401 rules!1152)))))

(assert (=> d!26574 (= (noDuplicateTag!107 thiss!11428 (t!21401 rules!1152) (Cons!1709 (tag!551 (h!7103 rules!1152)) Nil!1709)) e!59787)))

(declare-fun b!107776 () Bool)

(declare-fun e!59788 () Bool)

(assert (=> b!107776 (= e!59787 e!59788)))

(declare-fun res!51693 () Bool)

(assert (=> b!107776 (=> (not res!51693) (not e!59788))))

(assert (=> b!107776 (= res!51693 (not (contains!276 (Cons!1709 (tag!551 (h!7103 rules!1152)) Nil!1709) (tag!551 (h!7103 (t!21401 rules!1152))))))))

(declare-fun b!107777 () Bool)

(assert (=> b!107777 (= e!59788 (noDuplicateTag!107 thiss!11428 (t!21401 (t!21401 rules!1152)) (Cons!1709 (tag!551 (h!7103 (t!21401 rules!1152))) (Cons!1709 (tag!551 (h!7103 rules!1152)) Nil!1709))))))

(assert (= (and d!26574 (not res!51692)) b!107776))

(assert (= (and b!107776 res!51693) b!107777))

(declare-fun m!96358 () Bool)

(assert (=> b!107776 m!96358))

(declare-fun m!96360 () Bool)

(assert (=> b!107777 m!96360))

(assert (=> b!105526 d!26574))

(declare-fun d!26576 () Bool)

(declare-fun c!25931 () Bool)

(assert (=> d!26576 (= c!25931 ((_ is Nil!1707) lt!29524))))

(declare-fun e!59789 () (InoxSet Token!490))

(assert (=> d!26576 (= (content!145 lt!29524) e!59789)))

(declare-fun b!107778 () Bool)

(assert (=> b!107778 (= e!59789 ((as const (Array Token!490 Bool)) false))))

(declare-fun b!107779 () Bool)

(assert (=> b!107779 (= e!59789 ((_ map or) (store ((as const (Array Token!490 Bool)) false) (h!7104 lt!29524) true) (content!145 (t!21402 lt!29524))))))

(assert (= (and d!26576 c!25931) b!107778))

(assert (= (and d!26576 (not c!25931)) b!107779))

(declare-fun m!96362 () Bool)

(assert (=> b!107779 m!96362))

(declare-fun m!96364 () Bool)

(assert (=> b!107779 m!96364))

(assert (=> d!25494 d!26576))

(declare-fun d!26578 () Bool)

(declare-fun c!25932 () Bool)

(assert (=> d!26578 (= c!25932 ((_ is Nil!1707) (++!284 lt!29249 lt!29244)))))

(declare-fun e!59790 () (InoxSet Token!490))

(assert (=> d!26578 (= (content!145 (++!284 lt!29249 lt!29244)) e!59790)))

(declare-fun b!107780 () Bool)

(assert (=> b!107780 (= e!59790 ((as const (Array Token!490 Bool)) false))))

(declare-fun b!107781 () Bool)

(assert (=> b!107781 (= e!59790 ((_ map or) (store ((as const (Array Token!490 Bool)) false) (h!7104 (++!284 lt!29249 lt!29244)) true) (content!145 (t!21402 (++!284 lt!29249 lt!29244)))))))

(assert (= (and d!26578 c!25932) b!107780))

(assert (= (and d!26578 (not c!25932)) b!107781))

(declare-fun m!96366 () Bool)

(assert (=> b!107781 m!96366))

(assert (=> b!107781 m!95510))

(assert (=> d!25494 d!26578))

(assert (=> d!25494 d!26354))

(declare-fun b!107785 () Bool)

(declare-fun e!59792 () List!1711)

(assert (=> b!107785 (= e!59792 (++!283 (list!727 (left!1303 (c!25296 (BalanceConc!1085 Empty!540)))) (list!727 (right!1633 (c!25296 (BalanceConc!1085 Empty!540))))))))

(declare-fun d!26580 () Bool)

(declare-fun c!25933 () Bool)

(assert (=> d!26580 (= c!25933 ((_ is Empty!540) (c!25296 (BalanceConc!1085 Empty!540))))))

(declare-fun e!59791 () List!1711)

(assert (=> d!26580 (= (list!727 (c!25296 (BalanceConc!1085 Empty!540))) e!59791)))

(declare-fun b!107783 () Bool)

(assert (=> b!107783 (= e!59791 e!59792)))

(declare-fun c!25934 () Bool)

(assert (=> b!107783 (= c!25934 ((_ is Leaf!862) (c!25296 (BalanceConc!1085 Empty!540))))))

(declare-fun b!107784 () Bool)

(assert (=> b!107784 (= e!59792 (list!731 (xs!3131 (c!25296 (BalanceConc!1085 Empty!540)))))))

(declare-fun b!107782 () Bool)

(assert (=> b!107782 (= e!59791 Nil!1705)))

(assert (= (and d!26580 c!25933) b!107782))

(assert (= (and d!26580 (not c!25933)) b!107783))

(assert (= (and b!107783 c!25934) b!107784))

(assert (= (and b!107783 (not c!25934)) b!107785))

(assert (=> b!107785 m!94658))

(assert (=> b!107785 m!94670))

(assert (=> b!107785 m!94658))

(assert (=> b!107785 m!94670))

(declare-fun m!96368 () Bool)

(assert (=> b!107785 m!96368))

(declare-fun m!96370 () Bool)

(assert (=> b!107784 m!96370))

(assert (=> d!25506 d!26580))

(declare-fun bs!10344 () Bool)

(declare-fun b!107790 () Bool)

(assert (= bs!10344 (and b!107790 d!25402)))

(declare-fun lambda!1980 () Int)

(assert (=> bs!10344 (= lambda!1980 lambda!1953)))

(declare-fun bs!10345 () Bool)

(assert (= bs!10345 (and b!107790 b!107539)))

(assert (=> bs!10345 (= lambda!1980 lambda!1978)))

(declare-fun bs!10346 () Bool)

(assert (= bs!10346 (and b!107790 d!26536)))

(assert (=> bs!10346 (= (and (= (toChars!819 (transformation!373 (h!7103 rules!1152))) (toChars!819 (transformation!373 (h!7103 (t!21401 rules!1152))))) (= (toValue!960 (transformation!373 (h!7103 rules!1152))) (toValue!960 (transformation!373 (h!7103 (t!21401 rules!1152)))))) (= lambda!1980 lambda!1979))))

(declare-fun b!107793 () Bool)

(declare-fun e!59799 () Bool)

(assert (=> b!107793 (= e!59799 true)))

(declare-fun b!107792 () Bool)

(declare-fun e!59798 () Bool)

(assert (=> b!107792 (= e!59798 e!59799)))

(assert (=> b!107790 e!59798))

(assert (= b!107792 b!107793))

(assert (= b!107790 b!107792))

(assert (=> b!107793 (< (dynLambda!533 order!833 (toValue!960 (transformation!373 (h!7103 rules!1152)))) (dynLambda!536 order!839 lambda!1980))))

(assert (=> b!107793 (< (dynLambda!535 order!837 (toChars!819 (transformation!373 (h!7103 rules!1152)))) (dynLambda!536 order!839 lambda!1980))))

(declare-fun b!107786 () Bool)

(declare-fun e!59795 () Option!197)

(assert (=> b!107786 (= e!59795 None!196)))

(declare-fun e!59796 () Bool)

(declare-fun lt!30363 () Option!197)

(declare-fun b!107787 () Bool)

(assert (=> b!107787 (= e!59796 (= (list!723 (_2!1139 (get!437 lt!30363))) (_2!1140 (get!438 (maxPrefixOneRule!44 thiss!11428 (h!7103 rules!1152) (list!723 lt!29233))))))))

(declare-fun b!107788 () Bool)

(declare-fun e!59793 () Bool)

(declare-fun lt!30368 () List!1711)

(assert (=> b!107788 (= e!59793 (matchR!48 (regex!373 (h!7103 rules!1152)) (_1!1143 (findLongestMatchInner!33 (regex!373 (h!7103 rules!1152)) Nil!1705 (size!1519 Nil!1705) lt!30368 lt!30368 (size!1519 lt!30368)))))))

(declare-fun b!107789 () Bool)

(declare-fun e!59797 () Bool)

(assert (=> b!107789 (= e!59797 e!59796)))

(declare-fun res!51694 () Bool)

(assert (=> b!107789 (=> (not res!51694) (not e!59796))))

(assert (=> b!107789 (= res!51694 (= (_1!1139 (get!437 lt!30363)) (_1!1140 (get!438 (maxPrefixOneRule!44 thiss!11428 (h!7103 rules!1152) (list!723 lt!29233))))))))

(declare-fun lt!30364 () tuple2!1874)

(assert (=> b!107790 (= e!59795 (Some!196 (tuple2!1865 (Token!491 (apply!268 (transformation!373 (h!7103 rules!1152)) (_1!1144 lt!30364)) (h!7103 rules!1152) (size!1513 (_1!1144 lt!30364)) (list!723 (_1!1144 lt!30364))) (_2!1144 lt!30364))))))

(assert (=> b!107790 (= lt!30368 (list!723 lt!29233))))

(declare-fun lt!30369 () Unit!1124)

(assert (=> b!107790 (= lt!30369 (longestMatchIsAcceptedByMatchOrIsEmpty!34 (regex!373 (h!7103 rules!1152)) lt!30368))))

(declare-fun res!51697 () Bool)

(assert (=> b!107790 (= res!51697 (isEmpty!807 (_1!1143 (findLongestMatchInner!33 (regex!373 (h!7103 rules!1152)) Nil!1705 (size!1519 Nil!1705) lt!30368 lt!30368 (size!1519 lt!30368)))))))

(assert (=> b!107790 (=> res!51697 e!59793)))

(assert (=> b!107790 e!59793))

(declare-fun lt!30365 () Unit!1124)

(assert (=> b!107790 (= lt!30365 lt!30369)))

(declare-fun lt!30367 () Unit!1124)

(assert (=> b!107790 (= lt!30367 (lemmaInv!12 (transformation!373 (h!7103 rules!1152))))))

(declare-fun lt!30361 () Unit!1124)

(assert (=> b!107790 (= lt!30361 (ForallOf!9 lambda!1980 (_1!1144 lt!30364)))))

(declare-fun lt!30370 () Unit!1124)

(assert (=> b!107790 (= lt!30370 (ForallOf!9 lambda!1980 (seqFromList!204 (list!723 (_1!1144 lt!30364)))))))

(declare-fun lt!30362 () Option!197)

(assert (=> b!107790 (= lt!30362 (Some!196 (tuple2!1865 (Token!491 (apply!268 (transformation!373 (h!7103 rules!1152)) (_1!1144 lt!30364)) (h!7103 rules!1152) (size!1513 (_1!1144 lt!30364)) (list!723 (_1!1144 lt!30364))) (_2!1144 lt!30364))))))

(declare-fun lt!30366 () Unit!1124)

(assert (=> b!107790 (= lt!30366 (lemmaEqSameImage!9 (transformation!373 (h!7103 rules!1152)) (_1!1144 lt!30364) (seqFromList!204 (list!723 (_1!1144 lt!30364)))))))

(declare-fun d!26582 () Bool)

(declare-fun e!59794 () Bool)

(assert (=> d!26582 e!59794))

(declare-fun res!51696 () Bool)

(assert (=> d!26582 (=> (not res!51696) (not e!59794))))

(assert (=> d!26582 (= res!51696 (= (isDefined!71 lt!30363) (isDefined!72 (maxPrefixOneRule!44 thiss!11428 (h!7103 rules!1152) (list!723 lt!29233)))))))

(assert (=> d!26582 (= lt!30363 e!59795)))

(declare-fun c!25935 () Bool)

(assert (=> d!26582 (= c!25935 (isEmpty!808 (_1!1144 lt!30364)))))

(assert (=> d!26582 (= lt!30364 (findLongestMatchWithZipperSequence!9 (regex!373 (h!7103 rules!1152)) lt!29233))))

(assert (=> d!26582 (ruleValid!48 thiss!11428 (h!7103 rules!1152))))

(assert (=> d!26582 (= (maxPrefixOneRuleZipperSequence!18 thiss!11428 (h!7103 rules!1152) lt!29233) lt!30363)))

(declare-fun b!107791 () Bool)

(assert (=> b!107791 (= e!59794 e!59797)))

(declare-fun res!51695 () Bool)

(assert (=> b!107791 (=> res!51695 e!59797)))

(assert (=> b!107791 (= res!51695 (not (isDefined!71 lt!30363)))))

(assert (= (and d!26582 c!25935) b!107786))

(assert (= (and d!26582 (not c!25935)) b!107790))

(assert (= (and b!107790 (not res!51697)) b!107788))

(assert (= (and d!26582 res!51696) b!107791))

(assert (= (and b!107791 (not res!51695)) b!107789))

(assert (= (and b!107789 res!51694) b!107787))

(declare-fun m!96372 () Bool)

(assert (=> d!26582 m!96372))

(declare-fun m!96374 () Bool)

(assert (=> d!26582 m!96374))

(assert (=> d!26582 m!94866))

(assert (=> d!26582 m!92712))

(assert (=> d!26582 m!95606))

(assert (=> d!26582 m!92712))

(assert (=> d!26582 m!95606))

(declare-fun m!96376 () Bool)

(assert (=> d!26582 m!96376))

(declare-fun m!96378 () Bool)

(assert (=> d!26582 m!96378))

(declare-fun m!96380 () Bool)

(assert (=> b!107790 m!96380))

(declare-fun m!96382 () Bool)

(assert (=> b!107790 m!96382))

(declare-fun m!96384 () Bool)

(assert (=> b!107790 m!96384))

(declare-fun m!96386 () Bool)

(assert (=> b!107790 m!96386))

(declare-fun m!96388 () Bool)

(assert (=> b!107790 m!96388))

(declare-fun m!96390 () Bool)

(assert (=> b!107790 m!96390))

(declare-fun m!96392 () Bool)

(assert (=> b!107790 m!96392))

(declare-fun m!96394 () Bool)

(assert (=> b!107790 m!96394))

(assert (=> b!107790 m!92712))

(assert (=> b!107790 m!95036))

(assert (=> b!107790 m!96386))

(declare-fun m!96396 () Bool)

(assert (=> b!107790 m!96396))

(assert (=> b!107790 m!96382))

(declare-fun m!96398 () Bool)

(assert (=> b!107790 m!96398))

(declare-fun m!96400 () Bool)

(assert (=> b!107790 m!96400))

(assert (=> b!107790 m!96400))

(assert (=> b!107790 m!96382))

(assert (=> b!107790 m!95880))

(assert (=> b!107790 m!95036))

(declare-fun m!96402 () Bool)

(assert (=> b!107787 m!96402))

(assert (=> b!107787 m!92712))

(assert (=> b!107787 m!95606))

(assert (=> b!107787 m!95606))

(declare-fun m!96404 () Bool)

(assert (=> b!107787 m!96404))

(declare-fun m!96406 () Bool)

(assert (=> b!107787 m!96406))

(assert (=> b!107787 m!92712))

(assert (=> b!107791 m!96372))

(assert (=> b!107789 m!96402))

(assert (=> b!107789 m!92712))

(assert (=> b!107789 m!92712))

(assert (=> b!107789 m!95606))

(assert (=> b!107789 m!95606))

(assert (=> b!107789 m!96404))

(assert (=> b!107788 m!95036))

(assert (=> b!107788 m!96386))

(assert (=> b!107788 m!95036))

(assert (=> b!107788 m!96386))

(assert (=> b!107788 m!96396))

(declare-fun m!96408 () Bool)

(assert (=> b!107788 m!96408))

(assert (=> bm!4555 d!26582))

(declare-fun d!26584 () Bool)

(assert (=> d!26584 (= (list!731 (xs!3131 (c!25296 (_2!1135 lt!29080)))) (innerList!598 (xs!3131 (c!25296 (_2!1135 lt!29080)))))))

(assert (=> b!105575 d!26584))

(declare-fun b!107794 () Bool)

(declare-fun res!51701 () Bool)

(declare-fun e!59804 () Bool)

(assert (=> b!107794 (=> (not res!51701) (not e!59804))))

(declare-fun e!59803 () Bool)

(assert (=> b!107794 (= res!51701 e!59803)))

(declare-fun res!51700 () Bool)

(assert (=> b!107794 (=> res!51700 e!59803)))

(declare-fun lt!30376 () Option!197)

(assert (=> b!107794 (= res!51700 (not (isDefined!71 lt!30376)))))

(declare-fun b!107795 () Bool)

(declare-fun e!59801 () Bool)

(declare-fun e!59805 () Bool)

(assert (=> b!107795 (= e!59801 e!59805)))

(declare-fun res!51703 () Bool)

(assert (=> b!107795 (=> (not res!51703) (not e!59805))))

(assert (=> b!107795 (= res!51703 (= (_1!1139 (get!437 lt!30376)) (_1!1140 (get!438 (maxPrefix!93 thiss!11428 (t!21401 rules!1152) (list!723 input!576))))))))

(declare-fun b!107796 () Bool)

(assert (=> b!107796 (= e!59805 (= (list!723 (_2!1139 (get!437 lt!30376))) (_2!1140 (get!438 (maxPrefix!93 thiss!11428 (t!21401 rules!1152) (list!723 input!576))))))))

(declare-fun e!59802 () Bool)

(declare-fun b!107797 () Bool)

(assert (=> b!107797 (= e!59802 (= (list!723 (_2!1139 (get!437 lt!30376))) (_2!1140 (get!438 (maxPrefixZipper!17 thiss!11428 (t!21401 rules!1152) (list!723 input!576))))))))

(declare-fun call!4763 () Option!197)

(declare-fun bm!4758 () Bool)

(assert (=> bm!4758 (= call!4763 (maxPrefixOneRuleZipperSequence!18 thiss!11428 (h!7103 (t!21401 rules!1152)) input!576))))

(declare-fun d!26586 () Bool)

(assert (=> d!26586 e!59804))

(declare-fun res!51699 () Bool)

(assert (=> d!26586 (=> (not res!51699) (not e!59804))))

(assert (=> d!26586 (= res!51699 (= (isDefined!71 lt!30376) (isDefined!72 (maxPrefixZipper!17 thiss!11428 (t!21401 rules!1152) (list!723 input!576)))))))

(declare-fun e!59800 () Option!197)

(assert (=> d!26586 (= lt!30376 e!59800)))

(declare-fun c!25936 () Bool)

(assert (=> d!26586 (= c!25936 (and ((_ is Cons!1706) (t!21401 rules!1152)) ((_ is Nil!1706) (t!21401 (t!21401 rules!1152)))))))

(declare-fun lt!30377 () Unit!1124)

(declare-fun lt!30375 () Unit!1124)

(assert (=> d!26586 (= lt!30377 lt!30375)))

(declare-fun lt!30372 () List!1711)

(declare-fun lt!30371 () List!1711)

(assert (=> d!26586 (isPrefix!51 lt!30372 lt!30371)))

(assert (=> d!26586 (= lt!30375 (lemmaIsPrefixRefl!51 lt!30372 lt!30371))))

(assert (=> d!26586 (= lt!30371 (list!723 input!576))))

(assert (=> d!26586 (= lt!30372 (list!723 input!576))))

(assert (=> d!26586 (rulesValidInductive!84 thiss!11428 (t!21401 rules!1152))))

(assert (=> d!26586 (= (maxPrefixZipperSequence!56 thiss!11428 (t!21401 rules!1152) input!576) lt!30376)))

(declare-fun b!107798 () Bool)

(assert (=> b!107798 (= e!59804 e!59801)))

(declare-fun res!51702 () Bool)

(assert (=> b!107798 (=> res!51702 e!59801)))

(assert (=> b!107798 (= res!51702 (not (isDefined!71 lt!30376)))))

(declare-fun b!107799 () Bool)

(assert (=> b!107799 (= e!59803 e!59802)))

(declare-fun res!51698 () Bool)

(assert (=> b!107799 (=> (not res!51698) (not e!59802))))

(assert (=> b!107799 (= res!51698 (= (_1!1139 (get!437 lt!30376)) (_1!1140 (get!438 (maxPrefixZipper!17 thiss!11428 (t!21401 rules!1152) (list!723 input!576))))))))

(declare-fun b!107800 () Bool)

(declare-fun lt!30373 () Option!197)

(declare-fun lt!30374 () Option!197)

(assert (=> b!107800 (= e!59800 (ite (and ((_ is None!196) lt!30373) ((_ is None!196) lt!30374)) None!196 (ite ((_ is None!196) lt!30374) lt!30373 (ite ((_ is None!196) lt!30373) lt!30374 (ite (>= (size!1512 (_1!1139 (v!13005 lt!30373))) (size!1512 (_1!1139 (v!13005 lt!30374)))) lt!30373 lt!30374)))))))

(assert (=> b!107800 (= lt!30373 call!4763)))

(assert (=> b!107800 (= lt!30374 (maxPrefixZipperSequence!56 thiss!11428 (t!21401 (t!21401 rules!1152)) input!576))))

(declare-fun b!107801 () Bool)

(assert (=> b!107801 (= e!59800 call!4763)))

(assert (= (and d!26586 c!25936) b!107801))

(assert (= (and d!26586 (not c!25936)) b!107800))

(assert (= (or b!107801 b!107800) bm!4758))

(assert (= (and d!26586 res!51699) b!107794))

(assert (= (and b!107794 (not res!51700)) b!107799))

(assert (= (and b!107799 res!51698) b!107797))

(assert (= (and b!107794 res!51701) b!107798))

(assert (= (and b!107798 (not res!51702)) b!107795))

(assert (= (and b!107795 res!51703) b!107796))

(declare-fun m!96410 () Bool)

(assert (=> b!107800 m!96410))

(declare-fun m!96412 () Bool)

(assert (=> b!107796 m!96412))

(assert (=> b!107796 m!91458))

(assert (=> b!107796 m!92394))

(assert (=> b!107796 m!91458))

(assert (=> b!107796 m!92394))

(declare-fun m!96414 () Bool)

(assert (=> b!107796 m!96414))

(declare-fun m!96416 () Bool)

(assert (=> b!107796 m!96416))

(assert (=> b!107799 m!96412))

(assert (=> b!107799 m!91458))

(assert (=> b!107799 m!91458))

(assert (=> b!107799 m!94978))

(assert (=> b!107799 m!94978))

(declare-fun m!96418 () Bool)

(assert (=> b!107799 m!96418))

(assert (=> b!107797 m!96412))

(assert (=> b!107797 m!94978))

(assert (=> b!107797 m!96418))

(assert (=> b!107797 m!96416))

(assert (=> b!107797 m!91458))

(assert (=> b!107797 m!91458))

(assert (=> b!107797 m!94978))

(declare-fun m!96420 () Bool)

(assert (=> bm!4758 m!96420))

(declare-fun m!96422 () Bool)

(assert (=> b!107794 m!96422))

(assert (=> d!26586 m!94978))

(declare-fun m!96424 () Bool)

(assert (=> d!26586 m!96424))

(assert (=> d!26586 m!96422))

(assert (=> d!26586 m!94868))

(declare-fun m!96426 () Bool)

(assert (=> d!26586 m!96426))

(declare-fun m!96428 () Bool)

(assert (=> d!26586 m!96428))

(assert (=> d!26586 m!91458))

(assert (=> d!26586 m!91458))

(assert (=> d!26586 m!94978))

(assert (=> b!107798 m!96422))

(assert (=> b!107795 m!96412))

(assert (=> b!107795 m!91458))

(assert (=> b!107795 m!91458))

(assert (=> b!107795 m!92394))

(assert (=> b!107795 m!92394))

(assert (=> b!107795 m!96414))

(assert (=> b!105501 d!26586))

(declare-fun bs!10347 () Bool)

(declare-fun d!26588 () Bool)

(assert (= bs!10347 (and d!26588 d!25382)))

(declare-fun lambda!1981 () Int)

(assert (=> bs!10347 (= (= (toValue!960 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toValue!960 (transformation!373 (h!7103 rules!1152)))) (= lambda!1981 lambda!1950))))

(assert (=> d!26588 true))

(assert (=> d!26588 (< (dynLambda!533 order!833 (toValue!960 (transformation!373 (h!7103 (t!21401 rules!1152))))) (dynLambda!534 order!835 lambda!1981))))

(assert (=> d!26588 (= (equivClasses!94 (toChars!819 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toValue!960 (transformation!373 (h!7103 (t!21401 rules!1152))))) (Forall2!65 lambda!1981))))

(declare-fun bs!10348 () Bool)

(assert (= bs!10348 d!26588))

(declare-fun m!96430 () Bool)

(assert (=> bs!10348 m!96430))

(assert (=> b!105755 d!26588))

(declare-fun d!26590 () Bool)

(declare-fun lt!30378 () Int)

(assert (=> d!26590 (= lt!30378 (size!1519 (list!723 (_2!1135 lt!29560))))))

(assert (=> d!26590 (= lt!30378 (size!1520 (c!25296 (_2!1135 lt!29560))))))

(assert (=> d!26590 (= (size!1513 (_2!1135 lt!29560)) lt!30378)))

(declare-fun bs!10349 () Bool)

(assert (= bs!10349 d!26590))

(assert (=> bs!10349 m!92758))

(assert (=> bs!10349 m!92758))

(declare-fun m!96432 () Bool)

(assert (=> bs!10349 m!96432))

(declare-fun m!96434 () Bool)

(assert (=> bs!10349 m!96434))

(assert (=> b!105873 d!26590))

(declare-fun d!26592 () Bool)

(declare-fun lt!30379 () Int)

(assert (=> d!26592 (= lt!30379 (size!1519 (list!723 (_2!1139 (v!13005 lt!29240)))))))

(assert (=> d!26592 (= lt!30379 (size!1520 (c!25296 (_2!1139 (v!13005 lt!29240)))))))

(assert (=> d!26592 (= (size!1513 (_2!1139 (v!13005 lt!29240))) lt!30379)))

(declare-fun bs!10350 () Bool)

(assert (= bs!10350 d!26592))

(assert (=> bs!10350 m!92750))

(assert (=> bs!10350 m!92750))

(assert (=> bs!10350 m!95962))

(declare-fun m!96436 () Bool)

(assert (=> bs!10350 m!96436))

(assert (=> b!105873 d!26592))

(declare-fun d!26594 () Bool)

(assert (=> d!26594 (= (list!732 (xs!3132 (c!25298 (_1!1135 lt!29080)))) (innerList!599 (xs!3132 (c!25298 (_1!1135 lt!29080)))))))

(assert (=> b!105597 d!26594))

(declare-fun d!26596 () Bool)

(assert (=> d!26596 (= (list!724 lt!29564) (list!728 (c!25298 lt!29564)))))

(declare-fun bs!10351 () Bool)

(assert (= bs!10351 d!26596))

(declare-fun m!96438 () Bool)

(assert (=> bs!10351 m!96438))

(assert (=> b!105877 d!26596))

(declare-fun d!26598 () Bool)

(assert (=> d!26598 (= (list!724 (_1!1135 lt!29235)) (list!728 (c!25298 (_1!1135 lt!29235))))))

(declare-fun bs!10352 () Bool)

(assert (= bs!10352 d!26598))

(declare-fun m!96440 () Bool)

(assert (=> bs!10352 m!96440))

(assert (=> b!105877 d!26598))

(declare-fun d!26600 () Bool)

(declare-fun choose!1410 (Int) Bool)

(assert (=> d!26600 (= (Forall!77 lambda!1953) (choose!1410 lambda!1953))))

(declare-fun bs!10353 () Bool)

(assert (= bs!10353 d!26600))

(declare-fun m!96442 () Bool)

(assert (=> bs!10353 m!96442))

(assert (=> d!25402 d!26600))

(declare-fun b!107802 () Bool)

(declare-fun res!51704 () Bool)

(declare-fun e!59807 () Bool)

(assert (=> b!107802 (=> (not res!51704) (not e!59807))))

(assert (=> b!107802 (= res!51704 (<= (- (height!64 (left!1303 (right!1633 (c!25296 input!576)))) (height!64 (right!1633 (right!1633 (c!25296 input!576))))) 1))))

(declare-fun b!107803 () Bool)

(declare-fun res!51707 () Bool)

(assert (=> b!107803 (=> (not res!51707) (not e!59807))))

(assert (=> b!107803 (= res!51707 (isBalanced!149 (left!1303 (right!1633 (c!25296 input!576)))))))

(declare-fun b!107804 () Bool)

(assert (=> b!107804 (= e!59807 (not (isEmpty!800 (right!1633 (right!1633 (c!25296 input!576))))))))

(declare-fun b!107805 () Bool)

(declare-fun e!59806 () Bool)

(assert (=> b!107805 (= e!59806 e!59807)))

(declare-fun res!51705 () Bool)

(assert (=> b!107805 (=> (not res!51705) (not e!59807))))

(assert (=> b!107805 (= res!51705 (<= (- 1) (- (height!64 (left!1303 (right!1633 (c!25296 input!576)))) (height!64 (right!1633 (right!1633 (c!25296 input!576)))))))))

(declare-fun b!107806 () Bool)

(declare-fun res!51706 () Bool)

(assert (=> b!107806 (=> (not res!51706) (not e!59807))))

(assert (=> b!107806 (= res!51706 (not (isEmpty!800 (left!1303 (right!1633 (c!25296 input!576))))))))

(declare-fun b!107807 () Bool)

(declare-fun res!51708 () Bool)

(assert (=> b!107807 (=> (not res!51708) (not e!59807))))

(assert (=> b!107807 (= res!51708 (isBalanced!149 (right!1633 (right!1633 (c!25296 input!576)))))))

(declare-fun d!26602 () Bool)

(declare-fun res!51709 () Bool)

(assert (=> d!26602 (=> res!51709 e!59806)))

(assert (=> d!26602 (= res!51709 (not ((_ is Node!540) (right!1633 (c!25296 input!576)))))))

(assert (=> d!26602 (= (isBalanced!149 (right!1633 (c!25296 input!576))) e!59806)))

(assert (= (and d!26602 (not res!51709)) b!107805))

(assert (= (and b!107805 res!51705) b!107802))

(assert (= (and b!107802 res!51704) b!107803))

(assert (= (and b!107803 res!51707) b!107807))

(assert (= (and b!107807 res!51708) b!107806))

(assert (= (and b!107806 res!51706) b!107804))

(assert (=> b!107802 m!95502))

(assert (=> b!107802 m!95504))

(declare-fun m!96444 () Bool)

(assert (=> b!107807 m!96444))

(declare-fun m!96446 () Bool)

(assert (=> b!107804 m!96446))

(assert (=> b!107805 m!95502))

(assert (=> b!107805 m!95504))

(declare-fun m!96448 () Bool)

(assert (=> b!107806 m!96448))

(declare-fun m!96450 () Bool)

(assert (=> b!107803 m!96450))

(assert (=> b!105520 d!26602))

(declare-fun d!26604 () Bool)

(declare-fun lt!30380 () Bool)

(assert (=> d!26604 (= lt!30380 (isEmpty!797 (list!724 (_1!1135 lt!29540))))))

(assert (=> d!26604 (= lt!30380 (isEmpty!798 (c!25298 (_1!1135 lt!29540))))))

(assert (=> d!26604 (= (isEmpty!794 (_1!1135 lt!29540)) lt!30380)))

(declare-fun bs!10354 () Bool)

(assert (= bs!10354 d!26604))

(assert (=> bs!10354 m!92642))

(assert (=> bs!10354 m!92642))

(declare-fun m!96452 () Bool)

(assert (=> bs!10354 m!96452))

(declare-fun m!96454 () Bool)

(assert (=> bs!10354 m!96454))

(assert (=> b!105832 d!26604))

(declare-fun d!26606 () Bool)

(assert (=> d!26606 (= (list!724 (_1!1135 lt!29332)) (list!728 (c!25298 (_1!1135 lt!29332))))))

(declare-fun bs!10355 () Bool)

(assert (= bs!10355 d!26606))

(declare-fun m!96456 () Bool)

(assert (=> bs!10355 m!96456))

(assert (=> b!105408 d!26606))

(assert (=> b!105408 d!25282))

(assert (=> b!105408 d!25284))

(declare-fun d!26608 () Bool)

(assert (=> d!26608 (= (list!723 lt!29538) (list!727 (c!25296 lt!29538)))))

(declare-fun bs!10356 () Bool)

(assert (= bs!10356 d!26608))

(declare-fun m!96458 () Bool)

(assert (=> bs!10356 m!96458))

(assert (=> d!25514 d!26608))

(assert (=> b!105700 d!26162))

(assert (=> b!105700 d!26164))

(assert (=> b!105700 d!26160))

(assert (=> b!105846 d!26210))

(assert (=> b!105846 d!26542))

(assert (=> b!105846 d!25500))

(declare-fun d!26610 () Bool)

(declare-fun lt!30381 () Int)

(assert (=> d!26610 (>= lt!30381 0)))

(declare-fun e!59808 () Int)

(assert (=> d!26610 (= lt!30381 e!59808)))

(declare-fun c!25937 () Bool)

(assert (=> d!26610 (= c!25937 ((_ is Nil!1707) (_1!1136 lt!29295)))))

(assert (=> d!26610 (= (size!1521 (_1!1136 lt!29295)) lt!30381)))

(declare-fun b!107808 () Bool)

(assert (=> b!107808 (= e!59808 0)))

(declare-fun b!107809 () Bool)

(assert (=> b!107809 (= e!59808 (+ 1 (size!1521 (t!21402 (_1!1136 lt!29295)))))))

(assert (= (and d!26610 c!25937) b!107808))

(assert (= (and d!26610 (not c!25937)) b!107809))

(declare-fun m!96460 () Bool)

(assert (=> b!107809 m!96460))

(assert (=> d!25320 d!26610))

(declare-fun b!107810 () Bool)

(declare-fun res!51711 () Bool)

(declare-fun e!59811 () Bool)

(assert (=> b!107810 (=> (not res!51711) (not e!59811))))

(declare-fun lt!30384 () Option!198)

(assert (=> b!107810 (= res!51711 (< (size!1519 (_2!1140 (get!438 lt!30384))) (size!1519 (_2!1140 (v!13006 lt!29268)))))))

(declare-fun b!107811 () Bool)

(declare-fun res!51714 () Bool)

(assert (=> b!107811 (=> (not res!51714) (not e!59811))))

(assert (=> b!107811 (= res!51714 (= (++!283 (list!723 (charsOf!88 (_1!1140 (get!438 lt!30384)))) (_2!1140 (get!438 lt!30384))) (_2!1140 (v!13006 lt!29268))))))

(declare-fun b!107812 () Bool)

(declare-fun res!51715 () Bool)

(assert (=> b!107812 (=> (not res!51715) (not e!59811))))

(assert (=> b!107812 (= res!51715 (matchR!48 (regex!373 (rule!876 (_1!1140 (get!438 lt!30384)))) (list!723 (charsOf!88 (_1!1140 (get!438 lt!30384))))))))

(declare-fun b!107813 () Bool)

(assert (=> b!107813 (= e!59811 (contains!277 rules!1152 (rule!876 (_1!1140 (get!438 lt!30384)))))))

(declare-fun b!107814 () Bool)

(declare-fun res!51712 () Bool)

(assert (=> b!107814 (=> (not res!51712) (not e!59811))))

(assert (=> b!107814 (= res!51712 (= (list!723 (charsOf!88 (_1!1140 (get!438 lt!30384)))) (originalCharacters!416 (_1!1140 (get!438 lt!30384)))))))

(declare-fun b!107815 () Bool)

(declare-fun e!59809 () Bool)

(assert (=> b!107815 (= e!59809 e!59811)))

(declare-fun res!51716 () Bool)

(assert (=> b!107815 (=> (not res!51716) (not e!59811))))

(assert (=> b!107815 (= res!51716 (isDefined!72 lt!30384))))

(declare-fun b!107816 () Bool)

(declare-fun res!51710 () Bool)

(assert (=> b!107816 (=> (not res!51710) (not e!59811))))

(assert (=> b!107816 (= res!51710 (= (value!13518 (_1!1140 (get!438 lt!30384))) (apply!268 (transformation!373 (rule!876 (_1!1140 (get!438 lt!30384)))) (seqFromList!204 (originalCharacters!416 (_1!1140 (get!438 lt!30384)))))))))

(declare-fun bm!4759 () Bool)

(declare-fun call!4764 () Option!198)

(assert (=> bm!4759 (= call!4764 (maxPrefixOneRule!44 thiss!11428 (h!7103 rules!1152) (_2!1140 (v!13006 lt!29268))))))

(declare-fun b!107817 () Bool)

(declare-fun e!59810 () Option!198)

(assert (=> b!107817 (= e!59810 call!4764)))

(declare-fun d!26612 () Bool)

(assert (=> d!26612 e!59809))

(declare-fun res!51713 () Bool)

(assert (=> d!26612 (=> res!51713 e!59809)))

(assert (=> d!26612 (= res!51713 (isEmpty!801 lt!30384))))

(assert (=> d!26612 (= lt!30384 e!59810)))

(declare-fun c!25938 () Bool)

(assert (=> d!26612 (= c!25938 (and ((_ is Cons!1706) rules!1152) ((_ is Nil!1706) (t!21401 rules!1152))))))

(declare-fun lt!30383 () Unit!1124)

(declare-fun lt!30382 () Unit!1124)

(assert (=> d!26612 (= lt!30383 lt!30382)))

(assert (=> d!26612 (isPrefix!51 (_2!1140 (v!13006 lt!29268)) (_2!1140 (v!13006 lt!29268)))))

(assert (=> d!26612 (= lt!30382 (lemmaIsPrefixRefl!51 (_2!1140 (v!13006 lt!29268)) (_2!1140 (v!13006 lt!29268))))))

(assert (=> d!26612 (rulesValidInductive!84 thiss!11428 rules!1152)))

(assert (=> d!26612 (= (maxPrefix!93 thiss!11428 rules!1152 (_2!1140 (v!13006 lt!29268))) lt!30384)))

(declare-fun b!107818 () Bool)

(declare-fun lt!30385 () Option!198)

(declare-fun lt!30386 () Option!198)

(assert (=> b!107818 (= e!59810 (ite (and ((_ is None!197) lt!30385) ((_ is None!197) lt!30386)) None!197 (ite ((_ is None!197) lt!30386) lt!30385 (ite ((_ is None!197) lt!30385) lt!30386 (ite (>= (size!1512 (_1!1140 (v!13006 lt!30385))) (size!1512 (_1!1140 (v!13006 lt!30386)))) lt!30385 lt!30386)))))))

(assert (=> b!107818 (= lt!30385 call!4764)))

(assert (=> b!107818 (= lt!30386 (maxPrefix!93 thiss!11428 (t!21401 rules!1152) (_2!1140 (v!13006 lt!29268))))))

(assert (= (and d!26612 c!25938) b!107817))

(assert (= (and d!26612 (not c!25938)) b!107818))

(assert (= (or b!107817 b!107818) bm!4759))

(assert (= (and d!26612 (not res!51713)) b!107815))

(assert (= (and b!107815 res!51716) b!107814))

(assert (= (and b!107814 res!51712) b!107810))

(assert (= (and b!107810 res!51711) b!107811))

(assert (= (and b!107811 res!51714) b!107816))

(assert (= (and b!107816 res!51710) b!107812))

(assert (= (and b!107812 res!51715) b!107813))

(declare-fun m!96462 () Bool)

(assert (=> d!26612 m!96462))

(declare-fun m!96464 () Bool)

(assert (=> d!26612 m!96464))

(declare-fun m!96466 () Bool)

(assert (=> d!26612 m!96466))

(assert (=> d!26612 m!92158))

(declare-fun m!96468 () Bool)

(assert (=> b!107812 m!96468))

(declare-fun m!96470 () Bool)

(assert (=> b!107812 m!96470))

(assert (=> b!107812 m!96470))

(declare-fun m!96472 () Bool)

(assert (=> b!107812 m!96472))

(assert (=> b!107812 m!96472))

(declare-fun m!96474 () Bool)

(assert (=> b!107812 m!96474))

(assert (=> b!107814 m!96468))

(assert (=> b!107814 m!96470))

(assert (=> b!107814 m!96470))

(assert (=> b!107814 m!96472))

(assert (=> b!107816 m!96468))

(declare-fun m!96476 () Bool)

(assert (=> b!107816 m!96476))

(assert (=> b!107816 m!96476))

(declare-fun m!96478 () Bool)

(assert (=> b!107816 m!96478))

(assert (=> b!107813 m!96468))

(declare-fun m!96480 () Bool)

(assert (=> b!107813 m!96480))

(declare-fun m!96482 () Bool)

(assert (=> b!107818 m!96482))

(declare-fun m!96484 () Bool)

(assert (=> b!107815 m!96484))

(assert (=> b!107811 m!96468))

(assert (=> b!107811 m!96470))

(assert (=> b!107811 m!96470))

(assert (=> b!107811 m!96472))

(assert (=> b!107811 m!96472))

(declare-fun m!96486 () Bool)

(assert (=> b!107811 m!96486))

(assert (=> b!107810 m!96468))

(declare-fun m!96488 () Bool)

(assert (=> b!107810 m!96488))

(assert (=> b!107810 m!91832))

(declare-fun m!96490 () Bool)

(assert (=> bm!4759 m!96490))

(assert (=> d!25320 d!26612))

(declare-fun d!26614 () Bool)

(declare-fun lt!30387 () Int)

(assert (=> d!26614 (>= lt!30387 0)))

(declare-fun e!59812 () Int)

(assert (=> d!26614 (= lt!30387 e!59812)))

(declare-fun c!25939 () Bool)

(assert (=> d!26614 (= c!25939 ((_ is Nil!1705) lt!29546))))

(assert (=> d!26614 (= (size!1519 lt!29546) lt!30387)))

(declare-fun b!107819 () Bool)

(assert (=> b!107819 (= e!59812 0)))

(declare-fun b!107820 () Bool)

(assert (=> b!107820 (= e!59812 (+ 1 (size!1519 (t!21400 lt!29546))))))

(assert (= (and d!26614 c!25939) b!107819))

(assert (= (and d!26614 (not c!25939)) b!107820))

(declare-fun m!96492 () Bool)

(assert (=> b!107820 m!96492))

(assert (=> b!105843 d!26614))

(assert (=> b!105843 d!26558))

(assert (=> b!105843 d!26244))

(declare-fun d!26616 () Bool)

(assert (=> d!26616 (= (list!723 lt!29489) (list!727 (c!25296 lt!29489)))))

(declare-fun bs!10357 () Bool)

(assert (= bs!10357 d!26616))

(declare-fun m!96494 () Bool)

(assert (=> bs!10357 m!96494))

(assert (=> b!105773 d!26616))

(assert (=> b!105773 d!25530))

(assert (=> b!105773 d!25506))

(assert (=> b!105773 d!25490))

(declare-fun d!26618 () Bool)

(declare-fun lt!30388 () Int)

(assert (=> d!26618 (>= lt!30388 0)))

(declare-fun e!59813 () Int)

(assert (=> d!26618 (= lt!30388 e!59813)))

(declare-fun c!25940 () Bool)

(assert (=> d!26618 (= c!25940 ((_ is Nil!1707) lt!29524))))

(assert (=> d!26618 (= (size!1521 lt!29524) lt!30388)))

(declare-fun b!107821 () Bool)

(assert (=> b!107821 (= e!59813 0)))

(declare-fun b!107822 () Bool)

(assert (=> b!107822 (= e!59813 (+ 1 (size!1521 (t!21402 lt!29524))))))

(assert (= (and d!26618 c!25940) b!107821))

(assert (= (and d!26618 (not c!25940)) b!107822))

(declare-fun m!96496 () Bool)

(assert (=> b!107822 m!96496))

(assert (=> b!105798 d!26618))

(declare-fun d!26620 () Bool)

(declare-fun lt!30389 () Int)

(assert (=> d!26620 (>= lt!30389 0)))

(declare-fun e!59814 () Int)

(assert (=> d!26620 (= lt!30389 e!59814)))

(declare-fun c!25941 () Bool)

(assert (=> d!26620 (= c!25941 ((_ is Nil!1707) (++!284 lt!29249 lt!29244)))))

(assert (=> d!26620 (= (size!1521 (++!284 lt!29249 lt!29244)) lt!30389)))

(declare-fun b!107823 () Bool)

(assert (=> b!107823 (= e!59814 0)))

(declare-fun b!107824 () Bool)

(assert (=> b!107824 (= e!59814 (+ 1 (size!1521 (t!21402 (++!284 lt!29249 lt!29244)))))))

(assert (= (and d!26620 c!25941) b!107823))

(assert (= (and d!26620 (not c!25941)) b!107824))

(assert (=> b!107824 m!95516))

(assert (=> b!105798 d!26620))

(assert (=> b!105798 d!26442))

(declare-fun d!26622 () Bool)

(declare-fun lt!30390 () Int)

(assert (=> d!26622 (= lt!30390 (size!1519 (list!723 (_2!1135 lt!29548))))))

(assert (=> d!26622 (= lt!30390 (size!1520 (c!25296 (_2!1135 lt!29548))))))

(assert (=> d!26622 (= (size!1513 (_2!1135 lt!29548)) lt!30390)))

(declare-fun bs!10358 () Bool)

(assert (= bs!10358 d!26622))

(assert (=> bs!10358 m!92688))

(assert (=> bs!10358 m!92688))

(declare-fun m!96498 () Bool)

(assert (=> bs!10358 m!96498))

(declare-fun m!96500 () Bool)

(assert (=> bs!10358 m!96500))

(assert (=> b!105850 d!26622))

(declare-fun d!26624 () Bool)

(declare-fun lt!30391 () Int)

(assert (=> d!26624 (= lt!30391 (size!1519 (list!723 (_2!1139 (v!13005 lt!29247)))))))

(assert (=> d!26624 (= lt!30391 (size!1520 (c!25296 (_2!1139 (v!13005 lt!29247)))))))

(assert (=> d!26624 (= (size!1513 (_2!1139 (v!13005 lt!29247))) lt!30391)))

(declare-fun bs!10359 () Bool)

(assert (= bs!10359 d!26624))

(assert (=> bs!10359 m!91684))

(assert (=> bs!10359 m!91684))

(assert (=> bs!10359 m!96278))

(declare-fun m!96502 () Bool)

(assert (=> bs!10359 m!96502))

(assert (=> b!105850 d!26624))

(declare-fun d!26626 () Bool)

(declare-fun c!25942 () Bool)

(assert (=> d!26626 (= c!25942 ((_ is Nil!1705) lt!29550))))

(declare-fun e!59815 () (InoxSet C!1804))

(assert (=> d!26626 (= (content!146 lt!29550) e!59815)))

(declare-fun b!107825 () Bool)

(assert (=> b!107825 (= e!59815 ((as const (Array C!1804 Bool)) false))))

(declare-fun b!107826 () Bool)

(assert (=> b!107826 (= e!59815 ((_ map or) (store ((as const (Array C!1804 Bool)) false) (h!7102 lt!29550) true) (content!146 (t!21400 lt!29550))))))

(assert (= (and d!26626 c!25942) b!107825))

(assert (= (and d!26626 (not c!25942)) b!107826))

(declare-fun m!96504 () Bool)

(assert (=> b!107826 m!96504))

(declare-fun m!96506 () Bool)

(assert (=> b!107826 m!96506))

(assert (=> d!25530 d!26626))

(declare-fun d!26628 () Bool)

(declare-fun c!25943 () Bool)

(assert (=> d!26628 (= c!25943 ((_ is Nil!1705) (list!723 (BalanceConc!1085 Empty!540))))))

(declare-fun e!59816 () (InoxSet C!1804))

(assert (=> d!26628 (= (content!146 (list!723 (BalanceConc!1085 Empty!540))) e!59816)))

(declare-fun b!107827 () Bool)

(assert (=> b!107827 (= e!59816 ((as const (Array C!1804 Bool)) false))))

(declare-fun b!107828 () Bool)

(assert (=> b!107828 (= e!59816 ((_ map or) (store ((as const (Array C!1804 Bool)) false) (h!7102 (list!723 (BalanceConc!1085 Empty!540))) true) (content!146 (t!21400 (list!723 (BalanceConc!1085 Empty!540))))))))

(assert (= (and d!26628 c!25943) b!107827))

(assert (= (and d!26628 (not c!25943)) b!107828))

(declare-fun m!96508 () Bool)

(assert (=> b!107828 m!96508))

(declare-fun m!96510 () Bool)

(assert (=> b!107828 m!96510))

(assert (=> d!25530 d!26628))

(declare-fun d!26630 () Bool)

(declare-fun c!25944 () Bool)

(assert (=> d!26630 (= c!25944 ((_ is Nil!1705) (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))

(declare-fun e!59817 () (InoxSet C!1804))

(assert (=> d!26630 (= (content!146 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) e!59817)))

(declare-fun b!107829 () Bool)

(assert (=> b!107829 (= e!59817 ((as const (Array C!1804 Bool)) false))))

(declare-fun b!107830 () Bool)

(assert (=> b!107830 (= e!59817 ((_ map or) (store ((as const (Array C!1804 Bool)) false) (h!7102 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247))))) true) (content!146 (t!21400 (list!723 (charsOf!88 (_1!1139 (v!13005 lt!29247))))))))))

(assert (= (and d!26630 c!25944) b!107829))

(assert (= (and d!26630 (not c!25944)) b!107830))

(declare-fun m!96512 () Bool)

(assert (=> b!107830 m!96512))

(declare-fun m!96514 () Bool)

(assert (=> b!107830 m!96514))

(assert (=> d!25530 d!26630))

(declare-fun d!26632 () Bool)

(assert (=> d!26632 (= (list!724 (_1!1135 lt!29540)) (list!728 (c!25298 (_1!1135 lt!29540))))))

(declare-fun bs!10360 () Bool)

(assert (= bs!10360 d!26632))

(declare-fun m!96516 () Bool)

(assert (=> bs!10360 m!96516))

(assert (=> b!105836 d!26632))

(assert (=> b!105836 d!26226))

(assert (=> b!105836 d!26228))

(declare-fun b!107831 () Bool)

(declare-fun e!59818 () Bool)

(declare-fun e!59819 () Bool)

(assert (=> b!107831 (= e!59818 e!59819)))

(declare-fun res!51717 () Bool)

(assert (=> b!107831 (=> (not res!51717) (not e!59819))))

(assert (=> b!107831 (= res!51717 (<= (- 1) (- (height!66 (left!1304 (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240))))) (height!66 (right!1634 (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240))))))))))

(declare-fun b!107832 () Bool)

(assert (=> b!107832 (= e!59819 (not (isEmpty!798 (right!1634 (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240)))))))))

(declare-fun b!107833 () Bool)

(declare-fun res!51722 () Bool)

(assert (=> b!107833 (=> (not res!51722) (not e!59819))))

(assert (=> b!107833 (= res!51722 (isBalanced!151 (right!1634 (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240))))))))

(declare-fun b!107834 () Bool)

(declare-fun res!51721 () Bool)

(assert (=> b!107834 (=> (not res!51721) (not e!59819))))

(assert (=> b!107834 (= res!51721 (isBalanced!151 (left!1304 (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240))))))))

(declare-fun d!26634 () Bool)

(declare-fun res!51720 () Bool)

(assert (=> d!26634 (=> res!51720 e!59818)))

(assert (=> d!26634 (= res!51720 (not ((_ is Node!541) (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240))))))))

(assert (=> d!26634 (= (isBalanced!151 (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240)))) e!59818)))

(declare-fun b!107835 () Bool)

(declare-fun res!51718 () Bool)

(assert (=> b!107835 (=> (not res!51718) (not e!59819))))

(assert (=> b!107835 (= res!51718 (not (isEmpty!798 (left!1304 (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240)))))))))

(declare-fun b!107836 () Bool)

(declare-fun res!51719 () Bool)

(assert (=> b!107836 (=> (not res!51719) (not e!59819))))

(assert (=> b!107836 (= res!51719 (<= (- (height!66 (left!1304 (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240))))) (height!66 (right!1634 (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240)))))) 1))))

(assert (= (and d!26634 (not res!51720)) b!107831))

(assert (= (and b!107831 res!51717) b!107836))

(assert (= (and b!107836 res!51719) b!107834))

(assert (= (and b!107834 res!51721) b!107833))

(assert (= (and b!107833 res!51722) b!107835))

(assert (= (and b!107835 res!51718) b!107832))

(declare-fun m!96518 () Bool)

(assert (=> b!107833 m!96518))

(declare-fun m!96520 () Bool)

(assert (=> b!107836 m!96520))

(declare-fun m!96522 () Bool)

(assert (=> b!107836 m!96522))

(assert (=> b!107831 m!96520))

(assert (=> b!107831 m!96522))

(declare-fun m!96524 () Bool)

(assert (=> b!107832 m!96524))

(declare-fun m!96526 () Bool)

(assert (=> b!107834 m!96526))

(declare-fun m!96528 () Bool)

(assert (=> b!107835 m!96528))

(assert (=> d!25538 d!26634))

(declare-fun d!26636 () Bool)

(declare-fun e!59820 () Bool)

(assert (=> d!26636 e!59820))

(declare-fun res!51723 () Bool)

(assert (=> d!26636 (=> (not res!51723) (not e!59820))))

(declare-fun lt!30392 () Conc!541)

(assert (=> d!26636 (= res!51723 (isBalanced!151 lt!30392))))

(assert (=> d!26636 (= lt!30392 (++!288 (Leaf!863 (fill!33 1 (_1!1139 (v!13005 lt!29240))) 1) (c!25298 (_1!1135 lt!29235))))))

(assert (=> d!26636 (isBalanced!151 (c!25298 (_1!1135 lt!29235)))))

(assert (=> d!26636 (= (prepend!143 (c!25298 (_1!1135 lt!29235)) (_1!1139 (v!13005 lt!29240))) lt!30392)))

(declare-fun b!107837 () Bool)

(assert (=> b!107837 (= e!59820 (= (list!728 lt!30392) (Cons!1707 (_1!1139 (v!13005 lt!29240)) (list!728 (c!25298 (_1!1135 lt!29235))))))))

(assert (= (and d!26636 res!51723) b!107837))

(declare-fun m!96530 () Bool)

(assert (=> d!26636 m!96530))

(declare-fun m!96532 () Bool)

(assert (=> d!26636 m!96532))

(declare-fun m!96534 () Bool)

(assert (=> d!26636 m!96534))

(declare-fun m!96536 () Bool)

(assert (=> d!26636 m!96536))

(declare-fun m!96538 () Bool)

(assert (=> b!107837 m!96538))

(assert (=> b!107837 m!96440))

(assert (=> d!25538 d!26636))

(assert (=> d!25498 d!25508))

(declare-fun d!26638 () Bool)

(assert (=> d!26638 (= (lexList!83 thiss!11428 rules!1152 lt!29254) (tuple2!1859 lt!29234 Nil!1705))))

(assert (=> d!26638 true))

(declare-fun _$42!124 () Unit!1124)

(assert (=> d!26638 (= (choose!1403 thiss!11428 rules!1152 lt!29254 lt!29232 lt!29234 (list!724 (_1!1135 lt!29251)) (list!723 (_2!1135 lt!29251))) _$42!124)))

(declare-fun bs!10361 () Bool)

(assert (= bs!10361 d!26638))

(assert (=> bs!10361 m!91652))

(assert (=> d!25498 d!26638))

(assert (=> d!25498 d!25246))

(declare-fun b!107838 () Bool)

(declare-fun e!59821 () Bool)

(declare-fun tp!58732 () Bool)

(assert (=> b!107838 (= e!59821 (and tp_is_empty!789 tp!58732))))

(assert (=> b!105902 (= tp!58512 e!59821)))

(assert (= (and b!105902 ((_ is Cons!1705) (innerList!598 (xs!3131 (right!1633 (c!25296 input!576)))))) b!107838))

(declare-fun b!107840 () Bool)

(declare-fun e!59822 () Bool)

(declare-fun tp!58736 () Bool)

(declare-fun tp!58737 () Bool)

(assert (=> b!107840 (= e!59822 (and tp!58736 tp!58737))))

(declare-fun b!107839 () Bool)

(assert (=> b!107839 (= e!59822 tp_is_empty!789)))

(declare-fun b!107842 () Bool)

(declare-fun tp!58735 () Bool)

(declare-fun tp!58734 () Bool)

(assert (=> b!107842 (= e!59822 (and tp!58735 tp!58734))))

(declare-fun b!107841 () Bool)

(declare-fun tp!58733 () Bool)

(assert (=> b!107841 (= e!59822 tp!58733)))

(assert (=> b!105929 (= tp!58541 e!59822)))

(assert (= (and b!105929 ((_ is ElementMatch!441) (reg!770 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107839))

(assert (= (and b!105929 ((_ is Concat!805) (reg!770 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107840))

(assert (= (and b!105929 ((_ is Star!441) (reg!770 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107841))

(assert (= (and b!105929 ((_ is Union!441) (reg!770 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107842))

(declare-fun e!59824 () Bool)

(declare-fun tp!58738 () Bool)

(declare-fun tp!58740 () Bool)

(declare-fun b!107843 () Bool)

(assert (=> b!107843 (= e!59824 (and (inv!2080 (left!1303 (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247))))))) tp!58740 (inv!2080 (right!1633 (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247))))))) tp!58738))))

(declare-fun b!107845 () Bool)

(declare-fun e!59823 () Bool)

(declare-fun tp!58739 () Bool)

(assert (=> b!107845 (= e!59823 tp!58739)))

(declare-fun b!107844 () Bool)

(assert (=> b!107844 (= e!59824 (and (inv!2086 (xs!3131 (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247))))))) e!59823))))

(assert (=> b!105829 (= tp!58507 (and (inv!2080 (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247)))))) e!59824))))

(assert (= (and b!105829 ((_ is Node!540) (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247))))))) b!107843))

(assert (= b!107844 b!107845))

(assert (= (and b!105829 ((_ is Leaf!862) (c!25296 (dynLambda!539 (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))) (value!13518 (_1!1139 (v!13005 lt!29247))))))) b!107844))

(declare-fun m!96540 () Bool)

(assert (=> b!107843 m!96540))

(declare-fun m!96542 () Bool)

(assert (=> b!107843 m!96542))

(declare-fun m!96544 () Bool)

(assert (=> b!107844 m!96544))

(assert (=> b!105829 m!92630))

(declare-fun tp!58741 () Bool)

(declare-fun e!59826 () Bool)

(declare-fun b!107846 () Bool)

(declare-fun tp!58743 () Bool)

(assert (=> b!107846 (= e!59826 (and (inv!2080 (left!1303 (left!1303 (right!1633 (c!25296 input!576))))) tp!58743 (inv!2080 (right!1633 (left!1303 (right!1633 (c!25296 input!576))))) tp!58741))))

(declare-fun b!107848 () Bool)

(declare-fun e!59825 () Bool)

(declare-fun tp!58742 () Bool)

(assert (=> b!107848 (= e!59825 tp!58742)))

(declare-fun b!107847 () Bool)

(assert (=> b!107847 (= e!59826 (and (inv!2086 (xs!3131 (left!1303 (right!1633 (c!25296 input!576))))) e!59825))))

(assert (=> b!105900 (= tp!58513 (and (inv!2080 (left!1303 (right!1633 (c!25296 input!576)))) e!59826))))

(assert (= (and b!105900 ((_ is Node!540) (left!1303 (right!1633 (c!25296 input!576))))) b!107846))

(assert (= b!107847 b!107848))

(assert (= (and b!105900 ((_ is Leaf!862) (left!1303 (right!1633 (c!25296 input!576))))) b!107847))

(declare-fun m!96546 () Bool)

(assert (=> b!107846 m!96546))

(declare-fun m!96548 () Bool)

(assert (=> b!107846 m!96548))

(declare-fun m!96550 () Bool)

(assert (=> b!107847 m!96550))

(assert (=> b!105900 m!92820))

(declare-fun tp!58746 () Bool)

(declare-fun e!59828 () Bool)

(declare-fun b!107849 () Bool)

(declare-fun tp!58744 () Bool)

(assert (=> b!107849 (= e!59828 (and (inv!2080 (left!1303 (right!1633 (right!1633 (c!25296 input!576))))) tp!58746 (inv!2080 (right!1633 (right!1633 (right!1633 (c!25296 input!576))))) tp!58744))))

(declare-fun b!107851 () Bool)

(declare-fun e!59827 () Bool)

(declare-fun tp!58745 () Bool)

(assert (=> b!107851 (= e!59827 tp!58745)))

(declare-fun b!107850 () Bool)

(assert (=> b!107850 (= e!59828 (and (inv!2086 (xs!3131 (right!1633 (right!1633 (c!25296 input!576))))) e!59827))))

(assert (=> b!105900 (= tp!58511 (and (inv!2080 (right!1633 (right!1633 (c!25296 input!576)))) e!59828))))

(assert (= (and b!105900 ((_ is Node!540) (right!1633 (right!1633 (c!25296 input!576))))) b!107849))

(assert (= b!107850 b!107851))

(assert (= (and b!105900 ((_ is Leaf!862) (right!1633 (right!1633 (c!25296 input!576))))) b!107850))

(declare-fun m!96552 () Bool)

(assert (=> b!107849 m!96552))

(declare-fun m!96554 () Bool)

(assert (=> b!107849 m!96554))

(declare-fun m!96556 () Bool)

(assert (=> b!107850 m!96556))

(assert (=> b!105900 m!92822))

(declare-fun b!107853 () Bool)

(declare-fun e!59829 () Bool)

(declare-fun tp!58750 () Bool)

(declare-fun tp!58751 () Bool)

(assert (=> b!107853 (= e!59829 (and tp!58750 tp!58751))))

(declare-fun b!107852 () Bool)

(assert (=> b!107852 (= e!59829 tp_is_empty!789)))

(declare-fun b!107855 () Bool)

(declare-fun tp!58749 () Bool)

(declare-fun tp!58748 () Bool)

(assert (=> b!107855 (= e!59829 (and tp!58749 tp!58748))))

(declare-fun b!107854 () Bool)

(declare-fun tp!58747 () Bool)

(assert (=> b!107854 (= e!59829 tp!58747)))

(assert (=> b!105930 (= tp!58543 e!59829)))

(assert (= (and b!105930 ((_ is ElementMatch!441) (regOne!1395 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107852))

(assert (= (and b!105930 ((_ is Concat!805) (regOne!1395 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107853))

(assert (= (and b!105930 ((_ is Star!441) (regOne!1395 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107854))

(assert (= (and b!105930 ((_ is Union!441) (regOne!1395 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107855))

(declare-fun b!107857 () Bool)

(declare-fun e!59830 () Bool)

(declare-fun tp!58755 () Bool)

(declare-fun tp!58756 () Bool)

(assert (=> b!107857 (= e!59830 (and tp!58755 tp!58756))))

(declare-fun b!107856 () Bool)

(assert (=> b!107856 (= e!59830 tp_is_empty!789)))

(declare-fun b!107859 () Bool)

(declare-fun tp!58754 () Bool)

(declare-fun tp!58753 () Bool)

(assert (=> b!107859 (= e!59830 (and tp!58754 tp!58753))))

(declare-fun b!107858 () Bool)

(declare-fun tp!58752 () Bool)

(assert (=> b!107858 (= e!59830 tp!58752)))

(assert (=> b!105930 (= tp!58542 e!59830)))

(assert (= (and b!105930 ((_ is ElementMatch!441) (regTwo!1395 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107856))

(assert (= (and b!105930 ((_ is Concat!805) (regTwo!1395 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107857))

(assert (= (and b!105930 ((_ is Star!441) (regTwo!1395 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107858))

(assert (= (and b!105930 ((_ is Union!441) (regTwo!1395 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107859))

(declare-fun b!107861 () Bool)

(declare-fun e!59831 () Bool)

(declare-fun tp!58760 () Bool)

(declare-fun tp!58761 () Bool)

(assert (=> b!107861 (= e!59831 (and tp!58760 tp!58761))))

(declare-fun b!107860 () Bool)

(assert (=> b!107860 (= e!59831 tp_is_empty!789)))

(declare-fun b!107863 () Bool)

(declare-fun tp!58759 () Bool)

(declare-fun tp!58758 () Bool)

(assert (=> b!107863 (= e!59831 (and tp!58759 tp!58758))))

(declare-fun b!107862 () Bool)

(declare-fun tp!58757 () Bool)

(assert (=> b!107862 (= e!59831 tp!58757)))

(assert (=> b!105910 (= tp!58521 e!59831)))

(assert (= (and b!105910 ((_ is ElementMatch!441) (regOne!1395 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107860))

(assert (= (and b!105910 ((_ is Concat!805) (regOne!1395 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107861))

(assert (= (and b!105910 ((_ is Star!441) (regOne!1395 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107862))

(assert (= (and b!105910 ((_ is Union!441) (regOne!1395 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107863))

(declare-fun b!107865 () Bool)

(declare-fun e!59832 () Bool)

(declare-fun tp!58765 () Bool)

(declare-fun tp!58766 () Bool)

(assert (=> b!107865 (= e!59832 (and tp!58765 tp!58766))))

(declare-fun b!107864 () Bool)

(assert (=> b!107864 (= e!59832 tp_is_empty!789)))

(declare-fun b!107867 () Bool)

(declare-fun tp!58764 () Bool)

(declare-fun tp!58763 () Bool)

(assert (=> b!107867 (= e!59832 (and tp!58764 tp!58763))))

(declare-fun b!107866 () Bool)

(declare-fun tp!58762 () Bool)

(assert (=> b!107866 (= e!59832 tp!58762)))

(assert (=> b!105910 (= tp!58520 e!59832)))

(assert (= (and b!105910 ((_ is ElementMatch!441) (regTwo!1395 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107864))

(assert (= (and b!105910 ((_ is Concat!805) (regTwo!1395 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107865))

(assert (= (and b!105910 ((_ is Star!441) (regTwo!1395 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107866))

(assert (= (and b!105910 ((_ is Union!441) (regTwo!1395 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107867))

(declare-fun b!107869 () Bool)

(declare-fun e!59833 () Bool)

(declare-fun tp!58770 () Bool)

(declare-fun tp!58771 () Bool)

(assert (=> b!107869 (= e!59833 (and tp!58770 tp!58771))))

(declare-fun b!107868 () Bool)

(assert (=> b!107868 (= e!59833 tp_is_empty!789)))

(declare-fun b!107871 () Bool)

(declare-fun tp!58769 () Bool)

(declare-fun tp!58768 () Bool)

(assert (=> b!107871 (= e!59833 (and tp!58769 tp!58768))))

(declare-fun b!107870 () Bool)

(declare-fun tp!58767 () Bool)

(assert (=> b!107870 (= e!59833 tp!58767)))

(assert (=> b!105933 (= tp!58546 e!59833)))

(assert (= (and b!105933 ((_ is ElementMatch!441) (reg!770 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107868))

(assert (= (and b!105933 ((_ is Concat!805) (reg!770 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107869))

(assert (= (and b!105933 ((_ is Star!441) (reg!770 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107870))

(assert (= (and b!105933 ((_ is Union!441) (reg!770 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107871))

(declare-fun b!107873 () Bool)

(declare-fun e!59834 () Bool)

(declare-fun tp!58775 () Bool)

(declare-fun tp!58776 () Bool)

(assert (=> b!107873 (= e!59834 (and tp!58775 tp!58776))))

(declare-fun b!107872 () Bool)

(assert (=> b!107872 (= e!59834 tp_is_empty!789)))

(declare-fun b!107875 () Bool)

(declare-fun tp!58774 () Bool)

(declare-fun tp!58773 () Bool)

(assert (=> b!107875 (= e!59834 (and tp!58774 tp!58773))))

(declare-fun b!107874 () Bool)

(declare-fun tp!58772 () Bool)

(assert (=> b!107874 (= e!59834 tp!58772)))

(assert (=> b!105932 (= tp!58549 e!59834)))

(assert (= (and b!105932 ((_ is ElementMatch!441) (regOne!1394 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107872))

(assert (= (and b!105932 ((_ is Concat!805) (regOne!1394 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107873))

(assert (= (and b!105932 ((_ is Star!441) (regOne!1394 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107874))

(assert (= (and b!105932 ((_ is Union!441) (regOne!1394 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107875))

(declare-fun b!107877 () Bool)

(declare-fun e!59835 () Bool)

(declare-fun tp!58780 () Bool)

(declare-fun tp!58781 () Bool)

(assert (=> b!107877 (= e!59835 (and tp!58780 tp!58781))))

(declare-fun b!107876 () Bool)

(assert (=> b!107876 (= e!59835 tp_is_empty!789)))

(declare-fun b!107879 () Bool)

(declare-fun tp!58779 () Bool)

(declare-fun tp!58778 () Bool)

(assert (=> b!107879 (= e!59835 (and tp!58779 tp!58778))))

(declare-fun b!107878 () Bool)

(declare-fun tp!58777 () Bool)

(assert (=> b!107878 (= e!59835 tp!58777)))

(assert (=> b!105932 (= tp!58550 e!59835)))

(assert (= (and b!105932 ((_ is ElementMatch!441) (regTwo!1394 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107876))

(assert (= (and b!105932 ((_ is Concat!805) (regTwo!1394 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107877))

(assert (= (and b!105932 ((_ is Star!441) (regTwo!1394 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107878))

(assert (= (and b!105932 ((_ is Union!441) (regTwo!1394 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107879))

(declare-fun tp!58784 () Bool)

(declare-fun b!107880 () Bool)

(declare-fun tp!58782 () Bool)

(declare-fun e!59837 () Bool)

(assert (=> b!107880 (= e!59837 (and (inv!2080 (left!1303 (left!1303 (left!1303 (c!25296 input!576))))) tp!58784 (inv!2080 (right!1633 (left!1303 (left!1303 (c!25296 input!576))))) tp!58782))))

(declare-fun b!107882 () Bool)

(declare-fun e!59836 () Bool)

(declare-fun tp!58783 () Bool)

(assert (=> b!107882 (= e!59836 tp!58783)))

(declare-fun b!107881 () Bool)

(assert (=> b!107881 (= e!59837 (and (inv!2086 (xs!3131 (left!1303 (left!1303 (c!25296 input!576))))) e!59836))))

(assert (=> b!105897 (= tp!58510 (and (inv!2080 (left!1303 (left!1303 (c!25296 input!576)))) e!59837))))

(assert (= (and b!105897 ((_ is Node!540) (left!1303 (left!1303 (c!25296 input!576))))) b!107880))

(assert (= b!107881 b!107882))

(assert (= (and b!105897 ((_ is Leaf!862) (left!1303 (left!1303 (c!25296 input!576))))) b!107881))

(declare-fun m!96558 () Bool)

(assert (=> b!107880 m!96558))

(declare-fun m!96560 () Bool)

(assert (=> b!107880 m!96560))

(declare-fun m!96562 () Bool)

(assert (=> b!107881 m!96562))

(assert (=> b!105897 m!92814))

(declare-fun tp!58787 () Bool)

(declare-fun e!59839 () Bool)

(declare-fun tp!58785 () Bool)

(declare-fun b!107883 () Bool)

(assert (=> b!107883 (= e!59839 (and (inv!2080 (left!1303 (right!1633 (left!1303 (c!25296 input!576))))) tp!58787 (inv!2080 (right!1633 (right!1633 (left!1303 (c!25296 input!576))))) tp!58785))))

(declare-fun b!107885 () Bool)

(declare-fun e!59838 () Bool)

(declare-fun tp!58786 () Bool)

(assert (=> b!107885 (= e!59838 tp!58786)))

(declare-fun b!107884 () Bool)

(assert (=> b!107884 (= e!59839 (and (inv!2086 (xs!3131 (right!1633 (left!1303 (c!25296 input!576))))) e!59838))))

(assert (=> b!105897 (= tp!58508 (and (inv!2080 (right!1633 (left!1303 (c!25296 input!576)))) e!59839))))

(assert (= (and b!105897 ((_ is Node!540) (right!1633 (left!1303 (c!25296 input!576))))) b!107883))

(assert (= b!107884 b!107885))

(assert (= (and b!105897 ((_ is Leaf!862) (right!1633 (left!1303 (c!25296 input!576))))) b!107884))

(declare-fun m!96564 () Bool)

(assert (=> b!107883 m!96564))

(declare-fun m!96566 () Bool)

(assert (=> b!107883 m!96566))

(declare-fun m!96568 () Bool)

(assert (=> b!107884 m!96568))

(assert (=> b!105897 m!92816))

(declare-fun b!107887 () Bool)

(declare-fun e!59840 () Bool)

(declare-fun tp!58791 () Bool)

(declare-fun tp!58792 () Bool)

(assert (=> b!107887 (= e!59840 (and tp!58791 tp!58792))))

(declare-fun b!107886 () Bool)

(assert (=> b!107886 (= e!59840 tp_is_empty!789)))

(declare-fun b!107889 () Bool)

(declare-fun tp!58790 () Bool)

(declare-fun tp!58789 () Bool)

(assert (=> b!107889 (= e!59840 (and tp!58790 tp!58789))))

(declare-fun b!107888 () Bool)

(declare-fun tp!58788 () Bool)

(assert (=> b!107888 (= e!59840 tp!58788)))

(assert (=> b!105917 (= tp!58529 e!59840)))

(assert (= (and b!105917 ((_ is ElementMatch!441) (reg!770 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107886))

(assert (= (and b!105917 ((_ is Concat!805) (reg!770 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107887))

(assert (= (and b!105917 ((_ is Star!441) (reg!770 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107888))

(assert (= (and b!105917 ((_ is Union!441) (reg!770 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107889))

(declare-fun b!107891 () Bool)

(declare-fun e!59841 () Bool)

(declare-fun tp!58796 () Bool)

(declare-fun tp!58797 () Bool)

(assert (=> b!107891 (= e!59841 (and tp!58796 tp!58797))))

(declare-fun b!107890 () Bool)

(assert (=> b!107890 (= e!59841 tp_is_empty!789)))

(declare-fun b!107893 () Bool)

(declare-fun tp!58795 () Bool)

(declare-fun tp!58794 () Bool)

(assert (=> b!107893 (= e!59841 (and tp!58795 tp!58794))))

(declare-fun b!107892 () Bool)

(declare-fun tp!58793 () Bool)

(assert (=> b!107892 (= e!59841 tp!58793)))

(assert (=> b!105916 (= tp!58532 e!59841)))

(assert (= (and b!105916 ((_ is ElementMatch!441) (regOne!1394 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107890))

(assert (= (and b!105916 ((_ is Concat!805) (regOne!1394 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107891))

(assert (= (and b!105916 ((_ is Star!441) (regOne!1394 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107892))

(assert (= (and b!105916 ((_ is Union!441) (regOne!1394 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107893))

(declare-fun b!107895 () Bool)

(declare-fun e!59842 () Bool)

(declare-fun tp!58801 () Bool)

(declare-fun tp!58802 () Bool)

(assert (=> b!107895 (= e!59842 (and tp!58801 tp!58802))))

(declare-fun b!107894 () Bool)

(assert (=> b!107894 (= e!59842 tp_is_empty!789)))

(declare-fun b!107897 () Bool)

(declare-fun tp!58800 () Bool)

(declare-fun tp!58799 () Bool)

(assert (=> b!107897 (= e!59842 (and tp!58800 tp!58799))))

(declare-fun b!107896 () Bool)

(declare-fun tp!58798 () Bool)

(assert (=> b!107896 (= e!59842 tp!58798)))

(assert (=> b!105916 (= tp!58533 e!59842)))

(assert (= (and b!105916 ((_ is ElementMatch!441) (regTwo!1394 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107894))

(assert (= (and b!105916 ((_ is Concat!805) (regTwo!1394 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107895))

(assert (= (and b!105916 ((_ is Star!441) (regTwo!1394 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107896))

(assert (= (and b!105916 ((_ is Union!441) (regTwo!1394 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107897))

(declare-fun b!107899 () Bool)

(declare-fun e!59843 () Bool)

(declare-fun tp!58806 () Bool)

(declare-fun tp!58807 () Bool)

(assert (=> b!107899 (= e!59843 (and tp!58806 tp!58807))))

(declare-fun b!107898 () Bool)

(assert (=> b!107898 (= e!59843 tp_is_empty!789)))

(declare-fun b!107901 () Bool)

(declare-fun tp!58805 () Bool)

(declare-fun tp!58804 () Bool)

(assert (=> b!107901 (= e!59843 (and tp!58805 tp!58804))))

(declare-fun b!107900 () Bool)

(declare-fun tp!58803 () Bool)

(assert (=> b!107900 (= e!59843 tp!58803)))

(assert (=> b!105909 (= tp!58519 e!59843)))

(assert (= (and b!105909 ((_ is ElementMatch!441) (reg!770 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107898))

(assert (= (and b!105909 ((_ is Concat!805) (reg!770 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107899))

(assert (= (and b!105909 ((_ is Star!441) (reg!770 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107900))

(assert (= (and b!105909 ((_ is Union!441) (reg!770 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107901))

(declare-fun b!107903 () Bool)

(declare-fun e!59844 () Bool)

(declare-fun tp!58811 () Bool)

(declare-fun tp!58812 () Bool)

(assert (=> b!107903 (= e!59844 (and tp!58811 tp!58812))))

(declare-fun b!107902 () Bool)

(assert (=> b!107902 (= e!59844 tp_is_empty!789)))

(declare-fun b!107905 () Bool)

(declare-fun tp!58810 () Bool)

(declare-fun tp!58809 () Bool)

(assert (=> b!107905 (= e!59844 (and tp!58810 tp!58809))))

(declare-fun b!107904 () Bool)

(declare-fun tp!58808 () Bool)

(assert (=> b!107904 (= e!59844 tp!58808)))

(assert (=> b!105918 (= tp!58531 e!59844)))

(assert (= (and b!105918 ((_ is ElementMatch!441) (regOne!1395 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107902))

(assert (= (and b!105918 ((_ is Concat!805) (regOne!1395 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107903))

(assert (= (and b!105918 ((_ is Star!441) (regOne!1395 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107904))

(assert (= (and b!105918 ((_ is Union!441) (regOne!1395 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107905))

(declare-fun b!107907 () Bool)

(declare-fun e!59845 () Bool)

(declare-fun tp!58816 () Bool)

(declare-fun tp!58817 () Bool)

(assert (=> b!107907 (= e!59845 (and tp!58816 tp!58817))))

(declare-fun b!107906 () Bool)

(assert (=> b!107906 (= e!59845 tp_is_empty!789)))

(declare-fun b!107909 () Bool)

(declare-fun tp!58815 () Bool)

(declare-fun tp!58814 () Bool)

(assert (=> b!107909 (= e!59845 (and tp!58815 tp!58814))))

(declare-fun b!107908 () Bool)

(declare-fun tp!58813 () Bool)

(assert (=> b!107908 (= e!59845 tp!58813)))

(assert (=> b!105918 (= tp!58530 e!59845)))

(assert (= (and b!105918 ((_ is ElementMatch!441) (regTwo!1395 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107906))

(assert (= (and b!105918 ((_ is Concat!805) (regTwo!1395 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107907))

(assert (= (and b!105918 ((_ is Star!441) (regTwo!1395 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107908))

(assert (= (and b!105918 ((_ is Union!441) (regTwo!1395 (reg!770 (regex!373 (h!7103 rules!1152)))))) b!107909))

(declare-fun b!107911 () Bool)

(declare-fun e!59846 () Bool)

(declare-fun tp!58821 () Bool)

(declare-fun tp!58822 () Bool)

(assert (=> b!107911 (= e!59846 (and tp!58821 tp!58822))))

(declare-fun b!107910 () Bool)

(assert (=> b!107910 (= e!59846 tp_is_empty!789)))

(declare-fun b!107913 () Bool)

(declare-fun tp!58820 () Bool)

(declare-fun tp!58819 () Bool)

(assert (=> b!107913 (= e!59846 (and tp!58820 tp!58819))))

(declare-fun b!107912 () Bool)

(declare-fun tp!58818 () Bool)

(assert (=> b!107912 (= e!59846 tp!58818)))

(assert (=> b!105908 (= tp!58522 e!59846)))

(assert (= (and b!105908 ((_ is ElementMatch!441) (regOne!1394 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107910))

(assert (= (and b!105908 ((_ is Concat!805) (regOne!1394 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107911))

(assert (= (and b!105908 ((_ is Star!441) (regOne!1394 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107912))

(assert (= (and b!105908 ((_ is Union!441) (regOne!1394 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107913))

(declare-fun b!107915 () Bool)

(declare-fun e!59847 () Bool)

(declare-fun tp!58826 () Bool)

(declare-fun tp!58827 () Bool)

(assert (=> b!107915 (= e!59847 (and tp!58826 tp!58827))))

(declare-fun b!107914 () Bool)

(assert (=> b!107914 (= e!59847 tp_is_empty!789)))

(declare-fun b!107917 () Bool)

(declare-fun tp!58825 () Bool)

(declare-fun tp!58824 () Bool)

(assert (=> b!107917 (= e!59847 (and tp!58825 tp!58824))))

(declare-fun b!107916 () Bool)

(declare-fun tp!58823 () Bool)

(assert (=> b!107916 (= e!59847 tp!58823)))

(assert (=> b!105908 (= tp!58523 e!59847)))

(assert (= (and b!105908 ((_ is ElementMatch!441) (regTwo!1394 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107914))

(assert (= (and b!105908 ((_ is Concat!805) (regTwo!1394 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107915))

(assert (= (and b!105908 ((_ is Star!441) (regTwo!1394 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107916))

(assert (= (and b!105908 ((_ is Union!441) (regTwo!1394 (regTwo!1395 (regex!373 (h!7103 rules!1152)))))) b!107917))

(declare-fun b!107919 () Bool)

(declare-fun e!59848 () Bool)

(declare-fun tp!58831 () Bool)

(declare-fun tp!58832 () Bool)

(assert (=> b!107919 (= e!59848 (and tp!58831 tp!58832))))

(declare-fun b!107918 () Bool)

(assert (=> b!107918 (= e!59848 tp_is_empty!789)))

(declare-fun b!107921 () Bool)

(declare-fun tp!58830 () Bool)

(declare-fun tp!58829 () Bool)

(assert (=> b!107921 (= e!59848 (and tp!58830 tp!58829))))

(declare-fun b!107920 () Bool)

(declare-fun tp!58828 () Bool)

(assert (=> b!107920 (= e!59848 tp!58828)))

(assert (=> b!105934 (= tp!58548 e!59848)))

(assert (= (and b!105934 ((_ is ElementMatch!441) (regOne!1395 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107918))

(assert (= (and b!105934 ((_ is Concat!805) (regOne!1395 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107919))

(assert (= (and b!105934 ((_ is Star!441) (regOne!1395 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107920))

(assert (= (and b!105934 ((_ is Union!441) (regOne!1395 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107921))

(declare-fun b!107923 () Bool)

(declare-fun e!59849 () Bool)

(declare-fun tp!58836 () Bool)

(declare-fun tp!58837 () Bool)

(assert (=> b!107923 (= e!59849 (and tp!58836 tp!58837))))

(declare-fun b!107922 () Bool)

(assert (=> b!107922 (= e!59849 tp_is_empty!789)))

(declare-fun b!107925 () Bool)

(declare-fun tp!58835 () Bool)

(declare-fun tp!58834 () Bool)

(assert (=> b!107925 (= e!59849 (and tp!58835 tp!58834))))

(declare-fun b!107924 () Bool)

(declare-fun tp!58833 () Bool)

(assert (=> b!107924 (= e!59849 tp!58833)))

(assert (=> b!105934 (= tp!58547 e!59849)))

(assert (= (and b!105934 ((_ is ElementMatch!441) (regTwo!1395 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107922))

(assert (= (and b!105934 ((_ is Concat!805) (regTwo!1395 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107923))

(assert (= (and b!105934 ((_ is Star!441) (regTwo!1395 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107924))

(assert (= (and b!105934 ((_ is Union!441) (regTwo!1395 (regTwo!1394 (regex!373 (h!7103 rules!1152)))))) b!107925))

(declare-fun b!107926 () Bool)

(declare-fun e!59850 () Bool)

(declare-fun tp!58838 () Bool)

(assert (=> b!107926 (= e!59850 (and tp_is_empty!789 tp!58838))))

(assert (=> b!105899 (= tp!58509 e!59850)))

(assert (= (and b!105899 ((_ is Cons!1705) (innerList!598 (xs!3131 (left!1303 (c!25296 input!576)))))) b!107926))

(declare-fun b!107927 () Bool)

(declare-fun e!59851 () Bool)

(declare-fun tp!58839 () Bool)

(assert (=> b!107927 (= e!59851 (and tp_is_empty!789 tp!58839))))

(assert (=> b!105926 (= tp!58540 e!59851)))

(assert (= (and b!105926 ((_ is Cons!1705) (t!21400 (innerList!598 (xs!3131 (c!25296 input!576)))))) b!107927))

(declare-fun b!107929 () Bool)

(declare-fun e!59852 () Bool)

(declare-fun tp!58843 () Bool)

(declare-fun tp!58844 () Bool)

(assert (=> b!107929 (= e!59852 (and tp!58843 tp!58844))))

(declare-fun b!107928 () Bool)

(assert (=> b!107928 (= e!59852 tp_is_empty!789)))

(declare-fun b!107931 () Bool)

(declare-fun tp!58842 () Bool)

(declare-fun tp!58841 () Bool)

(assert (=> b!107931 (= e!59852 (and tp!58842 tp!58841))))

(declare-fun b!107930 () Bool)

(declare-fun tp!58840 () Bool)

(assert (=> b!107930 (= e!59852 tp!58840)))

(assert (=> b!105905 (= tp!58514 e!59852)))

(assert (= (and b!105905 ((_ is ElementMatch!441) (reg!770 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107928))

(assert (= (and b!105905 ((_ is Concat!805) (reg!770 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107929))

(assert (= (and b!105905 ((_ is Star!441) (reg!770 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107930))

(assert (= (and b!105905 ((_ is Union!441) (reg!770 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107931))

(declare-fun b!107933 () Bool)

(declare-fun e!59853 () Bool)

(declare-fun tp!58848 () Bool)

(declare-fun tp!58849 () Bool)

(assert (=> b!107933 (= e!59853 (and tp!58848 tp!58849))))

(declare-fun b!107932 () Bool)

(assert (=> b!107932 (= e!59853 tp_is_empty!789)))

(declare-fun b!107935 () Bool)

(declare-fun tp!58847 () Bool)

(declare-fun tp!58846 () Bool)

(assert (=> b!107935 (= e!59853 (and tp!58847 tp!58846))))

(declare-fun b!107934 () Bool)

(declare-fun tp!58845 () Bool)

(assert (=> b!107934 (= e!59853 tp!58845)))

(assert (=> b!105914 (= tp!58526 e!59853)))

(assert (= (and b!105914 ((_ is ElementMatch!441) (regOne!1395 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107932))

(assert (= (and b!105914 ((_ is Concat!805) (regOne!1395 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107933))

(assert (= (and b!105914 ((_ is Star!441) (regOne!1395 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107934))

(assert (= (and b!105914 ((_ is Union!441) (regOne!1395 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107935))

(declare-fun b!107937 () Bool)

(declare-fun e!59854 () Bool)

(declare-fun tp!58853 () Bool)

(declare-fun tp!58854 () Bool)

(assert (=> b!107937 (= e!59854 (and tp!58853 tp!58854))))

(declare-fun b!107936 () Bool)

(assert (=> b!107936 (= e!59854 tp_is_empty!789)))

(declare-fun b!107939 () Bool)

(declare-fun tp!58852 () Bool)

(declare-fun tp!58851 () Bool)

(assert (=> b!107939 (= e!59854 (and tp!58852 tp!58851))))

(declare-fun b!107938 () Bool)

(declare-fun tp!58850 () Bool)

(assert (=> b!107938 (= e!59854 tp!58850)))

(assert (=> b!105914 (= tp!58525 e!59854)))

(assert (= (and b!105914 ((_ is ElementMatch!441) (regTwo!1395 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107936))

(assert (= (and b!105914 ((_ is Concat!805) (regTwo!1395 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107937))

(assert (= (and b!105914 ((_ is Star!441) (regTwo!1395 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107938))

(assert (= (and b!105914 ((_ is Union!441) (regTwo!1395 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107939))

(declare-fun b!107941 () Bool)

(declare-fun e!59855 () Bool)

(declare-fun tp!58858 () Bool)

(declare-fun tp!58859 () Bool)

(assert (=> b!107941 (= e!59855 (and tp!58858 tp!58859))))

(declare-fun b!107940 () Bool)

(assert (=> b!107940 (= e!59855 tp_is_empty!789)))

(declare-fun b!107943 () Bool)

(declare-fun tp!58857 () Bool)

(declare-fun tp!58856 () Bool)

(assert (=> b!107943 (= e!59855 (and tp!58857 tp!58856))))

(declare-fun b!107942 () Bool)

(declare-fun tp!58855 () Bool)

(assert (=> b!107942 (= e!59855 tp!58855)))

(assert (=> b!105928 (= tp!58544 e!59855)))

(assert (= (and b!105928 ((_ is ElementMatch!441) (regOne!1394 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107940))

(assert (= (and b!105928 ((_ is Concat!805) (regOne!1394 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107941))

(assert (= (and b!105928 ((_ is Star!441) (regOne!1394 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107942))

(assert (= (and b!105928 ((_ is Union!441) (regOne!1394 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107943))

(declare-fun b!107945 () Bool)

(declare-fun e!59856 () Bool)

(declare-fun tp!58863 () Bool)

(declare-fun tp!58864 () Bool)

(assert (=> b!107945 (= e!59856 (and tp!58863 tp!58864))))

(declare-fun b!107944 () Bool)

(assert (=> b!107944 (= e!59856 tp_is_empty!789)))

(declare-fun b!107947 () Bool)

(declare-fun tp!58862 () Bool)

(declare-fun tp!58861 () Bool)

(assert (=> b!107947 (= e!59856 (and tp!58862 tp!58861))))

(declare-fun b!107946 () Bool)

(declare-fun tp!58860 () Bool)

(assert (=> b!107946 (= e!59856 tp!58860)))

(assert (=> b!105928 (= tp!58545 e!59856)))

(assert (= (and b!105928 ((_ is ElementMatch!441) (regTwo!1394 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107944))

(assert (= (and b!105928 ((_ is Concat!805) (regTwo!1394 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107945))

(assert (= (and b!105928 ((_ is Star!441) (regTwo!1394 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107946))

(assert (= (and b!105928 ((_ is Union!441) (regTwo!1394 (regOne!1394 (regex!373 (h!7103 rules!1152)))))) b!107947))

(declare-fun b!107949 () Bool)

(declare-fun e!59857 () Bool)

(declare-fun tp!58868 () Bool)

(declare-fun tp!58869 () Bool)

(assert (=> b!107949 (= e!59857 (and tp!58868 tp!58869))))

(declare-fun b!107948 () Bool)

(assert (=> b!107948 (= e!59857 tp_is_empty!789)))

(declare-fun b!107951 () Bool)

(declare-fun tp!58867 () Bool)

(declare-fun tp!58866 () Bool)

(assert (=> b!107951 (= e!59857 (and tp!58867 tp!58866))))

(declare-fun b!107950 () Bool)

(declare-fun tp!58865 () Bool)

(assert (=> b!107950 (= e!59857 tp!58865)))

(assert (=> b!105906 (= tp!58516 e!59857)))

(assert (= (and b!105906 ((_ is ElementMatch!441) (regOne!1395 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107948))

(assert (= (and b!105906 ((_ is Concat!805) (regOne!1395 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107949))

(assert (= (and b!105906 ((_ is Star!441) (regOne!1395 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107950))

(assert (= (and b!105906 ((_ is Union!441) (regOne!1395 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107951))

(declare-fun b!107953 () Bool)

(declare-fun e!59858 () Bool)

(declare-fun tp!58873 () Bool)

(declare-fun tp!58874 () Bool)

(assert (=> b!107953 (= e!59858 (and tp!58873 tp!58874))))

(declare-fun b!107952 () Bool)

(assert (=> b!107952 (= e!59858 tp_is_empty!789)))

(declare-fun b!107955 () Bool)

(declare-fun tp!58872 () Bool)

(declare-fun tp!58871 () Bool)

(assert (=> b!107955 (= e!59858 (and tp!58872 tp!58871))))

(declare-fun b!107954 () Bool)

(declare-fun tp!58870 () Bool)

(assert (=> b!107954 (= e!59858 tp!58870)))

(assert (=> b!105906 (= tp!58515 e!59858)))

(assert (= (and b!105906 ((_ is ElementMatch!441) (regTwo!1395 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107952))

(assert (= (and b!105906 ((_ is Concat!805) (regTwo!1395 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107953))

(assert (= (and b!105906 ((_ is Star!441) (regTwo!1395 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107954))

(assert (= (and b!105906 ((_ is Union!441) (regTwo!1395 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107955))

(declare-fun b!107957 () Bool)

(declare-fun e!59859 () Bool)

(declare-fun tp!58878 () Bool)

(declare-fun tp!58879 () Bool)

(assert (=> b!107957 (= e!59859 (and tp!58878 tp!58879))))

(declare-fun b!107956 () Bool)

(assert (=> b!107956 (= e!59859 tp_is_empty!789)))

(declare-fun b!107959 () Bool)

(declare-fun tp!58877 () Bool)

(declare-fun tp!58876 () Bool)

(assert (=> b!107959 (= e!59859 (and tp!58877 tp!58876))))

(declare-fun b!107958 () Bool)

(declare-fun tp!58875 () Bool)

(assert (=> b!107958 (= e!59859 tp!58875)))

(assert (=> b!105912 (= tp!58527 e!59859)))

(assert (= (and b!105912 ((_ is ElementMatch!441) (regOne!1394 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107956))

(assert (= (and b!105912 ((_ is Concat!805) (regOne!1394 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107957))

(assert (= (and b!105912 ((_ is Star!441) (regOne!1394 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107958))

(assert (= (and b!105912 ((_ is Union!441) (regOne!1394 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107959))

(declare-fun b!107961 () Bool)

(declare-fun e!59860 () Bool)

(declare-fun tp!58883 () Bool)

(declare-fun tp!58884 () Bool)

(assert (=> b!107961 (= e!59860 (and tp!58883 tp!58884))))

(declare-fun b!107960 () Bool)

(assert (=> b!107960 (= e!59860 tp_is_empty!789)))

(declare-fun b!107963 () Bool)

(declare-fun tp!58882 () Bool)

(declare-fun tp!58881 () Bool)

(assert (=> b!107963 (= e!59860 (and tp!58882 tp!58881))))

(declare-fun b!107962 () Bool)

(declare-fun tp!58880 () Bool)

(assert (=> b!107962 (= e!59860 tp!58880)))

(assert (=> b!105912 (= tp!58528 e!59860)))

(assert (= (and b!105912 ((_ is ElementMatch!441) (regTwo!1394 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107960))

(assert (= (and b!105912 ((_ is Concat!805) (regTwo!1394 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107961))

(assert (= (and b!105912 ((_ is Star!441) (regTwo!1394 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107962))

(assert (= (and b!105912 ((_ is Union!441) (regTwo!1394 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107963))

(declare-fun b!107966 () Bool)

(declare-fun b_free!3201 () Bool)

(declare-fun b_next!3201 () Bool)

(assert (=> b!107966 (= b_free!3201 (not b_next!3201))))

(declare-fun tb!3127 () Bool)

(declare-fun t!21486 () Bool)

(assert (=> (and b!107966 (= (toValue!960 (transformation!373 (h!7103 (t!21401 (t!21401 (t!21401 rules!1152)))))) (toValue!960 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476)))))) t!21486) tb!3127))

(declare-fun result!4624 () Bool)

(assert (= result!4624 result!4616))

(assert (=> d!26384 t!21486))

(declare-fun tp!58887 () Bool)

(declare-fun b_and!4763 () Bool)

(assert (=> b!107966 (= tp!58887 (and (=> t!21486 result!4624) b_and!4763))))

(declare-fun b_free!3203 () Bool)

(declare-fun b_next!3203 () Bool)

(assert (=> b!107966 (= b_free!3203 (not b_next!3203))))

(declare-fun t!21488 () Bool)

(declare-fun tb!3129 () Bool)

(assert (=> (and b!107966 (= (toChars!819 (transformation!373 (h!7103 (t!21401 (t!21401 (t!21401 rules!1152)))))) (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247)))))) t!21488) tb!3129))

(declare-fun result!4626 () Bool)

(assert (= result!4626 result!4566))

(assert (=> d!25514 t!21488))

(declare-fun tb!3131 () Bool)

(declare-fun t!21490 () Bool)

(assert (=> (and b!107966 (= (toChars!819 (transformation!373 (h!7103 (t!21401 (t!21401 (t!21401 rules!1152)))))) (toChars!819 (transformation!373 (rule!876 (_1!1140 (get!438 lt!29476)))))) t!21490) tb!3131))

(declare-fun result!4628 () Bool)

(assert (= result!4628 result!4604))

(assert (=> d!26164 t!21490))

(declare-fun tb!3133 () Bool)

(declare-fun t!21492 () Bool)

(assert (=> (and b!107966 (= (toChars!819 (transformation!373 (h!7103 (t!21401 (t!21401 (t!21401 rules!1152)))))) (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29508)))))) t!21492) tb!3133))

(declare-fun result!4630 () Bool)

(assert (= result!4630 result!4610))

(assert (=> d!26308 t!21492))

(declare-fun tp!58886 () Bool)

(declare-fun b_and!4765 () Bool)

(assert (=> b!107966 (= tp!58886 (and (=> t!21488 result!4626) (=> t!21490 result!4628) (=> t!21492 result!4630) b_and!4765))))

(declare-fun e!59862 () Bool)

(assert (=> b!107966 (= e!59862 (and tp!58887 tp!58886))))

(declare-fun b!107965 () Bool)

(declare-fun e!59861 () Bool)

(declare-fun tp!58888 () Bool)

(assert (=> b!107965 (= e!59861 (and tp!58888 (inv!2074 (tag!551 (h!7103 (t!21401 (t!21401 (t!21401 rules!1152)))))) (inv!2078 (transformation!373 (h!7103 (t!21401 (t!21401 (t!21401 rules!1152)))))) e!59862))))

(declare-fun b!107964 () Bool)

(declare-fun e!59863 () Bool)

(declare-fun tp!58885 () Bool)

(assert (=> b!107964 (= e!59863 (and e!59861 tp!58885))))

(assert (=> b!105919 (= tp!58534 e!59863)))

(assert (= b!107965 b!107966))

(assert (= b!107964 b!107965))

(assert (= (and b!105919 ((_ is Cons!1706) (t!21401 (t!21401 (t!21401 rules!1152))))) b!107964))

(declare-fun m!96570 () Bool)

(assert (=> b!107965 m!96570))

(declare-fun m!96572 () Bool)

(assert (=> b!107965 m!96572))

(declare-fun b!107968 () Bool)

(declare-fun e!59865 () Bool)

(declare-fun tp!58892 () Bool)

(declare-fun tp!58893 () Bool)

(assert (=> b!107968 (= e!59865 (and tp!58892 tp!58893))))

(declare-fun b!107967 () Bool)

(assert (=> b!107967 (= e!59865 tp_is_empty!789)))

(declare-fun b!107970 () Bool)

(declare-fun tp!58891 () Bool)

(declare-fun tp!58890 () Bool)

(assert (=> b!107970 (= e!59865 (and tp!58891 tp!58890))))

(declare-fun b!107969 () Bool)

(declare-fun tp!58889 () Bool)

(assert (=> b!107969 (= e!59865 tp!58889)))

(assert (=> b!105904 (= tp!58517 e!59865)))

(assert (= (and b!105904 ((_ is ElementMatch!441) (regOne!1394 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107967))

(assert (= (and b!105904 ((_ is Concat!805) (regOne!1394 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107968))

(assert (= (and b!105904 ((_ is Star!441) (regOne!1394 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107969))

(assert (= (and b!105904 ((_ is Union!441) (regOne!1394 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107970))

(declare-fun b!107972 () Bool)

(declare-fun e!59866 () Bool)

(declare-fun tp!58897 () Bool)

(declare-fun tp!58898 () Bool)

(assert (=> b!107972 (= e!59866 (and tp!58897 tp!58898))))

(declare-fun b!107971 () Bool)

(assert (=> b!107971 (= e!59866 tp_is_empty!789)))

(declare-fun b!107974 () Bool)

(declare-fun tp!58896 () Bool)

(declare-fun tp!58895 () Bool)

(assert (=> b!107974 (= e!59866 (and tp!58896 tp!58895))))

(declare-fun b!107973 () Bool)

(declare-fun tp!58894 () Bool)

(assert (=> b!107973 (= e!59866 tp!58894)))

(assert (=> b!105904 (= tp!58518 e!59866)))

(assert (= (and b!105904 ((_ is ElementMatch!441) (regTwo!1394 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107971))

(assert (= (and b!105904 ((_ is Concat!805) (regTwo!1394 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107972))

(assert (= (and b!105904 ((_ is Star!441) (regTwo!1394 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107973))

(assert (= (and b!105904 ((_ is Union!441) (regTwo!1394 (regOne!1395 (regex!373 (h!7103 rules!1152)))))) b!107974))

(declare-fun b!107976 () Bool)

(declare-fun e!59867 () Bool)

(declare-fun tp!58902 () Bool)

(declare-fun tp!58903 () Bool)

(assert (=> b!107976 (= e!59867 (and tp!58902 tp!58903))))

(declare-fun b!107975 () Bool)

(assert (=> b!107975 (= e!59867 tp_is_empty!789)))

(declare-fun b!107978 () Bool)

(declare-fun tp!58901 () Bool)

(declare-fun tp!58900 () Bool)

(assert (=> b!107978 (= e!59867 (and tp!58901 tp!58900))))

(declare-fun b!107977 () Bool)

(declare-fun tp!58899 () Bool)

(assert (=> b!107977 (= e!59867 tp!58899)))

(assert (=> b!105913 (= tp!58524 e!59867)))

(assert (= (and b!105913 ((_ is ElementMatch!441) (reg!770 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107975))

(assert (= (and b!105913 ((_ is Concat!805) (reg!770 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107976))

(assert (= (and b!105913 ((_ is Star!441) (reg!770 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107977))

(assert (= (and b!105913 ((_ is Union!441) (reg!770 (regex!373 (h!7103 (t!21401 rules!1152)))))) b!107978))

(declare-fun b!107980 () Bool)

(declare-fun e!59868 () Bool)

(declare-fun tp!58907 () Bool)

(declare-fun tp!58908 () Bool)

(assert (=> b!107980 (= e!59868 (and tp!58907 tp!58908))))

(declare-fun b!107979 () Bool)

(assert (=> b!107979 (= e!59868 tp_is_empty!789)))

(declare-fun b!107982 () Bool)

(declare-fun tp!58906 () Bool)

(declare-fun tp!58905 () Bool)

(assert (=> b!107982 (= e!59868 (and tp!58906 tp!58905))))

(declare-fun b!107981 () Bool)

(declare-fun tp!58904 () Bool)

(assert (=> b!107981 (= e!59868 tp!58904)))

(assert (=> b!105920 (= tp!58537 e!59868)))

(assert (= (and b!105920 ((_ is ElementMatch!441) (regex!373 (h!7103 (t!21401 (t!21401 rules!1152)))))) b!107979))

(assert (= (and b!105920 ((_ is Concat!805) (regex!373 (h!7103 (t!21401 (t!21401 rules!1152)))))) b!107980))

(assert (= (and b!105920 ((_ is Star!441) (regex!373 (h!7103 (t!21401 (t!21401 rules!1152)))))) b!107981))

(assert (= (and b!105920 ((_ is Union!441) (regex!373 (h!7103 (t!21401 (t!21401 rules!1152)))))) b!107982))

(declare-fun b_lambda!1185 () Bool)

(assert (= b_lambda!1181 (or d!25478 b_lambda!1185)))

(declare-fun bs!10362 () Bool)

(declare-fun d!26640 () Bool)

(assert (= bs!10362 (and d!26640 d!25478)))

(assert (=> bs!10362 (= (dynLambda!543 lambda!1959 (h!7103 rules!1152)) (ruleValid!48 thiss!11428 (h!7103 rules!1152)))))

(assert (=> bs!10362 m!94866))

(assert (=> b!107363 d!26640))

(declare-fun b_lambda!1187 () Bool)

(assert (= b_lambda!1163 (or (and b!105068 b_free!3179 (= (toChars!819 (transformation!373 (h!7103 rules!1152))) (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))))) (and b!105252 b_free!3187 (= (toChars!819 (transformation!373 (h!7103 (t!21401 rules!1152)))) (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))))) (and b!105921 b_free!3195 (= (toChars!819 (transformation!373 (h!7103 (t!21401 (t!21401 rules!1152))))) (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))))) (and b!107966 b_free!3203 (= (toChars!819 (transformation!373 (h!7103 (t!21401 (t!21401 (t!21401 rules!1152)))))) (toChars!819 (transformation!373 (rule!876 (_1!1139 (v!13005 lt!29247))))))) b_lambda!1187)))

(check-sat (not b!107458) (not b!107873) (not b!107488) (not b!107181) (not b!107893) (not b!107935) (not b!107973) (not b!107790) (not bm!4747) (not b!107785) (not b!107789) (not d!26406) (not b!107283) (not bm!4700) (not b!107759) (not b!107645) (not d!26536) (not b!107610) (not b!107516) (not b!107794) (not b!107805) (not b_next!3179) (not b!107937) (not d!25964) (not b!107595) (not b!107507) (not b!107842) (not b!107082) (not d!26220) (not b!107980) b_and!4751 (not bm!4720) (not b!107268) (not b!107463) (not bm!4696) (not d!26276) (not d!26162) (not bm!4759) (not d!26582) (not b!107513) (not b!107728) (not b!107959) (not b!107835) (not b!107739) (not d!26604) (not b!107443) (not b!107947) (not b!107568) (not b!107302) (not b!107802) (not b!107941) (not d!26346) (not b!107265) (not b!107245) (not b!106744) (not tb!3115) (not b!107726) (not bm!4725) (not b!107953) (not b!107271) (not b!107806) (not b!107949) (not b!107848) (not b!107972) (not d!26394) (not b!107554) (not b!107982) (not b_next!3201) (not d!26592) (not b!107263) (not b!107460) (not b!107622) (not b!107608) (not d!26150) (not bm!4752) (not b!107275) (not b_next!3193) (not b!107621) (not b!107853) (not b!107957) (not b!107945) (not b!107566) (not bm!4749) (not b!107815) (not b!107724) (not b!107939) (not b!107398) (not b!107969) (not b!107725) (not b!107374) (not b!107687) (not b!107942) (not d!26472) (not b!107166) (not b!107536) (not b!107615) (not b!107931) (not b!107915) (not b!106646) b_and!4755 (not b!107345) (not b!107270) (not b!107776) (not d!26418) (not d!26272) (not b!107913) (not b!107094) (not b!107144) (not b!105900) (not b!106763) (not b!107299) (not b!107518) (not b!107800) (not b!107571) (not b!106834) (not b!107432) (not b!107737) (not b!107861) (not b!107841) b_and!4761 (not b!107469) (not b!107863) b_and!4763 (not b!107485) (not b!107085) (not d!26480) (not d!26208) (not b!107814) (not d!26344) (not b!107961) (not b!106714) (not b!107467) (not b!107729) (not bm!4726) (not b!107459) (not b!107753) (not b!107744) (not d!26398) (not b!106840) (not b!107822) (not b!107254) (not b!107357) (not d!26034) (not b!107811) (not b!107325) (not b!107926) (not b!107907) (not b!107493) (not b!107215) (not b!107501) (not bm!4715) (not d!26612) (not b!107179) (not b!107962) (not b!106639) (not b!107593) (not d!26304) (not d!26638) (not d!26266) (not b!107367) (not b!107596) (not b!107867) (not b!107897) (not b!107479) (not d!26636) (not b!107332) b_and!4759 (not b!107249) (not b!107301) (not b!107491) (not d!26148) (not b!107336) (not b!107313) (not b!107364) (not d!26230) (not b!107261) (not b!107798) (not b!107550) (not b!106750) (not bm!4703) (not bm!4714) (not b!107712) (not b!107946) (not d!26288) (not b!107834) (not d!26252) (not b!107862) (not d!26218) b_and!4757 (not b!107831) (not b!107820) (not b!107456) (not b!107411) (not b!107832) (not b!107446) (not d!26238) (not b!107295) (not b!107378) (not b!107799) (not b!107606) (not d!26306) (not b!107487) (not b!107859) (not d!26022) (not d!26292) (not tb!3121) (not b!107401) (not b!107403) (not b!107552) (not b!107891) (not b!107477) (not d!26572) (not b!107406) (not b!107847) (not b!107626) (not b!107187) (not d!26426) (not b_next!3187) (not b!107718) (not d!26586) (not d!26524) (not b!107199) (not b!107450) (not b!107558) (not b!107300) (not b!107322) (not b!107618) (not b!107394) (not b!107884) (not b_next!3195) (not b!107253) (not b!106648) (not b!107707) (not b!107476) (not d!26164) tp_is_empty!789 (not d!26486) (not b!107520) (not b!107428) (not d!25976) (not d!26278) (not b!107452) (not b!107078) (not b!107851) (not b!107242) (not b!107797) (not b!107538) (not b!107502) (not b!107698) (not b!107383) (not d!26374) (not b!107603) (not b!107706) (not d!26108) (not b!107400) (not b!107858) (not b!107206) (not b!107874) (not b!107803) (not b!107833) (not b!107592) (not d!26254) (not b!107197) (not b!106838) (not b!107319) (not b!107889) (not bm!4754) (not b!107901) (not b!107723) (not d!26214) (not d!26222) (not b!107241) (not d!26372) (not d!26168) (not b!107497) (not b!107896) (not b!107457) (not b!107614) (not b!107970) (not b!107575) (not d!26280) (not b!107259) (not d!26530) (not b!107777) (not d!26302) (not d!26316) (not b!107709) (not b!107755) (not d!26608) (not b!107537) (not d!26196) (not b!107189) (not d!26322) (not d!25972) (not b!106748) (not b!107468) (not b!107655) (not b!106759) (not b!107244) (not b!107551) (not b!107934) (not b!107565) (not b!107722) (not b!107892) (not b!107157) (not b!107287) (not d!26508) (not d!26224) (not b!107553) (not b!107795) (not d!26310) (not b!107509) (not b!107888) (not b!107866) (not b!107339) (not b!107258) (not b!107203) (not b_lambda!1177) (not d!26468) (not b!107600) (not b!107570) (not d!26616) (not b!107522) (not b!107174) (not d!26428) (not b!107156) (not b!107627) (not b!107285) (not b!107846) (not b!107764) (not d!26494) (not b!107356) (not d!26566) (not b!107903) (not b!107291) (not d!26308) (not d!26284) (not b!107318) (not b!107925) (not b!107604) (not b!107708) (not b!107350) (not b!107426) (not bm!4719) (not b!107818) (not b!106633) (not b!107735) (not b!106841) (not b!107211) (not d!26320) (not b!107305) (not b!107652) (not b!107721) (not b!107321) (not b!107857) (not b!107368) (not b!107955) (not bm!4706) (not b!107427) (not b!107796) (not b!107153) (not b!107849) (not d!26474) (not d!26596) (not b!107963) (not b!106652) (not b!107879) (not d!26624) (not b!107843) (not b!107158) (not b!107377) (not b!107850) (not b!107326) (not b!107588) (not b!107804) (not b!107761) (not bm!4718) (not d!26290) (not d!26154) (not b!107838) (not b!107434) (not b!107317) (not b!107306) (not b!107105) (not d!26516) (not d!26484) (not b!106649) (not d!26420) (not d!26518) (not b!107539) (not d!26232) (not b_next!3185) (not b!107106) (not b!107177) (not b!107958) (not b!107911) (not b!107900) (not b!107112) (not b!107943) (not b!107498) (not b!107567) (not b!107170) (not b!107438) (not b!107807) (not b!107954) (not b!107887) (not b!107282) (not b!107572) (not b!107646) (not bs!10362) (not b!107473) (not b!107455) (not b!107745) (not b!107769) (not b!107376) (not d!26514) (not b!107234) (not b!106753) (not b!107816) (not b!107654) (not b!107703) (not b!107865) (not d!26298) (not b!107205) (not b!107751) (not b!107492) (not b!107484) (not b!107342) (not b!107788) (not b!107693) (not d!26540) (not d!26570) (not b!107396) (not d!26498) (not d!26456) (not b!107845) (not b!107141) (not d!26622) (not b!107352) (not bm!4657) (not b!107251) (not b!106839) (not b!107837) (not b!107514) (not b!107576) (not b!107237) (not b!107311) (not b!107912) (not b!107333) (not b!107084) (not b!106650) (not b!107656) (not b!107813) (not b!107809) (not b!107758) (not d!26404) b_and!4753 (not b_lambda!1185) (not b!107404) (not b!107580) (not b_lambda!1187) (not d!26178) (not b!107930) (not b!107824) (not b!107201) (not b!107899) (not d!26632) (not d!26528) (not bm!4755) (not b!107748) (not b!107195) (not b!107257) (not b!107840) (not d!26588) (not b!107878) (not b!107346) (not d!26262) (not d!26294) (not d!26282) (not b!107613) (not b!107298) (not d!26226) (not b!107775) (not b!107288) (not b!107236) (not b!107407) (not d!26338) (not b!107442) (not b!107908) (not b!107976) (not b!107700) (not d!26446) (not b!107920) (not b!107717) (not b!107749) (not b!107424) (not b!107329) (not d!26422) (not b!107964) (not b!107382) (not b!107549) (not b!107159) (not tb!3109) (not b!107713) (not b!107171) (not b!107950) (not d!26490) (not b_next!3203) (not b!107267) (not d!26590) (not b!107238) (not b!107727) (not b!107732) (not b!107917) (not b!107924) (not b!107471) (not b!107977) (not b!107830) (not b!107784) (not d!26240) (not b!107274) (not bm!4750) (not b!107481) (not b!107583) (not d!26270) (not b!107589) (not b!107246) (not bm!4717) (not b!107767) (not b!107731) (not d!26362) (not b!107688) (not b!107609) (not d!26438) (not b!107466) (not d!26526) (not b!107881) (not b!107425) (not d!26174) (not b!106651) (not b!107877) (not b!107292) (not b_lambda!1183) (not d!26256) (not b!107315) (not b!107092) (not d!26512) (not d!26500) (not b!107349) (not d!26598) (not b!107490) (not b!107511) (not b!107781) (not d!26360) (not b!107472) (not b!107651) (not b!105829) (not d!26228) (not b!107611) (not b!107701) (not b!107165) (not b!107916) (not d!26268) (not d!26158) (not b!107763) (not b!107324) (not bm!4697) (not b!107379) (not b!107927) (not b!107337) (not b!107435) (not d!26296) (not d!26550) (not b!107871) (not b!107791) (not b!107981) (not b!107685) (not d!26544) (not b!107280) (not b!107919) (not b!107250) (not b!107923) (not b!107240) (not b!107965) (not b!107072) (not bm!4757) (not b!107951) (not d!26258) (not b!107162) (not b!107180) (not d!26436) (not b!107686) (not b!107161) (not b!107882) (not b!107883) (not b!107341) (not b!107296) (not d!26030) (not b!107354) (not d!26386) (not b!107810) (not b!107387) (not b!107405) (not d!26504) (not d!26264) (not b!107569) (not b!107512) (not d!26216) (not b!107148) (not d!26568) (not b!107540) (not b!107875) (not b!107828) (not b!107599) (not b!107248) (not b!107408) (not d!26188) (not b!107381) (not b!107702) (not b!107905) (not b!106637) (not d!26538) (not b!107743) (not b!105897) (not b!107921) (not b!107461) (not d!26328) (not b!107684) (not bm!4716) (not b!107074) (not b!107657) (not b!107175) (not bm!4705) (not bm!4713) (not d!26210) (not d!26380) (not b!106746) (not b!107584) (not d!26300) (not d!26414) (not bm!4707) (not bm!4751) (not d!26286) (not b!107895) (not bm!4643) (not b!107560) (not b!107602) (not b!107885) (not b!107286) (not b!107388) (not b!107214) (not b!107279) (not b!107756) (not b!107933) (not b!107650) (not b!107168) (not d!26366) (not b!107482) (not d!26018) (not b!107160) (not d!26452) (not bm!4748) (not b!107284) (not b!107968) (not b!107705) (not b!107870) (not b!107605) (not d!26356) (not d!26318) (not b!107562) (not d!25974) (not b!107734) (not b!107320) (not b!107314) (not b_lambda!1179) (not b!107409) (not b!107310) (not b!107787) (not b!107740) (not b!107489) (not b!107619) (not d!26212) (not b!107506) (not b!106761) (not b!107607) (not d!26176) (not b!107869) (not bm!4756) (not b!107929) (not b!107938) (not b!107653) (not b!107844) (not b!107210) (not b!106635) (not b!106647) (not b!107909) (not b!107465) (not d!26260) (not b!107854) (not d!26600) (not b!107370) (not d!26606) b_and!4765 (not b!107765) (not d!26342) (not bm!4712) (not b!107328) (not b!107648) (not b!107155) (not b!107454) (not b!107826) (not b!107243) (not d!26454) (not d!26274) (not b!107768) (not b!107577) (not b!107974) (not d!26250) (not b!107508) (not d!26542) (not d!26200) (not b!107836) (not b!107373) (not b!107147) (not b!107173) (not b!107880) (not b!107579) (not b!107762) (not b!107104) (not b!107904) (not b!107440) (not bm!4758) (not d!26492) (not b!107111) (not b!107978) (not b!107812) (not b!107193) (not d!26156) (not b!107855) (not b!107152) (not b!107239) (not b!107176) (not b!107779) (not b!107429) (not b!107555) (not b!107277) (not b!107191) (not b!106835) (not d!26206) (not d!26166) (not b!107504) (not b!107304) (not b_next!3177) (not b!107380) (not d!26236))
(check-sat (not b_next!3179) b_and!4751 (not b_next!3201) (not b_next!3193) b_and!4755 b_and!4759 b_and!4757 (not b_next!3185) b_and!4753 (not b_next!3203) b_and!4765 (not b_next!3177) b_and!4761 b_and!4763 (not b_next!3195) (not b_next!3187))
