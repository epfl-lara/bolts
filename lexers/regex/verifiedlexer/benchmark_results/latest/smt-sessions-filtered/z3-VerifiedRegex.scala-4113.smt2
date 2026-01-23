; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220192 () Bool)

(assert start!220192)

(declare-fun b!2256876 () Bool)

(declare-fun b_free!66477 () Bool)

(declare-fun b_next!67181 () Bool)

(assert (=> b!2256876 (= b_free!66477 (not b_next!67181))))

(declare-fun tp!713474 () Bool)

(declare-fun b_and!177169 () Bool)

(assert (=> b!2256876 (= tp!713474 b_and!177169)))

(declare-fun b_free!66479 () Bool)

(declare-fun b_next!67183 () Bool)

(assert (=> b!2256876 (= b_free!66479 (not b_next!67183))))

(declare-fun tp!713472 () Bool)

(declare-fun b_and!177171 () Bool)

(assert (=> b!2256876 (= tp!713472 b_and!177171)))

(declare-fun b!2256866 () Bool)

(declare-fun b_free!66481 () Bool)

(declare-fun b_next!67185 () Bool)

(assert (=> b!2256866 (= b_free!66481 (not b_next!67185))))

(declare-fun tp!713479 () Bool)

(declare-fun b_and!177173 () Bool)

(assert (=> b!2256866 (= tp!713479 b_and!177173)))

(declare-fun b_free!66483 () Bool)

(declare-fun b_next!67187 () Bool)

(assert (=> b!2256866 (= b_free!66483 (not b_next!67187))))

(declare-fun tp!713473 () Bool)

(declare-fun b_and!177175 () Bool)

(assert (=> b!2256866 (= tp!713473 b_and!177175)))

(declare-fun b!2256871 () Bool)

(declare-fun b_free!66485 () Bool)

(declare-fun b_next!67189 () Bool)

(assert (=> b!2256871 (= b_free!66485 (not b_next!67189))))

(declare-fun tp!713469 () Bool)

(declare-fun b_and!177177 () Bool)

(assert (=> b!2256871 (= tp!713469 b_and!177177)))

(declare-fun b_free!66487 () Bool)

(declare-fun b_next!67191 () Bool)

(assert (=> b!2256871 (= b_free!66487 (not b_next!67191))))

(declare-fun tp!713464 () Bool)

(declare-fun b_and!177179 () Bool)

(assert (=> b!2256871 (= tp!713464 b_and!177179)))

(declare-fun b!2256852 () Bool)

(declare-fun b_free!66489 () Bool)

(declare-fun b_next!67193 () Bool)

(assert (=> b!2256852 (= b_free!66489 (not b_next!67193))))

(declare-fun tp!713470 () Bool)

(declare-fun b_and!177181 () Bool)

(assert (=> b!2256852 (= tp!713470 b_and!177181)))

(declare-fun b_free!66491 () Bool)

(declare-fun b_next!67195 () Bool)

(assert (=> b!2256852 (= b_free!66491 (not b_next!67195))))

(declare-fun tp!713475 () Bool)

(declare-fun b_and!177183 () Bool)

(assert (=> b!2256852 (= tp!713475 b_and!177183)))

(declare-fun b!2256847 () Bool)

(declare-fun res!964778 () Bool)

(declare-fun e!1444822 () Bool)

(assert (=> b!2256847 (=> (not res!964778) (not e!1444822))))

