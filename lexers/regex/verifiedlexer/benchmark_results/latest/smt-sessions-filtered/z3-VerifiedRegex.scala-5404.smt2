; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274960 () Bool)

(assert start!274960)

(declare-fun b!2830941 () Bool)

(declare-fun b_free!81325 () Bool)

(declare-fun b_next!82029 () Bool)

(assert (=> b!2830941 (= b_free!81325 (not b_next!82029))))

(declare-fun tp!904559 () Bool)

(declare-fun b_and!206987 () Bool)

(assert (=> b!2830941 (= tp!904559 b_and!206987)))

(declare-fun b_free!81327 () Bool)

(declare-fun b_next!82031 () Bool)

(assert (=> b!2830941 (= b_free!81327 (not b_next!82031))))

(declare-fun tp!904557 () Bool)

(declare-fun b_and!206989 () Bool)

(assert (=> b!2830941 (= tp!904557 b_and!206989)))

(declare-fun b!2830939 () Bool)

(declare-fun b_free!81329 () Bool)

(declare-fun b_next!82033 () Bool)

(assert (=> b!2830939 (= b_free!81329 (not b_next!82033))))

(declare-fun tp!904561 () Bool)

(declare-fun b_and!206991 () Bool)

(assert (=> b!2830939 (= tp!904561 b_and!206991)))

(declare-fun b_free!81331 () Bool)

(declare-fun b_next!82035 () Bool)

(assert (=> b!2830939 (= b_free!81331 (not b_next!82035))))

(declare-fun tp!904558 () Bool)

(declare-fun b_and!206993 () Bool)

(assert (=> b!2830939 (= tp!904558 b_and!206993)))

(declare-fun e!1792227 () Bool)

(declare-fun tp!904562 () Bool)

(declare-datatypes ((List!33463 0))(
  ( (Nil!33339) (Cons!33339 (h!38759 (_ BitVec 16)) (t!231340 List!33463)) )
))
(declare-datatypes ((TokenValue!5224 0))(
  ( (FloatLiteralValue!10448 (text!37013 List!33463)) (TokenValueExt!5223 (__x!22186 Int)) (Broken!26120 (value!160672 List!33463)) (Object!5347) (End!5224) (Def!5224) (Underscore!5224) (Match!5224) (Else!5224) (Error!5224) (Case!5224) (If!5224) (Extends!5224) (Abstract!5224) (Class!5224) (Val!5224) (DelimiterValue!10448 (del!5284 List!33463)) (KeywordValue!5230 (value!160673 List!33463)) (CommentValue!10448 (value!160674 List!33463)) (WhitespaceValue!10448 (value!160675 List!33463)) (IndentationValue!5224 (value!160676 List!33463)) (String!36641) (Int32!5224) (Broken!26121 (value!160677 List!33463)) (Boolean!5225) (Unit!47344) (OperatorValue!5227 (op!5284 List!33463)) (IdentifierValue!10448 (value!160678 List!33463)) (IdentifierValue!10449 (value!160679 List!33463)) (WhitespaceValue!10449 (value!160680 List!33463)) (True!10448) (False!10448) (Broken!26122 (value!160681 List!33463)) (Broken!26123 (value!160682 List!33463)) (True!10449) (RightBrace!5224) (RightBracket!5224) (Colon!5224) (Null!5224) (Comma!5224) (LeftBracket!5224) (False!10449) (LeftBrace!5224) (ImaginaryLiteralValue!5224 (text!37014 List!33463)) (StringLiteralValue!15672 (value!160683 List!33463)) (EOFValue!5224 (value!160684 List!33463)) (IdentValue!5224 (value!160685 List!33463)) (DelimiterValue!10449 (value!160686 List!33463)) (DedentValue!5224 (value!160687 List!33463)) (NewLineValue!5224 (value!160688 List!33463)) (IntegerValue!15672 (value!160689 (_ BitVec 32)) (text!37015 List!33463)) (IntegerValue!15673 (value!160690 Int) (text!37016 List!33463)) (Times!5224) (Or!5224) (Equal!5224) (Minus!5224) (Broken!26124 (value!160691 List!33463)) (And!5224) (Div!5224) (LessEqual!5224) (Mod!5224) (Concat!13609) (Not!5224) (Plus!5224) (SpaceValue!5224 (value!160692 List!33463)) (IntegerValue!15674 (value!160693 Int) (text!37017 List!33463)) (StringLiteralValue!15673 (text!37018 List!33463)) (FloatLiteralValue!10449 (text!37019 List!33463)) (BytesLiteralValue!5224 (value!160694 List!33463)) (CommentValue!10449 (value!160695 List!33463)) (StringLiteralValue!15674 (value!160696 List!33463)) (ErrorTokenValue!5224 (msg!5285 List!33463)) )
))
(declare-datatypes ((C!16952 0))(
  ( (C!16953 (val!10488 Int)) )
))
(declare-datatypes ((Regex!8385 0))(
  ( (ElementMatch!8385 (c!457855 C!16952)) (Concat!13610 (regOne!17282 Regex!8385) (regTwo!17282 Regex!8385)) (EmptyExpr!8385) (Star!8385 (reg!8714 Regex!8385)) (EmptyLang!8385) (Union!8385 (regOne!17283 Regex!8385) (regTwo!17283 Regex!8385)) )
))
(declare-datatypes ((String!36642 0))(
  ( (String!36643 (value!160697 String)) )
))
(declare-datatypes ((List!33464 0))(
  ( (Nil!33340) (Cons!33340 (h!38760 C!16952) (t!231341 List!33464)) )
))
(declare-datatypes ((IArray!20691 0))(
  ( (IArray!20692 (innerList!10403 List!33464)) )
))
(declare-datatypes ((Conc!10343 0))(
  ( (Node!10343 (left!25159 Conc!10343) (right!25489 Conc!10343) (csize!20916 Int) (cheight!10554 Int)) (Leaf!15748 (xs!13455 IArray!20691) (csize!20917 Int)) (Empty!10343) )
))
(declare-datatypes ((BalanceConc!20324 0))(
  ( (BalanceConc!20325 (c!457856 Conc!10343)) )
))
(declare-datatypes ((TokenValueInjection!9876 0))(
  ( (TokenValueInjection!9877 (toValue!7020 Int) (toChars!6879 Int)) )
))
(declare-datatypes ((Rule!9788 0))(
  ( (Rule!9789 (regex!4994 Regex!8385) (tag!5498 String!36642) (isSeparator!4994 Bool) (transformation!4994 TokenValueInjection!9876)) )
))
(declare-datatypes ((List!33465 0))(
  ( (Nil!33341) (Cons!33341 (h!38761 Rule!9788) (t!231342 List!33465)) )
))
(declare-fun rules!1047 () List!33465)

