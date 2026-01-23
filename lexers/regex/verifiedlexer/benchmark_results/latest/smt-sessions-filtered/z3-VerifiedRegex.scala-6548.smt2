; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!346226 () Bool)

(assert start!346226)

(declare-fun b!3685418 () Bool)

(declare-fun b_free!97741 () Bool)

(declare-fun b_next!98445 () Bool)

(assert (=> b!3685418 (= b_free!97741 (not b_next!98445))))

(declare-fun tp!1120203 () Bool)

(declare-fun b_and!275423 () Bool)

(assert (=> b!3685418 (= tp!1120203 b_and!275423)))

(declare-fun b_free!97743 () Bool)

(declare-fun b_next!98447 () Bool)

(assert (=> b!3685418 (= b_free!97743 (not b_next!98447))))

(declare-fun tp!1120200 () Bool)

(declare-fun b_and!275425 () Bool)

(assert (=> b!3685418 (= tp!1120200 b_and!275425)))

(declare-fun res!1497518 () Bool)

(declare-fun e!2282168 () Bool)

(assert (=> start!346226 (=> (not res!1497518) (not e!2282168))))

(declare-datatypes ((LexerInterface!5465 0))(
  ( (LexerInterfaceExt!5462 (__x!24429 Int)) (Lexer!5463) )
))
(declare-fun thiss!25197 () LexerInterface!5465)

(get-info :version)

(assert (=> start!346226 (= res!1497518 ((_ is Lexer!5463) thiss!25197))))

(assert (=> start!346226 e!2282168))

(assert (=> start!346226 true))

(declare-fun e!2282167 () Bool)

(assert (=> start!346226 e!2282167))

(declare-fun e!2282158 () Bool)

(assert (=> start!346226 e!2282158))

(declare-fun e!2282162 () Bool)

(assert (=> start!346226 e!2282162))

(declare-fun b!3685413 () Bool)

(declare-fun e!2282164 () Bool)

(assert (=> b!3685413 (= e!2282168 e!2282164)))

(declare-fun res!1497515 () Bool)

(assert (=> b!3685413 (=> (not res!1497515) (not e!2282164))))