(declare-datatypes ((List!26883 0))(
  ( (Nil!26789) (Cons!26789 (h!32190 (_ BitVec 16)) (t!201303 List!26883)) )
))
(declare-datatypes ((TokenValue!4419 0))(
  ( (FloatLiteralValue!8838 (text!31378 List!26883)) (TokenValueExt!4418 (__x!17898 Int)) (Broken!22095 (value!135118 List!26883)) (Object!4512) (End!4419) (Def!4419) (Underscore!4419) (Match!4419) (Else!4419) (Error!4419) (Case!4419) (If!4419) (Extends!4419) (Abstract!4419) (Class!4419) (Val!4419) (DelimiterValue!8838 (del!4479 List!26883)) (KeywordValue!4425 (value!135119 List!26883)) (CommentValue!8838 (value!135120 List!26883)) (WhitespaceValue!8838 (value!135121 List!26883)) (IndentationValue!4419 (value!135122 List!26883)) (String!29198) (Int32!4419) (Broken!22096 (value!135123 List!26883)) (Boolean!4420) (Unit!39711) (OperatorValue!4422 (op!4479 List!26883)) (IdentifierValue!8838 (value!135124 List!26883)) (IdentifierValue!8839 (value!135125 List!26883)) (WhitespaceValue!8839 (value!135126 List!26883)) (True!8838) (False!8838) (Broken!22097 (value!135127 List!26883)) (Broken!22098 (value!135128 List!26883)) (True!8839) (RightBrace!4419) (RightBracket!4419) (Colon!4419) (Null!4419) (Comma!4419) (LeftBracket!4419) (False!8839) (LeftBrace!4419) (ImaginaryLiteralValue!4419 (text!31379 List!26883)) (StringLiteralValue!13257 (value!135129 List!26883)) (EOFValue!4419 (value!135130 List!26883)) (IdentValue!4419 (value!135131 List!26883)) (DelimiterValue!8839 (value!135132 List!26883)) (DedentValue!4419 (value!135133 List!26883)) (NewLineValue!4419 (value!135134 List!26883)) (IntegerValue!13257 (value!135135 (_ BitVec 32)) (text!31380 List!26883)) (IntegerValue!13258 (value!135136 Int) (text!31381 List!26883)) (Times!4419) (Or!4419) (Equal!4419) (Minus!4419) (Broken!22099 (value!135137 List!26883)) (And!4419) (Div!4419) (LessEqual!4419) (Mod!4419) (Concat!11024) (Not!4419) (Plus!4419) (SpaceValue!4419 (value!135138 List!26883)) (IntegerValue!13259 (value!135139 Int) (text!31382 List!26883)) (StringLiteralValue!13258 (text!31383 List!26883)) (FloatLiteralValue!8839 (text!31384 List!26883)) (BytesLiteralValue!4419 (value!135140 List!26883)) (CommentValue!8839 (value!135141 List!26883)) (StringLiteralValue!13259 (value!135142 List!26883)) (ErrorTokenValue!4419 (msg!4480 List!26883)) )
))
(declare-datatypes ((C!13356 0))(
  ( (C!13357 (val!7726 Int)) )
))
(declare-datatypes ((List!26884 0))(
  ( (Nil!26790) (Cons!26790 (h!32191 C!13356) (t!201304 List!26884)) )
))
(declare-datatypes ((IArray!17329 0))(
  ( (IArray!17330 (innerList!8722 List!26884)) )
))
(declare-datatypes ((Conc!8662 0))(
  ( (Node!8662 (left!20343 Conc!8662) (right!20673 Conc!8662) (csize!17554 Int) (cheight!8873 Int)) (Leaf!12776 (xs!11604 IArray!17329) (csize!17555 Int)) (Empty!8662) )
))
(declare-datatypes ((BalanceConc!17052 0))(
  ( (BalanceConc!17053 (c!358626 Conc!8662)) )
))
(declare-datatypes ((Regex!6605 0))(
  ( (ElementMatch!6605 (c!358627 C!13356)) (Concat!11025 (regOne!13722 Regex!6605) (regTwo!13722 Regex!6605)) (EmptyExpr!6605) (Star!6605 (reg!6934 Regex!6605)) (EmptyLang!6605) (Union!6605 (regOne!13723 Regex!6605) (regTwo!13723 Regex!6605)) )
))
(declare-datatypes ((String!29199 0))(
  ( (String!29200 (value!135143 String)) )
))
(declare-datatypes ((TokenValueInjection!8378 0))(
  ( (TokenValueInjection!8379 (toValue!5999 Int) (toChars!5858 Int)) )
))
(declare-datatypes ((Rule!8314 0))(
  ( (Rule!8315 (regex!4257 Regex!6605) (tag!4747 String!29199) (isSeparator!4257 Bool) (transformation!4257 TokenValueInjection!8378)) )
))
(declare-fun r!2363 () Rule!8314)

