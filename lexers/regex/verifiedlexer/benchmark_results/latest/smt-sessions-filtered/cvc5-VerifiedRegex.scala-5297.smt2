; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!271362 () Bool)

(assert start!271362)

(declare-fun b!2805807 () Bool)

(declare-fun b_free!79845 () Bool)

(declare-fun b_next!80549 () Bool)

(assert (=> b!2805807 (= b_free!79845 (not b_next!80549))))

(declare-fun tp!895227 () Bool)

(declare-fun b_and!204655 () Bool)

(assert (=> b!2805807 (= tp!895227 b_and!204655)))

(declare-fun b_free!79847 () Bool)

(declare-fun b_next!80551 () Bool)

(assert (=> b!2805807 (= b_free!79847 (not b_next!80551))))

(declare-fun tp!895234 () Bool)

(declare-fun b_and!204657 () Bool)

(assert (=> b!2805807 (= tp!895234 b_and!204657)))

(declare-fun b!2805803 () Bool)

(declare-fun b_free!79849 () Bool)

(declare-fun b_next!80553 () Bool)

(assert (=> b!2805803 (= b_free!79849 (not b_next!80553))))

(declare-fun tp!895235 () Bool)

(declare-fun b_and!204659 () Bool)

(assert (=> b!2805803 (= tp!895235 b_and!204659)))

(declare-fun b_free!79851 () Bool)

(declare-fun b_next!80555 () Bool)

(assert (=> b!2805803 (= b_free!79851 (not b_next!80555))))

(declare-fun tp!895232 () Bool)

(declare-fun b_and!204661 () Bool)

(assert (=> b!2805803 (= tp!895232 b_and!204661)))

(declare-fun b!2805801 () Bool)

(declare-fun b_free!79853 () Bool)

(declare-fun b_next!80557 () Bool)

(assert (=> b!2805801 (= b_free!79853 (not b_next!80557))))

(declare-fun tp!895230 () Bool)

(declare-fun b_and!204663 () Bool)

(assert (=> b!2805801 (= tp!895230 b_and!204663)))

(declare-fun b_free!79855 () Bool)

(declare-fun b_next!80559 () Bool)

(assert (=> b!2805801 (= b_free!79855 (not b_next!80559))))

(declare-fun tp!895229 () Bool)

(declare-fun b_and!204665 () Bool)

(assert (=> b!2805801 (= tp!895229 b_and!204665)))

(declare-fun b!2805820 () Bool)

(declare-fun e!1773809 () Bool)

(assert (=> b!2805820 (= e!1773809 true)))

(declare-fun b!2805819 () Bool)

(declare-fun e!1773808 () Bool)

(assert (=> b!2805819 (= e!1773808 e!1773809)))

(declare-fun b!2805818 () Bool)

(declare-fun e!1773807 () Bool)

(assert (=> b!2805818 (= e!1773807 e!1773808)))

(declare-fun b!2805798 () Bool)

(assert (=> b!2805798 e!1773807))

(assert (= b!2805819 b!2805820))

(assert (= b!2805818 b!2805819))

(declare-datatypes ((List!32805 0))(
  ( (Nil!32705) (Cons!32705 (h!38125 (_ BitVec 16)) (t!229139 List!32805)) )
))
(declare-datatypes ((TokenValue!5110 0))(
  ( (FloatLiteralValue!10220 (text!36215 List!32805)) (TokenValueExt!5109 (__x!21877 Int)) (Broken!25550 (value!157193 List!32805)) (Object!5209) (End!5110) (Def!5110) (Underscore!5110) (Match!5110) (Else!5110) (Error!5110) (Case!5110) (If!5110) (Extends!5110) (Abstract!5110) (Class!5110) (Val!5110) (DelimiterValue!10220 (del!5170 List!32805)) (KeywordValue!5116 (value!157194 List!32805)) (CommentValue!10220 (value!157195 List!32805)) (WhitespaceValue!10220 (value!157196 List!32805)) (IndentationValue!5110 (value!157197 List!32805)) (String!35887) (Int32!5110) (Broken!25551 (value!157198 List!32805)) (Boolean!5111) (Unit!46768) (OperatorValue!5113 (op!5170 List!32805)) (IdentifierValue!10220 (value!157199 List!32805)) (IdentifierValue!10221 (value!157200 List!32805)) (WhitespaceValue!10221 (value!157201 List!32805)) (True!10220) (False!10220) (Broken!25552 (value!157202 List!32805)) (Broken!25553 (value!157203 List!32805)) (True!10221) (RightBrace!5110) (RightBracket!5110) (Colon!5110) (Null!5110) (Comma!5110) (LeftBracket!5110) (False!10221) (LeftBrace!5110) (ImaginaryLiteralValue!5110 (text!36216 List!32805)) (StringLiteralValue!15330 (value!157204 List!32805)) (EOFValue!5110 (value!157205 List!32805)) (IdentValue!5110 (value!157206 List!32805)) (DelimiterValue!10221 (value!157207 List!32805)) (DedentValue!5110 (value!157208 List!32805)) (NewLineValue!5110 (value!157209 List!32805)) (IntegerValue!15330 (value!157210 (_ BitVec 32)) (text!36217 List!32805)) (IntegerValue!15331 (value!157211 Int) (text!36218 List!32805)) (Times!5110) (Or!5110) (Equal!5110) (Minus!5110) (Broken!25554 (value!157212 List!32805)) (And!5110) (Div!5110) (LessEqual!5110) (Mod!5110) (Concat!13368) (Not!5110) (Plus!5110) (SpaceValue!5110 (value!157213 List!32805)) (IntegerValue!15332 (value!157214 Int) (text!36219 List!32805)) (StringLiteralValue!15331 (text!36220 List!32805)) (FloatLiteralValue!10221 (text!36221 List!32805)) (BytesLiteralValue!5110 (value!157215 List!32805)) (CommentValue!10221 (value!157216 List!32805)) (StringLiteralValue!15332 (value!157217 List!32805)) (ErrorTokenValue!5110 (msg!5171 List!32805)) )
))
(declare-datatypes ((C!16674 0))(
  ( (C!16675 (val!10271 Int)) )
))
(declare-datatypes ((List!32806 0))(
  ( (Nil!32706) (Cons!32706 (h!38126 C!16674) (t!229140 List!32806)) )
))
(declare-datatypes ((IArray!20245 0))(
  ( (IArray!20246 (innerList!10180 List!32806)) )
))
(declare-datatypes ((Conc!10120 0))(
  ( (Node!10120 (left!24685 Conc!10120) (right!25015 Conc!10120) (csize!20470 Int) (cheight!10331 Int)) (Leaf!15418 (xs!13232 IArray!20245) (csize!20471 Int)) (Empty!10120) )
))
(declare-datatypes ((BalanceConc!19854 0))(
  ( (BalanceConc!19855 (c!454633 Conc!10120)) )
))
(declare-datatypes ((TokenValueInjection!9660 0))(
  ( (TokenValueInjection!9661 (toValue!6886 Int) (toChars!6745 Int)) )
))
(declare-datatypes ((Regex!8258 0))(
  ( (ElementMatch!8258 (c!454634 C!16674)) (Concat!13369 (regOne!17028 Regex!8258) (regTwo!17028 Regex!8258)) (EmptyExpr!8258) (Star!8258 (reg!8587 Regex!8258)) (EmptyLang!8258) (Union!8258 (regOne!17029 Regex!8258) (regTwo!17029 Regex!8258)) )
))
(declare-datatypes ((String!35888 0))(
  ( (String!35889 (value!157218 String)) )
))
(declare-datatypes ((Rule!9576 0))(
  ( (Rule!9577 (regex!4888 Regex!8258) (tag!5392 String!35888) (isSeparator!4888 Bool) (transformation!4888 TokenValueInjection!9660)) )
))
(declare-datatypes ((List!32807 0))(
  ( (Nil!32707) (Cons!32707 (h!38127 Rule!9576) (t!229141 List!32807)) )
))
(declare-fun rules!2540 () List!32807)

(assert (= (and b!2805798 (is-Cons!32707 rules!2540)) b!2805818))

(declare-fun order!17351 () Int)

(declare-fun order!17349 () Int)

(declare-fun lambda!103066 () Int)

(declare-fun dynLambda!13680 (Int Int) Int)

(declare-fun dynLambda!13681 (Int Int) Int)

(assert (=> b!2805820 (< (dynLambda!13680 order!17349 (toValue!6886 (transformation!4888 (h!38127 rules!2540)))) (dynLambda!13681 order!17351 lambda!103066))))

(declare-fun order!17353 () Int)

(declare-fun dynLambda!13682 (Int Int) Int)

(assert (=> b!2805820 (< (dynLambda!13682 order!17353 (toChars!6745 (transformation!4888 (h!38127 rules!2540)))) (dynLambda!13681 order!17351 lambda!103066))))

(assert (=> b!2805798 true))

(declare-datatypes ((Token!9178 0))(
  ( (Token!9179 (value!157219 TokenValue!5110) (rule!7316 Rule!9576) (size!25511 Int) (originalCharacters!5620 List!32806)) )
))
(declare-datatypes ((List!32808 0))(
  ( (Nil!32708) (Cons!32708 (h!38128 Token!9178) (t!229142 List!32808)) )
))
(declare-fun l!5055 () List!32808)

(declare-fun b!2805793 () Bool)

