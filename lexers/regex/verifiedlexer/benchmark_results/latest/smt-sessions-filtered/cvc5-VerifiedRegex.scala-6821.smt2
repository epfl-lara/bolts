; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!358662 () Bool)

(assert start!358662)

(declare-fun b!3832776 () Bool)

(declare-fun b_free!101697 () Bool)

(declare-fun b_next!102401 () Bool)

(assert (=> b!3832776 (= b_free!101697 (not b_next!102401))))

(declare-fun tp!1159642 () Bool)

(declare-fun b_and!284815 () Bool)

(assert (=> b!3832776 (= tp!1159642 b_and!284815)))

(declare-fun b_free!101699 () Bool)

(declare-fun b_next!102403 () Bool)

(assert (=> b!3832776 (= b_free!101699 (not b_next!102403))))

(declare-fun tp!1159640 () Bool)

(declare-fun b_and!284817 () Bool)

(assert (=> b!3832776 (= tp!1159640 b_and!284817)))

(declare-fun b!3832785 () Bool)

(declare-fun b_free!101701 () Bool)

(declare-fun b_next!102405 () Bool)

(assert (=> b!3832785 (= b_free!101701 (not b_next!102405))))

(declare-fun tp!1159633 () Bool)

(declare-fun b_and!284819 () Bool)

(assert (=> b!3832785 (= tp!1159633 b_and!284819)))

(declare-fun b_free!101703 () Bool)

(declare-fun b_next!102407 () Bool)

(assert (=> b!3832785 (= b_free!101703 (not b_next!102407))))

(declare-fun tp!1159636 () Bool)

(declare-fun b_and!284821 () Bool)

(assert (=> b!3832785 (= tp!1159636 b_and!284821)))

(declare-fun b!3832773 () Bool)

(declare-fun b_free!101705 () Bool)

(declare-fun b_next!102409 () Bool)

(assert (=> b!3832773 (= b_free!101705 (not b_next!102409))))

(declare-fun tp!1159627 () Bool)

(declare-fun b_and!284823 () Bool)

(assert (=> b!3832773 (= tp!1159627 b_and!284823)))

(declare-fun b_free!101707 () Bool)

(declare-fun b_next!102411 () Bool)

(assert (=> b!3832773 (= b_free!101707 (not b_next!102411))))

(declare-fun tp!1159637 () Bool)

(declare-fun b_and!284825 () Bool)

(assert (=> b!3832773 (= tp!1159637 b_and!284825)))

