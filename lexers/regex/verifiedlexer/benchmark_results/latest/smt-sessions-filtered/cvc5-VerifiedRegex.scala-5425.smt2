; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!275966 () Bool)

(assert start!275966)

(declare-fun b!2837303 () Bool)

(declare-fun b_free!81901 () Bool)

(declare-fun b_next!82605 () Bool)

(assert (=> b!2837303 (= b_free!81901 (not b_next!82605))))

(declare-fun tp!908018 () Bool)

(declare-fun b_and!207771 () Bool)

(assert (=> b!2837303 (= tp!908018 b_and!207771)))

(declare-fun b_free!81903 () Bool)

(declare-fun b_next!82607 () Bool)

(assert (=> b!2837303 (= b_free!81903 (not b_next!82607))))

(declare-fun tp!908028 () Bool)

(declare-fun b_and!207773 () Bool)

(assert (=> b!2837303 (= tp!908028 b_and!207773)))

(declare-fun b!2837306 () Bool)

(declare-fun b_free!81905 () Bool)

(declare-fun b_next!82609 () Bool)

(assert (=> b!2837306 (= b_free!81905 (not b_next!82609))))

(declare-fun tp!908016 () Bool)

(declare-fun b_and!207775 () Bool)

(assert (=> b!2837306 (= tp!908016 b_and!207775)))

(declare-fun b_free!81907 () Bool)

(declare-fun b_next!82611 () Bool)

(assert (=> b!2837306 (= b_free!81907 (not b_next!82611))))

(declare-fun tp!908027 () Bool)

(declare-fun b_and!207777 () Bool)

(assert (=> b!2837306 (= tp!908027 b_and!207777)))

(declare-fun b!2837312 () Bool)

(declare-fun b_free!81909 () Bool)

(declare-fun b_next!82613 () Bool)

(assert (=> b!2837312 (= b_free!81909 (not b_next!82613))))

(declare-fun tp!908023 () Bool)

(declare-fun b_and!207779 () Bool)

(assert (=> b!2837312 (= tp!908023 b_and!207779)))

(declare-fun b_free!81911 () Bool)

(declare-fun b_next!82615 () Bool)

(assert (=> b!2837312 (= b_free!81911 (not b_next!82615))))

(declare-fun tp!908021 () Bool)

(declare-fun b_and!207781 () Bool)

(assert (=> b!2837312 (= tp!908021 b_and!207781)))

(declare-fun res!1180647 () Bool)

(declare-fun e!1796748 () Bool)

(assert (=> start!275966 (=> (not res!1180647) (not e!1796748))))

(declare-datatypes ((LexerInterface!4625 0))(
  ( (LexerInterfaceExt!4622 (__x!22268 Int)) (Lexer!4623) )
))
(declare-fun thiss!27264 () LexerInterface!4625)

(assert (=> start!275966 (= res!1180647 (is-Lexer!4623 thiss!27264))))

(assert (=> start!275966 e!1796748))

(assert (=> start!275966 true))

(declare-fun e!1796743 () Bool)

(assert (=> start!275966 e!1796743))

(declare-fun e!1796759 () Bool)

(assert (=> start!275966 e!1796759))

(declare-fun e!1796753 () Bool)

(assert (=> start!275966 e!1796753))

(declare-fun b!2837293 () Bool)

(declare-fun res!1180646 () Bool)

(assert (=> b!2837293 (=> (not res!1180646) (not e!1796748))))

(declare-fun e!1796755 () Bool)

(assert (=> b!2837293 (= res!1180646 e!1796755)))

(declare-fun res!1180652 () Bool)

(assert (=> b!2837293 (=> res!1180652 e!1796755)))

