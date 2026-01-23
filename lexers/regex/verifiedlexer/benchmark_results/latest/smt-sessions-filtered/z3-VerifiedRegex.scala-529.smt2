; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14538 () Bool)

(assert start!14538)

(declare-fun b!138276 () Bool)

(declare-fun b_free!4155 () Bool)

(declare-fun b_next!4155 () Bool)

(assert (=> b!138276 (= b_free!4155 (not b_next!4155))))

(declare-fun tp!72435 () Bool)

(declare-fun b_and!6341 () Bool)

(assert (=> b!138276 (= tp!72435 b_and!6341)))

(declare-fun b_free!4157 () Bool)

(declare-fun b_next!4157 () Bool)

(assert (=> b!138276 (= b_free!4157 (not b_next!4157))))

(declare-fun tp!72437 () Bool)

(declare-fun b_and!6343 () Bool)

(assert (=> b!138276 (= tp!72437 b_and!6343)))

(declare-fun b!138269 () Bool)

(declare-fun b_free!4159 () Bool)

(declare-fun b_next!4159 () Bool)

(assert (=> b!138269 (= b_free!4159 (not b_next!4159))))

(declare-fun tp!72447 () Bool)

(declare-fun b_and!6345 () Bool)

(assert (=> b!138269 (= tp!72447 b_and!6345)))

(declare-fun b_free!4161 () Bool)

(declare-fun b_next!4161 () Bool)

(assert (=> b!138269 (= b_free!4161 (not b_next!4161))))

(declare-fun tp!72442 () Bool)

(declare-fun b_and!6347 () Bool)

(assert (=> b!138269 (= tp!72442 b_and!6347)))

(declare-fun b!138275 () Bool)

(declare-fun b_free!4163 () Bool)

(declare-fun b_next!4163 () Bool)

(assert (=> b!138275 (= b_free!4163 (not b_next!4163))))

(declare-fun tp!72440 () Bool)

(declare-fun b_and!6349 () Bool)

(assert (=> b!138275 (= tp!72440 b_and!6349)))

(declare-fun b_free!4165 () Bool)

(declare-fun b_next!4165 () Bool)

(assert (=> b!138275 (= b_free!4165 (not b_next!4165))))

(declare-fun tp!72446 () Bool)

(declare-fun b_and!6351 () Bool)

(assert (=> b!138275 (= tp!72446 b_and!6351)))

(declare-fun b_free!4167 () Bool)

(declare-fun b_next!4167 () Bool)

(assert (=> start!14538 (= b_free!4167 (not b_next!4167))))

(declare-fun tp!72436 () Bool)

(declare-fun b_and!6353 () Bool)

(assert (=> start!14538 (= tp!72436 b_and!6353)))

(declare-fun e!80893 () Bool)

(assert (=> b!138269 (= e!80893 (and tp!72447 tp!72442))))

(declare-fun b!138270 () Bool)

(declare-fun res!64529 () Bool)

(declare-fun e!80900 () Bool)

(assert (=> b!138270 (=> (not res!64529) (not e!80900))))

(declare-datatypes ((LexerInterface!269 0))(
  ( (LexerInterfaceExt!266 (__x!2295 Int)) (Lexer!267) )
))
(declare-fun thiss!27322 () LexerInterface!269)

