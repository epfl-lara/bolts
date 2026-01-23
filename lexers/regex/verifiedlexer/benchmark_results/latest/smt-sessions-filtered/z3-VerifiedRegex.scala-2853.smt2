; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!166390 () Bool)

(assert start!166390)

(declare-fun b!1705205 () Bool)

(declare-fun b_free!45915 () Bool)

(declare-fun b_next!46619 () Bool)

(assert (=> b!1705205 (= b_free!45915 (not b_next!46619))))

(declare-fun tp!486728 () Bool)

(declare-fun b_and!123105 () Bool)

(assert (=> b!1705205 (= tp!486728 b_and!123105)))

(declare-fun b_free!45917 () Bool)

(declare-fun b_next!46621 () Bool)

(assert (=> b!1705205 (= b_free!45917 (not b_next!46621))))

(declare-fun tp!486733 () Bool)

(declare-fun b_and!123107 () Bool)

(assert (=> b!1705205 (= tp!486733 b_and!123107)))

(declare-fun b!1705197 () Bool)

(declare-fun b_free!45919 () Bool)

(declare-fun b_next!46623 () Bool)

(assert (=> b!1705197 (= b_free!45919 (not b_next!46623))))

(declare-fun tp!486729 () Bool)

(declare-fun b_and!123109 () Bool)

(assert (=> b!1705197 (= tp!486729 b_and!123109)))

(declare-fun b_free!45921 () Bool)

(declare-fun b_next!46625 () Bool)

(assert (=> b!1705197 (= b_free!45921 (not b_next!46625))))

(declare-fun tp!486730 () Bool)

(declare-fun b_and!123111 () Bool)

(assert (=> b!1705197 (= tp!486730 b_and!123111)))

(declare-fun b!1705204 () Bool)

(declare-fun b_free!45923 () Bool)

(declare-fun b_next!46627 () Bool)

(assert (=> b!1705204 (= b_free!45923 (not b_next!46627))))

(declare-fun tp!486738 () Bool)

(declare-fun b_and!123113 () Bool)

(assert (=> b!1705204 (= tp!486738 b_and!123113)))

(declare-fun b_free!45925 () Bool)

(declare-fun b_next!46629 () Bool)

(assert (=> b!1705204 (= b_free!45925 (not b_next!46629))))

(declare-fun tp!486731 () Bool)

(declare-fun b_and!123115 () Bool)

(assert (=> b!1705204 (= tp!486731 b_and!123115)))

(declare-datatypes ((List!18624 0))(
  ( (Nil!18554) (Cons!18554 (h!23955 (_ BitVec 16)) (t!157909 List!18624)) )
))
(declare-datatypes ((TokenValue!3357 0))(
  ( (FloatLiteralValue!6714 (text!23944 List!18624)) (TokenValueExt!3356 (__x!12016 Int)) (Broken!16785 (value!102756 List!18624)) (Object!3426) (End!3357) (Def!3357) (Underscore!3357) (Match!3357) (Else!3357) (Error!3357) (Case!3357) (If!3357) (Extends!3357) (Abstract!3357) (Class!3357) (Val!3357) (DelimiterValue!6714 (del!3417 List!18624)) (KeywordValue!3363 (value!102757 List!18624)) (CommentValue!6714 (value!102758 List!18624)) (WhitespaceValue!6714 (value!102759 List!18624)) (IndentationValue!3357 (value!102760 List!18624)) (String!21116) (Int32!3357) (Broken!16786 (value!102761 List!18624)) (Boolean!3358) (Unit!32418) (OperatorValue!3360 (op!3417 List!18624)) (IdentifierValue!6714 (value!102762 List!18624)) (IdentifierValue!6715 (value!102763 List!18624)) (WhitespaceValue!6715 (value!102764 List!18624)) (True!6714) (False!6714) (Broken!16787 (value!102765 List!18624)) (Broken!16788 (value!102766 List!18624)) (True!6715) (RightBrace!3357) (RightBracket!3357) (Colon!3357) (Null!3357) (Comma!3357) (LeftBracket!3357) (False!6715) (LeftBrace!3357) (ImaginaryLiteralValue!3357 (text!23945 List!18624)) (StringLiteralValue!10071 (value!102767 List!18624)) (EOFValue!3357 (value!102768 List!18624)) (IdentValue!3357 (value!102769 List!18624)) (DelimiterValue!6715 (value!102770 List!18624)) (DedentValue!3357 (value!102771 List!18624)) (NewLineValue!3357 (value!102772 List!18624)) (IntegerValue!10071 (value!102773 (_ BitVec 32)) (text!23946 List!18624)) (IntegerValue!10072 (value!102774 Int) (text!23947 List!18624)) (Times!3357) (Or!3357) (Equal!3357) (Minus!3357) (Broken!16789 (value!102775 List!18624)) (And!3357) (Div!3357) (LessEqual!3357) (Mod!3357) (Concat!7952) (Not!3357) (Plus!3357) (SpaceValue!3357 (value!102776 List!18624)) (IntegerValue!10073 (value!102777 Int) (text!23948 List!18624)) (StringLiteralValue!10072 (text!23949 List!18624)) (FloatLiteralValue!6715 (text!23950 List!18624)) (BytesLiteralValue!3357 (value!102778 List!18624)) (CommentValue!6715 (value!102779 List!18624)) (StringLiteralValue!10073 (value!102780 List!18624)) (ErrorTokenValue!3357 (msg!3418 List!18624)) )
))
(declare-datatypes ((C!9364 0))(
  ( (C!9365 (val!5278 Int)) )
))
(declare-datatypes ((List!18625 0))(
  ( (Nil!18555) (Cons!18555 (h!23956 C!9364) (t!157910 List!18625)) )
))
(declare-datatypes ((Regex!4595 0))(
  ( (ElementMatch!4595 (c!279606 C!9364)) (Concat!7953 (regOne!9702 Regex!4595) (regTwo!9702 Regex!4595)) (EmptyExpr!4595) (Star!4595 (reg!4924 Regex!4595)) (EmptyLang!4595) (Union!4595 (regOne!9703 Regex!4595) (regTwo!9703 Regex!4595)) )
))
(declare-datatypes ((String!21117 0))(
  ( (String!21118 (value!102781 String)) )
))
(declare-datatypes ((IArray!12359 0))(
  ( (IArray!12360 (innerList!6237 List!18625)) )
))
(declare-datatypes ((Conc!6177 0))(
  ( (Node!6177 (left!14820 Conc!6177) (right!15150 Conc!6177) (csize!12584 Int) (cheight!6388 Int)) (Leaf!9031 (xs!9053 IArray!12359) (csize!12585 Int)) (Empty!6177) )
))
(declare-datatypes ((BalanceConc!12298 0))(
  ( (BalanceConc!12299 (c!279607 Conc!6177)) )
))
(declare-datatypes ((TokenValueInjection!6374 0))(
  ( (TokenValueInjection!6375 (toValue!4762 Int) (toChars!4621 Int)) )
))
(declare-datatypes ((Rule!6334 0))(
  ( (Rule!6335 (regex!3267 Regex!4595) (tag!3563 String!21117) (isSeparator!3267 Bool) (transformation!3267 TokenValueInjection!6374)) )
))
(declare-fun rule!422 () Rule!6334)

