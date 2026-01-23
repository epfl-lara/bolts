; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!323114 () Bool)

(assert start!323114)

(declare-fun b!3474333 () Bool)

(declare-fun b_free!90041 () Bool)

(declare-fun b_next!90745 () Bool)

(assert (=> b!3474333 (= b_free!90041 (not b_next!90745))))

(declare-fun tp!1080119 () Bool)

(declare-fun b_and!245011 () Bool)

(assert (=> b!3474333 (= tp!1080119 b_and!245011)))

(declare-fun b_free!90043 () Bool)

(declare-fun b_next!90747 () Bool)

(assert (=> b!3474333 (= b_free!90043 (not b_next!90747))))

(declare-fun tp!1080123 () Bool)

(declare-fun b_and!245013 () Bool)

(assert (=> b!3474333 (= tp!1080123 b_and!245013)))

(declare-fun b!3474325 () Bool)

(declare-fun b_free!90045 () Bool)

(declare-fun b_next!90749 () Bool)

(assert (=> b!3474325 (= b_free!90045 (not b_next!90749))))

(declare-fun tp!1080117 () Bool)

(declare-fun b_and!245015 () Bool)

(assert (=> b!3474325 (= tp!1080117 b_and!245015)))

(declare-fun b_free!90047 () Bool)

(declare-fun b_next!90751 () Bool)

(assert (=> b!3474325 (= b_free!90047 (not b_next!90751))))

(declare-fun tp!1080122 () Bool)

(declare-fun b_and!245017 () Bool)

(assert (=> b!3474325 (= tp!1080122 b_and!245017)))

(declare-fun b!3474309 () Bool)

(declare-fun b_free!90049 () Bool)

(declare-fun b_next!90753 () Bool)

(assert (=> b!3474309 (= b_free!90049 (not b_next!90753))))

(declare-fun tp!1080116 () Bool)

(declare-fun b_and!245019 () Bool)

(assert (=> b!3474309 (= tp!1080116 b_and!245019)))

(declare-fun b_free!90051 () Bool)

(declare-fun b_next!90755 () Bool)

(assert (=> b!3474309 (= b_free!90051 (not b_next!90755))))

(declare-fun tp!1080126 () Bool)

(declare-fun b_and!245021 () Bool)

(assert (=> b!3474309 (= tp!1080126 b_and!245021)))

(declare-fun bs!561635 () Bool)

(declare-fun b!3474320 () Bool)

(declare-fun b!3474332 () Bool)

(assert (= bs!561635 (and b!3474320 b!3474332)))

(declare-fun lambda!122035 () Int)

(declare-fun lambda!122034 () Int)

(assert (=> bs!561635 (not (= lambda!122035 lambda!122034))))

(declare-fun b!3474354 () Bool)

(declare-fun e!2151888 () Bool)

(assert (=> b!3474354 (= e!2151888 true)))

(declare-fun b!3474353 () Bool)

(declare-fun e!2151887 () Bool)

(assert (=> b!3474353 (= e!2151887 e!2151888)))

(declare-fun b!3474352 () Bool)

(declare-fun e!2151886 () Bool)

(assert (=> b!3474352 (= e!2151886 e!2151887)))

(assert (=> b!3474320 e!2151886))

(assert (= b!3474353 b!3474354))

(assert (= b!3474352 b!3474353))

(declare-datatypes ((C!20592 0))(
  ( (C!20593 (val!12344 Int)) )
))
(declare-datatypes ((Regex!10203 0))(
  ( (ElementMatch!10203 (c!595938 C!20592)) (Concat!15877 (regOne!20918 Regex!10203) (regTwo!20918 Regex!10203)) (EmptyExpr!10203) (Star!10203 (reg!10532 Regex!10203)) (EmptyLang!10203) (Union!10203 (regOne!20919 Regex!10203) (regTwo!20919 Regex!10203)) )
))
(declare-datatypes ((String!41703 0))(
  ( (String!41704 (value!175588 String)) )
))
(declare-datatypes ((List!37314 0))(
  ( (Nil!37190) (Cons!37190 (h!42610 (_ BitVec 16)) (t!274911 List!37314)) )
))
(declare-datatypes ((TokenValue!5674 0))(
  ( (FloatLiteralValue!11348 (text!40163 List!37314)) (TokenValueExt!5673 (__x!23565 Int)) (Broken!28370 (value!175589 List!37314)) (Object!5797) (End!5674) (Def!5674) (Underscore!5674) (Match!5674) (Else!5674) (Error!5674) (Case!5674) (If!5674) (Extends!5674) (Abstract!5674) (Class!5674) (Val!5674) (DelimiterValue!11348 (del!5734 List!37314)) (KeywordValue!5680 (value!175590 List!37314)) (CommentValue!11348 (value!175591 List!37314)) (WhitespaceValue!11348 (value!175592 List!37314)) (IndentationValue!5674 (value!175593 List!37314)) (String!41705) (Int32!5674) (Broken!28371 (value!175594 List!37314)) (Boolean!5675) (Unit!52617) (OperatorValue!5677 (op!5734 List!37314)) (IdentifierValue!11348 (value!175595 List!37314)) (IdentifierValue!11349 (value!175596 List!37314)) (WhitespaceValue!11349 (value!175597 List!37314)) (True!11348) (False!11348) (Broken!28372 (value!175598 List!37314)) (Broken!28373 (value!175599 List!37314)) (True!11349) (RightBrace!5674) (RightBracket!5674) (Colon!5674) (Null!5674) (Comma!5674) (LeftBracket!5674) (False!11349) (LeftBrace!5674) (ImaginaryLiteralValue!5674 (text!40164 List!37314)) (StringLiteralValue!17022 (value!175600 List!37314)) (EOFValue!5674 (value!175601 List!37314)) (IdentValue!5674 (value!175602 List!37314)) (DelimiterValue!11349 (value!175603 List!37314)) (DedentValue!5674 (value!175604 List!37314)) (NewLineValue!5674 (value!175605 List!37314)) (IntegerValue!17022 (value!175606 (_ BitVec 32)) (text!40165 List!37314)) (IntegerValue!17023 (value!175607 Int) (text!40166 List!37314)) (Times!5674) (Or!5674) (Equal!5674) (Minus!5674) (Broken!28374 (value!175608 List!37314)) (And!5674) (Div!5674) (LessEqual!5674) (Mod!5674) (Concat!15878) (Not!5674) (Plus!5674) (SpaceValue!5674 (value!175609 List!37314)) (IntegerValue!17024 (value!175610 Int) (text!40167 List!37314)) (StringLiteralValue!17023 (text!40168 List!37314)) (FloatLiteralValue!11349 (text!40169 List!37314)) (BytesLiteralValue!5674 (value!175611 List!37314)) (CommentValue!11349 (value!175612 List!37314)) (StringLiteralValue!17024 (value!175613 List!37314)) (ErrorTokenValue!5674 (msg!5735 List!37314)) )
))
(declare-datatypes ((List!37315 0))(
  ( (Nil!37191) (Cons!37191 (h!42611 C!20592) (t!274912 List!37315)) )
))
(declare-datatypes ((IArray!22531 0))(
  ( (IArray!22532 (innerList!11323 List!37315)) )
))
(declare-datatypes ((Conc!11263 0))(
  ( (Node!11263 (left!29023 Conc!11263) (right!29353 Conc!11263) (csize!22756 Int) (cheight!11474 Int)) (Leaf!17596 (xs!14441 IArray!22531) (csize!22757 Int)) (Empty!11263) )
))
(declare-datatypes ((BalanceConc!22140 0))(
  ( (BalanceConc!22141 (c!595939 Conc!11263)) )
))
(declare-datatypes ((TokenValueInjection!10776 0))(
  ( (TokenValueInjection!10777 (toValue!7680 Int) (toChars!7539 Int)) )
))
(declare-datatypes ((Rule!10688 0))(
  ( (Rule!10689 (regex!5444 Regex!10203) (tag!6058 String!41703) (isSeparator!5444 Bool) (transformation!5444 TokenValueInjection!10776)) )
))
(declare-datatypes ((List!37316 0))(
  ( (Nil!37192) (Cons!37192 (h!42612 Rule!10688) (t!274913 List!37316)) )
))
(declare-fun rules!2135 () List!37316)

