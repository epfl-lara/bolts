; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271876 () Bool)

(assert start!271876)

(declare-fun b!2809980 () Bool)

(declare-fun b_free!80205 () Bool)

(declare-fun b_next!80909 () Bool)

(assert (=> b!2809980 (= b_free!80205 (not b_next!80909))))

(declare-fun tp!897196 () Bool)

(declare-fun b_and!205423 () Bool)

(assert (=> b!2809980 (= tp!897196 b_and!205423)))

(declare-fun b_free!80207 () Bool)

(declare-fun b_next!80911 () Bool)

(assert (=> b!2809980 (= b_free!80207 (not b_next!80911))))

(declare-fun tp!897190 () Bool)

(declare-fun b_and!205425 () Bool)

(assert (=> b!2809980 (= tp!897190 b_and!205425)))

(declare-fun b!2809977 () Bool)

(declare-fun b_free!80209 () Bool)

(declare-fun b_next!80913 () Bool)

(assert (=> b!2809977 (= b_free!80209 (not b_next!80913))))

(declare-fun tp!897192 () Bool)

(declare-fun b_and!205427 () Bool)

(assert (=> b!2809977 (= tp!897192 b_and!205427)))

(declare-fun b_free!80211 () Bool)

(declare-fun b_next!80915 () Bool)

(assert (=> b!2809977 (= b_free!80211 (not b_next!80915))))

(declare-fun tp!897189 () Bool)

(declare-fun b_and!205429 () Bool)

(assert (=> b!2809977 (= tp!897189 b_and!205429)))

(declare-fun e!1777035 () Bool)

(declare-fun tp!897193 () Bool)

(declare-datatypes ((List!32901 0))(
  ( (Nil!32801) (Cons!32801 (h!38221 (_ BitVec 16)) (t!229767 List!32901)) )
))
(declare-datatypes ((TokenValue!5137 0))(
  ( (FloatLiteralValue!10274 (text!36404 List!32901)) (TokenValueExt!5136 (__x!21931 Int)) (Broken!25685 (value!157961 List!32901)) (Object!5236) (End!5137) (Def!5137) (Underscore!5137) (Match!5137) (Else!5137) (Error!5137) (Case!5137) (If!5137) (Extends!5137) (Abstract!5137) (Class!5137) (Val!5137) (DelimiterValue!10274 (del!5197 List!32901)) (KeywordValue!5143 (value!157962 List!32901)) (CommentValue!10274 (value!157963 List!32901)) (WhitespaceValue!10274 (value!157964 List!32901)) (IndentationValue!5137 (value!157965 List!32901)) (String!36020) (Int32!5137) (Broken!25686 (value!157966 List!32901)) (Boolean!5138) (Unit!46829) (OperatorValue!5140 (op!5197 List!32901)) (IdentifierValue!10274 (value!157967 List!32901)) (IdentifierValue!10275 (value!157968 List!32901)) (WhitespaceValue!10275 (value!157969 List!32901)) (True!10274) (False!10274) (Broken!25687 (value!157970 List!32901)) (Broken!25688 (value!157971 List!32901)) (True!10275) (RightBrace!5137) (RightBracket!5137) (Colon!5137) (Null!5137) (Comma!5137) (LeftBracket!5137) (False!10275) (LeftBrace!5137) (ImaginaryLiteralValue!5137 (text!36405 List!32901)) (StringLiteralValue!15411 (value!157972 List!32901)) (EOFValue!5137 (value!157973 List!32901)) (IdentValue!5137 (value!157974 List!32901)) (DelimiterValue!10275 (value!157975 List!32901)) (DedentValue!5137 (value!157976 List!32901)) (NewLineValue!5137 (value!157977 List!32901)) (IntegerValue!15411 (value!157978 (_ BitVec 32)) (text!36406 List!32901)) (IntegerValue!15412 (value!157979 Int) (text!36407 List!32901)) (Times!5137) (Or!5137) (Equal!5137) (Minus!5137) (Broken!25689 (value!157980 List!32901)) (And!5137) (Div!5137) (LessEqual!5137) (Mod!5137) (Concat!13422) (Not!5137) (Plus!5137) (SpaceValue!5137 (value!157981 List!32901)) (IntegerValue!15413 (value!157982 Int) (text!36408 List!32901)) (StringLiteralValue!15412 (text!36409 List!32901)) (FloatLiteralValue!10275 (text!36410 List!32901)) (BytesLiteralValue!5137 (value!157983 List!32901)) (CommentValue!10275 (value!157984 List!32901)) (StringLiteralValue!15413 (value!157985 List!32901)) (ErrorTokenValue!5137 (msg!5198 List!32901)) )
))
(declare-datatypes ((String!36021 0))(
  ( (String!36022 (value!157986 String)) )
))
(declare-datatypes ((C!16728 0))(
  ( (C!16729 (val!10298 Int)) )
))
(declare-datatypes ((List!32902 0))(
  ( (Nil!32802) (Cons!32802 (h!38222 C!16728) (t!229768 List!32902)) )
))
(declare-datatypes ((IArray!20313 0))(
  ( (IArray!20314 (innerList!10214 List!32902)) )
))
(declare-datatypes ((Conc!10154 0))(
  ( (Node!10154 (left!24746 Conc!10154) (right!25076 Conc!10154) (csize!20538 Int) (cheight!10365 Int)) (Leaf!15465 (xs!13266 IArray!20313) (csize!20539 Int)) (Empty!10154) )
))
(declare-datatypes ((BalanceConc!19922 0))(
  ( (BalanceConc!19923 (c!455222 Conc!10154)) )
))
(declare-datatypes ((TokenValueInjection!9714 0))(
  ( (TokenValueInjection!9715 (toValue!6917 Int) (toChars!6776 Int)) )
))
(declare-datatypes ((Regex!8285 0))(
  ( (ElementMatch!8285 (c!455223 C!16728)) (Concat!13423 (regOne!17082 Regex!8285) (regTwo!17082 Regex!8285)) (EmptyExpr!8285) (Star!8285 (reg!8614 Regex!8285)) (EmptyLang!8285) (Union!8285 (regOne!17083 Regex!8285) (regTwo!17083 Regex!8285)) )
))
(declare-datatypes ((Rule!9630 0))(
  ( (Rule!9631 (regex!4915 Regex!8285) (tag!5419 String!36021) (isSeparator!4915 Bool) (transformation!4915 TokenValueInjection!9714)) )
))
(declare-datatypes ((Token!9232 0))(
  ( (Token!9233 (value!157987 TokenValue!5137) (rule!7343 Rule!9630) (size!25568 Int) (originalCharacters!5647 List!32902)) )
))
(declare-datatypes ((List!32903 0))(
  ( (Nil!32803) (Cons!32803 (h!38223 Token!9232) (t!229769 List!32903)) )
))
(declare-fun l!4240 () List!32903)

(declare-fun b!2809973 () Bool)

(declare-fun e!1777030 () Bool)

(declare-fun inv!21 (TokenValue!5137) Bool)

(assert (=> b!2809973 (= e!1777030 (and (inv!21 (value!157987 (h!38223 l!4240))) e!1777035 tp!897193))))

(declare-fun b!2809974 () Bool)

(declare-fun e!1777031 () Bool)

(declare-fun lt!1003950 () List!32902)

(assert (=> b!2809974 (= e!1777031 (= lt!1003950 Nil!32802))))

(declare-datatypes ((LexerInterface!4506 0))(
  ( (LexerInterfaceExt!4503 (__x!21932 Int)) (Lexer!4504) )
))
(declare-fun thiss!13843 () LexerInterface!4506)

(declare-fun b!2809975 () Bool)

(declare-fun lt!1003948 () List!32903)

(declare-fun ++!8055 (List!32902 List!32902) List!32902)

(declare-fun list!12285 (BalanceConc!19922) List!32902)

(declare-fun charsOf!3054 (Token!9232) BalanceConc!19922)

(declare-fun printList!1214 (LexerInterface!4506 List!32903) List!32902)

(assert (=> b!2809975 (= e!1777031 (= lt!1003950 (++!8055 (list!12285 (charsOf!3054 (h!38223 lt!1003948))) (printList!1214 thiss!13843 (t!229769 lt!1003948)))))))

(declare-fun b!2809976 () Bool)

(declare-fun e!1777040 () Bool)

(declare-fun e!1777039 () Bool)

(declare-fun tp!897188 () Bool)

(declare-fun separatorToken!99 () Token!9232)

(assert (=> b!2809976 (= e!1777040 (and (inv!21 (value!157987 separatorToken!99)) e!1777039 tp!897188))))

(declare-fun e!1777032 () Bool)

(assert (=> b!2809977 (= e!1777032 (and tp!897192 tp!897189))))

(declare-fun e!1777037 () Bool)

(declare-fun tp!897194 () Bool)

(declare-fun b!2809978 () Bool)

(declare-fun inv!44513 (String!36021) Bool)

(declare-fun inv!44516 (TokenValueInjection!9714) Bool)

(assert (=> b!2809978 (= e!1777035 (and tp!897194 (inv!44513 (tag!5419 (rule!7343 (h!38223 l!4240)))) (inv!44516 (transformation!4915 (rule!7343 (h!38223 l!4240)))) e!1777037))))

(declare-fun b!2809979 () Bool)

(declare-fun e!1777027 () Bool)

(declare-fun lt!1003952 () List!32902)

(assert (=> b!2809979 (= e!1777027 (= lt!1003952 Nil!32802))))

(assert (=> b!2809980 (= e!1777037 (and tp!897196 tp!897190))))

(declare-fun res!1170077 () Bool)

(declare-fun e!1777038 () Bool)

(assert (=> start!271876 (=> (not res!1170077) (not e!1777038))))

(get-info :version)

(assert (=> start!271876 (= res!1170077 (and ((_ is Lexer!4504) thiss!13843) (isSeparator!4915 (rule!7343 separatorToken!99)) ((_ is Cons!32803) l!4240)))))

(assert (=> start!271876 e!1777038))

(assert (=> start!271876 true))

(declare-fun inv!44517 (Token!9232) Bool)

(assert (=> start!271876 (and (inv!44517 separatorToken!99) e!1777040)))

(declare-fun e!1777036 () Bool)

(assert (=> start!271876 e!1777036))

(declare-fun tp!897191 () Bool)

(declare-fun b!2809981 () Bool)

(assert (=> b!2809981 (= e!1777039 (and tp!897191 (inv!44513 (tag!5419 (rule!7343 separatorToken!99))) (inv!44516 (transformation!4915 (rule!7343 separatorToken!99))) e!1777032))))

(declare-fun lt!1003949 () List!32903)

(declare-fun b!2809982 () Bool)

(assert (=> b!2809982 (= e!1777027 (= lt!1003952 (++!8055 (list!12285 (charsOf!3054 (h!38223 lt!1003949))) (printList!1214 thiss!13843 (t!229769 lt!1003949)))))))

(declare-fun b!2809983 () Bool)

(declare-fun tp!897195 () Bool)

(assert (=> b!2809983 (= e!1777036 (and (inv!44517 (h!38223 l!4240)) e!1777030 tp!897195))))

(declare-fun b!2809984 () Bool)

(declare-fun printWithSeparatorTokenList!84 (LexerInterface!4506 List!32903 Token!9232) List!32902)

