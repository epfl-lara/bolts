; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!273956 () Bool)

(assert start!273956)

(declare-fun b!2822950 () Bool)

(declare-fun b_free!80797 () Bool)

(declare-fun b_next!81501 () Bool)

(assert (=> b!2822950 (= b_free!80797 (not b_next!81501))))

(declare-fun tp!901547 () Bool)

(declare-fun b_and!206271 () Bool)

(assert (=> b!2822950 (= tp!901547 b_and!206271)))

(declare-fun b_free!80799 () Bool)

(declare-fun b_next!81503 () Bool)

(assert (=> b!2822950 (= b_free!80799 (not b_next!81503))))

(declare-fun tp!901545 () Bool)

(declare-fun b_and!206273 () Bool)

(assert (=> b!2822950 (= tp!901545 b_and!206273)))

(declare-fun b!2822956 () Bool)

(declare-fun b_free!80801 () Bool)

(declare-fun b_next!81505 () Bool)

(assert (=> b!2822956 (= b_free!80801 (not b_next!81505))))

(declare-fun tp!901549 () Bool)

(declare-fun b_and!206275 () Bool)

(assert (=> b!2822956 (= tp!901549 b_and!206275)))

(declare-fun b_free!80803 () Bool)

(declare-fun b_next!81507 () Bool)

(assert (=> b!2822956 (= b_free!80803 (not b_next!81507))))

(declare-fun tp!901551 () Bool)

(declare-fun b_and!206277 () Bool)

(assert (=> b!2822956 (= tp!901551 b_and!206277)))

(declare-fun b!2822976 () Bool)

(declare-fun e!1786085 () Bool)

(assert (=> b!2822976 (= e!1786085 true)))

(declare-fun b!2822975 () Bool)

(declare-fun e!1786084 () Bool)

(assert (=> b!2822975 (= e!1786084 e!1786085)))

(declare-fun b!2822974 () Bool)

(declare-fun e!1786083 () Bool)

(assert (=> b!2822974 (= e!1786083 e!1786084)))

(declare-fun b!2822964 () Bool)

(assert (=> b!2822964 e!1786083))

(assert (= b!2822975 b!2822976))

(assert (= b!2822974 b!2822975))

(declare-datatypes ((C!16886 0))(
  ( (C!16887 (val!10423 Int)) )
))
(declare-datatypes ((List!33248 0))(
  ( (Nil!33124) (Cons!33124 (h!38544 (_ BitVec 16)) (t!230713 List!33248)) )
))
(declare-datatypes ((TokenValue!5192 0))(
  ( (FloatLiteralValue!10384 (text!36789 List!33248)) (TokenValueExt!5191 (__x!22057 Int)) (Broken!25960 (value!159712 List!33248)) (Object!5315) (End!5192) (Def!5192) (Underscore!5192) (Match!5192) (Else!5192) (Error!5192) (Case!5192) (If!5192) (Extends!5192) (Abstract!5192) (Class!5192) (Val!5192) (DelimiterValue!10384 (del!5252 List!33248)) (KeywordValue!5198 (value!159713 List!33248)) (CommentValue!10384 (value!159714 List!33248)) (WhitespaceValue!10384 (value!159715 List!33248)) (IndentationValue!5192 (value!159716 List!33248)) (String!36417) (Int32!5192) (Broken!25961 (value!159717 List!33248)) (Boolean!5193) (Unit!47123) (OperatorValue!5195 (op!5252 List!33248)) (IdentifierValue!10384 (value!159718 List!33248)) (IdentifierValue!10385 (value!159719 List!33248)) (WhitespaceValue!10385 (value!159720 List!33248)) (True!10384) (False!10384) (Broken!25962 (value!159721 List!33248)) (Broken!25963 (value!159722 List!33248)) (True!10385) (RightBrace!5192) (RightBracket!5192) (Colon!5192) (Null!5192) (Comma!5192) (LeftBracket!5192) (False!10385) (LeftBrace!5192) (ImaginaryLiteralValue!5192 (text!36790 List!33248)) (StringLiteralValue!15576 (value!159723 List!33248)) (EOFValue!5192 (value!159724 List!33248)) (IdentValue!5192 (value!159725 List!33248)) (DelimiterValue!10385 (value!159726 List!33248)) (DedentValue!5192 (value!159727 List!33248)) (NewLineValue!5192 (value!159728 List!33248)) (IntegerValue!15576 (value!159729 (_ BitVec 32)) (text!36791 List!33248)) (IntegerValue!15577 (value!159730 Int) (text!36792 List!33248)) (Times!5192) (Or!5192) (Equal!5192) (Minus!5192) (Broken!25964 (value!159731 List!33248)) (And!5192) (Div!5192) (LessEqual!5192) (Mod!5192) (Concat!13544) (Not!5192) (Plus!5192) (SpaceValue!5192 (value!159732 List!33248)) (IntegerValue!15578 (value!159733 Int) (text!36793 List!33248)) (StringLiteralValue!15577 (text!36794 List!33248)) (FloatLiteralValue!10385 (text!36795 List!33248)) (BytesLiteralValue!5192 (value!159734 List!33248)) (CommentValue!10385 (value!159735 List!33248)) (StringLiteralValue!15578 (value!159736 List!33248)) (ErrorTokenValue!5192 (msg!5253 List!33248)) )
))
(declare-datatypes ((List!33249 0))(
  ( (Nil!33125) (Cons!33125 (h!38545 C!16886) (t!230714 List!33249)) )
))
(declare-datatypes ((IArray!20563 0))(
  ( (IArray!20564 (innerList!10339 List!33249)) )
))
(declare-datatypes ((Conc!10279 0))(
  ( (Node!10279 (left!25021 Conc!10279) (right!25351 Conc!10279) (csize!20788 Int) (cheight!10490 Int)) (Leaf!15652 (xs!13391 IArray!20563) (csize!20789 Int)) (Empty!10279) )
))
(declare-datatypes ((BalanceConc!20196 0))(
  ( (BalanceConc!20197 (c!457212 Conc!10279)) )
))
(declare-datatypes ((TokenValueInjection!9812 0))(
  ( (TokenValueInjection!9813 (toValue!6984 Int) (toChars!6843 Int)) )
))
(declare-datatypes ((String!36418 0))(
  ( (String!36419 (value!159737 String)) )
))
(declare-datatypes ((Regex!8352 0))(
  ( (ElementMatch!8352 (c!457213 C!16886)) (Concat!13545 (regOne!17216 Regex!8352) (regTwo!17216 Regex!8352)) (EmptyExpr!8352) (Star!8352 (reg!8681 Regex!8352)) (EmptyLang!8352) (Union!8352 (regOne!17217 Regex!8352) (regTwo!17217 Regex!8352)) )
))
(declare-datatypes ((Rule!9724 0))(
  ( (Rule!9725 (regex!4962 Regex!8352) (tag!5466 String!36418) (isSeparator!4962 Bool) (transformation!4962 TokenValueInjection!9812)) )
))
(declare-datatypes ((List!33250 0))(
  ( (Nil!33126) (Cons!33126 (h!38546 Rule!9724) (t!230715 List!33250)) )
))
(declare-fun rules!4424 () List!33250)

(assert (= (and b!2822964 (is-Cons!33126 rules!4424)) b!2822974))

(declare-fun order!17627 () Int)

(declare-fun lambda!103684 () Int)

(declare-fun order!17625 () Int)

(declare-fun dynLambda!13875 (Int Int) Int)

(declare-fun dynLambda!13876 (Int Int) Int)

(assert (=> b!2822976 (< (dynLambda!13875 order!17625 (toValue!6984 (transformation!4962 (h!38546 rules!4424)))) (dynLambda!13876 order!17627 lambda!103684))))

(declare-fun order!17629 () Int)

(declare-fun dynLambda!13877 (Int Int) Int)

(assert (=> b!2822976 (< (dynLambda!13877 order!17629 (toChars!6843 (transformation!4962 (h!38546 rules!4424)))) (dynLambda!13876 order!17627 lambda!103684))))

(declare-fun e!1786066 () Bool)

(assert (=> b!2822950 (= e!1786066 (and tp!901547 tp!901545))))

(declare-fun b!2822951 () Bool)

(declare-fun e!1786064 () Bool)

(declare-fun tp!901552 () Bool)

(declare-fun inv!45053 (String!36418) Bool)

(declare-fun inv!45056 (TokenValueInjection!9812) Bool)

(assert (=> b!2822951 (= e!1786064 (and tp!901552 (inv!45053 (tag!5466 (h!38546 rules!4424))) (inv!45056 (transformation!4962 (h!38546 rules!4424))) e!1786066))))

(declare-fun b!2822952 () Bool)

