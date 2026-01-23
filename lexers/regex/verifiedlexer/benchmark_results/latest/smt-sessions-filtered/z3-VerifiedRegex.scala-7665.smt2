; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404206 () Bool)

(assert start!404206)

(declare-fun b!4227014 () Bool)

(declare-fun b_free!124627 () Bool)

(declare-fun b_next!125331 () Bool)

(assert (=> b!4227014 (= b_free!124627 (not b_next!125331))))

(declare-fun tp!1294327 () Bool)

(declare-fun b_and!333861 () Bool)

(assert (=> b!4227014 (= tp!1294327 b_and!333861)))

(declare-fun b_free!124629 () Bool)

(declare-fun b_next!125333 () Bool)

(assert (=> b!4227014 (= b_free!124629 (not b_next!125333))))

(declare-fun tp!1294326 () Bool)

(declare-fun b_and!333863 () Bool)

(assert (=> b!4227014 (= tp!1294326 b_and!333863)))

(declare-fun b!4227019 () Bool)

(declare-fun b_free!124631 () Bool)

(declare-fun b_next!125335 () Bool)

(assert (=> b!4227019 (= b_free!124631 (not b_next!125335))))

(declare-fun tp!1294322 () Bool)

(declare-fun b_and!333865 () Bool)

(assert (=> b!4227019 (= tp!1294322 b_and!333865)))

(declare-fun b_free!124633 () Bool)

(declare-fun b_next!125337 () Bool)

(assert (=> b!4227019 (= b_free!124633 (not b_next!125337))))

(declare-fun tp!1294328 () Bool)

(declare-fun b_and!333867 () Bool)

(assert (=> b!4227019 (= tp!1294328 b_and!333867)))

(declare-fun res!1738133 () Bool)

(declare-fun e!2624507 () Bool)

(assert (=> start!404206 (=> (not res!1738133) (not e!2624507))))

(declare-datatypes ((LexerInterface!7439 0))(
  ( (LexerInterfaceExt!7436 (__x!28371 Int)) (Lexer!7437) )
))
(declare-fun thiss!26827 () LexerInterface!7439)

(get-info :version)

(assert (=> start!404206 (= res!1738133 ((_ is Lexer!7437) thiss!26827))))

(assert (=> start!404206 e!2624507))

(assert (=> start!404206 true))

(declare-fun e!2624508 () Bool)

(assert (=> start!404206 e!2624508))

(declare-fun e!2624504 () Bool)

(assert (=> start!404206 e!2624504))

(declare-fun b!4227013 () Bool)

(declare-fun e!2624506 () Bool)

