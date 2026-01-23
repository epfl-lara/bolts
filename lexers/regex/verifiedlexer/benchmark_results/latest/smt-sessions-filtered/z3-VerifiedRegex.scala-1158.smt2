; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59980 () Bool)

(assert start!59980)

(declare-fun b!622384 () Bool)

(declare-fun b_free!18205 () Bool)

(declare-fun b_next!18221 () Bool)

(assert (=> b!622384 (= b_free!18205 (not b_next!18221))))

(declare-fun tp!193328 () Bool)

(declare-fun b_and!61863 () Bool)

(assert (=> b!622384 (= tp!193328 b_and!61863)))

(declare-fun b_free!18207 () Bool)

(declare-fun b_next!18223 () Bool)

(assert (=> b!622384 (= b_free!18207 (not b_next!18223))))

(declare-fun tp!193331 () Bool)

(declare-fun b_and!61865 () Bool)

(assert (=> b!622384 (= tp!193331 b_and!61865)))

(declare-fun e!377879 () Bool)

(assert (=> b!622384 (= e!377879 (and tp!193328 tp!193331))))

(declare-fun res!270812 () Bool)

(declare-fun e!377884 () Bool)

(assert (=> start!59980 (=> (not res!270812) (not e!377884))))

(declare-datatypes ((LexerInterface!1189 0))(
  ( (LexerInterfaceExt!1186 (__x!4550 Int)) (Lexer!1187) )
))
(declare-fun thiss!14007 () LexerInterface!1189)

(declare-fun from!852 () Int)

(get-info :version)

(assert (=> start!59980 (= res!270812 (and ((_ is Lexer!1187) thiss!14007) (>= from!852 0)))))

(assert (=> start!59980 e!377884))

(assert (=> start!59980 true))

(declare-datatypes ((C!4196 0))(
  ( (C!4197 (val!2324 Int)) )
))
(declare-datatypes ((List!6400 0))(
  ( (Nil!6390) (Cons!6390 (h!11791 C!4196) (t!81907 List!6400)) )
))
(declare-datatypes ((IArray!4087 0))(
  ( (IArray!4088 (innerList!2101 List!6400)) )
))
(declare-datatypes ((Conc!2043 0))(
  ( (Node!2043 (left!5067 Conc!2043) (right!5397 Conc!2043) (csize!4316 Int) (cheight!2254 Int)) (Leaf!3202 (xs!4680 IArray!4087) (csize!4317 Int)) (Empty!2043) )
))
(declare-datatypes ((BalanceConc!4094 0))(
  ( (BalanceConc!4095 (c!114417 Conc!2043)) )
))
(declare-datatypes ((List!6401 0))(
  ( (Nil!6391) (Cons!6391 (h!11792 (_ BitVec 16)) (t!81908 List!6401)) )
))
(declare-datatypes ((TokenValue!1325 0))(
  ( (FloatLiteralValue!2650 (text!9720 List!6401)) (TokenValueExt!1324 (__x!4551 Int)) (Broken!6625 (value!41916 List!6401)) (Object!1334) (End!1325) (Def!1325) (Underscore!1325) (Match!1325) (Else!1325) (Error!1325) (Case!1325) (If!1325) (Extends!1325) (Abstract!1325) (Class!1325) (Val!1325) (DelimiterValue!2650 (del!1385 List!6401)) (KeywordValue!1331 (value!41917 List!6401)) (CommentValue!2650 (value!41918 List!6401)) (WhitespaceValue!2650 (value!41919 List!6401)) (IndentationValue!1325 (value!41920 List!6401)) (String!8372) (Int32!1325) (Broken!6626 (value!41921 List!6401)) (Boolean!1326) (Unit!11483) (OperatorValue!1328 (op!1385 List!6401)) (IdentifierValue!2650 (value!41922 List!6401)) (IdentifierValue!2651 (value!41923 List!6401)) (WhitespaceValue!2651 (value!41924 List!6401)) (True!2650) (False!2650) (Broken!6627 (value!41925 List!6401)) (Broken!6628 (value!41926 List!6401)) (True!2651) (RightBrace!1325) (RightBracket!1325) (Colon!1325) (Null!1325) (Comma!1325) (LeftBracket!1325) (False!2651) (LeftBrace!1325) (ImaginaryLiteralValue!1325 (text!9721 List!6401)) (StringLiteralValue!3975 (value!41927 List!6401)) (EOFValue!1325 (value!41928 List!6401)) (IdentValue!1325 (value!41929 List!6401)) (DelimiterValue!2651 (value!41930 List!6401)) (DedentValue!1325 (value!41931 List!6401)) (NewLineValue!1325 (value!41932 List!6401)) (IntegerValue!3975 (value!41933 (_ BitVec 32)) (text!9722 List!6401)) (IntegerValue!3976 (value!41934 Int) (text!9723 List!6401)) (Times!1325) (Or!1325) (Equal!1325) (Minus!1325) (Broken!6629 (value!41935 List!6401)) (And!1325) (Div!1325) (LessEqual!1325) (Mod!1325) (Concat!2960) (Not!1325) (Plus!1325) (SpaceValue!1325 (value!41936 List!6401)) (IntegerValue!3977 (value!41937 Int) (text!9724 List!6401)) (StringLiteralValue!3976 (text!9725 List!6401)) (FloatLiteralValue!2651 (text!9726 List!6401)) (BytesLiteralValue!1325 (value!41938 List!6401)) (CommentValue!2651 (value!41939 List!6401)) (StringLiteralValue!3977 (value!41940 List!6401)) (ErrorTokenValue!1325 (msg!1386 List!6401)) )
))
(declare-datatypes ((Regex!1635 0))(
  ( (ElementMatch!1635 (c!114418 C!4196)) (Concat!2961 (regOne!3782 Regex!1635) (regTwo!3782 Regex!1635)) (EmptyExpr!1635) (Star!1635 (reg!1964 Regex!1635)) (EmptyLang!1635) (Union!1635 (regOne!3783 Regex!1635) (regTwo!3783 Regex!1635)) )
))
(declare-datatypes ((String!8373 0))(
  ( (String!8374 (value!41941 String)) )
))
(declare-datatypes ((TokenValueInjection!2418 0))(
  ( (TokenValueInjection!2419 (toValue!2226 Int) (toChars!2085 Int)) )
))
(declare-datatypes ((Rule!2402 0))(
  ( (Rule!2403 (regex!1301 Regex!1635) (tag!1563 String!8373) (isSeparator!1301 Bool) (transformation!1301 TokenValueInjection!2418)) )
))
(declare-datatypes ((Token!2326 0))(
  ( (Token!2327 (value!41942 TokenValue!1325) (rule!2097 Rule!2402) (size!4984 Int) (originalCharacters!1334 List!6400)) )
))
(declare-datatypes ((List!6402 0))(
  ( (Nil!6392) (Cons!6392 (h!11793 Token!2326) (t!81909 List!6402)) )
))
(declare-datatypes ((IArray!4089 0))(
  ( (IArray!4090 (innerList!2102 List!6402)) )
))
(declare-datatypes ((Conc!2044 0))(
  ( (Node!2044 (left!5068 Conc!2044) (right!5398 Conc!2044) (csize!4318 Int) (cheight!2255 Int)) (Leaf!3203 (xs!4681 IArray!4089) (csize!4319 Int)) (Empty!2044) )
))
(declare-datatypes ((BalanceConc!4096 0))(
  ( (BalanceConc!4097 (c!114419 Conc!2044)) )
))
(declare-fun v!6361 () BalanceConc!4096)

