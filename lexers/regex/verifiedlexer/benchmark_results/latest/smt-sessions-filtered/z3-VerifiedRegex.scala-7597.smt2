; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401278 () Bool)

(assert start!401278)

(declare-fun b!4200392 () Bool)

(declare-fun b_free!122523 () Bool)

(declare-fun b_next!123227 () Bool)

(assert (=> b!4200392 (= b_free!122523 (not b_next!123227))))

(declare-fun tp!1283244 () Bool)

(declare-fun b_and!329577 () Bool)

(assert (=> b!4200392 (= tp!1283244 b_and!329577)))

(declare-fun b_free!122525 () Bool)

(declare-fun b_next!123229 () Bool)

(assert (=> b!4200392 (= b_free!122525 (not b_next!123229))))

(declare-fun tp!1283246 () Bool)

(declare-fun b_and!329579 () Bool)

(assert (=> b!4200392 (= tp!1283246 b_and!329579)))

(declare-fun b!4200389 () Bool)

(declare-fun b_free!122527 () Bool)

(declare-fun b_next!123231 () Bool)

(assert (=> b!4200389 (= b_free!122527 (not b_next!123231))))

(declare-fun tp!1283254 () Bool)

(declare-fun b_and!329581 () Bool)

(assert (=> b!4200389 (= tp!1283254 b_and!329581)))

(declare-fun b_free!122529 () Bool)

(declare-fun b_next!123233 () Bool)

(assert (=> b!4200389 (= b_free!122529 (not b_next!123233))))

(declare-fun tp!1283247 () Bool)

(declare-fun b_and!329583 () Bool)

(assert (=> b!4200389 (= tp!1283247 b_and!329583)))

(declare-fun b!4200377 () Bool)

(declare-fun res!1724985 () Bool)

(declare-fun e!2607358 () Bool)

(assert (=> b!4200377 (=> (not res!1724985) (not e!2607358))))

(declare-datatypes ((C!25420 0))(
  ( (C!25421 (val!14872 Int)) )
))
(declare-datatypes ((List!46281 0))(
  ( (Nil!46157) (Cons!46157 (h!51577 C!25420) (t!346786 List!46281)) )
))
(declare-fun p!3001 () List!46281)

(declare-fun input!3517 () List!46281)

(declare-fun suffix!1557 () List!46281)

(declare-fun ++!11782 (List!46281 List!46281) List!46281)

(assert (=> b!4200377 (= res!1724985 (= (++!11782 p!3001 suffix!1557) input!3517))))

(declare-fun b!4200378 () Bool)

(declare-fun e!2607366 () Bool)

(declare-fun e!2607357 () Bool)

(declare-fun tp!1283250 () Bool)

(assert (=> b!4200378 (= e!2607366 (and e!2607357 tp!1283250))))

(declare-fun res!1724982 () Bool)

(assert (=> start!401278 (=> (not res!1724982) (not e!2607358))))

(declare-datatypes ((LexerInterface!7303 0))(
  ( (LexerInterfaceExt!7300 (__x!28099 Int)) (Lexer!7301) )
))
(declare-fun thiss!26544 () LexerInterface!7303)

(get-info :version)

(assert (=> start!401278 (= res!1724982 ((_ is Lexer!7301) thiss!26544))))

(assert (=> start!401278 e!2607358))

(assert (=> start!401278 true))

(declare-fun e!2607364 () Bool)

(assert (=> start!401278 e!2607364))

(declare-fun e!2607359 () Bool)

(assert (=> start!401278 e!2607359))

(assert (=> start!401278 e!2607366))

(declare-fun e!2607363 () Bool)

(assert (=> start!401278 e!2607363))

(declare-fun e!2607361 () Bool)

(assert (=> start!401278 e!2607361))

(declare-fun e!2607360 () Bool)

(assert (=> start!401278 e!2607360))

(declare-fun b!4200379 () Bool)

(declare-fun res!1724984 () Bool)

(assert (=> b!4200379 (=> (not res!1724984) (not e!2607358))))

