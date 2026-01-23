; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135006 () Bool)

(assert start!135006)

(declare-fun b!1449769 () Bool)

(declare-fun res!656416 () Bool)

(declare-fun e!925018 () Bool)

(assert (=> b!1449769 (=> res!656416 e!925018)))

(declare-datatypes ((C!8120 0))(
  ( (C!8121 (val!4630 Int)) )
))
(declare-datatypes ((List!15154 0))(
  ( (Nil!15088) (Cons!15088 (h!20489 C!8120) (t!130517 List!15154)) )
))
(declare-datatypes ((IArray!10285 0))(
  ( (IArray!10286 (innerList!5200 List!15154)) )
))
(declare-datatypes ((Conc!5140 0))(
  ( (Node!5140 (left!12835 Conc!5140) (right!13165 Conc!5140) (csize!10510 Int) (cheight!5351 Int)) (Leaf!7670 (xs!7881 IArray!10285) (csize!10511 Int)) (Empty!5140) )
))
(declare-datatypes ((BalanceConc!10220 0))(
  ( (BalanceConc!10221 (c!238732 Conc!5140)) )
))
(declare-datatypes ((List!15155 0))(
  ( (Nil!15089) (Cons!15089 (h!20490 (_ BitVec 16)) (t!130518 List!15155)) )
))
(declare-datatypes ((TokenValue!2747 0))(
  ( (FloatLiteralValue!5494 (text!19674 List!15155)) (TokenValueExt!2746 (__x!9284 Int)) (Broken!13735 (value!85346 List!15155)) (Object!2812) (End!2747) (Def!2747) (Underscore!2747) (Match!2747) (Else!2747) (Error!2747) (Case!2747) (If!2747) (Extends!2747) (Abstract!2747) (Class!2747) (Val!2747) (DelimiterValue!5494 (del!2807 List!15155)) (KeywordValue!2753 (value!85347 List!15155)) (CommentValue!5494 (value!85348 List!15155)) (WhitespaceValue!5494 (value!85349 List!15155)) (IndentationValue!2747 (value!85350 List!15155)) (String!17990) (Int32!2747) (Broken!13736 (value!85351 List!15155)) (Boolean!2748) (Unit!23998) (OperatorValue!2750 (op!2807 List!15155)) (IdentifierValue!5494 (value!85352 List!15155)) (IdentifierValue!5495 (value!85353 List!15155)) (WhitespaceValue!5495 (value!85354 List!15155)) (True!5494) (False!5494) (Broken!13737 (value!85355 List!15155)) (Broken!13738 (value!85356 List!15155)) (True!5495) (RightBrace!2747) (RightBracket!2747) (Colon!2747) (Null!2747) (Comma!2747) (LeftBracket!2747) (False!5495) (LeftBrace!2747) (ImaginaryLiteralValue!2747 (text!19675 List!15155)) (StringLiteralValue!8241 (value!85357 List!15155)) (EOFValue!2747 (value!85358 List!15155)) (IdentValue!2747 (value!85359 List!15155)) (DelimiterValue!5495 (value!85360 List!15155)) (DedentValue!2747 (value!85361 List!15155)) (NewLineValue!2747 (value!85362 List!15155)) (IntegerValue!8241 (value!85363 (_ BitVec 32)) (text!19676 List!15155)) (IntegerValue!8242 (value!85364 Int) (text!19677 List!15155)) (Times!2747) (Or!2747) (Equal!2747) (Minus!2747) (Broken!13739 (value!85365 List!15155)) (And!2747) (Div!2747) (LessEqual!2747) (Mod!2747) (Concat!6718) (Not!2747) (Plus!2747) (SpaceValue!2747 (value!85366 List!15155)) (IntegerValue!8243 (value!85367 Int) (text!19678 List!15155)) (StringLiteralValue!8242 (text!19679 List!15155)) (FloatLiteralValue!5495 (text!19680 List!15155)) (BytesLiteralValue!2747 (value!85368 List!15155)) (CommentValue!5495 (value!85369 List!15155)) (StringLiteralValue!8243 (value!85370 List!15155)) (ErrorTokenValue!2747 (msg!2808 List!15155)) )
))
(declare-datatypes ((Regex!3971 0))(
  ( (ElementMatch!3971 (c!238733 C!8120)) (Concat!6719 (regOne!8454 Regex!3971) (regTwo!8454 Regex!3971)) (EmptyExpr!3971) (Star!3971 (reg!4300 Regex!3971)) (EmptyLang!3971) (Union!3971 (regOne!8455 Regex!3971) (regTwo!8455 Regex!3971)) )
))
(declare-datatypes ((String!17991 0))(
  ( (String!17992 (value!85371 String)) )
))
(declare-datatypes ((TokenValueInjection!5154 0))(
  ( (TokenValueInjection!5155 (toValue!3964 Int) (toChars!3823 Int)) )
))
(declare-datatypes ((Rule!5114 0))(
  ( (Rule!5115 (regex!2657 Regex!3971) (tag!2921 String!17991) (isSeparator!2657 Bool) (transformation!2657 TokenValueInjection!5154)) )
))
(declare-datatypes ((Token!4976 0))(
  ( (Token!4977 (value!85372 TokenValue!2747) (rule!4430 Rule!5114) (size!12344 Int) (originalCharacters!3519 List!15154)) )
))
(declare-datatypes ((List!15156 0))(
  ( (Nil!15090) (Cons!15090 (h!20491 Token!4976) (t!130519 List!15156)) )
))
(declare-datatypes ((IArray!10287 0))(
  ( (IArray!10288 (innerList!5201 List!15156)) )
))
(declare-datatypes ((Conc!5141 0))(
  ( (Node!5141 (left!12836 Conc!5141) (right!13166 Conc!5141) (csize!10512 Int) (cheight!5352 Int)) (Leaf!7671 (xs!7882 IArray!10287) (csize!10513 Int)) (Empty!5141) )
))
(declare-datatypes ((BalanceConc!10222 0))(
  ( (BalanceConc!10223 (c!238734 Conc!5141)) )
))
(declare-datatypes ((List!15157 0))(
  ( (Nil!15091) (Cons!15091 (h!20492 Rule!5114) (t!130520 List!15157)) )
))
(declare-datatypes ((PrintableTokens!1096 0))(
  ( (PrintableTokens!1097 (rules!11566 List!15157) (tokens!2056 BalanceConc!10222)) )
))
(declare-fun thiss!10022 () PrintableTokens!1096)

(declare-datatypes ((LexerInterface!2313 0))(
  ( (LexerInterfaceExt!2310 (__x!9285 Int)) (Lexer!2311) )
))
(declare-fun rulesInvariant!2148 (LexerInterface!2313 List!15157) Bool)

(assert (=> b!1449769 (= res!656416 (not (rulesInvariant!2148 Lexer!2311 (rules!11566 thiss!10022))))))

(declare-fun e!925013 () Bool)

(declare-fun e!925016 () Bool)

(declare-fun b!1449770 () Bool)

(declare-fun tp!409031 () Bool)

(declare-fun inv!20129 (BalanceConc!10222) Bool)

(assert (=> b!1449770 (= e!925016 (and tp!409031 (inv!20129 (tokens!2056 thiss!10022)) e!925013))))

(declare-fun b!1449771 () Bool)

(declare-fun e!925012 () Bool)

(declare-fun e!925014 () Bool)

(assert (=> b!1449771 (= e!925012 e!925014)))

(declare-fun res!656417 () Bool)

(assert (=> b!1449771 (=> (not res!656417) (not e!925014))))

(declare-fun other!32 () PrintableTokens!1096)

(declare-fun isEmpty!9431 (BalanceConc!10222) Bool)

(assert (=> b!1449771 (= res!656417 (not (isEmpty!9431 (tokens!2056 other!32))))))

(declare-datatypes ((Unit!23999 0))(
  ( (Unit!24000) )
))
(declare-fun lt!499811 () Unit!23999)

(declare-fun lemmaInvariant!353 (PrintableTokens!1096) Unit!23999)

(assert (=> b!1449771 (= lt!499811 (lemmaInvariant!353 thiss!10022))))

(declare-fun lt!499808 () Unit!23999)

(assert (=> b!1449771 (= lt!499808 (lemmaInvariant!353 other!32))))

(declare-fun b!1449772 () Bool)

(declare-fun e!925015 () Bool)

(declare-fun tp!409032 () Bool)

(declare-fun e!925017 () Bool)

(assert (=> b!1449772 (= e!925015 (and tp!409032 (inv!20129 (tokens!2056 other!32)) e!925017))))

(declare-fun b!1449773 () Bool)

(declare-fun tp!409034 () Bool)

(declare-fun inv!20130 (Conc!5141) Bool)

(assert (=> b!1449773 (= e!925013 (and (inv!20130 (c!238734 (tokens!2056 thiss!10022))) tp!409034))))

(declare-fun b!1449774 () Bool)

(declare-fun res!656420 () Bool)

(assert (=> b!1449774 (=> res!656420 e!925018)))

(declare-fun lt!499810 () List!15156)

(declare-fun lt!499806 () Token!4976)

(declare-fun contains!2887 (List!15156 Token!4976) Bool)

(assert (=> b!1449774 (= res!656420 (not (contains!2887 lt!499810 lt!499806)))))

(declare-fun res!656419 () Bool)

(assert (=> start!135006 (=> (not res!656419) (not e!925012))))

(assert (=> start!135006 (= res!656419 (= (rules!11566 thiss!10022) (rules!11566 other!32)))))

(assert (=> start!135006 e!925012))

(declare-fun inv!20131 (PrintableTokens!1096) Bool)

(assert (=> start!135006 (and (inv!20131 thiss!10022) e!925016)))

(assert (=> start!135006 (and (inv!20131 other!32) e!925015)))

(declare-fun b!1449775 () Bool)

(declare-fun tp!409033 () Bool)

(assert (=> b!1449775 (= e!925017 (and (inv!20130 (c!238734 (tokens!2056 other!32))) tp!409033))))

(declare-fun b!1449776 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!738 (LexerInterface!2313 List!15157 List!15156) Bool)

(assert (=> b!1449776 (= e!925018 (rulesProduceEachTokenIndividuallyList!738 Lexer!2311 (rules!11566 thiss!10022) lt!499810))))

(declare-fun b!1449777 () Bool)

(declare-fun res!656418 () Bool)

(assert (=> b!1449777 (=> (not res!656418) (not e!925014))))

(assert (=> b!1449777 (= res!656418 (not (isEmpty!9431 (tokens!2056 thiss!10022))))))

(declare-fun b!1449778 () Bool)

(assert (=> b!1449778 (= e!925014 (not e!925018))))

(declare-fun res!656415 () Bool)

(assert (=> b!1449778 (=> res!656415 e!925018)))

(declare-fun isEmpty!9432 (List!15157) Bool)

(assert (=> b!1449778 (= res!656415 (isEmpty!9432 (rules!11566 thiss!10022)))))

(declare-fun head!2959 (BalanceConc!10222) Token!4976)

(assert (=> b!1449778 (= lt!499806 (head!2959 (tokens!2056 other!32)))))

(declare-fun list!6028 (BalanceConc!10222) List!15156)

(assert (=> b!1449778 (= lt!499810 (list!6028 (tokens!2056 other!32)))))

(declare-fun lt!499809 () Token!4976)

(declare-fun rulesProduceIndividualToken!1232 (LexerInterface!2313 List!15157 Token!4976) Bool)

(assert (=> b!1449778 (rulesProduceIndividualToken!1232 Lexer!2311 (rules!11566 thiss!10022) lt!499809)))

(declare-fun lt!499807 () Unit!23999)

(declare-fun lt!499805 () List!15156)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!415 (LexerInterface!2313 List!15157 List!15156 Token!4976) Unit!23999)

(assert (=> b!1449778 (= lt!499807 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!415 Lexer!2311 (rules!11566 thiss!10022) lt!499805 lt!499809))))

(declare-fun last!229 (BalanceConc!10222) Token!4976)

(assert (=> b!1449778 (= lt!499809 (last!229 (tokens!2056 thiss!10022)))))

(assert (=> b!1449778 (= lt!499805 (list!6028 (tokens!2056 thiss!10022)))))

(assert (= (and start!135006 res!656419) b!1449771))

(assert (= (and b!1449771 res!656417) b!1449777))

(assert (= (and b!1449777 res!656418) b!1449778))

(assert (= (and b!1449778 (not res!656415)) b!1449769))

(assert (= (and b!1449769 (not res!656416)) b!1449774))

(assert (= (and b!1449774 (not res!656420)) b!1449776))

(assert (= b!1449770 b!1449773))

(assert (= start!135006 b!1449770))

(assert (= b!1449772 b!1449775))

(assert (= start!135006 b!1449772))

(declare-fun m!1672921 () Bool)

(assert (=> b!1449774 m!1672921))

(declare-fun m!1672923 () Bool)

(assert (=> b!1449775 m!1672923))

(declare-fun m!1672925 () Bool)

(assert (=> b!1449772 m!1672925))

(declare-fun m!1672927 () Bool)

(assert (=> b!1449771 m!1672927))

(declare-fun m!1672929 () Bool)

(assert (=> b!1449771 m!1672929))

(declare-fun m!1672931 () Bool)

(assert (=> b!1449771 m!1672931))

(declare-fun m!1672933 () Bool)

(assert (=> b!1449773 m!1672933))

(declare-fun m!1672935 () Bool)

(assert (=> b!1449777 m!1672935))

(declare-fun m!1672937 () Bool)

(assert (=> b!1449770 m!1672937))

(declare-fun m!1672939 () Bool)

(assert (=> b!1449776 m!1672939))

(declare-fun m!1672941 () Bool)

(assert (=> start!135006 m!1672941))

(declare-fun m!1672943 () Bool)

(assert (=> start!135006 m!1672943))

(declare-fun m!1672945 () Bool)

(assert (=> b!1449769 m!1672945))

(declare-fun m!1672947 () Bool)

(assert (=> b!1449778 m!1672947))

(declare-fun m!1672949 () Bool)

(assert (=> b!1449778 m!1672949))

(declare-fun m!1672951 () Bool)

(assert (=> b!1449778 m!1672951))

(declare-fun m!1672953 () Bool)

(assert (=> b!1449778 m!1672953))

(declare-fun m!1672955 () Bool)

(assert (=> b!1449778 m!1672955))

(declare-fun m!1672957 () Bool)

(assert (=> b!1449778 m!1672957))

(declare-fun m!1672959 () Bool)

(assert (=> b!1449778 m!1672959))

(check-sat (not b!1449769) (not b!1449772) (not start!135006) (not b!1449776) (not b!1449771) (not b!1449773) (not b!1449770) (not b!1449777) (not b!1449774) (not b!1449778) (not b!1449775))
(check-sat)
(get-model)

(declare-fun d!421018 () Bool)

(declare-fun lt!499814 () Bool)

(declare-fun isEmpty!9436 (List!15156) Bool)

(assert (=> d!421018 (= lt!499814 (isEmpty!9436 (list!6028 (tokens!2056 thiss!10022))))))

(declare-fun isEmpty!9437 (Conc!5141) Bool)

(assert (=> d!421018 (= lt!499814 (isEmpty!9437 (c!238734 (tokens!2056 thiss!10022))))))

(assert (=> d!421018 (= (isEmpty!9431 (tokens!2056 thiss!10022)) lt!499814)))

(declare-fun bs!342496 () Bool)

(assert (= bs!342496 d!421018))

(assert (=> bs!342496 m!1672957))

(assert (=> bs!342496 m!1672957))

(declare-fun m!1672961 () Bool)

(assert (=> bs!342496 m!1672961))

(declare-fun m!1672963 () Bool)

(assert (=> bs!342496 m!1672963))

(assert (=> b!1449777 d!421018))

(declare-fun d!421020 () Bool)

(declare-fun list!6030 (Conc!5141) List!15156)

(assert (=> d!421020 (= (list!6028 (tokens!2056 other!32)) (list!6030 (c!238734 (tokens!2056 other!32))))))

(declare-fun bs!342497 () Bool)

(assert (= bs!342497 d!421020))

(declare-fun m!1672965 () Bool)

(assert (=> bs!342497 m!1672965))

(assert (=> b!1449778 d!421020))

(declare-fun d!421024 () Bool)

(declare-fun lt!499817 () Token!4976)

(declare-fun head!2962 (List!15156) Token!4976)

(assert (=> d!421024 (= lt!499817 (head!2962 (list!6028 (tokens!2056 other!32))))))

(declare-fun head!2963 (Conc!5141) Token!4976)

(assert (=> d!421024 (= lt!499817 (head!2963 (c!238734 (tokens!2056 other!32))))))

(assert (=> d!421024 (not (isEmpty!9431 (tokens!2056 other!32)))))

(assert (=> d!421024 (= (head!2959 (tokens!2056 other!32)) lt!499817)))

(declare-fun bs!342499 () Bool)

(assert (= bs!342499 d!421024))

(assert (=> bs!342499 m!1672953))

(assert (=> bs!342499 m!1672953))

(declare-fun m!1672973 () Bool)

(assert (=> bs!342499 m!1672973))

(declare-fun m!1672975 () Bool)

(assert (=> bs!342499 m!1672975))

(assert (=> bs!342499 m!1672927))

(assert (=> b!1449778 d!421024))

(declare-fun d!421030 () Bool)

(declare-fun lt!499826 () Token!4976)

(declare-fun last!232 (List!15156) Token!4976)

(assert (=> d!421030 (= lt!499826 (last!232 (list!6028 (tokens!2056 thiss!10022))))))

(declare-fun last!233 (Conc!5141) Token!4976)

(assert (=> d!421030 (= lt!499826 (last!233 (c!238734 (tokens!2056 thiss!10022))))))

(assert (=> d!421030 (not (isEmpty!9431 (tokens!2056 thiss!10022)))))

(assert (=> d!421030 (= (last!229 (tokens!2056 thiss!10022)) lt!499826)))

(declare-fun bs!342502 () Bool)

(assert (= bs!342502 d!421030))

(assert (=> bs!342502 m!1672957))

(assert (=> bs!342502 m!1672957))

(declare-fun m!1672985 () Bool)

(assert (=> bs!342502 m!1672985))

(declare-fun m!1672987 () Bool)

(assert (=> bs!342502 m!1672987))

(assert (=> bs!342502 m!1672935))

(assert (=> b!1449778 d!421030))

(declare-fun d!421036 () Bool)

(assert (=> d!421036 (= (list!6028 (tokens!2056 thiss!10022)) (list!6030 (c!238734 (tokens!2056 thiss!10022))))))

(declare-fun bs!342503 () Bool)

(assert (= bs!342503 d!421036))

(declare-fun m!1672989 () Bool)

(assert (=> bs!342503 m!1672989))

(assert (=> b!1449778 d!421036))

(declare-fun d!421038 () Bool)

(get-info :version)

(assert (=> d!421038 (= (isEmpty!9432 (rules!11566 thiss!10022)) ((_ is Nil!15091) (rules!11566 thiss!10022)))))

