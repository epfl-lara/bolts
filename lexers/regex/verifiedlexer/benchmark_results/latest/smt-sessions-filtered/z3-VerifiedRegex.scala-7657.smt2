; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404138 () Bool)

(assert start!404138)

(declare-fun b!4226402 () Bool)

(declare-fun b_free!124483 () Bool)

(declare-fun b_next!125187 () Bool)

(assert (=> b!4226402 (= b_free!124483 (not b_next!125187))))

(declare-fun tp!1293861 () Bool)

(declare-fun b_and!333717 () Bool)

(assert (=> b!4226402 (= tp!1293861 b_and!333717)))

(declare-fun b_free!124485 () Bool)

(declare-fun b_next!125189 () Bool)

(assert (=> b!4226402 (= b_free!124485 (not b_next!125189))))

(declare-fun tp!1293857 () Bool)

(declare-fun b_and!333719 () Bool)

(assert (=> b!4226402 (= tp!1293857 b_and!333719)))

(declare-fun b!4226400 () Bool)

(declare-fun b_free!124487 () Bool)

(declare-fun b_next!125191 () Bool)

(assert (=> b!4226400 (= b_free!124487 (not b_next!125191))))

(declare-fun tp!1293859 () Bool)

(declare-fun b_and!333721 () Bool)

(assert (=> b!4226400 (= tp!1293859 b_and!333721)))

(declare-fun b_free!124489 () Bool)

(declare-fun b_next!125193 () Bool)

(assert (=> b!4226400 (= b_free!124489 (not b_next!125193))))

(declare-fun tp!1293863 () Bool)

(declare-fun b_and!333723 () Bool)

(assert (=> b!4226400 (= tp!1293863 b_and!333723)))

(declare-fun e!2623979 () Bool)

(declare-fun tp!1293860 () Bool)

(declare-fun b!4226391 () Bool)

