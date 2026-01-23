; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!308224 () Bool)

(assert start!308224)

(declare-fun b!3307131 () Bool)

(declare-fun b_free!86957 () Bool)

(declare-fun b_next!87661 () Bool)

(assert (=> b!3307131 (= b_free!86957 (not b_next!87661))))

(declare-fun tp!1035612 () Bool)

(declare-fun b_and!226731 () Bool)

(assert (=> b!3307131 (= tp!1035612 b_and!226731)))

(declare-fun b_free!86959 () Bool)

(declare-fun b_next!87663 () Bool)

(assert (=> b!3307131 (= b_free!86959 (not b_next!87663))))

(declare-fun tp!1035613 () Bool)

(declare-fun b_and!226733 () Bool)

(assert (=> b!3307131 (= tp!1035613 b_and!226733)))

(declare-fun b!3307140 () Bool)

(declare-fun b_free!86961 () Bool)

(declare-fun b_next!87665 () Bool)

(assert (=> b!3307140 (= b_free!86961 (not b_next!87665))))

(declare-fun tp!1035605 () Bool)

(declare-fun b_and!226735 () Bool)

(assert (=> b!3307140 (= tp!1035605 b_and!226735)))

(declare-fun b_free!86963 () Bool)

(declare-fun b_next!87667 () Bool)

(assert (=> b!3307140 (= b_free!86963 (not b_next!87667))))

(declare-fun tp!1035606 () Bool)

(declare-fun b_and!226737 () Bool)

(assert (=> b!3307140 (= tp!1035606 b_and!226737)))

(declare-fun b!3307139 () Bool)

(declare-fun b_free!86965 () Bool)

(declare-fun b_next!87669 () Bool)

(assert (=> b!3307139 (= b_free!86965 (not b_next!87669))))

(declare-fun tp!1035608 () Bool)

(declare-fun b_and!226739 () Bool)

(assert (=> b!3307139 (= tp!1035608 b_and!226739)))

(declare-fun b_free!86967 () Bool)

(declare-fun b_next!87671 () Bool)

(assert (=> b!3307139 (= b_free!86967 (not b_next!87671))))

(declare-fun tp!1035604 () Bool)

(declare-fun b_and!226741 () Bool)

(assert (=> b!3307139 (= tp!1035604 b_and!226741)))

(declare-datatypes ((C!20302 0))(
  ( (C!20303 (val!12199 Int)) )
))
(declare-datatypes ((Regex!10058 0))(
  ( (ElementMatch!10058 (c!561022 C!20302)) (Concat!15587 (regOne!20628 Regex!10058) (regTwo!20628 Regex!10058)) (EmptyExpr!10058) (Star!10058 (reg!10387 Regex!10058)) (EmptyLang!10058) (Union!10058 (regOne!20629 Regex!10058) (regTwo!20629 Regex!10058)) )
))
(declare-datatypes ((List!36640 0))(
  ( (Nil!36516) (Cons!36516 (h!41936 (_ BitVec 16)) (t!253801 List!36640)) )
))
(declare-datatypes ((TokenValue!5529 0))(
  ( (FloatLiteralValue!11058 (text!39148 List!36640)) (TokenValueExt!5528 (__x!23275 Int)) (Broken!27645 (value!171457 List!36640)) (Object!5652) (End!5529) (Def!5529) (Underscore!5529) (Match!5529) (Else!5529) (Error!5529) (Case!5529) (If!5529) (Extends!5529) (Abstract!5529) (Class!5529) (Val!5529) (DelimiterValue!11058 (del!5589 List!36640)) (KeywordValue!5535 (value!171458 List!36640)) (CommentValue!11058 (value!171459 List!36640)) (WhitespaceValue!11058 (value!171460 List!36640)) (IndentationValue!5529 (value!171461 List!36640)) (String!40980) (Int32!5529) (Broken!27646 (value!171462 List!36640)) (Boolean!5530) (Unit!51446) (OperatorValue!5532 (op!5589 List!36640)) (IdentifierValue!11058 (value!171463 List!36640)) (IdentifierValue!11059 (value!171464 List!36640)) (WhitespaceValue!11059 (value!171465 List!36640)) (True!11058) (False!11058) (Broken!27647 (value!171466 List!36640)) (Broken!27648 (value!171467 List!36640)) (True!11059) (RightBrace!5529) (RightBracket!5529) (Colon!5529) (Null!5529) (Comma!5529) (LeftBracket!5529) (False!11059) (LeftBrace!5529) (ImaginaryLiteralValue!5529 (text!39149 List!36640)) (StringLiteralValue!16587 (value!171468 List!36640)) (EOFValue!5529 (value!171469 List!36640)) (IdentValue!5529 (value!171470 List!36640)) (DelimiterValue!11059 (value!171471 List!36640)) (DedentValue!5529 (value!171472 List!36640)) (NewLineValue!5529 (value!171473 List!36640)) (IntegerValue!16587 (value!171474 (_ BitVec 32)) (text!39150 List!36640)) (IntegerValue!16588 (value!171475 Int) (text!39151 List!36640)) (Times!5529) (Or!5529) (Equal!5529) (Minus!5529) (Broken!27649 (value!171476 List!36640)) (And!5529) (Div!5529) (LessEqual!5529) (Mod!5529) (Concat!15588) (Not!5529) (Plus!5529) (SpaceValue!5529 (value!171477 List!36640)) (IntegerValue!16589 (value!171478 Int) (text!39152 List!36640)) (StringLiteralValue!16588 (text!39153 List!36640)) (FloatLiteralValue!11059 (text!39154 List!36640)) (BytesLiteralValue!5529 (value!171479 List!36640)) (CommentValue!11059 (value!171480 List!36640)) (StringLiteralValue!16589 (value!171481 List!36640)) (ErrorTokenValue!5529 (msg!5590 List!36640)) )
))
(declare-datatypes ((List!36641 0))(
  ( (Nil!36517) (Cons!36517 (h!41937 C!20302) (t!253802 List!36641)) )
))
(declare-datatypes ((IArray!21951 0))(
  ( (IArray!21952 (innerList!11033 List!36641)) )
))
(declare-datatypes ((Conc!10973 0))(
  ( (Node!10973 (left!28445 Conc!10973) (right!28775 Conc!10973) (csize!22176 Int) (cheight!11184 Int)) (Leaf!17234 (xs!14111 IArray!21951) (csize!22177 Int)) (Empty!10973) )
))
(declare-datatypes ((BalanceConc!21560 0))(
  ( (BalanceConc!21561 (c!561023 Conc!10973)) )
))
(declare-datatypes ((String!40981 0))(
  ( (String!40982 (value!171482 String)) )
))
(declare-datatypes ((TokenValueInjection!10486 0))(
  ( (TokenValueInjection!10487 (toValue!7443 Int) (toChars!7302 Int)) )
))
(declare-datatypes ((Rule!10398 0))(
  ( (Rule!10399 (regex!5299 Regex!10058) (tag!5845 String!40981) (isSeparator!5299 Bool) (transformation!5299 TokenValueInjection!10486)) )
))
(declare-datatypes ((Token!9964 0))(
  ( (Token!9965 (value!171483 TokenValue!5529) (rule!7803 Rule!10398) (size!27590 Int) (originalCharacters!6013 List!36641)) )
))
(declare-fun separatorToken!241 () Token!9964)

(declare-fun e!2056724 () Bool)

(declare-fun tp!1035614 () Bool)

(declare-fun b!3307119 () Bool)

(declare-fun e!2056718 () Bool)

(declare-fun inv!49491 (String!40981) Bool)

(declare-fun inv!49494 (TokenValueInjection!10486) Bool)

(assert (=> b!3307119 (= e!2056724 (and tp!1035614 (inv!49491 (tag!5845 (rule!7803 separatorToken!241))) (inv!49494 (transformation!5299 (rule!7803 separatorToken!241))) e!2056718))))

(declare-fun b!3307120 () Bool)

(declare-datatypes ((List!36642 0))(
  ( (Nil!36518) (Cons!36518 (h!41938 Token!9964) (t!253803 List!36642)) )
))
(declare-fun tokens!494 () List!36642)

(declare-fun tp!1035603 () Bool)

(declare-fun e!2056722 () Bool)

(declare-fun e!2056721 () Bool)

(declare-fun inv!49495 (Token!9964) Bool)

(assert (=> b!3307120 (= e!2056722 (and (inv!49495 (h!41938 tokens!494)) e!2056721 tp!1035603))))

(declare-fun b!3307121 () Bool)

(declare-fun res!1341215 () Bool)

(declare-fun e!2056727 () Bool)

(assert (=> b!3307121 (=> (not res!1341215) (not e!2056727))))

(declare-fun lambda!119090 () Int)

(declare-fun forall!7578 (List!36642 Int) Bool)

(assert (=> b!3307121 (= res!1341215 (forall!7578 tokens!494 lambda!119090))))

(declare-fun b!3307122 () Bool)

(declare-fun res!1341218 () Bool)

(declare-fun e!2056719 () Bool)

(assert (=> b!3307122 (=> res!1341218 e!2056719)))

(declare-fun lt!1121056 () List!36641)

(declare-datatypes ((LexerInterface!4888 0))(
  ( (LexerInterfaceExt!4885 (__x!23276 Int)) (Lexer!4886) )
))
(declare-fun thiss!18206 () LexerInterface!4888)

(declare-datatypes ((List!36643 0))(
  ( (Nil!36519) (Cons!36519 (h!41939 Rule!10398) (t!253804 List!36643)) )
))
(declare-fun rules!2135 () List!36643)

(declare-datatypes ((IArray!21953 0))(
  ( (IArray!21954 (innerList!11034 List!36642)) )
))
(declare-datatypes ((Conc!10974 0))(
  ( (Node!10974 (left!28446 Conc!10974) (right!28776 Conc!10974) (csize!22178 Int) (cheight!11185 Int)) (Leaf!17235 (xs!14112 IArray!21953) (csize!22179 Int)) (Empty!10974) )
))
(declare-datatypes ((BalanceConc!21562 0))(
  ( (BalanceConc!21563 (c!561024 Conc!10974)) )
))
(declare-fun isEmpty!20660 (BalanceConc!21562) Bool)

(declare-datatypes ((tuple2!36010 0))(
  ( (tuple2!36011 (_1!21139 BalanceConc!21562) (_2!21139 BalanceConc!21560)) )
))
(declare-fun lex!2214 (LexerInterface!4888 List!36643 BalanceConc!21560) tuple2!36010)

(declare-fun seqFromList!3653 (List!36641) BalanceConc!21560)

(assert (=> b!3307122 (= res!1341218 (isEmpty!20660 (_1!21139 (lex!2214 thiss!18206 rules!2135 (seqFromList!3653 lt!1121056)))))))

(declare-fun b!3307123 () Bool)

(declare-fun e!2056730 () Bool)

(declare-fun tp!1035607 () Bool)

(declare-fun inv!21 (TokenValue!5529) Bool)

(assert (=> b!3307123 (= e!2056730 (and (inv!21 (value!171483 separatorToken!241)) e!2056724 tp!1035607))))

(declare-fun b!3307124 () Bool)

(declare-fun res!1341214 () Bool)

(assert (=> b!3307124 (=> (not res!1341214) (not e!2056727))))

(assert (=> b!3307124 (= res!1341214 (isSeparator!5299 (rule!7803 separatorToken!241)))))

(declare-fun res!1341223 () Bool)

(assert (=> start!308224 (=> (not res!1341223) (not e!2056727))))

(assert (=> start!308224 (= res!1341223 (is-Lexer!4886 thiss!18206))))

(assert (=> start!308224 e!2056727))

(assert (=> start!308224 true))

(declare-fun e!2056731 () Bool)

(assert (=> start!308224 e!2056731))

(assert (=> start!308224 e!2056722))

(assert (=> start!308224 (and (inv!49495 separatorToken!241) e!2056730)))

(declare-fun b!3307125 () Bool)

(declare-fun res!1341225 () Bool)

(assert (=> b!3307125 (=> (not res!1341225) (not e!2056727))))

(declare-fun rulesProduceIndividualToken!2380 (LexerInterface!4888 List!36643 Token!9964) Bool)

