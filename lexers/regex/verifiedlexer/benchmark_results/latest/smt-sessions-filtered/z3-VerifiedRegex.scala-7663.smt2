; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404162 () Bool)

(assert start!404162)

(declare-fun b!4226707 () Bool)

(declare-fun b_free!124579 () Bool)

(declare-fun b_next!125283 () Bool)

(assert (=> b!4226707 (= b_free!124579 (not b_next!125283))))

(declare-fun tp!1294116 () Bool)

(declare-fun b_and!333813 () Bool)

(assert (=> b!4226707 (= tp!1294116 b_and!333813)))

(declare-fun b_free!124581 () Bool)

(declare-fun b_next!125285 () Bool)

(assert (=> b!4226707 (= b_free!124581 (not b_next!125285))))

(declare-fun tp!1294114 () Bool)

(declare-fun b_and!333815 () Bool)

(assert (=> b!4226707 (= tp!1294114 b_and!333815)))

(declare-fun b!4226713 () Bool)

(declare-fun b_free!124583 () Bool)

(declare-fun b_next!125287 () Bool)

(assert (=> b!4226713 (= b_free!124583 (not b_next!125287))))

(declare-fun tp!1294113 () Bool)

(declare-fun b_and!333817 () Bool)

(assert (=> b!4226713 (= tp!1294113 b_and!333817)))

(declare-fun b_free!124585 () Bool)

(declare-fun b_next!125289 () Bool)

(assert (=> b!4226713 (= b_free!124585 (not b_next!125289))))

(declare-fun tp!1294112 () Bool)

(declare-fun b_and!333819 () Bool)

(assert (=> b!4226713 (= tp!1294112 b_and!333819)))

(declare-fun b!4226706 () Bool)

(declare-fun res!1737998 () Bool)

(declare-fun e!2624269 () Bool)

(assert (=> b!4226706 (=> (not res!1737998) (not e!2624269))))