(declare-datatypes ((C!25692 0))(
  ( (C!25693 (val!15008 Int)) )
))
(declare-datatypes ((List!46735 0))(
  ( (Nil!46611) (Cons!46611 (h!52031 C!25692) (t!349352 List!46735)) )
))
(declare-datatypes ((IArray!28115 0))(
  ( (IArray!28116 (innerList!14115 List!46735)) )
))
(declare-datatypes ((Conc!14055 0))(
  ( (Node!14055 (left!34660 Conc!14055) (right!34990 Conc!14055) (csize!28340 Int) (cheight!14266 Int)) (Leaf!21721 (xs!17361 IArray!28115) (csize!28341 Int)) (Empty!14055) )
))
(declare-datatypes ((List!46736 0))(
  ( (Nil!46612) (Cons!46612 (h!52032 (_ BitVec 16)) (t!349353 List!46736)) )
))
(declare-datatypes ((TokenValue!8074 0))(
  ( (FloatLiteralValue!16148 (text!56963 List!46736)) (TokenValueExt!8073 (__x!28372 Int)) (Broken!40370 (value!244040 List!46736)) (Object!8197) (End!8074) (Def!8074) (Underscore!8074) (Match!8074) (Else!8074) (Error!8074) (Case!8074) (If!8074) (Extends!8074) (Abstract!8074) (Class!8074) (Val!8074) (DelimiterValue!16148 (del!8134 List!46736)) (KeywordValue!8080 (value!244041 List!46736)) (CommentValue!16148 (value!244042 List!46736)) (WhitespaceValue!16148 (value!244043 List!46736)) (IndentationValue!8074 (value!244044 List!46736)) (String!54239) (Int32!8074) (Broken!40371 (value!244045 List!46736)) (Boolean!8075) (Unit!65744) (OperatorValue!8077 (op!8134 List!46736)) (IdentifierValue!16148 (value!244046 List!46736)) (IdentifierValue!16149 (value!244047 List!46736)) (WhitespaceValue!16149 (value!244048 List!46736)) (True!16148) (False!16148) (Broken!40372 (value!244049 List!46736)) (Broken!40373 (value!244050 List!46736)) (True!16149) (RightBrace!8074) (RightBracket!8074) (Colon!8074) (Null!8074) (Comma!8074) (LeftBracket!8074) (False!16149) (LeftBrace!8074) (ImaginaryLiteralValue!8074 (text!56964 List!46736)) (StringLiteralValue!24222 (value!244051 List!46736)) (EOFValue!8074 (value!244052 List!46736)) (IdentValue!8074 (value!244053 List!46736)) (DelimiterValue!16149 (value!244054 List!46736)) (DedentValue!8074 (value!244055 List!46736)) (NewLineValue!8074 (value!244056 List!46736)) (IntegerValue!24222 (value!244057 (_ BitVec 32)) (text!56965 List!46736)) (IntegerValue!24223 (value!244058 Int) (text!56966 List!46736)) (Times!8074) (Or!8074) (Equal!8074) (Minus!8074) (Broken!40374 (value!244059 List!46736)) (And!8074) (Div!8074) (LessEqual!8074) (Mod!8074) (Concat!20823) (Not!8074) (Plus!8074) (SpaceValue!8074 (value!244060 List!46736)) (IntegerValue!24224 (value!244061 Int) (text!56967 List!46736)) (StringLiteralValue!24223 (text!56968 List!46736)) (FloatLiteralValue!16149 (text!56969 List!46736)) (BytesLiteralValue!8074 (value!244062 List!46736)) (CommentValue!16149 (value!244063 List!46736)) (StringLiteralValue!24224 (value!244064 List!46736)) (ErrorTokenValue!8074 (msg!8135 List!46736)) )
))
(declare-datatypes ((BalanceConc!27704 0))(
  ( (BalanceConc!27705 (c!718704 Conc!14055)) )
))
(declare-datatypes ((TokenValueInjection!15576 0))(
  ( (TokenValueInjection!15577 (toValue!10572 Int) (toChars!10431 Int)) )
))
(declare-datatypes ((Regex!12749 0))(
  ( (ElementMatch!12749 (c!718705 C!25692)) (Concat!20824 (regOne!26010 Regex!12749) (regTwo!26010 Regex!12749)) (EmptyExpr!12749) (Star!12749 (reg!13078 Regex!12749)) (EmptyLang!12749) (Union!12749 (regOne!26011 Regex!12749) (regTwo!26011 Regex!12749)) )
))
(declare-datatypes ((String!54240 0))(
  ( (String!54241 (value!244065 String)) )
))
(declare-datatypes ((Rule!15488 0))(
  ( (Rule!15489 (regex!7844 Regex!12749) (tag!8708 String!54240) (isSeparator!7844 Bool) (transformation!7844 TokenValueInjection!15576)) )
))
(declare-datatypes ((List!46737 0))(
  ( (Nil!46613) (Cons!46613 (h!52033 Rule!15488) (t!349354 List!46737)) )
))
(declare-fun rules!4024 () List!46737)

(declare-fun e!2624510 () Bool)

(declare-fun tp!1294324 () Bool)

(declare-fun inv!61266 (String!54240) Bool)

(declare-fun inv!61268 (TokenValueInjection!15576) Bool)

(assert (=> b!4227013 (= e!2624506 (and tp!1294324 (inv!61266 (tag!8708 (h!52033 rules!4024))) (inv!61268 (transformation!7844 (h!52033 rules!4024))) e!2624510))))

(assert (=> b!4227014 (= e!2624510 (and tp!1294327 tp!1294326))))

(declare-fun b!4227015 () Bool)

(declare-fun ListPrimitiveSize!307 (List!46737) Int)