(assert (=> b!3307125 (= res!1341225 (rulesProduceIndividualToken!2380 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3307126 () Bool)

(assert (=> b!3307126 (= e!2056719 (not (isSeparator!5299 (rule!7803 (h!41938 tokens!494)))))))

(declare-datatypes ((Unit!51447 0))(
  ( (Unit!51448) )
))
(declare-fun lt!1121053 () Unit!51447)

(declare-fun forallContained!1250 (List!36642 Int Token!9964) Unit!51447)

(assert (=> b!3307126 (= lt!1121053 (forallContained!1250 tokens!494 lambda!119090 (h!41938 (t!253803 tokens!494))))))

(declare-fun lt!1121052 () Unit!51447)

(assert (=> b!3307126 (= lt!1121052 (forallContained!1250 tokens!494 lambda!119090 (h!41938 tokens!494)))))

(declare-fun tp!1035610 () Bool)

(declare-fun b!3307127 () Bool)

(declare-fun e!2056720 () Bool)

(assert (=> b!3307127 (= e!2056721 (and (inv!21 (value!171483 (h!41938 tokens!494))) e!2056720 tp!1035610))))

(declare-fun b!3307128 () Bool)

(declare-fun res!1341219 () Bool)

(assert (=> b!3307128 (=> (not res!1341219) (not e!2056727))))

(declare-fun rulesInvariant!4285 (LexerInterface!4888 List!36643) Bool)

(assert (=> b!3307128 (= res!1341219 (rulesInvariant!4285 thiss!18206 rules!2135))))

(declare-fun b!3307129 () Bool)

(declare-fun res!1341221 () Bool)

(assert (=> b!3307129 (=> (not res!1341221) (not e!2056727))))

(assert (=> b!3307129 (= res!1341221 (and (not (is-Nil!36518 tokens!494)) (not (is-Nil!36518 (t!253803 tokens!494)))))))

(declare-fun e!2056726 () Bool)

(declare-fun b!3307130 () Bool)

(declare-fun tp!1035611 () Bool)

(declare-fun e!2056725 () Bool)

(assert (=> b!3307130 (= e!2056725 (and tp!1035611 (inv!49491 (tag!5845 (h!41939 rules!2135))) (inv!49494 (transformation!5299 (h!41939 rules!2135))) e!2056726))))

(declare-fun e!2056728 () Bool)

(assert (=> b!3307131 (= e!2056728 (and tp!1035612 tp!1035613))))

(declare-fun b!3307132 () Bool)

(declare-fun tp!1035609 () Bool)

(assert (=> b!3307132 (= e!2056720 (and tp!1035609 (inv!49491 (tag!5845 (rule!7803 (h!41938 tokens!494)))) (inv!49494 (transformation!5299 (rule!7803 (h!41938 tokens!494)))) e!2056728))))

(declare-fun b!3307133 () Bool)

(declare-fun res!1341213 () Bool)

(assert (=> b!3307133 (=> (not res!1341213) (not e!2056727))))

(declare-fun rulesProduceEachTokenIndividually!1339 (LexerInterface!4888 List!36643 BalanceConc!21562) Bool)

(declare-fun seqFromList!3654 (List!36642) BalanceConc!21562)

(assert (=> b!3307133 (= res!1341213 (rulesProduceEachTokenIndividually!1339 thiss!18206 rules!2135 (seqFromList!3654 tokens!494)))))

(declare-fun b!3307134 () Bool)

(declare-fun e!2056723 () Bool)

(assert (=> b!3307134 (= e!2056727 (not e!2056723))))

(declare-fun res!1341222 () Bool)

(assert (=> b!3307134 (=> res!1341222 e!2056723)))

(declare-fun lt!1121055 () List!36641)

(declare-fun lt!1121051 () List!36641)

(assert (=> b!3307134 (= res!1341222 (not (= lt!1121055 lt!1121051)))))

(declare-fun printList!1438 (LexerInterface!4888 List!36642) List!36641)

(assert (=> b!3307134 (= lt!1121051 (printList!1438 thiss!18206 (Cons!36518 (h!41938 tokens!494) Nil!36518)))))

(declare-fun lt!1121057 () BalanceConc!21560)

(declare-fun list!13104 (BalanceConc!21560) List!36641)

(assert (=> b!3307134 (= lt!1121055 (list!13104 lt!1121057))))

(declare-fun lt!1121054 () BalanceConc!21562)

(declare-fun printTailRec!1385 (LexerInterface!4888 BalanceConc!21562 Int BalanceConc!21560) BalanceConc!21560)

(assert (=> b!3307134 (= lt!1121057 (printTailRec!1385 thiss!18206 lt!1121054 0 (BalanceConc!21561 Empty!10973)))))

(declare-fun print!1953 (LexerInterface!4888 BalanceConc!21562) BalanceConc!21560)

(assert (=> b!3307134 (= lt!1121057 (print!1953 thiss!18206 lt!1121054))))

(declare-fun singletonSeq!2395 (Token!9964) BalanceConc!21562)

(assert (=> b!3307134 (= lt!1121054 (singletonSeq!2395 (h!41938 tokens!494)))))

(declare-fun b!3307135 () Bool)

(declare-fun res!1341220 () Bool)

(assert (=> b!3307135 (=> (not res!1341220) (not e!2056727))))

(declare-fun sepAndNonSepRulesDisjointChars!1493 (List!36643 List!36643) Bool)

(assert (=> b!3307135 (= res!1341220 (sepAndNonSepRulesDisjointChars!1493 rules!2135 rules!2135))))

(declare-fun b!3307136 () Bool)

(assert (=> b!3307136 (= e!2056723 e!2056719)))

(declare-fun res!1341217 () Bool)

(assert (=> b!3307136 (=> res!1341217 e!2056719)))

(assert (=> b!3307136 (= res!1341217 (or (not (= lt!1121051 lt!1121056)) (not (= lt!1121055 lt!1121056))))))

(declare-fun charsOf!3315 (Token!9964) BalanceConc!21560)

(assert (=> b!3307136 (= lt!1121056 (list!13104 (charsOf!3315 (h!41938 tokens!494))))))

(declare-fun b!3307137 () Bool)

(declare-fun res!1341224 () Bool)

(assert (=> b!3307137 (=> res!1341224 e!2056719)))

(assert (=> b!3307137 (= res!1341224 (not (rulesProduceIndividualToken!2380 thiss!18206 rules!2135 (h!41938 tokens!494))))))

(declare-fun b!3307138 () Bool)

(declare-fun res!1341216 () Bool)

(assert (=> b!3307138 (=> (not res!1341216) (not e!2056727))))

(declare-fun isEmpty!20661 (List!36643) Bool)

(assert (=> b!3307138 (= res!1341216 (not (isEmpty!20661 rules!2135)))))

(assert (=> b!3307139 (= e!2056726 (and tp!1035608 tp!1035604))))

(assert (=> b!3307140 (= e!2056718 (and tp!1035605 tp!1035606))))

(declare-fun b!3307141 () Bool)

(declare-fun tp!1035615 () Bool)

(assert (=> b!3307141 (= e!2056731 (and e!2056725 tp!1035615))))

(assert (= (and start!308224 res!1341223) b!3307138))

(assert (= (and b!3307138 res!1341216) b!3307128))

(assert (= (and b!3307128 res!1341219) b!3307133))

(assert (= (and b!3307133 res!1341213) b!3307125))

(assert (= (and b!3307125 res!1341225) b!3307124))

(assert (= (and b!3307124 res!1341214) b!3307121))

(assert (= (and b!3307121 res!1341215) b!3307135))

(assert (= (and b!3307135 res!1341220) b!3307129))

(assert (= (and b!3307129 res!1341221) b!3307134))

(assert (= (and b!3307134 (not res!1341222)) b!3307136))

(assert (= (and b!3307136 (not res!1341217)) b!3307137))

(assert (= (and b!3307137 (not res!1341224)) b!3307122))

(assert (= (and b!3307122 (not res!1341218)) b!3307126))

(assert (= b!3307130 b!3307139))

(assert (= b!3307141 b!3307130))

(assert (= (and start!308224 (is-Cons!36519 rules!2135)) b!3307141))

(assert (= b!3307132 b!3307131))

(assert (= b!3307127 b!3307132))

(assert (= b!3307120 b!3307127))

(assert (= (and start!308224 (is-Cons!36518 tokens!494)) b!3307120))

(assert (= b!3307119 b!3307140))

(assert (= b!3307123 b!3307119))

(assert (= start!308224 b!3307123))

(declare-fun m!3633867 () Bool)

(assert (=> b!3307132 m!3633867))

(declare-fun m!3633869 () Bool)

(assert (=> b!3307132 m!3633869))

(declare-fun m!3633871 () Bool)

(assert (=> b!3307123 m!3633871))

(declare-fun m!3633873 () Bool)

(assert (=> b!3307126 m!3633873))

(declare-fun m!3633875 () Bool)

(assert (=> b!3307126 m!3633875))

(declare-fun m!3633877 () Bool)

(assert (=> b!3307125 m!3633877))

(declare-fun m!3633879 () Bool)

(assert (=> b!3307121 m!3633879))

(declare-fun m!3633881 () Bool)

(assert (=> b!3307134 m!3633881))

(declare-fun m!3633883 () Bool)

(assert (=> b!3307134 m!3633883))

(declare-fun m!3633885 () Bool)

(assert (=> b!3307134 m!3633885))

(declare-fun m!3633887 () Bool)

(assert (=> b!3307134 m!3633887))

(declare-fun m!3633889 () Bool)

(assert (=> b!3307134 m!3633889))

(declare-fun m!3633891 () Bool)

(assert (=> b!3307120 m!3633891))

(declare-fun m!3633893 () Bool)

(assert (=> b!3307127 m!3633893))

(declare-fun m!3633895 () Bool)

(assert (=> b!3307136 m!3633895))

(assert (=> b!3307136 m!3633895))

(declare-fun m!3633897 () Bool)

(assert (=> b!3307136 m!3633897))

(declare-fun m!3633899 () Bool)

(assert (=> start!308224 m!3633899))

(declare-fun m!3633901 () Bool)

(assert (=> b!3307135 m!3633901))

(declare-fun m!3633903 () Bool)

(assert (=> b!3307119 m!3633903))

(declare-fun m!3633905 () Bool)

(assert (=> b!3307119 m!3633905))

(declare-fun m!3633907 () Bool)

(assert (=> b!3307130 m!3633907))

(declare-fun m!3633909 () Bool)

(assert (=> b!3307130 m!3633909))

(declare-fun m!3633911 () Bool)

(assert (=> b!3307138 m!3633911))

(declare-fun m!3633913 () Bool)

(assert (=> b!3307122 m!3633913))

(assert (=> b!3307122 m!3633913))

(declare-fun m!3633915 () Bool)

(assert (=> b!3307122 m!3633915))

(declare-fun m!3633917 () Bool)

(assert (=> b!3307122 m!3633917))

(declare-fun m!3633919 () Bool)

(assert (=> b!3307137 m!3633919))

(declare-fun m!3633921 () Bool)

(assert (=> b!3307133 m!3633921))

(assert (=> b!3307133 m!3633921))

(declare-fun m!3633923 () Bool)

(assert (=> b!3307133 m!3633923))

(declare-fun m!3633925 () Bool)

(assert (=> b!3307128 m!3633925))

(push 1)

(assert b_and!226739)

(assert b_and!226733)

(assert (not b_next!87669))

(assert b_and!226737)

(assert (not b!3307127))

(assert (not start!308224))

(assert b_and!226741)

(assert (not b!3307123))

(assert (not b!3307137))

(assert (not b!3307126))

(assert b_and!226735)

(assert (not b!3307121))

(assert (not b!3307132))

(assert (not b_next!87665))

(assert (not b_next!87663))

(assert (not b!3307135))

(assert (not b_next!87667))

(assert (not b_next!87661))

(assert (not b!3307125))

(assert b_and!226731)

(assert (not b!3307136))

(assert (not b!3307130))

(assert (not b!3307138))

(assert (not b_next!87671))

(assert (not b!3307134))

(assert (not b!3307120))

(assert (not b!3307122))

(assert (not b!3307133))

(assert (not b!3307141))

(assert (not b!3307128))

(assert (not b!3307119))

(check-sat)

(pop 1)

(push 1)

(assert b_and!226739)

(assert (not b_next!87665))

(assert (not b_next!87663))

(assert b_and!226733)

(assert (not b_next!87669))

(assert b_and!226737)

(assert b_and!226731)

(assert (not b_next!87671))

(assert b_and!226741)

(assert b_and!226735)

(assert (not b_next!87667))

(assert (not b_next!87661))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!926479 () Bool)

(assert (=> d!926479 (= (inv!49491 (tag!5845 (rule!7803 separatorToken!241))) (= (mod (str.len (value!171482 (tag!5845 (rule!7803 separatorToken!241)))) 2) 0))))

(assert (=> b!3307119 d!926479))

(declare-fun d!926481 () Bool)

(declare-fun res!1341274 () Bool)

(declare-fun e!2056791 () Bool)

(assert (=> d!926481 (=> (not res!1341274) (not e!2056791))))

(declare-fun semiInverseModEq!2194 (Int Int) Bool)

(assert (=> d!926481 (= res!1341274 (semiInverseModEq!2194 (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))) (toValue!7443 (transformation!5299 (rule!7803 separatorToken!241)))))))