(declare-datatypes ((LexerInterface!4553 0))(
  ( (LexerInterfaceExt!4550 (__x!22058 Int)) (Lexer!4551) )
))
(declare-fun thiss!27755 () LexerInterface!4553)

(declare-fun e!1786076 () Bool)

(declare-datatypes ((Token!9326 0))(
  ( (Token!9327 (value!159738 TokenValue!5192) (rule!7390 Rule!9724) (size!25788 Int) (originalCharacters!5694 List!33249)) )
))
(declare-datatypes ((List!33251 0))(
  ( (Nil!33127) (Cons!33127 (h!38547 Token!9326) (t!230716 List!33251)) )
))
(declare-fun lt!1007542 () List!33251)

(declare-fun rulesProduceEachTokenIndividuallyList!1605 (LexerInterface!4553 List!33250 List!33251) Bool)

(assert (=> b!2822952 (= e!1786076 (rulesProduceEachTokenIndividuallyList!1605 thiss!27755 rules!4424 (t!230716 lt!1007542)))))

(declare-fun b!2822953 () Bool)

(declare-fun e!1786072 () Bool)

(declare-fun tp!901553 () Bool)

(assert (=> b!2822953 (= e!1786072 (and e!1786064 tp!901553))))

(declare-fun b!2822954 () Bool)

(declare-fun e!1786065 () Bool)

(assert (=> b!2822954 (= e!1786065 e!1786076)))

(declare-fun res!1174806 () Bool)

(assert (=> b!2822954 (=> (not res!1174806) (not e!1786076))))

(declare-fun rulesProduceIndividualToken!2091 (LexerInterface!4553 List!33250 Token!9326) Bool)

(assert (=> b!2822954 (= res!1174806 (rulesProduceIndividualToken!2091 thiss!27755 rules!4424 (h!38547 lt!1007542)))))

(declare-fun b!2822955 () Bool)

(declare-fun res!1174809 () Bool)

(declare-fun e!1786073 () Bool)

(assert (=> b!2822955 (=> (not res!1174809) (not e!1786073))))

(declare-fun l!6581 () List!33251)

(assert (=> b!2822955 (= res!1174809 (rulesProduceEachTokenIndividuallyList!1605 thiss!27755 rules!4424 l!6581))))

(declare-fun res!1174810 () Bool)

(assert (=> start!273956 (=> (not res!1174810) (not e!1786073))))

(assert (=> start!273956 (= res!1174810 (is-Lexer!4551 thiss!27755))))

(assert (=> start!273956 e!1786073))

(assert (=> start!273956 true))

(assert (=> start!273956 e!1786072))

(declare-fun e!1786063 () Bool)

(assert (=> start!273956 e!1786063))

(declare-fun e!1786070 () Bool)

(assert (=> b!2822956 (= e!1786070 (and tp!901549 tp!901551))))

(declare-fun b!2822957 () Bool)

(declare-fun res!1174807 () Bool)

(assert (=> b!2822957 (=> (not res!1174807) (not e!1786073))))

(assert (=> b!2822957 (= res!1174807 (is-Nil!33127 l!6581))))

(declare-fun b!2822958 () Bool)

(declare-fun res!1174814 () Bool)

(assert (=> b!2822958 (=> (not res!1174814) (not e!1786073))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!690 (LexerInterface!4553 List!33251 List!33250) Bool)

(assert (=> b!2822958 (= res!1174814 (tokensListTwoByTwoPredicateSeparableList!690 thiss!27755 l!6581 rules!4424))))

(declare-fun tp!901548 () Bool)

(declare-fun e!1786074 () Bool)

(declare-fun e!1786075 () Bool)

(declare-fun b!2822959 () Bool)

(declare-fun inv!21 (TokenValue!5192) Bool)

(assert (=> b!2822959 (= e!1786074 (and (inv!21 (value!159738 (h!38547 l!6581))) e!1786075 tp!901548))))

(declare-fun b!2822960 () Bool)

(declare-fun res!1174813 () Bool)

(assert (=> b!2822960 (=> (not res!1174813) (not e!1786073))))

(declare-fun isEmpty!18319 (List!33250) Bool)

(assert (=> b!2822960 (= res!1174813 (not (isEmpty!18319 rules!4424)))))

(declare-fun b!2822961 () Bool)

(declare-fun e!1786068 () Bool)

(declare-fun subseq!452 (List!33251 List!33251) Bool)

(assert (=> b!2822961 (= e!1786068 (subseq!452 lt!1007542 l!6581))))

(declare-fun b!2822962 () Bool)

(declare-fun res!1174808 () Bool)

(assert (=> b!2822962 (=> (not res!1174808) (not e!1786073))))

(declare-fun rulesInvariant!3971 (LexerInterface!4553 List!33250) Bool)

(assert (=> b!2822962 (= res!1174808 (rulesInvariant!3971 thiss!27755 rules!4424))))

(declare-fun tp!901550 () Bool)

(declare-fun b!2822963 () Bool)

(assert (=> b!2822963 (= e!1786075 (and tp!901550 (inv!45053 (tag!5466 (rule!7390 (h!38547 l!6581)))) (inv!45056 (transformation!4962 (rule!7390 (h!38547 l!6581)))) e!1786070))))

(assert (=> b!2822964 (= e!1786073 (not e!1786068))))

(declare-fun res!1174812 () Bool)

(assert (=> b!2822964 (=> res!1174812 e!1786068)))

(declare-fun forall!6792 (List!33251 Int) Bool)

(assert (=> b!2822964 (= res!1174812 (not (forall!6792 l!6581 lambda!103684)))))

(assert (=> b!2822964 (= (rulesProduceEachTokenIndividuallyList!1605 thiss!27755 rules!4424 lt!1007542) e!1786065)))

(declare-fun res!1174811 () Bool)

(assert (=> b!2822964 (=> res!1174811 e!1786065)))

(assert (=> b!2822964 (= res!1174811 (not (is-Cons!33127 lt!1007542)))))

(declare-fun i!1730 () Int)

(declare-fun take!556 (List!33251 Int) List!33251)

(assert (=> b!2822964 (= lt!1007542 (take!556 l!6581 i!1730))))

(declare-fun tp!901546 () Bool)

(declare-fun b!2822965 () Bool)

(declare-fun inv!45057 (Token!9326) Bool)

(assert (=> b!2822965 (= e!1786063 (and (inv!45057 (h!38547 l!6581)) e!1786074 tp!901546))))

(assert (= (and start!273956 res!1174810) b!2822960))

(assert (= (and b!2822960 res!1174813) b!2822962))

(assert (= (and b!2822962 res!1174808) b!2822955))

(assert (= (and b!2822955 res!1174809) b!2822958))

(assert (= (and b!2822958 res!1174814) b!2822957))

(assert (= (and b!2822957 res!1174807) b!2822964))

(assert (= (and b!2822964 (not res!1174811)) b!2822954))

(assert (= (and b!2822954 res!1174806) b!2822952))

(assert (= (and b!2822964 (not res!1174812)) b!2822961))

(assert (= b!2822951 b!2822950))

(assert (= b!2822953 b!2822951))

(assert (= (and start!273956 (is-Cons!33126 rules!4424)) b!2822953))

(assert (= b!2822963 b!2822956))

(assert (= b!2822959 b!2822963))

(assert (= b!2822965 b!2822959))

(assert (= (and start!273956 (is-Cons!33127 l!6581)) b!2822965))

(declare-fun m!3253807 () Bool)

(assert (=> b!2822965 m!3253807))

(declare-fun m!3253809 () Bool)

(assert (=> b!2822952 m!3253809))

(declare-fun m!3253811 () Bool)

(assert (=> b!2822962 m!3253811))

(declare-fun m!3253813 () Bool)

(assert (=> b!2822958 m!3253813))

(declare-fun m!3253815 () Bool)

(assert (=> b!2822951 m!3253815))

(declare-fun m!3253817 () Bool)

(assert (=> b!2822951 m!3253817))

(declare-fun m!3253819 () Bool)

(assert (=> b!2822963 m!3253819))

(declare-fun m!3253821 () Bool)

(assert (=> b!2822963 m!3253821))

(declare-fun m!3253823 () Bool)

(assert (=> b!2822955 m!3253823))

(declare-fun m!3253825 () Bool)

(assert (=> b!2822961 m!3253825))

(declare-fun m!3253827 () Bool)

(assert (=> b!2822960 m!3253827))

(declare-fun m!3253829 () Bool)

(assert (=> b!2822954 m!3253829))

(declare-fun m!3253831 () Bool)

(assert (=> b!2822959 m!3253831))

(declare-fun m!3253833 () Bool)

(assert (=> b!2822964 m!3253833))

(declare-fun m!3253835 () Bool)

(assert (=> b!2822964 m!3253835))

(declare-fun m!3253837 () Bool)

(assert (=> b!2822964 m!3253837))

(push 1)

(assert (not b_next!81501))

(assert b_and!206273)

(assert b_and!206271)

(assert (not b!2822959))

(assert (not b!2822963))

(assert (not b!2822951))

(assert (not b_next!81507))

(assert (not b!2822953))

(assert (not b!2822961))

(assert (not b!2822974))

(assert b_and!206275)

(assert (not b!2822958))

(assert (not b_next!81503))

(assert (not b!2822962))

(assert (not b!2822955))

(assert (not b!2822954))

(assert (not b!2822965))

(assert (not b!2822960))

(assert (not b_next!81505))

(assert (not b!2822964))

(assert b_and!206277)

(assert (not b!2822952))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81501))

