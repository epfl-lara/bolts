; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349390 () Bool)

(assert start!349390)

(declare-fun b!3705045 () Bool)

(declare-fun b_free!99009 () Bool)

(declare-fun b_next!99713 () Bool)

(assert (=> b!3705045 (= b_free!99009 (not b_next!99713))))

(declare-fun tp!1126818 () Bool)

(declare-fun b_and!277243 () Bool)

(assert (=> b!3705045 (= tp!1126818 b_and!277243)))

(declare-fun b_free!99011 () Bool)

(declare-fun b_next!99715 () Bool)

(assert (=> b!3705045 (= b_free!99011 (not b_next!99715))))

(declare-fun tp!1126817 () Bool)

(declare-fun b_and!277245 () Bool)

(assert (=> b!3705045 (= tp!1126817 b_and!277245)))

(declare-fun b!3705042 () Bool)

(declare-fun e!2295011 () Bool)

(declare-fun e!2295014 () Bool)

(declare-fun tp!1126816 () Bool)

(assert (=> b!3705042 (= e!2295011 (and e!2295014 tp!1126816))))

(declare-fun tp!1126815 () Bool)

(declare-fun e!2295012 () Bool)

(declare-datatypes ((C!21740 0))(
  ( (C!21741 (val!12918 Int)) )
))
(declare-datatypes ((List!39604 0))(
  ( (Nil!39480) (Cons!39480 (h!44900 C!21740) (t!302287 List!39604)) )
))
(declare-datatypes ((IArray!24235 0))(
  ( (IArray!24236 (innerList!12175 List!39604)) )
))
(declare-datatypes ((Conc!12115 0))(
  ( (Node!12115 (left!30682 Conc!12115) (right!31012 Conc!12115) (csize!24460 Int) (cheight!12326 Int)) (Leaf!18735 (xs!15317 IArray!24235) (csize!24461 Int)) (Empty!12115) )
))
(declare-datatypes ((BalanceConc!23844 0))(
  ( (BalanceConc!23845 (c!639980 Conc!12115)) )
))
(declare-datatypes ((List!39605 0))(
  ( (Nil!39481) (Cons!39481 (h!44901 (_ BitVec 16)) (t!302288 List!39605)) )
))
(declare-datatypes ((TokenValue!6248 0))(
  ( (FloatLiteralValue!12496 (text!44181 List!39605)) (TokenValueExt!6247 (__x!24713 Int)) (Broken!31240 (value!191908 List!39605)) (Object!6371) (End!6248) (Def!6248) (Underscore!6248) (Match!6248) (Else!6248) (Error!6248) (Case!6248) (If!6248) (Extends!6248) (Abstract!6248) (Class!6248) (Val!6248) (DelimiterValue!12496 (del!6308 List!39605)) (KeywordValue!6254 (value!191909 List!39605)) (CommentValue!12496 (value!191910 List!39605)) (WhitespaceValue!12496 (value!191911 List!39605)) (IndentationValue!6248 (value!191912 List!39605)) (String!44573) (Int32!6248) (Broken!31241 (value!191913 List!39605)) (Boolean!6249) (Unit!57407) (OperatorValue!6251 (op!6308 List!39605)) (IdentifierValue!12496 (value!191914 List!39605)) (IdentifierValue!12497 (value!191915 List!39605)) (WhitespaceValue!12497 (value!191916 List!39605)) (True!12496) (False!12496) (Broken!31242 (value!191917 List!39605)) (Broken!31243 (value!191918 List!39605)) (True!12497) (RightBrace!6248) (RightBracket!6248) (Colon!6248) (Null!6248) (Comma!6248) (LeftBracket!6248) (False!12497) (LeftBrace!6248) (ImaginaryLiteralValue!6248 (text!44182 List!39605)) (StringLiteralValue!18744 (value!191919 List!39605)) (EOFValue!6248 (value!191920 List!39605)) (IdentValue!6248 (value!191921 List!39605)) (DelimiterValue!12497 (value!191922 List!39605)) (DedentValue!6248 (value!191923 List!39605)) (NewLineValue!6248 (value!191924 List!39605)) (IntegerValue!18744 (value!191925 (_ BitVec 32)) (text!44183 List!39605)) (IntegerValue!18745 (value!191926 Int) (text!44184 List!39605)) (Times!6248) (Or!6248) (Equal!6248) (Minus!6248) (Broken!31244 (value!191927 List!39605)) (And!6248) (Div!6248) (LessEqual!6248) (Mod!6248) (Concat!17025) (Not!6248) (Plus!6248) (SpaceValue!6248 (value!191928 List!39605)) (IntegerValue!18746 (value!191929 Int) (text!44185 List!39605)) (StringLiteralValue!18745 (text!44186 List!39605)) (FloatLiteralValue!12497 (text!44187 List!39605)) (BytesLiteralValue!6248 (value!191930 List!39605)) (CommentValue!12497 (value!191931 List!39605)) (StringLiteralValue!18746 (value!191932 List!39605)) (ErrorTokenValue!6248 (msg!6309 List!39605)) )
))
(declare-datatypes ((Regex!10777 0))(
  ( (ElementMatch!10777 (c!639981 C!21740)) (Concat!17026 (regOne!22066 Regex!10777) (regTwo!22066 Regex!10777)) (EmptyExpr!10777) (Star!10777 (reg!11106 Regex!10777)) (EmptyLang!10777) (Union!10777 (regOne!22067 Regex!10777) (regTwo!22067 Regex!10777)) )
))
(declare-datatypes ((String!44574 0))(
  ( (String!44575 (value!191933 String)) )
))
(declare-datatypes ((TokenValueInjection!11924 0))(
  ( (TokenValueInjection!11925 (toValue!8362 Int) (toChars!8221 Int)) )
))
(declare-datatypes ((Rule!11836 0))(
  ( (Rule!11837 (regex!6018 Regex!10777) (tag!6876 String!44574) (isSeparator!6018 Bool) (transformation!6018 TokenValueInjection!11924)) )
))
(declare-datatypes ((List!39606 0))(
  ( (Nil!39482) (Cons!39482 (h!44902 Rule!11836) (t!302289 List!39606)) )
))
(declare-fun rules!2525 () List!39606)