(assert (=> b!4227015 (= e!2624507 (< (ListPrimitiveSize!307 rules!4024) 0))))

(declare-fun b!4227016 () Bool)

(declare-fun res!1738132 () Bool)

(assert (=> b!4227016 (=> (not res!1738132) (not e!2624507))))

(declare-fun rulesValidInductive!2946 (LexerInterface!7439 List!46737) Bool)

(assert (=> b!4227016 (= res!1738132 (rulesValidInductive!2946 thiss!26827 rules!4024))))

(declare-fun tp!1294325 () Bool)

(declare-fun r!4367 () Rule!15488)

(declare-fun e!2624509 () Bool)

(declare-fun b!4227017 () Bool)

(assert (=> b!4227017 (= e!2624504 (and tp!1294325 (inv!61266 (tag!8708 r!4367)) (inv!61268 (transformation!7844 r!4367)) e!2624509))))

(declare-fun b!4227018 () Bool)

(declare-fun res!1738134 () Bool)

(assert (=> b!4227018 (=> (not res!1738134) (not e!2624507))))

(declare-fun contains!9667 (List!46737 Rule!15488) Bool)

(assert (=> b!4227018 (= res!1738134 (contains!9667 rules!4024 r!4367))))

(assert (=> b!4227019 (= e!2624509 (and tp!1294322 tp!1294328))))

(declare-fun b!4227020 () Bool)

(declare-fun tp!1294323 () Bool)

(assert (=> b!4227020 (= e!2624508 (and e!2624506 tp!1294323))))

(assert (= (and start!404206 res!1738133) b!4227018))

(assert (= (and b!4227018 res!1738134) b!4227016))

(assert (= (and b!4227016 res!1738132) b!4227015))

(assert (= b!4227013 b!4227014))

(assert (= b!4227020 b!4227013))

(assert (= (and start!404206 ((_ is Cons!46613) rules!4024)) b!4227020))

(assert (= b!4227017 b!4227019))

(assert (= start!404206 b!4227017))

(declare-fun m!4814665 () Bool)

(assert (=> b!4227016 m!4814665))

(declare-fun m!4814667 () Bool)

(assert (=> b!4227013 m!4814667))

(declare-fun m!4814669 () Bool)

(assert (=> b!4227013 m!4814669))

(declare-fun m!4814671 () Bool)

(assert (=> b!4227017 m!4814671))

(declare-fun m!4814673 () Bool)

(assert (=> b!4227017 m!4814673))

(declare-fun m!4814675 () Bool)

(assert (=> b!4227018 m!4814675))

(declare-fun m!4814677 () Bool)

(assert (=> b!4227015 m!4814677))

(check-sat (not b!4227016) (not b_next!125337) (not b!4227015) (not b!4227013) (not b_next!125335) b_and!333861 b_and!333867 (not b!4227020) (not b_next!125333) (not b!4227017) (not b_next!125331) b_and!333863 (not b!4227018) b_and!333865)
(check-sat (not b_next!125337) (not b_next!125333) (not b_next!125335) b_and!333861 b_and!333865 b_and!333867 (not b_next!125331) b_and!333863)
(get-model)

(declare-fun d!1244410 () Bool)

(declare-fun lt!1503219 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7325 (List!46737) (InoxSet Rule!15488))

(assert (=> d!1244410 (= lt!1503219 (select (content!7325 rules!4024) r!4367))))

(declare-fun e!2624516 () Bool)

(assert (=> d!1244410 (= lt!1503219 e!2624516)))

(declare-fun res!1738143 () Bool)

(assert (=> d!1244410 (=> (not res!1738143) (not e!2624516))))

(assert (=> d!1244410 (= res!1738143 ((_ is Cons!46613) rules!4024))))

(assert (=> d!1244410 (= (contains!9667 rules!4024 r!4367) lt!1503219)))

(declare-fun b!4227025 () Bool)

(declare-fun e!2624515 () Bool)

(assert (=> b!4227025 (= e!2624516 e!2624515)))

(declare-fun res!1738144 () Bool)

(assert (=> b!4227025 (=> res!1738144 e!2624515)))

