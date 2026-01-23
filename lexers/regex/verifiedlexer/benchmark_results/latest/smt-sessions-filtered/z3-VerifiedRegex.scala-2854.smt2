; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!166394 () Bool)

(assert start!166394)

(declare-fun b!1705272 () Bool)

(declare-fun b_free!45939 () Bool)

(declare-fun b_next!46643 () Bool)

(assert (=> b!1705272 (= b_free!45939 (not b_next!46643))))

(declare-fun tp!486795 () Bool)

(declare-fun b_and!123129 () Bool)

(assert (=> b!1705272 (= tp!486795 b_and!123129)))

(declare-fun b_free!45941 () Bool)

(declare-fun b_next!46645 () Bool)

(assert (=> b!1705272 (= b_free!45941 (not b_next!46645))))

(declare-fun tp!486794 () Bool)

(declare-fun b_and!123131 () Bool)

(assert (=> b!1705272 (= tp!486794 b_and!123131)))

(declare-fun b!1705270 () Bool)

(declare-fun b_free!45943 () Bool)

(declare-fun b_next!46647 () Bool)

(assert (=> b!1705270 (= b_free!45943 (not b_next!46647))))

(declare-fun tp!486802 () Bool)

(declare-fun b_and!123133 () Bool)

(assert (=> b!1705270 (= tp!486802 b_and!123133)))

(declare-fun b_free!45945 () Bool)

(declare-fun b_next!46649 () Bool)

(assert (=> b!1705270 (= b_free!45945 (not b_next!46649))))

(declare-fun tp!486804 () Bool)

(declare-fun b_and!123135 () Bool)

(assert (=> b!1705270 (= tp!486804 b_and!123135)))

(declare-fun b!1705268 () Bool)

(declare-fun b_free!45947 () Bool)

(declare-fun b_next!46651 () Bool)

(assert (=> b!1705268 (= b_free!45947 (not b_next!46651))))

(declare-fun tp!486799 () Bool)

(declare-fun b_and!123137 () Bool)

(assert (=> b!1705268 (= tp!486799 b_and!123137)))

(declare-fun b_free!45949 () Bool)

(declare-fun b_next!46653 () Bool)

(assert (=> b!1705268 (= b_free!45949 (not b_next!46653))))

(declare-fun tp!486797 () Bool)

(declare-fun b_and!123139 () Bool)

(assert (=> b!1705268 (= tp!486797 b_and!123139)))

(declare-fun b!1705267 () Bool)

(declare-fun e!1090576 () Bool)

(assert (=> b!1705267 (= e!1090576 false)))

