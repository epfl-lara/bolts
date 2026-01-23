; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59244 () Bool)

(assert start!59244)

(declare-fun b!617778 () Bool)

(declare-fun b_free!17801 () Bool)

(declare-fun b_next!17817 () Bool)

(assert (=> b!617778 (= b_free!17801 (not b_next!17817))))

(declare-fun tp!191175 () Bool)

(declare-fun b_and!61315 () Bool)

(assert (=> b!617778 (= tp!191175 b_and!61315)))

(declare-fun b_free!17803 () Bool)

(declare-fun b_next!17819 () Bool)

(assert (=> b!617778 (= b_free!17803 (not b_next!17819))))

(declare-fun tp!191174 () Bool)

(declare-fun b_and!61317 () Bool)

(assert (=> b!617778 (= tp!191174 b_and!61317)))

(declare-fun b!617773 () Bool)

(declare-fun b_free!17805 () Bool)

(declare-fun b_next!17821 () Bool)

(assert (=> b!617773 (= b_free!17805 (not b_next!17821))))

(declare-fun tp!191173 () Bool)

(declare-fun b_and!61319 () Bool)

(assert (=> b!617773 (= tp!191173 b_and!61319)))

(declare-fun b_free!17807 () Bool)

(declare-fun b_next!17823 () Bool)

(assert (=> b!617773 (= b_free!17807 (not b_next!17823))))

(declare-fun tp!191177 () Bool)

(declare-fun b_and!61321 () Bool)

(assert (=> b!617773 (= tp!191177 b_and!61321)))

(declare-fun b!617772 () Bool)

(declare-fun e!374701 () Bool)

(declare-fun tp_is_empty!3553 () Bool)

(declare-fun tp!191172 () Bool)

(assert (=> b!617772 (= e!374701 (and tp_is_empty!3553 tp!191172))))

(declare-fun e!374698 () Bool)

(assert (=> b!617773 (= e!374698 (and tp!191173 tp!191177))))

(declare-fun e!374704 () Bool)

(declare-datatypes ((List!6255 0))(
  ( (Nil!6245) (Cons!6245 (h!11646 (_ BitVec 16)) (t!81494 List!6255)) )
))
(declare-datatypes ((TokenValue!1287 0))(
  ( (FloatLiteralValue!2574 (text!9454 List!6255)) (TokenValueExt!1286 (__x!4474 Int)) (Broken!6435 (value!40833 List!6255)) (Object!1296) (End!1287) (Def!1287) (Underscore!1287) (Match!1287) (Else!1287) (Error!1287) (Case!1287) (If!1287) (Extends!1287) (Abstract!1287) (Class!1287) (Val!1287) (DelimiterValue!2574 (del!1347 List!6255)) (KeywordValue!1293 (value!40834 List!6255)) (CommentValue!2574 (value!40835 List!6255)) (WhitespaceValue!2574 (value!40836 List!6255)) (IndentationValue!1287 (value!40837 List!6255)) (String!8182) (Int32!1287) (Broken!6436 (value!40838 List!6255)) (Boolean!1288) (Unit!11389) (OperatorValue!1290 (op!1347 List!6255)) (IdentifierValue!2574 (value!40839 List!6255)) (IdentifierValue!2575 (value!40840 List!6255)) (WhitespaceValue!2575 (value!40841 List!6255)) (True!2574) (False!2574) (Broken!6437 (value!40842 List!6255)) (Broken!6438 (value!40843 List!6255)) (True!2575) (RightBrace!1287) (RightBracket!1287) (Colon!1287) (Null!1287) (Comma!1287) (LeftBracket!1287) (False!2575) (LeftBrace!1287) (ImaginaryLiteralValue!1287 (text!9455 List!6255)) (StringLiteralValue!3861 (value!40844 List!6255)) (EOFValue!1287 (value!40845 List!6255)) (IdentValue!1287 (value!40846 List!6255)) (DelimiterValue!2575 (value!40847 List!6255)) (DedentValue!1287 (value!40848 List!6255)) (NewLineValue!1287 (value!40849 List!6255)) (IntegerValue!3861 (value!40850 (_ BitVec 32)) (text!9456 List!6255)) (IntegerValue!3862 (value!40851 Int) (text!9457 List!6255)) (Times!1287) (Or!1287) (Equal!1287) (Minus!1287) (Broken!6439 (value!40852 List!6255)) (And!1287) (Div!1287) (LessEqual!1287) (Mod!1287) (Concat!2884) (Not!1287) (Plus!1287) (SpaceValue!1287 (value!40853 List!6255)) (IntegerValue!3863 (value!40854 Int) (text!9458 List!6255)) (StringLiteralValue!3862 (text!9459 List!6255)) (FloatLiteralValue!2575 (text!9460 List!6255)) (BytesLiteralValue!1287 (value!40855 List!6255)) (CommentValue!2575 (value!40856 List!6255)) (StringLiteralValue!3863 (value!40857 List!6255)) (ErrorTokenValue!1287 (msg!1348 List!6255)) )
))
(declare-datatypes ((C!4120 0))(
  ( (C!4121 (val!2286 Int)) )
))
(declare-datatypes ((Regex!1597 0))(
  ( (ElementMatch!1597 (c!113834 C!4120)) (Concat!2885 (regOne!3706 Regex!1597) (regTwo!3706 Regex!1597)) (EmptyExpr!1597) (Star!1597 (reg!1926 Regex!1597)) (EmptyLang!1597) (Union!1597 (regOne!3707 Regex!1597) (regTwo!3707 Regex!1597)) )
))
(declare-datatypes ((String!8183 0))(
  ( (String!8184 (value!40858 String)) )
))
(declare-datatypes ((List!6256 0))(
  ( (Nil!6246) (Cons!6246 (h!11647 C!4120) (t!81495 List!6256)) )
))
(declare-datatypes ((IArray!3961 0))(
  ( (IArray!3962 (innerList!2038 List!6256)) )
))
(declare-datatypes ((Conc!1980 0))(
  ( (Node!1980 (left!4965 Conc!1980) (right!5295 Conc!1980) (csize!4190 Int) (cheight!2191 Int)) (Leaf!3120 (xs!4617 IArray!3961) (csize!4191 Int)) (Empty!1980) )
))
(declare-datatypes ((BalanceConc!3968 0))(
  ( (BalanceConc!3969 (c!113835 Conc!1980)) )
))
(declare-datatypes ((TokenValueInjection!2342 0))(
  ( (TokenValueInjection!2343 (toValue!2176 Int) (toChars!2035 Int)) )
))
(declare-datatypes ((Rule!2326 0))(
  ( (Rule!2327 (regex!1263 Regex!1597) (tag!1525 String!8183) (isSeparator!1263 Bool) (transformation!1263 TokenValueInjection!2342)) )
))
(declare-datatypes ((List!6257 0))(
  ( (Nil!6247) (Cons!6247 (h!11648 Rule!2326) (t!81496 List!6257)) )
))
(declare-fun rules!3744 () List!6257)

