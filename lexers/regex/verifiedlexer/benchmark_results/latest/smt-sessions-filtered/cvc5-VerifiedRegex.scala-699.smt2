; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!28256 () Bool)

(assert start!28256)

(declare-fun b!263840 () Bool)

(declare-fun b_free!9805 () Bool)

(declare-fun b_next!9805 () Bool)

(assert (=> b!263840 (= b_free!9805 (not b_next!9805))))

(declare-fun tp!101099 () Bool)

(declare-fun b_and!20617 () Bool)

(assert (=> b!263840 (= tp!101099 b_and!20617)))

(declare-fun b_free!9807 () Bool)

(declare-fun b_next!9807 () Bool)

(assert (=> b!263840 (= b_free!9807 (not b_next!9807))))

(declare-fun tp!101102 () Bool)

(declare-fun b_and!20619 () Bool)

(assert (=> b!263840 (= tp!101102 b_and!20619)))

(declare-fun b!263839 () Bool)

(declare-fun b_free!9809 () Bool)

(declare-fun b_next!9809 () Bool)

(assert (=> b!263839 (= b_free!9809 (not b_next!9809))))

(declare-fun tp!101095 () Bool)

(declare-fun b_and!20621 () Bool)

(assert (=> b!263839 (= tp!101095 b_and!20621)))

(declare-fun b_free!9811 () Bool)

(declare-fun b_next!9811 () Bool)

(assert (=> b!263839 (= b_free!9811 (not b_next!9811))))

(declare-fun tp!101092 () Bool)

(declare-fun b_and!20623 () Bool)

(assert (=> b!263839 (= tp!101092 b_and!20623)))

(declare-fun b!263843 () Bool)

(declare-fun b_free!9813 () Bool)

(declare-fun b_next!9813 () Bool)

(assert (=> b!263843 (= b_free!9813 (not b_next!9813))))

(declare-fun tp!101093 () Bool)

(declare-fun b_and!20625 () Bool)

(assert (=> b!263843 (= tp!101093 b_and!20625)))

(declare-fun b_free!9815 () Bool)

(declare-fun b_next!9815 () Bool)

(assert (=> b!263843 (= b_free!9815 (not b_next!9815))))

(declare-fun tp!101100 () Bool)

(declare-fun b_and!20627 () Bool)

(assert (=> b!263843 (= tp!101100 b_and!20627)))

(declare-fun b!263821 () Bool)

(declare-fun e!163842 () Bool)

(declare-fun e!163837 () Bool)

(assert (=> b!263821 (= e!163842 e!163837)))

(declare-fun res!121134 () Bool)

(assert (=> b!263821 (=> (not res!121134) (not e!163837))))

(declare-datatypes ((List!3785 0))(
  ( (Nil!3775) (Cons!3775 (h!9172 (_ BitVec 16)) (t!37363 List!3785)) )
))
(declare-datatypes ((TokenValue!742 0))(
  ( (FloatLiteralValue!1484 (text!5639 List!3785)) (TokenValueExt!741 (__x!2971 Int)) (Broken!3710 (value!24811 List!3785)) (Object!751) (End!742) (Def!742) (Underscore!742) (Match!742) (Else!742) (Error!742) (Case!742) (If!742) (Extends!742) (Abstract!742) (Class!742) (Val!742) (DelimiterValue!1484 (del!802 List!3785)) (KeywordValue!748 (value!24812 List!3785)) (CommentValue!1484 (value!24813 List!3785)) (WhitespaceValue!1484 (value!24814 List!3785)) (IndentationValue!742 (value!24815 List!3785)) (String!4791) (Int32!742) (Broken!3711 (value!24816 List!3785)) (Boolean!743) (Unit!4734) (OperatorValue!745 (op!802 List!3785)) (IdentifierValue!1484 (value!24817 List!3785)) (IdentifierValue!1485 (value!24818 List!3785)) (WhitespaceValue!1485 (value!24819 List!3785)) (True!1484) (False!1484) (Broken!3712 (value!24820 List!3785)) (Broken!3713 (value!24821 List!3785)) (True!1485) (RightBrace!742) (RightBracket!742) (Colon!742) (Null!742) (Comma!742) (LeftBracket!742) (False!1485) (LeftBrace!742) (ImaginaryLiteralValue!742 (text!5640 List!3785)) (StringLiteralValue!2226 (value!24822 List!3785)) (EOFValue!742 (value!24823 List!3785)) (IdentValue!742 (value!24824 List!3785)) (DelimiterValue!1485 (value!24825 List!3785)) (DedentValue!742 (value!24826 List!3785)) (NewLineValue!742 (value!24827 List!3785)) (IntegerValue!2226 (value!24828 (_ BitVec 32)) (text!5641 List!3785)) (IntegerValue!2227 (value!24829 Int) (text!5642 List!3785)) (Times!742) (Or!742) (Equal!742) (Minus!742) (Broken!3714 (value!24830 List!3785)) (And!742) (Div!742) (LessEqual!742) (Mod!742) (Concat!1686) (Not!742) (Plus!742) (SpaceValue!742 (value!24831 List!3785)) (IntegerValue!2228 (value!24832 Int) (text!5643 List!3785)) (StringLiteralValue!2227 (text!5644 List!3785)) (FloatLiteralValue!1485 (text!5645 List!3785)) (BytesLiteralValue!742 (value!24833 List!3785)) (CommentValue!1485 (value!24834 List!3785)) (StringLiteralValue!2228 (value!24835 List!3785)) (ErrorTokenValue!742 (msg!803 List!3785)) )
))
(declare-datatypes ((C!2810 0))(
  ( (C!2811 (val!1291 Int)) )
))
(declare-datatypes ((List!3786 0))(
  ( (Nil!3776) (Cons!3776 (h!9173 C!2810) (t!37364 List!3786)) )
))
(declare-datatypes ((IArray!2525 0))(
  ( (IArray!2526 (innerList!1320 List!3786)) )
))
(declare-datatypes ((Conc!1262 0))(
  ( (Node!1262 (left!3105 Conc!1262) (right!3435 Conc!1262) (csize!2754 Int) (cheight!1473 Int)) (Leaf!1962 (xs!3861 IArray!2525) (csize!2755 Int)) (Empty!1262) )
))
(declare-datatypes ((BalanceConc!2532 0))(
  ( (BalanceConc!2533 (c!49898 Conc!1262)) )
))
(declare-datatypes ((Regex!944 0))(
  ( (ElementMatch!944 (c!49899 C!2810)) (Concat!1687 (regOne!2400 Regex!944) (regTwo!2400 Regex!944)) (EmptyExpr!944) (Star!944 (reg!1273 Regex!944)) (EmptyLang!944) (Union!944 (regOne!2401 Regex!944) (regTwo!2401 Regex!944)) )
))
(declare-datatypes ((String!4792 0))(
  ( (String!4793 (value!24836 String)) )
))
(declare-datatypes ((TokenValueInjection!1256 0))(
  ( (TokenValueInjection!1257 (toValue!1447 Int) (toChars!1306 Int)) )
))
(declare-datatypes ((Rule!1240 0))(
  ( (Rule!1241 (regex!720 Regex!944) (tag!930 String!4792) (isSeparator!720 Bool) (transformation!720 TokenValueInjection!1256)) )
))
(declare-datatypes ((Token!1184 0))(
  ( (Token!1185 (value!24837 TokenValue!742) (rule!1305 Rule!1240) (size!3004 Int) (originalCharacters!763 List!3786)) )
))
(declare-datatypes ((List!3787 0))(
  ( (Nil!3777) (Cons!3777 (h!9174 Token!1184) (t!37365 List!3787)) )
))
(declare-datatypes ((IArray!2527 0))(
  ( (IArray!2528 (innerList!1321 List!3787)) )
))
(declare-datatypes ((Conc!1263 0))(
  ( (Node!1263 (left!3106 Conc!1263) (right!3436 Conc!1263) (csize!2756 Int) (cheight!1474 Int)) (Leaf!1963 (xs!3862 IArray!2527) (csize!2757 Int)) (Empty!1263) )
))
(declare-datatypes ((BalanceConc!2534 0))(
  ( (BalanceConc!2535 (c!49900 Conc!1263)) )
))
(declare-fun lt!107740 () BalanceConc!2534)

(declare-datatypes ((List!3788 0))(
  ( (Nil!3778) (Cons!3778 (h!9175 Rule!1240) (t!37366 List!3788)) )
))
(declare-fun rules!1920 () List!3788)

(declare-datatypes ((LexerInterface!606 0))(
  ( (LexerInterfaceExt!603 (__x!2972 Int)) (Lexer!604) )
))
(declare-fun thiss!17480 () LexerInterface!606)

(declare-fun rulesProduceEachTokenIndividually!398 (LexerInterface!606 List!3788 BalanceConc!2534) Bool)

(assert (=> b!263821 (= res!121134 (rulesProduceEachTokenIndividually!398 thiss!17480 rules!1920 lt!107740))))

(declare-fun tokens!465 () List!3787)

(declare-fun seqFromList!807 (List!3787) BalanceConc!2534)

(assert (=> b!263821 (= lt!107740 (seqFromList!807 tokens!465))))

(declare-fun b!263822 () Bool)

(declare-fun res!121142 () Bool)

(declare-fun e!163838 () Bool)

(assert (=> b!263822 (=> res!121142 e!163838)))

(declare-fun e!163845 () Bool)

(assert (=> b!263822 (= res!121142 e!163845)))

(declare-fun res!121138 () Bool)

(assert (=> b!263822 (=> (not res!121138) (not e!163845))))

(declare-fun lt!107734 () List!3786)

(declare-fun lt!107737 () List!3786)

(assert (=> b!263822 (= res!121138 (not (= lt!107734 lt!107737)))))

(declare-fun b!263823 () Bool)

(declare-fun res!121133 () Bool)

(declare-fun e!163832 () Bool)

(assert (=> b!263823 (=> (not res!121133) (not e!163832))))

(declare-fun lt!107736 () List!3786)

(declare-fun list!1528 (BalanceConc!2532) List!3786)

(declare-fun seqFromList!808 (List!3786) BalanceConc!2532)

(assert (=> b!263823 (= res!121133 (= (list!1528 (seqFromList!808 lt!107734)) lt!107736))))

(declare-fun b!263824 () Bool)

(declare-fun e!163847 () Bool)

(declare-fun e!163831 () Bool)

(declare-fun tp!101101 () Bool)

(assert (=> b!263824 (= e!163847 (and e!163831 tp!101101))))

(declare-fun b!263825 () Bool)

(declare-fun res!121130 () Bool)

(assert (=> b!263825 (=> (not res!121130) (not e!163842))))

(declare-fun isEmpty!2375 (List!3788) Bool)

(assert (=> b!263825 (= res!121130 (not (isEmpty!2375 rules!1920)))))

(declare-fun b!263826 () Bool)

(declare-fun lt!107733 () List!3786)

(declare-fun lt!107732 () List!3786)

(declare-fun ++!975 (List!3786 List!3786) List!3786)

(assert (=> b!263826 (= e!163845 (not (= lt!107734 (++!975 lt!107733 lt!107732))))))

(declare-fun b!263827 () Bool)

(assert (=> b!263827 (= e!163832 (not e!163838))))

(declare-fun res!121136 () Bool)

(assert (=> b!263827 (=> res!121136 e!163838)))

(declare-fun separatorToken!170 () Token!1184)

(declare-fun printWithSeparatorTokenWhenNeededRec!281 (LexerInterface!606 List!3788 BalanceConc!2534 Token!1184 Int) BalanceConc!2532)