(declare-datatypes ((List!40586 0))(
  ( (Nil!40462) (Cons!40462 (h!45882 (_ BitVec 16)) (t!309175 List!40586)) )
))
(declare-datatypes ((TokenValue!6459 0))(
  ( (FloatLiteralValue!12918 (text!45658 List!40586)) (TokenValueExt!6458 (__x!25135 Int)) (Broken!32295 (value!198136 List!40586)) (Object!6582) (End!6459) (Def!6459) (Underscore!6459) (Match!6459) (Else!6459) (Error!6459) (Case!6459) (If!6459) (Extends!6459) (Abstract!6459) (Class!6459) (Val!6459) (DelimiterValue!12918 (del!6519 List!40586)) (KeywordValue!6465 (value!198137 List!40586)) (CommentValue!12918 (value!198138 List!40586)) (WhitespaceValue!12918 (value!198139 List!40586)) (IndentationValue!6459 (value!198140 List!40586)) (String!46014) (Int32!6459) (Broken!32296 (value!198141 List!40586)) (Boolean!6460) (Unit!58218) (OperatorValue!6462 (op!6519 List!40586)) (IdentifierValue!12918 (value!198142 List!40586)) (IdentifierValue!12919 (value!198143 List!40586)) (WhitespaceValue!12919 (value!198144 List!40586)) (True!12918) (False!12918) (Broken!32297 (value!198145 List!40586)) (Broken!32298 (value!198146 List!40586)) (True!12919) (RightBrace!6459) (RightBracket!6459) (Colon!6459) (Null!6459) (Comma!6459) (LeftBracket!6459) (False!12919) (LeftBrace!6459) (ImaginaryLiteralValue!6459 (text!45659 List!40586)) (StringLiteralValue!19377 (value!198147 List!40586)) (EOFValue!6459 (value!198148 List!40586)) (IdentValue!6459 (value!198149 List!40586)) (DelimiterValue!12919 (value!198150 List!40586)) (DedentValue!6459 (value!198151 List!40586)) (NewLineValue!6459 (value!198152 List!40586)) (IntegerValue!19377 (value!198153 (_ BitVec 32)) (text!45660 List!40586)) (IntegerValue!19378 (value!198154 Int) (text!45661 List!40586)) (Times!6459) (Or!6459) (Equal!6459) (Minus!6459) (Broken!32299 (value!198155 List!40586)) (And!6459) (Div!6459) (LessEqual!6459) (Mod!6459) (Concat!17593) (Not!6459) (Plus!6459) (SpaceValue!6459 (value!198156 List!40586)) (IntegerValue!19379 (value!198157 Int) (text!45662 List!40586)) (StringLiteralValue!19378 (text!45663 List!40586)) (FloatLiteralValue!12919 (text!45664 List!40586)) (BytesLiteralValue!6459 (value!198158 List!40586)) (CommentValue!12919 (value!198159 List!40586)) (StringLiteralValue!19379 (value!198160 List!40586)) (ErrorTokenValue!6459 (msg!6520 List!40586)) )
))
(declare-datatypes ((C!22454 0))(
  ( (C!22455 (val!13321 Int)) )
))
(declare-datatypes ((Regex!11134 0))(
  ( (ElementMatch!11134 (c!668403 C!22454)) (Concat!17594 (regOne!22780 Regex!11134) (regTwo!22780 Regex!11134)) (EmptyExpr!11134) (Star!11134 (reg!11463 Regex!11134)) (EmptyLang!11134) (Union!11134 (regOne!22781 Regex!11134) (regTwo!22781 Regex!11134)) )
))
(declare-datatypes ((String!46015 0))(
  ( (String!46016 (value!198161 String)) )
))
(declare-datatypes ((List!40587 0))(
  ( (Nil!40463) (Cons!40463 (h!45883 C!22454) (t!309176 List!40587)) )
))
(declare-datatypes ((IArray!24885 0))(
  ( (IArray!24886 (innerList!12500 List!40587)) )
))
(declare-datatypes ((Conc!12440 0))(
  ( (Node!12440 (left!31309 Conc!12440) (right!31639 Conc!12440) (csize!25110 Int) (cheight!12651 Int)) (Leaf!19262 (xs!15746 IArray!24885) (csize!25111 Int)) (Empty!12440) )
))
(declare-datatypes ((BalanceConc!24474 0))(
  ( (BalanceConc!24475 (c!668404 Conc!12440)) )
))
(declare-datatypes ((TokenValueInjection!12346 0))(
  ( (TokenValueInjection!12347 (toValue!8633 Int) (toChars!8492 Int)) )
))
(declare-datatypes ((Rule!12258 0))(
  ( (Rule!12259 (regex!6229 Regex!11134) (tag!7089 String!46015) (isSeparator!6229 Bool) (transformation!6229 TokenValueInjection!12346)) )
))
(declare-datatypes ((Token!11596 0))(
  ( (Token!11597 (value!198162 TokenValue!6459) (rule!9061 Rule!12258) (size!30493 Int) (originalCharacters!6829 List!40587)) )
))
(declare-datatypes ((List!40588 0))(
  ( (Nil!40464) (Cons!40464 (h!45884 Token!11596) (t!309177 List!40588)) )
))
(declare-fun suffixTokens!72 () List!40588)

(declare-fun b!3832769 () Bool)

(declare-fun e!2366911 () Bool)

(declare-fun tp!1159631 () Bool)

(declare-fun e!2366916 () Bool)

(declare-fun inv!54600 (Token!11596) Bool)

