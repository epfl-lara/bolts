; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510794 () Bool)

(assert start!510794)

(declare-fun b!4881996 () Bool)

(declare-fun b_free!130943 () Bool)

(declare-fun b_next!131733 () Bool)

(assert (=> b!4881996 (= b_free!130943 (not b_next!131733))))

(declare-fun tp!1373538 () Bool)

(declare-fun b_and!343775 () Bool)

(assert (=> b!4881996 (= tp!1373538 b_and!343775)))

(declare-fun b_free!130945 () Bool)

(declare-fun b_next!131735 () Bool)

(assert (=> b!4881996 (= b_free!130945 (not b_next!131735))))

(declare-fun tp!1373537 () Bool)

(declare-fun b_and!343777 () Bool)

(assert (=> b!4881996 (= tp!1373537 b_and!343777)))

(declare-fun res!2084020 () Bool)

(declare-fun e!3051125 () Bool)

(assert (=> start!510794 (=> (not res!2084020) (not e!3051125))))

(declare-datatypes ((LexerInterface!7661 0))(
  ( (LexerInterfaceExt!7658 (__x!34051 Int)) (Lexer!7659) )
))
(declare-fun thiss!14805 () LexerInterface!7661)

(assert (=> start!510794 (= res!2084020 (is-Lexer!7659 thiss!14805))))

(assert (=> start!510794 e!3051125))

(assert (=> start!510794 true))

(declare-fun e!3051133 () Bool)

(assert (=> start!510794 e!3051133))

(declare-datatypes ((C!26486 0))(
  ( (C!26487 (val!22577 Int)) )
))
(declare-datatypes ((List!56212 0))(
  ( (Nil!56088) (Cons!56088 (h!62536 C!26486) (t!364858 List!56212)) )
))
(declare-datatypes ((IArray!29335 0))(
  ( (IArray!29336 (innerList!14725 List!56212)) )
))
(declare-datatypes ((Conc!14637 0))(
  ( (Node!14637 (left!40750 Conc!14637) (right!41080 Conc!14637) (csize!29504 Int) (cheight!14848 Int)) (Leaf!24389 (xs!17953 IArray!29335) (csize!29505 Int)) (Empty!14637) )
))
(declare-datatypes ((BalanceConc!28704 0))(
  ( (BalanceConc!28705 (c!830340 Conc!14637)) )
))
(declare-fun input!1236 () BalanceConc!28704)

(declare-fun e!3051129 () Bool)

(declare-fun inv!72121 (BalanceConc!28704) Bool)

(assert (=> start!510794 (and (inv!72121 input!1236) e!3051129)))

(declare-fun b!4881986 () Bool)

(declare-fun tp!1373534 () Bool)

(declare-fun inv!72122 (Conc!14637) Bool)

(assert (=> b!4881986 (= e!3051129 (and (inv!72122 (c!830340 input!1236)) tp!1373534))))

(declare-fun b!4881987 () Bool)

(declare-fun e!3051126 () Bool)

(assert (=> b!4881987 (= e!3051125 (not e!3051126))))

(declare-fun res!2084025 () Bool)

(assert (=> b!4881987 (=> res!2084025 e!3051126)))