(assert (=> b!1449778 d!421038))

(declare-fun d!421040 () Bool)

(assert (=> d!421040 (rulesProduceIndividualToken!1232 Lexer!2311 (rules!11566 thiss!10022) lt!499809)))

(declare-fun lt!499832 () Unit!23999)

(declare-fun choose!8925 (LexerInterface!2313 List!15157 List!15156 Token!4976) Unit!23999)

(assert (=> d!421040 (= lt!499832 (choose!8925 Lexer!2311 (rules!11566 thiss!10022) lt!499805 lt!499809))))

(assert (=> d!421040 (not (isEmpty!9432 (rules!11566 thiss!10022)))))

(assert (=> d!421040 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!415 Lexer!2311 (rules!11566 thiss!10022) lt!499805 lt!499809) lt!499832)))

(declare-fun bs!342505 () Bool)

(assert (= bs!342505 d!421040))

(assert (=> bs!342505 m!1672947))

(declare-fun m!1672993 () Bool)

(assert (=> bs!342505 m!1672993))

(assert (=> bs!342505 m!1672959))

(assert (=> b!1449778 d!421040))

(declare-fun d!421046 () Bool)

(declare-fun lt!499845 () Bool)

(declare-fun e!925039 () Bool)

(assert (=> d!421046 (= lt!499845 e!925039)))

(declare-fun res!656447 () Bool)

(assert (=> d!421046 (=> (not res!656447) (not e!925039))))

(declare-datatypes ((tuple2!14196 0))(
  ( (tuple2!14197 (_1!7984 BalanceConc!10222) (_2!7984 BalanceConc!10220)) )
))
(declare-fun lex!1061 (LexerInterface!2313 List!15157 BalanceConc!10220) tuple2!14196)

(declare-fun print!1088 (LexerInterface!2313 BalanceConc!10222) BalanceConc!10220)

(declare-fun singletonSeq!1252 (Token!4976) BalanceConc!10222)

(assert (=> d!421046 (= res!656447 (= (list!6028 (_1!7984 (lex!1061 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809))))) (list!6028 (singletonSeq!1252 lt!499809))))))

(declare-fun e!925040 () Bool)

(assert (=> d!421046 (= lt!499845 e!925040)))

(declare-fun res!656448 () Bool)

(assert (=> d!421046 (=> (not res!656448) (not e!925040))))

(declare-fun lt!499846 () tuple2!14196)

(declare-fun size!12346 (BalanceConc!10222) Int)

(assert (=> d!421046 (= res!656448 (= (size!12346 (_1!7984 lt!499846)) 1))))

(assert (=> d!421046 (= lt!499846 (lex!1061 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809))))))

(assert (=> d!421046 (not (isEmpty!9432 (rules!11566 thiss!10022)))))

(assert (=> d!421046 (= (rulesProduceIndividualToken!1232 Lexer!2311 (rules!11566 thiss!10022) lt!499809) lt!499845)))

(declare-fun b!1449807 () Bool)

(declare-fun res!656449 () Bool)

(assert (=> b!1449807 (=> (not res!656449) (not e!925040))))

(declare-fun apply!3895 (BalanceConc!10222 Int) Token!4976)

(assert (=> b!1449807 (= res!656449 (= (apply!3895 (_1!7984 lt!499846) 0) lt!499809))))

(declare-fun b!1449808 () Bool)

(declare-fun isEmpty!9438 (BalanceConc!10220) Bool)

(assert (=> b!1449808 (= e!925040 (isEmpty!9438 (_2!7984 lt!499846)))))

(declare-fun b!1449809 () Bool)

(assert (=> b!1449809 (= e!925039 (isEmpty!9438 (_2!7984 (lex!1061 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809))))))))

(assert (= (and d!421046 res!656448) b!1449807))

(assert (= (and b!1449807 res!656449) b!1449808))

(assert (= (and d!421046 res!656447) b!1449809))

(declare-fun m!1673015 () Bool)

(assert (=> d!421046 m!1673015))

(assert (=> d!421046 m!1672959))

(declare-fun m!1673017 () Bool)

(assert (=> d!421046 m!1673017))

(declare-fun m!1673019 () Bool)

(assert (=> d!421046 m!1673019))

(assert (=> d!421046 m!1673017))

(declare-fun m!1673021 () Bool)

(assert (=> d!421046 m!1673021))

(assert (=> d!421046 m!1673017))

(assert (=> d!421046 m!1673019))

(declare-fun m!1673023 () Bool)

(assert (=> d!421046 m!1673023))

(declare-fun m!1673025 () Bool)

(assert (=> d!421046 m!1673025))

(declare-fun m!1673027 () Bool)

(assert (=> b!1449807 m!1673027))

(declare-fun m!1673029 () Bool)

(assert (=> b!1449808 m!1673029))

(assert (=> b!1449809 m!1673017))

(assert (=> b!1449809 m!1673017))

(assert (=> b!1449809 m!1673019))

(assert (=> b!1449809 m!1673019))

(assert (=> b!1449809 m!1673023))

(declare-fun m!1673031 () Bool)

(assert (=> b!1449809 m!1673031))

(assert (=> b!1449778 d!421046))

(declare-fun d!421052 () Bool)

(declare-fun c!238740 () Bool)

(assert (=> d!421052 (= c!238740 ((_ is Node!5141) (c!238734 (tokens!2056 other!32))))))

(declare-fun e!925045 () Bool)

(assert (=> d!421052 (= (inv!20130 (c!238734 (tokens!2056 other!32))) e!925045)))

(declare-fun b!1449816 () Bool)

(declare-fun inv!20136 (Conc!5141) Bool)

(assert (=> b!1449816 (= e!925045 (inv!20136 (c!238734 (tokens!2056 other!32))))))

(declare-fun b!1449817 () Bool)

(declare-fun e!925046 () Bool)

(assert (=> b!1449817 (= e!925045 e!925046)))

(declare-fun res!656452 () Bool)

(assert (=> b!1449817 (= res!656452 (not ((_ is Leaf!7671) (c!238734 (tokens!2056 other!32)))))))

(assert (=> b!1449817 (=> res!656452 e!925046)))

(declare-fun b!1449818 () Bool)

(declare-fun inv!20137 (Conc!5141) Bool)

(assert (=> b!1449818 (= e!925046 (inv!20137 (c!238734 (tokens!2056 other!32))))))

(assert (= (and d!421052 c!238740) b!1449816))

(assert (= (and d!421052 (not c!238740)) b!1449817))

(assert (= (and b!1449817 (not res!656452)) b!1449818))

(declare-fun m!1673033 () Bool)

(assert (=> b!1449816 m!1673033))

(declare-fun m!1673035 () Bool)

(assert (=> b!1449818 m!1673035))

(assert (=> b!1449775 d!421052))

(declare-fun b!1449853 () Bool)

(declare-fun e!925074 () Bool)

(assert (=> b!1449853 (= e!925074 true)))

(declare-fun b!1449852 () Bool)

(declare-fun e!925073 () Bool)

(assert (=> b!1449852 (= e!925073 e!925074)))

(declare-fun b!1449851 () Bool)

(declare-fun e!925072 () Bool)

(assert (=> b!1449851 (= e!925072 e!925073)))

(declare-fun d!421054 () Bool)

(assert (=> d!421054 e!925072))

(assert (= b!1449852 b!1449853))

(assert (= b!1449851 b!1449852))

(assert (= (and d!421054 ((_ is Cons!15091) (rules!11566 thiss!10022))) b!1449851))

(declare-fun order!9077 () Int)

(declare-fun order!9079 () Int)

(declare-fun lambda!63031 () Int)

(declare-fun dynLambda!6873 (Int Int) Int)

(declare-fun dynLambda!6874 (Int Int) Int)

(assert (=> b!1449853 (< (dynLambda!6873 order!9077 (toValue!3964 (transformation!2657 (h!20492 (rules!11566 thiss!10022))))) (dynLambda!6874 order!9079 lambda!63031))))

(declare-fun order!9081 () Int)

(declare-fun dynLambda!6875 (Int Int) Int)

(assert (=> b!1449853 (< (dynLambda!6875 order!9081 (toChars!3823 (transformation!2657 (h!20492 (rules!11566 thiss!10022))))) (dynLambda!6874 order!9079 lambda!63031))))

(assert (=> d!421054 true))

(declare-fun lt!499854 () Bool)

(declare-fun forall!3710 (List!15156 Int) Bool)

(assert (=> d!421054 (= lt!499854 (forall!3710 lt!499810 lambda!63031))))

(declare-fun e!925065 () Bool)

(assert (=> d!421054 (= lt!499854 e!925065)))

(declare-fun res!656460 () Bool)

(assert (=> d!421054 (=> res!656460 e!925065)))

(assert (=> d!421054 (= res!656460 (not ((_ is Cons!15090) lt!499810)))))

(assert (=> d!421054 (not (isEmpty!9432 (rules!11566 thiss!10022)))))

(assert (=> d!421054 (= (rulesProduceEachTokenIndividuallyList!738 Lexer!2311 (rules!11566 thiss!10022) lt!499810) lt!499854)))

(declare-fun b!1449841 () Bool)

(declare-fun e!925064 () Bool)

(assert (=> b!1449841 (= e!925065 e!925064)))

(declare-fun res!656461 () Bool)

(assert (=> b!1449841 (=> (not res!656461) (not e!925064))))

(assert (=> b!1449841 (= res!656461 (rulesProduceIndividualToken!1232 Lexer!2311 (rules!11566 thiss!10022) (h!20491 lt!499810)))))

(declare-fun b!1449842 () Bool)

(assert (=> b!1449842 (= e!925064 (rulesProduceEachTokenIndividuallyList!738 Lexer!2311 (rules!11566 thiss!10022) (t!130519 lt!499810)))))

(assert (= (and d!421054 (not res!656460)) b!1449841))

(assert (= (and b!1449841 res!656461) b!1449842))

(declare-fun m!1673059 () Bool)

(assert (=> d!421054 m!1673059))

(assert (=> d!421054 m!1672959))

(declare-fun m!1673061 () Bool)

(assert (=> b!1449841 m!1673061))

(declare-fun m!1673063 () Bool)

(assert (=> b!1449842 m!1673063))

(assert (=> b!1449776 d!421054))

(declare-fun d!421068 () Bool)

(declare-fun isBalanced!1534 (Conc!5141) Bool)

(assert (=> d!421068 (= (inv!20129 (tokens!2056 other!32)) (isBalanced!1534 (c!238734 (tokens!2056 other!32))))))

(declare-fun bs!342511 () Bool)

(assert (= bs!342511 d!421068))

(declare-fun m!1673065 () Bool)

(assert (=> bs!342511 m!1673065))

(assert (=> b!1449772 d!421068))

(declare-fun d!421070 () Bool)

(declare-fun res!656479 () Bool)

(declare-fun e!925084 () Bool)

(assert (=> d!421070 (=> (not res!656479) (not e!925084))))

(assert (=> d!421070 (= res!656479 (not (isEmpty!9432 (rules!11566 thiss!10022))))))

(assert (=> d!421070 (= (inv!20131 thiss!10022) e!925084)))

(declare-fun b!1449873 () Bool)

(declare-fun res!656480 () Bool)

(assert (=> b!1449873 (=> (not res!656480) (not e!925084))))

(assert (=> b!1449873 (= res!656480 (rulesInvariant!2148 Lexer!2311 (rules!11566 thiss!10022)))))

(declare-fun b!1449874 () Bool)

(declare-fun res!656481 () Bool)

(assert (=> b!1449874 (=> (not res!656481) (not e!925084))))

(declare-fun rulesProduceEachTokenIndividually!865 (LexerInterface!2313 List!15157 BalanceConc!10222) Bool)

(assert (=> b!1449874 (= res!656481 (rulesProduceEachTokenIndividually!865 Lexer!2311 (rules!11566 thiss!10022) (tokens!2056 thiss!10022)))))

(declare-fun b!1449875 () Bool)

(declare-fun separableTokens!249 (LexerInterface!2313 BalanceConc!10222 List!15157) Bool)

(assert (=> b!1449875 (= e!925084 (separableTokens!249 Lexer!2311 (tokens!2056 thiss!10022) (rules!11566 thiss!10022)))))

(assert (= (and d!421070 res!656479) b!1449873))

(assert (= (and b!1449873 res!656480) b!1449874))

(assert (= (and b!1449874 res!656481) b!1449875))

(assert (=> d!421070 m!1672959))

(assert (=> b!1449873 m!1672945))

(declare-fun m!1673081 () Bool)

(assert (=> b!1449874 m!1673081))

(declare-fun m!1673083 () Bool)

(assert (=> b!1449875 m!1673083))

(assert (=> start!135006 d!421070))

(declare-fun d!421078 () Bool)

(declare-fun res!656482 () Bool)

(declare-fun e!925085 () Bool)

(assert (=> d!421078 (=> (not res!656482) (not e!925085))))

(assert (=> d!421078 (= res!656482 (not (isEmpty!9432 (rules!11566 other!32))))))

(assert (=> d!421078 (= (inv!20131 other!32) e!925085)))

(declare-fun b!1449876 () Bool)

(declare-fun res!656483 () Bool)

(assert (=> b!1449876 (=> (not res!656483) (not e!925085))))

(assert (=> b!1449876 (= res!656483 (rulesInvariant!2148 Lexer!2311 (rules!11566 other!32)))))

(declare-fun b!1449877 () Bool)

(declare-fun res!656484 () Bool)

(assert (=> b!1449877 (=> (not res!656484) (not e!925085))))

(assert (=> b!1449877 (= res!656484 (rulesProduceEachTokenIndividually!865 Lexer!2311 (rules!11566 other!32) (tokens!2056 other!32)))))

(declare-fun b!1449878 () Bool)

(assert (=> b!1449878 (= e!925085 (separableTokens!249 Lexer!2311 (tokens!2056 other!32) (rules!11566 other!32)))))

(assert (= (and d!421078 res!656482) b!1449876))

(assert (= (and b!1449876 res!656483) b!1449877))

(assert (= (and b!1449877 res!656484) b!1449878))

(declare-fun m!1673085 () Bool)

(assert (=> d!421078 m!1673085))

(declare-fun m!1673087 () Bool)

(assert (=> b!1449876 m!1673087))

(declare-fun m!1673089 () Bool)

(assert (=> b!1449877 m!1673089))

(declare-fun m!1673091 () Bool)

(assert (=> b!1449878 m!1673091))

(assert (=> start!135006 d!421078))

(declare-fun d!421080 () Bool)

(declare-fun c!238742 () Bool)

(assert (=> d!421080 (= c!238742 ((_ is Node!5141) (c!238734 (tokens!2056 thiss!10022))))))

(declare-fun e!925086 () Bool)

(assert (=> d!421080 (= (inv!20130 (c!238734 (tokens!2056 thiss!10022))) e!925086)))

(declare-fun b!1449879 () Bool)

(assert (=> b!1449879 (= e!925086 (inv!20136 (c!238734 (tokens!2056 thiss!10022))))))

(declare-fun b!1449880 () Bool)

(declare-fun e!925087 () Bool)

(assert (=> b!1449880 (= e!925086 e!925087)))

(declare-fun res!656485 () Bool)

(assert (=> b!1449880 (= res!656485 (not ((_ is Leaf!7671) (c!238734 (tokens!2056 thiss!10022)))))))

(assert (=> b!1449880 (=> res!656485 e!925087)))

(declare-fun b!1449881 () Bool)

(assert (=> b!1449881 (= e!925087 (inv!20137 (c!238734 (tokens!2056 thiss!10022))))))

(assert (= (and d!421080 c!238742) b!1449879))

(assert (= (and d!421080 (not c!238742)) b!1449880))

(assert (= (and b!1449880 (not res!656485)) b!1449881))

(declare-fun m!1673093 () Bool)

(assert (=> b!1449879 m!1673093))

(declare-fun m!1673095 () Bool)

(assert (=> b!1449881 m!1673095))

(assert (=> b!1449773 d!421080))

(declare-fun d!421082 () Bool)

(declare-fun lt!499857 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2231 (List!15156) (InoxSet Token!4976))

(assert (=> d!421082 (= lt!499857 (select (content!2231 lt!499810) lt!499806))))

(declare-fun e!925092 () Bool)

(assert (=> d!421082 (= lt!499857 e!925092)))

(declare-fun res!656491 () Bool)

(assert (=> d!421082 (=> (not res!656491) (not e!925092))))

(assert (=> d!421082 (= res!656491 ((_ is Cons!15090) lt!499810))))

(assert (=> d!421082 (= (contains!2887 lt!499810 lt!499806) lt!499857)))

(declare-fun b!1449886 () Bool)

(declare-fun e!925093 () Bool)

(assert (=> b!1449886 (= e!925092 e!925093)))

(declare-fun res!656490 () Bool)

(assert (=> b!1449886 (=> res!656490 e!925093)))

(assert (=> b!1449886 (= res!656490 (= (h!20491 lt!499810) lt!499806))))

(declare-fun b!1449887 () Bool)

(assert (=> b!1449887 (= e!925093 (contains!2887 (t!130519 lt!499810) lt!499806))))

(assert (= (and d!421082 res!656491) b!1449886))

(assert (= (and b!1449886 (not res!656490)) b!1449887))

(declare-fun m!1673097 () Bool)

(assert (=> d!421082 m!1673097))

(declare-fun m!1673099 () Bool)

(assert (=> d!421082 m!1673099))

(declare-fun m!1673101 () Bool)

(assert (=> b!1449887 m!1673101))

(assert (=> b!1449774 d!421082))

(declare-fun d!421084 () Bool)

(declare-fun res!656494 () Bool)

(declare-fun e!925096 () Bool)

(assert (=> d!421084 (=> (not res!656494) (not e!925096))))

(declare-fun rulesValid!978 (LexerInterface!2313 List!15157) Bool)

(assert (=> d!421084 (= res!656494 (rulesValid!978 Lexer!2311 (rules!11566 thiss!10022)))))

(assert (=> d!421084 (= (rulesInvariant!2148 Lexer!2311 (rules!11566 thiss!10022)) e!925096)))

(declare-fun b!1449890 () Bool)

(declare-datatypes ((List!15159 0))(
  ( (Nil!15093) (Cons!15093 (h!20494 String!17991) (t!130530 List!15159)) )
))
(declare-fun noDuplicateTag!978 (LexerInterface!2313 List!15157 List!15159) Bool)

(assert (=> b!1449890 (= e!925096 (noDuplicateTag!978 Lexer!2311 (rules!11566 thiss!10022) Nil!15093))))

(assert (= (and d!421084 res!656494) b!1449890))

(declare-fun m!1673103 () Bool)

(assert (=> d!421084 m!1673103))

(declare-fun m!1673105 () Bool)

(assert (=> b!1449890 m!1673105))

(assert (=> b!1449769 d!421084))

(declare-fun d!421086 () Bool)

