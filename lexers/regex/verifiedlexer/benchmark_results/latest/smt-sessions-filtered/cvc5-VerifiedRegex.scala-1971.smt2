; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100468 () Bool)

(assert start!100468)

(declare-fun b!1153841 () Bool)

(declare-fun e!737721 () Bool)

(assert (=> b!1153841 (= e!737721 true)))

(declare-fun b!1153840 () Bool)

(declare-fun e!737720 () Bool)

(assert (=> b!1153840 (= e!737720 e!737721)))

(declare-fun b!1153829 () Bool)

(assert (=> b!1153829 e!737720))

(assert (= b!1153840 b!1153841))

(assert (= b!1153829 b!1153840))

(declare-fun e!737712 () Bool)

(declare-datatypes ((List!11162 0))(
  ( (Nil!11138) (Cons!11138 (h!16539 (_ BitVec 16)) (t!108702 List!11162)) )
))
(declare-datatypes ((TokenValue!1988 0))(
  ( (FloatLiteralValue!3976 (text!14361 List!11162)) (TokenValueExt!1987 (__x!7687 Int)) (Broken!9940 (value!62749 List!11162)) (Object!2011) (End!1988) (Def!1988) (Underscore!1988) (Match!1988) (Else!1988) (Error!1988) (Case!1988) (If!1988) (Extends!1988) (Abstract!1988) (Class!1988) (Val!1988) (DelimiterValue!3976 (del!2048 List!11162)) (KeywordValue!1994 (value!62750 List!11162)) (CommentValue!3976 (value!62751 List!11162)) (WhitespaceValue!3976 (value!62752 List!11162)) (IndentationValue!1988 (value!62753 List!11162)) (String!13529) (Int32!1988) (Broken!9941 (value!62754 List!11162)) (Boolean!1989) (Unit!17190) (OperatorValue!1991 (op!2048 List!11162)) (IdentifierValue!3976 (value!62755 List!11162)) (IdentifierValue!3977 (value!62756 List!11162)) (WhitespaceValue!3977 (value!62757 List!11162)) (True!3976) (False!3976) (Broken!9942 (value!62758 List!11162)) (Broken!9943 (value!62759 List!11162)) (True!3977) (RightBrace!1988) (RightBracket!1988) (Colon!1988) (Null!1988) (Comma!1988) (LeftBracket!1988) (False!3977) (LeftBrace!1988) (ImaginaryLiteralValue!1988 (text!14362 List!11162)) (StringLiteralValue!5964 (value!62760 List!11162)) (EOFValue!1988 (value!62761 List!11162)) (IdentValue!1988 (value!62762 List!11162)) (DelimiterValue!3977 (value!62763 List!11162)) (DedentValue!1988 (value!62764 List!11162)) (NewLineValue!1988 (value!62765 List!11162)) (IntegerValue!5964 (value!62766 (_ BitVec 32)) (text!14363 List!11162)) (IntegerValue!5965 (value!62767 Int) (text!14364 List!11162)) (Times!1988) (Or!1988) (Equal!1988) (Minus!1988) (Broken!9944 (value!62768 List!11162)) (And!1988) (Div!1988) (LessEqual!1988) (Mod!1988) (Concat!5180) (Not!1988) (Plus!1988) (SpaceValue!1988 (value!62769 List!11162)) (IntegerValue!5966 (value!62770 Int) (text!14365 List!11162)) (StringLiteralValue!5965 (text!14366 List!11162)) (FloatLiteralValue!3977 (text!14367 List!11162)) (BytesLiteralValue!1988 (value!62771 List!11162)) (CommentValue!3977 (value!62772 List!11162)) (StringLiteralValue!5966 (value!62773 List!11162)) (ErrorTokenValue!1988 (msg!2049 List!11162)) )
))
(declare-datatypes ((C!6702 0))(
  ( (C!6703 (val!3607 Int)) )
))
(declare-datatypes ((Regex!3192 0))(
  ( (ElementMatch!3192 (c!193931 C!6702)) (Concat!5181 (regOne!6896 Regex!3192) (regTwo!6896 Regex!3192)) (EmptyExpr!3192) (Star!3192 (reg!3521 Regex!3192)) (EmptyLang!3192) (Union!3192 (regOne!6897 Regex!3192) (regTwo!6897 Regex!3192)) )
))
(declare-datatypes ((String!13530 0))(
  ( (String!13531 (value!62774 String)) )
))
(declare-datatypes ((List!11163 0))(
  ( (Nil!11139) (Cons!11139 (h!16540 C!6702) (t!108703 List!11163)) )
))
(declare-datatypes ((IArray!7217 0))(
  ( (IArray!7218 (innerList!3666 List!11163)) )
))
(declare-datatypes ((Conc!3606 0))(
  ( (Node!3606 (left!9695 Conc!3606) (right!10025 Conc!3606) (csize!7442 Int) (cheight!3817 Int)) (Leaf!5578 (xs!6311 IArray!7217) (csize!7443 Int)) (Empty!3606) )
))
(declare-datatypes ((BalanceConc!7234 0))(
  ( (BalanceConc!7235 (c!193932 Conc!3606)) )
))
(declare-datatypes ((TokenValueInjection!3676 0))(
  ( (TokenValueInjection!3677 (toValue!3023 Int) (toChars!2882 Int)) )
))
(declare-datatypes ((Rule!3644 0))(
  ( (Rule!3645 (regex!1922 Regex!3192) (tag!2184 String!13530) (isSeparator!1922 Bool) (transformation!1922 TokenValueInjection!3676)) )
))
(declare-datatypes ((Token!3506 0))(
  ( (Token!3507 (value!62775 TokenValue!1988) (rule!3343 Rule!3644) (size!8778 Int) (originalCharacters!2476 List!11163)) )
))
(declare-datatypes ((List!11164 0))(
  ( (Nil!11140) (Cons!11140 (h!16541 Token!3506) (t!108704 List!11164)) )
))
(declare-datatypes ((List!11165 0))(
  ( (Nil!11141) (Cons!11141 (h!16542 Rule!3644) (t!108705 List!11165)) )
))
(declare-datatypes ((IArray!7219 0))(
  ( (IArray!7220 (innerList!3667 List!11164)) )
))
(declare-datatypes ((Conc!3607 0))(
  ( (Node!3607 (left!9696 Conc!3607) (right!10026 Conc!3607) (csize!7444 Int) (cheight!3818 Int)) (Leaf!5579 (xs!6312 IArray!7219) (csize!7445 Int)) (Empty!3607) )
))
(declare-datatypes ((BalanceConc!7236 0))(
  ( (BalanceConc!7237 (c!193933 Conc!3607)) )
))
(declare-datatypes ((PrintableTokens!530 0))(
  ( (PrintableTokens!531 (rules!9385 List!11165) (tokens!1521 BalanceConc!7236)) )
))
(declare-fun thiss!10527 () PrintableTokens!530)