(declare-fun otherR!12 () Rule!8314)

(assert (=> b!2256847 (= res!964778 (not (= r!2363 otherR!12)))))

(declare-fun tp!713480 () Bool)

(declare-fun e!1444828 () Bool)

(declare-fun b!2256848 () Bool)

(declare-fun e!1444830 () Bool)

(declare-datatypes ((List!26885 0))(
  ( (Nil!26791) (Cons!26791 (h!32192 Rule!8314) (t!201305 List!26885)) )
))
(declare-fun rules!1750 () List!26885)

(declare-fun inv!36317 (String!29199) Bool)

(declare-fun inv!36320 (TokenValueInjection!8378) Bool)

(assert (=> b!2256848 (= e!1444830 (and tp!713480 (inv!36317 (tag!4747 (h!32192 rules!1750))) (inv!36320 (transformation!4257 (h!32192 rules!1750))) e!1444828))))

(declare-fun e!1444829 () Bool)

(declare-fun tp!713471 () Bool)

(declare-fun b!2256849 () Bool)

(declare-fun e!1444840 () Bool)

(assert (=> b!2256849 (= e!1444829 (and tp!713471 (inv!36317 (tag!4747 r!2363)) (inv!36320 (transformation!4257 r!2363)) e!1444840))))

(declare-fun b!2256850 () Bool)

(declare-fun e!1444833 () Bool)

(declare-fun tp_is_empty!10431 () Bool)

(declare-fun tp!713467 () Bool)

(assert (=> b!2256850 (= e!1444833 (and tp_is_empty!10431 tp!713467))))

(declare-fun b!2256851 () Bool)

(declare-datatypes ((Unit!39712 0))(
  ( (Unit!39713) )
))
(declare-fun e!1444821 () Unit!39712)

(declare-fun Unit!39714 () Unit!39712)

(assert (=> b!2256851 (= e!1444821 Unit!39714)))

(assert (=> b!2256852 (= e!1444828 (and tp!713470 tp!713475))))

(declare-fun b!2256853 () Bool)

(declare-fun e!1444817 () Bool)

(declare-fun e!1444836 () Bool)

(assert (=> b!2256853 (= e!1444817 e!1444836)))

(declare-fun res!964768 () Bool)

(assert (=> b!2256853 (=> res!964768 e!1444836)))

(declare-fun lt!838909 () Int)

(declare-fun lt!838902 () Int)

(assert (=> b!2256853 (= res!964768 (> lt!838909 lt!838902))))

(declare-fun getIndex!278 (List!26885 Rule!8314) Int)

(assert (=> b!2256853 (= lt!838902 (getIndex!278 rules!1750 otherR!12))))

(assert (=> b!2256853 (= lt!838909 (getIndex!278 rules!1750 r!2363))))

(declare-datatypes ((LexerInterface!3854 0))(
  ( (LexerInterfaceExt!3851 (__x!17899 Int)) (Lexer!3852) )
))
(declare-fun thiss!16613 () LexerInterface!3854)

(declare-fun ruleValid!1349 (LexerInterface!3854 Rule!8314) Bool)

(assert (=> b!2256853 (ruleValid!1349 thiss!16613 otherR!12)))

(declare-fun lt!838907 () Unit!39712)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!756 (LexerInterface!3854 Rule!8314 List!26885) Unit!39712)