(declare-datatypes ((C!17034 0))(
  ( (C!17035 (val!10529 Int)) )
))
(declare-datatypes ((List!33646 0))(
  ( (Nil!33522) (Cons!33522 (h!38942 C!17034) (t!232023 List!33646)) )
))
(declare-datatypes ((IArray!20835 0))(
  ( (IArray!20836 (innerList!10475 List!33646)) )
))
(declare-datatypes ((Conc!10415 0))(
  ( (Node!10415 (left!25284 Conc!10415) (right!25614 Conc!10415) (csize!21060 Int) (cheight!10626 Int)) (Leaf!15841 (xs!13527 IArray!20835) (csize!21061 Int)) (Empty!10415) )
))
(declare-datatypes ((BalanceConc!20468 0))(
  ( (BalanceConc!20469 (c!458410 Conc!10415)) )
))
(declare-datatypes ((List!33647 0))(
  ( (Nil!33523) (Cons!33523 (h!38943 (_ BitVec 16)) (t!232024 List!33647)) )
))
(declare-datatypes ((Regex!8426 0))(
  ( (ElementMatch!8426 (c!458411 C!17034)) (Concat!13691 (regOne!17364 Regex!8426) (regTwo!17364 Regex!8426)) (EmptyExpr!8426) (Star!8426 (reg!8755 Regex!8426)) (EmptyLang!8426) (Union!8426 (regOne!17365 Regex!8426) (regTwo!17365 Regex!8426)) )
))
(declare-datatypes ((String!36848 0))(
  ( (String!36849 (value!161842 String)) )
))
(declare-datatypes ((TokenValue!5265 0))(
  ( (FloatLiteralValue!10530 (text!37300 List!33647)) (TokenValueExt!5264 (__x!22269 Int)) (Broken!26325 (value!161843 List!33647)) (Object!5388) (End!5265) (Def!5265) (Underscore!5265) (Match!5265) (Else!5265) (Error!5265) (Case!5265) (If!5265) (Extends!5265) (Abstract!5265) (Class!5265) (Val!5265) (DelimiterValue!10530 (del!5325 List!33647)) (KeywordValue!5271 (value!161844 List!33647)) (CommentValue!10530 (value!161845 List!33647)) (WhitespaceValue!10530 (value!161846 List!33647)) (IndentationValue!5265 (value!161847 List!33647)) (String!36850) (Int32!5265) (Broken!26326 (value!161848 List!33647)) (Boolean!5266) (Unit!47441) (OperatorValue!5268 (op!5325 List!33647)) (IdentifierValue!10530 (value!161849 List!33647)) (IdentifierValue!10531 (value!161850 List!33647)) (WhitespaceValue!10531 (value!161851 List!33647)) (True!10530) (False!10530) (Broken!26327 (value!161852 List!33647)) (Broken!26328 (value!161853 List!33647)) (True!10531) (RightBrace!5265) (RightBracket!5265) (Colon!5265) (Null!5265) (Comma!5265) (LeftBracket!5265) (False!10531) (LeftBrace!5265) (ImaginaryLiteralValue!5265 (text!37301 List!33647)) (StringLiteralValue!15795 (value!161854 List!33647)) (EOFValue!5265 (value!161855 List!33647)) (IdentValue!5265 (value!161856 List!33647)) (DelimiterValue!10531 (value!161857 List!33647)) (DedentValue!5265 (value!161858 List!33647)) (NewLineValue!5265 (value!161859 List!33647)) (IntegerValue!15795 (value!161860 (_ BitVec 32)) (text!37302 List!33647)) (IntegerValue!15796 (value!161861 Int) (text!37303 List!33647)) (Times!5265) (Or!5265) (Equal!5265) (Minus!5265) (Broken!26329 (value!161862 List!33647)) (And!5265) (Div!5265) (LessEqual!5265) (Mod!5265) (Concat!13692) (Not!5265) (Plus!5265) (SpaceValue!5265 (value!161863 List!33647)) (IntegerValue!15797 (value!161864 Int) (text!37304 List!33647)) (StringLiteralValue!15796 (text!37305 List!33647)) (FloatLiteralValue!10531 (text!37306 List!33647)) (BytesLiteralValue!5265 (value!161865 List!33647)) (CommentValue!10531 (value!161866 List!33647)) (StringLiteralValue!15797 (value!161867 List!33647)) (ErrorTokenValue!5265 (msg!5326 List!33647)) )
))
(declare-datatypes ((TokenValueInjection!9958 0))(
  ( (TokenValueInjection!9959 (toValue!7077 Int) (toChars!6936 Int)) )
))
(declare-datatypes ((Rule!9870 0))(
  ( (Rule!9871 (regex!5035 Regex!8426) (tag!5539 String!36848) (isSeparator!5035 Bool) (transformation!5035 TokenValueInjection!9958)) )
))
(declare-datatypes ((Token!9472 0))(
  ( (Token!9473 (value!161868 TokenValue!5265) (rule!7463 Rule!9870) (size!26068 Int) (originalCharacters!5767 List!33646)) )
))
(declare-datatypes ((List!33648 0))(
  ( (Nil!33524) (Cons!33524 (h!38944 Token!9472) (t!232025 List!33648)) )
))
(declare-fun tokensBis!14 () List!33648)

