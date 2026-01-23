; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757444 () Bool)

(assert start!757444)

(declare-fun b!8044763 () Bool)

(declare-fun b_free!136219 () Bool)

(declare-fun b_next!137009 () Bool)

(assert (=> b!8044763 (= b_free!136219 (not b_next!137009))))

(declare-fun tp!2411022 () Bool)

(declare-fun b_and!354655 () Bool)

(assert (=> b!8044763 (= tp!2411022 b_and!354655)))

(declare-fun b_free!136221 () Bool)

(declare-fun b_next!137011 () Bool)

(assert (=> b!8044763 (= b_free!136221 (not b_next!137011))))

(declare-fun tp!2411023 () Bool)

(declare-fun b_and!354657 () Bool)

(assert (=> b!8044763 (= tp!2411023 b_and!354657)))

(declare-fun b!8044762 () Bool)

(declare-fun b_free!136223 () Bool)

(declare-fun b_next!137013 () Bool)

(assert (=> b!8044762 (= b_free!136223 (not b_next!137013))))

(declare-fun tp!2411025 () Bool)

(declare-fun b_and!354659 () Bool)

(assert (=> b!8044762 (= tp!2411025 b_and!354659)))

(declare-fun b_free!136225 () Bool)

(declare-fun b_next!137015 () Bool)

(assert (=> b!8044762 (= b_free!136225 (not b_next!137015))))

(declare-fun tp!2411020 () Bool)

(declare-fun b_and!354661 () Bool)

(assert (=> b!8044762 (= tp!2411020 b_and!354661)))

(declare-fun e!4739163 () Bool)

(declare-datatypes ((C!43960 0))(
  ( (C!43961 (val!32756 Int)) )
))
(declare-datatypes ((List!75376 0))(
  ( (Nil!75250) (Cons!75250 (h!81698 C!43960) (t!391146 List!75376)) )
))
(declare-datatypes ((IArray!32077 0))(
  ( (IArray!32078 (innerList!16096 List!75376)) )
))
(declare-datatypes ((Conc!16008 0))(
  ( (Node!16008 (left!57335 Conc!16008) (right!57665 Conc!16008) (csize!32246 Int) (cheight!16219 Int)) (Leaf!30688 (xs!19406 IArray!32077) (csize!32247 Int)) (Empty!16008) )
))
(declare-datatypes ((String!85073 0))(
  ( (String!85074 (value!292116 String)) )
))
(declare-datatypes ((List!75377 0))(
  ( (Nil!75251) (Cons!75251 (h!81699 (_ BitVec 16)) (t!391147 List!75377)) )
))
(declare-datatypes ((TokenValue!9060 0))(
  ( (FloatLiteralValue!18120 (text!63865 List!75377)) (TokenValueExt!9059 (__x!35401 Int)) (Broken!45300 (value!292117 List!75377)) (Object!9185) (End!9060) (Def!9060) (Underscore!9060) (Match!9060) (Else!9060) (Error!9060) (Case!9060) (If!9060) (Extends!9060) (Abstract!9060) (Class!9060) (Val!9060) (DelimiterValue!18120 (del!9120 List!75377)) (KeywordValue!9066 (value!292118 List!75377)) (CommentValue!18120 (value!292119 List!75377)) (WhitespaceValue!18120 (value!292120 List!75377)) (IndentationValue!9060 (value!292121 List!75377)) (String!85075) (Int32!9060) (Broken!45301 (value!292122 List!75377)) (Boolean!9061) (Unit!171103) (OperatorValue!9063 (op!9120 List!75377)) (IdentifierValue!18120 (value!292123 List!75377)) (IdentifierValue!18121 (value!292124 List!75377)) (WhitespaceValue!18121 (value!292125 List!75377)) (True!18120) (False!18120) (Broken!45302 (value!292126 List!75377)) (Broken!45303 (value!292127 List!75377)) (True!18121) (RightBrace!9060) (RightBracket!9060) (Colon!9060) (Null!9060) (Comma!9060) (LeftBracket!9060) (False!18121) (LeftBrace!9060) (ImaginaryLiteralValue!9060 (text!63866 List!75377)) (StringLiteralValue!27180 (value!292128 List!75377)) (EOFValue!9060 (value!292129 List!75377)) (IdentValue!9060 (value!292130 List!75377)) (DelimiterValue!18121 (value!292131 List!75377)) (DedentValue!9060 (value!292132 List!75377)) (NewLineValue!9060 (value!292133 List!75377)) (IntegerValue!27180 (value!292134 (_ BitVec 32)) (text!63867 List!75377)) (IntegerValue!27181 (value!292135 Int) (text!63868 List!75377)) (Times!9060) (Or!9060) (Equal!9060) (Minus!9060) (Broken!45304 (value!292136 List!75377)) (And!9060) (Div!9060) (LessEqual!9060) (Mod!9060) (Concat!30871) (Not!9060) (Plus!9060) (SpaceValue!9060 (value!292137 List!75377)) (IntegerValue!27182 (value!292138 Int) (text!63869 List!75377)) (StringLiteralValue!27181 (text!63870 List!75377)) (FloatLiteralValue!18121 (text!63871 List!75377)) (BytesLiteralValue!9060 (value!292139 List!75377)) (CommentValue!18121 (value!292140 List!75377)) (StringLiteralValue!27182 (value!292141 List!75377)) (ErrorTokenValue!9060 (msg!9121 List!75377)) )
))
(declare-datatypes ((BalanceConc!30972 0))(
  ( (BalanceConc!30973 (c!1475393 Conc!16008)) )
))
(declare-datatypes ((TokenValueInjection!17428 0))(
  ( (TokenValueInjection!17429 (toValue!11815 Int) (toChars!11674 Int)) )
))
(declare-datatypes ((Regex!21811 0))(
  ( (ElementMatch!21811 (c!1475394 C!43960)) (Concat!30872 (regOne!44134 Regex!21811) (regTwo!44134 Regex!21811)) (EmptyExpr!21811) (Star!21811 (reg!22140 Regex!21811)) (EmptyLang!21811) (Union!21811 (regOne!44135 Regex!21811) (regTwo!44135 Regex!21811)) )
))
(declare-datatypes ((Rule!17280 0))(
  ( (Rule!17281 (regex!8740 Regex!21811) (tag!9604 String!85073) (isSeparator!8740 Bool) (transformation!8740 TokenValueInjection!17428)) )
))
(declare-fun r!4387 () Rule!17280)