(assert (=> d!421086 (= (inv!20129 (tokens!2056 thiss!10022)) (isBalanced!1534 (c!238734 (tokens!2056 thiss!10022))))))

(declare-fun bs!342512 () Bool)

(assert (= bs!342512 d!421086))

(declare-fun m!1673107 () Bool)

(assert (=> bs!342512 m!1673107))

(assert (=> b!1449770 d!421086))

(declare-fun d!421088 () Bool)

(declare-fun lt!499858 () Bool)

(assert (=> d!421088 (= lt!499858 (isEmpty!9436 (list!6028 (tokens!2056 other!32))))))

(assert (=> d!421088 (= lt!499858 (isEmpty!9437 (c!238734 (tokens!2056 other!32))))))

(assert (=> d!421088 (= (isEmpty!9431 (tokens!2056 other!32)) lt!499858)))

(declare-fun bs!342513 () Bool)

(assert (= bs!342513 d!421088))

(assert (=> bs!342513 m!1672953))

(assert (=> bs!342513 m!1672953))

(declare-fun m!1673109 () Bool)

(assert (=> bs!342513 m!1673109))

(declare-fun m!1673111 () Bool)

(assert (=> bs!342513 m!1673111))

(assert (=> b!1449771 d!421088))

(declare-fun d!421090 () Bool)

(declare-fun e!925133 () Bool)

(assert (=> d!421090 e!925133))

(declare-fun res!656517 () Bool)

(assert (=> d!421090 (=> (not res!656517) (not e!925133))))

(assert (=> d!421090 (= res!656517 (rulesInvariant!2148 Lexer!2311 (rules!11566 thiss!10022)))))

(declare-fun Unit!24003 () Unit!23999)

(assert (=> d!421090 (= (lemmaInvariant!353 thiss!10022) Unit!24003)))

(declare-fun b!1449941 () Bool)

(declare-fun res!656518 () Bool)

(assert (=> b!1449941 (=> (not res!656518) (not e!925133))))

(assert (=> b!1449941 (= res!656518 (rulesProduceEachTokenIndividually!865 Lexer!2311 (rules!11566 thiss!10022) (tokens!2056 thiss!10022)))))

(declare-fun b!1449942 () Bool)

(assert (=> b!1449942 (= e!925133 (separableTokens!249 Lexer!2311 (tokens!2056 thiss!10022) (rules!11566 thiss!10022)))))

(assert (= (and d!421090 res!656517) b!1449941))

(assert (= (and b!1449941 res!656518) b!1449942))

(assert (=> d!421090 m!1672945))

(assert (=> b!1449941 m!1673081))

(assert (=> b!1449942 m!1673083))

(assert (=> b!1449771 d!421090))

(declare-fun d!421096 () Bool)

(declare-fun e!925134 () Bool)

(assert (=> d!421096 e!925134))

(declare-fun res!656519 () Bool)

(assert (=> d!421096 (=> (not res!656519) (not e!925134))))

(assert (=> d!421096 (= res!656519 (rulesInvariant!2148 Lexer!2311 (rules!11566 other!32)))))

(declare-fun Unit!24004 () Unit!23999)

(assert (=> d!421096 (= (lemmaInvariant!353 other!32) Unit!24004)))

(declare-fun b!1449943 () Bool)

(declare-fun res!656520 () Bool)

(assert (=> b!1449943 (=> (not res!656520) (not e!925134))))

(assert (=> b!1449943 (= res!656520 (rulesProduceEachTokenIndividually!865 Lexer!2311 (rules!11566 other!32) (tokens!2056 other!32)))))

(declare-fun b!1449944 () Bool)

(assert (=> b!1449944 (= e!925134 (separableTokens!249 Lexer!2311 (tokens!2056 other!32) (rules!11566 other!32)))))

(assert (= (and d!421096 res!656519) b!1449943))

(assert (= (and b!1449943 res!656520) b!1449944))

(assert (=> d!421096 m!1673087))

(assert (=> b!1449943 m!1673089))

(assert (=> b!1449944 m!1673091))

(assert (=> b!1449771 d!421096))

(declare-fun b!1449955 () Bool)

(declare-fun b_free!36055 () Bool)

(declare-fun b_next!36759 () Bool)

(assert (=> b!1449955 (= b_free!36055 (not b_next!36759))))

(declare-fun tp!409072 () Bool)

(declare-fun b_and!98119 () Bool)

(assert (=> b!1449955 (= tp!409072 b_and!98119)))

(declare-fun b_free!36057 () Bool)

(declare-fun b_next!36761 () Bool)

(assert (=> b!1449955 (= b_free!36057 (not b_next!36761))))

(declare-fun tp!409073 () Bool)

(declare-fun b_and!98121 () Bool)

(assert (=> b!1449955 (= tp!409073 b_and!98121)))

(declare-fun e!925144 () Bool)

(assert (=> b!1449955 (= e!925144 (and tp!409072 tp!409073))))

(declare-fun tp!409074 () Bool)

(declare-fun e!925143 () Bool)

(declare-fun b!1449954 () Bool)

(declare-fun inv!20125 (String!17991) Bool)

(declare-fun inv!20138 (TokenValueInjection!5154) Bool)

(assert (=> b!1449954 (= e!925143 (and tp!409074 (inv!20125 (tag!2921 (h!20492 (rules!11566 other!32)))) (inv!20138 (transformation!2657 (h!20492 (rules!11566 other!32)))) e!925144))))

(declare-fun b!1449953 () Bool)

(declare-fun e!925146 () Bool)

(declare-fun tp!409071 () Bool)

(assert (=> b!1449953 (= e!925146 (and e!925143 tp!409071))))

(assert (=> b!1449772 (= tp!409032 e!925146)))

(assert (= b!1449954 b!1449955))

(assert (= b!1449953 b!1449954))

(assert (= (and b!1449772 ((_ is Cons!15091) (rules!11566 other!32))) b!1449953))

(declare-fun m!1673141 () Bool)

(assert (=> b!1449954 m!1673141))

(declare-fun m!1673143 () Bool)

(assert (=> b!1449954 m!1673143))

(declare-fun b!1449964 () Bool)

(declare-fun e!925151 () Bool)

(declare-fun tp!409081 () Bool)

(declare-fun tp!409083 () Bool)

(assert (=> b!1449964 (= e!925151 (and (inv!20130 (left!12836 (c!238734 (tokens!2056 thiss!10022)))) tp!409083 (inv!20130 (right!13166 (c!238734 (tokens!2056 thiss!10022)))) tp!409081))))

(declare-fun b!1449966 () Bool)

(declare-fun e!925152 () Bool)

(declare-fun tp!409082 () Bool)

(assert (=> b!1449966 (= e!925152 tp!409082)))

(declare-fun b!1449965 () Bool)

(declare-fun inv!20139 (IArray!10287) Bool)

(assert (=> b!1449965 (= e!925151 (and (inv!20139 (xs!7882 (c!238734 (tokens!2056 thiss!10022)))) e!925152))))

(assert (=> b!1449773 (= tp!409034 (and (inv!20130 (c!238734 (tokens!2056 thiss!10022))) e!925151))))

(assert (= (and b!1449773 ((_ is Node!5141) (c!238734 (tokens!2056 thiss!10022)))) b!1449964))

(assert (= b!1449965 b!1449966))

(assert (= (and b!1449773 ((_ is Leaf!7671) (c!238734 (tokens!2056 thiss!10022)))) b!1449965))

(declare-fun m!1673145 () Bool)

(assert (=> b!1449964 m!1673145))

(declare-fun m!1673147 () Bool)

(assert (=> b!1449964 m!1673147))

(declare-fun m!1673149 () Bool)

(assert (=> b!1449965 m!1673149))

(assert (=> b!1449773 m!1672933))

(declare-fun b!1449969 () Bool)

(declare-fun b_free!36059 () Bool)

(declare-fun b_next!36763 () Bool)

(assert (=> b!1449969 (= b_free!36059 (not b_next!36763))))

(declare-fun tp!409085 () Bool)

(declare-fun b_and!98123 () Bool)

(assert (=> b!1449969 (= tp!409085 b_and!98123)))

(declare-fun b_free!36061 () Bool)

(declare-fun b_next!36765 () Bool)

(assert (=> b!1449969 (= b_free!36061 (not b_next!36765))))

(declare-fun tp!409086 () Bool)

(declare-fun b_and!98125 () Bool)

(assert (=> b!1449969 (= tp!409086 b_and!98125)))

(declare-fun e!925154 () Bool)

(assert (=> b!1449969 (= e!925154 (and tp!409085 tp!409086))))

(declare-fun b!1449968 () Bool)

(declare-fun e!925153 () Bool)

(declare-fun tp!409087 () Bool)

(assert (=> b!1449968 (= e!925153 (and tp!409087 (inv!20125 (tag!2921 (h!20492 (rules!11566 thiss!10022)))) (inv!20138 (transformation!2657 (h!20492 (rules!11566 thiss!10022)))) e!925154))))

(declare-fun b!1449967 () Bool)

(declare-fun e!925156 () Bool)

(declare-fun tp!409084 () Bool)

(assert (=> b!1449967 (= e!925156 (and e!925153 tp!409084))))

(assert (=> b!1449770 (= tp!409031 e!925156)))

(assert (= b!1449968 b!1449969))

(assert (= b!1449967 b!1449968))

(assert (= (and b!1449770 ((_ is Cons!15091) (rules!11566 thiss!10022))) b!1449967))

(declare-fun m!1673151 () Bool)

(assert (=> b!1449968 m!1673151))

(declare-fun m!1673153 () Bool)

(assert (=> b!1449968 m!1673153))

(declare-fun tp!409088 () Bool)

(declare-fun tp!409090 () Bool)

(declare-fun b!1449970 () Bool)

(declare-fun e!925157 () Bool)

(assert (=> b!1449970 (= e!925157 (and (inv!20130 (left!12836 (c!238734 (tokens!2056 other!32)))) tp!409090 (inv!20130 (right!13166 (c!238734 (tokens!2056 other!32)))) tp!409088))))

(declare-fun b!1449972 () Bool)

(declare-fun e!925158 () Bool)

(declare-fun tp!409089 () Bool)

(assert (=> b!1449972 (= e!925158 tp!409089)))

(declare-fun b!1449971 () Bool)

(assert (=> b!1449971 (= e!925157 (and (inv!20139 (xs!7882 (c!238734 (tokens!2056 other!32)))) e!925158))))

(assert (=> b!1449775 (= tp!409033 (and (inv!20130 (c!238734 (tokens!2056 other!32))) e!925157))))

(assert (= (and b!1449775 ((_ is Node!5141) (c!238734 (tokens!2056 other!32)))) b!1449970))

(assert (= b!1449971 b!1449972))

(assert (= (and b!1449775 ((_ is Leaf!7671) (c!238734 (tokens!2056 other!32)))) b!1449971))

(declare-fun m!1673155 () Bool)

(assert (=> b!1449970 m!1673155))

(declare-fun m!1673157 () Bool)

(assert (=> b!1449970 m!1673157))

(declare-fun m!1673159 () Bool)

(assert (=> b!1449971 m!1673159))

(assert (=> b!1449775 m!1672923))

(check-sat (not b!1449851) (not b!1449809) (not b_next!36759) (not d!421088) (not d!421070) (not b!1449808) (not b!1449965) (not b!1449807) (not b!1449943) (not b!1449881) (not d!421040) (not d!421082) (not d!421036) (not b!1449954) b_and!98123 (not b!1449879) (not d!421090) (not b!1449968) b_and!98125 (not b_next!36765) (not b!1449971) b_and!98121 (not d!421024) (not b!1449878) (not b!1449818) b_and!98119 (not d!421086) (not b!1449964) (not d!421096) (not d!421078) (not b!1449873) (not b!1449972) (not b!1449953) (not b!1449944) (not d!421054) (not b!1449775) (not b!1449887) (not b_next!36763) (not d!421068) (not b!1449876) (not b!1449890) (not b!1449874) (not b!1449816) (not d!421020) (not b!1449942) (not d!421084) (not b!1449966) (not b!1449773) (not d!421046) (not b!1449877) (not b!1449842) (not b!1449941) (not d!421030) (not b!1449875) (not b!1449841) (not b_next!36761) (not b!1449967) (not d!421018) (not b!1449970))
(check-sat b_and!98123 b_and!98121 b_and!98119 (not b_next!36759) (not b_next!36763) (not b_next!36761) b_and!98125 (not b_next!36765))
(get-model)

(declare-fun d!421104 () Bool)

(declare-fun e!925165 () Bool)

(assert (=> d!421104 e!925165))

(declare-fun res!656531 () Bool)

(assert (=> d!421104 (=> (not res!656531) (not e!925165))))

(declare-fun lt!499864 () BalanceConc!10222)

(assert (=> d!421104 (= res!656531 (= (list!6028 lt!499864) (Cons!15090 lt!499809 Nil!15090)))))

(declare-fun singleton!525 (Token!4976) BalanceConc!10222)

(assert (=> d!421104 (= lt!499864 (singleton!525 lt!499809))))

(assert (=> d!421104 (= (singletonSeq!1252 lt!499809) lt!499864)))

(declare-fun b!1449981 () Bool)

(assert (=> b!1449981 (= e!925165 (isBalanced!1534 (c!238734 lt!499864)))))

(assert (= (and d!421104 res!656531) b!1449981))

(declare-fun m!1673169 () Bool)

(assert (=> d!421104 m!1673169))

(declare-fun m!1673171 () Bool)

(assert (=> d!421104 m!1673171))

(declare-fun m!1673173 () Bool)

(assert (=> b!1449981 m!1673173))

(assert (=> d!421046 d!421104))

(declare-fun d!421106 () Bool)

(assert (=> d!421106 (= (list!6028 (_1!7984 (lex!1061 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809))))) (list!6030 (c!238734 (_1!7984 (lex!1061 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809)))))))))

(declare-fun bs!342514 () Bool)

(assert (= bs!342514 d!421106))

(declare-fun m!1673175 () Bool)

(assert (=> bs!342514 m!1673175))

(assert (=> d!421046 d!421106))

(declare-fun d!421108 () Bool)

(assert (=> d!421108 (= (list!6028 (singletonSeq!1252 lt!499809)) (list!6030 (c!238734 (singletonSeq!1252 lt!499809))))))

(declare-fun bs!342515 () Bool)

(assert (= bs!342515 d!421108))

(declare-fun m!1673177 () Bool)

(assert (=> bs!342515 m!1673177))

(assert (=> d!421046 d!421108))

(declare-fun b!1449998 () Bool)

(declare-fun res!656542 () Bool)

(declare-fun e!925178 () Bool)

(assert (=> b!1449998 (=> (not res!656542) (not e!925178))))

(declare-fun lt!499870 () tuple2!14196)

(declare-datatypes ((tuple2!14198 0))(
  ( (tuple2!14199 (_1!7985 List!15156) (_2!7985 List!15154)) )
))
(declare-fun lexList!709 (LexerInterface!2313 List!15157 List!15154) tuple2!14198)

(declare-fun list!6031 (BalanceConc!10220) List!15154)

(assert (=> b!1449998 (= res!656542 (= (list!6028 (_1!7984 lt!499870)) (_1!7985 (lexList!709 Lexer!2311 (rules!11566 thiss!10022) (list!6031 (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809)))))))))

(declare-fun b!1449999 () Bool)

(declare-fun e!925179 () Bool)

(assert (=> b!1449999 (= e!925179 (not (isEmpty!9431 (_1!7984 lt!499870))))))

(declare-fun d!421110 () Bool)

(assert (=> d!421110 e!925178))

(declare-fun res!656541 () Bool)

(assert (=> d!421110 (=> (not res!656541) (not e!925178))))

(declare-fun e!925180 () Bool)

(assert (=> d!421110 (= res!656541 e!925180)))

(declare-fun c!238748 () Bool)

(assert (=> d!421110 (= c!238748 (> (size!12346 (_1!7984 lt!499870)) 0))))

(declare-fun lexTailRecV2!464 (LexerInterface!2313 List!15157 BalanceConc!10220 BalanceConc!10220 BalanceConc!10220 BalanceConc!10222) tuple2!14196)

(assert (=> d!421110 (= lt!499870 (lexTailRecV2!464 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809)) (BalanceConc!10221 Empty!5140) (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809)) (BalanceConc!10223 Empty!5141)))))

(assert (=> d!421110 (= (lex!1061 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809))) lt!499870)))

(declare-fun b!1450000 () Bool)

(assert (=> b!1450000 (= e!925178 (= (list!6031 (_2!7984 lt!499870)) (_2!7985 (lexList!709 Lexer!2311 (rules!11566 thiss!10022) (list!6031 (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809)))))))))

(declare-fun b!1450001 () Bool)

(assert (=> b!1450001 (= e!925180 (= (_2!7984 lt!499870) (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809))))))

(declare-fun b!1450002 () Bool)

(assert (=> b!1450002 (= e!925180 e!925179)))

(declare-fun res!656543 () Bool)

(declare-fun size!12347 (BalanceConc!10220) Int)

(assert (=> b!1450002 (= res!656543 (< (size!12347 (_2!7984 lt!499870)) (size!12347 (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809)))))))

(assert (=> b!1450002 (=> (not res!656543) (not e!925179))))

(assert (= (and d!421110 c!238748) b!1450002))

(assert (= (and d!421110 (not c!238748)) b!1450001))

(assert (= (and b!1450002 res!656543) b!1449999))

(assert (= (and d!421110 res!656541) b!1449998))

(assert (= (and b!1449998 res!656542) b!1450000))

(declare-fun m!1673185 () Bool)

(assert (=> b!1449998 m!1673185))

(assert (=> b!1449998 m!1673019))

(declare-fun m!1673187 () Bool)

(assert (=> b!1449998 m!1673187))

(assert (=> b!1449998 m!1673187))

(declare-fun m!1673189 () Bool)

(assert (=> b!1449998 m!1673189))

(declare-fun m!1673191 () Bool)

(assert (=> b!1449999 m!1673191))

(declare-fun m!1673193 () Bool)

(assert (=> d!421110 m!1673193))

(assert (=> d!421110 m!1673019))

(assert (=> d!421110 m!1673019))

(declare-fun m!1673195 () Bool)

(assert (=> d!421110 m!1673195))

(declare-fun m!1673197 () Bool)

(assert (=> b!1450002 m!1673197))

(assert (=> b!1450002 m!1673019))

(declare-fun m!1673199 () Bool)

(assert (=> b!1450002 m!1673199))

(declare-fun m!1673201 () Bool)

(assert (=> b!1450000 m!1673201))

(assert (=> b!1450000 m!1673019))

(assert (=> b!1450000 m!1673187))

(assert (=> b!1450000 m!1673187))

(assert (=> b!1450000 m!1673189))

(assert (=> d!421046 d!421110))

(declare-fun d!421114 () Bool)

(declare-fun lt!499873 () BalanceConc!10220)