(get-info :version)

(assert (= (and b!3474320 ((_ is Cons!37192) rules!2135)) b!3474352))

(declare-fun order!19849 () Int)

(declare-fun order!19851 () Int)

(declare-fun dynLambda!15702 (Int Int) Int)

(declare-fun dynLambda!15703 (Int Int) Int)

(assert (=> b!3474354 (< (dynLambda!15702 order!19849 (toValue!7680 (transformation!5444 (h!42612 rules!2135)))) (dynLambda!15703 order!19851 lambda!122035))))

(declare-fun order!19853 () Int)

(declare-fun dynLambda!15704 (Int Int) Int)

(assert (=> b!3474354 (< (dynLambda!15704 order!19853 (toChars!7539 (transformation!5444 (h!42612 rules!2135)))) (dynLambda!15703 order!19851 lambda!122035))))

(assert (=> b!3474320 true))

(declare-fun b!3474304 () Bool)

(declare-fun res!1401202 () Bool)

(declare-fun e!2151854 () Bool)

(assert (=> b!3474304 (=> (not res!1401202) (not e!2151854))))

(declare-datatypes ((Token!10254 0))(
  ( (Token!10255 (value!175614 TokenValue!5674) (rule!8040 Rule!10688) (size!28229 Int) (originalCharacters!6158 List!37315)) )
))
(declare-fun separatorToken!241 () Token!10254)

(assert (=> b!3474304 (= res!1401202 (isSeparator!5444 (rule!8040 separatorToken!241)))))

(declare-fun b!3474305 () Bool)

(declare-fun e!2151858 () Bool)

(declare-fun e!2151875 () Bool)

(assert (=> b!3474305 (= e!2151858 e!2151875)))

(declare-fun res!1401204 () Bool)

(assert (=> b!3474305 (=> res!1401204 e!2151875)))

(declare-datatypes ((List!37317 0))(
  ( (Nil!37193) (Cons!37193 (h!42613 Token!10254) (t!274914 List!37317)) )
))
(declare-fun tokens!494 () List!37317)

(assert (=> b!3474305 (= res!1401204 (or (isSeparator!5444 (rule!8040 (h!42613 tokens!494))) (isSeparator!5444 (rule!8040 (h!42613 (t!274914 tokens!494))))))))

(declare-datatypes ((Unit!52618 0))(
  ( (Unit!52619) )
))
(declare-fun lt!1182111 () Unit!52618)

(declare-fun forallContained!1391 (List!37317 Int Token!10254) Unit!52618)

(assert (=> b!3474305 (= lt!1182111 (forallContained!1391 tokens!494 lambda!122034 (h!42613 (t!274914 tokens!494))))))

(declare-fun lt!1182113 () Unit!52618)

(assert (=> b!3474305 (= lt!1182113 (forallContained!1391 tokens!494 lambda!122034 (h!42613 tokens!494)))))

(declare-fun b!3474306 () Bool)

(declare-fun e!2151850 () Bool)

(declare-fun e!2151879 () Bool)

(assert (=> b!3474306 (= e!2151850 e!2151879)))

(declare-fun res!1401195 () Bool)

(assert (=> b!3474306 (=> (not res!1401195) (not e!2151879))))

(declare-fun lt!1182107 () Rule!10688)

(declare-fun lt!1182112 () List!37315)

(declare-fun matchR!4787 (Regex!10203 List!37315) Bool)

(assert (=> b!3474306 (= res!1401195 (matchR!4787 (regex!5444 lt!1182107) lt!1182112))))

(declare-datatypes ((Option!7541 0))(
  ( (None!7540) (Some!7540 (v!36896 Rule!10688)) )
))
(declare-fun lt!1182098 () Option!7541)

(declare-fun get!11909 (Option!7541) Rule!10688)

(assert (=> b!3474306 (= lt!1182107 (get!11909 lt!1182098))))

(declare-fun b!3474307 () Bool)

(declare-fun e!2151870 () Bool)

(declare-fun e!2151855 () Bool)

(assert (=> b!3474307 (= e!2151870 e!2151855)))

(declare-fun res!1401193 () Bool)

