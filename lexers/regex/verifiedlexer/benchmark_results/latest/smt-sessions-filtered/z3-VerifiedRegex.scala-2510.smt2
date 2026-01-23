; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132832 () Bool)

(assert start!132832)

(declare-fun b!1434044 () Bool)

(declare-fun e!915433 () Bool)

(declare-fun e!915436 () Bool)

(assert (=> b!1434044 (= e!915433 (not e!915436))))

(declare-fun res!649416 () Bool)

(assert (=> b!1434044 (=> res!649416 e!915436)))

(declare-datatypes ((String!17800 0))(
  ( (String!17801 (value!84263 String)) )
))
(declare-datatypes ((C!8044 0))(
  ( (C!8045 (val!4592 Int)) )
))
(declare-datatypes ((List!14978 0))(
  ( (Nil!14912) (Cons!14912 (h!20313 C!8044) (t!127221 List!14978)) )
))
(declare-datatypes ((IArray!10133 0))(
  ( (IArray!10134 (innerList!5124 List!14978)) )
))
(declare-datatypes ((Conc!5064 0))(
  ( (Node!5064 (left!12708 Conc!5064) (right!13038 Conc!5064) (csize!10358 Int) (cheight!5275 Int)) (Leaf!7575 (xs!7797 IArray!10133) (csize!10359 Int)) (Empty!5064) )
))
(declare-datatypes ((BalanceConc!10068 0))(
  ( (BalanceConc!10069 (c!235640 Conc!5064)) )
))
(declare-datatypes ((List!14979 0))(
  ( (Nil!14913) (Cons!14913 (h!20314 (_ BitVec 16)) (t!127222 List!14979)) )
))
(declare-datatypes ((TokenValue!2709 0))(
  ( (FloatLiteralValue!5418 (text!19408 List!14979)) (TokenValueExt!2708 (__x!9216 Int)) (Broken!13545 (value!84264 List!14979)) (Object!2774) (End!2709) (Def!2709) (Underscore!2709) (Match!2709) (Else!2709) (Error!2709) (Case!2709) (If!2709) (Extends!2709) (Abstract!2709) (Class!2709) (Val!2709) (DelimiterValue!5418 (del!2769 List!14979)) (KeywordValue!2715 (value!84265 List!14979)) (CommentValue!5418 (value!84266 List!14979)) (WhitespaceValue!5418 (value!84267 List!14979)) (IndentationValue!2709 (value!84268 List!14979)) (String!17802) (Int32!2709) (Broken!13546 (value!84269 List!14979)) (Boolean!2710) (Unit!22756) (OperatorValue!2712 (op!2769 List!14979)) (IdentifierValue!5418 (value!84270 List!14979)) (IdentifierValue!5419 (value!84271 List!14979)) (WhitespaceValue!5419 (value!84272 List!14979)) (True!5418) (False!5418) (Broken!13547 (value!84273 List!14979)) (Broken!13548 (value!84274 List!14979)) (True!5419) (RightBrace!2709) (RightBracket!2709) (Colon!2709) (Null!2709) (Comma!2709) (LeftBracket!2709) (False!5419) (LeftBrace!2709) (ImaginaryLiteralValue!2709 (text!19409 List!14979)) (StringLiteralValue!8127 (value!84275 List!14979)) (EOFValue!2709 (value!84276 List!14979)) (IdentValue!2709 (value!84277 List!14979)) (DelimiterValue!5419 (value!84278 List!14979)) (DedentValue!2709 (value!84279 List!14979)) (NewLineValue!2709 (value!84280 List!14979)) (IntegerValue!8127 (value!84281 (_ BitVec 32)) (text!19410 List!14979)) (IntegerValue!8128 (value!84282 Int) (text!19411 List!14979)) (Times!2709) (Or!2709) (Equal!2709) (Minus!2709) (Broken!13549 (value!84283 List!14979)) (And!2709) (Div!2709) (LessEqual!2709) (Mod!2709) (Concat!6642) (Not!2709) (Plus!2709) (SpaceValue!2709 (value!84284 List!14979)) (IntegerValue!8129 (value!84285 Int) (text!19412 List!14979)) (StringLiteralValue!8128 (text!19413 List!14979)) (FloatLiteralValue!5419 (text!19414 List!14979)) (BytesLiteralValue!2709 (value!84286 List!14979)) (CommentValue!5419 (value!84287 List!14979)) (StringLiteralValue!8129 (value!84288 List!14979)) (ErrorTokenValue!2709 (msg!2770 List!14979)) )
))
(declare-datatypes ((Regex!3933 0))(
  ( (ElementMatch!3933 (c!235641 C!8044)) (Concat!6643 (regOne!8378 Regex!3933) (regTwo!8378 Regex!3933)) (EmptyExpr!3933) (Star!3933 (reg!4262 Regex!3933)) (EmptyLang!3933) (Union!3933 (regOne!8379 Regex!3933) (regTwo!8379 Regex!3933)) )
))
(declare-datatypes ((TokenValueInjection!5078 0))(
  ( (TokenValueInjection!5079 (toValue!3922 Int) (toChars!3781 Int)) )
))
(declare-datatypes ((Rule!5038 0))(
  ( (Rule!5039 (regex!2619 Regex!3933) (tag!2881 String!17800) (isSeparator!2619 Bool) (transformation!2619 TokenValueInjection!5078)) )
))
(declare-datatypes ((Token!4900 0))(
  ( (Token!4901 (value!84289 TokenValue!2709) (rule!4382 Rule!5038) (size!12231 Int) (originalCharacters!3481 List!14978)) )
))
(declare-datatypes ((List!14980 0))(
  ( (Nil!14914) (Cons!14914 (h!20315 Token!4900) (t!127223 List!14980)) )
))
(declare-datatypes ((IArray!10135 0))(
  ( (IArray!10136 (innerList!5125 List!14980)) )
))
(declare-datatypes ((Conc!5065 0))(
  ( (Node!5065 (left!12709 Conc!5065) (right!13039 Conc!5065) (csize!10360 Int) (cheight!5276 Int)) (Leaf!7576 (xs!7798 IArray!10135) (csize!10361 Int)) (Empty!5065) )
))
(declare-datatypes ((BalanceConc!10070 0))(
  ( (BalanceConc!10071 (c!235642 Conc!5065)) )
))
(declare-datatypes ((List!14981 0))(
  ( (Nil!14915) (Cons!14915 (h!20316 Rule!5038) (t!127224 List!14981)) )
))
(declare-datatypes ((PrintableTokens!1020 0))(
  ( (PrintableTokens!1021 (rules!11400 List!14981) (tokens!1980 BalanceConc!10070)) )
))
(declare-fun thiss!10022 () PrintableTokens!1020)