(declare-fun printList!718 (LexerInterface!2313 List!15156) List!15154)

(assert (=> d!421114 (= (list!6031 lt!499873) (printList!718 Lexer!2311 (list!6028 (singletonSeq!1252 lt!499809))))))

(declare-fun printTailRec!690 (LexerInterface!2313 BalanceConc!10222 Int BalanceConc!10220) BalanceConc!10220)

(assert (=> d!421114 (= lt!499873 (printTailRec!690 Lexer!2311 (singletonSeq!1252 lt!499809) 0 (BalanceConc!10221 Empty!5140)))))

(assert (=> d!421114 (= (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809)) lt!499873)))

(declare-fun bs!342517 () Bool)

(assert (= bs!342517 d!421114))

(declare-fun m!1673203 () Bool)

(assert (=> bs!342517 m!1673203))

(assert (=> bs!342517 m!1673017))

(assert (=> bs!342517 m!1673021))

(assert (=> bs!342517 m!1673021))

(declare-fun m!1673205 () Bool)

(assert (=> bs!342517 m!1673205))

(assert (=> bs!342517 m!1673017))

(declare-fun m!1673207 () Bool)

(assert (=> bs!342517 m!1673207))

(assert (=> d!421046 d!421114))

(assert (=> d!421046 d!421038))

(declare-fun d!421116 () Bool)

(declare-fun lt!499876 () Int)

(declare-fun size!12349 (List!15156) Int)

(assert (=> d!421116 (= lt!499876 (size!12349 (list!6028 (_1!7984 lt!499846))))))

(declare-fun size!12350 (Conc!5141) Int)

(assert (=> d!421116 (= lt!499876 (size!12350 (c!238734 (_1!7984 lt!499846))))))

(assert (=> d!421116 (= (size!12346 (_1!7984 lt!499846)) lt!499876)))

(declare-fun bs!342518 () Bool)

(assert (= bs!342518 d!421116))

(declare-fun m!1673209 () Bool)

(assert (=> bs!342518 m!1673209))

(assert (=> bs!342518 m!1673209))

(declare-fun m!1673211 () Bool)

(assert (=> bs!342518 m!1673211))

(declare-fun m!1673213 () Bool)

(assert (=> bs!342518 m!1673213))

(assert (=> d!421046 d!421116))

(declare-fun bs!342519 () Bool)

(declare-fun d!421118 () Bool)

(assert (= bs!342519 (and d!421118 d!421054)))

(declare-fun lambda!63037 () Int)

(assert (=> bs!342519 (= lambda!63037 lambda!63031)))

(declare-fun b!1450007 () Bool)

(declare-fun e!925185 () Bool)

(assert (=> b!1450007 (= e!925185 true)))

(declare-fun b!1450006 () Bool)

(declare-fun e!925184 () Bool)

(assert (=> b!1450006 (= e!925184 e!925185)))

(declare-fun b!1450005 () Bool)

(declare-fun e!925183 () Bool)

(assert (=> b!1450005 (= e!925183 e!925184)))

(assert (=> d!421118 e!925183))

(assert (= b!1450006 b!1450007))

(assert (= b!1450005 b!1450006))

(assert (= (and d!421118 ((_ is Cons!15091) (rules!11566 thiss!10022))) b!1450005))

(assert (=> b!1450007 (< (dynLambda!6873 order!9077 (toValue!3964 (transformation!2657 (h!20492 (rules!11566 thiss!10022))))) (dynLambda!6874 order!9079 lambda!63037))))

(assert (=> b!1450007 (< (dynLambda!6875 order!9081 (toChars!3823 (transformation!2657 (h!20492 (rules!11566 thiss!10022))))) (dynLambda!6874 order!9079 lambda!63037))))

(assert (=> d!421118 true))

(declare-fun lt!499877 () Bool)

(assert (=> d!421118 (= lt!499877 (forall!3710 (t!130519 lt!499810) lambda!63037))))

(declare-fun e!925182 () Bool)

(assert (=> d!421118 (= lt!499877 e!925182)))

(declare-fun res!656544 () Bool)

(assert (=> d!421118 (=> res!656544 e!925182)))

(assert (=> d!421118 (= res!656544 (not ((_ is Cons!15090) (t!130519 lt!499810))))))

(assert (=> d!421118 (not (isEmpty!9432 (rules!11566 thiss!10022)))))

(assert (=> d!421118 (= (rulesProduceEachTokenIndividuallyList!738 Lexer!2311 (rules!11566 thiss!10022) (t!130519 lt!499810)) lt!499877)))

(declare-fun b!1450003 () Bool)

(declare-fun e!925181 () Bool)

(assert (=> b!1450003 (= e!925182 e!925181)))

(declare-fun res!656545 () Bool)

(assert (=> b!1450003 (=> (not res!656545) (not e!925181))))

(assert (=> b!1450003 (= res!656545 (rulesProduceIndividualToken!1232 Lexer!2311 (rules!11566 thiss!10022) (h!20491 (t!130519 lt!499810))))))

(declare-fun b!1450004 () Bool)

(assert (=> b!1450004 (= e!925181 (rulesProduceEachTokenIndividuallyList!738 Lexer!2311 (rules!11566 thiss!10022) (t!130519 (t!130519 lt!499810))))))

(assert (= (and d!421118 (not res!656544)) b!1450003))

(assert (= (and b!1450003 res!656545) b!1450004))

(declare-fun m!1673215 () Bool)

(assert (=> d!421118 m!1673215))

(assert (=> d!421118 m!1672959))

(declare-fun m!1673217 () Bool)

(assert (=> b!1450003 m!1673217))

(declare-fun m!1673219 () Bool)

(assert (=> b!1450004 m!1673219))

(assert (=> b!1449842 d!421118))

(declare-fun d!421120 () Bool)

(declare-fun c!238753 () Bool)

(assert (=> d!421120 (= c!238753 ((_ is Empty!5141) (c!238734 (tokens!2056 thiss!10022))))))

(declare-fun e!925190 () List!15156)

(assert (=> d!421120 (= (list!6030 (c!238734 (tokens!2056 thiss!10022))) e!925190)))

(declare-fun b!1450017 () Bool)

(declare-fun e!925191 () List!15156)

(assert (=> b!1450017 (= e!925190 e!925191)))

(declare-fun c!238754 () Bool)

(assert (=> b!1450017 (= c!238754 ((_ is Leaf!7671) (c!238734 (tokens!2056 thiss!10022))))))

(declare-fun b!1450016 () Bool)

(assert (=> b!1450016 (= e!925190 Nil!15090)))

(declare-fun b!1450019 () Bool)

(declare-fun ++!4051 (List!15156 List!15156) List!15156)

(assert (=> b!1450019 (= e!925191 (++!4051 (list!6030 (left!12836 (c!238734 (tokens!2056 thiss!10022)))) (list!6030 (right!13166 (c!238734 (tokens!2056 thiss!10022))))))))

(declare-fun b!1450018 () Bool)

(declare-fun list!6032 (IArray!10287) List!15156)

(assert (=> b!1450018 (= e!925191 (list!6032 (xs!7882 (c!238734 (tokens!2056 thiss!10022)))))))

(assert (= (and d!421120 c!238753) b!1450016))

(assert (= (and d!421120 (not c!238753)) b!1450017))

(assert (= (and b!1450017 c!238754) b!1450018))

(assert (= (and b!1450017 (not c!238754)) b!1450019))

(declare-fun m!1673221 () Bool)

(assert (=> b!1450019 m!1673221))

(declare-fun m!1673223 () Bool)

(assert (=> b!1450019 m!1673223))

(assert (=> b!1450019 m!1673221))

(assert (=> b!1450019 m!1673223))

(declare-fun m!1673225 () Bool)

(assert (=> b!1450019 m!1673225))

(declare-fun m!1673227 () Bool)

(assert (=> b!1450018 m!1673227))

(assert (=> d!421036 d!421120))

(declare-fun d!421122 () Bool)

(assert (=> d!421122 (= (isEmpty!9432 (rules!11566 other!32)) ((_ is Nil!15091) (rules!11566 other!32)))))

(assert (=> d!421078 d!421122))

(declare-fun d!421124 () Bool)

(declare-fun res!656552 () Bool)

(declare-fun e!925194 () Bool)

(assert (=> d!421124 (=> (not res!656552) (not e!925194))))

(assert (=> d!421124 (= res!656552 (= (csize!10512 (c!238734 (tokens!2056 thiss!10022))) (+ (size!12350 (left!12836 (c!238734 (tokens!2056 thiss!10022)))) (size!12350 (right!13166 (c!238734 (tokens!2056 thiss!10022)))))))))

(assert (=> d!421124 (= (inv!20136 (c!238734 (tokens!2056 thiss!10022))) e!925194)))

(declare-fun b!1450026 () Bool)

(declare-fun res!656553 () Bool)

(assert (=> b!1450026 (=> (not res!656553) (not e!925194))))

(assert (=> b!1450026 (= res!656553 (and (not (= (left!12836 (c!238734 (tokens!2056 thiss!10022))) Empty!5141)) (not (= (right!13166 (c!238734 (tokens!2056 thiss!10022))) Empty!5141))))))

(declare-fun b!1450027 () Bool)

(declare-fun res!656554 () Bool)

(assert (=> b!1450027 (=> (not res!656554) (not e!925194))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!764 (Conc!5141) Int)

(assert (=> b!1450027 (= res!656554 (= (cheight!5352 (c!238734 (tokens!2056 thiss!10022))) (+ (max!0 (height!764 (left!12836 (c!238734 (tokens!2056 thiss!10022)))) (height!764 (right!13166 (c!238734 (tokens!2056 thiss!10022))))) 1)))))

(declare-fun b!1450028 () Bool)

(assert (=> b!1450028 (= e!925194 (<= 0 (cheight!5352 (c!238734 (tokens!2056 thiss!10022)))))))

(assert (= (and d!421124 res!656552) b!1450026))

(assert (= (and b!1450026 res!656553) b!1450027))

(assert (= (and b!1450027 res!656554) b!1450028))

(declare-fun m!1673229 () Bool)

(assert (=> d!421124 m!1673229))

(declare-fun m!1673231 () Bool)

(assert (=> d!421124 m!1673231))

(declare-fun m!1673233 () Bool)

(assert (=> b!1450027 m!1673233))

(declare-fun m!1673235 () Bool)

(assert (=> b!1450027 m!1673235))

(assert (=> b!1450027 m!1673233))

(assert (=> b!1450027 m!1673235))

(declare-fun m!1673237 () Bool)

(assert (=> b!1450027 m!1673237))

(assert (=> b!1449879 d!421124))

(declare-fun d!421126 () Bool)

(assert (=> d!421126 (= (isEmpty!9436 (list!6028 (tokens!2056 other!32))) ((_ is Nil!15090) (list!6028 (tokens!2056 other!32))))))

(assert (=> d!421088 d!421126))

(assert (=> d!421088 d!421020))

(declare-fun d!421128 () Bool)

(declare-fun lt!499880 () Bool)

(assert (=> d!421128 (= lt!499880 (isEmpty!9436 (list!6030 (c!238734 (tokens!2056 other!32)))))))

(assert (=> d!421128 (= lt!499880 (= (size!12350 (c!238734 (tokens!2056 other!32))) 0))))

(assert (=> d!421128 (= (isEmpty!9437 (c!238734 (tokens!2056 other!32))) lt!499880)))

(declare-fun bs!342520 () Bool)

(assert (= bs!342520 d!421128))

(assert (=> bs!342520 m!1672965))

(assert (=> bs!342520 m!1672965))

(declare-fun m!1673239 () Bool)

(assert (=> bs!342520 m!1673239))

(declare-fun m!1673241 () Bool)

(assert (=> bs!342520 m!1673241))

(assert (=> d!421088 d!421128))

(declare-fun d!421130 () Bool)

(assert (=> d!421130 true))

(declare-fun lt!499883 () Bool)

(declare-fun rulesValidInductive!825 (LexerInterface!2313 List!15157) Bool)

(assert (=> d!421130 (= lt!499883 (rulesValidInductive!825 Lexer!2311 (rules!11566 thiss!10022)))))

(declare-fun lambda!63040 () Int)

(declare-fun forall!3712 (List!15157 Int) Bool)

(assert (=> d!421130 (= lt!499883 (forall!3712 (rules!11566 thiss!10022) lambda!63040))))

(assert (=> d!421130 (= (rulesValid!978 Lexer!2311 (rules!11566 thiss!10022)) lt!499883)))

(declare-fun bs!342521 () Bool)

(assert (= bs!342521 d!421130))

(declare-fun m!1673243 () Bool)

(assert (=> bs!342521 m!1673243))

(declare-fun m!1673245 () Bool)

(assert (=> bs!342521 m!1673245))

(assert (=> d!421084 d!421130))

(declare-fun d!421132 () Bool)

(declare-fun lt!499884 () Bool)

(declare-fun e!925195 () Bool)

(assert (=> d!421132 (= lt!499884 e!925195)))

(declare-fun res!656555 () Bool)

(assert (=> d!421132 (=> (not res!656555) (not e!925195))))

(assert (=> d!421132 (= res!656555 (= (list!6028 (_1!7984 (lex!1061 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 (h!20491 lt!499810)))))) (list!6028 (singletonSeq!1252 (h!20491 lt!499810)))))))

(declare-fun e!925196 () Bool)

(assert (=> d!421132 (= lt!499884 e!925196)))

(declare-fun res!656556 () Bool)

(assert (=> d!421132 (=> (not res!656556) (not e!925196))))

(declare-fun lt!499885 () tuple2!14196)

(assert (=> d!421132 (= res!656556 (= (size!12346 (_1!7984 lt!499885)) 1))))

(assert (=> d!421132 (= lt!499885 (lex!1061 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 (h!20491 lt!499810)))))))

(assert (=> d!421132 (not (isEmpty!9432 (rules!11566 thiss!10022)))))

(assert (=> d!421132 (= (rulesProduceIndividualToken!1232 Lexer!2311 (rules!11566 thiss!10022) (h!20491 lt!499810)) lt!499884)))

(declare-fun b!1450031 () Bool)

(declare-fun res!656557 () Bool)

(assert (=> b!1450031 (=> (not res!656557) (not e!925196))))

(assert (=> b!1450031 (= res!656557 (= (apply!3895 (_1!7984 lt!499885) 0) (h!20491 lt!499810)))))

(declare-fun b!1450032 () Bool)

(assert (=> b!1450032 (= e!925196 (isEmpty!9438 (_2!7984 lt!499885)))))

(declare-fun b!1450033 () Bool)

(assert (=> b!1450033 (= e!925195 (isEmpty!9438 (_2!7984 (lex!1061 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 (h!20491 lt!499810)))))))))

(assert (= (and d!421132 res!656556) b!1450031))

(assert (= (and b!1450031 res!656557) b!1450032))

(assert (= (and d!421132 res!656555) b!1450033))

(declare-fun m!1673247 () Bool)

(assert (=> d!421132 m!1673247))

(assert (=> d!421132 m!1672959))

(declare-fun m!1673249 () Bool)

(assert (=> d!421132 m!1673249))

(declare-fun m!1673251 () Bool)

(assert (=> d!421132 m!1673251))

(assert (=> d!421132 m!1673249))

(declare-fun m!1673253 () Bool)

(assert (=> d!421132 m!1673253))

(assert (=> d!421132 m!1673249))

(assert (=> d!421132 m!1673251))

(declare-fun m!1673255 () Bool)

(assert (=> d!421132 m!1673255))

(declare-fun m!1673257 () Bool)

(assert (=> d!421132 m!1673257))

(declare-fun m!1673259 () Bool)

(assert (=> b!1450031 m!1673259))

(declare-fun m!1673261 () Bool)

(assert (=> b!1450032 m!1673261))

(assert (=> b!1450033 m!1673249))

(assert (=> b!1450033 m!1673249))

(assert (=> b!1450033 m!1673251))

(assert (=> b!1450033 m!1673251))

(assert (=> b!1450033 m!1673255))

(declare-fun m!1673263 () Bool)

(assert (=> b!1450033 m!1673263))

(assert (=> b!1449841 d!421132))

(assert (=> d!421070 d!421038))

(declare-fun bs!342525 () Bool)

(declare-fun d!421134 () Bool)

(assert (= bs!342525 (and d!421134 d!421054)))

(declare-fun lambda!63045 () Int)

(assert (=> bs!342525 (= (= (rules!11566 other!32) (rules!11566 thiss!10022)) (= lambda!63045 lambda!63031))))

(declare-fun bs!342526 () Bool)

(assert (= bs!342526 (and d!421134 d!421118)))

(assert (=> bs!342526 (= (= (rules!11566 other!32) (rules!11566 thiss!10022)) (= lambda!63045 lambda!63037))))

(declare-fun b!1450070 () Bool)

(declare-fun e!925218 () Bool)

(assert (=> b!1450070 (= e!925218 true)))

(declare-fun b!1450069 () Bool)

(declare-fun e!925217 () Bool)

(assert (=> b!1450069 (= e!925217 e!925218)))

(declare-fun b!1450068 () Bool)

(declare-fun e!925216 () Bool)

(assert (=> b!1450068 (= e!925216 e!925217)))

(assert (=> d!421134 e!925216))

(assert (= b!1450069 b!1450070))

(assert (= b!1450068 b!1450069))

(assert (= (and d!421134 ((_ is Cons!15091) (rules!11566 other!32))) b!1450068))

(assert (=> b!1450070 (< (dynLambda!6873 order!9077 (toValue!3964 (transformation!2657 (h!20492 (rules!11566 other!32))))) (dynLambda!6874 order!9079 lambda!63045))))

(assert (=> b!1450070 (< (dynLambda!6875 order!9081 (toChars!3823 (transformation!2657 (h!20492 (rules!11566 other!32))))) (dynLambda!6874 order!9079 lambda!63045))))

(assert (=> d!421134 true))

(declare-fun e!925215 () Bool)

(assert (=> d!421134 e!925215))

(declare-fun res!656591 () Bool)

(assert (=> d!421134 (=> (not res!656591) (not e!925215))))

(declare-fun lt!499891 () Bool)

(assert (=> d!421134 (= res!656591 (= lt!499891 (forall!3710 (list!6028 (tokens!2056 other!32)) lambda!63045)))))

(declare-fun forall!3713 (BalanceConc!10222 Int) Bool)

(assert (=> d!421134 (= lt!499891 (forall!3713 (tokens!2056 other!32) lambda!63045))))

(assert (=> d!421134 (not (isEmpty!9432 (rules!11566 other!32)))))

(assert (=> d!421134 (= (rulesProduceEachTokenIndividually!865 Lexer!2311 (rules!11566 other!32) (tokens!2056 other!32)) lt!499891)))

(declare-fun b!1450067 () Bool)

(assert (=> b!1450067 (= e!925215 (= lt!499891 (rulesProduceEachTokenIndividuallyList!738 Lexer!2311 (rules!11566 other!32) (list!6028 (tokens!2056 other!32)))))))

