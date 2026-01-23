; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58904 () Bool)

(assert start!58904)

(declare-fun b!615384 () Bool)

(declare-fun b_free!17581 () Bool)

(declare-fun b_next!17597 () Bool)

(assert (=> b!615384 (= b_free!17581 (not b_next!17597))))

(declare-fun tp!190106 () Bool)

(declare-fun b_and!61047 () Bool)

(assert (=> b!615384 (= tp!190106 b_and!61047)))

(declare-fun b_free!17583 () Bool)

(declare-fun b_next!17599 () Bool)

(assert (=> b!615384 (= b_free!17583 (not b_next!17599))))

(declare-fun tp!190101 () Bool)

(declare-fun b_and!61049 () Bool)

(assert (=> b!615384 (= tp!190101 b_and!61049)))

(declare-fun b!615380 () Bool)

(declare-fun b_free!17585 () Bool)

(declare-fun b_next!17601 () Bool)

(assert (=> b!615380 (= b_free!17585 (not b_next!17601))))

(declare-fun tp!190107 () Bool)

(declare-fun b_and!61051 () Bool)

(assert (=> b!615380 (= tp!190107 b_and!61051)))

(declare-fun b_free!17587 () Bool)

(declare-fun b_next!17603 () Bool)

(assert (=> b!615380 (= b_free!17587 (not b_next!17603))))

(declare-fun tp!190103 () Bool)

(declare-fun b_and!61053 () Bool)

(assert (=> b!615380 (= tp!190103 b_and!61053)))

(declare-fun b!615374 () Bool)

(declare-fun res!267816 () Bool)

(declare-fun e!373110 () Bool)

(assert (=> b!615374 (=> (not res!267816) (not e!373110))))

(declare-datatypes ((C!4072 0))(
  ( (C!4073 (val!2262 Int)) )
))
(declare-datatypes ((List!6177 0))(
  ( (Nil!6167) (Cons!6167 (h!11568 C!4072) (t!81380 List!6177)) )
))
(declare-fun input!2705 () List!6177)

(declare-fun isEmpty!4451 (List!6177) Bool)

(assert (=> b!615374 (= res!267816 (not (isEmpty!4451 input!2705)))))

(declare-fun e!373100 () Bool)

(declare-fun tp!190104 () Bool)