(assert (=> b!3474307 (=> res!1401193 e!2151855)))

(declare-fun lt!1182121 () List!37315)

(declare-fun lt!1182093 () List!37315)

(assert (=> b!3474307 (= res!1401193 (not (= lt!1182121 lt!1182093)))))

(declare-fun lt!1182108 () List!37315)

(assert (=> b!3474307 (= lt!1182108 lt!1182093)))

(declare-fun lt!1182095 () List!37315)

(declare-fun lt!1182105 () List!37315)

(declare-fun ++!9181 (List!37315 List!37315) List!37315)

(assert (=> b!3474307 (= lt!1182093 (++!9181 lt!1182095 lt!1182105))))

(declare-fun lt!1182102 () List!37315)

(declare-fun lt!1182117 () Unit!52618)

(declare-fun lemmaConcatAssociativity!1968 (List!37315 List!37315 List!37315) Unit!52618)

(assert (=> b!3474307 (= lt!1182117 (lemmaConcatAssociativity!1968 lt!1182095 lt!1182112 lt!1182102))))

(declare-fun b!3474308 () Bool)

(declare-fun e!2151852 () Bool)

(declare-fun e!2151864 () Bool)

(assert (=> b!3474308 (= e!2151852 e!2151864)))

(declare-fun res!1401208 () Bool)

(assert (=> b!3474308 (=> (not res!1401208) (not e!2151864))))

(declare-fun lt!1182120 () Rule!10688)

(assert (=> b!3474308 (= res!1401208 (matchR!4787 (regex!5444 lt!1182120) lt!1182095))))

(declare-fun lt!1182118 () Option!7541)

(assert (=> b!3474308 (= lt!1182120 (get!11909 lt!1182118))))

(declare-fun e!2151872 () Bool)

(assert (=> b!3474309 (= e!2151872 (and tp!1080116 tp!1080126))))

(declare-fun b!3474310 () Bool)

(assert (=> b!3474310 (= e!2151864 (= (rule!8040 (h!42613 tokens!494)) lt!1182120))))

(declare-fun b!3474311 () Bool)

(declare-fun res!1401214 () Bool)

(declare-fun e!2151863 () Bool)

(assert (=> b!3474311 (=> res!1401214 e!2151863)))

(declare-fun contains!6911 (List!37316 Rule!10688) Bool)

(assert (=> b!3474311 (= res!1401214 (not (contains!6911 rules!2135 (rule!8040 separatorToken!241))))))

(declare-fun b!3474312 () Bool)

(declare-fun res!1401210 () Bool)

(assert (=> b!3474312 (=> (not res!1401210) (not e!2151854))))

(declare-fun sepAndNonSepRulesDisjointChars!1638 (List!37316 List!37316) Bool)

(assert (=> b!3474312 (= res!1401210 (sepAndNonSepRulesDisjointChars!1638 rules!2135 rules!2135))))

(declare-fun b!3474313 () Bool)

(declare-fun res!1401213 () Bool)

(assert (=> b!3474313 (=> (not res!1401213) (not e!2151854))))

(declare-datatypes ((LexerInterface!5033 0))(
  ( (LexerInterfaceExt!5030 (__x!23566 Int)) (Lexer!5031) )
))
(declare-fun thiss!18206 () LexerInterface!5033)

(declare-datatypes ((IArray!22533 0))(
  ( (IArray!22534 (innerList!11324 List!37317)) )
))
(declare-datatypes ((Conc!11264 0))(
  ( (Node!11264 (left!29024 Conc!11264) (right!29354 Conc!11264) (csize!22758 Int) (cheight!11475 Int)) (Leaf!17597 (xs!14442 IArray!22533) (csize!22759 Int)) (Empty!11264) )
))
(declare-datatypes ((BalanceConc!22142 0))(
  ( (BalanceConc!22143 (c!595940 Conc!11264)) )
))
(declare-fun rulesProduceEachTokenIndividually!1484 (LexerInterface!5033 List!37316 BalanceConc!22142) Bool)

(declare-fun seqFromList!3941 (List!37317) BalanceConc!22142)

(assert (=> b!3474313 (= res!1401213 (rulesProduceEachTokenIndividually!1484 thiss!18206 rules!2135 (seqFromList!3941 tokens!494)))))

(declare-fun b!3474314 () Bool)

(declare-fun e!2151849 () Unit!52618)

(declare-fun Unit!52620 () Unit!52618)

(assert (=> b!3474314 (= e!2151849 Unit!52620)))

(declare-fun b!3474315 () Bool)

(declare-fun res!1401205 () Bool)

(assert (=> b!3474315 (=> (not res!1401205) (not e!2151854))))

(declare-fun rulesProduceIndividualToken!2525 (LexerInterface!5033 List!37316 Token!10254) Bool)