(declare-fun e!377880 () Bool)

(declare-fun inv!8102 (BalanceConc!4096) Bool)

(assert (=> start!59980 (and (inv!8102 v!6361) e!377880)))

(declare-fun separatorToken!136 () Token!2326)

(declare-fun e!377883 () Bool)

(declare-fun inv!8103 (Token!2326) Bool)

(assert (=> start!59980 (and (inv!8103 separatorToken!136) e!377883)))

(declare-fun b!622385 () Bool)

(declare-fun tp!193327 () Bool)

(declare-fun inv!8104 (Conc!2044) Bool)

(assert (=> b!622385 (= e!377880 (and (inv!8104 (c!114419 v!6361)) tp!193327))))

(declare-fun e!377882 () Bool)

(declare-fun b!622386 () Bool)

(declare-fun tp!193330 () Bool)

(declare-fun inv!8097 (String!8373) Bool)

(declare-fun inv!8105 (TokenValueInjection!2418) Bool)

(assert (=> b!622386 (= e!377882 (and tp!193330 (inv!8097 (tag!1563 (rule!2097 separatorToken!136))) (inv!8105 (transformation!1301 (rule!2097 separatorToken!136))) e!377879))))

(declare-fun tp!193329 () Bool)

(declare-fun b!622387 () Bool)

(declare-fun inv!21 (TokenValue!1325) Bool)

(assert (=> b!622387 (= e!377883 (and (inv!21 (value!41942 separatorToken!136)) e!377882 tp!193329))))

(declare-fun b!622388 () Bool)

(declare-fun e!377877 () Bool)

(assert (=> b!622388 (= e!377877 (not true))))

(declare-fun lt!266243 () BalanceConc!4094)

(declare-fun ++!1763 (BalanceConc!4094 BalanceConc!4094) BalanceConc!4094)