(assert (=> b!2809984 (= e!1777038 (not (= lt!1003952 (printWithSeparatorTokenList!84 thiss!13843 l!4240 separatorToken!99))))))

(declare-fun lt!1003955 () List!32902)

(declare-fun lt!1003956 () List!32902)

(declare-fun lt!1003951 () List!32902)

(assert (=> b!2809984 (= (++!8055 (++!8055 lt!1003955 lt!1003956) lt!1003951) (++!8055 lt!1003955 (++!8055 lt!1003956 lt!1003951)))))

(declare-datatypes ((Unit!46830 0))(
  ( (Unit!46831) )
))
(declare-fun lt!1003954 () Unit!46830)

(declare-fun lemmaConcatAssociativity!1666 (List!32902 List!32902 List!32902) Unit!46830)

(assert (=> b!2809984 (= lt!1003954 (lemmaConcatAssociativity!1666 lt!1003955 lt!1003956 lt!1003951))))

(declare-fun lt!1003953 () List!32903)

(assert (=> b!2809984 (= lt!1003951 (printList!1214 thiss!13843 lt!1003953))))

(assert (=> b!2809984 (= lt!1003956 (list!12285 (charsOf!3054 separatorToken!99)))))

(assert (=> b!2809984 (= lt!1003955 (list!12285 (charsOf!3054 (h!38223 l!4240))))))

(assert (=> b!2809984 e!1777031))

(declare-fun c!455221 () Bool)

(assert (=> b!2809984 (= c!455221 ((_ is Cons!32803) lt!1003948))))

(assert (=> b!2809984 (= lt!1003950 (printList!1214 thiss!13843 lt!1003948))))

(assert (=> b!2809984 e!1777027))

(declare-fun c!455220 () Bool)

(assert (=> b!2809984 (= c!455220 ((_ is Cons!32803) lt!1003949))))

(assert (=> b!2809984 (= lt!1003952 (printList!1214 thiss!13843 lt!1003949))))

(declare-fun $colon$colon!562 (List!32903 Token!9232) List!32903)

(assert (=> b!2809984 (= lt!1003949 ($colon$colon!562 lt!1003948 (h!38223 l!4240)))))

(assert (=> b!2809984 (= lt!1003948 ($colon$colon!562 lt!1003953 separatorToken!99))))

(declare-fun withSeparatorTokenList!150 (LexerInterface!4506 List!32903 Token!9232) List!32903)

(assert (=> b!2809984 (= lt!1003953 (withSeparatorTokenList!150 thiss!13843 (t!229769 l!4240) separatorToken!99))))

(assert (= (and start!271876 res!1170077) b!2809984))

(assert (= (and b!2809984 c!455220) b!2809982))

(assert (= (and b!2809984 (not c!455220)) b!2809979))

(assert (= (and b!2809984 c!455221) b!2809975))

(assert (= (and b!2809984 (not c!455221)) b!2809974))

(assert (= b!2809981 b!2809977))

(assert (= b!2809976 b!2809981))

(assert (= start!271876 b!2809976))

(assert (= b!2809978 b!2809980))

(assert (= b!2809973 b!2809978))

(assert (= b!2809983 b!2809973))

(assert (= (and start!271876 ((_ is Cons!32803) l!4240)) b!2809983))

(declare-fun m!3239733 () Bool)

(assert (=> b!2809983 m!3239733))

(declare-fun m!3239735 () Bool)

(assert (=> start!271876 m!3239735))

(declare-fun m!3239737 () Bool)

(assert (=> b!2809981 m!3239737))

(declare-fun m!3239739 () Bool)

(assert (=> b!2809981 m!3239739))

(declare-fun m!3239741 () Bool)

(assert (=> b!2809984 m!3239741))

(declare-fun m!3239743 () Bool)

(assert (=> b!2809984 m!3239743))

(declare-fun m!3239745 () Bool)

(assert (=> b!2809984 m!3239745))

(declare-fun m!3239747 () Bool)

(assert (=> b!2809984 m!3239747))

(declare-fun m!3239749 () Bool)

(assert (=> b!2809984 m!3239749))

(declare-fun m!3239751 () Bool)

(assert (=> b!2809984 m!3239751))

(assert (=> b!2809984 m!3239747))

(declare-fun m!3239753 () Bool)

(assert (=> b!2809984 m!3239753))

(declare-fun m!3239755 () Bool)

(assert (=> b!2809984 m!3239755))

(declare-fun m!3239757 () Bool)

(assert (=> b!2809984 m!3239757))

(declare-fun m!3239759 () Bool)

(assert (=> b!2809984 m!3239759))

(assert (=> b!2809984 m!3239743))

(declare-fun m!3239761 () Bool)

(assert (=> b!2809984 m!3239761))

(assert (=> b!2809984 m!3239755))

(assert (=> b!2809984 m!3239749))

(declare-fun m!3239763 () Bool)

(assert (=> b!2809984 m!3239763))

(declare-fun m!3239765 () Bool)

(assert (=> b!2809984 m!3239765))

(declare-fun m!3239767 () Bool)

(assert (=> b!2809984 m!3239767))

(declare-fun m!3239769 () Bool)

(assert (=> b!2809984 m!3239769))

(declare-fun m!3239771 () Bool)

(assert (=> b!2809984 m!3239771))

(declare-fun m!3239773 () Bool)

(assert (=> b!2809976 m!3239773))

(declare-fun m!3239775 () Bool)

(assert (=> b!2809978 m!3239775))

(declare-fun m!3239777 () Bool)

(assert (=> b!2809978 m!3239777))

(declare-fun m!3239779 () Bool)

(assert (=> b!2809982 m!3239779))

(assert (=> b!2809982 m!3239779))

(declare-fun m!3239781 () Bool)

(assert (=> b!2809982 m!3239781))

(declare-fun m!3239783 () Bool)

(assert (=> b!2809982 m!3239783))

(assert (=> b!2809982 m!3239781))

(assert (=> b!2809982 m!3239783))

(declare-fun m!3239785 () Bool)

(assert (=> b!2809982 m!3239785))

(declare-fun m!3239787 () Bool)

(assert (=> b!2809975 m!3239787))

(assert (=> b!2809975 m!3239787))

(declare-fun m!3239789 () Bool)

(assert (=> b!2809975 m!3239789))

(declare-fun m!3239791 () Bool)

(assert (=> b!2809975 m!3239791))

(assert (=> b!2809975 m!3239789))

(assert (=> b!2809975 m!3239791))

(declare-fun m!3239793 () Bool)

(assert (=> b!2809975 m!3239793))

(declare-fun m!3239795 () Bool)

(assert (=> b!2809973 m!3239795))

(check-sat (not b!2809973) (not b!2809981) (not start!271876) b_and!205429 b_and!205427 (not b!2809976) b_and!205423 (not b!2809984) (not b_next!80913) (not b_next!80909) (not b!2809975) (not b_next!80915) b_and!205425 (not b!2809983) (not b_next!80911) (not b!2809978) (not b!2809982))
(check-sat (not b_next!80915) b_and!205429 b_and!205427 b_and!205423 (not b_next!80913) (not b_next!80909) b_and!205425 (not b_next!80911))
(get-model)

(declare-fun d!815659 () Bool)

(declare-fun res!1170107 () Bool)

(declare-fun e!1777059 () Bool)

(assert (=> d!815659 (=> (not res!1170107) (not e!1777059))))

(declare-fun isEmpty!18214 (List!32902) Bool)

(assert (=> d!815659 (= res!1170107 (not (isEmpty!18214 (originalCharacters!5647 separatorToken!99))))))

(assert (=> d!815659 (= (inv!44517 separatorToken!99) e!1777059)))

(declare-fun b!2810016 () Bool)

(declare-fun res!1170108 () Bool)

(assert (=> b!2810016 (=> (not res!1170108) (not e!1777059))))

(declare-fun dynLambda!13731 (Int TokenValue!5137) BalanceConc!19922)

(assert (=> b!2810016 (= res!1170108 (= (originalCharacters!5647 separatorToken!99) (list!12285 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))) (value!157987 separatorToken!99)))))))

(declare-fun b!2810017 () Bool)

(declare-fun size!25570 (List!32902) Int)

(assert (=> b!2810017 (= e!1777059 (= (size!25568 separatorToken!99) (size!25570 (originalCharacters!5647 separatorToken!99))))))

(assert (= (and d!815659 res!1170107) b!2810016))

(assert (= (and b!2810016 res!1170108) b!2810017))

(declare-fun b_lambda!84129 () Bool)

(assert (=> (not b_lambda!84129) (not b!2810016)))

(declare-fun t!229775 () Bool)

(declare-fun tb!153593 () Bool)

(assert (=> (and b!2809980 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))) (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99)))) t!229775) tb!153593))

(declare-fun b!2810022 () Bool)

(declare-fun e!1777062 () Bool)

(declare-fun tp!897202 () Bool)

(declare-fun inv!44520 (Conc!10154) Bool)

(assert (=> b!2810022 (= e!1777062 (and (inv!44520 (c!455222 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))) (value!157987 separatorToken!99)))) tp!897202))))

(declare-fun result!190914 () Bool)

(declare-fun inv!44521 (BalanceConc!19922) Bool)

(assert (=> tb!153593 (= result!190914 (and (inv!44521 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))) (value!157987 separatorToken!99))) e!1777062))))

(assert (= tb!153593 b!2810022))

(declare-fun m!3239833 () Bool)

(assert (=> b!2810022 m!3239833))

(declare-fun m!3239835 () Bool)

(assert (=> tb!153593 m!3239835))

(assert (=> b!2810016 t!229775))

(declare-fun b_and!205435 () Bool)

(assert (= b_and!205425 (and (=> t!229775 result!190914) b_and!205435)))

(declare-fun t!229777 () Bool)

(declare-fun tb!153595 () Bool)

(assert (=> (and b!2809977 (= (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))) (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99)))) t!229777) tb!153595))

(declare-fun result!190918 () Bool)

(assert (= result!190918 result!190914))

(assert (=> b!2810016 t!229777))

(declare-fun b_and!205437 () Bool)

(assert (= b_and!205429 (and (=> t!229777 result!190918) b_and!205437)))

(declare-fun m!3239837 () Bool)

(assert (=> d!815659 m!3239837))

(declare-fun m!3239839 () Bool)

(assert (=> b!2810016 m!3239839))

(assert (=> b!2810016 m!3239839))

(declare-fun m!3239841 () Bool)

(assert (=> b!2810016 m!3239841))

(declare-fun m!3239843 () Bool)

(assert (=> b!2810017 m!3239843))

(assert (=> start!271876 d!815659))

(declare-fun d!815665 () Bool)

(declare-fun e!1777073 () Bool)

(assert (=> d!815665 e!1777073))

(declare-fun res!1170115 () Bool)

(assert (=> d!815665 (=> (not res!1170115) (not e!1777073))))

(declare-fun lt!1003965 () List!32902)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4567 (List!32902) (InoxSet C!16728))

(assert (=> d!815665 (= res!1170115 (= (content!4567 lt!1003965) ((_ map or) (content!4567 (list!12285 (charsOf!3054 (h!38223 lt!1003949)))) (content!4567 (printList!1214 thiss!13843 (t!229769 lt!1003949))))))))

(declare-fun e!1777074 () List!32902)

(assert (=> d!815665 (= lt!1003965 e!1777074)))

(declare-fun c!455232 () Bool)