(declare-fun tp!895223 () Bool)

(declare-fun e!1773794 () Bool)

(declare-fun e!1773796 () Bool)

(declare-fun inv!44380 (String!35888) Bool)

(declare-fun inv!44383 (TokenValueInjection!9660) Bool)

(assert (=> b!2805793 (= e!1773796 (and tp!895223 (inv!44380 (tag!5392 (rule!7316 (h!38128 l!5055)))) (inv!44383 (transformation!4888 (rule!7316 (h!38128 l!5055)))) e!1773794))))

(declare-fun tp!895225 () Bool)

(declare-fun e!1773790 () Bool)

(declare-fun separatorToken!283 () Token!9178)

(declare-fun e!1773797 () Bool)

(declare-fun b!2805794 () Bool)

(assert (=> b!2805794 (= e!1773797 (and tp!895225 (inv!44380 (tag!5392 (rule!7316 separatorToken!283))) (inv!44383 (transformation!4888 (rule!7316 separatorToken!283))) e!1773790))))

(declare-fun b!2805795 () Bool)

(declare-fun res!1168867 () Bool)

(declare-fun e!1773798 () Bool)

(assert (=> b!2805795 (=> (not res!1168867) (not e!1773798))))

(declare-fun isEmpty!18177 (List!32807) Bool)

(assert (=> b!2805795 (= res!1168867 (not (isEmpty!18177 rules!2540)))))

(declare-fun e!1773789 () Bool)

(declare-fun tp!895231 () Bool)

(declare-fun b!2805796 () Bool)

(declare-fun inv!21 (TokenValue!5110) Bool)

(assert (=> b!2805796 (= e!1773789 (and (inv!21 (value!157219 separatorToken!283)) e!1773797 tp!895231))))

(declare-fun b!2805797 () Bool)

(declare-fun res!1168869 () Bool)

(assert (=> b!2805797 (=> (not res!1168869) (not e!1773798))))

(declare-fun contains!6038 (List!32808 Token!9178) Bool)

(assert (=> b!2805797 (= res!1168869 (contains!6038 l!5055 (h!38128 l!5055)))))

(declare-datatypes ((LexerInterface!4479 0))(
  ( (LexerInterfaceExt!4476 (__x!21878 Int)) (Lexer!4477) )
))
(declare-fun thiss!19710 () LexerInterface!4479)

(declare-fun rulesProduceEachTokenIndividuallyList!1553 (LexerInterface!4479 List!32807 List!32808) Bool)

(assert (=> b!2805798 (= e!1773798 (not (rulesProduceEachTokenIndividuallyList!1553 thiss!19710 rules!2540 (t!229142 l!5055))))))

(declare-fun lt!1002994 () Bool)

(declare-fun rulesProduceIndividualToken!2043 (LexerInterface!4479 List!32807 Token!9178) Bool)

(assert (=> b!2805798 (= lt!1002994 (rulesProduceIndividualToken!2043 thiss!19710 rules!2540 (h!38128 l!5055)))))

(declare-datatypes ((Unit!46769 0))(
  ( (Unit!46770) )
))
(declare-fun lt!1002993 () Unit!46769)

(declare-fun forallContained!1062 (List!32808 Int Token!9178) Unit!46769)

(assert (=> b!2805798 (= lt!1002993 (forallContained!1062 l!5055 lambda!103066 (h!38128 l!5055)))))

(declare-fun e!1773795 () Bool)

(declare-fun tp!895226 () Bool)

(declare-fun e!1773785 () Bool)

(declare-fun b!2805799 () Bool)

(assert (=> b!2805799 (= e!1773795 (and tp!895226 (inv!44380 (tag!5392 (h!38127 rules!2540))) (inv!44383 (transformation!4888 (h!38127 rules!2540))) e!1773785))))

(assert (=> b!2805801 (= e!1773785 (and tp!895230 tp!895229))))

(declare-fun b!2805802 () Bool)

(declare-fun res!1168865 () Bool)

(assert (=> b!2805802 (=> (not res!1168865) (not e!1773798))))

(assert (=> b!2805802 (= res!1168865 (rulesProduceEachTokenIndividuallyList!1553 thiss!19710 rules!2540 l!5055))))

(assert (=> b!2805803 (= e!1773790 (and tp!895235 tp!895232))))

(declare-fun b!2805804 () Bool)

(declare-fun e!1773791 () Bool)

(declare-fun tp!895233 () Bool)

(assert (=> b!2805804 (= e!1773791 (and e!1773795 tp!895233))))

(declare-fun res!1168866 () Bool)

(assert (=> start!271362 (=> (not res!1168866) (not e!1773798))))

(assert (=> start!271362 (= res!1168866 (is-Lexer!4477 thiss!19710))))

(assert (=> start!271362 e!1773798))

(assert (=> start!271362 true))

(assert (=> start!271362 e!1773791))

(declare-fun e!1773787 () Bool)

(assert (=> start!271362 e!1773787))

(declare-fun inv!44384 (Token!9178) Bool)

(assert (=> start!271362 (and (inv!44384 separatorToken!283) e!1773789)))

(declare-fun e!1773800 () Bool)

(declare-fun b!2805800 () Bool)

(declare-fun tp!895224 () Bool)

(assert (=> b!2805800 (= e!1773787 (and (inv!44384 (h!38128 l!5055)) e!1773800 tp!895224))))

(declare-fun b!2805805 () Bool)

(declare-fun res!1168870 () Bool)

(assert (=> b!2805805 (=> (not res!1168870) (not e!1773798))))

(declare-fun rulesInvariant!3919 (LexerInterface!4479 List!32807) Bool)

(assert (=> b!2805805 (= res!1168870 (rulesInvariant!3919 thiss!19710 rules!2540))))

(declare-fun b!2805806 () Bool)

(declare-fun res!1168871 () Bool)

(assert (=> b!2805806 (=> (not res!1168871) (not e!1773798))))

(assert (=> b!2805806 (= res!1168871 (rulesProduceIndividualToken!2043 thiss!19710 rules!2540 separatorToken!283))))

(assert (=> b!2805807 (= e!1773794 (and tp!895227 tp!895234))))

(declare-fun b!2805808 () Bool)

(declare-fun tp!895228 () Bool)

(assert (=> b!2805808 (= e!1773800 (and (inv!21 (value!157219 (h!38128 l!5055))) e!1773796 tp!895228))))

(declare-fun b!2805809 () Bool)

(declare-fun res!1168868 () Bool)

(assert (=> b!2805809 (=> (not res!1168868) (not e!1773798))))

(assert (=> b!2805809 (= res!1168868 (and (isSeparator!4888 (rule!7316 separatorToken!283)) (is-Cons!32708 l!5055)))))

(assert (= (and start!271362 res!1168866) b!2805795))

(assert (= (and b!2805795 res!1168867) b!2805805))

(assert (= (and b!2805805 res!1168870) b!2805802))

(assert (= (and b!2805802 res!1168865) b!2805806))

(assert (= (and b!2805806 res!1168871) b!2805809))

(assert (= (and b!2805809 res!1168868) b!2805797))

(assert (= (and b!2805797 res!1168869) b!2805798))

(assert (= b!2805799 b!2805801))

(assert (= b!2805804 b!2805799))

(assert (= (and start!271362 (is-Cons!32707 rules!2540)) b!2805804))

(assert (= b!2805793 b!2805807))

(assert (= b!2805808 b!2805793))

(assert (= b!2805800 b!2805808))

(assert (= (and start!271362 (is-Cons!32708 l!5055)) b!2805800))

(assert (= b!2805794 b!2805803))

(assert (= b!2805796 b!2805794))

(assert (= start!271362 b!2805796))

(declare-fun m!3234829 () Bool)

(assert (=> b!2805800 m!3234829))

(declare-fun m!3234831 () Bool)

(assert (=> b!2805799 m!3234831))

(declare-fun m!3234833 () Bool)

(assert (=> b!2805799 m!3234833))

(declare-fun m!3234835 () Bool)

(assert (=> b!2805795 m!3234835))

(declare-fun m!3234837 () Bool)

(assert (=> b!2805794 m!3234837))

(declare-fun m!3234839 () Bool)

(assert (=> b!2805794 m!3234839))

(declare-fun m!3234841 () Bool)

(assert (=> b!2805797 m!3234841))

(declare-fun m!3234843 () Bool)

(assert (=> b!2805802 m!3234843))

(declare-fun m!3234845 () Bool)

(assert (=> start!271362 m!3234845))

(declare-fun m!3234847 () Bool)

(assert (=> b!2805798 m!3234847))

(declare-fun m!3234849 () Bool)

(assert (=> b!2805798 m!3234849))

(declare-fun m!3234851 () Bool)

(assert (=> b!2805798 m!3234851))

(declare-fun m!3234853 () Bool)

(assert (=> b!2805806 m!3234853))

(declare-fun m!3234855 () Bool)

(assert (=> b!2805808 m!3234855))

(declare-fun m!3234857 () Bool)

(assert (=> b!2805805 m!3234857))

(declare-fun m!3234859 () Bool)

(assert (=> b!2805796 m!3234859))

(declare-fun m!3234861 () Bool)

(assert (=> b!2805793 m!3234861))

(declare-fun m!3234863 () Bool)

(assert (=> b!2805793 m!3234863))

(push 1)

(assert (not b!2805795))