(declare-fun e!4739169 () Bool)

(declare-fun b!8044755 () Bool)

(declare-fun tp!2411021 () Bool)

(declare-fun inv!97017 (String!85073) Bool)

(declare-fun inv!97019 (TokenValueInjection!17428) Bool)

(assert (=> b!8044755 (= e!4739169 (and tp!2411021 (inv!97017 (tag!9604 r!4387)) (inv!97019 (transformation!8740 r!4387)) e!4739163))))

(declare-fun b!8044756 () Bool)

(declare-fun e!4739168 () Bool)

(declare-fun e!4739165 () Bool)

(declare-fun tp!2411024 () Bool)

(assert (=> b!8044756 (= e!4739168 (and e!4739165 tp!2411024))))

(declare-fun e!4739171 () Bool)

(declare-fun b!8044757 () Bool)

(declare-datatypes ((List!75378 0))(
  ( (Nil!75252) (Cons!75252 (h!81700 Rule!17280) (t!391148 List!75378)) )
))
(declare-fun rules!4030 () List!75378)

(declare-fun tp!2411019 () Bool)

(assert (=> b!8044757 (= e!4739165 (and tp!2411019 (inv!97017 (tag!9604 (h!81700 rules!4030))) (inv!97019 (transformation!8740 (h!81700 rules!4030))) e!4739171))))

(declare-fun res!3180048 () Bool)

(declare-fun e!4739167 () Bool)

(assert (=> start!757444 (=> (not res!3180048) (not e!4739167))))

(declare-datatypes ((LexerInterface!8330 0))(
  ( (LexerInterfaceExt!8327 (__x!35402 Int)) (Lexer!8328) )
))
(declare-fun thiss!26855 () LexerInterface!8330)

(get-info :version)