(assert (=> b!263827 (= res!121136 (not (= lt!107732 (list!1528 (printWithSeparatorTokenWhenNeededRec!281 thiss!17480 rules!1920 (seqFromList!807 (t!37365 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!107738 () List!3786)

(assert (=> b!263827 (= lt!107738 lt!107737)))

(declare-fun lt!107739 () List!3786)

(assert (=> b!263827 (= lt!107737 (++!975 lt!107733 lt!107739))))

(declare-fun lt!107731 () List!3786)

(assert (=> b!263827 (= lt!107738 (++!975 (++!975 lt!107733 lt!107731) lt!107732))))

(declare-datatypes ((Unit!4735 0))(
  ( (Unit!4736) )
))
(declare-fun lt!107741 () Unit!4735)

(declare-fun lemmaConcatAssociativity!417 (List!3786 List!3786 List!3786) Unit!4735)

(assert (=> b!263827 (= lt!107741 (lemmaConcatAssociativity!417 lt!107733 lt!107731 lt!107732))))

(declare-fun charsOf!365 (Token!1184) BalanceConc!2532)

(assert (=> b!263827 (= lt!107733 (list!1528 (charsOf!365 (h!9174 tokens!465))))))

(assert (=> b!263827 (= lt!107739 (++!975 lt!107731 lt!107732))))

(declare-fun printWithSeparatorTokenWhenNeededList!289 (LexerInterface!606 List!3788 List!3787 Token!1184) List!3786)

(assert (=> b!263827 (= lt!107732 (printWithSeparatorTokenWhenNeededList!289 thiss!17480 rules!1920 (t!37365 tokens!465) separatorToken!170))))

(assert (=> b!263827 (= lt!107731 (list!1528 (charsOf!365 separatorToken!170)))))

(declare-fun tp!101096 () Bool)

(declare-fun e!163843 () Bool)

(declare-fun b!263828 () Bool)

(declare-fun inv!4665 (String!4792) Bool)

(declare-fun inv!4668 (TokenValueInjection!1256) Bool)

(assert (=> b!263828 (= e!163831 (and tp!101096 (inv!4665 (tag!930 (h!9175 rules!1920))) (inv!4668 (transformation!720 (h!9175 rules!1920))) e!163843))))

(declare-fun b!263829 () Bool)

(declare-fun res!121140 () Bool)

(assert (=> b!263829 (=> (not res!121140) (not e!163837))))

(declare-fun lambda!8859 () Int)

(declare-fun forall!934 (List!3787 Int) Bool)

(assert (=> b!263829 (= res!121140 (forall!934 tokens!465 lambda!8859))))

(declare-fun b!263830 () Bool)

(declare-fun res!121135 () Bool)

(assert (=> b!263830 (=> (not res!121135) (not e!163837))))

(declare-fun rulesProduceIndividualToken!355 (LexerInterface!606 List!3788 Token!1184) Bool)

(assert (=> b!263830 (= res!121135 (rulesProduceIndividualToken!355 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!263831 () Bool)

(declare-fun res!121132 () Bool)

(assert (=> b!263831 (=> (not res!121132) (not e!163842))))

(declare-fun rulesInvariant!572 (LexerInterface!606 List!3788) Bool)

(assert (=> b!263831 (= res!121132 (rulesInvariant!572 thiss!17480 rules!1920))))

(declare-fun b!263833 () Bool)

(declare-fun res!121131 () Bool)

(assert (=> b!263833 (=> (not res!121131) (not e!163837))))

(assert (=> b!263833 (= res!121131 (isSeparator!720 (rule!1305 separatorToken!170)))))

(declare-fun b!263834 () Bool)

(declare-fun lt!107742 () BalanceConc!2532)

(declare-fun printList!282 (LexerInterface!606 List!3787) List!3786)

(assert (=> b!263834 (= e!163838 (= (list!1528 lt!107742) (printList!282 thiss!17480 (Cons!3777 (h!9174 tokens!465) Nil!3777))))))

(declare-fun lt!107735 () BalanceConc!2534)

(declare-fun printTailRec!294 (LexerInterface!606 BalanceConc!2534 Int BalanceConc!2532) BalanceConc!2532)

(assert (=> b!263834 (= lt!107742 (printTailRec!294 thiss!17480 lt!107735 0 (BalanceConc!2533 Empty!1262)))))

(declare-fun print!331 (LexerInterface!606 BalanceConc!2534) BalanceConc!2532)

(assert (=> b!263834 (= lt!107742 (print!331 thiss!17480 lt!107735))))

(declare-fun singletonSeq!266 (Token!1184) BalanceConc!2534)

(assert (=> b!263834 (= lt!107735 (singletonSeq!266 (h!9174 tokens!465)))))

(declare-fun b!263835 () Bool)

(declare-fun e!163841 () Bool)

(declare-fun tp!101104 () Bool)

(declare-fun e!163835 () Bool)

(assert (=> b!263835 (= e!163835 (and tp!101104 (inv!4665 (tag!930 (rule!1305 separatorToken!170))) (inv!4668 (transformation!720 (rule!1305 separatorToken!170))) e!163841))))

(declare-fun b!263836 () Bool)

(declare-fun e!163836 () Bool)

(declare-fun tp!101097 () Bool)

(declare-fun e!163833 () Bool)

(assert (=> b!263836 (= e!163833 (and tp!101097 (inv!4665 (tag!930 (rule!1305 (h!9174 tokens!465)))) (inv!4668 (transformation!720 (rule!1305 (h!9174 tokens!465)))) e!163836))))

(declare-fun b!263837 () Bool)

(declare-fun res!121141 () Bool)

(assert (=> b!263837 (=> (not res!121141) (not e!163837))))

(declare-fun sepAndNonSepRulesDisjointChars!309 (List!3788 List!3788) Bool)

(assert (=> b!263837 (= res!121141 (sepAndNonSepRulesDisjointChars!309 rules!1920 rules!1920))))

(declare-fun b!263838 () Bool)

(assert (=> b!263838 (= e!163837 e!163832)))

(declare-fun res!121129 () Bool)

(assert (=> b!263838 (=> (not res!121129) (not e!163832))))

(assert (=> b!263838 (= res!121129 (= lt!107734 lt!107736))))

(assert (=> b!263838 (= lt!107736 (list!1528 (printWithSeparatorTokenWhenNeededRec!281 thiss!17480 rules!1920 lt!107740 separatorToken!170 0)))))

(assert (=> b!263838 (= lt!107734 (printWithSeparatorTokenWhenNeededList!289 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!263839 (= e!163843 (and tp!101095 tp!101092))))

(assert (=> b!263840 (= e!163841 (and tp!101099 tp!101102))))

(declare-fun b!263841 () Bool)

(declare-fun e!163848 () Bool)

(declare-fun tp!101094 () Bool)

(declare-fun inv!21 (TokenValue!742) Bool)

(assert (=> b!263841 (= e!163848 (and (inv!21 (value!24837 separatorToken!170)) e!163835 tp!101094))))

(declare-fun tp!101098 () Bool)

(declare-fun b!263842 () Bool)

(declare-fun e!163839 () Bool)

(assert (=> b!263842 (= e!163839 (and (inv!21 (value!24837 (h!9174 tokens!465))) e!163833 tp!101098))))

(assert (=> b!263843 (= e!163836 (and tp!101093 tp!101100))))

(declare-fun b!263844 () Bool)

(declare-fun res!121137 () Bool)

(assert (=> b!263844 (=> (not res!121137) (not e!163837))))

(assert (=> b!263844 (= res!121137 (is-Cons!3777 tokens!465))))

(declare-fun tp!101103 () Bool)

(declare-fun b!263832 () Bool)

(declare-fun e!163850 () Bool)

(declare-fun inv!4669 (Token!1184) Bool)

(assert (=> b!263832 (= e!163850 (and (inv!4669 (h!9174 tokens!465)) e!163839 tp!101103))))

(declare-fun res!121139 () Bool)

(assert (=> start!28256 (=> (not res!121139) (not e!163842))))

(assert (=> start!28256 (= res!121139 (is-Lexer!604 thiss!17480))))

(assert (=> start!28256 e!163842))

(assert (=> start!28256 true))

(assert (=> start!28256 e!163847))

(assert (=> start!28256 (and (inv!4669 separatorToken!170) e!163848)))

(assert (=> start!28256 e!163850))

(assert (= (and start!28256 res!121139) b!263825))

(assert (= (and b!263825 res!121130) b!263831))

(assert (= (and b!263831 res!121132) b!263821))

(assert (= (and b!263821 res!121134) b!263830))

(assert (= (and b!263830 res!121135) b!263833))

(assert (= (and b!263833 res!121131) b!263829))

(assert (= (and b!263829 res!121140) b!263837))

(assert (= (and b!263837 res!121141) b!263844))

(assert (= (and b!263844 res!121137) b!263838))

(assert (= (and b!263838 res!121129) b!263823))

(assert (= (and b!263823 res!121133) b!263827))

(assert (= (and b!263827 (not res!121136)) b!263822))

(assert (= (and b!263822 res!121138) b!263826))

(assert (= (and b!263822 (not res!121142)) b!263834))

(assert (= b!263828 b!263839))

(assert (= b!263824 b!263828))

(assert (= (and start!28256 (is-Cons!3778 rules!1920)) b!263824))

(assert (= b!263835 b!263840))

(assert (= b!263841 b!263835))

(assert (= start!28256 b!263841))

(assert (= b!263836 b!263843))

(assert (= b!263842 b!263836))

(assert (= b!263832 b!263842))

(assert (= (and start!28256 (is-Cons!3777 tokens!465)) b!263832))

(declare-fun m!329031 () Bool)

(assert (=> b!263838 m!329031))

(assert (=> b!263838 m!329031))

(declare-fun m!329033 () Bool)

(assert (=> b!263838 m!329033))

(declare-fun m!329035 () Bool)

(assert (=> b!263838 m!329035))

(declare-fun m!329037 () Bool)

(assert (=> start!28256 m!329037))

(declare-fun m!329039 () Bool)

(assert (=> b!263837 m!329039))

(declare-fun m!329041 () Bool)

(assert (=> b!263828 m!329041))

(declare-fun m!329043 () Bool)

(assert (=> b!263828 m!329043))

(declare-fun m!329045 () Bool)

(assert (=> b!263829 m!329045))

(declare-fun m!329047 () Bool)

(assert (=> b!263826 m!329047))

(declare-fun m!329049 () Bool)

(assert (=> b!263832 m!329049))

(declare-fun m!329051 () Bool)

(assert (=> b!263823 m!329051))

(assert (=> b!263823 m!329051))

(declare-fun m!329053 () Bool)

(assert (=> b!263823 m!329053))

(declare-fun m!329055 () Bool)

(assert (=> b!263831 m!329055))

(declare-fun m!329057 () Bool)

(assert (=> b!263841 m!329057))

(declare-fun m!329059 () Bool)

(assert (=> b!263830 m!329059))

(declare-fun m!329061 () Bool)

(assert (=> b!263825 m!329061))

(declare-fun m!329063 () Bool)

(assert (=> b!263827 m!329063))

(declare-fun m!329065 () Bool)

(assert (=> b!263827 m!329065))

(declare-fun m!329067 () Bool)

(assert (=> b!263827 m!329067))

(declare-fun m!329069 () Bool)

(assert (=> b!263827 m!329069))

(declare-fun m!329071 () Bool)

(assert (=> b!263827 m!329071))

(declare-fun m!329073 () Bool)

(assert (=> b!263827 m!329073))

(declare-fun m!329075 () Bool)

(assert (=> b!263827 m!329075))

(assert (=> b!263827 m!329067))

(declare-fun m!329077 () Bool)

(assert (=> b!263827 m!329077))

(assert (=> b!263827 m!329063))

(declare-fun m!329079 () Bool)

(assert (=> b!263827 m!329079))

(declare-fun m!329081 () Bool)

(assert (=> b!263827 m!329081))

(declare-fun m!329083 () Bool)

(assert (=> b!263827 m!329083))

(assert (=> b!263827 m!329073))

(assert (=> b!263827 m!329081))

(declare-fun m!329085 () Bool)

(assert (=> b!263827 m!329085))

(assert (=> b!263827 m!329079))

(declare-fun m!329087 () Bool)

(assert (=> b!263827 m!329087))

(declare-fun m!329089 () Bool)

(assert (=> b!263834 m!329089))

(declare-fun m!329091 () Bool)

(assert (=> b!263834 m!329091))

(declare-fun m!329093 () Bool)

(assert (=> b!263834 m!329093))

(declare-fun m!329095 () Bool)

(assert (=> b!263834 m!329095))

(declare-fun m!329097 () Bool)

(assert (=> b!263834 m!329097))

(declare-fun m!329099 () Bool)

(assert (=> b!263821 m!329099))

(declare-fun m!329101 () Bool)

(assert (=> b!263821 m!329101))

(declare-fun m!329103 () Bool)

(assert (=> b!263835 m!329103))

(declare-fun m!329105 () Bool)

(assert (=> b!263835 m!329105))

(declare-fun m!329107 () Bool)

(assert (=> b!263842 m!329107))

(declare-fun m!329109 () Bool)

(assert (=> b!263836 m!329109))

(declare-fun m!329111 () Bool)

(assert (=> b!263836 m!329111))

(push 1)

(assert (not b!263842))

(assert (not b!263834))

(assert (not start!28256))

(assert (not b!263823))

(assert (not b!263821))

(assert (not b!263831))

(assert (not b!263832))

(assert b_and!20619)

(assert (not b_next!9811))

(assert (not b!263826))

(assert (not b_next!9813))

(assert (not b!263829))

(assert (not b!263838))

(assert (not b!263835))

(assert (not b!263830))

(assert (not b!263828))

(assert (not b!263836))

(assert b_and!20621)

(assert (not b_next!9815))

(assert (not b!263825))

(assert b_and!20625)

(assert b_and!20623)

(assert (not b!263827))

(assert b_and!20617)

(assert (not b_next!9805))

(assert (not b!263837))

(assert (not b_next!9807))

(assert (not b_next!9809))

(assert b_and!20627)

(assert (not b!263841))

(assert (not b!263824))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20619)

(assert (not b_next!9811))

(assert (not b_next!9813))

(assert b_and!20617)

(assert b_and!20621)

(assert (not b_next!9815))

(assert b_and!20625)

(assert b_and!20623)

(assert (not b_next!9805))

(assert (not b_next!9807))

(assert (not b_next!9809))

(assert b_and!20627)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75820 () Bool)

(declare-fun res!121195 () Bool)

(declare-fun e!163913 () Bool)

(assert (=> d!75820 (=> (not res!121195) (not e!163913))))

(declare-fun rulesValid!216 (LexerInterface!606 List!3788) Bool)

(assert (=> d!75820 (= res!121195 (rulesValid!216 thiss!17480 rules!1920))))

(assert (=> d!75820 (= (rulesInvariant!572 thiss!17480 rules!1920) e!163913)))

(declare-fun b!263919 () Bool)

(declare-datatypes ((List!3793 0))(
  ( (Nil!3783) (Cons!3783 (h!9180 String!4792) (t!37422 List!3793)) )
))
(declare-fun noDuplicateTag!216 (LexerInterface!606 List!3788 List!3793) Bool)

(assert (=> b!263919 (= e!163913 (noDuplicateTag!216 thiss!17480 rules!1920 Nil!3783))))

(assert (= (and d!75820 res!121195) b!263919))

(declare-fun m!329195 () Bool)

(assert (=> d!75820 m!329195))

(declare-fun m!329197 () Bool)

(assert (=> b!263919 m!329197))

(assert (=> b!263831 d!75820))

(declare-fun b!263930 () Bool)

(declare-fun e!163922 () Bool)

(declare-fun inv!15 (TokenValue!742) Bool)

(assert (=> b!263930 (= e!163922 (inv!15 (value!24837 (h!9174 tokens!465))))))

(declare-fun d!75822 () Bool)

(declare-fun c!49910 () Bool)

(assert (=> d!75822 (= c!49910 (is-IntegerValue!2226 (value!24837 (h!9174 tokens!465))))))

(declare-fun e!163921 () Bool)

(assert (=> d!75822 (= (inv!21 (value!24837 (h!9174 tokens!465))) e!163921)))

(declare-fun b!263931 () Bool)

(declare-fun e!163920 () Bool)

(assert (=> b!263931 (= e!163921 e!163920)))

(declare-fun c!49909 () Bool)

(assert (=> b!263931 (= c!49909 (is-IntegerValue!2227 (value!24837 (h!9174 tokens!465))))))

(declare-fun b!263932 () Bool)

(declare-fun inv!17 (TokenValue!742) Bool)

(assert (=> b!263932 (= e!163920 (inv!17 (value!24837 (h!9174 tokens!465))))))

(declare-fun b!263933 () Bool)

(declare-fun res!121198 () Bool)

(assert (=> b!263933 (=> res!121198 e!163922)))

(assert (=> b!263933 (= res!121198 (not (is-IntegerValue!2228 (value!24837 (h!9174 tokens!465)))))))

(assert (=> b!263933 (= e!163920 e!163922)))

(declare-fun b!263934 () Bool)

(declare-fun inv!16 (TokenValue!742) Bool)

(assert (=> b!263934 (= e!163921 (inv!16 (value!24837 (h!9174 tokens!465))))))

(assert (= (and d!75822 c!49910) b!263934))

(assert (= (and d!75822 (not c!49910)) b!263931))

(assert (= (and b!263931 c!49909) b!263932))

(assert (= (and b!263931 (not c!49909)) b!263933))

(assert (= (and b!263933 (not res!121198)) b!263930))

(declare-fun m!329199 () Bool)

(assert (=> b!263930 m!329199))

(declare-fun m!329201 () Bool)

(assert (=> b!263932 m!329201))

(declare-fun m!329203 () Bool)

(assert (=> b!263934 m!329203))

(assert (=> b!263842 d!75822))

(declare-fun b!263935 () Bool)

(declare-fun e!163925 () Bool)

(assert (=> b!263935 (= e!163925 (inv!15 (value!24837 separatorToken!170)))))

(declare-fun d!75824 () Bool)

(declare-fun c!49912 () Bool)

(assert (=> d!75824 (= c!49912 (is-IntegerValue!2226 (value!24837 separatorToken!170)))))

(declare-fun e!163924 () Bool)

(assert (=> d!75824 (= (inv!21 (value!24837 separatorToken!170)) e!163924)))

(declare-fun b!263936 () Bool)

(declare-fun e!163923 () Bool)

(assert (=> b!263936 (= e!163924 e!163923)))

(declare-fun c!49911 () Bool)

(assert (=> b!263936 (= c!49911 (is-IntegerValue!2227 (value!24837 separatorToken!170)))))

(declare-fun b!263937 () Bool)

(assert (=> b!263937 (= e!163923 (inv!17 (value!24837 separatorToken!170)))))

(declare-fun b!263938 () Bool)

(declare-fun res!121199 () Bool)

(assert (=> b!263938 (=> res!121199 e!163925)))

(assert (=> b!263938 (= res!121199 (not (is-IntegerValue!2228 (value!24837 separatorToken!170))))))

(assert (=> b!263938 (= e!163923 e!163925)))

(declare-fun b!263939 () Bool)

(assert (=> b!263939 (= e!163924 (inv!16 (value!24837 separatorToken!170)))))

(assert (= (and d!75824 c!49912) b!263939))

(assert (= (and d!75824 (not c!49912)) b!263936))

(assert (= (and b!263936 c!49911) b!263937))

(assert (= (and b!263936 (not c!49911)) b!263938))

(assert (= (and b!263938 (not res!121199)) b!263935))

(declare-fun m!329205 () Bool)

(assert (=> b!263935 m!329205))

(declare-fun m!329207 () Bool)

(assert (=> b!263937 m!329207))

(declare-fun m!329209 () Bool)

(assert (=> b!263939 m!329209))

(assert (=> b!263841 d!75824))

(declare-fun bs!28868 () Bool)

(declare-fun d!75826 () Bool)

(assert (= bs!28868 (and d!75826 b!263829)))

(declare-fun lambda!8869 () Int)

(assert (=> bs!28868 (not (= lambda!8869 lambda!8859))))

(declare-fun b!263976 () Bool)

(declare-fun e!163953 () Bool)

(assert (=> b!263976 (= e!163953 true)))

(declare-fun b!263975 () Bool)

(declare-fun e!163952 () Bool)

(assert (=> b!263975 (= e!163952 e!163953)))

(declare-fun b!263974 () Bool)

(declare-fun e!163951 () Bool)

(assert (=> b!263974 (= e!163951 e!163952)))

(assert (=> d!75826 e!163951))

(assert (= b!263975 b!263976))

(assert (= b!263974 b!263975))

(assert (= (and d!75826 (is-Cons!3778 rules!1920)) b!263974))

(declare-fun order!2877 () Int)

(declare-fun order!2875 () Int)

(declare-fun dynLambda!1912 (Int Int) Int)

(declare-fun dynLambda!1913 (Int Int) Int)

(assert (=> b!263976 (< (dynLambda!1912 order!2875 (toValue!1447 (transformation!720 (h!9175 rules!1920)))) (dynLambda!1913 order!2877 lambda!8869))))

(declare-fun order!2879 () Int)

(declare-fun dynLambda!1914 (Int Int) Int)

(assert (=> b!263976 (< (dynLambda!1914 order!2879 (toChars!1306 (transformation!720 (h!9175 rules!1920)))) (dynLambda!1913 order!2877 lambda!8869))))

(assert (=> d!75826 true))

(declare-fun e!163944 () Bool)

(assert (=> d!75826 e!163944))

(declare-fun res!121216 () Bool)

(assert (=> d!75826 (=> (not res!121216) (not e!163944))))

(declare-fun lt!107799 () Bool)

(declare-fun list!1530 (BalanceConc!2534) List!3787)

(assert (=> d!75826 (= res!121216 (= lt!107799 (forall!934 (list!1530 lt!107740) lambda!8869)))))

(declare-fun forall!936 (BalanceConc!2534 Int) Bool)

(assert (=> d!75826 (= lt!107799 (forall!936 lt!107740 lambda!8869))))

(assert (=> d!75826 (not (isEmpty!2375 rules!1920))))

(assert (=> d!75826 (= (rulesProduceEachTokenIndividually!398 thiss!17480 rules!1920 lt!107740) lt!107799)))

(declare-fun b!263965 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!220 (LexerInterface!606 List!3788 List!3787) Bool)

(assert (=> b!263965 (= e!163944 (= lt!107799 (rulesProduceEachTokenIndividuallyList!220 thiss!17480 rules!1920 (list!1530 lt!107740))))))

(assert (= (and d!75826 res!121216) b!263965))

(declare-fun m!329229 () Bool)

(assert (=> d!75826 m!329229))

(assert (=> d!75826 m!329229))

(declare-fun m!329231 () Bool)

(assert (=> d!75826 m!329231))

(declare-fun m!329233 () Bool)

(assert (=> d!75826 m!329233))

(assert (=> d!75826 m!329061))

(assert (=> b!263965 m!329229))

(assert (=> b!263965 m!329229))

(declare-fun m!329235 () Bool)

(assert (=> b!263965 m!329235))

(assert (=> b!263821 d!75826))

(declare-fun d!75836 () Bool)

(declare-fun fromListB!302 (List!3787) BalanceConc!2534)

(assert (=> d!75836 (= (seqFromList!807 tokens!465) (fromListB!302 tokens!465))))

(declare-fun bs!28869 () Bool)

(assert (= bs!28869 d!75836))

(declare-fun m!329237 () Bool)

(assert (=> bs!28869 m!329237))

(assert (=> b!263821 d!75836))

(declare-fun d!75838 () Bool)

(declare-fun res!121221 () Bool)

(declare-fun e!163956 () Bool)

(assert (=> d!75838 (=> (not res!121221) (not e!163956))))

(declare-fun isEmpty!2377 (List!3786) Bool)

(assert (=> d!75838 (= res!121221 (not (isEmpty!2377 (originalCharacters!763 (h!9174 tokens!465)))))))

(assert (=> d!75838 (= (inv!4669 (h!9174 tokens!465)) e!163956)))

(declare-fun b!263983 () Bool)

(declare-fun res!121222 () Bool)

(assert (=> b!263983 (=> (not res!121222) (not e!163956))))

(declare-fun dynLambda!1915 (Int TokenValue!742) BalanceConc!2532)

(assert (=> b!263983 (= res!121222 (= (originalCharacters!763 (h!9174 tokens!465)) (list!1528 (dynLambda!1915 (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))) (value!24837 (h!9174 tokens!465))))))))

(declare-fun b!263984 () Bool)

(declare-fun size!3006 (List!3786) Int)

(assert (=> b!263984 (= e!163956 (= (size!3004 (h!9174 tokens!465)) (size!3006 (originalCharacters!763 (h!9174 tokens!465)))))))

(assert (= (and d!75838 res!121221) b!263983))

(assert (= (and b!263983 res!121222) b!263984))

(declare-fun b_lambda!8187 () Bool)

(assert (=> (not b_lambda!8187) (not b!263983)))

(declare-fun tb!14435 () Bool)

(declare-fun t!37386 () Bool)

(assert (=> (and b!263840 (= (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465))))) t!37386) tb!14435))

(declare-fun b!263989 () Bool)

(declare-fun e!163959 () Bool)

(declare-fun tp!101149 () Bool)

(declare-fun inv!4672 (Conc!1262) Bool)

(assert (=> b!263989 (= e!163959 (and (inv!4672 (c!49898 (dynLambda!1915 (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))) (value!24837 (h!9174 tokens!465))))) tp!101149))))

(declare-fun result!17952 () Bool)

(declare-fun inv!4673 (BalanceConc!2532) Bool)

(assert (=> tb!14435 (= result!17952 (and (inv!4673 (dynLambda!1915 (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))) (value!24837 (h!9174 tokens!465)))) e!163959))))

(assert (= tb!14435 b!263989))

(declare-fun m!329239 () Bool)

(assert (=> b!263989 m!329239))

(declare-fun m!329241 () Bool)

(assert (=> tb!14435 m!329241))

(assert (=> b!263983 t!37386))

(declare-fun b_and!20647 () Bool)

(assert (= b_and!20619 (and (=> t!37386 result!17952) b_and!20647)))

(declare-fun tb!14437 () Bool)

(declare-fun t!37388 () Bool)

(assert (=> (and b!263839 (= (toChars!1306 (transformation!720 (h!9175 rules!1920))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465))))) t!37388) tb!14437))