(assert (=> b!3474315 (= res!1401205 (rulesProduceIndividualToken!2525 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3474316 () Bool)

(declare-fun res!1401211 () Bool)

(assert (=> b!3474316 (=> (not res!1401211) (not e!2151854))))

(declare-fun isEmpty!21561 (List!37316) Bool)

(assert (=> b!3474316 (= res!1401211 (not (isEmpty!21561 rules!2135)))))

(declare-fun e!2151865 () Bool)

(declare-fun tp!1080114 () Bool)

(declare-fun b!3474317 () Bool)

(declare-fun e!2151860 () Bool)

(declare-fun inv!21 (TokenValue!5674) Bool)

(assert (=> b!3474317 (= e!2151865 (and (inv!21 (value!175614 separatorToken!241)) e!2151860 tp!1080114))))

(declare-fun e!2151868 () Bool)

(declare-fun e!2151876 () Bool)

(declare-fun tp!1080118 () Bool)

(declare-fun b!3474318 () Bool)

(assert (=> b!3474318 (= e!2151868 (and (inv!21 (value!175614 (h!42613 tokens!494))) e!2151876 tp!1080118))))

(declare-fun b!3474319 () Bool)

(declare-fun tp!1080115 () Bool)

(declare-fun inv!50379 (String!41703) Bool)

(declare-fun inv!50382 (TokenValueInjection!10776) Bool)

(assert (=> b!3474319 (= e!2151860 (and tp!1080115 (inv!50379 (tag!6058 (rule!8040 separatorToken!241))) (inv!50382 (transformation!5444 (rule!8040 separatorToken!241))) e!2151872))))

(assert (=> b!3474320 (= e!2151855 e!2151863)))

(declare-fun res!1401197 () Bool)

(assert (=> b!3474320 (=> res!1401197 e!2151863)))

(assert (=> b!3474320 (= res!1401197 (not (contains!6911 rules!2135 (rule!8040 (h!42613 tokens!494)))))))

(declare-fun lt!1182119 () C!20592)

(declare-fun contains!6912 (List!37315 C!20592) Bool)

(declare-fun usedCharacters!678 (Regex!10203) List!37315)

(assert (=> b!3474320 (not (contains!6912 (usedCharacters!678 (regex!5444 (rule!8040 (h!42613 tokens!494)))) lt!1182119))))

(declare-fun lt!1182088 () Unit!52618)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!244 (LexerInterface!5033 List!37316 List!37316 Rule!10688 Rule!10688 C!20592) Unit!52618)

(assert (=> b!3474320 (= lt!1182088 (lemmaNonSepRuleNotContainsCharContainedInASepRule!244 thiss!18206 rules!2135 rules!2135 (rule!8040 (h!42613 tokens!494)) (rule!8040 separatorToken!241) lt!1182119))))

(declare-fun lt!1182092 () Unit!52618)

(assert (=> b!3474320 (= lt!1182092 (forallContained!1391 tokens!494 lambda!122035 (h!42613 (t!274914 tokens!494))))))

(declare-fun e!2151857 () Bool)

(assert (=> b!3474320 (= (rulesProduceIndividualToken!2525 thiss!18206 rules!2135 (h!42613 (t!274914 tokens!494))) e!2151857)))

(declare-fun res!1401203 () Bool)

(assert (=> b!3474320 (=> (not res!1401203) (not e!2151857))))

(declare-datatypes ((tuple2!36936 0))(
  ( (tuple2!36937 (_1!21602 BalanceConc!22142) (_2!21602 BalanceConc!22140)) )
))
(declare-fun lt!1182091 () tuple2!36936)

(declare-fun size!28230 (BalanceConc!22142) Int)

(assert (=> b!3474320 (= res!1401203 (= (size!28230 (_1!21602 lt!1182091)) 1))))

(declare-fun lt!1182100 () BalanceConc!22140)

(declare-fun lex!2359 (LexerInterface!5033 List!37316 BalanceConc!22140) tuple2!36936)

(assert (=> b!3474320 (= lt!1182091 (lex!2359 thiss!18206 rules!2135 lt!1182100))))

(declare-fun lt!1182089 () BalanceConc!22142)

(declare-fun printTailRec!1528 (LexerInterface!5033 BalanceConc!22142 Int BalanceConc!22140) BalanceConc!22140)

(assert (=> b!3474320 (= lt!1182100 (printTailRec!1528 thiss!18206 lt!1182089 0 (BalanceConc!22141 Empty!11263)))))

(declare-fun print!2098 (LexerInterface!5033 BalanceConc!22142) BalanceConc!22140)

(assert (=> b!3474320 (= lt!1182100 (print!2098 thiss!18206 lt!1182089))))

(declare-fun singletonSeq!2540 (Token!10254) BalanceConc!22142)

(assert (=> b!3474320 (= lt!1182089 (singletonSeq!2540 (h!42613 (t!274914 tokens!494))))))

(declare-fun e!2151878 () Bool)

(assert (=> b!3474320 e!2151878))

(declare-fun res!1401198 () Bool)

(assert (=> b!3474320 (=> (not res!1401198) (not e!2151878))))

(declare-fun lt!1182104 () tuple2!36936)

(assert (=> b!3474320 (= res!1401198 (= (size!28230 (_1!21602 lt!1182104)) 1))))

(declare-fun lt!1182097 () BalanceConc!22140)

(assert (=> b!3474320 (= lt!1182104 (lex!2359 thiss!18206 rules!2135 lt!1182097))))

(declare-fun lt!1182114 () BalanceConc!22142)

(assert (=> b!3474320 (= lt!1182097 (printTailRec!1528 thiss!18206 lt!1182114 0 (BalanceConc!22141 Empty!11263)))))

(assert (=> b!3474320 (= lt!1182097 (print!2098 thiss!18206 lt!1182114))))

(assert (=> b!3474320 (= lt!1182114 (singletonSeq!2540 separatorToken!241))))

(declare-fun lt!1182101 () Unit!52618)

(assert (=> b!3474320 (= lt!1182101 e!2151849)))

(declare-fun c!595937 () Bool)

(assert (=> b!3474320 (= c!595937 (not (contains!6912 (usedCharacters!678 (regex!5444 (rule!8040 separatorToken!241))) lt!1182119)))))

(declare-fun head!7329 (List!37315) C!20592)

(assert (=> b!3474320 (= lt!1182119 (head!7329 lt!1182112))))

(assert (=> b!3474320 e!2151850))

(declare-fun res!1401212 () Bool)

(assert (=> b!3474320 (=> (not res!1401212) (not e!2151850))))

(declare-fun isDefined!5806 (Option!7541) Bool)

(assert (=> b!3474320 (= res!1401212 (isDefined!5806 lt!1182098))))

(declare-fun getRuleFromTag!1087 (LexerInterface!5033 List!37316 String!41703) Option!7541)

(assert (=> b!3474320 (= lt!1182098 (getRuleFromTag!1087 thiss!18206 rules!2135 (tag!6058 (rule!8040 separatorToken!241))))))

(declare-fun lt!1182096 () Unit!52618)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1087 (LexerInterface!5033 List!37316 List!37315 Token!10254) Unit!52618)

(assert (=> b!3474320 (= lt!1182096 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1087 thiss!18206 rules!2135 lt!1182112 separatorToken!241))))

(declare-fun lt!1182103 () BalanceConc!22140)

(declare-datatypes ((tuple2!36938 0))(
  ( (tuple2!36939 (_1!21603 Token!10254) (_2!21603 List!37315)) )
))
(declare-datatypes ((Option!7542 0))(
  ( (None!7541) (Some!7541 (v!36897 tuple2!36938)) )
))
(declare-fun maxPrefixOneRule!1740 (LexerInterface!5033 Rule!10688 List!37315) Option!7542)

