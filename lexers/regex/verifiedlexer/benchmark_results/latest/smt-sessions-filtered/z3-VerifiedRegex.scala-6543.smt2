; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!346022 () Bool)

(assert start!346022)

(declare-fun b!3684235 () Bool)

(declare-fun b_free!97685 () Bool)

(declare-fun b_next!98389 () Bool)

(assert (=> b!3684235 (= b_free!97685 (not b_next!98389))))

(declare-fun tp!1119884 () Bool)

(declare-fun b_and!275359 () Bool)

(assert (=> b!3684235 (= tp!1119884 b_and!275359)))

(declare-fun b_free!97687 () Bool)

(declare-fun b_next!98391 () Bool)

(assert (=> b!3684235 (= b_free!97687 (not b_next!98391))))

(declare-fun tp!1119887 () Bool)

(declare-fun b_and!275361 () Bool)

(assert (=> b!3684235 (= tp!1119887 b_and!275361)))

(declare-fun b!3684232 () Bool)

(declare-fun e!2281372 () Bool)

(declare-fun tp_is_empty!18333 () Bool)

(declare-fun tp!1119888 () Bool)

(assert (=> b!3684232 (= e!2281372 (and tp_is_empty!18333 tp!1119888))))

(declare-fun b!3684233 () Bool)

(declare-fun res!1496855 () Bool)

(declare-fun e!2281367 () Bool)

(assert (=> b!3684233 (=> (not res!1496855) (not e!2281367))))

(declare-datatypes ((LexerInterface!5455 0))(
  ( (LexerInterfaceExt!5452 (__x!24409 Int)) (Lexer!5453) )
))
(declare-fun thiss!25197 () LexerInterface!5455)

