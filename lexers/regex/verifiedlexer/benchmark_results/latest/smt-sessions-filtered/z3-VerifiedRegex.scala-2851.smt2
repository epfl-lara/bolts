; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!166282 () Bool)

(assert start!166282)

(declare-fun b!1704595 () Bool)

(declare-fun b_free!45851 () Bool)

(declare-fun b_next!46555 () Bool)

(assert (=> b!1704595 (= b_free!45851 (not b_next!46555))))

(declare-fun tp!486325 () Bool)

(declare-fun b_and!123017 () Bool)

(assert (=> b!1704595 (= tp!486325 b_and!123017)))

(declare-fun b_free!45853 () Bool)

(declare-fun b_next!46557 () Bool)

(assert (=> b!1704595 (= b_free!45853 (not b_next!46557))))

(declare-fun tp!486331 () Bool)

(declare-fun b_and!123019 () Bool)

(assert (=> b!1704595 (= tp!486331 b_and!123019)))

(declare-fun b!1704598 () Bool)

(declare-fun b_free!45855 () Bool)

(declare-fun b_next!46559 () Bool)

(assert (=> b!1704598 (= b_free!45855 (not b_next!46559))))

(declare-fun tp!486329 () Bool)

(declare-fun b_and!123021 () Bool)

(assert (=> b!1704598 (= tp!486329 b_and!123021)))

(declare-fun b_free!45857 () Bool)

(declare-fun b_next!46561 () Bool)

(assert (=> b!1704598 (= b_free!45857 (not b_next!46561))))

(declare-fun tp!486327 () Bool)

(declare-fun b_and!123023 () Bool)

(assert (=> b!1704598 (= tp!486327 b_and!123023)))

(declare-fun b!1704603 () Bool)

(declare-fun b_free!45859 () Bool)

(declare-fun b_next!46563 () Bool)

(assert (=> b!1704603 (= b_free!45859 (not b_next!46563))))

(declare-fun tp!486328 () Bool)

(declare-fun b_and!123025 () Bool)

(assert (=> b!1704603 (= tp!486328 b_and!123025)))

(declare-fun b_free!45861 () Bool)

(declare-fun b_next!46565 () Bool)

(assert (=> b!1704603 (= b_free!45861 (not b_next!46565))))

(declare-fun tp!486324 () Bool)

(declare-fun b_and!123027 () Bool)

(assert (=> b!1704603 (= tp!486324 b_and!123027)))

(declare-fun b!1704593 () Bool)

(declare-fun e!1090101 () Bool)

(assert (=> b!1704593 (= e!1090101 false)))

(declare-datatypes ((C!9356 0))(
  ( (C!9357 (val!5274 Int)) )
))
(declare-datatypes ((List!18610 0))(
  ( (Nil!18540) (Cons!18540 (h!23941 C!9356) (t!157873 List!18610)) )
))
(declare-fun lt!652194 () List!18610)