(assert (=> d!815665 (= c!455232 ((_ is Nil!32802) (list!12285 (charsOf!3054 (h!38223 lt!1003949)))))))

(assert (=> d!815665 (= (++!8055 (list!12285 (charsOf!3054 (h!38223 lt!1003949))) (printList!1214 thiss!13843 (t!229769 lt!1003949))) lt!1003965)))

(declare-fun b!2810043 () Bool)

(declare-fun res!1170116 () Bool)

(assert (=> b!2810043 (=> (not res!1170116) (not e!1777073))))

(assert (=> b!2810043 (= res!1170116 (= (size!25570 lt!1003965) (+ (size!25570 (list!12285 (charsOf!3054 (h!38223 lt!1003949)))) (size!25570 (printList!1214 thiss!13843 (t!229769 lt!1003949))))))))

(declare-fun b!2810042 () Bool)

(assert (=> b!2810042 (= e!1777074 (Cons!32802 (h!38222 (list!12285 (charsOf!3054 (h!38223 lt!1003949)))) (++!8055 (t!229768 (list!12285 (charsOf!3054 (h!38223 lt!1003949)))) (printList!1214 thiss!13843 (t!229769 lt!1003949)))))))

(declare-fun b!2810044 () Bool)

(assert (=> b!2810044 (= e!1777073 (or (not (= (printList!1214 thiss!13843 (t!229769 lt!1003949)) Nil!32802)) (= lt!1003965 (list!12285 (charsOf!3054 (h!38223 lt!1003949))))))))

(declare-fun b!2810041 () Bool)

(assert (=> b!2810041 (= e!1777074 (printList!1214 thiss!13843 (t!229769 lt!1003949)))))

(assert (= (and d!815665 c!455232) b!2810041))

(assert (= (and d!815665 (not c!455232)) b!2810042))

(assert (= (and d!815665 res!1170115) b!2810043))

(assert (= (and b!2810043 res!1170116) b!2810044))

(declare-fun m!3239873 () Bool)

(assert (=> d!815665 m!3239873))

(assert (=> d!815665 m!3239781))

(declare-fun m!3239875 () Bool)

(assert (=> d!815665 m!3239875))

(assert (=> d!815665 m!3239783))

(declare-fun m!3239877 () Bool)

(assert (=> d!815665 m!3239877))

(declare-fun m!3239879 () Bool)

(assert (=> b!2810043 m!3239879))

(assert (=> b!2810043 m!3239781))

(declare-fun m!3239881 () Bool)

(assert (=> b!2810043 m!3239881))

(assert (=> b!2810043 m!3239783))

(declare-fun m!3239883 () Bool)

(assert (=> b!2810043 m!3239883))

(assert (=> b!2810042 m!3239783))

(declare-fun m!3239885 () Bool)

(assert (=> b!2810042 m!3239885))

(assert (=> b!2809982 d!815665))

(declare-fun d!815673 () Bool)

(declare-fun list!12287 (Conc!10154) List!32902)

(assert (=> d!815673 (= (list!12285 (charsOf!3054 (h!38223 lt!1003949))) (list!12287 (c!455222 (charsOf!3054 (h!38223 lt!1003949)))))))

(declare-fun bs!516336 () Bool)

(assert (= bs!516336 d!815673))

(declare-fun m!3239887 () Bool)

(assert (=> bs!516336 m!3239887))

(assert (=> b!2809982 d!815673))

(declare-fun d!815675 () Bool)

(declare-fun lt!1003970 () BalanceConc!19922)

(assert (=> d!815675 (= (list!12285 lt!1003970) (originalCharacters!5647 (h!38223 lt!1003949)))))

(assert (=> d!815675 (= lt!1003970 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 (h!38223 lt!1003949)))) (value!157987 (h!38223 lt!1003949))))))

(assert (=> d!815675 (= (charsOf!3054 (h!38223 lt!1003949)) lt!1003970)))

(declare-fun b_lambda!84137 () Bool)

(assert (=> (not b_lambda!84137) (not d!815675)))

(declare-fun tb!153609 () Bool)

(declare-fun t!229791 () Bool)

(assert (=> (and b!2809980 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 lt!1003949))))) t!229791) tb!153609))

(declare-fun b!2810065 () Bool)

(declare-fun e!1777087 () Bool)

(declare-fun tp!897206 () Bool)

(assert (=> b!2810065 (= e!1777087 (and (inv!44520 (c!455222 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 (h!38223 lt!1003949)))) (value!157987 (h!38223 lt!1003949))))) tp!897206))))

(declare-fun result!190932 () Bool)

(assert (=> tb!153609 (= result!190932 (and (inv!44521 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 (h!38223 lt!1003949)))) (value!157987 (h!38223 lt!1003949)))) e!1777087))))

(assert (= tb!153609 b!2810065))

(declare-fun m!3239919 () Bool)

(assert (=> b!2810065 m!3239919))

(declare-fun m!3239923 () Bool)

(assert (=> tb!153609 m!3239923))

(assert (=> d!815675 t!229791))

(declare-fun b_and!205451 () Bool)

(assert (= b_and!205435 (and (=> t!229791 result!190932) b_and!205451)))

(declare-fun tb!153611 () Bool)

(declare-fun t!229793 () Bool)

(assert (=> (and b!2809977 (= (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 lt!1003949))))) t!229793) tb!153611))

(declare-fun result!190934 () Bool)

(assert (= result!190934 result!190932))

(assert (=> d!815675 t!229793))

(declare-fun b_and!205453 () Bool)

(assert (= b_and!205437 (and (=> t!229793 result!190934) b_and!205453)))

(declare-fun m!3239931 () Bool)

(assert (=> d!815675 m!3239931))

(declare-fun m!3239933 () Bool)

(assert (=> d!815675 m!3239933))

(assert (=> b!2809982 d!815675))

(declare-fun d!815687 () Bool)

(declare-fun c!455248 () Bool)

(assert (=> d!815687 (= c!455248 ((_ is Cons!32803) (t!229769 lt!1003949)))))

(declare-fun e!1777098 () List!32902)

(assert (=> d!815687 (= (printList!1214 thiss!13843 (t!229769 lt!1003949)) e!1777098)))

(declare-fun b!2810086 () Bool)

(assert (=> b!2810086 (= e!1777098 (++!8055 (list!12285 (charsOf!3054 (h!38223 (t!229769 lt!1003949)))) (printList!1214 thiss!13843 (t!229769 (t!229769 lt!1003949)))))))

(declare-fun b!2810087 () Bool)

(assert (=> b!2810087 (= e!1777098 Nil!32802)))

(assert (= (and d!815687 c!455248) b!2810086))

(assert (= (and d!815687 (not c!455248)) b!2810087))

(declare-fun m!3239969 () Bool)

(assert (=> b!2810086 m!3239969))

(assert (=> b!2810086 m!3239969))

(declare-fun m!3239971 () Bool)

(assert (=> b!2810086 m!3239971))

(declare-fun m!3239973 () Bool)

(assert (=> b!2810086 m!3239973))

(assert (=> b!2810086 m!3239971))

(assert (=> b!2810086 m!3239973))

(declare-fun m!3239975 () Bool)

(assert (=> b!2810086 m!3239975))

(assert (=> b!2809982 d!815687))

(declare-fun d!815703 () Bool)

(assert (=> d!815703 (= (inv!44513 (tag!5419 (rule!7343 separatorToken!99))) (= (mod (str.len (value!157986 (tag!5419 (rule!7343 separatorToken!99)))) 2) 0))))

(assert (=> b!2809981 d!815703))

(declare-fun d!815705 () Bool)

(declare-fun res!1170130 () Bool)

(declare-fun e!1777106 () Bool)

(assert (=> d!815705 (=> (not res!1170130) (not e!1777106))))

(declare-fun semiInverseModEq!2034 (Int Int) Bool)

(assert (=> d!815705 (= res!1170130 (semiInverseModEq!2034 (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))) (toValue!6917 (transformation!4915 (rule!7343 separatorToken!99)))))))

(assert (=> d!815705 (= (inv!44516 (transformation!4915 (rule!7343 separatorToken!99))) e!1777106)))

(declare-fun b!2810100 () Bool)

(declare-fun equivClasses!1935 (Int Int) Bool)

(assert (=> b!2810100 (= e!1777106 (equivClasses!1935 (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))) (toValue!6917 (transformation!4915 (rule!7343 separatorToken!99)))))))

(assert (= (and d!815705 res!1170130) b!2810100))

(declare-fun m!3239993 () Bool)

(assert (=> d!815705 m!3239993))

(declare-fun m!3239995 () Bool)

(assert (=> b!2810100 m!3239995))

(assert (=> b!2809981 d!815705))

(declare-fun b!2810111 () Bool)

(declare-fun e!1777115 () Bool)

(declare-fun inv!15 (TokenValue!5137) Bool)

(assert (=> b!2810111 (= e!1777115 (inv!15 (value!157987 separatorToken!99)))))

(declare-fun d!815713 () Bool)

(declare-fun c!455258 () Bool)

(assert (=> d!815713 (= c!455258 ((_ is IntegerValue!15411) (value!157987 separatorToken!99)))))

(declare-fun e!1777113 () Bool)

(assert (=> d!815713 (= (inv!21 (value!157987 separatorToken!99)) e!1777113)))

(declare-fun b!2810112 () Bool)

(declare-fun e!1777114 () Bool)

(declare-fun inv!17 (TokenValue!5137) Bool)

(assert (=> b!2810112 (= e!1777114 (inv!17 (value!157987 separatorToken!99)))))

(declare-fun b!2810113 () Bool)

(declare-fun res!1170133 () Bool)

(assert (=> b!2810113 (=> res!1170133 e!1777115)))

(assert (=> b!2810113 (= res!1170133 (not ((_ is IntegerValue!15413) (value!157987 separatorToken!99))))))

(assert (=> b!2810113 (= e!1777114 e!1777115)))

(declare-fun b!2810114 () Bool)

(assert (=> b!2810114 (= e!1777113 e!1777114)))

(declare-fun c!455257 () Bool)

(assert (=> b!2810114 (= c!455257 ((_ is IntegerValue!15412) (value!157987 separatorToken!99)))))

(declare-fun b!2810115 () Bool)

(declare-fun inv!16 (TokenValue!5137) Bool)

(assert (=> b!2810115 (= e!1777113 (inv!16 (value!157987 separatorToken!99)))))

(assert (= (and d!815713 c!455258) b!2810115))

(assert (= (and d!815713 (not c!455258)) b!2810114))

(assert (= (and b!2810114 c!455257) b!2810112))

(assert (= (and b!2810114 (not c!455257)) b!2810113))

(assert (= (and b!2810113 (not res!1170133)) b!2810111))

(declare-fun m!3239997 () Bool)

(assert (=> b!2810111 m!3239997))

(declare-fun m!3239999 () Bool)

(assert (=> b!2810112 m!3239999))

(declare-fun m!3240001 () Bool)

(assert (=> b!2810115 m!3240001))

(assert (=> b!2809976 d!815713))

(declare-fun d!815715 () Bool)

(declare-fun e!1777116 () Bool)

(assert (=> d!815715 e!1777116))

(declare-fun res!1170134 () Bool)

(assert (=> d!815715 (=> (not res!1170134) (not e!1777116))))

(declare-fun lt!1003974 () List!32902)