(declare-fun tokens!612 () List!33648)

(assert (=> b!2837293 (= res!1180652 (not (= (h!38944 tokensBis!14) (h!38944 tokens!612))))))

(declare-fun b!2837294 () Bool)

(assert (=> b!2837294 (= e!1796748 (not true))))

(declare-datatypes ((List!33649 0))(
  ( (Nil!33525) (Cons!33525 (h!38945 Rule!9870) (t!232026 List!33649)) )
))
(declare-fun rules!4246 () List!33649)

(declare-fun rulesProduceEachTokenIndividuallyList!1666 (LexerInterface!4625 List!33649 List!33648) Bool)

(assert (=> b!2837294 (rulesProduceEachTokenIndividuallyList!1666 thiss!27264 rules!4246 tokensBis!14)))

(declare-datatypes ((Unit!47442 0))(
  ( (Unit!47443) )
))
(declare-fun lt!1011476 () Unit!47442)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!80 (LexerInterface!4625 List!33649 List!33648 List!33648) Unit!47442)

(assert (=> b!2837294 (= lt!1011476 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!80 thiss!27264 rules!4246 (t!232025 tokens!612) tokensBis!14))))

(declare-fun b!2837295 () Bool)

(declare-fun res!1180644 () Bool)

(assert (=> b!2837295 (=> (not res!1180644) (not e!1796748))))

(declare-fun subseq!501 (List!33648 List!33648) Bool)

(assert (=> b!2837295 (= res!1180644 (subseq!501 tokensBis!14 (t!232025 tokens!612)))))

(declare-fun b!2837296 () Bool)

(declare-fun tp!908024 () Bool)

(declare-fun e!1796751 () Bool)

(declare-fun inv!45494 (Token!9472) Bool)

(assert (=> b!2837296 (= e!1796753 (and (inv!45494 (h!38944 tokens!612)) e!1796751 tp!908024))))

(declare-fun tp!908015 () Bool)

(declare-fun b!2837297 () Bool)

(declare-fun e!1796754 () Bool)

(declare-fun e!1796742 () Bool)

(declare-fun inv!21 (TokenValue!5265) Bool)

(assert (=> b!2837297 (= e!1796754 (and (inv!21 (value!161868 (h!38944 tokensBis!14))) e!1796742 tp!908015))))

(declare-fun b!2837298 () Bool)

(declare-fun res!1180645 () Bool)

(assert (=> b!2837298 (=> (not res!1180645) (not e!1796748))))

(assert (=> b!2837298 (= res!1180645 (subseq!501 tokensBis!14 tokens!612))))

(declare-fun b!2837299 () Bool)

(declare-fun res!1180653 () Bool)

(assert (=> b!2837299 (=> (not res!1180653) (not e!1796748))))

(declare-fun isEmpty!18480 (List!33649) Bool)

(assert (=> b!2837299 (= res!1180653 (not (isEmpty!18480 rules!4246)))))

(declare-fun b!2837300 () Bool)

(declare-fun res!1180648 () Bool)

(assert (=> b!2837300 (=> (not res!1180648) (not e!1796748))))

