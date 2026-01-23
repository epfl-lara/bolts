; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!346018 () Bool)

(assert start!346018)

(declare-fun b!3684180 () Bool)

(declare-fun b_free!97677 () Bool)

(declare-fun b_next!98381 () Bool)

(assert (=> b!3684180 (= b_free!97677 (not b_next!98381))))

(declare-fun tp!1119848 () Bool)

(declare-fun b_and!275351 () Bool)

(assert (=> b!3684180 (= tp!1119848 b_and!275351)))

(declare-fun b_free!97679 () Bool)

(declare-fun b_next!98383 () Bool)

(assert (=> b!3684180 (= b_free!97679 (not b_next!98383))))

(declare-fun tp!1119850 () Bool)

(declare-fun b_and!275353 () Bool)

(assert (=> b!3684180 (= tp!1119850 b_and!275353)))

(declare-fun e!2281320 () Bool)

(declare-fun tp!1119852 () Bool)

(declare-fun e!2281324 () Bool)

(declare-fun b!3684179 () Bool)

(declare-datatypes ((List!39022 0))(
  ( (Nil!38898) (Cons!38898 (h!44318 (_ BitVec 16)) (t!300981 List!39022)) )
))
(declare-datatypes ((TokenValue!6094 0))(
  ( (FloatLiteralValue!12188 (text!43103 List!39022)) (TokenValueExt!6093 (__x!24405 Int)) (Broken!30470 (value!187558 List!39022)) (Object!6217) (End!6094) (Def!6094) (Underscore!6094) (Match!6094) (Else!6094) (Error!6094) (Case!6094) (If!6094) (Extends!6094) (Abstract!6094) (Class!6094) (Val!6094) (DelimiterValue!12188 (del!6154 List!39022)) (KeywordValue!6100 (value!187559 List!39022)) (CommentValue!12188 (value!187560 List!39022)) (WhitespaceValue!12188 (value!187561 List!39022)) (IndentationValue!6094 (value!187562 List!39022)) (String!43803) (Int32!6094) (Broken!30471 (value!187563 List!39022)) (Boolean!6095) (Unit!56987) (OperatorValue!6097 (op!6154 List!39022)) (IdentifierValue!12188 (value!187564 List!39022)) (IdentifierValue!12189 (value!187565 List!39022)) (WhitespaceValue!12189 (value!187566 List!39022)) (True!12188) (False!12188) (Broken!30472 (value!187567 List!39022)) (Broken!30473 (value!187568 List!39022)) (True!12189) (RightBrace!6094) (RightBracket!6094) (Colon!6094) (Null!6094) (Comma!6094) (LeftBracket!6094) (False!12189) (LeftBrace!6094) (ImaginaryLiteralValue!6094 (text!43104 List!39022)) (StringLiteralValue!18282 (value!187569 List!39022)) (EOFValue!6094 (value!187570 List!39022)) (IdentValue!6094 (value!187571 List!39022)) (DelimiterValue!12189 (value!187572 List!39022)) (DedentValue!6094 (value!187573 List!39022)) (NewLineValue!6094 (value!187574 List!39022)) (IntegerValue!18282 (value!187575 (_ BitVec 32)) (text!43105 List!39022)) (IntegerValue!18283 (value!187576 Int) (text!43106 List!39022)) (Times!6094) (Or!6094) (Equal!6094) (Minus!6094) (Broken!30474 (value!187577 List!39022)) (And!6094) (Div!6094) (LessEqual!6094) (Mod!6094) (Concat!16717) (Not!6094) (Plus!6094) (SpaceValue!6094 (value!187578 List!39022)) (IntegerValue!18284 (value!187579 Int) (text!43107 List!39022)) (StringLiteralValue!18283 (text!43108 List!39022)) (FloatLiteralValue!12189 (text!43109 List!39022)) (BytesLiteralValue!6094 (value!187580 List!39022)) (CommentValue!12189 (value!187581 List!39022)) (StringLiteralValue!18284 (value!187582 List!39022)) (ErrorTokenValue!6094 (msg!6155 List!39022)) )
))
(declare-datatypes ((C!21432 0))(
  ( (C!21433 (val!12764 Int)) )
))
(declare-datatypes ((List!39023 0))(
  ( (Nil!38899) (Cons!38899 (h!44319 C!21432) (t!300982 List!39023)) )
))
(declare-datatypes ((IArray!23841 0))(
  ( (IArray!23842 (innerList!11978 List!39023)) )
))
(declare-datatypes ((Regex!10623 0))(
  ( (ElementMatch!10623 (c!637315 C!21432)) (Concat!16718 (regOne!21758 Regex!10623) (regTwo!21758 Regex!10623)) (EmptyExpr!10623) (Star!10623 (reg!10952 Regex!10623)) (EmptyLang!10623) (Union!10623 (regOne!21759 Regex!10623) (regTwo!21759 Regex!10623)) )
))
(declare-datatypes ((Conc!11918 0))(
  ( (Node!11918 (left!30352 Conc!11918) (right!30682 Conc!11918) (csize!24066 Int) (cheight!12129 Int)) (Leaf!18461 (xs!15120 IArray!23841) (csize!24067 Int)) (Empty!11918) )
))
(declare-datatypes ((BalanceConc!23450 0))(
  ( (BalanceConc!23451 (c!637316 Conc!11918)) )
))
(declare-datatypes ((String!43804 0))(
  ( (String!43805 (value!187583 String)) )
))
(declare-datatypes ((TokenValueInjection!11616 0))(
  ( (TokenValueInjection!11617 (toValue!8172 Int) (toChars!8031 Int)) )
))
(declare-datatypes ((Rule!11528 0))(
  ( (Rule!11529 (regex!5864 Regex!10623) (tag!6670 String!43804) (isSeparator!5864 Bool) (transformation!5864 TokenValueInjection!11616)) )
))
(declare-datatypes ((List!39024 0))(
  ( (Nil!38900) (Cons!38900 (h!44320 Rule!11528) (t!300983 List!39024)) )
))
(declare-fun rules!3568 () List!39024)