(assert (=> b!4227025 (= res!1738144 (= (h!52033 rules!4024) r!4367))))

(declare-fun b!4227026 () Bool)

(assert (=> b!4227026 (= e!2624515 (contains!9667 (t!349354 rules!4024) r!4367))))

(assert (= (and d!1244410 res!1738143) b!4227025))

(assert (= (and b!4227025 (not res!1738144)) b!4227026))

(declare-fun m!4814679 () Bool)

(assert (=> d!1244410 m!4814679))

(declare-fun m!4814681 () Bool)

(assert (=> d!1244410 m!4814681))

(declare-fun m!4814683 () Bool)

(assert (=> b!4227026 m!4814683))

(assert (=> b!4227018 d!1244410))

(declare-fun d!1244412 () Bool)

(assert (=> d!1244412 (= (inv!61266 (tag!8708 (h!52033 rules!4024))) (= (mod (str.len (value!244065 (tag!8708 (h!52033 rules!4024)))) 2) 0))))

(assert (=> b!4227013 d!1244412))

(declare-fun d!1244416 () Bool)

(declare-fun res!1738149 () Bool)

(declare-fun e!2624521 () Bool)

(assert (=> d!1244416 (=> (not res!1738149) (not e!2624521))))

(declare-fun semiInverseModEq!3413 (Int Int) Bool)

(assert (=> d!1244416 (= res!1738149 (semiInverseModEq!3413 (toChars!10431 (transformation!7844 (h!52033 rules!4024))) (toValue!10572 (transformation!7844 (h!52033 rules!4024)))))))

(assert (=> d!1244416 (= (inv!61268 (transformation!7844 (h!52033 rules!4024))) e!2624521)))

(declare-fun b!4227031 () Bool)

(declare-fun equivClasses!3312 (Int Int) Bool)

(assert (=> b!4227031 (= e!2624521 (equivClasses!3312 (toChars!10431 (transformation!7844 (h!52033 rules!4024))) (toValue!10572 (transformation!7844 (h!52033 rules!4024)))))))

(assert (= (and d!1244416 res!1738149) b!4227031))

(declare-fun m!4814685 () Bool)

(assert (=> d!1244416 m!4814685))

(declare-fun m!4814687 () Bool)

(assert (=> b!4227031 m!4814687))

(assert (=> b!4227013 d!1244416))

(declare-fun d!1244420 () Bool)

(declare-fun lt!1503222 () Int)

(assert (=> d!1244420 (>= lt!1503222 0)))

(declare-fun e!2624526 () Int)

(assert (=> d!1244420 (= lt!1503222 e!2624526)))

(declare-fun c!718708 () Bool)

(assert (=> d!1244420 (= c!718708 ((_ is Nil!46613) rules!4024))))

(assert (=> d!1244420 (= (ListPrimitiveSize!307 rules!4024) lt!1503222)))

(declare-fun b!4227038 () Bool)

(assert (=> b!4227038 (= e!2624526 0)))

(declare-fun b!4227039 () Bool)

(assert (=> b!4227039 (= e!2624526 (+ 1 (ListPrimitiveSize!307 (t!349354 rules!4024))))))

(assert (= (and d!1244420 c!718708) b!4227038))

(assert (= (and d!1244420 (not c!718708)) b!4227039))

(declare-fun m!4814697 () Bool)

(assert (=> b!4227039 m!4814697))

(assert (=> b!4227015 d!1244420))

(declare-fun d!1244428 () Bool)

(assert (=> d!1244428 true))

(declare-fun lt!1503234 () Bool)

(declare-fun lambda!129933 () Int)

(declare-fun forall!8520 (List!46737 Int) Bool)

(assert (=> d!1244428 (= lt!1503234 (forall!8520 rules!4024 lambda!129933))))

(declare-fun e!2624563 () Bool)

(assert (=> d!1244428 (= lt!1503234 e!2624563)))

(declare-fun res!1738169 () Bool)

(assert (=> d!1244428 (=> res!1738169 e!2624563)))

(assert (=> d!1244428 (= res!1738169 (not ((_ is Cons!46613) rules!4024)))))