(assert (=> b!2837300 (= res!1180648 (rulesProduceEachTokenIndividuallyList!1666 thiss!27264 rules!4246 (t!232025 tokens!612)))))

(declare-fun e!1796745 () Bool)

(declare-fun b!2837301 () Bool)

(declare-fun tp!908017 () Bool)

(assert (=> b!2837301 (= e!1796751 (and (inv!21 (value!161868 (h!38944 tokens!612))) e!1796745 tp!908017))))

(declare-fun b!2837302 () Bool)

(declare-fun tp!908020 () Bool)

(assert (=> b!2837302 (= e!1796759 (and (inv!45494 (h!38944 tokensBis!14)) e!1796754 tp!908020))))

(declare-fun e!1796744 () Bool)

(assert (=> b!2837303 (= e!1796744 (and tp!908018 tp!908028))))

(declare-fun b!2837304 () Bool)

(declare-fun tp!908019 () Bool)

(declare-fun e!1796749 () Bool)

(declare-fun inv!45491 (String!36848) Bool)

(declare-fun inv!45495 (TokenValueInjection!9958) Bool)

(assert (=> b!2837304 (= e!1796742 (and tp!908019 (inv!45491 (tag!5539 (rule!7463 (h!38944 tokensBis!14)))) (inv!45495 (transformation!5035 (rule!7463 (h!38944 tokensBis!14)))) e!1796749))))

(declare-fun b!2837305 () Bool)

(declare-fun e!1796756 () Bool)

(declare-fun e!1796750 () Bool)

(declare-fun tp!908026 () Bool)

(assert (=> b!2837305 (= e!1796756 (and tp!908026 (inv!45491 (tag!5539 (h!38945 rules!4246))) (inv!45495 (transformation!5035 (h!38945 rules!4246))) e!1796750))))

(assert (=> b!2837306 (= e!1796750 (and tp!908016 tp!908027))))

(declare-fun b!2837307 () Bool)

(declare-fun res!1180650 () Bool)

(assert (=> b!2837307 (=> (not res!1180650) (not e!1796748))))

(assert (=> b!2837307 (= res!1180650 (rulesProduceEachTokenIndividuallyList!1666 thiss!27264 rules!4246 tokens!612))))

(declare-fun b!2837308 () Bool)

(declare-fun res!1180651 () Bool)

(assert (=> b!2837308 (=> (not res!1180651) (not e!1796748))))

(assert (=> b!2837308 (= res!1180651 (and (not (is-Nil!33524 tokensBis!14)) (is-Cons!33524 tokens!612)))))

(declare-fun b!2837309 () Bool)

(declare-fun tp!908025 () Bool)

(assert (=> b!2837309 (= e!1796745 (and tp!908025 (inv!45491 (tag!5539 (rule!7463 (h!38944 tokens!612)))) (inv!45495 (transformation!5035 (rule!7463 (h!38944 tokens!612)))) e!1796744))))

(declare-fun b!2837310 () Bool)

(declare-fun res!1180649 () Bool)

(assert (=> b!2837310 (=> (not res!1180649) (not e!1796748))))

(declare-fun rulesInvariant!4041 (LexerInterface!4625 List!33649) Bool)

(assert (=> b!2837310 (= res!1180649 (rulesInvariant!4041 thiss!27264 rules!4246))))

(declare-fun b!2837311 () Bool)

(declare-fun tp!908022 () Bool)

(assert (=> b!2837311 (= e!1796743 (and e!1796756 tp!908022))))

(assert (=> b!2837312 (= e!1796749 (and tp!908023 tp!908021))))

(declare-fun b!2837313 () Bool)

(assert (=> b!2837313 (= e!1796755 (not (subseq!501 (t!232025 tokensBis!14) (t!232025 tokens!612))))))

(assert (= (and start!275966 res!1180647) b!2837299))

(assert (= (and b!2837299 res!1180653) b!2837310))

(assert (= (and b!2837310 res!1180649) b!2837298))

(assert (= (and b!2837298 res!1180645) b!2837307))

