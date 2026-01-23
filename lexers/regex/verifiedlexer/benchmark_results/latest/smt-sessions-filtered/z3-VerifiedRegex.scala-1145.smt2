; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59396 () Bool)

(assert start!59396)

(declare-fun b!618874 () Bool)

(declare-fun b_free!17921 () Bool)

(declare-fun b_next!17937 () Bool)

(assert (=> b!618874 (= b_free!17921 (not b_next!17937))))

(declare-fun tp!191717 () Bool)

(declare-fun b_and!61435 () Bool)

(assert (=> b!618874 (= tp!191717 b_and!61435)))

(declare-fun b_free!17923 () Bool)

(declare-fun b_next!17939 () Bool)

(assert (=> b!618874 (= b_free!17923 (not b_next!17939))))

(declare-fun tp!191720 () Bool)

(declare-fun b_and!61437 () Bool)

(assert (=> b!618874 (= tp!191720 b_and!61437)))

(declare-fun b!618873 () Bool)

(declare-fun b_free!17925 () Bool)

(declare-fun b_next!17941 () Bool)

(assert (=> b!618873 (= b_free!17925 (not b_next!17941))))

(declare-fun tp!191719 () Bool)

(declare-fun b_and!61439 () Bool)

(assert (=> b!618873 (= tp!191719 b_and!61439)))

(declare-fun b_free!17927 () Bool)

(declare-fun b_next!17943 () Bool)

(assert (=> b!618873 (= b_free!17927 (not b_next!17943))))

(declare-fun tp!191716 () Bool)

(declare-fun b_and!61441 () Bool)

(assert (=> b!618873 (= tp!191716 b_and!61441)))

(declare-fun b!618872 () Bool)

(declare-fun res!269604 () Bool)

(declare-fun e!375447 () Bool)

(assert (=> b!618872 (=> (not res!269604) (not e!375447))))

(declare-datatypes ((LexerInterface!1163 0))(
  ( (LexerInterfaceExt!1160 (__x!4498 Int)) (Lexer!1161) )
))
(declare-fun thiss!25571 () LexerInterface!1163)