(declare-datatypes ((List!39030 0))(
  ( (Nil!38906) (Cons!38906 (h!44326 (_ BitVec 16)) (t!300989 List!39030)) )
))
(declare-datatypes ((TokenValue!6096 0))(
  ( (FloatLiteralValue!12192 (text!43117 List!39030)) (TokenValueExt!6095 (__x!24410 Int)) (Broken!30480 (value!187615 List!39030)) (Object!6219) (End!6096) (Def!6096) (Underscore!6096) (Match!6096) (Else!6096) (Error!6096) (Case!6096) (If!6096) (Extends!6096) (Abstract!6096) (Class!6096) (Val!6096) (DelimiterValue!12192 (del!6156 List!39030)) (KeywordValue!6102 (value!187616 List!39030)) (CommentValue!12192 (value!187617 List!39030)) (WhitespaceValue!12192 (value!187618 List!39030)) (IndentationValue!6096 (value!187619 List!39030)) (String!43813) (Int32!6096) (Broken!30481 (value!187620 List!39030)) (Boolean!6097) (Unit!56993) (OperatorValue!6099 (op!6156 List!39030)) (IdentifierValue!12192 (value!187621 List!39030)) (IdentifierValue!12193 (value!187622 List!39030)) (WhitespaceValue!12193 (value!187623 List!39030)) (True!12192) (False!12192) (Broken!30482 (value!187624 List!39030)) (Broken!30483 (value!187625 List!39030)) (True!12193) (RightBrace!6096) (RightBracket!6096) (Colon!6096) (Null!6096) (Comma!6096) (LeftBracket!6096) (False!12193) (LeftBrace!6096) (ImaginaryLiteralValue!6096 (text!43118 List!39030)) (StringLiteralValue!18288 (value!187626 List!39030)) (EOFValue!6096 (value!187627 List!39030)) (IdentValue!6096 (value!187628 List!39030)) (DelimiterValue!12193 (value!187629 List!39030)) (DedentValue!6096 (value!187630 List!39030)) (NewLineValue!6096 (value!187631 List!39030)) (IntegerValue!18288 (value!187632 (_ BitVec 32)) (text!43119 List!39030)) (IntegerValue!18289 (value!187633 Int) (text!43120 List!39030)) (Times!6096) (Or!6096) (Equal!6096) (Minus!6096) (Broken!30484 (value!187634 List!39030)) (And!6096) (Div!6096) (LessEqual!6096) (Mod!6096) (Concat!16721) (Not!6096) (Plus!6096) (SpaceValue!6096 (value!187635 List!39030)) (IntegerValue!18290 (value!187636 Int) (text!43121 List!39030)) (StringLiteralValue!18289 (text!43122 List!39030)) (FloatLiteralValue!12193 (text!43123 List!39030)) (BytesLiteralValue!6096 (value!187637 List!39030)) (CommentValue!12193 (value!187638 List!39030)) (StringLiteralValue!18290 (value!187639 List!39030)) (ErrorTokenValue!6096 (msg!6157 List!39030)) )
))
(declare-datatypes ((C!21436 0))(
  ( (C!21437 (val!12766 Int)) )
))
(declare-datatypes ((List!39031 0))(
  ( (Nil!38907) (Cons!38907 (h!44327 C!21436) (t!300990 List!39031)) )
))
(declare-datatypes ((IArray!23849 0))(
  ( (IArray!23850 (innerList!11982 List!39031)) )
))
(declare-datatypes ((String!43814 0))(
  ( (String!43815 (value!187640 String)) )
))
(declare-datatypes ((Regex!10625 0))(
  ( (ElementMatch!10625 (c!637323 C!21436)) (Concat!16722 (regOne!21762 Regex!10625) (regTwo!21762 Regex!10625)) (EmptyExpr!10625) (Star!10625 (reg!10954 Regex!10625)) (EmptyLang!10625) (Union!10625 (regOne!21763 Regex!10625) (regTwo!21763 Regex!10625)) )
))
(declare-datatypes ((Conc!11922 0))(
  ( (Node!11922 (left!30357 Conc!11922) (right!30687 Conc!11922) (csize!24074 Int) (cheight!12133 Int)) (Leaf!18466 (xs!15124 IArray!23849) (csize!24075 Int)) (Empty!11922) )
))
(declare-datatypes ((BalanceConc!23458 0))(
  ( (BalanceConc!23459 (c!637324 Conc!11922)) )
))
(declare-datatypes ((TokenValueInjection!11620 0))(
  ( (TokenValueInjection!11621 (toValue!8174 Int) (toChars!8033 Int)) )
))
(declare-datatypes ((Rule!11532 0))(
  ( (Rule!11533 (regex!5866 Regex!10625) (tag!6672 String!43814) (isSeparator!5866 Bool) (transformation!5866 TokenValueInjection!11620)) )
))
(declare-datatypes ((List!39032 0))(
  ( (Nil!38908) (Cons!38908 (h!44328 Rule!11532) (t!300991 List!39032)) )
))
(declare-fun rules!3568 () List!39032)

(declare-fun rulesInvariant!4852 (LexerInterface!5455 List!39032) Bool)

(assert (=> b!3684233 (= res!1496855 (rulesInvariant!4852 thiss!25197 rules!3568))))

(declare-fun b!3684234 () Bool)

(declare-fun e!2281374 () Bool)

(declare-fun e!2281369 () Bool)

(declare-fun tp!1119886 () Bool)

(assert (=> b!3684234 (= e!2281374 (and e!2281369 tp!1119886))))

(declare-fun e!2281371 () Bool)

(assert (=> b!3684235 (= e!2281371 (and tp!1119884 tp!1119887))))

(declare-fun tp!1119885 () Bool)

(declare-fun b!3684236 () Bool)

(declare-fun inv!52395 (String!43814) Bool)

(declare-fun inv!52397 (TokenValueInjection!11620) Bool)

(assert (=> b!3684236 (= e!2281369 (and tp!1119885 (inv!52395 (tag!6672 (h!44328 rules!3568))) (inv!52397 (transformation!5866 (h!44328 rules!3568))) e!2281371))))

(declare-fun b!3684238 () Bool)

(declare-fun e!2281373 () Bool)

(assert (=> b!3684238 (= e!2281373 (not true))))

(declare-fun lt!1289073 () List!39031)

(declare-fun input!3129 () List!39031)

(declare-fun suffix!1448 () List!39031)

(declare-fun isPrefix!3219 (List!39031 List!39031) Bool)

(declare-fun ++!9685 (List!39031 List!39031) List!39031)