(declare-datatypes ((List!2321 0))(
  ( (Nil!2311) (Cons!2311 (h!7708 (_ BitVec 16)) (t!22967 List!2321)) )
))
(declare-datatypes ((TokenValue!403 0))(
  ( (FloatLiteralValue!806 (text!3266 List!2321)) (TokenValueExt!402 (__x!2296 Int)) (Broken!2015 (value!15148 List!2321)) (Object!412) (End!403) (Def!403) (Underscore!403) (Match!403) (Else!403) (Error!403) (Case!403) (If!403) (Extends!403) (Abstract!403) (Class!403) (Val!403) (DelimiterValue!806 (del!463 List!2321)) (KeywordValue!409 (value!15149 List!2321)) (CommentValue!806 (value!15150 List!2321)) (WhitespaceValue!806 (value!15151 List!2321)) (IndentationValue!403 (value!15152 List!2321)) (String!3094) (Int32!403) (Broken!2016 (value!15153 List!2321)) (Boolean!404) (Unit!1783) (OperatorValue!406 (op!463 List!2321)) (IdentifierValue!806 (value!15154 List!2321)) (IdentifierValue!807 (value!15155 List!2321)) (WhitespaceValue!807 (value!15156 List!2321)) (True!806) (False!806) (Broken!2017 (value!15157 List!2321)) (Broken!2018 (value!15158 List!2321)) (True!807) (RightBrace!403) (RightBracket!403) (Colon!403) (Null!403) (Comma!403) (LeftBracket!403) (False!807) (LeftBrace!403) (ImaginaryLiteralValue!403 (text!3267 List!2321)) (StringLiteralValue!1209 (value!15159 List!2321)) (EOFValue!403 (value!15160 List!2321)) (IdentValue!403 (value!15161 List!2321)) (DelimiterValue!807 (value!15162 List!2321)) (DedentValue!403 (value!15163 List!2321)) (NewLineValue!403 (value!15164 List!2321)) (IntegerValue!1209 (value!15165 (_ BitVec 32)) (text!3268 List!2321)) (IntegerValue!1210 (value!15166 Int) (text!3269 List!2321)) (Times!403) (Or!403) (Equal!403) (Minus!403) (Broken!2019 (value!15167 List!2321)) (And!403) (Div!403) (LessEqual!403) (Mod!403) (Concat!1008) (Not!403) (Plus!403) (SpaceValue!403 (value!15168 List!2321)) (IntegerValue!1211 (value!15169 Int) (text!3270 List!2321)) (StringLiteralValue!1210 (text!3271 List!2321)) (FloatLiteralValue!807 (text!3272 List!2321)) (BytesLiteralValue!403 (value!15170 List!2321)) (CommentValue!807 (value!15171 List!2321)) (StringLiteralValue!1211 (value!15172 List!2321)) (ErrorTokenValue!403 (msg!464 List!2321)) )
))
(declare-datatypes ((C!2132 0))(
  ( (C!2133 (val!952 Int)) )
))
(declare-datatypes ((List!2322 0))(
  ( (Nil!2312) (Cons!2312 (h!7709 C!2132) (t!22968 List!2322)) )
))
(declare-datatypes ((IArray!1223 0))(
  ( (IArray!1224 (innerList!669 List!2322)) )
))
(declare-datatypes ((Conc!611 0))(
  ( (Node!611 (left!1788 Conc!611) (right!2118 Conc!611) (csize!1452 Int) (cheight!822 Int)) (Leaf!1141 (xs!3206 IArray!1223) (csize!1453 Int)) (Empty!611) )
))
(declare-datatypes ((BalanceConc!1230 0))(
  ( (BalanceConc!1231 (c!29090 Conc!611)) )
))
(declare-datatypes ((TokenValueInjection!578 0))(
  ( (TokenValueInjection!579 (toValue!992 Int) (toChars!851 Int)) )
))
(declare-datatypes ((String!3095 0))(
  ( (String!3096 (value!15173 String)) )
))
(declare-datatypes ((Regex!605 0))(
  ( (ElementMatch!605 (c!29091 C!2132)) (Concat!1009 (regOne!1722 Regex!605) (regTwo!1722 Regex!605)) (EmptyExpr!605) (Star!605 (reg!934 Regex!605)) (EmptyLang!605) (Union!605 (regOne!1723 Regex!605) (regTwo!1723 Regex!605)) )
))
(declare-datatypes ((Rule!562 0))(
  ( (Rule!563 (regex!381 Regex!605) (tag!559 String!3095) (isSeparator!381 Bool) (transformation!381 TokenValueInjection!578)) )
))
(declare-datatypes ((List!2323 0))(
  ( (Nil!2313) (Cons!2313 (h!7710 Rule!562) (t!22969 List!2323)) )
))
(declare-fun rules!4268 () List!2323)

(declare-fun p!3028 () Int)

(declare-datatypes ((Token!506 0))(
  ( (Token!507 (value!15174 TokenValue!403) (rule!888 Rule!562) (size!2067 Int) (originalCharacters!424 List!2322)) )
))
(declare-datatypes ((List!2324 0))(
  ( (Nil!2314) (Cons!2314 (h!7711 Token!506) (t!22970 List!2324)) )
))
(declare-fun l1!3130 () List!2324)

(declare-fun tokensListTwoByTwoPredicateList!8 (LexerInterface!269 List!2324 List!2323 Int) Bool)

(assert (=> b!138270 (= res!64529 (tokensListTwoByTwoPredicateList!8 thiss!27322 (t!22970 l1!3130) rules!4268 p!3028))))

(declare-fun e!80890 () Bool)

(declare-fun b!138271 () Bool)

(declare-fun l2!3099 () List!2324)

(declare-fun e!80899 () Bool)

(declare-fun tp!72441 () Bool)

(declare-fun inv!3057 (String!3095) Bool)

(declare-fun inv!3060 (TokenValueInjection!578) Bool)

(assert (=> b!138271 (= e!80899 (and tp!72441 (inv!3057 (tag!559 (rule!888 (h!7711 l2!3099)))) (inv!3060 (transformation!381 (rule!888 (h!7711 l2!3099)))) e!80890))))

(declare-fun b!138272 () Bool)

(declare-fun res!64534 () Bool)

(assert (=> b!138272 (=> (not res!64534) (not e!80900))))

