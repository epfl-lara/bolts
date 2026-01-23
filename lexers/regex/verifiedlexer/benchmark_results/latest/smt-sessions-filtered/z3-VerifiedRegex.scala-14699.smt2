; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757806 () Bool)

(assert start!757806)

(declare-fun b!8047526 () Bool)

(declare-fun b_free!136539 () Bool)

(declare-fun b_next!137329 () Bool)

(assert (=> b!8047526 (= b_free!136539 (not b_next!137329))))

(declare-fun tp!2412744 () Bool)

(declare-fun b_and!354975 () Bool)

(assert (=> b!8047526 (= tp!2412744 b_and!354975)))

(declare-fun b_free!136541 () Bool)

(declare-fun b_next!137331 () Bool)

(assert (=> b!8047526 (= b_free!136541 (not b_next!137331))))

(declare-fun tp!2412745 () Bool)

(declare-fun b_and!354977 () Bool)

(assert (=> b!8047526 (= tp!2412745 b_and!354977)))

(assert (=> start!757806 false))

(assert (=> start!757806 true))

(declare-fun e!4741490 () Bool)

(assert (=> start!757806 e!4741490))

(declare-fun e!4741489 () Bool)

(assert (=> b!8047526 (= e!4741489 (and tp!2412744 tp!2412745))))

(declare-fun tp!2412747 () Bool)

(declare-datatypes ((List!75529 0))(
  ( (Nil!75403) (Cons!75403 (h!81851 (_ BitVec 16)) (t!391301 List!75529)) )
))
(declare-datatypes ((TokenValue!9098 0))(
  ( (FloatLiteralValue!18196 (text!64131 List!75529)) (TokenValueExt!9097 (__x!35476 Int)) (Broken!45490 (value!293166 List!75529)) (Object!9223) (End!9098) (Def!9098) (Underscore!9098) (Match!9098) (Else!9098) (Error!9098) (Case!9098) (If!9098) (Extends!9098) (Abstract!9098) (Class!9098) (Val!9098) (DelimiterValue!18196 (del!9158 List!75529)) (KeywordValue!9104 (value!293167 List!75529)) (CommentValue!18196 (value!293168 List!75529)) (WhitespaceValue!18196 (value!293169 List!75529)) (IndentationValue!9098 (value!293170 List!75529)) (String!85271) (Int32!9098) (Broken!45491 (value!293171 List!75529)) (Boolean!9099) (Unit!171161) (OperatorValue!9101 (op!9158 List!75529)) (IdentifierValue!18196 (value!293172 List!75529)) (IdentifierValue!18197 (value!293173 List!75529)) (WhitespaceValue!18197 (value!293174 List!75529)) (True!18196) (False!18196) (Broken!45492 (value!293175 List!75529)) (Broken!45493 (value!293176 List!75529)) (True!18197) (RightBrace!9098) (RightBracket!9098) (Colon!9098) (Null!9098) (Comma!9098) (LeftBracket!9098) (False!18197) (LeftBrace!9098) (ImaginaryLiteralValue!9098 (text!64132 List!75529)) (StringLiteralValue!27294 (value!293177 List!75529)) (EOFValue!9098 (value!293178 List!75529)) (IdentValue!9098 (value!293179 List!75529)) (DelimiterValue!18197 (value!293180 List!75529)) (DedentValue!9098 (value!293181 List!75529)) (NewLineValue!9098 (value!293182 List!75529)) (IntegerValue!27294 (value!293183 (_ BitVec 32)) (text!64133 List!75529)) (IntegerValue!27295 (value!293184 Int) (text!64134 List!75529)) (Times!9098) (Or!9098) (Equal!9098) (Minus!9098) (Broken!45494 (value!293185 List!75529)) (And!9098) (Div!9098) (LessEqual!9098) (Mod!9098) (Concat!30947) (Not!9098) (Plus!9098) (SpaceValue!9098 (value!293186 List!75529)) (IntegerValue!27296 (value!293187 Int) (text!64135 List!75529)) (StringLiteralValue!27295 (text!64136 List!75529)) (FloatLiteralValue!18197 (text!64137 List!75529)) (BytesLiteralValue!9098 (value!293188 List!75529)) (CommentValue!18197 (value!293189 List!75529)) (StringLiteralValue!27296 (value!293190 List!75529)) (ErrorTokenValue!9098 (msg!9159 List!75529)) )
))
(declare-datatypes ((C!44036 0))(
  ( (C!44037 (val!32794 Int)) )
))
(declare-datatypes ((Regex!21849 0))(
  ( (ElementMatch!21849 (c!1475483 C!44036)) (Concat!30948 (regOne!44210 Regex!21849) (regTwo!44210 Regex!21849)) (EmptyExpr!21849) (Star!21849 (reg!22178 Regex!21849)) (EmptyLang!21849) (Union!21849 (regOne!44211 Regex!21849) (regTwo!44211 Regex!21849)) )
))
(declare-datatypes ((List!75530 0))(
  ( (Nil!75404) (Cons!75404 (h!81852 C!44036) (t!391302 List!75530)) )
))
(declare-datatypes ((IArray!32153 0))(
  ( (IArray!32154 (innerList!16134 List!75530)) )
))
(declare-datatypes ((Conc!16046 0))(
  ( (Node!16046 (left!57413 Conc!16046) (right!57743 Conc!16046) (csize!32322 Int) (cheight!16257 Int)) (Leaf!30746 (xs!19444 IArray!32153) (csize!32323 Int)) (Empty!16046) )
))
(declare-datatypes ((BalanceConc!31048 0))(
  ( (BalanceConc!31049 (c!1475484 Conc!16046)) )
))
(declare-datatypes ((String!85272 0))(
  ( (String!85273 (value!293191 String)) )
))
(declare-datatypes ((TokenValueInjection!17504 0))(
  ( (TokenValueInjection!17505 (toValue!11861 Int) (toChars!11720 Int)) )
))
(declare-datatypes ((Rule!17356 0))(
  ( (Rule!17357 (regex!8778 Regex!21849) (tag!9642 String!85272) (isSeparator!8778 Bool) (transformation!8778 TokenValueInjection!17504)) )
))
(declare-datatypes ((List!75531 0))(
  ( (Nil!75405) (Cons!75405 (h!81853 Rule!17356) (t!391303 List!75531)) )
))
(declare-fun rs!161 () List!75531)

(declare-fun b!8047525 () Bool)

(declare-fun e!4741492 () Bool)

(declare-fun inv!97115 (String!85272) Bool)

(declare-fun inv!97117 (TokenValueInjection!17504) Bool)

(assert (=> b!8047525 (= e!4741492 (and tp!2412747 (inv!97115 (tag!9642 (h!81853 rs!161))) (inv!97117 (transformation!8778 (h!81853 rs!161))) e!4741489))))

(declare-fun b!8047524 () Bool)

(declare-fun tp!2412746 () Bool)

(assert (=> b!8047524 (= e!4741490 (and e!4741492 tp!2412746))))

(assert (= b!8047525 b!8047526))

(assert (= b!8047524 b!8047525))

(get-info :version)

(assert (= (and start!757806 ((_ is Cons!75405) rs!161)) b!8047524))

(declare-fun m!8399134 () Bool)

(assert (=> b!8047525 m!8399134))

(declare-fun m!8399136 () Bool)

(assert (=> b!8047525 m!8399136))

(check-sat (not b_next!137331) b_and!354977 (not b!8047525) (not b_next!137329) b_and!354975 (not b!8047524))
(check-sat b_and!354975 b_and!354977 (not b_next!137331) (not b_next!137329))