(declare-fun b!2830934 () Bool)

(declare-fun e!1792234 () Bool)

(declare-fun inv!45291 (String!36642) Bool)

(declare-fun inv!45294 (TokenValueInjection!9876) Bool)

(assert (=> b!2830934 (= e!1792234 (and tp!904562 (inv!45291 (tag!5498 (h!38761 rules!1047))) (inv!45294 (transformation!4994 (h!38761 rules!1047))) e!1792227))))

(declare-datatypes ((Token!9390 0))(
  ( (Token!9391 (value!160698 TokenValue!5224) (rule!7422 Rule!9788) (size!25957 Int) (originalCharacters!5726 List!33464)) )
))
(declare-datatypes ((List!33466 0))(
  ( (Nil!33342) (Cons!33342 (h!38762 Token!9390) (t!231343 List!33466)) )
))
(declare-fun l!4019 () List!33466)

(declare-fun e!1792229 () Bool)

(declare-fun b!2830935 () Bool)

(declare-fun tp!904556 () Bool)

(declare-fun e!1792233 () Bool)

(declare-fun inv!45295 (Token!9390) Bool)

(assert (=> b!2830935 (= e!1792233 (and (inv!45295 (h!38762 l!4019)) e!1792229 tp!904556))))

(declare-fun b!2830936 () Bool)

(declare-fun e!1792235 () Bool)

(declare-fun e!1792232 () Bool)

(declare-fun tp!904563 () Bool)

(assert (=> b!2830936 (= e!1792235 (and tp!904563 (inv!45291 (tag!5498 (rule!7422 (h!38762 l!4019)))) (inv!45294 (transformation!4994 (rule!7422 (h!38762 l!4019)))) e!1792232))))

(declare-fun b!2830937 () Bool)

(declare-fun e!1792231 () Bool)

(assert (=> b!2830937 (= e!1792231 false)))

(declare-datatypes ((IArray!20693 0))(
  ( (IArray!20694 (innerList!10404 List!33466)) )
))
(declare-datatypes ((Conc!10344 0))(
  ( (Node!10344 (left!25160 Conc!10344) (right!25490 Conc!10344) (csize!20918 Int) (cheight!10555 Int)) (Leaf!15749 (xs!13456 IArray!20693) (csize!20919 Int)) (Empty!10344) )
))
(declare-datatypes ((BalanceConc!20326 0))(
  ( (BalanceConc!20327 (c!457857 Conc!10344)) )
))
(declare-fun lt!1010069 () BalanceConc!20326)

(declare-fun seqFromList!3240 (List!33466) BalanceConc!20326)

(assert (=> b!2830937 (= lt!1010069 (seqFromList!3240 l!4019))))

