; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352480 () Bool)

(assert start!352480)

(declare-fun b!3753417 () Bool)

(declare-fun b_free!100445 () Bool)

(declare-fun b_next!101149 () Bool)

(assert (=> b!3753417 (= b_free!100445 (not b_next!101149))))

(declare-fun tp!1146060 () Bool)

(declare-fun b_and!278927 () Bool)

(assert (=> b!3753417 (= tp!1146060 b_and!278927)))

(declare-fun b_free!100447 () Bool)

(declare-fun b_next!101151 () Bool)

(assert (=> b!3753417 (= b_free!100447 (not b_next!101151))))

(declare-fun tp!1146055 () Bool)

(declare-fun b_and!278929 () Bool)

(assert (=> b!3753417 (= tp!1146055 b_and!278929)))

(declare-fun b!3753416 () Bool)

(declare-fun e!2321808 () Bool)

(declare-fun e!2321802 () Bool)

(assert (=> b!3753416 (= e!2321808 e!2321802)))

(declare-fun res!1521030 () Bool)

(assert (=> b!3753416 (=> (not res!1521030) (not e!2321802))))

(declare-fun lt!1300202 () Int)

(declare-fun from!856 () Int)

(declare-datatypes ((List!40149 0))(
  ( (Nil!40025) (Cons!40025 (h!45445 (_ BitVec 16)) (t!303252 List!40149)) )
))
(declare-datatypes ((TokenValue!6352 0))(
  ( (FloatLiteralValue!12704 (text!44909 List!40149)) (TokenValueExt!6351 (__x!24921 Int)) (Broken!31760 (value!195040 List!40149)) (Object!6475) (End!6352) (Def!6352) (Underscore!6352) (Match!6352) (Else!6352) (Error!6352) (Case!6352) (If!6352) (Extends!6352) (Abstract!6352) (Class!6352) (Val!6352) (DelimiterValue!12704 (del!6412 List!40149)) (KeywordValue!6358 (value!195041 List!40149)) (CommentValue!12704 (value!195042 List!40149)) (WhitespaceValue!12704 (value!195043 List!40149)) (IndentationValue!6352 (value!195044 List!40149)) (String!45417) (Int32!6352) (Broken!31761 (value!195045 List!40149)) (Boolean!6353) (Unit!57753) (OperatorValue!6355 (op!6412 List!40149)) (IdentifierValue!12704 (value!195046 List!40149)) (IdentifierValue!12705 (value!195047 List!40149)) (WhitespaceValue!12705 (value!195048 List!40149)) (True!12704) (False!12704) (Broken!31762 (value!195049 List!40149)) (Broken!31763 (value!195050 List!40149)) (True!12705) (RightBrace!6352) (RightBracket!6352) (Colon!6352) (Null!6352) (Comma!6352) (LeftBracket!6352) (False!12705) (LeftBrace!6352) (ImaginaryLiteralValue!6352 (text!44910 List!40149)) (StringLiteralValue!19056 (value!195051 List!40149)) (EOFValue!6352 (value!195052 List!40149)) (IdentValue!6352 (value!195053 List!40149)) (DelimiterValue!12705 (value!195054 List!40149)) (DedentValue!6352 (value!195055 List!40149)) (NewLineValue!6352 (value!195056 List!40149)) (IntegerValue!19056 (value!195057 (_ BitVec 32)) (text!44911 List!40149)) (IntegerValue!19057 (value!195058 Int) (text!44912 List!40149)) (Times!6352) (Or!6352) (Equal!6352) (Minus!6352) (Broken!31764 (value!195059 List!40149)) (And!6352) (Div!6352) (LessEqual!6352) (Mod!6352) (Concat!17379) (Not!6352) (Plus!6352) (SpaceValue!6352 (value!195060 List!40149)) (IntegerValue!19058 (value!195061 Int) (text!44913 List!40149)) (StringLiteralValue!19057 (text!44914 List!40149)) (FloatLiteralValue!12705 (text!44915 List!40149)) (BytesLiteralValue!6352 (value!195062 List!40149)) (CommentValue!12705 (value!195063 List!40149)) (StringLiteralValue!19058 (value!195064 List!40149)) (ErrorTokenValue!6352 (msg!6413 List!40149)) )
))
(declare-datatypes ((C!22240 0))(
  ( (C!22241 (val!13184 Int)) )
))
(declare-datatypes ((List!40150 0))(
  ( (Nil!40026) (Cons!40026 (h!45446 C!22240) (t!303253 List!40150)) )
))
(declare-datatypes ((IArray!24493 0))(
  ( (IArray!24494 (innerList!12304 List!40150)) )
))
(declare-datatypes ((Conc!12244 0))(
  ( (Node!12244 (left!30988 Conc!12244) (right!31318 Conc!12244) (csize!24718 Int) (cheight!12455 Int)) (Leaf!18997 (xs!15446 IArray!24493) (csize!24719 Int)) (Empty!12244) )
))
(declare-datatypes ((BalanceConc!24082 0))(
  ( (BalanceConc!24083 (c!649717 Conc!12244)) )
))
(declare-datatypes ((TokenValueInjection!12132 0))(
  ( (TokenValueInjection!12133 (toValue!8470 Int) (toChars!8329 Int)) )
))
(declare-datatypes ((Regex!11027 0))(
  ( (ElementMatch!11027 (c!649718 C!22240)) (Concat!17380 (regOne!22566 Regex!11027) (regTwo!22566 Regex!11027)) (EmptyExpr!11027) (Star!11027 (reg!11356 Regex!11027)) (EmptyLang!11027) (Union!11027 (regOne!22567 Regex!11027) (regTwo!22567 Regex!11027)) )
))
(declare-datatypes ((String!45418 0))(
  ( (String!45419 (value!195065 String)) )
))
(declare-datatypes ((Rule!12044 0))(
  ( (Rule!12045 (regex!6122 Regex!11027) (tag!6982 String!45418) (isSeparator!6122 Bool) (transformation!6122 TokenValueInjection!12132)) )
))
(declare-datatypes ((Token!11382 0))(
  ( (Token!11383 (value!195066 TokenValue!6352) (rule!8886 Rule!12044) (size!30119 Int) (originalCharacters!6722 List!40150)) )
))
(declare-fun separatorToken!144 () Token!11382)