(assert (= (and b!2837307 res!1180650) b!2837308))

(assert (= (and b!2837308 res!1180651) b!2837293))

(assert (= (and b!2837293 (not res!1180652)) b!2837313))

(assert (= (and b!2837293 res!1180646) b!2837295))

(assert (= (and b!2837295 res!1180644) b!2837300))

(assert (= (and b!2837300 res!1180648) b!2837294))

(assert (= b!2837305 b!2837306))

(assert (= b!2837311 b!2837305))

(assert (= (and start!275966 (is-Cons!33525 rules!4246)) b!2837311))

(assert (= b!2837304 b!2837312))

(assert (= b!2837297 b!2837304))

(assert (= b!2837302 b!2837297))

(assert (= (and start!275966 (is-Cons!33524 tokensBis!14)) b!2837302))

(assert (= b!2837309 b!2837303))

(assert (= b!2837301 b!2837309))

(assert (= b!2837296 b!2837301))

(assert (= (and start!275966 (is-Cons!33524 tokens!612)) b!2837296))

(declare-fun m!3266907 () Bool)

(assert (=> b!2837302 m!3266907))

(declare-fun m!3266909 () Bool)

(assert (=> b!2837313 m!3266909))

(declare-fun m!3266911 () Bool)

(assert (=> b!2837297 m!3266911))

(declare-fun m!3266913 () Bool)

(assert (=> b!2837309 m!3266913))

(declare-fun m!3266915 () Bool)

(assert (=> b!2837309 m!3266915))

(declare-fun m!3266917 () Bool)

(assert (=> b!2837296 m!3266917))

(declare-fun m!3266919 () Bool)

(assert (=> b!2837294 m!3266919))

(declare-fun m!3266921 () Bool)

(assert (=> b!2837294 m!3266921))

(declare-fun m!3266923 () Bool)

(assert (=> b!2837300 m!3266923))

(declare-fun m!3266925 () Bool)

(assert (=> b!2837295 m!3266925))

(declare-fun m!3266927 () Bool)

(assert (=> b!2837304 m!3266927))

(declare-fun m!3266929 () Bool)

(assert (=> b!2837304 m!3266929))

(declare-fun m!3266931 () Bool)

(assert (=> b!2837298 m!3266931))

(declare-fun m!3266933 () Bool)

(assert (=> b!2837301 m!3266933))

(declare-fun m!3266935 () Bool)

(assert (=> b!2837305 m!3266935))

(declare-fun m!3266937 () Bool)

(assert (=> b!2837305 m!3266937))

(declare-fun m!3266939 () Bool)

(assert (=> b!2837299 m!3266939))

(declare-fun m!3266941 () Bool)

(assert (=> b!2837310 m!3266941))

(declare-fun m!3266943 () Bool)

(assert (=> b!2837307 m!3266943))

(push 1)

(assert (not b!2837313))

(assert (not b_next!82605))

(assert (not b!2837302))

(assert (not b_next!82607))

(assert (not b!2837311))

(assert (not b!2837294))

(assert b_and!207781)

(assert b_and!207771)

(assert (not b_next!82613))

(assert b_and!207777)

(assert b_and!207779)

(assert (not b!2837298))

(assert (not b!2837299))

(assert (not b_next!82615))

(assert (not b!2837296))

(assert (not b!2837309))

(assert b_and!207773)

(assert b_and!207775)

(assert (not b!2837304))

(assert (not b!2837305))

(assert (not b_next!82611))

(assert (not b!2837307))

(assert (not b!2837300))

(assert (not b!2837297))

(assert (not b_next!82609))

(assert (not b!2837295))

(assert (not b!2837310))

(assert (not b!2837301))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82605))

(assert (not b_next!82615))

(assert (not b_next!82611))

(assert (not b_next!82607))

(assert b_and!207781)

(assert b_and!207771)

(assert (not b_next!82609))

(assert (not b_next!82613))

(assert b_and!207777)

(assert b_and!207779)

(assert b_and!207773)

(assert b_and!207775)

(check-sat)

(pop 1)