(assert (not b!2805808))

(assert (not b!2805799))

(assert (not b!2805797))

(assert b_and!204659)

(assert (not b_next!80551))

(assert (not b_next!80557))

(assert (not b!2805802))

(assert (not b!2805800))

(assert (not b_next!80555))

(assert b_and!204655)

(assert b_and!204657)

(assert (not b!2805793))

(assert (not b_next!80549))

(assert (not b!2805796))

(assert b_and!204661)

(assert (not b!2805804))

(assert b_and!204663)

(assert (not b_next!80553))

(assert (not b_next!80559))

(assert b_and!204665)

(assert (not b!2805794))

(assert (not b!2805798))

(assert (not start!271362))

(assert (not b!2805806))

(assert (not b!2805818))

(assert (not b!2805805))

(check-sat)

(pop 1)

(push 1)

(assert b_and!204657)

(assert (not b_next!80549))

(assert b_and!204665)

(assert b_and!204659)

(assert (not b_next!80551))

(assert (not b_next!80557))

(assert (not b_next!80555))

(assert b_and!204655)

(assert b_and!204661)

(assert b_and!204663)

(assert (not b_next!80553))

(assert (not b_next!80559))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2805897 () Bool)

(declare-fun e!1773873 () Bool)

(declare-fun inv!17 (TokenValue!5110) Bool)

(assert (=> b!2805897 (= e!1773873 (inv!17 (value!157219 (h!38128 l!5055))))))

(declare-fun b!2805898 () Bool)

(declare-fun e!1773875 () Bool)

(assert (=> b!2805898 (= e!1773875 e!1773873)))

(declare-fun c!454641 () Bool)

(assert (=> b!2805898 (= c!454641 (is-IntegerValue!15331 (value!157219 (h!38128 l!5055))))))

(declare-fun b!2805899 () Bool)

(declare-fun res!1168903 () Bool)

(declare-fun e!1773874 () Bool)

(assert (=> b!2805899 (=> res!1168903 e!1773874)))

(assert (=> b!2805899 (= res!1168903 (not (is-IntegerValue!15332 (value!157219 (h!38128 l!5055)))))))

(assert (=> b!2805899 (= e!1773873 e!1773874)))

(declare-fun b!2805900 () Bool)

(declare-fun inv!16 (TokenValue!5110) Bool)

(assert (=> b!2805900 (= e!1773875 (inv!16 (value!157219 (h!38128 l!5055))))))

(declare-fun b!2805901 () Bool)

(declare-fun inv!15 (TokenValue!5110) Bool)

(assert (=> b!2805901 (= e!1773874 (inv!15 (value!157219 (h!38128 l!5055))))))

(declare-fun d!814472 () Bool)

(declare-fun c!454642 () Bool)

(assert (=> d!814472 (= c!454642 (is-IntegerValue!15330 (value!157219 (h!38128 l!5055))))))

(assert (=> d!814472 (= (inv!21 (value!157219 (h!38128 l!5055))) e!1773875)))

(assert (= (and d!814472 c!454642) b!2805900))

(assert (= (and d!814472 (not c!454642)) b!2805898))

(assert (= (and b!2805898 c!454641) b!2805897))

(assert (= (and b!2805898 (not c!454641)) b!2805899))

(assert (= (and b!2805899 (not res!1168903)) b!2805901))

(declare-fun m!3234901 () Bool)

(assert (=> b!2805897 m!3234901))

(declare-fun m!3234903 () Bool)

(assert (=> b!2805900 m!3234903))

(declare-fun m!3234905 () Bool)

(assert (=> b!2805901 m!3234905))

(assert (=> b!2805808 d!814472))

(declare-fun d!814474 () Bool)

(declare-fun lt!1003003 () Bool)

(declare-fun content!4553 (List!32808) (Set Token!9178))

(assert (=> d!814474 (= lt!1003003 (set.member (h!38128 l!5055) (content!4553 l!5055)))))

(declare-fun e!1773881 () Bool)

(assert (=> d!814474 (= lt!1003003 e!1773881)))

(declare-fun res!1168909 () Bool)

(assert (=> d!814474 (=> (not res!1168909) (not e!1773881))))

(assert (=> d!814474 (= res!1168909 (is-Cons!32708 l!5055))))

(assert (=> d!814474 (= (contains!6038 l!5055 (h!38128 l!5055)) lt!1003003)))

(declare-fun b!2805906 () Bool)

(declare-fun e!1773880 () Bool)

(assert (=> b!2805906 (= e!1773881 e!1773880)))

(declare-fun res!1168908 () Bool)

(assert (=> b!2805906 (=> res!1168908 e!1773880)))

(assert (=> b!2805906 (= res!1168908 (= (h!38128 l!5055) (h!38128 l!5055)))))

(declare-fun b!2805907 () Bool)

(assert (=> b!2805907 (= e!1773880 (contains!6038 (t!229142 l!5055) (h!38128 l!5055)))))

(assert (= (and d!814474 res!1168909) b!2805906))

(assert (= (and b!2805906 (not res!1168908)) b!2805907))

(declare-fun m!3234907 () Bool)

(assert (=> d!814474 m!3234907))

(declare-fun m!3234909 () Bool)

(assert (=> d!814474 m!3234909))

(declare-fun m!3234911 () Bool)

(assert (=> b!2805907 m!3234911))

(assert (=> b!2805797 d!814474))

(declare-fun bs!516112 () Bool)

(declare-fun d!814476 () Bool)

(assert (= bs!516112 (and d!814476 b!2805798)))

(declare-fun lambda!103072 () Int)

(assert (=> bs!516112 (= lambda!103072 lambda!103066)))

(declare-fun b!2805945 () Bool)

(declare-fun e!1773908 () Bool)

(assert (=> b!2805945 (= e!1773908 true)))

(declare-fun b!2805944 () Bool)

(declare-fun e!1773907 () Bool)

(assert (=> b!2805944 (= e!1773907 e!1773908)))

(declare-fun b!2805943 () Bool)

(declare-fun e!1773906 () Bool)

(assert (=> b!2805943 (= e!1773906 e!1773907)))

(assert (=> d!814476 e!1773906))

(assert (= b!2805944 b!2805945))

(assert (= b!2805943 b!2805944))

(assert (= (and d!814476 (is-Cons!32707 rules!2540)) b!2805943))

(assert (=> b!2805945 (< (dynLambda!13680 order!17349 (toValue!6886 (transformation!4888 (h!38127 rules!2540)))) (dynLambda!13681 order!17351 lambda!103072))))

(assert (=> b!2805945 (< (dynLambda!13682 order!17353 (toChars!6745 (transformation!4888 (h!38127 rules!2540)))) (dynLambda!13681 order!17351 lambda!103072))))

(assert (=> d!814476 true))

(declare-fun lt!1003006 () Bool)

(declare-fun forall!6726 (List!32808 Int) Bool)

(assert (=> d!814476 (= lt!1003006 (forall!6726 (t!229142 l!5055) lambda!103072))))

(declare-fun e!1773904 () Bool)

(assert (=> d!814476 (= lt!1003006 e!1773904)))

(declare-fun res!1168926 () Bool)

(assert (=> d!814476 (=> res!1168926 e!1773904)))

(assert (=> d!814476 (= res!1168926 (not (is-Cons!32708 (t!229142 l!5055))))))

(assert (=> d!814476 (not (isEmpty!18177 rules!2540))))

(assert (=> d!814476 (= (rulesProduceEachTokenIndividuallyList!1553 thiss!19710 rules!2540 (t!229142 l!5055)) lt!1003006)))

(declare-fun b!2805941 () Bool)

(declare-fun e!1773905 () Bool)

(assert (=> b!2805941 (= e!1773904 e!1773905)))

(declare-fun res!1168927 () Bool)

(assert (=> b!2805941 (=> (not res!1168927) (not e!1773905))))

(assert (=> b!2805941 (= res!1168927 (rulesProduceIndividualToken!2043 thiss!19710 rules!2540 (h!38128 (t!229142 l!5055))))))

(declare-fun b!2805942 () Bool)

(assert (=> b!2805942 (= e!1773905 (rulesProduceEachTokenIndividuallyList!1553 thiss!19710 rules!2540 (t!229142 (t!229142 l!5055))))))

(assert (= (and d!814476 (not res!1168926)) b!2805941))

(assert (= (and b!2805941 res!1168927) b!2805942))

(declare-fun m!3234935 () Bool)

(assert (=> d!814476 m!3234935))

(assert (=> d!814476 m!3234835))

(declare-fun m!3234937 () Bool)

(assert (=> b!2805941 m!3234937))

(declare-fun m!3234939 () Bool)

(assert (=> b!2805942 m!3234939))

(assert (=> b!2805798 d!814476))

(declare-fun d!814488 () Bool)

(declare-fun lt!1003011 () Bool)

(declare-fun e!1773913 () Bool)

(assert (=> d!814488 (= lt!1003011 e!1773913)))

(declare-fun res!1168935 () Bool)

(assert (=> d!814488 (=> (not res!1168935) (not e!1773913))))

