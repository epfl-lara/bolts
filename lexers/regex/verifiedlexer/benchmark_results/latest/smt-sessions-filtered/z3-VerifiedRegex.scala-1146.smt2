; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59400 () Bool)

(assert start!59400)

(declare-fun b!618945 () Bool)

(declare-fun b_free!17937 () Bool)

(declare-fun b_next!17953 () Bool)

(assert (=> b!618945 (= b_free!17937 (not b_next!17953))))

(declare-fun tp!191776 () Bool)

(declare-fun b_and!61451 () Bool)

(assert (=> b!618945 (= tp!191776 b_and!61451)))

(declare-fun b_free!17939 () Bool)

(declare-fun b_next!17955 () Bool)

(assert (=> b!618945 (= b_free!17939 (not b_next!17955))))

(declare-fun tp!191778 () Bool)

(declare-fun b_and!61453 () Bool)

(assert (=> b!618945 (= tp!191778 b_and!61453)))

(declare-fun b!618944 () Bool)

(declare-fun b_free!17941 () Bool)

(declare-fun b_next!17957 () Bool)

(assert (=> b!618944 (= b_free!17941 (not b_next!17957))))

(declare-fun tp!191781 () Bool)

(declare-fun b_and!61455 () Bool)

(assert (=> b!618944 (= tp!191781 b_and!61455)))

(declare-fun b_free!17943 () Bool)

(declare-fun b_next!17959 () Bool)

(assert (=> b!618944 (= b_free!17943 (not b_next!17959))))

(declare-fun tp!191782 () Bool)

(declare-fun b_and!61457 () Bool)

(assert (=> b!618944 (= tp!191782 b_and!61457)))

(declare-fun e!375515 () Bool)

(assert (=> b!618944 (= e!375515 (and tp!191781 tp!191782))))

(declare-fun e!375510 () Bool)

(assert (=> b!618945 (= e!375510 (and tp!191776 tp!191778))))

(declare-datatypes ((List!6305 0))(
  ( (Nil!6295) (Cons!6295 (h!11696 (_ BitVec 16)) (t!81544 List!6305)) )
))
(declare-datatypes ((TokenValue!1301 0))(
  ( (FloatLiteralValue!2602 (text!9552 List!6305)) (TokenValueExt!1300 (__x!4502 Int)) (Broken!6505 (value!41232 List!6305)) (Object!1310) (End!1301) (Def!1301) (Underscore!1301) (Match!1301) (Else!1301) (Error!1301) (Case!1301) (If!1301) (Extends!1301) (Abstract!1301) (Class!1301) (Val!1301) (DelimiterValue!2602 (del!1361 List!6305)) (KeywordValue!1307 (value!41233 List!6305)) (CommentValue!2602 (value!41234 List!6305)) (WhitespaceValue!2602 (value!41235 List!6305)) (IndentationValue!1301 (value!41236 List!6305)) (String!8252) (Int32!1301) (Broken!6506 (value!41237 List!6305)) (Boolean!1302) (Unit!11421) (OperatorValue!1304 (op!1361 List!6305)) (IdentifierValue!2602 (value!41238 List!6305)) (IdentifierValue!2603 (value!41239 List!6305)) (WhitespaceValue!2603 (value!41240 List!6305)) (True!2602) (False!2602) (Broken!6507 (value!41241 List!6305)) (Broken!6508 (value!41242 List!6305)) (True!2603) (RightBrace!1301) (RightBracket!1301) (Colon!1301) (Null!1301) (Comma!1301) (LeftBracket!1301) (False!2603) (LeftBrace!1301) (ImaginaryLiteralValue!1301 (text!9553 List!6305)) (StringLiteralValue!3903 (value!41243 List!6305)) (EOFValue!1301 (value!41244 List!6305)) (IdentValue!1301 (value!41245 List!6305)) (DelimiterValue!2603 (value!41246 List!6305)) (DedentValue!1301 (value!41247 List!6305)) (NewLineValue!1301 (value!41248 List!6305)) (IntegerValue!3903 (value!41249 (_ BitVec 32)) (text!9554 List!6305)) (IntegerValue!3904 (value!41250 Int) (text!9555 List!6305)) (Times!1301) (Or!1301) (Equal!1301) (Minus!1301) (Broken!6509 (value!41251 List!6305)) (And!1301) (Div!1301) (LessEqual!1301) (Mod!1301) (Concat!2912) (Not!1301) (Plus!1301) (SpaceValue!1301 (value!41252 List!6305)) (IntegerValue!3905 (value!41253 Int) (text!9556 List!6305)) (StringLiteralValue!3904 (text!9557 List!6305)) (FloatLiteralValue!2603 (text!9558 List!6305)) (BytesLiteralValue!1301 (value!41254 List!6305)) (CommentValue!2603 (value!41255 List!6305)) (StringLiteralValue!3905 (value!41256 List!6305)) (ErrorTokenValue!1301 (msg!1362 List!6305)) )
))
(declare-datatypes ((C!4148 0))(
  ( (C!4149 (val!2300 Int)) )
))
(declare-datatypes ((Regex!1611 0))(
  ( (ElementMatch!1611 (c!113901 C!4148)) (Concat!2913 (regOne!3734 Regex!1611) (regTwo!3734 Regex!1611)) (EmptyExpr!1611) (Star!1611 (reg!1940 Regex!1611)) (EmptyLang!1611) (Union!1611 (regOne!3735 Regex!1611) (regTwo!3735 Regex!1611)) )
))
(declare-datatypes ((String!8253 0))(
  ( (String!8254 (value!41257 String)) )
))
(declare-datatypes ((List!6306 0))(
  ( (Nil!6296) (Cons!6296 (h!11697 C!4148) (t!81545 List!6306)) )
))
(declare-datatypes ((IArray!3991 0))(
  ( (IArray!3992 (innerList!2053 List!6306)) )
))
(declare-datatypes ((Conc!1995 0))(
  ( (Node!1995 (left!4995 Conc!1995) (right!5325 Conc!1995) (csize!4220 Int) (cheight!2206 Int)) (Leaf!3142 (xs!4632 IArray!3991) (csize!4221 Int)) (Empty!1995) )
))
(declare-datatypes ((BalanceConc!3998 0))(
  ( (BalanceConc!3999 (c!113902 Conc!1995)) )
))
(declare-datatypes ((TokenValueInjection!2370 0))(
  ( (TokenValueInjection!2371 (toValue!2190 Int) (toChars!2049 Int)) )
))
(declare-datatypes ((Rule!2354 0))(
  ( (Rule!2355 (regex!1277 Regex!1611) (tag!1539 String!8253) (isSeparator!1277 Bool) (transformation!1277 TokenValueInjection!2370)) )
))
(declare-datatypes ((Token!2278 0))(
  ( (Token!2279 (value!41258 TokenValue!1301) (rule!2069 Rule!2354) (size!4896 Int) (originalCharacters!1310 List!6306)) )
))
(declare-datatypes ((List!6307 0))(
  ( (Nil!6297) (Cons!6297 (h!11698 Token!2278) (t!81546 List!6307)) )
))
(declare-fun producedTokens!8 () List!6307)

