; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!376514 () Bool)

(assert start!376514)

(declare-fun b!4001061 () Bool)

(declare-fun b_free!111193 () Bool)

(declare-fun b_next!111897 () Bool)

(assert (=> b!4001061 (= b_free!111193 (not b_next!111897))))

(declare-fun tp!1217611 () Bool)

(declare-fun b_and!307223 () Bool)

(assert (=> b!4001061 (= tp!1217611 b_and!307223)))

(declare-fun b_free!111195 () Bool)

(declare-fun b_next!111899 () Bool)

(assert (=> b!4001061 (= b_free!111195 (not b_next!111899))))

(declare-fun tp!1217613 () Bool)

(declare-fun b_and!307225 () Bool)

(assert (=> b!4001061 (= tp!1217613 b_and!307225)))

(declare-fun b!4001059 () Bool)

(declare-fun b_free!111197 () Bool)

(declare-fun b_next!111901 () Bool)

(assert (=> b!4001059 (= b_free!111197 (not b_next!111901))))

(declare-fun tp!1217608 () Bool)

(declare-fun b_and!307227 () Bool)

(assert (=> b!4001059 (= tp!1217608 b_and!307227)))

(declare-fun b_free!111199 () Bool)

(declare-fun b_next!111903 () Bool)

(assert (=> b!4001059 (= b_free!111199 (not b_next!111903))))

(declare-fun tp!1217605 () Bool)

(declare-fun b_and!307229 () Bool)

(assert (=> b!4001059 (= tp!1217605 b_and!307229)))

(declare-fun b!4001053 () Bool)

(declare-fun e!2480980 () Bool)

(declare-fun e!2480971 () Bool)

(declare-fun tp!1217614 () Bool)

(assert (=> b!4001053 (= e!2480980 (and e!2480971 tp!1217614))))

(declare-fun tp!1217612 () Bool)

(declare-fun b!4001054 () Bool)

(declare-datatypes ((C!23582 0))(
  ( (C!23583 (val!13885 Int)) )
))
(declare-datatypes ((List!42931 0))(
  ( (Nil!42807) (Cons!42807 (h!48227 C!23582) (t!332210 List!42931)) )
))
(declare-datatypes ((IArray!26013 0))(
  ( (IArray!26014 (innerList!13064 List!42931)) )
))
(declare-datatypes ((Conc!13004 0))(
  ( (Node!13004 (left!32315 Conc!13004) (right!32645 Conc!13004) (csize!26238 Int) (cheight!13215 Int)) (Leaf!20108 (xs!16310 IArray!26013) (csize!26239 Int)) (Empty!13004) )
))
(declare-datatypes ((BalanceConc!25602 0))(
  ( (BalanceConc!25603 (c!691983 Conc!13004)) )
))
(declare-datatypes ((List!42932 0))(
  ( (Nil!42808) (Cons!42808 (h!48228 (_ BitVec 16)) (t!332211 List!42932)) )
))
(declare-datatypes ((TokenValue!7023 0))(
  ( (FloatLiteralValue!14046 (text!49606 List!42932)) (TokenValueExt!7022 (__x!26263 Int)) (Broken!35115 (value!214210 List!42932)) (Object!7146) (End!7023) (Def!7023) (Underscore!7023) (Match!7023) (Else!7023) (Error!7023) (Case!7023) (If!7023) (Extends!7023) (Abstract!7023) (Class!7023) (Val!7023) (DelimiterValue!14046 (del!7083 List!42932)) (KeywordValue!7029 (value!214211 List!42932)) (CommentValue!14046 (value!214212 List!42932)) (WhitespaceValue!14046 (value!214213 List!42932)) (IndentationValue!7023 (value!214214 List!42932)) (String!48834) (Int32!7023) (Broken!35116 (value!214215 List!42932)) (Boolean!7024) (Unit!61796) (OperatorValue!7026 (op!7083 List!42932)) (IdentifierValue!14046 (value!214216 List!42932)) (IdentifierValue!14047 (value!214217 List!42932)) (WhitespaceValue!14047 (value!214218 List!42932)) (True!14046) (False!14046) (Broken!35117 (value!214219 List!42932)) (Broken!35118 (value!214220 List!42932)) (True!14047) (RightBrace!7023) (RightBracket!7023) (Colon!7023) (Null!7023) (Comma!7023) (LeftBracket!7023) (False!14047) (LeftBrace!7023) (ImaginaryLiteralValue!7023 (text!49607 List!42932)) (StringLiteralValue!21069 (value!214221 List!42932)) (EOFValue!7023 (value!214222 List!42932)) (IdentValue!7023 (value!214223 List!42932)) (DelimiterValue!14047 (value!214224 List!42932)) (DedentValue!7023 (value!214225 List!42932)) (NewLineValue!7023 (value!214226 List!42932)) (IntegerValue!21069 (value!214227 (_ BitVec 32)) (text!49608 List!42932)) (IntegerValue!21070 (value!214228 Int) (text!49609 List!42932)) (Times!7023) (Or!7023) (Equal!7023) (Minus!7023) (Broken!35119 (value!214229 List!42932)) (And!7023) (Div!7023) (LessEqual!7023) (Mod!7023) (Concat!18721) (Not!7023) (Plus!7023) (SpaceValue!7023 (value!214230 List!42932)) (IntegerValue!21071 (value!214231 Int) (text!49610 List!42932)) (StringLiteralValue!21070 (text!49611 List!42932)) (FloatLiteralValue!14047 (text!49612 List!42932)) (BytesLiteralValue!7023 (value!214232 List!42932)) (CommentValue!14047 (value!214233 List!42932)) (StringLiteralValue!21071 (value!214234 List!42932)) (ErrorTokenValue!7023 (msg!7084 List!42932)) )
))
(declare-datatypes ((Regex!11698 0))(
  ( (ElementMatch!11698 (c!691984 C!23582)) (Concat!18722 (regOne!23908 Regex!11698) (regTwo!23908 Regex!11698)) (EmptyExpr!11698) (Star!11698 (reg!12027 Regex!11698)) (EmptyLang!11698) (Union!11698 (regOne!23909 Regex!11698) (regTwo!23909 Regex!11698)) )
))
(declare-datatypes ((String!48835 0))(
  ( (String!48836 (value!214235 String)) )
))
(declare-datatypes ((TokenValueInjection!13474 0))(
  ( (TokenValueInjection!13475 (toValue!9281 Int) (toChars!9140 Int)) )
))
(declare-datatypes ((Rule!13386 0))(
  ( (Rule!13387 (regex!6793 Regex!11698) (tag!7653 String!48835) (isSeparator!6793 Bool) (transformation!6793 TokenValueInjection!13474)) )
))
(declare-datatypes ((Token!12724 0))(
  ( (Token!12725 (value!214236 TokenValue!7023) (rule!9825 Rule!13386) (size!32009 Int) (originalCharacters!7393 List!42931)) )
))
(declare-fun token!484 () Token!12724)

(declare-fun e!2480969 () Bool)

(declare-fun e!2480974 () Bool)

(declare-fun inv!21 (TokenValue!7023) Bool)

(assert (=> b!4001054 (= e!2480974 (and (inv!21 (value!214236 token!484)) e!2480969 tp!1217612))))

(declare-fun e!2480985 () Bool)

(declare-fun tp!1217604 () Bool)

(declare-datatypes ((List!42933 0))(
  ( (Nil!42809) (Cons!42809 (h!48229 Rule!13386) (t!332212 List!42933)) )
))
(declare-fun rules!2999 () List!42933)

(declare-fun b!4001055 () Bool)

(declare-fun inv!57165 (String!48835) Bool)

(declare-fun inv!57168 (TokenValueInjection!13474) Bool)

(assert (=> b!4001055 (= e!2480971 (and tp!1217604 (inv!57165 (tag!7653 (h!48229 rules!2999))) (inv!57168 (transformation!6793 (h!48229 rules!2999))) e!2480985))))

(declare-fun b!4001056 () Bool)

(declare-fun e!2480978 () Bool)

(declare-fun e!2480975 () Bool)

(assert (=> b!4001056 (= e!2480978 e!2480975)))

(declare-fun res!1625681 () Bool)

(assert (=> b!4001056 (=> (not res!1625681) (not e!2480975))))

(declare-fun prefix!494 () List!42931)

(declare-fun lt!1415100 () List!42931)

(declare-fun size!32010 (List!42931) Int)

(assert (=> b!4001056 (= res!1625681 (>= (size!32010 prefix!494) (size!32010 lt!1415100)))))

(declare-fun list!15897 (BalanceConc!25602) List!42931)

(declare-fun charsOf!4609 (Token!12724) BalanceConc!25602)

(assert (=> b!4001056 (= lt!1415100 (list!15897 (charsOf!4609 token!484)))))

(declare-fun b!4001057 () Bool)

(declare-fun e!2480981 () Bool)

(declare-fun tp_is_empty!20367 () Bool)

(declare-fun tp!1217603 () Bool)

(assert (=> b!4001057 (= e!2480981 (and tp_is_empty!20367 tp!1217603))))

(declare-fun lt!1415103 () List!42931)

(declare-fun suffixResult!105 () List!42931)

(declare-fun e!2480970 () Bool)

(declare-fun b!4001058 () Bool)

(declare-fun ++!11195 (List!42931 List!42931) List!42931)

(assert (=> b!4001058 (= e!2480970 (not (= (++!11195 lt!1415100 suffixResult!105) lt!1415103)))))

(declare-datatypes ((Unit!61797 0))(
  ( (Unit!61798) )
))
(declare-fun lt!1415101 () Unit!61797)

(declare-fun lemmaInv!1008 (TokenValueInjection!13474) Unit!61797)

(assert (=> b!4001058 (= lt!1415101 (lemmaInv!1008 (transformation!6793 (rule!9825 token!484))))))

(declare-datatypes ((LexerInterface!6382 0))(
  ( (LexerInterfaceExt!6379 (__x!26264 Int)) (Lexer!6380) )
))
(declare-fun thiss!21717 () LexerInterface!6382)

(declare-fun ruleValid!2725 (LexerInterface!6382 Rule!13386) Bool)

(assert (=> b!4001058 (ruleValid!2725 thiss!21717 (rule!9825 token!484))))

(declare-fun lt!1415102 () Unit!61797)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1799 (LexerInterface!6382 Rule!13386 List!42933) Unit!61797)

(assert (=> b!4001058 (= lt!1415102 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1799 thiss!21717 (rule!9825 token!484) rules!2999))))

(declare-fun b!4001060 () Bool)

(assert (=> b!4001060 (= e!2480975 e!2480970)))

(declare-fun res!1625676 () Bool)

(assert (=> b!4001060 (=> (not res!1625676) (not e!2480970))))

(declare-datatypes ((tuple2!41984 0))(
  ( (tuple2!41985 (_1!24126 Token!12724) (_2!24126 List!42931)) )
))
(declare-datatypes ((Option!9207 0))(
  ( (None!9206) (Some!9206 (v!39566 tuple2!41984)) )
))
(declare-fun maxPrefix!3680 (LexerInterface!6382 List!42933 List!42931) Option!9207)

(assert (=> b!4001060 (= res!1625676 (= (maxPrefix!3680 thiss!21717 rules!2999 lt!1415103) (Some!9206 (tuple2!41985 token!484 suffixResult!105))))))

(declare-fun suffix!1299 () List!42931)

(assert (=> b!4001060 (= lt!1415103 (++!11195 prefix!494 suffix!1299))))

(assert (=> b!4001061 (= e!2480985 (and tp!1217611 tp!1217613))))

(declare-fun b!4001062 () Bool)

(declare-fun e!2480979 () Bool)

(declare-fun tp!1217607 () Bool)

(assert (=> b!4001062 (= e!2480979 (and tp_is_empty!20367 tp!1217607))))

(declare-fun b!4001063 () Bool)

(declare-fun e!2480972 () Bool)

(declare-fun tp!1217609 () Bool)

(assert (=> b!4001063 (= e!2480972 (and tp_is_empty!20367 tp!1217609))))

(declare-fun b!4001064 () Bool)

(declare-fun res!1625675 () Bool)

(assert (=> b!4001064 (=> (not res!1625675) (not e!2480975))))

(declare-fun newSuffix!27 () List!42931)

(declare-fun newSuffixResult!27 () List!42931)

(assert (=> b!4001064 (= res!1625675 (= (++!11195 lt!1415100 newSuffixResult!27) (++!11195 prefix!494 newSuffix!27)))))

(declare-fun b!4001065 () Bool)

(declare-fun res!1625680 () Bool)

(assert (=> b!4001065 (=> (not res!1625680) (not e!2480978))))

(assert (=> b!4001065 (= res!1625680 (>= (size!32010 suffix!1299) (size!32010 newSuffix!27)))))

(declare-fun e!2480982 () Bool)

(assert (=> b!4001059 (= e!2480982 (and tp!1217608 tp!1217605))))

(declare-fun res!1625679 () Bool)

(assert (=> start!376514 (=> (not res!1625679) (not e!2480978))))

(assert (=> start!376514 (= res!1625679 (is-Lexer!6380 thiss!21717))))

(assert (=> start!376514 e!2480978))

(assert (=> start!376514 e!2480972))

(declare-fun inv!57169 (Token!12724) Bool)

(assert (=> start!376514 (and (inv!57169 token!484) e!2480974)))

(declare-fun e!2480977 () Bool)

(assert (=> start!376514 e!2480977))

(declare-fun e!2480973 () Bool)

(assert (=> start!376514 e!2480973))

(assert (=> start!376514 e!2480979))

(assert (=> start!376514 true))

(assert (=> start!376514 e!2480980))

(assert (=> start!376514 e!2480981))

(declare-fun b!4001066 () Bool)

(declare-fun res!1625682 () Bool)

(assert (=> b!4001066 (=> (not res!1625682) (not e!2480978))))

(declare-fun isEmpty!25581 (List!42933) Bool)

(assert (=> b!4001066 (= res!1625682 (not (isEmpty!25581 rules!2999)))))

(declare-fun b!4001067 () Bool)

(declare-fun res!1625678 () Bool)

(assert (=> b!4001067 (=> (not res!1625678) (not e!2480978))))

(declare-fun rulesInvariant!5725 (LexerInterface!6382 List!42933) Bool)

(assert (=> b!4001067 (= res!1625678 (rulesInvariant!5725 thiss!21717 rules!2999))))

(declare-fun b!4001068 () Bool)

(declare-fun res!1625677 () Bool)

(assert (=> b!4001068 (=> (not res!1625677) (not e!2480978))))

(declare-fun isPrefix!3880 (List!42931 List!42931) Bool)

(assert (=> b!4001068 (= res!1625677 (isPrefix!3880 newSuffix!27 suffix!1299))))

(declare-fun b!4001069 () Bool)

(declare-fun tp!1217606 () Bool)

(assert (=> b!4001069 (= e!2480977 (and tp_is_empty!20367 tp!1217606))))

(declare-fun b!4001070 () Bool)

(declare-fun tp!1217610 () Bool)

(assert (=> b!4001070 (= e!2480969 (and tp!1217610 (inv!57165 (tag!7653 (rule!9825 token!484))) (inv!57168 (transformation!6793 (rule!9825 token!484))) e!2480982))))

(declare-fun b!4001071 () Bool)

(declare-fun tp!1217615 () Bool)

(assert (=> b!4001071 (= e!2480973 (and tp_is_empty!20367 tp!1217615))))

(assert (= (and start!376514 res!1625679) b!4001066))

(assert (= (and b!4001066 res!1625682) b!4001067))

(assert (= (and b!4001067 res!1625678) b!4001065))

(assert (= (and b!4001065 res!1625680) b!4001068))

(assert (= (and b!4001068 res!1625677) b!4001056))

(assert (= (and b!4001056 res!1625681) b!4001064))

(assert (= (and b!4001064 res!1625675) b!4001060))

(assert (= (and b!4001060 res!1625676) b!4001058))

(assert (= (and start!376514 (is-Cons!42807 prefix!494)) b!4001063))

(assert (= b!4001070 b!4001059))

(assert (= b!4001054 b!4001070))

(assert (= start!376514 b!4001054))

(assert (= (and start!376514 (is-Cons!42807 suffixResult!105)) b!4001069))

(assert (= (and start!376514 (is-Cons!42807 suffix!1299)) b!4001071))

(assert (= (and start!376514 (is-Cons!42807 newSuffix!27)) b!4001062))

(assert (= b!4001055 b!4001061))

(assert (= b!4001053 b!4001055))

(assert (= (and start!376514 (is-Cons!42809 rules!2999)) b!4001053))

(assert (= (and start!376514 (is-Cons!42807 newSuffixResult!27)) b!4001057))

(declare-fun m!4583537 () Bool)

(assert (=> b!4001064 m!4583537))

(declare-fun m!4583539 () Bool)

(assert (=> b!4001064 m!4583539))

(declare-fun m!4583541 () Bool)

(assert (=> b!4001058 m!4583541))

(declare-fun m!4583543 () Bool)

(assert (=> b!4001058 m!4583543))

(declare-fun m!4583545 () Bool)

(assert (=> b!4001058 m!4583545))

(declare-fun m!4583547 () Bool)

(assert (=> b!4001058 m!4583547))

(declare-fun m!4583549 () Bool)

(assert (=> b!4001065 m!4583549))

(declare-fun m!4583551 () Bool)

(assert (=> b!4001065 m!4583551))

(declare-fun m!4583553 () Bool)

(assert (=> b!4001060 m!4583553))

(declare-fun m!4583555 () Bool)

(assert (=> b!4001060 m!4583555))

(declare-fun m!4583557 () Bool)

(assert (=> b!4001055 m!4583557))

(declare-fun m!4583559 () Bool)

(assert (=> b!4001055 m!4583559))

(declare-fun m!4583561 () Bool)

(assert (=> b!4001068 m!4583561))

(declare-fun m!4583563 () Bool)

(assert (=> b!4001070 m!4583563))

(declare-fun m!4583565 () Bool)

(assert (=> b!4001070 m!4583565))

(declare-fun m!4583567 () Bool)

(assert (=> b!4001067 m!4583567))

(declare-fun m!4583569 () Bool)

(assert (=> b!4001066 m!4583569))

(declare-fun m!4583571 () Bool)

(assert (=> b!4001054 m!4583571))

(declare-fun m!4583573 () Bool)

(assert (=> b!4001056 m!4583573))

(declare-fun m!4583575 () Bool)

(assert (=> b!4001056 m!4583575))

(declare-fun m!4583577 () Bool)

(assert (=> b!4001056 m!4583577))

(assert (=> b!4001056 m!4583577))

(declare-fun m!4583579 () Bool)

(assert (=> b!4001056 m!4583579))

(declare-fun m!4583581 () Bool)

(assert (=> start!376514 m!4583581))

(push 1)

(assert (not b!4001068))

(assert (not b!4001060))

(assert b_and!307223)

(assert b_and!307227)

(assert (not b!4001057))

(assert (not b_next!111903))

(assert tp_is_empty!20367)

(assert (not b!4001054))

(assert (not b!4001055))

(assert (not b!4001070))

(assert (not b!4001062))

(assert (not b!4001064))

(assert b_and!307225)

(assert (not b_next!111897))

(assert (not start!376514))

(assert (not b!4001063))

(assert (not b!4001067))

(assert (not b!4001071))

(assert (not b!4001056))

(assert (not b!4001065))

(assert (not b!4001066))

(assert (not b!4001058))

(assert (not b!4001053))

(assert b_and!307229)

(assert (not b!4001069))

(assert (not b_next!111899))

(assert (not b_next!111901))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!111897))

(assert b_and!307223)

(assert b_and!307227)

(assert (not b_next!111903))

(assert b_and!307229)

(assert b_and!307225)

(assert (not b_next!111899))

(assert (not b_next!111901))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4001146 () Bool)

(declare-fun e!2481047 () List!42931)

(assert (=> b!4001146 (= e!2481047 (Cons!42807 (h!48227 lt!1415100) (++!11195 (t!332210 lt!1415100) suffixResult!105)))))

(declare-fun d!1183546 () Bool)

(declare-fun e!2481048 () Bool)

(assert (=> d!1183546 e!2481048))

(declare-fun res!1625723 () Bool)

(assert (=> d!1183546 (=> (not res!1625723) (not e!2481048))))

(declare-fun lt!1415120 () List!42931)

(declare-fun content!6490 (List!42931) (Set C!23582))

(assert (=> d!1183546 (= res!1625723 (= (content!6490 lt!1415120) (set.union (content!6490 lt!1415100) (content!6490 suffixResult!105))))))

(assert (=> d!1183546 (= lt!1415120 e!2481047)))

(declare-fun c!691990 () Bool)

(assert (=> d!1183546 (= c!691990 (is-Nil!42807 lt!1415100))))

(assert (=> d!1183546 (= (++!11195 lt!1415100 suffixResult!105) lt!1415120)))

(declare-fun b!4001147 () Bool)

(declare-fun res!1625724 () Bool)

(assert (=> b!4001147 (=> (not res!1625724) (not e!2481048))))

(assert (=> b!4001147 (= res!1625724 (= (size!32010 lt!1415120) (+ (size!32010 lt!1415100) (size!32010 suffixResult!105))))))

(declare-fun b!4001148 () Bool)

(assert (=> b!4001148 (= e!2481048 (or (not (= suffixResult!105 Nil!42807)) (= lt!1415120 lt!1415100)))))

(declare-fun b!4001145 () Bool)

(assert (=> b!4001145 (= e!2481047 suffixResult!105)))

(assert (= (and d!1183546 c!691990) b!4001145))

(assert (= (and d!1183546 (not c!691990)) b!4001146))

(assert (= (and d!1183546 res!1625723) b!4001147))

(assert (= (and b!4001147 res!1625724) b!4001148))

(declare-fun m!4583629 () Bool)

(assert (=> b!4001146 m!4583629))

(declare-fun m!4583631 () Bool)

(assert (=> d!1183546 m!4583631))

(declare-fun m!4583633 () Bool)

(assert (=> d!1183546 m!4583633))

(declare-fun m!4583635 () Bool)

(assert (=> d!1183546 m!4583635))

(declare-fun m!4583637 () Bool)

(assert (=> b!4001147 m!4583637))

(assert (=> b!4001147 m!4583575))

(declare-fun m!4583639 () Bool)

(assert (=> b!4001147 m!4583639))

(assert (=> b!4001058 d!1183546))

(declare-fun d!1183548 () Bool)

(declare-fun e!2481054 () Bool)

(assert (=> d!1183548 e!2481054))

(declare-fun res!1625731 () Bool)

(assert (=> d!1183548 (=> (not res!1625731) (not e!2481054))))

(declare-fun semiInverseModEq!2910 (Int Int) Bool)

(assert (=> d!1183548 (= res!1625731 (semiInverseModEq!2910 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (toValue!9281 (transformation!6793 (rule!9825 token!484)))))))

(declare-fun Unit!61802 () Unit!61797)

(assert (=> d!1183548 (= (lemmaInv!1008 (transformation!6793 (rule!9825 token!484))) Unit!61802)))

(declare-fun b!4001155 () Bool)

(declare-fun equivClasses!2809 (Int Int) Bool)

(assert (=> b!4001155 (= e!2481054 (equivClasses!2809 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (toValue!9281 (transformation!6793 (rule!9825 token!484)))))))

(assert (= (and d!1183548 res!1625731) b!4001155))

(declare-fun m!4583651 () Bool)

(assert (=> d!1183548 m!4583651))

(declare-fun m!4583653 () Bool)

(assert (=> b!4001155 m!4583653))

(assert (=> b!4001058 d!1183548))

(declare-fun d!1183552 () Bool)

(declare-fun res!1625740 () Bool)

(declare-fun e!2481061 () Bool)

(assert (=> d!1183552 (=> (not res!1625740) (not e!2481061))))

(declare-fun validRegex!5303 (Regex!11698) Bool)

(assert (=> d!1183552 (= res!1625740 (validRegex!5303 (regex!6793 (rule!9825 token!484))))))

(assert (=> d!1183552 (= (ruleValid!2725 thiss!21717 (rule!9825 token!484)) e!2481061)))

(declare-fun b!4001168 () Bool)

(declare-fun res!1625741 () Bool)

(assert (=> b!4001168 (=> (not res!1625741) (not e!2481061))))

(declare-fun nullable!4103 (Regex!11698) Bool)

(assert (=> b!4001168 (= res!1625741 (not (nullable!4103 (regex!6793 (rule!9825 token!484)))))))

(declare-fun b!4001169 () Bool)

(assert (=> b!4001169 (= e!2481061 (not (= (tag!7653 (rule!9825 token!484)) (String!48836 ""))))))

(assert (= (and d!1183552 res!1625740) b!4001168))

(assert (= (and b!4001168 res!1625741) b!4001169))

(declare-fun m!4583655 () Bool)

(assert (=> d!1183552 m!4583655))

(declare-fun m!4583657 () Bool)

(assert (=> b!4001168 m!4583657))

(assert (=> b!4001058 d!1183552))

(declare-fun d!1183554 () Bool)

(assert (=> d!1183554 (ruleValid!2725 thiss!21717 (rule!9825 token!484))))

(declare-fun lt!1415127 () Unit!61797)

(declare-fun choose!24142 (LexerInterface!6382 Rule!13386 List!42933) Unit!61797)

(assert (=> d!1183554 (= lt!1415127 (choose!24142 thiss!21717 (rule!9825 token!484) rules!2999))))

(declare-fun contains!8514 (List!42933 Rule!13386) Bool)

(assert (=> d!1183554 (contains!8514 rules!2999 (rule!9825 token!484))))

(assert (=> d!1183554 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1799 thiss!21717 (rule!9825 token!484) rules!2999) lt!1415127)))