(declare-datatypes ((List!39074 0))(
  ( (Nil!38950) (Cons!38950 (h!44370 (_ BitVec 16)) (t!301049 List!39074)) )
))
(declare-datatypes ((TokenValue!6106 0))(
  ( (FloatLiteralValue!12212 (text!43187 List!39074)) (TokenValueExt!6105 (__x!24430 Int)) (Broken!30530 (value!187900 List!39074)) (Object!6229) (End!6106) (Def!6106) (Underscore!6106) (Match!6106) (Else!6106) (Error!6106) (Case!6106) (If!6106) (Extends!6106) (Abstract!6106) (Class!6106) (Val!6106) (DelimiterValue!12212 (del!6166 List!39074)) (KeywordValue!6112 (value!187901 List!39074)) (CommentValue!12212 (value!187902 List!39074)) (WhitespaceValue!12212 (value!187903 List!39074)) (IndentationValue!6106 (value!187904 List!39074)) (String!43863) (Int32!6106) (Broken!30531 (value!187905 List!39074)) (Boolean!6107) (Unit!57023) (OperatorValue!6109 (op!6166 List!39074)) (IdentifierValue!12212 (value!187906 List!39074)) (IdentifierValue!12213 (value!187907 List!39074)) (WhitespaceValue!12213 (value!187908 List!39074)) (True!12212) (False!12212) (Broken!30532 (value!187909 List!39074)) (Broken!30533 (value!187910 List!39074)) (True!12213) (RightBrace!6106) (RightBracket!6106) (Colon!6106) (Null!6106) (Comma!6106) (LeftBracket!6106) (False!12213) (LeftBrace!6106) (ImaginaryLiteralValue!6106 (text!43188 List!39074)) (StringLiteralValue!18318 (value!187911 List!39074)) (EOFValue!6106 (value!187912 List!39074)) (IdentValue!6106 (value!187913 List!39074)) (DelimiterValue!12213 (value!187914 List!39074)) (DedentValue!6106 (value!187915 List!39074)) (NewLineValue!6106 (value!187916 List!39074)) (IntegerValue!18318 (value!187917 (_ BitVec 32)) (text!43189 List!39074)) (IntegerValue!18319 (value!187918 Int) (text!43190 List!39074)) (Times!6106) (Or!6106) (Equal!6106) (Minus!6106) (Broken!30534 (value!187919 List!39074)) (And!6106) (Div!6106) (LessEqual!6106) (Mod!6106) (Concat!16741) (Not!6106) (Plus!6106) (SpaceValue!6106 (value!187920 List!39074)) (IntegerValue!18320 (value!187921 Int) (text!43191 List!39074)) (StringLiteralValue!18319 (text!43192 List!39074)) (FloatLiteralValue!12213 (text!43193 List!39074)) (BytesLiteralValue!6106 (value!187922 List!39074)) (CommentValue!12213 (value!187923 List!39074)) (StringLiteralValue!18320 (value!187924 List!39074)) (ErrorTokenValue!6106 (msg!6167 List!39074)) )
))
(declare-datatypes ((C!21456 0))(
  ( (C!21457 (val!12776 Int)) )
))
(declare-datatypes ((Regex!10635 0))(
  ( (ElementMatch!10635 (c!637481 C!21456)) (Concat!16742 (regOne!21782 Regex!10635) (regTwo!21782 Regex!10635)) (EmptyExpr!10635) (Star!10635 (reg!10964 Regex!10635)) (EmptyLang!10635) (Union!10635 (regOne!21783 Regex!10635) (regTwo!21783 Regex!10635)) )
))
(declare-datatypes ((String!43864 0))(
  ( (String!43865 (value!187925 String)) )
))
(declare-datatypes ((List!39075 0))(
  ( (Nil!38951) (Cons!38951 (h!44371 C!21456) (t!301050 List!39075)) )
))
(declare-datatypes ((IArray!23889 0))(
  ( (IArray!23890 (innerList!12002 List!39075)) )
))
(declare-datatypes ((Conc!11942 0))(
  ( (Node!11942 (left!30386 Conc!11942) (right!30716 Conc!11942) (csize!24114 Int) (cheight!12153 Int)) (Leaf!18491 (xs!15144 IArray!23889) (csize!24115 Int)) (Empty!11942) )
))
(declare-datatypes ((BalanceConc!23498 0))(
  ( (BalanceConc!23499 (c!637482 Conc!11942)) )
))
(declare-datatypes ((TokenValueInjection!11640 0))(
  ( (TokenValueInjection!11641 (toValue!8184 Int) (toChars!8043 Int)) )
))
(declare-datatypes ((Rule!11552 0))(
  ( (Rule!11553 (regex!5876 Regex!10635) (tag!6686 String!43864) (isSeparator!5876 Bool) (transformation!5876 TokenValueInjection!11640)) )
))
(declare-datatypes ((Token!11118 0))(
  ( (Token!11119 (value!187926 TokenValue!6106) (rule!8718 Rule!11552) (size!29772 Int) (originalCharacters!6590 List!39075)) )
))
(declare-datatypes ((List!39076 0))(
  ( (Nil!38952) (Cons!38952 (h!44372 Token!11118) (t!301051 List!39076)) )
))
(declare-datatypes ((IArray!23891 0))(
  ( (IArray!23892 (innerList!12003 List!39076)) )
))
(declare-datatypes ((Conc!11943 0))(
  ( (Node!11943 (left!30387 Conc!11943) (right!30717 Conc!11943) (csize!24116 Int) (cheight!12154 Int)) (Leaf!18492 (xs!15145 IArray!23891) (csize!24117 Int)) (Empty!11943) )
))
(declare-datatypes ((BalanceConc!23500 0))(
  ( (BalanceConc!23501 (c!637483 Conc!11943)) )
))
(declare-datatypes ((tuple2!38832 0))(
  ( (tuple2!38833 (_1!22550 BalanceConc!23500) (_2!22550 BalanceConc!23498)) )
))
(declare-fun lt!1289588 () tuple2!38832)

(declare-fun isEmpty!23158 (BalanceConc!23500) Bool)

(assert (=> b!3685413 (= res!1497515 (not (isEmpty!23158 (_1!22550 lt!1289588))))))

(declare-fun input!3129 () List!39075)

(declare-datatypes ((List!39077 0))(
  ( (Nil!38953) (Cons!38953 (h!44373 Rule!11552) (t!301052 List!39077)) )
))
(declare-fun rules!3568 () List!39077)

