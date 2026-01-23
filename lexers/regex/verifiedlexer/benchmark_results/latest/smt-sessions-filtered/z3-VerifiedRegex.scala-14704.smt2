; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757854 () Bool)

(assert start!757854)

(declare-fun b!8047806 () Bool)

(declare-fun b_free!136595 () Bool)

(declare-fun b_next!137385 () Bool)

(assert (=> b!8047806 (= b_free!136595 (not b_next!137385))))

(declare-fun tp!2412975 () Bool)

(declare-fun b_and!355031 () Bool)

(assert (=> b!8047806 (= tp!2412975 b_and!355031)))

(declare-fun b_free!136597 () Bool)

(declare-fun b_next!137387 () Bool)

(assert (=> b!8047806 (= b_free!136597 (not b_next!137387))))

(declare-fun tp!2412973 () Bool)

(declare-fun b_and!355033 () Bool)

(assert (=> b!8047806 (= tp!2412973 b_and!355033)))

(declare-fun res!3181384 () Bool)

(declare-fun e!4741749 () Bool)

(assert (=> start!757854 (=> (not res!3181384) (not e!4741749))))

(declare-datatypes ((LexerInterface!8376 0))(
  ( (LexerInterfaceExt!8373 (__x!35495 Int)) (Lexer!8374) )
))
(declare-fun thiss!10883 () LexerInterface!8376)

(declare-datatypes ((C!44056 0))(
  ( (C!44057 (val!32804 Int)) )
))
(declare-datatypes ((List!75559 0))(
  ( (Nil!75433) (Cons!75433 (h!81881 C!44056) (t!391331 List!75559)) )
))
(declare-datatypes ((IArray!32173 0))(
  ( (IArray!32174 (innerList!16144 List!75559)) )
))
(declare-datatypes ((List!75560 0))(
  ( (Nil!75434) (Cons!75434 (h!81882 (_ BitVec 16)) (t!391332 List!75560)) )
))
(declare-datatypes ((Regex!21859 0))(
  ( (ElementMatch!21859 (c!1475509 C!44056)) (Concat!30967 (regOne!44230 Regex!21859) (regTwo!44230 Regex!21859)) (EmptyExpr!21859) (Star!21859 (reg!22188 Regex!21859)) (EmptyLang!21859) (Union!21859 (regOne!44231 Regex!21859) (regTwo!44231 Regex!21859)) )
))
(declare-datatypes ((String!85321 0))(
  ( (String!85322 (value!293441 String)) )
))
(declare-datatypes ((TokenValue!9108 0))(
  ( (FloatLiteralValue!18216 (text!64201 List!75560)) (TokenValueExt!9107 (__x!35496 Int)) (Broken!45540 (value!293442 List!75560)) (Object!9233) (End!9108) (Def!9108) (Underscore!9108) (Match!9108) (Else!9108) (Error!9108) (Case!9108) (If!9108) (Extends!9108) (Abstract!9108) (Class!9108) (Val!9108) (DelimiterValue!18216 (del!9168 List!75560)) (KeywordValue!9114 (value!293443 List!75560)) (CommentValue!18216 (value!293444 List!75560)) (WhitespaceValue!18216 (value!293445 List!75560)) (IndentationValue!9108 (value!293446 List!75560)) (String!85323) (Int32!9108) (Broken!45541 (value!293447 List!75560)) (Boolean!9109) (Unit!171171) (OperatorValue!9111 (op!9168 List!75560)) (IdentifierValue!18216 (value!293448 List!75560)) (IdentifierValue!18217 (value!293449 List!75560)) (WhitespaceValue!18217 (value!293450 List!75560)) (True!18216) (False!18216) (Broken!45542 (value!293451 List!75560)) (Broken!45543 (value!293452 List!75560)) (True!18217) (RightBrace!9108) (RightBracket!9108) (Colon!9108) (Null!9108) (Comma!9108) (LeftBracket!9108) (False!18217) (LeftBrace!9108) (ImaginaryLiteralValue!9108 (text!64202 List!75560)) (StringLiteralValue!27324 (value!293453 List!75560)) (EOFValue!9108 (value!293454 List!75560)) (IdentValue!9108 (value!293455 List!75560)) (DelimiterValue!18217 (value!293456 List!75560)) (DedentValue!9108 (value!293457 List!75560)) (NewLineValue!9108 (value!293458 List!75560)) (IntegerValue!27324 (value!293459 (_ BitVec 32)) (text!64203 List!75560)) (IntegerValue!27325 (value!293460 Int) (text!64204 List!75560)) (Times!9108) (Or!9108) (Equal!9108) (Minus!9108) (Broken!45544 (value!293461 List!75560)) (And!9108) (Div!9108) (LessEqual!9108) (Mod!9108) (Concat!30968) (Not!9108) (Plus!9108) (SpaceValue!9108 (value!293462 List!75560)) (IntegerValue!27326 (value!293463 Int) (text!64205 List!75560)) (StringLiteralValue!27325 (text!64206 List!75560)) (FloatLiteralValue!18217 (text!64207 List!75560)) (BytesLiteralValue!9108 (value!293464 List!75560)) (CommentValue!18217 (value!293465 List!75560)) (StringLiteralValue!27326 (value!293466 List!75560)) (ErrorTokenValue!9108 (msg!9169 List!75560)) )
))
(declare-datatypes ((Conc!16056 0))(
  ( (Node!16056 (left!57432 Conc!16056) (right!57762 Conc!16056) (csize!32342 Int) (cheight!16267 Int)) (Leaf!30761 (xs!19454 IArray!32173) (csize!32343 Int)) (Empty!16056) )
))
(declare-datatypes ((BalanceConc!31068 0))(
  ( (BalanceConc!31069 (c!1475510 Conc!16056)) )
))
(declare-datatypes ((TokenValueInjection!17524 0))(
  ( (TokenValueInjection!17525 (toValue!11871 Int) (toChars!11730 Int)) )
))
(declare-datatypes ((Rule!17376 0))(
  ( (Rule!17377 (regex!8788 Regex!21859) (tag!9652 String!85321) (isSeparator!8788 Bool) (transformation!8788 TokenValueInjection!17524)) )
))
(declare-datatypes ((List!75561 0))(
  ( (Nil!75435) (Cons!75435 (h!81883 Rule!17376) (t!391333 List!75561)) )
))
(declare-fun rs!157 () List!75561)