(declare-fun e!375509 () Bool)

(declare-fun tp!191774 () Bool)

(declare-fun b!618946 () Bool)

(declare-fun inv!7964 (String!8253) Bool)

(declare-fun inv!7967 (TokenValueInjection!2370) Bool)

(assert (=> b!618946 (= e!375509 (and tp!191774 (inv!7964 (tag!1539 (rule!2069 (h!11698 producedTokens!8)))) (inv!7967 (transformation!1277 (rule!2069 (h!11698 producedTokens!8)))) e!375515))))

(declare-fun tp!191777 () Bool)

(declare-fun b!618947 () Bool)

(declare-datatypes ((List!6308 0))(
  ( (Nil!6298) (Cons!6298 (h!11699 Rule!2354) (t!81547 List!6308)) )
))
(declare-fun rules!3735 () List!6308)

(declare-fun e!375511 () Bool)

(assert (=> b!618947 (= e!375511 (and tp!191777 (inv!7964 (tag!1539 (h!11699 rules!3735))) (inv!7967 (transformation!1277 (h!11699 rules!3735))) e!375510))))

(declare-fun b!618948 () Bool)

(declare-fun res!269628 () Bool)

(declare-fun e!375516 () Bool)

(assert (=> b!618948 (=> (not res!269628) (not e!375516))))

(declare-fun size!4897 (List!6307) Int)

(assert (=> b!618948 (= res!269628 (> (size!4897 producedTokens!8) 0))))

(declare-fun b!618949 () Bool)

(declare-fun e!375518 () Bool)

(declare-fun tp_is_empty!3581 () Bool)

(declare-fun tp!191779 () Bool)

(assert (=> b!618949 (= e!375518 (and tp_is_empty!3581 tp!191779))))

(declare-fun b!618950 () Bool)

(declare-fun res!269627 () Bool)

(assert (=> b!618950 (=> (not res!269627) (not e!375516))))

(declare-datatypes ((LexerInterface!1165 0))(
  ( (LexerInterfaceExt!1162 (__x!4503 Int)) (Lexer!1163) )
))
(declare-fun thiss!25571 () LexerInterface!1165)

(declare-fun rulesInvariant!1126 (LexerInterface!1165 List!6308) Bool)

(assert (=> b!618950 (= res!269627 (rulesInvariant!1126 thiss!25571 rules!3735))))

(declare-fun res!269629 () Bool)

(assert (=> start!59400 (=> (not res!269629) (not e!375516))))

(get-info :version)

(assert (=> start!59400 (= res!269629 ((_ is Lexer!1163) thiss!25571))))

(assert (=> start!59400 e!375516))

(assert (=> start!59400 true))

(declare-fun e!375514 () Bool)

(assert (=> start!59400 e!375514))