(declare-fun lex!2606 (LexerInterface!5465 List!39077 BalanceConc!23498) tuple2!38832)

(declare-fun seqFromList!4425 (List!39075) BalanceConc!23498)

(assert (=> b!3685413 (= lt!1289588 (lex!2606 thiss!25197 rules!3568 (seqFromList!4425 input!3129)))))

(declare-fun b!3685414 () Bool)

(declare-fun tp_is_empty!18353 () Bool)

(declare-fun tp!1120201 () Bool)

(assert (=> b!3685414 (= e!2282158 (and tp_is_empty!18353 tp!1120201))))

(declare-fun b!3685415 () Bool)

(declare-fun res!1497522 () Bool)

(declare-fun e!2282163 () Bool)

(assert (=> b!3685415 (=> res!1497522 e!2282163)))

(declare-fun lt!1289584 () List!39075)

(declare-datatypes ((tuple2!38834 0))(
  ( (tuple2!38835 (_1!22551 Token!11118) (_2!22551 List!39075)) )
))
(declare-datatypes ((Option!8363 0))(
  ( (None!8362) (Some!8362 (v!38308 tuple2!38834)) )
))
(declare-fun isEmpty!23159 (Option!8363) Bool)

(declare-fun maxPrefix!2993 (LexerInterface!5465 List!39077 List!39075) Option!8363)

(assert (=> b!3685415 (= res!1497522 (not (isEmpty!23159 (maxPrefix!2993 thiss!25197 rules!3568 lt!1289584))))))

(declare-fun b!3685416 () Bool)

(declare-fun e!2282166 () Bool)

(declare-fun tp!1120202 () Bool)

(assert (=> b!3685416 (= e!2282167 (and e!2282166 tp!1120202))))

(declare-fun b!3685417 () Bool)

(declare-fun e!2282160 () Bool)

(declare-fun e!2282159 () Bool)

(assert (=> b!3685417 (= e!2282160 e!2282159)))

(declare-fun res!1497519 () Bool)

(assert (=> b!3685417 (=> (not res!1497519) (not e!2282159))))

(declare-fun lt!1289585 () Rule!11552)

(declare-fun lt!1289589 () List!39075)

(declare-fun matchR!5190 (Regex!10635 List!39075) Bool)

(assert (=> b!3685417 (= res!1497519 (matchR!5190 (regex!5876 lt!1289585) lt!1289589))))

(declare-datatypes ((Option!8364 0))(
  ( (None!8363) (Some!8363 (v!38309 Rule!11552)) )
))
(declare-fun lt!1289580 () Option!8364)

(declare-fun get!12902 (Option!8364) Rule!11552)

(assert (=> b!3685417 (= lt!1289585 (get!12902 lt!1289580))))

(declare-fun e!2282165 () Bool)

(assert (=> b!3685418 (= e!2282165 (and tp!1120203 tp!1120200))))

(declare-fun b!3685419 () Bool)

(declare-fun lt!1289581 () Token!11118)

(assert (=> b!3685419 (= e!2282159 (= (rule!8718 lt!1289581) lt!1289585))))

(declare-fun b!3685420 () Bool)

(declare-fun res!1497520 () Bool)

(assert (=> b!3685420 (=> (not res!1497520) (not e!2282168))))

(declare-fun isEmpty!23160 (List!39077) Bool)

(assert (=> b!3685420 (= res!1497520 (not (isEmpty!23160 rules!3568)))))

(declare-fun b!3685421 () Bool)

(declare-fun res!1497514 () Bool)

(assert (=> b!3685421 (=> (not res!1497514) (not e!2282168))))

(declare-fun rulesInvariant!4862 (LexerInterface!5465 List!39077) Bool)

(assert (=> b!3685421 (= res!1497514 (rulesInvariant!4862 thiss!25197 rules!3568))))

(declare-fun b!3685422 () Bool)

(assert (=> b!3685422 (= e!2282163 true)))

(declare-fun lt!1289583 () Bool)

(declare-fun contains!7781 (List!39077 Rule!11552) Bool)

(assert (=> b!3685422 (= lt!1289583 (contains!7781 rules!3568 (rule!8718 lt!1289581)))))

(declare-fun b!3685423 () Bool)

(declare-fun tp!1120204 () Bool)