(declare-fun apply!8776 (TokenValueInjection!10776 BalanceConc!22140) TokenValue!5674)

(declare-fun size!28231 (List!37315) Int)

(assert (=> b!3474320 (= (maxPrefixOneRule!1740 thiss!18206 (rule!8040 (h!42613 tokens!494)) lt!1182095) (Some!7541 (tuple2!36939 (Token!10255 (apply!8776 (transformation!5444 (rule!8040 (h!42613 tokens!494))) lt!1182103) (rule!8040 (h!42613 tokens!494)) (size!28231 lt!1182095) lt!1182095) Nil!37191)))))

(declare-fun lt!1182116 () Unit!52618)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!833 (LexerInterface!5033 List!37316 List!37315 List!37315 List!37315 Rule!10688) Unit!52618)

(assert (=> b!3474320 (= lt!1182116 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!833 thiss!18206 rules!2135 lt!1182095 lt!1182095 Nil!37191 (rule!8040 (h!42613 tokens!494))))))

(assert (=> b!3474320 e!2151852))

(declare-fun res!1401187 () Bool)

(assert (=> b!3474320 (=> (not res!1401187) (not e!2151852))))

(assert (=> b!3474320 (= res!1401187 (isDefined!5806 lt!1182118))))

(assert (=> b!3474320 (= lt!1182118 (getRuleFromTag!1087 thiss!18206 rules!2135 (tag!6058 (rule!8040 (h!42613 tokens!494)))))))

(declare-fun lt!1182106 () Unit!52618)

(assert (=> b!3474320 (= lt!1182106 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1087 thiss!18206 rules!2135 lt!1182095 (h!42613 tokens!494)))))

(declare-fun lt!1182122 () Unit!52618)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1022 (LexerInterface!5033 List!37316 List!37317 Token!10254) Unit!52618)

(assert (=> b!3474320 (= lt!1182122 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1022 thiss!18206 rules!2135 tokens!494 (h!42613 tokens!494)))))

(declare-fun b!3474321 () Bool)

(assert (=> b!3474321 (= e!2151863 true)))

(declare-fun lt!1182094 () Option!7542)

(declare-fun maxPrefix!2573 (LexerInterface!5033 List!37316 List!37315) Option!7542)

(assert (=> b!3474321 (= lt!1182094 (maxPrefix!2573 thiss!18206 rules!2135 lt!1182095))))

(declare-fun b!3474322 () Bool)

(declare-fun e!2151866 () Bool)

(declare-fun e!2151861 () Bool)

(assert (=> b!3474322 (= e!2151866 e!2151861)))

(declare-fun res!1401188 () Bool)

(assert (=> b!3474322 (=> res!1401188 e!2151861)))

(declare-fun lt!1182115 () List!37315)

(declare-fun lt!1182109 () List!37315)

(assert (=> b!3474322 (= res!1401188 (or (not (= lt!1182109 lt!1182095)) (not (= lt!1182115 lt!1182095))))))

(declare-fun list!13557 (BalanceConc!22140) List!37315)

(declare-fun charsOf!3458 (Token!10254) BalanceConc!22140)

(assert (=> b!3474322 (= lt!1182095 (list!13557 (charsOf!3458 (h!42613 tokens!494))))))

(declare-fun b!3474323 () Bool)

(declare-fun res!1401207 () Bool)

(assert (=> b!3474323 (=> (not res!1401207) (not e!2151854))))

(declare-fun rulesInvariant!4430 (LexerInterface!5033 List!37316) Bool)

(assert (=> b!3474323 (= res!1401207 (rulesInvariant!4430 thiss!18206 rules!2135))))

(declare-fun b!3474324 () Bool)

(declare-fun res!1401194 () Bool)

(assert (=> b!3474324 (=> res!1401194 e!2151861)))

(assert (=> b!3474324 (= res!1401194 (not (rulesProduceIndividualToken!2525 thiss!18206 rules!2135 (h!42613 tokens!494))))))

(declare-fun e!2151873 () Bool)

(assert (=> b!3474325 (= e!2151873 (and tp!1080117 tp!1080122))))

(declare-fun b!3474326 () Bool)

(assert (=> b!3474326 (= e!2151854 (not e!2151866))))

(declare-fun res!1401192 () Bool)

(assert (=> b!3474326 (=> res!1401192 e!2151866)))

(assert (=> b!3474326 (= res!1401192 (not (= lt!1182115 lt!1182109)))))

(declare-fun printList!1581 (LexerInterface!5033 List!37317) List!37315)

(assert (=> b!3474326 (= lt!1182109 (printList!1581 thiss!18206 (Cons!37193 (h!42613 tokens!494) Nil!37193)))))

(declare-fun lt!1182110 () BalanceConc!22140)

(assert (=> b!3474326 (= lt!1182115 (list!13557 lt!1182110))))

(declare-fun lt!1182099 () BalanceConc!22142)

(assert (=> b!3474326 (= lt!1182110 (printTailRec!1528 thiss!18206 lt!1182099 0 (BalanceConc!22141 Empty!11263)))))

(assert (=> b!3474326 (= lt!1182110 (print!2098 thiss!18206 lt!1182099))))

(assert (=> b!3474326 (= lt!1182099 (singletonSeq!2540 (h!42613 tokens!494)))))

(declare-fun b!3474327 () Bool)

(declare-fun e!2151856 () Bool)

(assert (=> b!3474327 (= e!2151856 e!2151870)))

(declare-fun res!1401201 () Bool)

(assert (=> b!3474327 (=> res!1401201 e!2151870)))

(assert (=> b!3474327 (= res!1401201 (not (= lt!1182121 lt!1182108)))))

(assert (=> b!3474327 (= lt!1182108 (++!9181 (++!9181 lt!1182095 lt!1182112) lt!1182102))))

(declare-fun b!3474328 () Bool)

(declare-fun isEmpty!21562 (BalanceConc!22140) Bool)

(assert (=> b!3474328 (= e!2151857 (isEmpty!21562 (_2!21602 lt!1182091)))))

