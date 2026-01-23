; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219300 () Bool)

(assert start!219300)

(declare-fun b!2248717 () Bool)

(declare-fun b_free!65789 () Bool)

(declare-fun b_next!66493 () Bool)

(assert (=> b!2248717 (= b_free!65789 (not b_next!66493))))

(declare-fun tp!710307 () Bool)

(declare-fun b_and!176017 () Bool)

(assert (=> b!2248717 (= tp!710307 b_and!176017)))

(declare-fun b_free!65791 () Bool)

(declare-fun b_next!66495 () Bool)

(assert (=> b!2248717 (= b_free!65791 (not b_next!66495))))

(declare-fun tp!710295 () Bool)

(declare-fun b_and!176019 () Bool)

(assert (=> b!2248717 (= tp!710295 b_and!176019)))

(declare-fun b!2248721 () Bool)

(declare-fun b_free!65793 () Bool)

(declare-fun b_next!66497 () Bool)

(assert (=> b!2248721 (= b_free!65793 (not b_next!66497))))

(declare-fun tp!710294 () Bool)

(declare-fun b_and!176021 () Bool)

(assert (=> b!2248721 (= tp!710294 b_and!176021)))

(declare-fun b_free!65795 () Bool)

(declare-fun b_next!66499 () Bool)

(assert (=> b!2248721 (= b_free!65795 (not b_next!66499))))

(declare-fun tp!710298 () Bool)

(declare-fun b_and!176023 () Bool)

(assert (=> b!2248721 (= tp!710298 b_and!176023)))

(declare-fun b!2248736 () Bool)

(declare-fun b_free!65797 () Bool)

(declare-fun b_next!66501 () Bool)

(assert (=> b!2248736 (= b_free!65797 (not b_next!66501))))

(declare-fun tp!710302 () Bool)

(declare-fun b_and!176025 () Bool)

(assert (=> b!2248736 (= tp!710302 b_and!176025)))

(declare-fun b_free!65799 () Bool)

(declare-fun b_next!66503 () Bool)

(assert (=> b!2248736 (= b_free!65799 (not b_next!66503))))

(declare-fun tp!710303 () Bool)

(declare-fun b_and!176027 () Bool)

(assert (=> b!2248736 (= tp!710303 b_and!176027)))

(declare-fun b!2248738 () Bool)

(declare-fun b_free!65801 () Bool)

(declare-fun b_next!66505 () Bool)

(assert (=> b!2248738 (= b_free!65801 (not b_next!66505))))

(declare-fun tp!710300 () Bool)

(declare-fun b_and!176029 () Bool)

(assert (=> b!2248738 (= tp!710300 b_and!176029)))

(declare-fun b_free!65803 () Bool)

(declare-fun b_next!66507 () Bool)

(assert (=> b!2248738 (= b_free!65803 (not b_next!66507))))

(declare-fun tp!710310 () Bool)

(declare-fun b_and!176031 () Bool)

(assert (=> b!2248738 (= tp!710310 b_and!176031)))

(declare-fun b!2248715 () Bool)

(declare-fun e!1438969 () Bool)

(declare-fun e!1438973 () Bool)

(declare-fun tp!710296 () Bool)

(assert (=> b!2248715 (= e!1438969 (and e!1438973 tp!710296))))

(declare-fun e!1438984 () Bool)

(assert (=> b!2248717 (= e!1438984 (and tp!710307 tp!710295))))

(declare-fun b!2248718 () Bool)

(declare-fun e!1438980 () Bool)

(assert (=> b!2248718 (= e!1438980 true)))

(declare-fun lt!836078 () Bool)

(declare-datatypes ((LexerInterface!3818 0))(
  ( (LexerInterfaceExt!3815 (__x!17826 Int)) (Lexer!3816) )
))
(declare-fun thiss!16613 () LexerInterface!3818)