(assert (=> b!3685423 (= e!2282162 (and tp_is_empty!18353 tp!1120204))))

(declare-fun b!3685424 () Bool)

(assert (=> b!3685424 (= e!2282164 (not e!2282163))))

(declare-fun res!1497517 () Bool)

(assert (=> b!3685424 (=> res!1497517 e!2282163)))

(assert (=> b!3685424 (= res!1497517 (not (matchR!5190 (regex!5876 (rule!8718 lt!1289581)) lt!1289589)))))

(assert (=> b!3685424 e!2282160))

(declare-fun res!1497516 () Bool)

(assert (=> b!3685424 (=> (not res!1497516) (not e!2282160))))

(declare-fun isDefined!6577 (Option!8364) Bool)

(assert (=> b!3685424 (= res!1497516 (isDefined!6577 lt!1289580))))

(declare-fun getRuleFromTag!1464 (LexerInterface!5465 List!39077 String!43864) Option!8364)

(assert (=> b!3685424 (= lt!1289580 (getRuleFromTag!1464 thiss!25197 rules!3568 (tag!6686 (rule!8718 lt!1289581))))))

(declare-datatypes ((Unit!57024 0))(
  ( (Unit!57025) )
))
(declare-fun lt!1289586 () Unit!57024)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1464 (LexerInterface!5465 List!39077 List!39075 Token!11118) Unit!57024)

(assert (=> b!3685424 (= lt!1289586 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1464 thiss!25197 rules!3568 input!3129 lt!1289581))))

(declare-fun isPrefix!3229 (List!39075 List!39075) Bool)

(assert (=> b!3685424 (isPrefix!3229 lt!1289589 lt!1289584)))

(declare-fun suffix!1448 () List!39075)

(declare-fun ++!9695 (List!39075 List!39075) List!39075)

(assert (=> b!3685424 (= lt!1289584 (++!9695 input!3129 suffix!1448))))

(declare-fun lt!1289587 () Unit!57024)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!560 (List!39075 List!39075 List!39075) Unit!57024)

(assert (=> b!3685424 (= lt!1289587 (lemmaPrefixStaysPrefixWhenAddingToSuffix!560 lt!1289589 input!3129 suffix!1448))))

(declare-fun lt!1289582 () tuple2!38834)

(assert (=> b!3685424 (isPrefix!3229 lt!1289589 (++!9695 lt!1289589 (_2!22551 lt!1289582)))))

(declare-fun lt!1289590 () Unit!57024)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2146 (List!39075 List!39075) Unit!57024)

(assert (=> b!3685424 (= lt!1289590 (lemmaConcatTwoListThenFirstIsPrefix!2146 lt!1289589 (_2!22551 lt!1289582)))))

(declare-fun get!12903 (Option!8363) tuple2!38834)

