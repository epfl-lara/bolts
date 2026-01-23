; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179702 () Bool)

(assert start!179702)

(declare-fun b!1816251 () Bool)

(declare-fun b_free!50123 () Bool)

(declare-fun b_next!50827 () Bool)

(assert (=> b!1816251 (= b_free!50123 (not b_next!50827))))

(declare-fun tp!512948 () Bool)

(declare-fun b_and!140569 () Bool)

(assert (=> b!1816251 (= tp!512948 b_and!140569)))

(declare-fun b_free!50125 () Bool)

(declare-fun b_next!50829 () Bool)

(assert (=> b!1816251 (= b_free!50125 (not b_next!50829))))

(declare-fun tp!512949 () Bool)

(declare-fun b_and!140571 () Bool)

(assert (=> b!1816251 (= tp!512949 b_and!140571)))

(declare-fun b!1816257 () Bool)

(declare-fun b_free!50127 () Bool)

(declare-fun b_next!50831 () Bool)

(assert (=> b!1816257 (= b_free!50127 (not b_next!50831))))

(declare-fun tp!512945 () Bool)

(declare-fun b_and!140573 () Bool)

(assert (=> b!1816257 (= tp!512945 b_and!140573)))

(declare-fun b_free!50129 () Bool)

(declare-fun b_next!50833 () Bool)

(assert (=> b!1816257 (= b_free!50129 (not b_next!50833))))

(declare-fun tp!512950 () Bool)

(declare-fun b_and!140575 () Bool)

(assert (=> b!1816257 (= tp!512950 b_and!140575)))

(declare-fun b!1816250 () Bool)

(declare-fun res!816601 () Bool)

(declare-fun e!1160364 () Bool)

(assert (=> b!1816250 (=> (not res!816601) (not e!1160364))))