(declare-datatypes ((List!26729 0))(
  ( (Nil!26635) (Cons!26635 (h!32036 (_ BitVec 16)) (t!200577 List!26729)) )
))
(declare-datatypes ((TokenValue!4383 0))(
  ( (FloatLiteralValue!8766 (text!31126 List!26729)) (TokenValueExt!4382 (__x!17827 Int)) (Broken!21915 (value!134092 List!26729)) (Object!4476) (End!4383) (Def!4383) (Underscore!4383) (Match!4383) (Else!4383) (Error!4383) (Case!4383) (If!4383) (Extends!4383) (Abstract!4383) (Class!4383) (Val!4383) (DelimiterValue!8766 (del!4443 List!26729)) (KeywordValue!4389 (value!134093 List!26729)) (CommentValue!8766 (value!134094 List!26729)) (WhitespaceValue!8766 (value!134095 List!26729)) (IndentationValue!4383 (value!134096 List!26729)) (String!29018) (Int32!4383) (Broken!21916 (value!134097 List!26729)) (Boolean!4384) (Unit!39583) (OperatorValue!4386 (op!4443 List!26729)) (IdentifierValue!8766 (value!134098 List!26729)) (IdentifierValue!8767 (value!134099 List!26729)) (WhitespaceValue!8767 (value!134100 List!26729)) (True!8766) (False!8766) (Broken!21917 (value!134101 List!26729)) (Broken!21918 (value!134102 List!26729)) (True!8767) (RightBrace!4383) (RightBracket!4383) (Colon!4383) (Null!4383) (Comma!4383) (LeftBracket!4383) (False!8767) (LeftBrace!4383) (ImaginaryLiteralValue!4383 (text!31127 List!26729)) (StringLiteralValue!13149 (value!134103 List!26729)) (EOFValue!4383 (value!134104 List!26729)) (IdentValue!4383 (value!134105 List!26729)) (DelimiterValue!8767 (value!134106 List!26729)) (DedentValue!4383 (value!134107 List!26729)) (NewLineValue!4383 (value!134108 List!26729)) (IntegerValue!13149 (value!134109 (_ BitVec 32)) (text!31128 List!26729)) (IntegerValue!13150 (value!134110 Int) (text!31129 List!26729)) (Times!4383) (Or!4383) (Equal!4383) (Minus!4383) (Broken!21919 (value!134111 List!26729)) (And!4383) (Div!4383) (LessEqual!4383) (Mod!4383) (Concat!10952) (Not!4383) (Plus!4383) (SpaceValue!4383 (value!134112 List!26729)) (IntegerValue!13151 (value!134113 Int) (text!31130 List!26729)) (StringLiteralValue!13150 (text!31131 List!26729)) (FloatLiteralValue!8767 (text!31132 List!26729)) (BytesLiteralValue!4383 (value!134114 List!26729)) (CommentValue!8767 (value!134115 List!26729)) (StringLiteralValue!13151 (value!134116 List!26729)) (ErrorTokenValue!4383 (msg!4444 List!26729)) )
))
(declare-datatypes ((C!13284 0))(
  ( (C!13285 (val!7690 Int)) )
))
(declare-datatypes ((List!26730 0))(
  ( (Nil!26636) (Cons!26636 (h!32037 C!13284) (t!200578 List!26730)) )
))
(declare-datatypes ((IArray!17185 0))(
  ( (IArray!17186 (innerList!8650 List!26730)) )
))
(declare-datatypes ((Conc!8590 0))(
  ( (Node!8590 (left!20237 Conc!8590) (right!20567 Conc!8590) (csize!17410 Int) (cheight!8801 Int)) (Leaf!12686 (xs!11532 IArray!17185) (csize!17411 Int)) (Empty!8590) )
))
(declare-datatypes ((BalanceConc!16908 0))(
  ( (BalanceConc!16909 (c!357676 Conc!8590)) )
))
(declare-datatypes ((Regex!6569 0))(
  ( (ElementMatch!6569 (c!357677 C!13284)) (Concat!10953 (regOne!13650 Regex!6569) (regTwo!13650 Regex!6569)) (EmptyExpr!6569) (Star!6569 (reg!6898 Regex!6569)) (EmptyLang!6569) (Union!6569 (regOne!13651 Regex!6569) (regTwo!13651 Regex!6569)) )
))
(declare-datatypes ((String!29019 0))(
  ( (String!29020 (value!134117 String)) )
))
(declare-datatypes ((TokenValueInjection!8306 0))(
  ( (TokenValueInjection!8307 (toValue!5955 Int) (toChars!5814 Int)) )
))
(declare-datatypes ((Rule!8242 0))(
  ( (Rule!8243 (regex!4221 Regex!6569) (tag!4711 String!29019) (isSeparator!4221 Bool) (transformation!4221 TokenValueInjection!8306)) )
))
(declare-datatypes ((List!26731 0))(
  ( (Nil!26637) (Cons!26637 (h!32038 Rule!8242) (t!200579 List!26731)) )
))
(declare-fun rules!1750 () List!26731)