(declare-datatypes ((IArray!20249 0))(
  ( (IArray!20250 (innerList!10182 List!32808)) )
))
(declare-datatypes ((Conc!10122 0))(
  ( (Node!10122 (left!24689 Conc!10122) (right!25019 Conc!10122) (csize!20474 Int) (cheight!10333 Int)) (Leaf!15420 (xs!13234 IArray!20249) (csize!20475 Int)) (Empty!10122) )
))
(declare-datatypes ((BalanceConc!19858 0))(
  ( (BalanceConc!19859 (c!454651 Conc!10122)) )
))
(declare-fun list!12244 (BalanceConc!19858) List!32808)

(declare-datatypes ((tuple2!33304 0))(
  ( (tuple2!33305 (_1!19745 BalanceConc!19858) (_2!19745 BalanceConc!19854)) )
))
(declare-fun lex!1972 (LexerInterface!4479 List!32807 BalanceConc!19854) tuple2!33304)

(declare-fun print!1691 (LexerInterface!4479 BalanceConc!19858) BalanceConc!19854)

(declare-fun singletonSeq!2112 (Token!9178) BalanceConc!19858)

(assert (=> d!814488 (= res!1168935 (= (list!12244 (_1!19745 (lex!1972 thiss!19710 rules!2540 (print!1691 thiss!19710 (singletonSeq!2112 (h!38128 l!5055)))))) (list!12244 (singletonSeq!2112 (h!38128 l!5055)))))))

(declare-fun e!1773914 () Bool)

(assert (=> d!814488 (= lt!1003011 e!1773914)))

(declare-fun res!1168936 () Bool)

(assert (=> d!814488 (=> (not res!1168936) (not e!1773914))))

(declare-fun lt!1003012 () tuple2!33304)

(declare-fun size!25513 (BalanceConc!19858) Int)

(assert (=> d!814488 (= res!1168936 (= (size!25513 (_1!19745 lt!1003012)) 1))))

(assert (=> d!814488 (= lt!1003012 (lex!1972 thiss!19710 rules!2540 (print!1691 thiss!19710 (singletonSeq!2112 (h!38128 l!5055)))))))

(assert (=> d!814488 (not (isEmpty!18177 rules!2540))))

(assert (=> d!814488 (= (rulesProduceIndividualToken!2043 thiss!19710 rules!2540 (h!38128 l!5055)) lt!1003011)))

(declare-fun b!2805952 () Bool)

(declare-fun res!1168934 () Bool)

(assert (=> b!2805952 (=> (not res!1168934) (not e!1773914))))

(declare-fun apply!7639 (BalanceConc!19858 Int) Token!9178)

(assert (=> b!2805952 (= res!1168934 (= (apply!7639 (_1!19745 lt!1003012) 0) (h!38128 l!5055)))))

(declare-fun b!2805953 () Bool)

(declare-fun isEmpty!18179 (BalanceConc!19854) Bool)

(assert (=> b!2805953 (= e!1773914 (isEmpty!18179 (_2!19745 lt!1003012)))))

(declare-fun b!2805954 () Bool)

(assert (=> b!2805954 (= e!1773913 (isEmpty!18179 (_2!19745 (lex!1972 thiss!19710 rules!2540 (print!1691 thiss!19710 (singletonSeq!2112 (h!38128 l!5055)))))))))

(assert (= (and d!814488 res!1168936) b!2805952))

(assert (= (and b!2805952 res!1168934) b!2805953))

(assert (= (and d!814488 res!1168935) b!2805954))

(declare-fun m!3234941 () Bool)

(assert (=> d!814488 m!3234941))

(declare-fun m!3234943 () Bool)

(assert (=> d!814488 m!3234943))

(declare-fun m!3234945 () Bool)

(assert (=> d!814488 m!3234945))

(assert (=> d!814488 m!3234835))

(assert (=> d!814488 m!3234943))

(declare-fun m!3234947 () Bool)

(assert (=> d!814488 m!3234947))

(assert (=> d!814488 m!3234945))

(declare-fun m!3234949 () Bool)

(assert (=> d!814488 m!3234949))

(assert (=> d!814488 m!3234943))

(declare-fun m!3234951 () Bool)

(assert (=> d!814488 m!3234951))

(declare-fun m!3234953 () Bool)

(assert (=> b!2805952 m!3234953))

(declare-fun m!3234955 () Bool)

(assert (=> b!2805953 m!3234955))

(assert (=> b!2805954 m!3234943))

(assert (=> b!2805954 m!3234943))

(assert (=> b!2805954 m!3234945))

(assert (=> b!2805954 m!3234945))

(assert (=> b!2805954 m!3234949))

(declare-fun m!3234957 () Bool)

(assert (=> b!2805954 m!3234957))

(assert (=> b!2805798 d!814488))

(declare-fun d!814490 () Bool)

(declare-fun dynLambda!13686 (Int Token!9178) Bool)

(assert (=> d!814490 (dynLambda!13686 lambda!103066 (h!38128 l!5055))))

(declare-fun lt!1003015 () Unit!46769)

(declare-fun choose!16545 (List!32808 Int Token!9178) Unit!46769)

(assert (=> d!814490 (= lt!1003015 (choose!16545 l!5055 lambda!103066 (h!38128 l!5055)))))

(declare-fun e!1773917 () Bool)

(assert (=> d!814490 e!1773917))

(declare-fun res!1168939 () Bool)

(assert (=> d!814490 (=> (not res!1168939) (not e!1773917))))

(assert (=> d!814490 (= res!1168939 (forall!6726 l!5055 lambda!103066))))

(assert (=> d!814490 (= (forallContained!1062 l!5055 lambda!103066 (h!38128 l!5055)) lt!1003015)))

(declare-fun b!2805957 () Bool)

(assert (=> b!2805957 (= e!1773917 (contains!6038 l!5055 (h!38128 l!5055)))))

(assert (= (and d!814490 res!1168939) b!2805957))

(declare-fun b_lambda!83813 () Bool)

(assert (=> (not b_lambda!83813) (not d!814490)))

(declare-fun m!3234959 () Bool)

(assert (=> d!814490 m!3234959))

(declare-fun m!3234961 () Bool)

(assert (=> d!814490 m!3234961))

(declare-fun m!3234963 () Bool)

(assert (=> d!814490 m!3234963))

(assert (=> b!2805957 m!3234841))

(assert (=> b!2805798 d!814490))

(declare-fun d!814492 () Bool)

(declare-fun res!1168944 () Bool)

(declare-fun e!1773920 () Bool)

(assert (=> d!814492 (=> (not res!1168944) (not e!1773920))))

(declare-fun isEmpty!18180 (List!32806) Bool)

(assert (=> d!814492 (= res!1168944 (not (isEmpty!18180 (originalCharacters!5620 (h!38128 l!5055)))))))

(assert (=> d!814492 (= (inv!44384 (h!38128 l!5055)) e!1773920)))

(declare-fun b!2805962 () Bool)

(declare-fun res!1168945 () Bool)

(assert (=> b!2805962 (=> (not res!1168945) (not e!1773920))))

(declare-fun list!12245 (BalanceConc!19854) List!32806)

(declare-fun dynLambda!13687 (Int TokenValue!5110) BalanceConc!19854)

(assert (=> b!2805962 (= res!1168945 (= (originalCharacters!5620 (h!38128 l!5055)) (list!12245 (dynLambda!13687 (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055)))) (value!157219 (h!38128 l!5055))))))))

(declare-fun b!2805963 () Bool)

(declare-fun size!25514 (List!32806) Int)

(assert (=> b!2805963 (= e!1773920 (= (size!25511 (h!38128 l!5055)) (size!25514 (originalCharacters!5620 (h!38128 l!5055)))))))

(assert (= (and d!814492 res!1168944) b!2805962))

(assert (= (and b!2805962 res!1168945) b!2805963))

(declare-fun b_lambda!83815 () Bool)

(assert (=> (not b_lambda!83815) (not b!2805962)))

(declare-fun t!229159 () Bool)

(declare-fun tb!153107 () Bool)

(assert (=> (and b!2805807 (= (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055)))) (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055))))) t!229159) tb!153107))

(declare-fun b!2805968 () Bool)

(declare-fun e!1773923 () Bool)

(declare-fun tp!895280 () Bool)

(declare-fun inv!44387 (Conc!10120) Bool)

(assert (=> b!2805968 (= e!1773923 (and (inv!44387 (c!454633 (dynLambda!13687 (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055)))) (value!157219 (h!38128 l!5055))))) tp!895280))))

(declare-fun result!190264 () Bool)

(declare-fun inv!44388 (BalanceConc!19854) Bool)

(assert (=> tb!153107 (= result!190264 (and (inv!44388 (dynLambda!13687 (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055)))) (value!157219 (h!38128 l!5055)))) e!1773923))))

(assert (= tb!153107 b!2805968))

(declare-fun m!3234965 () Bool)

(assert (=> b!2805968 m!3234965))

(declare-fun m!3234967 () Bool)

(assert (=> tb!153107 m!3234967))

(assert (=> b!2805962 t!229159))

(declare-fun b_and!204685 () Bool)

(assert (= b_and!204657 (and (=> t!229159 result!190264) b_and!204685)))

(declare-fun tb!153109 () Bool)

(declare-fun t!229161 () Bool)

(assert (=> (and b!2805803 (= (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283))) (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055))))) t!229161) tb!153109))

(declare-fun result!190268 () Bool)

(assert (= result!190268 result!190264))

(assert (=> b!2805962 t!229161))

(declare-fun b_and!204687 () Bool)

(assert (= b_and!204661 (and (=> t!229161 result!190268) b_and!204687)))

