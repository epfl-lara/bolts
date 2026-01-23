; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403718 () Bool)

(assert start!403718)

(declare-fun b!4223450 () Bool)

(declare-fun b_free!124219 () Bool)

(declare-fun b_next!124923 () Bool)

(assert (=> b!4223450 (= b_free!124219 (not b_next!124923))))

(declare-fun tp!1292597 () Bool)

(declare-fun b_and!333429 () Bool)

(assert (=> b!4223450 (= tp!1292597 b_and!333429)))

(declare-fun b_free!124221 () Bool)

(declare-fun b_next!124925 () Bool)

(assert (=> b!4223450 (= b_free!124221 (not b_next!124925))))

(declare-fun tp!1292595 () Bool)

(declare-fun b_and!333431 () Bool)

(assert (=> b!4223450 (= tp!1292595 b_and!333431)))

(declare-fun b!4223454 () Bool)

(declare-fun b_free!124223 () Bool)

(declare-fun b_next!124927 () Bool)

(assert (=> b!4223454 (= b_free!124223 (not b_next!124927))))

(declare-fun tp!1292598 () Bool)

(declare-fun b_and!333433 () Bool)

(assert (=> b!4223454 (= tp!1292598 b_and!333433)))

(declare-fun b_free!124225 () Bool)

(declare-fun b_next!124929 () Bool)

(assert (=> b!4223454 (= b_free!124225 (not b_next!124929))))

(declare-fun tp!1292596 () Bool)

(declare-fun b_and!333435 () Bool)

(assert (=> b!4223454 (= tp!1292596 b_and!333435)))

(declare-fun b!4223448 () Bool)

(declare-fun e!2622196 () Bool)

(declare-fun tp_is_empty!22381 () Bool)

(declare-fun tp!1292601 () Bool)

(assert (=> b!4223448 (= e!2622196 (and tp_is_empty!22381 tp!1292601))))

(declare-fun b!4223449 () Bool)

(declare-fun res!1736266 () Bool)

(declare-fun e!2622190 () Bool)

(assert (=> b!4223449 (=> (not res!1736266) (not e!2622190))))

(declare-datatypes ((LexerInterface!7399 0))(
  ( (LexerInterfaceExt!7396 (__x!28291 Int)) (Lexer!7397) )
))
(declare-fun thiss!26728 () LexerInterface!7399)

(declare-datatypes ((C!25612 0))(
  ( (C!25613 (val!14968 Int)) )
))
(declare-datatypes ((List!46615 0))(
  ( (Nil!46491) (Cons!46491 (h!51911 C!25612) (t!349200 List!46615)) )
))
(declare-fun input!3561 () List!46615)