(declare-datatypes ((C!25684 0))(
  ( (C!25685 (val!15004 Int)) )
))
(declare-datatypes ((List!46723 0))(
  ( (Nil!46599) (Cons!46599 (h!52019 C!25684) (t!349340 List!46723)) )
))
(declare-datatypes ((IArray!28107 0))(
  ( (IArray!28108 (innerList!14111 List!46723)) )
))
(declare-datatypes ((List!46724 0))(
  ( (Nil!46600) (Cons!46600 (h!52020 (_ BitVec 16)) (t!349341 List!46724)) )
))
(declare-datatypes ((TokenValue!8070 0))(
  ( (FloatLiteralValue!16140 (text!56935 List!46724)) (TokenValueExt!8069 (__x!28363 Int)) (Broken!40350 (value!243930 List!46724)) (Object!8193) (End!8070) (Def!8070) (Underscore!8070) (Match!8070) (Else!8070) (Error!8070) (Case!8070) (If!8070) (Extends!8070) (Abstract!8070) (Class!8070) (Val!8070) (DelimiterValue!16140 (del!8130 List!46724)) (KeywordValue!8076 (value!243931 List!46724)) (CommentValue!16140 (value!243932 List!46724)) (WhitespaceValue!16140 (value!243933 List!46724)) (IndentationValue!8070 (value!243934 List!46724)) (String!54219) (Int32!8070) (Broken!40351 (value!243935 List!46724)) (Boolean!8071) (Unit!65740) (OperatorValue!8073 (op!8130 List!46724)) (IdentifierValue!16140 (value!243936 List!46724)) (IdentifierValue!16141 (value!243937 List!46724)) (WhitespaceValue!16141 (value!243938 List!46724)) (True!16140) (False!16140) (Broken!40352 (value!243939 List!46724)) (Broken!40353 (value!243940 List!46724)) (True!16141) (RightBrace!8070) (RightBracket!8070) (Colon!8070) (Null!8070) (Comma!8070) (LeftBracket!8070) (False!16141) (LeftBrace!8070) (ImaginaryLiteralValue!8070 (text!56936 List!46724)) (StringLiteralValue!24210 (value!243941 List!46724)) (EOFValue!8070 (value!243942 List!46724)) (IdentValue!8070 (value!243943 List!46724)) (DelimiterValue!16141 (value!243944 List!46724)) (DedentValue!8070 (value!243945 List!46724)) (NewLineValue!8070 (value!243946 List!46724)) (IntegerValue!24210 (value!243947 (_ BitVec 32)) (text!56937 List!46724)) (IntegerValue!24211 (value!243948 Int) (text!56938 List!46724)) (Times!8070) (Or!8070) (Equal!8070) (Minus!8070) (Broken!40354 (value!243949 List!46724)) (And!8070) (Div!8070) (LessEqual!8070) (Mod!8070) (Concat!20815) (Not!8070) (Plus!8070) (SpaceValue!8070 (value!243950 List!46724)) (IntegerValue!24212 (value!243951 Int) (text!56939 List!46724)) (StringLiteralValue!24211 (text!56940 List!46724)) (FloatLiteralValue!16141 (text!56941 List!46724)) (BytesLiteralValue!8070 (value!243952 List!46724)) (CommentValue!16141 (value!243953 List!46724)) (StringLiteralValue!24212 (value!243954 List!46724)) (ErrorTokenValue!8070 (msg!8131 List!46724)) )
))
(declare-datatypes ((Conc!14051 0))(
  ( (Node!14051 (left!34646 Conc!14051) (right!34976 Conc!14051) (csize!28332 Int) (cheight!14262 Int)) (Leaf!21715 (xs!17357 IArray!28107) (csize!28333 Int)) (Empty!14051) )
))
(declare-datatypes ((BalanceConc!27696 0))(
  ( (BalanceConc!27697 (c!718696 Conc!14051)) )
))
(declare-datatypes ((TokenValueInjection!15568 0))(
  ( (TokenValueInjection!15569 (toValue!10568 Int) (toChars!10427 Int)) )
))
(declare-datatypes ((Regex!12745 0))(
  ( (ElementMatch!12745 (c!718697 C!25684)) (Concat!20816 (regOne!26002 Regex!12745) (regTwo!26002 Regex!12745)) (EmptyExpr!12745) (Star!12745 (reg!13074 Regex!12745)) (EmptyLang!12745) (Union!12745 (regOne!26003 Regex!12745) (regTwo!26003 Regex!12745)) )
))
(declare-datatypes ((String!54220 0))(
  ( (String!54221 (value!243955 String)) )
))
(declare-datatypes ((Rule!15480 0))(
  ( (Rule!15481 (regex!7840 Regex!12745) (tag!8704 String!54220) (isSeparator!7840 Bool) (transformation!7840 TokenValueInjection!15568)) )
))
(declare-datatypes ((List!46725 0))(
  ( (Nil!46601) (Cons!46601 (h!52021 Rule!15480) (t!349342 List!46725)) )
))
(declare-fun rules!4024 () List!46725)

(declare-fun r!4367 () Rule!15480)

(declare-fun contains!9663 (List!46725 Rule!15480) Bool)

(assert (=> b!4226706 (= res!1737998 (contains!9663 rules!4024 r!4367))))

(declare-fun e!2624272 () Bool)

(assert (=> b!4226707 (= e!2624272 (and tp!1294116 tp!1294114))))

(declare-fun tp!1294110 () Bool)

(declare-fun b!4226708 () Bool)

(declare-fun e!2624275 () Bool)

(declare-fun inv!61256 (String!54220) Bool)

(declare-fun inv!61258 (TokenValueInjection!15568) Bool)

(assert (=> b!4226708 (= e!2624275 (and tp!1294110 (inv!61256 (tag!8704 (h!52021 rules!4024))) (inv!61258 (transformation!7840 (h!52021 rules!4024))) e!2624272))))

(declare-fun e!2624270 () Bool)

(declare-fun b!4226709 () Bool)

(declare-fun e!2624274 () Bool)

(declare-fun tp!1294111 () Bool)

(assert (=> b!4226709 (= e!2624270 (and tp!1294111 (inv!61256 (tag!8704 r!4367)) (inv!61258 (transformation!7840 r!4367)) e!2624274))))

(declare-fun b!4226710 () Bool)

(declare-datatypes ((LexerInterface!7435 0))(
  ( (LexerInterfaceExt!7432 (__x!28364 Int)) (Lexer!7433) )
))
(declare-fun thiss!26827 () LexerInterface!7435)