(assert (=> d!815715 (= res!1170134 (= (content!4567 lt!1003974) ((_ map or) (content!4567 (list!12285 (charsOf!3054 (h!38223 lt!1003948)))) (content!4567 (printList!1214 thiss!13843 (t!229769 lt!1003948))))))))

(declare-fun e!1777117 () List!32902)

(assert (=> d!815715 (= lt!1003974 e!1777117)))

(declare-fun c!455259 () Bool)

(assert (=> d!815715 (= c!455259 ((_ is Nil!32802) (list!12285 (charsOf!3054 (h!38223 lt!1003948)))))))

(assert (=> d!815715 (= (++!8055 (list!12285 (charsOf!3054 (h!38223 lt!1003948))) (printList!1214 thiss!13843 (t!229769 lt!1003948))) lt!1003974)))

(declare-fun b!2810118 () Bool)

(declare-fun res!1170135 () Bool)

(assert (=> b!2810118 (=> (not res!1170135) (not e!1777116))))

(assert (=> b!2810118 (= res!1170135 (= (size!25570 lt!1003974) (+ (size!25570 (list!12285 (charsOf!3054 (h!38223 lt!1003948)))) (size!25570 (printList!1214 thiss!13843 (t!229769 lt!1003948))))))))

(declare-fun b!2810117 () Bool)

(assert (=> b!2810117 (= e!1777117 (Cons!32802 (h!38222 (list!12285 (charsOf!3054 (h!38223 lt!1003948)))) (++!8055 (t!229768 (list!12285 (charsOf!3054 (h!38223 lt!1003948)))) (printList!1214 thiss!13843 (t!229769 lt!1003948)))))))

(declare-fun b!2810119 () Bool)

(assert (=> b!2810119 (= e!1777116 (or (not (= (printList!1214 thiss!13843 (t!229769 lt!1003948)) Nil!32802)) (= lt!1003974 (list!12285 (charsOf!3054 (h!38223 lt!1003948))))))))

(declare-fun b!2810116 () Bool)

(assert (=> b!2810116 (= e!1777117 (printList!1214 thiss!13843 (t!229769 lt!1003948)))))

(assert (= (and d!815715 c!455259) b!2810116))

(assert (= (and d!815715 (not c!455259)) b!2810117))

(assert (= (and d!815715 res!1170134) b!2810118))

(assert (= (and b!2810118 res!1170135) b!2810119))

(declare-fun m!3240003 () Bool)

(assert (=> d!815715 m!3240003))

(assert (=> d!815715 m!3239789))

(declare-fun m!3240005 () Bool)

(assert (=> d!815715 m!3240005))

(assert (=> d!815715 m!3239791))

(declare-fun m!3240007 () Bool)

(assert (=> d!815715 m!3240007))

(declare-fun m!3240009 () Bool)

(assert (=> b!2810118 m!3240009))

(assert (=> b!2810118 m!3239789))

(declare-fun m!3240011 () Bool)

(assert (=> b!2810118 m!3240011))

(assert (=> b!2810118 m!3239791))

(declare-fun m!3240013 () Bool)

(assert (=> b!2810118 m!3240013))

(assert (=> b!2810117 m!3239791))

(declare-fun m!3240015 () Bool)

(assert (=> b!2810117 m!3240015))

(assert (=> b!2809975 d!815715))

(declare-fun d!815717 () Bool)

(assert (=> d!815717 (= (list!12285 (charsOf!3054 (h!38223 lt!1003948))) (list!12287 (c!455222 (charsOf!3054 (h!38223 lt!1003948)))))))

(declare-fun bs!516339 () Bool)

(assert (= bs!516339 d!815717))

(declare-fun m!3240017 () Bool)

(assert (=> bs!516339 m!3240017))

(assert (=> b!2809975 d!815717))

(declare-fun d!815719 () Bool)

(declare-fun lt!1003975 () BalanceConc!19922)

(assert (=> d!815719 (= (list!12285 lt!1003975) (originalCharacters!5647 (h!38223 lt!1003948)))))

(assert (=> d!815719 (= lt!1003975 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 (h!38223 lt!1003948)))) (value!157987 (h!38223 lt!1003948))))))

(assert (=> d!815719 (= (charsOf!3054 (h!38223 lt!1003948)) lt!1003975)))

(declare-fun b_lambda!84139 () Bool)

(assert (=> (not b_lambda!84139) (not d!815719)))

(declare-fun tb!153613 () Bool)

(declare-fun t!229796 () Bool)

(assert (=> (and b!2809980 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 lt!1003948))))) t!229796) tb!153613))

(declare-fun b!2810120 () Bool)

(declare-fun e!1777118 () Bool)

(declare-fun tp!897207 () Bool)

(assert (=> b!2810120 (= e!1777118 (and (inv!44520 (c!455222 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 (h!38223 lt!1003948)))) (value!157987 (h!38223 lt!1003948))))) tp!897207))))

(declare-fun result!190936 () Bool)

(assert (=> tb!153613 (= result!190936 (and (inv!44521 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 (h!38223 lt!1003948)))) (value!157987 (h!38223 lt!1003948)))) e!1777118))))

(assert (= tb!153613 b!2810120))

(declare-fun m!3240019 () Bool)

(assert (=> b!2810120 m!3240019))

(declare-fun m!3240021 () Bool)

(assert (=> tb!153613 m!3240021))

(assert (=> d!815719 t!229796))

(declare-fun b_and!205455 () Bool)

(assert (= b_and!205451 (and (=> t!229796 result!190936) b_and!205455)))

(declare-fun t!229798 () Bool)

(declare-fun tb!153615 () Bool)

(assert (=> (and b!2809977 (= (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 lt!1003948))))) t!229798) tb!153615))

(declare-fun result!190938 () Bool)

(assert (= result!190938 result!190936))

(assert (=> d!815719 t!229798))

(declare-fun b_and!205457 () Bool)

(assert (= b_and!205453 (and (=> t!229798 result!190938) b_and!205457)))

(declare-fun m!3240023 () Bool)

(assert (=> d!815719 m!3240023))

(declare-fun m!3240025 () Bool)

(assert (=> d!815719 m!3240025))

(assert (=> b!2809975 d!815719))

(declare-fun d!815721 () Bool)

(declare-fun c!455260 () Bool)

(assert (=> d!815721 (= c!455260 ((_ is Cons!32803) (t!229769 lt!1003948)))))

(declare-fun e!1777119 () List!32902)

(assert (=> d!815721 (= (printList!1214 thiss!13843 (t!229769 lt!1003948)) e!1777119)))

(declare-fun b!2810121 () Bool)

(assert (=> b!2810121 (= e!1777119 (++!8055 (list!12285 (charsOf!3054 (h!38223 (t!229769 lt!1003948)))) (printList!1214 thiss!13843 (t!229769 (t!229769 lt!1003948)))))))

(declare-fun b!2810122 () Bool)

(assert (=> b!2810122 (= e!1777119 Nil!32802)))

(assert (= (and d!815721 c!455260) b!2810121))

(assert (= (and d!815721 (not c!455260)) b!2810122))

(declare-fun m!3240027 () Bool)

(assert (=> b!2810121 m!3240027))

(assert (=> b!2810121 m!3240027))

(declare-fun m!3240029 () Bool)

(assert (=> b!2810121 m!3240029))

(declare-fun m!3240031 () Bool)

(assert (=> b!2810121 m!3240031))

(assert (=> b!2810121 m!3240029))

(assert (=> b!2810121 m!3240031))

(declare-fun m!3240033 () Bool)

(assert (=> b!2810121 m!3240033))

(assert (=> b!2809975 d!815721))

(declare-fun b!2810123 () Bool)

(declare-fun e!1777122 () Bool)

(assert (=> b!2810123 (= e!1777122 (inv!15 (value!157987 (h!38223 l!4240))))))

(declare-fun d!815723 () Bool)

(declare-fun c!455262 () Bool)

(assert (=> d!815723 (= c!455262 ((_ is IntegerValue!15411) (value!157987 (h!38223 l!4240))))))

(declare-fun e!1777120 () Bool)

(assert (=> d!815723 (= (inv!21 (value!157987 (h!38223 l!4240))) e!1777120)))

(declare-fun b!2810124 () Bool)

(declare-fun e!1777121 () Bool)

(assert (=> b!2810124 (= e!1777121 (inv!17 (value!157987 (h!38223 l!4240))))))

(declare-fun b!2810125 () Bool)

(declare-fun res!1170136 () Bool)

(assert (=> b!2810125 (=> res!1170136 e!1777122)))

(assert (=> b!2810125 (= res!1170136 (not ((_ is IntegerValue!15413) (value!157987 (h!38223 l!4240)))))))

(assert (=> b!2810125 (= e!1777121 e!1777122)))

(declare-fun b!2810126 () Bool)

(assert (=> b!2810126 (= e!1777120 e!1777121)))

(declare-fun c!455261 () Bool)

(assert (=> b!2810126 (= c!455261 ((_ is IntegerValue!15412) (value!157987 (h!38223 l!4240))))))

(declare-fun b!2810127 () Bool)

(assert (=> b!2810127 (= e!1777120 (inv!16 (value!157987 (h!38223 l!4240))))))

(assert (= (and d!815723 c!455262) b!2810127))

(assert (= (and d!815723 (not c!455262)) b!2810126))

(assert (= (and b!2810126 c!455261) b!2810124))

(assert (= (and b!2810126 (not c!455261)) b!2810125))

(assert (= (and b!2810125 (not res!1170136)) b!2810123))

(declare-fun m!3240035 () Bool)

(assert (=> b!2810123 m!3240035))

(declare-fun m!3240037 () Bool)

(assert (=> b!2810124 m!3240037))

(declare-fun m!3240039 () Bool)

(assert (=> b!2810127 m!3240039))

(assert (=> b!2809973 d!815723))

(declare-fun d!815725 () Bool)

(declare-fun e!1777123 () Bool)

(assert (=> d!815725 e!1777123))

(declare-fun res!1170137 () Bool)

(assert (=> d!815725 (=> (not res!1170137) (not e!1777123))))

(declare-fun lt!1003976 () List!32902)

(assert (=> d!815725 (= res!1170137 (= (content!4567 lt!1003976) ((_ map or) (content!4567 lt!1003956) (content!4567 lt!1003951))))))

(declare-fun e!1777124 () List!32902)

(assert (=> d!815725 (= lt!1003976 e!1777124)))

(declare-fun c!455263 () Bool)

(assert (=> d!815725 (= c!455263 ((_ is Nil!32802) lt!1003956))))

(assert (=> d!815725 (= (++!8055 lt!1003956 lt!1003951) lt!1003976)))

(declare-fun b!2810130 () Bool)

(declare-fun res!1170138 () Bool)

(assert (=> b!2810130 (=> (not res!1170138) (not e!1777123))))

(assert (=> b!2810130 (= res!1170138 (= (size!25570 lt!1003976) (+ (size!25570 lt!1003956) (size!25570 lt!1003951))))))

(declare-fun b!2810129 () Bool)

(assert (=> b!2810129 (= e!1777124 (Cons!32802 (h!38222 lt!1003956) (++!8055 (t!229768 lt!1003956) lt!1003951)))))

(declare-fun b!2810131 () Bool)

(assert (=> b!2810131 (= e!1777123 (or (not (= lt!1003951 Nil!32802)) (= lt!1003976 lt!1003956)))))