(declare-datatypes ((List!18630 0))(
  ( (Nil!18560) (Cons!18560 (h!23961 (_ BitVec 16)) (t!157915 List!18630)) )
))
(declare-datatypes ((TokenValue!3359 0))(
  ( (FloatLiteralValue!6718 (text!23958 List!18630)) (TokenValueExt!3358 (__x!12020 Int)) (Broken!16795 (value!102813 List!18630)) (Object!3428) (End!3359) (Def!3359) (Underscore!3359) (Match!3359) (Else!3359) (Error!3359) (Case!3359) (If!3359) (Extends!3359) (Abstract!3359) (Class!3359) (Val!3359) (DelimiterValue!6718 (del!3419 List!18630)) (KeywordValue!3365 (value!102814 List!18630)) (CommentValue!6718 (value!102815 List!18630)) (WhitespaceValue!6718 (value!102816 List!18630)) (IndentationValue!3359 (value!102817 List!18630)) (String!21126) (Int32!3359) (Broken!16796 (value!102818 List!18630)) (Boolean!3360) (Unit!32420) (OperatorValue!3362 (op!3419 List!18630)) (IdentifierValue!6718 (value!102819 List!18630)) (IdentifierValue!6719 (value!102820 List!18630)) (WhitespaceValue!6719 (value!102821 List!18630)) (True!6718) (False!6718) (Broken!16797 (value!102822 List!18630)) (Broken!16798 (value!102823 List!18630)) (True!6719) (RightBrace!3359) (RightBracket!3359) (Colon!3359) (Null!3359) (Comma!3359) (LeftBracket!3359) (False!6719) (LeftBrace!3359) (ImaginaryLiteralValue!3359 (text!23959 List!18630)) (StringLiteralValue!10077 (value!102824 List!18630)) (EOFValue!3359 (value!102825 List!18630)) (IdentValue!3359 (value!102826 List!18630)) (DelimiterValue!6719 (value!102827 List!18630)) (DedentValue!3359 (value!102828 List!18630)) (NewLineValue!3359 (value!102829 List!18630)) (IntegerValue!10077 (value!102830 (_ BitVec 32)) (text!23960 List!18630)) (IntegerValue!10078 (value!102831 Int) (text!23961 List!18630)) (Times!3359) (Or!3359) (Equal!3359) (Minus!3359) (Broken!16799 (value!102832 List!18630)) (And!3359) (Div!3359) (LessEqual!3359) (Mod!3359) (Concat!7956) (Not!3359) (Plus!3359) (SpaceValue!3359 (value!102833 List!18630)) (IntegerValue!10079 (value!102834 Int) (text!23962 List!18630)) (StringLiteralValue!10078 (text!23963 List!18630)) (FloatLiteralValue!6719 (text!23964 List!18630)) (BytesLiteralValue!3359 (value!102835 List!18630)) (CommentValue!6719 (value!102836 List!18630)) (StringLiteralValue!10079 (value!102837 List!18630)) (ErrorTokenValue!3359 (msg!3420 List!18630)) )
))
(declare-datatypes ((String!21127 0))(
  ( (String!21128 (value!102838 String)) )
))
(declare-datatypes ((C!9368 0))(
  ( (C!9369 (val!5280 Int)) )
))
(declare-datatypes ((List!18631 0))(
  ( (Nil!18561) (Cons!18561 (h!23962 C!9368) (t!157916 List!18631)) )
))
(declare-datatypes ((Regex!4597 0))(
  ( (ElementMatch!4597 (c!279612 C!9368)) (Concat!7957 (regOne!9706 Regex!4597) (regTwo!9706 Regex!4597)) (EmptyExpr!4597) (Star!4597 (reg!4926 Regex!4597)) (EmptyLang!4597) (Union!4597 (regOne!9707 Regex!4597) (regTwo!9707 Regex!4597)) )
))
(declare-datatypes ((IArray!12363 0))(
  ( (IArray!12364 (innerList!6239 List!18631)) )
))
(declare-datatypes ((Conc!6179 0))(
  ( (Node!6179 (left!14823 Conc!6179) (right!15153 Conc!6179) (csize!12588 Int) (cheight!6390 Int)) (Leaf!9034 (xs!9055 IArray!12363) (csize!12589 Int)) (Empty!6179) )
))
(declare-datatypes ((BalanceConc!12302 0))(
  ( (BalanceConc!12303 (c!279613 Conc!6179)) )
))
(declare-datatypes ((TokenValueInjection!6378 0))(
  ( (TokenValueInjection!6379 (toValue!4764 Int) (toChars!4623 Int)) )
))
(declare-datatypes ((Rule!6338 0))(
  ( (Rule!6339 (regex!3269 Regex!4597) (tag!3565 String!21127) (isSeparator!3269 Bool) (transformation!3269 TokenValueInjection!6378)) )
))
(declare-datatypes ((Token!6104 0))(
  ( (Token!6105 (value!102839 TokenValue!3359) (rule!5201 Rule!6338) (size!14792 Int) (originalCharacters!4083 List!18631)) )
))
(declare-datatypes ((tuple2!18318 0))(
  ( (tuple2!18319 (_1!10561 Token!6104) (_2!10561 List!18631)) )
))
(declare-datatypes ((Option!3593 0))(
  ( (None!3592) (Some!3592 (v!24963 tuple2!18318)) )
))
(declare-fun lt!652252 () Option!3593)