(assert (=> b!3685424 (= lt!1289582 (get!12903 (maxPrefix!2993 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14516 (BalanceConc!23498) List!39075)

(declare-fun charsOf!3887 (Token!11118) BalanceConc!23498)

(assert (=> b!3685424 (= lt!1289589 (list!14516 (charsOf!3887 lt!1289581)))))

(declare-fun head!7934 (List!39076) Token!11118)

(declare-fun list!14517 (BalanceConc!23500) List!39076)

(assert (=> b!3685424 (= lt!1289581 (head!7934 (list!14517 (_1!22550 lt!1289588))))))

(declare-fun b!3685425 () Bool)

(declare-fun res!1497521 () Bool)

(assert (=> b!3685425 (=> res!1497521 e!2282163)))

(declare-fun rulesValidInductive!2098 (LexerInterface!5465 List!39077) Bool)

(assert (=> b!3685425 (= res!1497521 (not (rulesValidInductive!2098 thiss!25197 rules!3568)))))

(declare-fun b!3685426 () Bool)

(declare-fun tp!1120199 () Bool)

(declare-fun inv!52428 (String!43864) Bool)

(declare-fun inv!52430 (TokenValueInjection!11640) Bool)

(assert (=> b!3685426 (= e!2282166 (and tp!1120199 (inv!52428 (tag!6686 (h!44373 rules!3568))) (inv!52430 (transformation!5876 (h!44373 rules!3568))) e!2282165))))

(assert (= (and start!346226 res!1497518) b!3685420))

(assert (= (and b!3685420 res!1497520) b!3685421))

(assert (= (and b!3685421 res!1497514) b!3685413))

(assert (= (and b!3685413 res!1497515) b!3685424))

(assert (= (and b!3685424 res!1497516) b!3685417))

(assert (= (and b!3685417 res!1497519) b!3685419))

(assert (= (and b!3685424 (not res!1497517)) b!3685415))

(assert (= (and b!3685415 (not res!1497522)) b!3685425))

(assert (= (and b!3685425 (not res!1497521)) b!3685422))

(assert (= b!3685426 b!3685418))

(assert (= b!3685416 b!3685426))

(assert (= (and start!346226 ((_ is Cons!38953) rules!3568)) b!3685416))

(assert (= (and start!346226 ((_ is Cons!38951) suffix!1448)) b!3685414))

(assert (= (and start!346226 ((_ is Cons!38951) input!3129)) b!3685423))

(declare-fun m!4196795 () Bool)

(assert (=> b!3685421 m!4196795))

(declare-fun m!4196797 () Bool)

(assert (=> b!3685417 m!4196797))

(declare-fun m!4196799 () Bool)

(assert (=> b!3685417 m!4196799))

(declare-fun m!4196801 () Bool)

(assert (=> b!3685422 m!4196801))

(declare-fun m!4196803 () Bool)

(assert (=> b!3685424 m!4196803))

(declare-fun m!4196805 () Bool)

(assert (=> b!3685424 m!4196805))

(declare-fun m!4196807 () Bool)

(assert (=> b!3685424 m!4196807))

(declare-fun m!4196809 () Bool)

(assert (=> b!3685424 m!4196809))

(declare-fun m!4196811 () Bool)

(assert (=> b!3685424 m!4196811))

(declare-fun m!4196813 () Bool)

(assert (=> b!3685424 m!4196813))

(declare-fun m!4196815 () Bool)

(assert (=> b!3685424 m!4196815))

(declare-fun m!4196817 () Bool)

(assert (=> b!3685424 m!4196817))

(declare-fun m!4196819 () Bool)

(assert (=> b!3685424 m!4196819))

(declare-fun m!4196821 () Bool)

(assert (=> b!3685424 m!4196821))

(assert (=> b!3685424 m!4196809))

(assert (=> b!3685424 m!4196803))

(declare-fun m!4196823 () Bool)

(assert (=> b!3685424 m!4196823))

(declare-fun m!4196825 () Bool)

(assert (=> b!3685424 m!4196825))

(assert (=> b!3685424 m!4196819))

(declare-fun m!4196827 () Bool)

(assert (=> b!3685424 m!4196827))

(declare-fun m!4196829 () Bool)

(assert (=> b!3685424 m!4196829))

(assert (=> b!3685424 m!4196813))

(declare-fun m!4196831 () Bool)

(assert (=> b!3685424 m!4196831))

(declare-fun m!4196833 () Bool)

(assert (=> b!3685424 m!4196833))

(declare-fun m!4196835 () Bool)

(assert (=> b!3685420 m!4196835))

(declare-fun m!4196837 () Bool)

(assert (=> b!3685425 m!4196837))

(declare-fun m!4196839 () Bool)

(assert (=> b!3685413 m!4196839))

(declare-fun m!4196841 () Bool)

(assert (=> b!3685413 m!4196841))

(assert (=> b!3685413 m!4196841))

(declare-fun m!4196843 () Bool)

(assert (=> b!3685413 m!4196843))

(declare-fun m!4196845 () Bool)

(assert (=> b!3685415 m!4196845))

(assert (=> b!3685415 m!4196845))

(declare-fun m!4196847 () Bool)

(assert (=> b!3685415 m!4196847))

(declare-fun m!4196849 () Bool)

(assert (=> b!3685426 m!4196849))

(declare-fun m!4196851 () Bool)

(assert (=> b!3685426 m!4196851))

(check-sat b_and!275425 (not b!3685414) (not b!3685420) (not b!3685416) (not b!3685421) (not b_next!98445) (not b!3685422) (not b!3685415) (not b!3685426) (not b_next!98447) tp_is_empty!18353 (not b!3685424) b_and!275423 (not b!3685425) (not b!3685413) (not b!3685423) (not b!3685417))
(check-sat b_and!275423 b_and!275425 (not b_next!98447) (not b_next!98445))