(declare-fun isEmpty!6905 (List!11165) Bool)

(assert (=> b!1153829 (= e!737712 (not (not (isEmpty!6905 (rules!9385 thiss!10527)))))))

(declare-fun lt!392491 () List!11164)

(declare-fun list!4112 (BalanceConc!7236) List!11164)

(assert (=> b!1153829 (= lt!392491 (list!4112 (tokens!1521 thiss!10527)))))

(declare-fun lambda!46422 () Int)

(declare-datatypes ((LexerInterface!1617 0))(
  ( (LexerInterfaceExt!1614 (__x!7688 Int)) (Lexer!1615) )
))
(declare-fun rulesProduceEachTokenIndividually!656 (LexerInterface!1617 List!11165 BalanceConc!7236) Bool)

(declare-fun forall!2834 (BalanceConc!7236 Int) Bool)

(assert (=> b!1153829 (= (rulesProduceEachTokenIndividually!656 Lexer!1615 (rules!9385 thiss!10527) (tokens!1521 thiss!10527)) (forall!2834 (tokens!1521 thiss!10527) lambda!46422))))

(declare-fun tp!332765 () Bool)

(declare-fun b!1153830 () Bool)

(declare-fun e!737714 () Bool)

(declare-fun e!737713 () Bool)

(declare-fun inv!14630 (BalanceConc!7236) Bool)

