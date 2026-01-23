; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63908 () Bool)

(assert start!63908)

(declare-fun b!656425 () Bool)

(assert (=> b!656425 true))

(declare-fun b!656422 () Bool)

(declare-fun e!405937 () Bool)

(declare-datatypes ((List!7036 0))(
  ( (Nil!7022) (Cons!7022 (h!12423 (_ BitVec 16)) (t!85957 List!7036)) )
))
(declare-datatypes ((TokenValue!1434 0))(
  ( (FloatLiteralValue!2868 (text!10483 List!7036)) (TokenValueExt!1433 (__x!5010 Int)) (Broken!7170 (value!45025 List!7036)) (Object!1447) (End!1434) (Def!1434) (Underscore!1434) (Match!1434) (Else!1434) (Error!1434) (Case!1434) (If!1434) (Extends!1434) (Abstract!1434) (Class!1434) (Val!1434) (DelimiterValue!2868 (del!1494 List!7036)) (KeywordValue!1440 (value!45026 List!7036)) (CommentValue!2868 (value!45027 List!7036)) (WhitespaceValue!2868 (value!45028 List!7036)) (IndentationValue!1434 (value!45029 List!7036)) (String!8907) (Int32!1434) (Broken!7171 (value!45030 List!7036)) (Boolean!1435) (Unit!12264) (OperatorValue!1437 (op!1494 List!7036)) (IdentifierValue!2868 (value!45031 List!7036)) (IdentifierValue!2869 (value!45032 List!7036)) (WhitespaceValue!2869 (value!45033 List!7036)) (True!2868) (False!2868) (Broken!7172 (value!45034 List!7036)) (Broken!7173 (value!45035 List!7036)) (True!2869) (RightBrace!1434) (RightBracket!1434) (Colon!1434) (Null!1434) (Comma!1434) (LeftBracket!1434) (False!2869) (LeftBrace!1434) (ImaginaryLiteralValue!1434 (text!10484 List!7036)) (StringLiteralValue!4302 (value!45036 List!7036)) (EOFValue!1434 (value!45037 List!7036)) (IdentValue!1434 (value!45038 List!7036)) (DelimiterValue!2869 (value!45039 List!7036)) (DedentValue!1434 (value!45040 List!7036)) (NewLineValue!1434 (value!45041 List!7036)) (IntegerValue!4302 (value!45042 (_ BitVec 32)) (text!10485 List!7036)) (IntegerValue!4303 (value!45043 Int) (text!10486 List!7036)) (Times!1434) (Or!1434) (Equal!1434) (Minus!1434) (Broken!7174 (value!45044 List!7036)) (And!1434) (Div!1434) (LessEqual!1434) (Mod!1434) (Concat!3169) (Not!1434) (Plus!1434) (SpaceValue!1434 (value!45045 List!7036)) (IntegerValue!4304 (value!45046 Int) (text!10487 List!7036)) (StringLiteralValue!4303 (text!10488 List!7036)) (FloatLiteralValue!2869 (text!10489 List!7036)) (BytesLiteralValue!1434 (value!45047 List!7036)) (CommentValue!2869 (value!45048 List!7036)) (StringLiteralValue!4304 (value!45049 List!7036)) (ErrorTokenValue!1434 (msg!1495 List!7036)) )
))
(declare-datatypes ((Regex!1735 0))(
  ( (ElementMatch!1735 (c!118159 (_ BitVec 16))) (Concat!3170 (regOne!3982 Regex!1735) (regTwo!3982 Regex!1735)) (EmptyExpr!1735) (Star!1735 (reg!2064 Regex!1735)) (EmptyLang!1735) (Union!1735 (regOne!3983 Regex!1735) (regTwo!3983 Regex!1735)) )
))
(declare-datatypes ((String!8908 0))(
  ( (String!8909 (value!45050 String)) )
))
(declare-datatypes ((IArray!4817 0))(
  ( (IArray!4818 (innerList!2466 List!7036)) )
))
(declare-datatypes ((Conc!2408 0))(
  ( (Node!2408 (left!5593 Conc!2408) (right!5923 Conc!2408) (csize!5046 Int) (cheight!2619 Int)) (Leaf!3624 (xs!5049 IArray!4817) (csize!5047 Int)) (Empty!2408) )
))
(declare-datatypes ((BalanceConc!4828 0))(
  ( (BalanceConc!4829 (c!118160 Conc!2408)) )
))
(declare-datatypes ((TokenValueInjection!2620 0))(
  ( (TokenValueInjection!2621 (toValue!2341 Int) (toChars!2200 Int)) )
))
(declare-datatypes ((Rule!2600 0))(
  ( (Rule!2601 (regex!1400 Regex!1735) (tag!1662 String!8908) (isSeparator!1400 Bool) (transformation!1400 TokenValueInjection!2620)) )
))
(declare-datatypes ((Token!2522 0))(
  ( (Token!2523 (value!45051 TokenValue!1434) (rule!2195 Rule!2600) (size!5568 Int) (originalCharacters!1432 List!7036)) )
))
(declare-datatypes ((List!7037 0))(
  ( (Nil!7023) (Cons!7023 (h!12424 Token!2522) (t!85958 List!7037)) )
))
(declare-datatypes ((IArray!4819 0))(
  ( (IArray!4820 (innerList!2467 List!7037)) )
))
(declare-datatypes ((Conc!2409 0))(
  ( (Node!2409 (left!5594 Conc!2409) (right!5924 Conc!2409) (csize!5048 Int) (cheight!2620 Int)) (Leaf!3625 (xs!5050 IArray!4819) (csize!5049 Int)) (Empty!2409) )
))
(declare-datatypes ((BalanceConc!4830 0))(
  ( (BalanceConc!4831 (c!118161 Conc!2409)) )
))
(declare-fun ts!14 () BalanceConc!4830)

