; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!510992 () Bool)

(assert start!510992)

(declare-fun b!4883182 () Bool)

(declare-fun b_free!131027 () Bool)

(declare-fun b_next!131817 () Bool)

(assert (=> b!4883182 (= b_free!131027 (not b_next!131817))))

(declare-fun tp!1374050 () Bool)

(declare-fun b_and!343859 () Bool)

(assert (=> b!4883182 (= tp!1374050 b_and!343859)))

(declare-fun b_free!131029 () Bool)

(declare-fun b_next!131819 () Bool)

(assert (=> b!4883182 (= b_free!131029 (not b_next!131819))))

(declare-fun tp!1374051 () Bool)

(declare-fun b_and!343861 () Bool)

(assert (=> b!4883182 (= tp!1374051 b_and!343861)))

(declare-fun b!4883178 () Bool)

(declare-fun e!3052007 () Bool)

(declare-fun e!3052006 () Bool)

(assert (=> b!4883178 (= e!3052007 e!3052006)))

(declare-fun res!2084595 () Bool)

(assert (=> b!4883178 (=> res!2084595 e!3052006)))

(declare-datatypes ((C!26516 0))(
  ( (C!26517 (val!22592 Int)) )
))
(declare-datatypes ((List!56257 0))(
  ( (Nil!56133) (Cons!56133 (h!62581 C!26516) (t!364903 List!56257)) )
))
(declare-datatypes ((IArray!29365 0))(
  ( (IArray!29366 (innerList!14740 List!56257)) )
))
(declare-datatypes ((Conc!14652 0))(
  ( (Node!14652 (left!40788 Conc!14652) (right!41118 Conc!14652) (csize!29534 Int) (cheight!14863 Int)) (Leaf!24411 (xs!17968 IArray!29365) (csize!29535 Int)) (Empty!14652) )
))
(declare-datatypes ((BalanceConc!28734 0))(
  ( (BalanceConc!28735 (c!830433 Conc!14652)) )
))
(declare-datatypes ((List!56258 0))(
  ( (Nil!56134) (Cons!56134 (h!62582 (_ BitVec 16)) (t!364904 List!56258)) )
))
(declare-datatypes ((TokenValue!8394 0))(
  ( (FloatLiteralValue!16788 (text!59203 List!56258)) (TokenValueExt!8393 (__x!34081 Int)) (Broken!41970 (value!259520 List!56258)) (Object!8517) (End!8394) (Def!8394) (Underscore!8394) (Match!8394) (Else!8394) (Error!8394) (Case!8394) (If!8394) (Extends!8394) (Abstract!8394) (Class!8394) (Val!8394) (DelimiterValue!16788 (del!8454 List!56258)) (KeywordValue!8400 (value!259521 List!56258)) (CommentValue!16788 (value!259522 List!56258)) (WhitespaceValue!16788 (value!259523 List!56258)) (IndentationValue!8394 (value!259524 List!56258)) (String!63411) (Int32!8394) (Broken!41971 (value!259525 List!56258)) (Boolean!8395) (Unit!146123) (OperatorValue!8397 (op!8454 List!56258)) (IdentifierValue!16788 (value!259526 List!56258)) (IdentifierValue!16789 (value!259527 List!56258)) (WhitespaceValue!16789 (value!259528 List!56258)) (True!16788) (False!16788) (Broken!41972 (value!259529 List!56258)) (Broken!41973 (value!259530 List!56258)) (True!16789) (RightBrace!8394) (RightBracket!8394) (Colon!8394) (Null!8394) (Comma!8394) (LeftBracket!8394) (False!16789) (LeftBrace!8394) (ImaginaryLiteralValue!8394 (text!59204 List!56258)) (StringLiteralValue!25182 (value!259531 List!56258)) (EOFValue!8394 (value!259532 List!56258)) (IdentValue!8394 (value!259533 List!56258)) (DelimiterValue!16789 (value!259534 List!56258)) (DedentValue!8394 (value!259535 List!56258)) (NewLineValue!8394 (value!259536 List!56258)) (IntegerValue!25182 (value!259537 (_ BitVec 32)) (text!59205 List!56258)) (IntegerValue!25183 (value!259538 Int) (text!59206 List!56258)) (Times!8394) (Or!8394) (Equal!8394) (Minus!8394) (Broken!41974 (value!259539 List!56258)) (And!8394) (Div!8394) (LessEqual!8394) (Mod!8394) (Concat!21553) (Not!8394) (Plus!8394) (SpaceValue!8394 (value!259540 List!56258)) (IntegerValue!25184 (value!259541 Int) (text!59207 List!56258)) (StringLiteralValue!25183 (text!59208 List!56258)) (FloatLiteralValue!16789 (text!59209 List!56258)) (BytesLiteralValue!8394 (value!259542 List!56258)) (CommentValue!16789 (value!259543 List!56258)) (StringLiteralValue!25184 (value!259544 List!56258)) (ErrorTokenValue!8394 (msg!8455 List!56258)) )
))
(declare-datatypes ((Regex!13159 0))(
  ( (ElementMatch!13159 (c!830434 C!26516)) (Concat!21554 (regOne!26830 Regex!13159) (regTwo!26830 Regex!13159)) (EmptyExpr!13159) (Star!13159 (reg!13488 Regex!13159)) (EmptyLang!13159) (Union!13159 (regOne!26831 Regex!13159) (regTwo!26831 Regex!13159)) )
))
(declare-datatypes ((String!63412 0))(
  ( (String!63413 (value!259545 String)) )
))
(declare-datatypes ((TokenValueInjection!16096 0))(
  ( (TokenValueInjection!16097 (toValue!10971 Int) (toChars!10830 Int)) )
))
(declare-datatypes ((Rule!15968 0))(
  ( (Rule!15969 (regex!8084 Regex!13159) (tag!8948 String!63412) (isSeparator!8084 Bool) (transformation!8084 TokenValueInjection!16096)) )
))
(declare-datatypes ((Token!14736 0))(
  ( (Token!14737 (value!259546 TokenValue!8394) (rule!11246 Rule!15968) (size!37003 Int) (originalCharacters!8399 List!56257)) )
))
(declare-datatypes ((tuple2!60032 0))(
  ( (tuple2!60033 (_1!33319 Token!14736) (_2!33319 BalanceConc!28734)) )
))
(declare-datatypes ((Option!13851 0))(
  ( (None!13850) (Some!13850 (v!49800 tuple2!60032)) )
))
(declare-fun lt!2000294 () Option!13851)