(declare-datatypes ((List!46282 0))(
  ( (Nil!46158) (Cons!46158 (h!51578 (_ BitVec 16)) (t!346787 List!46282)) )
))
(declare-datatypes ((TokenValue!7938 0))(
  ( (FloatLiteralValue!15876 (text!56011 List!46282)) (TokenValueExt!7937 (__x!28100 Int)) (Broken!39690 (value!240181 List!46282)) (Object!8061) (End!7938) (Def!7938) (Underscore!7938) (Match!7938) (Else!7938) (Error!7938) (Case!7938) (If!7938) (Extends!7938) (Abstract!7938) (Class!7938) (Val!7938) (DelimiterValue!15876 (del!7998 List!46282)) (KeywordValue!7944 (value!240182 List!46282)) (CommentValue!15876 (value!240183 List!46282)) (WhitespaceValue!15876 (value!240184 List!46282)) (IndentationValue!7938 (value!240185 List!46282)) (String!53559) (Int32!7938) (Broken!39691 (value!240186 List!46282)) (Boolean!7939) (Unit!65252) (OperatorValue!7941 (op!7998 List!46282)) (IdentifierValue!15876 (value!240187 List!46282)) (IdentifierValue!15877 (value!240188 List!46282)) (WhitespaceValue!15877 (value!240189 List!46282)) (True!15876) (False!15876) (Broken!39692 (value!240190 List!46282)) (Broken!39693 (value!240191 List!46282)) (True!15877) (RightBrace!7938) (RightBracket!7938) (Colon!7938) (Null!7938) (Comma!7938) (LeftBracket!7938) (False!15877) (LeftBrace!7938) (ImaginaryLiteralValue!7938 (text!56012 List!46282)) (StringLiteralValue!23814 (value!240192 List!46282)) (EOFValue!7938 (value!240193 List!46282)) (IdentValue!7938 (value!240194 List!46282)) (DelimiterValue!15877 (value!240195 List!46282)) (DedentValue!7938 (value!240196 List!46282)) (NewLineValue!7938 (value!240197 List!46282)) (IntegerValue!23814 (value!240198 (_ BitVec 32)) (text!56013 List!46282)) (IntegerValue!23815 (value!240199 Int) (text!56014 List!46282)) (Times!7938) (Or!7938) (Equal!7938) (Minus!7938) (Broken!39694 (value!240200 List!46282)) (And!7938) (Div!7938) (LessEqual!7938) (Mod!7938) (Concat!20551) (Not!7938) (Plus!7938) (SpaceValue!7938 (value!240201 List!46282)) (IntegerValue!23816 (value!240202 Int) (text!56015 List!46282)) (StringLiteralValue!23815 (text!56016 List!46282)) (FloatLiteralValue!15877 (text!56017 List!46282)) (BytesLiteralValue!7938 (value!240203 List!46282)) (CommentValue!15877 (value!240204 List!46282)) (StringLiteralValue!23816 (value!240205 List!46282)) (ErrorTokenValue!7938 (msg!7999 List!46282)) )
))
(declare-datatypes ((IArray!27843 0))(
  ( (IArray!27844 (innerList!13979 List!46281)) )
))
(declare-datatypes ((Regex!12613 0))(
  ( (ElementMatch!12613 (c!716204 C!25420)) (Concat!20552 (regOne!25738 Regex!12613) (regTwo!25738 Regex!12613)) (EmptyExpr!12613) (Star!12613 (reg!12942 Regex!12613)) (EmptyLang!12613) (Union!12613 (regOne!25739 Regex!12613) (regTwo!25739 Regex!12613)) )
))
(declare-datatypes ((String!53560 0))(
  ( (String!53561 (value!240206 String)) )
))
(declare-datatypes ((Conc!13919 0))(
  ( (Node!13919 (left!34384 Conc!13919) (right!34714 Conc!13919) (csize!28068 Int) (cheight!14130 Int)) (Leaf!21517 (xs!17225 IArray!27843) (csize!28069 Int)) (Empty!13919) )
))
(declare-datatypes ((BalanceConc!27432 0))(
  ( (BalanceConc!27433 (c!716205 Conc!13919)) )
))
(declare-datatypes ((TokenValueInjection!15304 0))(
  ( (TokenValueInjection!15305 (toValue!10412 Int) (toChars!10271 Int)) )
))
(declare-datatypes ((Rule!15216 0))(
  ( (Rule!15217 (regex!7708 Regex!12613) (tag!8572 String!53560) (isSeparator!7708 Bool) (transformation!7708 TokenValueInjection!15304)) )
))
(declare-datatypes ((List!46283 0))(
  ( (Nil!46159) (Cons!46159 (h!51579 Rule!15216) (t!346788 List!46283)) )
))
(declare-fun rules!3967 () List!46283)