(assert (=> b!3832769 (= e!2366911 (and (inv!54600 (h!45884 suffixTokens!72)) e!2366916 tp!1159631))))

(declare-fun b!3832771 () Bool)

(declare-fun res!1551544 () Bool)

(declare-fun e!2366922 () Bool)

(assert (=> b!3832771 (=> (not res!1551544) (not e!2366922))))

(declare-datatypes ((LexerInterface!5818 0))(
  ( (LexerInterfaceExt!5815 (__x!25136 Int)) (Lexer!5816) )
))
(declare-fun thiss!20629 () LexerInterface!5818)

(declare-datatypes ((List!40589 0))(
  ( (Nil!40465) (Cons!40465 (h!45885 Rule!12258) (t!309178 List!40589)) )
))
(declare-fun rules!2768 () List!40589)

(declare-fun rulesInvariant!5161 (LexerInterface!5818 List!40589) Bool)

(assert (=> b!3832771 (= res!1551544 (rulesInvariant!5161 thiss!20629 rules!2768))))

(declare-fun b!3832772 () Bool)

(declare-fun res!1551541 () Bool)

(assert (=> b!3832772 (=> (not res!1551541) (not e!2366922))))

(declare-fun suffixResult!91 () List!40587)

(declare-fun suffix!1176 () List!40587)

(declare-fun prefix!426 () List!40587)

(declare-fun prefixTokens!80 () List!40588)

(declare-datatypes ((tuple2!39646 0))(
  ( (tuple2!39647 (_1!22957 List!40588) (_2!22957 List!40587)) )
))
(declare-fun lexList!1586 (LexerInterface!5818 List!40589 List!40587) tuple2!39646)

(declare-fun ++!10215 (List!40587 List!40587) List!40587)

(declare-fun ++!10216 (List!40588 List!40588) List!40588)