(assert (=> b!3684238 (isPrefix!3219 lt!1289073 (++!9685 input!3129 suffix!1448))))

(declare-datatypes ((Unit!56994 0))(
  ( (Unit!56995) )
))
(declare-fun lt!1289076 () Unit!56994)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!550 (List!39031 List!39031 List!39031) Unit!56994)

(assert (=> b!3684238 (= lt!1289076 (lemmaPrefixStaysPrefixWhenAddingToSuffix!550 lt!1289073 input!3129 suffix!1448))))

(declare-datatypes ((Token!11098 0))(
  ( (Token!11099 (value!187641 TokenValue!6096) (rule!8708 Rule!11532) (size!29751 Int) (originalCharacters!6580 List!39031)) )
))
(declare-datatypes ((tuple2!38784 0))(
  ( (tuple2!38785 (_1!22526 Token!11098) (_2!22526 List!39031)) )
))
(declare-fun lt!1289074 () tuple2!38784)

(assert (=> b!3684238 (isPrefix!3219 lt!1289073 (++!9685 lt!1289073 (_2!22526 lt!1289074)))))

(declare-fun lt!1289072 () Unit!56994)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2136 (List!39031 List!39031) Unit!56994)

(assert (=> b!3684238 (= lt!1289072 (lemmaConcatTwoListThenFirstIsPrefix!2136 lt!1289073 (_2!22526 lt!1289074)))))

(declare-datatypes ((Option!8344 0))(
  ( (None!8343) (Some!8343 (v!38289 tuple2!38784)) )
))
(declare-fun get!12878 (Option!8344) tuple2!38784)

(declare-fun maxPrefix!2983 (LexerInterface!5455 List!39032 List!39031) Option!8344)

(assert (=> b!3684238 (= lt!1289074 (get!12878 (maxPrefix!2983 thiss!25197 rules!3568 input!3129)))))

(declare-datatypes ((List!39033 0))(
  ( (Nil!38909) (Cons!38909 (h!44329 Token!11098) (t!300992 List!39033)) )
))
(declare-datatypes ((IArray!23851 0))(
  ( (IArray!23852 (innerList!11983 List!39033)) )
))
(declare-datatypes ((Conc!11923 0))(
  ( (Node!11923 (left!30358 Conc!11923) (right!30688 Conc!11923) (csize!24076 Int) (cheight!12134 Int)) (Leaf!18467 (xs!15125 IArray!23851) (csize!24077 Int)) (Empty!11923) )
))
(declare-datatypes ((BalanceConc!23460 0))(
  ( (BalanceConc!23461 (c!637325 Conc!11923)) )
))
(declare-datatypes ((tuple2!38786 0))(
  ( (tuple2!38787 (_1!22527 BalanceConc!23460) (_2!22527 BalanceConc!23458)) )
))
(declare-fun lt!1289075 () tuple2!38786)

(declare-fun list!14488 (BalanceConc!23458) List!39031)

(declare-fun charsOf!3877 (Token!11098) BalanceConc!23458)

(declare-fun head!7920 (List!39033) Token!11098)

(declare-fun list!14489 (BalanceConc!23460) List!39033)

(assert (=> b!3684238 (= lt!1289073 (list!14488 (charsOf!3877 (head!7920 (list!14489 (_1!22527 lt!1289075))))))))

(declare-fun b!3684239 () Bool)

(assert (=> b!3684239 (= e!2281367 e!2281373)))

(declare-fun res!1496856 () Bool)

(assert (=> b!3684239 (=> (not res!1496856) (not e!2281373))))

(declare-fun isEmpty!23118 (BalanceConc!23460) Bool)

(assert (=> b!3684239 (= res!1496856 (not (isEmpty!23118 (_1!22527 lt!1289075))))))

(declare-fun lex!2596 (LexerInterface!5455 List!39032 BalanceConc!23458) tuple2!38786)

(declare-fun seqFromList!4415 (List!39031) BalanceConc!23458)

(assert (=> b!3684239 (= lt!1289075 (lex!2596 thiss!25197 rules!3568 (seqFromList!4415 input!3129)))))

(declare-fun b!3684240 () Bool)