(declare-fun isEmpty!888 (List!2324) Bool)

(assert (=> b!138272 (= res!64534 (not (isEmpty!888 (t!22970 l1!3130))))))

(declare-fun tp!72443 () Bool)

(declare-fun e!80903 () Bool)

(declare-fun b!138273 () Bool)

(declare-fun e!80895 () Bool)

(declare-fun inv!21 (TokenValue!403) Bool)

(assert (=> b!138273 (= e!80903 (and (inv!21 (value!15174 (h!7711 l1!3130))) e!80895 tp!72443))))

(declare-fun b!138274 () Bool)

(declare-fun res!64532 () Bool)

(assert (=> b!138274 (=> (not res!64532) (not e!80900))))

(assert (=> b!138274 (= res!64532 (tokensListTwoByTwoPredicateList!8 thiss!27322 l2!3099 rules!4268 p!3028))))

(declare-fun res!64537 () Bool)

(assert (=> start!14538 (=> (not res!64537) (not e!80900))))

(get-info :version)

(assert (=> start!14538 (= res!64537 ((_ is Lexer!267) thiss!27322))))

(assert (=> start!14538 e!80900))

(assert (=> start!14538 true))

(declare-fun e!80891 () Bool)

(assert (=> start!14538 e!80891))

(assert (=> start!14538 tp!72436))

(declare-fun e!80887 () Bool)

(assert (=> start!14538 e!80887))

(declare-fun e!80897 () Bool)

(assert (=> start!14538 e!80897))

(declare-fun e!80898 () Bool)

(assert (=> b!138275 (= e!80898 (and tp!72440 tp!72446))))

(assert (=> b!138276 (= e!80890 (and tp!72435 tp!72437))))

(declare-fun b!138277 () Bool)

(declare-fun tp!72439 () Bool)

(declare-fun inv!3061 (Token!506) Bool)

(assert (=> b!138277 (= e!80887 (and (inv!3061 (h!7711 l1!3130)) e!80903 tp!72439))))

(declare-fun e!80888 () Bool)

(declare-fun b!138278 () Bool)

(declare-fun tp!72444 () Bool)

(assert (=> b!138278 (= e!80888 (and tp!72444 (inv!3057 (tag!559 (h!7710 rules!4268))) (inv!3060 (transformation!381 (h!7710 rules!4268))) e!80893))))

(declare-fun b!138279 () Bool)

(declare-fun res!64535 () Bool)

(assert (=> b!138279 (=> (not res!64535) (not e!80900))))

(assert (=> b!138279 (= res!64535 (not (isEmpty!888 l1!3130)))))

(declare-fun b!138280 () Bool)

(declare-fun res!64530 () Bool)

(assert (=> b!138280 (=> (not res!64530) (not e!80900))))

(assert (=> b!138280 (= res!64530 (tokensListTwoByTwoPredicateList!8 thiss!27322 l1!3130 rules!4268 p!3028))))

(declare-fun tp!72449 () Bool)

(declare-fun e!80901 () Bool)

(declare-fun b!138281 () Bool)

(assert (=> b!138281 (= e!80901 (and (inv!21 (value!15174 (h!7711 l2!3099))) e!80899 tp!72449))))

(declare-fun b!138282 () Bool)

(declare-fun res!64533 () Bool)

(assert (=> b!138282 (=> (not res!64533) (not e!80900))))

(declare-fun dynLambda!769 (Int Token!506 Token!506 List!2323) Bool)

(declare-fun last!17 (List!2324) Token!506)

(declare-fun head!544 (List!2324) Token!506)

(assert (=> b!138282 (= res!64533 (dynLambda!769 p!3028 (last!17 l1!3130) (head!544 l2!3099) rules!4268))))

(declare-fun tp!72445 () Bool)

(declare-fun b!138283 () Bool)

(assert (=> b!138283 (= e!80897 (and (inv!3061 (h!7711 l2!3099)) e!80901 tp!72445))))

(declare-fun b!138284 () Bool)

(declare-fun tp!72448 () Bool)

(assert (=> b!138284 (= e!80891 (and e!80888 tp!72448))))

(declare-fun b!138285 () Bool)

(assert (=> b!138285 (= e!80900 false)))

(declare-fun lt!41038 () Token!506)

(assert (=> b!138285 (= lt!41038 (last!17 (t!22970 l1!3130)))))

(declare-fun b!138286 () Bool)

(declare-fun res!64536 () Bool)

(assert (=> b!138286 (=> (not res!64536) (not e!80900))))

(assert (=> b!138286 (= res!64536 (not (isEmpty!888 l2!3099)))))

(declare-fun b!138287 () Bool)

(declare-fun res!64531 () Bool)

(assert (=> b!138287 (=> (not res!64531) (not e!80900))))