(assert (=> d!1244428 (= (rulesValidInductive!2946 thiss!26827 rules!4024) lt!1503234)))

(declare-fun b!4227093 () Bool)

(declare-fun e!2624562 () Bool)

(assert (=> b!4227093 (= e!2624563 e!2624562)))

(declare-fun res!1738168 () Bool)

(assert (=> b!4227093 (=> (not res!1738168) (not e!2624562))))

(declare-fun ruleValid!3546 (LexerInterface!7439 Rule!15488) Bool)

(assert (=> b!4227093 (= res!1738168 (ruleValid!3546 thiss!26827 (h!52033 rules!4024)))))

(declare-fun b!4227094 () Bool)

(assert (=> b!4227094 (= e!2624562 (rulesValidInductive!2946 thiss!26827 (t!349354 rules!4024)))))

(assert (= (and d!1244428 (not res!1738169)) b!4227093))

(assert (= (and b!4227093 res!1738168) b!4227094))

(declare-fun m!4814717 () Bool)

(assert (=> d!1244428 m!4814717))

(declare-fun m!4814719 () Bool)

(assert (=> b!4227093 m!4814719))

(declare-fun m!4814721 () Bool)

(assert (=> b!4227094 m!4814721))

(assert (=> b!4227016 d!1244428))

(declare-fun d!1244434 () Bool)

(assert (=> d!1244434 (= (inv!61266 (tag!8708 r!4367)) (= (mod (str.len (value!244065 (tag!8708 r!4367))) 2) 0))))

(assert (=> b!4227017 d!1244434))

(declare-fun d!1244436 () Bool)

(declare-fun res!1738170 () Bool)

(declare-fun e!2624564 () Bool)

(assert (=> d!1244436 (=> (not res!1738170) (not e!2624564))))

(assert (=> d!1244436 (= res!1738170 (semiInverseModEq!3413 (toChars!10431 (transformation!7844 r!4367)) (toValue!10572 (transformation!7844 r!4367))))))

(assert (=> d!1244436 (= (inv!61268 (transformation!7844 r!4367)) e!2624564)))

(declare-fun b!4227097 () Bool)

(assert (=> b!4227097 (= e!2624564 (equivClasses!3312 (toChars!10431 (transformation!7844 r!4367)) (toValue!10572 (transformation!7844 r!4367))))))

(assert (= (and d!1244436 res!1738170) b!4227097))

(declare-fun m!4814723 () Bool)

(assert (=> d!1244436 m!4814723))

(declare-fun m!4814725 () Bool)

(assert (=> b!4227097 m!4814725))

(assert (=> b!4227017 d!1244436))

(declare-fun b!4227109 () Bool)

(declare-fun e!2624567 () Bool)

(declare-fun tp!1294371 () Bool)

(declare-fun tp!1294374 () Bool)

(assert (=> b!4227109 (= e!2624567 (and tp!1294371 tp!1294374))))

(assert (=> b!4227013 (= tp!1294324 e!2624567)))

(declare-fun b!4227110 () Bool)

(declare-fun tp!1294372 () Bool)

(assert (=> b!4227110 (= e!2624567 tp!1294372)))

(declare-fun b!4227111 () Bool)

(declare-fun tp!1294375 () Bool)

(declare-fun tp!1294373 () Bool)

(assert (=> b!4227111 (= e!2624567 (and tp!1294375 tp!1294373))))

(declare-fun b!4227108 () Bool)

(declare-fun tp_is_empty!22441 () Bool)

(assert (=> b!4227108 (= e!2624567 tp_is_empty!22441)))

(assert (= (and b!4227013 ((_ is ElementMatch!12749) (regex!7844 (h!52033 rules!4024)))) b!4227108))

(assert (= (and b!4227013 ((_ is Concat!20824) (regex!7844 (h!52033 rules!4024)))) b!4227109))

(assert (= (and b!4227013 ((_ is Star!12749) (regex!7844 (h!52033 rules!4024)))) b!4227110))

(assert (= (and b!4227013 ((_ is Union!12749) (regex!7844 (h!52033 rules!4024)))) b!4227111))

(declare-fun b!4227122 () Bool)

(declare-fun b_free!124639 () Bool)