(declare-fun b!2830938 () Bool)

(declare-fun res!1178448 () Bool)

(assert (=> b!2830938 (=> (not res!1178448) (not e!1792231))))

(declare-fun isEmpty!18391 (List!33465) Bool)

(assert (=> b!2830938 (= res!1178448 (not (isEmpty!18391 rules!1047)))))

(declare-fun res!1178446 () Bool)

(assert (=> start!274960 (=> (not res!1178446) (not e!1792231))))

(declare-datatypes ((LexerInterface!4584 0))(
  ( (LexerInterfaceExt!4581 (__x!22187 Int)) (Lexer!4582) )
))
(declare-fun thiss!11007 () LexerInterface!4584)

(get-info :version)

(assert (=> start!274960 (= res!1178446 ((_ is Lexer!4582) thiss!11007))))

(assert (=> start!274960 e!1792231))

(assert (=> start!274960 true))

(declare-fun e!1792230 () Bool)

(assert (=> start!274960 e!1792230))

(assert (=> start!274960 e!1792233))

(assert (=> b!2830939 (= e!1792232 (and tp!904561 tp!904558))))

(declare-fun b!2830940 () Bool)

(declare-fun tp!904564 () Bool)

(declare-fun inv!21 (TokenValue!5224) Bool)

(assert (=> b!2830940 (= e!1792229 (and (inv!21 (value!160698 (h!38762 l!4019))) e!1792235 tp!904564))))

(assert (=> b!2830941 (= e!1792227 (and tp!904559 tp!904557))))

(declare-fun b!2830942 () Bool)

(declare-fun res!1178447 () Bool)

(assert (=> b!2830942 (=> (not res!1178447) (not e!1792231))))

(declare-fun rulesProduceEachTokenIndividuallyList!1627 (LexerInterface!4584 List!33465 List!33466) Bool)

(assert (=> b!2830942 (= res!1178447 (rulesProduceEachTokenIndividuallyList!1627 thiss!11007 rules!1047 l!4019))))

(declare-fun b!2830943 () Bool)

(declare-fun res!1178449 () Bool)

(assert (=> b!2830943 (=> (not res!1178449) (not e!1792231))))

(declare-fun rulesInvariant!4000 (LexerInterface!4584 List!33465) Bool)

(assert (=> b!2830943 (= res!1178449 (rulesInvariant!4000 thiss!11007 rules!1047))))

(declare-fun b!2830944 () Bool)

(declare-fun tp!904560 () Bool)

(assert (=> b!2830944 (= e!1792230 (and e!1792234 tp!904560))))

(assert (= (and start!274960 res!1178446) b!2830938))

(assert (= (and b!2830938 res!1178448) b!2830943))

(assert (= (and b!2830943 res!1178449) b!2830942))

(assert (= (and b!2830942 res!1178447) b!2830937))

(assert (= b!2830934 b!2830941))

(assert (= b!2830944 b!2830934))

(assert (= (and start!274960 ((_ is Cons!33341) rules!1047)) b!2830944))

(assert (= b!2830936 b!2830939))

(assert (= b!2830940 b!2830936))

(assert (= b!2830935 b!2830940))

(assert (= (and start!274960 ((_ is Cons!33342) l!4019)) b!2830935))

(declare-fun m!3260579 () Bool)

(assert (=> b!2830942 m!3260579))

(declare-fun m!3260581 () Bool)

(assert (=> b!2830936 m!3260581))

(declare-fun m!3260583 () Bool)

(assert (=> b!2830936 m!3260583))

(declare-fun m!3260585 () Bool)

(assert (=> b!2830943 m!3260585))

(declare-fun m!3260587 () Bool)

(assert (=> b!2830938 m!3260587))

(declare-fun m!3260589 () Bool)

(assert (=> b!2830935 m!3260589))

(declare-fun m!3260591 () Bool)

(assert (=> b!2830934 m!3260591))

(declare-fun m!3260593 () Bool)

(assert (=> b!2830934 m!3260593))

(declare-fun m!3260595 () Bool)

(assert (=> b!2830940 m!3260595))

(declare-fun m!3260597 () Bool)

(assert (=> b!2830937 m!3260597))

(check-sat (not b!2830943) b_and!206989 (not b_next!82029) (not b!2830944) (not b!2830940) b_and!206993 (not b_next!82031) (not b_next!82033) (not b!2830934) (not b!2830938) (not b_next!82035) (not b!2830936) (not b!2830942) b_and!206991 (not b!2830937) (not b!2830935) b_and!206987)
(check-sat b_and!206989 (not b_next!82029) b_and!206993 (not b_next!82031) (not b_next!82033) (not b_next!82035) b_and!206991 b_and!206987)
