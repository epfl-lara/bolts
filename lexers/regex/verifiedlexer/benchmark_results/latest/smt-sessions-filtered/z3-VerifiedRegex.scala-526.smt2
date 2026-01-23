; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14502 () Bool)

(assert start!14502)

(declare-fun b!137796 () Bool)

(declare-fun b_free!4051 () Bool)

(declare-fun b_next!4051 () Bool)

(assert (=> b!137796 (= b_free!4051 (not b_next!4051))))

(declare-fun tp!72042 () Bool)

(declare-fun b_and!6203 () Bool)

(assert (=> b!137796 (= tp!72042 b_and!6203)))

(declare-fun b_free!4053 () Bool)

(declare-fun b_next!4053 () Bool)

(assert (=> b!137796 (= b_free!4053 (not b_next!4053))))

(declare-fun tp!72048 () Bool)

(declare-fun b_and!6205 () Bool)

(assert (=> b!137796 (= tp!72048 b_and!6205)))

(declare-fun b_free!4055 () Bool)

(declare-fun b_next!4055 () Bool)

(assert (=> start!14502 (= b_free!4055 (not b_next!4055))))

(declare-fun tp!72046 () Bool)

(declare-fun b_and!6207 () Bool)

(assert (=> start!14502 (= tp!72046 b_and!6207)))

(declare-fun b!137795 () Bool)

(declare-fun b_free!4057 () Bool)

(declare-fun b_next!4057 () Bool)

(assert (=> b!137795 (= b_free!4057 (not b_next!4057))))

(declare-fun tp!72049 () Bool)

(declare-fun b_and!6209 () Bool)

(assert (=> b!137795 (= tp!72049 b_and!6209)))

(declare-fun b_free!4059 () Bool)

(declare-fun b_next!4059 () Bool)

(assert (=> b!137795 (= b_free!4059 (not b_next!4059))))

(declare-fun tp!72043 () Bool)

(declare-fun b_and!6211 () Bool)

(assert (=> b!137795 (= tp!72043 b_and!6211)))

(declare-fun tp!72045 () Bool)

(declare-fun e!80443 () Bool)

(declare-fun b!137792 () Bool)

(declare-fun e!80441 () Bool)

(declare-datatypes ((List!2297 0))(
  ( (Nil!2287) (Cons!2287 (h!7684 (_ BitVec 16)) (t!22883 List!2297)) )
))
(declare-datatypes ((TokenValue!397 0))(
  ( (FloatLiteralValue!794 (text!3224 List!2297)) (TokenValueExt!396 (__x!2286 Int)) (Broken!1985 (value!14977 List!2297)) (Object!406) (End!397) (Def!397) (Underscore!397) (Match!397) (Else!397) (Error!397) (Case!397) (If!397) (Extends!397) (Abstract!397) (Class!397) (Val!397) (DelimiterValue!794 (del!457 List!2297)) (KeywordValue!403 (value!14978 List!2297)) (CommentValue!794 (value!14979 List!2297)) (WhitespaceValue!794 (value!14980 List!2297)) (IndentationValue!397 (value!14981 List!2297)) (String!3064) (Int32!397) (Broken!1986 (value!14982 List!2297)) (Boolean!398) (Unit!1777) (OperatorValue!400 (op!457 List!2297)) (IdentifierValue!794 (value!14983 List!2297)) (IdentifierValue!795 (value!14984 List!2297)) (WhitespaceValue!795 (value!14985 List!2297)) (True!794) (False!794) (Broken!1987 (value!14986 List!2297)) (Broken!1988 (value!14987 List!2297)) (True!795) (RightBrace!397) (RightBracket!397) (Colon!397) (Null!397) (Comma!397) (LeftBracket!397) (False!795) (LeftBrace!397) (ImaginaryLiteralValue!397 (text!3225 List!2297)) (StringLiteralValue!1191 (value!14988 List!2297)) (EOFValue!397 (value!14989 List!2297)) (IdentValue!397 (value!14990 List!2297)) (DelimiterValue!795 (value!14991 List!2297)) (DedentValue!397 (value!14992 List!2297)) (NewLineValue!397 (value!14993 List!2297)) (IntegerValue!1191 (value!14994 (_ BitVec 32)) (text!3226 List!2297)) (IntegerValue!1192 (value!14995 Int) (text!3227 List!2297)) (Times!397) (Or!397) (Equal!397) (Minus!397) (Broken!1989 (value!14996 List!2297)) (And!397) (Div!397) (LessEqual!397) (Mod!397) (Concat!996) (Not!397) (Plus!397) (SpaceValue!397 (value!14997 List!2297)) (IntegerValue!1193 (value!14998 Int) (text!3228 List!2297)) (StringLiteralValue!1192 (text!3229 List!2297)) (FloatLiteralValue!795 (text!3230 List!2297)) (BytesLiteralValue!397 (value!14999 List!2297)) (CommentValue!795 (value!15000 List!2297)) (StringLiteralValue!1193 (value!15001 List!2297)) (ErrorTokenValue!397 (msg!458 List!2297)) )
))
(declare-datatypes ((C!2120 0))(
  ( (C!2121 (val!946 Int)) )
))
(declare-datatypes ((List!2298 0))(
  ( (Nil!2288) (Cons!2288 (h!7685 C!2120) (t!22884 List!2298)) )
))
(declare-datatypes ((IArray!1211 0))(
  ( (IArray!1212 (innerList!663 List!2298)) )
))
(declare-datatypes ((Conc!605 0))(
  ( (Node!605 (left!1779 Conc!605) (right!2109 Conc!605) (csize!1440 Int) (cheight!816 Int)) (Leaf!1132 (xs!3200 IArray!1211) (csize!1441 Int)) (Empty!605) )
))
(declare-datatypes ((BalanceConc!1218 0))(
  ( (BalanceConc!1219 (c!29062 Conc!605)) )
))
(declare-datatypes ((TokenValueInjection!566 0))(
  ( (TokenValueInjection!567 (toValue!986 Int) (toChars!845 Int)) )
))
(declare-datatypes ((String!3065 0))(
  ( (String!3066 (value!15002 String)) )
))
(declare-datatypes ((Regex!599 0))(
  ( (ElementMatch!599 (c!29063 C!2120)) (Concat!997 (regOne!1710 Regex!599) (regTwo!1710 Regex!599)) (EmptyExpr!599) (Star!599 (reg!928 Regex!599)) (EmptyLang!599) (Union!599 (regOne!1711 Regex!599) (regTwo!1711 Regex!599)) )
))
(declare-datatypes ((Rule!550 0))(
  ( (Rule!551 (regex!375 Regex!599) (tag!553 String!3065) (isSeparator!375 Bool) (transformation!375 TokenValueInjection!566)) )
))
(declare-datatypes ((List!2299 0))(
  ( (Nil!2289) (Cons!2289 (h!7686 Rule!550) (t!22885 List!2299)) )
))
(declare-fun rules!4268 () List!2299)

