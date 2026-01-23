; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351802 () Bool)

(assert start!351802)

(declare-fun b!3747275 () Bool)

(declare-fun b_free!99905 () Bool)

(declare-fun b_next!100609 () Bool)

(assert (=> b!3747275 (= b_free!99905 (not b_next!100609))))

(declare-fun tp!1143322 () Bool)

(declare-fun b_and!278139 () Bool)

(assert (=> b!3747275 (= tp!1143322 b_and!278139)))

(declare-fun b_free!99907 () Bool)

(declare-fun b_next!100611 () Bool)

(assert (=> b!3747275 (= b_free!99907 (not b_next!100611))))

(declare-fun tp!1143327 () Bool)

(declare-fun b_and!278141 () Bool)

(assert (=> b!3747275 (= tp!1143327 b_and!278141)))

(declare-fun b!3747280 () Bool)

(declare-fun b_free!99909 () Bool)

(declare-fun b_next!100613 () Bool)

(assert (=> b!3747280 (= b_free!99909 (not b_next!100613))))

(declare-fun tp!1143319 () Bool)

(declare-fun b_and!278143 () Bool)

(assert (=> b!3747280 (= tp!1143319 b_and!278143)))

(declare-fun b_free!99911 () Bool)

(declare-fun b_next!100615 () Bool)

(assert (=> b!3747280 (= b_free!99911 (not b_next!100615))))

(declare-fun tp!1143323 () Bool)

(declare-fun b_and!278145 () Bool)

(assert (=> b!3747280 (= tp!1143323 b_and!278145)))

(declare-fun b!3747269 () Bool)

(declare-fun b_free!99913 () Bool)

(declare-fun b_next!100617 () Bool)

(assert (=> b!3747269 (= b_free!99913 (not b_next!100617))))

(declare-fun tp!1143328 () Bool)

(declare-fun b_and!278147 () Bool)

(assert (=> b!3747269 (= tp!1143328 b_and!278147)))

(declare-fun b_free!99915 () Bool)

(declare-fun b_next!100619 () Bool)

(assert (=> b!3747269 (= b_free!99915 (not b_next!100619))))

(declare-fun tp!1143324 () Bool)

(declare-fun b_and!278149 () Bool)

(assert (=> b!3747269 (= tp!1143324 b_and!278149)))

(declare-fun e!2317248 () Bool)

(assert (=> b!3747269 (= e!2317248 (and tp!1143328 tp!1143324))))

(declare-fun b!3747270 () Bool)

(declare-fun res!1518921 () Bool)

(declare-fun e!2317249 () Bool)

(assert (=> b!3747270 (=> (not res!1518921) (not e!2317249))))