(declare-fun lt!489092 () Token!4900)

(declare-fun lt!489093 () Token!4900)

(declare-datatypes ((LexerInterface!2283 0))(
  ( (LexerInterfaceExt!2280 (__x!9217 Int)) (Lexer!2281) )
))
(declare-fun separableTokensPredicate!518 (LexerInterface!2283 Token!4900 Token!4900 List!14981) Bool)

(assert (=> b!1434044 (= res!649416 (separableTokensPredicate!518 Lexer!2281 lt!489092 lt!489093 (rules!11400 thiss!10022)))))

(declare-fun rulesProduceIndividualToken!1216 (LexerInterface!2283 List!14981 Token!4900) Bool)

(assert (=> b!1434044 (rulesProduceIndividualToken!1216 Lexer!2281 (rules!11400 thiss!10022) lt!489093)))

(declare-datatypes ((Unit!22757 0))(
  ( (Unit!22758) )
))
(declare-fun lt!489096 () Unit!22757)

(declare-fun lt!489099 () List!14980)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!401 (LexerInterface!2283 List!14981 List!14980 Token!4900) Unit!22757)

(assert (=> b!1434044 (= lt!489096 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!401 Lexer!2281 (rules!11400 thiss!10022) lt!489099 lt!489093))))

(declare-fun other!32 () PrintableTokens!1020)

(declare-fun head!2903 (BalanceConc!10070) Token!4900)

