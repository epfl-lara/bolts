; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262604 () Bool)

(assert start!262604)

(declare-fun b!2705038 () Bool)

(declare-fun b_free!76337 () Bool)

(declare-fun b_next!77041 () Bool)

(assert (=> b!2705038 (= b_free!76337 (not b_next!77041))))

(declare-fun tp!855545 () Bool)

(declare-fun b_and!199769 () Bool)

(assert (=> b!2705038 (= tp!855545 b_and!199769)))

(declare-fun b_free!76339 () Bool)

(declare-fun b_next!77043 () Bool)

(assert (=> b!2705038 (= b_free!76339 (not b_next!77043))))

(declare-fun tp!855549 () Bool)

(declare-fun b_and!199771 () Bool)

(assert (=> b!2705038 (= tp!855549 b_and!199771)))

(declare-fun b!2705034 () Bool)

(declare-fun res!1135907 () Bool)

(declare-fun e!1705519 () Bool)

(assert (=> b!2705034 (=> (not res!1135907) (not e!1705519))))

(declare-datatypes ((List!31300 0))(
  ( (Nil!31200) (Cons!31200 (h!36620 (_ BitVec 16)) (t!225738 List!31300)) )
))
(declare-datatypes ((TokenValue!4983 0))(
  ( (FloatLiteralValue!9966 (text!35326 List!31300)) (TokenValueExt!4982 (__x!20101 Int)) (Broken!24915 (value!153276 List!31300)) (Object!5082) (End!4983) (Def!4983) (Underscore!4983) (Match!4983) (Else!4983) (Error!4983) (Case!4983) (If!4983) (Extends!4983) (Abstract!4983) (Class!4983) (Val!4983) (DelimiterValue!9966 (del!5043 List!31300)) (KeywordValue!4989 (value!153277 List!31300)) (CommentValue!9966 (value!153278 List!31300)) (WhitespaceValue!9966 (value!153279 List!31300)) (IndentationValue!4983 (value!153280 List!31300)) (String!34814) (Int32!4983) (Broken!24916 (value!153281 List!31300)) (Boolean!4984) (Unit!45284) (OperatorValue!4986 (op!5043 List!31300)) (IdentifierValue!9966 (value!153282 List!31300)) (IdentifierValue!9967 (value!153283 List!31300)) (WhitespaceValue!9967 (value!153284 List!31300)) (True!9966) (False!9966) (Broken!24917 (value!153285 List!31300)) (Broken!24918 (value!153286 List!31300)) (True!9967) (RightBrace!4983) (RightBracket!4983) (Colon!4983) (Null!4983) (Comma!4983) (LeftBracket!4983) (False!9967) (LeftBrace!4983) (ImaginaryLiteralValue!4983 (text!35327 List!31300)) (StringLiteralValue!14949 (value!153287 List!31300)) (EOFValue!4983 (value!153288 List!31300)) (IdentValue!4983 (value!153289 List!31300)) (DelimiterValue!9967 (value!153290 List!31300)) (DedentValue!4983 (value!153291 List!31300)) (NewLineValue!4983 (value!153292 List!31300)) (IntegerValue!14949 (value!153293 (_ BitVec 32)) (text!35328 List!31300)) (IntegerValue!14950 (value!153294 Int) (text!35329 List!31300)) (Times!4983) (Or!4983) (Equal!4983) (Minus!4983) (Broken!24919 (value!153295 List!31300)) (And!4983) (Div!4983) (LessEqual!4983) (Mod!4983) (Concat!12896) (Not!4983) (Plus!4983) (SpaceValue!4983 (value!153296 List!31300)) (IntegerValue!14951 (value!153297 Int) (text!35330 List!31300)) (StringLiteralValue!14950 (text!35331 List!31300)) (FloatLiteralValue!9967 (text!35332 List!31300)) (BytesLiteralValue!4983 (value!153298 List!31300)) (CommentValue!9967 (value!153299 List!31300)) (StringLiteralValue!14951 (value!153300 List!31300)) (ErrorTokenValue!4983 (msg!5044 List!31300)) )
))
(declare-datatypes ((C!15984 0))(
  ( (C!15985 (val!9926 Int)) )
))
(declare-datatypes ((List!31301 0))(
  ( (Nil!31201) (Cons!31201 (h!36621 C!15984) (t!225739 List!31301)) )
))
(declare-datatypes ((IArray!19505 0))(
  ( (IArray!19506 (innerList!9810 List!31301)) )
))
(declare-datatypes ((Conc!9750 0))(
  ( (Node!9750 (left!24004 Conc!9750) (right!24334 Conc!9750) (csize!19730 Int) (cheight!9961 Int)) (Leaf!14875 (xs!12798 IArray!19505) (csize!19731 Int)) (Empty!9750) )
))
(declare-datatypes ((BalanceConc!19114 0))(
  ( (BalanceConc!19115 (c!436481 Conc!9750)) )
))
(declare-datatypes ((Regex!7913 0))(
  ( (ElementMatch!7913 (c!436482 C!15984)) (Concat!12897 (regOne!16338 Regex!7913) (regTwo!16338 Regex!7913)) (EmptyExpr!7913) (Star!7913 (reg!8242 Regex!7913)) (EmptyLang!7913) (Union!7913 (regOne!16339 Regex!7913) (regTwo!16339 Regex!7913)) )
))
(declare-datatypes ((String!34815 0))(
  ( (String!34816 (value!153301 String)) )
))
(declare-datatypes ((TokenValueInjection!9406 0))(
  ( (TokenValueInjection!9407 (toValue!6723 Int) (toChars!6582 Int)) )
))
(declare-datatypes ((Rule!9322 0))(
  ( (Rule!9323 (regex!4761 Regex!7913) (tag!5265 String!34815) (isSeparator!4761 Bool) (transformation!4761 TokenValueInjection!9406)) )
))
(declare-datatypes ((List!31302 0))(
  ( (Nil!31202) (Cons!31202 (h!36622 Rule!9322) (t!225740 List!31302)) )
))
(declare-fun rules!1182 () List!31302)