(declare-fun rulesValidInductive!1471 (LexerInterface!3818 List!26731) Bool)

(assert (=> b!2248718 (= lt!836078 (rulesValidInductive!1471 thiss!16613 rules!1750))))

(declare-fun b!2248719 () Bool)

(declare-fun res!960870 () Bool)

(declare-fun e!1438974 () Bool)

(assert (=> b!2248719 (=> (not res!960870) (not e!1438974))))

(declare-fun r!2363 () Rule!8242)

(declare-fun contains!4570 (List!26731 Rule!8242) Bool)

(assert (=> b!2248719 (= res!960870 (contains!4570 rules!1750 r!2363))))

(declare-fun b!2248720 () Bool)

(declare-fun res!960855 () Bool)

(declare-fun e!1438967 () Bool)

(assert (=> b!2248720 (=> (not res!960855) (not e!1438967))))

(declare-fun otherR!12 () Rule!8242)

(assert (=> b!2248720 (= res!960855 (not (= r!2363 otherR!12)))))

(declare-fun e!1438968 () Bool)

(assert (=> b!2248721 (= e!1438968 (and tp!710294 tp!710298))))

(declare-fun b!2248722 () Bool)

(declare-fun e!1438981 () Bool)

(assert (=> b!2248722 (= e!1438981 e!1438980)))

(declare-fun res!960861 () Bool)

(assert (=> b!2248722 (=> res!960861 e!1438980)))

(declare-fun getIndex!242 (List!26731 Rule!8242) Int)

(assert (=> b!2248722 (= res!960861 (<= (getIndex!242 rules!1750 r!2363) (getIndex!242 rules!1750 otherR!12)))))

(declare-fun ruleValid!1313 (LexerInterface!3818 Rule!8242) Bool)

(assert (=> b!2248722 (ruleValid!1313 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!39584 0))(
  ( (Unit!39585) )
))
(declare-fun lt!836081 () Unit!39584)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!720 (LexerInterface!3818 Rule!8242 List!26731) Unit!39584)

(assert (=> b!2248722 (= lt!836081 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!720 thiss!16613 otherR!12 rules!1750))))

(declare-datatypes ((Token!7920 0))(
  ( (Token!7921 (value!134118 TokenValue!4383) (rule!6521 Rule!8242) (size!20837 Int) (originalCharacters!4991 List!26730)) )
))
(declare-datatypes ((List!26732 0))(
  ( (Nil!26638) (Cons!26638 (h!32039 Token!7920) (t!200580 List!26732)) )
))
(declare-fun tokens!456 () List!26732)

(declare-fun b!2248723 () Bool)

(declare-fun tp!710297 () Bool)

(declare-fun e!1438985 () Bool)

(declare-fun e!1438959 () Bool)

(declare-fun inv!36166 (Token!7920) Bool)

(assert (=> b!2248723 (= e!1438985 (and (inv!36166 (h!32039 tokens!456)) e!1438959 tp!710297))))

(declare-fun b!2248724 () Bool)

(declare-fun e!1438976 () Bool)

(declare-fun tp_is_empty!10359 () Bool)

(declare-fun tp!710305 () Bool)

(assert (=> b!2248724 (= e!1438976 (and tp_is_empty!10359 tp!710305))))

(declare-fun b!2248725 () Bool)