(declare-fun bs!588845 () Bool)

(assert (= bs!588845 d!1183554))

(assert (=> bs!588845 m!4583545))

(declare-fun m!4583671 () Bool)

(assert (=> bs!588845 m!4583671))

(declare-fun m!4583673 () Bool)

(assert (=> bs!588845 m!4583673))

(assert (=> b!4001058 d!1183554))

(declare-fun d!1183558 () Bool)

(assert (=> d!1183558 (= (inv!57165 (tag!7653 (rule!9825 token!484))) (= (mod (str.len (value!214235 (tag!7653 (rule!9825 token!484)))) 2) 0))))

(assert (=> b!4001070 d!1183558))

(declare-fun d!1183560 () Bool)

(declare-fun res!1625749 () Bool)

(declare-fun e!2481069 () Bool)

(assert (=> d!1183560 (=> (not res!1625749) (not e!2481069))))

(assert (=> d!1183560 (= res!1625749 (semiInverseModEq!2910 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (toValue!9281 (transformation!6793 (rule!9825 token!484)))))))

(assert (=> d!1183560 (= (inv!57168 (transformation!6793 (rule!9825 token!484))) e!2481069)))

(declare-fun b!4001179 () Bool)

(assert (=> b!4001179 (= e!2481069 (equivClasses!2809 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (toValue!9281 (transformation!6793 (rule!9825 token!484)))))))

(assert (= (and d!1183560 res!1625749) b!4001179))

(assert (=> d!1183560 m!4583651))

(assert (=> b!4001179 m!4583653))

(assert (=> b!4001070 d!1183560))

(declare-fun b!4001207 () Bool)

(declare-fun res!1625778 () Bool)

(declare-fun e!2481083 () Bool)

(assert (=> b!4001207 (=> (not res!1625778) (not e!2481083))))

(declare-fun lt!1415142 () Option!9207)

(declare-fun get!14076 (Option!9207) tuple2!41984)

(assert (=> b!4001207 (= res!1625778 (= (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142)))) (originalCharacters!7393 (_1!24126 (get!14076 lt!1415142)))))))

(declare-fun b!4001208 () Bool)

(declare-fun e!2481082 () Bool)

(assert (=> b!4001208 (= e!2481082 e!2481083)))

(declare-fun res!1625775 () Bool)

(assert (=> b!4001208 (=> (not res!1625775) (not e!2481083))))

(declare-fun isDefined!7055 (Option!9207) Bool)

(assert (=> b!4001208 (= res!1625775 (isDefined!7055 lt!1415142))))

(declare-fun b!4001209 () Bool)

(declare-fun res!1625774 () Bool)

(assert (=> b!4001209 (=> (not res!1625774) (not e!2481083))))

(declare-fun matchR!5675 (Regex!11698 List!42931) Bool)

(assert (=> b!4001209 (= res!1625774 (matchR!5675 (regex!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))) (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))))))

(declare-fun b!4001210 () Bool)

(declare-fun e!2481084 () Option!9207)

(declare-fun lt!1415144 () Option!9207)

(declare-fun lt!1415143 () Option!9207)

(assert (=> b!4001210 (= e!2481084 (ite (and (is-None!9206 lt!1415144) (is-None!9206 lt!1415143)) None!9206 (ite (is-None!9206 lt!1415143) lt!1415144 (ite (is-None!9206 lt!1415144) lt!1415143 (ite (>= (size!32009 (_1!24126 (v!39566 lt!1415144))) (size!32009 (_1!24126 (v!39566 lt!1415143)))) lt!1415144 lt!1415143)))))))

(declare-fun call!285981 () Option!9207)

(assert (=> b!4001210 (= lt!1415144 call!285981)))

(assert (=> b!4001210 (= lt!1415143 (maxPrefix!3680 thiss!21717 (t!332212 rules!2999) lt!1415103))))

(declare-fun d!1183564 () Bool)

(assert (=> d!1183564 e!2481082))

(declare-fun res!1625779 () Bool)

(assert (=> d!1183564 (=> res!1625779 e!2481082)))

(declare-fun isEmpty!25583 (Option!9207) Bool)

(assert (=> d!1183564 (= res!1625779 (isEmpty!25583 lt!1415142))))

(assert (=> d!1183564 (= lt!1415142 e!2481084)))

(declare-fun c!691996 () Bool)

(assert (=> d!1183564 (= c!691996 (and (is-Cons!42809 rules!2999) (is-Nil!42809 (t!332212 rules!2999))))))

(declare-fun lt!1415141 () Unit!61797)

(declare-fun lt!1415145 () Unit!61797)

(assert (=> d!1183564 (= lt!1415141 lt!1415145)))

(assert (=> d!1183564 (isPrefix!3880 lt!1415103 lt!1415103)))

(declare-fun lemmaIsPrefixRefl!2472 (List!42931 List!42931) Unit!61797)

(assert (=> d!1183564 (= lt!1415145 (lemmaIsPrefixRefl!2472 lt!1415103 lt!1415103))))

(declare-fun rulesValidInductive!2476 (LexerInterface!6382 List!42933) Bool)

(assert (=> d!1183564 (rulesValidInductive!2476 thiss!21717 rules!2999)))

(assert (=> d!1183564 (= (maxPrefix!3680 thiss!21717 rules!2999 lt!1415103) lt!1415142)))

(declare-fun bm!285976 () Bool)

(declare-fun maxPrefixOneRule!2714 (LexerInterface!6382 Rule!13386 List!42931) Option!9207)

(assert (=> bm!285976 (= call!285981 (maxPrefixOneRule!2714 thiss!21717 (h!48229 rules!2999) lt!1415103))))

(declare-fun b!4001211 () Bool)

(declare-fun res!1625773 () Bool)

(assert (=> b!4001211 (=> (not res!1625773) (not e!2481083))))

(declare-fun apply!10004 (TokenValueInjection!13474 BalanceConc!25602) TokenValue!7023)

(declare-fun seqFromList!5032 (List!42931) BalanceConc!25602)

(assert (=> b!4001211 (= res!1625773 (= (value!214236 (_1!24126 (get!14076 lt!1415142))) (apply!10004 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))) (seqFromList!5032 (originalCharacters!7393 (_1!24126 (get!14076 lt!1415142)))))))))

(declare-fun b!4001212 () Bool)

(declare-fun res!1625776 () Bool)

(assert (=> b!4001212 (=> (not res!1625776) (not e!2481083))))

(assert (=> b!4001212 (= res!1625776 (< (size!32010 (_2!24126 (get!14076 lt!1415142))) (size!32010 lt!1415103)))))

(declare-fun b!4001213 () Bool)

(declare-fun res!1625777 () Bool)

(assert (=> b!4001213 (=> (not res!1625777) (not e!2481083))))

(assert (=> b!4001213 (= res!1625777 (= (++!11195 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142)))) (_2!24126 (get!14076 lt!1415142))) lt!1415103))))

(declare-fun b!4001214 () Bool)

(assert (=> b!4001214 (= e!2481083 (contains!8514 rules!2999 (rule!9825 (_1!24126 (get!14076 lt!1415142)))))))

(declare-fun b!4001215 () Bool)

(assert (=> b!4001215 (= e!2481084 call!285981)))

(assert (= (and d!1183564 c!691996) b!4001215))

(assert (= (and d!1183564 (not c!691996)) b!4001210))

(assert (= (or b!4001215 b!4001210) bm!285976))

(assert (= (and d!1183564 (not res!1625779)) b!4001208))

(assert (= (and b!4001208 res!1625775) b!4001207))

(assert (= (and b!4001207 res!1625778) b!4001212))

(assert (= (and b!4001212 res!1625776) b!4001213))

(assert (= (and b!4001213 res!1625777) b!4001211))

(assert (= (and b!4001211 res!1625773) b!4001209))

(assert (= (and b!4001209 res!1625774) b!4001214))

(declare-fun m!4583691 () Bool)

(assert (=> b!4001214 m!4583691))

(declare-fun m!4583693 () Bool)

(assert (=> b!4001214 m!4583693))

(assert (=> b!4001212 m!4583691))

(declare-fun m!4583695 () Bool)

(assert (=> b!4001212 m!4583695))

(declare-fun m!4583697 () Bool)

(assert (=> b!4001212 m!4583697))

(declare-fun m!4583699 () Bool)

(assert (=> b!4001210 m!4583699))

(assert (=> b!4001211 m!4583691))

(declare-fun m!4583701 () Bool)

(assert (=> b!4001211 m!4583701))

(assert (=> b!4001211 m!4583701))

(declare-fun m!4583703 () Bool)

(assert (=> b!4001211 m!4583703))

(declare-fun m!4583705 () Bool)

(assert (=> d!1183564 m!4583705))

(declare-fun m!4583707 () Bool)

(assert (=> d!1183564 m!4583707))

(declare-fun m!4583709 () Bool)

(assert (=> d!1183564 m!4583709))

(declare-fun m!4583711 () Bool)

(assert (=> d!1183564 m!4583711))

(assert (=> b!4001209 m!4583691))

(declare-fun m!4583713 () Bool)

(assert (=> b!4001209 m!4583713))

(assert (=> b!4001209 m!4583713))

(declare-fun m!4583715 () Bool)

(assert (=> b!4001209 m!4583715))

(assert (=> b!4001209 m!4583715))

(declare-fun m!4583717 () Bool)

(assert (=> b!4001209 m!4583717))

(declare-fun m!4583719 () Bool)

(assert (=> b!4001208 m!4583719))

(assert (=> b!4001213 m!4583691))

(assert (=> b!4001213 m!4583713))

(assert (=> b!4001213 m!4583713))

(assert (=> b!4001213 m!4583715))

(assert (=> b!4001213 m!4583715))

(declare-fun m!4583721 () Bool)

(assert (=> b!4001213 m!4583721))

(assert (=> b!4001207 m!4583691))

(assert (=> b!4001207 m!4583713))

(assert (=> b!4001207 m!4583713))

(assert (=> b!4001207 m!4583715))

(declare-fun m!4583723 () Bool)

(assert (=> bm!285976 m!4583723))

(assert (=> b!4001060 d!1183564))

(declare-fun b!4001217 () Bool)

(declare-fun e!2481085 () List!42931)

(assert (=> b!4001217 (= e!2481085 (Cons!42807 (h!48227 prefix!494) (++!11195 (t!332210 prefix!494) suffix!1299)))))

(declare-fun d!1183574 () Bool)

(declare-fun e!2481086 () Bool)

(assert (=> d!1183574 e!2481086))

(declare-fun res!1625780 () Bool)

(assert (=> d!1183574 (=> (not res!1625780) (not e!2481086))))

(declare-fun lt!1415146 () List!42931)

(assert (=> d!1183574 (= res!1625780 (= (content!6490 lt!1415146) (set.union (content!6490 prefix!494) (content!6490 suffix!1299))))))

(assert (=> d!1183574 (= lt!1415146 e!2481085)))

(declare-fun c!691997 () Bool)

(assert (=> d!1183574 (= c!691997 (is-Nil!42807 prefix!494))))

(assert (=> d!1183574 (= (++!11195 prefix!494 suffix!1299) lt!1415146)))

(declare-fun b!4001218 () Bool)

(declare-fun res!1625781 () Bool)

(assert (=> b!4001218 (=> (not res!1625781) (not e!2481086))))

(assert (=> b!4001218 (= res!1625781 (= (size!32010 lt!1415146) (+ (size!32010 prefix!494) (size!32010 suffix!1299))))))

(declare-fun b!4001219 () Bool)

(assert (=> b!4001219 (= e!2481086 (or (not (= suffix!1299 Nil!42807)) (= lt!1415146 prefix!494)))))

(declare-fun b!4001216 () Bool)

(assert (=> b!4001216 (= e!2481085 suffix!1299)))

(assert (= (and d!1183574 c!691997) b!4001216))

(assert (= (and d!1183574 (not c!691997)) b!4001217))

(assert (= (and d!1183574 res!1625780) b!4001218))

(assert (= (and b!4001218 res!1625781) b!4001219))

(declare-fun m!4583725 () Bool)

(assert (=> b!4001217 m!4583725))

(declare-fun m!4583727 () Bool)

(assert (=> d!1183574 m!4583727))

(declare-fun m!4583729 () Bool)

(assert (=> d!1183574 m!4583729))

(declare-fun m!4583731 () Bool)

(assert (=> d!1183574 m!4583731))

(declare-fun m!4583733 () Bool)

(assert (=> b!4001218 m!4583733))

(assert (=> b!4001218 m!4583573))

(assert (=> b!4001218 m!4583549))

(assert (=> b!4001060 d!1183574))

(declare-fun d!1183576 () Bool)

(assert (=> d!1183576 (= (isEmpty!25581 rules!2999) (is-Nil!42809 rules!2999))))

(assert (=> b!4001066 d!1183576))

(declare-fun d!1183578 () Bool)

(assert (=> d!1183578 (= (inv!57165 (tag!7653 (h!48229 rules!2999))) (= (mod (str.len (value!214235 (tag!7653 (h!48229 rules!2999)))) 2) 0))))

(assert (=> b!4001055 d!1183578))

(declare-fun d!1183580 () Bool)

(declare-fun res!1625782 () Bool)

(declare-fun e!2481087 () Bool)

(assert (=> d!1183580 (=> (not res!1625782) (not e!2481087))))

(assert (=> d!1183580 (= res!1625782 (semiInverseModEq!2910 (toChars!9140 (transformation!6793 (h!48229 rules!2999))) (toValue!9281 (transformation!6793 (h!48229 rules!2999)))))))

(assert (=> d!1183580 (= (inv!57168 (transformation!6793 (h!48229 rules!2999))) e!2481087)))

(declare-fun b!4001220 () Bool)

(assert (=> b!4001220 (= e!2481087 (equivClasses!2809 (toChars!9140 (transformation!6793 (h!48229 rules!2999))) (toValue!9281 (transformation!6793 (h!48229 rules!2999)))))))

(assert (= (and d!1183580 res!1625782) b!4001220))

(declare-fun m!4583735 () Bool)

(assert (=> d!1183580 m!4583735))

(declare-fun m!4583737 () Bool)

(assert (=> b!4001220 m!4583737))

(assert (=> b!4001055 d!1183580))

(declare-fun d!1183582 () Bool)

(declare-fun lt!1415149 () Int)

(assert (=> d!1183582 (>= lt!1415149 0)))

(declare-fun e!2481090 () Int)

(assert (=> d!1183582 (= lt!1415149 e!2481090)))

(declare-fun c!692000 () Bool)

(assert (=> d!1183582 (= c!692000 (is-Nil!42807 prefix!494))))

(assert (=> d!1183582 (= (size!32010 prefix!494) lt!1415149)))

(declare-fun b!4001225 () Bool)

(assert (=> b!4001225 (= e!2481090 0)))

(declare-fun b!4001226 () Bool)

(assert (=> b!4001226 (= e!2481090 (+ 1 (size!32010 (t!332210 prefix!494))))))

(assert (= (and d!1183582 c!692000) b!4001225))

(assert (= (and d!1183582 (not c!692000)) b!4001226))

(declare-fun m!4583739 () Bool)

(assert (=> b!4001226 m!4583739))

(assert (=> b!4001056 d!1183582))

(declare-fun d!1183584 () Bool)

(declare-fun lt!1415150 () Int)

(assert (=> d!1183584 (>= lt!1415150 0)))

(declare-fun e!2481091 () Int)

(assert (=> d!1183584 (= lt!1415150 e!2481091)))

(declare-fun c!692001 () Bool)

(assert (=> d!1183584 (= c!692001 (is-Nil!42807 lt!1415100))))

(assert (=> d!1183584 (= (size!32010 lt!1415100) lt!1415150)))

(declare-fun b!4001227 () Bool)

(assert (=> b!4001227 (= e!2481091 0)))

(declare-fun b!4001228 () Bool)

(assert (=> b!4001228 (= e!2481091 (+ 1 (size!32010 (t!332210 lt!1415100))))))

(assert (= (and d!1183584 c!692001) b!4001227))

(assert (= (and d!1183584 (not c!692001)) b!4001228))

(declare-fun m!4583741 () Bool)

(assert (=> b!4001228 m!4583741))

(assert (=> b!4001056 d!1183584))

(declare-fun d!1183586 () Bool)

(declare-fun list!15899 (Conc!13004) List!42931)

(assert (=> d!1183586 (= (list!15897 (charsOf!4609 token!484)) (list!15899 (c!691983 (charsOf!4609 token!484))))))

(declare-fun bs!588847 () Bool)

(assert (= bs!588847 d!1183586))

(declare-fun m!4583743 () Bool)

(assert (=> bs!588847 m!4583743))

(assert (=> b!4001056 d!1183586))

(declare-fun d!1183588 () Bool)

(declare-fun lt!1415153 () BalanceConc!25602)

(assert (=> d!1183588 (= (list!15897 lt!1415153) (originalCharacters!7393 token!484))))

(declare-fun dynLambda!18157 (Int TokenValue!7023) BalanceConc!25602)

(assert (=> d!1183588 (= lt!1415153 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484)))))

(assert (=> d!1183588 (= (charsOf!4609 token!484) lt!1415153)))

(declare-fun b_lambda!116719 () Bool)

(assert (=> (not b_lambda!116719) (not d!1183588)))

(declare-fun t!332217 () Bool)

(declare-fun tb!240541 () Bool)

(assert (=> (and b!4001061 (= (toChars!9140 (transformation!6793 (h!48229 rules!2999))) (toChars!9140 (transformation!6793 (rule!9825 token!484)))) t!332217) tb!240541))

(declare-fun b!4001233 () Bool)

(declare-fun e!2481094 () Bool)

(declare-fun tp!1217657 () Bool)

(declare-fun inv!57172 (Conc!13004) Bool)

(assert (=> b!4001233 (= e!2481094 (and (inv!57172 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484)))) tp!1217657))))

(declare-fun result!291522 () Bool)

(declare-fun inv!57173 (BalanceConc!25602) Bool)

(assert (=> tb!240541 (= result!291522 (and (inv!57173 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484))) e!2481094))))

(assert (= tb!240541 b!4001233))

(declare-fun m!4583745 () Bool)

(assert (=> b!4001233 m!4583745))

(declare-fun m!4583747 () Bool)

(assert (=> tb!240541 m!4583747))

(assert (=> d!1183588 t!332217))

(declare-fun b_and!307239 () Bool)

(assert (= b_and!307225 (and (=> t!332217 result!291522) b_and!307239)))

(declare-fun t!332219 () Bool)

(declare-fun tb!240543 () Bool)

(assert (=> (and b!4001059 (= (toChars!9140 (transformation!6793 (rule!9825 token!484))) (toChars!9140 (transformation!6793 (rule!9825 token!484)))) t!332219) tb!240543))

(declare-fun result!291526 () Bool)

(assert (= result!291526 result!291522))

(assert (=> d!1183588 t!332219))

(declare-fun b_and!307241 () Bool)

(assert (= b_and!307229 (and (=> t!332219 result!291526) b_and!307241)))

(declare-fun m!4583749 () Bool)

(assert (=> d!1183588 m!4583749))

(declare-fun m!4583751 () Bool)

(assert (=> d!1183588 m!4583751))

(assert (=> b!4001056 d!1183588))

(declare-fun d!1183590 () Bool)

(declare-fun res!1625787 () Bool)

(declare-fun e!2481097 () Bool)

(assert (=> d!1183590 (=> (not res!1625787) (not e!2481097))))

(declare-fun isEmpty!25584 (List!42931) Bool)

(assert (=> d!1183590 (= res!1625787 (not (isEmpty!25584 (originalCharacters!7393 token!484))))))

(assert (=> d!1183590 (= (inv!57169 token!484) e!2481097)))

(declare-fun b!4001238 () Bool)

(declare-fun res!1625788 () Bool)

(assert (=> b!4001238 (=> (not res!1625788) (not e!2481097))))

(assert (=> b!4001238 (= res!1625788 (= (originalCharacters!7393 token!484) (list!15897 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484)))))))

(declare-fun b!4001239 () Bool)

(assert (=> b!4001239 (= e!2481097 (= (size!32009 token!484) (size!32010 (originalCharacters!7393 token!484))))))

(assert (= (and d!1183590 res!1625787) b!4001238))

(assert (= (and b!4001238 res!1625788) b!4001239))

(declare-fun b_lambda!116721 () Bool)

(assert (=> (not b_lambda!116721) (not b!4001238)))

(assert (=> b!4001238 t!332217))

(declare-fun b_and!307243 () Bool)

(assert (= b_and!307239 (and (=> t!332217 result!291522) b_and!307243)))

(assert (=> b!4001238 t!332219))

(declare-fun b_and!307245 () Bool)

(assert (= b_and!307241 (and (=> t!332219 result!291526) b_and!307245)))

(declare-fun m!4583753 () Bool)

(assert (=> d!1183590 m!4583753))

(assert (=> b!4001238 m!4583751))

(assert (=> b!4001238 m!4583751))

(declare-fun m!4583755 () Bool)

(assert (=> b!4001238 m!4583755))

(declare-fun m!4583757 () Bool)

(assert (=> b!4001239 m!4583757))

(assert (=> start!376514 d!1183590))

(declare-fun d!1183592 () Bool)

(declare-fun res!1625791 () Bool)

(declare-fun e!2481100 () Bool)

(assert (=> d!1183592 (=> (not res!1625791) (not e!2481100))))

(declare-fun rulesValid!2644 (LexerInterface!6382 List!42933) Bool)

(assert (=> d!1183592 (= res!1625791 (rulesValid!2644 thiss!21717 rules!2999))))

(assert (=> d!1183592 (= (rulesInvariant!5725 thiss!21717 rules!2999) e!2481100)))

(declare-fun b!4001242 () Bool)

(declare-datatypes ((List!42937 0))(
  ( (Nil!42813) (Cons!42813 (h!48233 String!48835) (t!332226 List!42937)) )
))
(declare-fun noDuplicateTag!2645 (LexerInterface!6382 List!42933 List!42937) Bool)

(assert (=> b!4001242 (= e!2481100 (noDuplicateTag!2645 thiss!21717 rules!2999 Nil!42813))))

(assert (= (and d!1183592 res!1625791) b!4001242))

(declare-fun m!4583759 () Bool)

(assert (=> d!1183592 m!4583759))

(declare-fun m!4583761 () Bool)

(assert (=> b!4001242 m!4583761))

(assert (=> b!4001067 d!1183592))

(declare-fun b!4001255 () Bool)

(declare-fun e!2481109 () Bool)

(declare-fun e!2481110 () Bool)

(assert (=> b!4001255 (= e!2481109 e!2481110)))

(declare-fun res!1625803 () Bool)

(assert (=> b!4001255 (=> (not res!1625803) (not e!2481110))))

(assert (=> b!4001255 (= res!1625803 (not (is-Nil!42807 suffix!1299)))))

(declare-fun b!4001256 () Bool)

(declare-fun res!1625802 () Bool)

(assert (=> b!4001256 (=> (not res!1625802) (not e!2481110))))

(declare-fun head!8504 (List!42931) C!23582)

(assert (=> b!4001256 (= res!1625802 (= (head!8504 newSuffix!27) (head!8504 suffix!1299)))))

(declare-fun b!4001257 () Bool)

(declare-fun tail!6236 (List!42931) List!42931)

(assert (=> b!4001257 (= e!2481110 (isPrefix!3880 (tail!6236 newSuffix!27) (tail!6236 suffix!1299)))))

(declare-fun d!1183594 () Bool)

(declare-fun e!2481111 () Bool)

(assert (=> d!1183594 e!2481111))

(declare-fun res!1625801 () Bool)

(assert (=> d!1183594 (=> res!1625801 e!2481111)))

(declare-fun lt!1415166 () Bool)

(assert (=> d!1183594 (= res!1625801 (not lt!1415166))))

(assert (=> d!1183594 (= lt!1415166 e!2481109)))

(declare-fun res!1625800 () Bool)

(assert (=> d!1183594 (=> res!1625800 e!2481109)))

(assert (=> d!1183594 (= res!1625800 (is-Nil!42807 newSuffix!27))))

(assert (=> d!1183594 (= (isPrefix!3880 newSuffix!27 suffix!1299) lt!1415166)))

(declare-fun b!4001258 () Bool)

(assert (=> b!4001258 (= e!2481111 (>= (size!32010 suffix!1299) (size!32010 newSuffix!27)))))

(assert (= (and d!1183594 (not res!1625800)) b!4001255))

(assert (= (and b!4001255 res!1625803) b!4001256))

(assert (= (and b!4001256 res!1625802) b!4001257))

(assert (= (and d!1183594 (not res!1625801)) b!4001258))

(declare-fun m!4583763 () Bool)

(assert (=> b!4001256 m!4583763))

(declare-fun m!4583765 () Bool)

(assert (=> b!4001256 m!4583765))

(declare-fun m!4583767 () Bool)

(assert (=> b!4001257 m!4583767))

(declare-fun m!4583769 () Bool)

(assert (=> b!4001257 m!4583769))

(assert (=> b!4001257 m!4583767))

(assert (=> b!4001257 m!4583769))

(declare-fun m!4583771 () Bool)

(assert (=> b!4001257 m!4583771))

(assert (=> b!4001258 m!4583549))

(assert (=> b!4001258 m!4583551))

(assert (=> b!4001068 d!1183594))

(declare-fun b!4001260 () Bool)

(declare-fun e!2481112 () List!42931)

(assert (=> b!4001260 (= e!2481112 (Cons!42807 (h!48227 lt!1415100) (++!11195 (t!332210 lt!1415100) newSuffixResult!27)))))

(declare-fun d!1183596 () Bool)