(declare-fun isEmpty!17770 (List!31302) Bool)

(assert (=> b!2705034 (= res!1135907 (not (isEmpty!17770 rules!1182)))))

(declare-fun b!2705035 () Bool)

(declare-fun e!1705513 () Bool)

(declare-fun e!1705518 () Bool)

(declare-fun tp!855547 () Bool)

(assert (=> b!2705035 (= e!1705513 (and e!1705518 tp!855547))))

(declare-fun b!2705036 () Bool)

(declare-fun e!1705517 () Bool)

(declare-fun totalInput!328 () BalanceConc!19114)

(declare-fun tp!855550 () Bool)

(declare-fun inv!42275 (Conc!9750) Bool)

(assert (=> b!2705036 (= e!1705517 (and (inv!42275 (c!436481 totalInput!328)) tp!855550))))

(declare-fun b!2705037 () Bool)

(declare-fun e!1705514 () Bool)

(declare-fun input!603 () BalanceConc!19114)

(declare-fun tp!855548 () Bool)

(assert (=> b!2705037 (= e!1705514 (and (inv!42275 (c!436481 input!603)) tp!855548))))

(declare-fun e!1705512 () Bool)

(assert (=> b!2705038 (= e!1705512 (and tp!855545 tp!855549))))

(declare-fun b!2705039 () Bool)

(declare-fun res!1135906 () Bool)

(assert (=> b!2705039 (=> (not res!1135906) (not e!1705519))))

(declare-datatypes ((LexerInterface!4357 0))(
  ( (LexerInterfaceExt!4354 (__x!20102 Int)) (Lexer!4355) )
))
(declare-fun thiss!11556 () LexerInterface!4357)

(declare-fun rulesInvariant!3842 (LexerInterface!4357 List!31302) Bool)

(assert (=> b!2705039 (= res!1135906 (rulesInvariant!3842 thiss!11556 rules!1182))))

(declare-fun res!1135905 () Bool)

(assert (=> start!262604 (=> (not res!1135905) (not e!1705519))))

(get-info :version)

(assert (=> start!262604 (= res!1135905 ((_ is Lexer!4355) thiss!11556))))

(assert (=> start!262604 e!1705519))