(assert (=> b!1434044 (= lt!489093 (head!2903 (tokens!1980 other!32)))))

(declare-fun list!5928 (BalanceConc!10070) List!14980)

(assert (=> b!1434044 (= lt!489099 (list!5928 (tokens!1980 other!32)))))

(assert (=> b!1434044 (rulesProduceIndividualToken!1216 Lexer!2281 (rules!11400 thiss!10022) lt!489092)))

(declare-fun lt!489097 () Unit!22757)

(declare-fun lt!489095 () List!14980)

(assert (=> b!1434044 (= lt!489097 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!401 Lexer!2281 (rules!11400 thiss!10022) lt!489095 lt!489092))))

(declare-fun last!173 (BalanceConc!10070) Token!4900)

(assert (=> b!1434044 (= lt!489092 (last!173 (tokens!1980 thiss!10022)))))

(assert (=> b!1434044 (= lt!489095 (list!5928 (tokens!1980 thiss!10022)))))

(declare-fun b!1434045 () Bool)

(declare-fun e!915434 () Bool)

(declare-fun e!915435 () Bool)

(declare-fun tp!406343 () Bool)

(declare-fun inv!19810 (BalanceConc!10070) Bool)

(assert (=> b!1434045 (= e!915434 (and tp!406343 (inv!19810 (tokens!1980 other!32)) e!915435))))

(declare-fun b!1434046 () Bool)

(declare-fun e!915437 () Bool)

(declare-fun tp!406342 () Bool)

(declare-fun inv!19811 (Conc!5065) Bool)

(assert (=> b!1434046 (= e!915437 (and (inv!19811 (c!235642 (tokens!1980 thiss!10022))) tp!406342))))

(declare-fun b!1434047 () Bool)

(declare-fun e!915438 () Bool)

(assert (=> b!1434047 (= e!915438 false)))

(declare-fun b!1434049 () Bool)

(declare-fun res!649411 () Bool)

(assert (=> b!1434049 (=> (not res!649411) (not e!915433))))

(declare-fun isEmpty!9265 (BalanceConc!10070) Bool)

(assert (=> b!1434049 (= res!649411 (not (isEmpty!9265 (tokens!1980 thiss!10022))))))

(declare-fun b!1434050 () Bool)

(assert (=> b!1434050 (= e!915436 e!915438)))

(declare-fun res!649414 () Bool)

(assert (=> b!1434050 (=> res!649414 e!915438)))

(declare-fun lt!489094 () PrintableTokens!1020)

(assert (=> b!1434050 (= res!649414 (not (= (rules!11400 lt!489094) (rules!11400 thiss!10022))))))

(declare-datatypes ((Option!2847 0))(
  ( (None!2846) (Some!2846 (v!22348 PrintableTokens!1020)) )
))
(declare-fun get!4565 (Option!2847) PrintableTokens!1020)

(assert (=> b!1434050 (= lt!489094 (get!4565 None!2846))))

(declare-fun b!1434051 () Bool)

(declare-fun res!649417 () Bool)

(assert (=> b!1434051 (=> res!649417 e!915436)))

(assert (=> b!1434051 (= res!649417 true)))

(declare-fun e!915432 () Bool)

(declare-fun tp!406344 () Bool)

(declare-fun b!1434052 () Bool)

(assert (=> b!1434052 (= e!915432 (and tp!406344 (inv!19810 (tokens!1980 thiss!10022)) e!915437))))

(declare-fun b!1434053 () Bool)

(declare-fun res!649412 () Bool)

(assert (=> b!1434053 (=> res!649412 e!915438)))

(declare-fun ++!3998 (List!14980 List!14980) List!14980)

(assert (=> b!1434053 (= res!649412 (not (= (list!5928 (tokens!1980 lt!489094)) (++!3998 lt!489095 lt!489099))))))

(declare-fun b!1434054 () Bool)

(declare-fun tp!406341 () Bool)

(assert (=> b!1434054 (= e!915435 (and (inv!19811 (c!235642 (tokens!1980 other!32))) tp!406341))))

(declare-fun res!649413 () Bool)

(declare-fun e!915439 () Bool)