(assert (=> b!3753416 (= res!1521030 (and (<= from!856 lt!1300202) (isSeparator!6122 (rule!8886 separatorToken!144)) (< from!856 lt!1300202)))))

(declare-datatypes ((List!40151 0))(
  ( (Nil!40027) (Cons!40027 (h!45447 Token!11382) (t!303254 List!40151)) )
))
(declare-datatypes ((IArray!24495 0))(
  ( (IArray!24496 (innerList!12305 List!40151)) )
))
(declare-datatypes ((Conc!12245 0))(
  ( (Node!12245 (left!30989 Conc!12245) (right!31319 Conc!12245) (csize!24720 Int) (cheight!12456 Int)) (Leaf!18998 (xs!15447 IArray!24495) (csize!24721 Int)) (Empty!12245) )
))
(declare-datatypes ((BalanceConc!24084 0))(
  ( (BalanceConc!24085 (c!649719 Conc!12245)) )
))
(declare-fun v!6366 () BalanceConc!24084)

(declare-fun size!30120 (BalanceConc!24084) Int)

(assert (=> b!3753416 (= lt!1300202 (size!30120 v!6366))))

(declare-fun e!2321804 () Bool)

(assert (=> b!3753417 (= e!2321804 (and tp!1146060 tp!1146055))))

(declare-fun tp!1146059 () Bool)

(declare-fun b!3753418 () Bool)

(declare-fun e!2321807 () Bool)

(declare-fun inv!53605 (String!45418) Bool)

(declare-fun inv!53612 (TokenValueInjection!12132) Bool)

(assert (=> b!3753418 (= e!2321807 (and tp!1146059 (inv!53605 (tag!6982 (rule!8886 separatorToken!144))) (inv!53612 (transformation!6122 (rule!8886 separatorToken!144))) e!2321804))))

(declare-fun b!3753419 () Bool)

(declare-fun e!2321810 () Bool)

(declare-fun acc!419 () BalanceConc!24082)

(declare-fun tp!1146056 () Bool)

(declare-fun inv!53613 (Conc!12244) Bool)

(assert (=> b!3753419 (= e!2321810 (and (inv!53613 (c!649717 acc!419)) tp!1146056))))

(declare-fun b!3753420 () Bool)

(assert (=> b!3753420 (= e!2321802 (not true))))

(declare-fun lt!1300201 () BalanceConc!24082)

(declare-fun ++!9911 (BalanceConc!24082 BalanceConc!24082) BalanceConc!24082)

(declare-fun charsOf!3975 (Token!11382) BalanceConc!24082)

(declare-fun apply!9416 (BalanceConc!24084 Int) Token!11382)

(assert (=> b!3753420 (= lt!1300201 (++!9911 (++!9911 acc!419 (charsOf!3975 (apply!9416 v!6366 from!856))) (charsOf!3975 separatorToken!144)))))

(declare-fun lt!1300203 () List!40151)

(declare-fun lt!1300200 () List!40151)

(declare-fun tail!5754 (List!40151) List!40151)

(declare-fun drop!2083 (List!40151 Int) List!40151)

(assert (=> b!3753420 (= (tail!5754 lt!1300203) (drop!2083 lt!1300200 (+ 1 from!856)))))

(declare-datatypes ((Unit!57754 0))(
  ( (Unit!57755) )
))
(declare-fun lt!1300205 () Unit!57754)

(declare-fun lemmaDropTail!1105 (List!40151 Int) Unit!57754)

(assert (=> b!3753420 (= lt!1300205 (lemmaDropTail!1105 lt!1300200 from!856))))

(declare-fun head!8027 (List!40151) Token!11382)

(declare-fun apply!9417 (List!40151 Int) Token!11382)

(assert (=> b!3753420 (= (head!8027 lt!1300203) (apply!9417 lt!1300200 from!856))))