(declare-fun e!1438971 () Bool)

(declare-fun tp!710304 () Bool)

(declare-fun inv!36163 (String!29019) Bool)

(declare-fun inv!36167 (TokenValueInjection!8306) Bool)

(assert (=> b!2248725 (= e!1438973 (and tp!710304 (inv!36163 (tag!4711 (h!32038 rules!1750))) (inv!36167 (transformation!4221 (h!32038 rules!1750))) e!1438971))))

(declare-fun tp!710299 () Bool)

(declare-fun e!1438962 () Bool)

(declare-fun b!2248726 () Bool)

(assert (=> b!2248726 (= e!1438962 (and tp!710299 (inv!36163 (tag!4711 (rule!6521 (h!32039 tokens!456)))) (inv!36167 (transformation!4221 (rule!6521 (h!32039 tokens!456)))) e!1438984))))

(declare-fun b!2248727 () Bool)

(declare-fun res!960866 () Bool)

(assert (=> b!2248727 (=> (not res!960866) (not e!1438974))))

(declare-fun isEmpty!15011 (List!26731) Bool)

(assert (=> b!2248727 (= res!960866 (not (isEmpty!15011 rules!1750)))))

(declare-fun b!2248728 () Bool)

(declare-fun res!960856 () Bool)

(assert (=> b!2248728 (=> (not res!960856) (not e!1438967))))

(declare-fun e!1438978 () Bool)

(assert (=> b!2248728 (= res!960856 e!1438978)))

(declare-fun res!960867 () Bool)

(assert (=> b!2248728 (=> res!960867 e!1438978)))

(declare-fun lt!836082 () Bool)

(assert (=> b!2248728 (= res!960867 lt!836082)))

(declare-fun b!2248716 () Bool)

(declare-fun res!960857 () Bool)

(assert (=> b!2248716 (=> res!960857 e!1438980)))

(get-info :version)

(assert (=> b!2248716 (= res!960857 ((_ is Nil!26638) tokens!456))))

(declare-fun res!960869 () Bool)

(assert (=> start!219300 (=> (not res!960869) (not e!1438974))))

(assert (=> start!219300 (= res!960869 ((_ is Lexer!3816) thiss!16613))))

(assert (=> start!219300 e!1438974))

(assert (=> start!219300 true))

(assert (=> start!219300 e!1438976))

(declare-fun e!1438964 () Bool)

(assert (=> start!219300 e!1438964))

(declare-fun e!1438972 () Bool)

(assert (=> start!219300 e!1438972))

(declare-fun e!1438982 () Bool)

(assert (=> start!219300 e!1438982))

(assert (=> start!219300 e!1438969))

(declare-fun e!1438975 () Bool)

(assert (=> start!219300 e!1438975))

(assert (=> start!219300 e!1438985))

(declare-fun b!2248729 () Bool)

(declare-fun e!1438961 () Bool)

(assert (=> b!2248729 (= e!1438961 e!1438967)))

(declare-fun res!960858 () Bool)

(assert (=> b!2248729 (=> (not res!960858) (not e!1438967))))

(declare-fun e!1438965 () Bool)

(assert (=> b!2248729 (= res!960858 e!1438965)))

(declare-fun res!960862 () Bool)

(assert (=> b!2248729 (=> res!960862 e!1438965)))

(assert (=> b!2248729 (= res!960862 lt!836082)))

(declare-fun isEmpty!15012 (List!26732) Bool)

(assert (=> b!2248729 (= lt!836082 (isEmpty!15012 tokens!456))))

(declare-fun b!2248730 () Bool)

(assert (=> b!2248730 (= e!1438967 (not e!1438981))))

(declare-fun res!960860 () Bool)

(assert (=> b!2248730 (=> res!960860 e!1438981)))

(declare-fun e!1438979 () Bool)

(assert (=> b!2248730 (= res!960860 e!1438979)))

(declare-fun res!960859 () Bool)

(assert (=> b!2248730 (=> (not res!960859) (not e!1438979))))

(assert (=> b!2248730 (= res!960859 (not lt!836082))))

