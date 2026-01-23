; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100516 () Bool)

(assert start!100516)

(declare-fun b!1154109 () Bool)

(declare-fun e!737919 () Bool)

(assert (=> b!1154109 (= e!737919 true)))

(declare-fun b!1154108 () Bool)

(declare-fun e!737918 () Bool)

(assert (=> b!1154108 (= e!737918 e!737919)))

(declare-fun b!1154100 () Bool)

(assert (=> b!1154100 e!737918))

(assert (= b!1154108 b!1154109))

(assert (= b!1154100 b!1154108))

(declare-fun res!519148 () Bool)

(declare-fun e!737911 () Bool)

(assert (=> start!100516 (=> (not res!519148) (not e!737911))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!100516 (= res!519148 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100516 e!737911))

(assert (=> start!100516 true))

(declare-datatypes ((List!11179 0))(
  ( (Nil!11155) (Cons!11155 (h!16556 (_ BitVec 16)) (t!108735 List!11179)) )
))
(declare-datatypes ((TokenValue!1992 0))(
  ( (FloatLiteralValue!3984 (text!14389 List!11179)) (TokenValueExt!1991 (__x!7695 Int)) (Broken!9960 (value!62863 List!11179)) (Object!2015) (End!1992) (Def!1992) (Underscore!1992) (Match!1992) (Else!1992) (Error!1992) (Case!1992) (If!1992) (Extends!1992) (Abstract!1992) (Class!1992) (Val!1992) (DelimiterValue!3984 (del!2052 List!11179)) (KeywordValue!1998 (value!62864 List!11179)) (CommentValue!3984 (value!62865 List!11179)) (WhitespaceValue!3984 (value!62866 List!11179)) (IndentationValue!1992 (value!62867 List!11179)) (String!13549) (Int32!1992) (Broken!9961 (value!62868 List!11179)) (Boolean!1993) (Unit!17203) (OperatorValue!1995 (op!2052 List!11179)) (IdentifierValue!3984 (value!62869 List!11179)) (IdentifierValue!3985 (value!62870 List!11179)) (WhitespaceValue!3985 (value!62871 List!11179)) (True!3984) (False!3984) (Broken!9962 (value!62872 List!11179)) (Broken!9963 (value!62873 List!11179)) (True!3985) (RightBrace!1992) (RightBracket!1992) (Colon!1992) (Null!1992) (Comma!1992) (LeftBracket!1992) (False!3985) (LeftBrace!1992) (ImaginaryLiteralValue!1992 (text!14390 List!11179)) (StringLiteralValue!5976 (value!62874 List!11179)) (EOFValue!1992 (value!62875 List!11179)) (IdentValue!1992 (value!62876 List!11179)) (DelimiterValue!3985 (value!62877 List!11179)) (DedentValue!1992 (value!62878 List!11179)) (NewLineValue!1992 (value!62879 List!11179)) (IntegerValue!5976 (value!62880 (_ BitVec 32)) (text!14391 List!11179)) (IntegerValue!5977 (value!62881 Int) (text!14392 List!11179)) (Times!1992) (Or!1992) (Equal!1992) (Minus!1992) (Broken!9964 (value!62882 List!11179)) (And!1992) (Div!1992) (LessEqual!1992) (Mod!1992) (Concat!5188) (Not!1992) (Plus!1992) (SpaceValue!1992 (value!62883 List!11179)) (IntegerValue!5978 (value!62884 Int) (text!14393 List!11179)) (StringLiteralValue!5977 (text!14394 List!11179)) (FloatLiteralValue!3985 (text!14395 List!11179)) (BytesLiteralValue!1992 (value!62885 List!11179)) (CommentValue!3985 (value!62886 List!11179)) (StringLiteralValue!5978 (value!62887 List!11179)) (ErrorTokenValue!1992 (msg!2053 List!11179)) )
))
(declare-datatypes ((C!6710 0))(
  ( (C!6711 (val!3611 Int)) )
))
(declare-datatypes ((Regex!3196 0))(
  ( (ElementMatch!3196 (c!193949 C!6710)) (Concat!5189 (regOne!6904 Regex!3196) (regTwo!6904 Regex!3196)) (EmptyExpr!3196) (Star!3196 (reg!3525 Regex!3196)) (EmptyLang!3196) (Union!3196 (regOne!6905 Regex!3196) (regTwo!6905 Regex!3196)) )
))
(declare-datatypes ((String!13550 0))(
  ( (String!13551 (value!62888 String)) )
))
(declare-datatypes ((List!11180 0))(
  ( (Nil!11156) (Cons!11156 (h!16557 C!6710) (t!108736 List!11180)) )
))
(declare-datatypes ((IArray!7233 0))(
  ( (IArray!7234 (innerList!3674 List!11180)) )
))
(declare-datatypes ((Conc!3614 0))(
  ( (Node!3614 (left!9713 Conc!3614) (right!10043 Conc!3614) (csize!7458 Int) (cheight!3825 Int)) (Leaf!5588 (xs!6319 IArray!7233) (csize!7459 Int)) (Empty!3614) )
))
(declare-datatypes ((BalanceConc!7250 0))(
  ( (BalanceConc!7251 (c!193950 Conc!3614)) )
))
(declare-datatypes ((TokenValueInjection!3684 0))(
  ( (TokenValueInjection!3685 (toValue!3027 Int) (toChars!2886 Int)) )
))
(declare-datatypes ((Rule!3652 0))(
  ( (Rule!3653 (regex!1926 Regex!3196) (tag!2188 String!13550) (isSeparator!1926 Bool) (transformation!1926 TokenValueInjection!3684)) )
))
(declare-datatypes ((Token!3514 0))(
  ( (Token!3515 (value!62889 TokenValue!1992) (rule!3347 Rule!3652) (size!8788 Int) (originalCharacters!2480 List!11180)) )
))
(declare-datatypes ((List!11181 0))(
  ( (Nil!11157) (Cons!11157 (h!16558 Token!3514) (t!108737 List!11181)) )
))
(declare-datatypes ((List!11182 0))(
  ( (Nil!11158) (Cons!11158 (h!16559 Rule!3652) (t!108738 List!11182)) )
))
(declare-datatypes ((IArray!7235 0))(
  ( (IArray!7236 (innerList!3675 List!11181)) )
))
(declare-datatypes ((Conc!3615 0))(
  ( (Node!3615 (left!9714 Conc!3615) (right!10044 Conc!3615) (csize!7460 Int) (cheight!3826 Int)) (Leaf!5589 (xs!6320 IArray!7235) (csize!7461 Int)) (Empty!3615) )
))
(declare-datatypes ((BalanceConc!7252 0))(
  ( (BalanceConc!7253 (c!193951 Conc!3615)) )
))
(declare-datatypes ((PrintableTokens!538 0))(
  ( (PrintableTokens!539 (rules!9391 List!11182) (tokens!1525 BalanceConc!7252)) )
))
(declare-fun thiss!10527 () PrintableTokens!538)

(declare-fun e!737910 () Bool)

(declare-fun inv!14652 (PrintableTokens!538) Bool)

(assert (=> start!100516 (and (inv!14652 thiss!10527) e!737910)))

(declare-fun b!1154095 () Bool)

(declare-fun e!737913 () Bool)

(declare-fun lt!392534 () List!11181)

(declare-datatypes ((LexerInterface!1621 0))(
  ( (LexerInterfaceExt!1618 (__x!7696 Int)) (Lexer!1619) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!489 (LexerInterface!1621 List!11182 List!11181) Bool)

(assert (=> b!1154095 (= e!737913 (rulesProduceEachTokenIndividuallyList!489 Lexer!1619 (rules!9391 thiss!10527) (t!108737 lt!392534)))))

(declare-fun b!1154096 () Bool)

(declare-fun res!519146 () Bool)

(assert (=> b!1154096 (=> (not res!519146) (not e!737911))))

(declare-fun size!8789 (BalanceConc!7252) Int)

(assert (=> b!1154096 (= res!519146 (<= to!267 (size!8789 (tokens!1525 thiss!10527))))))

(declare-fun b!1154097 () Bool)

(declare-fun e!737912 () Bool)

(declare-fun tp!332831 () Bool)

(declare-fun inv!14653 (Conc!3615) Bool)

(assert (=> b!1154097 (= e!737912 (and (inv!14653 (c!193951 (tokens!1525 thiss!10527))) tp!332831))))

(declare-fun tp!332832 () Bool)

(declare-fun b!1154098 () Bool)

(declare-fun inv!14654 (BalanceConc!7252) Bool)

(assert (=> b!1154098 (= e!737910 (and tp!332832 (inv!14654 (tokens!1525 thiss!10527)) e!737912))))

(declare-fun b!1154099 () Bool)

(declare-fun e!737909 () Bool)

(assert (=> b!1154099 (= e!737911 e!737909)))

(declare-fun res!519147 () Bool)

(assert (=> b!1154099 (=> (not res!519147) (not e!737909))))

(declare-fun rulesInvariant!1495 (LexerInterface!1621 List!11182) Bool)

(assert (=> b!1154099 (= res!519147 (rulesInvariant!1495 Lexer!1619 (rules!9391 thiss!10527)))))

(declare-datatypes ((Unit!17204 0))(
  ( (Unit!17205) )
))
(declare-fun lt!392533 () Unit!17204)

(declare-fun lemmaInvariant!113 (PrintableTokens!538) Unit!17204)

(assert (=> b!1154099 (= lt!392533 (lemmaInvariant!113 thiss!10527))))

(declare-fun isEmpty!6907 (List!11182) Bool)

(assert (=> b!1154100 (= e!737909 (not (not (isEmpty!6907 (rules!9391 thiss!10527)))))))

(declare-fun e!737908 () Bool)

(assert (=> b!1154100 (= (rulesProduceEachTokenIndividuallyList!489 Lexer!1619 (rules!9391 thiss!10527) lt!392534) e!737908)))

(declare-fun res!519144 () Bool)

(assert (=> b!1154100 (=> res!519144 e!737908)))

(assert (=> b!1154100 (= res!519144 (not (is-Cons!11157 lt!392534)))))

(declare-fun list!4117 (BalanceConc!7252) List!11181)

(assert (=> b!1154100 (= lt!392534 (list!4117 (tokens!1525 thiss!10527)))))

(declare-fun lambda!46444 () Int)

(declare-fun rulesProduceEachTokenIndividually!660 (LexerInterface!1621 List!11182 BalanceConc!7252) Bool)

(declare-fun forall!2840 (BalanceConc!7252 Int) Bool)

(assert (=> b!1154100 (= (rulesProduceEachTokenIndividually!660 Lexer!1619 (rules!9391 thiss!10527) (tokens!1525 thiss!10527)) (forall!2840 (tokens!1525 thiss!10527) lambda!46444))))

(declare-fun b!1154101 () Bool)

(assert (=> b!1154101 (= e!737908 e!737913)))

(declare-fun res!519145 () Bool)

(assert (=> b!1154101 (=> (not res!519145) (not e!737913))))

(declare-fun rulesProduceIndividualToken!658 (LexerInterface!1621 List!11182 Token!3514) Bool)

(assert (=> b!1154101 (= res!519145 (rulesProduceIndividualToken!658 Lexer!1619 (rules!9391 thiss!10527) (h!16558 lt!392534)))))

(assert (= (and start!100516 res!519148) b!1154096))

(assert (= (and b!1154096 res!519146) b!1154099))

(assert (= (and b!1154099 res!519147) b!1154100))

(assert (= (and b!1154100 (not res!519144)) b!1154101))

(assert (= (and b!1154101 res!519145) b!1154095))

(assert (= b!1154098 b!1154097))

(assert (= start!100516 b!1154098))

(declare-fun m!1321315 () Bool)

(assert (=> b!1154097 m!1321315))

(declare-fun m!1321317 () Bool)

(assert (=> b!1154100 m!1321317))

(declare-fun m!1321319 () Bool)

(assert (=> b!1154100 m!1321319))

(declare-fun m!1321321 () Bool)

(assert (=> b!1154100 m!1321321))

(declare-fun m!1321323 () Bool)

(assert (=> b!1154100 m!1321323))

(declare-fun m!1321325 () Bool)

(assert (=> b!1154100 m!1321325))

(declare-fun m!1321327 () Bool)

(assert (=> start!100516 m!1321327))

(declare-fun m!1321329 () Bool)

(assert (=> b!1154096 m!1321329))

(declare-fun m!1321331 () Bool)

(assert (=> b!1154101 m!1321331))

(declare-fun m!1321333 () Bool)

(assert (=> b!1154098 m!1321333))

(declare-fun m!1321335 () Bool)

(assert (=> b!1154095 m!1321335))

(declare-fun m!1321337 () Bool)

(assert (=> b!1154099 m!1321337))

(declare-fun m!1321339 () Bool)

(assert (=> b!1154099 m!1321339))

(push 1)

(assert (not b!1154108))

(assert (not b!1154109))

(assert (not b!1154099))

(assert (not start!100516))

(assert (not b!1154100))

(assert (not b!1154095))

(assert (not b!1154098))

(assert (not b!1154097))

(assert (not b!1154096))

(assert (not b!1154101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!330050 () Bool)

(declare-fun res!519170 () Bool)

(declare-fun e!737946 () Bool)

(assert (=> d!330050 (=> (not res!519170) (not e!737946))))

(assert (=> d!330050 (= res!519170 (not (isEmpty!6907 (rules!9391 thiss!10527))))))

(assert (=> d!330050 (= (inv!14652 thiss!10527) e!737946)))

(declare-fun b!1154145 () Bool)

(declare-fun res!519171 () Bool)

(assert (=> b!1154145 (=> (not res!519171) (not e!737946))))

(assert (=> b!1154145 (= res!519171 (rulesInvariant!1495 Lexer!1619 (rules!9391 thiss!10527)))))

(declare-fun b!1154146 () Bool)

(declare-fun res!519172 () Bool)

(assert (=> b!1154146 (=> (not res!519172) (not e!737946))))

(assert (=> b!1154146 (= res!519172 (rulesProduceEachTokenIndividually!660 Lexer!1619 (rules!9391 thiss!10527) (tokens!1525 thiss!10527)))))

(declare-fun b!1154147 () Bool)

(declare-fun separableTokens!82 (LexerInterface!1621 BalanceConc!7252 List!11182) Bool)

(assert (=> b!1154147 (= e!737946 (separableTokens!82 Lexer!1619 (tokens!1525 thiss!10527) (rules!9391 thiss!10527)))))

(assert (= (and d!330050 res!519170) b!1154145))

(assert (= (and b!1154145 res!519171) b!1154146))

(assert (= (and b!1154146 res!519172) b!1154147))

(assert (=> d!330050 m!1321319))

(assert (=> b!1154145 m!1321337))

(assert (=> b!1154146 m!1321321))

(declare-fun m!1321367 () Bool)

(assert (=> b!1154147 m!1321367))

(assert (=> start!100516 d!330050))

(declare-fun d!330052 () Bool)

(declare-fun res!519175 () Bool)

(declare-fun e!737949 () Bool)

(assert (=> d!330052 (=> (not res!519175) (not e!737949))))

(declare-fun rulesValid!663 (LexerInterface!1621 List!11182) Bool)

(assert (=> d!330052 (= res!519175 (rulesValid!663 Lexer!1619 (rules!9391 thiss!10527)))))

(assert (=> d!330052 (= (rulesInvariant!1495 Lexer!1619 (rules!9391 thiss!10527)) e!737949)))

(declare-fun b!1154150 () Bool)

(declare-datatypes ((List!11187 0))(
  ( (Nil!11163) (Cons!11163 (h!16564 String!13550) (t!108758 List!11187)) )
))
(declare-fun noDuplicateTag!663 (LexerInterface!1621 List!11182 List!11187) Bool)

(assert (=> b!1154150 (= e!737949 (noDuplicateTag!663 Lexer!1619 (rules!9391 thiss!10527) Nil!11163))))

(assert (= (and d!330052 res!519175) b!1154150))

(declare-fun m!1321369 () Bool)

(assert (=> d!330052 m!1321369))

(declare-fun m!1321371 () Bool)

(assert (=> b!1154150 m!1321371))

(assert (=> b!1154099 d!330052))

(declare-fun d!330054 () Bool)

(declare-fun e!737952 () Bool)

(assert (=> d!330054 e!737952))

(declare-fun res!519180 () Bool)

(assert (=> d!330054 (=> (not res!519180) (not e!737952))))

(assert (=> d!330054 (= res!519180 (rulesInvariant!1495 Lexer!1619 (rules!9391 thiss!10527)))))

(declare-fun Unit!17209 () Unit!17204)

(assert (=> d!330054 (= (lemmaInvariant!113 thiss!10527) Unit!17209)))

(declare-fun b!1154155 () Bool)

(declare-fun res!519181 () Bool)

(assert (=> b!1154155 (=> (not res!519181) (not e!737952))))

(assert (=> b!1154155 (= res!519181 (rulesProduceEachTokenIndividually!660 Lexer!1619 (rules!9391 thiss!10527) (tokens!1525 thiss!10527)))))

(declare-fun b!1154156 () Bool)

(assert (=> b!1154156 (= e!737952 (separableTokens!82 Lexer!1619 (tokens!1525 thiss!10527) (rules!9391 thiss!10527)))))

(assert (= (and d!330054 res!519180) b!1154155))

(assert (= (and b!1154155 res!519181) b!1154156))

(assert (=> d!330054 m!1321337))

(assert (=> b!1154155 m!1321321))

(assert (=> b!1154156 m!1321367))

(assert (=> b!1154099 d!330054))

(declare-fun d!330056 () Bool)

(declare-fun isBalanced!1021 (Conc!3615) Bool)

(assert (=> d!330056 (= (inv!14654 (tokens!1525 thiss!10527)) (isBalanced!1021 (c!193951 (tokens!1525 thiss!10527))))))

(declare-fun bs!282743 () Bool)

(assert (= bs!282743 d!330056))

(declare-fun m!1321373 () Bool)

(assert (=> bs!282743 m!1321373))

(assert (=> b!1154098 d!330056))

(declare-fun d!330058 () Bool)

(declare-fun c!193957 () Bool)

(assert (=> d!330058 (= c!193957 (is-Node!3615 (c!193951 (tokens!1525 thiss!10527))))))

(declare-fun e!737959 () Bool)

(assert (=> d!330058 (= (inv!14653 (c!193951 (tokens!1525 thiss!10527))) e!737959)))

(declare-fun b!1154169 () Bool)

(declare-fun inv!14658 (Conc!3615) Bool)

(assert (=> b!1154169 (= e!737959 (inv!14658 (c!193951 (tokens!1525 thiss!10527))))))

(declare-fun b!1154170 () Bool)

(declare-fun e!737960 () Bool)

(assert (=> b!1154170 (= e!737959 e!737960)))

(declare-fun res!519190 () Bool)

(assert (=> b!1154170 (= res!519190 (not (is-Leaf!5589 (c!193951 (tokens!1525 thiss!10527)))))))

(assert (=> b!1154170 (=> res!519190 e!737960)))

(declare-fun b!1154171 () Bool)

(declare-fun inv!14659 (Conc!3615) Bool)

(assert (=> b!1154171 (= e!737960 (inv!14659 (c!193951 (tokens!1525 thiss!10527))))))

(assert (= (and d!330058 c!193957) b!1154169))

(assert (= (and d!330058 (not c!193957)) b!1154170))

(assert (= (and b!1154170 (not res!519190)) b!1154171))

(declare-fun m!1321375 () Bool)

(assert (=> b!1154169 m!1321375))

(declare-fun m!1321377 () Bool)

(assert (=> b!1154171 m!1321377))

(assert (=> b!1154097 d!330058))

(declare-fun d!330060 () Bool)

(declare-fun lt!392543 () Int)

(declare-fun size!8792 (List!11181) Int)

(assert (=> d!330060 (= lt!392543 (size!8792 (list!4117 (tokens!1525 thiss!10527))))))

(declare-fun size!8793 (Conc!3615) Int)

(assert (=> d!330060 (= lt!392543 (size!8793 (c!193951 (tokens!1525 thiss!10527))))))

(assert (=> d!330060 (= (size!8789 (tokens!1525 thiss!10527)) lt!392543)))

(declare-fun bs!282744 () Bool)

(assert (= bs!282744 d!330060))

(assert (=> bs!282744 m!1321323))

(assert (=> bs!282744 m!1321323))

(declare-fun m!1321379 () Bool)

(assert (=> bs!282744 m!1321379))

(declare-fun m!1321381 () Bool)

(assert (=> bs!282744 m!1321381))

(assert (=> b!1154096 d!330060))

(declare-fun d!330062 () Bool)

(declare-fun lt!392549 () Bool)

(declare-fun e!737966 () Bool)

(assert (=> d!330062 (= lt!392549 e!737966)))

(declare-fun res!519201 () Bool)

(assert (=> d!330062 (=> (not res!519201) (not e!737966))))

(declare-datatypes ((tuple2!11952 0))(
  ( (tuple2!11953 (_1!6823 BalanceConc!7252) (_2!6823 BalanceConc!7250)) )
))
(declare-fun lex!669 (LexerInterface!1621 List!11182 BalanceConc!7250) tuple2!11952)

(declare-fun print!606 (LexerInterface!1621 BalanceConc!7252) BalanceConc!7250)

(declare-fun singletonSeq!624 (Token!3514) BalanceConc!7252)

(assert (=> d!330062 (= res!519201 (= (list!4117 (_1!6823 (lex!669 Lexer!1619 (rules!9391 thiss!10527) (print!606 Lexer!1619 (singletonSeq!624 (h!16558 lt!392534)))))) (list!4117 (singletonSeq!624 (h!16558 lt!392534)))))))

(declare-fun e!737967 () Bool)

(assert (=> d!330062 (= lt!392549 e!737967)))

(declare-fun res!519202 () Bool)

(assert (=> d!330062 (=> (not res!519202) (not e!737967))))

(declare-fun lt!392548 () tuple2!11952)

(assert (=> d!330062 (= res!519202 (= (size!8789 (_1!6823 lt!392548)) 1))))

(assert (=> d!330062 (= lt!392548 (lex!669 Lexer!1619 (rules!9391 thiss!10527) (print!606 Lexer!1619 (singletonSeq!624 (h!16558 lt!392534)))))))

(assert (=> d!330062 (not (isEmpty!6907 (rules!9391 thiss!10527)))))

(assert (=> d!330062 (= (rulesProduceIndividualToken!658 Lexer!1619 (rules!9391 thiss!10527) (h!16558 lt!392534)) lt!392549)))

(declare-fun b!1154181 () Bool)

(declare-fun res!519200 () Bool)

(assert (=> b!1154181 (=> (not res!519200) (not e!737967))))

(declare-fun apply!2393 (BalanceConc!7252 Int) Token!3514)

(assert (=> b!1154181 (= res!519200 (= (apply!2393 (_1!6823 lt!392548) 0) (h!16558 lt!392534)))))

(declare-fun b!1154182 () Bool)

(declare-fun isEmpty!6909 (BalanceConc!7250) Bool)

(assert (=> b!1154182 (= e!737967 (isEmpty!6909 (_2!6823 lt!392548)))))

(declare-fun b!1154183 () Bool)

(assert (=> b!1154183 (= e!737966 (isEmpty!6909 (_2!6823 (lex!669 Lexer!1619 (rules!9391 thiss!10527) (print!606 Lexer!1619 (singletonSeq!624 (h!16558 lt!392534)))))))))

(assert (= (and d!330062 res!519202) b!1154181))

(assert (= (and b!1154181 res!519200) b!1154182))

(assert (= (and d!330062 res!519201) b!1154183))

(declare-fun m!1321385 () Bool)

(assert (=> d!330062 m!1321385))

(declare-fun m!1321387 () Bool)

(assert (=> d!330062 m!1321387))

(declare-fun m!1321389 () Bool)

(assert (=> d!330062 m!1321389))

(assert (=> d!330062 m!1321319))

(assert (=> d!330062 m!1321389))

(declare-fun m!1321391 () Bool)

(assert (=> d!330062 m!1321391))

(assert (=> d!330062 m!1321389))

(declare-fun m!1321393 () Bool)

(assert (=> d!330062 m!1321393))

(assert (=> d!330062 m!1321393))

(declare-fun m!1321395 () Bool)

(assert (=> d!330062 m!1321395))

(declare-fun m!1321397 () Bool)

(assert (=> b!1154181 m!1321397))

(declare-fun m!1321399 () Bool)

(assert (=> b!1154182 m!1321399))

(assert (=> b!1154183 m!1321389))

(assert (=> b!1154183 m!1321389))

(assert (=> b!1154183 m!1321393))

(assert (=> b!1154183 m!1321393))

(assert (=> b!1154183 m!1321395))

(declare-fun m!1321401 () Bool)

(assert (=> b!1154183 m!1321401))

(assert (=> b!1154101 d!330062))

(declare-fun bs!282747 () Bool)

(declare-fun d!330066 () Bool)

(assert (= bs!282747 (and d!330066 b!1154100)))

(declare-fun lambda!46457 () Int)

(assert (=> bs!282747 (= lambda!46457 lambda!46444)))

(declare-fun b!1154213 () Bool)

(declare-fun e!737991 () Bool)

(assert (=> b!1154213 (= e!737991 true)))

(declare-fun b!1154212 () Bool)

(declare-fun e!737990 () Bool)

(assert (=> b!1154212 (= e!737990 e!737991)))

(declare-fun b!1154211 () Bool)

(declare-fun e!737989 () Bool)

(assert (=> b!1154211 (= e!737989 e!737990)))

(assert (=> d!330066 e!737989))

(assert (= b!1154212 b!1154213))

(assert (= b!1154211 b!1154212))

(assert (= (and d!330066 (is-Cons!11158 (rules!9391 thiss!10527))) b!1154211))

(declare-fun order!6815 () Int)

(declare-fun order!6813 () Int)

(declare-fun dynLambda!4924 (Int Int) Int)

(declare-fun dynLambda!4925 (Int Int) Int)

(assert (=> b!1154213 (< (dynLambda!4924 order!6813 (toValue!3027 (transformation!1926 (h!16559 (rules!9391 thiss!10527))))) (dynLambda!4925 order!6815 lambda!46457))))

(declare-fun order!6817 () Int)

(declare-fun dynLambda!4926 (Int Int) Int)

(assert (=> b!1154213 (< (dynLambda!4926 order!6817 (toChars!2886 (transformation!1926 (h!16559 (rules!9391 thiss!10527))))) (dynLambda!4925 order!6815 lambda!46457))))

(assert (=> d!330066 true))

(declare-fun e!737982 () Bool)

(assert (=> d!330066 e!737982))

(declare-fun res!519208 () Bool)

(assert (=> d!330066 (=> (not res!519208) (not e!737982))))

(declare-fun lt!392555 () Bool)

(declare-fun forall!2842 (List!11181 Int) Bool)

(assert (=> d!330066 (= res!519208 (= lt!392555 (forall!2842 (list!4117 (tokens!1525 thiss!10527)) lambda!46457)))))

(assert (=> d!330066 (= lt!392555 (forall!2840 (tokens!1525 thiss!10527) lambda!46457))))

(assert (=> d!330066 (not (isEmpty!6907 (rules!9391 thiss!10527)))))

(assert (=> d!330066 (= (rulesProduceEachTokenIndividually!660 Lexer!1619 (rules!9391 thiss!10527) (tokens!1525 thiss!10527)) lt!392555)))

(declare-fun b!1154202 () Bool)

(assert (=> b!1154202 (= e!737982 (= lt!392555 (rulesProduceEachTokenIndividuallyList!489 Lexer!1619 (rules!9391 thiss!10527) (list!4117 (tokens!1525 thiss!10527)))))))

(assert (= (and d!330066 res!519208) b!1154202))

(assert (=> d!330066 m!1321323))

(assert (=> d!330066 m!1321323))

(declare-fun m!1321411 () Bool)

(assert (=> d!330066 m!1321411))

(declare-fun m!1321413 () Bool)

(assert (=> d!330066 m!1321413))

(assert (=> d!330066 m!1321319))

(assert (=> b!1154202 m!1321323))

(assert (=> b!1154202 m!1321323))

(declare-fun m!1321415 () Bool)

(assert (=> b!1154202 m!1321415))

(assert (=> b!1154100 d!330066))

(declare-fun d!330074 () Bool)

(assert (=> d!330074 (= (isEmpty!6907 (rules!9391 thiss!10527)) (is-Nil!11158 (rules!9391 thiss!10527)))))

(assert (=> b!1154100 d!330074))

(declare-fun d!330076 () Bool)

(declare-fun list!4119 (Conc!3615) List!11181)

(assert (=> d!330076 (= (list!4117 (tokens!1525 thiss!10527)) (list!4119 (c!193951 (tokens!1525 thiss!10527))))))

(declare-fun bs!282748 () Bool)

(assert (= bs!282748 d!330076))

(declare-fun m!1321417 () Bool)

(assert (=> bs!282748 m!1321417))

(assert (=> b!1154100 d!330076))

(declare-fun d!330078 () Bool)

(declare-fun lt!392558 () Bool)

(assert (=> d!330078 (= lt!392558 (forall!2842 (list!4117 (tokens!1525 thiss!10527)) lambda!46444))))

(declare-fun forall!2843 (Conc!3615 Int) Bool)

(assert (=> d!330078 (= lt!392558 (forall!2843 (c!193951 (tokens!1525 thiss!10527)) lambda!46444))))

(assert (=> d!330078 (= (forall!2840 (tokens!1525 thiss!10527) lambda!46444) lt!392558)))

(declare-fun bs!282749 () Bool)

(assert (= bs!282749 d!330078))

(assert (=> bs!282749 m!1321323))

(assert (=> bs!282749 m!1321323))

(declare-fun m!1321419 () Bool)

(assert (=> bs!282749 m!1321419))

(declare-fun m!1321421 () Bool)

(assert (=> bs!282749 m!1321421))

(assert (=> b!1154100 d!330078))

(declare-fun bs!282753 () Bool)

(declare-fun d!330080 () Bool)

(assert (= bs!282753 (and d!330080 b!1154100)))

(declare-fun lambda!46463 () Int)

(assert (=> bs!282753 (= lambda!46463 lambda!46444)))

(declare-fun bs!282754 () Bool)

(assert (= bs!282754 (and d!330080 d!330066)))

(assert (=> bs!282754 (= lambda!46463 lambda!46457)))

(declare-fun b!1154236 () Bool)

(declare-fun e!738012 () Bool)

(assert (=> b!1154236 (= e!738012 true)))

(declare-fun b!1154235 () Bool)

(declare-fun e!738011 () Bool)

(assert (=> b!1154235 (= e!738011 e!738012)))

(declare-fun b!1154234 () Bool)

(declare-fun e!738010 () Bool)

(assert (=> b!1154234 (= e!738010 e!738011)))

(assert (=> d!330080 e!738010))

(assert (= b!1154235 b!1154236))

(assert (= b!1154234 b!1154235))

(assert (= (and d!330080 (is-Cons!11158 (rules!9391 thiss!10527))) b!1154234))

(assert (=> b!1154236 (< (dynLambda!4924 order!6813 (toValue!3027 (transformation!1926 (h!16559 (rules!9391 thiss!10527))))) (dynLambda!4925 order!6815 lambda!46463))))

(assert (=> b!1154236 (< (dynLambda!4926 order!6817 (toChars!2886 (transformation!1926 (h!16559 (rules!9391 thiss!10527))))) (dynLambda!4925 order!6815 lambda!46463))))

(assert (=> d!330080 true))

(declare-fun lt!392567 () Bool)

(assert (=> d!330080 (= lt!392567 (forall!2842 lt!392534 lambda!46463))))

(declare-fun e!738008 () Bool)

(assert (=> d!330080 (= lt!392567 e!738008)))

(declare-fun res!519223 () Bool)

(assert (=> d!330080 (=> res!519223 e!738008)))

(assert (=> d!330080 (= res!519223 (not (is-Cons!11157 lt!392534)))))

(assert (=> d!330080 (not (isEmpty!6907 (rules!9391 thiss!10527)))))

(assert (=> d!330080 (= (rulesProduceEachTokenIndividuallyList!489 Lexer!1619 (rules!9391 thiss!10527) lt!392534) lt!392567)))

(declare-fun b!1154232 () Bool)

(declare-fun e!738009 () Bool)

(assert (=> b!1154232 (= e!738008 e!738009)))

(declare-fun res!519222 () Bool)

(assert (=> b!1154232 (=> (not res!519222) (not e!738009))))

(assert (=> b!1154232 (= res!519222 (rulesProduceIndividualToken!658 Lexer!1619 (rules!9391 thiss!10527) (h!16558 lt!392534)))))

(declare-fun b!1154233 () Bool)

(assert (=> b!1154233 (= e!738009 (rulesProduceEachTokenIndividuallyList!489 Lexer!1619 (rules!9391 thiss!10527) (t!108737 lt!392534)))))

(assert (= (and d!330080 (not res!519223)) b!1154232))

(assert (= (and b!1154232 res!519222) b!1154233))

(declare-fun m!1321433 () Bool)

(assert (=> d!330080 m!1321433))

(assert (=> d!330080 m!1321319))

(assert (=> b!1154232 m!1321331))

(assert (=> b!1154233 m!1321335))

(assert (=> b!1154100 d!330080))

(declare-fun bs!282755 () Bool)

(declare-fun d!330088 () Bool)

(assert (= bs!282755 (and d!330088 b!1154100)))

(declare-fun lambda!46464 () Int)

(assert (=> bs!282755 (= lambda!46464 lambda!46444)))

(declare-fun bs!282756 () Bool)

(assert (= bs!282756 (and d!330088 d!330066)))

(assert (=> bs!282756 (= lambda!46464 lambda!46457)))

(declare-fun bs!282757 () Bool)

(assert (= bs!282757 (and d!330088 d!330080)))

(assert (=> bs!282757 (= lambda!46464 lambda!46463)))

(declare-fun b!1154241 () Bool)

(declare-fun e!738017 () Bool)

(assert (=> b!1154241 (= e!738017 true)))

(declare-fun b!1154240 () Bool)

(declare-fun e!738016 () Bool)

(assert (=> b!1154240 (= e!738016 e!738017)))

(declare-fun b!1154239 () Bool)

(declare-fun e!738015 () Bool)

(assert (=> b!1154239 (= e!738015 e!738016)))

(assert (=> d!330088 e!738015))

(assert (= b!1154240 b!1154241))

(assert (= b!1154239 b!1154240))

(assert (= (and d!330088 (is-Cons!11158 (rules!9391 thiss!10527))) b!1154239))

(assert (=> b!1154241 (< (dynLambda!4924 order!6813 (toValue!3027 (transformation!1926 (h!16559 (rules!9391 thiss!10527))))) (dynLambda!4925 order!6815 lambda!46464))))

(assert (=> b!1154241 (< (dynLambda!4926 order!6817 (toChars!2886 (transformation!1926 (h!16559 (rules!9391 thiss!10527))))) (dynLambda!4925 order!6815 lambda!46464))))

(assert (=> d!330088 true))

(declare-fun lt!392568 () Bool)

(assert (=> d!330088 (= lt!392568 (forall!2842 (t!108737 lt!392534) lambda!46464))))

(declare-fun e!738013 () Bool)

(assert (=> d!330088 (= lt!392568 e!738013)))

(declare-fun res!519225 () Bool)

(assert (=> d!330088 (=> res!519225 e!738013)))

(assert (=> d!330088 (= res!519225 (not (is-Cons!11157 (t!108737 lt!392534))))))

(assert (=> d!330088 (not (isEmpty!6907 (rules!9391 thiss!10527)))))

(assert (=> d!330088 (= (rulesProduceEachTokenIndividuallyList!489 Lexer!1619 (rules!9391 thiss!10527) (t!108737 lt!392534)) lt!392568)))

(declare-fun b!1154237 () Bool)

(declare-fun e!738014 () Bool)

(assert (=> b!1154237 (= e!738013 e!738014)))

(declare-fun res!519224 () Bool)

(assert (=> b!1154237 (=> (not res!519224) (not e!738014))))

(assert (=> b!1154237 (= res!519224 (rulesProduceIndividualToken!658 Lexer!1619 (rules!9391 thiss!10527) (h!16558 (t!108737 lt!392534))))))

(declare-fun b!1154238 () Bool)

(assert (=> b!1154238 (= e!738014 (rulesProduceEachTokenIndividuallyList!489 Lexer!1619 (rules!9391 thiss!10527) (t!108737 (t!108737 lt!392534))))))

(assert (= (and d!330088 (not res!519225)) b!1154237))

(assert (= (and b!1154237 res!519224) b!1154238))

(declare-fun m!1321435 () Bool)

(assert (=> d!330088 m!1321435))

(assert (=> d!330088 m!1321319))

(declare-fun m!1321437 () Bool)

(assert (=> b!1154237 m!1321437))

(declare-fun m!1321439 () Bool)

(assert (=> b!1154238 m!1321439))

(assert (=> b!1154095 d!330088))

(declare-fun b!1154252 () Bool)

(declare-fun b_free!27625 () Bool)

(declare-fun b_next!28329 () Bool)

(assert (=> b!1154252 (= b_free!27625 (not b_next!28329))))

(declare-fun tp!332848 () Bool)

(declare-fun b_and!80501 () Bool)

(assert (=> b!1154252 (= tp!332848 b_and!80501)))

(declare-fun b_free!27627 () Bool)

(declare-fun b_next!28331 () Bool)

(assert (=> b!1154252 (= b_free!27627 (not b_next!28331))))

(declare-fun tp!332847 () Bool)

(declare-fun b_and!80503 () Bool)

(assert (=> b!1154252 (= tp!332847 b_and!80503)))

(declare-fun e!738029 () Bool)

(assert (=> b!1154252 (= e!738029 (and tp!332848 tp!332847))))

(declare-fun tp!332849 () Bool)

(declare-fun b!1154251 () Bool)

(declare-fun e!738028 () Bool)

(declare-fun inv!14649 (String!13550) Bool)

(declare-fun inv!14660 (TokenValueInjection!3684) Bool)

(assert (=> b!1154251 (= e!738028 (and tp!332849 (inv!14649 (tag!2188 (h!16559 (rules!9391 thiss!10527)))) (inv!14660 (transformation!1926 (h!16559 (rules!9391 thiss!10527)))) e!738029))))

(declare-fun b!1154250 () Bool)

(declare-fun e!738027 () Bool)

(declare-fun tp!332850 () Bool)

(assert (=> b!1154250 (= e!738027 (and e!738028 tp!332850))))

(assert (=> b!1154098 (= tp!332832 e!738027)))

(assert (= b!1154251 b!1154252))

(assert (= b!1154250 b!1154251))

(assert (= (and b!1154098 (is-Cons!11158 (rules!9391 thiss!10527))) b!1154250))

(declare-fun m!1321441 () Bool)

(assert (=> b!1154251 m!1321441))

(declare-fun m!1321443 () Bool)

(assert (=> b!1154251 m!1321443))

(declare-fun b!1154261 () Bool)

(declare-fun e!738034 () Bool)

(assert (=> b!1154261 (= e!738034 true)))

(declare-fun b!1154263 () Bool)

(declare-fun e!738035 () Bool)

(assert (=> b!1154263 (= e!738035 true)))

(declare-fun b!1154262 () Bool)

(assert (=> b!1154262 (= e!738034 e!738035)))

(assert (=> b!1154109 e!738034))

(assert (= (and b!1154109 (is-Node!3615 (c!193951 (tokens!1525 thiss!10527)))) b!1154261))

(assert (= b!1154262 b!1154263))

(assert (= (and b!1154109 (is-Leaf!5589 (c!193951 (tokens!1525 thiss!10527)))) b!1154262))

(declare-fun e!738040 () Bool)

(declare-fun tp!332858 () Bool)

(declare-fun b!1154272 () Bool)

(declare-fun tp!332859 () Bool)

(assert (=> b!1154272 (= e!738040 (and (inv!14653 (left!9714 (c!193951 (tokens!1525 thiss!10527)))) tp!332859 (inv!14653 (right!10044 (c!193951 (tokens!1525 thiss!10527)))) tp!332858))))

(declare-fun b!1154274 () Bool)

(declare-fun e!738041 () Bool)

(declare-fun tp!332857 () Bool)

(assert (=> b!1154274 (= e!738041 tp!332857)))

(declare-fun b!1154273 () Bool)

(declare-fun inv!14661 (IArray!7235) Bool)

(assert (=> b!1154273 (= e!738040 (and (inv!14661 (xs!6320 (c!193951 (tokens!1525 thiss!10527)))) e!738041))))

(assert (=> b!1154097 (= tp!332831 (and (inv!14653 (c!193951 (tokens!1525 thiss!10527))) e!738040))))

(assert (= (and b!1154097 (is-Node!3615 (c!193951 (tokens!1525 thiss!10527)))) b!1154272))

(assert (= b!1154273 b!1154274))

(assert (= (and b!1154097 (is-Leaf!5589 (c!193951 (tokens!1525 thiss!10527)))) b!1154273))

(declare-fun m!1321445 () Bool)

(assert (=> b!1154272 m!1321445))

(declare-fun m!1321447 () Bool)

(assert (=> b!1154272 m!1321447))

(declare-fun m!1321449 () Bool)

(assert (=> b!1154273 m!1321449))

(assert (=> b!1154097 m!1321315))

(declare-fun b!1154277 () Bool)

(declare-fun e!738044 () Bool)

(assert (=> b!1154277 (= e!738044 true)))

(declare-fun b!1154276 () Bool)

(declare-fun e!738043 () Bool)

(assert (=> b!1154276 (= e!738043 e!738044)))

(declare-fun b!1154275 () Bool)

(declare-fun e!738042 () Bool)

(assert (=> b!1154275 (= e!738042 e!738043)))

(assert (=> b!1154108 e!738042))

(assert (= b!1154276 b!1154277))

(assert (= b!1154275 b!1154276))

(assert (= (and b!1154108 (is-Cons!11158 (rules!9391 thiss!10527))) b!1154275))

(assert (=> b!1154277 (< (dynLambda!4924 order!6813 (toValue!3027 (transformation!1926 (h!16559 (rules!9391 thiss!10527))))) (dynLambda!4925 order!6815 lambda!46444))))

(assert (=> b!1154277 (< (dynLambda!4926 order!6817 (toChars!2886 (transformation!1926 (h!16559 (rules!9391 thiss!10527))))) (dynLambda!4925 order!6815 lambda!46444))))

(push 1)

(assert (not b!1154272))

(assert (not b!1154146))

(assert (not d!330066))

(assert (not b!1154234))

(assert (not b!1154251))

(assert (not d!330054))

(assert (not b!1154181))

(assert (not b!1154183))

(assert (not b!1154237))

(assert (not b!1154232))

(assert (not b!1154275))

(assert (not d!330052))

(assert (not d!330078))

(assert (not b!1154155))

(assert (not b!1154150))

(assert (not b!1154261))

(assert (not b!1154169))

(assert (not b!1154263))

(assert b_and!80503)

(assert (not d!330056))

(assert (not b!1154156))

(assert (not b!1154182))

(assert (not b!1154273))

(assert (not b!1154211))

(assert (not b!1154274))

(assert (not d!330060))

(assert (not b!1154233))

(assert (not b!1154250))

(assert (not b!1154238))

(assert (not d!330050))

(assert (not d!330076))

(assert (not d!330062))

(assert (not b!1154239))

(assert (not b!1154147))

(assert (not b!1154202))

(assert b_and!80501)

(assert (not d!330080))

(assert (not b!1154097))

(assert (not b_next!28331))

(assert (not d!330088))

(assert (not b!1154171))

(assert (not b!1154145))

(assert (not b_next!28329))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80501)

(assert b_and!80503)

(assert (not b_next!28329))

(assert (not b_next!28331))

(check-sat)

(pop 1)