(declare-fun e!1090500 () Bool)

(declare-fun tp!486736 () Bool)

(declare-fun b!1705195 () Bool)

(declare-fun e!1090502 () Bool)

(declare-fun inv!23937 (String!21117) Bool)

(declare-fun inv!23940 (TokenValueInjection!6374) Bool)

(assert (=> b!1705195 (= e!1090502 (and tp!486736 (inv!23937 (tag!3563 rule!422)) (inv!23940 (transformation!3267 rule!422)) e!1090500))))

(declare-fun b!1705196 () Bool)

(declare-fun res!764336 () Bool)

(declare-fun e!1090499 () Bool)

(assert (=> b!1705196 (=> (not res!764336) (not e!1090499))))

(declare-datatypes ((LexerInterface!2896 0))(
  ( (LexerInterfaceExt!2893 (__x!12017 Int)) (Lexer!2894) )
))
(declare-fun thiss!24550 () LexerInterface!2896)

(declare-datatypes ((List!18626 0))(
  ( (Nil!18556) (Cons!18556 (h!23957 Rule!6334) (t!157911 List!18626)) )
))
(declare-fun rules!3447 () List!18626)

(declare-fun rulesInvariant!2565 (LexerInterface!2896 List!18626) Bool)

(assert (=> b!1705196 (= res!764336 (rulesInvariant!2565 thiss!24550 rules!3447))))

(declare-fun e!1090498 () Bool)

(assert (=> b!1705197 (= e!1090498 (and tp!486729 tp!486730))))

(declare-datatypes ((Token!6100 0))(
  ( (Token!6101 (value!102782 TokenValue!3357) (rule!5199 Rule!6334) (size!14790 Int) (originalCharacters!4081 List!18625)) )
))
(declare-fun token!523 () Token!6100)

(declare-fun b!1705198 () Bool)

(declare-fun e!1090505 () Bool)

(declare-fun tp!486737 () Bool)

(assert (=> b!1705198 (= e!1090505 (and tp!486737 (inv!23937 (tag!3563 (rule!5199 token!523))) (inv!23940 (transformation!3267 (rule!5199 token!523))) e!1090498))))

(declare-fun b!1705199 () Bool)

(declare-fun e!1090496 () Bool)

(declare-fun e!1090501 () Bool)

(declare-fun tp!486735 () Bool)

(assert (=> b!1705199 (= e!1090496 (and e!1090501 tp!486735))))

(declare-fun b!1705200 () Bool)

(declare-fun res!764339 () Bool)

(assert (=> b!1705200 (=> (not res!764339) (not e!1090499))))

(declare-fun isEmpty!11651 (List!18626) Bool)

(assert (=> b!1705200 (= res!764339 (not (isEmpty!11651 rules!3447)))))

(declare-fun e!1090504 () Bool)

(declare-fun tp!486734 () Bool)