(declare-fun e!2481113 () Bool)

(assert (=> d!1183596 e!2481113))

(declare-fun res!1625804 () Bool)

(assert (=> d!1183596 (=> (not res!1625804) (not e!2481113))))

(declare-fun lt!1415167 () List!42931)

(assert (=> d!1183596 (= res!1625804 (= (content!6490 lt!1415167) (set.union (content!6490 lt!1415100) (content!6490 newSuffixResult!27))))))

(assert (=> d!1183596 (= lt!1415167 e!2481112)))

(declare-fun c!692004 () Bool)

(assert (=> d!1183596 (= c!692004 (is-Nil!42807 lt!1415100))))

(assert (=> d!1183596 (= (++!11195 lt!1415100 newSuffixResult!27) lt!1415167)))

(declare-fun b!4001261 () Bool)

(declare-fun res!1625805 () Bool)

(assert (=> b!4001261 (=> (not res!1625805) (not e!2481113))))

(assert (=> b!4001261 (= res!1625805 (= (size!32010 lt!1415167) (+ (size!32010 lt!1415100) (size!32010 newSuffixResult!27))))))

(declare-fun b!4001262 () Bool)

(assert (=> b!4001262 (= e!2481113 (or (not (= newSuffixResult!27 Nil!42807)) (= lt!1415167 lt!1415100)))))

(declare-fun b!4001259 () Bool)

(assert (=> b!4001259 (= e!2481112 newSuffixResult!27)))

(assert (= (and d!1183596 c!692004) b!4001259))

(assert (= (and d!1183596 (not c!692004)) b!4001260))

(assert (= (and d!1183596 res!1625804) b!4001261))

(assert (= (and b!4001261 res!1625805) b!4001262))

(declare-fun m!4583773 () Bool)

(assert (=> b!4001260 m!4583773))

(declare-fun m!4583775 () Bool)

(assert (=> d!1183596 m!4583775))

(assert (=> d!1183596 m!4583633))

(declare-fun m!4583777 () Bool)

(assert (=> d!1183596 m!4583777))

(declare-fun m!4583779 () Bool)

(assert (=> b!4001261 m!4583779))

(assert (=> b!4001261 m!4583575))

(declare-fun m!4583781 () Bool)

(assert (=> b!4001261 m!4583781))

(assert (=> b!4001064 d!1183596))

(declare-fun b!4001264 () Bool)

(declare-fun e!2481114 () List!42931)

(assert (=> b!4001264 (= e!2481114 (Cons!42807 (h!48227 prefix!494) (++!11195 (t!332210 prefix!494) newSuffix!27)))))

(declare-fun d!1183598 () Bool)

(declare-fun e!2481115 () Bool)

(assert (=> d!1183598 e!2481115))

(declare-fun res!1625806 () Bool)

(assert (=> d!1183598 (=> (not res!1625806) (not e!2481115))))

(declare-fun lt!1415168 () List!42931)

(assert (=> d!1183598 (= res!1625806 (= (content!6490 lt!1415168) (set.union (content!6490 prefix!494) (content!6490 newSuffix!27))))))

(assert (=> d!1183598 (= lt!1415168 e!2481114)))

(declare-fun c!692005 () Bool)

(assert (=> d!1183598 (= c!692005 (is-Nil!42807 prefix!494))))

(assert (=> d!1183598 (= (++!11195 prefix!494 newSuffix!27) lt!1415168)))

(declare-fun b!4001265 () Bool)

(declare-fun res!1625807 () Bool)

(assert (=> b!4001265 (=> (not res!1625807) (not e!2481115))))

(assert (=> b!4001265 (= res!1625807 (= (size!32010 lt!1415168) (+ (size!32010 prefix!494) (size!32010 newSuffix!27))))))

(declare-fun b!4001266 () Bool)

(assert (=> b!4001266 (= e!2481115 (or (not (= newSuffix!27 Nil!42807)) (= lt!1415168 prefix!494)))))

(declare-fun b!4001263 () Bool)

(assert (=> b!4001263 (= e!2481114 newSuffix!27)))

(assert (= (and d!1183598 c!692005) b!4001263))

(assert (= (and d!1183598 (not c!692005)) b!4001264))

(assert (= (and d!1183598 res!1625806) b!4001265))

(assert (= (and b!4001265 res!1625807) b!4001266))

(declare-fun m!4583783 () Bool)

(assert (=> b!4001264 m!4583783))

(declare-fun m!4583785 () Bool)

(assert (=> d!1183598 m!4583785))

(assert (=> d!1183598 m!4583729))

(declare-fun m!4583787 () Bool)

(assert (=> d!1183598 m!4583787))

(declare-fun m!4583789 () Bool)

(assert (=> b!4001265 m!4583789))

(assert (=> b!4001265 m!4583573))

(assert (=> b!4001265 m!4583551))

(assert (=> b!4001064 d!1183598))

(declare-fun b!4001291 () Bool)

(declare-fun res!1625824 () Bool)

(declare-fun e!2481127 () Bool)

(assert (=> b!4001291 (=> res!1625824 e!2481127)))

(assert (=> b!4001291 (= res!1625824 (not (is-IntegerValue!21071 (value!214236 token!484))))))

(declare-fun e!2481128 () Bool)

(assert (=> b!4001291 (= e!2481128 e!2481127)))

(declare-fun b!4001292 () Bool)

(declare-fun e!2481126 () Bool)

(assert (=> b!4001292 (= e!2481126 e!2481128)))

(declare-fun c!692010 () Bool)

(assert (=> b!4001292 (= c!692010 (is-IntegerValue!21070 (value!214236 token!484)))))

(declare-fun b!4001293 () Bool)

(declare-fun inv!16 (TokenValue!7023) Bool)

(assert (=> b!4001293 (= e!2481126 (inv!16 (value!214236 token!484)))))

(declare-fun b!4001294 () Bool)

(declare-fun inv!17 (TokenValue!7023) Bool)

(assert (=> b!4001294 (= e!2481128 (inv!17 (value!214236 token!484)))))

(declare-fun b!4001295 () Bool)

(declare-fun inv!15 (TokenValue!7023) Bool)

(assert (=> b!4001295 (= e!2481127 (inv!15 (value!214236 token!484)))))

(declare-fun d!1183600 () Bool)

(declare-fun c!692011 () Bool)

(assert (=> d!1183600 (= c!692011 (is-IntegerValue!21069 (value!214236 token!484)))))

(assert (=> d!1183600 (= (inv!21 (value!214236 token!484)) e!2481126)))

(assert (= (and d!1183600 c!692011) b!4001293))

(assert (= (and d!1183600 (not c!692011)) b!4001292))

(assert (= (and b!4001292 c!692010) b!4001294))

(assert (= (and b!4001292 (not c!692010)) b!4001291))

(assert (= (and b!4001291 (not res!1625824)) b!4001295))

(declare-fun m!4583791 () Bool)

(assert (=> b!4001293 m!4583791))

(declare-fun m!4583793 () Bool)

(assert (=> b!4001294 m!4583793))

(declare-fun m!4583795 () Bool)

(assert (=> b!4001295 m!4583795))

(assert (=> b!4001054 d!1183600))

(declare-fun d!1183602 () Bool)

(declare-fun lt!1415169 () Int)

(assert (=> d!1183602 (>= lt!1415169 0)))

(declare-fun e!2481129 () Int)

(assert (=> d!1183602 (= lt!1415169 e!2481129)))

(declare-fun c!692012 () Bool)

(assert (=> d!1183602 (= c!692012 (is-Nil!42807 suffix!1299))))

(assert (=> d!1183602 (= (size!32010 suffix!1299) lt!1415169)))

(declare-fun b!4001296 () Bool)

(assert (=> b!4001296 (= e!2481129 0)))

(declare-fun b!4001297 () Bool)

(assert (=> b!4001297 (= e!2481129 (+ 1 (size!32010 (t!332210 suffix!1299))))))

(assert (= (and d!1183602 c!692012) b!4001296))

(assert (= (and d!1183602 (not c!692012)) b!4001297))

(declare-fun m!4583797 () Bool)

(assert (=> b!4001297 m!4583797))

(assert (=> b!4001065 d!1183602))

(declare-fun d!1183604 () Bool)

(declare-fun lt!1415170 () Int)

(assert (=> d!1183604 (>= lt!1415170 0)))

(declare-fun e!2481130 () Int)

(assert (=> d!1183604 (= lt!1415170 e!2481130)))

(declare-fun c!692013 () Bool)

(assert (=> d!1183604 (= c!692013 (is-Nil!42807 newSuffix!27))))

(assert (=> d!1183604 (= (size!32010 newSuffix!27) lt!1415170)))

(declare-fun b!4001298 () Bool)

(assert (=> b!4001298 (= e!2481130 0)))

(declare-fun b!4001299 () Bool)

(assert (=> b!4001299 (= e!2481130 (+ 1 (size!32010 (t!332210 newSuffix!27))))))

(assert (= (and d!1183604 c!692013) b!4001298))

(assert (= (and d!1183604 (not c!692013)) b!4001299))

(declare-fun m!4583799 () Bool)

(assert (=> b!4001299 m!4583799))

(assert (=> b!4001065 d!1183604))

(declare-fun b!4001312 () Bool)

(declare-fun e!2481133 () Bool)

(declare-fun tp!1217669 () Bool)

(assert (=> b!4001312 (= e!2481133 tp!1217669)))

(declare-fun b!4001310 () Bool)

(assert (=> b!4001310 (= e!2481133 tp_is_empty!20367)))

(declare-fun b!4001313 () Bool)

(declare-fun tp!1217671 () Bool)

(declare-fun tp!1217670 () Bool)

(assert (=> b!4001313 (= e!2481133 (and tp!1217671 tp!1217670))))

(declare-fun b!4001311 () Bool)

(declare-fun tp!1217668 () Bool)

(declare-fun tp!1217672 () Bool)

(assert (=> b!4001311 (= e!2481133 (and tp!1217668 tp!1217672))))

(assert (=> b!4001055 (= tp!1217604 e!2481133)))

(assert (= (and b!4001055 (is-ElementMatch!11698 (regex!6793 (h!48229 rules!2999)))) b!4001310))

(assert (= (and b!4001055 (is-Concat!18722 (regex!6793 (h!48229 rules!2999)))) b!4001311))

(assert (= (and b!4001055 (is-Star!11698 (regex!6793 (h!48229 rules!2999)))) b!4001312))

(assert (= (and b!4001055 (is-Union!11698 (regex!6793 (h!48229 rules!2999)))) b!4001313))

(declare-fun b!4001318 () Bool)

(declare-fun e!2481136 () Bool)

(declare-fun tp!1217675 () Bool)

(assert (=> b!4001318 (= e!2481136 (and tp_is_empty!20367 tp!1217675))))

(assert (=> b!4001071 (= tp!1217615 e!2481136)))

(assert (= (and b!4001071 (is-Cons!42807 (t!332210 suffix!1299))) b!4001318))

(declare-fun b!4001319 () Bool)

(declare-fun e!2481137 () Bool)

(declare-fun tp!1217676 () Bool)

(assert (=> b!4001319 (= e!2481137 (and tp_is_empty!20367 tp!1217676))))

(assert (=> b!4001062 (= tp!1217607 e!2481137)))

(assert (= (and b!4001062 (is-Cons!42807 (t!332210 newSuffix!27))) b!4001319))

(declare-fun b!4001320 () Bool)

(declare-fun e!2481138 () Bool)

(declare-fun tp!1217677 () Bool)

(assert (=> b!4001320 (= e!2481138 (and tp_is_empty!20367 tp!1217677))))

(assert (=> b!4001057 (= tp!1217603 e!2481138)))

(assert (= (and b!4001057 (is-Cons!42807 (t!332210 newSuffixResult!27))) b!4001320))

(declare-fun b!4001321 () Bool)

(declare-fun e!2481139 () Bool)

(declare-fun tp!1217678 () Bool)

(assert (=> b!4001321 (= e!2481139 (and tp_is_empty!20367 tp!1217678))))

(assert (=> b!4001063 (= tp!1217609 e!2481139)))

(assert (= (and b!4001063 (is-Cons!42807 (t!332210 prefix!494))) b!4001321))

(declare-fun b!4001322 () Bool)

(declare-fun e!2481140 () Bool)

(declare-fun tp!1217679 () Bool)

(assert (=> b!4001322 (= e!2481140 (and tp_is_empty!20367 tp!1217679))))

(assert (=> b!4001069 (= tp!1217606 e!2481140)))

(assert (= (and b!4001069 (is-Cons!42807 (t!332210 suffixResult!105))) b!4001322))

(declare-fun b!4001333 () Bool)

(declare-fun b_free!111209 () Bool)

(declare-fun b_next!111913 () Bool)

(assert (=> b!4001333 (= b_free!111209 (not b_next!111913))))

(declare-fun tp!1217689 () Bool)

(declare-fun b_and!307247 () Bool)

(assert (=> b!4001333 (= tp!1217689 b_and!307247)))

(declare-fun b_free!111211 () Bool)

(declare-fun b_next!111915 () Bool)

(assert (=> b!4001333 (= b_free!111211 (not b_next!111915))))

(declare-fun t!332221 () Bool)

(declare-fun tb!240545 () Bool)

(assert (=> (and b!4001333 (= (toChars!9140 (transformation!6793 (h!48229 (t!332212 rules!2999)))) (toChars!9140 (transformation!6793 (rule!9825 token!484)))) t!332221) tb!240545))

(declare-fun result!291534 () Bool)

(assert (= result!291534 result!291522))

(assert (=> d!1183588 t!332221))

(assert (=> b!4001238 t!332221))

(declare-fun b_and!307249 () Bool)

(declare-fun tp!1217691 () Bool)

(assert (=> b!4001333 (= tp!1217691 (and (=> t!332221 result!291534) b_and!307249))))

(declare-fun e!2481152 () Bool)

(assert (=> b!4001333 (= e!2481152 (and tp!1217689 tp!1217691))))

(declare-fun e!2481150 () Bool)

(declare-fun b!4001332 () Bool)

(declare-fun tp!1217690 () Bool)

(assert (=> b!4001332 (= e!2481150 (and tp!1217690 (inv!57165 (tag!7653 (h!48229 (t!332212 rules!2999)))) (inv!57168 (transformation!6793 (h!48229 (t!332212 rules!2999)))) e!2481152))))

(declare-fun b!4001331 () Bool)

(declare-fun e!2481151 () Bool)

(declare-fun tp!1217688 () Bool)

(assert (=> b!4001331 (= e!2481151 (and e!2481150 tp!1217688))))

(assert (=> b!4001053 (= tp!1217614 e!2481151)))

(assert (= b!4001332 b!4001333))

(assert (= b!4001331 b!4001332))

(assert (= (and b!4001053 (is-Cons!42809 (t!332212 rules!2999))) b!4001331))

(declare-fun m!4583801 () Bool)

(assert (=> b!4001332 m!4583801))

(declare-fun m!4583803 () Bool)

(assert (=> b!4001332 m!4583803))

(declare-fun b!4001336 () Bool)

(declare-fun e!2481153 () Bool)

(declare-fun tp!1217693 () Bool)

(assert (=> b!4001336 (= e!2481153 tp!1217693)))

(declare-fun b!4001334 () Bool)

(assert (=> b!4001334 (= e!2481153 tp_is_empty!20367)))

(declare-fun b!4001337 () Bool)

(declare-fun tp!1217695 () Bool)

(declare-fun tp!1217694 () Bool)

(assert (=> b!4001337 (= e!2481153 (and tp!1217695 tp!1217694))))

(declare-fun b!4001335 () Bool)

(declare-fun tp!1217692 () Bool)

(declare-fun tp!1217696 () Bool)

(assert (=> b!4001335 (= e!2481153 (and tp!1217692 tp!1217696))))

(assert (=> b!4001070 (= tp!1217610 e!2481153)))

(assert (= (and b!4001070 (is-ElementMatch!11698 (regex!6793 (rule!9825 token!484)))) b!4001334))

(assert (= (and b!4001070 (is-Concat!18722 (regex!6793 (rule!9825 token!484)))) b!4001335))

(assert (= (and b!4001070 (is-Star!11698 (regex!6793 (rule!9825 token!484)))) b!4001336))

(assert (= (and b!4001070 (is-Union!11698 (regex!6793 (rule!9825 token!484)))) b!4001337))

(declare-fun b!4001338 () Bool)

(declare-fun e!2481154 () Bool)

(declare-fun tp!1217697 () Bool)

(assert (=> b!4001338 (= e!2481154 (and tp_is_empty!20367 tp!1217697))))

(assert (=> b!4001054 (= tp!1217612 e!2481154)))

(assert (= (and b!4001054 (is-Cons!42807 (originalCharacters!7393 token!484))) b!4001338))

(declare-fun b_lambda!116723 () Bool)

(assert (= b_lambda!116721 (or (and b!4001061 b_free!111195 (= (toChars!9140 (transformation!6793 (h!48229 rules!2999))) (toChars!9140 (transformation!6793 (rule!9825 token!484))))) (and b!4001059 b_free!111199) (and b!4001333 b_free!111211 (= (toChars!9140 (transformation!6793 (h!48229 (t!332212 rules!2999)))) (toChars!9140 (transformation!6793 (rule!9825 token!484))))) b_lambda!116723)))

(declare-fun b_lambda!116725 () Bool)

(assert (= b_lambda!116719 (or (and b!4001061 b_free!111195 (= (toChars!9140 (transformation!6793 (h!48229 rules!2999))) (toChars!9140 (transformation!6793 (rule!9825 token!484))))) (and b!4001059 b_free!111199) (and b!4001333 b_free!111211 (= (toChars!9140 (transformation!6793 (h!48229 (t!332212 rules!2999)))) (toChars!9140 (transformation!6793 (rule!9825 token!484))))) b_lambda!116725)))

(push 1)

(assert (not b!4001147))

(assert (not b!4001294))

(assert (not b!4001210))

(assert (not b!4001293))

(assert (not b!4001338))

(assert (not d!1183546))

(assert (not b_next!111915))

(assert (not b!4001258))

(assert (not b_next!111897))

(assert (not b!4001320))

(assert (not b!4001209))

(assert (not d!1183560))

(assert (not b!4001336))

(assert (not b!4001335))

(assert (not b!4001312))

(assert (not b!4001207))

(assert (not b!4001299))

(assert (not b!4001238))

(assert (not b!4001179))

(assert b_and!307223)

(assert b_and!307227)

(assert (not b!4001228))

(assert (not b_lambda!116725))

(assert (not b!4001239))

(assert b_and!307247)

(assert (not d!1183552))

(assert (not b!4001256))

(assert (not b!4001319))

(assert (not b!4001146))

(assert (not b!4001242))

(assert (not b!4001297))

(assert (not b!4001257))

(assert b_and!307249)

(assert (not b_next!111903))

(assert (not b!4001337))

(assert (not b!4001331))

(assert (not b!4001168))

(assert (not b!4001265))

(assert (not d!1183596))

(assert b_and!307243)

(assert (not b!4001211))

(assert (not b!4001214))

(assert (not d!1183574))

(assert (not d!1183592))

(assert (not b!4001261))

(assert (not b!4001220))

(assert (not d!1183598))

(assert (not b!4001332))

(assert (not b!4001213))

(assert tp_is_empty!20367)

(assert (not b!4001226))

(assert (not b!4001217))

(assert (not b!4001313))

(assert (not b!4001233))

(assert (not d!1183588))

(assert (not b!4001264))

(assert (not bm!285976))

(assert (not b_lambda!116723))

(assert (not b!4001212))

(assert (not d!1183590))

(assert (not d!1183554))

(assert (not d!1183580))

(assert (not b_next!111899))

(assert (not b_next!111901))

(assert (not b!4001322))

(assert (not d!1183586))

(assert (not tb!240541))

(assert (not b!4001295))

(assert (not b_next!111913))

(assert (not b!4001318))

(assert (not d!1183548))

(assert (not b!4001321))

(assert (not b!4001155))

(assert (not b!4001208))

(assert (not b!4001260))

(assert b_and!307245)

(assert (not d!1183564))

(assert (not b!4001218))

(assert (not b!4001311))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!111915))

(assert (not b_next!111897))

(assert b_and!307223)

(assert b_and!307227)

(assert b_and!307247)

(assert b_and!307249)

(assert (not b_next!111903))

(assert b_and!307243)

(assert (not b_next!111913))

(assert b_and!307245)

(assert (not b_next!111899))

(assert (not b_next!111901))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4001469 () Bool)

(declare-fun e!2481231 () Bool)

(declare-fun e!2481229 () Bool)

(assert (=> b!4001469 (= e!2481231 e!2481229)))

(declare-fun c!692037 () Bool)

(assert (=> b!4001469 (= c!692037 (is-EmptyLang!11698 (regex!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142))))))))

(declare-fun bm!285982 () Bool)

(declare-fun call!285987 () Bool)

(assert (=> bm!285982 (= call!285987 (isEmpty!25584 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))))))

(declare-fun d!1183636 () Bool)

(assert (=> d!1183636 e!2481231))

(declare-fun c!692038 () Bool)

(assert (=> d!1183636 (= c!692038 (is-EmptyExpr!11698 (regex!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142))))))))

(declare-fun lt!1415190 () Bool)

(declare-fun e!2481230 () Bool)

(assert (=> d!1183636 (= lt!1415190 e!2481230)))

(declare-fun c!692036 () Bool)

(assert (=> d!1183636 (= c!692036 (isEmpty!25584 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))))))

(assert (=> d!1183636 (validRegex!5303 (regex!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))))))

(assert (=> d!1183636 (= (matchR!5675 (regex!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))) (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))) lt!1415190)))

(declare-fun b!4001470 () Bool)

(declare-fun derivativeStep!3514 (Regex!11698 C!23582) Regex!11698)

(assert (=> b!4001470 (= e!2481230 (matchR!5675 (derivativeStep!3514 (regex!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))) (head!8504 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142)))))) (tail!6236 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142)))))))))

(declare-fun b!4001471 () Bool)

(declare-fun e!2481232 () Bool)

(assert (=> b!4001471 (= e!2481232 (not (= (head!8504 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))) (c!691984 (regex!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142))))))))))

(declare-fun b!4001472 () Bool)

(declare-fun res!1625875 () Bool)

(declare-fun e!2481227 () Bool)

(assert (=> b!4001472 (=> (not res!1625875) (not e!2481227))))

(assert (=> b!4001472 (= res!1625875 (isEmpty!25584 (tail!6236 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142)))))))))

(declare-fun b!4001473 () Bool)

(declare-fun res!1625870 () Bool)

(assert (=> b!4001473 (=> res!1625870 e!2481232)))

(assert (=> b!4001473 (= res!1625870 (not (isEmpty!25584 (tail!6236 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))))))))

(declare-fun b!4001474 () Bool)

(declare-fun res!1625869 () Bool)

(assert (=> b!4001474 (=> (not res!1625869) (not e!2481227))))

(assert (=> b!4001474 (= res!1625869 (not call!285987))))

(declare-fun b!4001475 () Bool)

(assert (=> b!4001475 (= e!2481231 (= lt!1415190 call!285987))))

(declare-fun b!4001476 () Bool)

(assert (=> b!4001476 (= e!2481230 (nullable!4103 (regex!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142))))))))

(declare-fun b!4001477 () Bool)

(declare-fun e!2481228 () Bool)

(assert (=> b!4001477 (= e!2481228 e!2481232)))

(declare-fun res!1625868 () Bool)

(assert (=> b!4001477 (=> res!1625868 e!2481232)))

(assert (=> b!4001477 (= res!1625868 call!285987)))

(declare-fun b!4001478 () Bool)

(declare-fun res!1625874 () Bool)

(declare-fun e!2481233 () Bool)

(assert (=> b!4001478 (=> res!1625874 e!2481233)))

(assert (=> b!4001478 (= res!1625874 e!2481227)))

(declare-fun res!1625871 () Bool)

(assert (=> b!4001478 (=> (not res!1625871) (not e!2481227))))

(assert (=> b!4001478 (= res!1625871 lt!1415190)))

(declare-fun b!4001479 () Bool)

(assert (=> b!4001479 (= e!2481227 (= (head!8504 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))) (c!691984 (regex!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))))))))

(declare-fun b!4001480 () Bool)

(assert (=> b!4001480 (= e!2481233 e!2481228)))

(declare-fun res!1625872 () Bool)

(assert (=> b!4001480 (=> (not res!1625872) (not e!2481228))))

(assert (=> b!4001480 (= res!1625872 (not lt!1415190))))

(declare-fun b!4001481 () Bool)

(declare-fun res!1625873 () Bool)

(assert (=> b!4001481 (=> res!1625873 e!2481233)))

(assert (=> b!4001481 (= res!1625873 (not (is-ElementMatch!11698 (regex!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))))))))

(assert (=> b!4001481 (= e!2481229 e!2481233)))

(declare-fun b!4001482 () Bool)

(assert (=> b!4001482 (= e!2481229 (not lt!1415190))))

(assert (= (and d!1183636 c!692036) b!4001476))

(assert (= (and d!1183636 (not c!692036)) b!4001470))

(assert (= (and d!1183636 c!692038) b!4001475))

(assert (= (and d!1183636 (not c!692038)) b!4001469))

(assert (= (and b!4001469 c!692037) b!4001482))

(assert (= (and b!4001469 (not c!692037)) b!4001481))

(assert (= (and b!4001481 (not res!1625873)) b!4001478))

(assert (= (and b!4001478 res!1625871) b!4001474))

(assert (= (and b!4001474 res!1625869) b!4001472))

(assert (= (and b!4001472 res!1625875) b!4001479))

(assert (= (and b!4001478 (not res!1625874)) b!4001480))