(declare-fun res!1401200 () Bool)

(assert (=> start!323114 (=> (not res!1401200) (not e!2151854))))

(assert (=> start!323114 (= res!1401200 ((_ is Lexer!5031) thiss!18206))))

(assert (=> start!323114 e!2151854))

(assert (=> start!323114 true))

(declare-fun e!2151851 () Bool)

(assert (=> start!323114 e!2151851))

(declare-fun e!2151848 () Bool)

(assert (=> start!323114 e!2151848))

(declare-fun inv!50383 (Token!10254) Bool)

(assert (=> start!323114 (and (inv!50383 separatorToken!241) e!2151865)))

(declare-fun e!2151862 () Bool)

(declare-fun tp!1080125 () Bool)

(declare-fun b!3474329 () Bool)

(assert (=> b!3474329 (= e!2151862 (and tp!1080125 (inv!50379 (tag!6058 (h!42612 rules!2135))) (inv!50382 (transformation!5444 (h!42612 rules!2135))) e!2151873))))

(declare-fun b!3474330 () Bool)

(declare-fun res!1401190 () Bool)

(assert (=> b!3474330 (=> (not res!1401190) (not e!2151878))))

(declare-fun apply!8777 (BalanceConc!22142 Int) Token!10254)

(assert (=> b!3474330 (= res!1401190 (= (apply!8777 (_1!21602 lt!1182104) 0) separatorToken!241))))

(declare-fun b!3474331 () Bool)

(declare-fun res!1401196 () Bool)

(assert (=> b!3474331 (=> (not res!1401196) (not e!2151854))))

(assert (=> b!3474331 (= res!1401196 (and (not ((_ is Nil!37193) tokens!494)) (not ((_ is Nil!37193) (t!274914 tokens!494)))))))

(declare-fun res!1401206 () Bool)

(assert (=> b!3474332 (=> (not res!1401206) (not e!2151854))))

(declare-fun forall!7945 (List!37317 Int) Bool)

(assert (=> b!3474332 (= res!1401206 (forall!7945 tokens!494 lambda!122034))))

(declare-fun e!2151874 () Bool)

(assert (=> b!3474333 (= e!2151874 (and tp!1080119 tp!1080123))))

(declare-fun b!3474334 () Bool)

(declare-fun e!2151853 () Bool)

(assert (=> b!3474334 (= e!2151853 false)))

(declare-fun b!3474335 () Bool)

(declare-fun res!1401209 () Bool)

(assert (=> b!3474335 (=> (not res!1401209) (not e!2151857))))

(assert (=> b!3474335 (= res!1401209 (= (apply!8777 (_1!21602 lt!1182091) 0) (h!42613 (t!274914 tokens!494))))))

(declare-fun b!3474336 () Bool)

(assert (=> b!3474336 (= e!2151875 e!2151856)))

(declare-fun res!1401189 () Bool)

(assert (=> b!3474336 (=> res!1401189 e!2151856)))

(declare-fun printWithSeparatorTokenList!320 (LexerInterface!5033 List!37317 Token!10254) List!37315)

(assert (=> b!3474336 (= res!1401189 (not (= lt!1182102 (++!9181 (++!9181 (list!13557 (charsOf!3458 (h!42613 (t!274914 tokens!494)))) lt!1182112) (printWithSeparatorTokenList!320 thiss!18206 (t!274914 (t!274914 tokens!494)) separatorToken!241)))))))

(assert (=> b!3474336 (= lt!1182105 (++!9181 lt!1182112 lt!1182102))))

(assert (=> b!3474336 (= lt!1182112 (list!13557 (charsOf!3458 separatorToken!241)))))

(assert (=> b!3474336 (= lt!1182102 (printWithSeparatorTokenList!320 thiss!18206 (t!274914 tokens!494) separatorToken!241))))