(declare-fun b_next!125343 () Bool)

(assert (=> b!4227122 (= b_free!124639 (not b_next!125343))))

(declare-fun tp!1294385 () Bool)

(declare-fun b_and!333873 () Bool)

(assert (=> b!4227122 (= tp!1294385 b_and!333873)))

(declare-fun b_free!124641 () Bool)

(declare-fun b_next!125345 () Bool)

(assert (=> b!4227122 (= b_free!124641 (not b_next!125345))))

(declare-fun tp!1294386 () Bool)

(declare-fun b_and!333875 () Bool)

(assert (=> b!4227122 (= tp!1294386 b_and!333875)))

(declare-fun e!2624577 () Bool)

(assert (=> b!4227122 (= e!2624577 (and tp!1294385 tp!1294386))))

(declare-fun e!2624579 () Bool)

(declare-fun b!4227121 () Bool)

(declare-fun tp!1294384 () Bool)

(assert (=> b!4227121 (= e!2624579 (and tp!1294384 (inv!61266 (tag!8708 (h!52033 (t!349354 rules!4024)))) (inv!61268 (transformation!7844 (h!52033 (t!349354 rules!4024)))) e!2624577))))

(declare-fun b!4227120 () Bool)

(declare-fun e!2624578 () Bool)

(declare-fun tp!1294387 () Bool)

(assert (=> b!4227120 (= e!2624578 (and e!2624579 tp!1294387))))

(assert (=> b!4227020 (= tp!1294323 e!2624578)))

(assert (= b!4227121 b!4227122))

(assert (= b!4227120 b!4227121))

(assert (= (and b!4227020 ((_ is Cons!46613) (t!349354 rules!4024))) b!4227120))

(declare-fun m!4814727 () Bool)

(assert (=> b!4227121 m!4814727))

(declare-fun m!4814729 () Bool)

(assert (=> b!4227121 m!4814729))

(declare-fun b!4227124 () Bool)

(declare-fun e!2624580 () Bool)

(declare-fun tp!1294388 () Bool)

(declare-fun tp!1294391 () Bool)

(assert (=> b!4227124 (= e!2624580 (and tp!1294388 tp!1294391))))

(assert (=> b!4227017 (= tp!1294325 e!2624580)))

(declare-fun b!4227125 () Bool)

(declare-fun tp!1294389 () Bool)

(assert (=> b!4227125 (= e!2624580 tp!1294389)))

(declare-fun b!4227126 () Bool)

(declare-fun tp!1294392 () Bool)

(declare-fun tp!1294390 () Bool)

(assert (=> b!4227126 (= e!2624580 (and tp!1294392 tp!1294390))))

(declare-fun b!4227123 () Bool)

(assert (=> b!4227123 (= e!2624580 tp_is_empty!22441)))

(assert (= (and b!4227017 ((_ is ElementMatch!12749) (regex!7844 r!4367))) b!4227123))

(assert (= (and b!4227017 ((_ is Concat!20824) (regex!7844 r!4367))) b!4227124))

(assert (= (and b!4227017 ((_ is Star!12749) (regex!7844 r!4367))) b!4227125))

(assert (= (and b!4227017 ((_ is Union!12749) (regex!7844 r!4367))) b!4227126))

(check-sat (not d!1244416) (not b_next!125337) (not b_next!125333) (not b!4227111) (not b_next!125345) (not b_next!125335) (not b!4227120) (not b!4227124) (not b!4227126) (not b!4227093) (not b!4227110) (not b!4227031) (not b!4227109) (not b!4227097) (not b!4227026) (not b_next!125331) b_and!333863 (not d!1244428) (not d!1244436) (not b!4227125) (not d!1244410) b_and!333861 (not b!4227121) (not b!4227094) b_and!333873 (not b!4227039) tp_is_empty!22441 b_and!333875 b_and!333865 (not b_next!125343) b_and!333867)
(check-sat (not b_next!125337) (not b_next!125333) (not b_next!125345) (not b_next!125335) b_and!333861 b_and!333873 (not b_next!125331) b_and!333863 b_and!333875 b_and!333865 (not b_next!125343) b_and!333867)