(assert (=> start!757444 (= res!3180048 ((_ is Lexer!8328) thiss!26855))))

(assert (=> start!757444 e!4739167))

(assert (=> start!757444 true))

(assert (=> start!757444 e!4739169))

(assert (=> start!757444 e!4739168))

(declare-fun b!8044758 () Bool)

(declare-fun res!3180047 () Bool)

(declare-fun e!4739166 () Bool)

(assert (=> b!8044758 (=> (not res!3180047) (not e!4739166))))

(declare-fun lt!2722600 () List!75378)

(declare-fun rulesValidInductive!3459 (LexerInterface!8330 List!75378) Bool)

(assert (=> b!8044758 (= res!3180047 (rulesValidInductive!3459 thiss!26855 lt!2722600))))

(declare-fun b!8044759 () Bool)

(assert (=> b!8044759 (= e!4739166 false)))

(declare-fun lt!2722599 () Bool)

(assert (=> b!8044759 (= lt!2722599 (rulesValidInductive!3459 thiss!26855 rules!4030))))

(declare-fun b!8044760 () Bool)

(declare-fun res!3180049 () Bool)

(assert (=> b!8044760 (=> (not res!3180049) (not e!4739166))))

(declare-datatypes ((List!75379 0))(
  ( (Nil!75253) (Cons!75253 (h!81701 String!85073) (t!391149 List!75379)) )
))
(declare-fun noDuplicateTag!3318 (LexerInterface!8330 List!75378 List!75379) Bool)

(assert (=> b!8044760 (= res!3180049 (noDuplicateTag!3318 thiss!26855 lt!2722600 Nil!75253))))

(declare-fun b!8044761 () Bool)

(assert (=> b!8044761 (= e!4739167 e!4739166)))

(declare-fun res!3180046 () Bool)

(assert (=> b!8044761 (=> (not res!3180046) (not e!4739166))))

(declare-fun rulesInvariant!6798 (LexerInterface!8330 List!75378) Bool)

(assert (=> b!8044761 (= res!3180046 (rulesInvariant!6798 thiss!26855 lt!2722600))))

(assert (=> b!8044761 (= lt!2722600 (Cons!75252 r!4387 rules!4030))))

(assert (=> b!8044762 (= e!4739163 (and tp!2411025 tp!2411020))))

(assert (=> b!8044763 (= e!4739171 (and tp!2411022 tp!2411023))))

(assert (= (and start!757444 res!3180048) b!8044761))

(assert (= (and b!8044761 res!3180046) b!8044758))

(assert (= (and b!8044758 res!3180047) b!8044760))

(assert (= (and b!8044760 res!3180049) b!8044759))

(assert (= b!8044755 b!8044762))

(assert (= start!757444 b!8044755))

(assert (= b!8044757 b!8044763))

(assert (= b!8044756 b!8044757))

(assert (= (and start!757444 ((_ is Cons!75252) rules!4030)) b!8044756))

(declare-fun m!8397590 () Bool)

(assert (=> b!8044759 m!8397590))

(declare-fun m!8397592 () Bool)

(assert (=> b!8044758 m!8397592))

(declare-fun m!8397594 () Bool)

(assert (=> b!8044760 m!8397594))

(declare-fun m!8397596 () Bool)

(assert (=> b!8044761 m!8397596))

(declare-fun m!8397598 () Bool)

(assert (=> b!8044757 m!8397598))

(declare-fun m!8397600 () Bool)

(assert (=> b!8044757 m!8397600))

(declare-fun m!8397602 () Bool)

(assert (=> b!8044755 m!8397602))

(declare-fun m!8397604 () Bool)

(assert (=> b!8044755 m!8397604))

(check-sat (not b!8044758) b_and!354657 (not b!8044756) (not b_next!137015) b_and!354661 (not b!8044755) (not b_next!137009) (not b!8044757) b_and!354659 (not b_next!137011) (not b!8044759) (not b!8044761) b_and!354655 (not b_next!137013) (not b!8044760))
(check-sat b_and!354659 b_and!354657 (not b_next!137011) b_and!354655 (not b_next!137015) b_and!354661 (not b_next!137013) (not b_next!137009))