(declare-datatypes ((String!63338 0))(
  ( (String!63339 (value!259096 String)) )
))
(declare-datatypes ((List!56213 0))(
  ( (Nil!56089) (Cons!56089 (h!62537 (_ BitVec 16)) (t!364859 List!56213)) )
))
(declare-datatypes ((TokenValue!8379 0))(
  ( (FloatLiteralValue!16758 (text!59098 List!56213)) (TokenValueExt!8378 (__x!34052 Int)) (Broken!41895 (value!259097 List!56213)) (Object!8502) (End!8379) (Def!8379) (Underscore!8379) (Match!8379) (Else!8379) (Error!8379) (Case!8379) (If!8379) (Extends!8379) (Abstract!8379) (Class!8379) (Val!8379) (DelimiterValue!16758 (del!8439 List!56213)) (KeywordValue!8385 (value!259098 List!56213)) (CommentValue!16758 (value!259099 List!56213)) (WhitespaceValue!16758 (value!259100 List!56213)) (IndentationValue!8379 (value!259101 List!56213)) (String!63340) (Int32!8379) (Broken!41896 (value!259102 List!56213)) (Boolean!8380) (Unit!146078) (OperatorValue!8382 (op!8439 List!56213)) (IdentifierValue!16758 (value!259103 List!56213)) (IdentifierValue!16759 (value!259104 List!56213)) (WhitespaceValue!16759 (value!259105 List!56213)) (True!16758) (False!16758) (Broken!41897 (value!259106 List!56213)) (Broken!41898 (value!259107 List!56213)) (True!16759) (RightBrace!8379) (RightBracket!8379) (Colon!8379) (Null!8379) (Comma!8379) (LeftBracket!8379) (False!16759) (LeftBrace!8379) (ImaginaryLiteralValue!8379 (text!59099 List!56213)) (StringLiteralValue!25137 (value!259108 List!56213)) (EOFValue!8379 (value!259109 List!56213)) (IdentValue!8379 (value!259110 List!56213)) (DelimiterValue!16759 (value!259111 List!56213)) (DedentValue!8379 (value!259112 List!56213)) (NewLineValue!8379 (value!259113 List!56213)) (IntegerValue!25137 (value!259114 (_ BitVec 32)) (text!59100 List!56213)) (IntegerValue!25138 (value!259115 Int) (text!59101 List!56213)) (Times!8379) (Or!8379) (Equal!8379) (Minus!8379) (Broken!41899 (value!259116 List!56213)) (And!8379) (Div!8379) (LessEqual!8379) (Mod!8379) (Concat!21523) (Not!8379) (Plus!8379) (SpaceValue!8379 (value!259117 List!56213)) (IntegerValue!25139 (value!259118 Int) (text!59102 List!56213)) (StringLiteralValue!25138 (text!59103 List!56213)) (FloatLiteralValue!16759 (text!59104 List!56213)) (BytesLiteralValue!8379 (value!259119 List!56213)) (CommentValue!16759 (value!259120 List!56213)) (StringLiteralValue!25139 (value!259121 List!56213)) (ErrorTokenValue!8379 (msg!8440 List!56213)) )
))
(declare-datatypes ((Regex!13144 0))(
  ( (ElementMatch!13144 (c!830341 C!26486)) (Concat!21524 (regOne!26800 Regex!13144) (regTwo!26800 Regex!13144)) (EmptyExpr!13144) (Star!13144 (reg!13473 Regex!13144)) (EmptyLang!13144) (Union!13144 (regOne!26801 Regex!13144) (regTwo!26801 Regex!13144)) )
))
(declare-datatypes ((TokenValueInjection!16066 0))(
  ( (TokenValueInjection!16067 (toValue!10956 Int) (toChars!10815 Int)) )
))
(declare-datatypes ((Rule!15938 0))(
  ( (Rule!15939 (regex!8069 Regex!13144) (tag!8933 String!63338) (isSeparator!8069 Bool) (transformation!8069 TokenValueInjection!16066)) )
))
(declare-datatypes ((List!56214 0))(
  ( (Nil!56090) (Cons!56090 (h!62538 Rule!15938) (t!364860 List!56214)) )
))
(declare-fun rulesArg!165 () List!56214)

(assert (=> b!4881987 (= res!2084025 (or (not (is-Cons!56090 rulesArg!165)) (not (is-Nil!56090 (t!364860 rulesArg!165)))))))

(declare-fun lt!1999781 () List!56212)

(declare-fun isPrefix!4791 (List!56212 List!56212) Bool)

(assert (=> b!4881987 (isPrefix!4791 lt!1999781 lt!1999781)))

(declare-datatypes ((Unit!146079 0))(
  ( (Unit!146080) )
))
(declare-fun lt!1999784 () Unit!146079)

(declare-fun lemmaIsPrefixRefl!3188 (List!56212 List!56212) Unit!146079)

(assert (=> b!4881987 (= lt!1999784 (lemmaIsPrefixRefl!3188 lt!1999781 lt!1999781))))

(declare-fun list!17589 (BalanceConc!28704) List!56212)

(assert (=> b!4881987 (= lt!1999781 (list!17589 input!1236))))

(declare-fun b!4881988 () Bool)

(declare-fun res!2084018 () Bool)

(assert (=> b!4881988 (=> (not res!2084018) (not e!3051125))))

(declare-fun rulesValidInductive!3048 (LexerInterface!7661 List!56214) Bool)

(assert (=> b!4881988 (= res!2084018 (rulesValidInductive!3048 thiss!14805 rulesArg!165))))

(declare-fun b!4881989 () Bool)