(declare-datatypes ((String!8068 0))(
  ( (String!8069 (value!40209 String)) )
))
(declare-datatypes ((Regex!1575 0))(
  ( (ElementMatch!1575 (c!113629 C!4072)) (Concat!2840 (regOne!3662 Regex!1575) (regTwo!3662 Regex!1575)) (EmptyExpr!1575) (Star!1575 (reg!1904 Regex!1575)) (EmptyLang!1575) (Union!1575 (regOne!3663 Regex!1575) (regTwo!3663 Regex!1575)) )
))
(declare-datatypes ((List!6178 0))(
  ( (Nil!6168) (Cons!6168 (h!11569 (_ BitVec 16)) (t!81381 List!6178)) )
))
(declare-datatypes ((TokenValue!1265 0))(
  ( (FloatLiteralValue!2530 (text!9300 List!6178)) (TokenValueExt!1264 (__x!4428 Int)) (Broken!6325 (value!40210 List!6178)) (Object!1274) (End!1265) (Def!1265) (Underscore!1265) (Match!1265) (Else!1265) (Error!1265) (Case!1265) (If!1265) (Extends!1265) (Abstract!1265) (Class!1265) (Val!1265) (DelimiterValue!2530 (del!1325 List!6178)) (KeywordValue!1271 (value!40211 List!6178)) (CommentValue!2530 (value!40212 List!6178)) (WhitespaceValue!2530 (value!40213 List!6178)) (IndentationValue!1265 (value!40214 List!6178)) (String!8070) (Int32!1265) (Broken!6326 (value!40215 List!6178)) (Boolean!1266) (Unit!11343) (OperatorValue!1268 (op!1325 List!6178)) (IdentifierValue!2530 (value!40216 List!6178)) (IdentifierValue!2531 (value!40217 List!6178)) (WhitespaceValue!2531 (value!40218 List!6178)) (True!2530) (False!2530) (Broken!6327 (value!40219 List!6178)) (Broken!6328 (value!40220 List!6178)) (True!2531) (RightBrace!1265) (RightBracket!1265) (Colon!1265) (Null!1265) (Comma!1265) (LeftBracket!1265) (False!2531) (LeftBrace!1265) (ImaginaryLiteralValue!1265 (text!9301 List!6178)) (StringLiteralValue!3795 (value!40221 List!6178)) (EOFValue!1265 (value!40222 List!6178)) (IdentValue!1265 (value!40223 List!6178)) (DelimiterValue!2531 (value!40224 List!6178)) (DedentValue!1265 (value!40225 List!6178)) (NewLineValue!1265 (value!40226 List!6178)) (IntegerValue!3795 (value!40227 (_ BitVec 32)) (text!9302 List!6178)) (IntegerValue!3796 (value!40228 Int) (text!9303 List!6178)) (Times!1265) (Or!1265) (Equal!1265) (Minus!1265) (Broken!6329 (value!40229 List!6178)) (And!1265) (Div!1265) (LessEqual!1265) (Mod!1265) (Concat!2841) (Not!1265) (Plus!1265) (SpaceValue!1265 (value!40230 List!6178)) (IntegerValue!3797 (value!40231 Int) (text!9304 List!6178)) (StringLiteralValue!3796 (text!9305 List!6178)) (FloatLiteralValue!2531 (text!9306 List!6178)) (BytesLiteralValue!1265 (value!40232 List!6178)) (CommentValue!2531 (value!40233 List!6178)) (StringLiteralValue!3797 (value!40234 List!6178)) (ErrorTokenValue!1265 (msg!1326 List!6178)) )
))
(declare-datatypes ((IArray!3917 0))(
  ( (IArray!3918 (innerList!2016 List!6177)) )
))
(declare-datatypes ((Conc!1958 0))(
  ( (Node!1958 (left!4927 Conc!1958) (right!5257 Conc!1958) (csize!4146 Int) (cheight!2169 Int)) (Leaf!3086 (xs!4595 IArray!3917) (csize!4147 Int)) (Empty!1958) )
))
(declare-datatypes ((BalanceConc!3924 0))(
  ( (BalanceConc!3925 (c!113630 Conc!1958)) )
))
(declare-datatypes ((TokenValueInjection!2298 0))(
  ( (TokenValueInjection!2299 (toValue!2152 Int) (toChars!2011 Int)) )
))
(declare-datatypes ((Rule!2282 0))(
  ( (Rule!2283 (regex!1241 Regex!1575) (tag!1503 String!8068) (isSeparator!1241 Bool) (transformation!1241 TokenValueInjection!2298)) )
))
(declare-datatypes ((Token!2218 0))(
  ( (Token!2219 (value!40235 TokenValue!1265) (rule!2035 Rule!2282) (size!4844 Int) (originalCharacters!1280 List!6177)) )
))
(declare-fun token!491 () Token!2218)

(declare-fun e!373106 () Bool)

(declare-fun b!615375 () Bool)

(declare-fun inv!7849 (String!8068) Bool)

(declare-fun inv!7852 (TokenValueInjection!2298) Bool)

(assert (=> b!615375 (= e!373106 (and tp!190104 (inv!7849 (tag!1503 (rule!2035 token!491))) (inv!7852 (transformation!1241 (rule!2035 token!491))) e!373100))))

(declare-fun b!615377 () Bool)

(declare-fun res!267812 () Bool)

(declare-fun e!373101 () Bool)

(assert (=> b!615377 (=> (not res!267812) (not e!373101))))

(declare-datatypes ((List!6179 0))(
  ( (Nil!6169) (Cons!6169 (h!11570 Rule!2282) (t!81382 List!6179)) )
))
(declare-fun rules!3103 () List!6179)

(declare-datatypes ((LexerInterface!1127 0))(
  ( (LexerInterfaceExt!1124 (__x!4429 Int)) (Lexer!1125) )
))
(declare-fun thiss!22590 () LexerInterface!1127)

(get-info :version)

(declare-datatypes ((tuple2!7022 0))(
  ( (tuple2!7023 (_1!3775 Token!2218) (_2!3775 List!6177)) )
))
(declare-datatypes ((Option!1592 0))(
  ( (None!1591) (Some!1591 (v!16504 tuple2!7022)) )
))
(declare-fun maxPrefix!825 (LexerInterface!1127 List!6179 List!6177) Option!1592)