(assert b_and!206273)

(assert b_and!206271)

(assert (not b_next!81503))

(assert (not b_next!81507))

(assert (not b_next!81505))

(assert b_and!206277)

(assert b_and!206275)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!819725 () Bool)

(assert (=> d!819725 (= (inv!45053 (tag!5466 (rule!7390 (h!38547 l!6581)))) (= (mod (str.len (value!159737 (tag!5466 (rule!7390 (h!38547 l!6581))))) 2) 0))))

(assert (=> b!2822963 d!819725))

(declare-fun d!819727 () Bool)

(declare-fun res!1174845 () Bool)

(declare-fun e!1786139 () Bool)

(assert (=> d!819727 (=> (not res!1174845) (not e!1786139))))

(declare-fun semiInverseModEq!2055 (Int Int) Bool)

(assert (=> d!819727 (= res!1174845 (semiInverseModEq!2055 (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581)))) (toValue!6984 (transformation!4962 (rule!7390 (h!38547 l!6581))))))))

(assert (=> d!819727 (= (inv!45056 (transformation!4962 (rule!7390 (h!38547 l!6581)))) e!1786139)))

(declare-fun b!2823038 () Bool)

(declare-fun equivClasses!1954 (Int Int) Bool)

(assert (=> b!2823038 (= e!1786139 (equivClasses!1954 (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581)))) (toValue!6984 (transformation!4962 (rule!7390 (h!38547 l!6581))))))))

(assert (= (and d!819727 res!1174845) b!2823038))

(declare-fun m!3253871 () Bool)

(assert (=> d!819727 m!3253871))

(declare-fun m!3253873 () Bool)

(assert (=> b!2823038 m!3253873))

(assert (=> b!2822963 d!819727))

(declare-fun bs!517802 () Bool)

(declare-fun d!819729 () Bool)

(assert (= bs!517802 (and d!819729 b!2822964)))

(declare-fun lambda!103690 () Int)

(assert (=> bs!517802 (= (= thiss!27755 Lexer!4551) (= lambda!103690 lambda!103684))))

(declare-fun b!2823088 () Bool)

(declare-fun e!1786178 () Bool)

(assert (=> b!2823088 (= e!1786178 true)))

(declare-fun b!2823087 () Bool)

(declare-fun e!1786177 () Bool)

(assert (=> b!2823087 (= e!1786177 e!1786178)))

(declare-fun b!2823086 () Bool)

(declare-fun e!1786176 () Bool)

(assert (=> b!2823086 (= e!1786176 e!1786177)))

(assert (=> d!819729 e!1786176))

(assert (= b!2823087 b!2823088))

(assert (= b!2823086 b!2823087))

(assert (= (and d!819729 (is-Cons!33126 rules!4424)) b!2823086))

(assert (=> b!2823088 (< (dynLambda!13875 order!17625 (toValue!6984 (transformation!4962 (h!38546 rules!4424)))) (dynLambda!13876 order!17627 lambda!103690))))

(assert (=> b!2823088 (< (dynLambda!13877 order!17629 (toChars!6843 (transformation!4962 (h!38546 rules!4424)))) (dynLambda!13876 order!17627 lambda!103690))))

(assert (=> d!819729 true))

(declare-fun lt!1007548 () Bool)

(assert (=> d!819729 (= lt!1007548 (forall!6792 (t!230716 lt!1007542) lambda!103690))))

(declare-fun e!1786174 () Bool)

(assert (=> d!819729 (= lt!1007548 e!1786174)))

(declare-fun res!1174878 () Bool)

(assert (=> d!819729 (=> res!1174878 e!1786174)))

(assert (=> d!819729 (= res!1174878 (not (is-Cons!33127 (t!230716 lt!1007542))))))

(assert (=> d!819729 (not (isEmpty!18319 rules!4424))))

(assert (=> d!819729 (= (rulesProduceEachTokenIndividuallyList!1605 thiss!27755 rules!4424 (t!230716 lt!1007542)) lt!1007548)))

(declare-fun b!2823084 () Bool)

(declare-fun e!1786175 () Bool)

(assert (=> b!2823084 (= e!1786174 e!1786175)))

(declare-fun res!1174877 () Bool)

(assert (=> b!2823084 (=> (not res!1174877) (not e!1786175))))

(assert (=> b!2823084 (= res!1174877 (rulesProduceIndividualToken!2091 thiss!27755 rules!4424 (h!38547 (t!230716 lt!1007542))))))

(declare-fun b!2823085 () Bool)

(assert (=> b!2823085 (= e!1786175 (rulesProduceEachTokenIndividuallyList!1605 thiss!27755 rules!4424 (t!230716 (t!230716 lt!1007542))))))

(assert (= (and d!819729 (not res!1174878)) b!2823084))

(assert (= (and b!2823084 res!1174877) b!2823085))

(declare-fun m!3253901 () Bool)

(assert (=> d!819729 m!3253901))

(assert (=> d!819729 m!3253827))

(declare-fun m!3253903 () Bool)

(assert (=> b!2823084 m!3253903))

(declare-fun m!3253905 () Bool)

(assert (=> b!2823085 m!3253905))

(assert (=> b!2822952 d!819729))

(declare-fun d!819743 () Bool)

(declare-fun lt!1007554 () Bool)

(declare-fun e!1786183 () Bool)

(assert (=> d!819743 (= lt!1007554 e!1786183)))

(declare-fun res!1174887 () Bool)

(assert (=> d!819743 (=> (not res!1174887) (not e!1786183))))

(declare-datatypes ((IArray!20567 0))(
  ( (IArray!20568 (innerList!10341 List!33251)) )
))
(declare-datatypes ((Conc!10281 0))(
  ( (Node!10281 (left!25025 Conc!10281) (right!25355 Conc!10281) (csize!20792 Int) (cheight!10492 Int)) (Leaf!15654 (xs!13393 IArray!20567) (csize!20793 Int)) (Empty!10281) )
))
(declare-datatypes ((BalanceConc!20200 0))(
  ( (BalanceConc!20201 (c!457237 Conc!10281)) )
))
(declare-fun list!12413 (BalanceConc!20200) List!33251)

(declare-datatypes ((tuple2!33394 0))(
  ( (tuple2!33395 (_1!19790 BalanceConc!20200) (_2!19790 BalanceConc!20196)) )
))
(declare-fun lex!1993 (LexerInterface!4553 List!33250 BalanceConc!20196) tuple2!33394)

(declare-fun print!1712 (LexerInterface!4553 BalanceConc!20200) BalanceConc!20196)

(declare-fun singletonSeq!2138 (Token!9326) BalanceConc!20200)

(assert (=> d!819743 (= res!1174887 (= (list!12413 (_1!19790 (lex!1993 thiss!27755 rules!4424 (print!1712 thiss!27755 (singletonSeq!2138 (h!38547 lt!1007542)))))) (list!12413 (singletonSeq!2138 (h!38547 lt!1007542)))))))

(declare-fun e!1786184 () Bool)

(assert (=> d!819743 (= lt!1007554 e!1786184)))

(declare-fun res!1174885 () Bool)

(assert (=> d!819743 (=> (not res!1174885) (not e!1786184))))

(declare-fun lt!1007553 () tuple2!33394)

(declare-fun size!25790 (BalanceConc!20200) Int)

(assert (=> d!819743 (= res!1174885 (= (size!25790 (_1!19790 lt!1007553)) 1))))

(assert (=> d!819743 (= lt!1007553 (lex!1993 thiss!27755 rules!4424 (print!1712 thiss!27755 (singletonSeq!2138 (h!38547 lt!1007542)))))))

(assert (=> d!819743 (not (isEmpty!18319 rules!4424))))

(assert (=> d!819743 (= (rulesProduceIndividualToken!2091 thiss!27755 rules!4424 (h!38547 lt!1007542)) lt!1007554)))

(declare-fun b!2823097 () Bool)

(declare-fun res!1174886 () Bool)

(assert (=> b!2823097 (=> (not res!1174886) (not e!1786184))))