(assert (=> b!2248730 (ruleValid!1313 thiss!16613 r!2363)))

(declare-fun lt!836080 () Unit!39584)

(assert (=> b!2248730 (= lt!836080 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!720 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2248731 () Bool)

(declare-fun matchR!2830 (Regex!6569 List!26730) Bool)

(declare-fun list!10210 (BalanceConc!16908) List!26730)

(declare-fun charsOf!2609 (Token!7920) BalanceConc!16908)

(declare-fun head!4784 (List!26732) Token!7920)

(assert (=> b!2248731 (= e!1438979 (not (matchR!2830 (regex!4221 r!2363) (list!10210 (charsOf!2609 (head!4784 tokens!456))))))))

(declare-fun tp!710308 () Bool)

(declare-fun e!1438966 () Bool)

(declare-fun b!2248732 () Bool)

(assert (=> b!2248732 (= e!1438964 (and tp!710308 (inv!36163 (tag!4711 otherR!12)) (inv!36167 (transformation!4221 otherR!12)) e!1438966))))

(declare-fun b!2248733 () Bool)

(assert (=> b!2248733 (= e!1438974 e!1438961)))

(declare-fun res!960868 () Bool)

(assert (=> b!2248733 (=> (not res!960868) (not e!1438961))))

(declare-datatypes ((IArray!17187 0))(
  ( (IArray!17188 (innerList!8651 List!26732)) )
))
(declare-datatypes ((Conc!8591 0))(
  ( (Node!8591 (left!20238 Conc!8591) (right!20568 Conc!8591) (csize!17412 Int) (cheight!8802 Int)) (Leaf!12687 (xs!11533 IArray!17187) (csize!17413 Int)) (Empty!8591) )
))
(declare-datatypes ((BalanceConc!16910 0))(
  ( (BalanceConc!16911 (c!357678 Conc!8591)) )
))
(declare-datatypes ((tuple2!26124 0))(
  ( (tuple2!26125 (_1!15572 BalanceConc!16910) (_2!15572 BalanceConc!16908)) )
))
(declare-fun lt!836079 () tuple2!26124)

(declare-fun suffix!886 () List!26730)

(declare-datatypes ((tuple2!26126 0))(
  ( (tuple2!26127 (_1!15573 List!26732) (_2!15573 List!26730)) )
))
(declare-fun list!10211 (BalanceConc!16910) List!26732)

(assert (=> b!2248733 (= res!960868 (= (tuple2!26127 (list!10211 (_1!15572 lt!836079)) (list!10210 (_2!15572 lt!836079))) (tuple2!26127 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26730)

(declare-fun lex!1657 (LexerInterface!3818 List!26731 BalanceConc!16908) tuple2!26124)

(declare-fun seqFromList!2925 (List!26730) BalanceConc!16908)

(assert (=> b!2248733 (= lt!836079 (lex!1657 thiss!16613 rules!1750 (seqFromList!2925 input!1722)))))

(declare-fun b!2248734 () Bool)

(assert (=> b!2248734 (= e!1438978 (= (rule!6521 (head!4784 tokens!456)) r!2363))))

(declare-fun b!2248735 () Bool)

(declare-fun tp!710311 () Bool)

(declare-fun inv!21 (TokenValue!4383) Bool)

(assert (=> b!2248735 (= e!1438959 (and (inv!21 (value!134118 (h!32039 tokens!456))) e!1438962 tp!710311))))

(assert (=> b!2248736 (= e!1438966 (and tp!710302 tp!710303))))

(declare-fun b!2248737 () Bool)

(declare-fun tp!710301 () Bool)

(assert (=> b!2248737 (= e!1438982 (and tp_is_empty!10359 tp!710301))))

(assert (=> b!2248738 (= e!1438971 (and tp!710300 tp!710310))))

(declare-fun b!2248739 () Bool)

(declare-fun res!960865 () Bool)

(assert (=> b!2248739 (=> (not res!960865) (not e!1438967))))

(declare-fun otherP!12 () List!26730)

(declare-fun isPrefix!2211 (List!26730 List!26730) Bool)

(assert (=> b!2248739 (= res!960865 (isPrefix!2211 otherP!12 input!1722))))

(declare-fun b!2248740 () Bool)

(declare-fun res!960863 () Bool)

(assert (=> b!2248740 (=> (not res!960863) (not e!1438974))))

(assert (=> b!2248740 (= res!960863 (contains!4570 rules!1750 otherR!12))))

(declare-fun b!2248741 () Bool)

(declare-fun size!20838 (BalanceConc!16908) Int)

(declare-fun size!20839 (List!26730) Int)

(assert (=> b!2248741 (= e!1438965 (<= (size!20838 (charsOf!2609 (head!4784 tokens!456))) (size!20839 otherP!12)))))

(declare-fun b!2248742 () Bool)

(declare-fun tp!710309 () Bool)

(assert (=> b!2248742 (= e!1438972 (and tp_is_empty!10359 tp!710309))))

(declare-fun b!2248743 () Bool)

(declare-fun res!960864 () Bool)

(assert (=> b!2248743 (=> (not res!960864) (not e!1438974))))

(declare-fun rulesInvariant!3320 (LexerInterface!3818 List!26731) Bool)

(assert (=> b!2248743 (= res!960864 (rulesInvariant!3320 thiss!16613 rules!1750))))

(declare-fun b!2248744 () Bool)

(declare-fun tp!710306 () Bool)

(assert (=> b!2248744 (= e!1438975 (and tp!710306 (inv!36163 (tag!4711 r!2363)) (inv!36167 (transformation!4221 r!2363)) e!1438968))))

(assert (= (and start!219300 res!960869) b!2248727))

(assert (= (and b!2248727 res!960866) b!2248743))

(assert (= (and b!2248743 res!960864) b!2248719))

(assert (= (and b!2248719 res!960870) b!2248740))

(assert (= (and b!2248740 res!960863) b!2248733))

(assert (= (and b!2248733 res!960868) b!2248729))

(assert (= (and b!2248729 (not res!960862)) b!2248741))

(assert (= (and b!2248729 res!960858) b!2248728))

(assert (= (and b!2248728 (not res!960867)) b!2248734))

(assert (= (and b!2248728 res!960856) b!2248739))

(assert (= (and b!2248739 res!960865) b!2248720))

(assert (= (and b!2248720 res!960855) b!2248730))

(assert (= (and b!2248730 res!960859) b!2248731))

(assert (= (and b!2248730 (not res!960860)) b!2248722))

(assert (= (and b!2248722 (not res!960861)) b!2248716))

(assert (= (and b!2248716 (not res!960857)) b!2248718))

(assert (= (and start!219300 ((_ is Cons!26636) input!1722)) b!2248724))

(assert (= b!2248732 b!2248736))

(assert (= start!219300 b!2248732))

(assert (= (and start!219300 ((_ is Cons!26636) suffix!886)) b!2248742))

(assert (= (and start!219300 ((_ is Cons!26636) otherP!12)) b!2248737))

(assert (= b!2248725 b!2248738))

(assert (= b!2248715 b!2248725))

(assert (= (and start!219300 ((_ is Cons!26637) rules!1750)) b!2248715))

(assert (= b!2248744 b!2248721))

(assert (= start!219300 b!2248744))

(assert (= b!2248726 b!2248717))

(assert (= b!2248735 b!2248726))

(assert (= b!2248723 b!2248735))

(assert (= (and start!219300 ((_ is Cons!26638) tokens!456)) b!2248723))

(declare-fun m!2679713 () Bool)

(assert (=> b!2248722 m!2679713))

(declare-fun m!2679715 () Bool)

(assert (=> b!2248722 m!2679715))

(declare-fun m!2679717 () Bool)

(assert (=> b!2248722 m!2679717))

(declare-fun m!2679719 () Bool)

(assert (=> b!2248722 m!2679719))

(declare-fun m!2679721 () Bool)

(assert (=> b!2248727 m!2679721))

(declare-fun m!2679723 () Bool)

(assert (=> b!2248729 m!2679723))

(declare-fun m!2679725 () Bool)

(assert (=> b!2248744 m!2679725))

(declare-fun m!2679727 () Bool)

(assert (=> b!2248744 m!2679727))

(declare-fun m!2679729 () Bool)

(assert (=> b!2248726 m!2679729))

(declare-fun m!2679731 () Bool)

(assert (=> b!2248726 m!2679731))

(declare-fun m!2679733 () Bool)

(assert (=> b!2248735 m!2679733))

(declare-fun m!2679735 () Bool)

(assert (=> b!2248731 m!2679735))

(assert (=> b!2248731 m!2679735))

(declare-fun m!2679737 () Bool)

(assert (=> b!2248731 m!2679737))

(assert (=> b!2248731 m!2679737))

(declare-fun m!2679739 () Bool)

(assert (=> b!2248731 m!2679739))

(assert (=> b!2248731 m!2679739))

(declare-fun m!2679741 () Bool)

(assert (=> b!2248731 m!2679741))

(declare-fun m!2679743 () Bool)

(assert (=> b!2248743 m!2679743))

(declare-fun m!2679745 () Bool)

(assert (=> b!2248725 m!2679745))

(declare-fun m!2679747 () Bool)

(assert (=> b!2248725 m!2679747))

(assert (=> b!2248734 m!2679735))

(declare-fun m!2679749 () Bool)

(assert (=> b!2248730 m!2679749))

(declare-fun m!2679751 () Bool)

(assert (=> b!2248730 m!2679751))

(declare-fun m!2679753 () Bool)

(assert (=> b!2248723 m!2679753))

(declare-fun m!2679755 () Bool)

(assert (=> b!2248733 m!2679755))

(declare-fun m!2679757 () Bool)

(assert (=> b!2248733 m!2679757))

(declare-fun m!2679759 () Bool)

(assert (=> b!2248733 m!2679759))

(assert (=> b!2248733 m!2679759))

(declare-fun m!2679761 () Bool)

(assert (=> b!2248733 m!2679761))

(assert (=> b!2248741 m!2679735))

(assert (=> b!2248741 m!2679735))

(assert (=> b!2248741 m!2679737))

(assert (=> b!2248741 m!2679737))

(declare-fun m!2679763 () Bool)

(assert (=> b!2248741 m!2679763))

(declare-fun m!2679765 () Bool)

(assert (=> b!2248741 m!2679765))

(declare-fun m!2679767 () Bool)

(assert (=> b!2248732 m!2679767))

(declare-fun m!2679769 () Bool)

(assert (=> b!2248732 m!2679769))

(declare-fun m!2679771 () Bool)

(assert (=> b!2248740 m!2679771))

(declare-fun m!2679773 () Bool)

(assert (=> b!2248719 m!2679773))

(declare-fun m!2679775 () Bool)

(assert (=> b!2248739 m!2679775))

(declare-fun m!2679777 () Bool)

(assert (=> b!2248718 m!2679777))

(check-sat (not b!2248727) (not b!2248725) (not b!2248739) (not b!2248737) (not b!2248723) (not b!2248734) (not b_next!66497) b_and!176017 b_and!176021 (not b!2248732) (not b!2248718) (not b!2248740) tp_is_empty!10359 b_and!176031 (not b!2248729) (not b!2248715) b_and!176025 (not b!2248742) (not b!2248735) (not b_next!66505) b_and!176029 (not b_next!66503) (not b_next!66499) (not b!2248730) b_and!176019 (not b_next!66501) (not b_next!66495) (not b!2248724) (not b_next!66507) b_and!176023 (not b!2248731) (not b!2248719) (not b_next!66493) (not b!2248743) (not b!2248741) (not b!2248733) (not b!2248722) b_and!176027 (not b!2248744) (not b!2248726))
(check-sat (not b_next!66497) (not b_next!66495) b_and!176017 b_and!176021 (not b_next!66493) b_and!176027 b_and!176031 b_and!176025 (not b_next!66505) (not b_next!66499) b_and!176029 (not b_next!66503) b_and!176019 (not b_next!66501) (not b_next!66507) b_and!176023)