(assert (=> b!1153830 (= e!737713 (and tp!332765 (inv!14630 (tokens!1521 thiss!10527)) e!737714))))

(declare-fun res!519046 () Bool)

(declare-fun e!737715 () Bool)

(assert (=> start!100468 (=> (not res!519046) (not e!737715))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!100468 (= res!519046 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100468 e!737715))

(assert (=> start!100468 true))

(declare-fun inv!14631 (PrintableTokens!530) Bool)

(assert (=> start!100468 (and (inv!14631 thiss!10527) e!737713)))

(declare-fun b!1153831 () Bool)

(assert (=> b!1153831 (= e!737715 e!737712)))

(declare-fun res!519045 () Bool)

(assert (=> b!1153831 (=> (not res!519045) (not e!737712))))

(declare-fun rulesInvariant!1491 (LexerInterface!1617 List!11165) Bool)

(assert (=> b!1153831 (= res!519045 (rulesInvariant!1491 Lexer!1615 (rules!9385 thiss!10527)))))

(declare-datatypes ((Unit!17191 0))(
  ( (Unit!17192) )
))
(declare-fun lt!392492 () Unit!17191)

(declare-fun lemmaInvariant!109 (PrintableTokens!530) Unit!17191)

(assert (=> b!1153831 (= lt!392492 (lemmaInvariant!109 thiss!10527))))

(declare-fun b!1153832 () Bool)

(declare-fun res!519044 () Bool)

(assert (=> b!1153832 (=> (not res!519044) (not e!737715))))

(declare-fun size!8779 (BalanceConc!7236) Int)

(assert (=> b!1153832 (= res!519044 (<= to!267 (size!8779 (tokens!1521 thiss!10527))))))

(declare-fun b!1153833 () Bool)

(declare-fun tp!332766 () Bool)

(declare-fun inv!14632 (Conc!3607) Bool)

(assert (=> b!1153833 (= e!737714 (and (inv!14632 (c!193933 (tokens!1521 thiss!10527))) tp!332766))))

(assert (= (and start!100468 res!519046) b!1153832))

(assert (= (and b!1153832 res!519044) b!1153831))

(assert (= (and b!1153831 res!519045) b!1153829))

(assert (= b!1153830 b!1153833))

(assert (= start!100468 b!1153830))

(declare-fun m!1321155 () Bool)

(assert (=> b!1153830 m!1321155))

(declare-fun m!1321157 () Bool)

(assert (=> b!1153833 m!1321157))

(declare-fun m!1321159 () Bool)

(assert (=> start!100468 m!1321159))

(declare-fun m!1321161 () Bool)

(assert (=> b!1153829 m!1321161))

(declare-fun m!1321163 () Bool)

(assert (=> b!1153829 m!1321163))

(declare-fun m!1321165 () Bool)

(assert (=> b!1153829 m!1321165))

(declare-fun m!1321167 () Bool)

(assert (=> b!1153829 m!1321167))

(declare-fun m!1321169 () Bool)

(assert (=> b!1153831 m!1321169))

(declare-fun m!1321171 () Bool)

(assert (=> b!1153831 m!1321171))

(declare-fun m!1321173 () Bool)

(assert (=> b!1153832 m!1321173))

(push 1)

(assert (not b!1153829))

(assert (not b!1153840))

(assert (not b!1153830))

(assert (not b!1153831))

(assert (not start!100468))

(assert (not b!1153841))

(assert (not b!1153832))

(assert (not b!1153833))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!330006 () Bool)

(declare-fun isBalanced!1020 (Conc!3607) Bool)

