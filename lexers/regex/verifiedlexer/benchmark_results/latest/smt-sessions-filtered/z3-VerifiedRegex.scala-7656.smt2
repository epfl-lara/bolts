; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404134 () Bool)

(assert start!404134)

(declare-fun b!4226323 () Bool)

(declare-fun b_free!124467 () Bool)

(declare-fun b_next!125171 () Bool)

(assert (=> b!4226323 (= b_free!124467 (not b_next!125171))))

(declare-fun tp!1293815 () Bool)

(declare-fun b_and!333701 () Bool)

(assert (=> b!4226323 (= tp!1293815 b_and!333701)))

(declare-fun b_free!124469 () Bool)

(declare-fun b_next!125173 () Bool)

(assert (=> b!4226323 (= b_free!124469 (not b_next!125173))))

(declare-fun tp!1293813 () Bool)

(declare-fun b_and!333703 () Bool)

(assert (=> b!4226323 (= tp!1293813 b_and!333703)))

(declare-fun b!4226330 () Bool)

(declare-fun b_free!124471 () Bool)

(declare-fun b_next!125175 () Bool)

(assert (=> b!4226330 (= b_free!124471 (not b_next!125175))))

(declare-fun tp!1293809 () Bool)

(declare-fun b_and!333705 () Bool)

(assert (=> b!4226330 (= tp!1293809 b_and!333705)))

(declare-fun b_free!124473 () Bool)

(declare-fun b_next!125177 () Bool)

(assert (=> b!4226330 (= b_free!124473 (not b_next!125177))))

(declare-fun tp!1293812 () Bool)

(declare-fun b_and!333707 () Bool)

(assert (=> b!4226330 (= tp!1293812 b_and!333707)))

(declare-fun tp!1293810 () Bool)

(declare-datatypes ((List!46681 0))(
  ( (Nil!46557) (Cons!46557 (h!51977 (_ BitVec 16)) (t!349298 List!46681)) )
))
(declare-datatypes ((TokenValue!8056 0))(
  ( (FloatLiteralValue!16112 (text!56837 List!46681)) (TokenValueExt!8055 (__x!28335 Int)) (Broken!40280 (value!243542 List!46681)) (Object!8179) (End!8056) (Def!8056) (Underscore!8056) (Match!8056) (Else!8056) (Error!8056) (Case!8056) (If!8056) (Extends!8056) (Abstract!8056) (Class!8056) (Val!8056) (DelimiterValue!16112 (del!8116 List!46681)) (KeywordValue!8062 (value!243543 List!46681)) (CommentValue!16112 (value!243544 List!46681)) (WhitespaceValue!16112 (value!243545 List!46681)) (IndentationValue!8056 (value!243546 List!46681)) (String!54149) (Int32!8056) (Broken!40281 (value!243547 List!46681)) (Boolean!8057) (Unit!65716) (OperatorValue!8059 (op!8116 List!46681)) (IdentifierValue!16112 (value!243548 List!46681)) (IdentifierValue!16113 (value!243549 List!46681)) (WhitespaceValue!16113 (value!243550 List!46681)) (True!16112) (False!16112) (Broken!40282 (value!243551 List!46681)) (Broken!40283 (value!243552 List!46681)) (True!16113) (RightBrace!8056) (RightBracket!8056) (Colon!8056) (Null!8056) (Comma!8056) (LeftBracket!8056) (False!16113) (LeftBrace!8056) (ImaginaryLiteralValue!8056 (text!56838 List!46681)) (StringLiteralValue!24168 (value!243553 List!46681)) (EOFValue!8056 (value!243554 List!46681)) (IdentValue!8056 (value!243555 List!46681)) (DelimiterValue!16113 (value!243556 List!46681)) (DedentValue!8056 (value!243557 List!46681)) (NewLineValue!8056 (value!243558 List!46681)) (IntegerValue!24168 (value!243559 (_ BitVec 32)) (text!56839 List!46681)) (IntegerValue!24169 (value!243560 Int) (text!56840 List!46681)) (Times!8056) (Or!8056) (Equal!8056) (Minus!8056) (Broken!40284 (value!243561 List!46681)) (And!8056) (Div!8056) (LessEqual!8056) (Mod!8056) (Concat!20787) (Not!8056) (Plus!8056) (SpaceValue!8056 (value!243562 List!46681)) (IntegerValue!24170 (value!243563 Int) (text!56841 List!46681)) (StringLiteralValue!24169 (text!56842 List!46681)) (FloatLiteralValue!16113 (text!56843 List!46681)) (BytesLiteralValue!8056 (value!243564 List!46681)) (CommentValue!16113 (value!243565 List!46681)) (StringLiteralValue!24170 (value!243566 List!46681)) (ErrorTokenValue!8056 (msg!8117 List!46681)) )
))
(declare-datatypes ((C!25656 0))(
  ( (C!25657 (val!14990 Int)) )
))
(declare-datatypes ((List!46682 0))(
  ( (Nil!46558) (Cons!46558 (h!51978 C!25656) (t!349299 List!46682)) )
))
(declare-datatypes ((IArray!28079 0))(
  ( (IArray!28080 (innerList!14097 List!46682)) )
))
(declare-datatypes ((Conc!14037 0))(
  ( (Node!14037 (left!34625 Conc!14037) (right!34955 Conc!14037) (csize!28304 Int) (cheight!14248 Int)) (Leaf!21694 (xs!17343 IArray!28079) (csize!28305 Int)) (Empty!14037) )
))
(declare-datatypes ((BalanceConc!27668 0))(
  ( (BalanceConc!27669 (c!718666 Conc!14037)) )
))
(declare-datatypes ((TokenValueInjection!15540 0))(
  ( (TokenValueInjection!15541 (toValue!10554 Int) (toChars!10413 Int)) )
))
(declare-datatypes ((Regex!12731 0))(
  ( (ElementMatch!12731 (c!718667 C!25656)) (Concat!20788 (regOne!25974 Regex!12731) (regTwo!25974 Regex!12731)) (EmptyExpr!12731) (Star!12731 (reg!13060 Regex!12731)) (EmptyLang!12731) (Union!12731 (regOne!25975 Regex!12731) (regTwo!25975 Regex!12731)) )
))
(declare-datatypes ((String!54150 0))(
  ( (String!54151 (value!243567 String)) )
))
(declare-datatypes ((Rule!15452 0))(
  ( (Rule!15453 (regex!7826 Regex!12731) (tag!8690 String!54150) (isSeparator!7826 Bool) (transformation!7826 TokenValueInjection!15540)) )
))
(declare-fun r!4313 () Rule!15452)