(assert (=> d!926481 (= (inv!49494 (transformation!5299 (rule!7803 separatorToken!241))) e!2056791)))

(declare-fun b!3307213 () Bool)

(declare-fun equivClasses!2093 (Int Int) Bool)

(assert (=> b!3307213 (= e!2056791 (equivClasses!2093 (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))) (toValue!7443 (transformation!5299 (rule!7803 separatorToken!241)))))))

(assert (= (and d!926481 res!1341274) b!3307213))

(declare-fun m!3633987 () Bool)

(assert (=> d!926481 m!3633987))

(declare-fun m!3633989 () Bool)

(assert (=> b!3307213 m!3633989))

(assert (=> b!3307119 d!926481))

(declare-fun d!926483 () Bool)

(assert (=> d!926483 (= (inv!49491 (tag!5845 (h!41939 rules!2135))) (= (mod (str.len (value!171482 (tag!5845 (h!41939 rules!2135)))) 2) 0))))

(assert (=> b!3307130 d!926483))

(declare-fun d!926485 () Bool)

(declare-fun res!1341275 () Bool)

(declare-fun e!2056792 () Bool)

(assert (=> d!926485 (=> (not res!1341275) (not e!2056792))))

(assert (=> d!926485 (= res!1341275 (semiInverseModEq!2194 (toChars!7302 (transformation!5299 (h!41939 rules!2135))) (toValue!7443 (transformation!5299 (h!41939 rules!2135)))))))

(assert (=> d!926485 (= (inv!49494 (transformation!5299 (h!41939 rules!2135))) e!2056792)))

(declare-fun b!3307214 () Bool)

(assert (=> b!3307214 (= e!2056792 (equivClasses!2093 (toChars!7302 (transformation!5299 (h!41939 rules!2135))) (toValue!7443 (transformation!5299 (h!41939 rules!2135)))))))

(assert (= (and d!926485 res!1341275) b!3307214))

(declare-fun m!3633991 () Bool)

(assert (=> d!926485 m!3633991))

(declare-fun m!3633993 () Bool)

(assert (=> b!3307214 m!3633993))

(assert (=> b!3307130 d!926485))

(declare-fun d!926487 () Bool)

(declare-fun res!1341280 () Bool)

(declare-fun e!2056795 () Bool)

(assert (=> d!926487 (=> (not res!1341280) (not e!2056795))))

(declare-fun rulesValid!1954 (LexerInterface!4888 List!36643) Bool)

(assert (=> d!926487 (= res!1341280 (rulesValid!1954 thiss!18206 rules!2135))))

(assert (=> d!926487 (= (rulesInvariant!4285 thiss!18206 rules!2135) e!2056795)))

(declare-fun b!3307217 () Bool)

(declare-datatypes ((List!36648 0))(
  ( (Nil!36524) (Cons!36524 (h!41944 String!40981) (t!253849 List!36648)) )
))
(declare-fun noDuplicateTag!1950 (LexerInterface!4888 List!36643 List!36648) Bool)

(assert (=> b!3307217 (= e!2056795 (noDuplicateTag!1950 thiss!18206 rules!2135 Nil!36524))))

(assert (= (and d!926487 res!1341280) b!3307217))

(declare-fun m!3633995 () Bool)

(assert (=> d!926487 m!3633995))

(declare-fun m!3633997 () Bool)

(assert (=> b!3307217 m!3633997))

(assert (=> b!3307128 d!926487))

(declare-fun d!926489 () Bool)

(assert (=> d!926489 (= (inv!49491 (tag!5845 (rule!7803 (h!41938 tokens!494)))) (= (mod (str.len (value!171482 (tag!5845 (rule!7803 (h!41938 tokens!494))))) 2) 0))))

(assert (=> b!3307132 d!926489))

(declare-fun d!926491 () Bool)

(declare-fun res!1341281 () Bool)

(declare-fun e!2056796 () Bool)

(assert (=> d!926491 (=> (not res!1341281) (not e!2056796))))

(assert (=> d!926491 (= res!1341281 (semiInverseModEq!2194 (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))) (toValue!7443 (transformation!5299 (rule!7803 (h!41938 tokens!494))))))))

(assert (=> d!926491 (= (inv!49494 (transformation!5299 (rule!7803 (h!41938 tokens!494)))) e!2056796)))

(declare-fun b!3307218 () Bool)

(assert (=> b!3307218 (= e!2056796 (equivClasses!2093 (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))) (toValue!7443 (transformation!5299 (rule!7803 (h!41938 tokens!494))))))))

(assert (= (and d!926491 res!1341281) b!3307218))

(declare-fun m!3633999 () Bool)

(assert (=> d!926491 m!3633999))

(declare-fun m!3634001 () Bool)

(assert (=> b!3307218 m!3634001))

(assert (=> b!3307132 d!926491))

(declare-fun bs!549202 () Bool)

(declare-fun d!926493 () Bool)

(assert (= bs!549202 (and d!926493 b!3307121)))

(declare-fun lambda!119102 () Int)

(assert (=> bs!549202 (not (= lambda!119102 lambda!119090))))

(declare-fun b!3307294 () Bool)

(declare-fun e!2056851 () Bool)

(assert (=> b!3307294 (= e!2056851 true)))

(declare-fun b!3307293 () Bool)

(declare-fun e!2056850 () Bool)

(assert (=> b!3307293 (= e!2056850 e!2056851)))

(declare-fun b!3307292 () Bool)

(declare-fun e!2056849 () Bool)

(assert (=> b!3307292 (= e!2056849 e!2056850)))

(assert (=> d!926493 e!2056849))

(assert (= b!3307293 b!3307294))

(assert (= b!3307292 b!3307293))

(assert (= (and d!926493 (is-Cons!36519 rules!2135)) b!3307292))

(declare-fun order!18987 () Int)

(declare-fun order!18989 () Int)

(declare-fun dynLambda!14982 (Int Int) Int)

(declare-fun dynLambda!14983 (Int Int) Int)

(assert (=> b!3307294 (< (dynLambda!14982 order!18987 (toValue!7443 (transformation!5299 (h!41939 rules!2135)))) (dynLambda!14983 order!18989 lambda!119102))))

(declare-fun order!18991 () Int)

(declare-fun dynLambda!14984 (Int Int) Int)

(assert (=> b!3307294 (< (dynLambda!14984 order!18991 (toChars!7302 (transformation!5299 (h!41939 rules!2135)))) (dynLambda!14983 order!18989 lambda!119102))))

(assert (=> d!926493 true))

(declare-fun e!2056842 () Bool)

(assert (=> d!926493 e!2056842))

(declare-fun res!1341320 () Bool)

(assert (=> d!926493 (=> (not res!1341320) (not e!2056842))))

(declare-fun lt!1121097 () Bool)

(declare-fun list!13106 (BalanceConc!21562) List!36642)

(assert (=> d!926493 (= res!1341320 (= lt!1121097 (forall!7578 (list!13106 (seqFromList!3654 tokens!494)) lambda!119102)))))

(declare-fun forall!7580 (BalanceConc!21562 Int) Bool)

(assert (=> d!926493 (= lt!1121097 (forall!7580 (seqFromList!3654 tokens!494) lambda!119102))))

(assert (=> d!926493 (not (isEmpty!20661 rules!2135))))

(assert (=> d!926493 (= (rulesProduceEachTokenIndividually!1339 thiss!18206 rules!2135 (seqFromList!3654 tokens!494)) lt!1121097)))

(declare-fun b!3307283 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1766 (LexerInterface!4888 List!36643 List!36642) Bool)

(assert (=> b!3307283 (= e!2056842 (= lt!1121097 (rulesProduceEachTokenIndividuallyList!1766 thiss!18206 rules!2135 (list!13106 (seqFromList!3654 tokens!494)))))))

(assert (= (and d!926493 res!1341320) b!3307283))

(assert (=> d!926493 m!3633921))

(declare-fun m!3634083 () Bool)

(assert (=> d!926493 m!3634083))

(assert (=> d!926493 m!3634083))

(declare-fun m!3634085 () Bool)

(assert (=> d!926493 m!3634085))

(assert (=> d!926493 m!3633921))

(declare-fun m!3634087 () Bool)

(assert (=> d!926493 m!3634087))

(assert (=> d!926493 m!3633911))

(assert (=> b!3307283 m!3633921))

(assert (=> b!3307283 m!3634083))

(assert (=> b!3307283 m!3634083))

(declare-fun m!3634089 () Bool)

(assert (=> b!3307283 m!3634089))

(assert (=> b!3307133 d!926493))

(declare-fun d!926525 () Bool)

(declare-fun fromListB!1607 (List!36642) BalanceConc!21562)

(assert (=> d!926525 (= (seqFromList!3654 tokens!494) (fromListB!1607 tokens!494))))

(declare-fun bs!549203 () Bool)

(assert (= bs!549203 d!926525))

(declare-fun m!3634091 () Bool)

(assert (=> bs!549203 m!3634091))

(assert (=> b!3307133 d!926525))

(declare-fun d!926527 () Bool)

(declare-fun lt!1121100 () Bool)

(declare-fun isEmpty!20664 (List!36642) Bool)

(assert (=> d!926527 (= lt!1121100 (isEmpty!20664 (list!13106 (_1!21139 (lex!2214 thiss!18206 rules!2135 (seqFromList!3653 lt!1121056))))))))

(declare-fun isEmpty!20665 (Conc!10974) Bool)

(assert (=> d!926527 (= lt!1121100 (isEmpty!20665 (c!561024 (_1!21139 (lex!2214 thiss!18206 rules!2135 (seqFromList!3653 lt!1121056))))))))

(assert (=> d!926527 (= (isEmpty!20660 (_1!21139 (lex!2214 thiss!18206 rules!2135 (seqFromList!3653 lt!1121056)))) lt!1121100)))

(declare-fun bs!549204 () Bool)

(assert (= bs!549204 d!926527))

(declare-fun m!3634093 () Bool)

(assert (=> bs!549204 m!3634093))

(assert (=> bs!549204 m!3634093))

(declare-fun m!3634095 () Bool)

(assert (=> bs!549204 m!3634095))

(declare-fun m!3634097 () Bool)

(assert (=> bs!549204 m!3634097))

(assert (=> b!3307122 d!926527))

(declare-fun d!926529 () Bool)

(declare-fun e!2056870 () Bool)

(assert (=> d!926529 e!2056870))

(declare-fun res!1341338 () Bool)

(assert (=> d!926529 (=> (not res!1341338) (not e!2056870))))

(declare-fun e!2056871 () Bool)

(assert (=> d!926529 (= res!1341338 e!2056871)))

(declare-fun c!561045 () Bool)

(declare-fun lt!1121126 () tuple2!36010)

(declare-fun size!27592 (BalanceConc!21562) Int)

(assert (=> d!926529 (= c!561045 (> (size!27592 (_1!21139 lt!1121126)) 0))))

(declare-fun lexTailRecV2!968 (LexerInterface!4888 List!36643 BalanceConc!21560 BalanceConc!21560 BalanceConc!21560 BalanceConc!21562) tuple2!36010)