(declare-fun e!375519 () Bool)

(assert (=> start!59400 e!375519))

(assert (=> start!59400 e!375518))

(declare-fun b!618951 () Bool)

(declare-fun tp!191783 () Bool)

(declare-fun e!375513 () Bool)

(declare-fun inv!21 (TokenValue!1301) Bool)

(assert (=> b!618951 (= e!375513 (and (inv!21 (value!41258 (h!11698 producedTokens!8))) e!375509 tp!191783))))

(declare-fun b!618952 () Bool)

(declare-fun tp!191780 () Bool)

(assert (=> b!618952 (= e!375514 (and e!375511 tp!191780))))

(declare-fun b!618953 () Bool)

(declare-fun res!269630 () Bool)

(assert (=> b!618953 (=> (not res!269630) (not e!375516))))

(declare-fun isEmpty!4522 (List!6308) Bool)

(assert (=> b!618953 (= res!269630 (not (isEmpty!4522 rules!3735)))))

(declare-fun b!618954 () Bool)

(assert (=> b!618954 (= e!375516 false)))

(declare-fun lt!264870 () List!6307)

(declare-fun input!3206 () List!6306)

(declare-datatypes ((IArray!3993 0))(
  ( (IArray!3994 (innerList!2054 List!6307)) )
))
(declare-datatypes ((Conc!1996 0))(
  ( (Node!1996 (left!4996 Conc!1996) (right!5326 Conc!1996) (csize!4222 Int) (cheight!2207 Int)) (Leaf!3143 (xs!4633 IArray!3993) (csize!4223 Int)) (Empty!1996) )
))
(declare-datatypes ((BalanceConc!4000 0))(
  ( (BalanceConc!4001 (c!113903 Conc!1996)) )
))
(declare-fun list!2617 (BalanceConc!4000) List!6307)

(declare-datatypes ((tuple2!7086 0))(
  ( (tuple2!7087 (_1!3807 BalanceConc!4000) (_2!3807 BalanceConc!3998)) )
))
(declare-fun lex!560 (LexerInterface!1165 List!6308 BalanceConc!3998) tuple2!7086)

(declare-fun seqFromList!1432 (List!6306) BalanceConc!3998)

(assert (=> b!618954 (= lt!264870 (list!2617 (_1!3807 (lex!560 thiss!25571 rules!3735 (seqFromList!1432 input!3206)))))))

(declare-fun tp!191775 () Bool)

(declare-fun b!618955 () Bool)

(declare-fun inv!7968 (Token!2278) Bool)

(assert (=> b!618955 (= e!375519 (and (inv!7968 (h!11698 producedTokens!8)) e!375513 tp!191775))))

(assert (= (and start!59400 res!269629) b!618950))

(assert (= (and b!618950 res!269627) b!618953))

(assert (= (and b!618953 res!269630) b!618948))

(assert (= (and b!618948 res!269628) b!618954))

(assert (= b!618947 b!618945))

(assert (= b!618952 b!618947))

(assert (= (and start!59400 ((_ is Cons!6298) rules!3735)) b!618952))

(assert (= b!618946 b!618944))

(assert (= b!618951 b!618946))

(assert (= b!618955 b!618951))

(assert (= (and start!59400 ((_ is Cons!6297) producedTokens!8)) b!618955))

(assert (= (and start!59400 ((_ is Cons!6296) input!3206)) b!618949))

(declare-fun m!886883 () Bool)

(assert (=> b!618955 m!886883))

(declare-fun m!886885 () Bool)

(assert (=> b!618954 m!886885))

(assert (=> b!618954 m!886885))

(declare-fun m!886887 () Bool)

(assert (=> b!618954 m!886887))

(declare-fun m!886889 () Bool)

(assert (=> b!618954 m!886889))

(declare-fun m!886891 () Bool)

(assert (=> b!618950 m!886891))

(declare-fun m!886893 () Bool)

(assert (=> b!618947 m!886893))

(declare-fun m!886895 () Bool)

(assert (=> b!618947 m!886895))

(declare-fun m!886897 () Bool)

(assert (=> b!618946 m!886897))

(declare-fun m!886899 () Bool)

(assert (=> b!618946 m!886899))

(declare-fun m!886901 () Bool)

(assert (=> b!618951 m!886901))

(declare-fun m!886903 () Bool)

(assert (=> b!618953 m!886903))

(declare-fun m!886905 () Bool)

(assert (=> b!618948 m!886905))

(check-sat (not b_next!17959) b_and!61457 (not b!618953) b_and!61455 (not b!618947) (not b!618948) (not b_next!17953) tp_is_empty!3581 (not b!618946) (not b!618952) (not b!618951) b_and!61451 (not b_next!17957) (not b_next!17955) (not b!618950) (not b!618955) b_and!61453 (not b!618949) (not b!618954))
(check-sat (not b_next!17959) b_and!61457 b_and!61455 b_and!61453 (not b_next!17953) b_and!61451 (not b_next!17957) (not b_next!17955))