(declare-fun rBis!178 () Rule!15216)

(declare-fun contains!9521 (List!46283 Rule!15216) Bool)

(assert (=> b!4200379 (= res!1724984 (contains!9521 rules!3967 rBis!178))))

(declare-fun b!4200380 () Bool)

(declare-fun res!1724981 () Bool)

(assert (=> b!4200380 (=> (not res!1724981) (not e!2607358))))

(declare-fun isEmpty!27333 (List!46283) Bool)

(assert (=> b!4200380 (= res!1724981 (not (isEmpty!27333 rules!3967)))))

(declare-fun b!4200381 () Bool)

(declare-fun res!1724983 () Bool)

(assert (=> b!4200381 (=> (not res!1724983) (not e!2607358))))

(declare-fun isPrefix!4567 (List!46281 List!46281) Bool)

(assert (=> b!4200381 (= res!1724983 (isPrefix!4567 p!3001 input!3517))))

(declare-fun b!4200382 () Bool)

(declare-fun res!1724986 () Bool)

(assert (=> b!4200382 (=> (not res!1724986) (not e!2607358))))

(declare-fun pBis!121 () List!46281)

(assert (=> b!4200382 (= res!1724986 (isPrefix!4567 pBis!121 input!3517))))

(declare-fun b!4200383 () Bool)

(declare-fun res!1724980 () Bool)

(assert (=> b!4200383 (=> (not res!1724980) (not e!2607358))))

(declare-fun rulesInvariant!6514 (LexerInterface!7303 List!46283) Bool)

(assert (=> b!4200383 (= res!1724980 (rulesInvariant!6514 thiss!26544 rules!3967))))

(declare-fun b!4200384 () Bool)

(assert (=> b!4200384 (= e!2607358 false)))

(declare-datatypes ((Token!14118 0))(
  ( (Token!14119 (value!240207 TokenValue!7938) (rule!10804 Rule!15216) (size!33923 Int) (originalCharacters!8090 List!46281)) )
))
(declare-datatypes ((tuple2!43922 0))(
  ( (tuple2!43923 (_1!25095 Token!14118) (_2!25095 List!46281)) )
))
(declare-datatypes ((Option!9896 0))(
  ( (None!9895) (Some!9895 (v!40747 tuple2!43922)) )
))
(declare-fun lt!1496300 () Option!9896)

(declare-fun maxPrefix!4343 (LexerInterface!7303 List!46283 List!46281) Option!9896)

(assert (=> b!4200384 (= lt!1496300 (maxPrefix!4343 thiss!26544 rules!3967 input!3517))))

(declare-fun b!4200385 () Bool)

(declare-fun tp_is_empty!22193 () Bool)

(declare-fun tp!1283248 () Bool)

(assert (=> b!4200385 (= e!2607360 (and tp_is_empty!22193 tp!1283248))))

(declare-fun b!4200386 () Bool)

(declare-fun tp!1283251 () Bool)

(assert (=> b!4200386 (= e!2607363 (and tp_is_empty!22193 tp!1283251))))

(declare-fun b!4200387 () Bool)

(declare-fun tp!1283252 () Bool)

(assert (=> b!4200387 (= e!2607359 (and tp_is_empty!22193 tp!1283252))))