(declare-fun res!1496854 () Bool)

(assert (=> b!3684240 (=> (not res!1496854) (not e!2281367))))

(declare-fun isEmpty!23119 (List!39032) Bool)

(assert (=> b!3684240 (= res!1496854 (not (isEmpty!23119 rules!3568)))))

(declare-fun res!1496853 () Bool)

(assert (=> start!346022 (=> (not res!1496853) (not e!2281367))))

(get-info :version)

(assert (=> start!346022 (= res!1496853 ((_ is Lexer!5453) thiss!25197))))

(assert (=> start!346022 e!2281367))

(assert (=> start!346022 true))

(assert (=> start!346022 e!2281374))

(declare-fun e!2281370 () Bool)

(assert (=> start!346022 e!2281370))

(assert (=> start!346022 e!2281372))

(declare-fun b!3684237 () Bool)

(declare-fun tp!1119883 () Bool)

(assert (=> b!3684237 (= e!2281370 (and tp_is_empty!18333 tp!1119883))))

(assert (= (and start!346022 res!1496853) b!3684240))

(assert (= (and b!3684240 res!1496854) b!3684233))

(assert (= (and b!3684233 res!1496855) b!3684239))

(assert (= (and b!3684239 res!1496856) b!3684238))

(assert (= b!3684236 b!3684235))

(assert (= b!3684234 b!3684236))

(assert (= (and start!346022 ((_ is Cons!38908) rules!3568)) b!3684234))

(assert (= (and start!346022 ((_ is Cons!38907) suffix!1448)) b!3684237))

(assert (= (and start!346022 ((_ is Cons!38907) input!3129)) b!3684232))

(declare-fun m!4195583 () Bool)

(assert (=> b!3684236 m!4195583))

(declare-fun m!4195585 () Bool)

(assert (=> b!3684236 m!4195585))

(declare-fun m!4195587 () Bool)

(assert (=> b!3684233 m!4195587))

(declare-fun m!4195589 () Bool)

(assert (=> b!3684238 m!4195589))

(declare-fun m!4195591 () Bool)

(assert (=> b!3684238 m!4195591))

(declare-fun m!4195593 () Bool)

(assert (=> b!3684238 m!4195593))

(declare-fun m!4195595 () Bool)

(assert (=> b!3684238 m!4195595))

(assert (=> b!3684238 m!4195589))

(declare-fun m!4195597 () Bool)

(assert (=> b!3684238 m!4195597))

(declare-fun m!4195599 () Bool)

(assert (=> b!3684238 m!4195599))

(assert (=> b!3684238 m!4195597))

(declare-fun m!4195601 () Bool)

(assert (=> b!3684238 m!4195601))

(declare-fun m!4195603 () Bool)

(assert (=> b!3684238 m!4195603))

(declare-fun m!4195605 () Bool)

(assert (=> b!3684238 m!4195605))

(assert (=> b!3684238 m!4195603))

(declare-fun m!4195607 () Bool)

(assert (=> b!3684238 m!4195607))

(assert (=> b!3684238 m!4195593))

(assert (=> b!3684238 m!4195595))

(assert (=> b!3684238 m!4195605))

(declare-fun m!4195609 () Bool)

(assert (=> b!3684238 m!4195609))

(declare-fun m!4195611 () Bool)

(assert (=> b!3684238 m!4195611))

(declare-fun m!4195613 () Bool)

(assert (=> b!3684239 m!4195613))

(declare-fun m!4195615 () Bool)

(assert (=> b!3684239 m!4195615))

(assert (=> b!3684239 m!4195615))

(declare-fun m!4195617 () Bool)

(assert (=> b!3684239 m!4195617))

(declare-fun m!4195619 () Bool)

(assert (=> b!3684240 m!4195619))

(check-sat (not b!3684239) b_and!275359 b_and!275361 (not b!3684238) (not b_next!98389) tp_is_empty!18333 (not b_next!98391) (not b!3684240) (not b!3684233) (not b!3684232) (not b!3684236) (not b!3684237) (not b!3684234))
(check-sat b_and!275359 b_and!275361 (not b_next!98391) (not b_next!98389))