(get-info :version)

(assert (=> start!757854 (= res!3181384 (and ((_ is Lexer!8374) thiss!10883) ((_ is Cons!75435) rs!157)))))

(assert (=> start!757854 e!4741749))

(assert (=> start!757854 true))

(declare-fun e!4741748 () Bool)

(assert (=> start!757854 e!4741748))

(declare-fun e!4741747 () Bool)

(assert (=> b!8047806 (= e!4741747 (and tp!2412975 tp!2412973))))

(declare-fun b!8047807 () Bool)

(declare-fun res!3181383 () Bool)

(assert (=> b!8047807 (=> (not res!3181383) (not e!4741749))))

(declare-fun ruleValid!4004 (LexerInterface!8376 Rule!17376) Bool)

(assert (=> b!8047807 (= res!3181383 (ruleValid!4004 thiss!10883 (h!81883 rs!157)))))

(declare-fun b!8047808 () Bool)

(declare-fun e!4741746 () Bool)

(declare-fun tp!2412972 () Bool)

(assert (=> b!8047808 (= e!4741748 (and e!4741746 tp!2412972))))

(declare-fun b!8047809 () Bool)

(declare-fun ListPrimitiveSize!542 (List!75561) Int)

(assert (=> b!8047809 (= e!4741749 (>= (ListPrimitiveSize!542 (t!391333 rs!157)) (ListPrimitiveSize!542 rs!157)))))

(declare-fun b!8047810 () Bool)

(declare-fun tp!2412974 () Bool)

(declare-fun inv!97140 (String!85321) Bool)

(declare-fun inv!97142 (TokenValueInjection!17524) Bool)

(assert (=> b!8047810 (= e!4741746 (and tp!2412974 (inv!97140 (tag!9652 (h!81883 rs!157))) (inv!97142 (transformation!8788 (h!81883 rs!157))) e!4741747))))

(assert (= (and start!757854 res!3181384) b!8047807))

(assert (= (and b!8047807 res!3181383) b!8047809))

(assert (= b!8047810 b!8047806))

(assert (= b!8047808 b!8047810))

(assert (= (and start!757854 ((_ is Cons!75435) rs!157)) b!8047808))

(declare-fun m!8399260 () Bool)

(assert (=> b!8047807 m!8399260))

(declare-fun m!8399262 () Bool)

(assert (=> b!8047809 m!8399262))

(declare-fun m!8399264 () Bool)

(assert (=> b!8047809 m!8399264))

(declare-fun m!8399266 () Bool)

(assert (=> b!8047810 m!8399266))

(declare-fun m!8399268 () Bool)

(assert (=> b!8047810 m!8399268))

(check-sat b_and!355033 (not b!8047810) (not b!8047809) (not b!8047808) (not b_next!137385) b_and!355031 (not b!8047807) (not b_next!137387))
(check-sat b_and!355033 b_and!355031 (not b_next!137385) (not b_next!137387))
(get-model)