(assert (= (and b!4001480 res!1625872) b!4001477))

(assert (= (and b!4001477 (not res!1625868)) b!4001473))

(assert (= (and b!4001473 (not res!1625870)) b!4001471))

(assert (= (or b!4001475 b!4001477 b!4001474) bm!285982))

(assert (=> b!4001472 m!4583715))

(declare-fun m!4583905 () Bool)

(assert (=> b!4001472 m!4583905))

(assert (=> b!4001472 m!4583905))

(declare-fun m!4583907 () Bool)

(assert (=> b!4001472 m!4583907))

(assert (=> b!4001470 m!4583715))

(declare-fun m!4583909 () Bool)

(assert (=> b!4001470 m!4583909))

(assert (=> b!4001470 m!4583909))

(declare-fun m!4583911 () Bool)

(assert (=> b!4001470 m!4583911))

(assert (=> b!4001470 m!4583715))

(assert (=> b!4001470 m!4583905))

(assert (=> b!4001470 m!4583911))

(assert (=> b!4001470 m!4583905))

(declare-fun m!4583913 () Bool)

(assert (=> b!4001470 m!4583913))

(assert (=> b!4001471 m!4583715))

(assert (=> b!4001471 m!4583909))

(assert (=> bm!285982 m!4583715))

(declare-fun m!4583915 () Bool)

(assert (=> bm!285982 m!4583915))

(assert (=> b!4001479 m!4583715))

(assert (=> b!4001479 m!4583909))

(assert (=> b!4001473 m!4583715))

(assert (=> b!4001473 m!4583905))

(assert (=> b!4001473 m!4583905))

(assert (=> b!4001473 m!4583907))

(assert (=> d!1183636 m!4583715))

(assert (=> d!1183636 m!4583915))

(declare-fun m!4583917 () Bool)

(assert (=> d!1183636 m!4583917))

(declare-fun m!4583919 () Bool)

(assert (=> b!4001476 m!4583919))

(assert (=> b!4001209 d!1183636))

(declare-fun d!1183638 () Bool)

(assert (=> d!1183638 (= (get!14076 lt!1415142) (v!39566 lt!1415142))))

(assert (=> b!4001209 d!1183638))

(declare-fun d!1183640 () Bool)

(assert (=> d!1183640 (= (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142)))) (list!15899 (c!691983 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))))))

(declare-fun bs!588849 () Bool)

(assert (= bs!588849 d!1183640))

(declare-fun m!4583921 () Bool)

(assert (=> bs!588849 m!4583921))

(assert (=> b!4001209 d!1183640))

(declare-fun d!1183642 () Bool)

(declare-fun lt!1415191 () BalanceConc!25602)

(assert (=> d!1183642 (= (list!15897 lt!1415191) (originalCharacters!7393 (_1!24126 (get!14076 lt!1415142))))))

(assert (=> d!1183642 (= lt!1415191 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142))))) (value!214236 (_1!24126 (get!14076 lt!1415142)))))))

(assert (=> d!1183642 (= (charsOf!4609 (_1!24126 (get!14076 lt!1415142))) lt!1415191)))

(declare-fun b_lambda!116735 () Bool)

(assert (=> (not b_lambda!116735) (not d!1183642)))

(declare-fun t!332231 () Bool)

(declare-fun tb!240553 () Bool)

(assert (=> (and b!4001061 (= (toChars!9140 (transformation!6793 (h!48229 rules!2999))) (toChars!9140 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))))) t!332231) tb!240553))

(declare-fun b!4001483 () Bool)

(declare-fun e!2481234 () Bool)

(declare-fun tp!1217741 () Bool)

(assert (=> b!4001483 (= e!2481234 (and (inv!57172 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142))))) (value!214236 (_1!24126 (get!14076 lt!1415142)))))) tp!1217741))))

(declare-fun result!291550 () Bool)

(assert (=> tb!240553 (= result!291550 (and (inv!57173 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142))))) (value!214236 (_1!24126 (get!14076 lt!1415142))))) e!2481234))))

(assert (= tb!240553 b!4001483))

(declare-fun m!4583923 () Bool)

(assert (=> b!4001483 m!4583923))

(declare-fun m!4583925 () Bool)

(assert (=> tb!240553 m!4583925))

(assert (=> d!1183642 t!332231))

(declare-fun b_and!307263 () Bool)

(assert (= b_and!307243 (and (=> t!332231 result!291550) b_and!307263)))

(declare-fun tb!240555 () Bool)

(declare-fun t!332233 () Bool)

(assert (=> (and b!4001059 (= (toChars!9140 (transformation!6793 (rule!9825 token!484))) (toChars!9140 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))))) t!332233) tb!240555))

(declare-fun result!291552 () Bool)

(assert (= result!291552 result!291550))

(assert (=> d!1183642 t!332233))

(declare-fun b_and!307265 () Bool)

(assert (= b_and!307245 (and (=> t!332233 result!291552) b_and!307265)))

(declare-fun t!332235 () Bool)

(declare-fun tb!240557 () Bool)

(assert (=> (and b!4001333 (= (toChars!9140 (transformation!6793 (h!48229 (t!332212 rules!2999)))) (toChars!9140 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))))) t!332235) tb!240557))

(declare-fun result!291554 () Bool)

(assert (= result!291554 result!291550))

(assert (=> d!1183642 t!332235))

(declare-fun b_and!307267 () Bool)

(assert (= b_and!307249 (and (=> t!332235 result!291554) b_and!307267)))

(declare-fun m!4583927 () Bool)

(assert (=> d!1183642 m!4583927))

(declare-fun m!4583929 () Bool)

(assert (=> d!1183642 m!4583929))

(assert (=> b!4001209 d!1183642))

(declare-fun d!1183644 () Bool)

(assert (=> d!1183644 true))

(declare-fun order!22431 () Int)

(declare-fun lambda!126908 () Int)

(declare-fun order!22433 () Int)

(declare-fun dynLambda!18159 (Int Int) Int)

(declare-fun dynLambda!18160 (Int Int) Int)

(assert (=> d!1183644 (< (dynLambda!18159 order!22431 (toChars!9140 (transformation!6793 (rule!9825 token!484)))) (dynLambda!18160 order!22433 lambda!126908))))

(assert (=> d!1183644 true))

(declare-fun order!22435 () Int)

(declare-fun dynLambda!18161 (Int Int) Int)

(assert (=> d!1183644 (< (dynLambda!18161 order!22435 (toValue!9281 (transformation!6793 (rule!9825 token!484)))) (dynLambda!18160 order!22433 lambda!126908))))

(declare-fun Forall!1465 (Int) Bool)

(assert (=> d!1183644 (= (semiInverseModEq!2910 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (toValue!9281 (transformation!6793 (rule!9825 token!484)))) (Forall!1465 lambda!126908))))

(declare-fun bs!588850 () Bool)

(assert (= bs!588850 d!1183644))

(declare-fun m!4583931 () Bool)

(assert (=> bs!588850 m!4583931))

(assert (=> d!1183560 d!1183644))

(declare-fun d!1183646 () Bool)

(declare-fun c!692041 () Bool)

(assert (=> d!1183646 (= c!692041 (is-Nil!42807 lt!1415168))))

(declare-fun e!2481237 () (Set C!23582))

(assert (=> d!1183646 (= (content!6490 lt!1415168) e!2481237)))

(declare-fun b!4001492 () Bool)

(assert (=> b!4001492 (= e!2481237 (as set.empty (Set C!23582)))))

(declare-fun b!4001493 () Bool)

(assert (=> b!4001493 (= e!2481237 (set.union (set.insert (h!48227 lt!1415168) (as set.empty (Set C!23582))) (content!6490 (t!332210 lt!1415168))))))

(assert (= (and d!1183646 c!692041) b!4001492))

(assert (= (and d!1183646 (not c!692041)) b!4001493))

(declare-fun m!4583933 () Bool)

(assert (=> b!4001493 m!4583933))

(declare-fun m!4583935 () Bool)

(assert (=> b!4001493 m!4583935))

(assert (=> d!1183598 d!1183646))

(declare-fun d!1183648 () Bool)

(declare-fun c!692042 () Bool)

(assert (=> d!1183648 (= c!692042 (is-Nil!42807 prefix!494))))

(declare-fun e!2481238 () (Set C!23582))

(assert (=> d!1183648 (= (content!6490 prefix!494) e!2481238)))

(declare-fun b!4001494 () Bool)

(assert (=> b!4001494 (= e!2481238 (as set.empty (Set C!23582)))))

(declare-fun b!4001495 () Bool)

(assert (=> b!4001495 (= e!2481238 (set.union (set.insert (h!48227 prefix!494) (as set.empty (Set C!23582))) (content!6490 (t!332210 prefix!494))))))

(assert (= (and d!1183648 c!692042) b!4001494))

(assert (= (and d!1183648 (not c!692042)) b!4001495))

(declare-fun m!4583937 () Bool)

(assert (=> b!4001495 m!4583937))

(declare-fun m!4583939 () Bool)

(assert (=> b!4001495 m!4583939))

(assert (=> d!1183598 d!1183648))

(declare-fun d!1183650 () Bool)

(declare-fun c!692043 () Bool)

(assert (=> d!1183650 (= c!692043 (is-Nil!42807 newSuffix!27))))

(declare-fun e!2481239 () (Set C!23582))

(assert (=> d!1183650 (= (content!6490 newSuffix!27) e!2481239)))

(declare-fun b!4001496 () Bool)

(assert (=> b!4001496 (= e!2481239 (as set.empty (Set C!23582)))))

(declare-fun b!4001497 () Bool)

(assert (=> b!4001497 (= e!2481239 (set.union (set.insert (h!48227 newSuffix!27) (as set.empty (Set C!23582))) (content!6490 (t!332210 newSuffix!27))))))

(assert (= (and d!1183650 c!692043) b!4001496))

(assert (= (and d!1183650 (not c!692043)) b!4001497))

(declare-fun m!4583941 () Bool)

(assert (=> b!4001497 m!4583941))

(declare-fun m!4583943 () Bool)

(assert (=> b!4001497 m!4583943))

(assert (=> d!1183598 d!1183650))

(declare-fun d!1183652 () Bool)

(declare-fun res!1625884 () Bool)

(declare-fun e!2481244 () Bool)

(assert (=> d!1183652 (=> res!1625884 e!2481244)))

(assert (=> d!1183652 (= res!1625884 (is-Nil!42809 rules!2999))))

(assert (=> d!1183652 (= (noDuplicateTag!2645 thiss!21717 rules!2999 Nil!42813) e!2481244)))

(declare-fun b!4001502 () Bool)

(declare-fun e!2481245 () Bool)

(assert (=> b!4001502 (= e!2481244 e!2481245)))

(declare-fun res!1625885 () Bool)

(assert (=> b!4001502 (=> (not res!1625885) (not e!2481245))))

(declare-fun contains!8516 (List!42937 String!48835) Bool)

(assert (=> b!4001502 (= res!1625885 (not (contains!8516 Nil!42813 (tag!7653 (h!48229 rules!2999)))))))

(declare-fun b!4001503 () Bool)

(assert (=> b!4001503 (= e!2481245 (noDuplicateTag!2645 thiss!21717 (t!332212 rules!2999) (Cons!42813 (tag!7653 (h!48229 rules!2999)) Nil!42813)))))

(assert (= (and d!1183652 (not res!1625884)) b!4001502))

(assert (= (and b!4001502 res!1625885) b!4001503))

(declare-fun m!4583945 () Bool)

(assert (=> b!4001502 m!4583945))

(declare-fun m!4583947 () Bool)

(assert (=> b!4001503 m!4583947))

(assert (=> b!4001242 d!1183652))

(assert (=> b!4001207 d!1183640))

(assert (=> b!4001207 d!1183642))

(assert (=> b!4001207 d!1183638))

(declare-fun d!1183654 () Bool)

(declare-fun c!692046 () Bool)

(assert (=> d!1183654 (= c!692046 (is-Node!13004 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484)))))))

(declare-fun e!2481250 () Bool)

(assert (=> d!1183654 (= (inv!57172 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484)))) e!2481250)))

(declare-fun b!4001510 () Bool)

(declare-fun inv!57176 (Conc!13004) Bool)

(assert (=> b!4001510 (= e!2481250 (inv!57176 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484)))))))

(declare-fun b!4001511 () Bool)

(declare-fun e!2481251 () Bool)

(assert (=> b!4001511 (= e!2481250 e!2481251)))

(declare-fun res!1625888 () Bool)

(assert (=> b!4001511 (= res!1625888 (not (is-Leaf!20108 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484))))))))

(assert (=> b!4001511 (=> res!1625888 e!2481251)))

(declare-fun b!4001512 () Bool)

(declare-fun inv!57177 (Conc!13004) Bool)

(assert (=> b!4001512 (= e!2481251 (inv!57177 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484)))))))

(assert (= (and d!1183654 c!692046) b!4001510))

(assert (= (and d!1183654 (not c!692046)) b!4001511))

(assert (= (and b!4001511 (not res!1625888)) b!4001512))

(declare-fun m!4583949 () Bool)

(assert (=> b!4001510 m!4583949))

(declare-fun m!4583951 () Bool)

(assert (=> b!4001512 m!4583951))

(assert (=> b!4001233 d!1183654))

(declare-fun d!1183656 () Bool)

(assert (=> d!1183656 true))

(declare-fun lambda!126911 () Int)

(declare-fun order!22437 () Int)

(declare-fun dynLambda!18162 (Int Int) Int)

(assert (=> d!1183656 (< (dynLambda!18161 order!22435 (toValue!9281 (transformation!6793 (rule!9825 token!484)))) (dynLambda!18162 order!22437 lambda!126911))))

(declare-fun Forall2!1064 (Int) Bool)

(assert (=> d!1183656 (= (equivClasses!2809 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (toValue!9281 (transformation!6793 (rule!9825 token!484)))) (Forall2!1064 lambda!126911))))

(declare-fun bs!588851 () Bool)

(assert (= bs!588851 d!1183656))

(declare-fun m!4583953 () Bool)

(assert (=> bs!588851 m!4583953))

(assert (=> b!4001155 d!1183656))

(declare-fun d!1183658 () Bool)

(declare-fun isBalanced!3655 (Conc!13004) Bool)

(assert (=> d!1183658 (= (inv!57173 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484))) (isBalanced!3655 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484)))))))

(declare-fun bs!588852 () Bool)

(assert (= bs!588852 d!1183658))

(declare-fun m!4583955 () Bool)

(assert (=> bs!588852 m!4583955))

(assert (=> tb!240541 d!1183658))

(declare-fun d!1183660 () Bool)

(declare-fun charsToBigInt!0 (List!42932 Int) Int)

(assert (=> d!1183660 (= (inv!15 (value!214236 token!484)) (= (charsToBigInt!0 (text!49610 (value!214236 token!484)) 0) (value!214231 (value!214236 token!484))))))

(declare-fun bs!588853 () Bool)

(assert (= bs!588853 d!1183660))

(declare-fun m!4583957 () Bool)

(assert (=> bs!588853 m!4583957))

(assert (=> b!4001295 d!1183660))

(declare-fun d!1183662 () Bool)

(assert (=> d!1183662 (= (head!8504 newSuffix!27) (h!48227 newSuffix!27))))

(assert (=> b!4001256 d!1183662))

(declare-fun d!1183664 () Bool)

(assert (=> d!1183664 (= (head!8504 suffix!1299) (h!48227 suffix!1299))))

(assert (=> b!4001256 d!1183664))

(declare-fun d!1183666 () Bool)

(declare-fun lt!1415194 () Bool)

(declare-fun content!6492 (List!42933) (Set Rule!13386))

(assert (=> d!1183666 (= lt!1415194 (set.member (rule!9825 (_1!24126 (get!14076 lt!1415142))) (content!6492 rules!2999)))))

(declare-fun e!2481259 () Bool)

(assert (=> d!1183666 (= lt!1415194 e!2481259)))

(declare-fun res!1625896 () Bool)

(assert (=> d!1183666 (=> (not res!1625896) (not e!2481259))))

(assert (=> d!1183666 (= res!1625896 (is-Cons!42809 rules!2999))))

(assert (=> d!1183666 (= (contains!8514 rules!2999 (rule!9825 (_1!24126 (get!14076 lt!1415142)))) lt!1415194)))

(declare-fun b!4001521 () Bool)

(declare-fun e!2481258 () Bool)

(assert (=> b!4001521 (= e!2481259 e!2481258)))

(declare-fun res!1625895 () Bool)

(assert (=> b!4001521 (=> res!1625895 e!2481258)))

(assert (=> b!4001521 (= res!1625895 (= (h!48229 rules!2999) (rule!9825 (_1!24126 (get!14076 lt!1415142)))))))

(declare-fun b!4001522 () Bool)

(assert (=> b!4001522 (= e!2481258 (contains!8514 (t!332212 rules!2999) (rule!9825 (_1!24126 (get!14076 lt!1415142)))))))

(assert (= (and d!1183666 res!1625896) b!4001521))

(assert (= (and b!4001521 (not res!1625895)) b!4001522))

(declare-fun m!4583959 () Bool)

(assert (=> d!1183666 m!4583959))

(declare-fun m!4583961 () Bool)

(assert (=> d!1183666 m!4583961))

(declare-fun m!4583963 () Bool)

(assert (=> b!4001522 m!4583963))

(assert (=> b!4001214 d!1183666))

(assert (=> b!4001214 d!1183638))

(declare-fun d!1183668 () Bool)

(declare-fun charsToInt!0 (List!42932) (_ BitVec 32))

(assert (=> d!1183668 (= (inv!16 (value!214236 token!484)) (= (charsToInt!0 (text!49608 (value!214236 token!484))) (value!214227 (value!214236 token!484))))))

(declare-fun bs!588854 () Bool)

(assert (= bs!588854 d!1183668))

(declare-fun m!4583965 () Bool)

(assert (=> bs!588854 m!4583965))

(assert (=> b!4001293 d!1183668))

(declare-fun b!4001573 () Bool)

(declare-fun res!1625929 () Bool)

(declare-fun e!2481285 () Bool)

(assert (=> b!4001573 (=> (not res!1625929) (not e!2481285))))

(declare-fun lt!1415213 () Option!9207)

(assert (=> b!4001573 (= res!1625929 (= (value!214236 (_1!24126 (get!14076 lt!1415213))) (apply!10004 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415213)))) (seqFromList!5032 (originalCharacters!7393 (_1!24126 (get!14076 lt!1415213)))))))))

(declare-fun b!4001574 () Bool)

(declare-fun res!1625932 () Bool)

(assert (=> b!4001574 (=> (not res!1625932) (not e!2481285))))

(assert (=> b!4001574 (= res!1625932 (= (++!11195 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415213)))) (_2!24126 (get!14076 lt!1415213))) lt!1415103))))

(declare-fun d!1183670 () Bool)

(declare-fun e!2481287 () Bool)

(assert (=> d!1183670 e!2481287))

(declare-fun res!1625931 () Bool)

(assert (=> d!1183670 (=> res!1625931 e!2481287)))

(assert (=> d!1183670 (= res!1625931 (isEmpty!25583 lt!1415213))))

(declare-fun e!2481284 () Option!9207)

(assert (=> d!1183670 (= lt!1415213 e!2481284)))

(declare-fun c!692057 () Bool)

(declare-datatypes ((tuple2!41988 0))(
  ( (tuple2!41989 (_1!24128 List!42931) (_2!24128 List!42931)) )
))
(declare-fun lt!1415211 () tuple2!41988)

(assert (=> d!1183670 (= c!692057 (isEmpty!25584 (_1!24128 lt!1415211)))))

(declare-fun findLongestMatch!1259 (Regex!11698 List!42931) tuple2!41988)

(assert (=> d!1183670 (= lt!1415211 (findLongestMatch!1259 (regex!6793 (h!48229 rules!2999)) lt!1415103))))

(assert (=> d!1183670 (ruleValid!2725 thiss!21717 (h!48229 rules!2999))))

(assert (=> d!1183670 (= (maxPrefixOneRule!2714 thiss!21717 (h!48229 rules!2999) lt!1415103) lt!1415213)))

(declare-fun b!4001575 () Bool)

(assert (=> b!4001575 (= e!2481285 (= (size!32009 (_1!24126 (get!14076 lt!1415213))) (size!32010 (originalCharacters!7393 (_1!24126 (get!14076 lt!1415213))))))))

(declare-fun b!4001576 () Bool)

(declare-fun res!1625928 () Bool)

(assert (=> b!4001576 (=> (not res!1625928) (not e!2481285))))

(assert (=> b!4001576 (= res!1625928 (< (size!32010 (_2!24126 (get!14076 lt!1415213))) (size!32010 lt!1415103)))))

(declare-fun b!4001577 () Bool)

(declare-fun size!32013 (BalanceConc!25602) Int)

(assert (=> b!4001577 (= e!2481284 (Some!9206 (tuple2!41985 (Token!12725 (apply!10004 (transformation!6793 (h!48229 rules!2999)) (seqFromList!5032 (_1!24128 lt!1415211))) (h!48229 rules!2999) (size!32013 (seqFromList!5032 (_1!24128 lt!1415211))) (_1!24128 lt!1415211)) (_2!24128 lt!1415211))))))

(declare-fun lt!1415209 () Unit!61797)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1319 (Regex!11698 List!42931) Unit!61797)

(assert (=> b!4001577 (= lt!1415209 (longestMatchIsAcceptedByMatchOrIsEmpty!1319 (regex!6793 (h!48229 rules!2999)) lt!1415103))))

(declare-fun res!1625927 () Bool)

(declare-fun findLongestMatchInner!1346 (Regex!11698 List!42931 Int List!42931 List!42931 Int) tuple2!41988)

(assert (=> b!4001577 (= res!1625927 (isEmpty!25584 (_1!24128 (findLongestMatchInner!1346 (regex!6793 (h!48229 rules!2999)) Nil!42807 (size!32010 Nil!42807) lt!1415103 lt!1415103 (size!32010 lt!1415103)))))))

(declare-fun e!2481286 () Bool)

(assert (=> b!4001577 (=> res!1625927 e!2481286)))

(assert (=> b!4001577 e!2481286))

(declare-fun lt!1415210 () Unit!61797)

(assert (=> b!4001577 (= lt!1415210 lt!1415209)))

(declare-fun lt!1415212 () Unit!61797)

(declare-fun lemmaSemiInverse!1866 (TokenValueInjection!13474 BalanceConc!25602) Unit!61797)

(assert (=> b!4001577 (= lt!1415212 (lemmaSemiInverse!1866 (transformation!6793 (h!48229 rules!2999)) (seqFromList!5032 (_1!24128 lt!1415211))))))

(declare-fun b!4001578 () Bool)

(assert (=> b!4001578 (= e!2481284 None!9206)))

(declare-fun b!4001579 () Bool)

(assert (=> b!4001579 (= e!2481287 e!2481285)))

(declare-fun res!1625930 () Bool)

(assert (=> b!4001579 (=> (not res!1625930) (not e!2481285))))

(assert (=> b!4001579 (= res!1625930 (matchR!5675 (regex!6793 (h!48229 rules!2999)) (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415213))))))))

(declare-fun b!4001580 () Bool)

(assert (=> b!4001580 (= e!2481286 (matchR!5675 (regex!6793 (h!48229 rules!2999)) (_1!24128 (findLongestMatchInner!1346 (regex!6793 (h!48229 rules!2999)) Nil!42807 (size!32010 Nil!42807) lt!1415103 lt!1415103 (size!32010 lt!1415103)))))))

(declare-fun b!4001581 () Bool)

(declare-fun res!1625933 () Bool)

(assert (=> b!4001581 (=> (not res!1625933) (not e!2481285))))

(assert (=> b!4001581 (= res!1625933 (= (rule!9825 (_1!24126 (get!14076 lt!1415213))) (h!48229 rules!2999)))))

(assert (= (and d!1183670 c!692057) b!4001578))

(assert (= (and d!1183670 (not c!692057)) b!4001577))

(assert (= (and b!4001577 (not res!1625927)) b!4001580))

(assert (= (and d!1183670 (not res!1625931)) b!4001579))

(assert (= (and b!4001579 res!1625930) b!4001574))

(assert (= (and b!4001574 res!1625932) b!4001576))

(assert (= (and b!4001576 res!1625928) b!4001581))

(assert (= (and b!4001581 res!1625933) b!4001573))

(assert (= (and b!4001573 res!1625929) b!4001575))

(declare-fun m!4583973 () Bool)

(assert (=> b!4001576 m!4583973))

(declare-fun m!4583975 () Bool)

(assert (=> b!4001576 m!4583975))

(assert (=> b!4001576 m!4583697))

(declare-fun m!4583977 () Bool)

(assert (=> b!4001580 m!4583977))

(assert (=> b!4001580 m!4583697))

(assert (=> b!4001580 m!4583977))

(assert (=> b!4001580 m!4583697))

(declare-fun m!4583979 () Bool)

(assert (=> b!4001580 m!4583979))

(declare-fun m!4583981 () Bool)

(assert (=> b!4001580 m!4583981))

(declare-fun m!4583983 () Bool)

(assert (=> d!1183670 m!4583983))

(declare-fun m!4583985 () Bool)

(assert (=> d!1183670 m!4583985))

(declare-fun m!4583987 () Bool)

(assert (=> d!1183670 m!4583987))

(declare-fun m!4583989 () Bool)

(assert (=> d!1183670 m!4583989))

(assert (=> b!4001579 m!4583973))

(declare-fun m!4583991 () Bool)

(assert (=> b!4001579 m!4583991))

(assert (=> b!4001579 m!4583991))

(declare-fun m!4583993 () Bool)