(assert (=> d!330006 (= (inv!14630 (tokens!1521 thiss!10527)) (isBalanced!1020 (c!193933 (tokens!1521 thiss!10527))))))

(declare-fun bs!282729 () Bool)

(assert (= bs!282729 d!330006))

(declare-fun m!1321195 () Bool)

(assert (=> bs!282729 m!1321195))

(assert (=> b!1153830 d!330006))

(declare-fun d!330010 () Bool)

(declare-fun res!519058 () Bool)

(declare-fun e!737742 () Bool)

(assert (=> d!330010 (=> (not res!519058) (not e!737742))))

(declare-fun rulesValid!662 (LexerInterface!1617 List!11165) Bool)

(assert (=> d!330010 (= res!519058 (rulesValid!662 Lexer!1615 (rules!9385 thiss!10527)))))

(assert (=> d!330010 (= (rulesInvariant!1491 Lexer!1615 (rules!9385 thiss!10527)) e!737742)))

(declare-fun b!1153867 () Bool)

(declare-datatypes ((List!11170 0))(
  ( (Nil!11146) (Cons!11146 (h!16547 String!13530) (t!108720 List!11170)) )
))
(declare-fun noDuplicateTag!662 (LexerInterface!1617 List!11165 List!11170) Bool)

(assert (=> b!1153867 (= e!737742 (noDuplicateTag!662 Lexer!1615 (rules!9385 thiss!10527) Nil!11146))))

(assert (= (and d!330010 res!519058) b!1153867))

(declare-fun m!1321197 () Bool)

(assert (=> d!330010 m!1321197))

(declare-fun m!1321199 () Bool)

(assert (=> b!1153867 m!1321199))

(assert (=> b!1153831 d!330010))

(declare-fun d!330012 () Bool)

(declare-fun e!737751 () Bool)

(assert (=> d!330012 e!737751))

(declare-fun res!519066 () Bool)

(assert (=> d!330012 (=> (not res!519066) (not e!737751))))

(assert (=> d!330012 (= res!519066 (rulesInvariant!1491 Lexer!1615 (rules!9385 thiss!10527)))))

(declare-fun Unit!17196 () Unit!17191)

(assert (=> d!330012 (= (lemmaInvariant!109 thiss!10527) Unit!17196)))

(declare-fun b!1153881 () Bool)

(declare-fun res!519067 () Bool)

(assert (=> b!1153881 (=> (not res!519067) (not e!737751))))

(assert (=> b!1153881 (= res!519067 (rulesProduceEachTokenIndividually!656 Lexer!1615 (rules!9385 thiss!10527) (tokens!1521 thiss!10527)))))

(declare-fun b!1153882 () Bool)

(declare-fun separableTokens!81 (LexerInterface!1617 BalanceConc!7236 List!11165) Bool)

(assert (=> b!1153882 (= e!737751 (separableTokens!81 Lexer!1615 (tokens!1521 thiss!10527) (rules!9385 thiss!10527)))))

(assert (= (and d!330012 res!519066) b!1153881))

(assert (= (and b!1153881 res!519067) b!1153882))

(assert (=> d!330012 m!1321169))

(assert (=> b!1153881 m!1321165))

(declare-fun m!1321209 () Bool)

(assert (=> b!1153882 m!1321209))

(assert (=> b!1153831 d!330012))

(declare-fun d!330018 () Bool)

(declare-fun lt!392504 () Int)

(declare-fun size!8782 (List!11164) Int)

(assert (=> d!330018 (= lt!392504 (size!8782 (list!4112 (tokens!1521 thiss!10527))))))

(declare-fun size!8783 (Conc!3607) Int)

(assert (=> d!330018 (= lt!392504 (size!8783 (c!193933 (tokens!1521 thiss!10527))))))

(assert (=> d!330018 (= (size!8779 (tokens!1521 thiss!10527)) lt!392504)))

(declare-fun bs!282731 () Bool)

(assert (= bs!282731 d!330018))