(declare-fun tb!153111 () Bool)

(declare-fun t!229163 () Bool)

(assert (=> (and b!2805801 (= (toChars!6745 (transformation!4888 (h!38127 rules!2540))) (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055))))) t!229163) tb!153111))

(declare-fun result!190270 () Bool)

(assert (= result!190270 result!190264))

(assert (=> b!2805962 t!229163))

(declare-fun b_and!204689 () Bool)

(assert (= b_and!204665 (and (=> t!229163 result!190270) b_and!204689)))

(declare-fun m!3234969 () Bool)

(assert (=> d!814492 m!3234969))

(declare-fun m!3234971 () Bool)

(assert (=> b!2805962 m!3234971))

(assert (=> b!2805962 m!3234971))

(declare-fun m!3234973 () Bool)

(assert (=> b!2805962 m!3234973))

(declare-fun m!3234975 () Bool)

(assert (=> b!2805963 m!3234975))

(assert (=> b!2805800 d!814492))

(declare-fun d!814494 () Bool)

(assert (=> d!814494 (= (inv!44380 (tag!5392 (h!38127 rules!2540))) (= (mod (str.len (value!157218 (tag!5392 (h!38127 rules!2540)))) 2) 0))))

(assert (=> b!2805799 d!814494))

(declare-fun d!814496 () Bool)

(declare-fun res!1168948 () Bool)

(declare-fun e!1773926 () Bool)

(assert (=> d!814496 (=> (not res!1168948) (not e!1773926))))

(declare-fun semiInverseModEq!2016 (Int Int) Bool)

(assert (=> d!814496 (= res!1168948 (semiInverseModEq!2016 (toChars!6745 (transformation!4888 (h!38127 rules!2540))) (toValue!6886 (transformation!4888 (h!38127 rules!2540)))))))

(assert (=> d!814496 (= (inv!44383 (transformation!4888 (h!38127 rules!2540))) e!1773926)))

(declare-fun b!2805971 () Bool)

(declare-fun equivClasses!1917 (Int Int) Bool)

(assert (=> b!2805971 (= e!1773926 (equivClasses!1917 (toChars!6745 (transformation!4888 (h!38127 rules!2540))) (toValue!6886 (transformation!4888 (h!38127 rules!2540)))))))

(assert (= (and d!814496 res!1168948) b!2805971))

(declare-fun m!3234977 () Bool)

(assert (=> d!814496 m!3234977))

(declare-fun m!3234979 () Bool)

(assert (=> b!2805971 m!3234979))

(assert (=> b!2805799 d!814496))

(declare-fun bs!516113 () Bool)

(declare-fun d!814498 () Bool)

(assert (= bs!516113 (and d!814498 b!2805798)))

(declare-fun lambda!103073 () Int)

(assert (=> bs!516113 (= lambda!103073 lambda!103066)))

(declare-fun bs!516114 () Bool)

(assert (= bs!516114 (and d!814498 d!814476)))

(assert (=> bs!516114 (= lambda!103073 lambda!103072)))

(declare-fun b!2805976 () Bool)

(declare-fun e!1773931 () Bool)

(assert (=> b!2805976 (= e!1773931 true)))

(declare-fun b!2805975 () Bool)

(declare-fun e!1773930 () Bool)

(assert (=> b!2805975 (= e!1773930 e!1773931)))

(declare-fun b!2805974 () Bool)

(declare-fun e!1773929 () Bool)

(assert (=> b!2805974 (= e!1773929 e!1773930)))

(assert (=> d!814498 e!1773929))

(assert (= b!2805975 b!2805976))

(assert (= b!2805974 b!2805975))

(assert (= (and d!814498 (is-Cons!32707 rules!2540)) b!2805974))

(assert (=> b!2805976 (< (dynLambda!13680 order!17349 (toValue!6886 (transformation!4888 (h!38127 rules!2540)))) (dynLambda!13681 order!17351 lambda!103073))))

(assert (=> b!2805976 (< (dynLambda!13682 order!17353 (toChars!6745 (transformation!4888 (h!38127 rules!2540)))) (dynLambda!13681 order!17351 lambda!103073))))

(assert (=> d!814498 true))

(declare-fun lt!1003016 () Bool)

(assert (=> d!814498 (= lt!1003016 (forall!6726 l!5055 lambda!103073))))

(declare-fun e!1773927 () Bool)

(assert (=> d!814498 (= lt!1003016 e!1773927)))

(declare-fun res!1168949 () Bool)

(assert (=> d!814498 (=> res!1168949 e!1773927)))

(assert (=> d!814498 (= res!1168949 (not (is-Cons!32708 l!5055)))))

(assert (=> d!814498 (not (isEmpty!18177 rules!2540))))

(assert (=> d!814498 (= (rulesProduceEachTokenIndividuallyList!1553 thiss!19710 rules!2540 l!5055) lt!1003016)))

(declare-fun b!2805972 () Bool)

(declare-fun e!1773928 () Bool)

(assert (=> b!2805972 (= e!1773927 e!1773928)))

(declare-fun res!1168950 () Bool)

(assert (=> b!2805972 (=> (not res!1168950) (not e!1773928))))

(assert (=> b!2805972 (= res!1168950 (rulesProduceIndividualToken!2043 thiss!19710 rules!2540 (h!38128 l!5055)))))

(declare-fun b!2805973 () Bool)

(assert (=> b!2805973 (= e!1773928 (rulesProduceEachTokenIndividuallyList!1553 thiss!19710 rules!2540 (t!229142 l!5055)))))

(assert (= (and d!814498 (not res!1168949)) b!2805972))

(assert (= (and b!2805972 res!1168950) b!2805973))

(declare-fun m!3234981 () Bool)

(assert (=> d!814498 m!3234981))

(assert (=> d!814498 m!3234835))

(assert (=> b!2805972 m!3234849))

(assert (=> b!2805973 m!3234847))

(assert (=> b!2805802 d!814498))

(declare-fun d!814500 () Bool)

(assert (=> d!814500 (= (inv!44380 (tag!5392 (rule!7316 (h!38128 l!5055)))) (= (mod (str.len (value!157218 (tag!5392 (rule!7316 (h!38128 l!5055))))) 2) 0))))

(assert (=> b!2805793 d!814500))

(declare-fun d!814502 () Bool)

(declare-fun res!1168951 () Bool)

(declare-fun e!1773932 () Bool)

(assert (=> d!814502 (=> (not res!1168951) (not e!1773932))))

(assert (=> d!814502 (= res!1168951 (semiInverseModEq!2016 (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055)))) (toValue!6886 (transformation!4888 (rule!7316 (h!38128 l!5055))))))))

(assert (=> d!814502 (= (inv!44383 (transformation!4888 (rule!7316 (h!38128 l!5055)))) e!1773932)))

(declare-fun b!2805977 () Bool)

(assert (=> b!2805977 (= e!1773932 (equivClasses!1917 (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055)))) (toValue!6886 (transformation!4888 (rule!7316 (h!38128 l!5055))))))))

(assert (= (and d!814502 res!1168951) b!2805977))

(declare-fun m!3234983 () Bool)

(assert (=> d!814502 m!3234983))

(declare-fun m!3234985 () Bool)

(assert (=> b!2805977 m!3234985))

(assert (=> b!2805793 d!814502))

(declare-fun d!814504 () Bool)

(declare-fun res!1168954 () Bool)

(declare-fun e!1773935 () Bool)

(assert (=> d!814504 (=> (not res!1168954) (not e!1773935))))

(declare-fun rulesValid!1804 (LexerInterface!4479 List!32807) Bool)

(assert (=> d!814504 (= res!1168954 (rulesValid!1804 thiss!19710 rules!2540))))

(assert (=> d!814504 (= (rulesInvariant!3919 thiss!19710 rules!2540) e!1773935)))

(declare-fun b!2805980 () Bool)

(declare-datatypes ((List!32813 0))(
  ( (Nil!32713) (Cons!32713 (h!38133 String!35888) (t!229179 List!32813)) )
))
(declare-fun noDuplicateTag!1800 (LexerInterface!4479 List!32807 List!32813) Bool)

(assert (=> b!2805980 (= e!1773935 (noDuplicateTag!1800 thiss!19710 rules!2540 Nil!32713))))

(assert (= (and d!814504 res!1168954) b!2805980))

(declare-fun m!3234987 () Bool)

(assert (=> d!814504 m!3234987))

(declare-fun m!3234989 () Bool)

(assert (=> b!2805980 m!3234989))

(assert (=> b!2805805 d!814504))

(declare-fun d!814506 () Bool)

(declare-fun res!1168955 () Bool)

(declare-fun e!1773936 () Bool)

(assert (=> d!814506 (=> (not res!1168955) (not e!1773936))))

(assert (=> d!814506 (= res!1168955 (not (isEmpty!18180 (originalCharacters!5620 separatorToken!283))))))

(assert (=> d!814506 (= (inv!44384 separatorToken!283) e!1773936)))

(declare-fun b!2805981 () Bool)

(declare-fun res!1168956 () Bool)

(assert (=> b!2805981 (=> (not res!1168956) (not e!1773936))))

(assert (=> b!2805981 (= res!1168956 (= (originalCharacters!5620 separatorToken!283) (list!12245 (dynLambda!13687 (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283))) (value!157219 separatorToken!283)))))))