(assert (=> b!2256853 (= lt!838907 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!756 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2256854 () Bool)

(declare-fun e!1444826 () Bool)

(declare-datatypes ((Token!7992 0))(
  ( (Token!7993 (value!135144 TokenValue!4419) (rule!6563 Rule!8314) (size!20976 Int) (originalCharacters!5027 List!26884)) )
))
(declare-datatypes ((List!26886 0))(
  ( (Nil!26792) (Cons!26792 (h!32193 Token!7992) (t!201306 List!26886)) )
))
(declare-fun tokens!456 () List!26886)

(declare-fun head!4830 (List!26886) Token!7992)

(assert (=> b!2256854 (= e!1444826 (= (rule!6563 (head!4830 tokens!456)) r!2363))))

(declare-fun b!2256855 () Bool)

(declare-fun res!964776 () Bool)

(declare-fun e!1444818 () Bool)

(assert (=> b!2256855 (=> (not res!964776) (not e!1444818))))

(declare-fun contains!4609 (List!26885 Rule!8314) Bool)

(assert (=> b!2256855 (= res!964776 (contains!4609 rules!1750 r!2363))))

(declare-fun b!2256856 () Bool)

(declare-fun res!964775 () Bool)

(assert (=> b!2256856 (=> (not res!964775) (not e!1444822))))

(assert (=> b!2256856 (= res!964775 e!1444826)))

(declare-fun res!964782 () Bool)

(assert (=> b!2256856 (=> res!964782 e!1444826)))

(declare-fun lt!838903 () Bool)

(assert (=> b!2256856 (= res!964782 lt!838903)))

(declare-fun b!2256857 () Bool)

(declare-fun e!1444820 () Bool)

(declare-fun matchR!2866 (Regex!6605 List!26884) Bool)

(declare-fun list!10309 (BalanceConc!17052) List!26884)

(declare-fun charsOf!2645 (Token!7992) BalanceConc!17052)

(assert (=> b!2256857 (= e!1444820 (not (matchR!2866 (regex!4257 r!2363) (list!10309 (charsOf!2645 (head!4830 tokens!456))))))))

(declare-fun b!2256858 () Bool)

(declare-fun Unit!39715 () Unit!39712)

(assert (=> b!2256858 (= e!1444821 Unit!39715)))

(declare-fun lt!838904 () Unit!39712)

(declare-fun lemmaSameIndexThenSameElement!124 (List!26885 Rule!8314 Rule!8314) Unit!39712)

(assert (=> b!2256858 (= lt!838904 (lemmaSameIndexThenSameElement!124 rules!1750 r!2363 otherR!12))))

(assert (=> b!2256858 false))

(declare-fun b!2256859 () Bool)

(assert (=> b!2256859 (= e!1444822 (not e!1444817))))

(declare-fun res!964781 () Bool)

(assert (=> b!2256859 (=> res!964781 e!1444817)))

(assert (=> b!2256859 (= res!964781 e!1444820)))

(declare-fun res!964766 () Bool)

(assert (=> b!2256859 (=> (not res!964766) (not e!1444820))))

(assert (=> b!2256859 (= res!964766 (not lt!838903))))

(assert (=> b!2256859 (ruleValid!1349 thiss!16613 r!2363)))

(declare-fun lt!838910 () Unit!39712)

(assert (=> b!2256859 (= lt!838910 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!756 thiss!16613 r!2363 rules!1750))))

(declare-fun e!1444837 () Bool)

(declare-fun e!1444841 () Bool)

(declare-fun b!2256860 () Bool)

(declare-fun tp!713476 () Bool)

(declare-fun inv!36321 (Token!7992) Bool)

(assert (=> b!2256860 (= e!1444841 (and (inv!36321 (h!32193 tokens!456)) e!1444837 tp!713476))))

(declare-fun e!1444825 () Bool)

(declare-fun b!2256861 () Bool)

(declare-fun tp!713466 () Bool)

(declare-fun e!1444831 () Bool)

(assert (=> b!2256861 (= e!1444831 (and tp!713466 (inv!36317 (tag!4747 (rule!6563 (h!32193 tokens!456)))) (inv!36320 (transformation!4257 (rule!6563 (h!32193 tokens!456)))) e!1444825))))

(declare-fun b!2256862 () Bool)

(declare-fun e!1444819 () Bool)

(assert (=> b!2256862 (= e!1444819 e!1444822)))

(declare-fun res!964779 () Bool)

(assert (=> b!2256862 (=> (not res!964779) (not e!1444822))))

(declare-fun e!1444816 () Bool)

(assert (=> b!2256862 (= res!964779 e!1444816)))

(declare-fun res!964765 () Bool)

(assert (=> b!2256862 (=> res!964765 e!1444816)))

(assert (=> b!2256862 (= res!964765 lt!838903)))

(declare-fun isEmpty!15126 (List!26886) Bool)

(assert (=> b!2256862 (= lt!838903 (isEmpty!15126 tokens!456))))

(declare-fun b!2256863 () Bool)

(declare-fun res!964769 () Bool)

(assert (=> b!2256863 (=> (not res!964769) (not e!1444818))))

(declare-fun isEmpty!15127 (List!26885) Bool)

(assert (=> b!2256863 (= res!964769 (not (isEmpty!15127 rules!1750)))))

(declare-fun b!2256864 () Bool)

(declare-fun otherP!12 () List!26884)

(declare-fun size!20977 (BalanceConc!17052) Int)

(declare-fun size!20978 (List!26884) Int)

(assert (=> b!2256864 (= e!1444816 (<= (size!20977 (charsOf!2645 (head!4830 tokens!456))) (size!20978 otherP!12)))))

(declare-fun b!2256865 () Bool)

(declare-fun e!1444815 () Bool)

(declare-fun validRegex!2468 (Regex!6605) Bool)

(assert (=> b!2256865 (= e!1444815 (validRegex!2468 (regex!4257 otherR!12)))))

(assert (=> b!2256866 (= e!1444840 (and tp!713479 tp!713473))))

(declare-fun b!2256867 () Bool)

(declare-fun e!1444814 () Bool)

(declare-fun tp!713481 () Bool)

(assert (=> b!2256867 (= e!1444814 (and tp_is_empty!10431 tp!713481))))

(declare-fun b!2256868 () Bool)

(declare-fun res!964772 () Bool)

(assert (=> b!2256868 (=> (not res!964772) (not e!1444822))))

(declare-fun input!1722 () List!26884)

(declare-fun isPrefix!2247 (List!26884 List!26884) Bool)

(assert (=> b!2256868 (= res!964772 (isPrefix!2247 otherP!12 input!1722))))

(declare-fun b!2256869 () Bool)

(assert (=> b!2256869 (= e!1444818 e!1444819)))

(declare-fun res!964771 () Bool)

(assert (=> b!2256869 (=> (not res!964771) (not e!1444819))))

(declare-fun suffix!886 () List!26884)

(declare-datatypes ((IArray!17331 0))(
  ( (IArray!17332 (innerList!8723 List!26886)) )
))
(declare-datatypes ((Conc!8663 0))(
  ( (Node!8663 (left!20344 Conc!8663) (right!20674 Conc!8663) (csize!17556 Int) (cheight!8874 Int)) (Leaf!12777 (xs!11605 IArray!17331) (csize!17557 Int)) (Empty!8663) )
))
(declare-datatypes ((BalanceConc!17054 0))(
  ( (BalanceConc!17055 (c!358628 Conc!8663)) )
))
(declare-datatypes ((tuple2!26354 0))(
  ( (tuple2!26355 (_1!15687 BalanceConc!17054) (_2!15687 BalanceConc!17052)) )
))
(declare-fun lt!838905 () tuple2!26354)

(declare-datatypes ((tuple2!26356 0))(
  ( (tuple2!26357 (_1!15688 List!26886) (_2!15688 List!26884)) )
))
(declare-fun list!10310 (BalanceConc!17054) List!26886)

(assert (=> b!2256869 (= res!964771 (= (tuple2!26357 (list!10310 (_1!15687 lt!838905)) (list!10309 (_2!15687 lt!838905))) (tuple2!26357 tokens!456 suffix!886)))))

(declare-fun lex!1693 (LexerInterface!3854 List!26885 BalanceConc!17052) tuple2!26354)

(declare-fun seqFromList!2961 (List!26884) BalanceConc!17052)

(assert (=> b!2256869 (= lt!838905 (lex!1693 thiss!16613 rules!1750 (seqFromList!2961 input!1722)))))

(declare-fun b!2256870 () Bool)

(declare-fun e!1444834 () Bool)

(declare-fun tp!713478 () Bool)

(declare-fun e!1444839 () Bool)

(assert (=> b!2256870 (= e!1444834 (and tp!713478 (inv!36317 (tag!4747 otherR!12)) (inv!36320 (transformation!4257 otherR!12)) e!1444839))))

(assert (=> b!2256871 (= e!1444825 (and tp!713469 tp!713464))))

(declare-fun b!2256872 () Bool)

(declare-fun e!1444813 () Bool)

(assert (=> b!2256872 (= e!1444836 e!1444813)))

(declare-fun res!964777 () Bool)

(assert (=> b!2256872 (=> res!964777 e!1444813)))

(get-info :version)

(assert (=> b!2256872 (= res!964777 (not ((_ is Nil!26792) tokens!456)))))

(declare-fun lt!838912 () Unit!39712)

(assert (=> b!2256872 (= lt!838912 e!1444821)))

(declare-fun c!358625 () Bool)

(assert (=> b!2256872 (= c!358625 (= lt!838909 lt!838902))))

(declare-fun b!2256873 () Bool)

(declare-fun res!964770 () Bool)

(assert (=> b!2256873 (=> (not res!964770) (not e!1444818))))

(assert (=> b!2256873 (= res!964770 (contains!4609 rules!1750 otherR!12))))

(declare-fun b!2256874 () Bool)

(declare-fun res!964773 () Bool)

(assert (=> b!2256874 (=> (not res!964773) (not e!1444818))))

(declare-fun rulesInvariant!3356 (LexerInterface!3854 List!26885) Bool)

(assert (=> b!2256874 (= res!964773 (rulesInvariant!3356 thiss!16613 rules!1750))))

(declare-fun b!2256875 () Bool)

(declare-fun e!1444811 () Bool)

(declare-fun tp!713468 () Bool)

(assert (=> b!2256875 (= e!1444811 (and tp_is_empty!10431 tp!713468))))

(assert (=> b!2256876 (= e!1444839 (and tp!713474 tp!713472))))

(declare-fun res!964780 () Bool)

(assert (=> start!220192 (=> (not res!964780) (not e!1444818))))

(assert (=> start!220192 (= res!964780 ((_ is Lexer!3852) thiss!16613))))

(assert (=> start!220192 e!1444818))

(assert (=> start!220192 true))

(assert (=> start!220192 e!1444814))

(assert (=> start!220192 e!1444834))

(assert (=> start!220192 e!1444833))

(assert (=> start!220192 e!1444811))

(declare-fun e!1444838 () Bool)

(assert (=> start!220192 e!1444838))

(assert (=> start!220192 e!1444829))

(assert (=> start!220192 e!1444841))

(declare-fun b!2256877 () Bool)

(declare-fun e!1444832 () Bool)

(assert (=> b!2256877 (= e!1444832 e!1444815)))

(declare-fun res!964774 () Bool)

(assert (=> b!2256877 (=> res!964774 e!1444815)))

(assert (=> b!2256877 (= res!964774 (>= lt!838902 lt!838909))))

(assert (=> b!2256877 (not (matchR!2866 (regex!4257 otherR!12) otherP!12))))

(declare-fun lt!838906 () Unit!39712)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!397 (LexerInterface!3854 Rule!8314 List!26884 List!26884) Unit!39712)