(declare-datatypes ((List!6297 0))(
  ( (Nil!6287) (Cons!6287 (h!11688 (_ BitVec 16)) (t!81536 List!6297)) )
))
(declare-datatypes ((TokenValue!1299 0))(
  ( (FloatLiteralValue!2598 (text!9538 List!6297)) (TokenValueExt!1298 (__x!4499 Int)) (Broken!6495 (value!41175 List!6297)) (Object!1308) (End!1299) (Def!1299) (Underscore!1299) (Match!1299) (Else!1299) (Error!1299) (Case!1299) (If!1299) (Extends!1299) (Abstract!1299) (Class!1299) (Val!1299) (DelimiterValue!2598 (del!1359 List!6297)) (KeywordValue!1305 (value!41176 List!6297)) (CommentValue!2598 (value!41177 List!6297)) (WhitespaceValue!2598 (value!41178 List!6297)) (IndentationValue!1299 (value!41179 List!6297)) (String!8242) (Int32!1299) (Broken!6496 (value!41180 List!6297)) (Boolean!1300) (Unit!11419) (OperatorValue!1302 (op!1359 List!6297)) (IdentifierValue!2598 (value!41181 List!6297)) (IdentifierValue!2599 (value!41182 List!6297)) (WhitespaceValue!2599 (value!41183 List!6297)) (True!2598) (False!2598) (Broken!6497 (value!41184 List!6297)) (Broken!6498 (value!41185 List!6297)) (True!2599) (RightBrace!1299) (RightBracket!1299) (Colon!1299) (Null!1299) (Comma!1299) (LeftBracket!1299) (False!2599) (LeftBrace!1299) (ImaginaryLiteralValue!1299 (text!9539 List!6297)) (StringLiteralValue!3897 (value!41186 List!6297)) (EOFValue!1299 (value!41187 List!6297)) (IdentValue!1299 (value!41188 List!6297)) (DelimiterValue!2599 (value!41189 List!6297)) (DedentValue!1299 (value!41190 List!6297)) (NewLineValue!1299 (value!41191 List!6297)) (IntegerValue!3897 (value!41192 (_ BitVec 32)) (text!9540 List!6297)) (IntegerValue!3898 (value!41193 Int) (text!9541 List!6297)) (Times!1299) (Or!1299) (Equal!1299) (Minus!1299) (Broken!6499 (value!41194 List!6297)) (And!1299) (Div!1299) (LessEqual!1299) (Mod!1299) (Concat!2908) (Not!1299) (Plus!1299) (SpaceValue!1299 (value!41195 List!6297)) (IntegerValue!3899 (value!41196 Int) (text!9542 List!6297)) (StringLiteralValue!3898 (text!9543 List!6297)) (FloatLiteralValue!2599 (text!9544 List!6297)) (BytesLiteralValue!1299 (value!41197 List!6297)) (CommentValue!2599 (value!41198 List!6297)) (StringLiteralValue!3899 (value!41199 List!6297)) (ErrorTokenValue!1299 (msg!1360 List!6297)) )
))
(declare-datatypes ((C!4144 0))(
  ( (C!4145 (val!2298 Int)) )
))
(declare-datatypes ((List!6298 0))(
  ( (Nil!6288) (Cons!6288 (h!11689 C!4144) (t!81537 List!6298)) )
))
(declare-datatypes ((IArray!3985 0))(
  ( (IArray!3986 (innerList!2050 List!6298)) )
))
(declare-datatypes ((Conc!1992 0))(
  ( (Node!1992 (left!4991 Conc!1992) (right!5321 Conc!1992) (csize!4214 Int) (cheight!2203 Int)) (Leaf!3138 (xs!4629 IArray!3985) (csize!4215 Int)) (Empty!1992) )
))
(declare-datatypes ((BalanceConc!3992 0))(
  ( (BalanceConc!3993 (c!113894 Conc!1992)) )
))
(declare-datatypes ((Regex!1609 0))(
  ( (ElementMatch!1609 (c!113895 C!4144)) (Concat!2909 (regOne!3730 Regex!1609) (regTwo!3730 Regex!1609)) (EmptyExpr!1609) (Star!1609 (reg!1938 Regex!1609)) (EmptyLang!1609) (Union!1609 (regOne!3731 Regex!1609) (regTwo!3731 Regex!1609)) )
))
(declare-datatypes ((String!8243 0))(
  ( (String!8244 (value!41200 String)) )
))
(declare-datatypes ((TokenValueInjection!2366 0))(
  ( (TokenValueInjection!2367 (toValue!2188 Int) (toChars!2047 Int)) )
))
(declare-datatypes ((Rule!2350 0))(
  ( (Rule!2351 (regex!1275 Regex!1609) (tag!1537 String!8243) (isSeparator!1275 Bool) (transformation!1275 TokenValueInjection!2366)) )
))
(declare-datatypes ((List!6299 0))(
  ( (Nil!6289) (Cons!6289 (h!11690 Rule!2350) (t!81538 List!6299)) )
))
(declare-fun rules!3735 () List!6299)

(declare-fun rulesInvariant!1124 (LexerInterface!1163 List!6299) Bool)

(assert (=> b!618872 (= res!269604 (rulesInvariant!1124 thiss!25571 rules!3735))))

(declare-fun res!269605 () Bool)

(assert (=> start!59396 (=> (not res!269605) (not e!375447))))

(get-info :version)

(assert (=> start!59396 (= res!269605 ((_ is Lexer!1161) thiss!25571))))

(assert (=> start!59396 e!375447))

(assert (=> start!59396 true))

(declare-fun e!375442 () Bool)

(assert (=> start!59396 e!375442))

(declare-fun e!375441 () Bool)

(assert (=> start!59396 e!375441))

(declare-fun e!375438 () Bool)

(assert (=> start!59396 e!375438))

(declare-fun e!375443 () Bool)

(assert (=> b!618873 (= e!375443 (and tp!191719 tp!191716))))

(declare-fun e!375446 () Bool)

(assert (=> b!618874 (= e!375446 (and tp!191717 tp!191720))))

(declare-fun e!375448 () Bool)

(declare-fun tp!191715 () Bool)

(declare-datatypes ((Token!2274 0))(
  ( (Token!2275 (value!41201 TokenValue!1299) (rule!2067 Rule!2350) (size!4892 Int) (originalCharacters!1308 List!6298)) )
))
(declare-datatypes ((List!6300 0))(
  ( (Nil!6290) (Cons!6290 (h!11691 Token!2274) (t!81539 List!6300)) )
))
(declare-fun producedTokens!8 () List!6300)

(declare-fun e!375444 () Bool)

(declare-fun b!618875 () Bool)

(declare-fun inv!21 (TokenValue!1299) Bool)

(assert (=> b!618875 (= e!375444 (and (inv!21 (value!41201 (h!11691 producedTokens!8))) e!375448 tp!191715))))

(declare-fun b!618876 () Bool)

(assert (=> b!618876 (= e!375447 false)))