(declare-fun d!2396839 () Bool)

(declare-fun res!3181399 () Bool)

(declare-fun e!4741760 () Bool)

(assert (=> d!2396839 (=> (not res!3181399) (not e!4741760))))

(declare-fun validRegex!12055 (Regex!21859) Bool)

(assert (=> d!2396839 (= res!3181399 (validRegex!12055 (regex!8788 (h!81883 rs!157))))))

(assert (=> d!2396839 (= (ruleValid!4004 thiss!10883 (h!81883 rs!157)) e!4741760)))

(declare-fun b!8047829 () Bool)

(declare-fun res!3181400 () Bool)

(assert (=> b!8047829 (=> (not res!3181400) (not e!4741760))))

(declare-fun nullable!9784 (Regex!21859) Bool)

(assert (=> b!8047829 (= res!3181400 (not (nullable!9784 (regex!8788 (h!81883 rs!157)))))))

(declare-fun b!8047830 () Bool)

(assert (=> b!8047830 (= e!4741760 (not (= (tag!9652 (h!81883 rs!157)) (String!85322 ""))))))

(assert (= (and d!2396839 res!3181399) b!8047829))

(assert (= (and b!8047829 res!3181400) b!8047830))

(declare-fun m!8399276 () Bool)

(assert (=> d!2396839 m!8399276))

(declare-fun m!8399278 () Bool)

(assert (=> b!8047829 m!8399278))

(assert (=> b!8047807 d!2396839))

(declare-fun d!2396845 () Bool)

(assert (=> d!2396845 (= (inv!97140 (tag!9652 (h!81883 rs!157))) (= (mod (str.len (value!293441 (tag!9652 (h!81883 rs!157)))) 2) 0))))

(assert (=> b!8047810 d!2396845))

(declare-fun d!2396847 () Bool)

(declare-fun res!3181406 () Bool)

(declare-fun e!4741780 () Bool)

(assert (=> d!2396847 (=> (not res!3181406) (not e!4741780))))

(declare-fun semiInverseModEq!3905 (Int Int) Bool)

(assert (=> d!2396847 (= res!3181406 (semiInverseModEq!3905 (toChars!11730 (transformation!8788 (h!81883 rs!157))) (toValue!11871 (transformation!8788 (h!81883 rs!157)))))))

(assert (=> d!2396847 (= (inv!97142 (transformation!8788 (h!81883 rs!157))) e!4741780)))

(declare-fun b!8047857 () Bool)

(declare-fun equivClasses!3718 (Int Int) Bool)

(assert (=> b!8047857 (= e!4741780 (equivClasses!3718 (toChars!11730 (transformation!8788 (h!81883 rs!157))) (toValue!11871 (transformation!8788 (h!81883 rs!157)))))))

(assert (= (and d!2396847 res!3181406) b!8047857))

(declare-fun m!8399288 () Bool)

(assert (=> d!2396847 m!8399288))

(declare-fun m!8399290 () Bool)

(assert (=> b!8047857 m!8399290))

(assert (=> b!8047810 d!2396847))

(declare-fun d!2396849 () Bool)

(declare-fun lt!2722909 () Int)

(assert (=> d!2396849 (>= lt!2722909 0)))

(declare-fun e!4741784 () Int)

(assert (=> d!2396849 (= lt!2722909 e!4741784)))

(declare-fun c!1475517 () Bool)

(assert (=> d!2396849 (= c!1475517 ((_ is Nil!75435) (t!391333 rs!157)))))

(assert (=> d!2396849 (= (ListPrimitiveSize!542 (t!391333 rs!157)) lt!2722909)))

(declare-fun b!8047866 () Bool)

(assert (=> b!8047866 (= e!4741784 0)))

(declare-fun b!8047867 () Bool)

(assert (=> b!8047867 (= e!4741784 (+ 1 (ListPrimitiveSize!542 (t!391333 (t!391333 rs!157)))))))

(assert (= (and d!2396849 c!1475517) b!8047866))

(assert (= (and d!2396849 (not c!1475517)) b!8047867))

(declare-fun m!8399292 () Bool)

(assert (=> b!8047867 m!8399292))

(assert (=> b!8047809 d!2396849))

(declare-fun d!2396851 () Bool)

(declare-fun lt!2722910 () Int)

(assert (=> d!2396851 (>= lt!2722910 0)))

(declare-fun e!4741785 () Int)

(assert (=> d!2396851 (= lt!2722910 e!4741785)))

(declare-fun c!1475518 () Bool)

(assert (=> d!2396851 (= c!1475518 ((_ is Nil!75435) rs!157))))