(declare-datatypes ((List!46616 0))(
  ( (Nil!46492) (Cons!46492 (h!51912 (_ BitVec 16)) (t!349201 List!46616)) )
))
(declare-datatypes ((TokenValue!8034 0))(
  ( (FloatLiteralValue!16068 (text!56683 List!46616)) (TokenValueExt!8033 (__x!28292 Int)) (Broken!40170 (value!242915 List!46616)) (Object!8157) (End!8034) (Def!8034) (Underscore!8034) (Match!8034) (Else!8034) (Error!8034) (Case!8034) (If!8034) (Extends!8034) (Abstract!8034) (Class!8034) (Val!8034) (DelimiterValue!16068 (del!8094 List!46616)) (KeywordValue!8040 (value!242916 List!46616)) (CommentValue!16068 (value!242917 List!46616)) (WhitespaceValue!16068 (value!242918 List!46616)) (IndentationValue!8034 (value!242919 List!46616)) (String!54039) (Int32!8034) (Broken!40171 (value!242920 List!46616)) (Boolean!8035) (Unit!65650) (OperatorValue!8037 (op!8094 List!46616)) (IdentifierValue!16068 (value!242921 List!46616)) (IdentifierValue!16069 (value!242922 List!46616)) (WhitespaceValue!16069 (value!242923 List!46616)) (True!16068) (False!16068) (Broken!40172 (value!242924 List!46616)) (Broken!40173 (value!242925 List!46616)) (True!16069) (RightBrace!8034) (RightBracket!8034) (Colon!8034) (Null!8034) (Comma!8034) (LeftBracket!8034) (False!16069) (LeftBrace!8034) (ImaginaryLiteralValue!8034 (text!56684 List!46616)) (StringLiteralValue!24102 (value!242926 List!46616)) (EOFValue!8034 (value!242927 List!46616)) (IdentValue!8034 (value!242928 List!46616)) (DelimiterValue!16069 (value!242929 List!46616)) (DedentValue!8034 (value!242930 List!46616)) (NewLineValue!8034 (value!242931 List!46616)) (IntegerValue!24102 (value!242932 (_ BitVec 32)) (text!56685 List!46616)) (IntegerValue!24103 (value!242933 Int) (text!56686 List!46616)) (Times!8034) (Or!8034) (Equal!8034) (Minus!8034) (Broken!40174 (value!242934 List!46616)) (And!8034) (Div!8034) (LessEqual!8034) (Mod!8034) (Concat!20743) (Not!8034) (Plus!8034) (SpaceValue!8034 (value!242935 List!46616)) (IntegerValue!24104 (value!242936 Int) (text!56687 List!46616)) (StringLiteralValue!24103 (text!56688 List!46616)) (FloatLiteralValue!16069 (text!56689 List!46616)) (BytesLiteralValue!8034 (value!242937 List!46616)) (CommentValue!16069 (value!242938 List!46616)) (StringLiteralValue!24104 (value!242939 List!46616)) (ErrorTokenValue!8034 (msg!8095 List!46616)) )
))
(declare-datatypes ((IArray!28035 0))(
  ( (IArray!28036 (innerList!14075 List!46615)) )
))
(declare-datatypes ((Conc!14015 0))(
  ( (Node!14015 (left!34560 Conc!14015) (right!34890 Conc!14015) (csize!28260 Int) (cheight!14226 Int)) (Leaf!21661 (xs!17321 IArray!28035) (csize!28261 Int)) (Empty!14015) )
))
(declare-datatypes ((BalanceConc!27624 0))(
  ( (BalanceConc!27625 (c!718464 Conc!14015)) )
))
(declare-datatypes ((TokenValueInjection!15496 0))(
  ( (TokenValueInjection!15497 (toValue!10528 Int) (toChars!10387 Int)) )
))
(declare-datatypes ((Regex!12709 0))(
  ( (ElementMatch!12709 (c!718465 C!25612)) (Concat!20744 (regOne!25930 Regex!12709) (regTwo!25930 Regex!12709)) (EmptyExpr!12709) (Star!12709 (reg!13038 Regex!12709)) (EmptyLang!12709) (Union!12709 (regOne!25931 Regex!12709) (regTwo!25931 Regex!12709)) )
))
(declare-datatypes ((String!54040 0))(
  ( (String!54041 (value!242940 String)) )
))
(declare-datatypes ((Rule!15408 0))(
  ( (Rule!15409 (regex!7804 Regex!12709) (tag!8668 String!54040) (isSeparator!7804 Bool) (transformation!7804 TokenValueInjection!15496)) )
))
(declare-datatypes ((List!46617 0))(
  ( (Nil!46493) (Cons!46493 (h!51913 Rule!15408) (t!349202 List!46617)) )
))
(declare-fun rules!4013 () List!46617)

(declare-datatypes ((Token!14306 0))(
  ( (Token!14307 (value!242941 TokenValue!8034) (rule!10944 Rule!15408) (size!34129 Int) (originalCharacters!8184 List!46615)) )
))
(declare-datatypes ((tuple2!44202 0))(
  ( (tuple2!44203 (_1!25235 Token!14306) (_2!25235 List!46615)) )
))
(declare-datatypes ((Option!9990 0))(
  ( (None!9989) (Some!9989 (v!40887 tuple2!44202)) )
))
(declare-fun isEmpty!27544 (Option!9990) Bool)

(declare-fun maxPrefix!4437 (LexerInterface!7399 List!46617 List!46615) Option!9990)

(assert (=> b!4223449 (= res!1736266 (isEmpty!27544 (maxPrefix!4437 thiss!26728 rules!4013 input!3561)))))

(declare-fun e!2622191 () Bool)

(assert (=> b!4223450 (= e!2622191 (and tp!1292597 tp!1292595))))

(declare-fun e!2622198 () Bool)

(declare-fun tp!1292602 () Bool)

(declare-fun e!2622197 () Bool)

(declare-fun b!4223451 () Bool)

(declare-fun inv!61162 (String!54040) Bool)

(declare-fun inv!61164 (TokenValueInjection!15496) Bool)

(assert (=> b!4223451 (= e!2622198 (and tp!1292602 (inv!61162 (tag!8668 (h!51913 rules!4013))) (inv!61164 (transformation!7804 (h!51913 rules!4013))) e!2622197))))

(declare-fun b!4223452 () Bool)

(assert (=> b!4223452 (= e!2622190 (not true))))

(declare-fun r!4313 () Rule!15408)

(declare-fun ruleValid!3512 (LexerInterface!7399 Rule!15408) Bool)

(assert (=> b!4223452 (ruleValid!3512 thiss!26728 r!4313)))

(declare-datatypes ((Unit!65651 0))(
  ( (Unit!65652) )
))
(declare-fun lt!1502512 () Unit!65651)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2426 (LexerInterface!7399 Rule!15408 List!46617) Unit!65651)