(declare-datatypes ((List!19901 0))(
  ( (Nil!19831) (Cons!19831 (h!25232 (_ BitVec 16)) (t!169570 List!19901)) )
))
(declare-datatypes ((TokenValue!3655 0))(
  ( (FloatLiteralValue!7310 (text!26030 List!19901)) (TokenValueExt!3654 (__x!12612 Int)) (Broken!18275 (value!111244 List!19901)) (Object!3724) (End!3655) (Def!3655) (Underscore!3655) (Match!3655) (Else!3655) (Error!3655) (Case!3655) (If!3655) (Extends!3655) (Abstract!3655) (Class!3655) (Val!3655) (DelimiterValue!7310 (del!3715 List!19901)) (KeywordValue!3661 (value!111245 List!19901)) (CommentValue!7310 (value!111246 List!19901)) (WhitespaceValue!7310 (value!111247 List!19901)) (IndentationValue!3655 (value!111248 List!19901)) (String!22606) (Int32!3655) (Broken!18276 (value!111249 List!19901)) (Boolean!3656) (Unit!34526) (OperatorValue!3658 (op!3715 List!19901)) (IdentifierValue!7310 (value!111250 List!19901)) (IdentifierValue!7311 (value!111251 List!19901)) (WhitespaceValue!7311 (value!111252 List!19901)) (True!7310) (False!7310) (Broken!18277 (value!111253 List!19901)) (Broken!18278 (value!111254 List!19901)) (True!7311) (RightBrace!3655) (RightBracket!3655) (Colon!3655) (Null!3655) (Comma!3655) (LeftBracket!3655) (False!7311) (LeftBrace!3655) (ImaginaryLiteralValue!3655 (text!26031 List!19901)) (StringLiteralValue!10965 (value!111255 List!19901)) (EOFValue!3655 (value!111256 List!19901)) (IdentValue!3655 (value!111257 List!19901)) (DelimiterValue!7311 (value!111258 List!19901)) (DedentValue!3655 (value!111259 List!19901)) (NewLineValue!3655 (value!111260 List!19901)) (IntegerValue!10965 (value!111261 (_ BitVec 32)) (text!26032 List!19901)) (IntegerValue!10966 (value!111262 Int) (text!26033 List!19901)) (Times!3655) (Or!3655) (Equal!3655) (Minus!3655) (Broken!18279 (value!111263 List!19901)) (And!3655) (Div!3655) (LessEqual!3655) (Mod!3655) (Concat!8548) (Not!3655) (Plus!3655) (SpaceValue!3655 (value!111264 List!19901)) (IntegerValue!10967 (value!111265 Int) (text!26034 List!19901)) (StringLiteralValue!10966 (text!26035 List!19901)) (FloatLiteralValue!7311 (text!26036 List!19901)) (BytesLiteralValue!3655 (value!111266 List!19901)) (CommentValue!7311 (value!111267 List!19901)) (StringLiteralValue!10967 (value!111268 List!19901)) (ErrorTokenValue!3655 (msg!3716 List!19901)) )
))
(declare-datatypes ((C!9960 0))(
  ( (C!9961 (val!5576 Int)) )
))
(declare-datatypes ((List!19902 0))(
  ( (Nil!19832) (Cons!19832 (h!25233 C!9960) (t!169571 List!19902)) )
))
(declare-datatypes ((IArray!13199 0))(
  ( (IArray!13200 (innerList!6657 List!19902)) )
))
(declare-datatypes ((Conc!6597 0))(
  ( (Node!6597 (left!15913 Conc!6597) (right!16243 Conc!6597) (csize!13424 Int) (cheight!6808 Int)) (Leaf!9600 (xs!9473 IArray!13199) (csize!13425 Int)) (Empty!6597) )
))
(declare-datatypes ((BalanceConc!13138 0))(
  ( (BalanceConc!13139 (c!296614 Conc!6597)) )
))
(declare-datatypes ((TokenValueInjection!6970 0))(
  ( (TokenValueInjection!6971 (toValue!5100 Int) (toChars!4959 Int)) )
))
(declare-datatypes ((Regex!4893 0))(
  ( (ElementMatch!4893 (c!296615 C!9960)) (Concat!8549 (regOne!10298 Regex!4893) (regTwo!10298 Regex!4893)) (EmptyExpr!4893) (Star!4893 (reg!5222 Regex!4893)) (EmptyLang!4893) (Union!4893 (regOne!10299 Regex!4893) (regTwo!10299 Regex!4893)) )
))
(declare-datatypes ((String!22607 0))(
  ( (String!22608 (value!111269 String)) )
))
(declare-datatypes ((Rule!6930 0))(
  ( (Rule!6931 (regex!3565 Regex!4893) (tag!3979 String!22607) (isSeparator!3565 Bool) (transformation!3565 TokenValueInjection!6970)) )
))
(declare-datatypes ((List!19903 0))(
  ( (Nil!19833) (Cons!19833 (h!25234 Rule!6930) (t!169572 List!19903)) )
))
(declare-fun rules!4538 () List!19903)

(declare-fun isEmpty!12545 (List!19903) Bool)

(assert (=> b!1816250 (= res!816601 (not (isEmpty!12545 rules!4538)))))

(declare-fun e!1160361 () Bool)

(assert (=> b!1816251 (= e!1160361 (and tp!512948 tp!512949))))

(declare-fun b!1816252 () Bool)

(declare-fun res!816602 () Bool)

(assert (=> b!1816252 (=> (not res!816602) (not e!1160364))))

(declare-fun rule!559 () Rule!6930)

(declare-fun contains!3601 (List!19903 Rule!6930) Bool)

(assert (=> b!1816252 (= res!816602 (contains!3601 rules!4538 rule!559))))

(declare-fun b!1816253 () Bool)

(assert (=> b!1816253 (= e!1160364 false)))

(declare-fun lt!705988 () Bool)

(declare-datatypes ((LexerInterface!3194 0))(
  ( (LexerInterfaceExt!3191 (__x!12613 Int)) (Lexer!3192) )
))
(declare-fun thiss!28068 () LexerInterface!3194)