(assert (=> b!138287 (= res!64531 ((_ is Cons!2314) l1!3130))))

(declare-fun tp!72438 () Bool)

(declare-fun b!138288 () Bool)

(assert (=> b!138288 (= e!80895 (and tp!72438 (inv!3057 (tag!559 (rule!888 (h!7711 l1!3130)))) (inv!3060 (transformation!381 (rule!888 (h!7711 l1!3130)))) e!80898))))

(assert (= (and start!14538 res!64537) b!138280))

(assert (= (and b!138280 res!64530) b!138274))

(assert (= (and b!138274 res!64532) b!138279))

(assert (= (and b!138279 res!64535) b!138286))

(assert (= (and b!138286 res!64536) b!138282))

(assert (= (and b!138282 res!64533) b!138287))

(assert (= (and b!138287 res!64531) b!138272))

(assert (= (and b!138272 res!64534) b!138270))

(assert (= (and b!138270 res!64529) b!138285))

(assert (= b!138278 b!138269))

(assert (= b!138284 b!138278))

(assert (= (and start!14538 ((_ is Cons!2313) rules!4268)) b!138284))

(assert (= b!138288 b!138275))

(assert (= b!138273 b!138288))

(assert (= b!138277 b!138273))

(assert (= (and start!14538 ((_ is Cons!2314) l1!3130)) b!138277))

(assert (= b!138271 b!138276))

(assert (= b!138281 b!138271))

(assert (= b!138283 b!138281))

(assert (= (and start!14538 ((_ is Cons!2314) l2!3099)) b!138283))

(declare-fun b_lambda!1781 () Bool)

(assert (=> (not b_lambda!1781) (not b!138282)))

(declare-fun t!22966 () Bool)

(declare-fun tb!3727 () Bool)

(assert (=> (and start!14538 (= p!3028 p!3028) t!22966) tb!3727))

(declare-fun result!5838 () Bool)

(assert (=> tb!3727 (= result!5838 true)))

(assert (=> b!138282 t!22966))

(declare-fun b_and!6355 () Bool)

(assert (= b_and!6353 (and (=> t!22966 result!5838) b_and!6355)))

(declare-fun m!122135 () Bool)

(assert (=> b!138272 m!122135))

(declare-fun m!122137 () Bool)

(assert (=> b!138274 m!122137))

(declare-fun m!122139 () Bool)

(assert (=> b!138273 m!122139))

(declare-fun m!122141 () Bool)

(assert (=> b!138286 m!122141))

(declare-fun m!122143 () Bool)

(assert (=> b!138279 m!122143))

(declare-fun m!122145 () Bool)

(assert (=> b!138288 m!122145))

(declare-fun m!122147 () Bool)

(assert (=> b!138288 m!122147))

(declare-fun m!122149 () Bool)

(assert (=> b!138280 m!122149))

(declare-fun m!122151 () Bool)

(assert (=> b!138277 m!122151))

(declare-fun m!122153 () Bool)

(assert (=> b!138282 m!122153))

(declare-fun m!122155 () Bool)

(assert (=> b!138282 m!122155))

(assert (=> b!138282 m!122153))

(assert (=> b!138282 m!122155))

(declare-fun m!122157 () Bool)

(assert (=> b!138282 m!122157))

(declare-fun m!122159 () Bool)

(assert (=> b!138283 m!122159))

(declare-fun m!122161 () Bool)

(assert (=> b!138271 m!122161))

(declare-fun m!122163 () Bool)

(assert (=> b!138271 m!122163))

(declare-fun m!122165 () Bool)

(assert (=> b!138270 m!122165))

(declare-fun m!122167 () Bool)

(assert (=> b!138281 m!122167))

(declare-fun m!122169 () Bool)

(assert (=> b!138285 m!122169))

(declare-fun m!122171 () Bool)

(assert (=> b!138278 m!122171))

(declare-fun m!122173 () Bool)

(assert (=> b!138278 m!122173))

(check-sat b_and!6343 (not b!138280) b_and!6349 (not b!138282) (not b!138288) (not b!138286) (not b_next!4155) b_and!6345 (not b!138281) b_and!6351 b_and!6341 (not b!138274) (not b!138283) b_and!6347 (not b!138278) (not b!138272) (not b_next!4157) (not b_lambda!1781) (not b!138277) (not b_next!4163) (not b!138273) (not b!138279) (not b!138284) (not b!138285) (not b!138270) (not b_next!4161) (not b_next!4167) b_and!6355 (not b!138271) (not b_next!4159) (not b_next!4165))
(check-sat b_and!6343 b_and!6349 b_and!6341 b_and!6347 (not b_next!4157) (not b_next!4155) b_and!6345 (not b_next!4163) b_and!6351 b_and!6355 (not b_next!4161) (not b_next!4167) (not b_next!4159) (not b_next!4165))