(declare-datatypes ((List!46687 0))(
  ( (Nil!46563) (Cons!46563 (h!51983 (_ BitVec 16)) (t!349304 List!46687)) )
))
(declare-datatypes ((TokenValue!8058 0))(
  ( (FloatLiteralValue!16116 (text!56851 List!46687)) (TokenValueExt!8057 (__x!28339 Int)) (Broken!40290 (value!243599 List!46687)) (Object!8181) (End!8058) (Def!8058) (Underscore!8058) (Match!8058) (Else!8058) (Error!8058) (Case!8058) (If!8058) (Extends!8058) (Abstract!8058) (Class!8058) (Val!8058) (DelimiterValue!16116 (del!8118 List!46687)) (KeywordValue!8064 (value!243600 List!46687)) (CommentValue!16116 (value!243601 List!46687)) (WhitespaceValue!16116 (value!243602 List!46687)) (IndentationValue!8058 (value!243603 List!46687)) (String!54159) (Int32!8058) (Broken!40291 (value!243604 List!46687)) (Boolean!8059) (Unit!65722) (OperatorValue!8061 (op!8118 List!46687)) (IdentifierValue!16116 (value!243605 List!46687)) (IdentifierValue!16117 (value!243606 List!46687)) (WhitespaceValue!16117 (value!243607 List!46687)) (True!16116) (False!16116) (Broken!40292 (value!243608 List!46687)) (Broken!40293 (value!243609 List!46687)) (True!16117) (RightBrace!8058) (RightBracket!8058) (Colon!8058) (Null!8058) (Comma!8058) (LeftBracket!8058) (False!16117) (LeftBrace!8058) (ImaginaryLiteralValue!8058 (text!56852 List!46687)) (StringLiteralValue!24174 (value!243610 List!46687)) (EOFValue!8058 (value!243611 List!46687)) (IdentValue!8058 (value!243612 List!46687)) (DelimiterValue!16117 (value!243613 List!46687)) (DedentValue!8058 (value!243614 List!46687)) (NewLineValue!8058 (value!243615 List!46687)) (IntegerValue!24174 (value!243616 (_ BitVec 32)) (text!56853 List!46687)) (IntegerValue!24175 (value!243617 Int) (text!56854 List!46687)) (Times!8058) (Or!8058) (Equal!8058) (Minus!8058) (Broken!40294 (value!243618 List!46687)) (And!8058) (Div!8058) (LessEqual!8058) (Mod!8058) (Concat!20791) (Not!8058) (Plus!8058) (SpaceValue!8058 (value!243619 List!46687)) (IntegerValue!24176 (value!243620 Int) (text!56855 List!46687)) (StringLiteralValue!24175 (text!56856 List!46687)) (FloatLiteralValue!16117 (text!56857 List!46687)) (BytesLiteralValue!8058 (value!243621 List!46687)) (CommentValue!16117 (value!243622 List!46687)) (StringLiteralValue!24176 (value!243623 List!46687)) (ErrorTokenValue!8058 (msg!8119 List!46687)) )
))
(declare-datatypes ((C!25660 0))(
  ( (C!25661 (val!14992 Int)) )
))
(declare-datatypes ((List!46688 0))(
  ( (Nil!46564) (Cons!46564 (h!51984 C!25660) (t!349305 List!46688)) )
))
(declare-datatypes ((IArray!28083 0))(
  ( (IArray!28084 (innerList!14099 List!46688)) )
))
(declare-datatypes ((Conc!14039 0))(
  ( (Node!14039 (left!34628 Conc!14039) (right!34958 Conc!14039) (csize!28308 Int) (cheight!14250 Int)) (Leaf!21697 (xs!17345 IArray!28083) (csize!28309 Int)) (Empty!14039) )
))
(declare-datatypes ((BalanceConc!27672 0))(
  ( (BalanceConc!27673 (c!718672 Conc!14039)) )
))
(declare-datatypes ((TokenValueInjection!15544 0))(
  ( (TokenValueInjection!15545 (toValue!10556 Int) (toChars!10415 Int)) )
))
(declare-datatypes ((Regex!12733 0))(
  ( (ElementMatch!12733 (c!718673 C!25660)) (Concat!20792 (regOne!25978 Regex!12733) (regTwo!25978 Regex!12733)) (EmptyExpr!12733) (Star!12733 (reg!13062 Regex!12733)) (EmptyLang!12733) (Union!12733 (regOne!25979 Regex!12733) (regTwo!25979 Regex!12733)) )
))
(declare-datatypes ((String!54160 0))(
  ( (String!54161 (value!243624 String)) )
))
(declare-datatypes ((Rule!15456 0))(
  ( (Rule!15457 (regex!7828 Regex!12733) (tag!8692 String!54160) (isSeparator!7828 Bool) (transformation!7828 TokenValueInjection!15544)) )
))
(declare-fun r!4313 () Rule!15456)

(declare-fun e!2623983 () Bool)

(declare-fun inv!61226 (String!54160) Bool)

(declare-fun inv!61228 (TokenValueInjection!15544) Bool)

(assert (=> b!4226391 (= e!2623979 (and tp!1293860 (inv!61226 (tag!8692 r!4313)) (inv!61228 (transformation!7828 r!4313)) e!2623983))))

(declare-fun res!1737869 () Bool)

(declare-fun e!2623981 () Bool)

(assert (=> start!404138 (=> (not res!1737869) (not e!2623981))))

(declare-datatypes ((LexerInterface!7423 0))(
  ( (LexerInterfaceExt!7420 (__x!28340 Int)) (Lexer!7421) )
))
(declare-fun thiss!26728 () LexerInterface!7423)

(get-info :version)

(assert (=> start!404138 (= res!1737869 ((_ is Lexer!7421) thiss!26728))))

(assert (=> start!404138 e!2623981))

(assert (=> start!404138 true))