(assert (= (and d!421134 res!656591) b!1450067))

(assert (=> d!421134 m!1672953))

(assert (=> d!421134 m!1672953))

(declare-fun m!1673297 () Bool)

(assert (=> d!421134 m!1673297))

(declare-fun m!1673299 () Bool)

(assert (=> d!421134 m!1673299))

(assert (=> d!421134 m!1673085))

(assert (=> b!1450067 m!1672953))

(assert (=> b!1450067 m!1672953))

(declare-fun m!1673301 () Bool)

(assert (=> b!1450067 m!1673301))

(assert (=> b!1449877 d!421134))

(declare-fun d!421152 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!130 (LexerInterface!2313 BalanceConc!10222 Int List!15157) Bool)

(assert (=> d!421152 (= (separableTokens!249 Lexer!2311 (tokens!2056 other!32) (rules!11566 other!32)) (tokensListTwoByTwoPredicateSeparable!130 Lexer!2311 (tokens!2056 other!32) 0 (rules!11566 other!32)))))

(declare-fun bs!342531 () Bool)

(assert (= bs!342531 d!421152))

(declare-fun m!1673343 () Bool)

(assert (=> bs!342531 m!1673343))

(assert (=> b!1449878 d!421152))

(assert (=> b!1449773 d!421080))

(declare-fun d!421166 () Bool)

(declare-fun c!238759 () Bool)

(assert (=> d!421166 (= c!238759 ((_ is Empty!5141) (c!238734 (tokens!2056 other!32))))))

(declare-fun e!925231 () List!15156)

(assert (=> d!421166 (= (list!6030 (c!238734 (tokens!2056 other!32))) e!925231)))

(declare-fun b!1450090 () Bool)

(declare-fun e!925232 () List!15156)

(assert (=> b!1450090 (= e!925231 e!925232)))

(declare-fun c!238760 () Bool)

(assert (=> b!1450090 (= c!238760 ((_ is Leaf!7671) (c!238734 (tokens!2056 other!32))))))

(declare-fun b!1450089 () Bool)

(assert (=> b!1450089 (= e!925231 Nil!15090)))

(declare-fun b!1450092 () Bool)

(assert (=> b!1450092 (= e!925232 (++!4051 (list!6030 (left!12836 (c!238734 (tokens!2056 other!32)))) (list!6030 (right!13166 (c!238734 (tokens!2056 other!32))))))))

(declare-fun b!1450091 () Bool)

(assert (=> b!1450091 (= e!925232 (list!6032 (xs!7882 (c!238734 (tokens!2056 other!32)))))))

(assert (= (and d!421166 c!238759) b!1450089))

(assert (= (and d!421166 (not c!238759)) b!1450090))

(assert (= (and b!1450090 c!238760) b!1450091))

(assert (= (and b!1450090 (not c!238760)) b!1450092))

(declare-fun m!1673345 () Bool)

(assert (=> b!1450092 m!1673345))

(declare-fun m!1673347 () Bool)

(assert (=> b!1450092 m!1673347))

(assert (=> b!1450092 m!1673345))

(assert (=> b!1450092 m!1673347))

(declare-fun m!1673349 () Bool)

(assert (=> b!1450092 m!1673349))

(declare-fun m!1673351 () Bool)

(assert (=> b!1450091 m!1673351))

(assert (=> d!421020 d!421166))

(declare-fun d!421170 () Bool)

(declare-fun lt!499906 () Token!4976)

(declare-fun apply!3896 (List!15156 Int) Token!4976)

(assert (=> d!421170 (= lt!499906 (apply!3896 (list!6028 (_1!7984 lt!499846)) 0))))

(declare-fun apply!3897 (Conc!5141 Int) Token!4976)

(assert (=> d!421170 (= lt!499906 (apply!3897 (c!238734 (_1!7984 lt!499846)) 0))))

(declare-fun e!925244 () Bool)

(assert (=> d!421170 e!925244))

(declare-fun res!656609 () Bool)

(assert (=> d!421170 (=> (not res!656609) (not e!925244))))

(assert (=> d!421170 (= res!656609 (<= 0 0))))

(assert (=> d!421170 (= (apply!3895 (_1!7984 lt!499846) 0) lt!499906)))

(declare-fun b!1450110 () Bool)

(assert (=> b!1450110 (= e!925244 (< 0 (size!12346 (_1!7984 lt!499846))))))

(assert (= (and d!421170 res!656609) b!1450110))

(assert (=> d!421170 m!1673209))

(assert (=> d!421170 m!1673209))

(declare-fun m!1673361 () Bool)

(assert (=> d!421170 m!1673361))

(declare-fun m!1673363 () Bool)

(assert (=> d!421170 m!1673363))

(assert (=> b!1450110 m!1673015))

(assert (=> b!1449807 d!421170))

(declare-fun bs!342532 () Bool)

(declare-fun d!421174 () Bool)

(assert (= bs!342532 (and d!421174 d!421054)))

(declare-fun lambda!63046 () Int)

(assert (=> bs!342532 (= lambda!63046 lambda!63031)))

(declare-fun bs!342533 () Bool)

(assert (= bs!342533 (and d!421174 d!421118)))

(assert (=> bs!342533 (= lambda!63046 lambda!63037)))

(declare-fun bs!342534 () Bool)

(assert (= bs!342534 (and d!421174 d!421134)))

(assert (=> bs!342534 (= (= (rules!11566 thiss!10022) (rules!11566 other!32)) (= lambda!63046 lambda!63045))))

(declare-fun b!1450114 () Bool)

(declare-fun e!925248 () Bool)

(assert (=> b!1450114 (= e!925248 true)))

(declare-fun b!1450113 () Bool)

(declare-fun e!925247 () Bool)

(assert (=> b!1450113 (= e!925247 e!925248)))

(declare-fun b!1450112 () Bool)

(declare-fun e!925246 () Bool)

(assert (=> b!1450112 (= e!925246 e!925247)))

(assert (=> d!421174 e!925246))

(assert (= b!1450113 b!1450114))

(assert (= b!1450112 b!1450113))

(assert (= (and d!421174 ((_ is Cons!15091) (rules!11566 thiss!10022))) b!1450112))

(assert (=> b!1450114 (< (dynLambda!6873 order!9077 (toValue!3964 (transformation!2657 (h!20492 (rules!11566 thiss!10022))))) (dynLambda!6874 order!9079 lambda!63046))))

(assert (=> b!1450114 (< (dynLambda!6875 order!9081 (toChars!3823 (transformation!2657 (h!20492 (rules!11566 thiss!10022))))) (dynLambda!6874 order!9079 lambda!63046))))

(assert (=> d!421174 true))

(declare-fun e!925245 () Bool)

(assert (=> d!421174 e!925245))

(declare-fun res!656610 () Bool)

(assert (=> d!421174 (=> (not res!656610) (not e!925245))))

(declare-fun lt!499907 () Bool)

(assert (=> d!421174 (= res!656610 (= lt!499907 (forall!3710 (list!6028 (tokens!2056 thiss!10022)) lambda!63046)))))

(assert (=> d!421174 (= lt!499907 (forall!3713 (tokens!2056 thiss!10022) lambda!63046))))

(assert (=> d!421174 (not (isEmpty!9432 (rules!11566 thiss!10022)))))

(assert (=> d!421174 (= (rulesProduceEachTokenIndividually!865 Lexer!2311 (rules!11566 thiss!10022) (tokens!2056 thiss!10022)) lt!499907)))

(declare-fun b!1450111 () Bool)

(assert (=> b!1450111 (= e!925245 (= lt!499907 (rulesProduceEachTokenIndividuallyList!738 Lexer!2311 (rules!11566 thiss!10022) (list!6028 (tokens!2056 thiss!10022)))))))

(assert (= (and d!421174 res!656610) b!1450111))

(assert (=> d!421174 m!1672957))

(assert (=> d!421174 m!1672957))

(declare-fun m!1673369 () Bool)

(assert (=> d!421174 m!1673369))

(declare-fun m!1673371 () Bool)

(assert (=> d!421174 m!1673371))

(assert (=> d!421174 m!1672959))

(assert (=> b!1450111 m!1672957))

(assert (=> b!1450111 m!1672957))

(declare-fun m!1673373 () Bool)

(assert (=> b!1450111 m!1673373))

(assert (=> b!1449941 d!421174))

(declare-fun d!421178 () Bool)

(assert (=> d!421178 (= (isEmpty!9436 (list!6028 (tokens!2056 thiss!10022))) ((_ is Nil!15090) (list!6028 (tokens!2056 thiss!10022))))))

(assert (=> d!421018 d!421178))

(assert (=> d!421018 d!421036))

(declare-fun d!421180 () Bool)

(declare-fun lt!499908 () Bool)

(assert (=> d!421180 (= lt!499908 (isEmpty!9436 (list!6030 (c!238734 (tokens!2056 thiss!10022)))))))

(assert (=> d!421180 (= lt!499908 (= (size!12350 (c!238734 (tokens!2056 thiss!10022))) 0))))

(assert (=> d!421180 (= (isEmpty!9437 (c!238734 (tokens!2056 thiss!10022))) lt!499908)))

(declare-fun bs!342535 () Bool)

(assert (= bs!342535 d!421180))

(assert (=> bs!342535 m!1672989))

(assert (=> bs!342535 m!1672989))

(declare-fun m!1673379 () Bool)

(assert (=> bs!342535 m!1673379))

(declare-fun m!1673381 () Bool)

(assert (=> bs!342535 m!1673381))

(assert (=> d!421018 d!421180))

(declare-fun d!421184 () Bool)

(declare-fun res!656617 () Bool)

(declare-fun e!925256 () Bool)

(assert (=> d!421184 (=> (not res!656617) (not e!925256))))

(assert (=> d!421184 (= res!656617 (<= (size!12349 (list!6032 (xs!7882 (c!238734 (tokens!2056 thiss!10022))))) 512))))

(assert (=> d!421184 (= (inv!20137 (c!238734 (tokens!2056 thiss!10022))) e!925256)))

(declare-fun b!1450127 () Bool)

(declare-fun res!656618 () Bool)

(assert (=> b!1450127 (=> (not res!656618) (not e!925256))))

(assert (=> b!1450127 (= res!656618 (= (csize!10513 (c!238734 (tokens!2056 thiss!10022))) (size!12349 (list!6032 (xs!7882 (c!238734 (tokens!2056 thiss!10022)))))))))

(declare-fun b!1450128 () Bool)

(assert (=> b!1450128 (= e!925256 (and (> (csize!10513 (c!238734 (tokens!2056 thiss!10022))) 0) (<= (csize!10513 (c!238734 (tokens!2056 thiss!10022))) 512)))))

(assert (= (and d!421184 res!656617) b!1450127))

(assert (= (and b!1450127 res!656618) b!1450128))

(assert (=> d!421184 m!1673227))

(assert (=> d!421184 m!1673227))

(declare-fun m!1673383 () Bool)

(assert (=> d!421184 m!1673383))

(assert (=> b!1450127 m!1673227))

(assert (=> b!1450127 m!1673227))

(assert (=> b!1450127 m!1673383))

(assert (=> b!1449881 d!421184))

(declare-fun d!421186 () Bool)

(declare-fun lt!499912 () Token!4976)

(assert (=> d!421186 (contains!2887 (list!6028 (tokens!2056 thiss!10022)) lt!499912)))

(declare-fun e!925268 () Token!4976)

(assert (=> d!421186 (= lt!499912 e!925268)))

(declare-fun c!238774 () Bool)

(assert (=> d!421186 (= c!238774 (and ((_ is Cons!15090) (list!6028 (tokens!2056 thiss!10022))) ((_ is Nil!15090) (t!130519 (list!6028 (tokens!2056 thiss!10022))))))))

(assert (=> d!421186 (not (isEmpty!9436 (list!6028 (tokens!2056 thiss!10022))))))

(assert (=> d!421186 (= (last!232 (list!6028 (tokens!2056 thiss!10022))) lt!499912)))

(declare-fun b!1450150 () Bool)

(assert (=> b!1450150 (= e!925268 (h!20491 (list!6028 (tokens!2056 thiss!10022))))))

(declare-fun b!1450151 () Bool)

(assert (=> b!1450151 (= e!925268 (last!232 (t!130519 (list!6028 (tokens!2056 thiss!10022)))))))

(assert (= (and d!421186 c!238774) b!1450150))

(assert (= (and d!421186 (not c!238774)) b!1450151))

(assert (=> d!421186 m!1672957))

(declare-fun m!1673405 () Bool)

(assert (=> d!421186 m!1673405))

(assert (=> d!421186 m!1672957))

(assert (=> d!421186 m!1672961))

(declare-fun m!1673407 () Bool)

(assert (=> b!1450151 m!1673407))

(assert (=> d!421030 d!421186))

(assert (=> d!421030 d!421036))

(declare-fun b!1450171 () Bool)

(declare-fun e!925285 () Token!4976)

(declare-fun last!234 (IArray!10287) Token!4976)

(assert (=> b!1450171 (= e!925285 (last!234 (xs!7882 (c!238734 (tokens!2056 thiss!10022)))))))

(declare-fun b!1450173 () Bool)

(assert (=> b!1450173 (= e!925285 (last!233 (right!13166 (c!238734 (tokens!2056 thiss!10022)))))))

(declare-fun lt!499929 () List!15156)

(assert (=> b!1450173 (= lt!499929 (list!6030 (left!12836 (c!238734 (tokens!2056 thiss!10022)))))))

(declare-fun lt!499930 () List!15156)

(assert (=> b!1450173 (= lt!499930 (list!6030 (right!13166 (c!238734 (tokens!2056 thiss!10022)))))))

(declare-fun lt!499932 () Unit!23999)

(declare-fun lemmaLastOfConcatIsLastOfRhs!13 (List!15156 List!15156) Unit!23999)

(assert (=> b!1450173 (= lt!499932 (lemmaLastOfConcatIsLastOfRhs!13 lt!499929 lt!499930))))

(declare-fun res!656638 () Bool)

(assert (=> b!1450173 (= res!656638 (isEmpty!9436 lt!499930))))

(declare-fun e!925286 () Bool)

(assert (=> b!1450173 (=> (not res!656638) (not e!925286))))

(declare-fun res!656640 () Bool)

(assert (=> b!1450173 (= res!656640 e!925286)))

(declare-fun e!925284 () Bool)

(assert (=> b!1450173 (=> res!656640 e!925284)))

(assert (=> b!1450173 e!925284))

(declare-fun lt!499933 () Unit!23999)

(assert (=> b!1450173 (= lt!499933 lt!499932)))

(declare-fun b!1450174 () Bool)

(declare-fun e!925283 () Bool)

(assert (=> b!1450174 (= e!925283 (= (last!232 (++!4051 lt!499929 lt!499930)) (last!232 lt!499930)))))

(declare-fun b!1450175 () Bool)

(declare-fun res!656639 () Bool)

(assert (=> b!1450175 (= res!656639 (not (isEmpty!9436 lt!499930)))))

(assert (=> b!1450175 (=> (not res!656639) (not e!925283))))

(assert (=> b!1450175 (= e!925284 e!925283)))

(declare-fun d!421196 () Bool)

(declare-fun lt!499931 () Token!4976)

(assert (=> d!421196 (= lt!499931 (last!232 (list!6030 (c!238734 (tokens!2056 thiss!10022)))))))

(assert (=> d!421196 (= lt!499931 e!925285)))

(declare-fun c!238780 () Bool)

(assert (=> d!421196 (= c!238780 ((_ is Leaf!7671) (c!238734 (tokens!2056 thiss!10022))))))

(assert (=> d!421196 (isBalanced!1534 (c!238734 (tokens!2056 thiss!10022)))))

(assert (=> d!421196 (= (last!233 (c!238734 (tokens!2056 thiss!10022))) lt!499931)))

(declare-fun b!1450172 () Bool)

(assert (=> b!1450172 (= e!925286 (= (last!232 (++!4051 lt!499929 lt!499930)) (last!232 lt!499929)))))

(assert (= (and d!421196 c!238780) b!1450171))

(assert (= (and d!421196 (not c!238780)) b!1450173))

(assert (= (and b!1450173 res!656638) b!1450172))

(assert (= (and b!1450173 (not res!656640)) b!1450175))

(assert (= (and b!1450175 res!656639) b!1450174))

(declare-fun m!1673425 () Bool)

(assert (=> b!1450174 m!1673425))

(assert (=> b!1450174 m!1673425))

(declare-fun m!1673427 () Bool)

(assert (=> b!1450174 m!1673427))

(declare-fun m!1673429 () Bool)

(assert (=> b!1450174 m!1673429))

(declare-fun m!1673431 () Bool)

(assert (=> b!1450175 m!1673431))

(assert (=> d!421196 m!1672989))

(assert (=> d!421196 m!1672989))

(declare-fun m!1673433 () Bool)

(assert (=> d!421196 m!1673433))

(assert (=> d!421196 m!1673107))

(declare-fun m!1673435 () Bool)

(assert (=> b!1450173 m!1673435))

(assert (=> b!1450173 m!1673221))

(declare-fun m!1673437 () Bool)

(assert (=> b!1450173 m!1673437))

(assert (=> b!1450173 m!1673223))

(assert (=> b!1450173 m!1673431))

(assert (=> b!1450172 m!1673425))

(assert (=> b!1450172 m!1673425))

(assert (=> b!1450172 m!1673427))

(declare-fun m!1673439 () Bool)

(assert (=> b!1450172 m!1673439))

(declare-fun m!1673441 () Bool)

(assert (=> b!1450171 m!1673441))

(assert (=> d!421030 d!421196))

(assert (=> d!421030 d!421018))

(declare-fun d!421206 () Bool)

(declare-fun res!656641 () Bool)

(declare-fun e!925287 () Bool)

(assert (=> d!421206 (=> (not res!656641) (not e!925287))))

(assert (=> d!421206 (= res!656641 (rulesValid!978 Lexer!2311 (rules!11566 other!32)))))

(assert (=> d!421206 (= (rulesInvariant!2148 Lexer!2311 (rules!11566 other!32)) e!925287)))

(declare-fun b!1450176 () Bool)

(assert (=> b!1450176 (= e!925287 (noDuplicateTag!978 Lexer!2311 (rules!11566 other!32) Nil!15093))))

(assert (= (and d!421206 res!656641) b!1450176))

(declare-fun m!1673443 () Bool)

(assert (=> d!421206 m!1673443))

(declare-fun m!1673445 () Bool)

(assert (=> b!1450176 m!1673445))

(assert (=> b!1449876 d!421206))

(declare-fun d!421208 () Bool)

(declare-fun res!656642 () Bool)

(declare-fun e!925288 () Bool)

(assert (=> d!421208 (=> (not res!656642) (not e!925288))))

(assert (=> d!421208 (= res!656642 (<= (size!12349 (list!6032 (xs!7882 (c!238734 (tokens!2056 other!32))))) 512))))