(declare-fun b!2805982 () Bool)

(assert (=> b!2805982 (= e!1773936 (= (size!25511 separatorToken!283) (size!25514 (originalCharacters!5620 separatorToken!283))))))

(assert (= (and d!814506 res!1168955) b!2805981))

(assert (= (and b!2805981 res!1168956) b!2805982))

(declare-fun b_lambda!83817 () Bool)

(assert (=> (not b_lambda!83817) (not b!2805981)))

(declare-fun t!229165 () Bool)

(declare-fun tb!153113 () Bool)

(assert (=> (and b!2805807 (= (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055)))) (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283)))) t!229165) tb!153113))

(declare-fun b!2805983 () Bool)

(declare-fun e!1773937 () Bool)

(declare-fun tp!895281 () Bool)

(assert (=> b!2805983 (= e!1773937 (and (inv!44387 (c!454633 (dynLambda!13687 (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283))) (value!157219 separatorToken!283)))) tp!895281))))

(declare-fun result!190272 () Bool)

(assert (=> tb!153113 (= result!190272 (and (inv!44388 (dynLambda!13687 (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283))) (value!157219 separatorToken!283))) e!1773937))))

(assert (= tb!153113 b!2805983))

(declare-fun m!3234991 () Bool)

(assert (=> b!2805983 m!3234991))

(declare-fun m!3234993 () Bool)

(assert (=> tb!153113 m!3234993))

(assert (=> b!2805981 t!229165))

(declare-fun b_and!204691 () Bool)

(assert (= b_and!204685 (and (=> t!229165 result!190272) b_and!204691)))

(declare-fun t!229167 () Bool)

(declare-fun tb!153115 () Bool)

(assert (=> (and b!2805803 (= (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283))) (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283)))) t!229167) tb!153115))

(declare-fun result!190274 () Bool)

(assert (= result!190274 result!190272))

(assert (=> b!2805981 t!229167))

(declare-fun b_and!204693 () Bool)

(assert (= b_and!204687 (and (=> t!229167 result!190274) b_and!204693)))

(declare-fun tb!153117 () Bool)

(declare-fun t!229169 () Bool)

(assert (=> (and b!2805801 (= (toChars!6745 (transformation!4888 (h!38127 rules!2540))) (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283)))) t!229169) tb!153117))

(declare-fun result!190276 () Bool)

(assert (= result!190276 result!190272))

(assert (=> b!2805981 t!229169))

(declare-fun b_and!204695 () Bool)

(assert (= b_and!204689 (and (=> t!229169 result!190276) b_and!204695)))

(declare-fun m!3234995 () Bool)

(assert (=> d!814506 m!3234995))

(declare-fun m!3234997 () Bool)

(assert (=> b!2805981 m!3234997))

(assert (=> b!2805981 m!3234997))

(declare-fun m!3234999 () Bool)

(assert (=> b!2805981 m!3234999))

(declare-fun m!3235001 () Bool)

(assert (=> b!2805982 m!3235001))

(assert (=> start!271362 d!814506))

(declare-fun d!814508 () Bool)

(assert (=> d!814508 (= (inv!44380 (tag!5392 (rule!7316 separatorToken!283))) (= (mod (str.len (value!157218 (tag!5392 (rule!7316 separatorToken!283)))) 2) 0))))

(assert (=> b!2805794 d!814508))

(declare-fun d!814510 () Bool)

(declare-fun res!1168957 () Bool)

(declare-fun e!1773938 () Bool)

(assert (=> d!814510 (=> (not res!1168957) (not e!1773938))))

(assert (=> d!814510 (= res!1168957 (semiInverseModEq!2016 (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283))) (toValue!6886 (transformation!4888 (rule!7316 separatorToken!283)))))))

(assert (=> d!814510 (= (inv!44383 (transformation!4888 (rule!7316 separatorToken!283))) e!1773938)))

(declare-fun b!2805984 () Bool)

(assert (=> b!2805984 (= e!1773938 (equivClasses!1917 (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283))) (toValue!6886 (transformation!4888 (rule!7316 separatorToken!283)))))))

(assert (= (and d!814510 res!1168957) b!2805984))

(declare-fun m!3235003 () Bool)

(assert (=> d!814510 m!3235003))

(declare-fun m!3235005 () Bool)

(assert (=> b!2805984 m!3235005))

(assert (=> b!2805794 d!814510))

(declare-fun b!2805985 () Bool)

(declare-fun e!1773939 () Bool)

(assert (=> b!2805985 (= e!1773939 (inv!17 (value!157219 separatorToken!283)))))

(declare-fun b!2805986 () Bool)

(declare-fun e!1773941 () Bool)

(assert (=> b!2805986 (= e!1773941 e!1773939)))

(declare-fun c!454649 () Bool)

(assert (=> b!2805986 (= c!454649 (is-IntegerValue!15331 (value!157219 separatorToken!283)))))

(declare-fun b!2805987 () Bool)

(declare-fun res!1168958 () Bool)

(declare-fun e!1773940 () Bool)

(assert (=> b!2805987 (=> res!1168958 e!1773940)))

(assert (=> b!2805987 (= res!1168958 (not (is-IntegerValue!15332 (value!157219 separatorToken!283))))))

(assert (=> b!2805987 (= e!1773939 e!1773940)))

(declare-fun b!2805988 () Bool)

(assert (=> b!2805988 (= e!1773941 (inv!16 (value!157219 separatorToken!283)))))

(declare-fun b!2805989 () Bool)

(assert (=> b!2805989 (= e!1773940 (inv!15 (value!157219 separatorToken!283)))))

(declare-fun d!814512 () Bool)

(declare-fun c!454650 () Bool)

(assert (=> d!814512 (= c!454650 (is-IntegerValue!15330 (value!157219 separatorToken!283)))))

(assert (=> d!814512 (= (inv!21 (value!157219 separatorToken!283)) e!1773941)))

(assert (= (and d!814512 c!454650) b!2805988))

(assert (= (and d!814512 (not c!454650)) b!2805986))

(assert (= (and b!2805986 c!454649) b!2805985))

(assert (= (and b!2805986 (not c!454649)) b!2805987))

(assert (= (and b!2805987 (not res!1168958)) b!2805989))

(declare-fun m!3235007 () Bool)

(assert (=> b!2805985 m!3235007))

(declare-fun m!3235009 () Bool)

(assert (=> b!2805988 m!3235009))

(declare-fun m!3235011 () Bool)

(assert (=> b!2805989 m!3235011))

(assert (=> b!2805796 d!814512))

(declare-fun d!814514 () Bool)

(declare-fun lt!1003017 () Bool)

(declare-fun e!1773942 () Bool)

(assert (=> d!814514 (= lt!1003017 e!1773942)))

(declare-fun res!1168960 () Bool)

(assert (=> d!814514 (=> (not res!1168960) (not e!1773942))))

(assert (=> d!814514 (= res!1168960 (= (list!12244 (_1!19745 (lex!1972 thiss!19710 rules!2540 (print!1691 thiss!19710 (singletonSeq!2112 separatorToken!283))))) (list!12244 (singletonSeq!2112 separatorToken!283))))))

(declare-fun e!1773943 () Bool)

(assert (=> d!814514 (= lt!1003017 e!1773943)))

(declare-fun res!1168961 () Bool)

(assert (=> d!814514 (=> (not res!1168961) (not e!1773943))))

(declare-fun lt!1003018 () tuple2!33304)

(assert (=> d!814514 (= res!1168961 (= (size!25513 (_1!19745 lt!1003018)) 1))))

(assert (=> d!814514 (= lt!1003018 (lex!1972 thiss!19710 rules!2540 (print!1691 thiss!19710 (singletonSeq!2112 separatorToken!283))))))

(assert (=> d!814514 (not (isEmpty!18177 rules!2540))))

(assert (=> d!814514 (= (rulesProduceIndividualToken!2043 thiss!19710 rules!2540 separatorToken!283) lt!1003017)))

(declare-fun b!2805990 () Bool)

(declare-fun res!1168959 () Bool)

(assert (=> b!2805990 (=> (not res!1168959) (not e!1773943))))

(assert (=> b!2805990 (= res!1168959 (= (apply!7639 (_1!19745 lt!1003018) 0) separatorToken!283))))

(declare-fun b!2805991 () Bool)

(assert (=> b!2805991 (= e!1773943 (isEmpty!18179 (_2!19745 lt!1003018)))))

(declare-fun b!2805992 () Bool)

(assert (=> b!2805992 (= e!1773942 (isEmpty!18179 (_2!19745 (lex!1972 thiss!19710 rules!2540 (print!1691 thiss!19710 (singletonSeq!2112 separatorToken!283))))))))

(assert (= (and d!814514 res!1168961) b!2805990))

(assert (= (and b!2805990 res!1168959) b!2805991))

(assert (= (and d!814514 res!1168960) b!2805992))

(declare-fun m!3235013 () Bool)

(assert (=> d!814514 m!3235013))

(declare-fun m!3235015 () Bool)

(assert (=> d!814514 m!3235015))

(declare-fun m!3235017 () Bool)

(assert (=> d!814514 m!3235017))

(assert (=> d!814514 m!3234835))

(assert (=> d!814514 m!3235015))

(declare-fun m!3235019 () Bool)

(assert (=> d!814514 m!3235019))

(assert (=> d!814514 m!3235017))