(assert (=> start!132832 (=> (not res!649413) (not e!915439))))

(assert (=> start!132832 (= res!649413 (= (rules!11400 thiss!10022) (rules!11400 other!32)))))

(assert (=> start!132832 e!915439))

(declare-fun inv!19812 (PrintableTokens!1020) Bool)

(assert (=> start!132832 (and (inv!19812 thiss!10022) e!915432)))

(assert (=> start!132832 (and (inv!19812 other!32) e!915434)))

(declare-fun b!1434048 () Bool)

(assert (=> b!1434048 (= e!915439 e!915433)))

(declare-fun res!649415 () Bool)

(assert (=> b!1434048 (=> (not res!649415) (not e!915433))))

(assert (=> b!1434048 (= res!649415 (not (isEmpty!9265 (tokens!1980 other!32))))))

(declare-fun lt!489098 () Unit!22757)

(declare-fun lemmaInvariant!315 (PrintableTokens!1020) Unit!22757)

(assert (=> b!1434048 (= lt!489098 (lemmaInvariant!315 thiss!10022))))

(declare-fun lt!489100 () Unit!22757)

(assert (=> b!1434048 (= lt!489100 (lemmaInvariant!315 other!32))))

(assert (= (and start!132832 res!649413) b!1434048))

(assert (= (and b!1434048 res!649415) b!1434049))

(assert (= (and b!1434049 res!649411) b!1434044))

(assert (= (and b!1434044 (not res!649416)) b!1434051))

(assert (= (and b!1434051 (not res!649417)) b!1434050))

(assert (= (and b!1434050 (not res!649414)) b!1434053))

(assert (= (and b!1434053 (not res!649412)) b!1434047))

(assert (= b!1434052 b!1434046))

(assert (= start!132832 b!1434052))

(assert (= b!1434045 b!1434054))

(assert (= start!132832 b!1434045))

(declare-fun m!1636889 () Bool)

(assert (=> b!1434049 m!1636889))

(declare-fun m!1636891 () Bool)

(assert (=> b!1434054 m!1636891))

(declare-fun m!1636893 () Bool)

(assert (=> b!1434045 m!1636893))

(declare-fun m!1636895 () Bool)

(assert (=> b!1434048 m!1636895))

(declare-fun m!1636897 () Bool)

(assert (=> b!1434048 m!1636897))

(declare-fun m!1636899 () Bool)

(assert (=> b!1434048 m!1636899))

(declare-fun m!1636901 () Bool)

(assert (=> b!1434050 m!1636901))

(declare-fun m!1636903 () Bool)

(assert (=> b!1434053 m!1636903))

(declare-fun m!1636905 () Bool)

(assert (=> b!1434053 m!1636905))

(declare-fun m!1636907 () Bool)

(assert (=> b!1434046 m!1636907))

(declare-fun m!1636909 () Bool)

(assert (=> b!1434044 m!1636909))

(declare-fun m!1636911 () Bool)

(assert (=> b!1434044 m!1636911))

(declare-fun m!1636913 () Bool)

(assert (=> b!1434044 m!1636913))

(declare-fun m!1636915 () Bool)

(assert (=> b!1434044 m!1636915))

(declare-fun m!1636917 () Bool)

(assert (=> b!1434044 m!1636917))

(declare-fun m!1636919 () Bool)

(assert (=> b!1434044 m!1636919))

(declare-fun m!1636921 () Bool)

(assert (=> b!1434044 m!1636921))

(declare-fun m!1636923 () Bool)

(assert (=> b!1434044 m!1636923))

(declare-fun m!1636925 () Bool)

(assert (=> b!1434044 m!1636925))

(declare-fun m!1636927 () Bool)

(assert (=> start!132832 m!1636927))

(declare-fun m!1636929 () Bool)

(assert (=> start!132832 m!1636929))

(declare-fun m!1636931 () Bool)

(assert (=> b!1434052 m!1636931))

(check-sat (not b!1434054) (not b!1434052) (not b!1434046) (not b!1434045) (not b!1434044) (not b!1434053) (not b!1434050) (not b!1434049) (not start!132832) (not b!1434048))
(check-sat)