(assert (=> b!2256877 (= lt!838906 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!397 thiss!16613 otherR!12 otherP!12 input!1722))))

(declare-fun b!2256878 () Bool)

(declare-fun tp!713465 () Bool)

(declare-fun inv!21 (TokenValue!4419) Bool)

(assert (=> b!2256878 (= e!1444837 (and (inv!21 (value!135144 (h!32193 tokens!456))) e!1444831 tp!713465))))

(declare-fun b!2256879 () Bool)

(assert (=> b!2256879 (= e!1444813 e!1444832)))

(declare-fun res!964767 () Bool)

(assert (=> b!2256879 (=> res!964767 e!1444832)))

(declare-datatypes ((tuple2!26358 0))(
  ( (tuple2!26359 (_1!15689 Token!7992) (_2!15689 List!26884)) )
))
(declare-datatypes ((Option!5233 0))(
  ( (None!5232) (Some!5232 (v!30258 tuple2!26358)) )
))
(declare-fun lt!838911 () Option!5233)

(assert (=> b!2256879 (= res!964767 (not (= lt!838911 None!5232)))))

(declare-fun isEmpty!15128 (Option!5233) Bool)

(assert (=> b!2256879 (isEmpty!15128 lt!838911)))

(declare-fun maxPrefixOneRule!1332 (LexerInterface!3854 Rule!8314 List!26884) Option!5233)