(declare-fun lt!264864 () BalanceConc!3992)

(declare-fun input!3206 () List!6298)

(declare-fun seqFromList!1430 (List!6298) BalanceConc!3992)

(assert (=> b!618876 (= lt!264864 (seqFromList!1430 input!3206))))

(declare-fun b!618877 () Bool)

(declare-fun e!375440 () Bool)

(declare-fun tp!191714 () Bool)

(assert (=> b!618877 (= e!375442 (and e!375440 tp!191714))))

(declare-fun b!618878 () Bool)

(declare-fun tp!191722 () Bool)

(declare-fun inv!7957 (String!8243) Bool)

(declare-fun inv!7960 (TokenValueInjection!2366) Bool)

(assert (=> b!618878 (= e!375448 (and tp!191722 (inv!7957 (tag!1537 (rule!2067 (h!11691 producedTokens!8)))) (inv!7960 (transformation!1275 (rule!2067 (h!11691 producedTokens!8)))) e!375443))))

(declare-fun tp!191718 () Bool)

(declare-fun b!618879 () Bool)

(declare-fun inv!7961 (Token!2274) Bool)

(assert (=> b!618879 (= e!375441 (and (inv!7961 (h!11691 producedTokens!8)) e!375444 tp!191718))))

(declare-fun b!618880 () Bool)

(declare-fun res!269606 () Bool)

(assert (=> b!618880 (=> (not res!269606) (not e!375447))))

(declare-fun isEmpty!4520 (List!6299) Bool)

(assert (=> b!618880 (= res!269606 (not (isEmpty!4520 rules!3735)))))

(declare-fun b!618881 () Bool)

(declare-fun res!269603 () Bool)

(assert (=> b!618881 (=> (not res!269603) (not e!375447))))

(declare-fun size!4893 (List!6300) Int)

(assert (=> b!618881 (= res!269603 (> (size!4893 producedTokens!8) 0))))

(declare-fun tp!191723 () Bool)

(declare-fun b!618882 () Bool)

(assert (=> b!618882 (= e!375440 (and tp!191723 (inv!7957 (tag!1537 (h!11690 rules!3735))) (inv!7960 (transformation!1275 (h!11690 rules!3735))) e!375446))))

(declare-fun b!618883 () Bool)

(declare-fun tp_is_empty!3577 () Bool)

(declare-fun tp!191721 () Bool)

(assert (=> b!618883 (= e!375438 (and tp_is_empty!3577 tp!191721))))

(assert (= (and start!59396 res!269605) b!618872))

(assert (= (and b!618872 res!269604) b!618880))

(assert (= (and b!618880 res!269606) b!618881))

(assert (= (and b!618881 res!269603) b!618876))

(assert (= b!618882 b!618874))

(assert (= b!618877 b!618882))

(assert (= (and start!59396 ((_ is Cons!6289) rules!3735)) b!618877))

(assert (= b!618878 b!618873))

(assert (= b!618875 b!618878))

(assert (= b!618879 b!618875))

(assert (= (and start!59396 ((_ is Cons!6290) producedTokens!8)) b!618879))

(assert (= (and start!59396 ((_ is Cons!6288) input!3206)) b!618883))

(declare-fun m!886839 () Bool)

(assert (=> b!618881 m!886839))

(declare-fun m!886841 () Bool)

(assert (=> b!618875 m!886841))

(declare-fun m!886843 () Bool)

(assert (=> b!618872 m!886843))

(declare-fun m!886845 () Bool)

(assert (=> b!618878 m!886845))

(declare-fun m!886847 () Bool)

(assert (=> b!618878 m!886847))

(declare-fun m!886849 () Bool)

(assert (=> b!618882 m!886849))

(declare-fun m!886851 () Bool)

(assert (=> b!618882 m!886851))

(declare-fun m!886853 () Bool)

(assert (=> b!618880 m!886853))

(declare-fun m!886855 () Bool)

(assert (=> b!618879 m!886855))

(declare-fun m!886857 () Bool)

(assert (=> b!618876 m!886857))

(check-sat (not b_next!17943) b_and!61439 (not b!618872) (not b!618878) b_and!61435 (not b_next!17939) (not b_next!17941) (not b!618880) (not b!618876) tp_is_empty!3577 (not b!618882) (not b!618879) b_and!61437 b_and!61441 (not b!618881) (not b!618883) (not b_next!17937) (not b!618877) (not b!618875))
(check-sat (not b_next!17943) b_and!61439 b_and!61435 (not b_next!17939) (not b_next!17941) b_and!61437 b_and!61441 (not b_next!17937))