(declare-fun result!17956 () Bool)

(assert (= result!17956 result!17952))

(assert (=> b!263983 t!37388))

(declare-fun b_and!20649 () Bool)

(assert (= b_and!20623 (and (=> t!37388 result!17956) b_and!20649)))

(declare-fun t!37390 () Bool)

(declare-fun tb!14439 () Bool)

(assert (=> (and b!263843 (= (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465))))) t!37390) tb!14439))

(declare-fun result!17958 () Bool)

(assert (= result!17958 result!17952))

(assert (=> b!263983 t!37390))

(declare-fun b_and!20651 () Bool)

(assert (= b_and!20627 (and (=> t!37390 result!17958) b_and!20651)))

(declare-fun m!329243 () Bool)

(assert (=> d!75838 m!329243))

(declare-fun m!329245 () Bool)

(assert (=> b!263983 m!329245))

(assert (=> b!263983 m!329245))

(declare-fun m!329247 () Bool)

(assert (=> b!263983 m!329247))

(declare-fun m!329249 () Bool)

(assert (=> b!263984 m!329249))

(assert (=> b!263832 d!75838))

(declare-fun d!75840 () Bool)

(assert (=> d!75840 (= (inv!4665 (tag!930 (h!9175 rules!1920))) (= (mod (str.len (value!24836 (tag!930 (h!9175 rules!1920)))) 2) 0))))

(assert (=> b!263828 d!75840))

(declare-fun d!75842 () Bool)

(declare-fun res!121225 () Bool)

(declare-fun e!163962 () Bool)

(assert (=> d!75842 (=> (not res!121225) (not e!163962))))

(declare-fun semiInverseModEq!250 (Int Int) Bool)

(assert (=> d!75842 (= res!121225 (semiInverseModEq!250 (toChars!1306 (transformation!720 (h!9175 rules!1920))) (toValue!1447 (transformation!720 (h!9175 rules!1920)))))))

(assert (=> d!75842 (= (inv!4668 (transformation!720 (h!9175 rules!1920))) e!163962)))

(declare-fun b!263992 () Bool)

(declare-fun equivClasses!233 (Int Int) Bool)

(assert (=> b!263992 (= e!163962 (equivClasses!233 (toChars!1306 (transformation!720 (h!9175 rules!1920))) (toValue!1447 (transformation!720 (h!9175 rules!1920)))))))

(assert (= (and d!75842 res!121225) b!263992))

(declare-fun m!329251 () Bool)

(assert (=> d!75842 m!329251))

(declare-fun m!329253 () Bool)

(assert (=> b!263992 m!329253))

(assert (=> b!263828 d!75842))

(declare-fun d!75844 () Bool)

(declare-fun lt!107804 () Bool)

(declare-fun e!163968 () Bool)

(assert (=> d!75844 (= lt!107804 e!163968)))

(declare-fun res!121234 () Bool)

(assert (=> d!75844 (=> (not res!121234) (not e!163968))))

(declare-datatypes ((tuple2!4228 0))(
  ( (tuple2!4229 (_1!2330 BalanceConc!2534) (_2!2330 BalanceConc!2532)) )
))
(declare-fun lex!400 (LexerInterface!606 List!3788 BalanceConc!2532) tuple2!4228)

(assert (=> d!75844 (= res!121234 (= (list!1530 (_1!2330 (lex!400 thiss!17480 rules!1920 (print!331 thiss!17480 (singletonSeq!266 separatorToken!170))))) (list!1530 (singletonSeq!266 separatorToken!170))))))

(declare-fun e!163967 () Bool)

(assert (=> d!75844 (= lt!107804 e!163967)))

(declare-fun res!121232 () Bool)

(assert (=> d!75844 (=> (not res!121232) (not e!163967))))

(declare-fun lt!107805 () tuple2!4228)

(declare-fun size!3007 (BalanceConc!2534) Int)

(assert (=> d!75844 (= res!121232 (= (size!3007 (_1!2330 lt!107805)) 1))))

(assert (=> d!75844 (= lt!107805 (lex!400 thiss!17480 rules!1920 (print!331 thiss!17480 (singletonSeq!266 separatorToken!170))))))

(assert (=> d!75844 (not (isEmpty!2375 rules!1920))))

(assert (=> d!75844 (= (rulesProduceIndividualToken!355 thiss!17480 rules!1920 separatorToken!170) lt!107804)))

(declare-fun b!263999 () Bool)

(declare-fun res!121233 () Bool)

(assert (=> b!263999 (=> (not res!121233) (not e!163967))))

(declare-fun apply!743 (BalanceConc!2534 Int) Token!1184)

(assert (=> b!263999 (= res!121233 (= (apply!743 (_1!2330 lt!107805) 0) separatorToken!170))))

(declare-fun b!264000 () Bool)

(declare-fun isEmpty!2378 (BalanceConc!2532) Bool)

(assert (=> b!264000 (= e!163967 (isEmpty!2378 (_2!2330 lt!107805)))))

(declare-fun b!264001 () Bool)

(assert (=> b!264001 (= e!163968 (isEmpty!2378 (_2!2330 (lex!400 thiss!17480 rules!1920 (print!331 thiss!17480 (singletonSeq!266 separatorToken!170))))))))

(assert (= (and d!75844 res!121232) b!263999))

(assert (= (and b!263999 res!121233) b!264000))

(assert (= (and d!75844 res!121234) b!264001))

(declare-fun m!329255 () Bool)

(assert (=> d!75844 m!329255))

(declare-fun m!329257 () Bool)

(assert (=> d!75844 m!329257))

(assert (=> d!75844 m!329061))

(declare-fun m!329259 () Bool)

(assert (=> d!75844 m!329259))

(assert (=> d!75844 m!329259))

(declare-fun m!329261 () Bool)

(assert (=> d!75844 m!329261))

(assert (=> d!75844 m!329259))

(assert (=> d!75844 m!329255))

(declare-fun m!329263 () Bool)

(assert (=> d!75844 m!329263))

(declare-fun m!329265 () Bool)

(assert (=> d!75844 m!329265))

(declare-fun m!329267 () Bool)

(assert (=> b!263999 m!329267))

(declare-fun m!329269 () Bool)

(assert (=> b!264000 m!329269))

(assert (=> b!264001 m!329259))

(assert (=> b!264001 m!329259))

(assert (=> b!264001 m!329255))

(assert (=> b!264001 m!329255))

(assert (=> b!264001 m!329257))

(declare-fun m!329271 () Bool)

(assert (=> b!264001 m!329271))

(assert (=> b!263830 d!75844))

(declare-fun d!75846 () Bool)

(declare-fun res!121235 () Bool)

(declare-fun e!163969 () Bool)

(assert (=> d!75846 (=> (not res!121235) (not e!163969))))

(assert (=> d!75846 (= res!121235 (not (isEmpty!2377 (originalCharacters!763 separatorToken!170))))))

(assert (=> d!75846 (= (inv!4669 separatorToken!170) e!163969)))

(declare-fun b!264002 () Bool)

(declare-fun res!121236 () Bool)

(assert (=> b!264002 (=> (not res!121236) (not e!163969))))

(assert (=> b!264002 (= res!121236 (= (originalCharacters!763 separatorToken!170) (list!1528 (dynLambda!1915 (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))) (value!24837 separatorToken!170)))))))

(declare-fun b!264003 () Bool)

(assert (=> b!264003 (= e!163969 (= (size!3004 separatorToken!170) (size!3006 (originalCharacters!763 separatorToken!170))))))

(assert (= (and d!75846 res!121235) b!264002))

(assert (= (and b!264002 res!121236) b!264003))

(declare-fun b_lambda!8189 () Bool)

(assert (=> (not b_lambda!8189) (not b!264002)))

(declare-fun t!37393 () Bool)

(declare-fun tb!14441 () Bool)

(assert (=> (and b!263840 (= (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170)))) t!37393) tb!14441))

(declare-fun b!264004 () Bool)

(declare-fun e!163970 () Bool)

(declare-fun tp!101150 () Bool)

(assert (=> b!264004 (= e!163970 (and (inv!4672 (c!49898 (dynLambda!1915 (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))) (value!24837 separatorToken!170)))) tp!101150))))

(declare-fun result!17960 () Bool)

(assert (=> tb!14441 (= result!17960 (and (inv!4673 (dynLambda!1915 (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))) (value!24837 separatorToken!170))) e!163970))))

(assert (= tb!14441 b!264004))

(declare-fun m!329273 () Bool)

(assert (=> b!264004 m!329273))

(declare-fun m!329275 () Bool)

(assert (=> tb!14441 m!329275))

(assert (=> b!264002 t!37393))

(declare-fun b_and!20653 () Bool)

(assert (= b_and!20647 (and (=> t!37393 result!17960) b_and!20653)))

(declare-fun tb!14443 () Bool)

(declare-fun t!37395 () Bool)

(assert (=> (and b!263839 (= (toChars!1306 (transformation!720 (h!9175 rules!1920))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170)))) t!37395) tb!14443))

(declare-fun result!17962 () Bool)

(assert (= result!17962 result!17960))

(assert (=> b!264002 t!37395))

(declare-fun b_and!20655 () Bool)

(assert (= b_and!20649 (and (=> t!37395 result!17962) b_and!20655)))

(declare-fun t!37397 () Bool)

(declare-fun tb!14445 () Bool)

(assert (=> (and b!263843 (= (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170)))) t!37397) tb!14445))

(declare-fun result!17964 () Bool)

(assert (= result!17964 result!17960))

(assert (=> b!264002 t!37397))

(declare-fun b_and!20657 () Bool)

(assert (= b_and!20651 (and (=> t!37397 result!17964) b_and!20657)))

(declare-fun m!329277 () Bool)

(assert (=> d!75846 m!329277))

(declare-fun m!329279 () Bool)

(assert (=> b!264002 m!329279))

(assert (=> b!264002 m!329279))

(declare-fun m!329281 () Bool)

(assert (=> b!264002 m!329281))

(declare-fun m!329283 () Bool)

(assert (=> b!264003 m!329283))

(assert (=> start!28256 d!75846))

(declare-fun d!75848 () Bool)

(declare-fun res!121241 () Bool)

(declare-fun e!163975 () Bool)

(assert (=> d!75848 (=> res!121241 e!163975)))

(assert (=> d!75848 (= res!121241 (is-Nil!3777 tokens!465))))

(assert (=> d!75848 (= (forall!934 tokens!465 lambda!8859) e!163975)))

(declare-fun b!264009 () Bool)

(declare-fun e!163976 () Bool)

(assert (=> b!264009 (= e!163975 e!163976)))

(declare-fun res!121242 () Bool)

(assert (=> b!264009 (=> (not res!121242) (not e!163976))))

(declare-fun dynLambda!1916 (Int Token!1184) Bool)

(assert (=> b!264009 (= res!121242 (dynLambda!1916 lambda!8859 (h!9174 tokens!465)))))

(declare-fun b!264010 () Bool)

(assert (=> b!264010 (= e!163976 (forall!934 (t!37365 tokens!465) lambda!8859))))

(assert (= (and d!75848 (not res!121241)) b!264009))

(assert (= (and b!264009 res!121242) b!264010))

(declare-fun b_lambda!8191 () Bool)

(assert (=> (not b_lambda!8191) (not b!264009)))

(declare-fun m!329285 () Bool)

(assert (=> b!264009 m!329285))

(declare-fun m!329287 () Bool)

(assert (=> b!264010 m!329287))

(assert (=> b!263829 d!75848))

(declare-fun d!75850 () Bool)

(declare-fun e!163982 () Bool)

(assert (=> d!75850 e!163982))

(declare-fun res!121248 () Bool)

(assert (=> d!75850 (=> (not res!121248) (not e!163982))))

(declare-fun lt!107808 () List!3786)

(declare-fun content!536 (List!3786) (Set C!2810))

(assert (=> d!75850 (= res!121248 (= (content!536 lt!107808) (set.union (content!536 lt!107733) (content!536 lt!107732))))))

(declare-fun e!163981 () List!3786)

(assert (=> d!75850 (= lt!107808 e!163981)))

(declare-fun c!49917 () Bool)

(assert (=> d!75850 (= c!49917 (is-Nil!3776 lt!107733))))

(assert (=> d!75850 (= (++!975 lt!107733 lt!107732) lt!107808)))

(declare-fun b!264022 () Bool)

(assert (=> b!264022 (= e!163982 (or (not (= lt!107732 Nil!3776)) (= lt!107808 lt!107733)))))

(declare-fun b!264021 () Bool)

(declare-fun res!121247 () Bool)

(assert (=> b!264021 (=> (not res!121247) (not e!163982))))

(assert (=> b!264021 (= res!121247 (= (size!3006 lt!107808) (+ (size!3006 lt!107733) (size!3006 lt!107732))))))

(declare-fun b!264020 () Bool)

(assert (=> b!264020 (= e!163981 (Cons!3776 (h!9173 lt!107733) (++!975 (t!37364 lt!107733) lt!107732)))))

(declare-fun b!264019 () Bool)

(assert (=> b!264019 (= e!163981 lt!107732)))

(assert (= (and d!75850 c!49917) b!264019))

(assert (= (and d!75850 (not c!49917)) b!264020))

(assert (= (and d!75850 res!121248) b!264021))

(assert (= (and b!264021 res!121247) b!264022))

(declare-fun m!329289 () Bool)

(assert (=> d!75850 m!329289))

(declare-fun m!329291 () Bool)

(assert (=> d!75850 m!329291))

(declare-fun m!329293 () Bool)

(assert (=> d!75850 m!329293))

(declare-fun m!329295 () Bool)

(assert (=> b!264021 m!329295))

(declare-fun m!329297 () Bool)

(assert (=> b!264021 m!329297))

(declare-fun m!329299 () Bool)

(assert (=> b!264021 m!329299))

(declare-fun m!329301 () Bool)

(assert (=> b!264020 m!329301))

(assert (=> b!263826 d!75850))

(declare-fun d!75852 () Bool)

(assert (=> d!75852 (= (isEmpty!2375 rules!1920) (is-Nil!3778 rules!1920))))

(assert (=> b!263825 d!75852))

(declare-fun d!75854 () Bool)

(assert (=> d!75854 (= (inv!4665 (tag!930 (rule!1305 (h!9174 tokens!465)))) (= (mod (str.len (value!24836 (tag!930 (rule!1305 (h!9174 tokens!465))))) 2) 0))))

(assert (=> b!263836 d!75854))

(declare-fun d!75856 () Bool)

(declare-fun res!121249 () Bool)

(declare-fun e!163983 () Bool)

(assert (=> d!75856 (=> (not res!121249) (not e!163983))))

(assert (=> d!75856 (= res!121249 (semiInverseModEq!250 (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))) (toValue!1447 (transformation!720 (rule!1305 (h!9174 tokens!465))))))))

(assert (=> d!75856 (= (inv!4668 (transformation!720 (rule!1305 (h!9174 tokens!465)))) e!163983)))

(declare-fun b!264023 () Bool)

(assert (=> b!264023 (= e!163983 (equivClasses!233 (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))) (toValue!1447 (transformation!720 (rule!1305 (h!9174 tokens!465))))))))

(assert (= (and d!75856 res!121249) b!264023))

(declare-fun m!329303 () Bool)

(assert (=> d!75856 m!329303))

(declare-fun m!329305 () Bool)

(assert (=> b!264023 m!329305))

(assert (=> b!263836 d!75856))

(declare-fun d!75858 () Bool)

(assert (=> d!75858 (= (seqFromList!807 (t!37365 tokens!465)) (fromListB!302 (t!37365 tokens!465)))))

(declare-fun bs!28870 () Bool)

(assert (= bs!28870 d!75858))

(declare-fun m!329307 () Bool)

(assert (=> bs!28870 m!329307))

(assert (=> b!263827 d!75858))

(declare-fun d!75860 () Bool)

(declare-fun list!1531 (Conc!1262) List!3786)

(assert (=> d!75860 (= (list!1528 (charsOf!365 separatorToken!170)) (list!1531 (c!49898 (charsOf!365 separatorToken!170))))))

(declare-fun bs!28871 () Bool)

(assert (= bs!28871 d!75860))

(declare-fun m!329309 () Bool)

(assert (=> bs!28871 m!329309))

(assert (=> b!263827 d!75860))

(declare-fun d!75862 () Bool)