(assert (=> d!926529 (= lt!1121126 (lexTailRecV2!968 thiss!18206 rules!2135 (seqFromList!3653 lt!1121056) (BalanceConc!21561 Empty!10973) (seqFromList!3653 lt!1121056) (BalanceConc!21563 Empty!10974)))))

(assert (=> d!926529 (= (lex!2214 thiss!18206 rules!2135 (seqFromList!3653 lt!1121056)) lt!1121126)))

(declare-fun b!3307323 () Bool)

(declare-datatypes ((tuple2!36014 0))(
  ( (tuple2!36015 (_1!21141 List!36642) (_2!21141 List!36641)) )
))
(declare-fun lexList!1358 (LexerInterface!4888 List!36643 List!36641) tuple2!36014)

(assert (=> b!3307323 (= e!2056870 (= (list!13104 (_2!21139 lt!1121126)) (_2!21141 (lexList!1358 thiss!18206 rules!2135 (list!13104 (seqFromList!3653 lt!1121056))))))))

(declare-fun b!3307324 () Bool)

(declare-fun res!1341337 () Bool)

(assert (=> b!3307324 (=> (not res!1341337) (not e!2056870))))

(assert (=> b!3307324 (= res!1341337 (= (list!13106 (_1!21139 lt!1121126)) (_1!21141 (lexList!1358 thiss!18206 rules!2135 (list!13104 (seqFromList!3653 lt!1121056))))))))

(declare-fun b!3307325 () Bool)

(assert (=> b!3307325 (= e!2056871 (= (_2!21139 lt!1121126) (seqFromList!3653 lt!1121056)))))

(declare-fun b!3307326 () Bool)

(declare-fun e!2056872 () Bool)

(assert (=> b!3307326 (= e!2056871 e!2056872)))

(declare-fun res!1341339 () Bool)

(declare-fun size!27593 (BalanceConc!21560) Int)

(assert (=> b!3307326 (= res!1341339 (< (size!27593 (_2!21139 lt!1121126)) (size!27593 (seqFromList!3653 lt!1121056))))))

(assert (=> b!3307326 (=> (not res!1341339) (not e!2056872))))

(declare-fun b!3307327 () Bool)

(assert (=> b!3307327 (= e!2056872 (not (isEmpty!20660 (_1!21139 lt!1121126))))))

(assert (= (and d!926529 c!561045) b!3307326))

(assert (= (and d!926529 (not c!561045)) b!3307325))

(assert (= (and b!3307326 res!1341339) b!3307327))

(assert (= (and d!926529 res!1341338) b!3307324))

(assert (= (and b!3307324 res!1341337) b!3307323))

(declare-fun m!3634159 () Bool)

(assert (=> b!3307323 m!3634159))

(assert (=> b!3307323 m!3633913))

(declare-fun m!3634161 () Bool)

(assert (=> b!3307323 m!3634161))

(assert (=> b!3307323 m!3634161))

(declare-fun m!3634163 () Bool)

(assert (=> b!3307323 m!3634163))

(declare-fun m!3634165 () Bool)

(assert (=> b!3307324 m!3634165))

(assert (=> b!3307324 m!3633913))

(assert (=> b!3307324 m!3634161))

(assert (=> b!3307324 m!3634161))

(assert (=> b!3307324 m!3634163))

(declare-fun m!3634167 () Bool)

(assert (=> b!3307327 m!3634167))

(declare-fun m!3634169 () Bool)

(assert (=> b!3307326 m!3634169))

(assert (=> b!3307326 m!3633913))

(declare-fun m!3634171 () Bool)

(assert (=> b!3307326 m!3634171))

(declare-fun m!3634173 () Bool)

(assert (=> d!926529 m!3634173))

(assert (=> d!926529 m!3633913))

(assert (=> d!926529 m!3633913))

(declare-fun m!3634175 () Bool)

(assert (=> d!926529 m!3634175))

(assert (=> b!3307122 d!926529))

(declare-fun d!926541 () Bool)

(declare-fun fromListB!1608 (List!36641) BalanceConc!21560)

(assert (=> d!926541 (= (seqFromList!3653 lt!1121056) (fromListB!1608 lt!1121056))))

(declare-fun bs!549205 () Bool)

(assert (= bs!549205 d!926541))

(declare-fun m!3634177 () Bool)

(assert (=> bs!549205 m!3634177))

(assert (=> b!3307122 d!926541))

(declare-fun d!926543 () Bool)

(declare-fun res!1341344 () Bool)

(declare-fun e!2056875 () Bool)

(assert (=> d!926543 (=> (not res!1341344) (not e!2056875))))

(declare-fun isEmpty!20666 (List!36641) Bool)

(assert (=> d!926543 (= res!1341344 (not (isEmpty!20666 (originalCharacters!6013 (h!41938 tokens!494)))))))

(assert (=> d!926543 (= (inv!49495 (h!41938 tokens!494)) e!2056875)))

(declare-fun b!3307332 () Bool)

(declare-fun res!1341345 () Bool)

(assert (=> b!3307332 (=> (not res!1341345) (not e!2056875))))

(declare-fun dynLambda!14985 (Int TokenValue!5529) BalanceConc!21560)

(assert (=> b!3307332 (= res!1341345 (= (originalCharacters!6013 (h!41938 tokens!494)) (list!13104 (dynLambda!14985 (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))) (value!171483 (h!41938 tokens!494))))))))

(declare-fun b!3307333 () Bool)

(declare-fun size!27594 (List!36641) Int)

(assert (=> b!3307333 (= e!2056875 (= (size!27590 (h!41938 tokens!494)) (size!27594 (originalCharacters!6013 (h!41938 tokens!494)))))))

(assert (= (and d!926543 res!1341344) b!3307332))

(assert (= (and b!3307332 res!1341345) b!3307333))

(declare-fun b_lambda!92431 () Bool)

(assert (=> (not b_lambda!92431) (not b!3307332)))

(declare-fun t!253826 () Bool)

(declare-fun tb!171741 () Bool)

(assert (=> (and b!3307131 (= (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494))))) t!253826) tb!171741))

(declare-fun b!3307338 () Bool)

(declare-fun e!2056878 () Bool)

(declare-fun tp!1035660 () Bool)

(declare-fun inv!49498 (Conc!10973) Bool)

(assert (=> b!3307338 (= e!2056878 (and (inv!49498 (c!561023 (dynLambda!14985 (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))) (value!171483 (h!41938 tokens!494))))) tp!1035660))))

(declare-fun result!214592 () Bool)

(declare-fun inv!49499 (BalanceConc!21560) Bool)

(assert (=> tb!171741 (= result!214592 (and (inv!49499 (dynLambda!14985 (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))) (value!171483 (h!41938 tokens!494)))) e!2056878))))

(assert (= tb!171741 b!3307338))

(declare-fun m!3634179 () Bool)

(assert (=> b!3307338 m!3634179))

(declare-fun m!3634181 () Bool)

(assert (=> tb!171741 m!3634181))

(assert (=> b!3307332 t!253826))

(declare-fun b_and!226761 () Bool)

(assert (= b_and!226733 (and (=> t!253826 result!214592) b_and!226761)))

(declare-fun t!253830 () Bool)

(declare-fun tb!171743 () Bool)

(assert (=> (and b!3307140 (= (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494))))) t!253830) tb!171743))

(declare-fun result!214596 () Bool)

(assert (= result!214596 result!214592))

(assert (=> b!3307332 t!253830))

(declare-fun b_and!226763 () Bool)

(assert (= b_and!226737 (and (=> t!253830 result!214596) b_and!226763)))

(declare-fun t!253832 () Bool)

(declare-fun tb!171745 () Bool)

(assert (=> (and b!3307139 (= (toChars!7302 (transformation!5299 (h!41939 rules!2135))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494))))) t!253832) tb!171745))

(declare-fun result!214598 () Bool)

(assert (= result!214598 result!214592))

(assert (=> b!3307332 t!253832))

(declare-fun b_and!226765 () Bool)

(assert (= b_and!226741 (and (=> t!253832 result!214598) b_and!226765)))

(declare-fun m!3634183 () Bool)

(assert (=> d!926543 m!3634183))

(declare-fun m!3634185 () Bool)

(assert (=> b!3307332 m!3634185))

(assert (=> b!3307332 m!3634185))

(declare-fun m!3634187 () Bool)

(assert (=> b!3307332 m!3634187))

(declare-fun m!3634189 () Bool)

(assert (=> b!3307333 m!3634189))

(assert (=> b!3307120 d!926543))

(declare-fun d!926545 () Bool)

(declare-fun res!1341350 () Bool)

(declare-fun e!2056883 () Bool)

(assert (=> d!926545 (=> res!1341350 e!2056883)))

(assert (=> d!926545 (= res!1341350 (is-Nil!36518 tokens!494))))

(assert (=> d!926545 (= (forall!7578 tokens!494 lambda!119090) e!2056883)))

(declare-fun b!3307343 () Bool)

(declare-fun e!2056884 () Bool)

(assert (=> b!3307343 (= e!2056883 e!2056884)))

(declare-fun res!1341351 () Bool)

(assert (=> b!3307343 (=> (not res!1341351) (not e!2056884))))

(declare-fun dynLambda!14986 (Int Token!9964) Bool)

(assert (=> b!3307343 (= res!1341351 (dynLambda!14986 lambda!119090 (h!41938 tokens!494)))))

(declare-fun b!3307344 () Bool)

(assert (=> b!3307344 (= e!2056884 (forall!7578 (t!253803 tokens!494) lambda!119090))))

(assert (= (and d!926545 (not res!1341350)) b!3307343))

(assert (= (and b!3307343 res!1341351) b!3307344))

(declare-fun b_lambda!92433 () Bool)

(assert (=> (not b_lambda!92433) (not b!3307343)))

(declare-fun m!3634191 () Bool)

(assert (=> b!3307343 m!3634191))

(declare-fun m!3634193 () Bool)

(assert (=> b!3307344 m!3634193))

(assert (=> b!3307121 d!926545))

(declare-fun d!926547 () Bool)

(declare-fun res!1341356 () Bool)

(declare-fun e!2056889 () Bool)

(assert (=> d!926547 (=> res!1341356 e!2056889)))

(assert (=> d!926547 (= res!1341356 (not (is-Cons!36519 rules!2135)))))

(assert (=> d!926547 (= (sepAndNonSepRulesDisjointChars!1493 rules!2135 rules!2135) e!2056889)))

(declare-fun b!3307349 () Bool)

(declare-fun e!2056890 () Bool)

(assert (=> b!3307349 (= e!2056889 e!2056890)))

(declare-fun res!1341357 () Bool)

(assert (=> b!3307349 (=> (not res!1341357) (not e!2056890))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!630 (Rule!10398 List!36643) Bool)

(assert (=> b!3307349 (= res!1341357 (ruleDisjointCharsFromAllFromOtherType!630 (h!41939 rules!2135) rules!2135))))

(declare-fun b!3307350 () Bool)

(assert (=> b!3307350 (= e!2056890 (sepAndNonSepRulesDisjointChars!1493 rules!2135 (t!253804 rules!2135)))))

(assert (= (and d!926547 (not res!1341356)) b!3307349))

(assert (= (and b!3307349 res!1341357) b!3307350))

(declare-fun m!3634195 () Bool)

(assert (=> b!3307349 m!3634195))

(declare-fun m!3634197 () Bool)

(assert (=> b!3307350 m!3634197))

(assert (=> b!3307135 d!926547))

(declare-fun d!926549 () Bool)

(declare-fun res!1341358 () Bool)

(declare-fun e!2056891 () Bool)

(assert (=> d!926549 (=> (not res!1341358) (not e!2056891))))

(assert (=> d!926549 (= res!1341358 (not (isEmpty!20666 (originalCharacters!6013 separatorToken!241))))))

(assert (=> d!926549 (= (inv!49495 separatorToken!241) e!2056891)))

(declare-fun b!3307351 () Bool)

(declare-fun res!1341359 () Bool)

(assert (=> b!3307351 (=> (not res!1341359) (not e!2056891))))

(assert (=> b!3307351 (= res!1341359 (= (originalCharacters!6013 separatorToken!241) (list!13104 (dynLambda!14985 (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))) (value!171483 separatorToken!241)))))))