(declare-fun b!2810128 () Bool)

(assert (=> b!2810128 (= e!1777124 lt!1003951)))

(assert (= (and d!815725 c!455263) b!2810128))

(assert (= (and d!815725 (not c!455263)) b!2810129))

(assert (= (and d!815725 res!1170137) b!2810130))

(assert (= (and b!2810130 res!1170138) b!2810131))

(declare-fun m!3240041 () Bool)

(assert (=> d!815725 m!3240041))

(declare-fun m!3240043 () Bool)

(assert (=> d!815725 m!3240043))

(declare-fun m!3240045 () Bool)

(assert (=> d!815725 m!3240045))

(declare-fun m!3240047 () Bool)

(assert (=> b!2810130 m!3240047))

(declare-fun m!3240049 () Bool)

(assert (=> b!2810130 m!3240049))

(declare-fun m!3240051 () Bool)

(assert (=> b!2810130 m!3240051))

(declare-fun m!3240053 () Bool)

(assert (=> b!2810129 m!3240053))

(assert (=> b!2809984 d!815725))

(declare-fun d!815727 () Bool)

(assert (=> d!815727 (= (++!8055 (++!8055 lt!1003955 lt!1003956) lt!1003951) (++!8055 lt!1003955 (++!8055 lt!1003956 lt!1003951)))))

(declare-fun lt!1003979 () Unit!46830)

(declare-fun choose!16556 (List!32902 List!32902 List!32902) Unit!46830)

(assert (=> d!815727 (= lt!1003979 (choose!16556 lt!1003955 lt!1003956 lt!1003951))))

(assert (=> d!815727 (= (lemmaConcatAssociativity!1666 lt!1003955 lt!1003956 lt!1003951) lt!1003979)))

(declare-fun bs!516340 () Bool)

(assert (= bs!516340 d!815727))

(declare-fun m!3240055 () Bool)

(assert (=> bs!516340 m!3240055))

(assert (=> bs!516340 m!3239749))

(assert (=> bs!516340 m!3239755))

(assert (=> bs!516340 m!3239749))

(assert (=> bs!516340 m!3239751))

(assert (=> bs!516340 m!3239755))

(assert (=> bs!516340 m!3239757))

(assert (=> b!2809984 d!815727))

(declare-fun d!815729 () Bool)

(declare-fun e!1777131 () Bool)

(assert (=> d!815729 e!1777131))

(declare-fun res!1170145 () Bool)

(assert (=> d!815729 (=> (not res!1170145) (not e!1777131))))

(declare-fun lt!1003982 () List!32902)

(assert (=> d!815729 (= res!1170145 (= (content!4567 lt!1003982) ((_ map or) (content!4567 (++!8055 lt!1003955 lt!1003956)) (content!4567 lt!1003951))))))

(declare-fun e!1777132 () List!32902)

(assert (=> d!815729 (= lt!1003982 e!1777132)))

(declare-fun c!455266 () Bool)

(assert (=> d!815729 (= c!455266 ((_ is Nil!32802) (++!8055 lt!1003955 lt!1003956)))))

(assert (=> d!815729 (= (++!8055 (++!8055 lt!1003955 lt!1003956) lt!1003951) lt!1003982)))

(declare-fun b!2810142 () Bool)

(declare-fun res!1170146 () Bool)

(assert (=> b!2810142 (=> (not res!1170146) (not e!1777131))))

(assert (=> b!2810142 (= res!1170146 (= (size!25570 lt!1003982) (+ (size!25570 (++!8055 lt!1003955 lt!1003956)) (size!25570 lt!1003951))))))

(declare-fun b!2810141 () Bool)

(assert (=> b!2810141 (= e!1777132 (Cons!32802 (h!38222 (++!8055 lt!1003955 lt!1003956)) (++!8055 (t!229768 (++!8055 lt!1003955 lt!1003956)) lt!1003951)))))

(declare-fun b!2810143 () Bool)

(assert (=> b!2810143 (= e!1777131 (or (not (= lt!1003951 Nil!32802)) (= lt!1003982 (++!8055 lt!1003955 lt!1003956))))))

(declare-fun b!2810140 () Bool)

(assert (=> b!2810140 (= e!1777132 lt!1003951)))

(assert (= (and d!815729 c!455266) b!2810140))

(assert (= (and d!815729 (not c!455266)) b!2810141))

(assert (= (and d!815729 res!1170145) b!2810142))

(assert (= (and b!2810142 res!1170146) b!2810143))

(declare-fun m!3240057 () Bool)

(assert (=> d!815729 m!3240057))

(assert (=> d!815729 m!3239755))

(declare-fun m!3240059 () Bool)

(assert (=> d!815729 m!3240059))

(assert (=> d!815729 m!3240045))

(declare-fun m!3240061 () Bool)

(assert (=> b!2810142 m!3240061))

(assert (=> b!2810142 m!3239755))

(declare-fun m!3240063 () Bool)

(assert (=> b!2810142 m!3240063))

(assert (=> b!2810142 m!3240051))

(declare-fun m!3240065 () Bool)

(assert (=> b!2810141 m!3240065))

(assert (=> b!2809984 d!815729))

(declare-fun d!815731 () Bool)

(declare-fun e!1777137 () Bool)

(assert (=> d!815731 e!1777137))

(declare-fun res!1170149 () Bool)

(assert (=> d!815731 (=> (not res!1170149) (not e!1777137))))

(declare-fun lt!1003987 () List!32902)

(assert (=> d!815731 (= res!1170149 (= (content!4567 lt!1003987) ((_ map or) (content!4567 lt!1003955) (content!4567 (++!8055 lt!1003956 lt!1003951)))))))

(declare-fun e!1777138 () List!32902)

(assert (=> d!815731 (= lt!1003987 e!1777138)))

(declare-fun c!455269 () Bool)

(assert (=> d!815731 (= c!455269 ((_ is Nil!32802) lt!1003955))))

(assert (=> d!815731 (= (++!8055 lt!1003955 (++!8055 lt!1003956 lt!1003951)) lt!1003987)))

(declare-fun b!2810156 () Bool)

(declare-fun res!1170150 () Bool)

(assert (=> b!2810156 (=> (not res!1170150) (not e!1777137))))

(assert (=> b!2810156 (= res!1170150 (= (size!25570 lt!1003987) (+ (size!25570 lt!1003955) (size!25570 (++!8055 lt!1003956 lt!1003951)))))))

(declare-fun b!2810155 () Bool)

(assert (=> b!2810155 (= e!1777138 (Cons!32802 (h!38222 lt!1003955) (++!8055 (t!229768 lt!1003955) (++!8055 lt!1003956 lt!1003951))))))

(declare-fun b!2810157 () Bool)

(assert (=> b!2810157 (= e!1777137 (or (not (= (++!8055 lt!1003956 lt!1003951) Nil!32802)) (= lt!1003987 lt!1003955)))))

(declare-fun b!2810154 () Bool)

(assert (=> b!2810154 (= e!1777138 (++!8055 lt!1003956 lt!1003951))))

(assert (= (and d!815731 c!455269) b!2810154))

(assert (= (and d!815731 (not c!455269)) b!2810155))

(assert (= (and d!815731 res!1170149) b!2810156))

(assert (= (and b!2810156 res!1170150) b!2810157))

(declare-fun m!3240067 () Bool)

(assert (=> d!815731 m!3240067))

(declare-fun m!3240069 () Bool)

(assert (=> d!815731 m!3240069))

(assert (=> d!815731 m!3239749))

(declare-fun m!3240071 () Bool)

(assert (=> d!815731 m!3240071))

(declare-fun m!3240073 () Bool)

(assert (=> b!2810156 m!3240073))

(declare-fun m!3240075 () Bool)

(assert (=> b!2810156 m!3240075))

(assert (=> b!2810156 m!3239749))

(declare-fun m!3240077 () Bool)

(assert (=> b!2810156 m!3240077))

(assert (=> b!2810155 m!3239749))

(declare-fun m!3240079 () Bool)

(assert (=> b!2810155 m!3240079))

(assert (=> b!2809984 d!815731))

(declare-fun d!815733 () Bool)

(declare-fun c!455274 () Bool)

(assert (=> d!815733 (= c!455274 ((_ is Cons!32803) l!4240))))

(declare-fun e!1777143 () List!32902)

(assert (=> d!815733 (= (printWithSeparatorTokenList!84 thiss!13843 l!4240 separatorToken!99) e!1777143)))

(declare-fun b!2810164 () Bool)

(assert (=> b!2810164 (= e!1777143 (++!8055 (++!8055 (list!12285 (charsOf!3054 (h!38223 l!4240))) (list!12285 (charsOf!3054 separatorToken!99))) (printWithSeparatorTokenList!84 thiss!13843 (t!229769 l!4240) separatorToken!99)))))

(declare-fun b!2810165 () Bool)

(assert (=> b!2810165 (= e!1777143 Nil!32802)))

(assert (= (and d!815733 c!455274) b!2810164))

(assert (= (and d!815733 (not c!455274)) b!2810165))

(assert (=> b!2810164 m!3239747))

(assert (=> b!2810164 m!3239743))

(assert (=> b!2810164 m!3239745))

(assert (=> b!2810164 m!3239743))

(assert (=> b!2810164 m!3239753))

(assert (=> b!2810164 m!3239745))

(declare-fun m!3240081 () Bool)

(assert (=> b!2810164 m!3240081))

(assert (=> b!2810164 m!3239747))

(assert (=> b!2810164 m!3239753))

(declare-fun m!3240083 () Bool)

(assert (=> b!2810164 m!3240083))

(assert (=> b!2810164 m!3240081))

(assert (=> b!2810164 m!3240083))

(declare-fun m!3240085 () Bool)

(assert (=> b!2810164 m!3240085))

(assert (=> b!2809984 d!815733))

(declare-fun d!815735 () Bool)

(declare-fun c!455275 () Bool)

(assert (=> d!815735 (= c!455275 ((_ is Cons!32803) lt!1003953))))

(declare-fun e!1777144 () List!32902)

(assert (=> d!815735 (= (printList!1214 thiss!13843 lt!1003953) e!1777144)))

(declare-fun b!2810166 () Bool)

(assert (=> b!2810166 (= e!1777144 (++!8055 (list!12285 (charsOf!3054 (h!38223 lt!1003953))) (printList!1214 thiss!13843 (t!229769 lt!1003953))))))

(declare-fun b!2810167 () Bool)

(assert (=> b!2810167 (= e!1777144 Nil!32802)))

(assert (= (and d!815735 c!455275) b!2810166))

(assert (= (and d!815735 (not c!455275)) b!2810167))

(declare-fun m!3240087 () Bool)

(assert (=> b!2810166 m!3240087))

(assert (=> b!2810166 m!3240087))

(declare-fun m!3240089 () Bool)

(assert (=> b!2810166 m!3240089))

(declare-fun m!3240091 () Bool)

(assert (=> b!2810166 m!3240091))

(assert (=> b!2810166 m!3240089))

(assert (=> b!2810166 m!3240091))

(declare-fun m!3240093 () Bool)

(assert (=> b!2810166 m!3240093))

(assert (=> b!2809984 d!815735))

(declare-fun b!2810245 () Bool)

(declare-fun e!1777197 () List!32902)

(assert (=> b!2810245 (= e!1777197 Nil!32802)))