(assert (=> d!75862 (= (list!1528 (printWithSeparatorTokenWhenNeededRec!281 thiss!17480 rules!1920 (seqFromList!807 (t!37365 tokens!465)) separatorToken!170 0)) (list!1531 (c!49898 (printWithSeparatorTokenWhenNeededRec!281 thiss!17480 rules!1920 (seqFromList!807 (t!37365 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!28872 () Bool)

(assert (= bs!28872 d!75862))

(declare-fun m!329311 () Bool)

(assert (=> bs!28872 m!329311))

(assert (=> b!263827 d!75862))

(declare-fun d!75864 () Bool)

(assert (=> d!75864 (= (++!975 (++!975 lt!107733 lt!107731) lt!107732) (++!975 lt!107733 (++!975 lt!107731 lt!107732)))))

(declare-fun lt!107811 () Unit!4735)

(declare-fun choose!2421 (List!3786 List!3786 List!3786) Unit!4735)

(assert (=> d!75864 (= lt!107811 (choose!2421 lt!107733 lt!107731 lt!107732))))

(assert (=> d!75864 (= (lemmaConcatAssociativity!417 lt!107733 lt!107731 lt!107732) lt!107811)))

(declare-fun bs!28873 () Bool)

(assert (= bs!28873 d!75864))

(declare-fun m!329313 () Bool)

(assert (=> bs!28873 m!329313))

(assert (=> bs!28873 m!329083))

(declare-fun m!329315 () Bool)

(assert (=> bs!28873 m!329315))

(assert (=> bs!28873 m!329067))

(assert (=> bs!28873 m!329077))

(assert (=> bs!28873 m!329083))

(assert (=> bs!28873 m!329067))

(assert (=> b!263827 d!75864))

(declare-fun d!75866 () Bool)

(declare-fun e!163985 () Bool)

(assert (=> d!75866 e!163985))

(declare-fun res!121251 () Bool)

(assert (=> d!75866 (=> (not res!121251) (not e!163985))))

(declare-fun lt!107812 () List!3786)

(assert (=> d!75866 (= res!121251 (= (content!536 lt!107812) (set.union (content!536 lt!107733) (content!536 lt!107739))))))

(declare-fun e!163984 () List!3786)

(assert (=> d!75866 (= lt!107812 e!163984)))

(declare-fun c!49918 () Bool)

(assert (=> d!75866 (= c!49918 (is-Nil!3776 lt!107733))))

(assert (=> d!75866 (= (++!975 lt!107733 lt!107739) lt!107812)))

(declare-fun b!264027 () Bool)

(assert (=> b!264027 (= e!163985 (or (not (= lt!107739 Nil!3776)) (= lt!107812 lt!107733)))))

(declare-fun b!264026 () Bool)

(declare-fun res!121250 () Bool)

(assert (=> b!264026 (=> (not res!121250) (not e!163985))))

(assert (=> b!264026 (= res!121250 (= (size!3006 lt!107812) (+ (size!3006 lt!107733) (size!3006 lt!107739))))))

(declare-fun b!264025 () Bool)

(assert (=> b!264025 (= e!163984 (Cons!3776 (h!9173 lt!107733) (++!975 (t!37364 lt!107733) lt!107739)))))

(declare-fun b!264024 () Bool)

(assert (=> b!264024 (= e!163984 lt!107739)))

(assert (= (and d!75866 c!49918) b!264024))

(assert (= (and d!75866 (not c!49918)) b!264025))

(assert (= (and d!75866 res!121251) b!264026))

(assert (= (and b!264026 res!121250) b!264027))

(declare-fun m!329317 () Bool)

(assert (=> d!75866 m!329317))

(assert (=> d!75866 m!329291))

(declare-fun m!329319 () Bool)

(assert (=> d!75866 m!329319))

(declare-fun m!329321 () Bool)

(assert (=> b!264026 m!329321))

(assert (=> b!264026 m!329297))

(declare-fun m!329323 () Bool)

(assert (=> b!264026 m!329323))

(declare-fun m!329325 () Bool)

(assert (=> b!264025 m!329325))

(assert (=> b!263827 d!75866))

(declare-fun bs!28877 () Bool)

(declare-fun b!264095 () Bool)

(assert (= bs!28877 (and b!264095 b!263829)))

(declare-fun lambda!8876 () Int)

(assert (=> bs!28877 (not (= lambda!8876 lambda!8859))))

(declare-fun bs!28878 () Bool)

(assert (= bs!28878 (and b!264095 d!75826)))

(assert (=> bs!28878 (= lambda!8876 lambda!8869)))

(declare-fun b!264100 () Bool)

(declare-fun e!164029 () Bool)

(assert (=> b!264100 (= e!164029 true)))

(declare-fun b!264099 () Bool)

(declare-fun e!164028 () Bool)

(assert (=> b!264099 (= e!164028 e!164029)))

(declare-fun b!264098 () Bool)

(declare-fun e!164027 () Bool)

(assert (=> b!264098 (= e!164027 e!164028)))

(assert (=> b!264095 e!164027))

(assert (= b!264099 b!264100))

(assert (= b!264098 b!264099))

(assert (= (and b!264095 (is-Cons!3778 rules!1920)) b!264098))

(assert (=> b!264100 (< (dynLambda!1912 order!2875 (toValue!1447 (transformation!720 (h!9175 rules!1920)))) (dynLambda!1913 order!2877 lambda!8876))))

(assert (=> b!264100 (< (dynLambda!1914 order!2879 (toChars!1306 (transformation!720 (h!9175 rules!1920)))) (dynLambda!1913 order!2877 lambda!8876))))

(assert (=> b!264095 true))

(declare-fun b!264088 () Bool)

(declare-fun e!164025 () List!3786)

(declare-fun call!14230 () List!3786)

(assert (=> b!264088 (= e!164025 call!14230)))

(declare-fun b!264089 () Bool)

(declare-fun e!164026 () BalanceConc!2532)

(declare-fun call!14234 () BalanceConc!2532)

(assert (=> b!264089 (= e!164026 call!14234)))

(declare-fun bm!14225 () Bool)

(declare-fun call!14233 () BalanceConc!2532)

(assert (=> bm!14225 (= call!14233 (charsOf!365 (h!9174 (t!37365 tokens!465))))))

(declare-fun b!264090 () Bool)

(declare-fun c!49942 () Bool)

(declare-datatypes ((tuple2!4230 0))(
  ( (tuple2!4231 (_1!2331 Token!1184) (_2!2331 List!3786)) )
))
(declare-datatypes ((Option!790 0))(
  ( (None!789) (Some!789 (v!14640 tuple2!4230)) )
))
(declare-fun lt!107851 () Option!790)

(assert (=> b!264090 (= c!49942 (and (is-Some!789 lt!107851) (not (= (_1!2331 (v!14640 lt!107851)) (h!9174 (t!37365 tokens!465))))))))

(declare-fun e!164023 () List!3786)

(declare-fun e!164022 () List!3786)

(assert (=> b!264090 (= e!164023 e!164022)))

(declare-fun b!264091 () Bool)

(assert (=> b!264091 (= e!164025 (list!1528 call!14234))))

(declare-fun d!75868 () Bool)

(declare-fun c!49940 () Bool)

(assert (=> d!75868 (= c!49940 (is-Cons!3777 (t!37365 tokens!465)))))

(declare-fun e!164024 () List!3786)

(assert (=> d!75868 (= (printWithSeparatorTokenWhenNeededList!289 thiss!17480 rules!1920 (t!37365 tokens!465) separatorToken!170) e!164024)))

(declare-fun bm!14226 () Bool)

(assert (=> bm!14226 (= call!14234 call!14233)))

(declare-fun c!49943 () Bool)

(declare-fun bm!14227 () Bool)

(assert (=> bm!14227 (= call!14230 (list!1528 (ite c!49943 call!14233 e!164026)))))

(declare-fun b!264092 () Bool)

(declare-fun call!14231 () List!3786)

(declare-fun lt!107850 () List!3786)

(assert (=> b!264092 (= e!164022 (++!975 call!14231 lt!107850))))

(declare-fun b!264093 () Bool)

(assert (=> b!264093 (= e!164023 call!14231)))

(declare-fun bm!14228 () Bool)

(declare-fun c!49939 () Bool)

(assert (=> bm!14228 (= c!49939 c!49943)))

(declare-fun call!14232 () List!3786)

(assert (=> bm!14228 (= call!14231 (++!975 e!164025 (ite c!49943 lt!107850 call!14232)))))

(declare-fun bm!14229 () Bool)

(assert (=> bm!14229 (= call!14232 call!14230)))

(declare-fun c!49941 () Bool)

(assert (=> bm!14229 (= c!49941 c!49942)))

(declare-fun b!264094 () Bool)

(assert (=> b!264094 (= e!164022 Nil!3776)))

(assert (=> b!264094 (= (print!331 thiss!17480 (singletonSeq!266 (h!9174 (t!37365 tokens!465)))) (printTailRec!294 thiss!17480 (singletonSeq!266 (h!9174 (t!37365 tokens!465))) 0 (BalanceConc!2533 Empty!1262)))))

(declare-fun lt!107852 () Unit!4735)

(declare-fun Unit!4740 () Unit!4735)

(assert (=> b!264094 (= lt!107852 Unit!4740)))

(declare-fun lt!107854 () Unit!4735)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!103 (LexerInterface!606 List!3788 List!3786 List!3786) Unit!4735)

(assert (=> b!264094 (= lt!107854 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!103 thiss!17480 rules!1920 call!14232 lt!107850))))

(assert (=> b!264094 false))

(declare-fun lt!107853 () Unit!4735)

(declare-fun Unit!4741 () Unit!4735)

(assert (=> b!264094 (= lt!107853 Unit!4741)))

(assert (=> b!264095 (= e!164024 e!164023)))

(declare-fun lt!107849 () Unit!4735)

(declare-fun forallContained!277 (List!3787 Int Token!1184) Unit!4735)

(assert (=> b!264095 (= lt!107849 (forallContained!277 (t!37365 tokens!465) lambda!8876 (h!9174 (t!37365 tokens!465))))))

(assert (=> b!264095 (= lt!107850 (printWithSeparatorTokenWhenNeededList!289 thiss!17480 rules!1920 (t!37365 (t!37365 tokens!465)) separatorToken!170))))

(declare-fun maxPrefix!326 (LexerInterface!606 List!3788 List!3786) Option!790)

(assert (=> b!264095 (= lt!107851 (maxPrefix!326 thiss!17480 rules!1920 (++!975 (list!1528 (charsOf!365 (h!9174 (t!37365 tokens!465)))) lt!107850)))))

(assert (=> b!264095 (= c!49943 (and (is-Some!789 lt!107851) (= (_1!2331 (v!14640 lt!107851)) (h!9174 (t!37365 tokens!465)))))))

(declare-fun b!264096 () Bool)

(assert (=> b!264096 (= e!164026 (charsOf!365 separatorToken!170))))

(declare-fun b!264097 () Bool)

(assert (=> b!264097 (= e!164024 Nil!3776)))

(assert (= (and d!75868 c!49940) b!264095))

(assert (= (and d!75868 (not c!49940)) b!264097))

(assert (= (and b!264095 c!49943) b!264093))

(assert (= (and b!264095 (not c!49943)) b!264090))

(assert (= (and b!264090 c!49942) b!264092))

(assert (= (and b!264090 (not c!49942)) b!264094))

(assert (= (or b!264092 b!264094) bm!14226))

(assert (= (or b!264092 b!264094) bm!14229))

(assert (= (and bm!14229 c!49941) b!264096))

(assert (= (and bm!14229 (not c!49941)) b!264089))

(assert (= (or b!264093 bm!14226) bm!14225))

(assert (= (or b!264093 bm!14229) bm!14227))

(assert (= (or b!264093 b!264092) bm!14228))

(assert (= (and bm!14228 c!49939) b!264088))

(assert (= (and bm!14228 (not c!49939)) b!264091))

(declare-fun m!329387 () Bool)

(assert (=> bm!14228 m!329387))

(declare-fun m!329389 () Bool)

(assert (=> bm!14225 m!329389))

(declare-fun m!329391 () Bool)

(assert (=> b!264092 m!329391))

(assert (=> b!264096 m!329073))

(declare-fun m!329393 () Bool)

(assert (=> bm!14227 m!329393))

(declare-fun m!329395 () Bool)

(assert (=> b!264091 m!329395))

(declare-fun m!329397 () Bool)

(assert (=> b!264094 m!329397))

(assert (=> b!264094 m!329397))

(declare-fun m!329399 () Bool)

(assert (=> b!264094 m!329399))

(assert (=> b!264094 m!329397))

(declare-fun m!329401 () Bool)

(assert (=> b!264094 m!329401))

(declare-fun m!329403 () Bool)

(assert (=> b!264094 m!329403))

(assert (=> b!264095 m!329389))

(declare-fun m!329405 () Bool)

(assert (=> b!264095 m!329405))

(declare-fun m!329407 () Bool)

(assert (=> b!264095 m!329407))

(declare-fun m!329409 () Bool)

(assert (=> b!264095 m!329409))

(declare-fun m!329411 () Bool)

(assert (=> b!264095 m!329411))

(declare-fun m!329413 () Bool)

(assert (=> b!264095 m!329413))

(assert (=> b!264095 m!329389))

(assert (=> b!264095 m!329405))

(assert (=> b!264095 m!329407))

(assert (=> b!263827 d!75868))

(declare-fun bs!28902 () Bool)

(declare-fun d!75872 () Bool)

(assert (= bs!28902 (and d!75872 b!263829)))

(declare-fun lambda!8887 () Int)

(assert (=> bs!28902 (= lambda!8887 lambda!8859)))

(declare-fun bs!28903 () Bool)

(assert (= bs!28903 (and d!75872 d!75826)))

(assert (=> bs!28903 (not (= lambda!8887 lambda!8869))))

(declare-fun bs!28904 () Bool)

(assert (= bs!28904 (and d!75872 b!264095)))

(assert (=> bs!28904 (not (= lambda!8887 lambda!8876))))

(declare-fun bs!28905 () Bool)

(declare-fun b!264242 () Bool)

(assert (= bs!28905 (and b!264242 b!263829)))

(declare-fun lambda!8888 () Int)

(assert (=> bs!28905 (not (= lambda!8888 lambda!8859))))

(declare-fun bs!28906 () Bool)

(assert (= bs!28906 (and b!264242 d!75826)))

(assert (=> bs!28906 (= lambda!8888 lambda!8869)))

(declare-fun bs!28907 () Bool)

(assert (= bs!28907 (and b!264242 b!264095)))

(assert (=> bs!28907 (= lambda!8888 lambda!8876)))

(declare-fun bs!28908 () Bool)

(assert (= bs!28908 (and b!264242 d!75872)))

(assert (=> bs!28908 (not (= lambda!8888 lambda!8887))))

(declare-fun b!264246 () Bool)

(declare-fun e!164122 () Bool)

(assert (=> b!264246 (= e!164122 true)))

(declare-fun b!264245 () Bool)

(declare-fun e!164121 () Bool)

(assert (=> b!264245 (= e!164121 e!164122)))

(declare-fun b!264244 () Bool)

(declare-fun e!164120 () Bool)

(assert (=> b!264244 (= e!164120 e!164121)))

(assert (=> b!264242 e!164120))

(assert (= b!264245 b!264246))

(assert (= b!264244 b!264245))

(assert (= (and b!264242 (is-Cons!3778 rules!1920)) b!264244))

(assert (=> b!264246 (< (dynLambda!1912 order!2875 (toValue!1447 (transformation!720 (h!9175 rules!1920)))) (dynLambda!1913 order!2877 lambda!8888))))

(assert (=> b!264246 (< (dynLambda!1914 order!2879 (toChars!1306 (transformation!720 (h!9175 rules!1920)))) (dynLambda!1913 order!2877 lambda!8888))))

(assert (=> b!264242 true))

(declare-fun b!264235 () Bool)

(declare-fun c!49989 () Bool)

(declare-fun e!164117 () Bool)

(assert (=> b!264235 (= c!49989 e!164117)))

(declare-fun res!121299 () Bool)

(assert (=> b!264235 (=> (not res!121299) (not e!164117))))

(declare-datatypes ((tuple2!4232 0))(
  ( (tuple2!4233 (_1!2332 Token!1184) (_2!2332 BalanceConc!2532)) )
))
(declare-datatypes ((Option!791 0))(
  ( (None!790) (Some!790 (v!14641 tuple2!4232)) )
))
(declare-fun lt!107941 () Option!791)

(assert (=> b!264235 (= res!121299 (is-Some!790 lt!107941))))

(declare-fun e!164114 () BalanceConc!2532)

(declare-fun e!164116 () BalanceConc!2532)

(assert (=> b!264235 (= e!164114 e!164116)))

(declare-fun b!264236 () Bool)

(assert (=> b!264236 (= e!164116 (BalanceConc!2533 Empty!1262))))

(declare-fun call!14271 () Token!1184)

(assert (=> b!264236 (= (print!331 thiss!17480 (singletonSeq!266 call!14271)) (printTailRec!294 thiss!17480 (singletonSeq!266 call!14271) 0 (BalanceConc!2533 Empty!1262)))))

(declare-fun lt!107942 () Unit!4735)

(declare-fun Unit!4742 () Unit!4735)

(assert (=> b!264236 (= lt!107942 Unit!4742)))

(declare-fun lt!107943 () Unit!4735)

(declare-fun lt!107935 () BalanceConc!2532)

(declare-fun call!14272 () BalanceConc!2532)

(assert (=> b!264236 (= lt!107943 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!103 thiss!17480 rules!1920 (list!1528 call!14272) (list!1528 lt!107935)))))

(assert (=> b!264236 false))

(declare-fun lt!107937 () Unit!4735)

(declare-fun Unit!4743 () Unit!4735)

(assert (=> b!264236 (= lt!107937 Unit!4743)))

(declare-fun b!264237 () Bool)

(declare-fun e!164119 () BalanceConc!2532)

(assert (=> b!264237 (= e!164119 (BalanceConc!2533 Empty!1262))))

(declare-fun lt!107936 () BalanceConc!2532)

(declare-fun dropList!155 (BalanceConc!2534 Int) List!3787)

(assert (=> d!75872 (= (list!1528 lt!107936) (printWithSeparatorTokenWhenNeededList!289 thiss!17480 rules!1920 (dropList!155 (seqFromList!807 (t!37365 tokens!465)) 0) separatorToken!170))))

(assert (=> d!75872 (= lt!107936 e!164119)))

(declare-fun c!49987 () Bool)

(assert (=> d!75872 (= c!49987 (>= 0 (size!3007 (seqFromList!807 (t!37365 tokens!465)))))))

(declare-fun lt!107940 () Unit!4735)

(declare-fun lemmaContentSubsetPreservesForall!99 (List!3787 List!3787 Int) Unit!4735)

(assert (=> d!75872 (= lt!107940 (lemmaContentSubsetPreservesForall!99 (list!1530 (seqFromList!807 (t!37365 tokens!465))) (dropList!155 (seqFromList!807 (t!37365 tokens!465)) 0) lambda!8887))))

(declare-fun e!164118 () Bool)

(assert (=> d!75872 e!164118))

(declare-fun res!121298 () Bool)

(assert (=> d!75872 (=> (not res!121298) (not e!164118))))

(assert (=> d!75872 (= res!121298 (>= 0 0))))

(assert (=> d!75872 (= (printWithSeparatorTokenWhenNeededRec!281 thiss!17480 rules!1920 (seqFromList!807 (t!37365 tokens!465)) separatorToken!170 0) lt!107936)))

(declare-fun b!264238 () Bool)

(declare-fun call!14274 () BalanceConc!2532)

(declare-fun ++!977 (BalanceConc!2532 BalanceConc!2532) BalanceConc!2532)

(assert (=> b!264238 (= e!164116 (++!977 call!14274 lt!107935))))

(declare-fun bm!14265 () Bool)

(declare-fun call!14270 () Token!1184)

(assert (=> bm!14265 (= call!14271 call!14270)))

(declare-fun b!264239 () Bool)

(assert (=> b!264239 (= e!164117 (not (= (_1!2332 (v!14641 lt!107941)) call!14270)))))

(declare-fun bm!14266 () Bool)

(assert (=> bm!14266 (= call!14272 (charsOf!365 (ite c!49989 separatorToken!170 call!14271)))))

(declare-fun bm!14267 () Bool)

(assert (=> bm!14267 (= call!14270 (apply!743 (seqFromList!807 (t!37365 tokens!465)) 0))))

(declare-fun bm!14268 () Bool)

(declare-fun call!14273 () BalanceConc!2532)

(declare-fun c!49988 () Bool)

(assert (=> bm!14268 (= call!14274 (++!977 call!14273 (ite c!49988 lt!107935 call!14272)))))

(declare-fun b!264240 () Bool)

(assert (=> b!264240 (= e!164118 (<= 0 (size!3007 (seqFromList!807 (t!37365 tokens!465)))))))

(declare-fun b!264241 () Bool)

(declare-fun e!164115 () Bool)

(assert (=> b!264241 (= e!164115 (= (_1!2332 (v!14641 lt!107941)) (apply!743 (seqFromList!807 (t!37365 tokens!465)) 0)))))

(assert (=> b!264242 (= e!164119 e!164114)))

(declare-fun lt!107946 () List!3787)

(assert (=> b!264242 (= lt!107946 (list!1530 (seqFromList!807 (t!37365 tokens!465))))))

(declare-fun lt!107944 () Unit!4735)

(declare-fun lemmaDropApply!195 (List!3787 Int) Unit!4735)

(assert (=> b!264242 (= lt!107944 (lemmaDropApply!195 lt!107946 0))))

(declare-fun head!879 (List!3787) Token!1184)

(declare-fun drop!208 (List!3787 Int) List!3787)

(declare-fun apply!744 (List!3787 Int) Token!1184)

(assert (=> b!264242 (= (head!879 (drop!208 lt!107946 0)) (apply!744 lt!107946 0))))

(declare-fun lt!107948 () Unit!4735)

(assert (=> b!264242 (= lt!107948 lt!107944)))

(declare-fun lt!107938 () List!3787)

(assert (=> b!264242 (= lt!107938 (list!1530 (seqFromList!807 (t!37365 tokens!465))))))

(declare-fun lt!107945 () Unit!4735)

(declare-fun lemmaDropTail!187 (List!3787 Int) Unit!4735)

(assert (=> b!264242 (= lt!107945 (lemmaDropTail!187 lt!107938 0))))

(declare-fun tail!469 (List!3787) List!3787)

(assert (=> b!264242 (= (tail!469 (drop!208 lt!107938 0)) (drop!208 lt!107938 (+ 0 1)))))

(declare-fun lt!107939 () Unit!4735)

(assert (=> b!264242 (= lt!107939 lt!107945)))

(declare-fun lt!107947 () Unit!4735)

(assert (=> b!264242 (= lt!107947 (forallContained!277 (list!1530 (seqFromList!807 (t!37365 tokens!465))) lambda!8888 (apply!743 (seqFromList!807 (t!37365 tokens!465)) 0)))))

(assert (=> b!264242 (= lt!107935 (printWithSeparatorTokenWhenNeededRec!281 thiss!17480 rules!1920 (seqFromList!807 (t!37365 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!289 (LexerInterface!606 List!3788 BalanceConc!2532) Option!791)

(assert (=> b!264242 (= lt!107941 (maxPrefixZipperSequence!289 thiss!17480 rules!1920 (++!977 (charsOf!365 (apply!743 (seqFromList!807 (t!37365 tokens!465)) 0)) lt!107935)))))

(declare-fun res!121297 () Bool)

(assert (=> b!264242 (= res!121297 (is-Some!790 lt!107941))))

(assert (=> b!264242 (=> (not res!121297) (not e!164115))))

(assert (=> b!264242 (= c!49988 e!164115)))

(declare-fun bm!14269 () Bool)

(assert (=> bm!14269 (= call!14273 (charsOf!365 (ite c!49988 call!14270 call!14271)))))

(declare-fun b!264243 () Bool)

(assert (=> b!264243 (= e!164114 call!14274)))

(assert (= (and d!75872 res!121298) b!264240))

(assert (= (and d!75872 c!49987) b!264237))

(assert (= (and d!75872 (not c!49987)) b!264242))

(assert (= (and b!264242 res!121297) b!264241))

(assert (= (and b!264242 c!49988) b!264243))

(assert (= (and b!264242 (not c!49988)) b!264235))

(assert (= (and b!264235 res!121299) b!264239))

(assert (= (and b!264235 c!49989) b!264238))

(assert (= (and b!264235 (not c!49989)) b!264236))

(assert (= (or b!264238 b!264236) bm!14265))

(assert (= (or b!264238 b!264236) bm!14266))

(assert (= (or b!264243 bm!14265 b!264239) bm!14267))

(assert (= (or b!264243 b!264238) bm!14269))

(assert (= (or b!264243 b!264238) bm!14268))

(assert (=> b!264242 m!329063))

(declare-fun m!329613 () Bool)

(assert (=> b!264242 m!329613))

(declare-fun m!329615 () Bool)

(assert (=> b!264242 m!329615))

(declare-fun m!329617 () Bool)

(assert (=> b!264242 m!329617))

(declare-fun m!329619 () Bool)

(assert (=> b!264242 m!329619))

(declare-fun m!329621 () Bool)

(assert (=> b!264242 m!329621))

(declare-fun m!329623 () Bool)

(assert (=> b!264242 m!329623))

(declare-fun m!329625 () Bool)

(assert (=> b!264242 m!329625))

(declare-fun m!329627 () Bool)

(assert (=> b!264242 m!329627))

(assert (=> b!264242 m!329615))

(declare-fun m!329629 () Bool)

(assert (=> b!264242 m!329629))

(declare-fun m!329631 () Bool)

(assert (=> b!264242 m!329631))

(assert (=> b!264242 m!329063))

(declare-fun m!329633 () Bool)

(assert (=> b!264242 m!329633))

(declare-fun m!329635 () Bool)

(assert (=> b!264242 m!329635))

(declare-fun m!329637 () Bool)

(assert (=> b!264242 m!329637))

(declare-fun m!329639 () Bool)

(assert (=> b!264242 m!329639))

(assert (=> b!264242 m!329635))

(assert (=> b!264242 m!329619))

(assert (=> b!264242 m!329621))

(assert (=> b!264242 m!329063))

(assert (=> b!264242 m!329617))

(assert (=> b!264242 m!329633))

(assert (=> b!264242 m!329617))

(declare-fun m!329641 () Bool)

(assert (=> b!264242 m!329641))

(assert (=> bm!14267 m!329063))

(assert (=> bm!14267 m!329617))

(assert (=> b!264241 m!329063))

(assert (=> b!264241 m!329617))

(declare-fun m!329643 () Bool)

(assert (=> bm!14266 m!329643))

(assert (=> d!75872 m!329063))

(declare-fun m!329645 () Bool)

(assert (=> d!75872 m!329645))

(assert (=> d!75872 m!329063))

(declare-fun m!329647 () Bool)

(assert (=> d!75872 m!329647))

(assert (=> d!75872 m!329633))

(assert (=> d!75872 m!329645))

(declare-fun m!329649 () Bool)

(assert (=> d!75872 m!329649))

(assert (=> d!75872 m!329645))

(declare-fun m!329651 () Bool)

(assert (=> d!75872 m!329651))

(declare-fun m!329653 () Bool)

(assert (=> d!75872 m!329653))

(assert (=> d!75872 m!329063))

(assert (=> d!75872 m!329633))

(declare-fun m!329655 () Bool)

(assert (=> bm!14268 m!329655))

(declare-fun m!329657 () Bool)

(assert (=> b!264236 m!329657))

(declare-fun m!329659 () Bool)

(assert (=> b!264236 m!329659))

(declare-fun m!329661 () Bool)

(assert (=> b!264236 m!329661))

(declare-fun m!329663 () Bool)

(assert (=> b!264236 m!329663))

(declare-fun m!329665 () Bool)

(assert (=> b!264236 m!329665))

(assert (=> b!264236 m!329663))

(declare-fun m!329667 () Bool)

(assert (=> b!264236 m!329667))

(assert (=> b!264236 m!329663))

(assert (=> b!264236 m!329657))

(assert (=> b!264236 m!329659))

(declare-fun m!329669 () Bool)

(assert (=> b!264238 m!329669))

(assert (=> b!264240 m!329063))

(assert (=> b!264240 m!329647))

(declare-fun m!329671 () Bool)

(assert (=> bm!14269 m!329671))

(assert (=> b!263827 d!75872))

(declare-fun d!75916 () Bool)

(declare-fun lt!107951 () BalanceConc!2532)

(assert (=> d!75916 (= (list!1528 lt!107951) (originalCharacters!763 separatorToken!170))))

(assert (=> d!75916 (= lt!107951 (dynLambda!1915 (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))) (value!24837 separatorToken!170)))))

(assert (=> d!75916 (= (charsOf!365 separatorToken!170) lt!107951)))

(declare-fun b_lambda!8197 () Bool)

(assert (=> (not b_lambda!8197) (not d!75916)))

(assert (=> d!75916 t!37393))

(declare-fun b_and!20671 () Bool)

(assert (= b_and!20653 (and (=> t!37393 result!17960) b_and!20671)))

(assert (=> d!75916 t!37395))

(declare-fun b_and!20673 () Bool)

(assert (= b_and!20655 (and (=> t!37395 result!17962) b_and!20673)))

(assert (=> d!75916 t!37397))

(declare-fun b_and!20675 () Bool)

(assert (= b_and!20657 (and (=> t!37397 result!17964) b_and!20675)))

(declare-fun m!329673 () Bool)

(assert (=> d!75916 m!329673))

(assert (=> d!75916 m!329279))

(assert (=> b!263827 d!75916))

(declare-fun d!75918 () Bool)

(declare-fun e!164124 () Bool)

(assert (=> d!75918 e!164124))

(declare-fun res!121301 () Bool)

(assert (=> d!75918 (=> (not res!121301) (not e!164124))))

(declare-fun lt!107952 () List!3786)

(assert (=> d!75918 (= res!121301 (= (content!536 lt!107952) (set.union (content!536 lt!107733) (content!536 lt!107731))))))

(declare-fun e!164123 () List!3786)

(assert (=> d!75918 (= lt!107952 e!164123)))

(declare-fun c!49990 () Bool)

(assert (=> d!75918 (= c!49990 (is-Nil!3776 lt!107733))))

(assert (=> d!75918 (= (++!975 lt!107733 lt!107731) lt!107952)))

(declare-fun b!264250 () Bool)

(assert (=> b!264250 (= e!164124 (or (not (= lt!107731 Nil!3776)) (= lt!107952 lt!107733)))))

(declare-fun b!264249 () Bool)

(declare-fun res!121300 () Bool)

(assert (=> b!264249 (=> (not res!121300) (not e!164124))))

(assert (=> b!264249 (= res!121300 (= (size!3006 lt!107952) (+ (size!3006 lt!107733) (size!3006 lt!107731))))))

(declare-fun b!264248 () Bool)

(assert (=> b!264248 (= e!164123 (Cons!3776 (h!9173 lt!107733) (++!975 (t!37364 lt!107733) lt!107731)))))

(declare-fun b!264247 () Bool)

(assert (=> b!264247 (= e!164123 lt!107731)))

(assert (= (and d!75918 c!49990) b!264247))

(assert (= (and d!75918 (not c!49990)) b!264248))

(assert (= (and d!75918 res!121301) b!264249))

(assert (= (and b!264249 res!121300) b!264250))

(declare-fun m!329675 () Bool)

(assert (=> d!75918 m!329675))

(assert (=> d!75918 m!329291))

(declare-fun m!329677 () Bool)

(assert (=> d!75918 m!329677))

(declare-fun m!329679 () Bool)

(assert (=> b!264249 m!329679))

(assert (=> b!264249 m!329297))

(declare-fun m!329681 () Bool)

(assert (=> b!264249 m!329681))

(declare-fun m!329683 () Bool)

(assert (=> b!264248 m!329683))

(assert (=> b!263827 d!75918))

(declare-fun d!75920 () Bool)

(declare-fun e!164126 () Bool)

(assert (=> d!75920 e!164126))

(declare-fun res!121303 () Bool)

(assert (=> d!75920 (=> (not res!121303) (not e!164126))))

(declare-fun lt!107953 () List!3786)

(assert (=> d!75920 (= res!121303 (= (content!536 lt!107953) (set.union (content!536 (++!975 lt!107733 lt!107731)) (content!536 lt!107732))))))

(declare-fun e!164125 () List!3786)

(assert (=> d!75920 (= lt!107953 e!164125)))

(declare-fun c!49991 () Bool)

(assert (=> d!75920 (= c!49991 (is-Nil!3776 (++!975 lt!107733 lt!107731)))))

(assert (=> d!75920 (= (++!975 (++!975 lt!107733 lt!107731) lt!107732) lt!107953)))

(declare-fun b!264254 () Bool)

(assert (=> b!264254 (= e!164126 (or (not (= lt!107732 Nil!3776)) (= lt!107953 (++!975 lt!107733 lt!107731))))))

(declare-fun b!264253 () Bool)

(declare-fun res!121302 () Bool)

(assert (=> b!264253 (=> (not res!121302) (not e!164126))))

(assert (=> b!264253 (= res!121302 (= (size!3006 lt!107953) (+ (size!3006 (++!975 lt!107733 lt!107731)) (size!3006 lt!107732))))))

(declare-fun b!264252 () Bool)

(assert (=> b!264252 (= e!164125 (Cons!3776 (h!9173 (++!975 lt!107733 lt!107731)) (++!975 (t!37364 (++!975 lt!107733 lt!107731)) lt!107732)))))

(declare-fun b!264251 () Bool)

(assert (=> b!264251 (= e!164125 lt!107732)))

(assert (= (and d!75920 c!49991) b!264251))

(assert (= (and d!75920 (not c!49991)) b!264252))

(assert (= (and d!75920 res!121303) b!264253))

(assert (= (and b!264253 res!121302) b!264254))

(declare-fun m!329685 () Bool)

(assert (=> d!75920 m!329685))

(assert (=> d!75920 m!329067))

(declare-fun m!329687 () Bool)

(assert (=> d!75920 m!329687))

(assert (=> d!75920 m!329293))

(declare-fun m!329689 () Bool)

(assert (=> b!264253 m!329689))

(assert (=> b!264253 m!329067))

(declare-fun m!329691 () Bool)

(assert (=> b!264253 m!329691))

(assert (=> b!264253 m!329299))

(declare-fun m!329693 () Bool)

(assert (=> b!264252 m!329693))

(assert (=> b!263827 d!75920))

(declare-fun d!75922 () Bool)

(declare-fun lt!107954 () BalanceConc!2532)

(assert (=> d!75922 (= (list!1528 lt!107954) (originalCharacters!763 (h!9174 tokens!465)))))

(assert (=> d!75922 (= lt!107954 (dynLambda!1915 (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))) (value!24837 (h!9174 tokens!465))))))

(assert (=> d!75922 (= (charsOf!365 (h!9174 tokens!465)) lt!107954)))

(declare-fun b_lambda!8199 () Bool)

(assert (=> (not b_lambda!8199) (not d!75922)))

(assert (=> d!75922 t!37386))

(declare-fun b_and!20677 () Bool)

(assert (= b_and!20671 (and (=> t!37386 result!17952) b_and!20677)))

(assert (=> d!75922 t!37388))

(declare-fun b_and!20679 () Bool)

(assert (= b_and!20673 (and (=> t!37388 result!17956) b_and!20679)))

(assert (=> d!75922 t!37390))

(declare-fun b_and!20681 () Bool)

(assert (= b_and!20675 (and (=> t!37390 result!17958) b_and!20681)))

(declare-fun m!329695 () Bool)

(assert (=> d!75922 m!329695))

(assert (=> d!75922 m!329245))

(assert (=> b!263827 d!75922))

(declare-fun d!75924 () Bool)

(declare-fun e!164128 () Bool)

(assert (=> d!75924 e!164128))

(declare-fun res!121305 () Bool)

(assert (=> d!75924 (=> (not res!121305) (not e!164128))))

(declare-fun lt!107955 () List!3786)

(assert (=> d!75924 (= res!121305 (= (content!536 lt!107955) (set.union (content!536 lt!107731) (content!536 lt!107732))))))

(declare-fun e!164127 () List!3786)

(assert (=> d!75924 (= lt!107955 e!164127)))

(declare-fun c!49992 () Bool)

(assert (=> d!75924 (= c!49992 (is-Nil!3776 lt!107731))))

(assert (=> d!75924 (= (++!975 lt!107731 lt!107732) lt!107955)))

(declare-fun b!264258 () Bool)

(assert (=> b!264258 (= e!164128 (or (not (= lt!107732 Nil!3776)) (= lt!107955 lt!107731)))))

(declare-fun b!264257 () Bool)

(declare-fun res!121304 () Bool)

(assert (=> b!264257 (=> (not res!121304) (not e!164128))))

(assert (=> b!264257 (= res!121304 (= (size!3006 lt!107955) (+ (size!3006 lt!107731) (size!3006 lt!107732))))))

(declare-fun b!264256 () Bool)

(assert (=> b!264256 (= e!164127 (Cons!3776 (h!9173 lt!107731) (++!975 (t!37364 lt!107731) lt!107732)))))

(declare-fun b!264255 () Bool)

(assert (=> b!264255 (= e!164127 lt!107732)))

(assert (= (and d!75924 c!49992) b!264255))

(assert (= (and d!75924 (not c!49992)) b!264256))

(assert (= (and d!75924 res!121305) b!264257))

(assert (= (and b!264257 res!121304) b!264258))

(declare-fun m!329697 () Bool)

(assert (=> d!75924 m!329697))

(assert (=> d!75924 m!329677))

(assert (=> d!75924 m!329293))

(declare-fun m!329699 () Bool)

(assert (=> b!264257 m!329699))

(assert (=> b!264257 m!329681))

(assert (=> b!264257 m!329299))

(declare-fun m!329701 () Bool)

(assert (=> b!264256 m!329701))

(assert (=> b!263827 d!75924))

(declare-fun d!75926 () Bool)

(assert (=> d!75926 (= (list!1528 (charsOf!365 (h!9174 tokens!465))) (list!1531 (c!49898 (charsOf!365 (h!9174 tokens!465)))))))

(declare-fun bs!28909 () Bool)

(assert (= bs!28909 d!75926))

(declare-fun m!329703 () Bool)

(assert (=> bs!28909 m!329703))

(assert (=> b!263827 d!75926))

(declare-fun d!75928 () Bool)

(assert (=> d!75928 (= (list!1528 (printWithSeparatorTokenWhenNeededRec!281 thiss!17480 rules!1920 lt!107740 separatorToken!170 0)) (list!1531 (c!49898 (printWithSeparatorTokenWhenNeededRec!281 thiss!17480 rules!1920 lt!107740 separatorToken!170 0))))))

(declare-fun bs!28910 () Bool)

(assert (= bs!28910 d!75928))

(declare-fun m!329705 () Bool)

(assert (=> bs!28910 m!329705))

(assert (=> b!263838 d!75928))

(declare-fun bs!28911 () Bool)

(declare-fun d!75930 () Bool)

(assert (= bs!28911 (and d!75930 b!264095)))

(declare-fun lambda!8889 () Int)

(assert (=> bs!28911 (not (= lambda!8889 lambda!8876))))

(declare-fun bs!28912 () Bool)

(assert (= bs!28912 (and d!75930 d!75826)))

(assert (=> bs!28912 (not (= lambda!8889 lambda!8869))))

(declare-fun bs!28913 () Bool)

(assert (= bs!28913 (and d!75930 b!263829)))

(assert (=> bs!28913 (= lambda!8889 lambda!8859)))

(declare-fun bs!28914 () Bool)

(assert (= bs!28914 (and d!75930 b!264242)))

(assert (=> bs!28914 (not (= lambda!8889 lambda!8888))))

(declare-fun bs!28915 () Bool)

(assert (= bs!28915 (and d!75930 d!75872)))

(assert (=> bs!28915 (= lambda!8889 lambda!8887)))

(declare-fun bs!28916 () Bool)

(declare-fun b!264266 () Bool)

(assert (= bs!28916 (and b!264266 b!264095)))

(declare-fun lambda!8890 () Int)

(assert (=> bs!28916 (= lambda!8890 lambda!8876)))

(declare-fun bs!28917 () Bool)

(assert (= bs!28917 (and b!264266 d!75826)))

(assert (=> bs!28917 (= lambda!8890 lambda!8869)))

(declare-fun bs!28918 () Bool)

(assert (= bs!28918 (and b!264266 b!263829)))

(assert (=> bs!28918 (not (= lambda!8890 lambda!8859))))

(declare-fun bs!28919 () Bool)

(assert (= bs!28919 (and b!264266 b!264242)))

(assert (=> bs!28919 (= lambda!8890 lambda!8888)))

(declare-fun bs!28920 () Bool)

(assert (= bs!28920 (and b!264266 d!75872)))

(assert (=> bs!28920 (not (= lambda!8890 lambda!8887))))

(declare-fun bs!28921 () Bool)

(assert (= bs!28921 (and b!264266 d!75930)))

(assert (=> bs!28921 (not (= lambda!8890 lambda!8889))))

(declare-fun b!264270 () Bool)

(declare-fun e!164137 () Bool)

(assert (=> b!264270 (= e!164137 true)))

(declare-fun b!264269 () Bool)

(declare-fun e!164136 () Bool)

(assert (=> b!264269 (= e!164136 e!164137)))

(declare-fun b!264268 () Bool)

(declare-fun e!164135 () Bool)

(assert (=> b!264268 (= e!164135 e!164136)))

(assert (=> b!264266 e!164135))

(assert (= b!264269 b!264270))

(assert (= b!264268 b!264269))

(assert (= (and b!264266 (is-Cons!3778 rules!1920)) b!264268))

(assert (=> b!264270 (< (dynLambda!1912 order!2875 (toValue!1447 (transformation!720 (h!9175 rules!1920)))) (dynLambda!1913 order!2877 lambda!8890))))

(assert (=> b!264270 (< (dynLambda!1914 order!2879 (toChars!1306 (transformation!720 (h!9175 rules!1920)))) (dynLambda!1913 order!2877 lambda!8890))))

(assert (=> b!264266 true))

(declare-fun b!264259 () Bool)

(declare-fun c!49995 () Bool)

(declare-fun e!164132 () Bool)

(assert (=> b!264259 (= c!49995 e!164132)))

(declare-fun res!121308 () Bool)

(assert (=> b!264259 (=> (not res!121308) (not e!164132))))

(declare-fun lt!107962 () Option!791)

(assert (=> b!264259 (= res!121308 (is-Some!790 lt!107962))))

(declare-fun e!164129 () BalanceConc!2532)

(declare-fun e!164131 () BalanceConc!2532)

(assert (=> b!264259 (= e!164129 e!164131)))

(declare-fun b!264260 () Bool)

(assert (=> b!264260 (= e!164131 (BalanceConc!2533 Empty!1262))))

(declare-fun call!14276 () Token!1184)

(assert (=> b!264260 (= (print!331 thiss!17480 (singletonSeq!266 call!14276)) (printTailRec!294 thiss!17480 (singletonSeq!266 call!14276) 0 (BalanceConc!2533 Empty!1262)))))

(declare-fun lt!107963 () Unit!4735)

(declare-fun Unit!4746 () Unit!4735)

(assert (=> b!264260 (= lt!107963 Unit!4746)))

(declare-fun call!14277 () BalanceConc!2532)

(declare-fun lt!107956 () BalanceConc!2532)

(declare-fun lt!107964 () Unit!4735)

(assert (=> b!264260 (= lt!107964 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!103 thiss!17480 rules!1920 (list!1528 call!14277) (list!1528 lt!107956)))))

(assert (=> b!264260 false))

(declare-fun lt!107958 () Unit!4735)

(declare-fun Unit!4747 () Unit!4735)

(assert (=> b!264260 (= lt!107958 Unit!4747)))

(declare-fun b!264261 () Bool)

(declare-fun e!164134 () BalanceConc!2532)

(assert (=> b!264261 (= e!164134 (BalanceConc!2533 Empty!1262))))

(declare-fun lt!107957 () BalanceConc!2532)

(assert (=> d!75930 (= (list!1528 lt!107957) (printWithSeparatorTokenWhenNeededList!289 thiss!17480 rules!1920 (dropList!155 lt!107740 0) separatorToken!170))))

(assert (=> d!75930 (= lt!107957 e!164134)))

(declare-fun c!49993 () Bool)

(assert (=> d!75930 (= c!49993 (>= 0 (size!3007 lt!107740)))))

(declare-fun lt!107961 () Unit!4735)

(assert (=> d!75930 (= lt!107961 (lemmaContentSubsetPreservesForall!99 (list!1530 lt!107740) (dropList!155 lt!107740 0) lambda!8889))))

(declare-fun e!164133 () Bool)

(assert (=> d!75930 e!164133))

(declare-fun res!121307 () Bool)

(assert (=> d!75930 (=> (not res!121307) (not e!164133))))

(assert (=> d!75930 (= res!121307 (>= 0 0))))

(assert (=> d!75930 (= (printWithSeparatorTokenWhenNeededRec!281 thiss!17480 rules!1920 lt!107740 separatorToken!170 0) lt!107957)))

(declare-fun b!264262 () Bool)

(declare-fun call!14279 () BalanceConc!2532)

(assert (=> b!264262 (= e!164131 (++!977 call!14279 lt!107956))))

(declare-fun bm!14270 () Bool)

(declare-fun call!14275 () Token!1184)

(assert (=> bm!14270 (= call!14276 call!14275)))

(declare-fun b!264263 () Bool)

(assert (=> b!264263 (= e!164132 (not (= (_1!2332 (v!14641 lt!107962)) call!14275)))))

(declare-fun bm!14271 () Bool)

(assert (=> bm!14271 (= call!14277 (charsOf!365 (ite c!49995 separatorToken!170 call!14276)))))

(declare-fun bm!14272 () Bool)

(assert (=> bm!14272 (= call!14275 (apply!743 lt!107740 0))))

(declare-fun call!14278 () BalanceConc!2532)

(declare-fun bm!14273 () Bool)

(declare-fun c!49994 () Bool)

(assert (=> bm!14273 (= call!14279 (++!977 call!14278 (ite c!49994 lt!107956 call!14277)))))

(declare-fun b!264264 () Bool)

(assert (=> b!264264 (= e!164133 (<= 0 (size!3007 lt!107740)))))

(declare-fun b!264265 () Bool)

(declare-fun e!164130 () Bool)

(assert (=> b!264265 (= e!164130 (= (_1!2332 (v!14641 lt!107962)) (apply!743 lt!107740 0)))))

(assert (=> b!264266 (= e!164134 e!164129)))

(declare-fun lt!107967 () List!3787)

(assert (=> b!264266 (= lt!107967 (list!1530 lt!107740))))

(declare-fun lt!107965 () Unit!4735)

(assert (=> b!264266 (= lt!107965 (lemmaDropApply!195 lt!107967 0))))

(assert (=> b!264266 (= (head!879 (drop!208 lt!107967 0)) (apply!744 lt!107967 0))))

(declare-fun lt!107969 () Unit!4735)

(assert (=> b!264266 (= lt!107969 lt!107965)))

(declare-fun lt!107959 () List!3787)

(assert (=> b!264266 (= lt!107959 (list!1530 lt!107740))))

(declare-fun lt!107966 () Unit!4735)

(assert (=> b!264266 (= lt!107966 (lemmaDropTail!187 lt!107959 0))))

(assert (=> b!264266 (= (tail!469 (drop!208 lt!107959 0)) (drop!208 lt!107959 (+ 0 1)))))

(declare-fun lt!107960 () Unit!4735)

(assert (=> b!264266 (= lt!107960 lt!107966)))

(declare-fun lt!107968 () Unit!4735)

(assert (=> b!264266 (= lt!107968 (forallContained!277 (list!1530 lt!107740) lambda!8890 (apply!743 lt!107740 0)))))

(assert (=> b!264266 (= lt!107956 (printWithSeparatorTokenWhenNeededRec!281 thiss!17480 rules!1920 lt!107740 separatorToken!170 (+ 0 1)))))

(assert (=> b!264266 (= lt!107962 (maxPrefixZipperSequence!289 thiss!17480 rules!1920 (++!977 (charsOf!365 (apply!743 lt!107740 0)) lt!107956)))))

(declare-fun res!121306 () Bool)

(assert (=> b!264266 (= res!121306 (is-Some!790 lt!107962))))

(assert (=> b!264266 (=> (not res!121306) (not e!164130))))

(assert (=> b!264266 (= c!49994 e!164130)))

(declare-fun bm!14274 () Bool)

(assert (=> bm!14274 (= call!14278 (charsOf!365 (ite c!49994 call!14275 call!14276)))))

(declare-fun b!264267 () Bool)

(assert (=> b!264267 (= e!164129 call!14279)))

(assert (= (and d!75930 res!121307) b!264264))

(assert (= (and d!75930 c!49993) b!264261))

(assert (= (and d!75930 (not c!49993)) b!264266))

(assert (= (and b!264266 res!121306) b!264265))

(assert (= (and b!264266 c!49994) b!264267))

(assert (= (and b!264266 (not c!49994)) b!264259))

(assert (= (and b!264259 res!121308) b!264263))

(assert (= (and b!264259 c!49995) b!264262))

(assert (= (and b!264259 (not c!49995)) b!264260))

(assert (= (or b!264262 b!264260) bm!14270))

(assert (= (or b!264262 b!264260) bm!14271))

(assert (= (or b!264267 bm!14270 b!264263) bm!14272))

(assert (= (or b!264267 b!264262) bm!14274))

(assert (= (or b!264267 b!264262) bm!14273))

(declare-fun m!329707 () Bool)

(assert (=> b!264266 m!329707))

(declare-fun m!329709 () Bool)

(assert (=> b!264266 m!329709))

(declare-fun m!329711 () Bool)

(assert (=> b!264266 m!329711))

(declare-fun m!329713 () Bool)

(assert (=> b!264266 m!329713))

(declare-fun m!329715 () Bool)

(assert (=> b!264266 m!329715))

(declare-fun m!329717 () Bool)

(assert (=> b!264266 m!329717))

(declare-fun m!329719 () Bool)

(assert (=> b!264266 m!329719))

(declare-fun m!329721 () Bool)

(assert (=> b!264266 m!329721))

(assert (=> b!264266 m!329709))

(declare-fun m!329723 () Bool)

(assert (=> b!264266 m!329723))

(declare-fun m!329725 () Bool)

(assert (=> b!264266 m!329725))

(assert (=> b!264266 m!329229))

(declare-fun m!329727 () Bool)

(assert (=> b!264266 m!329727))

(declare-fun m!329729 () Bool)

(assert (=> b!264266 m!329729))

(declare-fun m!329731 () Bool)

(assert (=> b!264266 m!329731))

(assert (=> b!264266 m!329727))

(assert (=> b!264266 m!329713))

(assert (=> b!264266 m!329715))

(assert (=> b!264266 m!329711))

(assert (=> b!264266 m!329229))

(assert (=> b!264266 m!329711))

(declare-fun m!329733 () Bool)

(assert (=> b!264266 m!329733))

(assert (=> bm!14272 m!329711))

(assert (=> b!264265 m!329711))

(declare-fun m!329735 () Bool)

(assert (=> bm!14271 m!329735))

(declare-fun m!329737 () Bool)

(assert (=> d!75930 m!329737))

(declare-fun m!329739 () Bool)

(assert (=> d!75930 m!329739))

(assert (=> d!75930 m!329229))

(assert (=> d!75930 m!329737))

(declare-fun m!329741 () Bool)

(assert (=> d!75930 m!329741))

(assert (=> d!75930 m!329737))

(declare-fun m!329743 () Bool)

(assert (=> d!75930 m!329743))

(declare-fun m!329745 () Bool)

(assert (=> d!75930 m!329745))

(assert (=> d!75930 m!329229))

(declare-fun m!329747 () Bool)

(assert (=> bm!14273 m!329747))

(declare-fun m!329749 () Bool)

(assert (=> b!264260 m!329749))

(declare-fun m!329751 () Bool)

(assert (=> b!264260 m!329751))

(declare-fun m!329753 () Bool)

(assert (=> b!264260 m!329753))

(declare-fun m!329755 () Bool)

(assert (=> b!264260 m!329755))

(declare-fun m!329757 () Bool)

(assert (=> b!264260 m!329757))

(assert (=> b!264260 m!329755))

(declare-fun m!329759 () Bool)

(assert (=> b!264260 m!329759))

(assert (=> b!264260 m!329755))

(assert (=> b!264260 m!329749))

(assert (=> b!264260 m!329751))

(declare-fun m!329761 () Bool)

(assert (=> b!264262 m!329761))

(assert (=> b!264264 m!329739))

(declare-fun m!329763 () Bool)

(assert (=> bm!14274 m!329763))

(assert (=> b!263838 d!75930))

(declare-fun bs!28922 () Bool)

(declare-fun b!264278 () Bool)

(assert (= bs!28922 (and b!264278 b!264266)))

(declare-fun lambda!8891 () Int)

(assert (=> bs!28922 (= lambda!8891 lambda!8890)))

(declare-fun bs!28923 () Bool)

(assert (= bs!28923 (and b!264278 b!264095)))

(assert (=> bs!28923 (= lambda!8891 lambda!8876)))

(declare-fun bs!28924 () Bool)

(assert (= bs!28924 (and b!264278 d!75826)))

(assert (=> bs!28924 (= lambda!8891 lambda!8869)))

(declare-fun bs!28925 () Bool)

(assert (= bs!28925 (and b!264278 b!263829)))

(assert (=> bs!28925 (not (= lambda!8891 lambda!8859))))

(declare-fun bs!28926 () Bool)

(assert (= bs!28926 (and b!264278 b!264242)))

(assert (=> bs!28926 (= lambda!8891 lambda!8888)))

(declare-fun bs!28927 () Bool)

(assert (= bs!28927 (and b!264278 d!75872)))

(assert (=> bs!28927 (not (= lambda!8891 lambda!8887))))

(declare-fun bs!28928 () Bool)

(assert (= bs!28928 (and b!264278 d!75930)))

(assert (=> bs!28928 (not (= lambda!8891 lambda!8889))))

(declare-fun b!264283 () Bool)

(declare-fun e!164145 () Bool)

(assert (=> b!264283 (= e!164145 true)))

(declare-fun b!264282 () Bool)

(declare-fun e!164144 () Bool)

(assert (=> b!264282 (= e!164144 e!164145)))

(declare-fun b!264281 () Bool)

(declare-fun e!164143 () Bool)

(assert (=> b!264281 (= e!164143 e!164144)))

(assert (=> b!264278 e!164143))

(assert (= b!264282 b!264283))

(assert (= b!264281 b!264282))

(assert (= (and b!264278 (is-Cons!3778 rules!1920)) b!264281))

(assert (=> b!264283 (< (dynLambda!1912 order!2875 (toValue!1447 (transformation!720 (h!9175 rules!1920)))) (dynLambda!1913 order!2877 lambda!8891))))

(assert (=> b!264283 (< (dynLambda!1914 order!2879 (toChars!1306 (transformation!720 (h!9175 rules!1920)))) (dynLambda!1913 order!2877 lambda!8891))))

(assert (=> b!264278 true))

(declare-fun b!264271 () Bool)

(declare-fun e!164141 () List!3786)

(declare-fun call!14280 () List!3786)

(assert (=> b!264271 (= e!164141 call!14280)))

(declare-fun b!264272 () Bool)

(declare-fun e!164142 () BalanceConc!2532)

(declare-fun call!14284 () BalanceConc!2532)

(assert (=> b!264272 (= e!164142 call!14284)))

(declare-fun bm!14275 () Bool)

(declare-fun call!14283 () BalanceConc!2532)

(assert (=> bm!14275 (= call!14283 (charsOf!365 (h!9174 tokens!465)))))

(declare-fun b!264273 () Bool)

(declare-fun c!49999 () Bool)

(declare-fun lt!107972 () Option!790)

(assert (=> b!264273 (= c!49999 (and (is-Some!789 lt!107972) (not (= (_1!2331 (v!14640 lt!107972)) (h!9174 tokens!465)))))))

(declare-fun e!164139 () List!3786)

(declare-fun e!164138 () List!3786)

(assert (=> b!264273 (= e!164139 e!164138)))

(declare-fun b!264274 () Bool)

(assert (=> b!264274 (= e!164141 (list!1528 call!14284))))

(declare-fun d!75932 () Bool)

(declare-fun c!49997 () Bool)

(assert (=> d!75932 (= c!49997 (is-Cons!3777 tokens!465))))

(declare-fun e!164140 () List!3786)

(assert (=> d!75932 (= (printWithSeparatorTokenWhenNeededList!289 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!164140)))

(declare-fun bm!14276 () Bool)

(assert (=> bm!14276 (= call!14284 call!14283)))

(declare-fun c!50000 () Bool)

(declare-fun bm!14277 () Bool)

(assert (=> bm!14277 (= call!14280 (list!1528 (ite c!50000 call!14283 e!164142)))))

(declare-fun b!264275 () Bool)

(declare-fun call!14281 () List!3786)

(declare-fun lt!107971 () List!3786)

(assert (=> b!264275 (= e!164138 (++!975 call!14281 lt!107971))))

(declare-fun b!264276 () Bool)

(assert (=> b!264276 (= e!164139 call!14281)))

(declare-fun bm!14278 () Bool)

(declare-fun c!49996 () Bool)

(assert (=> bm!14278 (= c!49996 c!50000)))

(declare-fun call!14282 () List!3786)

(assert (=> bm!14278 (= call!14281 (++!975 e!164141 (ite c!50000 lt!107971 call!14282)))))

(declare-fun bm!14279 () Bool)

(assert (=> bm!14279 (= call!14282 call!14280)))

(declare-fun c!49998 () Bool)

(assert (=> bm!14279 (= c!49998 c!49999)))

(declare-fun b!264277 () Bool)

(assert (=> b!264277 (= e!164138 Nil!3776)))

(assert (=> b!264277 (= (print!331 thiss!17480 (singletonSeq!266 (h!9174 tokens!465))) (printTailRec!294 thiss!17480 (singletonSeq!266 (h!9174 tokens!465)) 0 (BalanceConc!2533 Empty!1262)))))

(declare-fun lt!107973 () Unit!4735)

(declare-fun Unit!4750 () Unit!4735)

(assert (=> b!264277 (= lt!107973 Unit!4750)))

(declare-fun lt!107975 () Unit!4735)

(assert (=> b!264277 (= lt!107975 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!103 thiss!17480 rules!1920 call!14282 lt!107971))))

(assert (=> b!264277 false))

(declare-fun lt!107974 () Unit!4735)

(declare-fun Unit!4751 () Unit!4735)

(assert (=> b!264277 (= lt!107974 Unit!4751)))

(assert (=> b!264278 (= e!164140 e!164139)))

(declare-fun lt!107970 () Unit!4735)

(assert (=> b!264278 (= lt!107970 (forallContained!277 tokens!465 lambda!8891 (h!9174 tokens!465)))))

(assert (=> b!264278 (= lt!107971 (printWithSeparatorTokenWhenNeededList!289 thiss!17480 rules!1920 (t!37365 tokens!465) separatorToken!170))))

(assert (=> b!264278 (= lt!107972 (maxPrefix!326 thiss!17480 rules!1920 (++!975 (list!1528 (charsOf!365 (h!9174 tokens!465))) lt!107971)))))

(assert (=> b!264278 (= c!50000 (and (is-Some!789 lt!107972) (= (_1!2331 (v!14640 lt!107972)) (h!9174 tokens!465))))))

(declare-fun b!264279 () Bool)

(assert (=> b!264279 (= e!164142 (charsOf!365 separatorToken!170))))

(declare-fun b!264280 () Bool)

(assert (=> b!264280 (= e!164140 Nil!3776)))

(assert (= (and d!75932 c!49997) b!264278))

(assert (= (and d!75932 (not c!49997)) b!264280))

(assert (= (and b!264278 c!50000) b!264276))

(assert (= (and b!264278 (not c!50000)) b!264273))

(assert (= (and b!264273 c!49999) b!264275))

(assert (= (and b!264273 (not c!49999)) b!264277))

(assert (= (or b!264275 b!264277) bm!14276))

(assert (= (or b!264275 b!264277) bm!14279))

(assert (= (and bm!14279 c!49998) b!264279))

(assert (= (and bm!14279 (not c!49998)) b!264272))

(assert (= (or b!264276 bm!14276) bm!14275))

(assert (= (or b!264276 bm!14279) bm!14277))

(assert (= (or b!264276 b!264275) bm!14278))

(assert (= (and bm!14278 c!49996) b!264271))

(assert (= (and bm!14278 (not c!49996)) b!264274))

(declare-fun m!329765 () Bool)

(assert (=> bm!14278 m!329765))

(assert (=> bm!14275 m!329081))

(declare-fun m!329767 () Bool)

(assert (=> b!264275 m!329767))

(assert (=> b!264279 m!329073))

(declare-fun m!329769 () Bool)

(assert (=> bm!14277 m!329769))

(declare-fun m!329771 () Bool)

(assert (=> b!264274 m!329771))

(assert (=> b!264277 m!329093))

(assert (=> b!264277 m!329093))

(declare-fun m!329773 () Bool)

(assert (=> b!264277 m!329773))

(assert (=> b!264277 m!329093))

(declare-fun m!329775 () Bool)

(assert (=> b!264277 m!329775))

(declare-fun m!329777 () Bool)

(assert (=> b!264277 m!329777))

(assert (=> b!264278 m!329081))

(assert (=> b!264278 m!329085))

(declare-fun m!329779 () Bool)

(assert (=> b!264278 m!329779))

(declare-fun m!329781 () Bool)

(assert (=> b!264278 m!329781))

(assert (=> b!264278 m!329071))

(declare-fun m!329783 () Bool)

(assert (=> b!264278 m!329783))

(assert (=> b!264278 m!329081))

(assert (=> b!264278 m!329085))

(assert (=> b!264278 m!329779))

(assert (=> b!263838 d!75932))

(declare-fun d!75934 () Bool)

(declare-fun res!121319 () Bool)

(declare-fun e!164154 () Bool)

(assert (=> d!75934 (=> res!121319 e!164154)))

(assert (=> d!75934 (= res!121319 (not (is-Cons!3778 rules!1920)))))

(assert (=> d!75934 (= (sepAndNonSepRulesDisjointChars!309 rules!1920 rules!1920) e!164154)))

(declare-fun b!264294 () Bool)

(declare-fun e!164155 () Bool)

(assert (=> b!264294 (= e!164154 e!164155)))

(declare-fun res!121320 () Bool)

(assert (=> b!264294 (=> (not res!121320) (not e!164155))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!109 (Rule!1240 List!3788) Bool)

(assert (=> b!264294 (= res!121320 (ruleDisjointCharsFromAllFromOtherType!109 (h!9175 rules!1920) rules!1920))))

(declare-fun b!264295 () Bool)

(assert (=> b!264295 (= e!164155 (sepAndNonSepRulesDisjointChars!309 rules!1920 (t!37366 rules!1920)))))

(assert (= (and d!75934 (not res!121319)) b!264294))

(assert (= (and b!264294 res!121320) b!264295))

(declare-fun m!329785 () Bool)

(assert (=> b!264294 m!329785))

(declare-fun m!329787 () Bool)

(assert (=> b!264295 m!329787))

(assert (=> b!263837 d!75934))

(declare-fun d!75936 () Bool)

(assert (=> d!75936 (= (list!1528 (seqFromList!808 lt!107734)) (list!1531 (c!49898 (seqFromList!808 lt!107734))))))

(declare-fun bs!28929 () Bool)

(assert (= bs!28929 d!75936))

(declare-fun m!329789 () Bool)

(assert (=> bs!28929 m!329789))

(assert (=> b!263823 d!75936))

(declare-fun d!75938 () Bool)

(declare-fun fromListB!304 (List!3786) BalanceConc!2532)

(assert (=> d!75938 (= (seqFromList!808 lt!107734) (fromListB!304 lt!107734))))

(declare-fun bs!28930 () Bool)

(assert (= bs!28930 d!75938))

(declare-fun m!329791 () Bool)

(assert (=> bs!28930 m!329791))

(assert (=> b!263823 d!75938))

(declare-fun d!75940 () Bool)

(assert (=> d!75940 (= (list!1528 lt!107742) (list!1531 (c!49898 lt!107742)))))

(declare-fun bs!28931 () Bool)

(assert (= bs!28931 d!75940))

(declare-fun m!329793 () Bool)

(assert (=> bs!28931 m!329793))

(assert (=> b!263834 d!75940))

(declare-fun d!75942 () Bool)

(declare-fun lt!107984 () BalanceConc!2532)

(assert (=> d!75942 (= (list!1528 lt!107984) (printList!282 thiss!17480 (list!1530 lt!107735)))))

(assert (=> d!75942 (= lt!107984 (printTailRec!294 thiss!17480 lt!107735 0 (BalanceConc!2533 Empty!1262)))))

(assert (=> d!75942 (= (print!331 thiss!17480 lt!107735) lt!107984)))

(declare-fun bs!28934 () Bool)

(assert (= bs!28934 d!75942))

(declare-fun m!329825 () Bool)

(assert (=> bs!28934 m!329825))

(declare-fun m!329827 () Bool)

(assert (=> bs!28934 m!329827))

(assert (=> bs!28934 m!329827))

(declare-fun m!329829 () Bool)

(assert (=> bs!28934 m!329829))

(assert (=> bs!28934 m!329095))

(assert (=> b!263834 d!75942))

(declare-fun d!75958 () Bool)

(declare-fun lt!108002 () BalanceConc!2532)

(declare-fun printListTailRec!121 (LexerInterface!606 List!3787 List!3786) List!3786)

(assert (=> d!75958 (= (list!1528 lt!108002) (printListTailRec!121 thiss!17480 (dropList!155 lt!107735 0) (list!1528 (BalanceConc!2533 Empty!1262))))))

(declare-fun e!164164 () BalanceConc!2532)

(assert (=> d!75958 (= lt!108002 e!164164)))

(declare-fun c!50003 () Bool)

(assert (=> d!75958 (= c!50003 (>= 0 (size!3007 lt!107735)))))

(declare-fun e!164165 () Bool)

(assert (=> d!75958 e!164165))

(declare-fun res!121328 () Bool)

(assert (=> d!75958 (=> (not res!121328) (not e!164165))))

(assert (=> d!75958 (= res!121328 (>= 0 0))))

(assert (=> d!75958 (= (printTailRec!294 thiss!17480 lt!107735 0 (BalanceConc!2533 Empty!1262)) lt!108002)))

(declare-fun b!264307 () Bool)

(assert (=> b!264307 (= e!164165 (<= 0 (size!3007 lt!107735)))))

(declare-fun b!264308 () Bool)

(assert (=> b!264308 (= e!164164 (BalanceConc!2533 Empty!1262))))

(declare-fun b!264309 () Bool)

(assert (=> b!264309 (= e!164164 (printTailRec!294 thiss!17480 lt!107735 (+ 0 1) (++!977 (BalanceConc!2533 Empty!1262) (charsOf!365 (apply!743 lt!107735 0)))))))

(declare-fun lt!108000 () List!3787)

(assert (=> b!264309 (= lt!108000 (list!1530 lt!107735))))

(declare-fun lt!108001 () Unit!4735)

(assert (=> b!264309 (= lt!108001 (lemmaDropApply!195 lt!108000 0))))

(assert (=> b!264309 (= (head!879 (drop!208 lt!108000 0)) (apply!744 lt!108000 0))))

(declare-fun lt!108004 () Unit!4735)

(assert (=> b!264309 (= lt!108004 lt!108001)))

(declare-fun lt!108005 () List!3787)

(assert (=> b!264309 (= lt!108005 (list!1530 lt!107735))))

(declare-fun lt!107999 () Unit!4735)

(assert (=> b!264309 (= lt!107999 (lemmaDropTail!187 lt!108005 0))))

(assert (=> b!264309 (= (tail!469 (drop!208 lt!108005 0)) (drop!208 lt!108005 (+ 0 1)))))

(declare-fun lt!108003 () Unit!4735)

(assert (=> b!264309 (= lt!108003 lt!107999)))

(assert (= (and d!75958 res!121328) b!264307))

(assert (= (and d!75958 c!50003) b!264308))

(assert (= (and d!75958 (not c!50003)) b!264309))

(declare-fun m!329831 () Bool)

(assert (=> d!75958 m!329831))

(declare-fun m!329833 () Bool)

(assert (=> d!75958 m!329833))

(declare-fun m!329835 () Bool)

(assert (=> d!75958 m!329835))

(assert (=> d!75958 m!329831))

(assert (=> d!75958 m!329833))

(declare-fun m!329837 () Bool)

(assert (=> d!75958 m!329837))

(declare-fun m!329839 () Bool)

(assert (=> d!75958 m!329839))

(assert (=> b!264307 m!329837))

(declare-fun m!329841 () Bool)

(assert (=> b!264309 m!329841))

(declare-fun m!329843 () Bool)

(assert (=> b!264309 m!329843))

(declare-fun m!329845 () Bool)

(assert (=> b!264309 m!329845))

(declare-fun m!329847 () Bool)

(assert (=> b!264309 m!329847))

(declare-fun m!329849 () Bool)

(assert (=> b!264309 m!329849))

(declare-fun m!329851 () Bool)

(assert (=> b!264309 m!329851))

(declare-fun m!329853 () Bool)

(assert (=> b!264309 m!329853))

(declare-fun m!329855 () Bool)

(assert (=> b!264309 m!329855))

(declare-fun m!329857 () Bool)

(assert (=> b!264309 m!329857))

(assert (=> b!264309 m!329847))

(declare-fun m!329859 () Bool)

(assert (=> b!264309 m!329859))

(assert (=> b!264309 m!329827))

(assert (=> b!264309 m!329853))

(declare-fun m!329861 () Bool)

(assert (=> b!264309 m!329861))

(assert (=> b!264309 m!329849))

(assert (=> b!264309 m!329855))

(assert (=> b!264309 m!329843))

(declare-fun m!329863 () Bool)

(assert (=> b!264309 m!329863))

(assert (=> b!263834 d!75958))

(declare-fun d!75960 () Bool)

(declare-fun e!164168 () Bool)

(assert (=> d!75960 e!164168))

(declare-fun res!121331 () Bool)

(assert (=> d!75960 (=> (not res!121331) (not e!164168))))

(declare-fun lt!108008 () BalanceConc!2534)

(assert (=> d!75960 (= res!121331 (= (list!1530 lt!108008) (Cons!3777 (h!9174 tokens!465) Nil!3777)))))

(declare-fun singleton!106 (Token!1184) BalanceConc!2534)

(assert (=> d!75960 (= lt!108008 (singleton!106 (h!9174 tokens!465)))))

(assert (=> d!75960 (= (singletonSeq!266 (h!9174 tokens!465)) lt!108008)))

(declare-fun b!264312 () Bool)

(declare-fun isBalanced!339 (Conc!1263) Bool)

(assert (=> b!264312 (= e!164168 (isBalanced!339 (c!49900 lt!108008)))))

(assert (= (and d!75960 res!121331) b!264312))

(declare-fun m!329865 () Bool)

(assert (=> d!75960 m!329865))

(declare-fun m!329867 () Bool)

(assert (=> d!75960 m!329867))

(declare-fun m!329869 () Bool)

(assert (=> b!264312 m!329869))

(assert (=> b!263834 d!75960))

(declare-fun d!75962 () Bool)

(declare-fun c!50006 () Bool)

(assert (=> d!75962 (= c!50006 (is-Cons!3777 (Cons!3777 (h!9174 tokens!465) Nil!3777)))))

(declare-fun e!164171 () List!3786)

(assert (=> d!75962 (= (printList!282 thiss!17480 (Cons!3777 (h!9174 tokens!465) Nil!3777)) e!164171)))

(declare-fun b!264317 () Bool)

(assert (=> b!264317 (= e!164171 (++!975 (list!1528 (charsOf!365 (h!9174 (Cons!3777 (h!9174 tokens!465) Nil!3777)))) (printList!282 thiss!17480 (t!37365 (Cons!3777 (h!9174 tokens!465) Nil!3777)))))))

(declare-fun b!264318 () Bool)

(assert (=> b!264318 (= e!164171 Nil!3776)))

(assert (= (and d!75962 c!50006) b!264317))

(assert (= (and d!75962 (not c!50006)) b!264318))

(declare-fun m!329871 () Bool)

(assert (=> b!264317 m!329871))

(assert (=> b!264317 m!329871))

(declare-fun m!329873 () Bool)

(assert (=> b!264317 m!329873))

(declare-fun m!329875 () Bool)

(assert (=> b!264317 m!329875))

(assert (=> b!264317 m!329873))

(assert (=> b!264317 m!329875))

(declare-fun m!329877 () Bool)

(assert (=> b!264317 m!329877))

(assert (=> b!263834 d!75962))

(declare-fun d!75964 () Bool)

(assert (=> d!75964 (= (inv!4665 (tag!930 (rule!1305 separatorToken!170))) (= (mod (str.len (value!24836 (tag!930 (rule!1305 separatorToken!170)))) 2) 0))))

(assert (=> b!263835 d!75964))

(declare-fun d!75966 () Bool)

(declare-fun res!121332 () Bool)

(declare-fun e!164172 () Bool)

(assert (=> d!75966 (=> (not res!121332) (not e!164172))))

(assert (=> d!75966 (= res!121332 (semiInverseModEq!250 (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))) (toValue!1447 (transformation!720 (rule!1305 separatorToken!170)))))))

(assert (=> d!75966 (= (inv!4668 (transformation!720 (rule!1305 separatorToken!170))) e!164172)))

(declare-fun b!264319 () Bool)

(assert (=> b!264319 (= e!164172 (equivClasses!233 (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))) (toValue!1447 (transformation!720 (rule!1305 separatorToken!170)))))))

(assert (= (and d!75966 res!121332) b!264319))

(declare-fun m!329879 () Bool)

(assert (=> d!75966 m!329879))

(declare-fun m!329881 () Bool)

(assert (=> b!264319 m!329881))

(assert (=> b!263835 d!75966))

(declare-fun b!264324 () Bool)

(declare-fun e!164175 () Bool)

(declare-fun tp_is_empty!1797 () Bool)

(declare-fun tp!101154 () Bool)

(assert (=> b!264324 (= e!164175 (and tp_is_empty!1797 tp!101154))))

(assert (=> b!263842 (= tp!101098 e!164175)))

(assert (= (and b!263842 (is-Cons!3776 (originalCharacters!763 (h!9174 tokens!465)))) b!264324))

(declare-fun b!264325 () Bool)

(declare-fun e!164176 () Bool)

(declare-fun tp!101155 () Bool)

(assert (=> b!264325 (= e!164176 (and tp_is_empty!1797 tp!101155))))

(assert (=> b!263841 (= tp!101094 e!164176)))

(assert (= (and b!263841 (is-Cons!3776 (originalCharacters!763 separatorToken!170))) b!264325))

(declare-fun b!264339 () Bool)

(declare-fun b_free!9829 () Bool)

(declare-fun b_next!9829 () Bool)

(assert (=> b!264339 (= b_free!9829 (not b_next!9829))))

(declare-fun tp!101166 () Bool)

(declare-fun b_and!20683 () Bool)

(assert (=> b!264339 (= tp!101166 b_and!20683)))

(declare-fun b_free!9831 () Bool)

(declare-fun b_next!9831 () Bool)

(assert (=> b!264339 (= b_free!9831 (not b_next!9831))))

(declare-fun t!37415 () Bool)

(declare-fun tb!14453 () Bool)

(assert (=> (and b!264339 (= (toChars!1306 (transformation!720 (rule!1305 (h!9174 (t!37365 tokens!465))))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465))))) t!37415) tb!14453))