(declare-fun apply!7737 (BalanceConc!20200 Int) Token!9326)

(assert (=> b!2823097 (= res!1174886 (= (apply!7737 (_1!19790 lt!1007553) 0) (h!38547 lt!1007542)))))

(declare-fun b!2823098 () Bool)

(declare-fun isEmpty!18321 (BalanceConc!20196) Bool)

(assert (=> b!2823098 (= e!1786184 (isEmpty!18321 (_2!19790 lt!1007553)))))

(declare-fun b!2823099 () Bool)

(assert (=> b!2823099 (= e!1786183 (isEmpty!18321 (_2!19790 (lex!1993 thiss!27755 rules!4424 (print!1712 thiss!27755 (singletonSeq!2138 (h!38547 lt!1007542)))))))))

(assert (= (and d!819743 res!1174885) b!2823097))

(assert (= (and b!2823097 res!1174886) b!2823098))

(assert (= (and d!819743 res!1174887) b!2823099))

(declare-fun m!3253907 () Bool)

(assert (=> d!819743 m!3253907))

(declare-fun m!3253909 () Bool)

(assert (=> d!819743 m!3253909))

(declare-fun m!3253911 () Bool)

(assert (=> d!819743 m!3253911))

(assert (=> d!819743 m!3253909))

(declare-fun m!3253913 () Bool)

(assert (=> d!819743 m!3253913))

(assert (=> d!819743 m!3253907))

(declare-fun m!3253915 () Bool)

(assert (=> d!819743 m!3253915))

(assert (=> d!819743 m!3253827))

(declare-fun m!3253917 () Bool)

(assert (=> d!819743 m!3253917))

(assert (=> d!819743 m!3253907))

(declare-fun m!3253919 () Bool)

(assert (=> b!2823097 m!3253919))

(declare-fun m!3253921 () Bool)

(assert (=> b!2823098 m!3253921))

(assert (=> b!2823099 m!3253907))

(assert (=> b!2823099 m!3253907))

(assert (=> b!2823099 m!3253909))

(assert (=> b!2823099 m!3253909))

(assert (=> b!2823099 m!3253913))

(declare-fun m!3253923 () Bool)

(assert (=> b!2823099 m!3253923))

(assert (=> b!2822954 d!819743))

(declare-fun d!819745 () Bool)

(declare-fun res!1174892 () Bool)

(declare-fun e!1786189 () Bool)

(assert (=> d!819745 (=> res!1174892 e!1786189)))

(assert (=> d!819745 (= res!1174892 (is-Nil!33127 l!6581))))

(assert (=> d!819745 (= (forall!6792 l!6581 lambda!103684) e!1786189)))

(declare-fun b!2823104 () Bool)

(declare-fun e!1786190 () Bool)

(assert (=> b!2823104 (= e!1786189 e!1786190)))

(declare-fun res!1174893 () Bool)

(assert (=> b!2823104 (=> (not res!1174893) (not e!1786190))))

(declare-fun dynLambda!13881 (Int Token!9326) Bool)

(assert (=> b!2823104 (= res!1174893 (dynLambda!13881 lambda!103684 (h!38547 l!6581)))))

(declare-fun b!2823105 () Bool)

(assert (=> b!2823105 (= e!1786190 (forall!6792 (t!230716 l!6581) lambda!103684))))

(assert (= (and d!819745 (not res!1174892)) b!2823104))

(assert (= (and b!2823104 res!1174893) b!2823105))

(declare-fun b_lambda!84605 () Bool)

(assert (=> (not b_lambda!84605) (not b!2823104)))

(declare-fun m!3253925 () Bool)

(assert (=> b!2823104 m!3253925))

(declare-fun m!3253927 () Bool)

(assert (=> b!2823105 m!3253927))

(assert (=> b!2822964 d!819745))

(declare-fun bs!517803 () Bool)

(declare-fun d!819747 () Bool)

(assert (= bs!517803 (and d!819747 b!2822964)))

(declare-fun lambda!103691 () Int)

(assert (=> bs!517803 (= (= thiss!27755 Lexer!4551) (= lambda!103691 lambda!103684))))

(declare-fun bs!517804 () Bool)

(assert (= bs!517804 (and d!819747 d!819729)))

(assert (=> bs!517804 (= lambda!103691 lambda!103690)))

(declare-fun b!2823110 () Bool)

(declare-fun e!1786195 () Bool)

(assert (=> b!2823110 (= e!1786195 true)))

(declare-fun b!2823109 () Bool)

(declare-fun e!1786194 () Bool)

(assert (=> b!2823109 (= e!1786194 e!1786195)))

(declare-fun b!2823108 () Bool)

(declare-fun e!1786193 () Bool)

(assert (=> b!2823108 (= e!1786193 e!1786194)))

(assert (=> d!819747 e!1786193))

(assert (= b!2823109 b!2823110))

(assert (= b!2823108 b!2823109))

(assert (= (and d!819747 (is-Cons!33126 rules!4424)) b!2823108))

(assert (=> b!2823110 (< (dynLambda!13875 order!17625 (toValue!6984 (transformation!4962 (h!38546 rules!4424)))) (dynLambda!13876 order!17627 lambda!103691))))

(assert (=> b!2823110 (< (dynLambda!13877 order!17629 (toChars!6843 (transformation!4962 (h!38546 rules!4424)))) (dynLambda!13876 order!17627 lambda!103691))))

(assert (=> d!819747 true))

(declare-fun lt!1007555 () Bool)

(assert (=> d!819747 (= lt!1007555 (forall!6792 lt!1007542 lambda!103691))))

(declare-fun e!1786191 () Bool)

(assert (=> d!819747 (= lt!1007555 e!1786191)))

(declare-fun res!1174895 () Bool)

(assert (=> d!819747 (=> res!1174895 e!1786191)))

(assert (=> d!819747 (= res!1174895 (not (is-Cons!33127 lt!1007542)))))

(assert (=> d!819747 (not (isEmpty!18319 rules!4424))))

(assert (=> d!819747 (= (rulesProduceEachTokenIndividuallyList!1605 thiss!27755 rules!4424 lt!1007542) lt!1007555)))

(declare-fun b!2823106 () Bool)

(declare-fun e!1786192 () Bool)

(assert (=> b!2823106 (= e!1786191 e!1786192)))

(declare-fun res!1174894 () Bool)

(assert (=> b!2823106 (=> (not res!1174894) (not e!1786192))))

(assert (=> b!2823106 (= res!1174894 (rulesProduceIndividualToken!2091 thiss!27755 rules!4424 (h!38547 lt!1007542)))))

(declare-fun b!2823107 () Bool)

(assert (=> b!2823107 (= e!1786192 (rulesProduceEachTokenIndividuallyList!1605 thiss!27755 rules!4424 (t!230716 lt!1007542)))))

(assert (= (and d!819747 (not res!1174895)) b!2823106))

(assert (= (and b!2823106 res!1174894) b!2823107))

(declare-fun m!3253929 () Bool)

(assert (=> d!819747 m!3253929))

(assert (=> d!819747 m!3253827))

(assert (=> b!2823106 m!3253829))

(assert (=> b!2823107 m!3253809))

(assert (=> b!2822964 d!819747))

(declare-fun b!2823125 () Bool)

(declare-fun e!1786207 () Int)

(assert (=> b!2823125 (= e!1786207 0)))

(declare-fun b!2823126 () Bool)

(declare-fun e!1786205 () Int)

(declare-fun size!25791 (List!33251) Int)

(assert (=> b!2823126 (= e!1786205 (size!25791 l!6581))))

(declare-fun b!2823127 () Bool)

(declare-fun e!1786206 () Bool)

(declare-fun lt!1007558 () List!33251)

(assert (=> b!2823127 (= e!1786206 (= (size!25791 lt!1007558) e!1786207))))

(declare-fun c!457228 () Bool)

(assert (=> b!2823127 (= c!457228 (<= i!1730 0))))

(declare-fun b!2823128 () Bool)

(assert (=> b!2823128 (= e!1786205 i!1730)))

(declare-fun d!819749 () Bool)

(assert (=> d!819749 e!1786206))

(declare-fun res!1174898 () Bool)

(assert (=> d!819749 (=> (not res!1174898) (not e!1786206))))

(declare-fun content!4615 (List!33251) (Set Token!9326))

(assert (=> d!819749 (= res!1174898 (set.subset (content!4615 lt!1007558) (content!4615 l!6581)))))

(declare-fun e!1786204 () List!33251)

(assert (=> d!819749 (= lt!1007558 e!1786204)))

(declare-fun c!457230 () Bool)

(assert (=> d!819749 (= c!457230 (or (is-Nil!33127 l!6581) (<= i!1730 0)))))

(assert (=> d!819749 (= (take!556 l!6581 i!1730) lt!1007558)))