(declare-fun treated!9 () BalanceConc!19114)

(declare-fun e!1705516 () Bool)

(declare-fun inv!42276 (BalanceConc!19114) Bool)

(assert (=> start!262604 (and (inv!42276 treated!9) e!1705516)))

(assert (=> start!262604 (and (inv!42276 input!603) e!1705514)))

(assert (=> start!262604 true))

(assert (=> start!262604 e!1705513))

(assert (=> start!262604 (and (inv!42276 totalInput!328) e!1705517)))

(declare-fun b!2705040 () Bool)

(assert (=> b!2705040 (= e!1705519 false)))

(declare-fun lt!956607 () List!31301)

(declare-fun lt!956608 () List!31301)

(declare-fun lt!956609 () List!31301)

(declare-fun ++!7675 (List!31301 List!31301) List!31301)

(assert (=> b!2705040 (= lt!956607 (++!7675 lt!956608 lt!956609))))

(declare-fun lt!956606 () List!31301)

(declare-fun list!11773 (BalanceConc!19114) List!31301)

(assert (=> b!2705040 (= lt!956606 (list!11773 totalInput!328))))

(assert (=> b!2705040 (= lt!956609 (list!11773 input!603))))

(assert (=> b!2705040 (= lt!956608 (list!11773 treated!9))))

(declare-fun b!2705041 () Bool)

(declare-fun tp!855546 () Bool)

(declare-fun inv!42271 (String!34815) Bool)

(declare-fun inv!42277 (TokenValueInjection!9406) Bool)

(assert (=> b!2705041 (= e!1705518 (and tp!855546 (inv!42271 (tag!5265 (h!36622 rules!1182))) (inv!42277 (transformation!4761 (h!36622 rules!1182))) e!1705512))))

(declare-fun b!2705042 () Bool)

(declare-fun tp!855551 () Bool)

(assert (=> b!2705042 (= e!1705516 (and (inv!42275 (c!436481 treated!9)) tp!855551))))

(assert (= (and start!262604 res!1135905) b!2705034))

(assert (= (and b!2705034 res!1135907) b!2705039))

(assert (= (and b!2705039 res!1135906) b!2705040))

(assert (= start!262604 b!2705042))

(assert (= start!262604 b!2705037))

(assert (= b!2705041 b!2705038))

(assert (= b!2705035 b!2705041))

(assert (= (and start!262604 ((_ is Cons!31202) rules!1182)) b!2705035))

(assert (= start!262604 b!2705036))

(declare-fun m!3094795 () Bool)

(assert (=> b!2705042 m!3094795))

(declare-fun m!3094797 () Bool)

(assert (=> start!262604 m!3094797))

(declare-fun m!3094799 () Bool)

(assert (=> start!262604 m!3094799))

(declare-fun m!3094801 () Bool)

(assert (=> start!262604 m!3094801))

(declare-fun m!3094803 () Bool)

(assert (=> b!2705037 m!3094803))

(declare-fun m!3094805 () Bool)

(assert (=> b!2705040 m!3094805))

(declare-fun m!3094807 () Bool)

(assert (=> b!2705040 m!3094807))

(declare-fun m!3094809 () Bool)

(assert (=> b!2705040 m!3094809))

(declare-fun m!3094811 () Bool)

(assert (=> b!2705040 m!3094811))

(declare-fun m!3094813 () Bool)

(assert (=> b!2705036 m!3094813))

(declare-fun m!3094815 () Bool)

(assert (=> b!2705034 m!3094815))

(declare-fun m!3094817 () Bool)

(assert (=> b!2705039 m!3094817))

(declare-fun m!3094819 () Bool)

(assert (=> b!2705041 m!3094819))

(declare-fun m!3094821 () Bool)

(assert (=> b!2705041 m!3094821))

(check-sat (not b!2705037) (not b!2705036) (not b!2705042) (not b!2705040) (not b!2705035) b_and!199771 (not b_next!77041) (not b_next!77043) (not b!2705041) b_and!199769 (not b!2705034) (not b!2705039) (not start!262604))
(check-sat b_and!199771 b_and!199769 (not b_next!77043) (not b_next!77041))