(declare-fun e!2623988 () Bool)

(assert (=> start!404138 e!2623988))

(assert (=> start!404138 e!2623979))

(declare-fun e!2623986 () Bool)

(assert (=> start!404138 e!2623986))

(declare-fun b!4226392 () Bool)

(declare-fun res!1737864 () Bool)

(assert (=> b!4226392 (=> (not res!1737864) (not e!2623981))))

(declare-datatypes ((List!46689 0))(
  ( (Nil!46565) (Cons!46565 (h!51985 Rule!15456) (t!349306 List!46689)) )
))
(declare-fun rules!4013 () List!46689)

(declare-fun contains!9651 (List!46689 Rule!15456) Bool)

(assert (=> b!4226392 (= res!1737864 (contains!9651 rules!4013 r!4313))))

(declare-fun b!4226393 () Bool)

(declare-fun res!1737868 () Bool)

(assert (=> b!4226393 (=> (not res!1737868) (not e!2623981))))

(declare-fun rulesValidInductive!2932 (LexerInterface!7423 List!46689) Bool)

(assert (=> b!4226393 (= res!1737868 (rulesValidInductive!2932 thiss!26728 rules!4013))))

(declare-fun b!4226394 () Bool)

(declare-fun res!1737865 () Bool)

(assert (=> b!4226394 (=> (not res!1737865) (not e!2623981))))

(declare-fun isEmpty!27598 (List!46689) Bool)

(assert (=> b!4226394 (= res!1737865 (not (isEmpty!27598 rules!4013)))))

(declare-fun b!4226395 () Bool)

(declare-fun e!2623982 () Bool)

(declare-fun tp!1293864 () Bool)

(assert (=> b!4226395 (= e!2623988 (and e!2623982 tp!1293864))))

(declare-fun b!4226396 () Bool)

(declare-fun e!2623984 () Bool)

(declare-fun tp!1293858 () Bool)

(assert (=> b!4226396 (= e!2623982 (and tp!1293858 (inv!61226 (tag!8692 (h!51985 rules!4013))) (inv!61228 (transformation!7828 (h!51985 rules!4013))) e!2623984))))

(declare-fun b!4226397 () Bool)

(declare-fun e!2623980 () Bool)

(assert (=> b!4226397 (= e!2623981 (not e!2623980))))

(declare-fun res!1737867 () Bool)

(assert (=> b!4226397 (=> res!1737867 e!2623980)))

(assert (=> b!4226397 (= res!1737867 (or (and ((_ is Cons!46565) rules!4013) (= r!4313 (h!51985 rules!4013))) (and ((_ is Cons!46565) rules!4013) (not (= r!4313 (h!51985 rules!4013)))) ((_ is Nil!46565) rules!4013)))))

(declare-fun ruleValid!3536 (LexerInterface!7423 Rule!15456) Bool)

(assert (=> b!4226397 (ruleValid!3536 thiss!26728 r!4313)))

(declare-datatypes ((Unit!65723 0))(
  ( (Unit!65724) )
))
(declare-fun lt!1503160 () Unit!65723)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2448 (LexerInterface!7423 Rule!15456 List!46689) Unit!65723)

(assert (=> b!4226397 (= lt!1503160 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2448 thiss!26728 r!4313 rules!4013))))

(declare-fun b!4226398 () Bool)

(declare-fun input!3561 () List!46688)

(declare-datatypes ((Token!14354 0))(
  ( (Token!14355 (value!243625 TokenValue!8058) (rule!10974 Rule!15456) (size!34175 Int) (originalCharacters!8208 List!46688)) )
))
(declare-datatypes ((tuple2!44262 0))(
  ( (tuple2!44263 (_1!25265 Token!14354) (_2!25265 List!46688)) )
))
(declare-datatypes ((Option!10014 0))(
  ( (None!10013) (Some!10013 (v!40927 tuple2!44262)) )
))
(declare-fun isEmpty!27599 (Option!10014) Bool)