(declare-fun b!3307352 () Bool)

(assert (=> b!3307352 (= e!2056891 (= (size!27590 separatorToken!241) (size!27594 (originalCharacters!6013 separatorToken!241))))))

(assert (= (and d!926549 res!1341358) b!3307351))

(assert (= (and b!3307351 res!1341359) b!3307352))

(declare-fun b_lambda!92435 () Bool)

(assert (=> (not b_lambda!92435) (not b!3307351)))

(declare-fun tb!171747 () Bool)

(declare-fun t!253834 () Bool)

(assert (=> (and b!3307131 (= (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))) (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241)))) t!253834) tb!171747))

(declare-fun b!3307353 () Bool)

(declare-fun e!2056892 () Bool)

(declare-fun tp!1035661 () Bool)

(assert (=> b!3307353 (= e!2056892 (and (inv!49498 (c!561023 (dynLambda!14985 (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))) (value!171483 separatorToken!241)))) tp!1035661))))

(declare-fun result!214600 () Bool)

(assert (=> tb!171747 (= result!214600 (and (inv!49499 (dynLambda!14985 (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))) (value!171483 separatorToken!241))) e!2056892))))

(assert (= tb!171747 b!3307353))

(declare-fun m!3634199 () Bool)

(assert (=> b!3307353 m!3634199))

(declare-fun m!3634201 () Bool)

(assert (=> tb!171747 m!3634201))

(assert (=> b!3307351 t!253834))

(declare-fun b_and!226767 () Bool)

(assert (= b_and!226761 (and (=> t!253834 result!214600) b_and!226767)))

(declare-fun t!253836 () Bool)

(declare-fun tb!171749 () Bool)

(assert (=> (and b!3307140 (= (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))) (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241)))) t!253836) tb!171749))

(declare-fun result!214602 () Bool)

(assert (= result!214602 result!214600))

(assert (=> b!3307351 t!253836))

(declare-fun b_and!226769 () Bool)

(assert (= b_and!226763 (and (=> t!253836 result!214602) b_and!226769)))

(declare-fun t!253838 () Bool)

(declare-fun tb!171751 () Bool)

(assert (=> (and b!3307139 (= (toChars!7302 (transformation!5299 (h!41939 rules!2135))) (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241)))) t!253838) tb!171751))

(declare-fun result!214604 () Bool)

(assert (= result!214604 result!214600))

(assert (=> b!3307351 t!253838))

(declare-fun b_and!226771 () Bool)

(assert (= b_and!226765 (and (=> t!253838 result!214604) b_and!226771)))

(declare-fun m!3634203 () Bool)

(assert (=> d!926549 m!3634203))

(declare-fun m!3634205 () Bool)

(assert (=> b!3307351 m!3634205))

(assert (=> b!3307351 m!3634205))

(declare-fun m!3634207 () Bool)

(assert (=> b!3307351 m!3634207))

(declare-fun m!3634209 () Bool)

(assert (=> b!3307352 m!3634209))

(assert (=> start!308224 d!926549))

(declare-fun d!926551 () Bool)

(declare-fun lt!1121133 () Bool)

(declare-fun e!2056897 () Bool)

(assert (=> d!926551 (= lt!1121133 e!2056897)))

(declare-fun res!1341368 () Bool)

(assert (=> d!926551 (=> (not res!1341368) (not e!2056897))))

(assert (=> d!926551 (= res!1341368 (= (list!13106 (_1!21139 (lex!2214 thiss!18206 rules!2135 (print!1953 thiss!18206 (singletonSeq!2395 separatorToken!241))))) (list!13106 (singletonSeq!2395 separatorToken!241))))))

(declare-fun e!2056898 () Bool)

(assert (=> d!926551 (= lt!1121133 e!2056898)))

(declare-fun res!1341366 () Bool)

(assert (=> d!926551 (=> (not res!1341366) (not e!2056898))))

(declare-fun lt!1121134 () tuple2!36010)

(assert (=> d!926551 (= res!1341366 (= (size!27592 (_1!21139 lt!1121134)) 1))))

(assert (=> d!926551 (= lt!1121134 (lex!2214 thiss!18206 rules!2135 (print!1953 thiss!18206 (singletonSeq!2395 separatorToken!241))))))

(assert (=> d!926551 (not (isEmpty!20661 rules!2135))))

(assert (=> d!926551 (= (rulesProduceIndividualToken!2380 thiss!18206 rules!2135 separatorToken!241) lt!1121133)))

(declare-fun b!3307360 () Bool)

(declare-fun res!1341367 () Bool)

(assert (=> b!3307360 (=> (not res!1341367) (not e!2056898))))

(declare-fun apply!8395 (BalanceConc!21562 Int) Token!9964)

(assert (=> b!3307360 (= res!1341367 (= (apply!8395 (_1!21139 lt!1121134) 0) separatorToken!241))))

(declare-fun b!3307361 () Bool)

(declare-fun isEmpty!20667 (BalanceConc!21560) Bool)

(assert (=> b!3307361 (= e!2056898 (isEmpty!20667 (_2!21139 lt!1121134)))))

(declare-fun b!3307362 () Bool)

(assert (=> b!3307362 (= e!2056897 (isEmpty!20667 (_2!21139 (lex!2214 thiss!18206 rules!2135 (print!1953 thiss!18206 (singletonSeq!2395 separatorToken!241))))))))

(assert (= (and d!926551 res!1341366) b!3307360))

(assert (= (and b!3307360 res!1341367) b!3307361))

(assert (= (and d!926551 res!1341368) b!3307362))

(assert (=> d!926551 m!3633911))

(declare-fun m!3634211 () Bool)

(assert (=> d!926551 m!3634211))

(declare-fun m!3634213 () Bool)

(assert (=> d!926551 m!3634213))

(declare-fun m!3634215 () Bool)

(assert (=> d!926551 m!3634215))

(declare-fun m!3634217 () Bool)

(assert (=> d!926551 m!3634217))

(assert (=> d!926551 m!3634213))

(declare-fun m!3634219 () Bool)

(assert (=> d!926551 m!3634219))

(assert (=> d!926551 m!3634219))

(declare-fun m!3634221 () Bool)

(assert (=> d!926551 m!3634221))

(assert (=> d!926551 m!3634213))

(declare-fun m!3634223 () Bool)

(assert (=> b!3307360 m!3634223))

(declare-fun m!3634225 () Bool)

(assert (=> b!3307361 m!3634225))

(assert (=> b!3307362 m!3634213))

(assert (=> b!3307362 m!3634213))

(assert (=> b!3307362 m!3634219))

(assert (=> b!3307362 m!3634219))

(assert (=> b!3307362 m!3634221))

(declare-fun m!3634227 () Bool)

(assert (=> b!3307362 m!3634227))

(assert (=> b!3307125 d!926551))

(declare-fun b!3307373 () Bool)

(declare-fun e!2056907 () Bool)

(declare-fun inv!15 (TokenValue!5529) Bool)

(assert (=> b!3307373 (= e!2056907 (inv!15 (value!171483 separatorToken!241)))))

(declare-fun b!3307374 () Bool)

(declare-fun e!2056905 () Bool)

(declare-fun inv!17 (TokenValue!5529) Bool)

(assert (=> b!3307374 (= e!2056905 (inv!17 (value!171483 separatorToken!241)))))

(declare-fun b!3307375 () Bool)

(declare-fun e!2056906 () Bool)

(declare-fun inv!16 (TokenValue!5529) Bool)

(assert (=> b!3307375 (= e!2056906 (inv!16 (value!171483 separatorToken!241)))))

(declare-fun d!926553 () Bool)

(declare-fun c!561051 () Bool)

(assert (=> d!926553 (= c!561051 (is-IntegerValue!16587 (value!171483 separatorToken!241)))))

(assert (=> d!926553 (= (inv!21 (value!171483 separatorToken!241)) e!2056906)))

(declare-fun b!3307376 () Bool)

(assert (=> b!3307376 (= e!2056906 e!2056905)))

(declare-fun c!561050 () Bool)

(assert (=> b!3307376 (= c!561050 (is-IntegerValue!16588 (value!171483 separatorToken!241)))))

(declare-fun b!3307377 () Bool)

(declare-fun res!1341371 () Bool)

(assert (=> b!3307377 (=> res!1341371 e!2056907)))

(assert (=> b!3307377 (= res!1341371 (not (is-IntegerValue!16589 (value!171483 separatorToken!241))))))

(assert (=> b!3307377 (= e!2056905 e!2056907)))

(assert (= (and d!926553 c!561051) b!3307375))

(assert (= (and d!926553 (not c!561051)) b!3307376))

(assert (= (and b!3307376 c!561050) b!3307374))

(assert (= (and b!3307376 (not c!561050)) b!3307377))

(assert (= (and b!3307377 (not res!1341371)) b!3307373))

(declare-fun m!3634229 () Bool)

(assert (=> b!3307373 m!3634229))

(declare-fun m!3634231 () Bool)

(assert (=> b!3307374 m!3634231))

(declare-fun m!3634233 () Bool)

(assert (=> b!3307375 m!3634233))

(assert (=> b!3307123 d!926553))

(declare-fun d!926555 () Bool)

(declare-fun list!13107 (Conc!10973) List!36641)

(assert (=> d!926555 (= (list!13104 lt!1121057) (list!13107 (c!561023 lt!1121057)))))

(declare-fun bs!549206 () Bool)

(assert (= bs!549206 d!926555))

(declare-fun m!3634235 () Bool)

(assert (=> bs!549206 m!3634235))

(assert (=> b!3307134 d!926555))

(declare-fun d!926557 () Bool)

(declare-fun lt!1121152 () BalanceConc!21560)

(declare-fun printListTailRec!600 (LexerInterface!4888 List!36642 List!36641) List!36641)

(declare-fun dropList!1117 (BalanceConc!21562 Int) List!36642)

(assert (=> d!926557 (= (list!13104 lt!1121152) (printListTailRec!600 thiss!18206 (dropList!1117 lt!1121054 0) (list!13104 (BalanceConc!21561 Empty!10973))))))

(declare-fun e!2056912 () BalanceConc!21560)

(assert (=> d!926557 (= lt!1121152 e!2056912)))

(declare-fun c!561054 () Bool)

(assert (=> d!926557 (= c!561054 (>= 0 (size!27592 lt!1121054)))))

(declare-fun e!2056913 () Bool)

(assert (=> d!926557 e!2056913))

(declare-fun res!1341374 () Bool)

(assert (=> d!926557 (=> (not res!1341374) (not e!2056913))))

(assert (=> d!926557 (= res!1341374 (>= 0 0))))

(assert (=> d!926557 (= (printTailRec!1385 thiss!18206 lt!1121054 0 (BalanceConc!21561 Empty!10973)) lt!1121152)))

(declare-fun b!3307384 () Bool)

(assert (=> b!3307384 (= e!2056913 (<= 0 (size!27592 lt!1121054)))))

(declare-fun b!3307385 () Bool)

(assert (=> b!3307385 (= e!2056912 (BalanceConc!21561 Empty!10973))))

(declare-fun b!3307386 () Bool)

(declare-fun ++!8847 (BalanceConc!21560 BalanceConc!21560) BalanceConc!21560)

(assert (=> b!3307386 (= e!2056912 (printTailRec!1385 thiss!18206 lt!1121054 (+ 0 1) (++!8847 (BalanceConc!21561 Empty!10973) (charsOf!3315 (apply!8395 lt!1121054 0)))))))

(declare-fun lt!1121153 () List!36642)

(assert (=> b!3307386 (= lt!1121153 (list!13106 lt!1121054))))

(declare-fun lt!1121149 () Unit!51447)

(declare-fun lemmaDropApply!1076 (List!36642 Int) Unit!51447)

(assert (=> b!3307386 (= lt!1121149 (lemmaDropApply!1076 lt!1121153 0))))

(declare-fun head!7132 (List!36642) Token!9964)

(declare-fun drop!1908 (List!36642 Int) List!36642)

(declare-fun apply!8396 (List!36642 Int) Token!9964)