(declare-fun rulesValidInductive!1216 (LexerInterface!3194 List!19903) Bool)

(assert (=> b!1816253 (= lt!705988 (rulesValidInductive!1216 thiss!28068 rules!4538))))

(declare-fun e!1160366 () Bool)

(declare-fun b!1816254 () Bool)

(declare-fun e!1160367 () Bool)

(declare-fun tp!512946 () Bool)

(declare-fun inv!25852 (String!22607) Bool)

(declare-fun inv!25854 (TokenValueInjection!6970) Bool)

(assert (=> b!1816254 (= e!1160366 (and tp!512946 (inv!25852 (tag!3979 rule!559)) (inv!25854 (transformation!3565 rule!559)) e!1160367))))

(declare-fun tp!512944 () Bool)

(declare-fun e!1160368 () Bool)

(declare-fun b!1816255 () Bool)

(assert (=> b!1816255 (= e!1160368 (and tp!512944 (inv!25852 (tag!3979 (h!25234 rules!4538))) (inv!25854 (transformation!3565 (h!25234 rules!4538))) e!1160361))))

(declare-fun res!816599 () Bool)

(assert (=> start!179702 (=> (not res!816599) (not e!1160364))))

(get-info :version)

(assert (=> start!179702 (= res!816599 ((_ is Lexer!3192) thiss!28068))))

(assert (=> start!179702 e!1160364))

(assert (=> start!179702 true))

(declare-fun e!1160365 () Bool)

(assert (=> start!179702 e!1160365))

(assert (=> start!179702 e!1160366))

(declare-fun b!1816256 () Bool)

(declare-fun res!816600 () Bool)

(assert (=> b!1816256 (=> (not res!816600) (not e!1160364))))

(declare-fun rulesInvariant!2863 (LexerInterface!3194 List!19903) Bool)

(assert (=> b!1816256 (= res!816600 (rulesInvariant!2863 thiss!28068 rules!4538))))

(assert (=> b!1816257 (= e!1160367 (and tp!512945 tp!512950))))

(declare-fun b!1816258 () Bool)

(declare-fun tp!512947 () Bool)

(assert (=> b!1816258 (= e!1160365 (and e!1160368 tp!512947))))

(assert (= (and start!179702 res!816599) b!1816250))

(assert (= (and b!1816250 res!816601) b!1816256))

(assert (= (and b!1816256 res!816600) b!1816252))

(assert (= (and b!1816252 res!816602) b!1816253))

(assert (= b!1816255 b!1816251))

(assert (= b!1816258 b!1816255))

(assert (= (and start!179702 ((_ is Cons!19833) rules!4538)) b!1816258))

(assert (= b!1816254 b!1816257))

(assert (= start!179702 b!1816254))

(declare-fun m!2245905 () Bool)

(assert (=> b!1816250 m!2245905))

(declare-fun m!2245907 () Bool)

(assert (=> b!1816255 m!2245907))

(declare-fun m!2245909 () Bool)

(assert (=> b!1816255 m!2245909))

(declare-fun m!2245911 () Bool)

(assert (=> b!1816256 m!2245911))

(declare-fun m!2245913 () Bool)

(assert (=> b!1816252 m!2245913))

(declare-fun m!2245915 () Bool)

(assert (=> b!1816254 m!2245915))

(declare-fun m!2245917 () Bool)

(assert (=> b!1816254 m!2245917))

(declare-fun m!2245919 () Bool)

(assert (=> b!1816253 m!2245919))

(check-sat (not b!1816255) (not b_next!50833) (not b!1816256) b_and!140571 (not b!1816252) b_and!140569 (not b!1816253) (not b!1816250) (not b_next!50827) (not b!1816254) (not b_next!50829) (not b_next!50831) b_and!140575 b_and!140573 (not b!1816258))
(check-sat (not b_next!50833) b_and!140571 b_and!140569 (not b_next!50827) (not b_next!50829) (not b_next!50831) b_and!140575 b_and!140573)
