; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100640 () Bool)

(assert start!100640)

(declare-fun b!1154842 () Bool)

(declare-fun e!738470 () Bool)

(assert (=> b!1154842 (= e!738470 true)))

(declare-fun b!1154841 () Bool)

(declare-fun e!738469 () Bool)

(assert (=> b!1154841 (= e!738469 e!738470)))

(declare-fun b!1154831 () Bool)

(assert (=> b!1154831 e!738469))

(assert (= b!1154841 b!1154842))

(assert (= b!1154831 b!1154841))

(declare-fun b!1154827 () Bool)

(declare-fun e!738458 () Bool)

(declare-datatypes ((List!11214 0))(
  ( (Nil!11190) (Cons!11190 (h!16591 (_ BitVec 16)) (t!108830 List!11214)) )
))
(declare-datatypes ((TokenValue!2000 0))(
  ( (FloatLiteralValue!4000 (text!14445 List!11214)) (TokenValueExt!1999 (__x!7711 Int)) (Broken!10000 (value!63091 List!11214)) (Object!2023) (End!2000) (Def!2000) (Underscore!2000) (Match!2000) (Else!2000) (Error!2000) (Case!2000) (If!2000) (Extends!2000) (Abstract!2000) (Class!2000) (Val!2000) (DelimiterValue!4000 (del!2060 List!11214)) (KeywordValue!2006 (value!63092 List!11214)) (CommentValue!4000 (value!63093 List!11214)) (WhitespaceValue!4000 (value!63094 List!11214)) (IndentationValue!2000 (value!63095 List!11214)) (String!13589) (Int32!2000) (Broken!10001 (value!63096 List!11214)) (Boolean!2001) (Unit!17230) (OperatorValue!2003 (op!2060 List!11214)) (IdentifierValue!4000 (value!63097 List!11214)) (IdentifierValue!4001 (value!63098 List!11214)) (WhitespaceValue!4001 (value!63099 List!11214)) (True!4000) (False!4000) (Broken!10002 (value!63100 List!11214)) (Broken!10003 (value!63101 List!11214)) (True!4001) (RightBrace!2000) (RightBracket!2000) (Colon!2000) (Null!2000) (Comma!2000) (LeftBracket!2000) (False!4001) (LeftBrace!2000) (ImaginaryLiteralValue!2000 (text!14446 List!11214)) (StringLiteralValue!6000 (value!63102 List!11214)) (EOFValue!2000 (value!63103 List!11214)) (IdentValue!2000 (value!63104 List!11214)) (DelimiterValue!4001 (value!63105 List!11214)) (DedentValue!2000 (value!63106 List!11214)) (NewLineValue!2000 (value!63107 List!11214)) (IntegerValue!6000 (value!63108 (_ BitVec 32)) (text!14447 List!11214)) (IntegerValue!6001 (value!63109 Int) (text!14448 List!11214)) (Times!2000) (Or!2000) (Equal!2000) (Minus!2000) (Broken!10004 (value!63110 List!11214)) (And!2000) (Div!2000) (LessEqual!2000) (Mod!2000) (Concat!5204) (Not!2000) (Plus!2000) (SpaceValue!2000 (value!63111 List!11214)) (IntegerValue!6002 (value!63112 Int) (text!14449 List!11214)) (StringLiteralValue!6001 (text!14450 List!11214)) (FloatLiteralValue!4001 (text!14451 List!11214)) (BytesLiteralValue!2000 (value!63113 List!11214)) (CommentValue!4001 (value!63114 List!11214)) (StringLiteralValue!6002 (value!63115 List!11214)) (ErrorTokenValue!2000 (msg!2061 List!11214)) )
))
(declare-datatypes ((C!6726 0))(
  ( (C!6727 (val!3619 Int)) )
))
(declare-datatypes ((Regex!3204 0))(
  ( (ElementMatch!3204 (c!193985 C!6726)) (Concat!5205 (regOne!6920 Regex!3204) (regTwo!6920 Regex!3204)) (EmptyExpr!3204) (Star!3204 (reg!3533 Regex!3204)) (EmptyLang!3204) (Union!3204 (regOne!6921 Regex!3204) (regTwo!6921 Regex!3204)) )
))
(declare-datatypes ((String!13590 0))(
  ( (String!13591 (value!63116 String)) )
))
(declare-datatypes ((List!11215 0))(
  ( (Nil!11191) (Cons!11191 (h!16592 C!6726) (t!108831 List!11215)) )
))
(declare-datatypes ((IArray!7265 0))(
  ( (IArray!7266 (innerList!3690 List!11215)) )
))
(declare-datatypes ((Conc!3630 0))(
  ( (Node!3630 (left!9749 Conc!3630) (right!10079 Conc!3630) (csize!7490 Int) (cheight!3841 Int)) (Leaf!5608 (xs!6335 IArray!7265) (csize!7491 Int)) (Empty!3630) )
))
(declare-datatypes ((BalanceConc!7282 0))(
  ( (BalanceConc!7283 (c!193986 Conc!3630)) )
))
(declare-datatypes ((TokenValueInjection!3700 0))(
  ( (TokenValueInjection!3701 (toValue!3035 Int) (toChars!2894 Int)) )
))
(declare-datatypes ((Rule!3668 0))(
  ( (Rule!3669 (regex!1934 Regex!3204) (tag!2196 String!13590) (isSeparator!1934 Bool) (transformation!1934 TokenValueInjection!3700)) )
))
(declare-datatypes ((Token!3530 0))(
  ( (Token!3531 (value!63117 TokenValue!2000) (rule!3355 Rule!3668) (size!8812 Int) (originalCharacters!2488 List!11215)) )
))
(declare-datatypes ((List!11216 0))(
  ( (Nil!11192) (Cons!11192 (h!16593 Token!3530) (t!108832 List!11216)) )
))
(declare-datatypes ((List!11217 0))(
  ( (Nil!11193) (Cons!11193 (h!16594 Rule!3668) (t!108833 List!11217)) )
))
(declare-datatypes ((IArray!7267 0))(
  ( (IArray!7268 (innerList!3691 List!11216)) )
))
(declare-datatypes ((Conc!3631 0))(
  ( (Node!3631 (left!9750 Conc!3631) (right!10080 Conc!3631) (csize!7492 Int) (cheight!3842 Int)) (Leaf!5609 (xs!6336 IArray!7267) (csize!7493 Int)) (Empty!3631) )
))
(declare-datatypes ((BalanceConc!7284 0))(
  ( (BalanceConc!7285 (c!193987 Conc!3631)) )
))
(declare-datatypes ((PrintableTokens!554 0))(
  ( (PrintableTokens!555 (rules!9403 List!11217) (tokens!1533 BalanceConc!7284)) )
))
(declare-fun thiss!10527 () PrintableTokens!554)

(declare-fun e!738461 () Bool)