(declare-fun e!1777198 () List!32902)

(declare-fun e!1777195 () Bool)

(declare-fun b!2810246 () Bool)

(assert (=> b!2810246 (= e!1777195 (= (printList!1214 thiss!13843 ($colon$colon!562 (withSeparatorTokenList!150 thiss!13843 (t!229769 (t!229769 l!4240)) separatorToken!99) separatorToken!99)) e!1777198))))

(declare-fun c!455290 () Bool)

(declare-fun lt!1004035 () List!32903)

(assert (=> b!2810246 (= c!455290 ((_ is Cons!32803) lt!1004035))))

(assert (=> b!2810246 (= lt!1004035 ($colon$colon!562 (withSeparatorTokenList!150 thiss!13843 (t!229769 (t!229769 l!4240)) separatorToken!99) separatorToken!99))))

(declare-fun b!2810247 () Bool)

(declare-fun lt!1004028 () List!32903)

(assert (=> b!2810247 (= e!1777197 (++!8055 (list!12285 (charsOf!3054 (h!38223 lt!1004028))) (printList!1214 thiss!13843 (t!229769 lt!1004028))))))

(declare-fun lt!1004029 () List!32903)

(declare-fun d!815737 () Bool)

(assert (=> d!815737 (= (printList!1214 thiss!13843 lt!1004029) (printWithSeparatorTokenList!84 thiss!13843 (t!229769 l!4240) separatorToken!99))))

(declare-fun e!1777199 () List!32903)

(assert (=> d!815737 (= lt!1004029 e!1777199)))

(declare-fun c!455289 () Bool)

(assert (=> d!815737 (= c!455289 ((_ is Cons!32803) (t!229769 l!4240)))))

(declare-fun e!1777196 () Bool)

(assert (=> d!815737 e!1777196))

(declare-fun res!1170168 () Bool)

(assert (=> d!815737 (=> (not res!1170168) (not e!1777196))))

(assert (=> d!815737 (= res!1170168 (isSeparator!4915 (rule!7343 separatorToken!99)))))

(assert (=> d!815737 (= (withSeparatorTokenList!150 thiss!13843 (t!229769 l!4240) separatorToken!99) lt!1004029)))

(declare-fun e!1777194 () Bool)

(declare-fun b!2810248 () Bool)

(assert (=> b!2810248 (= e!1777194 (= (printList!1214 thiss!13843 ($colon$colon!562 ($colon$colon!562 (withSeparatorTokenList!150 thiss!13843 (t!229769 (t!229769 l!4240)) separatorToken!99) separatorToken!99) (h!38223 (t!229769 l!4240)))) e!1777197))))

(declare-fun c!455288 () Bool)

(assert (=> b!2810248 (= c!455288 ((_ is Cons!32803) lt!1004028))))

(assert (=> b!2810248 (= lt!1004028 ($colon$colon!562 ($colon$colon!562 (withSeparatorTokenList!150 thiss!13843 (t!229769 (t!229769 l!4240)) separatorToken!99) separatorToken!99) (h!38223 (t!229769 l!4240))))))

(declare-fun b!2810249 () Bool)

(assert (=> b!2810249 (= e!1777198 (++!8055 (list!12285 (charsOf!3054 (h!38223 lt!1004035))) (printList!1214 thiss!13843 (t!229769 lt!1004035))))))

(declare-fun b!2810250 () Bool)

(assert (=> b!2810250 (= e!1777196 e!1777195)))

(declare-fun res!1170169 () Bool)

(assert (=> b!2810250 (=> res!1170169 e!1777195)))

(assert (=> b!2810250 (= res!1170169 (not ((_ is Cons!32803) (t!229769 l!4240))))))

(declare-fun b!2810251 () Bool)

(assert (=> b!2810251 (= e!1777199 ($colon$colon!562 ($colon$colon!562 (withSeparatorTokenList!150 thiss!13843 (t!229769 (t!229769 l!4240)) separatorToken!99) separatorToken!99) (h!38223 (t!229769 l!4240))))))

(declare-fun lt!1004031 () List!32902)

(assert (=> b!2810251 (= lt!1004031 (list!12285 (charsOf!3054 (h!38223 (t!229769 l!4240)))))))

(declare-fun lt!1004032 () List!32902)

(assert (=> b!2810251 (= lt!1004032 (list!12285 (charsOf!3054 separatorToken!99)))))

(declare-fun lt!1004033 () List!32902)

(assert (=> b!2810251 (= lt!1004033 (printList!1214 thiss!13843 (withSeparatorTokenList!150 thiss!13843 (t!229769 (t!229769 l!4240)) separatorToken!99)))))

(declare-fun lt!1004030 () Unit!46830)

(assert (=> b!2810251 (= lt!1004030 (lemmaConcatAssociativity!1666 lt!1004031 lt!1004032 lt!1004033))))

(assert (=> b!2810251 (= (++!8055 (++!8055 lt!1004031 lt!1004032) lt!1004033) (++!8055 lt!1004031 (++!8055 lt!1004032 lt!1004033)))))

(declare-fun lt!1004034 () Unit!46830)

(assert (=> b!2810251 (= lt!1004034 lt!1004030)))

(declare-fun b!2810252 () Bool)

(assert (=> b!2810252 (= e!1777199 Nil!32803)))

(declare-fun b!2810253 () Bool)

(declare-fun res!1170167 () Bool)

(assert (=> b!2810253 (=> (not res!1170167) (not e!1777196))))

(assert (=> b!2810253 (= res!1170167 e!1777194)))

(declare-fun res!1170166 () Bool)

(assert (=> b!2810253 (=> res!1170166 e!1777194)))

(assert (=> b!2810253 (= res!1170166 (not ((_ is Cons!32803) (t!229769 l!4240))))))

(declare-fun b!2810254 () Bool)

(assert (=> b!2810254 (= e!1777198 Nil!32802)))

(assert (= (and d!815737 res!1170168) b!2810253))

(assert (= (and b!2810253 (not res!1170166)) b!2810248))

(assert (= (and b!2810248 c!455288) b!2810247))

(assert (= (and b!2810248 (not c!455288)) b!2810245))

(assert (= (and b!2810253 res!1170167) b!2810250))

(assert (= (and b!2810250 (not res!1170169)) b!2810246))

(assert (= (and b!2810246 c!455290) b!2810249))

(assert (= (and b!2810246 (not c!455290)) b!2810254))

(assert (= (and d!815737 c!455289) b!2810251))

(assert (= (and d!815737 (not c!455289)) b!2810252))

(declare-fun m!3240171 () Bool)

(assert (=> d!815737 m!3240171))

(assert (=> d!815737 m!3240083))

(declare-fun m!3240173 () Bool)

(assert (=> b!2810246 m!3240173))

(assert (=> b!2810246 m!3240173))

(declare-fun m!3240175 () Bool)

(assert (=> b!2810246 m!3240175))

(assert (=> b!2810246 m!3240175))

(declare-fun m!3240177 () Bool)

(assert (=> b!2810246 m!3240177))

(declare-fun m!3240179 () Bool)

(assert (=> b!2810249 m!3240179))

(assert (=> b!2810249 m!3240179))

(declare-fun m!3240181 () Bool)

(assert (=> b!2810249 m!3240181))

(declare-fun m!3240183 () Bool)

(assert (=> b!2810249 m!3240183))

(assert (=> b!2810249 m!3240181))

(assert (=> b!2810249 m!3240183))

(declare-fun m!3240185 () Bool)

(assert (=> b!2810249 m!3240185))

(declare-fun m!3240187 () Bool)

(assert (=> b!2810247 m!3240187))

(assert (=> b!2810247 m!3240187))

(declare-fun m!3240189 () Bool)

(assert (=> b!2810247 m!3240189))

(declare-fun m!3240191 () Bool)

(assert (=> b!2810247 m!3240191))

(assert (=> b!2810247 m!3240189))

(assert (=> b!2810247 m!3240191))

(declare-fun m!3240193 () Bool)

(assert (=> b!2810247 m!3240193))

(declare-fun m!3240195 () Bool)

(assert (=> b!2810251 m!3240195))

(assert (=> b!2810251 m!3240173))

(declare-fun m!3240197 () Bool)

(assert (=> b!2810251 m!3240197))

(declare-fun m!3240199 () Bool)

(assert (=> b!2810251 m!3240199))

(assert (=> b!2810251 m!3239743))

(assert (=> b!2810251 m!3239745))

(assert (=> b!2810251 m!3239743))

(declare-fun m!3240201 () Bool)

(assert (=> b!2810251 m!3240201))

(declare-fun m!3240203 () Bool)

(assert (=> b!2810251 m!3240203))

(declare-fun m!3240205 () Bool)

(assert (=> b!2810251 m!3240205))

(assert (=> b!2810251 m!3240173))

(assert (=> b!2810251 m!3240175))

(assert (=> b!2810251 m!3240175))

(declare-fun m!3240207 () Bool)

(assert (=> b!2810251 m!3240207))

(assert (=> b!2810251 m!3240205))

(declare-fun m!3240209 () Bool)

(assert (=> b!2810251 m!3240209))

(assert (=> b!2810251 m!3240173))

(declare-fun m!3240211 () Bool)

(assert (=> b!2810251 m!3240211))

(assert (=> b!2810251 m!3240197))

(assert (=> b!2810251 m!3240201))

(assert (=> b!2810248 m!3240173))

(assert (=> b!2810248 m!3240173))

(assert (=> b!2810248 m!3240175))

(assert (=> b!2810248 m!3240175))

(assert (=> b!2810248 m!3240207))

(assert (=> b!2810248 m!3240207))

(declare-fun m!3240213 () Bool)

(assert (=> b!2810248 m!3240213))

(assert (=> b!2809984 d!815737))

(declare-fun d!815751 () Bool)

(declare-fun e!1777200 () Bool)

(assert (=> d!815751 e!1777200))

(declare-fun res!1170170 () Bool)

(assert (=> d!815751 (=> (not res!1170170) (not e!1777200))))

(declare-fun lt!1004036 () List!32902)

(assert (=> d!815751 (= res!1170170 (= (content!4567 lt!1004036) ((_ map or) (content!4567 lt!1003955) (content!4567 lt!1003956))))))

(declare-fun e!1777201 () List!32902)

(assert (=> d!815751 (= lt!1004036 e!1777201)))

(declare-fun c!455291 () Bool)

(assert (=> d!815751 (= c!455291 ((_ is Nil!32802) lt!1003955))))

(assert (=> d!815751 (= (++!8055 lt!1003955 lt!1003956) lt!1004036)))

(declare-fun b!2810257 () Bool)

(declare-fun res!1170171 () Bool)

(assert (=> b!2810257 (=> (not res!1170171) (not e!1777200))))

(assert (=> b!2810257 (= res!1170171 (= (size!25570 lt!1004036) (+ (size!25570 lt!1003955) (size!25570 lt!1003956))))))

(declare-fun b!2810256 () Bool)

(assert (=> b!2810256 (= e!1777201 (Cons!32802 (h!38222 lt!1003955) (++!8055 (t!229768 lt!1003955) lt!1003956)))))

(declare-fun b!2810258 () Bool)

(assert (=> b!2810258 (= e!1777200 (or (not (= lt!1003956 Nil!32802)) (= lt!1004036 lt!1003955)))))

(declare-fun b!2810255 () Bool)