(declare-fun result!17976 () Bool)

(assert (= result!17976 result!17952))

(assert (=> b!263983 t!37415))

(declare-fun tb!14455 () Bool)

(declare-fun t!37417 () Bool)

(assert (=> (and b!264339 (= (toChars!1306 (transformation!720 (rule!1305 (h!9174 (t!37365 tokens!465))))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170)))) t!37417) tb!14455))

(declare-fun result!17978 () Bool)

(assert (= result!17978 result!17960))

(assert (=> b!264002 t!37417))

(assert (=> d!75916 t!37417))

(assert (=> d!75922 t!37415))

(declare-fun tp!101168 () Bool)

(declare-fun b_and!20685 () Bool)

(assert (=> b!264339 (= tp!101168 (and (=> t!37415 result!17976) (=> t!37417 result!17978) b_and!20685))))

(declare-fun e!164191 () Bool)

(assert (=> b!264339 (= e!164191 (and tp!101166 tp!101168))))

(declare-fun b!264337 () Bool)

(declare-fun e!164192 () Bool)

(declare-fun e!164193 () Bool)

(declare-fun tp!101169 () Bool)

(assert (=> b!264337 (= e!164193 (and (inv!21 (value!24837 (h!9174 (t!37365 tokens!465)))) e!164192 tp!101169))))