(declare-datatypes ((List!39976 0))(
  ( (Nil!39852) (Cons!39852 (h!45272 (_ BitVec 16)) (t!302659 List!39976)) )
))
(declare-datatypes ((TokenValue!6314 0))(
  ( (FloatLiteralValue!12628 (text!44643 List!39976)) (TokenValueExt!6313 (__x!24845 Int)) (Broken!31570 (value!193942 List!39976)) (Object!6437) (End!6314) (Def!6314) (Underscore!6314) (Match!6314) (Else!6314) (Error!6314) (Case!6314) (If!6314) (Extends!6314) (Abstract!6314) (Class!6314) (Val!6314) (DelimiterValue!12628 (del!6374 List!39976)) (KeywordValue!6320 (value!193943 List!39976)) (CommentValue!12628 (value!193944 List!39976)) (WhitespaceValue!12628 (value!193945 List!39976)) (IndentationValue!6314 (value!193946 List!39976)) (String!45195) (Int32!6314) (Broken!31571 (value!193947 List!39976)) (Boolean!6315) (Unit!57675) (OperatorValue!6317 (op!6374 List!39976)) (IdentifierValue!12628 (value!193948 List!39976)) (IdentifierValue!12629 (value!193949 List!39976)) (WhitespaceValue!12629 (value!193950 List!39976)) (True!12628) (False!12628) (Broken!31572 (value!193951 List!39976)) (Broken!31573 (value!193952 List!39976)) (True!12629) (RightBrace!6314) (RightBracket!6314) (Colon!6314) (Null!6314) (Comma!6314) (LeftBracket!6314) (False!12629) (LeftBrace!6314) (ImaginaryLiteralValue!6314 (text!44644 List!39976)) (StringLiteralValue!18942 (value!193953 List!39976)) (EOFValue!6314 (value!193954 List!39976)) (IdentValue!6314 (value!193955 List!39976)) (DelimiterValue!12629 (value!193956 List!39976)) (DedentValue!6314 (value!193957 List!39976)) (NewLineValue!6314 (value!193958 List!39976)) (IntegerValue!18942 (value!193959 (_ BitVec 32)) (text!44645 List!39976)) (IntegerValue!18943 (value!193960 Int) (text!44646 List!39976)) (Times!6314) (Or!6314) (Equal!6314) (Minus!6314) (Broken!31574 (value!193961 List!39976)) (And!6314) (Div!6314) (LessEqual!6314) (Mod!6314) (Concat!17303) (Not!6314) (Plus!6314) (SpaceValue!6314 (value!193962 List!39976)) (IntegerValue!18944 (value!193963 Int) (text!44647 List!39976)) (StringLiteralValue!18943 (text!44648 List!39976)) (FloatLiteralValue!12629 (text!44649 List!39976)) (BytesLiteralValue!6314 (value!193964 List!39976)) (CommentValue!12629 (value!193965 List!39976)) (StringLiteralValue!18944 (value!193966 List!39976)) (ErrorTokenValue!6314 (msg!6375 List!39976)) )
))
(declare-datatypes ((C!22164 0))(
  ( (C!22165 (val!13130 Int)) )
))
(declare-datatypes ((List!39977 0))(
  ( (Nil!39853) (Cons!39853 (h!45273 C!22164) (t!302660 List!39977)) )
))
(declare-datatypes ((IArray!24367 0))(
  ( (IArray!24368 (innerList!12241 List!39977)) )
))
(declare-datatypes ((Conc!12181 0))(
  ( (Node!12181 (left!30862 Conc!12181) (right!31192 Conc!12181) (csize!24592 Int) (cheight!12392 Int)) (Leaf!18907 (xs!15383 IArray!24367) (csize!24593 Int)) (Empty!12181) )
))
(declare-datatypes ((BalanceConc!23976 0))(
  ( (BalanceConc!23977 (c!648916 Conc!12181)) )
))
(declare-datatypes ((TokenValueInjection!12056 0))(
  ( (TokenValueInjection!12057 (toValue!8432 Int) (toChars!8291 Int)) )
))
(declare-datatypes ((String!45196 0))(
  ( (String!45197 (value!193967 String)) )
))
(declare-datatypes ((Regex!10989 0))(
  ( (ElementMatch!10989 (c!648917 C!22164)) (Concat!17304 (regOne!22490 Regex!10989) (regTwo!22490 Regex!10989)) (EmptyExpr!10989) (Star!10989 (reg!11318 Regex!10989)) (EmptyLang!10989) (Union!10989 (regOne!22491 Regex!10989) (regTwo!22491 Regex!10989)) )
))
(declare-datatypes ((Rule!11968 0))(
  ( (Rule!11969 (regex!6084 Regex!10989) (tag!6944 String!45196) (isSeparator!6084 Bool) (transformation!6084 TokenValueInjection!12056)) )
))
(declare-fun rNSep!170 () Rule!11968)

(declare-fun rSep!170 () Rule!11968)

(assert (=> b!3747270 (= res!1518921 (and (not (isSeparator!6084 rNSep!170)) (isSeparator!6084 rSep!170)))))

(declare-fun res!1518923 () Bool)

(assert (=> start!351802 (=> (not res!1518923) (not e!2317249))))

(declare-datatypes ((LexerInterface!5673 0))(
  ( (LexerInterfaceExt!5670 (__x!24846 Int)) (Lexer!5671) )
))
(declare-fun thiss!27193 () LexerInterface!5673)

(get-info :version)