(declare-fun maxPrefixOneRule!3408 (LexerInterface!7423 Rule!15456 List!46688) Option!10014)

(assert (=> b!4226398 (= e!2623980 (isEmpty!27599 (maxPrefixOneRule!3408 thiss!26728 r!4313 input!3561)))))

(declare-fun b!4226399 () Bool)

(declare-fun res!1737866 () Bool)

(assert (=> b!4226399 (=> (not res!1737866) (not e!2623981))))

(declare-fun maxPrefix!4461 (LexerInterface!7423 List!46689 List!46688) Option!10014)

(assert (=> b!4226399 (= res!1737866 (isEmpty!27599 (maxPrefix!4461 thiss!26728 rules!4013 input!3561)))))

(assert (=> b!4226400 (= e!2623983 (and tp!1293859 tp!1293863))))

(declare-fun b!4226401 () Bool)

(declare-fun tp_is_empty!22429 () Bool)

(declare-fun tp!1293862 () Bool)

(assert (=> b!4226401 (= e!2623986 (and tp_is_empty!22429 tp!1293862))))

(assert (=> b!4226402 (= e!2623984 (and tp!1293861 tp!1293857))))

(assert (= (and start!404138 res!1737869) b!4226394))

(assert (= (and b!4226394 res!1737865) b!4226393))

(assert (= (and b!4226393 res!1737868) b!4226392))

(assert (= (and b!4226392 res!1737864) b!4226399))

(assert (= (and b!4226399 res!1737866) b!4226397))

(assert (= (and b!4226397 (not res!1737867)) b!4226398))

(assert (= b!4226396 b!4226402))

(assert (= b!4226395 b!4226396))

(assert (= (and start!404138 ((_ is Cons!46565) rules!4013)) b!4226395))

(assert (= b!4226391 b!4226400))

(assert (= start!404138 b!4226391))

(assert (= (and start!404138 ((_ is Cons!46564) input!3561)) b!4226401))

(declare-fun m!4814313 () Bool)

(assert (=> b!4226398 m!4814313))

(assert (=> b!4226398 m!4814313))

(declare-fun m!4814315 () Bool)

(assert (=> b!4226398 m!4814315))

(declare-fun m!4814317 () Bool)

(assert (=> b!4226393 m!4814317))

(declare-fun m!4814319 () Bool)

(assert (=> b!4226391 m!4814319))

(declare-fun m!4814321 () Bool)

(assert (=> b!4226391 m!4814321))

(declare-fun m!4814323 () Bool)

(assert (=> b!4226397 m!4814323))

(declare-fun m!4814325 () Bool)

(assert (=> b!4226397 m!4814325))

(declare-fun m!4814327 () Bool)

(assert (=> b!4226399 m!4814327))

(assert (=> b!4226399 m!4814327))

(declare-fun m!4814329 () Bool)

(assert (=> b!4226399 m!4814329))

(declare-fun m!4814331 () Bool)

(assert (=> b!4226396 m!4814331))

(declare-fun m!4814333 () Bool)

(assert (=> b!4226396 m!4814333))

(declare-fun m!4814335 () Bool)

(assert (=> b!4226394 m!4814335))

(declare-fun m!4814337 () Bool)

(assert (=> b!4226392 m!4814337))

(check-sat (not b!4226391) (not b_next!125187) (not b!4226397) (not b_next!125189) (not b!4226401) b_and!333721 b_and!333719 b_and!333717 (not b!4226399) (not b_next!125193) (not b!4226395) (not b_next!125191) (not b!4226392) b_and!333723 tp_is_empty!22429 (not b!4226393) (not b!4226394) (not b!4226396) (not b!4226398))
(check-sat (not b_next!125193) (not b_next!125187) (not b_next!125191) b_and!333723 (not b_next!125189) b_and!333721 b_and!333719 b_and!333717)