(assert (=> b!3832772 (= res!1551541 (= (lexList!1586 thiss!20629 rules!2768 (++!10215 prefix!426 suffix!1176)) (tuple2!39647 (++!10216 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun e!2366924 () Bool)

(assert (=> b!3832773 (= e!2366924 (and tp!1159627 tp!1159637))))

(declare-fun e!2366915 () Bool)

(declare-fun tp!1159643 () Bool)

(declare-fun e!2366907 () Bool)

(declare-fun b!3832774 () Bool)

(declare-fun inv!54597 (String!46015) Bool)

(declare-fun inv!54601 (TokenValueInjection!12346) Bool)

(assert (=> b!3832774 (= e!2366907 (and tp!1159643 (inv!54597 (tag!7089 (h!45885 rules!2768))) (inv!54601 (transformation!6229 (h!45885 rules!2768))) e!2366915))))

(declare-fun e!2366908 () Bool)

(declare-fun tp!1159628 () Bool)

(declare-fun e!2366910 () Bool)

(declare-fun b!3832775 () Bool)

(assert (=> b!3832775 (= e!2366910 (and (inv!54600 (h!45884 prefixTokens!80)) e!2366908 tp!1159628))))

(assert (=> b!3832776 (= e!2366915 (and tp!1159642 tp!1159640))))

(declare-fun e!2366913 () Bool)

(declare-fun e!2366914 () Bool)

(declare-fun b!3832777 () Bool)

(declare-fun tp!1159639 () Bool)

(assert (=> b!3832777 (= e!2366914 (and tp!1159639 (inv!54597 (tag!7089 (rule!9061 (h!45884 suffixTokens!72)))) (inv!54601 (transformation!6229 (rule!9061 (h!45884 suffixTokens!72)))) e!2366913))))

(declare-fun b!3832778 () Bool)

(declare-fun res!1551542 () Bool)

(assert (=> b!3832778 (=> (not res!1551542) (not e!2366922))))

(declare-fun isEmpty!23885 (List!40589) Bool)

(assert (=> b!3832778 (= res!1551542 (not (isEmpty!23885 rules!2768)))))

(declare-fun res!1551546 () Bool)

(assert (=> start!358662 (=> (not res!1551546) (not e!2366922))))

(assert (=> start!358662 (= res!1551546 (is-Lexer!5816 thiss!20629))))

(assert (=> start!358662 e!2366922))

(declare-fun e!2366926 () Bool)

(assert (=> start!358662 e!2366926))

(assert (=> start!358662 true))

(declare-fun e!2366923 () Bool)

(assert (=> start!358662 e!2366923))

(declare-fun e!2366909 () Bool)

(assert (=> start!358662 e!2366909))

(assert (=> start!358662 e!2366910))

(assert (=> start!358662 e!2366911))

(declare-fun e!2366921 () Bool)

(assert (=> start!358662 e!2366921))

(declare-fun b!3832770 () Bool)

(declare-fun res!1551545 () Bool)

(assert (=> b!3832770 (=> (not res!1551545) (not e!2366922))))

(declare-fun isEmpty!23886 (List!40588) Bool)

(assert (=> b!3832770 (= res!1551545 (not (isEmpty!23886 prefixTokens!80)))))

(declare-fun b!3832779 () Bool)

(declare-fun tp!1159630 () Bool)

(assert (=> b!3832779 (= e!2366909 (and e!2366907 tp!1159630))))

(declare-fun e!2366925 () Bool)

(declare-fun tp!1159641 () Bool)

(declare-fun b!3832780 () Bool)

(declare-fun inv!21 (TokenValue!6459) Bool)

(assert (=> b!3832780 (= e!2366908 (and (inv!21 (value!198162 (h!45884 prefixTokens!80))) e!2366925 tp!1159641))))

(declare-fun b!3832781 () Bool)

(declare-fun tp_is_empty!19239 () Bool)

(declare-fun tp!1159635 () Bool)

(assert (=> b!3832781 (= e!2366923 (and tp_is_empty!19239 tp!1159635))))

(declare-fun b!3832782 () Bool)

(assert (=> b!3832782 (= e!2366922 false)))

(declare-fun lt!1330690 () tuple2!39646)

(assert (=> b!3832782 (= lt!1330690 (lexList!1586 thiss!20629 rules!2768 suffix!1176))))

(declare-fun b!3832783 () Bool)

(declare-fun tp!1159629 () Bool)

(assert (=> b!3832783 (= e!2366921 (and tp_is_empty!19239 tp!1159629))))

(declare-fun b!3832784 () Bool)

(declare-fun res!1551543 () Bool)

(assert (=> b!3832784 (=> (not res!1551543) (not e!2366922))))

(declare-fun isEmpty!23887 (List!40587) Bool)

(assert (=> b!3832784 (= res!1551543 (not (isEmpty!23887 prefix!426)))))

(assert (=> b!3832785 (= e!2366913 (and tp!1159633 tp!1159636))))

(declare-fun b!3832786 () Bool)

(declare-fun tp!1159632 () Bool)

(assert (=> b!3832786 (= e!2366925 (and tp!1159632 (inv!54597 (tag!7089 (rule!9061 (h!45884 prefixTokens!80)))) (inv!54601 (transformation!6229 (rule!9061 (h!45884 prefixTokens!80)))) e!2366924))))

(declare-fun tp!1159634 () Bool)

(declare-fun b!3832787 () Bool)

(assert (=> b!3832787 (= e!2366916 (and (inv!21 (value!198162 (h!45884 suffixTokens!72))) e!2366914 tp!1159634))))

(declare-fun b!3832788 () Bool)

(declare-fun tp!1159638 () Bool)

(assert (=> b!3832788 (= e!2366926 (and tp_is_empty!19239 tp!1159638))))

(assert (= (and start!358662 res!1551546) b!3832778))

(assert (= (and b!3832778 res!1551542) b!3832771))

(assert (= (and b!3832771 res!1551544) b!3832770))

(assert (= (and b!3832770 res!1551545) b!3832784))

(assert (= (and b!3832784 res!1551543) b!3832772))

(assert (= (and b!3832772 res!1551541) b!3832782))

(assert (= (and start!358662 (is-Cons!40463 suffixResult!91)) b!3832788))

(assert (= (and start!358662 (is-Cons!40463 suffix!1176)) b!3832781))

(assert (= b!3832774 b!3832776))

(assert (= b!3832779 b!3832774))

(assert (= (and start!358662 (is-Cons!40465 rules!2768)) b!3832779))

(assert (= b!3832786 b!3832773))

(assert (= b!3832780 b!3832786))

(assert (= b!3832775 b!3832780))

(assert (= (and start!358662 (is-Cons!40464 prefixTokens!80)) b!3832775))

(assert (= b!3832777 b!3832785))

(assert (= b!3832787 b!3832777))

(assert (= b!3832769 b!3832787))

(assert (= (and start!358662 (is-Cons!40464 suffixTokens!72)) b!3832769))

(assert (= (and start!358662 (is-Cons!40463 prefix!426)) b!3832783))

(declare-fun m!4387229 () Bool)

(assert (=> b!3832770 m!4387229))

(declare-fun m!4387231 () Bool)

(assert (=> b!3832782 m!4387231))

(declare-fun m!4387233 () Bool)

(assert (=> b!3832777 m!4387233))

(declare-fun m!4387235 () Bool)

(assert (=> b!3832777 m!4387235))

(declare-fun m!4387237 () Bool)

(assert (=> b!3832775 m!4387237))

(declare-fun m!4387239 () Bool)

(assert (=> b!3832774 m!4387239))

(declare-fun m!4387241 () Bool)

(assert (=> b!3832774 m!4387241))

(declare-fun m!4387243 () Bool)

(assert (=> b!3832780 m!4387243))

(declare-fun m!4387245 () Bool)

(assert (=> b!3832771 m!4387245))

(declare-fun m!4387247 () Bool)

(assert (=> b!3832769 m!4387247))

(declare-fun m!4387249 () Bool)

(assert (=> b!3832787 m!4387249))

(declare-fun m!4387251 () Bool)

(assert (=> b!3832778 m!4387251))

(declare-fun m!4387253 () Bool)

(assert (=> b!3832786 m!4387253))

(declare-fun m!4387255 () Bool)

(assert (=> b!3832786 m!4387255))

(declare-fun m!4387257 () Bool)

(assert (=> b!3832772 m!4387257))

(assert (=> b!3832772 m!4387257))

(declare-fun m!4387259 () Bool)

(assert (=> b!3832772 m!4387259))

(declare-fun m!4387261 () Bool)

(assert (=> b!3832772 m!4387261))

(declare-fun m!4387263 () Bool)

(assert (=> b!3832784 m!4387263))

(push 1)

(assert (not b_next!102407))

(assert b_and!284823)

(assert (not b_next!102405))

(assert (not b!3832774))

(assert (not b!3832779))

(assert (not b!3832786))

(assert b_and!284825)

(assert (not b!3832777))

(assert (not b!3832781))

(assert b_and!284815)

(assert (not b!3832771))

(assert (not b!3832782))

(assert (not b_next!102401))

(assert (not b!3832780))

(assert (not b!3832788))

(assert (not b_next!102411))

(assert (not b!3832775))

(assert (not b!3832784))

(assert (not b!3832778))

(assert (not b!3832769))

(assert (not b!3832783))

(assert (not b_next!102403))

(assert (not b_next!102409))

(assert b_and!284819)

(assert b_and!284817)

(assert (not b!3832787))

(assert b_and!284821)

(assert (not b!3832772))

(assert (not b!3832770))

(assert tp_is_empty!19239)

(check-sat)

(pop 1)

(push 1)

(assert b_and!284815)

(assert (not b_next!102401))

(assert (not b_next!102407))

(assert (not b_next!102411))

(assert b_and!284823)

(assert (not b_next!102405))

(assert (not b_next!102403))

(assert b_and!284825)

(assert (not b_next!102409))

(assert b_and!284819)

(assert b_and!284817)

(assert b_and!284821)

(check-sat)

(pop 1)