(declare-fun inv!52390 (String!43804) Bool)

(declare-fun inv!52392 (TokenValueInjection!11616) Bool)

(assert (=> b!3684179 (= e!2281320 (and tp!1119852 (inv!52390 (tag!6670 (h!44320 rules!3568))) (inv!52392 (transformation!5864 (h!44320 rules!3568))) e!2281324))))

(assert (=> b!3684180 (= e!2281324 (and tp!1119848 tp!1119850))))

(declare-fun b!3684181 () Bool)

(declare-fun e!2281321 () Bool)

(declare-fun e!2281325 () Bool)

(assert (=> b!3684181 (= e!2281321 e!2281325)))

(declare-fun res!1496829 () Bool)

(assert (=> b!3684181 (=> (not res!1496829) (not e!2281325))))

(declare-datatypes ((Token!11094 0))(
  ( (Token!11095 (value!187584 TokenValue!6094) (rule!8706 Rule!11528) (size!29749 Int) (originalCharacters!6578 List!39023)) )
))
(declare-datatypes ((List!39025 0))(
  ( (Nil!38901) (Cons!38901 (h!44321 Token!11094) (t!300984 List!39025)) )
))
(declare-datatypes ((IArray!23843 0))(
  ( (IArray!23844 (innerList!11979 List!39025)) )
))
(declare-datatypes ((Conc!11919 0))(
  ( (Node!11919 (left!30353 Conc!11919) (right!30683 Conc!11919) (csize!24068 Int) (cheight!12130 Int)) (Leaf!18462 (xs!15121 IArray!23843) (csize!24069 Int)) (Empty!11919) )
))
(declare-datatypes ((BalanceConc!23452 0))(
  ( (BalanceConc!23453 (c!637317 Conc!11919)) )
))
(declare-datatypes ((tuple2!38776 0))(
  ( (tuple2!38777 (_1!22522 BalanceConc!23452) (_2!22522 BalanceConc!23450)) )
))
(declare-fun lt!1289046 () tuple2!38776)

(declare-fun isEmpty!23114 (BalanceConc!23452) Bool)

(assert (=> b!3684181 (= res!1496829 (not (isEmpty!23114 (_1!22522 lt!1289046))))))

(declare-datatypes ((LexerInterface!5453 0))(
  ( (LexerInterfaceExt!5450 (__x!24406 Int)) (Lexer!5451) )
))
(declare-fun thiss!25197 () LexerInterface!5453)

(declare-fun input!3129 () List!39023)

(declare-fun lex!2594 (LexerInterface!5453 List!39024 BalanceConc!23450) tuple2!38776)

(declare-fun seqFromList!4413 (List!39023) BalanceConc!23450)

(assert (=> b!3684181 (= lt!1289046 (lex!2594 thiss!25197 rules!3568 (seqFromList!4413 input!3129)))))

(declare-fun b!3684182 () Bool)

(declare-fun res!1496831 () Bool)

(assert (=> b!3684182 (=> (not res!1496831) (not e!2281321))))

(declare-fun isEmpty!23115 (List!39024) Bool)

(assert (=> b!3684182 (= res!1496831 (not (isEmpty!23115 rules!3568)))))

(declare-fun b!3684183 () Bool)

(assert (=> b!3684183 (= e!2281325 (not true))))

(declare-fun lt!1289042 () Bool)

(declare-fun lt!1289045 () List!39023)

(declare-fun isPrefix!3217 (List!39023 List!39023) Bool)

(assert (=> b!3684183 (= lt!1289042 (isPrefix!3217 lt!1289045 input!3129))))

(declare-datatypes ((tuple2!38778 0))(
  ( (tuple2!38779 (_1!22523 Token!11094) (_2!22523 List!39023)) )
))
(declare-fun lt!1289044 () tuple2!38778)

(declare-fun ++!9683 (List!39023 List!39023) List!39023)

(assert (=> b!3684183 (isPrefix!3217 lt!1289045 (++!9683 lt!1289045 (_2!22523 lt!1289044)))))

(declare-datatypes ((Unit!56988 0))(
  ( (Unit!56989) )
))
(declare-fun lt!1289043 () Unit!56988)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2134 (List!39023 List!39023) Unit!56988)