(assert (=> bs!282731 m!1321163))

(assert (=> bs!282731 m!1321163))

(declare-fun m!1321211 () Bool)

(assert (=> bs!282731 m!1321211))

(declare-fun m!1321213 () Bool)

(assert (=> bs!282731 m!1321213))

(assert (=> b!1153832 d!330018))

(declare-fun d!330020 () Bool)

(declare-fun c!193942 () Bool)

(assert (=> d!330020 (= c!193942 (is-Node!3607 (c!193933 (tokens!1521 thiss!10527))))))

(declare-fun e!737756 () Bool)

(assert (=> d!330020 (= (inv!14632 (c!193933 (tokens!1521 thiss!10527))) e!737756)))

(declare-fun b!1153889 () Bool)

(declare-fun inv!14636 (Conc!3607) Bool)

(assert (=> b!1153889 (= e!737756 (inv!14636 (c!193933 (tokens!1521 thiss!10527))))))

(declare-fun b!1153890 () Bool)

(declare-fun e!737757 () Bool)

(assert (=> b!1153890 (= e!737756 e!737757)))

(declare-fun res!519070 () Bool)

(assert (=> b!1153890 (= res!519070 (not (is-Leaf!5579 (c!193933 (tokens!1521 thiss!10527)))))))

(assert (=> b!1153890 (=> res!519070 e!737757)))

(declare-fun b!1153891 () Bool)

(declare-fun inv!14637 (Conc!3607) Bool)

(assert (=> b!1153891 (= e!737757 (inv!14637 (c!193933 (tokens!1521 thiss!10527))))))

(assert (= (and d!330020 c!193942) b!1153889))

(assert (= (and d!330020 (not c!193942)) b!1153890))

(assert (= (and b!1153890 (not res!519070)) b!1153891))

(declare-fun m!1321215 () Bool)

(assert (=> b!1153889 m!1321215))

(declare-fun m!1321217 () Bool)

(assert (=> b!1153891 m!1321217))

(assert (=> b!1153833 d!330020))

(declare-fun d!330022 () Bool)

(declare-fun res!519086 () Bool)

(declare-fun e!737763 () Bool)

(assert (=> d!330022 (=> (not res!519086) (not e!737763))))

(assert (=> d!330022 (= res!519086 (not (isEmpty!6905 (rules!9385 thiss!10527))))))

(assert (=> d!330022 (= (inv!14631 thiss!10527) e!737763)))

(declare-fun b!1153907 () Bool)

(declare-fun res!519087 () Bool)

(assert (=> b!1153907 (=> (not res!519087) (not e!737763))))

(assert (=> b!1153907 (= res!519087 (rulesInvariant!1491 Lexer!1615 (rules!9385 thiss!10527)))))

(declare-fun b!1153908 () Bool)

(declare-fun res!519088 () Bool)

(assert (=> b!1153908 (=> (not res!519088) (not e!737763))))

(assert (=> b!1153908 (= res!519088 (rulesProduceEachTokenIndividually!656 Lexer!1615 (rules!9385 thiss!10527) (tokens!1521 thiss!10527)))))

(declare-fun b!1153909 () Bool)

(assert (=> b!1153909 (= e!737763 (separableTokens!81 Lexer!1615 (tokens!1521 thiss!10527) (rules!9385 thiss!10527)))))

(assert (= (and d!330022 res!519086) b!1153907))

(assert (= (and b!1153907 res!519087) b!1153908))

(assert (= (and b!1153908 res!519088) b!1153909))

(assert (=> d!330022 m!1321161))

(assert (=> b!1153907 m!1321169))

(assert (=> b!1153908 m!1321165))

(assert (=> b!1153909 m!1321209))

(assert (=> start!100468 d!330022))

(declare-fun d!330030 () Bool)

(assert (=> d!330030 (= (isEmpty!6905 (rules!9385 thiss!10527)) (is-Nil!11141 (rules!9385 thiss!10527)))))

(assert (=> b!1153829 d!330030))