(declare-fun ruleValid!3542 (LexerInterface!7435 Rule!15480) Bool)

(assert (=> b!4226710 (= e!2624269 (not (ruleValid!3542 thiss!26827 r!4367)))))

(declare-fun res!1738001 () Bool)

(assert (=> start!404162 (=> (not res!1738001) (not e!2624269))))

(get-info :version)

(assert (=> start!404162 (= res!1738001 ((_ is Lexer!7433) thiss!26827))))

(assert (=> start!404162 e!2624269))

(assert (=> start!404162 true))

(declare-fun e!2624271 () Bool)

(assert (=> start!404162 e!2624271))

(assert (=> start!404162 e!2624270))

(declare-fun b!4226711 () Bool)

(declare-fun tp!1294115 () Bool)

(assert (=> b!4226711 (= e!2624271 (and e!2624275 tp!1294115))))

(declare-fun b!4226712 () Bool)

(declare-fun res!1738000 () Bool)

(assert (=> b!4226712 (=> (not res!1738000) (not e!2624269))))

(assert (=> b!4226712 (= res!1738000 (and ((_ is Cons!46601) rules!4024) (= (h!52021 rules!4024) r!4367)))))

(assert (=> b!4226713 (= e!2624274 (and tp!1294113 tp!1294112))))

(declare-fun b!4226714 () Bool)

(declare-fun res!1737999 () Bool)

(assert (=> b!4226714 (=> (not res!1737999) (not e!2624269))))

(declare-fun rulesValidInductive!2942 (LexerInterface!7435 List!46725) Bool)

(assert (=> b!4226714 (= res!1737999 (rulesValidInductive!2942 thiss!26827 rules!4024))))

(assert (= (and start!404162 res!1738001) b!4226706))

(assert (= (and b!4226706 res!1737998) b!4226714))

(assert (= (and b!4226714 res!1737999) b!4226712))

(assert (= (and b!4226712 res!1738000) b!4226710))

(assert (= b!4226708 b!4226707))

(assert (= b!4226711 b!4226708))

(assert (= (and start!404162 ((_ is Cons!46601) rules!4024)) b!4226711))

(assert (= b!4226709 b!4226713))

(assert (= start!404162 b!4226709))

(declare-fun m!4814497 () Bool)

(assert (=> b!4226710 m!4814497))

(declare-fun m!4814499 () Bool)

(assert (=> b!4226708 m!4814499))

(declare-fun m!4814501 () Bool)

(assert (=> b!4226708 m!4814501))

(declare-fun m!4814503 () Bool)

(assert (=> b!4226709 m!4814503))

(declare-fun m!4814505 () Bool)

(assert (=> b!4226709 m!4814505))

(declare-fun m!4814507 () Bool)

(assert (=> b!4226706 m!4814507))

(declare-fun m!4814509 () Bool)

(assert (=> b!4226714 m!4814509))

(check-sat (not b_next!125287) (not b!4226709) b_and!333813 (not b!4226710) b_and!333817 (not b!4226706) (not b!4226714) (not b!4226711) b_and!333819 (not b_next!125283) (not b!4226708) (not b_next!125285) b_and!333815 (not b_next!125289))
(check-sat (not b_next!125287) b_and!333813 b_and!333817 (not b_next!125285) b_and!333819 (not b_next!125283) b_and!333815 (not b_next!125289))
(get-model)

(declare-fun d!1244356 () Bool)

(assert (=> d!1244356 (= (inv!61256 (tag!8704 (h!52021 rules!4024))) (= (mod (str.len (value!243955 (tag!8704 (h!52021 rules!4024)))) 2) 0))))

(assert (=> b!4226708 d!1244356))

(declare-fun d!1244358 () Bool)

(declare-fun res!1738011 () Bool)

(declare-fun e!2624282 () Bool)

(assert (=> d!1244358 (=> (not res!1738011) (not e!2624282))))

(declare-fun semiInverseModEq!3409 (Int Int) Bool)

(assert (=> d!1244358 (= res!1738011 (semiInverseModEq!3409 (toChars!10427 (transformation!7840 (h!52021 rules!4024))) (toValue!10568 (transformation!7840 (h!52021 rules!4024)))))))