(declare-fun tp!332963 () Bool)

(declare-fun inv!14698 (BalanceConc!7284) Bool)

(assert (=> b!1154827 (= e!738458 (and tp!332963 (inv!14698 (tokens!1533 thiss!10527)) e!738461))))

(declare-fun b!1154828 () Bool)

(declare-fun res!519520 () Bool)

(declare-fun e!738460 () Bool)

(assert (=> b!1154828 (=> (not res!519520) (not e!738460))))

(declare-fun to!267 () Int)

(declare-fun size!8813 (BalanceConc!7284) Int)

(assert (=> b!1154828 (= res!519520 (<= to!267 (size!8813 (tokens!1533 thiss!10527))))))

(declare-fun b!1154829 () Bool)

(declare-fun e!738459 () Bool)

(declare-fun lt!392692 () List!11216)

(declare-datatypes ((LexerInterface!1629 0))(
  ( (LexerInterfaceExt!1626 (__x!7712 Int)) (Lexer!1627) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!497 (LexerInterface!1629 List!11217 List!11216) Bool)

(assert (=> b!1154829 (= e!738459 (rulesProduceEachTokenIndividuallyList!497 Lexer!1627 (rules!9403 thiss!10527) (t!108832 lt!392692)))))

(declare-fun b!1154830 () Bool)

(declare-fun e!738463 () Bool)

(declare-fun isEmpty!6914 (List!11217) Bool)

(assert (=> b!1154830 (= e!738463 (not (isEmpty!6914 (rules!9403 thiss!10527))))))

(declare-fun lt!392693 () List!11216)

(declare-fun from!787 () Int)

(declare-fun list!4128 (BalanceConc!7284) List!11216)

(declare-fun slice!144 (BalanceConc!7284 Int Int) BalanceConc!7284)

(assert (=> b!1154830 (= lt!392693 (list!4128 (slice!144 (tokens!1533 thiss!10527) from!787 to!267)))))

(declare-fun subseq!190 (List!11216 List!11216) Bool)

(declare-fun slice!145 (List!11216 Int Int) List!11216)

(assert (=> b!1154830 (subseq!190 (slice!145 lt!392692 from!787 to!267) lt!392692)))

(declare-datatypes ((Unit!17231 0))(
  ( (Unit!17232) )
))
(declare-fun lt!392694 () Unit!17231)

(declare-fun lemmaSliceSubseq!31 (List!11216 Int Int) Unit!17231)

(assert (=> b!1154830 (= lt!392694 (lemmaSliceSubseq!31 lt!392692 from!787 to!267))))

(declare-fun res!519523 () Bool)

(assert (=> start!100640 (=> (not res!519523) (not e!738460))))

(assert (=> start!100640 (= res!519523 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100640 e!738460))

(assert (=> start!100640 true))

(declare-fun inv!14699 (PrintableTokens!554) Bool)

(assert (=> start!100640 (and (inv!14699 thiss!10527) e!738458)))

(declare-fun e!738464 () Bool)

(assert (=> b!1154831 (= e!738464 (not e!738463))))

(declare-fun res!519522 () Bool)

(assert (=> b!1154831 (=> res!519522 e!738463)))

(declare-fun lambda!46518 () Int)

(declare-fun forall!2853 (BalanceConc!7284 Int) Bool)

(assert (=> b!1154831 (= res!519522 (not (forall!2853 (tokens!1533 thiss!10527) lambda!46518)))))

(declare-fun e!738462 () Bool)

(assert (=> b!1154831 (= (rulesProduceEachTokenIndividuallyList!497 Lexer!1627 (rules!9403 thiss!10527) lt!392692) e!738462)))

(declare-fun res!519521 () Bool)

(assert (=> b!1154831 (=> res!519521 e!738462)))

(assert (=> b!1154831 (= res!519521 (not (is-Cons!11192 lt!392692)))))

(assert (=> b!1154831 (= lt!392692 (list!4128 (tokens!1533 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!668 (LexerInterface!1629 List!11217 BalanceConc!7284) Bool)

(assert (=> b!1154831 (= (rulesProduceEachTokenIndividually!668 Lexer!1627 (rules!9403 thiss!10527) (tokens!1533 thiss!10527)) (forall!2853 (tokens!1533 thiss!10527) lambda!46518))))

(declare-fun b!1154832 () Bool)

(assert (=> b!1154832 (= e!738462 e!738459)))

(declare-fun res!519525 () Bool)

(assert (=> b!1154832 (=> (not res!519525) (not e!738459))))

(declare-fun rulesProduceIndividualToken!666 (LexerInterface!1629 List!11217 Token!3530) Bool)

(assert (=> b!1154832 (= res!519525 (rulesProduceIndividualToken!666 Lexer!1627 (rules!9403 thiss!10527) (h!16593 lt!392692)))))

(declare-fun b!1154833 () Bool)

(declare-fun tp!332964 () Bool)

(declare-fun inv!14700 (Conc!3631) Bool)

(assert (=> b!1154833 (= e!738461 (and (inv!14700 (c!193987 (tokens!1533 thiss!10527))) tp!332964))))

(declare-fun b!1154834 () Bool)

(assert (=> b!1154834 (= e!738460 e!738464)))

(declare-fun res!519524 () Bool)

(assert (=> b!1154834 (=> (not res!519524) (not e!738464))))

(declare-fun rulesInvariant!1503 (LexerInterface!1629 List!11217) Bool)

(assert (=> b!1154834 (= res!519524 (rulesInvariant!1503 Lexer!1627 (rules!9403 thiss!10527)))))

(declare-fun lt!392691 () Unit!17231)

(declare-fun lemmaInvariant!121 (PrintableTokens!554) Unit!17231)

(assert (=> b!1154834 (= lt!392691 (lemmaInvariant!121 thiss!10527))))

(assert (= (and start!100640 res!519523) b!1154828))

(assert (= (and b!1154828 res!519520) b!1154834))

(assert (= (and b!1154834 res!519524) b!1154831))

(assert (= (and b!1154831 (not res!519521)) b!1154832))

(assert (= (and b!1154832 res!519525) b!1154829))

(assert (= (and b!1154831 (not res!519522)) b!1154830))

(assert (= b!1154827 b!1154833))

(assert (= start!100640 b!1154827))

(declare-fun m!1321855 () Bool)

(assert (=> b!1154829 m!1321855))

(declare-fun m!1321857 () Bool)

(assert (=> b!1154830 m!1321857))

(declare-fun m!1321859 () Bool)

(assert (=> b!1154830 m!1321859))

(declare-fun m!1321861 () Bool)

(assert (=> b!1154830 m!1321861))

(declare-fun m!1321863 () Bool)

(assert (=> b!1154830 m!1321863))

(assert (=> b!1154830 m!1321859))

(declare-fun m!1321865 () Bool)

(assert (=> b!1154830 m!1321865))

(assert (=> b!1154830 m!1321865))

(declare-fun m!1321867 () Bool)

(assert (=> b!1154830 m!1321867))

(declare-fun m!1321869 () Bool)

(assert (=> b!1154834 m!1321869))

(declare-fun m!1321871 () Bool)

(assert (=> b!1154834 m!1321871))

(declare-fun m!1321873 () Bool)

(assert (=> b!1154831 m!1321873))

(declare-fun m!1321875 () Bool)

(assert (=> b!1154831 m!1321875))

(assert (=> b!1154831 m!1321873))

(declare-fun m!1321877 () Bool)

(assert (=> b!1154831 m!1321877))

(declare-fun m!1321879 () Bool)

(assert (=> b!1154831 m!1321879))

(declare-fun m!1321881 () Bool)

(assert (=> b!1154832 m!1321881))

(declare-fun m!1321883 () Bool)

(assert (=> start!100640 m!1321883))

(declare-fun m!1321885 () Bool)

(assert (=> b!1154828 m!1321885))

(declare-fun m!1321887 () Bool)

(assert (=> b!1154833 m!1321887))

(declare-fun m!1321889 () Bool)

(assert (=> b!1154827 m!1321889))

(push 1)

(assert (not b!1154828))

(assert (not b!1154841))

(assert (not b!1154827))

(assert (not b!1154829))

(assert (not b!1154842))

(assert (not b!1154833))

(assert (not start!100640))

(assert (not b!1154830))

(assert (not b!1154831))

(assert (not b!1154832))

(assert (not b!1154834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!330168 () Bool)

(declare-fun isBalanced!1024 (Conc!3631) Bool)

(assert (=> d!330168 (= (inv!14698 (tokens!1533 thiss!10527)) (isBalanced!1024 (c!193987 (tokens!1533 thiss!10527))))))

(declare-fun bs!282793 () Bool)

(assert (= bs!282793 d!330168))

(declare-fun m!1321927 () Bool)

(assert (=> bs!282793 m!1321927))

(assert (=> b!1154827 d!330168))

(declare-fun d!330170 () Bool)

(declare-fun res!519554 () Bool)

(declare-fun e!738500 () Bool)

(assert (=> d!330170 (=> (not res!519554) (not e!738500))))

(assert (=> d!330170 (= res!519554 (not (isEmpty!6914 (rules!9403 thiss!10527))))))

(assert (=> d!330170 (= (inv!14699 thiss!10527) e!738500)))

(declare-fun b!1154881 () Bool)

(declare-fun res!519555 () Bool)

(assert (=> b!1154881 (=> (not res!519555) (not e!738500))))

(assert (=> b!1154881 (= res!519555 (rulesInvariant!1503 Lexer!1627 (rules!9403 thiss!10527)))))

(declare-fun b!1154882 () Bool)

(declare-fun res!519556 () Bool)

(assert (=> b!1154882 (=> (not res!519556) (not e!738500))))

(assert (=> b!1154882 (= res!519556 (rulesProduceEachTokenIndividually!668 Lexer!1627 (rules!9403 thiss!10527) (tokens!1533 thiss!10527)))))

(declare-fun b!1154883 () Bool)

(declare-fun separableTokens!86 (LexerInterface!1629 BalanceConc!7284 List!11217) Bool)

(assert (=> b!1154883 (= e!738500 (separableTokens!86 Lexer!1627 (tokens!1533 thiss!10527) (rules!9403 thiss!10527)))))

(assert (= (and d!330170 res!519554) b!1154881))

(assert (= (and b!1154881 res!519555) b!1154882))

(assert (= (and b!1154882 res!519556) b!1154883))

(assert (=> d!330170 m!1321857))

(assert (=> b!1154881 m!1321869))

(assert (=> b!1154882 m!1321879))

(declare-fun m!1321931 () Bool)

(assert (=> b!1154883 m!1321931))

(assert (=> start!100640 d!330170))

(declare-fun d!330176 () Bool)

(declare-fun c!193993 () Bool)

(assert (=> d!330176 (= c!193993 (is-Node!3631 (c!193987 (tokens!1533 thiss!10527))))))

(declare-fun e!738505 () Bool)

(assert (=> d!330176 (= (inv!14700 (c!193987 (tokens!1533 thiss!10527))) e!738505)))

(declare-fun b!1154890 () Bool)

(declare-fun inv!14704 (Conc!3631) Bool)

(assert (=> b!1154890 (= e!738505 (inv!14704 (c!193987 (tokens!1533 thiss!10527))))))

(declare-fun b!1154891 () Bool)

(declare-fun e!738506 () Bool)

(assert (=> b!1154891 (= e!738505 e!738506)))

(declare-fun res!519559 () Bool)

(assert (=> b!1154891 (= res!519559 (not (is-Leaf!5609 (c!193987 (tokens!1533 thiss!10527)))))))

(assert (=> b!1154891 (=> res!519559 e!738506)))

(declare-fun b!1154892 () Bool)

(declare-fun inv!14705 (Conc!3631) Bool)

(assert (=> b!1154892 (= e!738506 (inv!14705 (c!193987 (tokens!1533 thiss!10527))))))

(assert (= (and d!330176 c!193993) b!1154890))

(assert (= (and d!330176 (not c!193993)) b!1154891))

(assert (= (and b!1154891 (not res!519559)) b!1154892))

(declare-fun m!1321933 () Bool)

(assert (=> b!1154890 m!1321933))

(declare-fun m!1321935 () Bool)

(assert (=> b!1154892 m!1321935))

(assert (=> b!1154833 d!330176))

(declare-fun d!330178 () Bool)

(declare-fun lt!392709 () Int)

(declare-fun size!8816 (List!11216) Int)

(assert (=> d!330178 (= lt!392709 (size!8816 (list!4128 (tokens!1533 thiss!10527))))))

(declare-fun size!8817 (Conc!3631) Int)

(assert (=> d!330178 (= lt!392709 (size!8817 (c!193987 (tokens!1533 thiss!10527))))))

(assert (=> d!330178 (= (size!8813 (tokens!1533 thiss!10527)) lt!392709)))

(declare-fun bs!282795 () Bool)

(assert (= bs!282795 d!330178))

(assert (=> bs!282795 m!1321875))

(assert (=> bs!282795 m!1321875))

(declare-fun m!1321937 () Bool)

(assert (=> bs!282795 m!1321937))

(declare-fun m!1321939 () Bool)

(assert (=> bs!282795 m!1321939))

(assert (=> b!1154828 d!330178))

(declare-fun d!330180 () Bool)

(declare-fun res!519562 () Bool)

(declare-fun e!738509 () Bool)

(assert (=> d!330180 (=> (not res!519562) (not e!738509))))

(declare-fun rulesValid!666 (LexerInterface!1629 List!11217) Bool)

(assert (=> d!330180 (= res!519562 (rulesValid!666 Lexer!1627 (rules!9403 thiss!10527)))))

(assert (=> d!330180 (= (rulesInvariant!1503 Lexer!1627 (rules!9403 thiss!10527)) e!738509)))

(declare-fun b!1154895 () Bool)

(declare-datatypes ((List!11222 0))(
  ( (Nil!11198) (Cons!11198 (h!16599 String!13590) (t!108852 List!11222)) )
))
(declare-fun noDuplicateTag!666 (LexerInterface!1629 List!11217 List!11222) Bool)

(assert (=> b!1154895 (= e!738509 (noDuplicateTag!666 Lexer!1627 (rules!9403 thiss!10527) Nil!11198))))

(assert (= (and d!330180 res!519562) b!1154895))

(declare-fun m!1321941 () Bool)

(assert (=> d!330180 m!1321941))

(declare-fun m!1321943 () Bool)

(assert (=> b!1154895 m!1321943))

(assert (=> b!1154834 d!330180))

(declare-fun d!330182 () Bool)

(declare-fun e!738527 () Bool)

(assert (=> d!330182 e!738527))

(declare-fun res!519573 () Bool)

(assert (=> d!330182 (=> (not res!519573) (not e!738527))))

(assert (=> d!330182 (= res!519573 (rulesInvariant!1503 Lexer!1627 (rules!9403 thiss!10527)))))

(declare-fun Unit!17236 () Unit!17231)

(assert (=> d!330182 (= (lemmaInvariant!121 thiss!10527) Unit!17236)))

(declare-fun b!1154919 () Bool)

(declare-fun res!519574 () Bool)

(assert (=> b!1154919 (=> (not res!519574) (not e!738527))))

(assert (=> b!1154919 (= res!519574 (rulesProduceEachTokenIndividually!668 Lexer!1627 (rules!9403 thiss!10527) (tokens!1533 thiss!10527)))))

(declare-fun b!1154920 () Bool)

(assert (=> b!1154920 (= e!738527 (separableTokens!86 Lexer!1627 (tokens!1533 thiss!10527) (rules!9403 thiss!10527)))))

(assert (= (and d!330182 res!519573) b!1154919))

(assert (= (and b!1154919 res!519574) b!1154920))

(assert (=> d!330182 m!1321869))

(assert (=> b!1154919 m!1321879))

(assert (=> b!1154920 m!1321931))

(assert (=> b!1154834 d!330182))

(declare-fun bs!282797 () Bool)

(declare-fun d!330186 () Bool)

(assert (= bs!282797 (and d!330186 b!1154831)))

(declare-fun lambda!46529 () Int)

(assert (=> bs!282797 (= lambda!46529 lambda!46518)))

(declare-fun b!1154943 () Bool)

(declare-fun e!738546 () Bool)

(assert (=> b!1154943 (= e!738546 true)))

(declare-fun b!1154942 () Bool)

(declare-fun e!738545 () Bool)

(assert (=> b!1154942 (= e!738545 e!738546)))

(declare-fun b!1154941 () Bool)

(declare-fun e!738544 () Bool)

(assert (=> b!1154941 (= e!738544 e!738545)))

(assert (=> d!330186 e!738544))

(assert (= b!1154942 b!1154943))

(assert (= b!1154941 b!1154942))

(assert (= (and d!330186 (is-Cons!11193 (rules!9403 thiss!10527))) b!1154941))

(declare-fun order!6839 () Int)

(declare-fun order!6837 () Int)

(declare-fun dynLambda!4933 (Int Int) Int)

(declare-fun dynLambda!4934 (Int Int) Int)

(assert (=> b!1154943 (< (dynLambda!4933 order!6837 (toValue!3035 (transformation!1934 (h!16594 (rules!9403 thiss!10527))))) (dynLambda!4934 order!6839 lambda!46529))))

(declare-fun order!6841 () Int)

(declare-fun dynLambda!4935 (Int Int) Int)

(assert (=> b!1154943 (< (dynLambda!4935 order!6841 (toChars!2894 (transformation!1934 (h!16594 (rules!9403 thiss!10527))))) (dynLambda!4934 order!6839 lambda!46529))))

(assert (=> d!330186 true))

(declare-fun lt!392715 () Bool)

(declare-fun forall!2855 (List!11216 Int) Bool)

(assert (=> d!330186 (= lt!392715 (forall!2855 (t!108832 lt!392692) lambda!46529))))

(declare-fun e!738533 () Bool)

(assert (=> d!330186 (= lt!392715 e!738533)))

(declare-fun res!519580 () Bool)

(assert (=> d!330186 (=> res!519580 e!738533)))

(assert (=> d!330186 (= res!519580 (not (is-Cons!11192 (t!108832 lt!392692))))))

(assert (=> d!330186 (not (isEmpty!6914 (rules!9403 thiss!10527)))))

(assert (=> d!330186 (= (rulesProduceEachTokenIndividuallyList!497 Lexer!1627 (rules!9403 thiss!10527) (t!108832 lt!392692)) lt!392715)))

(declare-fun b!1154925 () Bool)

(declare-fun e!738532 () Bool)

(assert (=> b!1154925 (= e!738533 e!738532)))

(declare-fun res!519579 () Bool)

(assert (=> b!1154925 (=> (not res!519579) (not e!738532))))

(assert (=> b!1154925 (= res!519579 (rulesProduceIndividualToken!666 Lexer!1627 (rules!9403 thiss!10527) (h!16593 (t!108832 lt!392692))))))

(declare-fun b!1154926 () Bool)

(assert (=> b!1154926 (= e!738532 (rulesProduceEachTokenIndividuallyList!497 Lexer!1627 (rules!9403 thiss!10527) (t!108832 (t!108832 lt!392692))))))

(assert (= (and d!330186 (not res!519580)) b!1154925))

(assert (= (and b!1154925 res!519579) b!1154926))

(declare-fun m!1321951 () Bool)

(assert (=> d!330186 m!1321951))

(assert (=> d!330186 m!1321857))

(declare-fun m!1321953 () Bool)

(assert (=> b!1154925 m!1321953))

(declare-fun m!1321955 () Bool)

(assert (=> b!1154926 m!1321955))

(assert (=> b!1154829 d!330186))

(declare-fun d!330188 () Bool)

(assert (=> d!330188 (subseq!190 (slice!145 lt!392692 from!787 to!267) lt!392692)))

(declare-fun lt!392724 () Unit!17231)

(declare-fun choose!7413 (List!11216 Int Int) Unit!17231)

(assert (=> d!330188 (= lt!392724 (choose!7413 lt!392692 from!787 to!267))))

(declare-fun e!738551 () Bool)

(assert (=> d!330188 e!738551))

(declare-fun res!519592 () Bool)

(assert (=> d!330188 (=> (not res!519592) (not e!738551))))

(assert (=> d!330188 (= res!519592 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!330188 (= (lemmaSliceSubseq!31 lt!392692 from!787 to!267) lt!392724)))

(declare-fun b!1154951 () Bool)

(assert (=> b!1154951 (= e!738551 (<= to!267 (size!8816 lt!392692)))))

(assert (= (and d!330188 res!519592) b!1154951))

(assert (=> d!330188 m!1321865))

(assert (=> d!330188 m!1321865))

(assert (=> d!330188 m!1321867))

(declare-fun m!1321975 () Bool)

(assert (=> d!330188 m!1321975))

(declare-fun m!1321977 () Bool)

(assert (=> b!1154951 m!1321977))

(assert (=> b!1154830 d!330188))

(declare-fun d!330192 () Bool)

(assert (=> d!330192 (= (isEmpty!6914 (rules!9403 thiss!10527)) (is-Nil!11193 (rules!9403 thiss!10527)))))

(assert (=> b!1154830 d!330192))

(declare-fun e!738564 () Bool)

(declare-fun b!1154965 () Bool)

(assert (=> b!1154965 (= e!738564 (subseq!190 (t!108832 (slice!145 lt!392692 from!787 to!267)) (t!108832 lt!392692)))))

(declare-fun e!738563 () Bool)

(declare-fun b!1154966 () Bool)

(assert (=> b!1154966 (= e!738563 (subseq!190 (slice!145 lt!392692 from!787 to!267) (t!108832 lt!392692)))))

(declare-fun d!330194 () Bool)

(declare-fun res!519607 () Bool)

(declare-fun e!738565 () Bool)

(assert (=> d!330194 (=> res!519607 e!738565)))

(assert (=> d!330194 (= res!519607 (is-Nil!11192 (slice!145 lt!392692 from!787 to!267)))))

(assert (=> d!330194 (= (subseq!190 (slice!145 lt!392692 from!787 to!267) lt!392692) e!738565)))

(declare-fun b!1154964 () Bool)

(declare-fun e!738566 () Bool)

(assert (=> b!1154964 (= e!738566 e!738563)))

(declare-fun res!519606 () Bool)

(assert (=> b!1154964 (=> res!519606 e!738563)))

(assert (=> b!1154964 (= res!519606 e!738564)))

(declare-fun res!519604 () Bool)

(assert (=> b!1154964 (=> (not res!519604) (not e!738564))))

(assert (=> b!1154964 (= res!519604 (= (h!16593 (slice!145 lt!392692 from!787 to!267)) (h!16593 lt!392692)))))

(declare-fun b!1154963 () Bool)

(assert (=> b!1154963 (= e!738565 e!738566)))

(declare-fun res!519605 () Bool)

(assert (=> b!1154963 (=> (not res!519605) (not e!738566))))

(assert (=> b!1154963 (= res!519605 (is-Cons!11192 lt!392692))))

(assert (= (and d!330194 (not res!519607)) b!1154963))

(assert (= (and b!1154963 res!519605) b!1154964))

(assert (= (and b!1154964 res!519604) b!1154965))

(assert (= (and b!1154964 (not res!519606)) b!1154966))

(declare-fun m!1321983 () Bool)

(assert (=> b!1154965 m!1321983))

(assert (=> b!1154966 m!1321865))

(declare-fun m!1321985 () Bool)

(assert (=> b!1154966 m!1321985))

(assert (=> b!1154830 d!330194))

(declare-fun d!330198 () Bool)

(declare-fun e!738571 () Bool)

(assert (=> d!330198 e!738571))

(declare-fun res!519616 () Bool)

(assert (=> d!330198 (=> (not res!519616) (not e!738571))))

(declare-fun slice!148 (Conc!3631 Int Int) Conc!3631)

(assert (=> d!330198 (= res!519616 (isBalanced!1024 (slice!148 (c!193987 (tokens!1533 thiss!10527)) from!787 to!267)))))

(declare-fun lt!392727 () BalanceConc!7284)

(assert (=> d!330198 (= lt!392727 (BalanceConc!7285 (slice!148 (c!193987 (tokens!1533 thiss!10527)) from!787 to!267)))))

(declare-fun e!738572 () Bool)

(assert (=> d!330198 e!738572))

(declare-fun res!519615 () Bool)

(assert (=> d!330198 (=> (not res!519615) (not e!738572))))

(assert (=> d!330198 (= res!519615 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!330198 (= (slice!144 (tokens!1533 thiss!10527) from!787 to!267) lt!392727)))

(declare-fun b!1154973 () Bool)

(declare-fun res!519614 () Bool)

(assert (=> b!1154973 (=> (not res!519614) (not e!738572))))

(assert (=> b!1154973 (= res!519614 (<= to!267 (size!8813 (tokens!1533 thiss!10527))))))

(declare-fun b!1154974 () Bool)

(assert (=> b!1154974 (= e!738572 (isBalanced!1024 (c!193987 (tokens!1533 thiss!10527))))))

(declare-fun b!1154975 () Bool)

(assert (=> b!1154975 (= e!738571 (= (list!4128 lt!392727) (slice!145 (list!4128 (tokens!1533 thiss!10527)) from!787 to!267)))))

(assert (= (and d!330198 res!519615) b!1154973))

(assert (= (and b!1154973 res!519614) b!1154974))

(assert (= (and d!330198 res!519616) b!1154975))

(declare-fun m!1321987 () Bool)

(assert (=> d!330198 m!1321987))

(assert (=> d!330198 m!1321987))

(declare-fun m!1321989 () Bool)

(assert (=> d!330198 m!1321989))

(assert (=> b!1154973 m!1321885))

(assert (=> b!1154974 m!1321927))

(declare-fun m!1321991 () Bool)

(assert (=> b!1154975 m!1321991))

(assert (=> b!1154975 m!1321875))

(assert (=> b!1154975 m!1321875))

(declare-fun m!1321993 () Bool)

(assert (=> b!1154975 m!1321993))

(assert (=> b!1154830 d!330198))

(declare-fun d!330200 () Bool)

(declare-fun take!37 (List!11216 Int) List!11216)

(declare-fun drop!439 (List!11216 Int) List!11216)

(assert (=> d!330200 (= (slice!145 lt!392692 from!787 to!267) (take!37 (drop!439 lt!392692 from!787) (- to!267 from!787)))))

(declare-fun bs!282798 () Bool)

(assert (= bs!282798 d!330200))

(declare-fun m!1321995 () Bool)

(assert (=> bs!282798 m!1321995))

(assert (=> bs!282798 m!1321995))

(declare-fun m!1321997 () Bool)

(assert (=> bs!282798 m!1321997))

(assert (=> b!1154830 d!330200))

(declare-fun d!330202 () Bool)

(declare-fun list!4130 (Conc!3631) List!11216)

(assert (=> d!330202 (= (list!4128 (slice!144 (tokens!1533 thiss!10527) from!787 to!267)) (list!4130 (c!193987 (slice!144 (tokens!1533 thiss!10527) from!787 to!267))))))

(declare-fun bs!282799 () Bool)

(assert (= bs!282799 d!330202))

(declare-fun m!1321999 () Bool)

(assert (=> bs!282799 m!1321999))

(assert (=> b!1154830 d!330202))

(declare-fun bs!282800 () Bool)

(declare-fun d!330204 () Bool)

(assert (= bs!282800 (and d!330204 b!1154831)))

(declare-fun lambda!46534 () Int)

(assert (=> bs!282800 (= lambda!46534 lambda!46518)))

(declare-fun bs!282801 () Bool)

(assert (= bs!282801 (and d!330204 d!330186)))

(assert (=> bs!282801 (= lambda!46534 lambda!46529)))

(declare-fun b!1154987 () Bool)

(declare-fun e!738581 () Bool)

(assert (=> b!1154987 (= e!738581 true)))

(declare-fun b!1154986 () Bool)

(declare-fun e!738580 () Bool)

(assert (=> b!1154986 (= e!738580 e!738581)))

(declare-fun b!1154985 () Bool)

(declare-fun e!738579 () Bool)

(assert (=> b!1154985 (= e!738579 e!738580)))

(assert (=> d!330204 e!738579))

(assert (= b!1154986 b!1154987))

(assert (= b!1154985 b!1154986))

(assert (= (and d!330204 (is-Cons!11193 (rules!9403 thiss!10527))) b!1154985))

(assert (=> b!1154987 (< (dynLambda!4933 order!6837 (toValue!3035 (transformation!1934 (h!16594 (rules!9403 thiss!10527))))) (dynLambda!4934 order!6839 lambda!46534))))

(assert (=> b!1154987 (< (dynLambda!4935 order!6841 (toChars!2894 (transformation!1934 (h!16594 (rules!9403 thiss!10527))))) (dynLambda!4934 order!6839 lambda!46534))))

(assert (=> d!330204 true))

(declare-fun e!738578 () Bool)

(assert (=> d!330204 e!738578))

(declare-fun res!519625 () Bool)

(assert (=> d!330204 (=> (not res!519625) (not e!738578))))

(declare-fun lt!392730 () Bool)

(assert (=> d!330204 (= res!519625 (= lt!392730 (forall!2855 (list!4128 (tokens!1533 thiss!10527)) lambda!46534)))))

(assert (=> d!330204 (= lt!392730 (forall!2853 (tokens!1533 thiss!10527) lambda!46534))))

(assert (=> d!330204 (not (isEmpty!6914 (rules!9403 thiss!10527)))))

(assert (=> d!330204 (= (rulesProduceEachTokenIndividually!668 Lexer!1627 (rules!9403 thiss!10527) (tokens!1533 thiss!10527)) lt!392730)))

(declare-fun b!1154984 () Bool)

(assert (=> b!1154984 (= e!738578 (= lt!392730 (rulesProduceEachTokenIndividuallyList!497 Lexer!1627 (rules!9403 thiss!10527) (list!4128 (tokens!1533 thiss!10527)))))))

(assert (= (and d!330204 res!519625) b!1154984))

(assert (=> d!330204 m!1321875))

(assert (=> d!330204 m!1321875))

(declare-fun m!1322003 () Bool)

(assert (=> d!330204 m!1322003))

(declare-fun m!1322005 () Bool)

(assert (=> d!330204 m!1322005))

(assert (=> d!330204 m!1321857))

(assert (=> b!1154984 m!1321875))

(assert (=> b!1154984 m!1321875))

(declare-fun m!1322007 () Bool)

(assert (=> b!1154984 m!1322007))

(assert (=> b!1154831 d!330204))

(declare-fun d!330208 () Bool)

(assert (=> d!330208 (= (list!4128 (tokens!1533 thiss!10527)) (list!4130 (c!193987 (tokens!1533 thiss!10527))))))

(declare-fun bs!282802 () Bool)

(assert (= bs!282802 d!330208))

(declare-fun m!1322009 () Bool)

(assert (=> bs!282802 m!1322009))

(assert (=> b!1154831 d!330208))

(declare-fun d!330210 () Bool)

(declare-fun lt!392733 () Bool)

(assert (=> d!330210 (= lt!392733 (forall!2855 (list!4128 (tokens!1533 thiss!10527)) lambda!46518))))

(declare-fun forall!2856 (Conc!3631 Int) Bool)

(assert (=> d!330210 (= lt!392733 (forall!2856 (c!193987 (tokens!1533 thiss!10527)) lambda!46518))))

(assert (=> d!330210 (= (forall!2853 (tokens!1533 thiss!10527) lambda!46518) lt!392733)))

(declare-fun bs!282803 () Bool)

(assert (= bs!282803 d!330210))

(assert (=> bs!282803 m!1321875))

(assert (=> bs!282803 m!1321875))

(declare-fun m!1322011 () Bool)

(assert (=> bs!282803 m!1322011))

(declare-fun m!1322013 () Bool)

(assert (=> bs!282803 m!1322013))

(assert (=> b!1154831 d!330210))

(declare-fun bs!282804 () Bool)

(declare-fun d!330212 () Bool)

(assert (= bs!282804 (and d!330212 b!1154831)))

(declare-fun lambda!46535 () Int)

(assert (=> bs!282804 (= lambda!46535 lambda!46518)))

(declare-fun bs!282805 () Bool)

(assert (= bs!282805 (and d!330212 d!330186)))

(assert (=> bs!282805 (= lambda!46535 lambda!46529)))

(declare-fun bs!282806 () Bool)

(assert (= bs!282806 (and d!330212 d!330204)))

(assert (=> bs!282806 (= lambda!46535 lambda!46534)))

(declare-fun b!1154992 () Bool)

(declare-fun e!738586 () Bool)

(assert (=> b!1154992 (= e!738586 true)))

(declare-fun b!1154991 () Bool)

(declare-fun e!738585 () Bool)

(assert (=> b!1154991 (= e!738585 e!738586)))

(declare-fun b!1154990 () Bool)

(declare-fun e!738584 () Bool)

(assert (=> b!1154990 (= e!738584 e!738585)))

(assert (=> d!330212 e!738584))

(assert (= b!1154991 b!1154992))

(assert (= b!1154990 b!1154991))

(assert (= (and d!330212 (is-Cons!11193 (rules!9403 thiss!10527))) b!1154990))

(assert (=> b!1154992 (< (dynLambda!4933 order!6837 (toValue!3035 (transformation!1934 (h!16594 (rules!9403 thiss!10527))))) (dynLambda!4934 order!6839 lambda!46535))))

(assert (=> b!1154992 (< (dynLambda!4935 order!6841 (toChars!2894 (transformation!1934 (h!16594 (rules!9403 thiss!10527))))) (dynLambda!4934 order!6839 lambda!46535))))

(assert (=> d!330212 true))

(declare-fun lt!392734 () Bool)

(assert (=> d!330212 (= lt!392734 (forall!2855 lt!392692 lambda!46535))))

(declare-fun e!738583 () Bool)

(assert (=> d!330212 (= lt!392734 e!738583)))

(declare-fun res!519627 () Bool)

(assert (=> d!330212 (=> res!519627 e!738583)))

(assert (=> d!330212 (= res!519627 (not (is-Cons!11192 lt!392692)))))

(assert (=> d!330212 (not (isEmpty!6914 (rules!9403 thiss!10527)))))

(assert (=> d!330212 (= (rulesProduceEachTokenIndividuallyList!497 Lexer!1627 (rules!9403 thiss!10527) lt!392692) lt!392734)))

(declare-fun b!1154988 () Bool)

(declare-fun e!738582 () Bool)

(assert (=> b!1154988 (= e!738583 e!738582)))

(declare-fun res!519626 () Bool)

(assert (=> b!1154988 (=> (not res!519626) (not e!738582))))

(assert (=> b!1154988 (= res!519626 (rulesProduceIndividualToken!666 Lexer!1627 (rules!9403 thiss!10527) (h!16593 lt!392692)))))

(declare-fun b!1154989 () Bool)

(assert (=> b!1154989 (= e!738582 (rulesProduceEachTokenIndividuallyList!497 Lexer!1627 (rules!9403 thiss!10527) (t!108832 lt!392692)))))

(assert (= (and d!330212 (not res!519627)) b!1154988))

(assert (= (and b!1154988 res!519626) b!1154989))

(declare-fun m!1322015 () Bool)

(assert (=> d!330212 m!1322015))

(assert (=> d!330212 m!1321857))

(assert (=> b!1154988 m!1321881))

(assert (=> b!1154989 m!1321855))

(assert (=> b!1154831 d!330212))

(declare-fun d!330214 () Bool)

(declare-fun lt!392739 () Bool)

(declare-fun e!738592 () Bool)

(assert (=> d!330214 (= lt!392739 e!738592)))

(declare-fun res!519635 () Bool)

(assert (=> d!330214 (=> (not res!519635) (not e!738592))))

(declare-datatypes ((tuple2!11956 0))(
  ( (tuple2!11957 (_1!6825 BalanceConc!7284) (_2!6825 BalanceConc!7282)) )
))
(declare-fun lex!671 (LexerInterface!1629 List!11217 BalanceConc!7282) tuple2!11956)

(declare-fun print!608 (LexerInterface!1629 BalanceConc!7284) BalanceConc!7282)

(declare-fun singletonSeq!626 (Token!3530) BalanceConc!7284)

(assert (=> d!330214 (= res!519635 (= (list!4128 (_1!6825 (lex!671 Lexer!1627 (rules!9403 thiss!10527) (print!608 Lexer!1627 (singletonSeq!626 (h!16593 lt!392692)))))) (list!4128 (singletonSeq!626 (h!16593 lt!392692)))))))

(declare-fun e!738591 () Bool)

(assert (=> d!330214 (= lt!392739 e!738591)))

(declare-fun res!519636 () Bool)

(assert (=> d!330214 (=> (not res!519636) (not e!738591))))

(declare-fun lt!392740 () tuple2!11956)

(assert (=> d!330214 (= res!519636 (= (size!8813 (_1!6825 lt!392740)) 1))))

(assert (=> d!330214 (= lt!392740 (lex!671 Lexer!1627 (rules!9403 thiss!10527) (print!608 Lexer!1627 (singletonSeq!626 (h!16593 lt!392692)))))))

(assert (=> d!330214 (not (isEmpty!6914 (rules!9403 thiss!10527)))))

(assert (=> d!330214 (= (rulesProduceIndividualToken!666 Lexer!1627 (rules!9403 thiss!10527) (h!16593 lt!392692)) lt!392739)))

(declare-fun b!1154999 () Bool)

(declare-fun res!519634 () Bool)

(assert (=> b!1154999 (=> (not res!519634) (not e!738591))))

(declare-fun apply!2395 (BalanceConc!7284 Int) Token!3530)

(assert (=> b!1154999 (= res!519634 (= (apply!2395 (_1!6825 lt!392740) 0) (h!16593 lt!392692)))))

(declare-fun b!1155000 () Bool)

(declare-fun isEmpty!6916 (BalanceConc!7282) Bool)

(assert (=> b!1155000 (= e!738591 (isEmpty!6916 (_2!6825 lt!392740)))))

(declare-fun b!1155001 () Bool)

(assert (=> b!1155001 (= e!738592 (isEmpty!6916 (_2!6825 (lex!671 Lexer!1627 (rules!9403 thiss!10527) (print!608 Lexer!1627 (singletonSeq!626 (h!16593 lt!392692)))))))))

(assert (= (and d!330214 res!519636) b!1154999))

(assert (= (and b!1154999 res!519634) b!1155000))

(assert (= (and d!330214 res!519635) b!1155001))

(declare-fun m!1322017 () Bool)

(assert (=> d!330214 m!1322017))

(assert (=> d!330214 m!1321857))

(declare-fun m!1322019 () Bool)

(assert (=> d!330214 m!1322019))

(assert (=> d!330214 m!1322017))

(declare-fun m!1322021 () Bool)

(assert (=> d!330214 m!1322021))

(declare-fun m!1322023 () Bool)

(assert (=> d!330214 m!1322023))

(assert (=> d!330214 m!1322021))

(declare-fun m!1322025 () Bool)

(assert (=> d!330214 m!1322025))

(assert (=> d!330214 m!1322017))

(declare-fun m!1322027 () Bool)

(assert (=> d!330214 m!1322027))

(declare-fun m!1322029 () Bool)

(assert (=> b!1154999 m!1322029))

(declare-fun m!1322031 () Bool)

(assert (=> b!1155000 m!1322031))

(assert (=> b!1155001 m!1322017))

(assert (=> b!1155001 m!1322017))

(assert (=> b!1155001 m!1322021))

(assert (=> b!1155001 m!1322021))

(assert (=> b!1155001 m!1322025))

(declare-fun m!1322033 () Bool)

(assert (=> b!1155001 m!1322033))

(assert (=> b!1154832 d!330214))

(declare-fun b!1155018 () Bool)

(declare-fun b_free!27641 () Bool)

(declare-fun b_next!28345 () Bool)

(assert (=> b!1155018 (= b_free!27641 (not b_next!28345))))

(declare-fun tp!332982 () Bool)

(declare-fun b_and!80517 () Bool)

(assert (=> b!1155018 (= tp!332982 b_and!80517)))

(declare-fun b_free!27643 () Bool)

(declare-fun b_next!28347 () Bool)

(assert (=> b!1155018 (= b_free!27643 (not b_next!28347))))

(declare-fun tp!332981 () Bool)

(declare-fun b_and!80519 () Bool)

(assert (=> b!1155018 (= tp!332981 b_and!80519)))

(declare-fun e!738603 () Bool)

(assert (=> b!1155018 (= e!738603 (and tp!332982 tp!332981))))

(declare-fun tp!332979 () Bool)

(declare-fun b!1155017 () Bool)

(declare-fun e!738605 () Bool)

(declare-fun inv!14695 (String!13590) Bool)

(declare-fun inv!14706 (TokenValueInjection!3700) Bool)

(assert (=> b!1155017 (= e!738605 (and tp!332979 (inv!14695 (tag!2196 (h!16594 (rules!9403 thiss!10527)))) (inv!14706 (transformation!1934 (h!16594 (rules!9403 thiss!10527)))) e!738603))))

(declare-fun b!1155016 () Bool)

(declare-fun e!738606 () Bool)

(declare-fun tp!332980 () Bool)

(assert (=> b!1155016 (= e!738606 (and e!738605 tp!332980))))

(assert (=> b!1154827 (= tp!332963 e!738606)))

(assert (= b!1155017 b!1155018))

(assert (= b!1155016 b!1155017))

(assert (= (and b!1154827 (is-Cons!11193 (rules!9403 thiss!10527))) b!1155016))

(declare-fun m!1322035 () Bool)

(assert (=> b!1155017 m!1322035))

(declare-fun m!1322037 () Bool)

(assert (=> b!1155017 m!1322037))

(declare-fun tp!332991 () Bool)

(declare-fun tp!332990 () Bool)

(declare-fun b!1155030 () Bool)

(declare-fun e!738613 () Bool)

(assert (=> b!1155030 (= e!738613 (and (inv!14700 (left!9750 (c!193987 (tokens!1533 thiss!10527)))) tp!332991 (inv!14700 (right!10080 (c!193987 (tokens!1533 thiss!10527)))) tp!332990))))

(declare-fun b!1155032 () Bool)

(declare-fun e!738612 () Bool)

(declare-fun tp!332989 () Bool)

(assert (=> b!1155032 (= e!738612 tp!332989)))

(declare-fun b!1155031 () Bool)

(declare-fun inv!14707 (IArray!7267) Bool)

(assert (=> b!1155031 (= e!738613 (and (inv!14707 (xs!6336 (c!193987 (tokens!1533 thiss!10527)))) e!738612))))

(assert (=> b!1154833 (= tp!332964 (and (inv!14700 (c!193987 (tokens!1533 thiss!10527))) e!738613))))

(assert (= (and b!1154833 (is-Node!3631 (c!193987 (tokens!1533 thiss!10527)))) b!1155030))

(assert (= b!1155031 b!1155032))

(assert (= (and b!1154833 (is-Leaf!5609 (c!193987 (tokens!1533 thiss!10527)))) b!1155031))

(declare-fun m!1322039 () Bool)

(assert (=> b!1155030 m!1322039))

(declare-fun m!1322041 () Bool)

(assert (=> b!1155030 m!1322041))

(declare-fun m!1322043 () Bool)

(assert (=> b!1155031 m!1322043))

(assert (=> b!1154833 m!1321887))

(declare-fun b!1155035 () Bool)

(declare-fun e!738616 () Bool)

(assert (=> b!1155035 (= e!738616 true)))

(declare-fun b!1155034 () Bool)

(declare-fun e!738615 () Bool)

(assert (=> b!1155034 (= e!738615 e!738616)))

(declare-fun b!1155033 () Bool)

(declare-fun e!738614 () Bool)

(assert (=> b!1155033 (= e!738614 e!738615)))

(assert (=> b!1154841 e!738614))

(assert (= b!1155034 b!1155035))

(assert (= b!1155033 b!1155034))

(assert (= (and b!1154841 (is-Cons!11193 (rules!9403 thiss!10527))) b!1155033))

(assert (=> b!1155035 (< (dynLambda!4933 order!6837 (toValue!3035 (transformation!1934 (h!16594 (rules!9403 thiss!10527))))) (dynLambda!4934 order!6839 lambda!46518))))

(assert (=> b!1155035 (< (dynLambda!4935 order!6841 (toChars!2894 (transformation!1934 (h!16594 (rules!9403 thiss!10527))))) (dynLambda!4934 order!6839 lambda!46518))))

(declare-fun b!1155044 () Bool)

(declare-fun e!738621 () Bool)

(assert (=> b!1155044 (= e!738621 true)))

(declare-fun b!1155046 () Bool)

(declare-fun e!738622 () Bool)

(assert (=> b!1155046 (= e!738622 true)))

(declare-fun b!1155045 () Bool)

(assert (=> b!1155045 (= e!738621 e!738622)))

(assert (=> b!1154842 e!738621))

(assert (= (and b!1154842 (is-Node!3631 (c!193987 (tokens!1533 thiss!10527)))) b!1155044))

(assert (= b!1155045 b!1155046))

(assert (= (and b!1154842 (is-Leaf!5609 (c!193987 (tokens!1533 thiss!10527)))) b!1155045))

(push 1)

(assert (not d!330202))

(assert (not b_next!28347))

(assert (not b!1155016))

(assert (not b!1154833))

(assert (not b!1154895))

(assert (not d!330208))

(assert (not b!1155033))

(assert (not b!1155001))

(assert (not d!330210))

(assert (not b!1154975))

(assert (not b!1155032))

(assert (not b!1154926))

(assert (not b!1154965))

(assert (not b!1155046))

(assert (not b!1154989))

(assert (not d!330200))

(assert (not b!1154925))

(assert (not b!1154941))

(assert (not b!1154966))

(assert (not d!330204))

(assert (not b!1154890))

(assert (not b!1154883))

(assert (not d!330198))

(assert (not b!1154990))

(assert (not b!1154951))

(assert (not b!1154919))

(assert b_and!80519)

(assert (not d!330180))

(assert (not b!1154974))

(assert (not b!1155000))

(assert (not b!1154984))

(assert (not d!330186))

(assert (not d!330182))

(assert (not d!330212))

(assert b_and!80517)

(assert (not b!1155031))

(assert (not b!1155044))

(assert (not d!330214))

(assert (not d!330170))

(assert (not b!1155017))

(assert (not d!330168))

(assert (not d!330188))

(assert (not b!1154985))

(assert (not b!1154881))

(assert (not d!330178))

(assert (not b!1155030))

(assert (not b!1154892))

(assert (not b!1154988))

(assert (not b!1154920))

(assert (not b!1154999))

(assert (not b!1154882))

(assert (not b!1154973))

(assert (not b_next!28345))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80517)

(assert b_and!80519)

(assert (not b_next!28345))

(assert (not b_next!28347))

(check-sat)

(pop 1)

