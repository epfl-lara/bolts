; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757838 () Bool)

(assert start!757838)

(declare-fun b!8047712 () Bool)

(declare-fun b_free!136579 () Bool)

(declare-fun b_next!137369 () Bool)

(assert (=> b!8047712 (= b_free!136579 (not b_next!137369))))

(declare-fun tp!2412896 () Bool)

(declare-fun b_and!355015 () Bool)

(assert (=> b!8047712 (= tp!2412896 b_and!355015)))

(declare-fun b_free!136581 () Bool)

(declare-fun b_next!137371 () Bool)

(assert (=> b!8047712 (= b_free!136581 (not b_next!137371))))

(declare-fun tp!2412897 () Bool)

(declare-fun b_and!355017 () Bool)

(assert (=> b!8047712 (= tp!2412897 b_and!355017)))

(declare-fun b!8047711 () Bool)

(declare-fun e!4741675 () Bool)

(declare-fun e!4741678 () Bool)

(declare-fun tp!2412895 () Bool)

(declare-datatypes ((C!44052 0))(
  ( (C!44053 (val!32802 Int)) )
))
(declare-datatypes ((List!75553 0))(
  ( (Nil!75427) (Cons!75427 (h!81875 C!44052) (t!391325 List!75553)) )
))
(declare-datatypes ((IArray!32169 0))(
  ( (IArray!32170 (innerList!16142 List!75553)) )
))
(declare-datatypes ((List!75554 0))(
  ( (Nil!75428) (Cons!75428 (h!81876 (_ BitVec 16)) (t!391326 List!75554)) )
))
(declare-datatypes ((Regex!21857 0))(
  ( (ElementMatch!21857 (c!1475499 C!44052)) (Concat!30963 (regOne!44226 Regex!21857) (regTwo!44226 Regex!21857)) (EmptyExpr!21857) (Star!21857 (reg!22186 Regex!21857)) (EmptyLang!21857) (Union!21857 (regOne!44227 Regex!21857) (regTwo!44227 Regex!21857)) )
))
(declare-datatypes ((String!85311 0))(
  ( (String!85312 (value!293386 String)) )
))
(declare-datatypes ((TokenValue!9106 0))(
  ( (FloatLiteralValue!18212 (text!64187 List!75554)) (TokenValueExt!9105 (__x!35491 Int)) (Broken!45530 (value!293387 List!75554)) (Object!9231) (End!9106) (Def!9106) (Underscore!9106) (Match!9106) (Else!9106) (Error!9106) (Case!9106) (If!9106) (Extends!9106) (Abstract!9106) (Class!9106) (Val!9106) (DelimiterValue!18212 (del!9166 List!75554)) (KeywordValue!9112 (value!293388 List!75554)) (CommentValue!18212 (value!293389 List!75554)) (WhitespaceValue!18212 (value!293390 List!75554)) (IndentationValue!9106 (value!293391 List!75554)) (String!85313) (Int32!9106) (Broken!45531 (value!293392 List!75554)) (Boolean!9107) (Unit!171169) (OperatorValue!9109 (op!9166 List!75554)) (IdentifierValue!18212 (value!293393 List!75554)) (IdentifierValue!18213 (value!293394 List!75554)) (WhitespaceValue!18213 (value!293395 List!75554)) (True!18212) (False!18212) (Broken!45532 (value!293396 List!75554)) (Broken!45533 (value!293397 List!75554)) (True!18213) (RightBrace!9106) (RightBracket!9106) (Colon!9106) (Null!9106) (Comma!9106) (LeftBracket!9106) (False!18213) (LeftBrace!9106) (ImaginaryLiteralValue!9106 (text!64188 List!75554)) (StringLiteralValue!27318 (value!293398 List!75554)) (EOFValue!9106 (value!293399 List!75554)) (IdentValue!9106 (value!293400 List!75554)) (DelimiterValue!18213 (value!293401 List!75554)) (DedentValue!9106 (value!293402 List!75554)) (NewLineValue!9106 (value!293403 List!75554)) (IntegerValue!27318 (value!293404 (_ BitVec 32)) (text!64189 List!75554)) (IntegerValue!27319 (value!293405 Int) (text!64190 List!75554)) (Times!9106) (Or!9106) (Equal!9106) (Minus!9106) (Broken!45534 (value!293406 List!75554)) (And!9106) (Div!9106) (LessEqual!9106) (Mod!9106) (Concat!30964) (Not!9106) (Plus!9106) (SpaceValue!9106 (value!293407 List!75554)) (IntegerValue!27320 (value!293408 Int) (text!64191 List!75554)) (StringLiteralValue!27319 (text!64192 List!75554)) (FloatLiteralValue!18213 (text!64193 List!75554)) (BytesLiteralValue!9106 (value!293409 List!75554)) (CommentValue!18213 (value!293410 List!75554)) (StringLiteralValue!27320 (value!293411 List!75554)) (ErrorTokenValue!9106 (msg!9167 List!75554)) )
))
(declare-datatypes ((Conc!16054 0))(
  ( (Node!16054 (left!57429 Conc!16054) (right!57759 Conc!16054) (csize!32338 Int) (cheight!16265 Int)) (Leaf!30758 (xs!19452 IArray!32169) (csize!32339 Int)) (Empty!16054) )
))
(declare-datatypes ((BalanceConc!31064 0))(
  ( (BalanceConc!31065 (c!1475500 Conc!16054)) )
))
(declare-datatypes ((TokenValueInjection!17520 0))(
  ( (TokenValueInjection!17521 (toValue!11869 Int) (toChars!11728 Int)) )
))
(declare-datatypes ((Rule!17372 0))(
  ( (Rule!17373 (regex!8786 Regex!21857) (tag!9650 String!85311) (isSeparator!8786 Bool) (transformation!8786 TokenValueInjection!17520)) )
))
(declare-datatypes ((List!75555 0))(
  ( (Nil!75429) (Cons!75429 (h!81877 Rule!17372) (t!391327 List!75555)) )
))
(declare-fun rs!157 () List!75555)