(declare-fun lt!2000295 () Option!13851)

(get-info :version)

(assert (=> b!4883178 (= res!2084595 (or (not ((_ is None!13850) lt!2000294)) (not ((_ is None!13850) lt!2000295))))))

(declare-fun input!1236 () BalanceConc!28734)

(declare-datatypes ((List!56259 0))(
  ( (Nil!56135) (Cons!56135 (h!62583 Rule!15968) (t!364905 List!56259)) )
))
(declare-fun rulesArg!165 () List!56259)

(declare-datatypes ((LexerInterface!7676 0))(
  ( (LexerInterfaceExt!7673 (__x!34082 Int)) (Lexer!7674) )
))
(declare-fun thiss!14805 () LexerInterface!7676)

(declare-fun maxPrefixZipperSequence!1245 (LexerInterface!7676 List!56259 BalanceConc!28734) Option!13851)

(assert (=> b!4883178 (= lt!2000295 (maxPrefixZipperSequence!1245 thiss!14805 (t!364905 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!610 (LexerInterface!7676 Rule!15968 BalanceConc!28734) Option!13851)

(assert (=> b!4883178 (= lt!2000294 (maxPrefixOneRuleZipperSequence!610 thiss!14805 (h!62583 rulesArg!165) input!1236))))

(declare-fun b!4883179 () Bool)

(declare-fun res!2084598 () Bool)

(declare-fun e!3052009 () Bool)

(assert (=> b!4883179 (=> (not res!2084598) (not e!3052009))))

(declare-fun rulesValidInductive!3063 (LexerInterface!7676 List!56259) Bool)

(assert (=> b!4883179 (= res!2084598 (rulesValidInductive!3063 thiss!14805 rulesArg!165))))

(declare-fun b!4883180 () Bool)

(assert (=> b!4883180 (= e!3052009 (not e!3052007))))

(declare-fun res!2084597 () Bool)

(assert (=> b!4883180 (=> res!2084597 e!3052007)))

(assert (=> b!4883180 (= res!2084597 (or (and ((_ is Cons!56135) rulesArg!165) ((_ is Nil!56135) (t!364905 rulesArg!165))) (not ((_ is Cons!56135) rulesArg!165))))))

(declare-fun lt!2000292 () List!56257)

(declare-fun isPrefix!4806 (List!56257 List!56257) Bool)

(assert (=> b!4883180 (isPrefix!4806 lt!2000292 lt!2000292)))

(declare-datatypes ((Unit!146124 0))(
  ( (Unit!146125) )
))
(declare-fun lt!2000293 () Unit!146124)

(declare-fun lemmaIsPrefixRefl!3203 (List!56257 List!56257) Unit!146124)

(assert (=> b!4883180 (= lt!2000293 (lemmaIsPrefixRefl!3203 lt!2000292 lt!2000292))))

(declare-fun list!17609 (BalanceConc!28734) List!56257)

(assert (=> b!4883180 (= lt!2000292 (list!17609 input!1236))))

(declare-fun b!4883181 () Bool)

(declare-fun e!3052012 () Bool)

(declare-fun e!3052010 () Bool)

(declare-fun tp!1374049 () Bool)

(declare-fun inv!72198 (String!63412) Bool)

(declare-fun inv!72202 (TokenValueInjection!16096) Bool)

(assert (=> b!4883181 (= e!3052012 (and tp!1374049 (inv!72198 (tag!8948 (h!62583 rulesArg!165))) (inv!72202 (transformation!8084 (h!62583 rulesArg!165))) e!3052010))))

(assert (=> b!4883182 (= e!3052010 (and tp!1374050 tp!1374051))))

(declare-fun res!2084599 () Bool)

(assert (=> start!510992 (=> (not res!2084599) (not e!3052009))))

(assert (=> start!510992 (= res!2084599 ((_ is Lexer!7674) thiss!14805))))

(assert (=> start!510992 e!3052009))

(assert (=> start!510992 true))

(declare-fun e!3052005 () Bool)

(assert (=> start!510992 e!3052005))

(declare-fun e!3052011 () Bool)

(declare-fun inv!72203 (BalanceConc!28734) Bool)

(assert (=> start!510992 (and (inv!72203 input!1236) e!3052011)))

(declare-fun b!4883183 () Bool)

(declare-fun tp!1374047 () Bool)

(declare-fun inv!72204 (Conc!14652) Bool)

(assert (=> b!4883183 (= e!3052011 (and (inv!72204 (c!830433 input!1236)) tp!1374047))))

(declare-fun b!4883184 () Bool)

(declare-fun res!2084596 () Bool)

(assert (=> b!4883184 (=> (not res!2084596) (not e!3052009))))

(declare-fun isEmpty!30085 (List!56259) Bool)

(assert (=> b!4883184 (= res!2084596 (not (isEmpty!30085 rulesArg!165)))))

(declare-fun b!4883185 () Bool)

(declare-fun tp!1374048 () Bool)

(assert (=> b!4883185 (= e!3052005 (and e!3052012 tp!1374048))))

(declare-fun b!4883186 () Bool)

(assert (=> b!4883186 (= e!3052006 true)))

(declare-datatypes ((tuple2!60034 0))(
  ( (tuple2!60035 (_1!33320 Token!14736) (_2!33320 List!56257)) )
))
(declare-datatypes ((Option!13852 0))(
  ( (None!13851) (Some!13851 (v!49801 tuple2!60034)) )
))
(declare-fun lt!2000296 () Option!13852)

(declare-fun maxPrefixZipper!587 (LexerInterface!7676 List!56259 List!56257) Option!13852)

(assert (=> b!4883186 (= lt!2000296 (maxPrefixZipper!587 thiss!14805 rulesArg!165 lt!2000292))))

(assert (= (and start!510992 res!2084599) b!4883179))

(assert (= (and b!4883179 res!2084598) b!4883184))

(assert (= (and b!4883184 res!2084596) b!4883180))

(assert (= (and b!4883180 (not res!2084597)) b!4883178))

(assert (= (and b!4883178 (not res!2084595)) b!4883186))

(assert (= b!4883181 b!4883182))

(assert (= b!4883185 b!4883181))

(assert (= (and start!510992 ((_ is Cons!56135) rulesArg!165)) b!4883185))

(assert (= start!510992 b!4883183))

(declare-fun m!5887204 () Bool)

(assert (=> b!4883178 m!5887204))

(declare-fun m!5887206 () Bool)

(assert (=> b!4883178 m!5887206))

(declare-fun m!5887208 () Bool)

(assert (=> b!4883180 m!5887208))

(declare-fun m!5887210 () Bool)

(assert (=> b!4883180 m!5887210))

(declare-fun m!5887212 () Bool)

(assert (=> b!4883180 m!5887212))

(declare-fun m!5887214 () Bool)

(assert (=> start!510992 m!5887214))

(declare-fun m!5887216 () Bool)

(assert (=> b!4883179 m!5887216))

(declare-fun m!5887218 () Bool)

(assert (=> b!4883181 m!5887218))

(declare-fun m!5887220 () Bool)

(assert (=> b!4883181 m!5887220))

(declare-fun m!5887222 () Bool)

(assert (=> b!4883186 m!5887222))

(declare-fun m!5887224 () Bool)

(assert (=> b!4883183 m!5887224))

(declare-fun m!5887226 () Bool)

(assert (=> b!4883184 m!5887226))

(check-sat (not b!4883186) (not b!4883180) (not b!4883179) b_and!343861 (not b!4883183) (not b!4883185) (not b!4883184) (not b_next!131817) (not b!4883178) b_and!343859 (not b!4883181) (not start!510992) (not b_next!131819))
(check-sat b_and!343861 b_and!343859 (not b_next!131817) (not b_next!131819))