(declare-fun tp!200556 () Bool)

(declare-fun inv!8854 (Conc!2409) Bool)

(assert (=> b!656422 (= e!405937 (and (inv!8854 (c!118161 ts!14)) tp!200556))))

(declare-fun b!656423 () Bool)

(declare-fun e!405935 () Bool)

(declare-fun e!405934 () Bool)

(assert (=> b!656423 (= e!405935 e!405934)))

(declare-fun res!291076 () Bool)

(assert (=> b!656423 (=> (not res!291076) (not e!405934))))

(declare-fun from!502 () Int)

(declare-fun lt!279828 () Int)

(declare-fun size!101 () Int)

(assert (=> b!656423 (= res!291076 (and (<= from!502 lt!279828) (= lt!279828 size!101)))))

(declare-fun size!5569 (BalanceConc!4830) Int)

(assert (=> b!656423 (= lt!279828 (size!5569 ts!14))))

(declare-fun b!656424 () Bool)

(declare-fun e!405936 () Bool)

(declare-datatypes ((List!7038 0))(
  ( (Nil!7024) (Cons!7024 (h!12425 Int) (t!85959 List!7038)) )
))
(declare-datatypes ((IArray!4821 0))(
  ( (IArray!4822 (innerList!2468 List!7038)) )
))
(declare-datatypes ((Conc!2410 0))(
  ( (Node!2410 (left!5595 Conc!2410) (right!5925 Conc!2410) (csize!5050 Int) (cheight!2621 Int)) (Leaf!3626 (xs!5051 IArray!4821) (csize!5051 Int)) (Empty!2410) )
))
(declare-datatypes ((BalanceConc!4832 0))(
  ( (BalanceConc!4833 (c!118162 Conc!2410)) )
))
(declare-fun acc!218 () BalanceConc!4832)

(declare-fun tp!200557 () Bool)

(declare-fun inv!8855 (Conc!2410) Bool)

(assert (=> b!656424 (= e!405936 (and (inv!8855 (c!118162 acc!218)) tp!200557))))

(declare-fun res!291075 () Bool)

(assert (=> start!63908 (=> (not res!291075) (not e!405935))))

(assert (=> start!63908 (= res!291075 (>= from!502 0))))

(assert (=> start!63908 e!405935))

(assert (=> start!63908 true))

(declare-fun inv!8856 (BalanceConc!4832) Bool)

(assert (=> start!63908 (and (inv!8856 acc!218) e!405936)))

(declare-fun inv!8857 (BalanceConc!4830) Bool)

(assert (=> start!63908 (and (inv!8857 ts!14) e!405937)))

(declare-fun res!291079 () Bool)

(assert (=> b!656425 (=> (not res!291079) (not e!405934))))

(declare-fun lambda!20241 () Int)

(declare-fun forall!1841 (BalanceConc!4832 Int) Bool)

(assert (=> b!656425 (= res!291079 (forall!1841 acc!218 lambda!20241))))

(declare-fun b!656426 () Bool)

(declare-fun res!291077 () Bool)

(assert (=> b!656426 (=> (not res!291077) (not e!405934))))

(declare-fun isKeywordValue!0 (Token!2522 TokenValue!1434) Bool)

(declare-fun apply!1681 (BalanceConc!4830 Int) Token!2522)

(assert (=> b!656426 (= res!291077 (not (isKeywordValue!0 (apply!1681 ts!14 from!502) LeftBrace!1434)))))

(declare-fun b!656427 () Bool)

(assert (=> b!656427 (= e!405934 false)))

(declare-fun b!656428 () Bool)

(declare-fun res!291078 () Bool)

(assert (=> b!656428 (=> (not res!291078) (not e!405934))))

(assert (=> b!656428 (= res!291078 (< from!502 lt!279828))))

(assert (= (and start!63908 res!291075) b!656423))

(assert (= (and b!656423 res!291076) b!656425))

(assert (= (and b!656425 res!291079) b!656428))

(assert (= (and b!656428 res!291078) b!656426))

(assert (= (and b!656426 res!291077) b!656427))

(assert (= start!63908 b!656424))

(assert (= start!63908 b!656422))

(declare-fun m!922233 () Bool)

(assert (=> b!656423 m!922233))

(declare-fun m!922235 () Bool)

(assert (=> b!656424 m!922235))

(declare-fun m!922237 () Bool)

(assert (=> start!63908 m!922237))

(declare-fun m!922239 () Bool)

(assert (=> start!63908 m!922239))

(declare-fun m!922241 () Bool)

(assert (=> b!656426 m!922241))

(assert (=> b!656426 m!922241))

(declare-fun m!922243 () Bool)

(assert (=> b!656426 m!922243))

(declare-fun m!922245 () Bool)

(assert (=> b!656422 m!922245))

(declare-fun m!922247 () Bool)

(assert (=> b!656425 m!922247))

(check-sat (not b!656423) (not b!656422) (not b!656424) (not b!656426) (not start!63908) (not b!656425))
(check-sat)