(assert (=> start!351802 (= res!1518923 ((_ is Lexer!5671) thiss!27193))))

(assert (=> start!351802 e!2317249))

(declare-fun e!2317244 () Bool)

(assert (=> start!351802 e!2317244))

(declare-fun e!2317252 () Bool)

(assert (=> start!351802 e!2317252))

(assert (=> start!351802 true))

(declare-fun tp_is_empty!18993 () Bool)

(assert (=> start!351802 tp_is_empty!18993))

(declare-fun e!2317245 () Bool)

(assert (=> start!351802 e!2317245))

(declare-fun b!3747271 () Bool)

(declare-fun res!1518922 () Bool)

(assert (=> b!3747271 (=> (not res!1518922) (not e!2317249))))

(declare-datatypes ((List!39978 0))(
  ( (Nil!39854) (Cons!39854 (h!45274 Rule!11968) (t!302661 List!39978)) )
))
(declare-fun rules!4213 () List!39978)

(assert (=> b!3747271 (= res!1518922 (and (or (not ((_ is Cons!39854) rules!4213)) (not (= (h!45274 rules!4213) rSep!170))) ((_ is Cons!39854) rules!4213)))))

(declare-fun b!3747272 () Bool)

(declare-fun res!1518920 () Bool)

(assert (=> b!3747272 (=> (not res!1518920) (not e!2317249))))

(declare-fun contains!8127 (List!39978 Rule!11968) Bool)

(assert (=> b!3747272 (= res!1518920 (contains!8127 rules!4213 rSep!170))))

(declare-fun b!3747273 () Bool)

(declare-fun e!2317242 () Bool)

(declare-fun tp!1143320 () Bool)

(assert (=> b!3747273 (= e!2317252 (and e!2317242 tp!1143320))))

(declare-fun e!2317246 () Bool)

(declare-fun tp!1143321 () Bool)

(declare-fun b!3747274 () Bool)

(declare-fun inv!53367 (String!45196) Bool)

(declare-fun inv!53369 (TokenValueInjection!12056) Bool)

(assert (=> b!3747274 (= e!2317244 (and tp!1143321 (inv!53367 (tag!6944 rNSep!170)) (inv!53369 (transformation!6084 rNSep!170)) e!2317246))))

(declare-fun e!2317247 () Bool)

(assert (=> b!3747275 (= e!2317247 (and tp!1143322 tp!1143327))))

(declare-fun b!3747276 () Bool)

(declare-fun res!1518917 () Bool)