(declare-fun b!4226320 () Bool)

(declare-fun e!2623921 () Bool)

(declare-fun e!2623923 () Bool)

(declare-fun inv!61221 (String!54150) Bool)

(declare-fun inv!61223 (TokenValueInjection!15540) Bool)

(assert (=> b!4226320 (= e!2623923 (and tp!1293810 (inv!61221 (tag!8690 r!4313)) (inv!61223 (transformation!7826 r!4313)) e!2623921))))

(declare-fun b!4226322 () Bool)

(declare-fun e!2623920 () Bool)

(declare-fun e!2623925 () Bool)

(declare-fun tp!1293811 () Bool)

(assert (=> b!4226322 (= e!2623920 (and e!2623925 tp!1293811))))

(assert (=> b!4226323 (= e!2623921 (and tp!1293815 tp!1293813))))

(declare-fun b!4226324 () Bool)

(declare-fun e!2623924 () Bool)

(declare-fun tp_is_empty!22425 () Bool)

(declare-fun tp!1293816 () Bool)

(assert (=> b!4226324 (= e!2623924 (and tp_is_empty!22425 tp!1293816))))

(declare-fun b!4226325 () Bool)

(declare-fun res!1737832 () Bool)

(declare-fun e!2623928 () Bool)

(assert (=> b!4226325 (=> (not res!1737832) (not e!2623928))))

(declare-datatypes ((LexerInterface!7421 0))(
  ( (LexerInterfaceExt!7418 (__x!28336 Int)) (Lexer!7419) )
))
(declare-fun thiss!26728 () LexerInterface!7421)

(declare-fun input!3561 () List!46682)

(declare-datatypes ((List!46683 0))(
  ( (Nil!46559) (Cons!46559 (h!51979 Rule!15452) (t!349300 List!46683)) )
))
(declare-fun rules!4013 () List!46683)

(declare-datatypes ((Token!14350 0))(
  ( (Token!14351 (value!243568 TokenValue!8056) (rule!10972 Rule!15452) (size!34173 Int) (originalCharacters!8206 List!46682)) )
))
(declare-datatypes ((tuple2!44258 0))(
  ( (tuple2!44259 (_1!25263 Token!14350) (_2!25263 List!46682)) )
))
(declare-datatypes ((Option!10012 0))(
  ( (None!10011) (Some!10011 (v!40925 tuple2!44258)) )
))
(declare-fun isEmpty!27594 (Option!10012) Bool)

(declare-fun maxPrefix!4459 (LexerInterface!7421 List!46683 List!46682) Option!10012)

(assert (=> b!4226325 (= res!1737832 (isEmpty!27594 (maxPrefix!4459 thiss!26728 rules!4013 input!3561)))))

(declare-fun e!2623927 () Bool)

(declare-fun tp!1293814 () Bool)

(declare-fun b!4226326 () Bool)

(assert (=> b!4226326 (= e!2623925 (and tp!1293814 (inv!61221 (tag!8690 (h!51979 rules!4013))) (inv!61223 (transformation!7826 (h!51979 rules!4013))) e!2623927))))