(declare-fun res!2084022 () Bool)

(declare-fun e!3051132 () Bool)

(assert (=> b!4881989 (=> res!2084022 e!3051132)))

(declare-fun lt!1999778 () Bool)

(assert (=> b!4881989 (= res!2084022 lt!1999778)))

(declare-fun e!3051124 () Bool)

(declare-fun b!4881990 () Bool)

(declare-fun e!3051134 () Bool)

(declare-fun tp!1373535 () Bool)

(declare-fun inv!72118 (String!63338) Bool)

(declare-fun inv!72123 (TokenValueInjection!16066) Bool)

(assert (=> b!4881990 (= e!3051124 (and tp!1373535 (inv!72118 (tag!8933 (h!62538 rulesArg!165))) (inv!72123 (transformation!8069 (h!62538 rulesArg!165))) e!3051134))))

(declare-fun b!4881991 () Bool)

(declare-fun e!3051130 () Bool)

(declare-datatypes ((Token!14710 0))(
  ( (Token!14711 (value!259122 TokenValue!8379) (rule!11227 Rule!15938) (size!36981 Int) (originalCharacters!8386 List!56212)) )
))
(declare-datatypes ((tuple2!59974 0))(
  ( (tuple2!59975 (_1!33290 Token!14710) (_2!33290 BalanceConc!28704)) )
))
(declare-fun lt!1999777 () tuple2!59974)

(declare-datatypes ((tuple2!59976 0))(
  ( (tuple2!59977 (_1!33291 Token!14710) (_2!33291 List!56212)) )
))
(declare-fun lt!1999782 () tuple2!59976)

(assert (=> b!4881991 (= e!3051130 (not (= (list!17589 (_2!33290 lt!1999777)) (_2!33291 lt!1999782))))))

(declare-fun b!4881992 () Bool)

(assert (=> b!4881992 (= e!3051132 true)))

(declare-datatypes ((Option!13830 0))(
  ( (None!13829) (Some!13829 (v!49779 tuple2!59976)) )
))
(declare-fun lt!1999780 () Option!13830)

(declare-fun maxPrefix!4560 (LexerInterface!7661 List!56214 List!56212) Option!13830)

(assert (=> b!4881992 (= lt!1999780 (maxPrefix!4560 thiss!14805 rulesArg!165 lt!1999781))))

(declare-fun b!4881993 () Bool)

(declare-fun res!2084023 () Bool)

(assert (=> b!4881993 (=> (not res!2084023) (not e!3051125))))

(declare-fun isEmpty!30060 (List!56214) Bool)

(assert (=> b!4881993 (= res!2084023 (not (isEmpty!30060 rulesArg!165)))))

(declare-fun b!4881994 () Bool)

(declare-fun tp!1373536 () Bool)

(assert (=> b!4881994 (= e!3051133 (and e!3051124 tp!1373536))))

(declare-fun b!4881995 () Bool)

(declare-fun e!3051128 () Bool)

(assert (=> b!4881995 (= e!3051128 e!3051132)))

(declare-fun res!2084021 () Bool)

(assert (=> b!4881995 (=> res!2084021 e!3051132)))

(declare-fun e!3051127 () Bool)

(assert (=> b!4881995 (= res!2084021 e!3051127)))

(declare-fun res!2084024 () Bool)

(assert (=> b!4881995 (=> (not res!2084024) (not e!3051127))))

(assert (=> b!4881995 (= res!2084024 (not lt!1999778))))

(declare-fun lt!1999785 () Bool)

(assert (=> b!4881995 (= lt!1999778 (not lt!1999785))))

(assert (=> b!4881996 (= e!3051134 (and tp!1373538 tp!1373537))))

(declare-fun b!4881997 () Bool)

(assert (=> b!4881997 (= e!3051126 e!3051128)))

(declare-fun res!2084019 () Bool)

(assert (=> b!4881997 (=> res!2084019 e!3051128)))

(declare-fun lt!1999783 () Option!13830)

(declare-fun isDefined!10882 (Option!13830) Bool)

(assert (=> b!4881997 (= res!2084019 (not (= lt!1999785 (isDefined!10882 lt!1999783))))))

(declare-datatypes ((Option!13831 0))(
  ( (None!13830) (Some!13830 (v!49780 tuple2!59974)) )
))
(declare-fun lt!1999779 () Option!13831)

(declare-fun isDefined!10883 (Option!13831) Bool)