(assert (=> b!3747276 (=> (not res!1518917) (not e!2317249))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!957 (Rule!11968 List!39978) Bool)

(assert (=> b!3747276 (= res!1518917 (ruleDisjointCharsFromAllFromOtherType!957 rNSep!170 rules!4213))))

(declare-fun b!3747277 () Bool)

(assert (=> b!3747277 (= e!2317249 (not true))))

(declare-fun lt!1299577 () Bool)

(assert (=> b!3747277 (= lt!1299577 (contains!8127 (t!302661 rules!4213) rSep!170))))

(declare-fun rulesInvariant!5070 (LexerInterface!5673 List!39978) Bool)

(assert (=> b!3747277 (rulesInvariant!5070 thiss!27193 (t!302661 rules!4213))))

(declare-datatypes ((Unit!57676 0))(
  ( (Unit!57677) )
))
(declare-fun lt!1299578 () Unit!57676)

(declare-fun lemmaInvariantOnRulesThenOnTail!714 (LexerInterface!5673 Rule!11968 List!39978) Unit!57676)

(assert (=> b!3747277 (= lt!1299578 (lemmaInvariantOnRulesThenOnTail!714 thiss!27193 (h!45274 rules!4213) (t!302661 rules!4213)))))

(declare-fun tp!1143325 () Bool)

(declare-fun b!3747278 () Bool)

(assert (=> b!3747278 (= e!2317242 (and tp!1143325 (inv!53367 (tag!6944 (h!45274 rules!4213))) (inv!53369 (transformation!6084 (h!45274 rules!4213))) e!2317247))))

(declare-fun tp!1143326 () Bool)

(declare-fun b!3747279 () Bool)

(assert (=> b!3747279 (= e!2317245 (and tp!1143326 (inv!53367 (tag!6944 rSep!170)) (inv!53369 (transformation!6084 rSep!170)) e!2317248))))

(assert (=> b!3747280 (= e!2317246 (and tp!1143319 tp!1143323))))

(declare-fun b!3747281 () Bool)

(declare-fun res!1518919 () Bool)

(assert (=> b!3747281 (=> (not res!1518919) (not e!2317249))))

(declare-fun c!6920 () C!22164)

(declare-fun contains!8128 (List!39977 C!22164) Bool)

(declare-fun usedCharacters!1252 (Regex!10989) List!39977)

(assert (=> b!3747281 (= res!1518919 (contains!8128 (usedCharacters!1252 (regex!6084 rNSep!170)) c!6920))))

(declare-fun b!3747282 () Bool)

(declare-fun res!1518918 () Bool)

(assert (=> b!3747282 (=> (not res!1518918) (not e!2317249))))

(assert (=> b!3747282 (= res!1518918 (rulesInvariant!5070 thiss!27193 rules!4213))))

(assert (= (and start!351802 res!1518923) b!3747282))

(assert (= (and b!3747282 res!1518918) b!3747272))

(assert (= (and b!3747272 res!1518920) b!3747281))

(assert (= (and b!3747281 res!1518919) b!3747270))

(assert (= (and b!3747270 res!1518921) b!3747276))

(assert (= (and b!3747276 res!1518917) b!3747271))

(assert (= (and b!3747271 res!1518922) b!3747277))

(assert (= b!3747274 b!3747280))

(assert (= start!351802 b!3747274))

(assert (= b!3747278 b!3747275))

(assert (= b!3747273 b!3747278))

(assert (= (and start!351802 ((_ is Cons!39854) rules!4213)) b!3747273))

(assert (= b!3747279 b!3747269))

(assert (= start!351802 b!3747279))

(declare-fun m!4239481 () Bool)

(assert (=> b!3747272 m!4239481))

(declare-fun m!4239483 () Bool)

(assert (=> b!3747277 m!4239483))

(declare-fun m!4239485 () Bool)

(assert (=> b!3747277 m!4239485))

(declare-fun m!4239487 () Bool)

(assert (=> b!3747277 m!4239487))

(declare-fun m!4239489 () Bool)

(assert (=> b!3747278 m!4239489))

(declare-fun m!4239491 () Bool)

(assert (=> b!3747278 m!4239491))

(declare-fun m!4239493 () Bool)

(assert (=> b!3747281 m!4239493))

(assert (=> b!3747281 m!4239493))

(declare-fun m!4239495 () Bool)

(assert (=> b!3747281 m!4239495))

(declare-fun m!4239497 () Bool)

(assert (=> b!3747276 m!4239497))

(declare-fun m!4239499 () Bool)

(assert (=> b!3747282 m!4239499))

(declare-fun m!4239501 () Bool)

(assert (=> b!3747274 m!4239501))

(declare-fun m!4239503 () Bool)

(assert (=> b!3747274 m!4239503))

(declare-fun m!4239505 () Bool)

(assert (=> b!3747279 m!4239505))

(declare-fun m!4239507 () Bool)

(assert (=> b!3747279 m!4239507))

(check-sat (not b!3747273) (not b_next!100609) (not b!3747281) (not b_next!100611) b_and!278147 b_and!278145 b_and!278141 (not b!3747272) (not b!3747279) b_and!278143 tp_is_empty!18993 b_and!278139 (not b!3747282) (not b!3747274) (not b_next!100617) (not b_next!100613) b_and!278149 (not b!3747278) (not b_next!100615) (not b!3747276) (not b!3747277) (not b_next!100619))
(check-sat b_and!278149 (not b_next!100609) (not b_next!100615) (not b_next!100619) (not b_next!100611) b_and!278147 b_and!278145 b_and!278141 b_and!278143 b_and!278139 (not b_next!100617) (not b_next!100613))