(declare-fun b!264338 () Bool)

(declare-fun tp!101167 () Bool)

(assert (=> b!264338 (= e!164192 (and tp!101167 (inv!4665 (tag!930 (rule!1305 (h!9174 (t!37365 tokens!465))))) (inv!4668 (transformation!720 (rule!1305 (h!9174 (t!37365 tokens!465))))) e!164191))))

(declare-fun e!164190 () Bool)

(assert (=> b!263832 (= tp!101103 e!164190)))

(declare-fun tp!101170 () Bool)

(declare-fun b!264336 () Bool)

(assert (=> b!264336 (= e!164190 (and (inv!4669 (h!9174 (t!37365 tokens!465))) e!164193 tp!101170))))

(assert (= b!264338 b!264339))

(assert (= b!264337 b!264338))

(assert (= b!264336 b!264337))

(assert (= (and b!263832 (is-Cons!3777 (t!37365 tokens!465))) b!264336))

(declare-fun m!329883 () Bool)

(assert (=> b!264337 m!329883))

(declare-fun m!329885 () Bool)

(assert (=> b!264338 m!329885))

(declare-fun m!329887 () Bool)

(assert (=> b!264338 m!329887))

(declare-fun m!329889 () Bool)

(assert (=> b!264336 m!329889))

(declare-fun e!164197 () Bool)

