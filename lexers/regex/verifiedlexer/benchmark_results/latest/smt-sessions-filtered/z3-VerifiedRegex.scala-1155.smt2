; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59968 () Bool)

(assert start!59968)

(declare-fun b!622278 () Bool)

(declare-fun b_free!18181 () Bool)

(declare-fun b_next!18197 () Bool)

(assert (=> b!622278 (= b_free!18181 (not b_next!18197))))

(declare-fun tp!193237 () Bool)

(declare-fun b_and!61839 () Bool)

(assert (=> b!622278 (= tp!193237 b_and!61839)))

(declare-fun b_free!18183 () Bool)

(declare-fun b_next!18199 () Bool)

(assert (=> b!622278 (= b_free!18183 (not b_next!18199))))

(declare-fun tp!193240 () Bool)

(declare-fun b_and!61841 () Bool)

(assert (=> b!622278 (= tp!193240 b_and!61841)))

(declare-fun b!622276 () Bool)

(declare-fun e!377740 () Bool)

(declare-datatypes ((C!4184 0))(
  ( (C!4185 (val!2318 Int)) )
))
(declare-datatypes ((List!6382 0))(
  ( (Nil!6372) (Cons!6372 (h!11773 C!4184) (t!81889 List!6382)) )
))
(declare-datatypes ((IArray!4063 0))(
  ( (IArray!4064 (innerList!2089 List!6382)) )
))
(declare-datatypes ((Conc!2031 0))(
  ( (Node!2031 (left!5052 Conc!2031) (right!5382 Conc!2031) (csize!4292 Int) (cheight!2242 Int)) (Leaf!3187 (xs!4668 IArray!4063) (csize!4293 Int)) (Empty!2031) )
))
(declare-datatypes ((BalanceConc!4070 0))(
  ( (BalanceConc!4071 (c!114399 Conc!2031)) )
))
(declare-datatypes ((List!6383 0))(
  ( (Nil!6373) (Cons!6373 (h!11774 (_ BitVec 16)) (t!81890 List!6383)) )
))
(declare-datatypes ((TokenValue!1319 0))(
  ( (FloatLiteralValue!2638 (text!9678 List!6383)) (TokenValueExt!1318 (__x!4538 Int)) (Broken!6595 (value!41745 List!6383)) (Object!1328) (End!1319) (Def!1319) (Underscore!1319) (Match!1319) (Else!1319) (Error!1319) (Case!1319) (If!1319) (Extends!1319) (Abstract!1319) (Class!1319) (Val!1319) (DelimiterValue!2638 (del!1379 List!6383)) (KeywordValue!1325 (value!41746 List!6383)) (CommentValue!2638 (value!41747 List!6383)) (WhitespaceValue!2638 (value!41748 List!6383)) (IndentationValue!1319 (value!41749 List!6383)) (String!8342) (Int32!1319) (Broken!6596 (value!41750 List!6383)) (Boolean!1320) (Unit!11467) (OperatorValue!1322 (op!1379 List!6383)) (IdentifierValue!2638 (value!41751 List!6383)) (IdentifierValue!2639 (value!41752 List!6383)) (WhitespaceValue!2639 (value!41753 List!6383)) (True!2638) (False!2638) (Broken!6597 (value!41754 List!6383)) (Broken!6598 (value!41755 List!6383)) (True!2639) (RightBrace!1319) (RightBracket!1319) (Colon!1319) (Null!1319) (Comma!1319) (LeftBracket!1319) (False!2639) (LeftBrace!1319) (ImaginaryLiteralValue!1319 (text!9679 List!6383)) (StringLiteralValue!3957 (value!41756 List!6383)) (EOFValue!1319 (value!41757 List!6383)) (IdentValue!1319 (value!41758 List!6383)) (DelimiterValue!2639 (value!41759 List!6383)) (DedentValue!1319 (value!41760 List!6383)) (NewLineValue!1319 (value!41761 List!6383)) (IntegerValue!3957 (value!41762 (_ BitVec 32)) (text!9680 List!6383)) (IntegerValue!3958 (value!41763 Int) (text!9681 List!6383)) (Times!1319) (Or!1319) (Equal!1319) (Minus!1319) (Broken!6599 (value!41764 List!6383)) (And!1319) (Div!1319) (LessEqual!1319) (Mod!1319) (Concat!2948) (Not!1319) (Plus!1319) (SpaceValue!1319 (value!41765 List!6383)) (IntegerValue!3959 (value!41766 Int) (text!9682 List!6383)) (StringLiteralValue!3958 (text!9683 List!6383)) (FloatLiteralValue!2639 (text!9684 List!6383)) (BytesLiteralValue!1319 (value!41767 List!6383)) (CommentValue!2639 (value!41768 List!6383)) (StringLiteralValue!3959 (value!41769 List!6383)) (ErrorTokenValue!1319 (msg!1380 List!6383)) )
))
(declare-datatypes ((Regex!1629 0))(
  ( (ElementMatch!1629 (c!114400 C!4184)) (Concat!2949 (regOne!3770 Regex!1629) (regTwo!3770 Regex!1629)) (EmptyExpr!1629) (Star!1629 (reg!1958 Regex!1629)) (EmptyLang!1629) (Union!1629 (regOne!3771 Regex!1629) (regTwo!3771 Regex!1629)) )
))
(declare-datatypes ((String!8343 0))(
  ( (String!8344 (value!41770 String)) )
))
(declare-datatypes ((TokenValueInjection!2406 0))(
  ( (TokenValueInjection!2407 (toValue!2220 Int) (toChars!2079 Int)) )
))
(declare-datatypes ((Rule!2390 0))(
  ( (Rule!2391 (regex!1295 Regex!1629) (tag!1557 String!8343) (isSeparator!1295 Bool) (transformation!1295 TokenValueInjection!2406)) )
))
(declare-datatypes ((Token!2314 0))(
  ( (Token!2315 (value!41771 TokenValue!1319) (rule!2091 Rule!2390) (size!4969 Int) (originalCharacters!1328 List!6382)) )
))
(declare-datatypes ((List!6384 0))(
  ( (Nil!6374) (Cons!6374 (h!11775 Token!2314) (t!81891 List!6384)) )
))
(declare-datatypes ((IArray!4065 0))(
  ( (IArray!4066 (innerList!2090 List!6384)) )
))
(declare-datatypes ((Conc!2032 0))(
  ( (Node!2032 (left!5053 Conc!2032) (right!5383 Conc!2032) (csize!4294 Int) (cheight!2243 Int)) (Leaf!3188 (xs!4669 IArray!4065) (csize!4295 Int)) (Empty!2032) )
))
(declare-datatypes ((BalanceConc!4072 0))(
  ( (BalanceConc!4073 (c!114401 Conc!2032)) )
))
(declare-fun v!6361 () BalanceConc!4072)