(declare-fun b!2823129 () Bool)

(assert (=> b!2823129 (= e!1786204 Nil!33127)))

(declare-fun b!2823130 () Bool)

(assert (=> b!2823130 (= e!1786207 e!1786205)))

(declare-fun c!457229 () Bool)

(assert (=> b!2823130 (= c!457229 (>= i!1730 (size!25791 l!6581)))))

(declare-fun b!2823131 () Bool)

(assert (=> b!2823131 (= e!1786204 (Cons!33127 (h!38547 l!6581) (take!556 (t!230716 l!6581) (- i!1730 1))))))

(assert (= (and d!819749 c!457230) b!2823129))

(assert (= (and d!819749 (not c!457230)) b!2823131))

(assert (= (and d!819749 res!1174898) b!2823127))

(assert (= (and b!2823127 c!457228) b!2823125))

(assert (= (and b!2823127 (not c!457228)) b!2823130))

(assert (= (and b!2823130 c!457229) b!2823126))

(assert (= (and b!2823130 (not c!457229)) b!2823128))

(declare-fun m!3253931 () Bool)

(assert (=> d!819749 m!3253931))

(declare-fun m!3253933 () Bool)

(assert (=> d!819749 m!3253933))

(declare-fun m!3253935 () Bool)

(assert (=> b!2823126 m!3253935))

(declare-fun m!3253937 () Bool)

(assert (=> b!2823127 m!3253937))

(assert (=> b!2823130 m!3253935))

(declare-fun m!3253939 () Bool)

(assert (=> b!2823131 m!3253939))

(assert (=> b!2822964 d!819749))

(declare-fun bs!517805 () Bool)

(declare-fun d!819751 () Bool)

(assert (= bs!517805 (and d!819751 b!2822964)))

(declare-fun lambda!103692 () Int)

(assert (=> bs!517805 (= (= thiss!27755 Lexer!4551) (= lambda!103692 lambda!103684))))

(declare-fun bs!517806 () Bool)

(assert (= bs!517806 (and d!819751 d!819729)))

(assert (=> bs!517806 (= lambda!103692 lambda!103690)))

(declare-fun bs!517807 () Bool)

(assert (= bs!517807 (and d!819751 d!819747)))

(assert (=> bs!517807 (= lambda!103692 lambda!103691)))

(declare-fun b!2823136 () Bool)

(declare-fun e!1786212 () Bool)

(assert (=> b!2823136 (= e!1786212 true)))

(declare-fun b!2823135 () Bool)

(declare-fun e!1786211 () Bool)

(assert (=> b!2823135 (= e!1786211 e!1786212)))

(declare-fun b!2823134 () Bool)

(declare-fun e!1786210 () Bool)

(assert (=> b!2823134 (= e!1786210 e!1786211)))

(assert (=> d!819751 e!1786210))

(assert (= b!2823135 b!2823136))

(assert (= b!2823134 b!2823135))

(assert (= (and d!819751 (is-Cons!33126 rules!4424)) b!2823134))

(assert (=> b!2823136 (< (dynLambda!13875 order!17625 (toValue!6984 (transformation!4962 (h!38546 rules!4424)))) (dynLambda!13876 order!17627 lambda!103692))))

(assert (=> b!2823136 (< (dynLambda!13877 order!17629 (toChars!6843 (transformation!4962 (h!38546 rules!4424)))) (dynLambda!13876 order!17627 lambda!103692))))

(assert (=> d!819751 true))

(declare-fun lt!1007559 () Bool)

(assert (=> d!819751 (= lt!1007559 (forall!6792 l!6581 lambda!103692))))

(declare-fun e!1786208 () Bool)

(assert (=> d!819751 (= lt!1007559 e!1786208)))

(declare-fun res!1174900 () Bool)

(assert (=> d!819751 (=> res!1174900 e!1786208)))

(assert (=> d!819751 (= res!1174900 (not (is-Cons!33127 l!6581)))))

(assert (=> d!819751 (not (isEmpty!18319 rules!4424))))

(assert (=> d!819751 (= (rulesProduceEachTokenIndividuallyList!1605 thiss!27755 rules!4424 l!6581) lt!1007559)))

(declare-fun b!2823132 () Bool)

(declare-fun e!1786209 () Bool)

(assert (=> b!2823132 (= e!1786208 e!1786209)))

(declare-fun res!1174899 () Bool)

(assert (=> b!2823132 (=> (not res!1174899) (not e!1786209))))

(assert (=> b!2823132 (= res!1174899 (rulesProduceIndividualToken!2091 thiss!27755 rules!4424 (h!38547 l!6581)))))

(declare-fun b!2823133 () Bool)

(assert (=> b!2823133 (= e!1786209 (rulesProduceEachTokenIndividuallyList!1605 thiss!27755 rules!4424 (t!230716 l!6581)))))

(assert (= (and d!819751 (not res!1174900)) b!2823132))

(assert (= (and b!2823132 res!1174899) b!2823133))

(declare-fun m!3253941 () Bool)

(assert (=> d!819751 m!3253941))

(assert (=> d!819751 m!3253827))

(declare-fun m!3253943 () Bool)

(assert (=> b!2823132 m!3253943))

(declare-fun m!3253945 () Bool)

(assert (=> b!2823133 m!3253945))

(assert (=> b!2822955 d!819751))

(declare-fun d!819753 () Bool)

(declare-fun res!1174905 () Bool)

(declare-fun e!1786215 () Bool)

(assert (=> d!819753 (=> (not res!1174905) (not e!1786215))))

(declare-fun isEmpty!18322 (List!33249) Bool)

(assert (=> d!819753 (= res!1174905 (not (isEmpty!18322 (originalCharacters!5694 (h!38547 l!6581)))))))

(assert (=> d!819753 (= (inv!45057 (h!38547 l!6581)) e!1786215)))

(declare-fun b!2823141 () Bool)

(declare-fun res!1174906 () Bool)

(assert (=> b!2823141 (=> (not res!1174906) (not e!1786215))))

(declare-fun list!12414 (BalanceConc!20196) List!33249)

(declare-fun dynLambda!13882 (Int TokenValue!5192) BalanceConc!20196)

(assert (=> b!2823141 (= res!1174906 (= (originalCharacters!5694 (h!38547 l!6581)) (list!12414 (dynLambda!13882 (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581)))) (value!159738 (h!38547 l!6581))))))))

(declare-fun b!2823142 () Bool)

(declare-fun size!25792 (List!33249) Int)

(assert (=> b!2823142 (= e!1786215 (= (size!25788 (h!38547 l!6581)) (size!25792 (originalCharacters!5694 (h!38547 l!6581)))))))

(assert (= (and d!819753 res!1174905) b!2823141))

(assert (= (and b!2823141 res!1174906) b!2823142))

(declare-fun b_lambda!84607 () Bool)

(assert (=> (not b_lambda!84607) (not b!2823141)))

(declare-fun tb!153929 () Bool)

(declare-fun t!230731 () Bool)

(assert (=> (and b!2822950 (= (toChars!6843 (transformation!4962 (h!38546 rules!4424))) (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581))))) t!230731) tb!153929))

(declare-fun b!2823147 () Bool)

(declare-fun e!1786218 () Bool)

(declare-fun tp!901586 () Bool)

(declare-fun inv!45060 (Conc!10279) Bool)

(assert (=> b!2823147 (= e!1786218 (and (inv!45060 (c!457212 (dynLambda!13882 (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581)))) (value!159738 (h!38547 l!6581))))) tp!901586))))

(declare-fun result!191668 () Bool)

(declare-fun inv!45061 (BalanceConc!20196) Bool)

(assert (=> tb!153929 (= result!191668 (and (inv!45061 (dynLambda!13882 (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581)))) (value!159738 (h!38547 l!6581)))) e!1786218))))

(assert (= tb!153929 b!2823147))

(declare-fun m!3253947 () Bool)

(assert (=> b!2823147 m!3253947))

(declare-fun m!3253949 () Bool)

(assert (=> tb!153929 m!3253949))

(assert (=> b!2823141 t!230731))

(declare-fun b_and!206291 () Bool)

(assert (= b_and!206273 (and (=> t!230731 result!191668) b_and!206291)))

(declare-fun t!230733 () Bool)

(declare-fun tb!153931 () Bool)

(assert (=> (and b!2822956 (= (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581)))) (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581))))) t!230733) tb!153931))

(declare-fun result!191672 () Bool)

(assert (= result!191672 result!191668))

(assert (=> b!2823141 t!230733))

(declare-fun b_and!206293 () Bool)

(assert (= b_and!206277 (and (=> t!230733 result!191672) b_and!206293)))

(declare-fun m!3253951 () Bool)

(assert (=> d!819753 m!3253951))