(assert (=> d!1244358 (= (inv!61258 (transformation!7840 (h!52021 rules!4024))) e!2624282)))

(declare-fun b!4226720 () Bool)

(declare-fun equivClasses!3308 (Int Int) Bool)

(assert (=> b!4226720 (= e!2624282 (equivClasses!3308 (toChars!10427 (transformation!7840 (h!52021 rules!4024))) (toValue!10568 (transformation!7840 (h!52021 rules!4024)))))))

(assert (= (and d!1244358 res!1738011) b!4226720))

(declare-fun m!4814515 () Bool)

(assert (=> d!1244358 m!4814515))

(declare-fun m!4814517 () Bool)

(assert (=> b!4226720 m!4814517))

(assert (=> b!4226708 d!1244358))

(declare-fun d!1244362 () Bool)

(assert (=> d!1244362 (= (inv!61256 (tag!8704 r!4367)) (= (mod (str.len (value!243955 (tag!8704 r!4367))) 2) 0))))

(assert (=> b!4226709 d!1244362))

(declare-fun d!1244364 () Bool)

(declare-fun res!1738012 () Bool)

(declare-fun e!2624283 () Bool)

(assert (=> d!1244364 (=> (not res!1738012) (not e!2624283))))

(assert (=> d!1244364 (= res!1738012 (semiInverseModEq!3409 (toChars!10427 (transformation!7840 r!4367)) (toValue!10568 (transformation!7840 r!4367))))))

(assert (=> d!1244364 (= (inv!61258 (transformation!7840 r!4367)) e!2624283)))

(declare-fun b!4226721 () Bool)

(assert (=> b!4226721 (= e!2624283 (equivClasses!3308 (toChars!10427 (transformation!7840 r!4367)) (toValue!10568 (transformation!7840 r!4367))))))

(assert (= (and d!1244364 res!1738012) b!4226721))

(declare-fun m!4814519 () Bool)

(assert (=> d!1244364 m!4814519))

(declare-fun m!4814521 () Bool)

(assert (=> b!4226721 m!4814521))

(assert (=> b!4226709 d!1244364))

(declare-fun d!1244366 () Bool)

(assert (=> d!1244366 true))

(declare-fun lt!1503199 () Bool)

(declare-fun lambda!129921 () Int)

(declare-fun forall!8516 (List!46725 Int) Bool)

(assert (=> d!1244366 (= lt!1503199 (forall!8516 rules!4024 lambda!129921))))

(declare-fun e!2624321 () Bool)

(assert (=> d!1244366 (= lt!1503199 e!2624321)))

(declare-fun res!1738037 () Bool)

(assert (=> d!1244366 (=> res!1738037 e!2624321)))

(assert (=> d!1244366 (= res!1738037 (not ((_ is Cons!46601) rules!4024)))))

(assert (=> d!1244366 (= (rulesValidInductive!2942 thiss!26827 rules!4024) lt!1503199)))

(declare-fun b!4226776 () Bool)

(declare-fun e!2624320 () Bool)

(assert (=> b!4226776 (= e!2624321 e!2624320)))

(declare-fun res!1738036 () Bool)

(assert (=> b!4226776 (=> (not res!1738036) (not e!2624320))))

(assert (=> b!4226776 (= res!1738036 (ruleValid!3542 thiss!26827 (h!52021 rules!4024)))))

(declare-fun b!4226777 () Bool)

(assert (=> b!4226777 (= e!2624320 (rulesValidInductive!2942 thiss!26827 (t!349342 rules!4024)))))

(assert (= (and d!1244366 (not res!1738037)) b!4226776))

(assert (= (and b!4226776 res!1738036) b!4226777))

(declare-fun m!4814547 () Bool)

(assert (=> d!1244366 m!4814547))

(declare-fun m!4814549 () Bool)

(assert (=> b!4226776 m!4814549))

(declare-fun m!4814551 () Bool)

(assert (=> b!4226777 m!4814551))

(assert (=> b!4226714 d!1244366))

(declare-fun d!1244376 () Bool)

(declare-fun res!1738042 () Bool)

(declare-fun e!2624324 () Bool)

(assert (=> d!1244376 (=> (not res!1738042) (not e!2624324))))

(declare-fun validRegex!5783 (Regex!12745) Bool)