(assert (=> b!4001579 m!4583993))

(assert (=> b!4001579 m!4583993))

(declare-fun m!4583995 () Bool)

(assert (=> b!4001579 m!4583995))

(declare-fun m!4583997 () Bool)

(assert (=> b!4001577 m!4583997))

(declare-fun m!4584001 () Bool)

(assert (=> b!4001577 m!4584001))

(assert (=> b!4001577 m!4583997))

(declare-fun m!4584003 () Bool)

(assert (=> b!4001577 m!4584003))

(assert (=> b!4001577 m!4583997))

(declare-fun m!4584007 () Bool)

(assert (=> b!4001577 m!4584007))

(assert (=> b!4001577 m!4583697))

(declare-fun m!4584009 () Bool)

(assert (=> b!4001577 m!4584009))

(assert (=> b!4001577 m!4583977))

(assert (=> b!4001577 m!4583977))

(assert (=> b!4001577 m!4583697))

(assert (=> b!4001577 m!4583979))

(assert (=> b!4001577 m!4583997))

(declare-fun m!4584016 () Bool)

(assert (=> b!4001577 m!4584016))

(assert (=> b!4001581 m!4583973))

(assert (=> b!4001574 m!4583973))

(assert (=> b!4001574 m!4583991))

(assert (=> b!4001574 m!4583991))

(assert (=> b!4001574 m!4583993))

(assert (=> b!4001574 m!4583993))

(declare-fun m!4584021 () Bool)

(assert (=> b!4001574 m!4584021))

(assert (=> b!4001575 m!4583973))

(declare-fun m!4584027 () Bool)

(assert (=> b!4001575 m!4584027))

(assert (=> b!4001573 m!4583973))

(declare-fun m!4584029 () Bool)

(assert (=> b!4001573 m!4584029))

(assert (=> b!4001573 m!4584029))

(declare-fun m!4584031 () Bool)

(assert (=> b!4001573 m!4584031))

(assert (=> bm!285976 d!1183670))

(assert (=> b!4001258 d!1183602))

(assert (=> b!4001258 d!1183604))

(declare-fun d!1183686 () Bool)

(declare-fun lt!1415215 () Int)

(assert (=> d!1183686 (>= lt!1415215 0)))

(declare-fun e!2481295 () Int)

(assert (=> d!1183686 (= lt!1415215 e!2481295)))

(declare-fun c!692061 () Bool)

(assert (=> d!1183686 (= c!692061 (is-Nil!42807 lt!1415167))))

(assert (=> d!1183686 (= (size!32010 lt!1415167) lt!1415215)))

(declare-fun b!4001596 () Bool)

(assert (=> b!4001596 (= e!2481295 0)))

(declare-fun b!4001597 () Bool)

(assert (=> b!4001597 (= e!2481295 (+ 1 (size!32010 (t!332210 lt!1415167))))))

(assert (= (and d!1183686 c!692061) b!4001596))

(assert (= (and d!1183686 (not c!692061)) b!4001597))

(declare-fun m!4584035 () Bool)

(assert (=> b!4001597 m!4584035))

(assert (=> b!4001261 d!1183686))

(assert (=> b!4001261 d!1183584))

(declare-fun d!1183690 () Bool)

(declare-fun lt!1415217 () Int)

(assert (=> d!1183690 (>= lt!1415217 0)))

(declare-fun e!2481296 () Int)

(assert (=> d!1183690 (= lt!1415217 e!2481296)))

(declare-fun c!692062 () Bool)

(assert (=> d!1183690 (= c!692062 (is-Nil!42807 newSuffixResult!27))))

(assert (=> d!1183690 (= (size!32010 newSuffixResult!27) lt!1415217)))

(declare-fun b!4001598 () Bool)

(assert (=> b!4001598 (= e!2481296 0)))

(declare-fun b!4001599 () Bool)

(assert (=> b!4001599 (= e!2481296 (+ 1 (size!32010 (t!332210 newSuffixResult!27))))))

(assert (= (and d!1183690 c!692062) b!4001598))

(assert (= (and d!1183690 (not c!692062)) b!4001599))

(declare-fun m!4584037 () Bool)

(assert (=> b!4001599 m!4584037))

(assert (=> b!4001261 d!1183690))

(declare-fun d!1183692 () Bool)

(declare-fun lt!1415218 () Int)

(assert (=> d!1183692 (>= lt!1415218 0)))

(declare-fun e!2481297 () Int)

(assert (=> d!1183692 (= lt!1415218 e!2481297)))

(declare-fun c!692063 () Bool)

(assert (=> d!1183692 (= c!692063 (is-Nil!42807 (_2!24126 (get!14076 lt!1415142))))))

(assert (=> d!1183692 (= (size!32010 (_2!24126 (get!14076 lt!1415142))) lt!1415218)))

(declare-fun b!4001600 () Bool)

(assert (=> b!4001600 (= e!2481297 0)))

(declare-fun b!4001601 () Bool)

(assert (=> b!4001601 (= e!2481297 (+ 1 (size!32010 (t!332210 (_2!24126 (get!14076 lt!1415142))))))))

(assert (= (and d!1183692 c!692063) b!4001600))

(assert (= (and d!1183692 (not c!692063)) b!4001601))

(declare-fun m!4584039 () Bool)

(assert (=> b!4001601 m!4584039))

(assert (=> b!4001212 d!1183692))

(assert (=> b!4001212 d!1183638))

(declare-fun d!1183694 () Bool)

(declare-fun lt!1415219 () Int)

(assert (=> d!1183694 (>= lt!1415219 0)))

(declare-fun e!2481299 () Int)

(assert (=> d!1183694 (= lt!1415219 e!2481299)))

(declare-fun c!692064 () Bool)

(assert (=> d!1183694 (= c!692064 (is-Nil!42807 lt!1415103))))

(assert (=> d!1183694 (= (size!32010 lt!1415103) lt!1415219)))

(declare-fun b!4001603 () Bool)

(assert (=> b!4001603 (= e!2481299 0)))

(declare-fun b!4001604 () Bool)

(assert (=> b!4001604 (= e!2481299 (+ 1 (size!32010 (t!332210 lt!1415103))))))

(assert (= (and d!1183694 c!692064) b!4001603))

(assert (= (and d!1183694 (not c!692064)) b!4001604))

(declare-fun m!4584045 () Bool)

(assert (=> b!4001604 m!4584045))

(assert (=> b!4001212 d!1183694))

(declare-fun d!1183696 () Bool)

(assert (=> d!1183696 (= (isEmpty!25583 lt!1415142) (not (is-Some!9206 lt!1415142)))))

(assert (=> d!1183564 d!1183696))

(declare-fun b!4001605 () Bool)

(declare-fun e!2481300 () Bool)

(declare-fun e!2481301 () Bool)

(assert (=> b!4001605 (= e!2481300 e!2481301)))

(declare-fun res!1625945 () Bool)

(assert (=> b!4001605 (=> (not res!1625945) (not e!2481301))))

(assert (=> b!4001605 (= res!1625945 (not (is-Nil!42807 lt!1415103)))))

(declare-fun b!4001606 () Bool)

(declare-fun res!1625944 () Bool)

(assert (=> b!4001606 (=> (not res!1625944) (not e!2481301))))

(assert (=> b!4001606 (= res!1625944 (= (head!8504 lt!1415103) (head!8504 lt!1415103)))))

(declare-fun b!4001607 () Bool)

(assert (=> b!4001607 (= e!2481301 (isPrefix!3880 (tail!6236 lt!1415103) (tail!6236 lt!1415103)))))

(declare-fun d!1183700 () Bool)

(declare-fun e!2481302 () Bool)

(assert (=> d!1183700 e!2481302))

(declare-fun res!1625943 () Bool)

(assert (=> d!1183700 (=> res!1625943 e!2481302)))

(declare-fun lt!1415220 () Bool)

(assert (=> d!1183700 (= res!1625943 (not lt!1415220))))

(assert (=> d!1183700 (= lt!1415220 e!2481300)))

(declare-fun res!1625942 () Bool)

(assert (=> d!1183700 (=> res!1625942 e!2481300)))

(assert (=> d!1183700 (= res!1625942 (is-Nil!42807 lt!1415103))))

(assert (=> d!1183700 (= (isPrefix!3880 lt!1415103 lt!1415103) lt!1415220)))

(declare-fun b!4001608 () Bool)

(assert (=> b!4001608 (= e!2481302 (>= (size!32010 lt!1415103) (size!32010 lt!1415103)))))

(assert (= (and d!1183700 (not res!1625942)) b!4001605))

(assert (= (and b!4001605 res!1625945) b!4001606))

(assert (= (and b!4001606 res!1625944) b!4001607))

(assert (= (and d!1183700 (not res!1625943)) b!4001608))

(declare-fun m!4584051 () Bool)

(assert (=> b!4001606 m!4584051))

(assert (=> b!4001606 m!4584051))

(declare-fun m!4584053 () Bool)

(assert (=> b!4001607 m!4584053))

(assert (=> b!4001607 m!4584053))

(assert (=> b!4001607 m!4584053))

(assert (=> b!4001607 m!4584053))

(declare-fun m!4584055 () Bool)

(assert (=> b!4001607 m!4584055))

(assert (=> b!4001608 m!4583697))

(assert (=> b!4001608 m!4583697))

(assert (=> d!1183564 d!1183700))

(declare-fun d!1183702 () Bool)

(assert (=> d!1183702 (isPrefix!3880 lt!1415103 lt!1415103)))

(declare-fun lt!1415223 () Unit!61797)

(declare-fun choose!24144 (List!42931 List!42931) Unit!61797)

(assert (=> d!1183702 (= lt!1415223 (choose!24144 lt!1415103 lt!1415103))))

(assert (=> d!1183702 (= (lemmaIsPrefixRefl!2472 lt!1415103 lt!1415103) lt!1415223)))

(declare-fun bs!588857 () Bool)

(assert (= bs!588857 d!1183702))

(assert (=> bs!588857 m!4583707))

(declare-fun m!4584057 () Bool)

(assert (=> bs!588857 m!4584057))

(assert (=> d!1183564 d!1183702))

(declare-fun d!1183704 () Bool)

(assert (=> d!1183704 true))

(declare-fun lt!1415226 () Bool)

(declare-fun lambda!126914 () Int)

(declare-fun forall!8344 (List!42933 Int) Bool)

(assert (=> d!1183704 (= lt!1415226 (forall!8344 rules!2999 lambda!126914))))

(declare-fun e!2481308 () Bool)

(assert (=> d!1183704 (= lt!1415226 e!2481308)))

(declare-fun res!1625951 () Bool)

(assert (=> d!1183704 (=> res!1625951 e!2481308)))

(assert (=> d!1183704 (= res!1625951 (not (is-Cons!42809 rules!2999)))))

(assert (=> d!1183704 (= (rulesValidInductive!2476 thiss!21717 rules!2999) lt!1415226)))

(declare-fun b!4001613 () Bool)

(declare-fun e!2481307 () Bool)

(assert (=> b!4001613 (= e!2481308 e!2481307)))

(declare-fun res!1625950 () Bool)

(assert (=> b!4001613 (=> (not res!1625950) (not e!2481307))))

(assert (=> b!4001613 (= res!1625950 (ruleValid!2725 thiss!21717 (h!48229 rules!2999)))))

(declare-fun b!4001614 () Bool)

(assert (=> b!4001614 (= e!2481307 (rulesValidInductive!2476 thiss!21717 (t!332212 rules!2999)))))

(assert (= (and d!1183704 (not res!1625951)) b!4001613))

(assert (= (and b!4001613 res!1625950) b!4001614))

(declare-fun m!4584059 () Bool)

(assert (=> d!1183704 m!4584059))

(assert (=> b!4001613 m!4583989))

(declare-fun m!4584061 () Bool)

(assert (=> b!4001614 m!4584061))

(assert (=> d!1183564 d!1183704))

(declare-fun bs!588858 () Bool)

(declare-fun d!1183706 () Bool)

(assert (= bs!588858 (and d!1183706 d!1183644)))

(declare-fun lambda!126915 () Int)

(assert (=> bs!588858 (= (and (= (toChars!9140 (transformation!6793 (h!48229 rules!2999))) (toChars!9140 (transformation!6793 (rule!9825 token!484)))) (= (toValue!9281 (transformation!6793 (h!48229 rules!2999))) (toValue!9281 (transformation!6793 (rule!9825 token!484))))) (= lambda!126915 lambda!126908))))

(assert (=> d!1183706 true))

(assert (=> d!1183706 (< (dynLambda!18159 order!22431 (toChars!9140 (transformation!6793 (h!48229 rules!2999)))) (dynLambda!18160 order!22433 lambda!126915))))

(assert (=> d!1183706 true))

(assert (=> d!1183706 (< (dynLambda!18161 order!22435 (toValue!9281 (transformation!6793 (h!48229 rules!2999)))) (dynLambda!18160 order!22433 lambda!126915))))

(assert (=> d!1183706 (= (semiInverseModEq!2910 (toChars!9140 (transformation!6793 (h!48229 rules!2999))) (toValue!9281 (transformation!6793 (h!48229 rules!2999)))) (Forall!1465 lambda!126915))))

(declare-fun bs!588859 () Bool)

(assert (= bs!588859 d!1183706))

(declare-fun m!4584063 () Bool)

(assert (=> bs!588859 m!4584063))

(assert (=> d!1183580 d!1183706))

(declare-fun b!4001618 () Bool)

(declare-fun e!2481309 () List!42931)

(assert (=> b!4001618 (= e!2481309 (Cons!42807 (h!48227 (t!332210 prefix!494)) (++!11195 (t!332210 (t!332210 prefix!494)) suffix!1299)))))

(declare-fun d!1183708 () Bool)

(declare-fun e!2481310 () Bool)

(assert (=> d!1183708 e!2481310))

(declare-fun res!1625952 () Bool)

(assert (=> d!1183708 (=> (not res!1625952) (not e!2481310))))

(declare-fun lt!1415227 () List!42931)

(assert (=> d!1183708 (= res!1625952 (= (content!6490 lt!1415227) (set.union (content!6490 (t!332210 prefix!494)) (content!6490 suffix!1299))))))

(assert (=> d!1183708 (= lt!1415227 e!2481309)))

(declare-fun c!692065 () Bool)

(assert (=> d!1183708 (= c!692065 (is-Nil!42807 (t!332210 prefix!494)))))

(assert (=> d!1183708 (= (++!11195 (t!332210 prefix!494) suffix!1299) lt!1415227)))

(declare-fun b!4001619 () Bool)

(declare-fun res!1625953 () Bool)

(assert (=> b!4001619 (=> (not res!1625953) (not e!2481310))))

(assert (=> b!4001619 (= res!1625953 (= (size!32010 lt!1415227) (+ (size!32010 (t!332210 prefix!494)) (size!32010 suffix!1299))))))

(declare-fun b!4001620 () Bool)

(assert (=> b!4001620 (= e!2481310 (or (not (= suffix!1299 Nil!42807)) (= lt!1415227 (t!332210 prefix!494))))))

(declare-fun b!4001617 () Bool)

(assert (=> b!4001617 (= e!2481309 suffix!1299)))

(assert (= (and d!1183708 c!692065) b!4001617))

(assert (= (and d!1183708 (not c!692065)) b!4001618))

(assert (= (and d!1183708 res!1625952) b!4001619))

(assert (= (and b!4001619 res!1625953) b!4001620))

(declare-fun m!4584065 () Bool)

(assert (=> b!4001618 m!4584065))

(declare-fun m!4584067 () Bool)

(assert (=> d!1183708 m!4584067))

(assert (=> d!1183708 m!4583939))

(assert (=> d!1183708 m!4583731))

(declare-fun m!4584069 () Bool)

(assert (=> b!4001619 m!4584069))

(assert (=> b!4001619 m!4583739))

(assert (=> b!4001619 m!4583549))

(assert (=> b!4001217 d!1183708))

(declare-fun d!1183710 () Bool)

(declare-fun lt!1415228 () Int)

(assert (=> d!1183710 (>= lt!1415228 0)))

(declare-fun e!2481311 () Int)

(assert (=> d!1183710 (= lt!1415228 e!2481311)))

(declare-fun c!692066 () Bool)

(assert (=> d!1183710 (= c!692066 (is-Nil!42807 lt!1415168))))

(assert (=> d!1183710 (= (size!32010 lt!1415168) lt!1415228)))

(declare-fun b!4001621 () Bool)

(assert (=> b!4001621 (= e!2481311 0)))

(declare-fun b!4001622 () Bool)

(assert (=> b!4001622 (= e!2481311 (+ 1 (size!32010 (t!332210 lt!1415168))))))

(assert (= (and d!1183710 c!692066) b!4001621))

(assert (= (and d!1183710 (not c!692066)) b!4001622))

(declare-fun m!4584071 () Bool)

(assert (=> b!4001622 m!4584071))

(assert (=> b!4001265 d!1183710))

(assert (=> b!4001265 d!1183582))

(assert (=> b!4001265 d!1183604))

(declare-fun d!1183712 () Bool)

(declare-fun lt!1415229 () Int)

(assert (=> d!1183712 (>= lt!1415229 0)))

(declare-fun e!2481312 () Int)

(assert (=> d!1183712 (= lt!1415229 e!2481312)))

(declare-fun c!692067 () Bool)

(assert (=> d!1183712 (= c!692067 (is-Nil!42807 (t!332210 prefix!494)))))

(assert (=> d!1183712 (= (size!32010 (t!332210 prefix!494)) lt!1415229)))

(declare-fun b!4001623 () Bool)

(assert (=> b!4001623 (= e!2481312 0)))

(declare-fun b!4001624 () Bool)

(assert (=> b!4001624 (= e!2481312 (+ 1 (size!32010 (t!332210 (t!332210 prefix!494)))))))

(assert (= (and d!1183712 c!692067) b!4001623))

(assert (= (and d!1183712 (not c!692067)) b!4001624))

(declare-fun m!4584073 () Bool)

(assert (=> b!4001624 m!4584073))

(assert (=> b!4001226 d!1183712))

(declare-fun b!4001626 () Bool)

(declare-fun e!2481313 () List!42931)

(assert (=> b!4001626 (= e!2481313 (Cons!42807 (h!48227 (t!332210 lt!1415100)) (++!11195 (t!332210 (t!332210 lt!1415100)) suffixResult!105)))))

(declare-fun d!1183714 () Bool)

(declare-fun e!2481314 () Bool)

(assert (=> d!1183714 e!2481314))

(declare-fun res!1625954 () Bool)

(assert (=> d!1183714 (=> (not res!1625954) (not e!2481314))))

(declare-fun lt!1415230 () List!42931)

(assert (=> d!1183714 (= res!1625954 (= (content!6490 lt!1415230) (set.union (content!6490 (t!332210 lt!1415100)) (content!6490 suffixResult!105))))))

(assert (=> d!1183714 (= lt!1415230 e!2481313)))

(declare-fun c!692068 () Bool)

(assert (=> d!1183714 (= c!692068 (is-Nil!42807 (t!332210 lt!1415100)))))

(assert (=> d!1183714 (= (++!11195 (t!332210 lt!1415100) suffixResult!105) lt!1415230)))

(declare-fun b!4001627 () Bool)

(declare-fun res!1625955 () Bool)

(assert (=> b!4001627 (=> (not res!1625955) (not e!2481314))))

(assert (=> b!4001627 (= res!1625955 (= (size!32010 lt!1415230) (+ (size!32010 (t!332210 lt!1415100)) (size!32010 suffixResult!105))))))

(declare-fun b!4001628 () Bool)

(assert (=> b!4001628 (= e!2481314 (or (not (= suffixResult!105 Nil!42807)) (= lt!1415230 (t!332210 lt!1415100))))))

(declare-fun b!4001625 () Bool)

(assert (=> b!4001625 (= e!2481313 suffixResult!105)))

(assert (= (and d!1183714 c!692068) b!4001625))

(assert (= (and d!1183714 (not c!692068)) b!4001626))

(assert (= (and d!1183714 res!1625954) b!4001627))

(assert (= (and b!4001627 res!1625955) b!4001628))

(declare-fun m!4584075 () Bool)

(assert (=> b!4001626 m!4584075))

(declare-fun m!4584077 () Bool)

(assert (=> d!1183714 m!4584077))

(declare-fun m!4584079 () Bool)

(assert (=> d!1183714 m!4584079))

(assert (=> d!1183714 m!4583635))

(declare-fun m!4584081 () Bool)

(assert (=> b!4001627 m!4584081))

(assert (=> b!4001627 m!4583741))

(assert (=> b!4001627 m!4583639))

(assert (=> b!4001146 d!1183714))

(declare-fun d!1183716 () Bool)

(assert (=> d!1183716 (= (list!15897 lt!1415153) (list!15899 (c!691983 lt!1415153)))))

(declare-fun bs!588860 () Bool)

(assert (= bs!588860 d!1183716))

(declare-fun m!4584083 () Bool)

(assert (=> bs!588860 m!4584083))

(assert (=> d!1183588 d!1183716))

(assert (=> d!1183554 d!1183552))

(declare-fun d!1183718 () Bool)

(assert (=> d!1183718 (ruleValid!2725 thiss!21717 (rule!9825 token!484))))

(assert (=> d!1183718 true))

(declare-fun _$65!1419 () Unit!61797)

(assert (=> d!1183718 (= (choose!24142 thiss!21717 (rule!9825 token!484) rules!2999) _$65!1419)))

(declare-fun bs!588861 () Bool)

(assert (= bs!588861 d!1183718))

(assert (=> bs!588861 m!4583545))

(assert (=> d!1183554 d!1183718))

(declare-fun d!1183720 () Bool)

(declare-fun lt!1415231 () Bool)

(assert (=> d!1183720 (= lt!1415231 (set.member (rule!9825 token!484) (content!6492 rules!2999)))))

(declare-fun e!2481316 () Bool)

(assert (=> d!1183720 (= lt!1415231 e!2481316)))

(declare-fun res!1625957 () Bool)

(assert (=> d!1183720 (=> (not res!1625957) (not e!2481316))))

(assert (=> d!1183720 (= res!1625957 (is-Cons!42809 rules!2999))))

(assert (=> d!1183720 (= (contains!8514 rules!2999 (rule!9825 token!484)) lt!1415231)))

(declare-fun b!4001629 () Bool)

(declare-fun e!2481315 () Bool)

(assert (=> b!4001629 (= e!2481316 e!2481315)))

(declare-fun res!1625956 () Bool)

(assert (=> b!4001629 (=> res!1625956 e!2481315)))

(assert (=> b!4001629 (= res!1625956 (= (h!48229 rules!2999) (rule!9825 token!484)))))

(declare-fun b!4001630 () Bool)

(assert (=> b!4001630 (= e!2481315 (contains!8514 (t!332212 rules!2999) (rule!9825 token!484)))))

(assert (= (and d!1183720 res!1625957) b!4001629))

(assert (= (and b!4001629 (not res!1625956)) b!4001630))

(assert (=> d!1183720 m!4583959))

(declare-fun m!4584085 () Bool)

(assert (=> d!1183720 m!4584085))

(declare-fun m!4584087 () Bool)

(assert (=> b!4001630 m!4584087))

(assert (=> d!1183554 d!1183720))

(declare-fun d!1183722 () Bool)

(declare-fun lt!1415232 () Int)

(assert (=> d!1183722 (>= lt!1415232 0)))

(declare-fun e!2481317 () Int)

(assert (=> d!1183722 (= lt!1415232 e!2481317)))

(declare-fun c!692069 () Bool)

(assert (=> d!1183722 (= c!692069 (is-Nil!42807 (t!332210 suffix!1299)))))

(assert (=> d!1183722 (= (size!32010 (t!332210 suffix!1299)) lt!1415232)))

(declare-fun b!4001631 () Bool)

(assert (=> b!4001631 (= e!2481317 0)))

(declare-fun b!4001632 () Bool)

(assert (=> b!4001632 (= e!2481317 (+ 1 (size!32010 (t!332210 (t!332210 suffix!1299)))))))

(assert (= (and d!1183722 c!692069) b!4001631))

(assert (= (and d!1183722 (not c!692069)) b!4001632))

(declare-fun m!4584089 () Bool)

(assert (=> b!4001632 m!4584089))

(assert (=> b!4001297 d!1183722))

(declare-fun d!1183724 () Bool)

(declare-fun lt!1415233 () Int)

(assert (=> d!1183724 (>= lt!1415233 0)))

(declare-fun e!2481318 () Int)

(assert (=> d!1183724 (= lt!1415233 e!2481318)))

(declare-fun c!692070 () Bool)

(assert (=> d!1183724 (= c!692070 (is-Nil!42807 (originalCharacters!7393 token!484)))))

(assert (=> d!1183724 (= (size!32010 (originalCharacters!7393 token!484)) lt!1415233)))

(declare-fun b!4001633 () Bool)

(assert (=> b!4001633 (= e!2481318 0)))

(declare-fun b!4001634 () Bool)

(assert (=> b!4001634 (= e!2481318 (+ 1 (size!32010 (t!332210 (originalCharacters!7393 token!484)))))))

(assert (= (and d!1183724 c!692070) b!4001633))

(assert (= (and d!1183724 (not c!692070)) b!4001634))

(declare-fun m!4584091 () Bool)

(assert (=> b!4001634 m!4584091))

(assert (=> b!4001239 d!1183724))

(declare-fun d!1183726 () Bool)

(assert (=> d!1183726 (= (isDefined!7055 lt!1415142) (not (isEmpty!25583 lt!1415142)))))

(declare-fun bs!588862 () Bool)

(assert (= bs!588862 d!1183726))

(assert (=> bs!588862 m!4583705))