(declare-fun charsOf!892 (Token!2326) BalanceConc!4094)

(declare-fun apply!1518 (BalanceConc!4096 Int) Token!2326)

(assert (=> b!622388 (= lt!266243 (++!1763 (charsOf!892 (apply!1518 v!6361 from!852)) (charsOf!892 separatorToken!136)))))

(declare-fun lt!266246 () List!6402)

(declare-fun lt!266248 () List!6402)

(declare-fun tail!850 (List!6402) List!6402)

(declare-fun drop!332 (List!6402 Int) List!6402)

(assert (=> b!622388 (= (tail!850 lt!266246) (drop!332 lt!266248 (+ 1 from!852)))))

(declare-datatypes ((Unit!11484 0))(
  ( (Unit!11485) )
))
(declare-fun lt!266247 () Unit!11484)

(declare-fun lemmaDropTail!290 (List!6402 Int) Unit!11484)

(assert (=> b!622388 (= lt!266247 (lemmaDropTail!290 lt!266248 from!852))))

(declare-fun head!1321 (List!6402) Token!2326)

(declare-fun apply!1519 (List!6402 Int) Token!2326)

(assert (=> b!622388 (= (head!1321 lt!266246) (apply!1519 lt!266248 from!852))))

(assert (=> b!622388 (= lt!266246 (drop!332 lt!266248 from!852))))

(declare-fun lt!266245 () Unit!11484)

(declare-fun lemmaDropApply!300 (List!6402 Int) Unit!11484)

(assert (=> b!622388 (= lt!266245 (lemmaDropApply!300 lt!266248 from!852))))

(declare-fun list!2681 (BalanceConc!4096) List!6402)

(assert (=> b!622388 (= lt!266248 (list!2681 v!6361))))

(declare-fun b!622389 () Bool)

(assert (=> b!622389 (= e!377884 e!377877)))

(declare-fun res!270813 () Bool)

(assert (=> b!622389 (=> (not res!270813) (not e!377877))))

(declare-fun lt!266244 () Int)

(assert (=> b!622389 (= res!270813 (and (<= from!852 lt!266244) (isSeparator!1301 (rule!2097 separatorToken!136)) (< from!852 lt!266244)))))

(declare-fun size!4985 (BalanceConc!4096) Int)

(assert (=> b!622389 (= lt!266244 (size!4985 v!6361))))

(assert (= (and start!59980 res!270812) b!622389))

(assert (= (and b!622389 res!270813) b!622388))

(assert (= start!59980 b!622385))

(assert (= b!622386 b!622384))

(assert (= b!622387 b!622386))

(assert (= start!59980 b!622387))

(declare-fun m!890585 () Bool)

(assert (=> b!622386 m!890585))

(declare-fun m!890587 () Bool)

(assert (=> b!622386 m!890587))

(declare-fun m!890589 () Bool)

(assert (=> b!622389 m!890589))

(declare-fun m!890591 () Bool)

(assert (=> b!622388 m!890591))

(declare-fun m!890593 () Bool)

(assert (=> b!622388 m!890593))

(declare-fun m!890595 () Bool)

(assert (=> b!622388 m!890595))

(declare-fun m!890597 () Bool)

(assert (=> b!622388 m!890597))

(declare-fun m!890599 () Bool)

(assert (=> b!622388 m!890599))

(declare-fun m!890601 () Bool)

(assert (=> b!622388 m!890601))

(declare-fun m!890603 () Bool)

(assert (=> b!622388 m!890603))

(declare-fun m!890605 () Bool)

(assert (=> b!622388 m!890605))

(declare-fun m!890607 () Bool)

(assert (=> b!622388 m!890607))

(declare-fun m!890609 () Bool)

(assert (=> b!622388 m!890609))

(assert (=> b!622388 m!890607))

(declare-fun m!890611 () Bool)

(assert (=> b!622388 m!890611))

(assert (=> b!622388 m!890609))

(assert (=> b!622388 m!890597))

(declare-fun m!890613 () Bool)

(assert (=> b!622388 m!890613))

(declare-fun m!890615 () Bool)

(assert (=> b!622387 m!890615))

(declare-fun m!890617 () Bool)

(assert (=> start!59980 m!890617))

(declare-fun m!890619 () Bool)

(assert (=> start!59980 m!890619))

(declare-fun m!890621 () Bool)

(assert (=> b!622385 m!890621))

(check-sat (not b!622388) (not b!622387) (not b_next!18221) (not b_next!18223) (not start!59980) (not b!622389) b_and!61865 b_and!61863 (not b!622385) (not b!622386))
(check-sat b_and!61863 b_and!61865 (not b_next!18223) (not b_next!18221))