(declare-fun tp!191171 () Bool)

(declare-fun b!617774 () Bool)

(declare-fun e!374703 () Bool)

(declare-fun inv!7927 (String!8183) Bool)

(declare-fun inv!7929 (TokenValueInjection!2342) Bool)

(assert (=> b!617774 (= e!374703 (and tp!191171 (inv!7927 (tag!1525 (h!11648 rules!3744))) (inv!7929 (transformation!1263 (h!11648 rules!3744))) e!374704))))

(declare-fun b!617775 () Bool)

(declare-fun e!374697 () Bool)

(declare-fun tp!191170 () Bool)

(assert (=> b!617775 (= e!374697 (and tp_is_empty!3553 tp!191170))))

(declare-fun b!617776 () Bool)

(declare-fun res!269012 () Bool)

(declare-fun e!374700 () Bool)

(assert (=> b!617776 (=> (not res!269012) (not e!374700))))

(declare-datatypes ((LexerInterface!1151 0))(
  ( (LexerInterfaceExt!1148 (__x!4475 Int)) (Lexer!1149) )
))
(declare-fun thiss!25598 () LexerInterface!1151)

(declare-fun rulesInvariant!1112 (LexerInterface!1151 List!6257) Bool)

(assert (=> b!617776 (= res!269012 (rulesInvariant!1112 thiss!25598 rules!3744))))

(declare-fun b!617777 () Bool)

(declare-fun res!269014 () Bool)

(assert (=> b!617777 (=> (not res!269014) (not e!374700))))

(declare-fun p!2908 () List!6256)

(declare-fun input!3215 () List!6256)

(declare-fun isPrefix!893 (List!6256 List!6256) Bool)

(assert (=> b!617777 (= res!269014 (isPrefix!893 p!2908 input!3215))))

(declare-fun res!269011 () Bool)

(assert (=> start!59244 (=> (not res!269011) (not e!374700))))

(get-info :version)

(assert (=> start!59244 (= res!269011 ((_ is Lexer!1149) thiss!25598))))