(declare-fun m!3235021 () Bool)

(assert (=> d!814514 m!3235021))

(assert (=> d!814514 m!3235015))

(declare-fun m!3235023 () Bool)

(assert (=> d!814514 m!3235023))

(declare-fun m!3235025 () Bool)

(assert (=> b!2805990 m!3235025))

(declare-fun m!3235027 () Bool)

(assert (=> b!2805991 m!3235027))

(assert (=> b!2805992 m!3235015))

(assert (=> b!2805992 m!3235015))

(assert (=> b!2805992 m!3235017))

(assert (=> b!2805992 m!3235017))

(assert (=> b!2805992 m!3235021))

(declare-fun m!3235029 () Bool)

(assert (=> b!2805992 m!3235029))

(assert (=> b!2805806 d!814514))

(declare-fun d!814516 () Bool)

(assert (=> d!814516 (= (isEmpty!18177 rules!2540) (is-Nil!32707 rules!2540))))

(assert (=> b!2805795 d!814516))

(declare-fun b!2805997 () Bool)

(declare-fun e!1773946 () Bool)

(declare-fun tp_is_empty!14297 () Bool)

(declare-fun tp!895284 () Bool)

(assert (=> b!2805997 (= e!1773946 (and tp_is_empty!14297 tp!895284))))

(assert (=> b!2805808 (= tp!895228 e!1773946)))

(assert (= (and b!2805808 (is-Cons!32706 (originalCharacters!5620 (h!38128 l!5055)))) b!2805997))

(declare-fun b!2806000 () Bool)

(declare-fun e!1773949 () Bool)

(assert (=> b!2806000 (= e!1773949 true)))

(declare-fun b!2805999 () Bool)

(declare-fun e!1773948 () Bool)

(assert (=> b!2805999 (= e!1773948 e!1773949)))

(declare-fun b!2805998 () Bool)

(declare-fun e!1773947 () Bool)

(assert (=> b!2805998 (= e!1773947 e!1773948)))

(assert (=> b!2805818 e!1773947))

(assert (= b!2805999 b!2806000))

(assert (= b!2805998 b!2805999))

(assert (= (and b!2805818 (is-Cons!32707 (t!229141 rules!2540))) b!2805998))

(assert (=> b!2806000 (< (dynLambda!13680 order!17349 (toValue!6886 (transformation!4888 (h!38127 (t!229141 rules!2540))))) (dynLambda!13681 order!17351 lambda!103066))))

(assert (=> b!2806000 (< (dynLambda!13682 order!17353 (toChars!6745 (transformation!4888 (h!38127 (t!229141 rules!2540))))) (dynLambda!13681 order!17351 lambda!103066))))

(declare-fun b!2806014 () Bool)

(declare-fun b_free!79869 () Bool)

(declare-fun b_next!80573 () Bool)

(assert (=> b!2806014 (= b_free!79869 (not b_next!80573))))

(declare-fun tp!895297 () Bool)

(declare-fun b_and!204697 () Bool)

(assert (=> b!2806014 (= tp!895297 b_and!204697)))

(declare-fun b_free!79871 () Bool)

(declare-fun b_next!80575 () Bool)

(assert (=> b!2806014 (= b_free!79871 (not b_next!80575))))

(declare-fun t!229171 () Bool)

(declare-fun tb!153119 () Bool)

(assert (=> (and b!2806014 (= (toChars!6745 (transformation!4888 (rule!7316 (h!38128 (t!229142 l!5055))))) (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055))))) t!229171) tb!153119))

(declare-fun result!190282 () Bool)

(assert (= result!190282 result!190264))

(assert (=> b!2805962 t!229171))

(declare-fun tb!153121 () Bool)

(declare-fun t!229173 () Bool)

(assert (=> (and b!2806014 (= (toChars!6745 (transformation!4888 (rule!7316 (h!38128 (t!229142 l!5055))))) (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283)))) t!229173) tb!153121))

(declare-fun result!190284 () Bool)

(assert (= result!190284 result!190272))

(assert (=> b!2805981 t!229173))

(declare-fun b_and!204699 () Bool)

(declare-fun tp!895299 () Bool)

(assert (=> b!2806014 (= tp!895299 (and (=> t!229171 result!190282) (=> t!229173 result!190284) b_and!204699))))

(declare-fun e!1773963 () Bool)

(declare-fun e!1773964 () Bool)

(declare-fun b!2806011 () Bool)

(declare-fun tp!895296 () Bool)

(assert (=> b!2806011 (= e!1773963 (and (inv!44384 (h!38128 (t!229142 l!5055))) e!1773964 tp!895296))))

(declare-fun e!1773962 () Bool)

(assert (=> b!2806014 (= e!1773962 (and tp!895297 tp!895299))))

(declare-fun tp!895298 () Bool)

(declare-fun b!2806013 () Bool)

(declare-fun e!1773965 () Bool)

(assert (=> b!2806013 (= e!1773965 (and tp!895298 (inv!44380 (tag!5392 (rule!7316 (h!38128 (t!229142 l!5055))))) (inv!44383 (transformation!4888 (rule!7316 (h!38128 (t!229142 l!5055))))) e!1773962))))

(declare-fun b!2806012 () Bool)

(declare-fun tp!895295 () Bool)

(assert (=> b!2806012 (= e!1773964 (and (inv!21 (value!157219 (h!38128 (t!229142 l!5055)))) e!1773965 tp!895295))))

(assert (=> b!2805800 (= tp!895224 e!1773963)))

(assert (= b!2806013 b!2806014))

(assert (= b!2806012 b!2806013))

(assert (= b!2806011 b!2806012))

(assert (= (and b!2805800 (is-Cons!32708 (t!229142 l!5055))) b!2806011))

(declare-fun m!3235031 () Bool)

(assert (=> b!2806011 m!3235031))

(declare-fun m!3235033 () Bool)

(assert (=> b!2806013 m!3235033))

(declare-fun m!3235035 () Bool)

(assert (=> b!2806013 m!3235035))

(declare-fun m!3235037 () Bool)

(assert (=> b!2806012 m!3235037))

(declare-fun e!1773970 () Bool)

(assert (=> b!2805799 (= tp!895226 e!1773970)))

(declare-fun b!2806028 () Bool)

(declare-fun tp!895312 () Bool)

(declare-fun tp!895313 () Bool)

(assert (=> b!2806028 (= e!1773970 (and tp!895312 tp!895313))))

(declare-fun b!2806026 () Bool)

(declare-fun tp!895314 () Bool)

(declare-fun tp!895311 () Bool)

(assert (=> b!2806026 (= e!1773970 (and tp!895314 tp!895311))))

(declare-fun b!2806025 () Bool)

(assert (=> b!2806025 (= e!1773970 tp_is_empty!14297)))

(declare-fun b!2806027 () Bool)

(declare-fun tp!895310 () Bool)

(assert (=> b!2806027 (= e!1773970 tp!895310)))

(assert (= (and b!2805799 (is-ElementMatch!8258 (regex!4888 (h!38127 rules!2540)))) b!2806025))

(assert (= (and b!2805799 (is-Concat!13369 (regex!4888 (h!38127 rules!2540)))) b!2806026))

(assert (= (and b!2805799 (is-Star!8258 (regex!4888 (h!38127 rules!2540)))) b!2806027))

(assert (= (and b!2805799 (is-Union!8258 (regex!4888 (h!38127 rules!2540)))) b!2806028))

(declare-fun b!2806039 () Bool)

(declare-fun b_free!79873 () Bool)

(declare-fun b_next!80577 () Bool)

(assert (=> b!2806039 (= b_free!79873 (not b_next!80577))))

(declare-fun tp!895325 () Bool)

(declare-fun b_and!204701 () Bool)

(assert (=> b!2806039 (= tp!895325 b_and!204701)))

(declare-fun b_free!79875 () Bool)

(declare-fun b_next!80579 () Bool)

(assert (=> b!2806039 (= b_free!79875 (not b_next!80579))))

(declare-fun tb!153123 () Bool)

(declare-fun t!229175 () Bool)

(assert (=> (and b!2806039 (= (toChars!6745 (transformation!4888 (h!38127 (t!229141 rules!2540)))) (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055))))) t!229175) tb!153123))

(declare-fun result!190290 () Bool)

(assert (= result!190290 result!190264))

(assert (=> b!2805962 t!229175))

(declare-fun tb!153125 () Bool)

(declare-fun t!229177 () Bool)

(assert (=> (and b!2806039 (= (toChars!6745 (transformation!4888 (h!38127 (t!229141 rules!2540)))) (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283)))) t!229177) tb!153125))

(declare-fun result!190292 () Bool)

(assert (= result!190292 result!190272))

(assert (=> b!2805981 t!229177))

(declare-fun tp!895326 () Bool)

(declare-fun b_and!204703 () Bool)

(assert (=> b!2806039 (= tp!895326 (and (=> t!229175 result!190290) (=> t!229177 result!190292) b_and!204703))))

(declare-fun e!1773982 () Bool)

(assert (=> b!2806039 (= e!1773982 (and tp!895325 tp!895326))))

(declare-fun b!2806038 () Bool)

(declare-fun tp!895324 () Bool)

(declare-fun e!1773980 () Bool)