(assert (=> d!1244376 (= res!1738042 (validRegex!5783 (regex!7840 r!4367)))))

(assert (=> d!1244376 (= (ruleValid!3542 thiss!26827 r!4367) e!2624324)))

(declare-fun b!4226784 () Bool)

(declare-fun res!1738043 () Bool)

(assert (=> b!4226784 (=> (not res!1738043) (not e!2624324))))

(declare-fun nullable!4496 (Regex!12745) Bool)

(assert (=> b!4226784 (= res!1738043 (not (nullable!4496 (regex!7840 r!4367))))))

(declare-fun b!4226785 () Bool)

(assert (=> b!4226785 (= e!2624324 (not (= (tag!8704 r!4367) (String!54221 ""))))))

(assert (= (and d!1244376 res!1738042) b!4226784))

(assert (= (and b!4226784 res!1738043) b!4226785))

(declare-fun m!4814553 () Bool)

(assert (=> d!1244376 m!4814553))

(declare-fun m!4814555 () Bool)

(assert (=> b!4226784 m!4814555))

(assert (=> b!4226710 d!1244376))

(declare-fun d!1244378 () Bool)

(declare-fun lt!1503202 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7321 (List!46725) (InoxSet Rule!15480))

(assert (=> d!1244378 (= lt!1503202 (select (content!7321 rules!4024) r!4367))))

(declare-fun e!2624329 () Bool)

(assert (=> d!1244378 (= lt!1503202 e!2624329)))

(declare-fun res!1738049 () Bool)

(assert (=> d!1244378 (=> (not res!1738049) (not e!2624329))))

(assert (=> d!1244378 (= res!1738049 ((_ is Cons!46601) rules!4024))))

(assert (=> d!1244378 (= (contains!9663 rules!4024 r!4367) lt!1503202)))

(declare-fun b!4226790 () Bool)

(declare-fun e!2624330 () Bool)

(assert (=> b!4226790 (= e!2624329 e!2624330)))

(declare-fun res!1738048 () Bool)

(assert (=> b!4226790 (=> res!1738048 e!2624330)))

(assert (=> b!4226790 (= res!1738048 (= (h!52021 rules!4024) r!4367))))

(declare-fun b!4226791 () Bool)

(assert (=> b!4226791 (= e!2624330 (contains!9663 (t!349342 rules!4024) r!4367))))

(assert (= (and d!1244378 res!1738049) b!4226790))

(assert (= (and b!4226790 (not res!1738048)) b!4226791))

(declare-fun m!4814557 () Bool)

(assert (=> d!1244378 m!4814557))

(declare-fun m!4814559 () Bool)

(assert (=> d!1244378 m!4814559))

(declare-fun m!4814561 () Bool)

(assert (=> b!4226791 m!4814561))

(assert (=> b!4226706 d!1244378))

(declare-fun b!4226802 () Bool)

(declare-fun e!2624333 () Bool)

(declare-fun tp_is_empty!22433 () Bool)

(assert (=> b!4226802 (= e!2624333 tp_is_empty!22433)))

(declare-fun b!4226805 () Bool)

(declare-fun tp!1294161 () Bool)

(declare-fun tp!1294163 () Bool)

(assert (=> b!4226805 (= e!2624333 (and tp!1294161 tp!1294163))))

(assert (=> b!4226708 (= tp!1294110 e!2624333)))

(declare-fun b!4226804 () Bool)

(declare-fun tp!1294159 () Bool)

(assert (=> b!4226804 (= e!2624333 tp!1294159)))

(declare-fun b!4226803 () Bool)

(declare-fun tp!1294162 () Bool)

(declare-fun tp!1294160 () Bool)

(assert (=> b!4226803 (= e!2624333 (and tp!1294162 tp!1294160))))

(assert (= (and b!4226708 ((_ is ElementMatch!12745) (regex!7840 (h!52021 rules!4024)))) b!4226802))

(assert (= (and b!4226708 ((_ is Concat!20816) (regex!7840 (h!52021 rules!4024)))) b!4226803))

(assert (= (and b!4226708 ((_ is Star!12745) (regex!7840 (h!52021 rules!4024)))) b!4226804))

(assert (= (and b!4226708 ((_ is Union!12745) (regex!7840 (h!52021 rules!4024)))) b!4226805))