(declare-fun inv!97135 (String!85311) Bool)

(declare-fun inv!97137 (TokenValueInjection!17520) Bool)

(assert (=> b!8047711 (= e!4741675 (and tp!2412895 (inv!97135 (tag!9650 (h!81877 rs!157))) (inv!97137 (transformation!8786 (h!81877 rs!157))) e!4741678))))

(assert (=> b!8047712 (= e!4741678 (and tp!2412896 tp!2412897))))

(declare-fun b!8047710 () Bool)

(declare-fun e!4741676 () Bool)

(declare-fun tp!2412894 () Bool)

(assert (=> b!8047710 (= e!4741676 (and e!4741675 tp!2412894))))

(declare-fun res!3181366 () Bool)

(declare-fun e!4741677 () Bool)

(assert (=> start!757838 (=> (not res!3181366) (not e!4741677))))

(declare-datatypes ((LexerInterface!8374 0))(
  ( (LexerInterfaceExt!8371 (__x!35492 Int)) (Lexer!8372) )
))
(declare-fun thiss!10883 () LexerInterface!8374)

(get-info :version)

(assert (=> start!757838 (= res!3181366 ((_ is Lexer!8372) thiss!10883))))

(assert (=> start!757838 e!4741677))

(assert (=> start!757838 true))

(assert (=> start!757838 e!4741676))

(declare-fun b!8047709 () Bool)

(declare-fun ListPrimitiveSize!540 (List!75555) Int)

(assert (=> b!8047709 (= e!4741677 (< (ListPrimitiveSize!540 rs!157) 0))))

(assert (= (and start!757838 res!3181366) b!8047709))

(assert (= b!8047711 b!8047712))

(assert (= b!8047710 b!8047711))

(assert (= (and start!757838 ((_ is Cons!75429) rs!157)) b!8047710))

(declare-fun m!8399224 () Bool)

(assert (=> b!8047711 m!8399224))

(declare-fun m!8399226 () Bool)

(assert (=> b!8047711 m!8399226))

(declare-fun m!8399228 () Bool)

(assert (=> b!8047709 m!8399228))

(check-sat (not b_next!137371) (not b_next!137369) (not b!8047710) (not b!8047709) b_and!355017 (not b!8047711) b_and!355015)
(check-sat b_and!355017 b_and!355015 (not b_next!137369) (not b_next!137371))
(get-model)

(declare-fun d!2396820 () Bool)

(assert (=> d!2396820 (= (inv!97135 (tag!9650 (h!81877 rs!157))) (= (mod (str.len (value!293386 (tag!9650 (h!81877 rs!157)))) 2) 0))))

(assert (=> b!8047711 d!2396820))

(declare-fun d!2396822 () Bool)

(declare-fun res!3181369 () Bool)

(declare-fun e!4741681 () Bool)

(assert (=> d!2396822 (=> (not res!3181369) (not e!4741681))))

(declare-fun semiInverseModEq!3902 (Int Int) Bool)

(assert (=> d!2396822 (= res!3181369 (semiInverseModEq!3902 (toChars!11728 (transformation!8786 (h!81877 rs!157))) (toValue!11869 (transformation!8786 (h!81877 rs!157)))))))

(assert (=> d!2396822 (= (inv!97137 (transformation!8786 (h!81877 rs!157))) e!4741681)))

(declare-fun b!8047715 () Bool)

(declare-fun equivClasses!3716 (Int Int) Bool)

(assert (=> b!8047715 (= e!4741681 (equivClasses!3716 (toChars!11728 (transformation!8786 (h!81877 rs!157))) (toValue!11869 (transformation!8786 (h!81877 rs!157)))))))

(assert (= (and d!2396822 res!3181369) b!8047715))

(declare-fun m!8399230 () Bool)

(assert (=> d!2396822 m!8399230))

(declare-fun m!8399232 () Bool)

(assert (=> b!8047715 m!8399232))

(assert (=> b!8047711 d!2396822))

(declare-fun d!2396824 () Bool)