(assert (=> b!2806038 (= e!1773980 (and tp!895324 (inv!44380 (tag!5392 (h!38127 (t!229141 rules!2540)))) (inv!44383 (transformation!4888 (h!38127 (t!229141 rules!2540)))) e!1773982))))

(declare-fun b!2806037 () Bool)

(declare-fun e!1773981 () Bool)

(declare-fun tp!895323 () Bool)

(assert (=> b!2806037 (= e!1773981 (and e!1773980 tp!895323))))

(assert (=> b!2805804 (= tp!895233 e!1773981)))

(assert (= b!2806038 b!2806039))

(assert (= b!2806037 b!2806038))

(assert (= (and b!2805804 (is-Cons!32707 (t!229141 rules!2540))) b!2806037))

(declare-fun m!3235039 () Bool)

(assert (=> b!2806038 m!3235039))

(declare-fun m!3235041 () Bool)

(assert (=> b!2806038 m!3235041))

(declare-fun e!1773983 () Bool)

(assert (=> b!2805793 (= tp!895223 e!1773983)))

(declare-fun b!2806043 () Bool)

(declare-fun tp!895329 () Bool)

(declare-fun tp!895330 () Bool)

(assert (=> b!2806043 (= e!1773983 (and tp!895329 tp!895330))))

(declare-fun b!2806041 () Bool)

(declare-fun tp!895331 () Bool)

(declare-fun tp!895328 () Bool)

(assert (=> b!2806041 (= e!1773983 (and tp!895331 tp!895328))))

(declare-fun b!2806040 () Bool)

(assert (=> b!2806040 (= e!1773983 tp_is_empty!14297)))

(declare-fun b!2806042 () Bool)

(declare-fun tp!895327 () Bool)

(assert (=> b!2806042 (= e!1773983 tp!895327)))

(assert (= (and b!2805793 (is-ElementMatch!8258 (regex!4888 (rule!7316 (h!38128 l!5055))))) b!2806040))

(assert (= (and b!2805793 (is-Concat!13369 (regex!4888 (rule!7316 (h!38128 l!5055))))) b!2806041))

(assert (= (and b!2805793 (is-Star!8258 (regex!4888 (rule!7316 (h!38128 l!5055))))) b!2806042))

(assert (= (and b!2805793 (is-Union!8258 (regex!4888 (rule!7316 (h!38128 l!5055))))) b!2806043))

(declare-fun e!1773984 () Bool)

(assert (=> b!2805794 (= tp!895225 e!1773984)))

(declare-fun b!2806047 () Bool)

(declare-fun tp!895334 () Bool)

(declare-fun tp!895335 () Bool)

(assert (=> b!2806047 (= e!1773984 (and tp!895334 tp!895335))))

(declare-fun b!2806045 () Bool)

(declare-fun tp!895336 () Bool)

(declare-fun tp!895333 () Bool)

(assert (=> b!2806045 (= e!1773984 (and tp!895336 tp!895333))))

(declare-fun b!2806044 () Bool)

(assert (=> b!2806044 (= e!1773984 tp_is_empty!14297)))

(declare-fun b!2806046 () Bool)

(declare-fun tp!895332 () Bool)

(assert (=> b!2806046 (= e!1773984 tp!895332)))

(assert (= (and b!2805794 (is-ElementMatch!8258 (regex!4888 (rule!7316 separatorToken!283)))) b!2806044))

(assert (= (and b!2805794 (is-Concat!13369 (regex!4888 (rule!7316 separatorToken!283)))) b!2806045))

(assert (= (and b!2805794 (is-Star!8258 (regex!4888 (rule!7316 separatorToken!283)))) b!2806046))

(assert (= (and b!2805794 (is-Union!8258 (regex!4888 (rule!7316 separatorToken!283)))) b!2806047))

(declare-fun b!2806048 () Bool)

(declare-fun e!1773985 () Bool)

(declare-fun tp!895337 () Bool)

(assert (=> b!2806048 (= e!1773985 (and tp_is_empty!14297 tp!895337))))

(assert (=> b!2805796 (= tp!895231 e!1773985)))

(assert (= (and b!2805796 (is-Cons!32706 (originalCharacters!5620 separatorToken!283))) b!2806048))

(declare-fun b_lambda!83819 () Bool)

(assert (= b_lambda!83817 (or (and b!2805803 b_free!79851) (and b!2806014 b_free!79871 (= (toChars!6745 (transformation!4888 (rule!7316 (h!38128 (t!229142 l!5055))))) (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283))))) (and b!2806039 b_free!79875 (= (toChars!6745 (transformation!4888 (h!38127 (t!229141 rules!2540)))) (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283))))) (and b!2805807 b_free!79847 (= (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055)))) (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283))))) (and b!2805801 b_free!79855 (= (toChars!6745 (transformation!4888 (h!38127 rules!2540))) (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283))))) b_lambda!83819)))

(declare-fun b_lambda!83821 () Bool)

(assert (= b_lambda!83813 (or b!2805798 b_lambda!83821)))

(declare-fun bs!516115 () Bool)

(declare-fun d!814518 () Bool)

(assert (= bs!516115 (and d!814518 b!2805798)))

(assert (=> bs!516115 (= (dynLambda!13686 lambda!103066 (h!38128 l!5055)) (rulesProduceIndividualToken!2043 thiss!19710 rules!2540 (h!38128 l!5055)))))

(assert (=> bs!516115 m!3234849))

(assert (=> d!814490 d!814518))

(declare-fun b_lambda!83823 () Bool)

(assert (= b_lambda!83815 (or (and b!2805803 b_free!79851 (= (toChars!6745 (transformation!4888 (rule!7316 separatorToken!283))) (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055)))))) (and b!2806039 b_free!79875 (= (toChars!6745 (transformation!4888 (h!38127 (t!229141 rules!2540)))) (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055)))))) (and b!2805801 b_free!79855 (= (toChars!6745 (transformation!4888 (h!38127 rules!2540))) (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055)))))) (and b!2805807 b_free!79847) (and b!2806014 b_free!79871 (= (toChars!6745 (transformation!4888 (rule!7316 (h!38128 (t!229142 l!5055))))) (toChars!6745 (transformation!4888 (rule!7316 (h!38128 l!5055)))))) b_lambda!83823)))

(push 1)

(assert (not b_lambda!83821))

(assert (not b!2805954))

(assert (not b!2805985))

(assert (not b_next!80579))

(assert (not b!2805981))

(assert b_and!204691)

(assert (not b!2805943))

(assert (not b!2805973))

(assert (not b!2806047))

(assert (not b!2805990))

(assert (not b_next!80555))

(assert b_and!204655)

(assert (not b!2805988))

(assert (not b!2805991))

(assert (not b!2805974))

(assert b_and!204693)

(assert (not b!2805997))

(assert (not b!2805962))

(assert (not b!2805900))

(assert (not b!2805992))

(assert (not d!814492))

(assert (not b!2806013))

(assert b_and!204697)

(assert (not tb!153113))

(assert (not b!2805897))

(assert (not d!814502))

(assert b_and!204699)

(assert (not d!814474))

(assert (not b_next!80549))

(assert (not b!2805941))

(assert (not d!814514))

(assert (not b!2806026))

(assert tp_is_empty!14297)

(assert (not d!814504))

(assert (not b_next!80575))

(assert (not b!2805971))

(assert (not b_lambda!83819))

(assert (not d!814488))

(assert (not d!814506))

(assert (not d!814510))

(assert (not bs!516115))

(assert (not b!2805984))

(assert (not b!2805982))

(assert (not b!2806038))

(assert (not b!2806045))

(assert b_and!204663)

(assert (not b_next!80553))

(assert (not b_next!80559))

(assert (not b!2806042))

(assert (not b!2806037))

(assert (not b_lambda!83823))

(assert (not b!2806028))

(assert (not b!2805972))

(assert (not b!2806027))

(assert (not b!2805977))

(assert (not d!814476))

(assert b_and!204659)

(assert (not b!2806048))

(assert (not b!2805953))

(assert (not b!2805942))

(assert (not b!2806041))

(assert (not b_next!80551))

(assert (not d!814490))

(assert (not b!2805901))

(assert b_and!204695)

(assert (not b!2805983))

(assert (not b!2806043))

(assert (not b_next!80557))

(assert (not b!2805968))

(assert (not b!2806011))

(assert (not b!2805998))

(assert (not b!2805963))

(assert (not b_next!80577))

(assert (not tb!153107))

(assert (not b!2805989))

(assert (not d!814496))

(assert b_and!204703)

(assert (not b!2805957))

(assert (not b!2805980))

(assert b_and!204701)

(assert (not b!2806012))

(assert (not b_next!80573))

(assert (not b!2805952))

(assert (not d!814498))

(assert (not b!2806046))

(assert (not b!2805907))

(check-sat)

(pop 1)

(push 1)

(assert b_and!204691)

(assert b_and!204693)

(assert b_and!204697)

(assert (not b_next!80575))

(assert b_and!204663)

(assert b_and!204659)

(assert (not b_next!80551))

(assert b_and!204695)

(assert (not b_next!80557))

(assert (not b_next!80577))

(assert (not b_next!80579))

(assert b_and!204703)

(assert b_and!204701)

(assert (not b_next!80573))

(assert (not b_next!80555))

(assert b_and!204655)

(assert b_and!204699)

(assert (not b_next!80549))

(assert (not b_next!80553))

(assert (not b_next!80559))

(check-sat)

(pop 1)