(assert (=> b!4001208 d!1183726))

(declare-fun d!1183728 () Bool)

(declare-fun c!692071 () Bool)

(assert (=> d!1183728 (= c!692071 (is-Nil!42807 lt!1415120))))

(declare-fun e!2481319 () (Set C!23582))

(assert (=> d!1183728 (= (content!6490 lt!1415120) e!2481319)))

(declare-fun b!4001635 () Bool)

(assert (=> b!4001635 (= e!2481319 (as set.empty (Set C!23582)))))

(declare-fun b!4001636 () Bool)

(assert (=> b!4001636 (= e!2481319 (set.union (set.insert (h!48227 lt!1415120) (as set.empty (Set C!23582))) (content!6490 (t!332210 lt!1415120))))))

(assert (= (and d!1183728 c!692071) b!4001635))

(assert (= (and d!1183728 (not c!692071)) b!4001636))

(declare-fun m!4584093 () Bool)

(assert (=> b!4001636 m!4584093))

(declare-fun m!4584095 () Bool)

(assert (=> b!4001636 m!4584095))

(assert (=> d!1183546 d!1183728))

(declare-fun d!1183730 () Bool)

(declare-fun c!692072 () Bool)

(assert (=> d!1183730 (= c!692072 (is-Nil!42807 lt!1415100))))

(declare-fun e!2481320 () (Set C!23582))

(assert (=> d!1183730 (= (content!6490 lt!1415100) e!2481320)))

(declare-fun b!4001637 () Bool)

(assert (=> b!4001637 (= e!2481320 (as set.empty (Set C!23582)))))

(declare-fun b!4001638 () Bool)

(assert (=> b!4001638 (= e!2481320 (set.union (set.insert (h!48227 lt!1415100) (as set.empty (Set C!23582))) (content!6490 (t!332210 lt!1415100))))))

(assert (= (and d!1183730 c!692072) b!4001637))

(assert (= (and d!1183730 (not c!692072)) b!4001638))

(declare-fun m!4584097 () Bool)

(assert (=> b!4001638 m!4584097))

(assert (=> b!4001638 m!4584079))

(assert (=> d!1183546 d!1183730))

(declare-fun d!1183732 () Bool)

(declare-fun c!692073 () Bool)

(assert (=> d!1183732 (= c!692073 (is-Nil!42807 suffixResult!105))))

(declare-fun e!2481321 () (Set C!23582))

(assert (=> d!1183732 (= (content!6490 suffixResult!105) e!2481321)))

(declare-fun b!4001639 () Bool)

(assert (=> b!4001639 (= e!2481321 (as set.empty (Set C!23582)))))

(declare-fun b!4001640 () Bool)

(assert (=> b!4001640 (= e!2481321 (set.union (set.insert (h!48227 suffixResult!105) (as set.empty (Set C!23582))) (content!6490 (t!332210 suffixResult!105))))))

(assert (= (and d!1183732 c!692073) b!4001639))

(assert (= (and d!1183732 (not c!692073)) b!4001640))

(declare-fun m!4584099 () Bool)

(assert (=> b!4001640 m!4584099))

(declare-fun m!4584101 () Bool)

(assert (=> b!4001640 m!4584101))

(assert (=> d!1183546 d!1183732))

(declare-fun d!1183734 () Bool)

(assert (=> d!1183734 (= (isEmpty!25584 (originalCharacters!7393 token!484)) (is-Nil!42807 (originalCharacters!7393 token!484)))))

(assert (=> d!1183590 d!1183734))

(declare-fun d!1183736 () Bool)

(declare-fun c!692074 () Bool)

(assert (=> d!1183736 (= c!692074 (is-Nil!42807 lt!1415146))))

(declare-fun e!2481322 () (Set C!23582))

(assert (=> d!1183736 (= (content!6490 lt!1415146) e!2481322)))

(declare-fun b!4001641 () Bool)

(assert (=> b!4001641 (= e!2481322 (as set.empty (Set C!23582)))))

(declare-fun b!4001642 () Bool)

(assert (=> b!4001642 (= e!2481322 (set.union (set.insert (h!48227 lt!1415146) (as set.empty (Set C!23582))) (content!6490 (t!332210 lt!1415146))))))

(assert (= (and d!1183736 c!692074) b!4001641))

(assert (= (and d!1183736 (not c!692074)) b!4001642))

(declare-fun m!4584103 () Bool)

(assert (=> b!4001642 m!4584103))

(declare-fun m!4584105 () Bool)

(assert (=> b!4001642 m!4584105))

(assert (=> d!1183574 d!1183736))

(assert (=> d!1183574 d!1183648))

(declare-fun d!1183738 () Bool)

(declare-fun c!692075 () Bool)

(assert (=> d!1183738 (= c!692075 (is-Nil!42807 suffix!1299))))

(declare-fun e!2481323 () (Set C!23582))

(assert (=> d!1183738 (= (content!6490 suffix!1299) e!2481323)))

(declare-fun b!4001643 () Bool)

(assert (=> b!4001643 (= e!2481323 (as set.empty (Set C!23582)))))

(declare-fun b!4001644 () Bool)

(assert (=> b!4001644 (= e!2481323 (set.union (set.insert (h!48227 suffix!1299) (as set.empty (Set C!23582))) (content!6490 (t!332210 suffix!1299))))))

(assert (= (and d!1183738 c!692075) b!4001643))

(assert (= (and d!1183738 (not c!692075)) b!4001644))

(declare-fun m!4584107 () Bool)

(assert (=> b!4001644 m!4584107))

(declare-fun m!4584109 () Bool)

(assert (=> b!4001644 m!4584109))

(assert (=> d!1183574 d!1183738))

(declare-fun b!4001645 () Bool)

(declare-fun res!1625963 () Bool)

(declare-fun e!2481325 () Bool)

(assert (=> b!4001645 (=> (not res!1625963) (not e!2481325))))

(declare-fun lt!1415235 () Option!9207)

(assert (=> b!4001645 (= res!1625963 (= (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415235)))) (originalCharacters!7393 (_1!24126 (get!14076 lt!1415235)))))))

(declare-fun b!4001646 () Bool)

(declare-fun e!2481324 () Bool)

(assert (=> b!4001646 (= e!2481324 e!2481325)))

(declare-fun res!1625960 () Bool)

(assert (=> b!4001646 (=> (not res!1625960) (not e!2481325))))

(assert (=> b!4001646 (= res!1625960 (isDefined!7055 lt!1415235))))

(declare-fun b!4001647 () Bool)

(declare-fun res!1625959 () Bool)

(assert (=> b!4001647 (=> (not res!1625959) (not e!2481325))))

(assert (=> b!4001647 (= res!1625959 (matchR!5675 (regex!6793 (rule!9825 (_1!24126 (get!14076 lt!1415235)))) (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415235))))))))

(declare-fun b!4001648 () Bool)

(declare-fun e!2481326 () Option!9207)

(declare-fun lt!1415237 () Option!9207)

(declare-fun lt!1415236 () Option!9207)

(assert (=> b!4001648 (= e!2481326 (ite (and (is-None!9206 lt!1415237) (is-None!9206 lt!1415236)) None!9206 (ite (is-None!9206 lt!1415236) lt!1415237 (ite (is-None!9206 lt!1415237) lt!1415236 (ite (>= (size!32009 (_1!24126 (v!39566 lt!1415237))) (size!32009 (_1!24126 (v!39566 lt!1415236)))) lt!1415237 lt!1415236)))))))

(declare-fun call!285991 () Option!9207)

(assert (=> b!4001648 (= lt!1415237 call!285991)))

(assert (=> b!4001648 (= lt!1415236 (maxPrefix!3680 thiss!21717 (t!332212 (t!332212 rules!2999)) lt!1415103))))

(declare-fun d!1183740 () Bool)

(assert (=> d!1183740 e!2481324))

(declare-fun res!1625964 () Bool)

(assert (=> d!1183740 (=> res!1625964 e!2481324)))

(assert (=> d!1183740 (= res!1625964 (isEmpty!25583 lt!1415235))))

(assert (=> d!1183740 (= lt!1415235 e!2481326)))

(declare-fun c!692076 () Bool)

(assert (=> d!1183740 (= c!692076 (and (is-Cons!42809 (t!332212 rules!2999)) (is-Nil!42809 (t!332212 (t!332212 rules!2999)))))))

(declare-fun lt!1415234 () Unit!61797)

(declare-fun lt!1415238 () Unit!61797)

(assert (=> d!1183740 (= lt!1415234 lt!1415238)))

(assert (=> d!1183740 (isPrefix!3880 lt!1415103 lt!1415103)))

(assert (=> d!1183740 (= lt!1415238 (lemmaIsPrefixRefl!2472 lt!1415103 lt!1415103))))

(assert (=> d!1183740 (rulesValidInductive!2476 thiss!21717 (t!332212 rules!2999))))

(assert (=> d!1183740 (= (maxPrefix!3680 thiss!21717 (t!332212 rules!2999) lt!1415103) lt!1415235)))

(declare-fun bm!285986 () Bool)

(assert (=> bm!285986 (= call!285991 (maxPrefixOneRule!2714 thiss!21717 (h!48229 (t!332212 rules!2999)) lt!1415103))))

(declare-fun b!4001649 () Bool)

(declare-fun res!1625958 () Bool)

(assert (=> b!4001649 (=> (not res!1625958) (not e!2481325))))

(assert (=> b!4001649 (= res!1625958 (= (value!214236 (_1!24126 (get!14076 lt!1415235))) (apply!10004 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415235)))) (seqFromList!5032 (originalCharacters!7393 (_1!24126 (get!14076 lt!1415235)))))))))

(declare-fun b!4001650 () Bool)

(declare-fun res!1625961 () Bool)

(assert (=> b!4001650 (=> (not res!1625961) (not e!2481325))))

(assert (=> b!4001650 (= res!1625961 (< (size!32010 (_2!24126 (get!14076 lt!1415235))) (size!32010 lt!1415103)))))

(declare-fun b!4001651 () Bool)

(declare-fun res!1625962 () Bool)

(assert (=> b!4001651 (=> (not res!1625962) (not e!2481325))))

(assert (=> b!4001651 (= res!1625962 (= (++!11195 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415235)))) (_2!24126 (get!14076 lt!1415235))) lt!1415103))))

(declare-fun b!4001652 () Bool)

(assert (=> b!4001652 (= e!2481325 (contains!8514 (t!332212 rules!2999) (rule!9825 (_1!24126 (get!14076 lt!1415235)))))))

(declare-fun b!4001653 () Bool)

(assert (=> b!4001653 (= e!2481326 call!285991)))

(assert (= (and d!1183740 c!692076) b!4001653))

(assert (= (and d!1183740 (not c!692076)) b!4001648))

(assert (= (or b!4001653 b!4001648) bm!285986))

(assert (= (and d!1183740 (not res!1625964)) b!4001646))

(assert (= (and b!4001646 res!1625960) b!4001645))

(assert (= (and b!4001645 res!1625963) b!4001650))

(assert (= (and b!4001650 res!1625961) b!4001651))

(assert (= (and b!4001651 res!1625962) b!4001649))

(assert (= (and b!4001649 res!1625958) b!4001647))

(assert (= (and b!4001647 res!1625959) b!4001652))

(declare-fun m!4584111 () Bool)

(assert (=> b!4001652 m!4584111))

(declare-fun m!4584113 () Bool)

(assert (=> b!4001652 m!4584113))

(assert (=> b!4001650 m!4584111))

(declare-fun m!4584115 () Bool)

(assert (=> b!4001650 m!4584115))

(assert (=> b!4001650 m!4583697))

(declare-fun m!4584117 () Bool)

(assert (=> b!4001648 m!4584117))

(assert (=> b!4001649 m!4584111))

(declare-fun m!4584119 () Bool)

(assert (=> b!4001649 m!4584119))

(assert (=> b!4001649 m!4584119))

(declare-fun m!4584121 () Bool)

(assert (=> b!4001649 m!4584121))

(declare-fun m!4584123 () Bool)

(assert (=> d!1183740 m!4584123))

(assert (=> d!1183740 m!4583707))

(assert (=> d!1183740 m!4583709))

(assert (=> d!1183740 m!4584061))

(assert (=> b!4001647 m!4584111))

(declare-fun m!4584125 () Bool)

(assert (=> b!4001647 m!4584125))

(assert (=> b!4001647 m!4584125))

(declare-fun m!4584127 () Bool)

(assert (=> b!4001647 m!4584127))

(assert (=> b!4001647 m!4584127))

(declare-fun m!4584129 () Bool)

(assert (=> b!4001647 m!4584129))

(declare-fun m!4584131 () Bool)

(assert (=> b!4001646 m!4584131))

(assert (=> b!4001651 m!4584111))

(assert (=> b!4001651 m!4584125))

(assert (=> b!4001651 m!4584125))

(assert (=> b!4001651 m!4584127))

(assert (=> b!4001651 m!4584127))

(declare-fun m!4584133 () Bool)

(assert (=> b!4001651 m!4584133))

(assert (=> b!4001645 m!4584111))

(assert (=> b!4001645 m!4584125))

(assert (=> b!4001645 m!4584125))

(assert (=> b!4001645 m!4584127))

(declare-fun m!4584135 () Bool)

(assert (=> bm!285986 m!4584135))

(assert (=> b!4001210 d!1183740))

(assert (=> b!4001179 d!1183656))

(declare-fun d!1183742 () Bool)

(declare-fun c!692077 () Bool)

(assert (=> d!1183742 (= c!692077 (is-Nil!42807 lt!1415167))))

(declare-fun e!2481327 () (Set C!23582))

(assert (=> d!1183742 (= (content!6490 lt!1415167) e!2481327)))

(declare-fun b!4001654 () Bool)

(assert (=> b!4001654 (= e!2481327 (as set.empty (Set C!23582)))))

(declare-fun b!4001655 () Bool)

(assert (=> b!4001655 (= e!2481327 (set.union (set.insert (h!48227 lt!1415167) (as set.empty (Set C!23582))) (content!6490 (t!332210 lt!1415167))))))

(assert (= (and d!1183742 c!692077) b!4001654))

(assert (= (and d!1183742 (not c!692077)) b!4001655))

(declare-fun m!4584137 () Bool)

(assert (=> b!4001655 m!4584137))

(declare-fun m!4584139 () Bool)

(assert (=> b!4001655 m!4584139))

(assert (=> d!1183596 d!1183742))

(assert (=> d!1183596 d!1183730))

(declare-fun d!1183744 () Bool)

(declare-fun c!692078 () Bool)

(assert (=> d!1183744 (= c!692078 (is-Nil!42807 newSuffixResult!27))))

(declare-fun e!2481328 () (Set C!23582))

(assert (=> d!1183744 (= (content!6490 newSuffixResult!27) e!2481328)))

(declare-fun b!4001656 () Bool)

(assert (=> b!4001656 (= e!2481328 (as set.empty (Set C!23582)))))

(declare-fun b!4001657 () Bool)

(assert (=> b!4001657 (= e!2481328 (set.union (set.insert (h!48227 newSuffixResult!27) (as set.empty (Set C!23582))) (content!6490 (t!332210 newSuffixResult!27))))))

(assert (= (and d!1183744 c!692078) b!4001656))

(assert (= (and d!1183744 (not c!692078)) b!4001657))

(declare-fun m!4584141 () Bool)

(assert (=> b!4001657 m!4584141))

(declare-fun m!4584143 () Bool)

(assert (=> b!4001657 m!4584143))

(assert (=> d!1183596 d!1183744))

(declare-fun d!1183746 () Bool)

(declare-fun lt!1415239 () Int)

(assert (=> d!1183746 (>= lt!1415239 0)))

(declare-fun e!2481329 () Int)

(assert (=> d!1183746 (= lt!1415239 e!2481329)))

(declare-fun c!692079 () Bool)

(assert (=> d!1183746 (= c!692079 (is-Nil!42807 (t!332210 lt!1415100)))))

(assert (=> d!1183746 (= (size!32010 (t!332210 lt!1415100)) lt!1415239)))

(declare-fun b!4001658 () Bool)

(assert (=> b!4001658 (= e!2481329 0)))

(declare-fun b!4001659 () Bool)

(assert (=> b!4001659 (= e!2481329 (+ 1 (size!32010 (t!332210 (t!332210 lt!1415100)))))))

(assert (= (and d!1183746 c!692079) b!4001658))

(assert (= (and d!1183746 (not c!692079)) b!4001659))

(declare-fun m!4584145 () Bool)

(assert (=> b!4001659 m!4584145))

(assert (=> b!4001228 d!1183746))

(declare-fun d!1183748 () Bool)

(assert (=> d!1183748 (= (inv!57165 (tag!7653 (h!48229 (t!332212 rules!2999)))) (= (mod (str.len (value!214235 (tag!7653 (h!48229 (t!332212 rules!2999))))) 2) 0))))

(assert (=> b!4001332 d!1183748))

(declare-fun d!1183750 () Bool)

(declare-fun res!1625965 () Bool)

(declare-fun e!2481330 () Bool)

(assert (=> d!1183750 (=> (not res!1625965) (not e!2481330))))

(assert (=> d!1183750 (= res!1625965 (semiInverseModEq!2910 (toChars!9140 (transformation!6793 (h!48229 (t!332212 rules!2999)))) (toValue!9281 (transformation!6793 (h!48229 (t!332212 rules!2999))))))))

(assert (=> d!1183750 (= (inv!57168 (transformation!6793 (h!48229 (t!332212 rules!2999)))) e!2481330)))

(declare-fun b!4001660 () Bool)

(assert (=> b!4001660 (= e!2481330 (equivClasses!2809 (toChars!9140 (transformation!6793 (h!48229 (t!332212 rules!2999)))) (toValue!9281 (transformation!6793 (h!48229 (t!332212 rules!2999))))))))

(assert (= (and d!1183750 res!1625965) b!4001660))

(declare-fun m!4584147 () Bool)

(assert (=> d!1183750 m!4584147))

(declare-fun m!4584149 () Bool)

(assert (=> b!4001660 m!4584149))

(assert (=> b!4001332 d!1183750))

(declare-fun b!4001662 () Bool)

(declare-fun e!2481331 () List!42931)

(assert (=> b!4001662 (= e!2481331 (Cons!42807 (h!48227 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))) (++!11195 (t!332210 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))) (_2!24126 (get!14076 lt!1415142)))))))

(declare-fun d!1183752 () Bool)

(declare-fun e!2481332 () Bool)

(assert (=> d!1183752 e!2481332))

(declare-fun res!1625966 () Bool)

(assert (=> d!1183752 (=> (not res!1625966) (not e!2481332))))

(declare-fun lt!1415240 () List!42931)

(assert (=> d!1183752 (= res!1625966 (= (content!6490 lt!1415240) (set.union (content!6490 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))) (content!6490 (_2!24126 (get!14076 lt!1415142))))))))

(assert (=> d!1183752 (= lt!1415240 e!2481331)))

(declare-fun c!692080 () Bool)

(assert (=> d!1183752 (= c!692080 (is-Nil!42807 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))))))

(assert (=> d!1183752 (= (++!11195 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142)))) (_2!24126 (get!14076 lt!1415142))) lt!1415240)))

(declare-fun b!4001663 () Bool)

(declare-fun res!1625967 () Bool)

(assert (=> b!4001663 (=> (not res!1625967) (not e!2481332))))

(assert (=> b!4001663 (= res!1625967 (= (size!32010 lt!1415240) (+ (size!32010 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142))))) (size!32010 (_2!24126 (get!14076 lt!1415142))))))))

(declare-fun b!4001664 () Bool)

(assert (=> b!4001664 (= e!2481332 (or (not (= (_2!24126 (get!14076 lt!1415142)) Nil!42807)) (= lt!1415240 (list!15897 (charsOf!4609 (_1!24126 (get!14076 lt!1415142)))))))))

(declare-fun b!4001661 () Bool)

(assert (=> b!4001661 (= e!2481331 (_2!24126 (get!14076 lt!1415142)))))

(assert (= (and d!1183752 c!692080) b!4001661))

(assert (= (and d!1183752 (not c!692080)) b!4001662))

(assert (= (and d!1183752 res!1625966) b!4001663))

(assert (= (and b!4001663 res!1625967) b!4001664))

(declare-fun m!4584151 () Bool)

(assert (=> b!4001662 m!4584151))

(declare-fun m!4584153 () Bool)

(assert (=> d!1183752 m!4584153))

(assert (=> d!1183752 m!4583715))

(declare-fun m!4584155 () Bool)

(assert (=> d!1183752 m!4584155))

(declare-fun m!4584157 () Bool)

(assert (=> d!1183752 m!4584157))

(declare-fun m!4584159 () Bool)

(assert (=> b!4001663 m!4584159))

(assert (=> b!4001663 m!4583715))

(declare-fun m!4584161 () Bool)

(assert (=> b!4001663 m!4584161))

(assert (=> b!4001663 m!4583695))

(assert (=> b!4001213 d!1183752))

(assert (=> b!4001213 d!1183640))

(assert (=> b!4001213 d!1183642))

(assert (=> b!4001213 d!1183638))

(declare-fun d!1183754 () Bool)

(declare-fun charsToBigInt!1 (List!42932) Int)

(assert (=> d!1183754 (= (inv!17 (value!214236 token!484)) (= (charsToBigInt!1 (text!49609 (value!214236 token!484))) (value!214228 (value!214236 token!484))))))

(declare-fun bs!588863 () Bool)

(assert (= bs!588863 d!1183754))

(declare-fun m!4584163 () Bool)

(assert (=> bs!588863 m!4584163))

(assert (=> b!4001294 d!1183754))

(assert (=> d!1183548 d!1183644))

(assert (=> b!4001211 d!1183638))

(declare-fun d!1183756 () Bool)

(declare-fun dynLambda!18163 (Int BalanceConc!25602) TokenValue!7023)

(assert (=> d!1183756 (= (apply!10004 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))) (seqFromList!5032 (originalCharacters!7393 (_1!24126 (get!14076 lt!1415142))))) (dynLambda!18163 (toValue!9281 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142))))) (seqFromList!5032 (originalCharacters!7393 (_1!24126 (get!14076 lt!1415142))))))))

(declare-fun b_lambda!116739 () Bool)

(assert (=> (not b_lambda!116739) (not d!1183756)))

(declare-fun t!332243 () Bool)

(declare-fun tb!240565 () Bool)

(assert (=> (and b!4001061 (= (toValue!9281 (transformation!6793 (h!48229 rules!2999))) (toValue!9281 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))))) t!332243) tb!240565))

(declare-fun result!291562 () Bool)

(assert (=> tb!240565 (= result!291562 (inv!21 (dynLambda!18163 (toValue!9281 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142))))) (seqFromList!5032 (originalCharacters!7393 (_1!24126 (get!14076 lt!1415142)))))))))

(declare-fun m!4584165 () Bool)

(assert (=> tb!240565 m!4584165))

(assert (=> d!1183756 t!332243))

(declare-fun b_and!307275 () Bool)

(assert (= b_and!307223 (and (=> t!332243 result!291562) b_and!307275)))

(declare-fun tb!240567 () Bool)

(declare-fun t!332245 () Bool)

(assert (=> (and b!4001059 (= (toValue!9281 (transformation!6793 (rule!9825 token!484))) (toValue!9281 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))))) t!332245) tb!240567))

(declare-fun result!291566 () Bool)

(assert (= result!291566 result!291562))

(assert (=> d!1183756 t!332245))

(declare-fun b_and!307277 () Bool)

(assert (= b_and!307227 (and (=> t!332245 result!291566) b_and!307277)))

(declare-fun tb!240569 () Bool)

(declare-fun t!332247 () Bool)

(assert (=> (and b!4001333 (= (toValue!9281 (transformation!6793 (h!48229 (t!332212 rules!2999)))) (toValue!9281 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))))) t!332247) tb!240569))

(declare-fun result!291568 () Bool)

(assert (= result!291568 result!291562))

(assert (=> d!1183756 t!332247))

(declare-fun b_and!307279 () Bool)

(assert (= b_and!307247 (and (=> t!332247 result!291568) b_and!307279)))

(assert (=> d!1183756 m!4583701))

(declare-fun m!4584167 () Bool)

(assert (=> d!1183756 m!4584167))

(assert (=> b!4001211 d!1183756))

(declare-fun d!1183758 () Bool)

(declare-fun fromListB!2304 (List!42931) BalanceConc!25602)

(assert (=> d!1183758 (= (seqFromList!5032 (originalCharacters!7393 (_1!24126 (get!14076 lt!1415142)))) (fromListB!2304 (originalCharacters!7393 (_1!24126 (get!14076 lt!1415142)))))))

(declare-fun bs!588864 () Bool)

(assert (= bs!588864 d!1183758))

(declare-fun m!4584169 () Bool)

(assert (=> bs!588864 m!4584169))

(assert (=> b!4001211 d!1183758))

(declare-fun bm!285993 () Bool)

(declare-fun call!285999 () Bool)

(declare-fun call!285998 () Bool)

(assert (=> bm!285993 (= call!285999 call!285998)))

(declare-fun bm!285994 () Bool)

(declare-fun call!286000 () Bool)

(declare-fun c!692086 () Bool)

(assert (=> bm!285994 (= call!286000 (validRegex!5303 (ite c!692086 (regOne!23909 (regex!6793 (rule!9825 token!484))) (regOne!23908 (regex!6793 (rule!9825 token!484))))))))

(declare-fun b!4001685 () Bool)

(declare-fun e!2481351 () Bool)

(declare-fun e!2481350 () Bool)

(assert (=> b!4001685 (= e!2481351 e!2481350)))

(declare-fun res!1625978 () Bool)