(declare-fun b!4226806 () Bool)

(declare-fun e!2624334 () Bool)

(assert (=> b!4226806 (= e!2624334 tp_is_empty!22433)))

(declare-fun b!4226809 () Bool)

(declare-fun tp!1294166 () Bool)

(declare-fun tp!1294168 () Bool)

(assert (=> b!4226809 (= e!2624334 (and tp!1294166 tp!1294168))))

(assert (=> b!4226709 (= tp!1294111 e!2624334)))

(declare-fun b!4226808 () Bool)

(declare-fun tp!1294164 () Bool)

(assert (=> b!4226808 (= e!2624334 tp!1294164)))

(declare-fun b!4226807 () Bool)

(declare-fun tp!1294167 () Bool)

(declare-fun tp!1294165 () Bool)

(assert (=> b!4226807 (= e!2624334 (and tp!1294167 tp!1294165))))

(assert (= (and b!4226709 ((_ is ElementMatch!12745) (regex!7840 r!4367))) b!4226806))

(assert (= (and b!4226709 ((_ is Concat!20816) (regex!7840 r!4367))) b!4226807))

(assert (= (and b!4226709 ((_ is Star!12745) (regex!7840 r!4367))) b!4226808))

(assert (= (and b!4226709 ((_ is Union!12745) (regex!7840 r!4367))) b!4226809))

(declare-fun b!4226820 () Bool)

(declare-fun b_free!124591 () Bool)

(declare-fun b_next!125295 () Bool)

(assert (=> b!4226820 (= b_free!124591 (not b_next!125295))))

(declare-fun tp!1294178 () Bool)

(declare-fun b_and!333825 () Bool)

(assert (=> b!4226820 (= tp!1294178 b_and!333825)))

(declare-fun b_free!124593 () Bool)

(declare-fun b_next!125297 () Bool)

(assert (=> b!4226820 (= b_free!124593 (not b_next!125297))))

(declare-fun tp!1294177 () Bool)

(declare-fun b_and!333827 () Bool)

(assert (=> b!4226820 (= tp!1294177 b_and!333827)))

(declare-fun e!2624344 () Bool)

(assert (=> b!4226820 (= e!2624344 (and tp!1294178 tp!1294177))))

(declare-fun e!2624343 () Bool)

(declare-fun b!4226819 () Bool)

(declare-fun tp!1294180 () Bool)

(assert (=> b!4226819 (= e!2624343 (and tp!1294180 (inv!61256 (tag!8704 (h!52021 (t!349342 rules!4024)))) (inv!61258 (transformation!7840 (h!52021 (t!349342 rules!4024)))) e!2624344))))

(declare-fun b!4226818 () Bool)

(declare-fun e!2624345 () Bool)

(declare-fun tp!1294179 () Bool)

(assert (=> b!4226818 (= e!2624345 (and e!2624343 tp!1294179))))

(assert (=> b!4226711 (= tp!1294115 e!2624345)))

(assert (= b!4226819 b!4226820))

(assert (= b!4226818 b!4226819))

(assert (= (and b!4226711 ((_ is Cons!46601) (t!349342 rules!4024))) b!4226818))

(declare-fun m!4814563 () Bool)

(assert (=> b!4226819 m!4814563))

(declare-fun m!4814565 () Bool)

(assert (=> b!4226819 m!4814565))

(check-sat (not b!4226776) (not d!1244376) (not b!4226791) (not b!4226720) tp_is_empty!22433 (not b!4226808) (not b!4226818) (not b!4226721) (not d!1244364) (not b!4226819) (not b_next!125297) (not d!1244378) b_and!333825 (not b_next!125287) b_and!333827 (not d!1244366) (not d!1244358) (not b!4226803) (not b!4226805) (not b!4226807) (not b!4226809) b_and!333813 b_and!333819 (not b_next!125283) b_and!333817 (not b!4226804) (not b_next!125285) (not b!4226784) (not b!4226777) (not b_next!125295) b_and!333815 (not b_next!125289))
(check-sat b_and!333813 b_and!333817 (not b_next!125285) (not b_next!125295) (not b_next!125297) b_and!333825 (not b_next!125287) b_and!333827 b_and!333819 (not b_next!125283) b_and!333815 (not b_next!125289))