(declare-datatypes ((List!18611 0))(
  ( (Nil!18541) (Cons!18541 (h!23942 (_ BitVec 16)) (t!157874 List!18611)) )
))
(declare-datatypes ((TokenValue!3353 0))(
  ( (FloatLiteralValue!6706 (text!23916 List!18611)) (TokenValueExt!3352 (__x!12008 Int)) (Broken!16765 (value!102642 List!18611)) (Object!3422) (End!3353) (Def!3353) (Underscore!3353) (Match!3353) (Else!3353) (Error!3353) (Case!3353) (If!3353) (Extends!3353) (Abstract!3353) (Class!3353) (Val!3353) (DelimiterValue!6706 (del!3413 List!18611)) (KeywordValue!3359 (value!102643 List!18611)) (CommentValue!6706 (value!102644 List!18611)) (WhitespaceValue!6706 (value!102645 List!18611)) (IndentationValue!3353 (value!102646 List!18611)) (String!21096) (Int32!3353) (Broken!16766 (value!102647 List!18611)) (Boolean!3354) (Unit!32414) (OperatorValue!3356 (op!3413 List!18611)) (IdentifierValue!6706 (value!102648 List!18611)) (IdentifierValue!6707 (value!102649 List!18611)) (WhitespaceValue!6707 (value!102650 List!18611)) (True!6706) (False!6706) (Broken!16767 (value!102651 List!18611)) (Broken!16768 (value!102652 List!18611)) (True!6707) (RightBrace!3353) (RightBracket!3353) (Colon!3353) (Null!3353) (Comma!3353) (LeftBracket!3353) (False!6707) (LeftBrace!3353) (ImaginaryLiteralValue!3353 (text!23917 List!18611)) (StringLiteralValue!10059 (value!102653 List!18611)) (EOFValue!3353 (value!102654 List!18611)) (IdentValue!3353 (value!102655 List!18611)) (DelimiterValue!6707 (value!102656 List!18611)) (DedentValue!3353 (value!102657 List!18611)) (NewLineValue!3353 (value!102658 List!18611)) (IntegerValue!10059 (value!102659 (_ BitVec 32)) (text!23918 List!18611)) (IntegerValue!10060 (value!102660 Int) (text!23919 List!18611)) (Times!3353) (Or!3353) (Equal!3353) (Minus!3353) (Broken!16769 (value!102661 List!18611)) (And!3353) (Div!3353) (LessEqual!3353) (Mod!3353) (Concat!7944) (Not!3353) (Plus!3353) (SpaceValue!3353 (value!102662 List!18611)) (IntegerValue!10061 (value!102663 Int) (text!23920 List!18611)) (StringLiteralValue!10060 (text!23921 List!18611)) (FloatLiteralValue!6707 (text!23922 List!18611)) (BytesLiteralValue!3353 (value!102664 List!18611)) (CommentValue!6707 (value!102665 List!18611)) (StringLiteralValue!10061 (value!102666 List!18611)) (ErrorTokenValue!3353 (msg!3414 List!18611)) )
))
(declare-datatypes ((Regex!4591 0))(
  ( (ElementMatch!4591 (c!279556 C!9356)) (Concat!7945 (regOne!9694 Regex!4591) (regTwo!9694 Regex!4591)) (EmptyExpr!4591) (Star!4591 (reg!4920 Regex!4591)) (EmptyLang!4591) (Union!4591 (regOne!9695 Regex!4591) (regTwo!9695 Regex!4591)) )
))
(declare-datatypes ((String!21097 0))(
  ( (String!21098 (value!102667 String)) )
))
(declare-datatypes ((IArray!12351 0))(
  ( (IArray!12352 (innerList!6233 List!18610)) )
))
(declare-datatypes ((Conc!6173 0))(
  ( (Node!6173 (left!14810 Conc!6173) (right!15140 Conc!6173) (csize!12576 Int) (cheight!6384 Int)) (Leaf!9025 (xs!9049 IArray!12351) (csize!12577 Int)) (Empty!6173) )
))
(declare-datatypes ((BalanceConc!12290 0))(
  ( (BalanceConc!12291 (c!279557 Conc!6173)) )
))
(declare-datatypes ((TokenValueInjection!6366 0))(
  ( (TokenValueInjection!6367 (toValue!4754 Int) (toChars!4613 Int)) )
))
(declare-datatypes ((Rule!6326 0))(
  ( (Rule!6327 (regex!3263 Regex!4591) (tag!3559 String!21097) (isSeparator!3263 Bool) (transformation!3263 TokenValueInjection!6366)) )
))
(declare-datatypes ((Token!6092 0))(
  ( (Token!6093 (value!102668 TokenValue!3353) (rule!5195 Rule!6326) (size!14784 Int) (originalCharacters!4077 List!18610)) )
))
(declare-fun token!523 () Token!6092)

(declare-fun list!7474 (BalanceConc!12290) List!18610)

(declare-fun charsOf!1912 (Token!6092) BalanceConc!12290)

(assert (=> b!1704593 (= lt!652194 (list!7474 (charsOf!1912 token!523)))))

(declare-fun tp!486322 () Bool)

(declare-fun e!1090097 () Bool)

(declare-fun e!1090098 () Bool)

(declare-fun b!1704594 () Bool)

(declare-fun inv!21 (TokenValue!3353) Bool)

(assert (=> b!1704594 (= e!1090098 (and (inv!21 (value!102668 token!523)) e!1090097 tp!486322))))

(declare-fun e!1090103 () Bool)

(assert (=> b!1704595 (= e!1090103 (and tp!486325 tp!486331))))

(declare-fun b!1704596 () Bool)

(declare-fun res!764163 () Bool)

(assert (=> b!1704596 (=> (not res!764163) (not e!1090101))))

(declare-datatypes ((List!18612 0))(
  ( (Nil!18542) (Cons!18542 (h!23943 Rule!6326) (t!157875 List!18612)) )
))
(declare-fun rules!3447 () List!18612)

(declare-fun isEmpty!11645 (List!18612) Bool)

(assert (=> b!1704596 (= res!764163 (not (isEmpty!11645 rules!3447)))))

(declare-fun b!1704597 () Bool)

(declare-fun res!764161 () Bool)

(assert (=> b!1704597 (=> (not res!764161) (not e!1090101))))

(declare-fun rule!422 () Rule!6326)

(declare-fun contains!3278 (List!18612 Rule!6326) Bool)

(assert (=> b!1704597 (= res!764161 (contains!3278 rules!3447 rule!422))))

(declare-fun e!1090099 () Bool)

(assert (=> b!1704598 (= e!1090099 (and tp!486329 tp!486327))))

(declare-fun b!1704599 () Bool)

(declare-fun e!1090096 () Bool)

(declare-fun e!1090100 () Bool)

(declare-fun tp!486330 () Bool)

(assert (=> b!1704599 (= e!1090096 (and e!1090100 tp!486330))))

(declare-fun b!1704600 () Bool)