(declare-datatypes ((LexerInterface!2898 0))(
  ( (LexerInterfaceExt!2895 (__x!12021 Int)) (Lexer!2896) )
))
(declare-fun thiss!24550 () LexerInterface!2898)

(declare-fun token!523 () Token!6104)

(declare-datatypes ((List!18632 0))(
  ( (Nil!18562) (Cons!18562 (h!23963 Rule!6338) (t!157917 List!18632)) )
))
(declare-fun rules!3447 () List!18632)

(declare-fun maxPrefix!1452 (LexerInterface!2898 List!18632 List!18631) Option!3593)

(declare-fun list!7483 (BalanceConc!12302) List!18631)

(declare-fun charsOf!1918 (Token!6104) BalanceConc!12302)

(assert (=> b!1705267 (= lt!652252 (maxPrefix!1452 thiss!24550 rules!3447 (list!7483 (charsOf!1918 token!523))))))

(declare-fun res!764363 () Bool)

(assert (=> start!166394 (=> (not res!764363) (not e!1090576))))

(get-info :version)

(assert (=> start!166394 (= res!764363 ((_ is Lexer!2896) thiss!24550))))

(assert (=> start!166394 e!1090576))

(assert (=> start!166394 true))

(declare-fun e!1090586 () Bool)

(assert (=> start!166394 e!1090586))

(declare-fun e!1090575 () Bool)

(assert (=> start!166394 e!1090575))

(declare-fun e!1090583 () Bool)

(declare-fun inv!23947 (Token!6104) Bool)

(assert (=> start!166394 (and (inv!23947 token!523) e!1090583)))

(declare-fun e!1090585 () Bool)

(assert (=> b!1705268 (= e!1090585 (and tp!486799 tp!486797))))

(declare-fun e!1090580 () Bool)

(declare-fun b!1705269 () Bool)

(declare-fun e!1090577 () Bool)

(declare-fun tp!486798 () Bool)

(declare-fun inv!23944 (String!21127) Bool)

(declare-fun inv!23948 (TokenValueInjection!6378) Bool)

(assert (=> b!1705269 (= e!1090577 (and tp!486798 (inv!23944 (tag!3565 (rule!5201 token!523))) (inv!23948 (transformation!3269 (rule!5201 token!523))) e!1090580))))

(assert (=> b!1705270 (= e!1090580 (and tp!486802 tp!486804))))

(declare-fun b!1705271 () Bool)

(declare-fun res!764362 () Bool)

(assert (=> b!1705271 (=> (not res!764362) (not e!1090576))))

(declare-fun rulesInvariant!2567 (LexerInterface!2898 List!18632) Bool)

(assert (=> b!1705271 (= res!764362 (rulesInvariant!2567 thiss!24550 rules!3447))))

(declare-fun e!1090578 () Bool)

(assert (=> b!1705272 (= e!1090578 (and tp!486795 tp!486794))))

(declare-fun rule!422 () Rule!6338)

(declare-fun tp!486796 () Bool)

(declare-fun b!1705273 () Bool)

(assert (=> b!1705273 (= e!1090575 (and tp!486796 (inv!23944 (tag!3565 rule!422)) (inv!23948 (transformation!3269 rule!422)) e!1090585))))

(declare-fun b!1705274 () Bool)

(declare-fun tp!486801 () Bool)

(declare-fun inv!21 (TokenValue!3359) Bool)

(assert (=> b!1705274 (= e!1090583 (and (inv!21 (value!102839 token!523)) e!1090577 tp!486801))))

(declare-fun b!1705275 () Bool)

(declare-fun res!764361 () Bool)