(declare-fun b!3705043 () Bool)

(declare-fun inv!52983 (String!44574) Bool)

(declare-fun inv!52985 (TokenValueInjection!11924) Bool)

(assert (=> b!3705043 (= e!2295014 (and tp!1126815 (inv!52983 (tag!6876 (h!44902 rules!2525))) (inv!52985 (transformation!6018 (h!44902 rules!2525))) e!2295012))))

(declare-fun b!3705044 () Bool)

(declare-fun e!2295016 () Bool)

(declare-fun tag!164 () String!44574)

(get-info :version)

(assert (=> b!3705044 (= e!2295016 false)))

(declare-fun res!1507249 () Bool)

(assert (=> start!349390 (=> (not res!1507249) (not e!2295016))))

(declare-datatypes ((LexerInterface!5607 0))(
  ( (LexerInterfaceExt!5604 (__x!24714 Int)) (Lexer!5605) )
))
(declare-fun thiss!19663 () LexerInterface!5607)

(assert (=> start!349390 (= res!1507249 ((_ is Lexer!5605) thiss!19663))))

(assert (=> start!349390 e!2295016))

(assert (=> start!349390 true))

(assert (=> start!349390 e!2295011))

(assert (=> start!349390 (inv!52983 tag!164)))

(assert (=> b!3705045 (= e!2295012 (and tp!1126818 tp!1126817))))

(declare-fun b!3705046 () Bool)

(declare-fun res!1507250 () Bool)

(assert (=> b!3705046 (=> (not res!1507250) (not e!2295016))))

(declare-fun rulesInvariant!5004 (LexerInterface!5607 List!39606) Bool)

(assert (=> b!3705046 (= res!1507250 (rulesInvariant!5004 thiss!19663 rules!2525))))

(assert (= (and start!349390 res!1507249) b!3705046))

(assert (= (and b!3705046 res!1507250) b!3705044))

(assert (= b!3705043 b!3705045))

(assert (= b!3705042 b!3705043))

(assert (= (and start!349390 ((_ is Cons!39482) rules!2525)) b!3705042))

(declare-fun m!4215553 () Bool)

(assert (=> b!3705043 m!4215553))

(declare-fun m!4215555 () Bool)

(assert (=> b!3705043 m!4215555))

(declare-fun m!4215557 () Bool)

(assert (=> start!349390 m!4215557))

(declare-fun m!4215559 () Bool)

(assert (=> b!3705046 m!4215559))

(check-sat (not start!349390) (not b_next!99713) b_and!277245 b_and!277243 (not b!3705042) (not b_next!99715) (not b!3705046) (not b!3705043))
(check-sat b_and!277245 b_and!277243 (not b_next!99715) (not b_next!99713))