(declare-fun b!1705201 () Bool)

(declare-fun inv!21 (TokenValue!3357) Bool)

(assert (=> b!1705201 (= e!1090504 (and (inv!21 (value!102782 token!523)) e!1090505 tp!486734))))

(declare-fun res!764337 () Bool)

(assert (=> start!166390 (=> (not res!764337) (not e!1090499))))

(get-info :version)

(assert (=> start!166390 (= res!764337 ((_ is Lexer!2894) thiss!24550))))

(assert (=> start!166390 e!1090499))

(assert (=> start!166390 true))

(assert (=> start!166390 e!1090496))

(assert (=> start!166390 e!1090502))

(declare-fun inv!23941 (Token!6100) Bool)

(assert (=> start!166390 (and (inv!23941 token!523) e!1090504)))

(declare-fun b!1705202 () Bool)

(assert (=> b!1705202 (= e!1090499 false)))

(declare-fun lt!652246 () Bool)

(declare-fun rulesValidInductive!1062 (LexerInterface!2896 List!18626) Bool)

(assert (=> b!1705202 (= lt!652246 (rulesValidInductive!1062 thiss!24550 rules!3447))))

(declare-fun lt!652245 () List!18625)

(declare-fun list!7481 (BalanceConc!12298) List!18625)

(declare-fun charsOf!1916 (Token!6100) BalanceConc!12298)

(assert (=> b!1705202 (= lt!652245 (list!7481 (charsOf!1916 token!523)))))

(declare-fun b!1705203 () Bool)

(declare-fun e!1090503 () Bool)

(declare-fun tp!486732 () Bool)

(assert (=> b!1705203 (= e!1090501 (and tp!486732 (inv!23937 (tag!3563 (h!23957 rules!3447))) (inv!23940 (transformation!3267 (h!23957 rules!3447))) e!1090503))))

(assert (=> b!1705204 (= e!1090503 (and tp!486738 tp!486731))))

(assert (=> b!1705205 (= e!1090500 (and tp!486728 tp!486733))))

(declare-fun b!1705206 () Bool)

(declare-fun res!764338 () Bool)

(assert (=> b!1705206 (=> (not res!764338) (not e!1090499))))

(declare-fun contains!3283 (List!18626 Rule!6334) Bool)

(assert (=> b!1705206 (= res!764338 (contains!3283 rules!3447 rule!422))))

(assert (= (and start!166390 res!764337) b!1705200))

(assert (= (and b!1705200 res!764339) b!1705196))

(assert (= (and b!1705196 res!764336) b!1705206))

(assert (= (and b!1705206 res!764338) b!1705202))

(assert (= b!1705203 b!1705204))

(assert (= b!1705199 b!1705203))

(assert (= (and start!166390 ((_ is Cons!18556) rules!3447)) b!1705199))

(assert (= b!1705195 b!1705205))

(assert (= start!166390 b!1705195))

(assert (= b!1705198 b!1705197))

(assert (= b!1705201 b!1705198))

(assert (= start!166390 b!1705201))

(declare-fun m!2109141 () Bool)

(assert (=> start!166390 m!2109141))

(declare-fun m!2109143 () Bool)

(assert (=> b!1705200 m!2109143))

(declare-fun m!2109145 () Bool)

(assert (=> b!1705196 m!2109145))

(declare-fun m!2109147 () Bool)

(assert (=> b!1705201 m!2109147))

(declare-fun m!2109149 () Bool)

(assert (=> b!1705206 m!2109149))

(declare-fun m!2109151 () Bool)

(assert (=> b!1705198 m!2109151))

(declare-fun m!2109153 () Bool)

(assert (=> b!1705198 m!2109153))

(declare-fun m!2109155 () Bool)

(assert (=> b!1705203 m!2109155))

(declare-fun m!2109157 () Bool)

(assert (=> b!1705203 m!2109157))

(declare-fun m!2109159 () Bool)

(assert (=> b!1705202 m!2109159))

(declare-fun m!2109161 () Bool)

(assert (=> b!1705202 m!2109161))

(assert (=> b!1705202 m!2109161))

(declare-fun m!2109163 () Bool)

(assert (=> b!1705202 m!2109163))

(declare-fun m!2109165 () Bool)

(assert (=> b!1705195 m!2109165))

(declare-fun m!2109167 () Bool)

(assert (=> b!1705195 m!2109167))

(check-sat b_and!123109 (not b!1705195) b_and!123113 (not b_next!46623) (not b!1705206) (not b_next!46619) b_and!123111 b_and!123115 (not b!1705203) (not b!1705200) (not b_next!46621) (not b_next!46627) (not start!166390) (not b_next!46625) (not b!1705201) (not b!1705199) b_and!123105 (not b!1705196) b_and!123107 (not b_next!46629) (not b!1705202) (not b!1705198))
(check-sat b_and!123109 b_and!123113 (not b_next!46625) b_and!123105 (not b_next!46623) (not b_next!46619) b_and!123111 b_and!123115 (not b_next!46621) (not b_next!46627) b_and!123107 (not b_next!46629))