(declare-fun d!330032 () Bool)

(declare-fun list!4114 (Conc!3607) List!11164)

(assert (=> d!330032 (= (list!4112 (tokens!1521 thiss!10527)) (list!4114 (c!193933 (tokens!1521 thiss!10527))))))

(declare-fun bs!282733 () Bool)

(assert (= bs!282733 d!330032))

(declare-fun m!1321223 () Bool)

(assert (=> bs!282733 m!1321223))

(assert (=> b!1153829 d!330032))

(declare-fun bs!282737 () Bool)

(declare-fun d!330034 () Bool)

(assert (= bs!282737 (and d!330034 b!1153829)))

(declare-fun lambda!46435 () Int)

(assert (=> bs!282737 (= lambda!46435 lambda!46422)))

(declare-fun b!1153942 () Bool)

(declare-fun e!737790 () Bool)

(assert (=> b!1153942 (= e!737790 true)))

(declare-fun b!1153941 () Bool)

(declare-fun e!737789 () Bool)

(assert (=> b!1153941 (= e!737789 e!737790)))

(declare-fun b!1153940 () Bool)

(declare-fun e!737788 () Bool)

(assert (=> b!1153940 (= e!737788 e!737789)))

(assert (=> d!330034 e!737788))

(assert (= b!1153941 b!1153942))

(assert (= b!1153940 b!1153941))

(assert (= (and d!330034 (is-Cons!11141 (rules!9385 thiss!10527))) b!1153940))

(declare-fun order!6803 () Int)

(declare-fun order!6801 () Int)

(declare-fun dynLambda!4921 (Int Int) Int)

(declare-fun dynLambda!4922 (Int Int) Int)

(assert (=> b!1153942 (< (dynLambda!4921 order!6801 (toValue!3023 (transformation!1922 (h!16542 (rules!9385 thiss!10527))))) (dynLambda!4922 order!6803 lambda!46435))))

(declare-fun order!6805 () Int)

(declare-fun dynLambda!4923 (Int Int) Int)

(assert (=> b!1153942 (< (dynLambda!4923 order!6805 (toChars!2882 (transformation!1922 (h!16542 (rules!9385 thiss!10527))))) (dynLambda!4922 order!6803 lambda!46435))))

(assert (=> d!330034 true))

(declare-fun e!737781 () Bool)

(assert (=> d!330034 e!737781))

(declare-fun res!519097 () Bool)

(assert (=> d!330034 (=> (not res!519097) (not e!737781))))

(declare-fun lt!392513 () Bool)

(declare-fun forall!2836 (List!11164 Int) Bool)

(assert (=> d!330034 (= res!519097 (= lt!392513 (forall!2836 (list!4112 (tokens!1521 thiss!10527)) lambda!46435)))))

(assert (=> d!330034 (= lt!392513 (forall!2834 (tokens!1521 thiss!10527) lambda!46435))))

(assert (=> d!330034 (not (isEmpty!6905 (rules!9385 thiss!10527)))))

(assert (=> d!330034 (= (rulesProduceEachTokenIndividually!656 Lexer!1615 (rules!9385 thiss!10527) (tokens!1521 thiss!10527)) lt!392513)))

(declare-fun b!1153931 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!486 (LexerInterface!1617 List!11165 List!11164) Bool)

(assert (=> b!1153931 (= e!737781 (= lt!392513 (rulesProduceEachTokenIndividuallyList!486 Lexer!1615 (rules!9385 thiss!10527) (list!4112 (tokens!1521 thiss!10527)))))))

(assert (= (and d!330034 res!519097) b!1153931))

(assert (=> d!330034 m!1321163))

(assert (=> d!330034 m!1321163))

(declare-fun m!1321241 () Bool)

(assert (=> d!330034 m!1321241))

(declare-fun m!1321243 () Bool)

(assert (=> d!330034 m!1321243))

(assert (=> d!330034 m!1321161))

(assert (=> b!1153931 m!1321163))