(assert (=> d!421208 (= (inv!20137 (c!238734 (tokens!2056 other!32))) e!925288)))

(declare-fun b!1450177 () Bool)

(declare-fun res!656643 () Bool)

(assert (=> b!1450177 (=> (not res!656643) (not e!925288))))

(assert (=> b!1450177 (= res!656643 (= (csize!10513 (c!238734 (tokens!2056 other!32))) (size!12349 (list!6032 (xs!7882 (c!238734 (tokens!2056 other!32)))))))))

(declare-fun b!1450178 () Bool)

(assert (=> b!1450178 (= e!925288 (and (> (csize!10513 (c!238734 (tokens!2056 other!32))) 0) (<= (csize!10513 (c!238734 (tokens!2056 other!32))) 512)))))

(assert (= (and d!421208 res!656642) b!1450177))

(assert (= (and b!1450177 res!656643) b!1450178))

(assert (=> d!421208 m!1673351))

(assert (=> d!421208 m!1673351))

(declare-fun m!1673447 () Bool)

(assert (=> d!421208 m!1673447))

(assert (=> b!1450177 m!1673351))

(assert (=> b!1450177 m!1673351))

(assert (=> b!1450177 m!1673447))

(assert (=> b!1449818 d!421208))

(assert (=> d!421096 d!421206))

(declare-fun d!421210 () Bool)

(assert (=> d!421210 (= (inv!20125 (tag!2921 (h!20492 (rules!11566 thiss!10022)))) (= (mod (str.len (value!85371 (tag!2921 (h!20492 (rules!11566 thiss!10022))))) 2) 0))))

(assert (=> b!1449968 d!421210))

(declare-fun d!421216 () Bool)

(declare-fun res!656648 () Bool)

(declare-fun e!925294 () Bool)

(assert (=> d!421216 (=> (not res!656648) (not e!925294))))

(declare-fun semiInverseModEq!1002 (Int Int) Bool)

(assert (=> d!421216 (= res!656648 (semiInverseModEq!1002 (toChars!3823 (transformation!2657 (h!20492 (rules!11566 thiss!10022)))) (toValue!3964 (transformation!2657 (h!20492 (rules!11566 thiss!10022))))))))

(assert (=> d!421216 (= (inv!20138 (transformation!2657 (h!20492 (rules!11566 thiss!10022)))) e!925294)))

(declare-fun b!1450187 () Bool)

(declare-fun equivClasses!961 (Int Int) Bool)

(assert (=> b!1450187 (= e!925294 (equivClasses!961 (toChars!3823 (transformation!2657 (h!20492 (rules!11566 thiss!10022)))) (toValue!3964 (transformation!2657 (h!20492 (rules!11566 thiss!10022))))))))

(assert (= (and d!421216 res!656648) b!1450187))

(declare-fun m!1673463 () Bool)

(assert (=> d!421216 m!1673463))

(declare-fun m!1673465 () Bool)

(assert (=> b!1450187 m!1673465))

(assert (=> b!1449968 d!421216))

(declare-fun d!421220 () Bool)

(declare-fun lt!499937 () Bool)

(assert (=> d!421220 (= lt!499937 (select (content!2231 (t!130519 lt!499810)) lt!499806))))

(declare-fun e!925295 () Bool)

(assert (=> d!421220 (= lt!499937 e!925295)))

(declare-fun res!656650 () Bool)

(assert (=> d!421220 (=> (not res!656650) (not e!925295))))

(assert (=> d!421220 (= res!656650 ((_ is Cons!15090) (t!130519 lt!499810)))))

(assert (=> d!421220 (= (contains!2887 (t!130519 lt!499810) lt!499806) lt!499937)))

(declare-fun b!1450188 () Bool)

(declare-fun e!925296 () Bool)

(assert (=> b!1450188 (= e!925295 e!925296)))

(declare-fun res!656649 () Bool)

(assert (=> b!1450188 (=> res!656649 e!925296)))

(assert (=> b!1450188 (= res!656649 (= (h!20491 (t!130519 lt!499810)) lt!499806))))

(declare-fun b!1450189 () Bool)

(assert (=> b!1450189 (= e!925296 (contains!2887 (t!130519 (t!130519 lt!499810)) lt!499806))))

(assert (= (and d!421220 res!656650) b!1450188))

(assert (= (and b!1450188 (not res!656649)) b!1450189))

(declare-fun m!1673467 () Bool)

(assert (=> d!421220 m!1673467))

(declare-fun m!1673469 () Bool)

(assert (=> d!421220 m!1673469))

(declare-fun m!1673471 () Bool)

(assert (=> b!1450189 m!1673471))

(assert (=> b!1449887 d!421220))

(declare-fun d!421222 () Bool)

(assert (=> d!421222 (= (inv!20125 (tag!2921 (h!20492 (rules!11566 other!32)))) (= (mod (str.len (value!85371 (tag!2921 (h!20492 (rules!11566 other!32))))) 2) 0))))

(assert (=> b!1449954 d!421222))

(declare-fun d!421224 () Bool)

(declare-fun res!656651 () Bool)

(declare-fun e!925297 () Bool)

(assert (=> d!421224 (=> (not res!656651) (not e!925297))))

(assert (=> d!421224 (= res!656651 (semiInverseModEq!1002 (toChars!3823 (transformation!2657 (h!20492 (rules!11566 other!32)))) (toValue!3964 (transformation!2657 (h!20492 (rules!11566 other!32))))))))

(assert (=> d!421224 (= (inv!20138 (transformation!2657 (h!20492 (rules!11566 other!32)))) e!925297)))

(declare-fun b!1450190 () Bool)

(assert (=> b!1450190 (= e!925297 (equivClasses!961 (toChars!3823 (transformation!2657 (h!20492 (rules!11566 other!32)))) (toValue!3964 (transformation!2657 (h!20492 (rules!11566 other!32))))))))

(assert (= (and d!421224 res!656651) b!1450190))

(declare-fun m!1673473 () Bool)

(assert (=> d!421224 m!1673473))

(declare-fun m!1673475 () Bool)

(assert (=> b!1450190 m!1673475))

(assert (=> b!1449954 d!421224))

(declare-fun d!421226 () Bool)

(declare-fun res!656656 () Bool)

(declare-fun e!925302 () Bool)

(assert (=> d!421226 (=> res!656656 e!925302)))

(assert (=> d!421226 (= res!656656 ((_ is Nil!15091) (rules!11566 thiss!10022)))))

(assert (=> d!421226 (= (noDuplicateTag!978 Lexer!2311 (rules!11566 thiss!10022) Nil!15093) e!925302)))

(declare-fun b!1450195 () Bool)

(declare-fun e!925303 () Bool)

(assert (=> b!1450195 (= e!925302 e!925303)))

(declare-fun res!656657 () Bool)

(assert (=> b!1450195 (=> (not res!656657) (not e!925303))))

(declare-fun contains!2889 (List!15159 String!17991) Bool)

(assert (=> b!1450195 (= res!656657 (not (contains!2889 Nil!15093 (tag!2921 (h!20492 (rules!11566 thiss!10022))))))))

(declare-fun b!1450196 () Bool)

(assert (=> b!1450196 (= e!925303 (noDuplicateTag!978 Lexer!2311 (t!130520 (rules!11566 thiss!10022)) (Cons!15093 (tag!2921 (h!20492 (rules!11566 thiss!10022))) Nil!15093)))))

(assert (= (and d!421226 (not res!656656)) b!1450195))

(assert (= (and b!1450195 res!656657) b!1450196))

(declare-fun m!1673477 () Bool)

(assert (=> b!1450195 m!1673477))

(declare-fun m!1673479 () Bool)

(assert (=> b!1450196 m!1673479))

(assert (=> b!1449890 d!421226))

(declare-fun d!421228 () Bool)

(declare-fun c!238783 () Bool)

(assert (=> d!421228 (= c!238783 ((_ is Node!5141) (left!12836 (c!238734 (tokens!2056 other!32)))))))

(declare-fun e!925304 () Bool)

(assert (=> d!421228 (= (inv!20130 (left!12836 (c!238734 (tokens!2056 other!32)))) e!925304)))

(declare-fun b!1450197 () Bool)

(assert (=> b!1450197 (= e!925304 (inv!20136 (left!12836 (c!238734 (tokens!2056 other!32)))))))

(declare-fun b!1450198 () Bool)

(declare-fun e!925305 () Bool)

(assert (=> b!1450198 (= e!925304 e!925305)))

(declare-fun res!656658 () Bool)

(assert (=> b!1450198 (= res!656658 (not ((_ is Leaf!7671) (left!12836 (c!238734 (tokens!2056 other!32))))))))

(assert (=> b!1450198 (=> res!656658 e!925305)))

(declare-fun b!1450199 () Bool)

(assert (=> b!1450199 (= e!925305 (inv!20137 (left!12836 (c!238734 (tokens!2056 other!32)))))))

(assert (= (and d!421228 c!238783) b!1450197))

(assert (= (and d!421228 (not c!238783)) b!1450198))

(assert (= (and b!1450198 (not res!656658)) b!1450199))

(declare-fun m!1673481 () Bool)

(assert (=> b!1450197 m!1673481))

(declare-fun m!1673483 () Bool)

(assert (=> b!1450199 m!1673483))

(assert (=> b!1449970 d!421228))

(declare-fun d!421230 () Bool)

(declare-fun c!238784 () Bool)

(assert (=> d!421230 (= c!238784 ((_ is Node!5141) (right!13166 (c!238734 (tokens!2056 other!32)))))))

(declare-fun e!925306 () Bool)

(assert (=> d!421230 (= (inv!20130 (right!13166 (c!238734 (tokens!2056 other!32)))) e!925306)))

(declare-fun b!1450200 () Bool)

(assert (=> b!1450200 (= e!925306 (inv!20136 (right!13166 (c!238734 (tokens!2056 other!32)))))))

(declare-fun b!1450201 () Bool)

(declare-fun e!925307 () Bool)

(assert (=> b!1450201 (= e!925306 e!925307)))

(declare-fun res!656659 () Bool)

(assert (=> b!1450201 (= res!656659 (not ((_ is Leaf!7671) (right!13166 (c!238734 (tokens!2056 other!32))))))))

(assert (=> b!1450201 (=> res!656659 e!925307)))

(declare-fun b!1450202 () Bool)

(assert (=> b!1450202 (= e!925307 (inv!20137 (right!13166 (c!238734 (tokens!2056 other!32)))))))

(assert (= (and d!421230 c!238784) b!1450200))

(assert (= (and d!421230 (not c!238784)) b!1450201))

(assert (= (and b!1450201 (not res!656659)) b!1450202))

(declare-fun m!1673485 () Bool)

(assert (=> b!1450200 m!1673485))

(declare-fun m!1673487 () Bool)

(assert (=> b!1450202 m!1673487))

(assert (=> b!1449970 d!421230))

(declare-fun d!421232 () Bool)

(declare-fun res!656675 () Bool)

(declare-fun e!925312 () Bool)

(assert (=> d!421232 (=> res!656675 e!925312)))

(assert (=> d!421232 (= res!656675 (not ((_ is Node!5141) (c!238734 (tokens!2056 other!32)))))))

(assert (=> d!421232 (= (isBalanced!1534 (c!238734 (tokens!2056 other!32))) e!925312)))

(declare-fun b!1450215 () Bool)

(declare-fun e!925313 () Bool)

(assert (=> b!1450215 (= e!925313 (not (isEmpty!9437 (right!13166 (c!238734 (tokens!2056 other!32))))))))

(declare-fun b!1450216 () Bool)

(declare-fun res!656672 () Bool)

(assert (=> b!1450216 (=> (not res!656672) (not e!925313))))

(assert (=> b!1450216 (= res!656672 (not (isEmpty!9437 (left!12836 (c!238734 (tokens!2056 other!32))))))))

(declare-fun b!1450217 () Bool)

(declare-fun res!656677 () Bool)

(assert (=> b!1450217 (=> (not res!656677) (not e!925313))))

(assert (=> b!1450217 (= res!656677 (<= (- (height!764 (left!12836 (c!238734 (tokens!2056 other!32)))) (height!764 (right!13166 (c!238734 (tokens!2056 other!32))))) 1))))

(declare-fun b!1450218 () Bool)

(declare-fun res!656673 () Bool)

(assert (=> b!1450218 (=> (not res!656673) (not e!925313))))

(assert (=> b!1450218 (= res!656673 (isBalanced!1534 (right!13166 (c!238734 (tokens!2056 other!32)))))))

(declare-fun b!1450219 () Bool)

(assert (=> b!1450219 (= e!925312 e!925313)))

(declare-fun res!656676 () Bool)

(assert (=> b!1450219 (=> (not res!656676) (not e!925313))))

(assert (=> b!1450219 (= res!656676 (<= (- 1) (- (height!764 (left!12836 (c!238734 (tokens!2056 other!32)))) (height!764 (right!13166 (c!238734 (tokens!2056 other!32)))))))))

(declare-fun b!1450220 () Bool)

(declare-fun res!656674 () Bool)

(assert (=> b!1450220 (=> (not res!656674) (not e!925313))))

(assert (=> b!1450220 (= res!656674 (isBalanced!1534 (left!12836 (c!238734 (tokens!2056 other!32)))))))

(assert (= (and d!421232 (not res!656675)) b!1450219))

(assert (= (and b!1450219 res!656676) b!1450217))

(assert (= (and b!1450217 res!656677) b!1450220))

(assert (= (and b!1450220 res!656674) b!1450218))

(assert (= (and b!1450218 res!656673) b!1450216))

(assert (= (and b!1450216 res!656672) b!1450215))

(declare-fun m!1673489 () Bool)

(assert (=> b!1450217 m!1673489))

(declare-fun m!1673491 () Bool)

(assert (=> b!1450217 m!1673491))

(declare-fun m!1673493 () Bool)

(assert (=> b!1450216 m!1673493))

(declare-fun m!1673495 () Bool)

(assert (=> b!1450220 m!1673495))

(assert (=> b!1450219 m!1673489))

(assert (=> b!1450219 m!1673491))

(declare-fun m!1673497 () Bool)

(assert (=> b!1450215 m!1673497))

(declare-fun m!1673499 () Bool)

(assert (=> b!1450218 m!1673499))

(assert (=> d!421068 d!421232))

(declare-fun d!421234 () Bool)

(declare-fun res!656678 () Bool)

(declare-fun e!925314 () Bool)

(assert (=> d!421234 (=> (not res!656678) (not e!925314))))

(assert (=> d!421234 (= res!656678 (= (csize!10512 (c!238734 (tokens!2056 other!32))) (+ (size!12350 (left!12836 (c!238734 (tokens!2056 other!32)))) (size!12350 (right!13166 (c!238734 (tokens!2056 other!32)))))))))

(assert (=> d!421234 (= (inv!20136 (c!238734 (tokens!2056 other!32))) e!925314)))

(declare-fun b!1450221 () Bool)

(declare-fun res!656679 () Bool)

(assert (=> b!1450221 (=> (not res!656679) (not e!925314))))

(assert (=> b!1450221 (= res!656679 (and (not (= (left!12836 (c!238734 (tokens!2056 other!32))) Empty!5141)) (not (= (right!13166 (c!238734 (tokens!2056 other!32))) Empty!5141))))))

(declare-fun b!1450222 () Bool)

(declare-fun res!656680 () Bool)

(assert (=> b!1450222 (=> (not res!656680) (not e!925314))))

(assert (=> b!1450222 (= res!656680 (= (cheight!5352 (c!238734 (tokens!2056 other!32))) (+ (max!0 (height!764 (left!12836 (c!238734 (tokens!2056 other!32)))) (height!764 (right!13166 (c!238734 (tokens!2056 other!32))))) 1)))))

(declare-fun b!1450223 () Bool)

(assert (=> b!1450223 (= e!925314 (<= 0 (cheight!5352 (c!238734 (tokens!2056 other!32)))))))

(assert (= (and d!421234 res!656678) b!1450221))

(assert (= (and b!1450221 res!656679) b!1450222))

(assert (= (and b!1450222 res!656680) b!1450223))

(declare-fun m!1673501 () Bool)

(assert (=> d!421234 m!1673501))

(declare-fun m!1673503 () Bool)

(assert (=> d!421234 m!1673503))

(assert (=> b!1450222 m!1673489))

(assert (=> b!1450222 m!1673491))

(assert (=> b!1450222 m!1673489))

(assert (=> b!1450222 m!1673491))

(declare-fun m!1673505 () Bool)

(assert (=> b!1450222 m!1673505))

(assert (=> b!1449816 d!421234))

(declare-fun d!421236 () Bool)

(assert (=> d!421236 (= (separableTokens!249 Lexer!2311 (tokens!2056 thiss!10022) (rules!11566 thiss!10022)) (tokensListTwoByTwoPredicateSeparable!130 Lexer!2311 (tokens!2056 thiss!10022) 0 (rules!11566 thiss!10022)))))

(declare-fun bs!342540 () Bool)

(assert (= bs!342540 d!421236))

(declare-fun m!1673507 () Bool)

(assert (=> bs!342540 m!1673507))

(assert (=> b!1449942 d!421236))

(assert (=> b!1449775 d!421052))

(declare-fun d!421238 () Bool)

(declare-fun lt!499940 () Bool)

(declare-fun isEmpty!9441 (List!15154) Bool)

(assert (=> d!421238 (= lt!499940 (isEmpty!9441 (list!6031 (_2!7984 lt!499846))))))

(declare-fun isEmpty!9442 (Conc!5140) Bool)

(assert (=> d!421238 (= lt!499940 (isEmpty!9442 (c!238732 (_2!7984 lt!499846))))))

(assert (=> d!421238 (= (isEmpty!9438 (_2!7984 lt!499846)) lt!499940)))

(declare-fun bs!342541 () Bool)

(assert (= bs!342541 d!421238))

(declare-fun m!1673509 () Bool)

(assert (=> bs!342541 m!1673509))

(assert (=> bs!342541 m!1673509))

(declare-fun m!1673511 () Bool)

(assert (=> bs!342541 m!1673511))

(declare-fun m!1673513 () Bool)

(assert (=> bs!342541 m!1673513))

(assert (=> b!1449808 d!421238))

(declare-fun d!421240 () Bool)

(declare-fun c!238787 () Bool)

(assert (=> d!421240 (= c!238787 ((_ is Nil!15090) lt!499810))))

(declare-fun e!925317 () (InoxSet Token!4976))

(assert (=> d!421240 (= (content!2231 lt!499810) e!925317)))

(declare-fun b!1450228 () Bool)

(assert (=> b!1450228 (= e!925317 ((as const (Array Token!4976 Bool)) false))))

(declare-fun b!1450229 () Bool)

(assert (=> b!1450229 (= e!925317 ((_ map or) (store ((as const (Array Token!4976 Bool)) false) (h!20491 lt!499810) true) (content!2231 (t!130519 lt!499810))))))

(assert (= (and d!421240 c!238787) b!1450228))