(declare-fun lt!2722899 () Int)

(assert (=> d!2396824 (>= lt!2722899 0)))

(declare-fun e!4741684 () Int)

(assert (=> d!2396824 (= lt!2722899 e!4741684)))

(declare-fun c!1475503 () Bool)

(assert (=> d!2396824 (= c!1475503 ((_ is Nil!75429) rs!157))))

(assert (=> d!2396824 (= (ListPrimitiveSize!540 rs!157) lt!2722899)))

(declare-fun b!8047720 () Bool)

(assert (=> b!8047720 (= e!4741684 0)))

(declare-fun b!8047721 () Bool)

(assert (=> b!8047721 (= e!4741684 (+ 1 (ListPrimitiveSize!540 (t!391327 rs!157))))))

(assert (= (and d!2396824 c!1475503) b!8047720))

(assert (= (and d!2396824 (not c!1475503)) b!8047721))

(declare-fun m!8399234 () Bool)

(assert (=> b!8047721 m!8399234))

(assert (=> b!8047709 d!2396824))

(declare-fun b!8047732 () Bool)

(declare-fun b_free!136583 () Bool)

(declare-fun b_next!137373 () Bool)

(assert (=> b!8047732 (= b_free!136583 (not b_next!137373))))

(declare-fun tp!2412909 () Bool)

(declare-fun b_and!355019 () Bool)

(assert (=> b!8047732 (= tp!2412909 b_and!355019)))

(declare-fun b_free!136585 () Bool)

(declare-fun b_next!137375 () Bool)

(assert (=> b!8047732 (= b_free!136585 (not b_next!137375))))

(declare-fun tp!2412908 () Bool)

(declare-fun b_and!355021 () Bool)

(assert (=> b!8047732 (= tp!2412908 b_and!355021)))

(declare-fun e!4741696 () Bool)

(assert (=> b!8047732 (= e!4741696 (and tp!2412909 tp!2412908))))

(declare-fun tp!2412906 () Bool)

(declare-fun b!8047731 () Bool)

(declare-fun e!4741694 () Bool)

(assert (=> b!8047731 (= e!4741694 (and tp!2412906 (inv!97135 (tag!9650 (h!81877 (t!391327 rs!157)))) (inv!97137 (transformation!8786 (h!81877 (t!391327 rs!157)))) e!4741696))))

(declare-fun b!8047730 () Bool)

(declare-fun e!4741693 () Bool)

(declare-fun tp!2412907 () Bool)

(assert (=> b!8047730 (= e!4741693 (and e!4741694 tp!2412907))))

(assert (=> b!8047710 (= tp!2412894 e!4741693)))

(assert (= b!8047731 b!8047732))

(assert (= b!8047730 b!8047731))

(assert (= (and b!8047710 ((_ is Cons!75429) (t!391327 rs!157))) b!8047730))

(declare-fun m!8399236 () Bool)

(assert (=> b!8047731 m!8399236))

(declare-fun m!8399238 () Bool)

(assert (=> b!8047731 m!8399238))

(declare-fun b!8047746 () Bool)

(declare-fun e!4741699 () Bool)

(declare-fun tp!2412923 () Bool)

(declare-fun tp!2412922 () Bool)

(assert (=> b!8047746 (= e!4741699 (and tp!2412923 tp!2412922))))

(declare-fun b!8047744 () Bool)

(declare-fun tp!2412921 () Bool)

(declare-fun tp!2412920 () Bool)

(assert (=> b!8047744 (= e!4741699 (and tp!2412921 tp!2412920))))

(declare-fun b!8047745 () Bool)

(declare-fun tp!2412924 () Bool)

(assert (=> b!8047745 (= e!4741699 tp!2412924)))

(declare-fun b!8047743 () Bool)

(declare-fun tp_is_empty!54659 () Bool)

(assert (=> b!8047743 (= e!4741699 tp_is_empty!54659)))

(assert (=> b!8047711 (= tp!2412895 e!4741699)))

(assert (= (and b!8047711 ((_ is ElementMatch!21857) (regex!8786 (h!81877 rs!157)))) b!8047743))

(assert (= (and b!8047711 ((_ is Concat!30963) (regex!8786 (h!81877 rs!157)))) b!8047744))

(assert (= (and b!8047711 ((_ is Star!21857) (regex!8786 (h!81877 rs!157)))) b!8047745))

(assert (= (and b!8047711 ((_ is Union!21857) (regex!8786 (h!81877 rs!157)))) b!8047746))

(check-sat (not b_next!137371) (not b!8047745) b_and!355021 (not b!8047715) (not b!8047744) b_and!355019 (not b!8047746) (not b_next!137373) b_and!355017 tp_is_empty!54659 (not b!8047721) (not b_next!137369) (not b!8047731) b_and!355015 (not b!8047730) (not d!2396822) (not b_next!137375))
(check-sat (not b_next!137371) b_and!355021 (not b_next!137369) b_and!355019 b_and!355015 (not b_next!137373) b_and!355017 (not b_next!137375))