(assert (=> b!1153931 m!1321163))

(declare-fun m!1321245 () Bool)

(assert (=> b!1153931 m!1321245))

(assert (=> b!1153829 d!330034))

(declare-fun d!330044 () Bool)

(declare-fun lt!392516 () Bool)

(assert (=> d!330044 (= lt!392516 (forall!2836 (list!4112 (tokens!1521 thiss!10527)) lambda!46422))))

(declare-fun forall!2837 (Conc!3607 Int) Bool)

(assert (=> d!330044 (= lt!392516 (forall!2837 (c!193933 (tokens!1521 thiss!10527)) lambda!46422))))

(assert (=> d!330044 (= (forall!2834 (tokens!1521 thiss!10527) lambda!46422) lt!392516)))

(declare-fun bs!282738 () Bool)

(assert (= bs!282738 d!330044))

(assert (=> bs!282738 m!1321163))

(assert (=> bs!282738 m!1321163))

(declare-fun m!1321247 () Bool)

(assert (=> bs!282738 m!1321247))

(declare-fun m!1321249 () Bool)

(assert (=> bs!282738 m!1321249))

(assert (=> b!1153829 d!330044))

(declare-fun b!1153955 () Bool)

(declare-fun b_free!27621 () Bool)

(declare-fun b_next!28325 () Bool)

(assert (=> b!1153955 (= b_free!27621 (not b_next!28325))))

(declare-fun tp!332782 () Bool)

(declare-fun b_and!80497 () Bool)

(assert (=> b!1153955 (= tp!332782 b_and!80497)))

(declare-fun b_free!27623 () Bool)

(declare-fun b_next!28327 () Bool)

(assert (=> b!1153955 (= b_free!27623 (not b_next!28327))))

(declare-fun tp!332783 () Bool)

(declare-fun b_and!80499 () Bool)

(assert (=> b!1153955 (= tp!332783 b_and!80499)))

(declare-fun e!737800 () Bool)

(assert (=> b!1153955 (= e!737800 (and tp!332782 tp!332783))))

(declare-fun b!1153954 () Bool)

(declare-fun tp!332781 () Bool)

(declare-fun e!737802 () Bool)

(declare-fun inv!14627 (String!13530) Bool)

(declare-fun inv!14638 (TokenValueInjection!3676) Bool)

(assert (=> b!1153954 (= e!737802 (and tp!332781 (inv!14627 (tag!2184 (h!16542 (rules!9385 thiss!10527)))) (inv!14638 (transformation!1922 (h!16542 (rules!9385 thiss!10527)))) e!737800))))

(declare-fun b!1153953 () Bool)

(declare-fun e!737801 () Bool)

(declare-fun tp!332784 () Bool)

(assert (=> b!1153953 (= e!737801 (and e!737802 tp!332784))))

(assert (=> b!1153830 (= tp!332765 e!737801)))

(assert (= b!1153954 b!1153955))

(assert (= b!1153953 b!1153954))

(assert (= (and b!1153830 (is-Cons!11141 (rules!9385 thiss!10527))) b!1153953))

(declare-fun m!1321251 () Bool)

(assert (=> b!1153954 m!1321251))

(declare-fun m!1321253 () Bool)

(assert (=> b!1153954 m!1321253))

(declare-fun tp!332792 () Bool)

(declare-fun tp!332791 () Bool)

(declare-fun e!737807 () Bool)

(declare-fun b!1153964 () Bool)

(assert (=> b!1153964 (= e!737807 (and (inv!14632 (left!9696 (c!193933 (tokens!1521 thiss!10527)))) tp!332792 (inv!14632 (right!10026 (c!193933 (tokens!1521 thiss!10527)))) tp!332791))))

(declare-fun b!1153966 () Bool)

(declare-fun e!737808 () Bool)

(declare-fun tp!332793 () Bool)

(assert (=> b!1153966 (= e!737808 tp!332793)))

(declare-fun b!1153965 () Bool)

(declare-fun inv!14639 (IArray!7219) Bool)