(assert (=> b!2810255 (= e!1777201 lt!1003956)))

(assert (= (and d!815751 c!455291) b!2810255))

(assert (= (and d!815751 (not c!455291)) b!2810256))

(assert (= (and d!815751 res!1170170) b!2810257))

(assert (= (and b!2810257 res!1170171) b!2810258))

(declare-fun m!3240215 () Bool)

(assert (=> d!815751 m!3240215))

(assert (=> d!815751 m!3240069))

(assert (=> d!815751 m!3240043))

(declare-fun m!3240217 () Bool)

(assert (=> b!2810257 m!3240217))

(assert (=> b!2810257 m!3240075))

(assert (=> b!2810257 m!3240049))

(declare-fun m!3240219 () Bool)

(assert (=> b!2810256 m!3240219))

(assert (=> b!2809984 d!815751))

(declare-fun d!815753 () Bool)

(declare-fun lt!1004037 () BalanceConc!19922)

(assert (=> d!815753 (= (list!12285 lt!1004037) (originalCharacters!5647 (h!38223 l!4240)))))

(assert (=> d!815753 (= lt!1004037 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))) (value!157987 (h!38223 l!4240))))))

(assert (=> d!815753 (= (charsOf!3054 (h!38223 l!4240)) lt!1004037)))

(declare-fun b_lambda!84153 () Bool)

(assert (=> (not b_lambda!84153) (not d!815753)))

(declare-fun t!229808 () Bool)

(declare-fun tb!153625 () Bool)

(assert (=> (and b!2809980 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240))))) t!229808) tb!153625))

(declare-fun b!2810259 () Bool)

(declare-fun e!1777202 () Bool)

(declare-fun tp!897247 () Bool)

(assert (=> b!2810259 (= e!1777202 (and (inv!44520 (c!455222 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))) (value!157987 (h!38223 l!4240))))) tp!897247))))

(declare-fun result!190954 () Bool)

(assert (=> tb!153625 (= result!190954 (and (inv!44521 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))) (value!157987 (h!38223 l!4240)))) e!1777202))))

(assert (= tb!153625 b!2810259))

(declare-fun m!3240221 () Bool)

(assert (=> b!2810259 m!3240221))

(declare-fun m!3240223 () Bool)

(assert (=> tb!153625 m!3240223))

(assert (=> d!815753 t!229808))

(declare-fun b_and!205471 () Bool)

(assert (= b_and!205455 (and (=> t!229808 result!190954) b_and!205471)))

(declare-fun t!229810 () Bool)

(declare-fun tb!153627 () Bool)

(assert (=> (and b!2809977 (= (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240))))) t!229810) tb!153627))

(declare-fun result!190956 () Bool)

(assert (= result!190956 result!190954))

(assert (=> d!815753 t!229810))

(declare-fun b_and!205473 () Bool)

(assert (= b_and!205457 (and (=> t!229810 result!190956) b_and!205473)))

(declare-fun m!3240225 () Bool)

(assert (=> d!815753 m!3240225))

(declare-fun m!3240227 () Bool)

(assert (=> d!815753 m!3240227))

(assert (=> b!2809984 d!815753))

(declare-fun d!815755 () Bool)

(declare-fun c!455292 () Bool)

(assert (=> d!815755 (= c!455292 ((_ is Cons!32803) lt!1003949))))

(declare-fun e!1777203 () List!32902)

(assert (=> d!815755 (= (printList!1214 thiss!13843 lt!1003949) e!1777203)))

(declare-fun b!2810260 () Bool)

(assert (=> b!2810260 (= e!1777203 (++!8055 (list!12285 (charsOf!3054 (h!38223 lt!1003949))) (printList!1214 thiss!13843 (t!229769 lt!1003949))))))

(declare-fun b!2810261 () Bool)

(assert (=> b!2810261 (= e!1777203 Nil!32802)))

(assert (= (and d!815755 c!455292) b!2810260))

(assert (= (and d!815755 (not c!455292)) b!2810261))

(assert (=> b!2810260 m!3239779))

(assert (=> b!2810260 m!3239779))

(assert (=> b!2810260 m!3239781))

(assert (=> b!2810260 m!3239783))

(assert (=> b!2810260 m!3239781))

(assert (=> b!2810260 m!3239783))

(assert (=> b!2810260 m!3239785))

(assert (=> b!2809984 d!815755))

(declare-fun d!815757 () Bool)

(assert (=> d!815757 (= ($colon$colon!562 lt!1003953 separatorToken!99) (Cons!32803 separatorToken!99 lt!1003953))))

(assert (=> b!2809984 d!815757))

(declare-fun d!815759 () Bool)

(assert (=> d!815759 (= (list!12285 (charsOf!3054 (h!38223 l!4240))) (list!12287 (c!455222 (charsOf!3054 (h!38223 l!4240)))))))

(declare-fun bs!516343 () Bool)

(assert (= bs!516343 d!815759))

(declare-fun m!3240229 () Bool)

(assert (=> bs!516343 m!3240229))

(assert (=> b!2809984 d!815759))

(declare-fun d!815761 () Bool)

(assert (=> d!815761 (= ($colon$colon!562 lt!1003948 (h!38223 l!4240)) (Cons!32803 (h!38223 l!4240) lt!1003948))))

(assert (=> b!2809984 d!815761))

(declare-fun d!815763 () Bool)

(declare-fun c!455293 () Bool)

(assert (=> d!815763 (= c!455293 ((_ is Cons!32803) lt!1003948))))

(declare-fun e!1777204 () List!32902)

(assert (=> d!815763 (= (printList!1214 thiss!13843 lt!1003948) e!1777204)))

(declare-fun b!2810262 () Bool)

(assert (=> b!2810262 (= e!1777204 (++!8055 (list!12285 (charsOf!3054 (h!38223 lt!1003948))) (printList!1214 thiss!13843 (t!229769 lt!1003948))))))

(declare-fun b!2810263 () Bool)

(assert (=> b!2810263 (= e!1777204 Nil!32802)))

(assert (= (and d!815763 c!455293) b!2810262))

(assert (= (and d!815763 (not c!455293)) b!2810263))

(assert (=> b!2810262 m!3239787))

(assert (=> b!2810262 m!3239787))

(assert (=> b!2810262 m!3239789))

(assert (=> b!2810262 m!3239791))

(assert (=> b!2810262 m!3239789))

(assert (=> b!2810262 m!3239791))

(assert (=> b!2810262 m!3239793))

(assert (=> b!2809984 d!815763))

(declare-fun d!815765 () Bool)

(assert (=> d!815765 (= (list!12285 (charsOf!3054 separatorToken!99)) (list!12287 (c!455222 (charsOf!3054 separatorToken!99))))))

(declare-fun bs!516344 () Bool)

(assert (= bs!516344 d!815765))

(declare-fun m!3240231 () Bool)

(assert (=> bs!516344 m!3240231))

(assert (=> b!2809984 d!815765))

(declare-fun d!815767 () Bool)

(declare-fun lt!1004038 () BalanceConc!19922)

(assert (=> d!815767 (= (list!12285 lt!1004038) (originalCharacters!5647 separatorToken!99))))

(assert (=> d!815767 (= lt!1004038 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))) (value!157987 separatorToken!99)))))

(assert (=> d!815767 (= (charsOf!3054 separatorToken!99) lt!1004038)))

(declare-fun b_lambda!84155 () Bool)

(assert (=> (not b_lambda!84155) (not d!815767)))

(assert (=> d!815767 t!229775))

(declare-fun b_and!205475 () Bool)

(assert (= b_and!205471 (and (=> t!229775 result!190914) b_and!205475)))

(assert (=> d!815767 t!229777))

(declare-fun b_and!205477 () Bool)

(assert (= b_and!205473 (and (=> t!229777 result!190918) b_and!205477)))

(declare-fun m!3240233 () Bool)

(assert (=> d!815767 m!3240233))

(assert (=> d!815767 m!3239839))

(assert (=> b!2809984 d!815767))

(declare-fun d!815769 () Bool)

(declare-fun res!1170172 () Bool)

(declare-fun e!1777205 () Bool)

(assert (=> d!815769 (=> (not res!1170172) (not e!1777205))))

(assert (=> d!815769 (= res!1170172 (not (isEmpty!18214 (originalCharacters!5647 (h!38223 l!4240)))))))

(assert (=> d!815769 (= (inv!44517 (h!38223 l!4240)) e!1777205)))

(declare-fun b!2810264 () Bool)

(declare-fun res!1170173 () Bool)

(assert (=> b!2810264 (=> (not res!1170173) (not e!1777205))))

(assert (=> b!2810264 (= res!1170173 (= (originalCharacters!5647 (h!38223 l!4240)) (list!12285 (dynLambda!13731 (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))) (value!157987 (h!38223 l!4240))))))))

(declare-fun b!2810265 () Bool)

(assert (=> b!2810265 (= e!1777205 (= (size!25568 (h!38223 l!4240)) (size!25570 (originalCharacters!5647 (h!38223 l!4240)))))))

(assert (= (and d!815769 res!1170172) b!2810264))

(assert (= (and b!2810264 res!1170173) b!2810265))

(declare-fun b_lambda!84157 () Bool)

(assert (=> (not b_lambda!84157) (not b!2810264)))

(assert (=> b!2810264 t!229808))

(declare-fun b_and!205479 () Bool)

(assert (= b_and!205475 (and (=> t!229808 result!190954) b_and!205479)))

(assert (=> b!2810264 t!229810))

(declare-fun b_and!205481 () Bool)

(assert (= b_and!205477 (and (=> t!229810 result!190956) b_and!205481)))

(declare-fun m!3240235 () Bool)

(assert (=> d!815769 m!3240235))

(assert (=> b!2810264 m!3240227))

(assert (=> b!2810264 m!3240227))

(declare-fun m!3240237 () Bool)

(assert (=> b!2810264 m!3240237))

(declare-fun m!3240239 () Bool)

(assert (=> b!2810265 m!3240239))

(assert (=> b!2809983 d!815769))

(declare-fun d!815771 () Bool)

(assert (=> d!815771 (= (inv!44513 (tag!5419 (rule!7343 (h!38223 l!4240)))) (= (mod (str.len (value!157986 (tag!5419 (rule!7343 (h!38223 l!4240))))) 2) 0))))

(assert (=> b!2809978 d!815771))

(declare-fun d!815773 () Bool)

(declare-fun res!1170174 () Bool)

(declare-fun e!1777206 () Bool)

(assert (=> d!815773 (=> (not res!1170174) (not e!1777206))))

(assert (=> d!815773 (= res!1170174 (semiInverseModEq!2034 (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))) (toValue!6917 (transformation!4915 (rule!7343 (h!38223 l!4240))))))))

(assert (=> d!815773 (= (inv!44516 (transformation!4915 (rule!7343 (h!38223 l!4240)))) e!1777206)))

(declare-fun b!2810266 () Bool)

(assert (=> b!2810266 (= e!1777206 (equivClasses!1935 (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))) (toValue!6917 (transformation!4915 (rule!7343 (h!38223 l!4240))))))))

(assert (= (and d!815773 res!1170174) b!2810266))

(declare-fun m!3240241 () Bool)

(assert (=> d!815773 m!3240241))

(declare-fun m!3240243 () Bool)

(assert (=> b!2810266 m!3240243))

(assert (=> b!2809978 d!815773))