(assert (= (and d!421240 (not c!238787)) b!1450229))

(declare-fun m!1673515 () Bool)

(assert (=> b!1450229 m!1673515))

(assert (=> b!1450229 m!1673467))

(assert (=> d!421082 d!421240))

(declare-fun d!421242 () Bool)

(declare-fun lt!499941 () Bool)

(assert (=> d!421242 (= lt!499941 (isEmpty!9441 (list!6031 (_2!7984 (lex!1061 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809)))))))))

(assert (=> d!421242 (= lt!499941 (isEmpty!9442 (c!238732 (_2!7984 (lex!1061 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809)))))))))

(assert (=> d!421242 (= (isEmpty!9438 (_2!7984 (lex!1061 Lexer!2311 (rules!11566 thiss!10022) (print!1088 Lexer!2311 (singletonSeq!1252 lt!499809))))) lt!499941)))

(declare-fun bs!342542 () Bool)

(assert (= bs!342542 d!421242))

(declare-fun m!1673517 () Bool)

(assert (=> bs!342542 m!1673517))

(assert (=> bs!342542 m!1673517))

(declare-fun m!1673519 () Bool)

(assert (=> bs!342542 m!1673519))

(declare-fun m!1673521 () Bool)

(assert (=> bs!342542 m!1673521))

(assert (=> b!1449809 d!421242))

(assert (=> b!1449809 d!421110))

(assert (=> b!1449809 d!421114))

(assert (=> b!1449809 d!421104))

(assert (=> d!421090 d!421084))

(assert (=> d!421040 d!421046))

(declare-fun d!421244 () Bool)

(assert (=> d!421244 (rulesProduceIndividualToken!1232 Lexer!2311 (rules!11566 thiss!10022) lt!499809)))

(assert (=> d!421244 true))

(declare-fun _$77!582 () Unit!23999)

(assert (=> d!421244 (= (choose!8925 Lexer!2311 (rules!11566 thiss!10022) lt!499805 lt!499809) _$77!582)))

(declare-fun bs!342547 () Bool)

(assert (= bs!342547 d!421244))

(assert (=> bs!342547 m!1672947))

(assert (=> d!421040 d!421244))

(assert (=> d!421040 d!421038))

(declare-fun d!421262 () Bool)

(declare-fun res!656708 () Bool)

(declare-fun e!925349 () Bool)

(assert (=> d!421262 (=> res!656708 e!925349)))

(assert (=> d!421262 (= res!656708 ((_ is Nil!15090) lt!499810))))

(assert (=> d!421262 (= (forall!3710 lt!499810 lambda!63031) e!925349)))

(declare-fun b!1450272 () Bool)

(declare-fun e!925350 () Bool)

(assert (=> b!1450272 (= e!925349 e!925350)))

(declare-fun res!656709 () Bool)

(assert (=> b!1450272 (=> (not res!656709) (not e!925350))))

(declare-fun dynLambda!6876 (Int Token!4976) Bool)

(assert (=> b!1450272 (= res!656709 (dynLambda!6876 lambda!63031 (h!20491 lt!499810)))))

(declare-fun b!1450273 () Bool)

(assert (=> b!1450273 (= e!925350 (forall!3710 (t!130519 lt!499810) lambda!63031))))

(assert (= (and d!421262 (not res!656708)) b!1450272))

(assert (= (and b!1450272 res!656709) b!1450273))

(declare-fun b_lambda!45187 () Bool)

(assert (=> (not b_lambda!45187) (not b!1450272)))

(declare-fun m!1673583 () Bool)

(assert (=> b!1450272 m!1673583))

(declare-fun m!1673587 () Bool)

(assert (=> b!1450273 m!1673587))

(assert (=> d!421054 d!421262))

(assert (=> d!421054 d!421038))

(declare-fun d!421266 () Bool)

(assert (=> d!421266 (= (head!2962 (list!6028 (tokens!2056 other!32))) (h!20491 (list!6028 (tokens!2056 other!32))))))

(assert (=> d!421024 d!421266))

(assert (=> d!421024 d!421020))

(declare-fun d!421268 () Bool)

(declare-fun lt!499968 () Token!4976)

(assert (=> d!421268 (= lt!499968 (head!2962 (list!6030 (c!238734 (tokens!2056 other!32)))))))

(declare-fun e!925360 () Token!4976)

(assert (=> d!421268 (= lt!499968 e!925360)))

(declare-fun c!238796 () Bool)

(assert (=> d!421268 (= c!238796 ((_ is Leaf!7671) (c!238734 (tokens!2056 other!32))))))

(assert (=> d!421268 (isBalanced!1534 (c!238734 (tokens!2056 other!32)))))

(assert (=> d!421268 (= (head!2963 (c!238734 (tokens!2056 other!32))) lt!499968)))

(declare-fun b!1450287 () Bool)

(declare-fun apply!3901 (IArray!10287 Int) Token!4976)

(assert (=> b!1450287 (= e!925360 (apply!3901 (xs!7882 (c!238734 (tokens!2056 other!32))) 0))))

(declare-fun b!1450288 () Bool)

(assert (=> b!1450288 (= e!925360 (head!2963 (left!12836 (c!238734 (tokens!2056 other!32)))))))

(assert (= (and d!421268 c!238796) b!1450287))

(assert (= (and d!421268 (not c!238796)) b!1450288))

(assert (=> d!421268 m!1672965))

(assert (=> d!421268 m!1672965))

(declare-fun m!1673611 () Bool)

(assert (=> d!421268 m!1673611))

(assert (=> d!421268 m!1673065))

(declare-fun m!1673613 () Bool)

(assert (=> b!1450287 m!1673613))

(declare-fun m!1673615 () Bool)

(assert (=> b!1450288 m!1673615))

(assert (=> d!421024 d!421268))

(assert (=> d!421024 d!421088))

(declare-fun d!421282 () Bool)

(declare-fun res!656722 () Bool)

(declare-fun e!925361 () Bool)

(assert (=> d!421282 (=> res!656722 e!925361)))

(assert (=> d!421282 (= res!656722 (not ((_ is Node!5141) (c!238734 (tokens!2056 thiss!10022)))))))

(assert (=> d!421282 (= (isBalanced!1534 (c!238734 (tokens!2056 thiss!10022))) e!925361)))

(declare-fun b!1450289 () Bool)

(declare-fun e!925362 () Bool)

(assert (=> b!1450289 (= e!925362 (not (isEmpty!9437 (right!13166 (c!238734 (tokens!2056 thiss!10022))))))))

(declare-fun b!1450290 () Bool)

(declare-fun res!656719 () Bool)

(assert (=> b!1450290 (=> (not res!656719) (not e!925362))))

(assert (=> b!1450290 (= res!656719 (not (isEmpty!9437 (left!12836 (c!238734 (tokens!2056 thiss!10022))))))))

(declare-fun b!1450291 () Bool)

(declare-fun res!656724 () Bool)

(assert (=> b!1450291 (=> (not res!656724) (not e!925362))))

(assert (=> b!1450291 (= res!656724 (<= (- (height!764 (left!12836 (c!238734 (tokens!2056 thiss!10022)))) (height!764 (right!13166 (c!238734 (tokens!2056 thiss!10022))))) 1))))

(declare-fun b!1450292 () Bool)

(declare-fun res!656720 () Bool)

(assert (=> b!1450292 (=> (not res!656720) (not e!925362))))

(assert (=> b!1450292 (= res!656720 (isBalanced!1534 (right!13166 (c!238734 (tokens!2056 thiss!10022)))))))

(declare-fun b!1450293 () Bool)

(assert (=> b!1450293 (= e!925361 e!925362)))

(declare-fun res!656723 () Bool)

(assert (=> b!1450293 (=> (not res!656723) (not e!925362))))

(assert (=> b!1450293 (= res!656723 (<= (- 1) (- (height!764 (left!12836 (c!238734 (tokens!2056 thiss!10022)))) (height!764 (right!13166 (c!238734 (tokens!2056 thiss!10022)))))))))

(declare-fun b!1450294 () Bool)

(declare-fun res!656721 () Bool)

(assert (=> b!1450294 (=> (not res!656721) (not e!925362))))

(assert (=> b!1450294 (= res!656721 (isBalanced!1534 (left!12836 (c!238734 (tokens!2056 thiss!10022)))))))

(assert (= (and d!421282 (not res!656722)) b!1450293))

(assert (= (and b!1450293 res!656723) b!1450291))

(assert (= (and b!1450291 res!656724) b!1450294))

(assert (= (and b!1450294 res!656721) b!1450292))

(assert (= (and b!1450292 res!656720) b!1450290))

(assert (= (and b!1450290 res!656719) b!1450289))

(assert (=> b!1450291 m!1673233))

(assert (=> b!1450291 m!1673235))

(declare-fun m!1673617 () Bool)

(assert (=> b!1450290 m!1673617))

(declare-fun m!1673619 () Bool)

(assert (=> b!1450294 m!1673619))

(assert (=> b!1450293 m!1673233))

(assert (=> b!1450293 m!1673235))

(declare-fun m!1673621 () Bool)

(assert (=> b!1450289 m!1673621))

(declare-fun m!1673623 () Bool)

(assert (=> b!1450292 m!1673623))

(assert (=> d!421086 d!421282))

(assert (=> b!1449873 d!421084))

(declare-fun d!421284 () Bool)

(assert (=> d!421284 (= (inv!20139 (xs!7882 (c!238734 (tokens!2056 other!32)))) (<= (size!12349 (innerList!5201 (xs!7882 (c!238734 (tokens!2056 other!32))))) 2147483647))))

(declare-fun bs!342551 () Bool)

(assert (= bs!342551 d!421284))

(declare-fun m!1673625 () Bool)

(assert (=> bs!342551 m!1673625))

(assert (=> b!1449971 d!421284))

(assert (=> b!1449874 d!421174))

(declare-fun d!421286 () Bool)

(declare-fun c!238797 () Bool)

(assert (=> d!421286 (= c!238797 ((_ is Node!5141) (left!12836 (c!238734 (tokens!2056 thiss!10022)))))))

(declare-fun e!925363 () Bool)

(assert (=> d!421286 (= (inv!20130 (left!12836 (c!238734 (tokens!2056 thiss!10022)))) e!925363)))

(declare-fun b!1450297 () Bool)

(assert (=> b!1450297 (= e!925363 (inv!20136 (left!12836 (c!238734 (tokens!2056 thiss!10022)))))))

(declare-fun b!1450298 () Bool)

(declare-fun e!925364 () Bool)

(assert (=> b!1450298 (= e!925363 e!925364)))

(declare-fun res!656725 () Bool)

(assert (=> b!1450298 (= res!656725 (not ((_ is Leaf!7671) (left!12836 (c!238734 (tokens!2056 thiss!10022))))))))

(assert (=> b!1450298 (=> res!656725 e!925364)))

(declare-fun b!1450299 () Bool)

(assert (=> b!1450299 (= e!925364 (inv!20137 (left!12836 (c!238734 (tokens!2056 thiss!10022)))))))

(assert (= (and d!421286 c!238797) b!1450297))

(assert (= (and d!421286 (not c!238797)) b!1450298))

(assert (= (and b!1450298 (not res!656725)) b!1450299))

(declare-fun m!1673631 () Bool)

(assert (=> b!1450297 m!1673631))

(declare-fun m!1673633 () Bool)

(assert (=> b!1450299 m!1673633))

(assert (=> b!1449964 d!421286))

(declare-fun d!421290 () Bool)

(declare-fun c!238798 () Bool)

(assert (=> d!421290 (= c!238798 ((_ is Node!5141) (right!13166 (c!238734 (tokens!2056 thiss!10022)))))))

(declare-fun e!925365 () Bool)

(assert (=> d!421290 (= (inv!20130 (right!13166 (c!238734 (tokens!2056 thiss!10022)))) e!925365)))

(declare-fun b!1450300 () Bool)

(assert (=> b!1450300 (= e!925365 (inv!20136 (right!13166 (c!238734 (tokens!2056 thiss!10022)))))))

(declare-fun b!1450301 () Bool)

(declare-fun e!925366 () Bool)

(assert (=> b!1450301 (= e!925365 e!925366)))

(declare-fun res!656726 () Bool)

(assert (=> b!1450301 (= res!656726 (not ((_ is Leaf!7671) (right!13166 (c!238734 (tokens!2056 thiss!10022))))))))

(assert (=> b!1450301 (=> res!656726 e!925366)))

(declare-fun b!1450302 () Bool)

(assert (=> b!1450302 (= e!925366 (inv!20137 (right!13166 (c!238734 (tokens!2056 thiss!10022)))))))

(assert (= (and d!421290 c!238798) b!1450300))

(assert (= (and d!421290 (not c!238798)) b!1450301))

(assert (= (and b!1450301 (not res!656726)) b!1450302))

(declare-fun m!1673635 () Bool)

(assert (=> b!1450300 m!1673635))

(declare-fun m!1673637 () Bool)

(assert (=> b!1450302 m!1673637))

(assert (=> b!1449964 d!421290))

(assert (=> b!1449943 d!421134))

(declare-fun d!421292 () Bool)

(assert (=> d!421292 (= (inv!20139 (xs!7882 (c!238734 (tokens!2056 thiss!10022)))) (<= (size!12349 (innerList!5201 (xs!7882 (c!238734 (tokens!2056 thiss!10022))))) 2147483647))))

(declare-fun bs!342553 () Bool)

(assert (= bs!342553 d!421292))

(declare-fun m!1673639 () Bool)

(assert (=> bs!342553 m!1673639))

(assert (=> b!1449965 d!421292))

(assert (=> b!1449875 d!421236))

(assert (=> b!1449944 d!421152))

(declare-fun b!1450311 () Bool)

(declare-fun b_free!36063 () Bool)

(declare-fun b_next!36767 () Bool)

(assert (=> b!1450311 (= b_free!36063 (not b_next!36767))))

(declare-fun tp!409098 () Bool)

(declare-fun b_and!98127 () Bool)

(assert (=> b!1450311 (= tp!409098 b_and!98127)))

(declare-fun b_free!36065 () Bool)

(declare-fun b_next!36769 () Bool)

(assert (=> b!1450311 (= b_free!36065 (not b_next!36769))))

(declare-fun tp!409099 () Bool)

(declare-fun b_and!98129 () Bool)

(assert (=> b!1450311 (= tp!409099 b_and!98129)))

(declare-fun e!925372 () Bool)

(assert (=> b!1450311 (= e!925372 (and tp!409098 tp!409099))))

(declare-fun b!1450310 () Bool)

(declare-fun tp!409100 () Bool)

(declare-fun e!925371 () Bool)

(assert (=> b!1450310 (= e!925371 (and tp!409100 (inv!20125 (tag!2921 (h!20492 (t!130520 (rules!11566 other!32))))) (inv!20138 (transformation!2657 (h!20492 (t!130520 (rules!11566 other!32))))) e!925372))))

(declare-fun b!1450309 () Bool)

(declare-fun e!925374 () Bool)

(declare-fun tp!409097 () Bool)

(assert (=> b!1450309 (= e!925374 (and e!925371 tp!409097))))

(assert (=> b!1449953 (= tp!409071 e!925374)))

(assert (= b!1450310 b!1450311))

(assert (= b!1450309 b!1450310))

(assert (= (and b!1449953 ((_ is Cons!15091) (t!130520 (rules!11566 other!32)))) b!1450309))

(declare-fun m!1673653 () Bool)

(assert (=> b!1450310 m!1673653))

(declare-fun m!1673655 () Bool)

(assert (=> b!1450310 m!1673655))

(declare-fun e!925383 () Bool)

(assert (=> b!1449968 (= tp!409087 e!925383)))

(declare-fun b!1450332 () Bool)

(declare-fun tp_is_empty!6869 () Bool)

(assert (=> b!1450332 (= e!925383 tp_is_empty!6869)))

(declare-fun b!1450333 () Bool)

(declare-fun tp!409121 () Bool)

(declare-fun tp!409119 () Bool)

(assert (=> b!1450333 (= e!925383 (and tp!409121 tp!409119))))

(declare-fun b!1450335 () Bool)

(declare-fun tp!409117 () Bool)

(declare-fun tp!409120 () Bool)

(assert (=> b!1450335 (= e!925383 (and tp!409117 tp!409120))))

(declare-fun b!1450334 () Bool)

(declare-fun tp!409118 () Bool)

(assert (=> b!1450334 (= e!925383 tp!409118)))

(assert (= (and b!1449968 ((_ is ElementMatch!3971) (regex!2657 (h!20492 (rules!11566 thiss!10022))))) b!1450332))

(assert (= (and b!1449968 ((_ is Concat!6719) (regex!2657 (h!20492 (rules!11566 thiss!10022))))) b!1450333))

(assert (= (and b!1449968 ((_ is Star!3971) (regex!2657 (h!20492 (rules!11566 thiss!10022))))) b!1450334))

(assert (= (and b!1449968 ((_ is Union!3971) (regex!2657 (h!20492 (rules!11566 thiss!10022))))) b!1450335))

(declare-fun e!925384 () Bool)

(assert (=> b!1449954 (= tp!409074 e!925384)))

(declare-fun b!1450336 () Bool)

(assert (=> b!1450336 (= e!925384 tp_is_empty!6869)))

(declare-fun b!1450337 () Bool)

(declare-fun tp!409126 () Bool)

(declare-fun tp!409124 () Bool)

(assert (=> b!1450337 (= e!925384 (and tp!409126 tp!409124))))

(declare-fun b!1450339 () Bool)

(declare-fun tp!409122 () Bool)

(declare-fun tp!409125 () Bool)

(assert (=> b!1450339 (= e!925384 (and tp!409122 tp!409125))))

(declare-fun b!1450338 () Bool)

(declare-fun tp!409123 () Bool)

(assert (=> b!1450338 (= e!925384 tp!409123)))

(assert (= (and b!1449954 ((_ is ElementMatch!3971) (regex!2657 (h!20492 (rules!11566 other!32))))) b!1450336))

(assert (= (and b!1449954 ((_ is Concat!6719) (regex!2657 (h!20492 (rules!11566 other!32))))) b!1450337))

(assert (= (and b!1449954 ((_ is Star!3971) (regex!2657 (h!20492 (rules!11566 other!32))))) b!1450338))

(assert (= (and b!1449954 ((_ is Union!3971) (regex!2657 (h!20492 (rules!11566 other!32))))) b!1450339))

(declare-fun tp!409127 () Bool)

(declare-fun tp!409129 () Bool)

(declare-fun e!925387 () Bool)

(declare-fun b!1450342 () Bool)

(assert (=> b!1450342 (= e!925387 (and (inv!20130 (left!12836 (left!12836 (c!238734 (tokens!2056 other!32))))) tp!409129 (inv!20130 (right!13166 (left!12836 (c!238734 (tokens!2056 other!32))))) tp!409127))))

(declare-fun b!1450344 () Bool)

(declare-fun e!925388 () Bool)