(declare-fun m!3253953 () Bool)

(assert (=> b!2823141 m!3253953))

(assert (=> b!2823141 m!3253953))

(declare-fun m!3253955 () Bool)

(assert (=> b!2823141 m!3253955))

(declare-fun m!3253957 () Bool)

(assert (=> b!2823142 m!3253957))

(assert (=> b!2822965 d!819753))

(declare-fun d!819755 () Bool)

(declare-fun res!1174917 () Bool)

(declare-fun e!1786233 () Bool)

(assert (=> d!819755 (=> res!1174917 e!1786233)))

(assert (=> d!819755 (= res!1174917 (or (not (is-Cons!33127 l!6581)) (not (is-Cons!33127 (t!230716 l!6581)))))))

(assert (=> d!819755 (= (tokensListTwoByTwoPredicateSeparableList!690 thiss!27755 l!6581 rules!4424) e!1786233)))

(declare-fun b!2823163 () Bool)

(declare-fun e!1786232 () Bool)

(assert (=> b!2823163 (= e!1786233 e!1786232)))

(declare-fun res!1174918 () Bool)

(assert (=> b!2823163 (=> (not res!1174918) (not e!1786232))))

(declare-fun separableTokensPredicate!896 (LexerInterface!4553 Token!9326 Token!9326 List!33250) Bool)

(assert (=> b!2823163 (= res!1174918 (separableTokensPredicate!896 thiss!27755 (h!38547 l!6581) (h!38547 (t!230716 l!6581)) rules!4424))))

(declare-datatypes ((Unit!47125 0))(
  ( (Unit!47126) )
))
(declare-fun lt!1007579 () Unit!47125)

(declare-fun Unit!47127 () Unit!47125)

(assert (=> b!2823163 (= lt!1007579 Unit!47127)))

(declare-fun size!25793 (BalanceConc!20196) Int)

(declare-fun charsOf!3071 (Token!9326) BalanceConc!20196)

(assert (=> b!2823163 (> (size!25793 (charsOf!3071 (h!38547 (t!230716 l!6581)))) 0)))

(declare-fun lt!1007581 () Unit!47125)

(declare-fun Unit!47128 () Unit!47125)

(assert (=> b!2823163 (= lt!1007581 Unit!47128)))

(assert (=> b!2823163 (rulesProduceIndividualToken!2091 thiss!27755 rules!4424 (h!38547 (t!230716 l!6581)))))

(declare-fun lt!1007577 () Unit!47125)

(declare-fun Unit!47129 () Unit!47125)

(assert (=> b!2823163 (= lt!1007577 Unit!47129)))

(assert (=> b!2823163 (rulesProduceIndividualToken!2091 thiss!27755 rules!4424 (h!38547 l!6581))))

(declare-fun lt!1007583 () Unit!47125)

(declare-fun lt!1007580 () Unit!47125)

(assert (=> b!2823163 (= lt!1007583 lt!1007580)))