(assert (=> b!1153965 (= e!737807 (and (inv!14639 (xs!6312 (c!193933 (tokens!1521 thiss!10527)))) e!737808))))

(assert (=> b!1153833 (= tp!332766 (and (inv!14632 (c!193933 (tokens!1521 thiss!10527))) e!737807))))

(assert (= (and b!1153833 (is-Node!3607 (c!193933 (tokens!1521 thiss!10527)))) b!1153964))

(assert (= b!1153965 b!1153966))

(assert (= (and b!1153833 (is-Leaf!5579 (c!193933 (tokens!1521 thiss!10527)))) b!1153965))

(declare-fun m!1321255 () Bool)

(assert (=> b!1153964 m!1321255))

(declare-fun m!1321257 () Bool)

(assert (=> b!1153964 m!1321257))

(declare-fun m!1321259 () Bool)

(assert (=> b!1153965 m!1321259))

(assert (=> b!1153833 m!1321157))

(declare-fun b!1153969 () Bool)

(declare-fun e!737811 () Bool)

(assert (=> b!1153969 (= e!737811 true)))

(declare-fun b!1153968 () Bool)

(declare-fun e!737810 () Bool)

(assert (=> b!1153968 (= e!737810 e!737811)))

(declare-fun b!1153967 () Bool)

(declare-fun e!737809 () Bool)

(assert (=> b!1153967 (= e!737809 e!737810)))

(assert (=> b!1153840 e!737809))

(assert (= b!1153968 b!1153969))

(assert (= b!1153967 b!1153968))

(assert (= (and b!1153840 (is-Cons!11141 (rules!9385 thiss!10527))) b!1153967))

(assert (=> b!1153969 (< (dynLambda!4921 order!6801 (toValue!3023 (transformation!1922 (h!16542 (rules!9385 thiss!10527))))) (dynLambda!4922 order!6803 lambda!46422))))

(assert (=> b!1153969 (< (dynLambda!4923 order!6805 (toChars!2882 (transformation!1922 (h!16542 (rules!9385 thiss!10527))))) (dynLambda!4922 order!6803 lambda!46422))))

(declare-fun b!1153978 () Bool)

(declare-fun e!737816 () Bool)

(assert (=> b!1153978 (= e!737816 true)))

(declare-fun b!1153980 () Bool)

(declare-fun e!737817 () Bool)

(assert (=> b!1153980 (= e!737817 true)))

(declare-fun b!1153979 () Bool)

(assert (=> b!1153979 (= e!737816 e!737817)))

(assert (=> b!1153841 e!737816))

(assert (= (and b!1153841 (is-Node!3607 (c!193933 (tokens!1521 thiss!10527)))) b!1153978))

(assert (= b!1153979 b!1153980))

(assert (= (and b!1153841 (is-Leaf!5579 (c!193933 (tokens!1521 thiss!10527)))) b!1153979))

(push 1)

(assert (not b!1153967))

(assert (not b!1153881))

(assert (not d!330006))

(assert (not d!330022))

(assert (not d!330044))

(assert (not b!1153908))

(assert (not d!330010))

(assert (not b!1153940))

(assert (not b!1153980))

(assert (not b!1153889))

(assert (not b!1153966))

(assert (not b!1153965))

(assert (not b_next!28327))

(assert (not b!1153964))

(assert (not b!1153954))

(assert (not b!1153882))

(assert (not b!1153833))

(assert (not d!330032))

(assert b_and!80497)

(assert (not b!1153909))

(assert (not d!330034))

(assert (not d!330018))

(assert b_and!80499)

(assert (not b!1153867))

(assert (not b!1153978))

(assert (not b_next!28325))

(assert (not d!330012))

(assert (not b!1153953))

(assert (not b!1153931))

(assert (not b!1153891))

(assert (not b!1153907))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80497)

(assert b_and!80499)

(assert (not b_next!28325))

(assert (not b_next!28327))

(check-sat)

(pop 1)