(declare-fun tp!409128 () Bool)

(assert (=> b!1450344 (= e!925388 tp!409128)))

(declare-fun b!1450343 () Bool)

(assert (=> b!1450343 (= e!925387 (and (inv!20139 (xs!7882 (left!12836 (c!238734 (tokens!2056 other!32))))) e!925388))))

(assert (=> b!1449970 (= tp!409090 (and (inv!20130 (left!12836 (c!238734 (tokens!2056 other!32)))) e!925387))))

(assert (= (and b!1449970 ((_ is Node!5141) (left!12836 (c!238734 (tokens!2056 other!32))))) b!1450342))

(assert (= b!1450343 b!1450344))

(assert (= (and b!1449970 ((_ is Leaf!7671) (left!12836 (c!238734 (tokens!2056 other!32))))) b!1450343))

(declare-fun m!1673669 () Bool)

(assert (=> b!1450342 m!1673669))

(declare-fun m!1673671 () Bool)

(assert (=> b!1450342 m!1673671))

(declare-fun m!1673673 () Bool)

(assert (=> b!1450343 m!1673673))

(assert (=> b!1449970 m!1673155))

(declare-fun tp!409132 () Bool)

(declare-fun tp!409130 () Bool)

(declare-fun e!925391 () Bool)

(declare-fun b!1450345 () Bool)

(assert (=> b!1450345 (= e!925391 (and (inv!20130 (left!12836 (right!13166 (c!238734 (tokens!2056 other!32))))) tp!409132 (inv!20130 (right!13166 (right!13166 (c!238734 (tokens!2056 other!32))))) tp!409130))))

(declare-fun b!1450347 () Bool)

(declare-fun e!925392 () Bool)

(declare-fun tp!409131 () Bool)

(assert (=> b!1450347 (= e!925392 tp!409131)))

(declare-fun b!1450346 () Bool)

(assert (=> b!1450346 (= e!925391 (and (inv!20139 (xs!7882 (right!13166 (c!238734 (tokens!2056 other!32))))) e!925392))))

(assert (=> b!1449970 (= tp!409088 (and (inv!20130 (right!13166 (c!238734 (tokens!2056 other!32)))) e!925391))))

(assert (= (and b!1449970 ((_ is Node!5141) (right!13166 (c!238734 (tokens!2056 other!32))))) b!1450345))

(assert (= b!1450346 b!1450347))

(assert (= (and b!1449970 ((_ is Leaf!7671) (right!13166 (c!238734 (tokens!2056 other!32))))) b!1450346))

(declare-fun m!1673675 () Bool)

(assert (=> b!1450345 m!1673675))

(declare-fun m!1673677 () Bool)

(assert (=> b!1450345 m!1673677))

(declare-fun m!1673679 () Bool)

(assert (=> b!1450346 m!1673679))

(assert (=> b!1449970 m!1673157))

(declare-fun b!1450352 () Bool)

(declare-fun b_free!36067 () Bool)

(declare-fun b_next!36771 () Bool)

(assert (=> b!1450352 (= b_free!36067 (not b_next!36771))))

(declare-fun tp!409136 () Bool)

(declare-fun b_and!98131 () Bool)

(assert (=> b!1450352 (= tp!409136 b_and!98131)))

(declare-fun b_free!36069 () Bool)

(declare-fun b_next!36773 () Bool)

(assert (=> b!1450352 (= b_free!36069 (not b_next!36773))))

(declare-fun tp!409137 () Bool)

(declare-fun b_and!98133 () Bool)

(assert (=> b!1450352 (= tp!409137 b_and!98133)))

(declare-fun e!925398 () Bool)

(assert (=> b!1450352 (= e!925398 (and tp!409136 tp!409137))))

(declare-fun e!925397 () Bool)

(declare-fun b!1450351 () Bool)

(declare-fun tp!409138 () Bool)

(assert (=> b!1450351 (= e!925397 (and tp!409138 (inv!20125 (tag!2921 (h!20492 (t!130520 (rules!11566 thiss!10022))))) (inv!20138 (transformation!2657 (h!20492 (t!130520 (rules!11566 thiss!10022))))) e!925398))))

(declare-fun b!1450350 () Bool)

(declare-fun e!925400 () Bool)

(declare-fun tp!409135 () Bool)

(assert (=> b!1450350 (= e!925400 (and e!925397 tp!409135))))

(assert (=> b!1449967 (= tp!409084 e!925400)))

(assert (= b!1450351 b!1450352))

(assert (= b!1450350 b!1450351))

(assert (= (and b!1449967 ((_ is Cons!15091) (t!130520 (rules!11566 thiss!10022)))) b!1450350))

(declare-fun m!1673681 () Bool)

(assert (=> b!1450351 m!1673681))

(declare-fun m!1673683 () Bool)

(assert (=> b!1450351 m!1673683))

(declare-fun b!1450388 () Bool)

(declare-fun b_free!36087 () Bool)

(declare-fun b_next!36791 () Bool)

(assert (=> b!1450388 (= b_free!36087 (not b_next!36791))))

(declare-fun tp!409178 () Bool)

(declare-fun b_and!98151 () Bool)

(assert (=> b!1450388 (= tp!409178 b_and!98151)))

(declare-fun b_free!36089 () Bool)

(declare-fun b_next!36793 () Bool)

(assert (=> b!1450388 (= b_free!36089 (not b_next!36793))))

(declare-fun tp!409179 () Bool)

(declare-fun b_and!98153 () Bool)

(assert (=> b!1450388 (= tp!409179 b_and!98153)))

(declare-fun e!925439 () Bool)

(declare-fun tp!409175 () Bool)

(declare-fun b!1450386 () Bool)

(declare-fun e!925442 () Bool)

(declare-fun inv!21 (TokenValue!2747) Bool)

(assert (=> b!1450386 (= e!925439 (and (inv!21 (value!85372 (h!20491 (innerList!5201 (xs!7882 (c!238734 (tokens!2056 thiss!10022))))))) e!925442 tp!409175))))

(declare-fun e!925440 () Bool)

(declare-fun b!1450387 () Bool)

(declare-fun tp!409177 () Bool)

(assert (=> b!1450387 (= e!925442 (and tp!409177 (inv!20125 (tag!2921 (rule!4430 (h!20491 (innerList!5201 (xs!7882 (c!238734 (tokens!2056 thiss!10022)))))))) (inv!20138 (transformation!2657 (rule!4430 (h!20491 (innerList!5201 (xs!7882 (c!238734 (tokens!2056 thiss!10022)))))))) e!925440))))

(assert (=> b!1450388 (= e!925440 (and tp!409178 tp!409179))))

(declare-fun e!925438 () Bool)

(assert (=> b!1449966 (= tp!409082 e!925438)))

(declare-fun tp!409176 () Bool)

(declare-fun b!1450385 () Bool)

(declare-fun inv!20140 (Token!4976) Bool)

(assert (=> b!1450385 (= e!925438 (and (inv!20140 (h!20491 (innerList!5201 (xs!7882 (c!238734 (tokens!2056 thiss!10022)))))) e!925439 tp!409176))))

(assert (= b!1450387 b!1450388))

(assert (= b!1450386 b!1450387))

(assert (= b!1450385 b!1450386))

(assert (= (and b!1449966 ((_ is Cons!15090) (innerList!5201 (xs!7882 (c!238734 (tokens!2056 thiss!10022)))))) b!1450385))

(declare-fun m!1673709 () Bool)

(assert (=> b!1450386 m!1673709))

(declare-fun m!1673711 () Bool)

(assert (=> b!1450387 m!1673711))

(declare-fun m!1673713 () Bool)

(assert (=> b!1450387 m!1673713))

(declare-fun m!1673715 () Bool)

(assert (=> b!1450385 m!1673715))

(declare-fun b!1450395 () Bool)

(declare-fun e!925445 () Bool)

(assert (=> b!1450395 (= e!925445 true)))

(declare-fun b!1450394 () Bool)

(declare-fun e!925444 () Bool)

(assert (=> b!1450394 (= e!925444 e!925445)))

(declare-fun b!1450393 () Bool)

(declare-fun e!925443 () Bool)

(assert (=> b!1450393 (= e!925443 e!925444)))

(assert (=> b!1449851 e!925443))

(assert (= b!1450394 b!1450395))

(assert (= b!1450393 b!1450394))

(assert (= (and b!1449851 ((_ is Cons!15091) (t!130520 (rules!11566 thiss!10022)))) b!1450393))

(assert (=> b!1450395 (< (dynLambda!6873 order!9077 (toValue!3964 (transformation!2657 (h!20492 (t!130520 (rules!11566 thiss!10022)))))) (dynLambda!6874 order!9079 lambda!63031))))

(assert (=> b!1450395 (< (dynLambda!6875 order!9081 (toChars!3823 (transformation!2657 (h!20492 (t!130520 (rules!11566 thiss!10022)))))) (dynLambda!6874 order!9079 lambda!63031))))

(declare-fun tp!409192 () Bool)

(declare-fun tp!409190 () Bool)

(declare-fun b!1450396 () Bool)

(declare-fun e!925446 () Bool)

(assert (=> b!1450396 (= e!925446 (and (inv!20130 (left!12836 (left!12836 (c!238734 (tokens!2056 thiss!10022))))) tp!409192 (inv!20130 (right!13166 (left!12836 (c!238734 (tokens!2056 thiss!10022))))) tp!409190))))

(declare-fun b!1450398 () Bool)

(declare-fun e!925447 () Bool)

(declare-fun tp!409191 () Bool)

(assert (=> b!1450398 (= e!925447 tp!409191)))

(declare-fun b!1450397 () Bool)

(assert (=> b!1450397 (= e!925446 (and (inv!20139 (xs!7882 (left!12836 (c!238734 (tokens!2056 thiss!10022))))) e!925447))))

(assert (=> b!1449964 (= tp!409083 (and (inv!20130 (left!12836 (c!238734 (tokens!2056 thiss!10022)))) e!925446))))

(assert (= (and b!1449964 ((_ is Node!5141) (left!12836 (c!238734 (tokens!2056 thiss!10022))))) b!1450396))

(assert (= b!1450397 b!1450398))

(assert (= (and b!1449964 ((_ is Leaf!7671) (left!12836 (c!238734 (tokens!2056 thiss!10022))))) b!1450397))

(declare-fun m!1673717 () Bool)

(assert (=> b!1450396 m!1673717))

(declare-fun m!1673719 () Bool)

(assert (=> b!1450396 m!1673719))

(declare-fun m!1673721 () Bool)

(assert (=> b!1450397 m!1673721))

(assert (=> b!1449964 m!1673145))

(declare-fun b!1450406 () Bool)

(declare-fun tp!409198 () Bool)

(declare-fun tp!409200 () Bool)

(declare-fun e!925452 () Bool)

(assert (=> b!1450406 (= e!925452 (and (inv!20130 (left!12836 (right!13166 (c!238734 (tokens!2056 thiss!10022))))) tp!409200 (inv!20130 (right!13166 (right!13166 (c!238734 (tokens!2056 thiss!10022))))) tp!409198))))

(declare-fun b!1450408 () Bool)

(declare-fun e!925453 () Bool)

(declare-fun tp!409199 () Bool)

(assert (=> b!1450408 (= e!925453 tp!409199)))

(declare-fun b!1450407 () Bool)

(assert (=> b!1450407 (= e!925452 (and (inv!20139 (xs!7882 (right!13166 (c!238734 (tokens!2056 thiss!10022))))) e!925453))))

(assert (=> b!1449964 (= tp!409081 (and (inv!20130 (right!13166 (c!238734 (tokens!2056 thiss!10022)))) e!925452))))

(assert (= (and b!1449964 ((_ is Node!5141) (right!13166 (c!238734 (tokens!2056 thiss!10022))))) b!1450406))

(assert (= b!1450407 b!1450408))

(assert (= (and b!1449964 ((_ is Leaf!7671) (right!13166 (c!238734 (tokens!2056 thiss!10022))))) b!1450407))

(declare-fun m!1673723 () Bool)

(assert (=> b!1450406 m!1673723))

(declare-fun m!1673725 () Bool)

(assert (=> b!1450406 m!1673725))

(declare-fun m!1673727 () Bool)

(assert (=> b!1450407 m!1673727))

(assert (=> b!1449964 m!1673147))

(declare-fun b!1450416 () Bool)

(declare-fun b_free!36091 () Bool)

(declare-fun b_next!36795 () Bool)

(assert (=> b!1450416 (= b_free!36091 (not b_next!36795))))

(declare-fun tp!409209 () Bool)

(declare-fun b_and!98155 () Bool)

(assert (=> b!1450416 (= tp!409209 b_and!98155)))

(declare-fun b_free!36093 () Bool)

(declare-fun b_next!36797 () Bool)

(assert (=> b!1450416 (= b_free!36093 (not b_next!36797))))

(declare-fun tp!409210 () Bool)

(declare-fun b_and!98157 () Bool)

(assert (=> b!1450416 (= tp!409210 b_and!98157)))

(declare-fun tp!409206 () Bool)

(declare-fun e!925457 () Bool)

(declare-fun b!1450414 () Bool)

(declare-fun e!925460 () Bool)

(assert (=> b!1450414 (= e!925457 (and (inv!21 (value!85372 (h!20491 (innerList!5201 (xs!7882 (c!238734 (tokens!2056 other!32))))))) e!925460 tp!409206))))

(declare-fun b!1450415 () Bool)

(declare-fun e!925458 () Bool)

(declare-fun tp!409208 () Bool)

(assert (=> b!1450415 (= e!925460 (and tp!409208 (inv!20125 (tag!2921 (rule!4430 (h!20491 (innerList!5201 (xs!7882 (c!238734 (tokens!2056 other!32)))))))) (inv!20138 (transformation!2657 (rule!4430 (h!20491 (innerList!5201 (xs!7882 (c!238734 (tokens!2056 other!32)))))))) e!925458))))

(assert (=> b!1450416 (= e!925458 (and tp!409209 tp!409210))))

(declare-fun e!925456 () Bool)

(assert (=> b!1449972 (= tp!409089 e!925456)))

(declare-fun tp!409207 () Bool)

(declare-fun b!1450413 () Bool)

(assert (=> b!1450413 (= e!925456 (and (inv!20140 (h!20491 (innerList!5201 (xs!7882 (c!238734 (tokens!2056 other!32)))))) e!925457 tp!409207))))

(assert (= b!1450415 b!1450416))

(assert (= b!1450414 b!1450415))

(assert (= b!1450413 b!1450414))

(assert (= (and b!1449972 ((_ is Cons!15090) (innerList!5201 (xs!7882 (c!238734 (tokens!2056 other!32)))))) b!1450413))

(declare-fun m!1673729 () Bool)

(assert (=> b!1450414 m!1673729))

(declare-fun m!1673731 () Bool)

(assert (=> b!1450415 m!1673731))

(declare-fun m!1673733 () Bool)

(assert (=> b!1450415 m!1673733))

(declare-fun m!1673735 () Bool)

(assert (=> b!1450413 m!1673735))

(declare-fun b_lambda!45193 () Bool)

(assert (= b_lambda!45187 (or d!421054 b_lambda!45193)))

(declare-fun bs!342555 () Bool)

(declare-fun d!421296 () Bool)

(assert (= bs!342555 (and d!421296 d!421054)))

(assert (=> bs!342555 (= (dynLambda!6876 lambda!63031 (h!20491 lt!499810)) (rulesProduceIndividualToken!1232 Lexer!2311 (rules!11566 thiss!10022) (h!20491 lt!499810)))))

(assert (=> bs!342555 m!1673061))

(assert (=> b!1450272 d!421296))

(check-sat (not b!1450174) b_and!98151 (not b!1450337) (not b!1450338) (not b!1450202) b_and!98127 b_and!98123 (not b!1450172) (not b!1450385) (not b!1450031) (not b!1449998) (not d!421206) (not b!1450196) (not b!1450199) b_and!98125 (not b_next!36765) (not b!1450397) (not b!1450219) (not b!1450346) (not b!1450350) (not b!1450287) (not b!1450027) b_and!98121 (not b!1450344) (not d!421238) (not d!421118) (not d!421108) (not b!1450127) b_and!98119 (not b!1450310) (not b!1449964) (not d!421132) (not b!1450288) (not d!421128) (not d!421180) (not b_next!36773) (not d!421114) (not b!1450414) (not b!1450176) (not b!1450005) (not b_lambda!45193) (not d!421216) (not b!1450292) (not d!421152) (not b!1450415) tp_is_empty!6869 (not b!1450019) (not b!1450018) (not b!1450177) (not d!421110) (not b!1450067) (not b!1450406) b_and!98129 (not b!1450273) (not b_next!36759) (not b!1450195) (not b!1450068) b_and!98131 b_and!98153 (not b!1450335) (not d!421196) (not b!1450222) (not b!1450408) (not b!1450290) (not b!1449999) (not b!1450297) (not b!1450003) (not b!1450111) (not b!1450217) (not b!1450343) (not b_next!36771) (not b!1450293) (not d!421106) (not b!1450351) (not d!421268) (not b!1450215) (not b!1450347) (not b_next!36769) (not b!1450300) (not b!1450342) (not b!1450345) (not d!421242) (not b!1450299) (not b!1450289) (not d!421184) (not b_next!36763) (not b!1450302) (not b!1450220) (not d!421174) (not b!1450339) (not d!421236) (not b!1450309) (not b!1450197) (not b!1450171) (not d!421124) (not b!1450189) (not b!1450091) (not d!421234) b_and!98157 (not b!1450334) (not b!1450396) (not d!421116) (not b!1450291) (not b!1450002) (not b!1450333) (not d!421170) (not b!1450092) (not b!1450032) (not b!1450173) (not d!421186) (not b!1450200) (not b!1450000) (not b_next!36797) (not b!1450033) (not d!421284) (not b!1449981) (not b_next!36767) (not d!421104) (not d!421134) (not b!1450190) (not b_next!36791) (not d!421208) (not b!1450413) (not b!1450229) (not d!421224) (not bs!342555) (not b_next!36793) (not b_next!36761) (not b!1450216) (not b_next!36795) (not b!1450187) (not d!421244) b_and!98133 (not b!1450004) (not b!1450218) (not b!1450175) (not b!1450386) (not b!1449970) b_and!98155 (not b!1450393) (not b!1450151) (not b!1450110) (not d!421292) (not b!1450294) (not b!1450387) (not b!1450112) (not b!1450407) (not b!1450398) (not d!421130) (not d!421220))
(check-sat b_and!98151 b_and!98121 b_and!98119 (not b_next!36773) b_and!98129 (not b_next!36771) (not b_next!36769) (not b_next!36763) b_and!98157 (not b_next!36797) (not b_next!36767) (not b_next!36795) b_and!98133 b_and!98155 b_and!98127 b_and!98123 b_and!98125 (not b_next!36765) (not b_next!36759) b_and!98153 b_and!98131 (not b_next!36791) (not b_next!36793) (not b_next!36761))