(assert (=> b!3307386 (= (head!7132 (drop!1908 lt!1121153 0)) (apply!8396 lt!1121153 0))))

(declare-fun lt!1121154 () Unit!51447)

(assert (=> b!3307386 (= lt!1121154 lt!1121149)))

(declare-fun lt!1121151 () List!36642)

(assert (=> b!3307386 (= lt!1121151 (list!13106 lt!1121054))))

(declare-fun lt!1121155 () Unit!51447)

(declare-fun lemmaDropTail!960 (List!36642 Int) Unit!51447)

(assert (=> b!3307386 (= lt!1121155 (lemmaDropTail!960 lt!1121151 0))))

(declare-fun tail!5270 (List!36642) List!36642)

(assert (=> b!3307386 (= (tail!5270 (drop!1908 lt!1121151 0)) (drop!1908 lt!1121151 (+ 0 1)))))

(declare-fun lt!1121150 () Unit!51447)

(assert (=> b!3307386 (= lt!1121150 lt!1121155)))

(assert (= (and d!926557 res!1341374) b!3307384))

(assert (= (and d!926557 c!561054) b!3307385))

(assert (= (and d!926557 (not c!561054)) b!3307386))

(declare-fun m!3634237 () Bool)

(assert (=> d!926557 m!3634237))

(assert (=> d!926557 m!3634237))

(declare-fun m!3634239 () Bool)

(assert (=> d!926557 m!3634239))

(declare-fun m!3634241 () Bool)

(assert (=> d!926557 m!3634241))

(declare-fun m!3634243 () Bool)

(assert (=> d!926557 m!3634243))

(assert (=> d!926557 m!3634239))

(declare-fun m!3634245 () Bool)

(assert (=> d!926557 m!3634245))

(assert (=> b!3307384 m!3634245))

(declare-fun m!3634247 () Bool)

(assert (=> b!3307386 m!3634247))

(declare-fun m!3634249 () Bool)

(assert (=> b!3307386 m!3634249))

(declare-fun m!3634251 () Bool)

(assert (=> b!3307386 m!3634251))

(declare-fun m!3634253 () Bool)

(assert (=> b!3307386 m!3634253))

(assert (=> b!3307386 m!3634253))

(declare-fun m!3634255 () Bool)

(assert (=> b!3307386 m!3634255))

(declare-fun m!3634257 () Bool)

(assert (=> b!3307386 m!3634257))

(declare-fun m!3634259 () Bool)

(assert (=> b!3307386 m!3634259))

(declare-fun m!3634261 () Bool)

(assert (=> b!3307386 m!3634261))

(declare-fun m!3634263 () Bool)

(assert (=> b!3307386 m!3634263))

(assert (=> b!3307386 m!3634261))

(declare-fun m!3634265 () Bool)

(assert (=> b!3307386 m!3634265))

(declare-fun m!3634267 () Bool)

(assert (=> b!3307386 m!3634267))

(declare-fun m!3634269 () Bool)

(assert (=> b!3307386 m!3634269))

(assert (=> b!3307386 m!3634247))

(declare-fun m!3634271 () Bool)

(assert (=> b!3307386 m!3634271))

(assert (=> b!3307386 m!3634265))

(assert (=> b!3307386 m!3634257))

(assert (=> b!3307134 d!926557))

(declare-fun d!926559 () Bool)

(declare-fun lt!1121158 () BalanceConc!21560)

(assert (=> d!926559 (= (list!13104 lt!1121158) (printList!1438 thiss!18206 (list!13106 lt!1121054)))))

(assert (=> d!926559 (= lt!1121158 (printTailRec!1385 thiss!18206 lt!1121054 0 (BalanceConc!21561 Empty!10973)))))

(assert (=> d!926559 (= (print!1953 thiss!18206 lt!1121054) lt!1121158)))

(declare-fun bs!549207 () Bool)

(assert (= bs!549207 d!926559))

(declare-fun m!3634273 () Bool)

(assert (=> bs!549207 m!3634273))

(assert (=> bs!549207 m!3634251))

(assert (=> bs!549207 m!3634251))

(declare-fun m!3634275 () Bool)

(assert (=> bs!549207 m!3634275))

(assert (=> bs!549207 m!3633887))

(assert (=> b!3307134 d!926559))

(declare-fun d!926561 () Bool)

(declare-fun e!2056916 () Bool)

(assert (=> d!926561 e!2056916))

(declare-fun res!1341377 () Bool)

(assert (=> d!926561 (=> (not res!1341377) (not e!2056916))))

(declare-fun lt!1121161 () BalanceConc!21562)

(assert (=> d!926561 (= res!1341377 (= (list!13106 lt!1121161) (Cons!36518 (h!41938 tokens!494) Nil!36518)))))

(declare-fun singleton!1033 (Token!9964) BalanceConc!21562)

(assert (=> d!926561 (= lt!1121161 (singleton!1033 (h!41938 tokens!494)))))

(assert (=> d!926561 (= (singletonSeq!2395 (h!41938 tokens!494)) lt!1121161)))

(declare-fun b!3307389 () Bool)

(declare-fun isBalanced!3286 (Conc!10974) Bool)

(assert (=> b!3307389 (= e!2056916 (isBalanced!3286 (c!561024 lt!1121161)))))

(assert (= (and d!926561 res!1341377) b!3307389))

(declare-fun m!3634277 () Bool)

(assert (=> d!926561 m!3634277))

(declare-fun m!3634279 () Bool)

(assert (=> d!926561 m!3634279))

(declare-fun m!3634281 () Bool)

(assert (=> b!3307389 m!3634281))

(assert (=> b!3307134 d!926561))

(declare-fun d!926563 () Bool)

(declare-fun c!561057 () Bool)

(assert (=> d!926563 (= c!561057 (is-Cons!36518 (Cons!36518 (h!41938 tokens!494) Nil!36518)))))

(declare-fun e!2056919 () List!36641)

(assert (=> d!926563 (= (printList!1438 thiss!18206 (Cons!36518 (h!41938 tokens!494) Nil!36518)) e!2056919)))

(declare-fun b!3307394 () Bool)

(declare-fun ++!8848 (List!36641 List!36641) List!36641)

(assert (=> b!3307394 (= e!2056919 (++!8848 (list!13104 (charsOf!3315 (h!41938 (Cons!36518 (h!41938 tokens!494) Nil!36518)))) (printList!1438 thiss!18206 (t!253803 (Cons!36518 (h!41938 tokens!494) Nil!36518)))))))

(declare-fun b!3307395 () Bool)

(assert (=> b!3307395 (= e!2056919 Nil!36517)))

(assert (= (and d!926563 c!561057) b!3307394))

(assert (= (and d!926563 (not c!561057)) b!3307395))

(declare-fun m!3634283 () Bool)

(assert (=> b!3307394 m!3634283))

(assert (=> b!3307394 m!3634283))

(declare-fun m!3634285 () Bool)

(assert (=> b!3307394 m!3634285))

(declare-fun m!3634287 () Bool)

(assert (=> b!3307394 m!3634287))

(assert (=> b!3307394 m!3634285))

(assert (=> b!3307394 m!3634287))

(declare-fun m!3634289 () Bool)

(assert (=> b!3307394 m!3634289))

(assert (=> b!3307134 d!926563))

(declare-fun b!3307396 () Bool)

(declare-fun e!2056922 () Bool)

(assert (=> b!3307396 (= e!2056922 (inv!15 (value!171483 (h!41938 tokens!494))))))

(declare-fun b!3307397 () Bool)

(declare-fun e!2056920 () Bool)

(assert (=> b!3307397 (= e!2056920 (inv!17 (value!171483 (h!41938 tokens!494))))))

(declare-fun b!3307398 () Bool)

(declare-fun e!2056921 () Bool)

(assert (=> b!3307398 (= e!2056921 (inv!16 (value!171483 (h!41938 tokens!494))))))

(declare-fun d!926565 () Bool)

(declare-fun c!561059 () Bool)

(assert (=> d!926565 (= c!561059 (is-IntegerValue!16587 (value!171483 (h!41938 tokens!494))))))

(assert (=> d!926565 (= (inv!21 (value!171483 (h!41938 tokens!494))) e!2056921)))

(declare-fun b!3307399 () Bool)

(assert (=> b!3307399 (= e!2056921 e!2056920)))

(declare-fun c!561058 () Bool)

(assert (=> b!3307399 (= c!561058 (is-IntegerValue!16588 (value!171483 (h!41938 tokens!494))))))

(declare-fun b!3307400 () Bool)

(declare-fun res!1341378 () Bool)

(assert (=> b!3307400 (=> res!1341378 e!2056922)))

(assert (=> b!3307400 (= res!1341378 (not (is-IntegerValue!16589 (value!171483 (h!41938 tokens!494)))))))

(assert (=> b!3307400 (= e!2056920 e!2056922)))

(assert (= (and d!926565 c!561059) b!3307398))

(assert (= (and d!926565 (not c!561059)) b!3307399))

(assert (= (and b!3307399 c!561058) b!3307397))

(assert (= (and b!3307399 (not c!561058)) b!3307400))

(assert (= (and b!3307400 (not res!1341378)) b!3307396))

(declare-fun m!3634291 () Bool)

(assert (=> b!3307396 m!3634291))

(declare-fun m!3634293 () Bool)

(assert (=> b!3307397 m!3634293))

(declare-fun m!3634295 () Bool)

(assert (=> b!3307398 m!3634295))

(assert (=> b!3307127 d!926565))

(declare-fun d!926567 () Bool)

(assert (=> d!926567 (= (isEmpty!20661 rules!2135) (is-Nil!36519 rules!2135))))

(assert (=> b!3307138 d!926567))

(declare-fun d!926569 () Bool)

(assert (=> d!926569 (= (list!13104 (charsOf!3315 (h!41938 tokens!494))) (list!13107 (c!561023 (charsOf!3315 (h!41938 tokens!494)))))))

(declare-fun bs!549208 () Bool)

(assert (= bs!549208 d!926569))

(declare-fun m!3634297 () Bool)

(assert (=> bs!549208 m!3634297))

(assert (=> b!3307136 d!926569))

(declare-fun d!926571 () Bool)

(declare-fun lt!1121164 () BalanceConc!21560)

(assert (=> d!926571 (= (list!13104 lt!1121164) (originalCharacters!6013 (h!41938 tokens!494)))))

(assert (=> d!926571 (= lt!1121164 (dynLambda!14985 (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))) (value!171483 (h!41938 tokens!494))))))

(assert (=> d!926571 (= (charsOf!3315 (h!41938 tokens!494)) lt!1121164)))

(declare-fun b_lambda!92437 () Bool)

(assert (=> (not b_lambda!92437) (not d!926571)))

(assert (=> d!926571 t!253826))

(declare-fun b_and!226773 () Bool)

(assert (= b_and!226767 (and (=> t!253826 result!214592) b_and!226773)))

(assert (=> d!926571 t!253830))

(declare-fun b_and!226775 () Bool)

(assert (= b_and!226769 (and (=> t!253830 result!214596) b_and!226775)))

(assert (=> d!926571 t!253832))

(declare-fun b_and!226777 () Bool)

(assert (= b_and!226771 (and (=> t!253832 result!214598) b_and!226777)))

(declare-fun m!3634299 () Bool)

(assert (=> d!926571 m!3634299))

(assert (=> d!926571 m!3634185))

(assert (=> b!3307136 d!926571))

(declare-fun d!926573 () Bool)

(declare-fun lt!1121165 () Bool)

(declare-fun e!2056923 () Bool)

(assert (=> d!926573 (= lt!1121165 e!2056923)))

(declare-fun res!1341381 () Bool)

(assert (=> d!926573 (=> (not res!1341381) (not e!2056923))))

(assert (=> d!926573 (= res!1341381 (= (list!13106 (_1!21139 (lex!2214 thiss!18206 rules!2135 (print!1953 thiss!18206 (singletonSeq!2395 (h!41938 tokens!494)))))) (list!13106 (singletonSeq!2395 (h!41938 tokens!494)))))))

(declare-fun e!2056924 () Bool)

(assert (=> d!926573 (= lt!1121165 e!2056924)))

(declare-fun res!1341379 () Bool)

(assert (=> d!926573 (=> (not res!1341379) (not e!2056924))))