(assert (=> b!3753420 (= lt!1300203 (drop!2083 lt!1300200 from!856))))

(declare-fun lt!1300204 () Unit!57754)

(declare-fun lemmaDropApply!1221 (List!40151 Int) Unit!57754)

(assert (=> b!3753420 (= lt!1300204 (lemmaDropApply!1221 lt!1300200 from!856))))

(declare-fun list!14752 (BalanceConc!24084) List!40151)

(assert (=> b!3753420 (= lt!1300200 (list!14752 v!6366))))

(declare-fun b!3753421 () Bool)

(declare-fun e!2321805 () Bool)

(declare-fun tp!1146058 () Bool)

(declare-fun inv!21 (TokenValue!6352) Bool)

(assert (=> b!3753421 (= e!2321805 (and (inv!21 (value!195066 separatorToken!144)) e!2321807 tp!1146058))))

(declare-fun res!1521031 () Bool)

(assert (=> start!352480 (=> (not res!1521031) (not e!2321808))))

(declare-datatypes ((LexerInterface!5711 0))(
  ( (LexerInterfaceExt!5708 (__x!24922 Int)) (Lexer!5709) )
))
(declare-fun thiss!14060 () LexerInterface!5711)

(get-info :version)

(assert (=> start!352480 (= res!1521031 (and ((_ is Lexer!5709) thiss!14060) (>= from!856 0)))))

(assert (=> start!352480 e!2321808))

(declare-fun inv!53614 (BalanceConc!24082) Bool)

(assert (=> start!352480 (and (inv!53614 acc!419) e!2321810)))

(assert (=> start!352480 true))

(declare-fun inv!53615 (Token!11382) Bool)

(assert (=> start!352480 (and (inv!53615 separatorToken!144) e!2321805)))

(declare-fun e!2321809 () Bool)

(declare-fun inv!53616 (BalanceConc!24084) Bool)

(assert (=> start!352480 (and (inv!53616 v!6366) e!2321809)))

(declare-fun b!3753422 () Bool)

(declare-fun tp!1146057 () Bool)

(declare-fun inv!53617 (Conc!12245) Bool)

(assert (=> b!3753422 (= e!2321809 (and (inv!53617 (c!649719 v!6366)) tp!1146057))))

(assert (= (and start!352480 res!1521031) b!3753416))

(assert (= (and b!3753416 res!1521030) b!3753420))

(assert (= start!352480 b!3753419))

(assert (= b!3753418 b!3753417))

(assert (= b!3753421 b!3753418))

(assert (= start!352480 b!3753421))

(assert (= start!352480 b!3753422))

(declare-fun m!4245217 () Bool)

(assert (=> b!3753416 m!4245217))

(declare-fun m!4245219 () Bool)

(assert (=> b!3753418 m!4245219))

(declare-fun m!4245221 () Bool)

(assert (=> b!3753418 m!4245221))

(declare-fun m!4245223 () Bool)

(assert (=> b!3753420 m!4245223))

(declare-fun m!4245225 () Bool)

(assert (=> b!3753420 m!4245225))

(declare-fun m!4245227 () Bool)

(assert (=> b!3753420 m!4245227))

(assert (=> b!3753420 m!4245225))

(declare-fun m!4245229 () Bool)

(assert (=> b!3753420 m!4245229))

(declare-fun m!4245231 () Bool)

(assert (=> b!3753420 m!4245231))

(declare-fun m!4245233 () Bool)

(assert (=> b!3753420 m!4245233))

(declare-fun m!4245235 () Bool)

(assert (=> b!3753420 m!4245235))

(declare-fun m!4245237 () Bool)

(assert (=> b!3753420 m!4245237))

(declare-fun m!4245239 () Bool)

(assert (=> b!3753420 m!4245239))

(declare-fun m!4245241 () Bool)

(assert (=> b!3753420 m!4245241))

(declare-fun m!4245243 () Bool)

(assert (=> b!3753420 m!4245243))

(assert (=> b!3753420 m!4245229))

(declare-fun m!4245245 () Bool)

(assert (=> b!3753420 m!4245245))

(declare-fun m!4245247 () Bool)

(assert (=> b!3753420 m!4245247))

(assert (=> b!3753420 m!4245227))

(assert (=> b!3753420 m!4245223))

(declare-fun m!4245249 () Bool)

(assert (=> b!3753422 m!4245249))

(declare-fun m!4245251 () Bool)

(assert (=> b!3753419 m!4245251))

(declare-fun m!4245253 () Bool)

(assert (=> b!3753421 m!4245253))

(declare-fun m!4245255 () Bool)

(assert (=> start!352480 m!4245255))

(declare-fun m!4245257 () Bool)

(assert (=> start!352480 m!4245257))

(declare-fun m!4245259 () Bool)

(assert (=> start!352480 m!4245259))

(check-sat (not b!3753416) (not b!3753420) (not b!3753419) (not b!3753421) (not start!352480) (not b_next!101151) (not b!3753422) (not b!3753418) (not b_next!101149) b_and!278927 b_and!278929)
(check-sat b_and!278929 b_and!278927 (not b_next!101151) (not b_next!101149))