(assert (=> b!2823163 (rulesProduceIndividualToken!2091 thiss!27755 rules!4424 (h!38547 (t!230716 l!6581)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!710 (LexerInterface!4553 List!33250 List!33251 Token!9326) Unit!47125)

(assert (=> b!2823163 (= lt!1007580 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!710 thiss!27755 rules!4424 l!6581 (h!38547 (t!230716 l!6581))))))

(declare-fun lt!1007582 () Unit!47125)

(declare-fun lt!1007578 () Unit!47125)

(assert (=> b!2823163 (= lt!1007582 lt!1007578)))

(assert (=> b!2823163 (rulesProduceIndividualToken!2091 thiss!27755 rules!4424 (h!38547 l!6581))))

(assert (=> b!2823163 (= lt!1007578 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!710 thiss!27755 rules!4424 l!6581 (h!38547 l!6581)))))

(declare-fun b!2823164 () Bool)

(assert (=> b!2823164 (= e!1786232 (tokensListTwoByTwoPredicateSeparableList!690 thiss!27755 (Cons!33127 (h!38547 (t!230716 l!6581)) (t!230716 (t!230716 l!6581))) rules!4424))))

(assert (= (and d!819755 (not res!1174917)) b!2823163))

(assert (= (and b!2823163 res!1174918) b!2823164))

(declare-fun m!3253965 () Bool)

(assert (=> b!2823163 m!3253965))

(declare-fun m!3253967 () Bool)

(assert (=> b!2823163 m!3253967))

(assert (=> b!2823163 m!3253965))

(declare-fun m!3253969 () Bool)

(assert (=> b!2823163 m!3253969))

(declare-fun m!3253971 () Bool)

(assert (=> b!2823163 m!3253971))

(declare-fun m!3253973 () Bool)

(assert (=> b!2823163 m!3253973))

(declare-fun m!3253975 () Bool)

(assert (=> b!2823163 m!3253975))

(assert (=> b!2823163 m!3253943))

(declare-fun m!3253977 () Bool)

(assert (=> b!2823164 m!3253977))

(assert (=> b!2822958 d!819755))

(declare-fun b!2823175 () Bool)

(declare-fun e!1786241 () Bool)

(declare-fun inv!16 (TokenValue!5192) Bool)

(assert (=> b!2823175 (= e!1786241 (inv!16 (value!159738 (h!38547 l!6581))))))

(declare-fun d!819759 () Bool)

(declare-fun c!457235 () Bool)

(assert (=> d!819759 (= c!457235 (is-IntegerValue!15576 (value!159738 (h!38547 l!6581))))))

(assert (=> d!819759 (= (inv!21 (value!159738 (h!38547 l!6581))) e!1786241)))

(declare-fun b!2823176 () Bool)

(declare-fun e!1786240 () Bool)

(declare-fun inv!17 (TokenValue!5192) Bool)

(assert (=> b!2823176 (= e!1786240 (inv!17 (value!159738 (h!38547 l!6581))))))

(declare-fun b!2823177 () Bool)

(declare-fun e!1786242 () Bool)

(declare-fun inv!15 (TokenValue!5192) Bool)

(assert (=> b!2823177 (= e!1786242 (inv!15 (value!159738 (h!38547 l!6581))))))

(declare-fun b!2823178 () Bool)

(assert (=> b!2823178 (= e!1786241 e!1786240)))

(declare-fun c!457236 () Bool)

(assert (=> b!2823178 (= c!457236 (is-IntegerValue!15577 (value!159738 (h!38547 l!6581))))))

(declare-fun b!2823179 () Bool)

(declare-fun res!1174921 () Bool)

(assert (=> b!2823179 (=> res!1174921 e!1786242)))

(assert (=> b!2823179 (= res!1174921 (not (is-IntegerValue!15578 (value!159738 (h!38547 l!6581)))))))

(assert (=> b!2823179 (= e!1786240 e!1786242)))

(assert (= (and d!819759 c!457235) b!2823175))

(assert (= (and d!819759 (not c!457235)) b!2823178))

(assert (= (and b!2823178 c!457236) b!2823176))

(assert (= (and b!2823178 (not c!457236)) b!2823179))

(assert (= (and b!2823179 (not res!1174921)) b!2823177))

(declare-fun m!3253979 () Bool)

(assert (=> b!2823175 m!3253979))

(declare-fun m!3253981 () Bool)

(assert (=> b!2823176 m!3253981))

(declare-fun m!3253983 () Bool)

(assert (=> b!2823177 m!3253983))

(assert (=> b!2822959 d!819759))

(declare-fun d!819761 () Bool)

(assert (=> d!819761 (= (isEmpty!18319 rules!4424) (is-Nil!33126 rules!4424))))

(assert (=> b!2822960 d!819761))

(declare-fun d!819763 () Bool)

(declare-fun res!1174924 () Bool)

(declare-fun e!1786245 () Bool)

(assert (=> d!819763 (=> (not res!1174924) (not e!1786245))))

(declare-fun rulesValid!1825 (LexerInterface!4553 List!33250) Bool)

(assert (=> d!819763 (= res!1174924 (rulesValid!1825 thiss!27755 rules!4424))))

(assert (=> d!819763 (= (rulesInvariant!3971 thiss!27755 rules!4424) e!1786245)))

(declare-fun b!2823182 () Bool)

(declare-datatypes ((List!33256 0))(
  ( (Nil!33132) (Cons!33132 (h!38552 String!36418) (t!230741 List!33256)) )
))
(declare-fun noDuplicateTag!1821 (LexerInterface!4553 List!33250 List!33256) Bool)

(assert (=> b!2823182 (= e!1786245 (noDuplicateTag!1821 thiss!27755 rules!4424 Nil!33132))))

(assert (= (and d!819763 res!1174924) b!2823182))

(declare-fun m!3253985 () Bool)

(assert (=> d!819763 m!3253985))

(declare-fun m!3253987 () Bool)

(assert (=> b!2823182 m!3253987))

(assert (=> b!2822962 d!819763))

(declare-fun d!819765 () Bool)

(assert (=> d!819765 (= (inv!45053 (tag!5466 (h!38546 rules!4424))) (= (mod (str.len (value!159737 (tag!5466 (h!38546 rules!4424)))) 2) 0))))

(assert (=> b!2822951 d!819765))

(declare-fun d!819767 () Bool)

(declare-fun res!1174925 () Bool)

(declare-fun e!1786246 () Bool)

(assert (=> d!819767 (=> (not res!1174925) (not e!1786246))))

(assert (=> d!819767 (= res!1174925 (semiInverseModEq!2055 (toChars!6843 (transformation!4962 (h!38546 rules!4424))) (toValue!6984 (transformation!4962 (h!38546 rules!4424)))))))

(assert (=> d!819767 (= (inv!45056 (transformation!4962 (h!38546 rules!4424))) e!1786246)))

(declare-fun b!2823183 () Bool)

(assert (=> b!2823183 (= e!1786246 (equivClasses!1954 (toChars!6843 (transformation!4962 (h!38546 rules!4424))) (toValue!6984 (transformation!4962 (h!38546 rules!4424)))))))

(assert (= (and d!819767 res!1174925) b!2823183))

(declare-fun m!3253989 () Bool)

(assert (=> d!819767 m!3253989))

(declare-fun m!3253991 () Bool)

(assert (=> b!2823183 m!3253991))

(assert (=> b!2822951 d!819767))

(declare-fun b!2823192 () Bool)

(declare-fun e!1786256 () Bool)

(declare-fun e!1786258 () Bool)

(assert (=> b!2823192 (= e!1786256 e!1786258)))

(declare-fun res!1174934 () Bool)

(assert (=> b!2823192 (=> (not res!1174934) (not e!1786258))))

(assert (=> b!2823192 (= res!1174934 (is-Cons!33127 l!6581))))

(declare-fun b!2823194 () Bool)

(declare-fun e!1786255 () Bool)

(assert (=> b!2823194 (= e!1786255 (subseq!452 (t!230716 lt!1007542) (t!230716 l!6581)))))

(declare-fun b!2823195 () Bool)

(declare-fun e!1786257 () Bool)

(assert (=> b!2823195 (= e!1786257 (subseq!452 lt!1007542 (t!230716 l!6581)))))

(declare-fun d!819769 () Bool)

(declare-fun res!1174935 () Bool)

(assert (=> d!819769 (=> res!1174935 e!1786256)))

(assert (=> d!819769 (= res!1174935 (is-Nil!33127 lt!1007542))))

(assert (=> d!819769 (= (subseq!452 lt!1007542 l!6581) e!1786256)))

(declare-fun b!2823193 () Bool)

(assert (=> b!2823193 (= e!1786258 e!1786257)))

(declare-fun res!1174936 () Bool)

(assert (=> b!2823193 (=> res!1174936 e!1786257)))

(assert (=> b!2823193 (= res!1174936 e!1786255)))

(declare-fun res!1174937 () Bool)

(assert (=> b!2823193 (=> (not res!1174937) (not e!1786255))))

(assert (=> b!2823193 (= res!1174937 (= (h!38547 lt!1007542) (h!38547 l!6581)))))

(assert (= (and d!819769 (not res!1174935)) b!2823192))

(assert (= (and b!2823192 res!1174934) b!2823193))

(assert (= (and b!2823193 res!1174937) b!2823194))

(assert (= (and b!2823193 (not res!1174936)) b!2823195))

(declare-fun m!3253993 () Bool)

(assert (=> b!2823194 m!3253993))

(declare-fun m!3253995 () Bool)

(assert (=> b!2823195 m!3253995))

(assert (=> b!2822961 d!819769))

(declare-fun b!2823209 () Bool)

(declare-fun e!1786261 () Bool)

(declare-fun tp!901599 () Bool)

(declare-fun tp!901597 () Bool)

(assert (=> b!2823209 (= e!1786261 (and tp!901599 tp!901597))))

(declare-fun b!2823206 () Bool)

(declare-fun tp_is_empty!14457 () Bool)

(assert (=> b!2823206 (= e!1786261 tp_is_empty!14457)))

(declare-fun b!2823207 () Bool)

(declare-fun tp!901601 () Bool)

(declare-fun tp!901598 () Bool)

(assert (=> b!2823207 (= e!1786261 (and tp!901601 tp!901598))))

(declare-fun b!2823208 () Bool)

(declare-fun tp!901600 () Bool)

(assert (=> b!2823208 (= e!1786261 tp!901600)))

(assert (=> b!2822963 (= tp!901550 e!1786261)))

(assert (= (and b!2822963 (is-ElementMatch!8352 (regex!4962 (rule!7390 (h!38547 l!6581))))) b!2823206))

(assert (= (and b!2822963 (is-Concat!13545 (regex!4962 (rule!7390 (h!38547 l!6581))))) b!2823207))

(assert (= (and b!2822963 (is-Star!8352 (regex!4962 (rule!7390 (h!38547 l!6581))))) b!2823208))

(assert (= (and b!2822963 (is-Union!8352 (regex!4962 (rule!7390 (h!38547 l!6581))))) b!2823209))

(declare-fun b!2823214 () Bool)

(declare-fun e!1786264 () Bool)

(declare-fun tp!901604 () Bool)

(assert (=> b!2823214 (= e!1786264 (and tp_is_empty!14457 tp!901604))))

(assert (=> b!2822959 (= tp!901548 e!1786264)))

(assert (= (and b!2822959 (is-Cons!33125 (originalCharacters!5694 (h!38547 l!6581)))) b!2823214))

(declare-fun b!2823225 () Bool)

(declare-fun b_free!80813 () Bool)

(declare-fun b_next!81517 () Bool)

(assert (=> b!2823225 (= b_free!80813 (not b_next!81517))))

(declare-fun tp!901613 () Bool)

(declare-fun b_and!206295 () Bool)

(assert (=> b!2823225 (= tp!901613 b_and!206295)))

(declare-fun b_free!80815 () Bool)

(declare-fun b_next!81519 () Bool)

(assert (=> b!2823225 (= b_free!80815 (not b_next!81519))))

(declare-fun t!230737 () Bool)

(declare-fun tb!153933 () Bool)

(assert (=> (and b!2823225 (= (toChars!6843 (transformation!4962 (h!38546 (t!230715 rules!4424)))) (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581))))) t!230737) tb!153933))

(declare-fun result!191680 () Bool)

(assert (= result!191680 result!191668))

(assert (=> b!2823141 t!230737))

(declare-fun b_and!206297 () Bool)

(declare-fun tp!901616 () Bool)

(assert (=> b!2823225 (= tp!901616 (and (=> t!230737 result!191680) b_and!206297))))

(declare-fun e!1786275 () Bool)

(assert (=> b!2823225 (= e!1786275 (and tp!901613 tp!901616))))

(declare-fun e!1786274 () Bool)

(declare-fun tp!901615 () Bool)

(declare-fun b!2823224 () Bool)

(assert (=> b!2823224 (= e!1786274 (and tp!901615 (inv!45053 (tag!5466 (h!38546 (t!230715 rules!4424)))) (inv!45056 (transformation!4962 (h!38546 (t!230715 rules!4424)))) e!1786275))))

(declare-fun b!2823223 () Bool)

(declare-fun e!1786273 () Bool)

(declare-fun tp!901614 () Bool)

(assert (=> b!2823223 (= e!1786273 (and e!1786274 tp!901614))))

(assert (=> b!2822953 (= tp!901553 e!1786273)))

(assert (= b!2823224 b!2823225))

(assert (= b!2823223 b!2823224))

(assert (= (and b!2822953 (is-Cons!33126 (t!230715 rules!4424))) b!2823223))

(declare-fun m!3253997 () Bool)

(assert (=> b!2823224 m!3253997))

(declare-fun m!3253999 () Bool)

(assert (=> b!2823224 m!3253999))

(declare-fun b!2823228 () Bool)

(declare-fun e!1786279 () Bool)

(assert (=> b!2823228 (= e!1786279 true)))

(declare-fun b!2823227 () Bool)

(declare-fun e!1786278 () Bool)

(assert (=> b!2823227 (= e!1786278 e!1786279)))

(declare-fun b!2823226 () Bool)

(declare-fun e!1786277 () Bool)

(assert (=> b!2823226 (= e!1786277 e!1786278)))

(assert (=> b!2822974 e!1786277))

(assert (= b!2823227 b!2823228))

(assert (= b!2823226 b!2823227))

(assert (= (and b!2822974 (is-Cons!33126 (t!230715 rules!4424))) b!2823226))