(assert (=> b!263828 (= tp!101096 e!164197)))

(declare-fun b!264352 () Bool)

(declare-fun tp!101182 () Bool)

(assert (=> b!264352 (= e!164197 tp!101182)))

(declare-fun b!264350 () Bool)

(assert (=> b!264350 (= e!164197 tp_is_empty!1797)))

(declare-fun b!264351 () Bool)

(declare-fun tp!101184 () Bool)

(declare-fun tp!101185 () Bool)

(assert (=> b!264351 (= e!164197 (and tp!101184 tp!101185))))

(declare-fun b!264353 () Bool)

(declare-fun tp!101181 () Bool)

(declare-fun tp!101183 () Bool)

(assert (=> b!264353 (= e!164197 (and tp!101181 tp!101183))))

(assert (= (and b!263828 (is-ElementMatch!944 (regex!720 (h!9175 rules!1920)))) b!264350))

(assert (= (and b!263828 (is-Concat!1687 (regex!720 (h!9175 rules!1920)))) b!264351))

(assert (= (and b!263828 (is-Star!944 (regex!720 (h!9175 rules!1920)))) b!264352))

(assert (= (and b!263828 (is-Union!944 (regex!720 (h!9175 rules!1920)))) b!264353))

(declare-fun e!164198 () Bool)