(declare-fun tp!193239 () Bool)

(declare-fun inv!8069 (Conc!2032) Bool)

(assert (=> b!622276 (= e!377740 (and (inv!8069 (c!114401 v!6361)) tp!193239))))

(declare-fun e!377737 () Bool)

(declare-fun tp!193238 () Bool)

(declare-fun separatorToken!136 () Token!2314)

(declare-fun b!622277 () Bool)

(declare-fun e!377735 () Bool)

(declare-fun inv!8064 (String!8343) Bool)

(declare-fun inv!8070 (TokenValueInjection!2406) Bool)

(assert (=> b!622277 (= e!377737 (and tp!193238 (inv!8064 (tag!1557 (rule!2091 separatorToken!136))) (inv!8070 (transformation!1295 (rule!2091 separatorToken!136))) e!377735))))

(assert (=> b!622278 (= e!377735 (and tp!193237 tp!193240))))

(declare-fun res!270777 () Bool)

(declare-fun e!377739 () Bool)

(assert (=> start!59968 (=> (not res!270777) (not e!377739))))

(declare-datatypes ((LexerInterface!1183 0))(
  ( (LexerInterfaceExt!1180 (__x!4539 Int)) (Lexer!1181) )
))
(declare-fun thiss!14007 () LexerInterface!1183)

(declare-fun from!852 () Int)

(get-info :version)

(assert (=> start!59968 (= res!270777 (and ((_ is Lexer!1181) thiss!14007) (>= from!852 0)))))

(assert (=> start!59968 e!377739))

(assert (=> start!59968 true))

(declare-fun inv!8071 (BalanceConc!4072) Bool)

(assert (=> start!59968 (and (inv!8071 v!6361) e!377740)))

(declare-fun e!377734 () Bool)

(declare-fun inv!8072 (Token!2314) Bool)

(assert (=> start!59968 (and (inv!8072 separatorToken!136) e!377734)))

(declare-fun b!622279 () Bool)

(declare-fun e!377733 () Bool)

(assert (=> b!622279 (= e!377733 false)))

(declare-fun lt!266157 () Int)

(declare-fun size!4970 (List!6384) Int)

(declare-fun list!2675 (BalanceConc!4072) List!6384)

(assert (=> b!622279 (= lt!266157 (size!4970 (list!2675 v!6361)))))

(declare-fun b!622280 () Bool)

(assert (=> b!622280 (= e!377739 e!377733)))

(declare-fun res!270776 () Bool)

(assert (=> b!622280 (=> (not res!270776) (not e!377733))))

(declare-fun lt!266158 () Int)

(assert (=> b!622280 (= res!270776 (and (<= from!852 lt!266158) (isSeparator!1295 (rule!2091 separatorToken!136)) (< from!852 lt!266158)))))

(declare-fun size!4971 (BalanceConc!4072) Int)

(assert (=> b!622280 (= lt!266158 (size!4971 v!6361))))

(declare-fun b!622281 () Bool)

(declare-fun tp!193241 () Bool)

(declare-fun inv!21 (TokenValue!1319) Bool)

(assert (=> b!622281 (= e!377734 (and (inv!21 (value!41771 separatorToken!136)) e!377737 tp!193241))))

(assert (= (and start!59968 res!270777) b!622280))

(assert (= (and b!622280 res!270776) b!622279))

(assert (= start!59968 b!622276))

(assert (= b!622277 b!622278))

(assert (= b!622281 b!622277))

(assert (= start!59968 b!622281))

(declare-fun m!890417 () Bool)

(assert (=> b!622281 m!890417))

(declare-fun m!890419 () Bool)

(assert (=> b!622276 m!890419))

(declare-fun m!890421 () Bool)

(assert (=> b!622279 m!890421))

(assert (=> b!622279 m!890421))

(declare-fun m!890423 () Bool)

(assert (=> b!622279 m!890423))

(declare-fun m!890425 () Bool)

(assert (=> b!622280 m!890425))

(declare-fun m!890427 () Bool)

(assert (=> b!622277 m!890427))

(declare-fun m!890429 () Bool)

(assert (=> b!622277 m!890429))

(declare-fun m!890431 () Bool)

(assert (=> start!59968 m!890431))

(declare-fun m!890433 () Bool)

(assert (=> start!59968 m!890433))

(check-sat (not b_next!18199) b_and!61841 b_and!61839 (not b!622276) (not b!622279) (not b!622280) (not b_next!18197) (not b!622281) (not start!59968) (not b!622277))
(check-sat b_and!61839 b_and!61841 (not b_next!18199) (not b_next!18197))