(assert (=> b!4881997 (= lt!1999785 (isDefined!10883 lt!1999779))))

(declare-fun maxPrefixZipper!582 (LexerInterface!7661 List!56214 List!56212) Option!13830)

(assert (=> b!4881997 (= lt!1999783 (maxPrefixZipper!582 thiss!14805 rulesArg!165 lt!1999781))))

(declare-fun maxPrefixOneRuleZipperSequence!597 (LexerInterface!7661 Rule!15938 BalanceConc!28704) Option!13831)

(assert (=> b!4881997 (= lt!1999779 (maxPrefixOneRuleZipperSequence!597 thiss!14805 (h!62538 rulesArg!165) input!1236))))

(declare-fun b!4881998 () Bool)

(assert (=> b!4881998 (= e!3051127 e!3051130)))

(declare-fun res!2084017 () Bool)

(assert (=> b!4881998 (=> res!2084017 e!3051130)))

(assert (=> b!4881998 (= res!2084017 (not (= (_1!33290 lt!1999777) (_1!33291 lt!1999782))))))

(declare-fun get!19282 (Option!13830) tuple2!59976)

(assert (=> b!4881998 (= lt!1999782 (get!19282 lt!1999783))))

(declare-fun get!19283 (Option!13831) tuple2!59974)

(assert (=> b!4881998 (= lt!1999777 (get!19283 lt!1999779))))

(assert (= (and start!510794 res!2084020) b!4881988))

(assert (= (and b!4881988 res!2084018) b!4881993))

(assert (= (and b!4881993 res!2084023) b!4881987))

(assert (= (and b!4881987 (not res!2084025)) b!4881997))

(assert (= (and b!4881997 (not res!2084019)) b!4881995))

(assert (= (and b!4881995 res!2084024) b!4881998))

(assert (= (and b!4881998 (not res!2084017)) b!4881991))

(assert (= (and b!4881995 (not res!2084021)) b!4881989))

(assert (= (and b!4881989 (not res!2084022)) b!4881992))

(assert (= b!4881990 b!4881996))

(assert (= b!4881994 b!4881990))

(assert (= (and start!510794 (is-Cons!56090 rulesArg!165)) b!4881994))

(assert (= start!510794 b!4881986))

(declare-fun m!5886202 () Bool)

(assert (=> b!4881998 m!5886202))

(declare-fun m!5886204 () Bool)

(assert (=> b!4881998 m!5886204))

(declare-fun m!5886206 () Bool)

(assert (=> b!4881990 m!5886206))

(declare-fun m!5886208 () Bool)

(assert (=> b!4881990 m!5886208))

(declare-fun m!5886210 () Bool)

(assert (=> b!4881987 m!5886210))

(declare-fun m!5886212 () Bool)

(assert (=> b!4881987 m!5886212))

(declare-fun m!5886214 () Bool)

(assert (=> b!4881987 m!5886214))

(declare-fun m!5886216 () Bool)

(assert (=> b!4881986 m!5886216))

(declare-fun m!5886218 () Bool)

(assert (=> b!4881988 m!5886218))

(declare-fun m!5886220 () Bool)

(assert (=> b!4881997 m!5886220))

(declare-fun m!5886222 () Bool)

(assert (=> b!4881997 m!5886222))

(declare-fun m!5886224 () Bool)

(assert (=> b!4881997 m!5886224))

(declare-fun m!5886226 () Bool)

(assert (=> b!4881997 m!5886226))

(declare-fun m!5886228 () Bool)

(assert (=> start!510794 m!5886228))

(declare-fun m!5886230 () Bool)

(assert (=> b!4881991 m!5886230))

(declare-fun m!5886232 () Bool)

(assert (=> b!4881992 m!5886232))

(declare-fun m!5886234 () Bool)

(assert (=> b!4881993 m!5886234))

(push 1)

(assert (not b!4881993))

(assert (not b!4881994))

(assert b_and!343775)

(assert (not b!4881991))

(assert (not b!4881986))

(assert (not b!4881997))

(assert (not b_next!131735))

(assert (not b!4881987))

(assert (not b!4881988))

(assert (not b!4881992))

(assert (not b_next!131733))

(assert (not b!4881998))

(assert (not start!510794))

(assert b_and!343777)

(assert (not b!4881990))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343777)

(assert b_and!343775)

(assert (not b_next!131733))

(assert (not b_next!131735))

(check-sat)

(pop 1)