(assert (=> b!4001685 (=> (not res!1625978) (not e!2481350))))

(assert (=> b!4001685 (= res!1625978 call!286000)))

(declare-fun c!692085 () Bool)

(declare-fun bm!285995 () Bool)

(assert (=> bm!285995 (= call!285998 (validRegex!5303 (ite c!692085 (reg!12027 (regex!6793 (rule!9825 token!484))) (ite c!692086 (regTwo!23909 (regex!6793 (rule!9825 token!484))) (regTwo!23908 (regex!6793 (rule!9825 token!484)))))))))

(declare-fun b!4001686 () Bool)

(declare-fun res!1625980 () Bool)

(declare-fun e!2481356 () Bool)

(assert (=> b!4001686 (=> (not res!1625980) (not e!2481356))))

(assert (=> b!4001686 (= res!1625980 call!286000)))

(declare-fun e!2481355 () Bool)

(assert (=> b!4001686 (= e!2481355 e!2481356)))

(declare-fun b!4001687 () Bool)

(declare-fun res!1625979 () Bool)

(assert (=> b!4001687 (=> res!1625979 e!2481351)))

(assert (=> b!4001687 (= res!1625979 (not (is-Concat!18722 (regex!6793 (rule!9825 token!484)))))))

(assert (=> b!4001687 (= e!2481355 e!2481351)))

(declare-fun b!4001688 () Bool)

(declare-fun e!2481352 () Bool)

(declare-fun e!2481354 () Bool)

(assert (=> b!4001688 (= e!2481352 e!2481354)))

(assert (=> b!4001688 (= c!692085 (is-Star!11698 (regex!6793 (rule!9825 token!484))))))

(declare-fun b!4001690 () Bool)

(declare-fun e!2481353 () Bool)

(assert (=> b!4001690 (= e!2481354 e!2481353)))

(declare-fun res!1625982 () Bool)

(assert (=> b!4001690 (= res!1625982 (not (nullable!4103 (reg!12027 (regex!6793 (rule!9825 token!484))))))))

(assert (=> b!4001690 (=> (not res!1625982) (not e!2481353))))

(declare-fun b!4001691 () Bool)

(assert (=> b!4001691 (= e!2481356 call!285999)))

(declare-fun b!4001692 () Bool)

(assert (=> b!4001692 (= e!2481350 call!285999)))

(declare-fun b!4001693 () Bool)

(assert (=> b!4001693 (= e!2481354 e!2481355)))

(assert (=> b!4001693 (= c!692086 (is-Union!11698 (regex!6793 (rule!9825 token!484))))))

(declare-fun d!1183760 () Bool)

(declare-fun res!1625981 () Bool)

(assert (=> d!1183760 (=> res!1625981 e!2481352)))

(assert (=> d!1183760 (= res!1625981 (is-ElementMatch!11698 (regex!6793 (rule!9825 token!484))))))

(assert (=> d!1183760 (= (validRegex!5303 (regex!6793 (rule!9825 token!484))) e!2481352)))

(declare-fun b!4001689 () Bool)

(assert (=> b!4001689 (= e!2481353 call!285998)))

(assert (= (and d!1183760 (not res!1625981)) b!4001688))

(assert (= (and b!4001688 c!692085) b!4001690))

(assert (= (and b!4001688 (not c!692085)) b!4001693))

(assert (= (and b!4001690 res!1625982) b!4001689))

(assert (= (and b!4001693 c!692086) b!4001686))

(assert (= (and b!4001693 (not c!692086)) b!4001687))

(assert (= (and b!4001686 res!1625980) b!4001691))

(assert (= (and b!4001687 (not res!1625979)) b!4001685))

(assert (= (and b!4001685 res!1625978) b!4001692))

(assert (= (or b!4001691 b!4001692) bm!285993))

(assert (= (or b!4001686 b!4001685) bm!285994))

(assert (= (or b!4001689 bm!285993) bm!285995))

(declare-fun m!4584171 () Bool)

(assert (=> bm!285994 m!4584171))

(declare-fun m!4584173 () Bool)

(assert (=> bm!285995 m!4584173))

(declare-fun m!4584175 () Bool)

(assert (=> b!4001690 m!4584175))

(assert (=> d!1183552 d!1183760))

(declare-fun b!4001705 () Bool)

(declare-fun e!2481362 () List!42931)

(assert (=> b!4001705 (= e!2481362 (++!11195 (list!15899 (left!32315 (c!691983 (charsOf!4609 token!484)))) (list!15899 (right!32645 (c!691983 (charsOf!4609 token!484))))))))

(declare-fun b!4001702 () Bool)

(declare-fun e!2481361 () List!42931)

(assert (=> b!4001702 (= e!2481361 Nil!42807)))

(declare-fun b!4001703 () Bool)

(assert (=> b!4001703 (= e!2481361 e!2481362)))

(declare-fun c!692092 () Bool)

(assert (=> b!4001703 (= c!692092 (is-Leaf!20108 (c!691983 (charsOf!4609 token!484))))))

(declare-fun b!4001704 () Bool)

(declare-fun list!15901 (IArray!26013) List!42931)

(assert (=> b!4001704 (= e!2481362 (list!15901 (xs!16310 (c!691983 (charsOf!4609 token!484)))))))

(declare-fun d!1183762 () Bool)

(declare-fun c!692091 () Bool)

(assert (=> d!1183762 (= c!692091 (is-Empty!13004 (c!691983 (charsOf!4609 token!484))))))

(assert (=> d!1183762 (= (list!15899 (c!691983 (charsOf!4609 token!484))) e!2481361)))

(assert (= (and d!1183762 c!692091) b!4001702))

(assert (= (and d!1183762 (not c!692091)) b!4001703))

(assert (= (and b!4001703 c!692092) b!4001704))

(assert (= (and b!4001703 (not c!692092)) b!4001705))

(declare-fun m!4584177 () Bool)

(assert (=> b!4001705 m!4584177))

(declare-fun m!4584179 () Bool)

(assert (=> b!4001705 m!4584179))

(assert (=> b!4001705 m!4584177))

(assert (=> b!4001705 m!4584179))

(declare-fun m!4584181 () Bool)

(assert (=> b!4001705 m!4584181))

(declare-fun m!4584183 () Bool)

(assert (=> b!4001704 m!4584183))

(assert (=> d!1183586 d!1183762))

(declare-fun b!4001706 () Bool)

(declare-fun e!2481363 () Bool)

(declare-fun e!2481364 () Bool)

(assert (=> b!4001706 (= e!2481363 e!2481364)))

(declare-fun res!1625986 () Bool)

(assert (=> b!4001706 (=> (not res!1625986) (not e!2481364))))

(assert (=> b!4001706 (= res!1625986 (not (is-Nil!42807 (tail!6236 suffix!1299))))))

(declare-fun b!4001707 () Bool)

(declare-fun res!1625985 () Bool)

(assert (=> b!4001707 (=> (not res!1625985) (not e!2481364))))

(assert (=> b!4001707 (= res!1625985 (= (head!8504 (tail!6236 newSuffix!27)) (head!8504 (tail!6236 suffix!1299))))))

(declare-fun b!4001708 () Bool)

(assert (=> b!4001708 (= e!2481364 (isPrefix!3880 (tail!6236 (tail!6236 newSuffix!27)) (tail!6236 (tail!6236 suffix!1299))))))

(declare-fun d!1183764 () Bool)

(declare-fun e!2481365 () Bool)

(assert (=> d!1183764 e!2481365))

(declare-fun res!1625984 () Bool)

(assert (=> d!1183764 (=> res!1625984 e!2481365)))

(declare-fun lt!1415241 () Bool)

(assert (=> d!1183764 (= res!1625984 (not lt!1415241))))

(assert (=> d!1183764 (= lt!1415241 e!2481363)))

(declare-fun res!1625983 () Bool)

(assert (=> d!1183764 (=> res!1625983 e!2481363)))

(assert (=> d!1183764 (= res!1625983 (is-Nil!42807 (tail!6236 newSuffix!27)))))

(assert (=> d!1183764 (= (isPrefix!3880 (tail!6236 newSuffix!27) (tail!6236 suffix!1299)) lt!1415241)))

(declare-fun b!4001709 () Bool)

(assert (=> b!4001709 (= e!2481365 (>= (size!32010 (tail!6236 suffix!1299)) (size!32010 (tail!6236 newSuffix!27))))))

(assert (= (and d!1183764 (not res!1625983)) b!4001706))

(assert (= (and b!4001706 res!1625986) b!4001707))

(assert (= (and b!4001707 res!1625985) b!4001708))

(assert (= (and d!1183764 (not res!1625984)) b!4001709))

(assert (=> b!4001707 m!4583767))

(declare-fun m!4584185 () Bool)

(assert (=> b!4001707 m!4584185))

(assert (=> b!4001707 m!4583769))

(declare-fun m!4584187 () Bool)

(assert (=> b!4001707 m!4584187))

(assert (=> b!4001708 m!4583767))

(declare-fun m!4584189 () Bool)

(assert (=> b!4001708 m!4584189))

(assert (=> b!4001708 m!4583769))

(declare-fun m!4584191 () Bool)

(assert (=> b!4001708 m!4584191))

(assert (=> b!4001708 m!4584189))

(assert (=> b!4001708 m!4584191))

(declare-fun m!4584193 () Bool)

(assert (=> b!4001708 m!4584193))

(assert (=> b!4001709 m!4583769))

(declare-fun m!4584195 () Bool)

(assert (=> b!4001709 m!4584195))

(assert (=> b!4001709 m!4583767))

(declare-fun m!4584197 () Bool)

(assert (=> b!4001709 m!4584197))

(assert (=> b!4001257 d!1183764))

(declare-fun d!1183766 () Bool)

(assert (=> d!1183766 (= (tail!6236 newSuffix!27) (t!332210 newSuffix!27))))

(assert (=> b!4001257 d!1183766))

(declare-fun d!1183768 () Bool)

(assert (=> d!1183768 (= (tail!6236 suffix!1299) (t!332210 suffix!1299))))

(assert (=> b!4001257 d!1183768))

(declare-fun d!1183770 () Bool)

(declare-fun lt!1415242 () Int)

(assert (=> d!1183770 (>= lt!1415242 0)))

(declare-fun e!2481366 () Int)

(assert (=> d!1183770 (= lt!1415242 e!2481366)))

(declare-fun c!692093 () Bool)

(assert (=> d!1183770 (= c!692093 (is-Nil!42807 (t!332210 newSuffix!27)))))

(assert (=> d!1183770 (= (size!32010 (t!332210 newSuffix!27)) lt!1415242)))

(declare-fun b!4001710 () Bool)

(assert (=> b!4001710 (= e!2481366 0)))

(declare-fun b!4001711 () Bool)

(assert (=> b!4001711 (= e!2481366 (+ 1 (size!32010 (t!332210 (t!332210 newSuffix!27)))))))

(assert (= (and d!1183770 c!692093) b!4001710))

(assert (= (and d!1183770 (not c!692093)) b!4001711))

(declare-fun m!4584199 () Bool)

(assert (=> b!4001711 m!4584199))

(assert (=> b!4001299 d!1183770))

(declare-fun b!4001713 () Bool)

(declare-fun e!2481367 () List!42931)

(assert (=> b!4001713 (= e!2481367 (Cons!42807 (h!48227 (t!332210 lt!1415100)) (++!11195 (t!332210 (t!332210 lt!1415100)) newSuffixResult!27)))))

(declare-fun d!1183772 () Bool)

(declare-fun e!2481368 () Bool)

(assert (=> d!1183772 e!2481368))

(declare-fun res!1625987 () Bool)

(assert (=> d!1183772 (=> (not res!1625987) (not e!2481368))))

(declare-fun lt!1415243 () List!42931)

(assert (=> d!1183772 (= res!1625987 (= (content!6490 lt!1415243) (set.union (content!6490 (t!332210 lt!1415100)) (content!6490 newSuffixResult!27))))))

(assert (=> d!1183772 (= lt!1415243 e!2481367)))

(declare-fun c!692094 () Bool)

(assert (=> d!1183772 (= c!692094 (is-Nil!42807 (t!332210 lt!1415100)))))

(assert (=> d!1183772 (= (++!11195 (t!332210 lt!1415100) newSuffixResult!27) lt!1415243)))

(declare-fun b!4001714 () Bool)

(declare-fun res!1625988 () Bool)

(assert (=> b!4001714 (=> (not res!1625988) (not e!2481368))))

(assert (=> b!4001714 (= res!1625988 (= (size!32010 lt!1415243) (+ (size!32010 (t!332210 lt!1415100)) (size!32010 newSuffixResult!27))))))

(declare-fun b!4001715 () Bool)

(assert (=> b!4001715 (= e!2481368 (or (not (= newSuffixResult!27 Nil!42807)) (= lt!1415243 (t!332210 lt!1415100))))))

(declare-fun b!4001712 () Bool)

(assert (=> b!4001712 (= e!2481367 newSuffixResult!27)))

(assert (= (and d!1183772 c!692094) b!4001712))

(assert (= (and d!1183772 (not c!692094)) b!4001713))

(assert (= (and d!1183772 res!1625987) b!4001714))

(assert (= (and b!4001714 res!1625988) b!4001715))

(declare-fun m!4584201 () Bool)

(assert (=> b!4001713 m!4584201))

(declare-fun m!4584203 () Bool)

(assert (=> d!1183772 m!4584203))

(assert (=> d!1183772 m!4584079))

(assert (=> d!1183772 m!4583777))

(declare-fun m!4584205 () Bool)

(assert (=> b!4001714 m!4584205))

(assert (=> b!4001714 m!4583741))

(assert (=> b!4001714 m!4583781))

(assert (=> b!4001260 d!1183772))

(declare-fun d!1183774 () Bool)

(declare-fun nullableFct!1142 (Regex!11698) Bool)

(assert (=> d!1183774 (= (nullable!4103 (regex!6793 (rule!9825 token!484))) (nullableFct!1142 (regex!6793 (rule!9825 token!484))))))

(declare-fun bs!588865 () Bool)

(assert (= bs!588865 d!1183774))

(declare-fun m!4584207 () Bool)

(assert (=> bs!588865 m!4584207))

(assert (=> b!4001168 d!1183774))

(declare-fun bs!588866 () Bool)

(declare-fun d!1183776 () Bool)

(assert (= bs!588866 (and d!1183776 d!1183704)))

(declare-fun lambda!126918 () Int)

(assert (=> bs!588866 (= lambda!126918 lambda!126914)))

(assert (=> d!1183776 true))

(declare-fun lt!1415246 () Bool)

(assert (=> d!1183776 (= lt!1415246 (rulesValidInductive!2476 thiss!21717 rules!2999))))

(assert (=> d!1183776 (= lt!1415246 (forall!8344 rules!2999 lambda!126918))))

(assert (=> d!1183776 (= (rulesValid!2644 thiss!21717 rules!2999) lt!1415246)))

(declare-fun bs!588867 () Bool)

(assert (= bs!588867 d!1183776))

(assert (=> bs!588867 m!4583711))

(declare-fun m!4584209 () Bool)

(assert (=> bs!588867 m!4584209))

(assert (=> d!1183592 d!1183776))

(declare-fun b!4001717 () Bool)

(declare-fun e!2481369 () List!42931)

(assert (=> b!4001717 (= e!2481369 (Cons!42807 (h!48227 (t!332210 prefix!494)) (++!11195 (t!332210 (t!332210 prefix!494)) newSuffix!27)))))

(declare-fun d!1183778 () Bool)

(declare-fun e!2481370 () Bool)

(assert (=> d!1183778 e!2481370))

(declare-fun res!1625989 () Bool)

(assert (=> d!1183778 (=> (not res!1625989) (not e!2481370))))

(declare-fun lt!1415247 () List!42931)

(assert (=> d!1183778 (= res!1625989 (= (content!6490 lt!1415247) (set.union (content!6490 (t!332210 prefix!494)) (content!6490 newSuffix!27))))))

(assert (=> d!1183778 (= lt!1415247 e!2481369)))

(declare-fun c!692095 () Bool)

(assert (=> d!1183778 (= c!692095 (is-Nil!42807 (t!332210 prefix!494)))))

(assert (=> d!1183778 (= (++!11195 (t!332210 prefix!494) newSuffix!27) lt!1415247)))

(declare-fun b!4001718 () Bool)

(declare-fun res!1625990 () Bool)

(assert (=> b!4001718 (=> (not res!1625990) (not e!2481370))))

(assert (=> b!4001718 (= res!1625990 (= (size!32010 lt!1415247) (+ (size!32010 (t!332210 prefix!494)) (size!32010 newSuffix!27))))))

(declare-fun b!4001719 () Bool)

(assert (=> b!4001719 (= e!2481370 (or (not (= newSuffix!27 Nil!42807)) (= lt!1415247 (t!332210 prefix!494))))))

(declare-fun b!4001716 () Bool)

(assert (=> b!4001716 (= e!2481369 newSuffix!27)))

(assert (= (and d!1183778 c!692095) b!4001716))

(assert (= (and d!1183778 (not c!692095)) b!4001717))

(assert (= (and d!1183778 res!1625989) b!4001718))

(assert (= (and b!4001718 res!1625990) b!4001719))

(declare-fun m!4584211 () Bool)

(assert (=> b!4001717 m!4584211))

(declare-fun m!4584213 () Bool)

(assert (=> d!1183778 m!4584213))

(assert (=> d!1183778 m!4583939))

(assert (=> d!1183778 m!4583787))

(declare-fun m!4584215 () Bool)

(assert (=> b!4001718 m!4584215))

(assert (=> b!4001718 m!4583739))

(assert (=> b!4001718 m!4583551))

(assert (=> b!4001264 d!1183778))

(declare-fun bs!588868 () Bool)

(declare-fun d!1183780 () Bool)

(assert (= bs!588868 (and d!1183780 d!1183656)))

(declare-fun lambda!126919 () Int)

(assert (=> bs!588868 (= (= (toValue!9281 (transformation!6793 (h!48229 rules!2999))) (toValue!9281 (transformation!6793 (rule!9825 token!484)))) (= lambda!126919 lambda!126911))))

(assert (=> d!1183780 true))

(assert (=> d!1183780 (< (dynLambda!18161 order!22435 (toValue!9281 (transformation!6793 (h!48229 rules!2999)))) (dynLambda!18162 order!22437 lambda!126919))))

(assert (=> d!1183780 (= (equivClasses!2809 (toChars!9140 (transformation!6793 (h!48229 rules!2999))) (toValue!9281 (transformation!6793 (h!48229 rules!2999)))) (Forall2!1064 lambda!126919))))

(declare-fun bs!588869 () Bool)

(assert (= bs!588869 d!1183780))

(declare-fun m!4584217 () Bool)

(assert (=> bs!588869 m!4584217))

(assert (=> b!4001220 d!1183780))

(declare-fun d!1183782 () Bool)

(declare-fun lt!1415248 () Int)

(assert (=> d!1183782 (>= lt!1415248 0)))

(declare-fun e!2481371 () Int)

(assert (=> d!1183782 (= lt!1415248 e!2481371)))

(declare-fun c!692096 () Bool)

(assert (=> d!1183782 (= c!692096 (is-Nil!42807 lt!1415146))))

(assert (=> d!1183782 (= (size!32010 lt!1415146) lt!1415248)))

(declare-fun b!4001720 () Bool)

(assert (=> b!4001720 (= e!2481371 0)))

(declare-fun b!4001721 () Bool)

(assert (=> b!4001721 (= e!2481371 (+ 1 (size!32010 (t!332210 lt!1415146))))))

(assert (= (and d!1183782 c!692096) b!4001720))

(assert (= (and d!1183782 (not c!692096)) b!4001721))

(declare-fun m!4584219 () Bool)

(assert (=> b!4001721 m!4584219))

(assert (=> b!4001218 d!1183782))

(assert (=> b!4001218 d!1183582))

(assert (=> b!4001218 d!1183602))

(declare-fun d!1183784 () Bool)

(declare-fun lt!1415249 () Int)

(assert (=> d!1183784 (>= lt!1415249 0)))

(declare-fun e!2481372 () Int)

(assert (=> d!1183784 (= lt!1415249 e!2481372)))

(declare-fun c!692097 () Bool)

(assert (=> d!1183784 (= c!692097 (is-Nil!42807 lt!1415120))))

(assert (=> d!1183784 (= (size!32010 lt!1415120) lt!1415249)))

(declare-fun b!4001722 () Bool)

(assert (=> b!4001722 (= e!2481372 0)))

(declare-fun b!4001723 () Bool)

(assert (=> b!4001723 (= e!2481372 (+ 1 (size!32010 (t!332210 lt!1415120))))))

(assert (= (and d!1183784 c!692097) b!4001722))

(assert (= (and d!1183784 (not c!692097)) b!4001723))

(declare-fun m!4584221 () Bool)

(assert (=> b!4001723 m!4584221))

(assert (=> b!4001147 d!1183784))

(assert (=> b!4001147 d!1183584))

(declare-fun d!1183786 () Bool)

(declare-fun lt!1415250 () Int)

(assert (=> d!1183786 (>= lt!1415250 0)))

(declare-fun e!2481373 () Int)

(assert (=> d!1183786 (= lt!1415250 e!2481373)))

(declare-fun c!692098 () Bool)

(assert (=> d!1183786 (= c!692098 (is-Nil!42807 suffixResult!105))))

(assert (=> d!1183786 (= (size!32010 suffixResult!105) lt!1415250)))

(declare-fun b!4001724 () Bool)

(assert (=> b!4001724 (= e!2481373 0)))

(declare-fun b!4001725 () Bool)

(assert (=> b!4001725 (= e!2481373 (+ 1 (size!32010 (t!332210 suffixResult!105))))))

(assert (= (and d!1183786 c!692098) b!4001724))

(assert (= (and d!1183786 (not c!692098)) b!4001725))

(declare-fun m!4584223 () Bool)

(assert (=> b!4001725 m!4584223))

(assert (=> b!4001147 d!1183786))

(declare-fun d!1183788 () Bool)

(assert (=> d!1183788 (= (list!15897 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484))) (list!15899 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484)))))))

(declare-fun bs!588870 () Bool)

(assert (= bs!588870 d!1183788))

(declare-fun m!4584225 () Bool)

(assert (=> bs!588870 m!4584225))

(assert (=> b!4001238 d!1183788))

(declare-fun b!4001728 () Bool)

(declare-fun e!2481374 () Bool)

(declare-fun tp!1217744 () Bool)

(assert (=> b!4001728 (= e!2481374 tp!1217744)))

(declare-fun b!4001726 () Bool)

(assert (=> b!4001726 (= e!2481374 tp_is_empty!20367)))

(declare-fun b!4001729 () Bool)

(declare-fun tp!1217746 () Bool)

(declare-fun tp!1217745 () Bool)

(assert (=> b!4001729 (= e!2481374 (and tp!1217746 tp!1217745))))

(declare-fun b!4001727 () Bool)

(declare-fun tp!1217743 () Bool)

(declare-fun tp!1217747 () Bool)

(assert (=> b!4001727 (= e!2481374 (and tp!1217743 tp!1217747))))

(assert (=> b!4001312 (= tp!1217669 e!2481374)))

(assert (= (and b!4001312 (is-ElementMatch!11698 (reg!12027 (regex!6793 (h!48229 rules!2999))))) b!4001726))

(assert (= (and b!4001312 (is-Concat!18722 (reg!12027 (regex!6793 (h!48229 rules!2999))))) b!4001727))

(assert (= (and b!4001312 (is-Star!11698 (reg!12027 (regex!6793 (h!48229 rules!2999))))) b!4001728))

(assert (= (and b!4001312 (is-Union!11698 (reg!12027 (regex!6793 (h!48229 rules!2999))))) b!4001729))

(declare-fun b!4001732 () Bool)

(declare-fun e!2481375 () Bool)

(declare-fun tp!1217749 () Bool)

(assert (=> b!4001732 (= e!2481375 tp!1217749)))

(declare-fun b!4001730 () Bool)

(assert (=> b!4001730 (= e!2481375 tp_is_empty!20367)))

(declare-fun b!4001733 () Bool)

(declare-fun tp!1217751 () Bool)

(declare-fun tp!1217750 () Bool)

(assert (=> b!4001733 (= e!2481375 (and tp!1217751 tp!1217750))))

(declare-fun b!4001731 () Bool)

(declare-fun tp!1217748 () Bool)

(declare-fun tp!1217752 () Bool)

(assert (=> b!4001731 (= e!2481375 (and tp!1217748 tp!1217752))))

(assert (=> b!4001311 (= tp!1217668 e!2481375)))

(assert (= (and b!4001311 (is-ElementMatch!11698 (regOne!23908 (regex!6793 (h!48229 rules!2999))))) b!4001730))

(assert (= (and b!4001311 (is-Concat!18722 (regOne!23908 (regex!6793 (h!48229 rules!2999))))) b!4001731))

(assert (= (and b!4001311 (is-Star!11698 (regOne!23908 (regex!6793 (h!48229 rules!2999))))) b!4001732))

(assert (= (and b!4001311 (is-Union!11698 (regOne!23908 (regex!6793 (h!48229 rules!2999))))) b!4001733))

(declare-fun b!4001736 () Bool)

(declare-fun e!2481376 () Bool)

(declare-fun tp!1217754 () Bool)

(assert (=> b!4001736 (= e!2481376 tp!1217754)))

(declare-fun b!4001734 () Bool)

(assert (=> b!4001734 (= e!2481376 tp_is_empty!20367)))

(declare-fun b!4001737 () Bool)

(declare-fun tp!1217756 () Bool)

(declare-fun tp!1217755 () Bool)