(assert (=> b!615377 (= res!267812 (not ((_ is Some!1591) (maxPrefix!825 thiss!22590 rules!3103 input!2705))))))

(declare-fun e!373103 () Bool)

(declare-fun tp!190105 () Bool)

(declare-fun b!615378 () Bool)

(declare-fun e!373104 () Bool)

(assert (=> b!615378 (= e!373103 (and tp!190105 (inv!7849 (tag!1503 (h!11570 rules!3103))) (inv!7852 (transformation!1241 (h!11570 rules!3103))) e!373104))))

(declare-fun b!615379 () Bool)

(declare-fun res!267811 () Bool)

(assert (=> b!615379 (=> (not res!267811) (not e!373110))))

(declare-fun list!2596 (BalanceConc!3924) List!6177)

(declare-fun charsOf!870 (Token!2218) BalanceConc!3924)

(assert (=> b!615379 (= res!267811 (= (list!2596 (charsOf!870 token!491)) input!2705))))

(assert (=> b!615380 (= e!373104 (and tp!190107 tp!190103))))

(declare-fun e!373111 () Bool)

(declare-fun b!615381 () Bool)

(declare-fun tp!190102 () Bool)

(declare-fun inv!21 (TokenValue!1265) Bool)

(assert (=> b!615381 (= e!373111 (and (inv!21 (value!40235 token!491)) e!373106 tp!190102))))

(declare-fun b!615382 () Bool)

(declare-fun e!373102 () Bool)

(declare-fun tp_is_empty!3505 () Bool)

(declare-fun tp!190099 () Bool)

(assert (=> b!615382 (= e!373102 (and tp_is_empty!3505 tp!190099))))

(declare-fun b!615383 () Bool)

(declare-fun res!267809 () Bool)

(assert (=> b!615383 (=> (not res!267809) (not e!373110))))

(declare-fun isEmpty!4452 (List!6179) Bool)

(assert (=> b!615383 (= res!267809 (not (isEmpty!4452 rules!3103)))))

(assert (=> b!615384 (= e!373100 (and tp!190106 tp!190101))))

(declare-fun b!615385 () Bool)

(declare-fun res!267810 () Bool)

(assert (=> b!615385 (=> (not res!267810) (not e!373110))))

(declare-fun rulesInvariant!1090 (LexerInterface!1127 List!6179) Bool)

(assert (=> b!615385 (= res!267810 (rulesInvariant!1090 thiss!22590 rules!3103))))

(declare-fun b!615376 () Bool)

(declare-fun e!373112 () Bool)

(declare-fun tp!190100 () Bool)

(assert (=> b!615376 (= e!373112 (and e!373103 tp!190100))))

(declare-fun res!267813 () Bool)

(assert (=> start!58904 (=> (not res!267813) (not e!373110))))

(assert (=> start!58904 (= res!267813 ((_ is Lexer!1125) thiss!22590))))

(assert (=> start!58904 e!373110))

(assert (=> start!58904 e!373102))

(assert (=> start!58904 e!373112))

(declare-fun inv!7853 (Token!2218) Bool)

(assert (=> start!58904 (and (inv!7853 token!491) e!373111)))

(assert (=> start!58904 true))

(declare-fun e!373108 () Bool)

(assert (=> start!58904 e!373108))

(declare-fun b!615386 () Bool)

(declare-fun e!373113 () Bool)

(assert (=> b!615386 (= e!373110 e!373113)))

(declare-fun res!267814 () Bool)

(assert (=> b!615386 (=> (not res!267814) (not e!373113))))

(declare-fun lt!264174 () Option!1592)

(declare-fun isDefined!1403 (Option!1592) Bool)

(assert (=> b!615386 (= res!267814 (isDefined!1403 lt!264174))))

(declare-fun suffix!1342 () List!6177)

(declare-fun ++!1729 (List!6177 List!6177) List!6177)

(assert (=> b!615386 (= lt!264174 (maxPrefix!825 thiss!22590 rules!3103 (++!1729 input!2705 suffix!1342)))))