(assert (=> b!3684183 (= lt!1289043 (lemmaConcatTwoListThenFirstIsPrefix!2134 lt!1289045 (_2!22523 lt!1289044)))))

(declare-datatypes ((Option!8342 0))(
  ( (None!8341) (Some!8341 (v!38287 tuple2!38778)) )
))
(declare-fun get!12875 (Option!8342) tuple2!38778)

(declare-fun maxPrefix!2981 (LexerInterface!5453 List!39024 List!39023) Option!8342)

(assert (=> b!3684183 (= lt!1289044 (get!12875 (maxPrefix!2981 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14484 (BalanceConc!23450) List!39023)

(declare-fun charsOf!3875 (Token!11094) BalanceConc!23450)

(declare-fun head!7918 (List!39025) Token!11094)

(declare-fun list!14485 (BalanceConc!23452) List!39025)

(assert (=> b!3684183 (= lt!1289045 (list!14484 (charsOf!3875 (head!7918 (list!14485 (_1!22522 lt!1289046))))))))

(declare-fun b!3684184 () Bool)

(declare-fun res!1496830 () Bool)

(assert (=> b!3684184 (=> (not res!1496830) (not e!2281321))))

(declare-fun rulesInvariant!4850 (LexerInterface!5453 List!39024) Bool)

(assert (=> b!3684184 (= res!1496830 (rulesInvariant!4850 thiss!25197 rules!3568))))

(declare-fun b!3684185 () Bool)

(declare-fun e!2281326 () Bool)

(declare-fun tp!1119849 () Bool)

(assert (=> b!3684185 (= e!2281326 (and e!2281320 tp!1119849))))

(declare-fun res!1496832 () Bool)

(assert (=> start!346018 (=> (not res!1496832) (not e!2281321))))

(get-info :version)

(assert (=> start!346018 (= res!1496832 ((_ is Lexer!5451) thiss!25197))))

(assert (=> start!346018 e!2281321))

(assert (=> start!346018 true))

(assert (=> start!346018 e!2281326))

(declare-fun e!2281323 () Bool)

(assert (=> start!346018 e!2281323))

(declare-fun b!3684186 () Bool)

(declare-fun tp_is_empty!18329 () Bool)

(declare-fun tp!1119851 () Bool)

(assert (=> b!3684186 (= e!2281323 (and tp_is_empty!18329 tp!1119851))))

(assert (= (and start!346018 res!1496832) b!3684182))

(assert (= (and b!3684182 res!1496831) b!3684184))

(assert (= (and b!3684184 res!1496830) b!3684181))

(assert (= (and b!3684181 res!1496829) b!3684183))

(assert (= b!3684179 b!3684180))

(assert (= b!3684185 b!3684179))

(assert (= (and start!346018 ((_ is Cons!38900) rules!3568)) b!3684185))

(assert (= (and start!346018 ((_ is Cons!38899) input!3129)) b!3684186))

(declare-fun m!4195511 () Bool)

(assert (=> b!3684182 m!4195511))

(declare-fun m!4195513 () Bool)

(assert (=> b!3684181 m!4195513))

(declare-fun m!4195515 () Bool)

(assert (=> b!3684181 m!4195515))

(assert (=> b!3684181 m!4195515))

(declare-fun m!4195517 () Bool)

(assert (=> b!3684181 m!4195517))

(declare-fun m!4195519 () Bool)

(assert (=> b!3684183 m!4195519))

(declare-fun m!4195521 () Bool)

(assert (=> b!3684183 m!4195521))

(declare-fun m!4195523 () Bool)

(assert (=> b!3684183 m!4195523))

(assert (=> b!3684183 m!4195523))

(declare-fun m!4195525 () Bool)

(assert (=> b!3684183 m!4195525))

(declare-fun m!4195527 () Bool)

(assert (=> b!3684183 m!4195527))

(declare-fun m!4195529 () Bool)

(assert (=> b!3684183 m!4195529))

(declare-fun m!4195531 () Bool)

(assert (=> b!3684183 m!4195531))

(declare-fun m!4195533 () Bool)

(assert (=> b!3684183 m!4195533))

(assert (=> b!3684183 m!4195527))

(assert (=> b!3684183 m!4195521))

(assert (=> b!3684183 m!4195533))

(declare-fun m!4195535 () Bool)

(assert (=> b!3684183 m!4195535))

(assert (=> b!3684183 m!4195529))

(declare-fun m!4195537 () Bool)

(assert (=> b!3684183 m!4195537))

(declare-fun m!4195539 () Bool)

(assert (=> b!3684184 m!4195539))

(declare-fun m!4195541 () Bool)

(assert (=> b!3684179 m!4195541))

(declare-fun m!4195543 () Bool)

(assert (=> b!3684179 m!4195543))

(check-sat (not b!3684182) tp_is_empty!18329 b_and!275353 (not b_next!98381) b_and!275351 (not b!3684183) (not b_next!98383) (not b!3684181) (not b!3684185) (not b!3684186) (not b!3684184) (not b!3684179))
(check-sat b_and!275351 b_and!275353 (not b_next!98383) (not b_next!98381))