(declare-fun b!2810280 () Bool)

(declare-fun e!1777209 () Bool)

(declare-fun tp!897262 () Bool)

(declare-fun tp!897260 () Bool)

(assert (=> b!2810280 (= e!1777209 (and tp!897262 tp!897260))))

(declare-fun b!2810279 () Bool)

(declare-fun tp!897258 () Bool)

(assert (=> b!2810279 (= e!1777209 tp!897258)))

(assert (=> b!2809981 (= tp!897191 e!1777209)))

(declare-fun b!2810278 () Bool)

(declare-fun tp!897259 () Bool)

(declare-fun tp!897261 () Bool)

(assert (=> b!2810278 (= e!1777209 (and tp!897259 tp!897261))))

(declare-fun b!2810277 () Bool)

(declare-fun tp_is_empty!14335 () Bool)

(assert (=> b!2810277 (= e!1777209 tp_is_empty!14335)))

(assert (= (and b!2809981 ((_ is ElementMatch!8285) (regex!4915 (rule!7343 separatorToken!99)))) b!2810277))

(assert (= (and b!2809981 ((_ is Concat!13423) (regex!4915 (rule!7343 separatorToken!99)))) b!2810278))

(assert (= (and b!2809981 ((_ is Star!8285) (regex!4915 (rule!7343 separatorToken!99)))) b!2810279))

(assert (= (and b!2809981 ((_ is Union!8285) (regex!4915 (rule!7343 separatorToken!99)))) b!2810280))

(declare-fun b!2810285 () Bool)

(declare-fun e!1777212 () Bool)

(declare-fun tp!897265 () Bool)

(assert (=> b!2810285 (= e!1777212 (and tp_is_empty!14335 tp!897265))))

(assert (=> b!2809976 (= tp!897188 e!1777212)))

(assert (= (and b!2809976 ((_ is Cons!32802) (originalCharacters!5647 separatorToken!99))) b!2810285))

(declare-fun b!2810286 () Bool)

(declare-fun e!1777213 () Bool)

(declare-fun tp!897266 () Bool)

(assert (=> b!2810286 (= e!1777213 (and tp_is_empty!14335 tp!897266))))

(assert (=> b!2809973 (= tp!897193 e!1777213)))

(assert (= (and b!2809973 ((_ is Cons!32802) (originalCharacters!5647 (h!38223 l!4240)))) b!2810286))

(declare-fun b!2810300 () Bool)

(declare-fun b_free!80217 () Bool)

(declare-fun b_next!80921 () Bool)

(assert (=> b!2810300 (= b_free!80217 (not b_next!80921))))

(declare-fun tp!897281 () Bool)

(declare-fun b_and!205483 () Bool)

(assert (=> b!2810300 (= tp!897281 b_and!205483)))

(declare-fun b_free!80219 () Bool)

(declare-fun b_next!80923 () Bool)

(assert (=> b!2810300 (= b_free!80219 (not b_next!80923))))

(declare-fun t!229813 () Bool)

(declare-fun tb!153629 () Bool)

(assert (=> (and b!2810300 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 (t!229769 l!4240))))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240))))) t!229813) tb!153629))

(declare-fun result!190964 () Bool)

(assert (= result!190964 result!190954))

(assert (=> d!815753 t!229813))

(assert (=> b!2810264 t!229813))

(declare-fun t!229815 () Bool)

(declare-fun tb!153631 () Bool)

(assert (=> (and b!2810300 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 (t!229769 l!4240))))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 lt!1003949))))) t!229815) tb!153631))

(declare-fun result!190966 () Bool)

(assert (= result!190966 result!190932))

(assert (=> d!815675 t!229815))

(declare-fun tb!153633 () Bool)

(declare-fun t!229817 () Bool)

(assert (=> (and b!2810300 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 (t!229769 l!4240))))) (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99)))) t!229817) tb!153633))

(declare-fun result!190968 () Bool)

(assert (= result!190968 result!190914))

(assert (=> d!815767 t!229817))

(declare-fun tb!153635 () Bool)

(declare-fun t!229819 () Bool)

(assert (=> (and b!2810300 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 (t!229769 l!4240))))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 lt!1003948))))) t!229819) tb!153635))

(declare-fun result!190970 () Bool)

(assert (= result!190970 result!190936))

(assert (=> d!815719 t!229819))

(assert (=> b!2810016 t!229817))

(declare-fun tp!897278 () Bool)

(declare-fun b_and!205485 () Bool)

(assert (=> b!2810300 (= tp!897278 (and (=> t!229819 result!190970) (=> t!229817 result!190968) (=> t!229815 result!190966) (=> t!229813 result!190964) b_and!205485))))

(declare-fun e!1777230 () Bool)

(declare-fun tp!897277 () Bool)

(declare-fun b!2810297 () Bool)

(declare-fun e!1777231 () Bool)

(assert (=> b!2810297 (= e!1777231 (and (inv!44517 (h!38223 (t!229769 l!4240))) e!1777230 tp!897277))))

(assert (=> b!2809983 (= tp!897195 e!1777231)))

(declare-fun e!1777226 () Bool)

(declare-fun b!2810299 () Bool)

(declare-fun e!1777229 () Bool)

(declare-fun tp!897279 () Bool)

(assert (=> b!2810299 (= e!1777229 (and tp!897279 (inv!44513 (tag!5419 (rule!7343 (h!38223 (t!229769 l!4240))))) (inv!44516 (transformation!4915 (rule!7343 (h!38223 (t!229769 l!4240))))) e!1777226))))

(declare-fun tp!897280 () Bool)

(declare-fun b!2810298 () Bool)

(assert (=> b!2810298 (= e!1777230 (and (inv!21 (value!157987 (h!38223 (t!229769 l!4240)))) e!1777229 tp!897280))))

(assert (=> b!2810300 (= e!1777226 (and tp!897281 tp!897278))))

(assert (= b!2810299 b!2810300))

(assert (= b!2810298 b!2810299))

(assert (= b!2810297 b!2810298))

(assert (= (and b!2809983 ((_ is Cons!32803) (t!229769 l!4240))) b!2810297))

(declare-fun m!3240245 () Bool)

(assert (=> b!2810297 m!3240245))

(declare-fun m!3240247 () Bool)

(assert (=> b!2810299 m!3240247))

(declare-fun m!3240249 () Bool)

(assert (=> b!2810299 m!3240249))

(declare-fun m!3240251 () Bool)

(assert (=> b!2810298 m!3240251))

(declare-fun b!2810304 () Bool)

(declare-fun e!1777232 () Bool)

(declare-fun tp!897286 () Bool)

(declare-fun tp!897284 () Bool)

(assert (=> b!2810304 (= e!1777232 (and tp!897286 tp!897284))))

(declare-fun b!2810303 () Bool)

(declare-fun tp!897282 () Bool)

(assert (=> b!2810303 (= e!1777232 tp!897282)))

(assert (=> b!2809978 (= tp!897194 e!1777232)))

(declare-fun b!2810302 () Bool)

(declare-fun tp!897283 () Bool)

(declare-fun tp!897285 () Bool)

(assert (=> b!2810302 (= e!1777232 (and tp!897283 tp!897285))))

(declare-fun b!2810301 () Bool)

(assert (=> b!2810301 (= e!1777232 tp_is_empty!14335)))

(assert (= (and b!2809978 ((_ is ElementMatch!8285) (regex!4915 (rule!7343 (h!38223 l!4240))))) b!2810301))

(assert (= (and b!2809978 ((_ is Concat!13423) (regex!4915 (rule!7343 (h!38223 l!4240))))) b!2810302))

(assert (= (and b!2809978 ((_ is Star!8285) (regex!4915 (rule!7343 (h!38223 l!4240))))) b!2810303))

(assert (= (and b!2809978 ((_ is Union!8285) (regex!4915 (rule!7343 (h!38223 l!4240))))) b!2810304))

(declare-fun b_lambda!84159 () Bool)

(assert (= b_lambda!84129 (or (and b!2809980 b_free!80207 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))) (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))))) (and b!2809977 b_free!80211) (and b!2810300 b_free!80219 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 (t!229769 l!4240))))) (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))))) b_lambda!84159)))

(declare-fun b_lambda!84161 () Bool)

(assert (= b_lambda!84157 (or (and b!2809980 b_free!80207) (and b!2809977 b_free!80211 (= (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))))) (and b!2810300 b_free!80219 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 (t!229769 l!4240))))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))))) b_lambda!84161)))

(declare-fun b_lambda!84163 () Bool)

(assert (= b_lambda!84155 (or (and b!2809980 b_free!80207 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))) (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))))) (and b!2809977 b_free!80211) (and b!2810300 b_free!80219 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 (t!229769 l!4240))))) (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))))) b_lambda!84163)))

(declare-fun b_lambda!84165 () Bool)

(assert (= b_lambda!84153 (or (and b!2809980 b_free!80207) (and b!2809977 b_free!80211 (= (toChars!6776 (transformation!4915 (rule!7343 separatorToken!99))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))))) (and b!2810300 b_free!80219 (= (toChars!6776 (transformation!4915 (rule!7343 (h!38223 (t!229769 l!4240))))) (toChars!6776 (transformation!4915 (rule!7343 (h!38223 l!4240)))))) b_lambda!84165)))

(check-sat (not b!2810278) (not b!2810112) (not b!2810266) (not d!815765) (not d!815737) (not b_lambda!84165) (not b!2810127) tp_is_empty!14335 (not b!2810166) (not b_next!80915) (not b!2810265) b_and!205485 (not b!2810251) (not d!815769) (not b!2810017) (not d!815751) (not b_next!80921) (not b!2810249) (not b!2810120) (not d!815705) (not b_lambda!84163) (not b_lambda!84159) (not b!2810248) b_and!205481 b_and!205483 (not tb!153593) (not b!2810247) (not d!815727) (not b!2810299) (not b!2810129) (not d!815753) (not d!815773) (not b!2810285) (not b!2810016) (not b!2810260) (not b!2810022) (not b!2810156) (not b!2810262) (not b!2810298) (not b_lambda!84161) (not b!2810304) (not b!2810297) (not b!2810164) (not d!815715) (not b!2810302) (not b_next!80911) (not b_next!80923) b_and!205427 (not d!815675) (not tb!153625) (not b!2810286) (not b!2810115) (not b!2810042) (not b!2810124) b_and!205423 (not tb!153613) (not d!815729) (not b!2810264) (not d!815767) (not b!2810155) (not d!815717) (not b!2810123) (not d!815659) (not b!2810086) (not tb!153609) (not d!815759) (not b_lambda!84137) (not b_lambda!84139) (not b!2810279) (not d!815719) (not b!2810246) (not b!2810257) (not b!2810118) (not b!2810142) (not b!2810065) (not b!2810141) (not b!2810303) (not b!2810043) (not d!815725) (not b!2810259) (not b!2810100) (not d!815673) (not b!2810130) (not d!815731) (not b!2810117) (not b!2810256) (not d!815665) b_and!205479 (not b!2810111) (not b!2810280) (not b_next!80913) (not b_next!80909) (not b!2810121))
(check-sat (not b_next!80915) b_and!205485 (not b_next!80921) b_and!205427 b_and!205423 b_and!205479 (not b_next!80913) (not b_next!80909) b_and!205481 b_and!205483 (not b_next!80911) (not b_next!80923))