(declare-fun b!4200388 () Bool)

(declare-fun e!2607367 () Bool)

(declare-fun tp!1283253 () Bool)

(declare-fun inv!60711 (String!53560) Bool)

(declare-fun inv!60713 (TokenValueInjection!15304) Bool)

(assert (=> b!4200388 (= e!2607364 (and tp!1283253 (inv!60711 (tag!8572 rBis!178)) (inv!60713 (transformation!7708 rBis!178)) e!2607367))))

(assert (=> b!4200389 (= e!2607367 (and tp!1283254 tp!1283247))))

(declare-fun b!4200390 () Bool)

(declare-fun tp!1283249 () Bool)

(assert (=> b!4200390 (= e!2607361 (and tp_is_empty!22193 tp!1283249))))

(declare-fun b!4200391 () Bool)

(declare-fun e!2607365 () Bool)

(declare-fun tp!1283245 () Bool)

(assert (=> b!4200391 (= e!2607357 (and tp!1283245 (inv!60711 (tag!8572 (h!51579 rules!3967))) (inv!60713 (transformation!7708 (h!51579 rules!3967))) e!2607365))))

(assert (=> b!4200392 (= e!2607365 (and tp!1283244 tp!1283246))))

(assert (= (and start!401278 res!1724982) b!4200377))

(assert (= (and b!4200377 res!1724985) b!4200381))

(assert (= (and b!4200381 res!1724983) b!4200382))

(assert (= (and b!4200382 res!1724986) b!4200380))

(assert (= (and b!4200380 res!1724981) b!4200383))

(assert (= (and b!4200383 res!1724980) b!4200379))

(assert (= (and b!4200379 res!1724984) b!4200384))

(assert (= b!4200388 b!4200389))

(assert (= start!401278 b!4200388))

(assert (= (and start!401278 ((_ is Cons!46157) p!3001)) b!4200387))

(assert (= b!4200391 b!4200392))

(assert (= b!4200378 b!4200391))

(assert (= (and start!401278 ((_ is Cons!46159) rules!3967)) b!4200378))

(assert (= (and start!401278 ((_ is Cons!46157) input!3517)) b!4200386))

(assert (= (and start!401278 ((_ is Cons!46157) pBis!121)) b!4200390))

(assert (= (and start!401278 ((_ is Cons!46157) suffix!1557)) b!4200385))

(declare-fun m!4788817 () Bool)

(assert (=> b!4200382 m!4788817))

(declare-fun m!4788819 () Bool)

(assert (=> b!4200379 m!4788819))

(declare-fun m!4788821 () Bool)

(assert (=> b!4200391 m!4788821))

(declare-fun m!4788823 () Bool)

(assert (=> b!4200391 m!4788823))

(declare-fun m!4788825 () Bool)

(assert (=> b!4200377 m!4788825))

(declare-fun m!4788827 () Bool)

(assert (=> b!4200383 m!4788827))

(declare-fun m!4788829 () Bool)

(assert (=> b!4200388 m!4788829))

(declare-fun m!4788831 () Bool)

(assert (=> b!4200388 m!4788831))

(declare-fun m!4788833 () Bool)

(assert (=> b!4200381 m!4788833))

(declare-fun m!4788835 () Bool)

(assert (=> b!4200380 m!4788835))

(declare-fun m!4788837 () Bool)

(assert (=> b!4200384 m!4788837))

(check-sat (not b_next!123231) (not b!4200380) (not b_next!123229) (not b_next!123233) (not b!4200391) (not b!4200386) (not b!4200390) (not b!4200381) (not b!4200382) (not b_next!123227) b_and!329581 (not b!4200385) (not b!4200379) (not b!4200388) (not b!4200383) b_and!329583 b_and!329579 (not b!4200378) (not b!4200377) (not b!4200387) (not b!4200384) b_and!329577 tp_is_empty!22193)
(check-sat (not b_next!123231) (not b_next!123227) (not b_next!123229) b_and!329581 b_and!329583 (not b_next!123233) b_and!329579 b_and!329577)