(assert (=> start!59244 e!374700))

(declare-fun e!374702 () Bool)

(assert (=> start!59244 e!374702))

(assert (=> start!59244 e!374701))

(declare-fun e!374699 () Bool)

(assert (=> start!59244 e!374699))

(assert (=> start!59244 true))

(assert (=> start!59244 e!374697))

(assert (=> b!617778 (= e!374704 (and tp!191175 tp!191174))))

(declare-fun b!617779 () Bool)

(assert (=> b!617779 (= e!374700 false)))

(declare-datatypes ((Token!2250 0))(
  ( (Token!2251 (value!40859 TokenValue!1287) (rule!2053 Rule!2326) (size!4872 Int) (originalCharacters!1296 List!6256)) )
))
(declare-datatypes ((tuple2!7058 0))(
  ( (tuple2!7059 (_1!3793 Token!2250) (_2!3793 List!6256)) )
))
(declare-datatypes ((Option!1608 0))(
  ( (None!1607) (Some!1607 (v!16528 tuple2!7058)) )
))
(declare-fun lt!264618 () Option!1608)

(declare-fun maxPrefix!841 (LexerInterface!1151 List!6257 List!6256) Option!1608)

(assert (=> b!617779 (= lt!264618 (maxPrefix!841 thiss!25598 rules!3744 input!3215))))

(declare-fun b!617780 () Bool)

(declare-fun res!269015 () Bool)

(assert (=> b!617780 (=> (not res!269015) (not e!374700))))

(declare-fun r!3983 () Rule!2326)

(declare-fun contains!1480 (List!6257 Rule!2326) Bool)

(assert (=> b!617780 (= res!269015 (contains!1480 rules!3744 r!3983))))

(declare-fun tp!191176 () Bool)

(declare-fun b!617781 () Bool)

(assert (=> b!617781 (= e!374702 (and tp!191176 (inv!7927 (tag!1525 r!3983)) (inv!7929 (transformation!1263 r!3983)) e!374698))))

(declare-fun b!617782 () Bool)

(declare-fun tp!191169 () Bool)

(assert (=> b!617782 (= e!374699 (and e!374703 tp!191169))))

(declare-fun b!617783 () Bool)

(declare-fun res!269013 () Bool)

(assert (=> b!617783 (=> (not res!269013) (not e!374700))))

(declare-fun isEmpty!4496 (List!6257) Bool)

(assert (=> b!617783 (= res!269013 (not (isEmpty!4496 rules!3744)))))

(assert (= (and start!59244 res!269011) b!617777))

(assert (= (and b!617777 res!269014) b!617783))

(assert (= (and b!617783 res!269013) b!617776))

(assert (= (and b!617776 res!269012) b!617780))

(assert (= (and b!617780 res!269015) b!617779))

(assert (= b!617781 b!617773))

(assert (= start!59244 b!617781))

(assert (= (and start!59244 ((_ is Cons!6246) p!2908)) b!617772))

(assert (= b!617774 b!617778))

(assert (= b!617782 b!617774))

(assert (= (and start!59244 ((_ is Cons!6247) rules!3744)) b!617782))

(assert (= (and start!59244 ((_ is Cons!6246) input!3215)) b!617775))

(declare-fun m!885989 () Bool)

(assert (=> b!617783 m!885989))

(declare-fun m!885991 () Bool)

(assert (=> b!617780 m!885991))

(declare-fun m!885993 () Bool)

(assert (=> b!617776 m!885993))

(declare-fun m!885995 () Bool)

(assert (=> b!617774 m!885995))

(declare-fun m!885997 () Bool)

(assert (=> b!617774 m!885997))

(declare-fun m!885999 () Bool)

(assert (=> b!617777 m!885999))

(declare-fun m!886001 () Bool)

(assert (=> b!617781 m!886001))

(declare-fun m!886003 () Bool)

(assert (=> b!617781 m!886003))

(declare-fun m!886005 () Bool)

(assert (=> b!617779 m!886005))

(check-sat (not b_next!17823) b_and!61317 b_and!61315 (not b_next!17817) (not b!617774) (not b!617777) (not b!617772) (not b!617779) (not b!617781) (not b!617775) (not b!617783) (not b_next!17819) (not b!617776) b_and!61319 b_and!61321 (not b!617782) (not b!617780) tp_is_empty!3553 (not b_next!17821))
(check-sat (not b_next!17819) (not b_next!17823) b_and!61317 b_and!61315 (not b_next!17817) (not b_next!17821) b_and!61319 b_and!61321)