(assert (=> d!2396851 (= (ListPrimitiveSize!542 rs!157) lt!2722910)))

(declare-fun b!8047868 () Bool)

(assert (=> b!8047868 (= e!4741785 0)))

(declare-fun b!8047869 () Bool)

(assert (=> b!8047869 (= e!4741785 (+ 1 (ListPrimitiveSize!542 (t!391333 rs!157))))))

(assert (= (and d!2396851 c!1475518) b!8047868))

(assert (= (and d!2396851 (not c!1475518)) b!8047869))

(assert (=> b!8047869 m!8399262))

(assert (=> b!8047809 d!2396851))

(declare-fun b!8047880 () Bool)

(declare-fun b_free!136603 () Bool)

(declare-fun b_next!137393 () Bool)

(assert (=> b!8047880 (= b_free!136603 (not b_next!137393))))

(declare-fun tp!2413011 () Bool)

(declare-fun b_and!355039 () Bool)

(assert (=> b!8047880 (= tp!2413011 b_and!355039)))

(declare-fun b_free!136605 () Bool)

(declare-fun b_next!137395 () Bool)

(assert (=> b!8047880 (= b_free!136605 (not b_next!137395))))

(declare-fun tp!2413014 () Bool)

(declare-fun b_and!355041 () Bool)

(assert (=> b!8047880 (= tp!2413014 b_and!355041)))

(declare-fun e!4741796 () Bool)

(assert (=> b!8047880 (= e!4741796 (and tp!2413011 tp!2413014))))

(declare-fun e!4741795 () Bool)

(declare-fun tp!2413012 () Bool)

(declare-fun b!8047879 () Bool)

(assert (=> b!8047879 (= e!4741795 (and tp!2413012 (inv!97140 (tag!9652 (h!81883 (t!391333 rs!157)))) (inv!97142 (transformation!8788 (h!81883 (t!391333 rs!157)))) e!4741796))))

(declare-fun b!8047878 () Bool)

(declare-fun e!4741794 () Bool)

(declare-fun tp!2413013 () Bool)

(assert (=> b!8047878 (= e!4741794 (and e!4741795 tp!2413013))))

(assert (=> b!8047808 (= tp!2412972 e!4741794)))

(assert (= b!8047879 b!8047880))

(assert (= b!8047878 b!8047879))

(assert (= (and b!8047808 ((_ is Cons!75435) (t!391333 rs!157))) b!8047878))

(declare-fun m!8399294 () Bool)

(assert (=> b!8047879 m!8399294))

(declare-fun m!8399296 () Bool)

(assert (=> b!8047879 m!8399296))

(declare-fun e!4741800 () Bool)

(assert (=> b!8047810 (= tp!2412974 e!4741800)))

(declare-fun b!8047894 () Bool)

(declare-fun tp!2413025 () Bool)

(declare-fun tp!2413026 () Bool)

(assert (=> b!8047894 (= e!4741800 (and tp!2413025 tp!2413026))))

(declare-fun b!8047891 () Bool)

(declare-fun tp_is_empty!54665 () Bool)

(assert (=> b!8047891 (= e!4741800 tp_is_empty!54665)))

(declare-fun b!8047892 () Bool)

(declare-fun tp!2413029 () Bool)

(declare-fun tp!2413028 () Bool)

(assert (=> b!8047892 (= e!4741800 (and tp!2413029 tp!2413028))))

(declare-fun b!8047893 () Bool)

(declare-fun tp!2413027 () Bool)

(assert (=> b!8047893 (= e!4741800 tp!2413027)))

(assert (= (and b!8047810 ((_ is ElementMatch!21859) (regex!8788 (h!81883 rs!157)))) b!8047891))

(assert (= (and b!8047810 ((_ is Concat!30967) (regex!8788 (h!81883 rs!157)))) b!8047892))

(assert (= (and b!8047810 ((_ is Star!21859) (regex!8788 (h!81883 rs!157)))) b!8047893))

(assert (= (and b!8047810 ((_ is Union!21859) (regex!8788 (h!81883 rs!157)))) b!8047894))

(check-sat (not b!8047869) (not b!8047892) (not b!8047894) (not b!8047829) (not b!8047878) b_and!355033 (not b!8047867) tp_is_empty!54665 (not b!8047879) b_and!355041 (not b_next!137385) b_and!355031 (not b_next!137395) (not b_next!137387) (not d!2396847) (not b!8047857) (not b_next!137393) (not b!8047893) b_and!355039 (not d!2396839))
(check-sat b_and!355033 (not b_next!137393) b_and!355039 b_and!355041 (not b_next!137385) b_and!355031 (not b_next!137395) (not b_next!137387))