(assert (=> b!263836 (= tp!101097 e!164198)))

(declare-fun b!264356 () Bool)

(declare-fun tp!101187 () Bool)

(assert (=> b!264356 (= e!164198 tp!101187)))

(declare-fun b!264354 () Bool)

(assert (=> b!264354 (= e!164198 tp_is_empty!1797)))

(declare-fun b!264355 () Bool)

(declare-fun tp!101189 () Bool)

(declare-fun tp!101190 () Bool)

(assert (=> b!264355 (= e!164198 (and tp!101189 tp!101190))))

(declare-fun b!264357 () Bool)

(declare-fun tp!101186 () Bool)

(declare-fun tp!101188 () Bool)

(assert (=> b!264357 (= e!164198 (and tp!101186 tp!101188))))

(assert (= (and b!263836 (is-ElementMatch!944 (regex!720 (rule!1305 (h!9174 tokens!465))))) b!264354))

(assert (= (and b!263836 (is-Concat!1687 (regex!720 (rule!1305 (h!9174 tokens!465))))) b!264355))

(assert (= (and b!263836 (is-Star!944 (regex!720 (rule!1305 (h!9174 tokens!465))))) b!264356))

(assert (= (and b!263836 (is-Union!944 (regex!720 (rule!1305 (h!9174 tokens!465))))) b!264357))

(declare-fun e!164199 () Bool)

(assert (=> b!263835 (= tp!101104 e!164199)))

(declare-fun b!264360 () Bool)

(declare-fun tp!101192 () Bool)

(assert (=> b!264360 (= e!164199 tp!101192)))

(declare-fun b!264358 () Bool)

(assert (=> b!264358 (= e!164199 tp_is_empty!1797)))

(declare-fun b!264359 () Bool)

(declare-fun tp!101194 () Bool)

(declare-fun tp!101195 () Bool)

(assert (=> b!264359 (= e!164199 (and tp!101194 tp!101195))))

(declare-fun b!264361 () Bool)

(declare-fun tp!101191 () Bool)

(declare-fun tp!101193 () Bool)

(assert (=> b!264361 (= e!164199 (and tp!101191 tp!101193))))

(assert (= (and b!263835 (is-ElementMatch!944 (regex!720 (rule!1305 separatorToken!170)))) b!264358))

(assert (= (and b!263835 (is-Concat!1687 (regex!720 (rule!1305 separatorToken!170)))) b!264359))

(assert (= (and b!263835 (is-Star!944 (regex!720 (rule!1305 separatorToken!170)))) b!264360))

(assert (= (and b!263835 (is-Union!944 (regex!720 (rule!1305 separatorToken!170)))) b!264361))

(declare-fun b!264372 () Bool)

(declare-fun b_free!9833 () Bool)

(declare-fun b_next!9833 () Bool)

(assert (=> b!264372 (= b_free!9833 (not b_next!9833))))

(declare-fun tp!101207 () Bool)

(declare-fun b_and!20687 () Bool)

(assert (=> b!264372 (= tp!101207 b_and!20687)))

(declare-fun b_free!9835 () Bool)

(declare-fun b_next!9835 () Bool)

(assert (=> b!264372 (= b_free!9835 (not b_next!9835))))

(declare-fun t!37419 () Bool)

(declare-fun tb!14457 () Bool)

(assert (=> (and b!264372 (= (toChars!1306 (transformation!720 (h!9175 (t!37366 rules!1920)))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465))))) t!37419) tb!14457))

(declare-fun result!17984 () Bool)

(assert (= result!17984 result!17952))

(assert (=> b!263983 t!37419))

(declare-fun tb!14459 () Bool)

(declare-fun t!37421 () Bool)

(assert (=> (and b!264372 (= (toChars!1306 (transformation!720 (h!9175 (t!37366 rules!1920)))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170)))) t!37421) tb!14459))

(declare-fun result!17986 () Bool)

(assert (= result!17986 result!17960))

(assert (=> b!264002 t!37421))

(assert (=> d!75916 t!37421))

(assert (=> d!75922 t!37419))

(declare-fun tp!101204 () Bool)

(declare-fun b_and!20689 () Bool)

(assert (=> b!264372 (= tp!101204 (and (=> t!37419 result!17984) (=> t!37421 result!17986) b_and!20689))))

(declare-fun e!164210 () Bool)

(assert (=> b!264372 (= e!164210 (and tp!101207 tp!101204))))

(declare-fun b!264371 () Bool)

(declare-fun tp!101206 () Bool)

(declare-fun e!164208 () Bool)

(assert (=> b!264371 (= e!164208 (and tp!101206 (inv!4665 (tag!930 (h!9175 (t!37366 rules!1920)))) (inv!4668 (transformation!720 (h!9175 (t!37366 rules!1920)))) e!164210))))

(declare-fun b!264370 () Bool)

(declare-fun e!164211 () Bool)

(declare-fun tp!101205 () Bool)

(assert (=> b!264370 (= e!164211 (and e!164208 tp!101205))))

(assert (=> b!263824 (= tp!101101 e!164211)))

(assert (= b!264371 b!264372))

(assert (= b!264370 b!264371))

(assert (= (and b!263824 (is-Cons!3778 (t!37366 rules!1920))) b!264370))

(declare-fun m!329891 () Bool)

(assert (=> b!264371 m!329891))

(declare-fun m!329893 () Bool)

(assert (=> b!264371 m!329893))

(declare-fun b_lambda!8201 () Bool)

(assert (= b_lambda!8199 (or (and b!263840 b_free!9807 (= (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))))) (and b!263839 b_free!9811 (= (toChars!1306 (transformation!720 (h!9175 rules!1920))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))))) (and b!264372 b_free!9835 (= (toChars!1306 (transformation!720 (h!9175 (t!37366 rules!1920)))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))))) (and b!263843 b_free!9815) (and b!264339 b_free!9831 (= (toChars!1306 (transformation!720 (rule!1305 (h!9174 (t!37365 tokens!465))))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))))) b_lambda!8201)))

(declare-fun b_lambda!8203 () Bool)

(assert (= b_lambda!8189 (or (and b!264372 b_free!9835 (= (toChars!1306 (transformation!720 (h!9175 (t!37366 rules!1920)))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))))) (and b!263839 b_free!9811 (= (toChars!1306 (transformation!720 (h!9175 rules!1920))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))))) (and b!263843 b_free!9815 (= (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))))) (and b!263840 b_free!9807) (and b!264339 b_free!9831 (= (toChars!1306 (transformation!720 (rule!1305 (h!9174 (t!37365 tokens!465))))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))))) b_lambda!8203)))

(declare-fun b_lambda!8205 () Bool)

(assert (= b_lambda!8187 (or (and b!263840 b_free!9807 (= (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))))) (and b!263839 b_free!9811 (= (toChars!1306 (transformation!720 (h!9175 rules!1920))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))))) (and b!264372 b_free!9835 (= (toChars!1306 (transformation!720 (h!9175 (t!37366 rules!1920)))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))))) (and b!263843 b_free!9815) (and b!264339 b_free!9831 (= (toChars!1306 (transformation!720 (rule!1305 (h!9174 (t!37365 tokens!465))))) (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))))) b_lambda!8205)))

(declare-fun b_lambda!8207 () Bool)

(assert (= b_lambda!8197 (or (and b!264372 b_free!9835 (= (toChars!1306 (transformation!720 (h!9175 (t!37366 rules!1920)))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))))) (and b!263839 b_free!9811 (= (toChars!1306 (transformation!720 (h!9175 rules!1920))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))))) (and b!263843 b_free!9815 (= (toChars!1306 (transformation!720 (rule!1305 (h!9174 tokens!465)))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))))) (and b!263840 b_free!9807) (and b!264339 b_free!9831 (= (toChars!1306 (transformation!720 (rule!1305 (h!9174 (t!37365 tokens!465))))) (toChars!1306 (transformation!720 (rule!1305 separatorToken!170))))) b_lambda!8207)))

(declare-fun b_lambda!8209 () Bool)

(assert (= b_lambda!8191 (or b!263829 b_lambda!8209)))

(declare-fun bs!28935 () Bool)

(declare-fun d!75968 () Bool)

(assert (= bs!28935 (and d!75968 b!263829)))

(assert (=> bs!28935 (= (dynLambda!1916 lambda!8859 (h!9174 tokens!465)) (not (isSeparator!720 (rule!1305 (h!9174 tokens!465)))))))

(assert (=> b!264009 d!75968))

(push 1)

(assert (not b!264277))

(assert (not d!75960))

(assert (not b_next!9809))

(assert (not b!264096))

(assert (not d!75846))

(assert (not b!263934))

(assert (not b!264278))

(assert (not d!75820))

(assert (not d!75922))

(assert (not bm!14267))

(assert (not b!264260))

(assert (not b!264309))

(assert (not d!75926))

(assert (not b!264252))

(assert (not b!264279))

(assert (not d!75924))

(assert (not b!264244))

(assert (not b!264317))

(assert (not b!264001))

(assert (not b!264003))

(assert (not b_lambda!8201))

(assert (not b!264295))

(assert (not d!75826))

(assert (not b_lambda!8203))

(assert tp_is_empty!1797)

(assert (not b!264356))

(assert (not bm!14278))

(assert (not d!75856))

(assert (not b!264094))

(assert (not b!264023))

(assert (not bm!14277))

(assert (not b!264266))

(assert (not b!264240))

(assert (not b!264360))

(assert (not b!264098))

(assert (not b!264091))

(assert (not b!264275))

(assert b_and!20683)

(assert (not b!264370))

(assert (not b!263919))

(assert (not b!264336))

(assert (not b!264257))

(assert (not b!263930))

(assert (not b!264256))

(assert (not d!75844))

(assert (not d!75958))

(assert (not b!264357))

(assert (not d!75966))

(assert (not b!264241))

(assert (not d!75930))

(assert (not bm!14227))

(assert (not b!264092))

(assert (not bm!14275))

(assert (not b!264025))

(assert (not d!75918))

(assert (not bm!14269))

(assert b_and!20689)

(assert (not b!264307))

(assert b_and!20677)

(assert (not b!263965))

(assert b_and!20679)

(assert (not d!75864))

(assert (not b!264324))

(assert (not d!75838))

(assert (not b!264371))

(assert b_and!20687)

(assert (not b!264000))

(assert (not b_next!9835))

(assert (not b!264264))

(assert b_and!20681)

(assert (not b!264002))

(assert (not b_next!9831))

(assert (not b!264268))

(assert (not b!264021))

(assert (not bm!14228))

(assert (not b!264274))

(assert (not b!264004))

(assert (not b!264253))

(assert (not b!264010))

(assert (not bm!14268))

(assert (not b_next!9811))

(assert (not tb!14435))

(assert (not b!264095))

(assert b_and!20621)

(assert (not b_next!9815))

(assert (not b!264249))

(assert (not b!264265))

(assert (not d!75836))

(assert (not d!75928))

(assert (not b!264319))

(assert (not b!264242))

(assert (not b_lambda!8209))

(assert (not tb!14441))

(assert b_and!20625)

(assert (not b!263974))

(assert (not b_next!9833))

(assert (not bm!14274))

(assert (not d!75860))

(assert (not d!75866))

(assert (not b!263999))

(assert (not b!263989))

(assert (not d!75942))

(assert (not b!264026))

(assert (not bm!14271))

(assert (not bm!14225))

(assert (not b!264294))

(assert (not b!263983))

(assert (not b!264359))

(assert (not b_lambda!8207))

(assert (not b!264262))

(assert (not d!75862))

(assert (not b!264020))

(assert (not b!264355))

(assert (not b_next!9813))

(assert (not bm!14273))

(assert (not d!75916))

(assert (not b!263937))

(assert (not b!263932))

(assert (not b!264361))

(assert (not b!264338))

(assert (not b!264248))

(assert b_and!20617)

(assert (not b!263935))

(assert (not b!264238))

(assert (not b_next!9805))

(assert (not b!263939))

(assert (not b_lambda!8205))

(assert (not b_next!9807))

(assert (not b!264281))

(assert (not bm!14272))

(assert (not b!264236))

(assert (not b!264351))

(assert (not b_next!9829))

(assert (not d!75858))

(assert b_and!20685)

(assert (not d!75940))

(assert (not d!75842))

(assert (not d!75936))

(assert (not b!263984))

(assert (not d!75920))

(assert (not b!264325))

(assert (not d!75938))

(assert (not d!75872))

(assert (not b!263992))

(assert (not d!75850))

(assert (not b!264352))

(assert (not b!264337))

(assert (not bm!14266))

(assert (not b!264312))

(assert (not b!264353))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20683)

(assert (not b_next!9811))

(assert (not b_next!9813))

(assert b_and!20617)

(assert (not b_next!9809))

(assert b_and!20689)

(assert b_and!20677)

(assert b_and!20679)

(assert b_and!20687)

(assert (not b_next!9835))

(assert b_and!20681)

(assert (not b_next!9831))

(assert b_and!20621)

(assert (not b_next!9815))

(assert b_and!20625)

(assert (not b_next!9833))

(assert (not b_next!9805))

(assert (not b_next!9807))

(assert (not b_next!9829))

(assert b_and!20685)

(check-sat)

(pop 1)