(declare-fun lt!1121166 () tuple2!36010)

(assert (=> d!926573 (= res!1341379 (= (size!27592 (_1!21139 lt!1121166)) 1))))

(assert (=> d!926573 (= lt!1121166 (lex!2214 thiss!18206 rules!2135 (print!1953 thiss!18206 (singletonSeq!2395 (h!41938 tokens!494)))))))

(assert (=> d!926573 (not (isEmpty!20661 rules!2135))))

(assert (=> d!926573 (= (rulesProduceIndividualToken!2380 thiss!18206 rules!2135 (h!41938 tokens!494)) lt!1121165)))

(declare-fun b!3307401 () Bool)

(declare-fun res!1341380 () Bool)

(assert (=> b!3307401 (=> (not res!1341380) (not e!2056924))))

(assert (=> b!3307401 (= res!1341380 (= (apply!8395 (_1!21139 lt!1121166) 0) (h!41938 tokens!494)))))

(declare-fun b!3307402 () Bool)

(assert (=> b!3307402 (= e!2056924 (isEmpty!20667 (_2!21139 lt!1121166)))))

(declare-fun b!3307403 () Bool)

(assert (=> b!3307403 (= e!2056923 (isEmpty!20667 (_2!21139 (lex!2214 thiss!18206 rules!2135 (print!1953 thiss!18206 (singletonSeq!2395 (h!41938 tokens!494)))))))))

(assert (= (and d!926573 res!1341379) b!3307401))

(assert (= (and b!3307401 res!1341380) b!3307402))

(assert (= (and d!926573 res!1341381) b!3307403))

(assert (=> d!926573 m!3633911))

(declare-fun m!3634301 () Bool)

(assert (=> d!926573 m!3634301))

(assert (=> d!926573 m!3633885))

(declare-fun m!3634303 () Bool)

(assert (=> d!926573 m!3634303))

(declare-fun m!3634305 () Bool)

(assert (=> d!926573 m!3634305))

(assert (=> d!926573 m!3633885))

(declare-fun m!3634307 () Bool)

(assert (=> d!926573 m!3634307))

(assert (=> d!926573 m!3634307))

(declare-fun m!3634309 () Bool)

(assert (=> d!926573 m!3634309))

(assert (=> d!926573 m!3633885))

(declare-fun m!3634311 () Bool)

(assert (=> b!3307401 m!3634311))

(declare-fun m!3634313 () Bool)

(assert (=> b!3307402 m!3634313))

(assert (=> b!3307403 m!3633885))

(assert (=> b!3307403 m!3633885))

(assert (=> b!3307403 m!3634307))

(assert (=> b!3307403 m!3634307))

(assert (=> b!3307403 m!3634309))

(declare-fun m!3634315 () Bool)

(assert (=> b!3307403 m!3634315))

(assert (=> b!3307137 d!926573))

(declare-fun d!926575 () Bool)

(assert (=> d!926575 (dynLambda!14986 lambda!119090 (h!41938 (t!253803 tokens!494)))))

(declare-fun lt!1121169 () Unit!51447)

(declare-fun choose!19149 (List!36642 Int Token!9964) Unit!51447)

(assert (=> d!926575 (= lt!1121169 (choose!19149 tokens!494 lambda!119090 (h!41938 (t!253803 tokens!494))))))

(declare-fun e!2056927 () Bool)

(assert (=> d!926575 e!2056927))

(declare-fun res!1341384 () Bool)

(assert (=> d!926575 (=> (not res!1341384) (not e!2056927))))

(assert (=> d!926575 (= res!1341384 (forall!7578 tokens!494 lambda!119090))))

(assert (=> d!926575 (= (forallContained!1250 tokens!494 lambda!119090 (h!41938 (t!253803 tokens!494))) lt!1121169)))

(declare-fun b!3307406 () Bool)

(declare-fun contains!6602 (List!36642 Token!9964) Bool)

(assert (=> b!3307406 (= e!2056927 (contains!6602 tokens!494 (h!41938 (t!253803 tokens!494))))))

(assert (= (and d!926575 res!1341384) b!3307406))

(declare-fun b_lambda!92439 () Bool)

(assert (=> (not b_lambda!92439) (not d!926575)))

(declare-fun m!3634317 () Bool)

(assert (=> d!926575 m!3634317))

(declare-fun m!3634319 () Bool)

(assert (=> d!926575 m!3634319))

(assert (=> d!926575 m!3633879))

(declare-fun m!3634321 () Bool)

(assert (=> b!3307406 m!3634321))

(assert (=> b!3307126 d!926575))

(declare-fun d!926577 () Bool)

(assert (=> d!926577 (dynLambda!14986 lambda!119090 (h!41938 tokens!494))))

(declare-fun lt!1121170 () Unit!51447)

(assert (=> d!926577 (= lt!1121170 (choose!19149 tokens!494 lambda!119090 (h!41938 tokens!494)))))

(declare-fun e!2056928 () Bool)

(assert (=> d!926577 e!2056928))

(declare-fun res!1341385 () Bool)

(assert (=> d!926577 (=> (not res!1341385) (not e!2056928))))

(assert (=> d!926577 (= res!1341385 (forall!7578 tokens!494 lambda!119090))))

(assert (=> d!926577 (= (forallContained!1250 tokens!494 lambda!119090 (h!41938 tokens!494)) lt!1121170)))

(declare-fun b!3307407 () Bool)

(assert (=> b!3307407 (= e!2056928 (contains!6602 tokens!494 (h!41938 tokens!494)))))

(assert (= (and d!926577 res!1341385) b!3307407))

(declare-fun b_lambda!92441 () Bool)

(assert (=> (not b_lambda!92441) (not d!926577)))

(assert (=> d!926577 m!3634191))

(declare-fun m!3634323 () Bool)

(assert (=> d!926577 m!3634323))

(assert (=> d!926577 m!3633879))

(declare-fun m!3634325 () Bool)

(assert (=> b!3307407 m!3634325))

(assert (=> b!3307126 d!926577))

(declare-fun b!3307418 () Bool)

(declare-fun e!2056931 () Bool)

(declare-fun tp_is_empty!17375 () Bool)

(assert (=> b!3307418 (= e!2056931 tp_is_empty!17375)))

(declare-fun b!3307419 () Bool)

(declare-fun tp!1035675 () Bool)

(declare-fun tp!1035676 () Bool)

(assert (=> b!3307419 (= e!2056931 (and tp!1035675 tp!1035676))))

(declare-fun b!3307421 () Bool)

(declare-fun tp!1035674 () Bool)

(declare-fun tp!1035673 () Bool)

(assert (=> b!3307421 (= e!2056931 (and tp!1035674 tp!1035673))))

(declare-fun b!3307420 () Bool)

(declare-fun tp!1035672 () Bool)

(assert (=> b!3307420 (= e!2056931 tp!1035672)))

(assert (=> b!3307119 (= tp!1035614 e!2056931)))

(assert (= (and b!3307119 (is-ElementMatch!10058 (regex!5299 (rule!7803 separatorToken!241)))) b!3307418))

(assert (= (and b!3307119 (is-Concat!15587 (regex!5299 (rule!7803 separatorToken!241)))) b!3307419))

(assert (= (and b!3307119 (is-Star!10058 (regex!5299 (rule!7803 separatorToken!241)))) b!3307420))

(assert (= (and b!3307119 (is-Union!10058 (regex!5299 (rule!7803 separatorToken!241)))) b!3307421))

(declare-fun b!3307432 () Bool)

(declare-fun b_free!86981 () Bool)

(declare-fun b_next!87685 () Bool)

(assert (=> b!3307432 (= b_free!86981 (not b_next!87685))))

(declare-fun tp!1035686 () Bool)

(declare-fun b_and!226779 () Bool)

(assert (=> b!3307432 (= tp!1035686 b_and!226779)))

(declare-fun b_free!86983 () Bool)

(declare-fun b_next!87687 () Bool)

(assert (=> b!3307432 (= b_free!86983 (not b_next!87687))))

(declare-fun tb!171753 () Bool)

(declare-fun t!253842 () Bool)

(assert (=> (and b!3307432 (= (toChars!7302 (transformation!5299 (h!41939 (t!253804 rules!2135)))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494))))) t!253842) tb!171753))

(declare-fun result!214610 () Bool)

(assert (= result!214610 result!214592))

(assert (=> b!3307332 t!253842))

(declare-fun t!253844 () Bool)

(declare-fun tb!171755 () Bool)

(assert (=> (and b!3307432 (= (toChars!7302 (transformation!5299 (h!41939 (t!253804 rules!2135)))) (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241)))) t!253844) tb!171755))

(declare-fun result!214612 () Bool)

(assert (= result!214612 result!214600))

(assert (=> b!3307351 t!253844))

(assert (=> d!926571 t!253842))

(declare-fun tp!1035688 () Bool)

(declare-fun b_and!226781 () Bool)

(assert (=> b!3307432 (= tp!1035688 (and (=> t!253842 result!214610) (=> t!253844 result!214612) b_and!226781))))

(declare-fun e!2056943 () Bool)

(assert (=> b!3307432 (= e!2056943 (and tp!1035686 tp!1035688))))

(declare-fun b!3307431 () Bool)

(declare-fun e!2056940 () Bool)

(declare-fun tp!1035685 () Bool)

(assert (=> b!3307431 (= e!2056940 (and tp!1035685 (inv!49491 (tag!5845 (h!41939 (t!253804 rules!2135)))) (inv!49494 (transformation!5299 (h!41939 (t!253804 rules!2135)))) e!2056943))))

(declare-fun b!3307430 () Bool)

(declare-fun e!2056941 () Bool)

(declare-fun tp!1035687 () Bool)

(assert (=> b!3307430 (= e!2056941 (and e!2056940 tp!1035687))))

(assert (=> b!3307141 (= tp!1035615 e!2056941)))

(assert (= b!3307431 b!3307432))

(assert (= b!3307430 b!3307431))

(assert (= (and b!3307141 (is-Cons!36519 (t!253804 rules!2135))) b!3307430))

(declare-fun m!3634327 () Bool)

(assert (=> b!3307431 m!3634327))

(declare-fun m!3634329 () Bool)

(assert (=> b!3307431 m!3634329))

(declare-fun b!3307433 () Bool)

(declare-fun e!2056944 () Bool)

(assert (=> b!3307433 (= e!2056944 tp_is_empty!17375)))

(declare-fun b!3307434 () Bool)

(declare-fun tp!1035692 () Bool)

(declare-fun tp!1035693 () Bool)

(assert (=> b!3307434 (= e!2056944 (and tp!1035692 tp!1035693))))

(declare-fun b!3307436 () Bool)

(declare-fun tp!1035691 () Bool)

(declare-fun tp!1035690 () Bool)

(assert (=> b!3307436 (= e!2056944 (and tp!1035691 tp!1035690))))

(declare-fun b!3307435 () Bool)

(declare-fun tp!1035689 () Bool)

(assert (=> b!3307435 (= e!2056944 tp!1035689)))

(assert (=> b!3307130 (= tp!1035611 e!2056944)))

(assert (= (and b!3307130 (is-ElementMatch!10058 (regex!5299 (h!41939 rules!2135)))) b!3307433))

(assert (= (and b!3307130 (is-Concat!15587 (regex!5299 (h!41939 rules!2135)))) b!3307434))

(assert (= (and b!3307130 (is-Star!10058 (regex!5299 (h!41939 rules!2135)))) b!3307435))

(assert (= (and b!3307130 (is-Union!10058 (regex!5299 (h!41939 rules!2135)))) b!3307436))

(declare-fun b!3307441 () Bool)

(declare-fun e!2056947 () Bool)

(declare-fun tp!1035696 () Bool)

(assert (=> b!3307441 (= e!2056947 (and tp_is_empty!17375 tp!1035696))))

(assert (=> b!3307123 (= tp!1035607 e!2056947)))

(assert (= (and b!3307123 (is-Cons!36517 (originalCharacters!6013 separatorToken!241))) b!3307441))

(declare-fun b!3307442 () Bool)

(declare-fun e!2056948 () Bool)

(declare-fun tp!1035697 () Bool)

(assert (=> b!3307442 (= e!2056948 (and tp_is_empty!17375 tp!1035697))))