(assert (=> b!1705275 (=> (not res!764361) (not e!1090576))))

(declare-fun isEmpty!11653 (List!18632) Bool)

(assert (=> b!1705275 (= res!764361 (not (isEmpty!11653 rules!3447)))))

(declare-fun e!1090574 () Bool)

(declare-fun b!1705276 () Bool)

(declare-fun tp!486803 () Bool)

(assert (=> b!1705276 (= e!1090574 (and tp!486803 (inv!23944 (tag!3565 (h!23963 rules!3447))) (inv!23948 (transformation!3269 (h!23963 rules!3447))) e!1090578))))

(declare-fun b!1705277 () Bool)

(declare-fun res!764360 () Bool)

(assert (=> b!1705277 (=> (not res!764360) (not e!1090576))))

(declare-fun contains!3285 (List!18632 Rule!6338) Bool)

(assert (=> b!1705277 (= res!764360 (contains!3285 rules!3447 rule!422))))

(declare-fun b!1705278 () Bool)

(declare-fun tp!486800 () Bool)

(assert (=> b!1705278 (= e!1090586 (and e!1090574 tp!486800))))

(assert (= (and start!166394 res!764363) b!1705275))

(assert (= (and b!1705275 res!764361) b!1705271))

(assert (= (and b!1705271 res!764362) b!1705277))

(assert (= (and b!1705277 res!764360) b!1705267))

(assert (= b!1705276 b!1705272))

(assert (= b!1705278 b!1705276))

(assert (= (and start!166394 ((_ is Cons!18562) rules!3447)) b!1705278))

(assert (= b!1705273 b!1705268))

(assert (= start!166394 b!1705273))

(assert (= b!1705269 b!1705270))

(assert (= b!1705274 b!1705269))

(assert (= start!166394 b!1705274))

(declare-fun m!2109197 () Bool)

(assert (=> b!1705276 m!2109197))

(declare-fun m!2109199 () Bool)

(assert (=> b!1705276 m!2109199))

(declare-fun m!2109201 () Bool)

(assert (=> start!166394 m!2109201))

(declare-fun m!2109203 () Bool)

(assert (=> b!1705273 m!2109203))

(declare-fun m!2109205 () Bool)

(assert (=> b!1705273 m!2109205))

(declare-fun m!2109207 () Bool)

(assert (=> b!1705271 m!2109207))

(declare-fun m!2109209 () Bool)

(assert (=> b!1705269 m!2109209))

(declare-fun m!2109211 () Bool)

(assert (=> b!1705269 m!2109211))

(declare-fun m!2109213 () Bool)

(assert (=> b!1705267 m!2109213))

(assert (=> b!1705267 m!2109213))

(declare-fun m!2109215 () Bool)

(assert (=> b!1705267 m!2109215))

(assert (=> b!1705267 m!2109215))

(declare-fun m!2109217 () Bool)

(assert (=> b!1705267 m!2109217))

(declare-fun m!2109219 () Bool)

(assert (=> b!1705275 m!2109219))

(declare-fun m!2109221 () Bool)

(assert (=> b!1705274 m!2109221))

(declare-fun m!2109223 () Bool)

(assert (=> b!1705277 m!2109223))

(check-sat (not b!1705277) b_and!123129 (not b!1705273) (not b_next!46645) b_and!123131 (not b_next!46649) b_and!123137 (not b!1705278) (not b!1705271) (not start!166394) (not b_next!46647) b_and!123139 (not b_next!46651) (not b!1705275) b_and!123133 (not b!1705269) (not b_next!46643) (not b!1705276) (not b!1705274) b_and!123135 (not b_next!46653) (not b!1705267))
(check-sat b_and!123129 (not b_next!46645) b_and!123131 b_and!123133 (not b_next!46649) (not b_next!46643) b_and!123137 (not b_next!46647) b_and!123139 (not b_next!46651) b_and!123135 (not b_next!46653))