(assert (=> b!2256879 (= lt!838911 (maxPrefixOneRule!1332 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!838908 () Unit!39712)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!405 (LexerInterface!3854 Rule!8314 List!26885 List!26884) Unit!39712)

(assert (=> b!2256879 (= lt!838908 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!405 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun b!2256880 () Bool)

(declare-fun tp!713477 () Bool)

(assert (=> b!2256880 (= e!1444838 (and e!1444830 tp!713477))))

(assert (= (and start!220192 res!964780) b!2256863))

(assert (= (and b!2256863 res!964769) b!2256874))

(assert (= (and b!2256874 res!964773) b!2256855))

(assert (= (and b!2256855 res!964776) b!2256873))

(assert (= (and b!2256873 res!964770) b!2256869))

(assert (= (and b!2256869 res!964771) b!2256862))

(assert (= (and b!2256862 (not res!964765)) b!2256864))

(assert (= (and b!2256862 res!964779) b!2256856))

(assert (= (and b!2256856 (not res!964782)) b!2256854))

(assert (= (and b!2256856 res!964775) b!2256868))

(assert (= (and b!2256868 res!964772) b!2256847))

(assert (= (and b!2256847 res!964778) b!2256859))

(assert (= (and b!2256859 res!964766) b!2256857))

(assert (= (and b!2256859 (not res!964781)) b!2256853))

(assert (= (and b!2256853 (not res!964768)) b!2256872))

(assert (= (and b!2256872 c!358625) b!2256858))

(assert (= (and b!2256872 (not c!358625)) b!2256851))

(assert (= (and b!2256872 (not res!964777)) b!2256879))

(assert (= (and b!2256879 (not res!964767)) b!2256877))

(assert (= (and b!2256877 (not res!964774)) b!2256865))

(assert (= (and start!220192 ((_ is Cons!26790) input!1722)) b!2256867))

(assert (= b!2256870 b!2256876))

(assert (= start!220192 b!2256870))

(assert (= (and start!220192 ((_ is Cons!26790) suffix!886)) b!2256850))

(assert (= (and start!220192 ((_ is Cons!26790) otherP!12)) b!2256875))

(assert (= b!2256848 b!2256852))

(assert (= b!2256880 b!2256848))

(assert (= (and start!220192 ((_ is Cons!26791) rules!1750)) b!2256880))

(assert (= b!2256849 b!2256866))

(assert (= start!220192 b!2256849))

(assert (= b!2256861 b!2256871))

(assert (= b!2256878 b!2256861))

(assert (= b!2256860 b!2256878))

(assert (= (and start!220192 ((_ is Cons!26792) tokens!456)) b!2256860))

(declare-fun m!2687137 () Bool)

(assert (=> b!2256873 m!2687137))

(declare-fun m!2687139 () Bool)

(assert (=> b!2256859 m!2687139))

(declare-fun m!2687141 () Bool)

(assert (=> b!2256859 m!2687141))

(declare-fun m!2687143 () Bool)

(assert (=> b!2256854 m!2687143))

(declare-fun m!2687145 () Bool)

(assert (=> b!2256849 m!2687145))

(declare-fun m!2687147 () Bool)

(assert (=> b!2256849 m!2687147))

(assert (=> b!2256864 m!2687143))

(assert (=> b!2256864 m!2687143))

(declare-fun m!2687149 () Bool)

(assert (=> b!2256864 m!2687149))

(assert (=> b!2256864 m!2687149))

(declare-fun m!2687151 () Bool)

(assert (=> b!2256864 m!2687151))

(declare-fun m!2687153 () Bool)

(assert (=> b!2256864 m!2687153))

(declare-fun m!2687155 () Bool)

(assert (=> b!2256861 m!2687155))

(declare-fun m!2687157 () Bool)

(assert (=> b!2256861 m!2687157))

(declare-fun m!2687159 () Bool)

(assert (=> b!2256870 m!2687159))

(declare-fun m!2687161 () Bool)

(assert (=> b!2256870 m!2687161))

(declare-fun m!2687163 () Bool)

(assert (=> b!2256853 m!2687163))

(declare-fun m!2687165 () Bool)

(assert (=> b!2256853 m!2687165))

(declare-fun m!2687167 () Bool)

(assert (=> b!2256853 m!2687167))

(declare-fun m!2687169 () Bool)

(assert (=> b!2256853 m!2687169))

(declare-fun m!2687171 () Bool)

(assert (=> b!2256877 m!2687171))

(declare-fun m!2687173 () Bool)

(assert (=> b!2256877 m!2687173))

(declare-fun m!2687175 () Bool)

(assert (=> b!2256860 m!2687175))

(assert (=> b!2256857 m!2687143))

(assert (=> b!2256857 m!2687143))

(assert (=> b!2256857 m!2687149))

(assert (=> b!2256857 m!2687149))

(declare-fun m!2687177 () Bool)

(assert (=> b!2256857 m!2687177))

(assert (=> b!2256857 m!2687177))

(declare-fun m!2687179 () Bool)

(assert (=> b!2256857 m!2687179))

(declare-fun m!2687181 () Bool)

(assert (=> b!2256869 m!2687181))

(declare-fun m!2687183 () Bool)

(assert (=> b!2256869 m!2687183))

(declare-fun m!2687185 () Bool)

(assert (=> b!2256869 m!2687185))

(assert (=> b!2256869 m!2687185))

(declare-fun m!2687187 () Bool)

(assert (=> b!2256869 m!2687187))

(declare-fun m!2687189 () Bool)

(assert (=> b!2256855 m!2687189))

(declare-fun m!2687191 () Bool)

(assert (=> b!2256862 m!2687191))

(declare-fun m!2687193 () Bool)

(assert (=> b!2256878 m!2687193))

(declare-fun m!2687195 () Bool)

(assert (=> b!2256868 m!2687195))

(declare-fun m!2687197 () Bool)

(assert (=> b!2256863 m!2687197))

(declare-fun m!2687199 () Bool)

(assert (=> b!2256879 m!2687199))

(declare-fun m!2687201 () Bool)

(assert (=> b!2256879 m!2687201))

(declare-fun m!2687203 () Bool)

(assert (=> b!2256879 m!2687203))

(declare-fun m!2687205 () Bool)

(assert (=> b!2256848 m!2687205))

(declare-fun m!2687207 () Bool)

(assert (=> b!2256848 m!2687207))

(declare-fun m!2687209 () Bool)

(assert (=> b!2256865 m!2687209))

(declare-fun m!2687211 () Bool)

(assert (=> b!2256858 m!2687211))

(declare-fun m!2687213 () Bool)

(assert (=> b!2256874 m!2687213))

(check-sat (not b_next!67189) (not b!2256850) (not b!2256853) (not b!2256848) b_and!177181 (not b!2256873) (not b!2256880) b_and!177173 (not b!2256860) (not b!2256862) b_and!177175 (not b_next!67187) (not b!2256878) (not b_next!67195) (not b!2256864) b_and!177171 (not b!2256868) b_and!177179 (not b_next!67183) (not b!2256867) b_and!177177 (not b!2256877) (not b_next!67193) (not b!2256869) (not b!2256857) (not b!2256855) (not b!2256879) b_and!177169 (not b!2256854) b_and!177183 (not b!2256865) (not b!2256870) (not b_next!67185) (not b_next!67191) (not b!2256875) (not b!2256849) (not b_next!67181) (not b!2256859) (not b!2256858) tp_is_empty!10431 (not b!2256863) (not b!2256874) (not b!2256861))
(check-sat (not b_next!67189) b_and!177177 (not b_next!67193) b_and!177169 b_and!177181 (not b_next!67191) (not b_next!67181) b_and!177173 b_and!177175 (not b_next!67187) (not b_next!67195) b_and!177171 b_and!177179 (not b_next!67183) b_and!177183 (not b_next!67185))