(declare-fun b!615387 () Bool)

(assert (=> b!615387 (= e!373101 false)))

(declare-fun lt!264176 () Bool)

(declare-fun isPrefix!869 (List!6177 List!6177) Bool)

(assert (=> b!615387 (= lt!264176 (isPrefix!869 input!2705 input!2705))))

(declare-fun b!615388 () Bool)

(declare-fun tp!190108 () Bool)

(assert (=> b!615388 (= e!373108 (and tp_is_empty!3505 tp!190108))))

(declare-fun b!615389 () Bool)

(assert (=> b!615389 (= e!373113 e!373101)))

(declare-fun res!267815 () Bool)

(assert (=> b!615389 (=> (not res!267815) (not e!373101))))

(declare-fun lt!264175 () tuple2!7022)

(assert (=> b!615389 (= res!267815 (and (= (_1!3775 lt!264175) token!491) (= (_2!3775 lt!264175) suffix!1342)))))

(declare-fun get!2376 (Option!1592) tuple2!7022)

(assert (=> b!615389 (= lt!264175 (get!2376 lt!264174))))

(assert (= (and start!58904 res!267813) b!615383))

(assert (= (and b!615383 res!267809) b!615385))

(assert (= (and b!615385 res!267810) b!615374))

(assert (= (and b!615374 res!267816) b!615379))

(assert (= (and b!615379 res!267811) b!615386))

(assert (= (and b!615386 res!267814) b!615389))

(assert (= (and b!615389 res!267815) b!615377))

(assert (= (and b!615377 res!267812) b!615387))

(assert (= (and start!58904 ((_ is Cons!6167) suffix!1342)) b!615382))

(assert (= b!615378 b!615380))

(assert (= b!615376 b!615378))

(assert (= (and start!58904 ((_ is Cons!6169) rules!3103)) b!615376))

(assert (= b!615375 b!615384))

(assert (= b!615381 b!615375))

(assert (= start!58904 b!615381))

(assert (= (and start!58904 ((_ is Cons!6167) input!2705)) b!615388))

(declare-fun m!884187 () Bool)

(assert (=> b!615385 m!884187))

(declare-fun m!884189 () Bool)

(assert (=> b!615381 m!884189))

(declare-fun m!884191 () Bool)

(assert (=> start!58904 m!884191))

(declare-fun m!884193 () Bool)

(assert (=> b!615377 m!884193))

(declare-fun m!884195 () Bool)

(assert (=> b!615375 m!884195))

(declare-fun m!884197 () Bool)

(assert (=> b!615375 m!884197))

(declare-fun m!884199 () Bool)

(assert (=> b!615379 m!884199))

(assert (=> b!615379 m!884199))

(declare-fun m!884201 () Bool)

(assert (=> b!615379 m!884201))

(declare-fun m!884203 () Bool)

(assert (=> b!615378 m!884203))

(declare-fun m!884205 () Bool)

(assert (=> b!615378 m!884205))

(declare-fun m!884207 () Bool)

(assert (=> b!615374 m!884207))

(declare-fun m!884209 () Bool)

(assert (=> b!615386 m!884209))

(declare-fun m!884211 () Bool)

(assert (=> b!615386 m!884211))

(assert (=> b!615386 m!884211))

(declare-fun m!884213 () Bool)

(assert (=> b!615386 m!884213))

(declare-fun m!884215 () Bool)

(assert (=> b!615383 m!884215))

(declare-fun m!884217 () Bool)

(assert (=> b!615387 m!884217))

(declare-fun m!884219 () Bool)

(assert (=> b!615389 m!884219))

(check-sat (not b!615378) (not b!615383) b_and!61047 (not b!615376) (not start!58904) (not b_next!17603) b_and!61051 (not b!615388) (not b!615379) b_and!61049 tp_is_empty!3505 (not b_next!17597) (not b!615385) (not b!615389) (not b!615377) (not b_next!17599) (not b!615374) (not b_next!17601) (not b!615382) b_and!61053 (not b!615381) (not b!615387) (not b!615386) (not b!615375))
(check-sat (not b_next!17597) (not b_next!17599) (not b_next!17601) b_and!61047 b_and!61053 (not b_next!17603) b_and!61051 b_and!61049)