(declare-fun inv!3032 (String!3065) Bool)

(declare-fun inv!3035 (TokenValueInjection!566) Bool)

(assert (=> b!137792 (= e!80443 (and tp!72045 (inv!3032 (tag!553 (h!7686 rules!4268))) (inv!3035 (transformation!375 (h!7686 rules!4268))) e!80441))))

(declare-fun e!80442 () Bool)

(declare-fun b!137793 () Bool)

(declare-fun tp!72041 () Bool)

(declare-datatypes ((Token!494 0))(
  ( (Token!495 (value!15003 TokenValue!397) (rule!882 Rule!550) (size!2059 Int) (originalCharacters!418 List!2298)) )
))
(declare-datatypes ((List!2300 0))(
  ( (Nil!2290) (Cons!2290 (h!7687 Token!494) (t!22886 List!2300)) )
))
(declare-fun l1!3130 () List!2300)

(declare-fun e!80440 () Bool)

(declare-fun inv!3036 (Token!494) Bool)

(assert (=> b!137793 (= e!80442 (and (inv!3036 (h!7687 l1!3130)) e!80440 tp!72041))))

(declare-fun tp!72040 () Bool)

(declare-fun e!80445 () Bool)

(declare-fun b!137794 () Bool)

(declare-fun inv!21 (TokenValue!397) Bool)

(assert (=> b!137794 (= e!80440 (and (inv!21 (value!15003 (h!7687 l1!3130))) e!80445 tp!72040))))

(assert (=> b!137796 (= e!80441 (and tp!72042 tp!72048))))

(declare-fun e!80446 () Bool)

(declare-fun tp!72044 () Bool)

(declare-fun b!137797 () Bool)

(assert (=> b!137797 (= e!80445 (and tp!72044 (inv!3032 (tag!553 (rule!882 (h!7687 l1!3130)))) (inv!3035 (transformation!375 (rule!882 (h!7687 l1!3130)))) e!80446))))

(declare-fun b!137798 () Bool)

(declare-fun e!80438 () Bool)

(declare-fun tp!72047 () Bool)

(assert (=> b!137798 (= e!80438 (and e!80443 tp!72047))))

(assert (=> start!14502 false))

(assert (=> start!14502 true))

(assert (=> start!14502 e!80442))

(assert (=> start!14502 e!80438))

(assert (=> start!14502 tp!72046))

(assert (=> b!137795 (= e!80446 (and tp!72049 tp!72043))))

(assert (= b!137797 b!137795))

(assert (= b!137794 b!137797))

(assert (= b!137793 b!137794))

(get-info :version)

(assert (= (and start!14502 ((_ is Cons!2290) l1!3130)) b!137793))

(assert (= b!137792 b!137796))

(assert (= b!137798 b!137792))

(assert (= (and start!14502 ((_ is Cons!2289) rules!4268)) b!137798))

(declare-fun m!121835 () Bool)

(assert (=> b!137792 m!121835))

(declare-fun m!121837 () Bool)

(assert (=> b!137792 m!121837))

(declare-fun m!121839 () Bool)

(assert (=> b!137793 m!121839))

(declare-fun m!121841 () Bool)

(assert (=> b!137794 m!121841))

(declare-fun m!121843 () Bool)

(assert (=> b!137797 m!121843))

(declare-fun m!121845 () Bool)

(assert (=> b!137797 m!121845))

(check-sat (not b!137793) b_and!6211 (not b!137794) (not b!137798) (not b_next!4055) b_and!6209 (not b_next!4051) b_and!6205 b_and!6207 (not b!137797) (not b_next!4053) (not b_next!4059) (not b!137792) b_and!6203 (not b_next!4057))
(check-sat b_and!6211 (not b_next!4053) (not b_next!4055) b_and!6209 (not b_next!4059) (not b_next!4051) b_and!6205 b_and!6207 b_and!6203 (not b_next!4057))