(assert (=> b!2823228 (< (dynLambda!13875 order!17625 (toValue!6984 (transformation!4962 (h!38546 (t!230715 rules!4424))))) (dynLambda!13876 order!17627 lambda!103684))))

(assert (=> b!2823228 (< (dynLambda!13877 order!17629 (toChars!6843 (transformation!4962 (h!38546 (t!230715 rules!4424))))) (dynLambda!13876 order!17627 lambda!103684))))

(declare-fun b!2823242 () Bool)

(declare-fun b_free!80817 () Bool)

(declare-fun b_next!81521 () Bool)

(assert (=> b!2823242 (= b_free!80817 (not b_next!81521))))

(declare-fun tp!901631 () Bool)

(declare-fun b_and!206299 () Bool)

(assert (=> b!2823242 (= tp!901631 b_and!206299)))

(declare-fun b_free!80819 () Bool)

(declare-fun b_next!81523 () Bool)

(assert (=> b!2823242 (= b_free!80819 (not b_next!81523))))

(declare-fun t!230739 () Bool)

(declare-fun tb!153935 () Bool)

(assert (=> (and b!2823242 (= (toChars!6843 (transformation!4962 (rule!7390 (h!38547 (t!230716 l!6581))))) (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581))))) t!230739) tb!153935))

(declare-fun result!191684 () Bool)

(assert (= result!191684 result!191668))

(assert (=> b!2823141 t!230739))

(declare-fun tp!901630 () Bool)

(declare-fun b_and!206301 () Bool)

(assert (=> b!2823242 (= tp!901630 (and (=> t!230739 result!191684) b_and!206301))))

(declare-fun e!1786295 () Bool)

(declare-fun tp!901629 () Bool)

(declare-fun e!1786297 () Bool)

(declare-fun b!2823241 () Bool)

(assert (=> b!2823241 (= e!1786297 (and tp!901629 (inv!45053 (tag!5466 (rule!7390 (h!38547 (t!230716 l!6581))))) (inv!45056 (transformation!4962 (rule!7390 (h!38547 (t!230716 l!6581))))) e!1786295))))

(declare-fun tp!901628 () Bool)

(declare-fun e!1786294 () Bool)

(declare-fun b!2823240 () Bool)

(assert (=> b!2823240 (= e!1786294 (and (inv!21 (value!159738 (h!38547 (t!230716 l!6581)))) e!1786297 tp!901628))))

(declare-fun tp!901627 () Bool)

(declare-fun e!1786293 () Bool)

(declare-fun b!2823239 () Bool)

(assert (=> b!2823239 (= e!1786293 (and (inv!45057 (h!38547 (t!230716 l!6581))) e!1786294 tp!901627))))

(assert (=> b!2823242 (= e!1786295 (and tp!901631 tp!901630))))

(assert (=> b!2822965 (= tp!901546 e!1786293)))

(assert (= b!2823241 b!2823242))

(assert (= b!2823240 b!2823241))

(assert (= b!2823239 b!2823240))

(assert (= (and b!2822965 (is-Cons!33127 (t!230716 l!6581))) b!2823239))

(declare-fun m!3254001 () Bool)

(assert (=> b!2823241 m!3254001))

(declare-fun m!3254003 () Bool)

(assert (=> b!2823241 m!3254003))

(declare-fun m!3254005 () Bool)

(assert (=> b!2823240 m!3254005))

(declare-fun m!3254007 () Bool)

(assert (=> b!2823239 m!3254007))

(declare-fun b!2823246 () Bool)

(declare-fun e!1786298 () Bool)

(declare-fun tp!901634 () Bool)

(declare-fun tp!901632 () Bool)

(assert (=> b!2823246 (= e!1786298 (and tp!901634 tp!901632))))

(declare-fun b!2823243 () Bool)

(assert (=> b!2823243 (= e!1786298 tp_is_empty!14457)))

(declare-fun b!2823244 () Bool)

(declare-fun tp!901636 () Bool)

(declare-fun tp!901633 () Bool)

(assert (=> b!2823244 (= e!1786298 (and tp!901636 tp!901633))))

(declare-fun b!2823245 () Bool)

(declare-fun tp!901635 () Bool)

(assert (=> b!2823245 (= e!1786298 tp!901635)))

(assert (=> b!2822951 (= tp!901552 e!1786298)))

(assert (= (and b!2822951 (is-ElementMatch!8352 (regex!4962 (h!38546 rules!4424)))) b!2823243))

(assert (= (and b!2822951 (is-Concat!13545 (regex!4962 (h!38546 rules!4424)))) b!2823244))

(assert (= (and b!2822951 (is-Star!8352 (regex!4962 (h!38546 rules!4424)))) b!2823245))

(assert (= (and b!2822951 (is-Union!8352 (regex!4962 (h!38546 rules!4424)))) b!2823246))

(declare-fun b_lambda!84609 () Bool)

(assert (= b_lambda!84607 (or (and b!2822950 b_free!80799 (= (toChars!6843 (transformation!4962 (h!38546 rules!4424))) (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581)))))) (and b!2822956 b_free!80803) (and b!2823225 b_free!80815 (= (toChars!6843 (transformation!4962 (h!38546 (t!230715 rules!4424)))) (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581)))))) (and b!2823242 b_free!80819 (= (toChars!6843 (transformation!4962 (rule!7390 (h!38547 (t!230716 l!6581))))) (toChars!6843 (transformation!4962 (rule!7390 (h!38547 l!6581)))))) b_lambda!84609)))

(declare-fun b_lambda!84611 () Bool)

(assert (= b_lambda!84605 (or b!2822964 b_lambda!84611)))

(declare-fun bs!517809 () Bool)

(declare-fun d!819771 () Bool)

(assert (= bs!517809 (and d!819771 b!2822964)))

(assert (=> bs!517809 (= (dynLambda!13881 lambda!103684 (h!38547 l!6581)) (rulesProduceIndividualToken!2091 Lexer!4551 rules!4424 (h!38547 l!6581)))))

(declare-fun m!3254009 () Bool)

(assert (=> bs!517809 m!3254009))

(assert (=> b!2823104 d!819771))

(push 1)

(assert (not bs!517809))

(assert (not b!2823241))

(assert (not b!2823099))

(assert (not b!2823098))

(assert (not b!2823130))

(assert (not b_next!81501))

(assert (not b!2823133))

(assert (not b!2823163))

(assert (not b_next!81519))

(assert (not b!2823208))

(assert (not d!819753))

(assert (not b!2823142))

(assert (not b!2823105))

(assert b_and!206301)

(assert b_and!206291)

(assert (not b!2823183))

(assert (not d!819763))

(assert (not b!2823214))

(assert b_and!206271)

(assert (not b!2823245))

(assert b_and!206299)

(assert (not b!2823132))

(assert (not b!2823084))

(assert b_and!206297)

(assert (not b!2823127))

(assert tp_is_empty!14457)

(assert (not b!2823176))

(assert (not d!819767))

(assert (not b!2823147))

(assert (not b_next!81521))

(assert (not b!2823134))

(assert (not b_next!81503))

(assert (not b!2823097))

(assert (not d!819743))

(assert (not b!2823246))

(assert (not b!2823177))

(assert (not b!2823182))

(assert (not b!2823244))

(assert (not b!2823224))

(assert (not b!2823108))

(assert (not b_next!81517))

(assert (not b!2823126))

(assert (not b!2823086))

(assert b_and!206293)

(assert (not b!2823194))

(assert (not b_next!81507))

(assert (not b!2823223))

(assert (not d!819747))

(assert (not tb!153929))

(assert (not b!2823195))

(assert (not b!2823239))

(assert (not b!2823131))

(assert (not d!819751))

(assert b_and!206295)

(assert (not b_next!81505))

(assert (not b!2823240))

(assert (not b!2823209))

(assert (not b!2823107))

(assert (not b!2823038))

(assert (not b_next!81523))

(assert (not b!2823226))

(assert (not b_lambda!84609))

(assert (not d!819729))

(assert (not b!2823207))

(assert (not b!2823175))

(assert (not b_lambda!84611))

(assert (not b!2823164))

(assert b_and!206275)

(assert (not d!819749))

(assert (not b!2823106))

(assert (not d!819727))

(assert (not b!2823085))

(assert (not b!2823141))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81501))

(assert (not b_next!81519))

(assert b_and!206271)

(assert b_and!206299)

(assert b_and!206297)

(assert (not b_next!81517))

(assert (not b_next!81523))

(assert b_and!206275)

(assert b_and!206301)

(assert b_and!206291)

(assert (not b_next!81521))

(assert (not b_next!81503))

(assert b_and!206293)

(assert (not b_next!81507))

(assert b_and!206295)

(assert (not b_next!81505))

(check-sat)

(pop 1)