(declare-fun b!4226327 () Bool)

(get-info :version)

(assert (=> b!4226327 (= e!2623928 (not (or (and ((_ is Cons!46559) rules!4013) (= r!4313 (h!51979 rules!4013))) (and ((_ is Cons!46559) rules!4013) (not (= r!4313 (h!51979 rules!4013)))) ((_ is Nil!46559) rules!4013))))))

(declare-fun ruleValid!3534 (LexerInterface!7421 Rule!15452) Bool)

(assert (=> b!4226327 (ruleValid!3534 thiss!26728 r!4313)))

(declare-datatypes ((Unit!65717 0))(
  ( (Unit!65718) )
))
(declare-fun lt!1503154 () Unit!65717)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2446 (LexerInterface!7421 Rule!15452 List!46683) Unit!65717)

(assert (=> b!4226327 (= lt!1503154 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2446 thiss!26728 r!4313 rules!4013))))

(declare-fun b!4226328 () Bool)

(declare-fun res!1737830 () Bool)

(assert (=> b!4226328 (=> (not res!1737830) (not e!2623928))))

(declare-fun rulesValidInductive!2930 (LexerInterface!7421 List!46683) Bool)

(assert (=> b!4226328 (= res!1737830 (rulesValidInductive!2930 thiss!26728 rules!4013))))

(declare-fun res!1737833 () Bool)

(assert (=> start!404134 (=> (not res!1737833) (not e!2623928))))

(assert (=> start!404134 (= res!1737833 ((_ is Lexer!7419) thiss!26728))))

(assert (=> start!404134 e!2623928))

(assert (=> start!404134 true))

(assert (=> start!404134 e!2623920))

(assert (=> start!404134 e!2623923))

(assert (=> start!404134 e!2623924))

(declare-fun b!4226321 () Bool)

(declare-fun res!1737831 () Bool)

(assert (=> b!4226321 (=> (not res!1737831) (not e!2623928))))

(declare-fun contains!9649 (List!46683 Rule!15452) Bool)

(assert (=> b!4226321 (= res!1737831 (contains!9649 rules!4013 r!4313))))

(declare-fun b!4226329 () Bool)

(declare-fun res!1737829 () Bool)

(assert (=> b!4226329 (=> (not res!1737829) (not e!2623928))))

(declare-fun isEmpty!27595 (List!46683) Bool)

(assert (=> b!4226329 (= res!1737829 (not (isEmpty!27595 rules!4013)))))

(assert (=> b!4226330 (= e!2623927 (and tp!1293809 tp!1293812))))

(assert (= (and start!404134 res!1737833) b!4226329))

(assert (= (and b!4226329 res!1737829) b!4226328))

(assert (= (and b!4226328 res!1737830) b!4226321))

(assert (= (and b!4226321 res!1737831) b!4226325))

(assert (= (and b!4226325 res!1737832) b!4226327))

(assert (= b!4226326 b!4226330))

(assert (= b!4226322 b!4226326))

(assert (= (and start!404134 ((_ is Cons!46559) rules!4013)) b!4226322))

(assert (= b!4226320 b!4226323))

(assert (= start!404134 b!4226320))

(assert (= (and start!404134 ((_ is Cons!46558) input!3561)) b!4226324))

(declare-fun m!4814265 () Bool)

(assert (=> b!4226328 m!4814265))

(declare-fun m!4814267 () Bool)

(assert (=> b!4226326 m!4814267))

(declare-fun m!4814269 () Bool)

(assert (=> b!4226326 m!4814269))

(declare-fun m!4814271 () Bool)

(assert (=> b!4226327 m!4814271))

(declare-fun m!4814273 () Bool)

(assert (=> b!4226327 m!4814273))

(declare-fun m!4814275 () Bool)

(assert (=> b!4226325 m!4814275))

(assert (=> b!4226325 m!4814275))

(declare-fun m!4814277 () Bool)

(assert (=> b!4226325 m!4814277))

(declare-fun m!4814279 () Bool)

(assert (=> b!4226321 m!4814279))

(declare-fun m!4814281 () Bool)

(assert (=> b!4226320 m!4814281))

(declare-fun m!4814283 () Bool)

(assert (=> b!4226320 m!4814283))

(declare-fun m!4814285 () Bool)

(assert (=> b!4226329 m!4814285))

(check-sat b_and!333705 (not b!4226325) (not b!4226324) (not b!4226321) (not b!4226327) (not b!4226320) (not b_next!125173) tp_is_empty!22425 (not b_next!125171) (not b_next!125177) b_and!333701 (not b!4226329) (not b!4226326) b_and!333703 (not b!4226322) (not b_next!125175) b_and!333707 (not b!4226328))
(check-sat b_and!333705 (not b_next!125173) b_and!333703 (not b_next!125171) (not b_next!125175) b_and!333707 (not b_next!125177) b_and!333701)