(declare-fun res!764162 () Bool)

(assert (=> b!1704600 (=> (not res!764162) (not e!1090101))))

(declare-datatypes ((LexerInterface!2892 0))(
  ( (LexerInterfaceExt!2889 (__x!12009 Int)) (Lexer!2890) )
))
(declare-fun thiss!24550 () LexerInterface!2892)

(declare-fun rulesInvariant!2561 (LexerInterface!2892 List!18612) Bool)

(assert (=> b!1704600 (= res!764162 (rulesInvariant!2561 thiss!24550 rules!3447))))

(declare-fun tp!486332 () Bool)

(declare-fun b!1704602 () Bool)

(declare-fun inv!23914 (String!21097) Bool)

(declare-fun inv!23917 (TokenValueInjection!6366) Bool)

(assert (=> b!1704602 (= e!1090100 (and tp!486332 (inv!23914 (tag!3559 (h!23943 rules!3447))) (inv!23917 (transformation!3263 (h!23943 rules!3447))) e!1090099))))

(declare-fun e!1090102 () Bool)

(assert (=> b!1704603 (= e!1090102 (and tp!486328 tp!486324))))

(declare-fun tp!486326 () Bool)

(declare-fun e!1090107 () Bool)

(declare-fun b!1704604 () Bool)

(assert (=> b!1704604 (= e!1090107 (and tp!486326 (inv!23914 (tag!3559 rule!422)) (inv!23917 (transformation!3263 rule!422)) e!1090103))))

(declare-fun res!764164 () Bool)

(assert (=> start!166282 (=> (not res!764164) (not e!1090101))))

(get-info :version)

(assert (=> start!166282 (= res!764164 ((_ is Lexer!2890) thiss!24550))))

(assert (=> start!166282 e!1090101))

(assert (=> start!166282 true))

(assert (=> start!166282 e!1090096))

(assert (=> start!166282 e!1090107))

(declare-fun inv!23918 (Token!6092) Bool)

(assert (=> start!166282 (and (inv!23918 token!523) e!1090098)))

(declare-fun tp!486323 () Bool)

(declare-fun b!1704601 () Bool)

(assert (=> b!1704601 (= e!1090097 (and tp!486323 (inv!23914 (tag!3559 (rule!5195 token!523))) (inv!23917 (transformation!3263 (rule!5195 token!523))) e!1090102))))

(assert (= (and start!166282 res!764164) b!1704596))

(assert (= (and b!1704596 res!764163) b!1704600))

(assert (= (and b!1704600 res!764162) b!1704597))

(assert (= (and b!1704597 res!764161) b!1704593))

(assert (= b!1704602 b!1704598))

(assert (= b!1704599 b!1704602))

(assert (= (and start!166282 ((_ is Cons!18542) rules!3447)) b!1704599))

(assert (= b!1704604 b!1704595))

(assert (= start!166282 b!1704604))

(assert (= b!1704601 b!1704603))

(assert (= b!1704594 b!1704601))

(assert (= start!166282 b!1704594))

(declare-fun m!2108763 () Bool)

(assert (=> b!1704597 m!2108763))

(declare-fun m!2108765 () Bool)

(assert (=> b!1704594 m!2108765))

(declare-fun m!2108767 () Bool)

(assert (=> b!1704601 m!2108767))

(declare-fun m!2108769 () Bool)

(assert (=> b!1704601 m!2108769))

(declare-fun m!2108771 () Bool)

(assert (=> b!1704593 m!2108771))

(assert (=> b!1704593 m!2108771))

(declare-fun m!2108773 () Bool)

(assert (=> b!1704593 m!2108773))

(declare-fun m!2108775 () Bool)

(assert (=> b!1704602 m!2108775))

(declare-fun m!2108777 () Bool)

(assert (=> b!1704602 m!2108777))

(declare-fun m!2108779 () Bool)

(assert (=> b!1704600 m!2108779))

(declare-fun m!2108781 () Bool)

(assert (=> b!1704596 m!2108781))

(declare-fun m!2108783 () Bool)

(assert (=> start!166282 m!2108783))

(declare-fun m!2108785 () Bool)

(assert (=> b!1704604 m!2108785))

(declare-fun m!2108787 () Bool)

(assert (=> b!1704604 m!2108787))

(check-sat (not b_next!46563) (not start!166282) (not b!1704604) (not b_next!46555) (not b!1704602) (not b!1704593) b_and!123023 b_and!123021 (not b!1704600) (not b_next!46557) (not b_next!46565) b_and!123017 b_and!123027 b_and!123025 (not b_next!46561) (not b!1704594) (not b_next!46559) (not b!1704596) (not b!1704599) b_and!123019 (not b!1704597) (not b!1704601))
(check-sat (not b_next!46563) (not b_next!46555) b_and!123023 b_and!123021 (not b_next!46557) (not b_next!46565) b_and!123017 (not b_next!46559) b_and!123019 b_and!123027 b_and!123025 (not b_next!46561))