(assert (=> b!4223452 (= lt!1502512 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2426 thiss!26728 r!4313 rules!4013))))

(assert (=> b!4223454 (= e!2622197 (and tp!1292598 tp!1292596))))

(declare-fun b!4223455 () Bool)

(declare-fun res!1736267 () Bool)

(assert (=> b!4223455 (=> (not res!1736267) (not e!2622190))))

(declare-fun contains!9627 (List!46617 Rule!15408) Bool)

(assert (=> b!4223455 (= res!1736267 (contains!9627 rules!4013 r!4313))))

(declare-fun b!4223456 () Bool)

(declare-fun res!1736270 () Bool)

(assert (=> b!4223456 (=> (not res!1736270) (not e!2622190))))

(declare-fun rulesValidInductive!2908 (LexerInterface!7399 List!46617) Bool)

(assert (=> b!4223456 (= res!1736270 (rulesValidInductive!2908 thiss!26728 rules!4013))))

(declare-fun b!4223457 () Bool)

(declare-fun e!2622193 () Bool)

(declare-fun tp!1292599 () Bool)

(assert (=> b!4223457 (= e!2622193 (and e!2622198 tp!1292599))))

(declare-fun b!4223458 () Bool)

(declare-fun tp!1292600 () Bool)

(declare-fun e!2622194 () Bool)

(assert (=> b!4223458 (= e!2622194 (and tp!1292600 (inv!61162 (tag!8668 r!4313)) (inv!61164 (transformation!7804 r!4313)) e!2622191))))

(declare-fun res!1736268 () Bool)

(assert (=> start!403718 (=> (not res!1736268) (not e!2622190))))

(get-info :version)

(assert (=> start!403718 (= res!1736268 ((_ is Lexer!7397) thiss!26728))))

(assert (=> start!403718 e!2622190))

(assert (=> start!403718 true))

(assert (=> start!403718 e!2622193))

(assert (=> start!403718 e!2622194))

(assert (=> start!403718 e!2622196))

(declare-fun b!4223453 () Bool)

(declare-fun res!1736269 () Bool)

(assert (=> b!4223453 (=> (not res!1736269) (not e!2622190))))

(declare-fun isEmpty!27545 (List!46617) Bool)

(assert (=> b!4223453 (= res!1736269 (not (isEmpty!27545 rules!4013)))))

(assert (= (and start!403718 res!1736268) b!4223453))

(assert (= (and b!4223453 res!1736269) b!4223456))

(assert (= (and b!4223456 res!1736270) b!4223455))

(assert (= (and b!4223455 res!1736267) b!4223449))

(assert (= (and b!4223449 res!1736266) b!4223452))

(assert (= b!4223451 b!4223454))

(assert (= b!4223457 b!4223451))

(assert (= (and start!403718 ((_ is Cons!46493) rules!4013)) b!4223457))

(assert (= b!4223458 b!4223450))

(assert (= start!403718 b!4223458))

(assert (= (and start!403718 ((_ is Cons!46491) input!3561)) b!4223448))

(declare-fun m!4811993 () Bool)

(assert (=> b!4223452 m!4811993))

(declare-fun m!4811995 () Bool)

(assert (=> b!4223452 m!4811995))

(declare-fun m!4811997 () Bool)

(assert (=> b!4223451 m!4811997))

(declare-fun m!4811999 () Bool)

(assert (=> b!4223451 m!4811999))

(declare-fun m!4812001 () Bool)

(assert (=> b!4223456 m!4812001))

(declare-fun m!4812003 () Bool)

(assert (=> b!4223458 m!4812003))

(declare-fun m!4812005 () Bool)

(assert (=> b!4223458 m!4812005))

(declare-fun m!4812007 () Bool)

(assert (=> b!4223449 m!4812007))

(assert (=> b!4223449 m!4812007))

(declare-fun m!4812009 () Bool)

(assert (=> b!4223449 m!4812009))

(declare-fun m!4812011 () Bool)

(assert (=> b!4223455 m!4812011))

(declare-fun m!4812013 () Bool)

(assert (=> b!4223453 m!4812013))

(check-sat (not b!4223458) (not b!4223453) (not b_next!124929) (not b!4223457) b_and!333435 (not b!4223455) b_and!333429 b_and!333433 (not b!4223452) (not b_next!124925) tp_is_empty!22381 (not b_next!124927) (not b!4223448) (not b!4223449) (not b!4223456) (not b_next!124923) b_and!333431 (not b!4223451))
(check-sat b_and!333435 (not b_next!124929) b_and!333429 b_and!333433 (not b_next!124925) (not b_next!124927) (not b_next!124923) b_and!333431)