(assert (=> b!3307127 (= tp!1035610 e!2056948)))

(assert (= (and b!3307127 (is-Cons!36517 (originalCharacters!6013 (h!41938 tokens!494)))) b!3307442))

(declare-fun b!3307443 () Bool)

(declare-fun e!2056949 () Bool)

(assert (=> b!3307443 (= e!2056949 tp_is_empty!17375)))

(declare-fun b!3307444 () Bool)

(declare-fun tp!1035701 () Bool)

(declare-fun tp!1035702 () Bool)

(assert (=> b!3307444 (= e!2056949 (and tp!1035701 tp!1035702))))

(declare-fun b!3307446 () Bool)

(declare-fun tp!1035700 () Bool)

(declare-fun tp!1035699 () Bool)

(assert (=> b!3307446 (= e!2056949 (and tp!1035700 tp!1035699))))

(declare-fun b!3307445 () Bool)

(declare-fun tp!1035698 () Bool)

(assert (=> b!3307445 (= e!2056949 tp!1035698)))

(assert (=> b!3307132 (= tp!1035609 e!2056949)))

(assert (= (and b!3307132 (is-ElementMatch!10058 (regex!5299 (rule!7803 (h!41938 tokens!494))))) b!3307443))

(assert (= (and b!3307132 (is-Concat!15587 (regex!5299 (rule!7803 (h!41938 tokens!494))))) b!3307444))

(assert (= (and b!3307132 (is-Star!10058 (regex!5299 (rule!7803 (h!41938 tokens!494))))) b!3307445))

(assert (= (and b!3307132 (is-Union!10058 (regex!5299 (rule!7803 (h!41938 tokens!494))))) b!3307446))

(declare-fun b!3307460 () Bool)

(declare-fun b_free!86985 () Bool)

(declare-fun b_next!87689 () Bool)

(assert (=> b!3307460 (= b_free!86985 (not b_next!87689))))

(declare-fun tp!1035714 () Bool)

(declare-fun b_and!226783 () Bool)

(assert (=> b!3307460 (= tp!1035714 b_and!226783)))

(declare-fun b_free!86987 () Bool)

(declare-fun b_next!87691 () Bool)

(assert (=> b!3307460 (= b_free!86987 (not b_next!87691))))

(declare-fun t!253846 () Bool)

(declare-fun tb!171757 () Bool)

(assert (=> (and b!3307460 (= (toChars!7302 (transformation!5299 (rule!7803 (h!41938 (t!253803 tokens!494))))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494))))) t!253846) tb!171757))

(declare-fun result!214618 () Bool)

(assert (= result!214618 result!214592))

(assert (=> b!3307332 t!253846))

(declare-fun tb!171759 () Bool)

(declare-fun t!253848 () Bool)

(assert (=> (and b!3307460 (= (toChars!7302 (transformation!5299 (rule!7803 (h!41938 (t!253803 tokens!494))))) (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241)))) t!253848) tb!171759))

(declare-fun result!214620 () Bool)

(assert (= result!214620 result!214600))

(assert (=> b!3307351 t!253848))

(assert (=> d!926571 t!253846))

(declare-fun tp!1035713 () Bool)

(declare-fun b_and!226785 () Bool)

(assert (=> b!3307460 (= tp!1035713 (and (=> t!253846 result!214618) (=> t!253848 result!214620) b_and!226785))))

(declare-fun b!3307459 () Bool)

(declare-fun tp!1035716 () Bool)

(declare-fun e!2056966 () Bool)

(declare-fun e!2056963 () Bool)

(assert (=> b!3307459 (= e!2056963 (and tp!1035716 (inv!49491 (tag!5845 (rule!7803 (h!41938 (t!253803 tokens!494))))) (inv!49494 (transformation!5299 (rule!7803 (h!41938 (t!253803 tokens!494))))) e!2056966))))

(declare-fun e!2056964 () Bool)

(declare-fun e!2056967 () Bool)

(declare-fun b!3307457 () Bool)

(declare-fun tp!1035715 () Bool)

(assert (=> b!3307457 (= e!2056967 (and (inv!49495 (h!41938 (t!253803 tokens!494))) e!2056964 tp!1035715))))

(assert (=> b!3307460 (= e!2056966 (and tp!1035714 tp!1035713))))

(assert (=> b!3307120 (= tp!1035603 e!2056967)))

(declare-fun b!3307458 () Bool)

(declare-fun tp!1035717 () Bool)

(assert (=> b!3307458 (= e!2056964 (and (inv!21 (value!171483 (h!41938 (t!253803 tokens!494)))) e!2056963 tp!1035717))))

(assert (= b!3307459 b!3307460))

(assert (= b!3307458 b!3307459))

(assert (= b!3307457 b!3307458))

(assert (= (and b!3307120 (is-Cons!36518 (t!253803 tokens!494))) b!3307457))

(declare-fun m!3634331 () Bool)

(assert (=> b!3307459 m!3634331))

(declare-fun m!3634333 () Bool)

(assert (=> b!3307459 m!3634333))

(declare-fun m!3634335 () Bool)

(assert (=> b!3307457 m!3634335))

(declare-fun m!3634337 () Bool)

(assert (=> b!3307458 m!3634337))

(declare-fun b_lambda!92443 () Bool)

(assert (= b_lambda!92441 (or b!3307121 b_lambda!92443)))

(declare-fun bs!549209 () Bool)

(declare-fun d!926579 () Bool)

(assert (= bs!549209 (and d!926579 b!3307121)))

(assert (=> bs!549209 (= (dynLambda!14986 lambda!119090 (h!41938 tokens!494)) (not (isSeparator!5299 (rule!7803 (h!41938 tokens!494)))))))

(assert (=> d!926577 d!926579))

(declare-fun b_lambda!92445 () Bool)

(assert (= b_lambda!92437 (or (and b!3307139 b_free!86967 (= (toChars!7302 (transformation!5299 (h!41939 rules!2135))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))))) (and b!3307432 b_free!86983 (= (toChars!7302 (transformation!5299 (h!41939 (t!253804 rules!2135)))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))))) (and b!3307460 b_free!86987 (= (toChars!7302 (transformation!5299 (rule!7803 (h!41938 (t!253803 tokens!494))))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))))) (and b!3307140 b_free!86963 (= (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))))) (and b!3307131 b_free!86959) b_lambda!92445)))

(declare-fun b_lambda!92447 () Bool)

(assert (= b_lambda!92435 (or (and b!3307460 b_free!86987 (= (toChars!7302 (transformation!5299 (rule!7803 (h!41938 (t!253803 tokens!494))))) (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))))) (and b!3307131 b_free!86959 (= (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))) (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))))) (and b!3307140 b_free!86963) (and b!3307432 b_free!86983 (= (toChars!7302 (transformation!5299 (h!41939 (t!253804 rules!2135)))) (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))))) (and b!3307139 b_free!86967 (= (toChars!7302 (transformation!5299 (h!41939 rules!2135))) (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))))) b_lambda!92447)))

(declare-fun b_lambda!92449 () Bool)

(assert (= b_lambda!92439 (or b!3307121 b_lambda!92449)))

(declare-fun bs!549210 () Bool)

(declare-fun d!926581 () Bool)

(assert (= bs!549210 (and d!926581 b!3307121)))

(assert (=> bs!549210 (= (dynLambda!14986 lambda!119090 (h!41938 (t!253803 tokens!494))) (not (isSeparator!5299 (rule!7803 (h!41938 (t!253803 tokens!494))))))))

(assert (=> d!926575 d!926581))

(declare-fun b_lambda!92451 () Bool)

(assert (= b_lambda!92433 (or b!3307121 b_lambda!92451)))

(assert (=> b!3307343 d!926579))

(declare-fun b_lambda!92453 () Bool)

(assert (= b_lambda!92431 (or (and b!3307139 b_free!86967 (= (toChars!7302 (transformation!5299 (h!41939 rules!2135))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))))) (and b!3307432 b_free!86983 (= (toChars!7302 (transformation!5299 (h!41939 (t!253804 rules!2135)))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))))) (and b!3307460 b_free!86987 (= (toChars!7302 (transformation!5299 (rule!7803 (h!41938 (t!253803 tokens!494))))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))))) (and b!3307140 b_free!86963 (= (toChars!7302 (transformation!5299 (rule!7803 separatorToken!241))) (toChars!7302 (transformation!5299 (rule!7803 (h!41938 tokens!494)))))) (and b!3307131 b_free!86959) b_lambda!92453)))

(push 1)

(assert (not b!3307442))

(assert (not b_next!87685))

(assert (not b!3307419))

(assert b_and!226783)

(assert b_and!226739)

(assert (not d!926543))

(assert (not b!3307431))

(assert (not tb!171741))

(assert (not d!926529))

(assert (not b!3307213))

(assert (not d!926561))

(assert (not b!3307403))

(assert (not b!3307374))

(assert (not b_lambda!92451))

(assert (not b_lambda!92445))

(assert (not b!3307384))

(assert (not b!3307406))

(assert (not b!3307444))

(assert (not b!3307214))

(assert (not d!926525))

(assert (not b_lambda!92449))

(assert (not d!926577))

(assert (not b_next!87665))

(assert (not b!3307373))

(assert (not b!3307326))

(assert (not b_next!87663))

(assert (not b!3307349))

(assert (not b!3307430))

(assert (not b!3307292))

(assert (not b_next!87667))

(assert (not b_next!87661))

(assert (not b!3307327))

(assert (not b!3307350))

(assert (not b_next!87669))

(assert (not b!3307338))

(assert b_and!226731)

(assert (not d!926559))

(assert (not b!3307397))

(assert (not b!3307351))

(assert tp_is_empty!17375)

(assert (not d!926485))

(assert (not b!3307457))

(assert (not b_next!87691))

(assert (not b!3307398))

(assert (not d!926575))

(assert (not b!3307353))

(assert (not b!3307434))

(assert (not d!926573))

(assert b_and!226785)

(assert (not b!3307361))

(assert (not b_next!87671))

(assert (not b!3307436))

(assert (not b_lambda!92443))

(assert (not b!3307360))

(assert (not b!3307407))

(assert (not b!3307394))

(assert (not b!3307389))

(assert (not d!926493))

(assert (not b!3307333))

(assert (not d!926487))

(assert (not b!3307362))

(assert (not b!3307332))

(assert (not b!3307352))

(assert (not b!3307386))

(assert (not b_next!87687))

(assert (not b!3307441))

(assert (not d!926551))

(assert (not d!926527))

(assert (not b!3307217))

(assert (not tb!171747))

(assert (not d!926569))

(assert (not b!3307401))

(assert (not d!926571))

(assert (not b!3307218))

(assert (not d!926557))

(assert b_and!226781)

(assert (not b!3307402))

(assert (not b!3307445))

(assert (not d!926481))

(assert (not d!926541))

(assert b_and!226779)

(assert (not b!3307283))

(assert b_and!226735)

(assert (not b!3307420))

(assert (not d!926555))

(assert (not b!3307446))

(assert (not d!926549))

(assert b_and!226773)

(assert (not d!926491))

(assert (not b!3307435))

(assert b_and!226775)

(assert (not b_lambda!92447))

(assert (not b!3307375))

(assert (not b!3307323))

(assert (not b!3307324))

(assert (not b!3307421))

(assert (not b!3307396))

(assert (not b_lambda!92453))

(assert (not b!3307458))

(assert b_and!226777)

(assert (not b!3307344))

(assert (not b_next!87689))

(assert (not b!3307459))

(check-sat)

(pop 1)

(push 1)

(assert b_and!226739)

(assert (not b_next!87665))

(assert (not b_next!87663))

(assert (not b_next!87669))

(assert (not b_next!87685))

(assert b_and!226731)

(assert (not b_next!87691))

(assert (not b_next!87687))

(assert b_and!226781)

(assert b_and!226773)

(assert b_and!226775)

(assert b_and!226783)

(assert (not b_next!87667))

(assert (not b_next!87661))

(assert b_and!226785)

(assert (not b_next!87671))

(assert b_and!226779)

(assert b_and!226735)

(assert b_and!226777)

(assert (not b_next!87689))

(check-sat)

(pop 1)