(assert (=> b!4001737 (= e!2481376 (and tp!1217756 tp!1217755))))

(declare-fun b!4001735 () Bool)

(declare-fun tp!1217753 () Bool)

(declare-fun tp!1217757 () Bool)

(assert (=> b!4001735 (= e!2481376 (and tp!1217753 tp!1217757))))

(assert (=> b!4001311 (= tp!1217672 e!2481376)))

(assert (= (and b!4001311 (is-ElementMatch!11698 (regTwo!23908 (regex!6793 (h!48229 rules!2999))))) b!4001734))

(assert (= (and b!4001311 (is-Concat!18722 (regTwo!23908 (regex!6793 (h!48229 rules!2999))))) b!4001735))

(assert (= (and b!4001311 (is-Star!11698 (regTwo!23908 (regex!6793 (h!48229 rules!2999))))) b!4001736))

(assert (= (and b!4001311 (is-Union!11698 (regTwo!23908 (regex!6793 (h!48229 rules!2999))))) b!4001737))

(declare-fun b!4001738 () Bool)

(declare-fun e!2481377 () Bool)

(declare-fun tp!1217758 () Bool)

(assert (=> b!4001738 (= e!2481377 (and tp_is_empty!20367 tp!1217758))))

(assert (=> b!4001319 (= tp!1217676 e!2481377)))

(assert (= (and b!4001319 (is-Cons!42807 (t!332210 (t!332210 newSuffix!27)))) b!4001738))

(declare-fun b!4001741 () Bool)

(declare-fun e!2481378 () Bool)

(declare-fun tp!1217760 () Bool)

(assert (=> b!4001741 (= e!2481378 tp!1217760)))

(declare-fun b!4001739 () Bool)

(assert (=> b!4001739 (= e!2481378 tp_is_empty!20367)))

(declare-fun b!4001742 () Bool)

(declare-fun tp!1217762 () Bool)

(declare-fun tp!1217761 () Bool)

(assert (=> b!4001742 (= e!2481378 (and tp!1217762 tp!1217761))))

(declare-fun b!4001740 () Bool)

(declare-fun tp!1217759 () Bool)

(declare-fun tp!1217763 () Bool)

(assert (=> b!4001740 (= e!2481378 (and tp!1217759 tp!1217763))))

(assert (=> b!4001332 (= tp!1217690 e!2481378)))

(assert (= (and b!4001332 (is-ElementMatch!11698 (regex!6793 (h!48229 (t!332212 rules!2999))))) b!4001739))

(assert (= (and b!4001332 (is-Concat!18722 (regex!6793 (h!48229 (t!332212 rules!2999))))) b!4001740))

(assert (= (and b!4001332 (is-Star!11698 (regex!6793 (h!48229 (t!332212 rules!2999))))) b!4001741))

(assert (= (and b!4001332 (is-Union!11698 (regex!6793 (h!48229 (t!332212 rules!2999))))) b!4001742))

(declare-fun b!4001745 () Bool)

(declare-fun e!2481379 () Bool)

(declare-fun tp!1217765 () Bool)

(assert (=> b!4001745 (= e!2481379 tp!1217765)))

(declare-fun b!4001743 () Bool)

(assert (=> b!4001743 (= e!2481379 tp_is_empty!20367)))

(declare-fun b!4001746 () Bool)

(declare-fun tp!1217767 () Bool)

(declare-fun tp!1217766 () Bool)

(assert (=> b!4001746 (= e!2481379 (and tp!1217767 tp!1217766))))

(declare-fun b!4001744 () Bool)

(declare-fun tp!1217764 () Bool)

(declare-fun tp!1217768 () Bool)

(assert (=> b!4001744 (= e!2481379 (and tp!1217764 tp!1217768))))

(assert (=> b!4001336 (= tp!1217693 e!2481379)))

(assert (= (and b!4001336 (is-ElementMatch!11698 (reg!12027 (regex!6793 (rule!9825 token!484))))) b!4001743))

(assert (= (and b!4001336 (is-Concat!18722 (reg!12027 (regex!6793 (rule!9825 token!484))))) b!4001744))

(assert (= (and b!4001336 (is-Star!11698 (reg!12027 (regex!6793 (rule!9825 token!484))))) b!4001745))

(assert (= (and b!4001336 (is-Union!11698 (reg!12027 (regex!6793 (rule!9825 token!484))))) b!4001746))

(declare-fun b!4001749 () Bool)

(declare-fun e!2481380 () Bool)

(declare-fun tp!1217770 () Bool)

(assert (=> b!4001749 (= e!2481380 tp!1217770)))

(declare-fun b!4001747 () Bool)

(assert (=> b!4001747 (= e!2481380 tp_is_empty!20367)))

(declare-fun b!4001750 () Bool)

(declare-fun tp!1217772 () Bool)

(declare-fun tp!1217771 () Bool)

(assert (=> b!4001750 (= e!2481380 (and tp!1217772 tp!1217771))))

(declare-fun b!4001748 () Bool)

(declare-fun tp!1217769 () Bool)

(declare-fun tp!1217773 () Bool)

(assert (=> b!4001748 (= e!2481380 (and tp!1217769 tp!1217773))))

(assert (=> b!4001313 (= tp!1217671 e!2481380)))

(assert (= (and b!4001313 (is-ElementMatch!11698 (regOne!23909 (regex!6793 (h!48229 rules!2999))))) b!4001747))

(assert (= (and b!4001313 (is-Concat!18722 (regOne!23909 (regex!6793 (h!48229 rules!2999))))) b!4001748))

(assert (= (and b!4001313 (is-Star!11698 (regOne!23909 (regex!6793 (h!48229 rules!2999))))) b!4001749))

(assert (= (and b!4001313 (is-Union!11698 (regOne!23909 (regex!6793 (h!48229 rules!2999))))) b!4001750))

(declare-fun b!4001753 () Bool)

(declare-fun e!2481381 () Bool)

(declare-fun tp!1217775 () Bool)

(assert (=> b!4001753 (= e!2481381 tp!1217775)))

(declare-fun b!4001751 () Bool)

(assert (=> b!4001751 (= e!2481381 tp_is_empty!20367)))

(declare-fun b!4001754 () Bool)

(declare-fun tp!1217777 () Bool)

(declare-fun tp!1217776 () Bool)

(assert (=> b!4001754 (= e!2481381 (and tp!1217777 tp!1217776))))

(declare-fun b!4001752 () Bool)

(declare-fun tp!1217774 () Bool)

(declare-fun tp!1217778 () Bool)

(assert (=> b!4001752 (= e!2481381 (and tp!1217774 tp!1217778))))

(assert (=> b!4001313 (= tp!1217670 e!2481381)))

(assert (= (and b!4001313 (is-ElementMatch!11698 (regTwo!23909 (regex!6793 (h!48229 rules!2999))))) b!4001751))

(assert (= (and b!4001313 (is-Concat!18722 (regTwo!23909 (regex!6793 (h!48229 rules!2999))))) b!4001752))

(assert (= (and b!4001313 (is-Star!11698 (regTwo!23909 (regex!6793 (h!48229 rules!2999))))) b!4001753))

(assert (= (and b!4001313 (is-Union!11698 (regTwo!23909 (regex!6793 (h!48229 rules!2999))))) b!4001754))

(declare-fun b!4001757 () Bool)

(declare-fun b_free!111217 () Bool)

(declare-fun b_next!111921 () Bool)

(assert (=> b!4001757 (= b_free!111217 (not b_next!111921))))

(declare-fun tb!240571 () Bool)

(declare-fun t!332250 () Bool)

(assert (=> (and b!4001757 (= (toValue!9281 (transformation!6793 (h!48229 (t!332212 (t!332212 rules!2999))))) (toValue!9281 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))))) t!332250) tb!240571))

(declare-fun result!291570 () Bool)

(assert (= result!291570 result!291562))

(assert (=> d!1183756 t!332250))

(declare-fun tp!1217780 () Bool)

(declare-fun b_and!307281 () Bool)

(assert (=> b!4001757 (= tp!1217780 (and (=> t!332250 result!291570) b_and!307281))))

(declare-fun b_free!111219 () Bool)

(declare-fun b_next!111923 () Bool)

(assert (=> b!4001757 (= b_free!111219 (not b_next!111923))))

(declare-fun tb!240573 () Bool)

(declare-fun t!332252 () Bool)

(assert (=> (and b!4001757 (= (toChars!9140 (transformation!6793 (h!48229 (t!332212 (t!332212 rules!2999))))) (toChars!9140 (transformation!6793 (rule!9825 token!484)))) t!332252) tb!240573))

(declare-fun result!291572 () Bool)

(assert (= result!291572 result!291522))

(assert (=> d!1183588 t!332252))

(assert (=> b!4001238 t!332252))

(declare-fun tb!240575 () Bool)

(declare-fun t!332254 () Bool)

(assert (=> (and b!4001757 (= (toChars!9140 (transformation!6793 (h!48229 (t!332212 (t!332212 rules!2999))))) (toChars!9140 (transformation!6793 (rule!9825 (_1!24126 (get!14076 lt!1415142)))))) t!332254) tb!240575))

(declare-fun result!291574 () Bool)

(assert (= result!291574 result!291550))

(assert (=> d!1183642 t!332254))

(declare-fun tp!1217782 () Bool)

(declare-fun b_and!307283 () Bool)

(assert (=> b!4001757 (= tp!1217782 (and (=> t!332252 result!291572) (=> t!332254 result!291574) b_and!307283))))

(declare-fun e!2481385 () Bool)

(assert (=> b!4001757 (= e!2481385 (and tp!1217780 tp!1217782))))

(declare-fun tp!1217781 () Bool)

(declare-fun b!4001756 () Bool)

(declare-fun e!2481383 () Bool)

(assert (=> b!4001756 (= e!2481383 (and tp!1217781 (inv!57165 (tag!7653 (h!48229 (t!332212 (t!332212 rules!2999))))) (inv!57168 (transformation!6793 (h!48229 (t!332212 (t!332212 rules!2999))))) e!2481385))))

(declare-fun b!4001755 () Bool)

(declare-fun e!2481384 () Bool)

(declare-fun tp!1217779 () Bool)

(assert (=> b!4001755 (= e!2481384 (and e!2481383 tp!1217779))))

(assert (=> b!4001331 (= tp!1217688 e!2481384)))

(assert (= b!4001756 b!4001757))

(assert (= b!4001755 b!4001756))

(assert (= (and b!4001331 (is-Cons!42809 (t!332212 (t!332212 rules!2999)))) b!4001755))

(declare-fun m!4584227 () Bool)

(assert (=> b!4001756 m!4584227))

(declare-fun m!4584229 () Bool)

(assert (=> b!4001756 m!4584229))

(declare-fun b!4001760 () Bool)

(declare-fun e!2481386 () Bool)

(declare-fun tp!1217784 () Bool)

(assert (=> b!4001760 (= e!2481386 tp!1217784)))

(declare-fun b!4001758 () Bool)

(assert (=> b!4001758 (= e!2481386 tp_is_empty!20367)))

(declare-fun b!4001761 () Bool)

(declare-fun tp!1217786 () Bool)

(declare-fun tp!1217785 () Bool)

(assert (=> b!4001761 (= e!2481386 (and tp!1217786 tp!1217785))))

(declare-fun b!4001759 () Bool)

(declare-fun tp!1217783 () Bool)

(declare-fun tp!1217787 () Bool)

(assert (=> b!4001759 (= e!2481386 (and tp!1217783 tp!1217787))))

(assert (=> b!4001335 (= tp!1217692 e!2481386)))

(assert (= (and b!4001335 (is-ElementMatch!11698 (regOne!23908 (regex!6793 (rule!9825 token!484))))) b!4001758))

(assert (= (and b!4001335 (is-Concat!18722 (regOne!23908 (regex!6793 (rule!9825 token!484))))) b!4001759))

(assert (= (and b!4001335 (is-Star!11698 (regOne!23908 (regex!6793 (rule!9825 token!484))))) b!4001760))

(assert (= (and b!4001335 (is-Union!11698 (regOne!23908 (regex!6793 (rule!9825 token!484))))) b!4001761))

(declare-fun b!4001764 () Bool)

(declare-fun e!2481387 () Bool)

(declare-fun tp!1217789 () Bool)

(assert (=> b!4001764 (= e!2481387 tp!1217789)))

(declare-fun b!4001762 () Bool)

(assert (=> b!4001762 (= e!2481387 tp_is_empty!20367)))

(declare-fun b!4001765 () Bool)

(declare-fun tp!1217791 () Bool)

(declare-fun tp!1217790 () Bool)

(assert (=> b!4001765 (= e!2481387 (and tp!1217791 tp!1217790))))

(declare-fun b!4001763 () Bool)

(declare-fun tp!1217788 () Bool)

(declare-fun tp!1217792 () Bool)

(assert (=> b!4001763 (= e!2481387 (and tp!1217788 tp!1217792))))

(assert (=> b!4001335 (= tp!1217696 e!2481387)))

(assert (= (and b!4001335 (is-ElementMatch!11698 (regTwo!23908 (regex!6793 (rule!9825 token!484))))) b!4001762))

(assert (= (and b!4001335 (is-Concat!18722 (regTwo!23908 (regex!6793 (rule!9825 token!484))))) b!4001763))

(assert (= (and b!4001335 (is-Star!11698 (regTwo!23908 (regex!6793 (rule!9825 token!484))))) b!4001764))

(assert (= (and b!4001335 (is-Union!11698 (regTwo!23908 (regex!6793 (rule!9825 token!484))))) b!4001765))

(declare-fun b!4001774 () Bool)

(declare-fun tp!1217799 () Bool)

(declare-fun tp!1217800 () Bool)

(declare-fun e!2481392 () Bool)

(assert (=> b!4001774 (= e!2481392 (and (inv!57172 (left!32315 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484))))) tp!1217800 (inv!57172 (right!32645 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484))))) tp!1217799))))

(declare-fun b!4001776 () Bool)

(declare-fun e!2481393 () Bool)

(declare-fun tp!1217801 () Bool)

(assert (=> b!4001776 (= e!2481393 tp!1217801)))

(declare-fun b!4001775 () Bool)

(declare-fun inv!57178 (IArray!26013) Bool)

(assert (=> b!4001775 (= e!2481392 (and (inv!57178 (xs!16310 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484))))) e!2481393))))

(assert (=> b!4001233 (= tp!1217657 (and (inv!57172 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484)))) e!2481392))))

(assert (= (and b!4001233 (is-Node!13004 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484))))) b!4001774))

(assert (= b!4001775 b!4001776))

(assert (= (and b!4001233 (is-Leaf!20108 (c!691983 (dynLambda!18157 (toChars!9140 (transformation!6793 (rule!9825 token!484))) (value!214236 token!484))))) b!4001775))

(declare-fun m!4584231 () Bool)

(assert (=> b!4001774 m!4584231))

(declare-fun m!4584233 () Bool)

(assert (=> b!4001774 m!4584233))

(declare-fun m!4584235 () Bool)

(assert (=> b!4001775 m!4584235))

(assert (=> b!4001233 m!4583745))

(declare-fun b!4001777 () Bool)

(declare-fun e!2481394 () Bool)

(declare-fun tp!1217802 () Bool)

(assert (=> b!4001777 (= e!2481394 (and tp_is_empty!20367 tp!1217802))))

(assert (=> b!4001320 (= tp!1217677 e!2481394)))

(assert (= (and b!4001320 (is-Cons!42807 (t!332210 (t!332210 newSuffixResult!27)))) b!4001777))

(declare-fun b!4001778 () Bool)

(declare-fun e!2481395 () Bool)

(declare-fun tp!1217803 () Bool)

(assert (=> b!4001778 (= e!2481395 (and tp_is_empty!20367 tp!1217803))))

(assert (=> b!4001318 (= tp!1217675 e!2481395)))

(assert (= (and b!4001318 (is-Cons!42807 (t!332210 (t!332210 suffix!1299)))) b!4001778))

(declare-fun b!4001779 () Bool)

(declare-fun e!2481396 () Bool)

(declare-fun tp!1217804 () Bool)

(assert (=> b!4001779 (= e!2481396 (and tp_is_empty!20367 tp!1217804))))

(assert (=> b!4001321 (= tp!1217678 e!2481396)))

(assert (= (and b!4001321 (is-Cons!42807 (t!332210 (t!332210 prefix!494)))) b!4001779))

(declare-fun b!4001782 () Bool)

(declare-fun e!2481397 () Bool)

(declare-fun tp!1217806 () Bool)

(assert (=> b!4001782 (= e!2481397 tp!1217806)))

(declare-fun b!4001780 () Bool)

(assert (=> b!4001780 (= e!2481397 tp_is_empty!20367)))

(declare-fun b!4001783 () Bool)

(declare-fun tp!1217808 () Bool)

(declare-fun tp!1217807 () Bool)

(assert (=> b!4001783 (= e!2481397 (and tp!1217808 tp!1217807))))

(declare-fun b!4001781 () Bool)

(declare-fun tp!1217805 () Bool)

(declare-fun tp!1217809 () Bool)

(assert (=> b!4001781 (= e!2481397 (and tp!1217805 tp!1217809))))

(assert (=> b!4001337 (= tp!1217695 e!2481397)))

(assert (= (and b!4001337 (is-ElementMatch!11698 (regOne!23909 (regex!6793 (rule!9825 token!484))))) b!4001780))

(assert (= (and b!4001337 (is-Concat!18722 (regOne!23909 (regex!6793 (rule!9825 token!484))))) b!4001781))

(assert (= (and b!4001337 (is-Star!11698 (regOne!23909 (regex!6793 (rule!9825 token!484))))) b!4001782))

(assert (= (and b!4001337 (is-Union!11698 (regOne!23909 (regex!6793 (rule!9825 token!484))))) b!4001783))

(declare-fun b!4001786 () Bool)

(declare-fun e!2481398 () Bool)

(declare-fun tp!1217811 () Bool)

(assert (=> b!4001786 (= e!2481398 tp!1217811)))

(declare-fun b!4001784 () Bool)

(assert (=> b!4001784 (= e!2481398 tp_is_empty!20367)))

(declare-fun b!4001787 () Bool)

(declare-fun tp!1217813 () Bool)

(declare-fun tp!1217812 () Bool)

(assert (=> b!4001787 (= e!2481398 (and tp!1217813 tp!1217812))))

(declare-fun b!4001785 () Bool)

(declare-fun tp!1217810 () Bool)

(declare-fun tp!1217814 () Bool)

(assert (=> b!4001785 (= e!2481398 (and tp!1217810 tp!1217814))))

(assert (=> b!4001337 (= tp!1217694 e!2481398)))

(assert (= (and b!4001337 (is-ElementMatch!11698 (regTwo!23909 (regex!6793 (rule!9825 token!484))))) b!4001784))

(assert (= (and b!4001337 (is-Concat!18722 (regTwo!23909 (regex!6793 (rule!9825 token!484))))) b!4001785))

(assert (= (and b!4001337 (is-Star!11698 (regTwo!23909 (regex!6793 (rule!9825 token!484))))) b!4001786))

(assert (= (and b!4001337 (is-Union!11698 (regTwo!23909 (regex!6793 (rule!9825 token!484))))) b!4001787))

(declare-fun b!4001788 () Bool)

(declare-fun e!2481399 () Bool)

(declare-fun tp!1217815 () Bool)

(assert (=> b!4001788 (= e!2481399 (and tp_is_empty!20367 tp!1217815))))

(assert (=> b!4001322 (= tp!1217679 e!2481399)))

(assert (= (and b!4001322 (is-Cons!42807 (t!332210 (t!332210 suffixResult!105)))) b!4001788))

(declare-fun b!4001789 () Bool)

(declare-fun e!2481400 () Bool)

(declare-fun tp!1217816 () Bool)

(assert (=> b!4001789 (= e!2481400 (and tp_is_empty!20367 tp!1217816))))

(assert (=> b!4001338 (= tp!1217697 e!2481400)))

(assert (= (and b!4001338 (is-Cons!42807 (t!332210 (originalCharacters!7393 token!484)))) b!4001789))

(push 1)

(assert (not d!1183772))

(assert (not b_next!111915))

(assert (not d!1183750))

(assert (not b!4001662))

(assert (not b!4001497))

(assert (not d!1183704))

(assert (not b!4001638))

(assert (not b!4001473))

(assert (not b!4001737))

(assert (not b_next!111897))

(assert (not b!4001493))

(assert (not b!4001577))

(assert b_and!307275)

(assert (not d!1183758))

(assert (not b!4001657))

(assert (not b!4001725))

(assert (not b_next!111921))

(assert (not b!4001741))

(assert (not d!1183776))

(assert (not b!4001645))

(assert (not b!4001476))

(assert (not b!4001763))

(assert (not b!4001713))

(assert (not b!4001483))

(assert (not b!4001732))

(assert (not d!1183660))

(assert (not d!1183666))

(assert (not b!4001774))

(assert (not b!4001663))

(assert b_and!307265)

(assert (not b!4001786))

(assert (not b!4001651))

(assert (not b!4001782))

(assert (not d!1183754))

(assert b_and!307277)

(assert (not b!4001601))

(assert (not b!4001470))

(assert (not b!4001575))

(assert (not b!4001652))

(assert (not b_lambda!116725))

(assert (not d!1183714))

(assert (not b!4001649))

(assert (not b!4001753))

(assert (not bm!285994))

(assert (not b!4001718))

(assert (not b!4001644))

(assert (not d!1183778))

(assert b_and!307279)

(assert (not b!4001597))

(assert (not b!4001740))

(assert (not bm!285995))

(assert (not b!4001479))

(assert (not b!4001717))

(assert (not b!4001746))

(assert (not d!1183726))

(assert (not b!4001759))

(assert (not b!4001781))

(assert (not b!4001604))

(assert (not b!4001607))

(assert (not b!4001755))

(assert (not d!1183740))

(assert b_and!307263)

(assert (not b!4001761))

(assert (not b!4001512))

(assert (not bm!285982))

(assert (not b!4001647))

(assert (not b_next!111903))

(assert (not b!4001648))

(assert (not b!4001510))

(assert (not b!4001742))

(assert (not b!4001779))

(assert (not b!4001495))

(assert (not b!4001655))

(assert (not b!4001765))

(assert (not b_lambda!116739))

(assert (not d!1183656))

(assert (not b!4001630))

(assert (not b!4001503))

(assert (not d!1183706))

(assert (not d!1183780))

(assert (not b!4001599))

(assert (not b!4001624))

(assert (not b!4001642))

(assert (not b!4001714))

(assert (not b!4001738))

(assert (not b!4001777))

(assert (not b!4001749))

(assert (not b!4001787))

(assert (not b!4001618))

(assert (not bm!285986))

(assert (not d!1183636))

(assert (not b!4001733))

(assert (not b!4001659))

(assert (not b!4001626))

(assert (not b!4001471))

(assert (not b!4001573))

(assert (not b!4001728))

(assert (not b_lambda!116735))

(assert (not b!4001760))

(assert (not b!4001576))

(assert (not d!1183788))

(assert (not b!4001727))

(assert tp_is_empty!20367)

(assert (not b!4001744))

(assert (not d!1183642))

(assert (not b!4001729))

(assert (not b!4001723))

(assert (not b!4001634))

(assert (not b!4001711))

(assert (not b!4001233))

(assert (not b!4001622))

(assert (not b!4001608))

(assert (not b!4001619))

(assert (not tb!240565))

(assert (not b!4001708))

(assert (not b!4001660))

(assert (not b!4001721))

(assert (not b_lambda!116723))

(assert (not tb!240553))

(assert (not b!4001636))

(assert (not d!1183720))

(assert (not b!4001788))

(assert (not b!4001731))

(assert (not b!4001632))

(assert (not b!4001650))

(assert (not d!1183708))

(assert (not b!4001736))

(assert (not b!4001789))

(assert (not b!4001778))

(assert (not d!1183658))

(assert (not b!4001640))

(assert (not b!4001756))

(assert (not b_next!111899))

(assert (not b_next!111901))

(assert (not b!4001646))

(assert (not d!1183640))

(assert (not b!4001745))

(assert (not b!4001704))

(assert (not b_next!111923))

(assert (not b!4001614))

(assert (not b!4001707))

(assert b_and!307281)

(assert (not b!4001750))

(assert (not b!4001748))

(assert (not b!4001502))

(assert b_and!307283)

(assert (not b!4001574))

(assert (not b!4001783))

(assert (not d!1183670))

(assert (not b!4001764))

(assert (not b!4001775))

(assert (not b_next!111913))

(assert (not b!4001754))

(assert (not b!4001776))

(assert (not b!4001690))

(assert (not b!4001735))

(assert (not b!4001752))

(assert (not b!4001785))

(assert (not b!4001606))

(assert (not d!1183752))

(assert (not d!1183702))

(assert (not b!4001709))

(assert (not b!4001627))

(assert (not d!1183644))

(assert (not d!1183718))

(assert (not b!4001705))

(assert (not b!4001472))

(assert (not b!4001580))

(assert (not b!4001579))

(assert (not d!1183716))

(assert b_and!307267)

(assert (not b!4001581))

(assert (not d!1183668))

(assert (not b!4001522))

(assert (not b!4001613))

(assert (not d!1183774))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!111915))

(assert (not b_next!111921))

(assert b_and!307279)

(assert b_and!307263)

(assert (not b_next!111903))

(assert b_and!307267)

(assert (not b_next!111897))

(assert b_and!307275)

(assert b_and!307265)

(assert b_and!307277)

(assert (not b_next!111899))

(assert (not b_next!111901))

(assert (not b_next!111923))

(assert b_and!307281)

(assert (not b_next!111913))

(assert b_and!307283)

(check-sat)

(pop 1)