(assert (=> b!3474336 (= lt!1182121 (printWithSeparatorTokenList!320 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3474337 () Bool)

(declare-fun tp!1080121 () Bool)

(assert (=> b!3474337 (= e!2151851 (and e!2151862 tp!1080121))))

(declare-fun b!3474338 () Bool)

(assert (=> b!3474338 (= e!2151878 (isEmpty!21562 (_2!21602 lt!1182104)))))

(declare-fun b!3474339 () Bool)

(assert (=> b!3474339 (= e!2151861 e!2151858)))

(declare-fun res!1401191 () Bool)

(assert (=> b!3474339 (=> res!1401191 e!2151858)))

(declare-fun isEmpty!21563 (BalanceConc!22142) Bool)

(assert (=> b!3474339 (= res!1401191 (isEmpty!21563 (_1!21602 (lex!2359 thiss!18206 rules!2135 lt!1182103))))))

(declare-fun seqFromList!3942 (List!37315) BalanceConc!22140)

(assert (=> b!3474339 (= lt!1182103 (seqFromList!3942 lt!1182095))))

(declare-fun tp!1080124 () Bool)

(declare-fun b!3474340 () Bool)

(assert (=> b!3474340 (= e!2151876 (and tp!1080124 (inv!50379 (tag!6058 (rule!8040 (h!42613 tokens!494)))) (inv!50382 (transformation!5444 (rule!8040 (h!42613 tokens!494)))) e!2151874))))

(declare-fun b!3474341 () Bool)

(assert (=> b!3474341 (= e!2151879 (= (rule!8040 separatorToken!241) lt!1182107))))

(declare-fun b!3474342 () Bool)

(declare-fun Unit!52621 () Unit!52618)

(assert (=> b!3474342 (= e!2151849 Unit!52621)))

(declare-fun lt!1182090 () Unit!52618)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!502 (Regex!10203 List!37315 C!20592) Unit!52618)

(assert (=> b!3474342 (= lt!1182090 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!502 (regex!5444 (rule!8040 separatorToken!241)) lt!1182112 lt!1182119))))

(declare-fun res!1401199 () Bool)

(assert (=> b!3474342 (= res!1401199 (not (matchR!4787 (regex!5444 (rule!8040 separatorToken!241)) lt!1182112)))))

(assert (=> b!3474342 (=> (not res!1401199) (not e!2151853))))

(assert (=> b!3474342 e!2151853))

(declare-fun b!3474343 () Bool)

(declare-fun tp!1080120 () Bool)

(assert (=> b!3474343 (= e!2151848 (and (inv!50383 (h!42613 tokens!494)) e!2151868 tp!1080120))))

(assert (= (and start!323114 res!1401200) b!3474316))

(assert (= (and b!3474316 res!1401211) b!3474323))

(assert (= (and b!3474323 res!1401207) b!3474313))

(assert (= (and b!3474313 res!1401213) b!3474315))

(assert (= (and b!3474315 res!1401205) b!3474304))

(assert (= (and b!3474304 res!1401202) b!3474332))

(assert (= (and b!3474332 res!1401206) b!3474312))

(assert (= (and b!3474312 res!1401210) b!3474331))

(assert (= (and b!3474331 res!1401196) b!3474326))

(assert (= (and b!3474326 (not res!1401192)) b!3474322))

(assert (= (and b!3474322 (not res!1401188)) b!3474324))

(assert (= (and b!3474324 (not res!1401194)) b!3474339))

(assert (= (and b!3474339 (not res!1401191)) b!3474305))

(assert (= (and b!3474305 (not res!1401204)) b!3474336))

(assert (= (and b!3474336 (not res!1401189)) b!3474327))

(assert (= (and b!3474327 (not res!1401201)) b!3474307))

(assert (= (and b!3474307 (not res!1401193)) b!3474320))

(assert (= (and b!3474320 res!1401187) b!3474308))

(assert (= (and b!3474308 res!1401208) b!3474310))

(assert (= (and b!3474320 res!1401212) b!3474306))

(assert (= (and b!3474306 res!1401195) b!3474341))

(assert (= (and b!3474320 c!595937) b!3474342))

(assert (= (and b!3474320 (not c!595937)) b!3474314))

(assert (= (and b!3474342 res!1401199) b!3474334))

(assert (= (and b!3474320 res!1401198) b!3474330))

(assert (= (and b!3474330 res!1401190) b!3474338))

(assert (= (and b!3474320 res!1401203) b!3474335))

(assert (= (and b!3474335 res!1401209) b!3474328))

(assert (= (and b!3474320 (not res!1401197)) b!3474311))

(assert (= (and b!3474311 (not res!1401214)) b!3474321))

(assert (= b!3474329 b!3474325))

(assert (= b!3474337 b!3474329))

(assert (= (and start!323114 ((_ is Cons!37192) rules!2135)) b!3474337))

(assert (= b!3474340 b!3474333))

(assert (= b!3474318 b!3474340))

(assert (= b!3474343 b!3474318))

(assert (= (and start!323114 ((_ is Cons!37193) tokens!494)) b!3474343))

(assert (= b!3474319 b!3474309))

(assert (= b!3474317 b!3474319))

(assert (= start!323114 b!3474317))

(declare-fun m!3888157 () Bool)

(assert (=> b!3474336 m!3888157))

(declare-fun m!3888159 () Bool)

(assert (=> b!3474336 m!3888159))

(declare-fun m!3888161 () Bool)

(assert (=> b!3474336 m!3888161))

(declare-fun m!3888163 () Bool)

(assert (=> b!3474336 m!3888163))

(declare-fun m!3888165 () Bool)

(assert (=> b!3474336 m!3888165))

(declare-fun m!3888167 () Bool)

(assert (=> b!3474336 m!3888167))

(declare-fun m!3888169 () Bool)

(assert (=> b!3474336 m!3888169))

(assert (=> b!3474336 m!3888167))

(assert (=> b!3474336 m!3888159))

(declare-fun m!3888171 () Bool)

(assert (=> b!3474336 m!3888171))

(declare-fun m!3888173 () Bool)

(assert (=> b!3474336 m!3888173))

(assert (=> b!3474336 m!3888165))

(declare-fun m!3888175 () Bool)

(assert (=> b!3474336 m!3888175))

(assert (=> b!3474336 m!3888157))

(assert (=> b!3474336 m!3888173))

(declare-fun m!3888177 () Bool)

(assert (=> b!3474342 m!3888177))

(declare-fun m!3888179 () Bool)

(assert (=> b!3474342 m!3888179))

(declare-fun m!3888181 () Bool)

(assert (=> b!3474320 m!3888181))

(declare-fun m!3888183 () Bool)

(assert (=> b!3474320 m!3888183))

(assert (=> b!3474320 m!3888181))

(declare-fun m!3888185 () Bool)

(assert (=> b!3474320 m!3888185))

(declare-fun m!3888187 () Bool)

(assert (=> b!3474320 m!3888187))

(declare-fun m!3888189 () Bool)

(assert (=> b!3474320 m!3888189))

(declare-fun m!3888191 () Bool)

(assert (=> b!3474320 m!3888191))

(declare-fun m!3888193 () Bool)

(assert (=> b!3474320 m!3888193))

(declare-fun m!3888195 () Bool)

(assert (=> b!3474320 m!3888195))

(declare-fun m!3888197 () Bool)

(assert (=> b!3474320 m!3888197))

(declare-fun m!3888199 () Bool)

(assert (=> b!3474320 m!3888199))

(declare-fun m!3888201 () Bool)

(assert (=> b!3474320 m!3888201))

(declare-fun m!3888203 () Bool)

(assert (=> b!3474320 m!3888203))

(declare-fun m!3888205 () Bool)

(assert (=> b!3474320 m!3888205))

(declare-fun m!3888207 () Bool)

(assert (=> b!3474320 m!3888207))

(declare-fun m!3888209 () Bool)

(assert (=> b!3474320 m!3888209))

(assert (=> b!3474320 m!3888201))

(declare-fun m!3888211 () Bool)

(assert (=> b!3474320 m!3888211))

(declare-fun m!3888213 () Bool)

(assert (=> b!3474320 m!3888213))

(declare-fun m!3888215 () Bool)

(assert (=> b!3474320 m!3888215))

(declare-fun m!3888217 () Bool)

(assert (=> b!3474320 m!3888217))

(declare-fun m!3888219 () Bool)

(assert (=> b!3474320 m!3888219))

(declare-fun m!3888221 () Bool)

(assert (=> b!3474320 m!3888221))

(declare-fun m!3888223 () Bool)

(assert (=> b!3474320 m!3888223))

(declare-fun m!3888225 () Bool)

(assert (=> b!3474320 m!3888225))

(declare-fun m!3888227 () Bool)

(assert (=> b!3474320 m!3888227))

(declare-fun m!3888229 () Bool)

(assert (=> b!3474320 m!3888229))

(declare-fun m!3888231 () Bool)

(assert (=> b!3474320 m!3888231))

(declare-fun m!3888233 () Bool)

(assert (=> b!3474320 m!3888233))

(declare-fun m!3888235 () Bool)

(assert (=> b!3474320 m!3888235))

(declare-fun m!3888237 () Bool)

(assert (=> b!3474320 m!3888237))

(declare-fun m!3888239 () Bool)

(assert (=> b!3474320 m!3888239))

(declare-fun m!3888241 () Bool)

(assert (=> b!3474316 m!3888241))

(declare-fun m!3888243 () Bool)

(assert (=> b!3474327 m!3888243))

(assert (=> b!3474327 m!3888243))

(declare-fun m!3888245 () Bool)

(assert (=> b!3474327 m!3888245))

(declare-fun m!3888247 () Bool)

(assert (=> b!3474343 m!3888247))

(declare-fun m!3888249 () Bool)

(assert (=> b!3474315 m!3888249))

(declare-fun m!3888251 () Bool)

(assert (=> b!3474308 m!3888251))

(declare-fun m!3888253 () Bool)

(assert (=> b!3474308 m!3888253))

(declare-fun m!3888255 () Bool)

(assert (=> start!323114 m!3888255))

(declare-fun m!3888257 () Bool)

(assert (=> b!3474306 m!3888257))

(declare-fun m!3888259 () Bool)

(assert (=> b!3474306 m!3888259))

(declare-fun m!3888261 () Bool)

(assert (=> b!3474318 m!3888261))

(declare-fun m!3888263 () Bool)

(assert (=> b!3474319 m!3888263))

(declare-fun m!3888265 () Bool)

(assert (=> b!3474319 m!3888265))

(declare-fun m!3888267 () Bool)

(assert (=> b!3474329 m!3888267))

(declare-fun m!3888269 () Bool)

(assert (=> b!3474329 m!3888269))

(declare-fun m!3888271 () Bool)

(assert (=> b!3474338 m!3888271))

(declare-fun m!3888273 () Bool)

(assert (=> b!3474326 m!3888273))

(declare-fun m!3888275 () Bool)

(assert (=> b!3474326 m!3888275))

(declare-fun m!3888277 () Bool)

(assert (=> b!3474326 m!3888277))

(declare-fun m!3888279 () Bool)

(assert (=> b!3474326 m!3888279))

(declare-fun m!3888281 () Bool)

(assert (=> b!3474326 m!3888281))

(declare-fun m!3888283 () Bool)

(assert (=> b!3474322 m!3888283))

(assert (=> b!3474322 m!3888283))

(declare-fun m!3888285 () Bool)

(assert (=> b!3474322 m!3888285))

(declare-fun m!3888287 () Bool)

(assert (=> b!3474339 m!3888287))

(declare-fun m!3888289 () Bool)

(assert (=> b!3474339 m!3888289))

(declare-fun m!3888291 () Bool)

(assert (=> b!3474339 m!3888291))

(declare-fun m!3888293 () Bool)

(assert (=> b!3474330 m!3888293))

(declare-fun m!3888295 () Bool)

(assert (=> b!3474340 m!3888295))

(declare-fun m!3888297 () Bool)

(assert (=> b!3474340 m!3888297))

(declare-fun m!3888299 () Bool)

(assert (=> b!3474305 m!3888299))

(declare-fun m!3888301 () Bool)

(assert (=> b!3474305 m!3888301))

(declare-fun m!3888303 () Bool)

(assert (=> b!3474335 m!3888303))

(declare-fun m!3888305 () Bool)

(assert (=> b!3474313 m!3888305))

(assert (=> b!3474313 m!3888305))

(declare-fun m!3888307 () Bool)

(assert (=> b!3474313 m!3888307))

(declare-fun m!3888309 () Bool)

(assert (=> b!3474307 m!3888309))

(declare-fun m!3888311 () Bool)

(assert (=> b!3474307 m!3888311))

(declare-fun m!3888313 () Bool)

(assert (=> b!3474323 m!3888313))

(declare-fun m!3888315 () Bool)

(assert (=> b!3474321 m!3888315))

(declare-fun m!3888317 () Bool)

(assert (=> b!3474311 m!3888317))

(declare-fun m!3888319 () Bool)

(assert (=> b!3474312 m!3888319))

(declare-fun m!3888321 () Bool)

(assert (=> b!3474317 m!3888321))

(declare-fun m!3888323 () Bool)

(assert (=> b!3474324 m!3888323))

(declare-fun m!3888325 () Bool)

(assert (=> b!3474332 m!3888325))

(declare-fun m!3888327 () Bool)

(assert (=> b!3474328 m!3888327))

(check-sat (not b!3474337) (not b!3474339) (not b!3474332) (not b!3474313) (not start!323114) (not b!3474320) (not b!3474324) (not b!3474308) (not b_next!90753) (not b!3474343) (not b!3474319) (not b!3474336) (not b!3474327) (not b!3474338) (not b!3474323) b_and!245011 (not b!3474305) (not b!3474328) (not b!3474315) (not b!3474307) (not b!3474335) (not b!3474330) (not b!3474316) (not b!3474321) (not b!3474340) (not b!3474318) (not b!3474326) (not b!3474312) b_and!245017 (not b_next!90749) (not b_next!90755) (not b_next!90747) (not b!3474317) (not b_next!90745) b_and!245013 (not b!3474306) b_and!245021 (not b!3474329) b_and!245019 (not b!3474352) (not b_next!90751) (not b!3474342) (not b!3474311) b_and!245015 (not b!3474322))
(check-sat b_and!245011 (not b_next!90745) b_and!245019 (not b_next!90753) (not b_next!90751) b_and!245015 b_and!245017 (not b_next!90749) (not b_next!90755) (not b_next!90747) b_and!245013 b_and!245021)
