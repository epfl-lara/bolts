; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745144 () Bool)

(assert start!745144)

(declare-fun b!7899809 () Bool)

(declare-fun b_free!134655 () Bool)

(declare-fun b_next!135445 () Bool)

(assert (=> b!7899809 (= b_free!134655 (not b_next!135445))))

(declare-fun tp!2353658 () Bool)

(declare-fun b_and!352555 () Bool)

(assert (=> b!7899809 (= tp!2353658 b_and!352555)))

(declare-fun b_free!134657 () Bool)

(declare-fun b_next!135447 () Bool)

(assert (=> b!7899809 (= b_free!134657 (not b_next!135447))))

(declare-fun tp!2353656 () Bool)

(declare-fun b_and!352557 () Bool)

(assert (=> b!7899809 (= tp!2353656 b_and!352557)))

(declare-fun b!7899808 () Bool)

(declare-fun e!4662996 () Bool)

(declare-fun e!4662998 () Bool)

(assert (=> b!7899808 (= e!4662996 e!4662998)))

(declare-fun res!3134075 () Bool)

(assert (=> b!7899808 (=> res!3134075 e!4662998)))

(declare-datatypes ((List!74242 0))(
  ( (Nil!74118) (Cons!74118 (h!80566 (_ BitVec 16)) (t!389051 List!74242)) )
))
(declare-datatypes ((TokenValue!8890 0))(
  ( (FloatLiteralValue!17780 (text!62675 List!74242)) (TokenValueExt!8889 (__x!35067 Int)) (Broken!44450 (value!286314 List!74242)) (Object!9013) (End!8890) (Def!8890) (Underscore!8890) (Match!8890) (Else!8890) (Error!8890) (Case!8890) (If!8890) (Extends!8890) (Abstract!8890) (Class!8890) (Val!8890) (DelimiterValue!17780 (del!8950 List!74242)) (KeywordValue!8896 (value!286315 List!74242)) (CommentValue!17780 (value!286316 List!74242)) (WhitespaceValue!17780 (value!286317 List!74242)) (IndentationValue!8890 (value!286318 List!74242)) (String!82871) (Int32!8890) (Broken!44451 (value!286319 List!74242)) (Boolean!8891) (Unit!169136) (OperatorValue!8893 (op!8950 List!74242)) (IdentifierValue!17780 (value!286320 List!74242)) (IdentifierValue!17781 (value!286321 List!74242)) (WhitespaceValue!17781 (value!286322 List!74242)) (True!17780) (False!17780) (Broken!44452 (value!286323 List!74242)) (Broken!44453 (value!286324 List!74242)) (True!17781) (RightBrace!8890) (RightBracket!8890) (Colon!8890) (Null!8890) (Comma!8890) (LeftBracket!8890) (False!17781) (LeftBrace!8890) (ImaginaryLiteralValue!8890 (text!62676 List!74242)) (StringLiteralValue!26670 (value!286325 List!74242)) (EOFValue!8890 (value!286326 List!74242)) (IdentValue!8890 (value!286327 List!74242)) (DelimiterValue!17781 (value!286328 List!74242)) (DedentValue!8890 (value!286329 List!74242)) (NewLineValue!8890 (value!286330 List!74242)) (IntegerValue!26670 (value!286331 (_ BitVec 32)) (text!62677 List!74242)) (IntegerValue!26671 (value!286332 Int) (text!62678 List!74242)) (Times!8890) (Or!8890) (Equal!8890) (Minus!8890) (Broken!44454 (value!286333 List!74242)) (And!8890) (Div!8890) (LessEqual!8890) (Mod!8890) (Concat!30167) (Not!8890) (Plus!8890) (SpaceValue!8890 (value!286334 List!74242)) (IntegerValue!26672 (value!286335 Int) (text!62679 List!74242)) (StringLiteralValue!26671 (text!62680 List!74242)) (FloatLiteralValue!17781 (text!62681 List!74242)) (BytesLiteralValue!8890 (value!286336 List!74242)) (CommentValue!17781 (value!286337 List!74242)) (StringLiteralValue!26672 (value!286338 List!74242)) (ErrorTokenValue!8890 (msg!8951 List!74242)) )
))
(declare-datatypes ((C!42884 0))(
  ( (C!42885 (val!31906 Int)) )
))
(declare-datatypes ((List!74243 0))(
  ( (Nil!74119) (Cons!74119 (h!80567 C!42884) (t!389052 List!74243)) )
))
(declare-datatypes ((IArray!31557 0))(
  ( (IArray!31558 (innerList!15836 List!74243)) )
))
(declare-datatypes ((Conc!15748 0))(
  ( (Node!15748 (left!56550 Conc!15748) (right!56880 Conc!15748) (csize!31726 Int) (cheight!15959 Int)) (Leaf!30003 (xs!19130 IArray!31557) (csize!31727 Int)) (Empty!15748) )
))
(declare-datatypes ((BalanceConc!30614 0))(
  ( (BalanceConc!30615 (c!1449799 Conc!15748)) )
))
(declare-datatypes ((String!82872 0))(
  ( (String!82873 (value!286339 String)) )
))
(declare-datatypes ((Regex!21277 0))(
  ( (ElementMatch!21277 (c!1449800 C!42884)) (Concat!30168 (regOne!43066 Regex!21277) (regTwo!43066 Regex!21277)) (EmptyExpr!21277) (Star!21277 (reg!21606 Regex!21277)) (EmptyLang!21277) (Union!21277 (regOne!43067 Regex!21277) (regTwo!43067 Regex!21277)) )
))
(declare-datatypes ((TokenValueInjection!17088 0))(
  ( (TokenValueInjection!17089 (toValue!11615 Int) (toChars!11474 Int)) )
))
(declare-datatypes ((Rule!16948 0))(
  ( (Rule!16949 (regex!8574 Regex!21277) (tag!9438 String!82872) (isSeparator!8574 Bool) (transformation!8574 TokenValueInjection!17088)) )
))
(declare-datatypes ((Token!15568 0))(
  ( (Token!15569 (value!286340 TokenValue!8890) (rule!11858 Rule!16948) (size!42938 Int) (originalCharacters!8815 List!74243)) )
))
(declare-datatypes ((tuple2!70166 0))(
  ( (tuple2!70167 (_1!38386 Token!15568) (_2!38386 List!74243)) )
))
(declare-datatypes ((Option!17856 0))(
  ( (None!17855) (Some!17855 (v!54992 tuple2!70166)) )
))
(declare-fun lt!2682742 () Option!17856)

(declare-fun lt!2682743 () Option!17856)

(get-info :version)

(assert (=> b!7899808 (= res!3134075 (or (and ((_ is None!17855) lt!2682742) ((_ is None!17855) lt!2682743)) (not ((_ is None!17855) lt!2682743))))))

(declare-fun input!1184 () List!74243)

(declare-datatypes ((LexerInterface!8166 0))(
  ( (LexerInterfaceExt!8163 (__x!35068 Int)) (Lexer!8164) )
))
(declare-fun thiss!14377 () LexerInterface!8166)

(declare-datatypes ((List!74244 0))(
  ( (Nil!74120) (Cons!74120 (h!80568 Rule!16948) (t!389053 List!74244)) )
))
(declare-fun rulesArg!141 () List!74244)

(declare-fun maxPrefix!4707 (LexerInterface!8166 List!74244 List!74243) Option!17856)

(assert (=> b!7899808 (= lt!2682743 (maxPrefix!4707 thiss!14377 (t!389053 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3754 (LexerInterface!8166 Rule!16948 List!74243) Option!17856)

(assert (=> b!7899808 (= lt!2682742 (maxPrefixOneRule!3754 thiss!14377 (h!80568 rulesArg!141) input!1184))))

(declare-fun e!4662991 () Bool)

(assert (=> b!7899809 (= e!4662991 (and tp!2353658 tp!2353656))))

(declare-fun res!3134073 () Bool)

(declare-fun e!4662997 () Bool)

(assert (=> start!745144 (=> (not res!3134073) (not e!4662997))))

(assert (=> start!745144 (= res!3134073 ((_ is Lexer!8164) thiss!14377))))

(assert (=> start!745144 e!4662997))

(assert (=> start!745144 true))

(declare-fun e!4662995 () Bool)

(assert (=> start!745144 e!4662995))

(declare-fun e!4662990 () Bool)

(assert (=> start!745144 e!4662990))

(declare-fun b!7899810 () Bool)

(declare-fun res!3134074 () Bool)

(declare-fun e!4662992 () Bool)

(assert (=> b!7899810 (=> res!3134074 e!4662992)))

(declare-fun lt!2682744 () tuple2!70166)

(declare-fun apply!14321 (TokenValueInjection!17088 BalanceConc!30614) TokenValue!8890)

(declare-fun seqFromList!6139 (List!74243) BalanceConc!30614)

(assert (=> b!7899810 (= res!3134074 (not (= (value!286340 (_1!38386 lt!2682744)) (apply!14321 (transformation!8574 (rule!11858 (_1!38386 lt!2682744))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 lt!2682744)))))))))

(declare-fun b!7899811 () Bool)

(declare-fun res!3134071 () Bool)

(assert (=> b!7899811 (=> res!3134071 e!4662998)))

(declare-fun isEmpty!42512 (Option!17856) Bool)

(assert (=> b!7899811 (= res!3134071 (isEmpty!42512 lt!2682742))))

(declare-fun tp!2353660 () Bool)

(declare-fun b!7899812 () Bool)

(declare-fun e!4662993 () Bool)

(declare-fun inv!95097 (String!82872) Bool)

(declare-fun inv!95099 (TokenValueInjection!17088) Bool)

(assert (=> b!7899812 (= e!4662993 (and tp!2353660 (inv!95097 (tag!9438 (h!80568 rulesArg!141))) (inv!95099 (transformation!8574 (h!80568 rulesArg!141))) e!4662991))))

(declare-fun b!7899813 () Bool)

(assert (=> b!7899813 (= e!4662997 (not e!4662996))))

(declare-fun res!3134072 () Bool)

(assert (=> b!7899813 (=> res!3134072 e!4662996)))

(assert (=> b!7899813 (= res!3134072 (or (and ((_ is Cons!74120) rulesArg!141) ((_ is Nil!74120) (t!389053 rulesArg!141))) (not ((_ is Cons!74120) rulesArg!141))))))

(declare-fun isPrefix!6407 (List!74243 List!74243) Bool)

(assert (=> b!7899813 (isPrefix!6407 input!1184 input!1184)))

(declare-datatypes ((Unit!169137 0))(
  ( (Unit!169138) )
))
(declare-fun lt!2682745 () Unit!169137)

(declare-fun lemmaIsPrefixRefl!3918 (List!74243 List!74243) Unit!169137)

(assert (=> b!7899813 (= lt!2682745 (lemmaIsPrefixRefl!3918 input!1184 input!1184))))

(declare-fun b!7899814 () Bool)

(declare-fun res!3134069 () Bool)

(assert (=> b!7899814 (=> res!3134069 e!4662992)))

(declare-fun size!42939 (List!74243) Int)

(assert (=> b!7899814 (= res!3134069 (>= (size!42939 (_2!38386 lt!2682744)) (size!42939 input!1184)))))

(declare-fun b!7899815 () Bool)

(declare-fun res!3134078 () Bool)

(assert (=> b!7899815 (=> (not res!3134078) (not e!4662997))))

(declare-fun rulesValidInductive!3385 (LexerInterface!8166 List!74244) Bool)

(assert (=> b!7899815 (= res!3134078 (rulesValidInductive!3385 thiss!14377 rulesArg!141))))

(declare-fun b!7899816 () Bool)

(assert (=> b!7899816 (= e!4662998 e!4662992)))

(declare-fun res!3134076 () Bool)

(assert (=> b!7899816 (=> res!3134076 e!4662992)))

(declare-fun lt!2682746 () List!74243)

(assert (=> b!7899816 (= res!3134076 (not (= lt!2682746 (originalCharacters!8815 (_1!38386 lt!2682744)))))))

(declare-fun list!19193 (BalanceConc!30614) List!74243)

(declare-fun charsOf!5518 (Token!15568) BalanceConc!30614)

(assert (=> b!7899816 (= lt!2682746 (list!19193 (charsOf!5518 (_1!38386 lt!2682744))))))

(declare-fun get!26615 (Option!17856) tuple2!70166)

(assert (=> b!7899816 (= lt!2682744 (get!26615 lt!2682742))))

(declare-fun b!7899817 () Bool)

(declare-fun res!3134070 () Bool)

(assert (=> b!7899817 (=> res!3134070 e!4662992)))

(declare-fun ++!18144 (List!74243 List!74243) List!74243)

(assert (=> b!7899817 (= res!3134070 (not (= (++!18144 lt!2682746 (_2!38386 lt!2682744)) input!1184)))))

(declare-fun b!7899818 () Bool)

(declare-fun tp!2353659 () Bool)

(assert (=> b!7899818 (= e!4662995 (and e!4662993 tp!2353659))))

(declare-fun b!7899819 () Bool)

(declare-fun tp_is_empty!52929 () Bool)

(declare-fun tp!2353657 () Bool)

(assert (=> b!7899819 (= e!4662990 (and tp_is_empty!52929 tp!2353657))))

(declare-fun b!7899820 () Bool)

(declare-fun validRegex!11643 (Regex!21277) Bool)

(assert (=> b!7899820 (= e!4662992 (validRegex!11643 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))

(declare-fun b!7899821 () Bool)

(declare-fun res!3134079 () Bool)

(assert (=> b!7899821 (=> res!3134079 e!4662998)))

(declare-fun isDefined!14432 (Option!17856) Bool)

(assert (=> b!7899821 (= res!3134079 (not (isDefined!14432 lt!2682742)))))

(declare-fun b!7899822 () Bool)

(declare-fun res!3134077 () Bool)

(assert (=> b!7899822 (=> (not res!3134077) (not e!4662997))))

(declare-fun isEmpty!42513 (List!74244) Bool)

(assert (=> b!7899822 (= res!3134077 (not (isEmpty!42513 rulesArg!141)))))

(assert (= (and start!745144 res!3134073) b!7899815))

(assert (= (and b!7899815 res!3134078) b!7899822))

(assert (= (and b!7899822 res!3134077) b!7899813))

(assert (= (and b!7899813 (not res!3134072)) b!7899808))

(assert (= (and b!7899808 (not res!3134075)) b!7899811))

(assert (= (and b!7899811 (not res!3134071)) b!7899821))

(assert (= (and b!7899821 (not res!3134079)) b!7899816))

(assert (= (and b!7899816 (not res!3134076)) b!7899814))

(assert (= (and b!7899814 (not res!3134069)) b!7899817))

(assert (= (and b!7899817 (not res!3134070)) b!7899810))

(assert (= (and b!7899810 (not res!3134074)) b!7899820))

(assert (= b!7899812 b!7899809))

(assert (= b!7899818 b!7899812))

(assert (= (and start!745144 ((_ is Cons!74120) rulesArg!141)) b!7899818))

(assert (= (and start!745144 ((_ is Cons!74119) input!1184)) b!7899819))

(declare-fun m!8274546 () Bool)

(assert (=> b!7899816 m!8274546))

(assert (=> b!7899816 m!8274546))

(declare-fun m!8274548 () Bool)

(assert (=> b!7899816 m!8274548))

(declare-fun m!8274550 () Bool)

(assert (=> b!7899816 m!8274550))

(declare-fun m!8274552 () Bool)

(assert (=> b!7899808 m!8274552))

(declare-fun m!8274554 () Bool)

(assert (=> b!7899808 m!8274554))

(declare-fun m!8274556 () Bool)

(assert (=> b!7899817 m!8274556))

(declare-fun m!8274558 () Bool)

(assert (=> b!7899813 m!8274558))

(declare-fun m!8274560 () Bool)

(assert (=> b!7899813 m!8274560))

(declare-fun m!8274562 () Bool)

(assert (=> b!7899814 m!8274562))

(declare-fun m!8274564 () Bool)

(assert (=> b!7899814 m!8274564))

(declare-fun m!8274566 () Bool)

(assert (=> b!7899820 m!8274566))

(declare-fun m!8274568 () Bool)

(assert (=> b!7899822 m!8274568))

(declare-fun m!8274570 () Bool)

(assert (=> b!7899811 m!8274570))

(declare-fun m!8274572 () Bool)

(assert (=> b!7899821 m!8274572))

(declare-fun m!8274574 () Bool)

(assert (=> b!7899810 m!8274574))

(assert (=> b!7899810 m!8274574))

(declare-fun m!8274576 () Bool)

(assert (=> b!7899810 m!8274576))

(declare-fun m!8274578 () Bool)

(assert (=> b!7899815 m!8274578))

(declare-fun m!8274580 () Bool)

(assert (=> b!7899812 m!8274580))

(declare-fun m!8274582 () Bool)

(assert (=> b!7899812 m!8274582))

(check-sat (not b!7899811) b_and!352557 (not b!7899818) b_and!352555 tp_is_empty!52929 (not b!7899812) (not b!7899814) (not b!7899810) (not b!7899808) (not b!7899820) (not b!7899815) (not b!7899817) (not b!7899819) (not b!7899821) (not b!7899822) (not b!7899813) (not b!7899816) (not b_next!135447) (not b_next!135445))
(check-sat b_and!352557 b_and!352555 (not b_next!135447) (not b_next!135445))
(get-model)

(declare-fun d!2357923 () Bool)

(declare-fun list!19195 (Conc!15748) List!74243)

(assert (=> d!2357923 (= (list!19193 (charsOf!5518 (_1!38386 lt!2682744))) (list!19195 (c!1449799 (charsOf!5518 (_1!38386 lt!2682744)))))))

(declare-fun bs!1967898 () Bool)

(assert (= bs!1967898 d!2357923))

(declare-fun m!8274590 () Bool)

(assert (=> bs!1967898 m!8274590))

(assert (=> b!7899816 d!2357923))

(declare-fun d!2357925 () Bool)

(declare-fun lt!2682749 () BalanceConc!30614)

(assert (=> d!2357925 (= (list!19193 lt!2682749) (originalCharacters!8815 (_1!38386 lt!2682744)))))

(declare-fun dynLambda!30028 (Int TokenValue!8890) BalanceConc!30614)

(assert (=> d!2357925 (= lt!2682749 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744))))))

(assert (=> d!2357925 (= (charsOf!5518 (_1!38386 lt!2682744)) lt!2682749)))

(declare-fun b_lambda!289603 () Bool)

(assert (=> (not b_lambda!289603) (not d!2357925)))

(declare-fun tb!262655 () Bool)

(declare-fun t!389055 () Bool)

(assert (=> (and b!7899809 (= (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))) (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744))))) t!389055) tb!262655))

(declare-fun b!7899854 () Bool)

(declare-fun e!4663022 () Bool)

(declare-fun tp!2353663 () Bool)

(declare-fun inv!95102 (Conc!15748) Bool)

(assert (=> b!7899854 (= e!4663022 (and (inv!95102 (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744))))) tp!2353663))))

(declare-fun result!359670 () Bool)

(declare-fun inv!95103 (BalanceConc!30614) Bool)

(assert (=> tb!262655 (= result!359670 (and (inv!95103 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744)))) e!4663022))))

(assert (= tb!262655 b!7899854))

(declare-fun m!8274592 () Bool)

(assert (=> b!7899854 m!8274592))

(declare-fun m!8274594 () Bool)

(assert (=> tb!262655 m!8274594))

(assert (=> d!2357925 t!389055))

(declare-fun b_and!352559 () Bool)

(assert (= b_and!352557 (and (=> t!389055 result!359670) b_and!352559)))

(declare-fun m!8274596 () Bool)

(assert (=> d!2357925 m!8274596))

(declare-fun m!8274598 () Bool)

(assert (=> d!2357925 m!8274598))

(assert (=> b!7899816 d!2357925))

(declare-fun d!2357927 () Bool)

(assert (=> d!2357927 (= (get!26615 lt!2682742) (v!54992 lt!2682742))))

(assert (=> b!7899816 d!2357927))

(declare-fun d!2357929 () Bool)

(assert (=> d!2357929 true))

(declare-fun lt!2682787 () Bool)

(declare-fun lambda!472390 () Int)

(declare-fun forall!18439 (List!74244 Int) Bool)

(assert (=> d!2357929 (= lt!2682787 (forall!18439 rulesArg!141 lambda!472390))))

(declare-fun e!4663059 () Bool)

(assert (=> d!2357929 (= lt!2682787 e!4663059)))

(declare-fun res!3134163 () Bool)

(assert (=> d!2357929 (=> res!3134163 e!4663059)))

(assert (=> d!2357929 (= res!3134163 (not ((_ is Cons!74120) rulesArg!141)))))

(assert (=> d!2357929 (= (rulesValidInductive!3385 thiss!14377 rulesArg!141) lt!2682787)))

(declare-fun b!7899929 () Bool)

(declare-fun e!4663058 () Bool)

(assert (=> b!7899929 (= e!4663059 e!4663058)))

(declare-fun res!3134162 () Bool)

(assert (=> b!7899929 (=> (not res!3134162) (not e!4663058))))

(declare-fun ruleValid!3930 (LexerInterface!8166 Rule!16948) Bool)

(assert (=> b!7899929 (= res!3134162 (ruleValid!3930 thiss!14377 (h!80568 rulesArg!141)))))

(declare-fun b!7899930 () Bool)

(assert (=> b!7899930 (= e!4663058 (rulesValidInductive!3385 thiss!14377 (t!389053 rulesArg!141)))))

(assert (= (and d!2357929 (not res!3134163)) b!7899929))

(assert (= (and b!7899929 res!3134162) b!7899930))

(declare-fun m!8274684 () Bool)

(assert (=> d!2357929 m!8274684))

(declare-fun m!8274686 () Bool)

(assert (=> b!7899929 m!8274686))

(declare-fun m!8274688 () Bool)

(assert (=> b!7899930 m!8274688))

(assert (=> b!7899815 d!2357929))

(declare-fun b!7899944 () Bool)

(declare-fun e!4663068 () Bool)

(assert (=> b!7899944 (= e!4663068 (>= (size!42939 input!1184) (size!42939 input!1184)))))

(declare-fun d!2357937 () Bool)

(assert (=> d!2357937 e!4663068))

(declare-fun res!3134175 () Bool)

(assert (=> d!2357937 (=> res!3134175 e!4663068)))

(declare-fun lt!2682790 () Bool)

(assert (=> d!2357937 (= res!3134175 (not lt!2682790))))

(declare-fun e!4663067 () Bool)

(assert (=> d!2357937 (= lt!2682790 e!4663067)))

(declare-fun res!3134174 () Bool)

(assert (=> d!2357937 (=> res!3134174 e!4663067)))

(assert (=> d!2357937 (= res!3134174 ((_ is Nil!74119) input!1184))))

(assert (=> d!2357937 (= (isPrefix!6407 input!1184 input!1184) lt!2682790)))

(declare-fun b!7899942 () Bool)

(declare-fun res!3134173 () Bool)

(declare-fun e!4663066 () Bool)

(assert (=> b!7899942 (=> (not res!3134173) (not e!4663066))))

(declare-fun head!16141 (List!74243) C!42884)

(assert (=> b!7899942 (= res!3134173 (= (head!16141 input!1184) (head!16141 input!1184)))))

(declare-fun b!7899941 () Bool)

(assert (=> b!7899941 (= e!4663067 e!4663066)))

(declare-fun res!3134172 () Bool)

(assert (=> b!7899941 (=> (not res!3134172) (not e!4663066))))

(assert (=> b!7899941 (= res!3134172 (not ((_ is Nil!74119) input!1184)))))

(declare-fun b!7899943 () Bool)

(declare-fun tail!15684 (List!74243) List!74243)

(assert (=> b!7899943 (= e!4663066 (isPrefix!6407 (tail!15684 input!1184) (tail!15684 input!1184)))))

(assert (= (and d!2357937 (not res!3134174)) b!7899941))

(assert (= (and b!7899941 res!3134172) b!7899942))

(assert (= (and b!7899942 res!3134173) b!7899943))

(assert (= (and d!2357937 (not res!3134175)) b!7899944))

(assert (=> b!7899944 m!8274564))

(assert (=> b!7899944 m!8274564))

(declare-fun m!8274690 () Bool)

(assert (=> b!7899942 m!8274690))

(assert (=> b!7899942 m!8274690))

(declare-fun m!8274692 () Bool)

(assert (=> b!7899943 m!8274692))

(assert (=> b!7899943 m!8274692))

(assert (=> b!7899943 m!8274692))

(assert (=> b!7899943 m!8274692))

(declare-fun m!8274694 () Bool)

(assert (=> b!7899943 m!8274694))

(assert (=> b!7899813 d!2357937))

(declare-fun d!2357939 () Bool)

(assert (=> d!2357939 (isPrefix!6407 input!1184 input!1184)))

(declare-fun lt!2682793 () Unit!169137)

(declare-fun choose!59709 (List!74243 List!74243) Unit!169137)

(assert (=> d!2357939 (= lt!2682793 (choose!59709 input!1184 input!1184))))

(assert (=> d!2357939 (= (lemmaIsPrefixRefl!3918 input!1184 input!1184) lt!2682793)))

(declare-fun bs!1967899 () Bool)

(assert (= bs!1967899 d!2357939))

(assert (=> bs!1967899 m!8274558))

(declare-fun m!8274696 () Bool)

(assert (=> bs!1967899 m!8274696))

(assert (=> b!7899813 d!2357939))

(declare-fun d!2357941 () Bool)

(declare-fun lt!2682796 () Int)

(assert (=> d!2357941 (>= lt!2682796 0)))

(declare-fun e!4663071 () Int)

(assert (=> d!2357941 (= lt!2682796 e!4663071)))

(declare-fun c!1449818 () Bool)

(assert (=> d!2357941 (= c!1449818 ((_ is Nil!74119) (_2!38386 lt!2682744)))))

(assert (=> d!2357941 (= (size!42939 (_2!38386 lt!2682744)) lt!2682796)))

(declare-fun b!7899949 () Bool)

(assert (=> b!7899949 (= e!4663071 0)))

(declare-fun b!7899950 () Bool)

(assert (=> b!7899950 (= e!4663071 (+ 1 (size!42939 (t!389052 (_2!38386 lt!2682744)))))))

(assert (= (and d!2357941 c!1449818) b!7899949))

(assert (= (and d!2357941 (not c!1449818)) b!7899950))

(declare-fun m!8274698 () Bool)

(assert (=> b!7899950 m!8274698))

(assert (=> b!7899814 d!2357941))

(declare-fun d!2357943 () Bool)

(declare-fun lt!2682797 () Int)

(assert (=> d!2357943 (>= lt!2682797 0)))

(declare-fun e!4663072 () Int)

(assert (=> d!2357943 (= lt!2682797 e!4663072)))

(declare-fun c!1449819 () Bool)

(assert (=> d!2357943 (= c!1449819 ((_ is Nil!74119) input!1184))))

(assert (=> d!2357943 (= (size!42939 input!1184) lt!2682797)))

(declare-fun b!7899951 () Bool)

(assert (=> b!7899951 (= e!4663072 0)))

(declare-fun b!7899952 () Bool)

(assert (=> b!7899952 (= e!4663072 (+ 1 (size!42939 (t!389052 input!1184))))))

(assert (= (and d!2357943 c!1449819) b!7899951))

(assert (= (and d!2357943 (not c!1449819)) b!7899952))

(declare-fun m!8274700 () Bool)

(assert (=> b!7899952 m!8274700))

(assert (=> b!7899814 d!2357943))

(declare-fun d!2357945 () Bool)

(assert (=> d!2357945 (= (inv!95097 (tag!9438 (h!80568 rulesArg!141))) (= (mod (str.len (value!286339 (tag!9438 (h!80568 rulesArg!141)))) 2) 0))))

(assert (=> b!7899812 d!2357945))

(declare-fun d!2357947 () Bool)

(declare-fun res!3134178 () Bool)

(declare-fun e!4663075 () Bool)

(assert (=> d!2357947 (=> (not res!3134178) (not e!4663075))))

(declare-fun semiInverseModEq!3809 (Int Int) Bool)

(assert (=> d!2357947 (= res!3134178 (semiInverseModEq!3809 (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))) (toValue!11615 (transformation!8574 (h!80568 rulesArg!141)))))))

(assert (=> d!2357947 (= (inv!95099 (transformation!8574 (h!80568 rulesArg!141))) e!4663075)))

(declare-fun b!7899955 () Bool)

(declare-fun equivClasses!3624 (Int Int) Bool)

(assert (=> b!7899955 (= e!4663075 (equivClasses!3624 (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))) (toValue!11615 (transformation!8574 (h!80568 rulesArg!141)))))))

(assert (= (and d!2357947 res!3134178) b!7899955))

(declare-fun m!8274702 () Bool)

(assert (=> d!2357947 m!8274702))

(declare-fun m!8274704 () Bool)

(assert (=> b!7899955 m!8274704))

(assert (=> b!7899812 d!2357947))

(declare-fun d!2357949 () Bool)

(assert (=> d!2357949 (= (isDefined!14432 lt!2682742) (not (isEmpty!42512 lt!2682742)))))

(declare-fun bs!1967900 () Bool)

(assert (= bs!1967900 d!2357949))

(assert (=> bs!1967900 m!8274570))

(assert (=> b!7899821 d!2357949))

(declare-fun d!2357951 () Bool)

(assert (=> d!2357951 (= (isEmpty!42513 rulesArg!141) ((_ is Nil!74120) rulesArg!141))))

(assert (=> b!7899822 d!2357951))

(declare-fun d!2357953 () Bool)

(assert (=> d!2357953 (= (isEmpty!42512 lt!2682742) (not ((_ is Some!17855) lt!2682742)))))

(assert (=> b!7899811 d!2357953))

(declare-fun b!7899974 () Bool)

(declare-fun e!4663095 () Bool)

(declare-fun call!733061 () Bool)

(assert (=> b!7899974 (= e!4663095 call!733061)))

(declare-fun b!7899975 () Bool)

(declare-fun e!4663092 () Bool)

(declare-fun call!733062 () Bool)

(assert (=> b!7899975 (= e!4663092 call!733062)))

(declare-fun b!7899976 () Bool)

(declare-fun e!4663096 () Bool)

(declare-fun e!4663090 () Bool)

(assert (=> b!7899976 (= e!4663096 e!4663090)))

(declare-fun c!1449825 () Bool)

(assert (=> b!7899976 (= c!1449825 ((_ is Star!21277) (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))

(declare-fun bm!733056 () Bool)

(declare-fun call!733063 () Bool)

(assert (=> bm!733056 (= call!733063 call!733062)))

(declare-fun b!7899977 () Bool)

(declare-fun res!3134192 () Bool)

(declare-fun e!4663094 () Bool)

(assert (=> b!7899977 (=> (not res!3134192) (not e!4663094))))

(assert (=> b!7899977 (= res!3134192 call!733061)))

(declare-fun e!4663093 () Bool)

(assert (=> b!7899977 (= e!4663093 e!4663094)))

(declare-fun c!1449824 () Bool)

(declare-fun bm!733057 () Bool)

(assert (=> bm!733057 (= call!733062 (validRegex!11643 (ite c!1449825 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (ite c!1449824 (regTwo!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regOne!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))))))

(declare-fun b!7899978 () Bool)

(assert (=> b!7899978 (= e!4663090 e!4663093)))

(assert (=> b!7899978 (= c!1449824 ((_ is Union!21277) (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))

(declare-fun b!7899979 () Bool)

(assert (=> b!7899979 (= e!4663094 call!733063)))

(declare-fun b!7899981 () Bool)

(declare-fun e!4663091 () Bool)

(assert (=> b!7899981 (= e!4663091 e!4663095)))

(declare-fun res!3134189 () Bool)

(assert (=> b!7899981 (=> (not res!3134189) (not e!4663095))))

(assert (=> b!7899981 (= res!3134189 call!733063)))

(declare-fun b!7899982 () Bool)

(assert (=> b!7899982 (= e!4663090 e!4663092)))

(declare-fun res!3134190 () Bool)

(declare-fun nullable!9480 (Regex!21277) Bool)

(assert (=> b!7899982 (= res!3134190 (not (nullable!9480 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))))

(assert (=> b!7899982 (=> (not res!3134190) (not e!4663092))))

(declare-fun bm!733058 () Bool)

(assert (=> bm!733058 (= call!733061 (validRegex!11643 (ite c!1449824 (regOne!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regTwo!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))))

(declare-fun d!2357955 () Bool)

(declare-fun res!3134191 () Bool)

(assert (=> d!2357955 (=> res!3134191 e!4663096)))

(assert (=> d!2357955 (= res!3134191 ((_ is ElementMatch!21277) (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))

(assert (=> d!2357955 (= (validRegex!11643 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) e!4663096)))

(declare-fun b!7899980 () Bool)

(declare-fun res!3134193 () Bool)

(assert (=> b!7899980 (=> res!3134193 e!4663091)))

(assert (=> b!7899980 (= res!3134193 (not ((_ is Concat!30168) (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))))

(assert (=> b!7899980 (= e!4663093 e!4663091)))

(assert (= (and d!2357955 (not res!3134191)) b!7899976))

(assert (= (and b!7899976 c!1449825) b!7899982))

(assert (= (and b!7899976 (not c!1449825)) b!7899978))

(assert (= (and b!7899982 res!3134190) b!7899975))

(assert (= (and b!7899978 c!1449824) b!7899977))

(assert (= (and b!7899978 (not c!1449824)) b!7899980))

(assert (= (and b!7899977 res!3134192) b!7899979))

(assert (= (and b!7899980 (not res!3134193)) b!7899981))

(assert (= (and b!7899981 res!3134189) b!7899974))

(assert (= (or b!7899977 b!7899974) bm!733058))

(assert (= (or b!7899979 b!7899981) bm!733056))

(assert (= (or b!7899975 bm!733056) bm!733057))

(declare-fun m!8274706 () Bool)

(assert (=> bm!733057 m!8274706))

(declare-fun m!8274708 () Bool)

(assert (=> b!7899982 m!8274708))

(declare-fun m!8274710 () Bool)

(assert (=> bm!733058 m!8274710))

(assert (=> b!7899820 d!2357955))

(declare-fun d!2357957 () Bool)

(declare-fun dynLambda!30029 (Int BalanceConc!30614) TokenValue!8890)

(assert (=> d!2357957 (= (apply!14321 (transformation!8574 (rule!11858 (_1!38386 lt!2682744))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 lt!2682744)))) (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 lt!2682744)))))))

(declare-fun b_lambda!289605 () Bool)

(assert (=> (not b_lambda!289605) (not d!2357957)))

(declare-fun t!389057 () Bool)

(declare-fun tb!262657 () Bool)

(assert (=> (and b!7899809 (= (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))) (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744))))) t!389057) tb!262657))

(declare-fun result!359674 () Bool)

(declare-fun inv!21 (TokenValue!8890) Bool)

(assert (=> tb!262657 (= result!359674 (inv!21 (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 lt!2682744))))))))

(declare-fun m!8274712 () Bool)

(assert (=> tb!262657 m!8274712))

(assert (=> d!2357957 t!389057))

(declare-fun b_and!352561 () Bool)

(assert (= b_and!352555 (and (=> t!389057 result!359674) b_and!352561)))

(assert (=> d!2357957 m!8274574))

(declare-fun m!8274714 () Bool)

(assert (=> d!2357957 m!8274714))

(assert (=> b!7899810 d!2357957))

(declare-fun d!2357959 () Bool)

(declare-fun fromListB!2772 (List!74243) BalanceConc!30614)

(assert (=> d!2357959 (= (seqFromList!6139 (originalCharacters!8815 (_1!38386 lt!2682744))) (fromListB!2772 (originalCharacters!8815 (_1!38386 lt!2682744))))))

(declare-fun bs!1967901 () Bool)

(assert (= bs!1967901 d!2357959))

(declare-fun m!8274716 () Bool)

(assert (=> bs!1967901 m!8274716))

(assert (=> b!7899810 d!2357959))

(declare-fun b!7900067 () Bool)

(declare-fun res!3134227 () Bool)

(declare-fun e!4663148 () Bool)

(assert (=> b!7900067 (=> (not res!3134227) (not e!4663148))))

(declare-fun lt!2682822 () Option!17856)

(assert (=> b!7900067 (= res!3134227 (< (size!42939 (_2!38386 (get!26615 lt!2682822))) (size!42939 input!1184)))))

(declare-fun d!2357961 () Bool)

(declare-fun e!4663149 () Bool)

(assert (=> d!2357961 e!4663149))

(declare-fun res!3134231 () Bool)

(assert (=> d!2357961 (=> res!3134231 e!4663149)))

(assert (=> d!2357961 (= res!3134231 (isEmpty!42512 lt!2682822))))

(declare-fun e!4663150 () Option!17856)

(assert (=> d!2357961 (= lt!2682822 e!4663150)))

(declare-fun c!1449832 () Bool)

(assert (=> d!2357961 (= c!1449832 (and ((_ is Cons!74120) (t!389053 rulesArg!141)) ((_ is Nil!74120) (t!389053 (t!389053 rulesArg!141)))))))

(declare-fun lt!2682826 () Unit!169137)

(declare-fun lt!2682825 () Unit!169137)

(assert (=> d!2357961 (= lt!2682826 lt!2682825)))

(assert (=> d!2357961 (isPrefix!6407 input!1184 input!1184)))

(assert (=> d!2357961 (= lt!2682825 (lemmaIsPrefixRefl!3918 input!1184 input!1184))))

(assert (=> d!2357961 (rulesValidInductive!3385 thiss!14377 (t!389053 rulesArg!141))))

(assert (=> d!2357961 (= (maxPrefix!4707 thiss!14377 (t!389053 rulesArg!141) input!1184) lt!2682822)))

(declare-fun b!7900068 () Bool)

(declare-fun contains!20884 (List!74244 Rule!16948) Bool)

(assert (=> b!7900068 (= e!4663148 (contains!20884 (t!389053 rulesArg!141) (rule!11858 (_1!38386 (get!26615 lt!2682822)))))))

(declare-fun b!7900069 () Bool)

(declare-fun res!3134226 () Bool)

(assert (=> b!7900069 (=> (not res!3134226) (not e!4663148))))

(assert (=> b!7900069 (= res!3134226 (= (++!18144 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822)))) (_2!38386 (get!26615 lt!2682822))) input!1184))))

(declare-fun b!7900070 () Bool)

(declare-fun call!733066 () Option!17856)

(assert (=> b!7900070 (= e!4663150 call!733066)))

(declare-fun b!7900071 () Bool)

(declare-fun res!3134225 () Bool)

(assert (=> b!7900071 (=> (not res!3134225) (not e!4663148))))

(declare-fun matchR!10638 (Regex!21277 List!74243) Bool)

(assert (=> b!7900071 (= res!3134225 (matchR!10638 (regex!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))) (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))))))

(declare-fun b!7900072 () Bool)

(declare-fun lt!2682824 () Option!17856)

(declare-fun lt!2682823 () Option!17856)

(assert (=> b!7900072 (= e!4663150 (ite (and ((_ is None!17855) lt!2682824) ((_ is None!17855) lt!2682823)) None!17855 (ite ((_ is None!17855) lt!2682823) lt!2682824 (ite ((_ is None!17855) lt!2682824) lt!2682823 (ite (>= (size!42938 (_1!38386 (v!54992 lt!2682824))) (size!42938 (_1!38386 (v!54992 lt!2682823)))) lt!2682824 lt!2682823)))))))

(assert (=> b!7900072 (= lt!2682824 call!733066)))

(assert (=> b!7900072 (= lt!2682823 (maxPrefix!4707 thiss!14377 (t!389053 (t!389053 rulesArg!141)) input!1184))))

(declare-fun b!7900073 () Bool)

(declare-fun res!3134228 () Bool)

(assert (=> b!7900073 (=> (not res!3134228) (not e!4663148))))

(assert (=> b!7900073 (= res!3134228 (= (value!286340 (_1!38386 (get!26615 lt!2682822))) (apply!14321 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682822)))))))))

(declare-fun b!7900074 () Bool)

(assert (=> b!7900074 (= e!4663149 e!4663148)))

(declare-fun res!3134230 () Bool)

(assert (=> b!7900074 (=> (not res!3134230) (not e!4663148))))

(assert (=> b!7900074 (= res!3134230 (isDefined!14432 lt!2682822))))

(declare-fun b!7900075 () Bool)

(declare-fun res!3134229 () Bool)

(assert (=> b!7900075 (=> (not res!3134229) (not e!4663148))))

(assert (=> b!7900075 (= res!3134229 (= (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822)))) (originalCharacters!8815 (_1!38386 (get!26615 lt!2682822)))))))

(declare-fun bm!733061 () Bool)

(assert (=> bm!733061 (= call!733066 (maxPrefixOneRule!3754 thiss!14377 (h!80568 (t!389053 rulesArg!141)) input!1184))))

(assert (= (and d!2357961 c!1449832) b!7900070))

(assert (= (and d!2357961 (not c!1449832)) b!7900072))

(assert (= (or b!7900070 b!7900072) bm!733061))

(assert (= (and d!2357961 (not res!3134231)) b!7900074))

(assert (= (and b!7900074 res!3134230) b!7900075))

(assert (= (and b!7900075 res!3134229) b!7900067))

(assert (= (and b!7900067 res!3134227) b!7900069))

(assert (= (and b!7900069 res!3134226) b!7900073))

(assert (= (and b!7900073 res!3134228) b!7900071))

(assert (= (and b!7900071 res!3134225) b!7900068))

(declare-fun m!8274756 () Bool)

(assert (=> b!7900075 m!8274756))

(declare-fun m!8274758 () Bool)

(assert (=> b!7900075 m!8274758))

(assert (=> b!7900075 m!8274758))

(declare-fun m!8274760 () Bool)

(assert (=> b!7900075 m!8274760))

(declare-fun m!8274762 () Bool)

(assert (=> d!2357961 m!8274762))

(assert (=> d!2357961 m!8274558))

(assert (=> d!2357961 m!8274560))

(assert (=> d!2357961 m!8274688))

(assert (=> b!7900069 m!8274756))

(assert (=> b!7900069 m!8274758))

(assert (=> b!7900069 m!8274758))

(assert (=> b!7900069 m!8274760))

(assert (=> b!7900069 m!8274760))

(declare-fun m!8274764 () Bool)

(assert (=> b!7900069 m!8274764))

(declare-fun m!8274766 () Bool)

(assert (=> bm!733061 m!8274766))

(assert (=> b!7900068 m!8274756))

(declare-fun m!8274768 () Bool)

(assert (=> b!7900068 m!8274768))

(assert (=> b!7900073 m!8274756))

(declare-fun m!8274770 () Bool)

(assert (=> b!7900073 m!8274770))

(assert (=> b!7900073 m!8274770))

(declare-fun m!8274772 () Bool)

(assert (=> b!7900073 m!8274772))

(assert (=> b!7900067 m!8274756))

(declare-fun m!8274774 () Bool)

(assert (=> b!7900067 m!8274774))

(assert (=> b!7900067 m!8274564))

(declare-fun m!8274776 () Bool)

(assert (=> b!7900072 m!8274776))

(assert (=> b!7900071 m!8274756))

(assert (=> b!7900071 m!8274758))

(assert (=> b!7900071 m!8274758))

(assert (=> b!7900071 m!8274760))

(assert (=> b!7900071 m!8274760))

(declare-fun m!8274778 () Bool)

(assert (=> b!7900071 m!8274778))

(declare-fun m!8274780 () Bool)

(assert (=> b!7900074 m!8274780))

(assert (=> b!7899808 d!2357961))

(declare-fun b!7900094 () Bool)

(declare-fun e!4663161 () Option!17856)

(declare-datatypes ((tuple2!70170 0))(
  ( (tuple2!70171 (_1!38388 List!74243) (_2!38388 List!74243)) )
))
(declare-fun lt!2682838 () tuple2!70170)

(declare-fun size!42941 (BalanceConc!30614) Int)

(assert (=> b!7900094 (= e!4663161 (Some!17855 (tuple2!70167 (Token!15569 (apply!14321 (transformation!8574 (h!80568 rulesArg!141)) (seqFromList!6139 (_1!38388 lt!2682838))) (h!80568 rulesArg!141) (size!42941 (seqFromList!6139 (_1!38388 lt!2682838))) (_1!38388 lt!2682838)) (_2!38388 lt!2682838))))))

(declare-fun lt!2682837 () Unit!169137)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2112 (Regex!21277 List!74243) Unit!169137)

(assert (=> b!7900094 (= lt!2682837 (longestMatchIsAcceptedByMatchOrIsEmpty!2112 (regex!8574 (h!80568 rulesArg!141)) input!1184))))

(declare-fun res!3134251 () Bool)

(declare-fun isEmpty!42515 (List!74243) Bool)

(declare-fun findLongestMatchInner!2149 (Regex!21277 List!74243 Int List!74243 List!74243 Int) tuple2!70170)

(assert (=> b!7900094 (= res!3134251 (isEmpty!42515 (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))))))

(declare-fun e!4663162 () Bool)

(assert (=> b!7900094 (=> res!3134251 e!4663162)))

(assert (=> b!7900094 e!4663162))

(declare-fun lt!2682840 () Unit!169137)

(assert (=> b!7900094 (= lt!2682840 lt!2682837)))

(declare-fun lt!2682841 () Unit!169137)

(declare-fun lemmaSemiInverse!2659 (TokenValueInjection!17088 BalanceConc!30614) Unit!169137)

(assert (=> b!7900094 (= lt!2682841 (lemmaSemiInverse!2659 (transformation!8574 (h!80568 rulesArg!141)) (seqFromList!6139 (_1!38388 lt!2682838))))))

(declare-fun b!7900095 () Bool)

(assert (=> b!7900095 (= e!4663161 None!17855)))

(declare-fun b!7900096 () Bool)

(declare-fun e!4663160 () Bool)

(declare-fun e!4663159 () Bool)

(assert (=> b!7900096 (= e!4663160 e!4663159)))

(declare-fun res!3134246 () Bool)

(assert (=> b!7900096 (=> (not res!3134246) (not e!4663159))))

(declare-fun lt!2682839 () Option!17856)

(assert (=> b!7900096 (= res!3134246 (matchR!10638 (regex!8574 (h!80568 rulesArg!141)) (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))))))

(declare-fun b!7900097 () Bool)

(declare-fun res!3134252 () Bool)

(assert (=> b!7900097 (=> (not res!3134252) (not e!4663159))))

(assert (=> b!7900097 (= res!3134252 (= (++!18144 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839)))) (_2!38386 (get!26615 lt!2682839))) input!1184))))

(declare-fun d!2357991 () Bool)

(assert (=> d!2357991 e!4663160))

(declare-fun res!3134248 () Bool)

(assert (=> d!2357991 (=> res!3134248 e!4663160)))

(assert (=> d!2357991 (= res!3134248 (isEmpty!42512 lt!2682839))))

(assert (=> d!2357991 (= lt!2682839 e!4663161)))

(declare-fun c!1449835 () Bool)

(assert (=> d!2357991 (= c!1449835 (isEmpty!42515 (_1!38388 lt!2682838)))))

(declare-fun findLongestMatch!1916 (Regex!21277 List!74243) tuple2!70170)

(assert (=> d!2357991 (= lt!2682838 (findLongestMatch!1916 (regex!8574 (h!80568 rulesArg!141)) input!1184))))

(assert (=> d!2357991 (ruleValid!3930 thiss!14377 (h!80568 rulesArg!141))))

(assert (=> d!2357991 (= (maxPrefixOneRule!3754 thiss!14377 (h!80568 rulesArg!141) input!1184) lt!2682839)))

(declare-fun b!7900098 () Bool)

(declare-fun res!3134250 () Bool)

(assert (=> b!7900098 (=> (not res!3134250) (not e!4663159))))

(assert (=> b!7900098 (= res!3134250 (< (size!42939 (_2!38386 (get!26615 lt!2682839))) (size!42939 input!1184)))))

(declare-fun b!7900099 () Bool)

(declare-fun res!3134249 () Bool)

(assert (=> b!7900099 (=> (not res!3134249) (not e!4663159))))

(assert (=> b!7900099 (= res!3134249 (= (value!286340 (_1!38386 (get!26615 lt!2682839))) (apply!14321 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682839)))))))))

(declare-fun b!7900100 () Bool)

(assert (=> b!7900100 (= e!4663162 (matchR!10638 (regex!8574 (h!80568 rulesArg!141)) (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))))))

(declare-fun b!7900101 () Bool)

(assert (=> b!7900101 (= e!4663159 (= (size!42938 (_1!38386 (get!26615 lt!2682839))) (size!42939 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682839))))))))

(declare-fun b!7900102 () Bool)

(declare-fun res!3134247 () Bool)

(assert (=> b!7900102 (=> (not res!3134247) (not e!4663159))))

(assert (=> b!7900102 (= res!3134247 (= (rule!11858 (_1!38386 (get!26615 lt!2682839))) (h!80568 rulesArg!141)))))

(assert (= (and d!2357991 c!1449835) b!7900095))

(assert (= (and d!2357991 (not c!1449835)) b!7900094))

(assert (= (and b!7900094 (not res!3134251)) b!7900100))

(assert (= (and d!2357991 (not res!3134248)) b!7900096))

(assert (= (and b!7900096 res!3134246) b!7900097))

(assert (= (and b!7900097 res!3134252) b!7900098))

(assert (= (and b!7900098 res!3134250) b!7900102))

(assert (= (and b!7900102 res!3134247) b!7900099))

(assert (= (and b!7900099 res!3134249) b!7900101))

(declare-fun m!8274782 () Bool)

(assert (=> b!7900096 m!8274782))

(declare-fun m!8274784 () Bool)

(assert (=> b!7900096 m!8274784))

(assert (=> b!7900096 m!8274784))

(declare-fun m!8274786 () Bool)

(assert (=> b!7900096 m!8274786))

(assert (=> b!7900096 m!8274786))

(declare-fun m!8274788 () Bool)

(assert (=> b!7900096 m!8274788))

(declare-fun m!8274790 () Bool)

(assert (=> b!7900100 m!8274790))

(assert (=> b!7900100 m!8274564))

(assert (=> b!7900100 m!8274790))

(assert (=> b!7900100 m!8274564))

(declare-fun m!8274792 () Bool)

(assert (=> b!7900100 m!8274792))

(declare-fun m!8274794 () Bool)

(assert (=> b!7900100 m!8274794))

(declare-fun m!8274796 () Bool)

(assert (=> d!2357991 m!8274796))

(declare-fun m!8274798 () Bool)

(assert (=> d!2357991 m!8274798))

(declare-fun m!8274800 () Bool)

(assert (=> d!2357991 m!8274800))

(assert (=> d!2357991 m!8274686))

(assert (=> b!7900097 m!8274782))

(assert (=> b!7900097 m!8274784))

(assert (=> b!7900097 m!8274784))

(assert (=> b!7900097 m!8274786))

(assert (=> b!7900097 m!8274786))

(declare-fun m!8274802 () Bool)

(assert (=> b!7900097 m!8274802))

(assert (=> b!7900098 m!8274782))

(declare-fun m!8274804 () Bool)

(assert (=> b!7900098 m!8274804))

(assert (=> b!7900098 m!8274564))

(declare-fun m!8274806 () Bool)

(assert (=> b!7900094 m!8274806))

(declare-fun m!8274808 () Bool)

(assert (=> b!7900094 m!8274808))

(declare-fun m!8274810 () Bool)

(assert (=> b!7900094 m!8274810))

(assert (=> b!7900094 m!8274790))

(assert (=> b!7900094 m!8274564))

(assert (=> b!7900094 m!8274792))

(assert (=> b!7900094 m!8274806))

(assert (=> b!7900094 m!8274790))

(assert (=> b!7900094 m!8274806))

(declare-fun m!8274812 () Bool)

(assert (=> b!7900094 m!8274812))

(assert (=> b!7900094 m!8274806))

(declare-fun m!8274814 () Bool)

(assert (=> b!7900094 m!8274814))

(declare-fun m!8274816 () Bool)

(assert (=> b!7900094 m!8274816))

(assert (=> b!7900094 m!8274564))

(assert (=> b!7900101 m!8274782))

(declare-fun m!8274818 () Bool)

(assert (=> b!7900101 m!8274818))

(assert (=> b!7900102 m!8274782))

(assert (=> b!7900099 m!8274782))

(declare-fun m!8274820 () Bool)

(assert (=> b!7900099 m!8274820))

(assert (=> b!7900099 m!8274820))

(declare-fun m!8274822 () Bool)

(assert (=> b!7900099 m!8274822))

(assert (=> b!7899808 d!2357991))

(declare-fun b!7900114 () Bool)

(declare-fun lt!2682844 () List!74243)

(declare-fun e!4663167 () Bool)

(assert (=> b!7900114 (= e!4663167 (or (not (= (_2!38386 lt!2682744) Nil!74119)) (= lt!2682844 lt!2682746)))))

(declare-fun b!7900111 () Bool)

(declare-fun e!4663168 () List!74243)

(assert (=> b!7900111 (= e!4663168 (_2!38386 lt!2682744))))

(declare-fun b!7900113 () Bool)

(declare-fun res!3134258 () Bool)

(assert (=> b!7900113 (=> (not res!3134258) (not e!4663167))))

(assert (=> b!7900113 (= res!3134258 (= (size!42939 lt!2682844) (+ (size!42939 lt!2682746) (size!42939 (_2!38386 lt!2682744)))))))

(declare-fun b!7900112 () Bool)

(assert (=> b!7900112 (= e!4663168 (Cons!74119 (h!80567 lt!2682746) (++!18144 (t!389052 lt!2682746) (_2!38386 lt!2682744))))))

(declare-fun d!2357993 () Bool)

(assert (=> d!2357993 e!4663167))

(declare-fun res!3134257 () Bool)

(assert (=> d!2357993 (=> (not res!3134257) (not e!4663167))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15707 (List!74243) (InoxSet C!42884))

(assert (=> d!2357993 (= res!3134257 (= (content!15707 lt!2682844) ((_ map or) (content!15707 lt!2682746) (content!15707 (_2!38386 lt!2682744)))))))

(assert (=> d!2357993 (= lt!2682844 e!4663168)))

(declare-fun c!1449838 () Bool)

(assert (=> d!2357993 (= c!1449838 ((_ is Nil!74119) lt!2682746))))

(assert (=> d!2357993 (= (++!18144 lt!2682746 (_2!38386 lt!2682744)) lt!2682844)))

(assert (= (and d!2357993 c!1449838) b!7900111))

(assert (= (and d!2357993 (not c!1449838)) b!7900112))

(assert (= (and d!2357993 res!3134257) b!7900113))

(assert (= (and b!7900113 res!3134258) b!7900114))

(declare-fun m!8274824 () Bool)

(assert (=> b!7900113 m!8274824))

(declare-fun m!8274826 () Bool)

(assert (=> b!7900113 m!8274826))

(assert (=> b!7900113 m!8274562))

(declare-fun m!8274828 () Bool)

(assert (=> b!7900112 m!8274828))

(declare-fun m!8274830 () Bool)

(assert (=> d!2357993 m!8274830))

(declare-fun m!8274832 () Bool)

(assert (=> d!2357993 m!8274832))

(declare-fun m!8274834 () Bool)

(assert (=> d!2357993 m!8274834))

(assert (=> b!7899817 d!2357993))

(declare-fun b!7900119 () Bool)

(declare-fun e!4663171 () Bool)

(declare-fun tp!2353699 () Bool)

(assert (=> b!7900119 (= e!4663171 (and tp_is_empty!52929 tp!2353699))))

(assert (=> b!7899819 (= tp!2353657 e!4663171)))

(assert (= (and b!7899819 ((_ is Cons!74119) (t!389052 input!1184))) b!7900119))

(declare-fun b!7900131 () Bool)

(declare-fun e!4663174 () Bool)

(declare-fun tp!2353713 () Bool)

(declare-fun tp!2353712 () Bool)

(assert (=> b!7900131 (= e!4663174 (and tp!2353713 tp!2353712))))

(declare-fun b!7900130 () Bool)

(assert (=> b!7900130 (= e!4663174 tp_is_empty!52929)))

(declare-fun b!7900133 () Bool)

(declare-fun tp!2353711 () Bool)

(declare-fun tp!2353714 () Bool)

(assert (=> b!7900133 (= e!4663174 (and tp!2353711 tp!2353714))))

(declare-fun b!7900132 () Bool)

(declare-fun tp!2353710 () Bool)

(assert (=> b!7900132 (= e!4663174 tp!2353710)))

(assert (=> b!7899812 (= tp!2353660 e!4663174)))

(assert (= (and b!7899812 ((_ is ElementMatch!21277) (regex!8574 (h!80568 rulesArg!141)))) b!7900130))

(assert (= (and b!7899812 ((_ is Concat!30168) (regex!8574 (h!80568 rulesArg!141)))) b!7900131))

(assert (= (and b!7899812 ((_ is Star!21277) (regex!8574 (h!80568 rulesArg!141)))) b!7900132))

(assert (= (and b!7899812 ((_ is Union!21277) (regex!8574 (h!80568 rulesArg!141)))) b!7900133))

(declare-fun b!7900144 () Bool)

(declare-fun b_free!134663 () Bool)

(declare-fun b_next!135453 () Bool)

(assert (=> b!7900144 (= b_free!134663 (not b_next!135453))))

(declare-fun tb!262667 () Bool)

(declare-fun t!389067 () Bool)

(assert (=> (and b!7900144 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744))))) t!389067) tb!262667))

(declare-fun result!359702 () Bool)

(assert (= result!359702 result!359674))

(assert (=> d!2357957 t!389067))

(declare-fun tp!2353723 () Bool)

(declare-fun b_and!352571 () Bool)

(assert (=> b!7900144 (= tp!2353723 (and (=> t!389067 result!359702) b_and!352571))))

(declare-fun b_free!134665 () Bool)

(declare-fun b_next!135455 () Bool)

(assert (=> b!7900144 (= b_free!134665 (not b_next!135455))))

(declare-fun t!389069 () Bool)

(declare-fun tb!262669 () Bool)

(assert (=> (and b!7900144 (= (toChars!11474 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744))))) t!389069) tb!262669))

(declare-fun result!359704 () Bool)

(assert (= result!359704 result!359670))

(assert (=> d!2357925 t!389069))

(declare-fun tp!2353726 () Bool)

(declare-fun b_and!352573 () Bool)

(assert (=> b!7900144 (= tp!2353726 (and (=> t!389069 result!359704) b_and!352573))))

(declare-fun e!4663184 () Bool)

(assert (=> b!7900144 (= e!4663184 (and tp!2353723 tp!2353726))))

(declare-fun tp!2353724 () Bool)

(declare-fun e!4663185 () Bool)

(declare-fun b!7900143 () Bool)

(assert (=> b!7900143 (= e!4663185 (and tp!2353724 (inv!95097 (tag!9438 (h!80568 (t!389053 rulesArg!141)))) (inv!95099 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) e!4663184))))

(declare-fun b!7900142 () Bool)

(declare-fun e!4663186 () Bool)

(declare-fun tp!2353725 () Bool)

(assert (=> b!7900142 (= e!4663186 (and e!4663185 tp!2353725))))

(assert (=> b!7899818 (= tp!2353659 e!4663186)))

(assert (= b!7900143 b!7900144))

(assert (= b!7900142 b!7900143))

(assert (= (and b!7899818 ((_ is Cons!74120) (t!389053 rulesArg!141))) b!7900142))

(declare-fun m!8274836 () Bool)

(assert (=> b!7900143 m!8274836))

(declare-fun m!8274838 () Bool)

(assert (=> b!7900143 m!8274838))

(check-sat (not d!2357959) (not b_next!135453) (not b!7900067) (not b!7900133) (not b_lambda!289605) (not b!7899950) (not b!7900094) (not b!7900102) (not b!7900131) (not b!7900075) (not d!2357991) (not b!7900113) (not d!2357949) (not b!7900132) b_and!352573 tp_is_empty!52929 (not b!7900143) (not b!7900119) (not b!7900100) (not b!7900112) (not d!2357929) (not tb!262657) (not b!7899854) (not b!7899952) b_and!352559 (not b!7900069) (not bm!733057) (not b!7900071) (not b!7900099) (not d!2357961) (not b!7900073) (not b!7900142) (not d!2357939) (not b_next!135447) (not b_next!135445) (not b!7900072) b_and!352561 (not b!7900101) b_and!352571 (not b!7899930) (not d!2357947) (not b!7900097) (not d!2357923) (not b_next!135455) (not b!7900096) (not b!7899955) (not tb!262655) (not d!2357925) (not b!7900074) (not b!7899944) (not bm!733058) (not b!7900098) (not d!2357993) (not b!7899943) (not b!7899982) (not b!7899929) (not b!7900068) (not b_lambda!289603) (not bm!733061) (not b!7899942))
(check-sat (not b_next!135453) b_and!352573 b_and!352559 (not b_next!135455) (not b_next!135447) (not b_next!135445) b_and!352571 b_and!352561)
(get-model)

(declare-fun d!2358019 () Bool)

(declare-fun lt!2682853 () Int)

(assert (=> d!2358019 (>= lt!2682853 0)))

(declare-fun e!4663202 () Int)

(assert (=> d!2358019 (= lt!2682853 e!4663202)))

(declare-fun c!1449842 () Bool)

(assert (=> d!2358019 (= c!1449842 ((_ is Nil!74119) (t!389052 (_2!38386 lt!2682744))))))

(assert (=> d!2358019 (= (size!42939 (t!389052 (_2!38386 lt!2682744))) lt!2682853)))

(declare-fun b!7900166 () Bool)

(assert (=> b!7900166 (= e!4663202 0)))

(declare-fun b!7900167 () Bool)

(assert (=> b!7900167 (= e!4663202 (+ 1 (size!42939 (t!389052 (t!389052 (_2!38386 lt!2682744))))))))

(assert (= (and d!2358019 c!1449842) b!7900166))

(assert (= (and d!2358019 (not c!1449842)) b!7900167))

(declare-fun m!8274900 () Bool)

(assert (=> b!7900167 m!8274900))

(assert (=> b!7899950 d!2358019))

(declare-fun b!7900168 () Bool)

(declare-fun e!4663205 () Option!17856)

(declare-fun lt!2682855 () tuple2!70170)

(assert (=> b!7900168 (= e!4663205 (Some!17855 (tuple2!70167 (Token!15569 (apply!14321 (transformation!8574 (h!80568 (t!389053 rulesArg!141))) (seqFromList!6139 (_1!38388 lt!2682855))) (h!80568 (t!389053 rulesArg!141)) (size!42941 (seqFromList!6139 (_1!38388 lt!2682855))) (_1!38388 lt!2682855)) (_2!38388 lt!2682855))))))

(declare-fun lt!2682854 () Unit!169137)

(assert (=> b!7900168 (= lt!2682854 (longestMatchIsAcceptedByMatchOrIsEmpty!2112 (regex!8574 (h!80568 (t!389053 rulesArg!141))) input!1184))))

(declare-fun res!3134279 () Bool)

(assert (=> b!7900168 (= res!3134279 (isEmpty!42515 (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 (t!389053 rulesArg!141))) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))))))

(declare-fun e!4663206 () Bool)

(assert (=> b!7900168 (=> res!3134279 e!4663206)))

(assert (=> b!7900168 e!4663206))

(declare-fun lt!2682857 () Unit!169137)

(assert (=> b!7900168 (= lt!2682857 lt!2682854)))

(declare-fun lt!2682858 () Unit!169137)

(assert (=> b!7900168 (= lt!2682858 (lemmaSemiInverse!2659 (transformation!8574 (h!80568 (t!389053 rulesArg!141))) (seqFromList!6139 (_1!38388 lt!2682855))))))

(declare-fun b!7900169 () Bool)

(assert (=> b!7900169 (= e!4663205 None!17855)))

(declare-fun b!7900170 () Bool)

(declare-fun e!4663204 () Bool)

(declare-fun e!4663203 () Bool)

(assert (=> b!7900170 (= e!4663204 e!4663203)))

(declare-fun res!3134274 () Bool)

(assert (=> b!7900170 (=> (not res!3134274) (not e!4663203))))

(declare-fun lt!2682856 () Option!17856)

(assert (=> b!7900170 (= res!3134274 (matchR!10638 (regex!8574 (h!80568 (t!389053 rulesArg!141))) (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682856))))))))

(declare-fun b!7900171 () Bool)

(declare-fun res!3134280 () Bool)

(assert (=> b!7900171 (=> (not res!3134280) (not e!4663203))))

(assert (=> b!7900171 (= res!3134280 (= (++!18144 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682856)))) (_2!38386 (get!26615 lt!2682856))) input!1184))))

(declare-fun d!2358021 () Bool)

(assert (=> d!2358021 e!4663204))

(declare-fun res!3134276 () Bool)

(assert (=> d!2358021 (=> res!3134276 e!4663204)))

(assert (=> d!2358021 (= res!3134276 (isEmpty!42512 lt!2682856))))

(assert (=> d!2358021 (= lt!2682856 e!4663205)))

(declare-fun c!1449843 () Bool)

(assert (=> d!2358021 (= c!1449843 (isEmpty!42515 (_1!38388 lt!2682855)))))

(assert (=> d!2358021 (= lt!2682855 (findLongestMatch!1916 (regex!8574 (h!80568 (t!389053 rulesArg!141))) input!1184))))

(assert (=> d!2358021 (ruleValid!3930 thiss!14377 (h!80568 (t!389053 rulesArg!141)))))

(assert (=> d!2358021 (= (maxPrefixOneRule!3754 thiss!14377 (h!80568 (t!389053 rulesArg!141)) input!1184) lt!2682856)))

(declare-fun b!7900172 () Bool)

(declare-fun res!3134278 () Bool)

(assert (=> b!7900172 (=> (not res!3134278) (not e!4663203))))

(assert (=> b!7900172 (= res!3134278 (< (size!42939 (_2!38386 (get!26615 lt!2682856))) (size!42939 input!1184)))))

(declare-fun b!7900173 () Bool)

(declare-fun res!3134277 () Bool)

(assert (=> b!7900173 (=> (not res!3134277) (not e!4663203))))

(assert (=> b!7900173 (= res!3134277 (= (value!286340 (_1!38386 (get!26615 lt!2682856))) (apply!14321 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682856)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682856)))))))))

(declare-fun b!7900174 () Bool)

(assert (=> b!7900174 (= e!4663206 (matchR!10638 (regex!8574 (h!80568 (t!389053 rulesArg!141))) (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 (t!389053 rulesArg!141))) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))))))

(declare-fun b!7900175 () Bool)

(assert (=> b!7900175 (= e!4663203 (= (size!42938 (_1!38386 (get!26615 lt!2682856))) (size!42939 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682856))))))))

(declare-fun b!7900176 () Bool)

(declare-fun res!3134275 () Bool)

(assert (=> b!7900176 (=> (not res!3134275) (not e!4663203))))

(assert (=> b!7900176 (= res!3134275 (= (rule!11858 (_1!38386 (get!26615 lt!2682856))) (h!80568 (t!389053 rulesArg!141))))))

(assert (= (and d!2358021 c!1449843) b!7900169))

(assert (= (and d!2358021 (not c!1449843)) b!7900168))

(assert (= (and b!7900168 (not res!3134279)) b!7900174))

(assert (= (and d!2358021 (not res!3134276)) b!7900170))

(assert (= (and b!7900170 res!3134274) b!7900171))

(assert (= (and b!7900171 res!3134280) b!7900172))

(assert (= (and b!7900172 res!3134278) b!7900176))

(assert (= (and b!7900176 res!3134275) b!7900173))

(assert (= (and b!7900173 res!3134277) b!7900175))

(declare-fun m!8274902 () Bool)

(assert (=> b!7900170 m!8274902))

(declare-fun m!8274904 () Bool)

(assert (=> b!7900170 m!8274904))

(assert (=> b!7900170 m!8274904))

(declare-fun m!8274906 () Bool)

(assert (=> b!7900170 m!8274906))

(assert (=> b!7900170 m!8274906))

(declare-fun m!8274908 () Bool)

(assert (=> b!7900170 m!8274908))

(assert (=> b!7900174 m!8274790))

(assert (=> b!7900174 m!8274564))

(assert (=> b!7900174 m!8274790))

(assert (=> b!7900174 m!8274564))

(declare-fun m!8274910 () Bool)

(assert (=> b!7900174 m!8274910))

(declare-fun m!8274912 () Bool)

(assert (=> b!7900174 m!8274912))

(declare-fun m!8274914 () Bool)

(assert (=> d!2358021 m!8274914))

(declare-fun m!8274916 () Bool)

(assert (=> d!2358021 m!8274916))

(declare-fun m!8274918 () Bool)

(assert (=> d!2358021 m!8274918))

(declare-fun m!8274920 () Bool)

(assert (=> d!2358021 m!8274920))

(assert (=> b!7900171 m!8274902))

(assert (=> b!7900171 m!8274904))

(assert (=> b!7900171 m!8274904))

(assert (=> b!7900171 m!8274906))

(assert (=> b!7900171 m!8274906))

(declare-fun m!8274922 () Bool)

(assert (=> b!7900171 m!8274922))

(assert (=> b!7900172 m!8274902))

(declare-fun m!8274924 () Bool)

(assert (=> b!7900172 m!8274924))

(assert (=> b!7900172 m!8274564))

(declare-fun m!8274926 () Bool)

(assert (=> b!7900168 m!8274926))

(declare-fun m!8274928 () Bool)

(assert (=> b!7900168 m!8274928))

(declare-fun m!8274930 () Bool)

(assert (=> b!7900168 m!8274930))

(assert (=> b!7900168 m!8274790))

(assert (=> b!7900168 m!8274564))

(assert (=> b!7900168 m!8274910))

(assert (=> b!7900168 m!8274926))

(assert (=> b!7900168 m!8274790))

(assert (=> b!7900168 m!8274926))

(declare-fun m!8274932 () Bool)

(assert (=> b!7900168 m!8274932))

(assert (=> b!7900168 m!8274926))

(declare-fun m!8274934 () Bool)

(assert (=> b!7900168 m!8274934))

(declare-fun m!8274936 () Bool)

(assert (=> b!7900168 m!8274936))

(assert (=> b!7900168 m!8274564))

(assert (=> b!7900175 m!8274902))

(declare-fun m!8274938 () Bool)

(assert (=> b!7900175 m!8274938))

(assert (=> b!7900176 m!8274902))

(assert (=> b!7900173 m!8274902))

(declare-fun m!8274940 () Bool)

(assert (=> b!7900173 m!8274940))

(assert (=> b!7900173 m!8274940))

(declare-fun m!8274942 () Bool)

(assert (=> b!7900173 m!8274942))

(assert (=> bm!733061 d!2358021))

(declare-fun d!2358023 () Bool)

(assert (=> d!2358023 (= (get!26615 lt!2682839) (v!54992 lt!2682839))))

(assert (=> b!7900102 d!2358023))

(declare-fun d!2358025 () Bool)

(assert (=> d!2358025 (= (list!19193 lt!2682749) (list!19195 (c!1449799 lt!2682749)))))

(declare-fun bs!1967910 () Bool)

(assert (= bs!1967910 d!2358025))

(declare-fun m!8274944 () Bool)

(assert (=> bs!1967910 m!8274944))

(assert (=> d!2357925 d!2358025))

(declare-fun d!2358027 () Bool)

(assert (=> d!2358027 (= (get!26615 lt!2682822) (v!54992 lt!2682822))))

(assert (=> b!7900073 d!2358027))

(declare-fun d!2358029 () Bool)

(assert (=> d!2358029 (= (apply!14321 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682822))))) (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822))))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682822))))))))

(declare-fun b_lambda!289615 () Bool)

(assert (=> (not b_lambda!289615) (not d!2358029)))

(declare-fun tb!262675 () Bool)

(declare-fun t!389075 () Bool)

(assert (=> (and b!7899809 (= (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))) (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))))) t!389075) tb!262675))

(declare-fun result!359710 () Bool)

(assert (=> tb!262675 (= result!359710 (inv!21 (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822))))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682822)))))))))

(declare-fun m!8274948 () Bool)

(assert (=> tb!262675 m!8274948))

(assert (=> d!2358029 t!389075))

(declare-fun b_and!352579 () Bool)

(assert (= b_and!352561 (and (=> t!389075 result!359710) b_and!352579)))

(declare-fun t!389077 () Bool)

(declare-fun tb!262677 () Bool)

(assert (=> (and b!7900144 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))))) t!389077) tb!262677))

(declare-fun result!359712 () Bool)

(assert (= result!359712 result!359710))

(assert (=> d!2358029 t!389077))

(declare-fun b_and!352581 () Bool)

(assert (= b_and!352571 (and (=> t!389077 result!359712) b_and!352581)))

(assert (=> d!2358029 m!8274770))

(declare-fun m!8274950 () Bool)

(assert (=> d!2358029 m!8274950))

(assert (=> b!7900073 d!2358029))

(declare-fun d!2358033 () Bool)

(assert (=> d!2358033 (= (seqFromList!6139 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682822)))) (fromListB!2772 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682822)))))))

(declare-fun bs!1967912 () Bool)

(assert (= bs!1967912 d!2358033))

(declare-fun m!8274952 () Bool)

(assert (=> bs!1967912 m!8274952))

(assert (=> b!7900073 d!2358033))

(assert (=> b!7900099 d!2358023))

(declare-fun d!2358035 () Bool)

(assert (=> d!2358035 (= (apply!14321 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682839))))) (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839))))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682839))))))))

(declare-fun b_lambda!289617 () Bool)

(assert (=> (not b_lambda!289617) (not d!2358035)))

(declare-fun tb!262679 () Bool)

(declare-fun t!389079 () Bool)

(assert (=> (and b!7899809 (= (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))) (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839)))))) t!389079) tb!262679))

(declare-fun result!359714 () Bool)

(assert (=> tb!262679 (= result!359714 (inv!21 (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839))))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682839)))))))))

(declare-fun m!8274954 () Bool)

(assert (=> tb!262679 m!8274954))

(assert (=> d!2358035 t!389079))

(declare-fun b_and!352583 () Bool)

(assert (= b_and!352579 (and (=> t!389079 result!359714) b_and!352583)))

(declare-fun tb!262681 () Bool)

(declare-fun t!389081 () Bool)

(assert (=> (and b!7900144 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839)))))) t!389081) tb!262681))

(declare-fun result!359716 () Bool)

(assert (= result!359716 result!359714))

(assert (=> d!2358035 t!389081))

(declare-fun b_and!352585 () Bool)

(assert (= b_and!352581 (and (=> t!389081 result!359716) b_and!352585)))

(assert (=> d!2358035 m!8274820))

(declare-fun m!8274956 () Bool)

(assert (=> d!2358035 m!8274956))

(assert (=> b!7900099 d!2358035))

(declare-fun d!2358037 () Bool)

(assert (=> d!2358037 (= (seqFromList!6139 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682839)))) (fromListB!2772 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682839)))))))

(declare-fun bs!1967913 () Bool)

(assert (= bs!1967913 d!2358037))

(declare-fun m!8274958 () Bool)

(assert (=> bs!1967913 m!8274958))

(assert (=> b!7900099 d!2358037))

(declare-fun d!2358039 () Bool)

(assert (=> d!2358039 (= (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822)))) (list!19195 (c!1449799 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))))))

(declare-fun bs!1967914 () Bool)

(assert (= bs!1967914 d!2358039))

(declare-fun m!8274960 () Bool)

(assert (=> bs!1967914 m!8274960))

(assert (=> b!7900075 d!2358039))

(declare-fun d!2358041 () Bool)

(declare-fun lt!2682859 () BalanceConc!30614)

(assert (=> d!2358041 (= (list!19193 lt!2682859) (originalCharacters!8815 (_1!38386 (get!26615 lt!2682822))))))

(assert (=> d!2358041 (= lt!2682859 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822))))) (value!286340 (_1!38386 (get!26615 lt!2682822)))))))

(assert (=> d!2358041 (= (charsOf!5518 (_1!38386 (get!26615 lt!2682822))) lt!2682859)))

(declare-fun b_lambda!289619 () Bool)

(assert (=> (not b_lambda!289619) (not d!2358041)))

(declare-fun tb!262683 () Bool)

(declare-fun t!389083 () Bool)

(assert (=> (and b!7899809 (= (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))) (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))))) t!389083) tb!262683))

(declare-fun b!7900181 () Bool)

(declare-fun e!4663209 () Bool)

(declare-fun tp!2353727 () Bool)

(assert (=> b!7900181 (= e!4663209 (and (inv!95102 (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822))))) (value!286340 (_1!38386 (get!26615 lt!2682822)))))) tp!2353727))))

(declare-fun result!359718 () Bool)

(assert (=> tb!262683 (= result!359718 (and (inv!95103 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822))))) (value!286340 (_1!38386 (get!26615 lt!2682822))))) e!4663209))))

(assert (= tb!262683 b!7900181))

(declare-fun m!8274962 () Bool)

(assert (=> b!7900181 m!8274962))

(declare-fun m!8274964 () Bool)

(assert (=> tb!262683 m!8274964))

(assert (=> d!2358041 t!389083))

(declare-fun b_and!352587 () Bool)

(assert (= b_and!352559 (and (=> t!389083 result!359718) b_and!352587)))

(declare-fun t!389085 () Bool)

(declare-fun tb!262685 () Bool)

(assert (=> (and b!7900144 (= (toChars!11474 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))))) t!389085) tb!262685))

(declare-fun result!359720 () Bool)

(assert (= result!359720 result!359718))

(assert (=> d!2358041 t!389085))

(declare-fun b_and!352589 () Bool)

(assert (= b_and!352573 (and (=> t!389085 result!359720) b_and!352589)))

(declare-fun m!8274966 () Bool)

(assert (=> d!2358041 m!8274966))

(declare-fun m!8274968 () Bool)

(assert (=> d!2358041 m!8274968))

(assert (=> b!7900075 d!2358041))

(assert (=> b!7900075 d!2358027))

(assert (=> b!7900101 d!2358023))

(declare-fun d!2358043 () Bool)

(declare-fun lt!2682860 () Int)

(assert (=> d!2358043 (>= lt!2682860 0)))

(declare-fun e!4663210 () Int)

(assert (=> d!2358043 (= lt!2682860 e!4663210)))

(declare-fun c!1449844 () Bool)

(assert (=> d!2358043 (= c!1449844 ((_ is Nil!74119) (originalCharacters!8815 (_1!38386 (get!26615 lt!2682839)))))))

(assert (=> d!2358043 (= (size!42939 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682839)))) lt!2682860)))

(declare-fun b!7900182 () Bool)

(assert (=> b!7900182 (= e!4663210 0)))

(declare-fun b!7900183 () Bool)

(assert (=> b!7900183 (= e!4663210 (+ 1 (size!42939 (t!389052 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682839)))))))))

(assert (= (and d!2358043 c!1449844) b!7900182))

(assert (= (and d!2358043 (not c!1449844)) b!7900183))

(declare-fun m!8274970 () Bool)

(assert (=> b!7900183 m!8274970))

(assert (=> b!7900101 d!2358043))

(declare-fun d!2358045 () Bool)

(assert (=> d!2358045 true))

(declare-fun order!29801 () Int)

(declare-fun lambda!472400 () Int)

(declare-fun order!29799 () Int)

(declare-fun dynLambda!30034 (Int Int) Int)

(declare-fun dynLambda!30035 (Int Int) Int)

(assert (=> d!2358045 (< (dynLambda!30034 order!29799 (toChars!11474 (transformation!8574 (h!80568 rulesArg!141)))) (dynLambda!30035 order!29801 lambda!472400))))

(assert (=> d!2358045 true))

(declare-fun order!29803 () Int)

(declare-fun dynLambda!30036 (Int Int) Int)

(assert (=> d!2358045 (< (dynLambda!30036 order!29803 (toValue!11615 (transformation!8574 (h!80568 rulesArg!141)))) (dynLambda!30035 order!29801 lambda!472400))))

(declare-fun Forall!1840 (Int) Bool)

(assert (=> d!2358045 (= (semiInverseModEq!3809 (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))) (toValue!11615 (transformation!8574 (h!80568 rulesArg!141)))) (Forall!1840 lambda!472400))))

(declare-fun bs!1967915 () Bool)

(assert (= bs!1967915 d!2358045))

(declare-fun m!8274972 () Bool)

(assert (=> bs!1967915 m!8274972))

(assert (=> d!2357947 d!2358045))

(declare-fun d!2358047 () Bool)

(assert (=> d!2358047 (= (isDefined!14432 lt!2682822) (not (isEmpty!42512 lt!2682822)))))

(declare-fun bs!1967916 () Bool)

(assert (= bs!1967916 d!2358047))

(assert (=> bs!1967916 m!8274762))

(assert (=> b!7900074 d!2358047))

(declare-fun b!7900272 () Bool)

(declare-fun e!4663254 () Bool)

(assert (=> b!7900272 (= e!4663254 (= (head!16141 (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))) (c!1449800 (regex!8574 (h!80568 rulesArg!141)))))))

(declare-fun d!2358049 () Bool)

(declare-fun e!4663253 () Bool)

(assert (=> d!2358049 e!4663253))

(declare-fun c!1449864 () Bool)

(assert (=> d!2358049 (= c!1449864 ((_ is EmptyExpr!21277) (regex!8574 (h!80568 rulesArg!141))))))

(declare-fun lt!2682873 () Bool)

(declare-fun e!4663256 () Bool)

(assert (=> d!2358049 (= lt!2682873 e!4663256)))

(declare-fun c!1449863 () Bool)

(assert (=> d!2358049 (= c!1449863 (isEmpty!42515 (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))))))

(assert (=> d!2358049 (validRegex!11643 (regex!8574 (h!80568 rulesArg!141)))))

(assert (=> d!2358049 (= (matchR!10638 (regex!8574 (h!80568 rulesArg!141)) (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))) lt!2682873)))

(declare-fun b!7900273 () Bool)

(assert (=> b!7900273 (= e!4663256 (nullable!9480 (regex!8574 (h!80568 rulesArg!141))))))

(declare-fun b!7900274 () Bool)

(declare-fun e!4663255 () Bool)

(assert (=> b!7900274 (= e!4663253 e!4663255)))

(declare-fun c!1449862 () Bool)

(assert (=> b!7900274 (= c!1449862 ((_ is EmptyLang!21277) (regex!8574 (h!80568 rulesArg!141))))))

(declare-fun b!7900275 () Bool)

(declare-fun res!3134334 () Bool)

(assert (=> b!7900275 (=> (not res!3134334) (not e!4663254))))

(assert (=> b!7900275 (= res!3134334 (isEmpty!42515 (tail!15684 (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184))))))))

(declare-fun b!7900276 () Bool)

(declare-fun e!4663252 () Bool)

(declare-fun e!4663258 () Bool)

(assert (=> b!7900276 (= e!4663252 e!4663258)))

(declare-fun res!3134333 () Bool)

(assert (=> b!7900276 (=> (not res!3134333) (not e!4663258))))

(assert (=> b!7900276 (= res!3134333 (not lt!2682873))))

(declare-fun bm!733068 () Bool)

(declare-fun call!733073 () Bool)

(assert (=> bm!733068 (= call!733073 (isEmpty!42515 (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))))))

(declare-fun b!7900277 () Bool)

(assert (=> b!7900277 (= e!4663255 (not lt!2682873))))

(declare-fun b!7900278 () Bool)

(declare-fun e!4663257 () Bool)

(assert (=> b!7900278 (= e!4663257 (not (= (head!16141 (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))) (c!1449800 (regex!8574 (h!80568 rulesArg!141))))))))

(declare-fun b!7900279 () Bool)

(declare-fun res!3134332 () Bool)

(assert (=> b!7900279 (=> res!3134332 e!4663252)))

(assert (=> b!7900279 (= res!3134332 (not ((_ is ElementMatch!21277) (regex!8574 (h!80568 rulesArg!141)))))))

(assert (=> b!7900279 (= e!4663255 e!4663252)))

(declare-fun b!7900280 () Bool)

(declare-fun derivativeStep!6424 (Regex!21277 C!42884) Regex!21277)

(assert (=> b!7900280 (= e!4663256 (matchR!10638 (derivativeStep!6424 (regex!8574 (h!80568 rulesArg!141)) (head!16141 (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184))))) (tail!15684 (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184))))))))

(declare-fun b!7900281 () Bool)

(declare-fun res!3134336 () Bool)

(assert (=> b!7900281 (=> res!3134336 e!4663252)))

(assert (=> b!7900281 (= res!3134336 e!4663254)))

(declare-fun res!3134331 () Bool)

(assert (=> b!7900281 (=> (not res!3134331) (not e!4663254))))

(assert (=> b!7900281 (= res!3134331 lt!2682873)))

(declare-fun b!7900282 () Bool)

(declare-fun res!3134337 () Bool)

(assert (=> b!7900282 (=> (not res!3134337) (not e!4663254))))

(assert (=> b!7900282 (= res!3134337 (not call!733073))))

(declare-fun b!7900283 () Bool)

(declare-fun res!3134330 () Bool)

(assert (=> b!7900283 (=> res!3134330 e!4663257)))

(assert (=> b!7900283 (= res!3134330 (not (isEmpty!42515 (tail!15684 (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))))))))

(declare-fun b!7900284 () Bool)

(assert (=> b!7900284 (= e!4663258 e!4663257)))

(declare-fun res!3134335 () Bool)

(assert (=> b!7900284 (=> res!3134335 e!4663257)))

(assert (=> b!7900284 (= res!3134335 call!733073)))

(declare-fun b!7900285 () Bool)

(assert (=> b!7900285 (= e!4663253 (= lt!2682873 call!733073))))

(assert (= (and d!2358049 c!1449863) b!7900273))

(assert (= (and d!2358049 (not c!1449863)) b!7900280))

(assert (= (and d!2358049 c!1449864) b!7900285))

(assert (= (and d!2358049 (not c!1449864)) b!7900274))

(assert (= (and b!7900274 c!1449862) b!7900277))

(assert (= (and b!7900274 (not c!1449862)) b!7900279))

(assert (= (and b!7900279 (not res!3134332)) b!7900281))

(assert (= (and b!7900281 res!3134331) b!7900282))

(assert (= (and b!7900282 res!3134337) b!7900275))

(assert (= (and b!7900275 res!3134334) b!7900272))

(assert (= (and b!7900281 (not res!3134336)) b!7900276))

(assert (= (and b!7900276 res!3134333) b!7900284))

(assert (= (and b!7900284 (not res!3134335)) b!7900283))

(assert (= (and b!7900283 (not res!3134330)) b!7900278))

(assert (= (or b!7900285 b!7900284 b!7900282) bm!733068))

(assert (=> bm!733068 m!8274810))

(declare-fun m!8275040 () Bool)

(assert (=> b!7900278 m!8275040))

(assert (=> b!7900280 m!8275040))

(assert (=> b!7900280 m!8275040))

(declare-fun m!8275042 () Bool)

(assert (=> b!7900280 m!8275042))

(declare-fun m!8275044 () Bool)

(assert (=> b!7900280 m!8275044))

(assert (=> b!7900280 m!8275042))

(assert (=> b!7900280 m!8275044))

(declare-fun m!8275046 () Bool)

(assert (=> b!7900280 m!8275046))

(declare-fun m!8275048 () Bool)

(assert (=> b!7900273 m!8275048))

(assert (=> b!7900275 m!8275044))

(assert (=> b!7900275 m!8275044))

(declare-fun m!8275050 () Bool)

(assert (=> b!7900275 m!8275050))

(assert (=> d!2358049 m!8274810))

(declare-fun m!8275052 () Bool)

(assert (=> d!2358049 m!8275052))

(assert (=> b!7900283 m!8275044))

(assert (=> b!7900283 m!8275044))

(assert (=> b!7900283 m!8275050))

(assert (=> b!7900272 m!8275040))

(assert (=> b!7900100 d!2358049))

(declare-fun d!2358063 () Bool)

(declare-fun e!4663351 () Bool)

(assert (=> d!2358063 e!4663351))

(declare-fun res!3134390 () Bool)

(assert (=> d!2358063 (=> (not res!3134390) (not e!4663351))))

(declare-fun lt!2682978 () tuple2!70170)

(assert (=> d!2358063 (= res!3134390 (= (++!18144 (_1!38388 lt!2682978) (_2!38388 lt!2682978)) input!1184))))

(declare-fun e!4663349 () tuple2!70170)

(assert (=> d!2358063 (= lt!2682978 e!4663349)))

(declare-fun c!1449913 () Bool)

(declare-fun lostCause!1911 (Regex!21277) Bool)

(assert (=> d!2358063 (= c!1449913 (lostCause!1911 (regex!8574 (h!80568 rulesArg!141))))))

(declare-fun lt!2682975 () Unit!169137)

(declare-fun Unit!169139 () Unit!169137)

(assert (=> d!2358063 (= lt!2682975 Unit!169139)))

(declare-fun getSuffix!3679 (List!74243 List!74243) List!74243)

(assert (=> d!2358063 (= (getSuffix!3679 input!1184 Nil!74119) input!1184)))

(declare-fun lt!2682972 () Unit!169137)

(declare-fun lt!2682976 () Unit!169137)

(assert (=> d!2358063 (= lt!2682972 lt!2682976)))

(declare-fun lt!2682965 () List!74243)

(assert (=> d!2358063 (= input!1184 lt!2682965)))

(declare-fun lemmaSamePrefixThenSameSuffix!2927 (List!74243 List!74243 List!74243 List!74243 List!74243) Unit!169137)

(assert (=> d!2358063 (= lt!2682976 (lemmaSamePrefixThenSameSuffix!2927 Nil!74119 input!1184 Nil!74119 lt!2682965 input!1184))))

(assert (=> d!2358063 (= lt!2682965 (getSuffix!3679 input!1184 Nil!74119))))

(declare-fun lt!2682964 () Unit!169137)

(declare-fun lt!2682979 () Unit!169137)

(assert (=> d!2358063 (= lt!2682964 lt!2682979)))

(assert (=> d!2358063 (isPrefix!6407 Nil!74119 (++!18144 Nil!74119 input!1184))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3789 (List!74243 List!74243) Unit!169137)

(assert (=> d!2358063 (= lt!2682979 (lemmaConcatTwoListThenFirstIsPrefix!3789 Nil!74119 input!1184))))

(assert (=> d!2358063 (validRegex!11643 (regex!8574 (h!80568 rulesArg!141)))))

(assert (=> d!2358063 (= (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)) lt!2682978)))

(declare-fun bm!733093 () Bool)

(declare-fun call!733102 () Unit!169137)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1559 (List!74243 List!74243 List!74243) Unit!169137)

(assert (=> bm!733093 (= call!733102 (lemmaIsPrefixSameLengthThenSameList!1559 input!1184 Nil!74119 input!1184))))

(declare-fun b!7900431 () Bool)

(declare-fun e!4663350 () Unit!169137)

(declare-fun Unit!169140 () Unit!169137)

(assert (=> b!7900431 (= e!4663350 Unit!169140)))

(declare-fun bm!733094 () Bool)

(declare-fun call!733103 () Bool)

(assert (=> bm!733094 (= call!733103 (nullable!9480 (regex!8574 (h!80568 rulesArg!141))))))

(declare-fun bm!733095 () Bool)

(declare-fun call!733100 () Regex!21277)

(declare-fun call!733104 () C!42884)

(assert (=> bm!733095 (= call!733100 (derivativeStep!6424 (regex!8574 (h!80568 rulesArg!141)) call!733104))))

(declare-fun call!733105 () List!74243)

(declare-fun call!733101 () tuple2!70170)

(declare-fun bm!733096 () Bool)

(declare-fun lt!2682977 () List!74243)

(assert (=> bm!733096 (= call!733101 (findLongestMatchInner!2149 call!733100 lt!2682977 (+ (size!42939 Nil!74119) 1) call!733105 input!1184 (size!42939 input!1184)))))

(declare-fun bm!733097 () Bool)

(assert (=> bm!733097 (= call!733105 (tail!15684 input!1184))))

(declare-fun b!7900432 () Bool)

(declare-fun e!4663347 () tuple2!70170)

(assert (=> b!7900432 (= e!4663347 (tuple2!70171 Nil!74119 Nil!74119))))

(declare-fun b!7900433 () Bool)

(declare-fun e!4663352 () Bool)

(assert (=> b!7900433 (= e!4663352 (>= (size!42939 (_1!38388 lt!2682978)) (size!42939 Nil!74119)))))

(declare-fun b!7900434 () Bool)

(assert (=> b!7900434 (= e!4663351 e!4663352)))

(declare-fun res!3134391 () Bool)

(assert (=> b!7900434 (=> res!3134391 e!4663352)))

(assert (=> b!7900434 (= res!3134391 (isEmpty!42515 (_1!38388 lt!2682978)))))

(declare-fun b!7900435 () Bool)

(declare-fun e!4663348 () tuple2!70170)

(assert (=> b!7900435 (= e!4663348 call!733101)))

(declare-fun b!7900436 () Bool)

(assert (=> b!7900436 (= e!4663347 (tuple2!70171 Nil!74119 input!1184))))

(declare-fun b!7900437 () Bool)

(declare-fun e!4663353 () tuple2!70170)

(assert (=> b!7900437 (= e!4663353 (tuple2!70171 Nil!74119 input!1184))))

(declare-fun b!7900438 () Bool)

(assert (=> b!7900438 (= e!4663349 (tuple2!70171 Nil!74119 input!1184))))

(declare-fun b!7900439 () Bool)

(declare-fun lt!2682981 () tuple2!70170)

(assert (=> b!7900439 (= e!4663353 lt!2682981)))

(declare-fun b!7900440 () Bool)

(declare-fun e!4663346 () tuple2!70170)

(assert (=> b!7900440 (= e!4663349 e!4663346)))

(declare-fun c!1449912 () Bool)

(assert (=> b!7900440 (= c!1449912 (= (size!42939 Nil!74119) (size!42939 input!1184)))))

(declare-fun b!7900441 () Bool)

(declare-fun c!1449915 () Bool)

(assert (=> b!7900441 (= c!1449915 call!733103)))

(declare-fun lt!2682966 () Unit!169137)

(declare-fun lt!2682983 () Unit!169137)

(assert (=> b!7900441 (= lt!2682966 lt!2682983)))

(declare-fun lt!2682990 () C!42884)

(declare-fun lt!2682986 () List!74243)

(assert (=> b!7900441 (= (++!18144 (++!18144 Nil!74119 (Cons!74119 lt!2682990 Nil!74119)) lt!2682986) input!1184)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3466 (List!74243 C!42884 List!74243 List!74243) Unit!169137)

(assert (=> b!7900441 (= lt!2682983 (lemmaMoveElementToOtherListKeepsConcatEq!3466 Nil!74119 lt!2682990 lt!2682986 input!1184))))

(assert (=> b!7900441 (= lt!2682986 (tail!15684 input!1184))))

(assert (=> b!7900441 (= lt!2682990 (head!16141 input!1184))))

(declare-fun lt!2682984 () Unit!169137)

(declare-fun lt!2682985 () Unit!169137)

(assert (=> b!7900441 (= lt!2682984 lt!2682985)))

(assert (=> b!7900441 (isPrefix!6407 (++!18144 Nil!74119 (Cons!74119 (head!16141 (getSuffix!3679 input!1184 Nil!74119)) Nil!74119)) input!1184)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1244 (List!74243 List!74243) Unit!169137)

(assert (=> b!7900441 (= lt!2682985 (lemmaAddHeadSuffixToPrefixStillPrefix!1244 Nil!74119 input!1184))))

(declare-fun lt!2682969 () Unit!169137)

(declare-fun lt!2682989 () Unit!169137)

(assert (=> b!7900441 (= lt!2682969 lt!2682989)))

(assert (=> b!7900441 (= lt!2682989 (lemmaAddHeadSuffixToPrefixStillPrefix!1244 Nil!74119 input!1184))))

(assert (=> b!7900441 (= lt!2682977 (++!18144 Nil!74119 (Cons!74119 (head!16141 input!1184) Nil!74119)))))

(declare-fun lt!2682980 () Unit!169137)

(assert (=> b!7900441 (= lt!2682980 e!4663350)))

(declare-fun c!1449916 () Bool)

(assert (=> b!7900441 (= c!1449916 (= (size!42939 Nil!74119) (size!42939 input!1184)))))

(declare-fun lt!2682973 () Unit!169137)

(declare-fun lt!2682987 () Unit!169137)

(assert (=> b!7900441 (= lt!2682973 lt!2682987)))

(assert (=> b!7900441 (<= (size!42939 Nil!74119) (size!42939 input!1184))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1024 (List!74243 List!74243) Unit!169137)

(assert (=> b!7900441 (= lt!2682987 (lemmaIsPrefixThenSmallerEqSize!1024 Nil!74119 input!1184))))

(assert (=> b!7900441 (= e!4663346 e!4663348)))

(declare-fun b!7900442 () Bool)

(declare-fun Unit!169141 () Unit!169137)

(assert (=> b!7900442 (= e!4663350 Unit!169141)))

(declare-fun lt!2682982 () Unit!169137)

(declare-fun call!733099 () Unit!169137)

(assert (=> b!7900442 (= lt!2682982 call!733099)))

(declare-fun call!733098 () Bool)

(assert (=> b!7900442 call!733098))

(declare-fun lt!2682991 () Unit!169137)

(assert (=> b!7900442 (= lt!2682991 lt!2682982)))

(declare-fun lt!2682967 () Unit!169137)

(assert (=> b!7900442 (= lt!2682967 call!733102)))

(assert (=> b!7900442 (= input!1184 Nil!74119)))

(declare-fun lt!2682971 () Unit!169137)

(assert (=> b!7900442 (= lt!2682971 lt!2682967)))

(assert (=> b!7900442 false))

(declare-fun b!7900443 () Bool)

(declare-fun c!1449911 () Bool)

(assert (=> b!7900443 (= c!1449911 call!733103)))

(declare-fun lt!2682988 () Unit!169137)

(declare-fun lt!2682970 () Unit!169137)

(assert (=> b!7900443 (= lt!2682988 lt!2682970)))

(assert (=> b!7900443 (= input!1184 Nil!74119)))

(assert (=> b!7900443 (= lt!2682970 call!733102)))

(declare-fun lt!2682974 () Unit!169137)

(declare-fun lt!2682968 () Unit!169137)

(assert (=> b!7900443 (= lt!2682974 lt!2682968)))

(assert (=> b!7900443 call!733098))

(assert (=> b!7900443 (= lt!2682968 call!733099)))

(assert (=> b!7900443 (= e!4663346 e!4663347)))

(declare-fun b!7900444 () Bool)

(assert (=> b!7900444 (= e!4663348 e!4663353)))

(assert (=> b!7900444 (= lt!2682981 call!733101)))

(declare-fun c!1449914 () Bool)

(assert (=> b!7900444 (= c!1449914 (isEmpty!42515 (_1!38388 lt!2682981)))))

(declare-fun bm!733098 () Bool)

(assert (=> bm!733098 (= call!733099 (lemmaIsPrefixRefl!3918 input!1184 input!1184))))

(declare-fun bm!733099 () Bool)

(assert (=> bm!733099 (= call!733104 (head!16141 input!1184))))

(declare-fun bm!733100 () Bool)

(assert (=> bm!733100 (= call!733098 (isPrefix!6407 input!1184 input!1184))))

(assert (= (and d!2358063 c!1449913) b!7900438))

(assert (= (and d!2358063 (not c!1449913)) b!7900440))

(assert (= (and b!7900440 c!1449912) b!7900443))

(assert (= (and b!7900440 (not c!1449912)) b!7900441))

(assert (= (and b!7900443 c!1449911) b!7900432))

(assert (= (and b!7900443 (not c!1449911)) b!7900436))

(assert (= (and b!7900441 c!1449916) b!7900442))

(assert (= (and b!7900441 (not c!1449916)) b!7900431))

(assert (= (and b!7900441 c!1449915) b!7900444))

(assert (= (and b!7900441 (not c!1449915)) b!7900435))

(assert (= (and b!7900444 c!1449914) b!7900437))

(assert (= (and b!7900444 (not c!1449914)) b!7900439))

(assert (= (or b!7900444 b!7900435) bm!733097))

(assert (= (or b!7900444 b!7900435) bm!733099))

(assert (= (or b!7900444 b!7900435) bm!733095))

(assert (= (or b!7900444 b!7900435) bm!733096))

(assert (= (or b!7900443 b!7900442) bm!733100))

(assert (= (or b!7900443 b!7900441) bm!733094))

(assert (= (or b!7900443 b!7900442) bm!733098))

(assert (= (or b!7900443 b!7900442) bm!733093))

(assert (= (and d!2358063 res!3134390) b!7900434))

(assert (= (and b!7900434 (not res!3134391)) b!7900433))

(declare-fun m!8275182 () Bool)

(assert (=> bm!733093 m!8275182))

(declare-fun m!8275184 () Bool)

(assert (=> bm!733095 m!8275184))

(assert (=> bm!733097 m!8274692))

(assert (=> bm!733096 m!8274564))

(declare-fun m!8275186 () Bool)

(assert (=> bm!733096 m!8275186))

(assert (=> bm!733094 m!8275048))

(declare-fun m!8275188 () Bool)

(assert (=> b!7900434 m!8275188))

(assert (=> bm!733098 m!8274560))

(assert (=> bm!733100 m!8274558))

(declare-fun m!8275190 () Bool)

(assert (=> b!7900441 m!8275190))

(declare-fun m!8275192 () Bool)

(assert (=> b!7900441 m!8275192))

(assert (=> b!7900441 m!8274564))

(declare-fun m!8275194 () Bool)

(assert (=> b!7900441 m!8275194))

(assert (=> b!7900441 m!8274692))

(assert (=> b!7900441 m!8275194))

(declare-fun m!8275196 () Bool)

(assert (=> b!7900441 m!8275196))

(declare-fun m!8275198 () Bool)

(assert (=> b!7900441 m!8275198))

(declare-fun m!8275200 () Bool)

(assert (=> b!7900441 m!8275200))

(assert (=> b!7900441 m!8274690))

(declare-fun m!8275202 () Bool)

(assert (=> b!7900441 m!8275202))

(assert (=> b!7900441 m!8275190))

(declare-fun m!8275204 () Bool)

(assert (=> b!7900441 m!8275204))

(assert (=> b!7900441 m!8275204))

(declare-fun m!8275206 () Bool)

(assert (=> b!7900441 m!8275206))

(assert (=> b!7900441 m!8274790))

(declare-fun m!8275208 () Bool)

(assert (=> b!7900441 m!8275208))

(declare-fun m!8275210 () Bool)

(assert (=> d!2358063 m!8275210))

(declare-fun m!8275212 () Bool)

(assert (=> d!2358063 m!8275212))

(declare-fun m!8275214 () Bool)

(assert (=> d!2358063 m!8275214))

(assert (=> d!2358063 m!8275204))

(assert (=> d!2358063 m!8275212))

(assert (=> d!2358063 m!8275052))

(declare-fun m!8275216 () Bool)

(assert (=> d!2358063 m!8275216))

(declare-fun m!8275218 () Bool)

(assert (=> d!2358063 m!8275218))

(declare-fun m!8275220 () Bool)

(assert (=> d!2358063 m!8275220))

(declare-fun m!8275222 () Bool)

(assert (=> b!7900444 m!8275222))

(assert (=> bm!733099 m!8274690))

(declare-fun m!8275224 () Bool)

(assert (=> b!7900433 m!8275224))

(assert (=> b!7900433 m!8274790))

(assert (=> b!7900100 d!2358063))

(declare-fun d!2358125 () Bool)

(declare-fun lt!2682992 () Int)

(assert (=> d!2358125 (>= lt!2682992 0)))

(declare-fun e!4663354 () Int)

(assert (=> d!2358125 (= lt!2682992 e!4663354)))

(declare-fun c!1449917 () Bool)

(assert (=> d!2358125 (= c!1449917 ((_ is Nil!74119) Nil!74119))))

(assert (=> d!2358125 (= (size!42939 Nil!74119) lt!2682992)))

(declare-fun b!7900445 () Bool)

(assert (=> b!7900445 (= e!4663354 0)))

(declare-fun b!7900446 () Bool)

(assert (=> b!7900446 (= e!4663354 (+ 1 (size!42939 (t!389052 Nil!74119))))))

(assert (= (and d!2358125 c!1449917) b!7900445))

(assert (= (and d!2358125 (not c!1449917)) b!7900446))

(declare-fun m!8275226 () Bool)

(assert (=> b!7900446 m!8275226))

(assert (=> b!7900100 d!2358125))

(assert (=> b!7900100 d!2357943))

(declare-fun b!7900447 () Bool)

(declare-fun e!4663357 () Bool)

(assert (=> b!7900447 (= e!4663357 (= (head!16141 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))) (c!1449800 (regex!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))))))))

(declare-fun d!2358127 () Bool)

(declare-fun e!4663356 () Bool)

(assert (=> d!2358127 e!4663356))

(declare-fun c!1449920 () Bool)

(assert (=> d!2358127 (= c!1449920 ((_ is EmptyExpr!21277) (regex!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822))))))))

(declare-fun lt!2682993 () Bool)

(declare-fun e!4663359 () Bool)

(assert (=> d!2358127 (= lt!2682993 e!4663359)))

(declare-fun c!1449919 () Bool)

(assert (=> d!2358127 (= c!1449919 (isEmpty!42515 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))))))

(assert (=> d!2358127 (validRegex!11643 (regex!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))))))

(assert (=> d!2358127 (= (matchR!10638 (regex!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))) (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))) lt!2682993)))

(declare-fun b!7900448 () Bool)

(assert (=> b!7900448 (= e!4663359 (nullable!9480 (regex!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822))))))))

(declare-fun b!7900449 () Bool)

(declare-fun e!4663358 () Bool)

(assert (=> b!7900449 (= e!4663356 e!4663358)))

(declare-fun c!1449918 () Bool)

(assert (=> b!7900449 (= c!1449918 ((_ is EmptyLang!21277) (regex!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822))))))))

(declare-fun b!7900450 () Bool)

(declare-fun res!3134396 () Bool)

(assert (=> b!7900450 (=> (not res!3134396) (not e!4663357))))

(assert (=> b!7900450 (= res!3134396 (isEmpty!42515 (tail!15684 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822)))))))))

(declare-fun b!7900451 () Bool)

(declare-fun e!4663355 () Bool)

(declare-fun e!4663361 () Bool)

(assert (=> b!7900451 (= e!4663355 e!4663361)))

(declare-fun res!3134395 () Bool)

(assert (=> b!7900451 (=> (not res!3134395) (not e!4663361))))

(assert (=> b!7900451 (= res!3134395 (not lt!2682993))))

(declare-fun bm!733101 () Bool)

(declare-fun call!733106 () Bool)

(assert (=> bm!733101 (= call!733106 (isEmpty!42515 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))))))

(declare-fun b!7900452 () Bool)

(assert (=> b!7900452 (= e!4663358 (not lt!2682993))))

(declare-fun b!7900453 () Bool)

(declare-fun e!4663360 () Bool)

(assert (=> b!7900453 (= e!4663360 (not (= (head!16141 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))) (c!1449800 (regex!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822))))))))))

(declare-fun b!7900454 () Bool)

(declare-fun res!3134394 () Bool)

(assert (=> b!7900454 (=> res!3134394 e!4663355)))

(assert (=> b!7900454 (= res!3134394 (not ((_ is ElementMatch!21277) (regex!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))))))))

(assert (=> b!7900454 (= e!4663358 e!4663355)))

(declare-fun b!7900455 () Bool)

(assert (=> b!7900455 (= e!4663359 (matchR!10638 (derivativeStep!6424 (regex!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))) (head!16141 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822)))))) (tail!15684 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822)))))))))

(declare-fun b!7900456 () Bool)

(declare-fun res!3134398 () Bool)

(assert (=> b!7900456 (=> res!3134398 e!4663355)))

(assert (=> b!7900456 (= res!3134398 e!4663357)))

(declare-fun res!3134393 () Bool)

(assert (=> b!7900456 (=> (not res!3134393) (not e!4663357))))

(assert (=> b!7900456 (= res!3134393 lt!2682993)))

(declare-fun b!7900457 () Bool)

(declare-fun res!3134399 () Bool)

(assert (=> b!7900457 (=> (not res!3134399) (not e!4663357))))

(assert (=> b!7900457 (= res!3134399 (not call!733106))))

(declare-fun b!7900458 () Bool)

(declare-fun res!3134392 () Bool)

(assert (=> b!7900458 (=> res!3134392 e!4663360)))

(assert (=> b!7900458 (= res!3134392 (not (isEmpty!42515 (tail!15684 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))))))))

(declare-fun b!7900459 () Bool)

(assert (=> b!7900459 (= e!4663361 e!4663360)))

(declare-fun res!3134397 () Bool)

(assert (=> b!7900459 (=> res!3134397 e!4663360)))

(assert (=> b!7900459 (= res!3134397 call!733106)))

(declare-fun b!7900460 () Bool)

(assert (=> b!7900460 (= e!4663356 (= lt!2682993 call!733106))))

(assert (= (and d!2358127 c!1449919) b!7900448))

(assert (= (and d!2358127 (not c!1449919)) b!7900455))

(assert (= (and d!2358127 c!1449920) b!7900460))

(assert (= (and d!2358127 (not c!1449920)) b!7900449))

(assert (= (and b!7900449 c!1449918) b!7900452))

(assert (= (and b!7900449 (not c!1449918)) b!7900454))

(assert (= (and b!7900454 (not res!3134394)) b!7900456))

(assert (= (and b!7900456 res!3134393) b!7900457))

(assert (= (and b!7900457 res!3134399) b!7900450))

(assert (= (and b!7900450 res!3134396) b!7900447))

(assert (= (and b!7900456 (not res!3134398)) b!7900451))

(assert (= (and b!7900451 res!3134395) b!7900459))

(assert (= (and b!7900459 (not res!3134397)) b!7900458))

(assert (= (and b!7900458 (not res!3134392)) b!7900453))

(assert (= (or b!7900460 b!7900459 b!7900457) bm!733101))

(assert (=> bm!733101 m!8274760))

(declare-fun m!8275228 () Bool)

(assert (=> bm!733101 m!8275228))

(assert (=> b!7900453 m!8274760))

(declare-fun m!8275230 () Bool)

(assert (=> b!7900453 m!8275230))

(assert (=> b!7900455 m!8274760))

(assert (=> b!7900455 m!8275230))

(assert (=> b!7900455 m!8275230))

(declare-fun m!8275232 () Bool)

(assert (=> b!7900455 m!8275232))

(assert (=> b!7900455 m!8274760))

(declare-fun m!8275234 () Bool)

(assert (=> b!7900455 m!8275234))

(assert (=> b!7900455 m!8275232))

(assert (=> b!7900455 m!8275234))

(declare-fun m!8275236 () Bool)

(assert (=> b!7900455 m!8275236))

(declare-fun m!8275238 () Bool)

(assert (=> b!7900448 m!8275238))

(assert (=> b!7900450 m!8274760))

(assert (=> b!7900450 m!8275234))

(assert (=> b!7900450 m!8275234))

(declare-fun m!8275240 () Bool)

(assert (=> b!7900450 m!8275240))

(assert (=> d!2358127 m!8274760))

(assert (=> d!2358127 m!8275228))

(declare-fun m!8275242 () Bool)

(assert (=> d!2358127 m!8275242))

(assert (=> b!7900458 m!8274760))

(assert (=> b!7900458 m!8275234))

(assert (=> b!7900458 m!8275234))

(assert (=> b!7900458 m!8275240))

(assert (=> b!7900447 m!8274760))

(assert (=> b!7900447 m!8275230))

(assert (=> b!7900071 d!2358127))

(assert (=> b!7900071 d!2358027))

(assert (=> b!7900071 d!2358039))

(assert (=> b!7900071 d!2358041))

(declare-fun b!7900464 () Bool)

(declare-fun e!4663362 () Bool)

(declare-fun lt!2682994 () List!74243)

(assert (=> b!7900464 (= e!4663362 (or (not (= (_2!38386 (get!26615 lt!2682839)) Nil!74119)) (= lt!2682994 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839)))))))))

(declare-fun b!7900461 () Bool)

(declare-fun e!4663363 () List!74243)

(assert (=> b!7900461 (= e!4663363 (_2!38386 (get!26615 lt!2682839)))))

(declare-fun b!7900463 () Bool)

(declare-fun res!3134401 () Bool)

(assert (=> b!7900463 (=> (not res!3134401) (not e!4663362))))

(assert (=> b!7900463 (= res!3134401 (= (size!42939 lt!2682994) (+ (size!42939 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))) (size!42939 (_2!38386 (get!26615 lt!2682839))))))))

(declare-fun b!7900462 () Bool)

(assert (=> b!7900462 (= e!4663363 (Cons!74119 (h!80567 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))) (++!18144 (t!389052 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))) (_2!38386 (get!26615 lt!2682839)))))))

(declare-fun d!2358129 () Bool)

(assert (=> d!2358129 e!4663362))

(declare-fun res!3134400 () Bool)

(assert (=> d!2358129 (=> (not res!3134400) (not e!4663362))))

(assert (=> d!2358129 (= res!3134400 (= (content!15707 lt!2682994) ((_ map or) (content!15707 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))) (content!15707 (_2!38386 (get!26615 lt!2682839))))))))

(assert (=> d!2358129 (= lt!2682994 e!4663363)))

(declare-fun c!1449921 () Bool)

(assert (=> d!2358129 (= c!1449921 ((_ is Nil!74119) (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))))))

(assert (=> d!2358129 (= (++!18144 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839)))) (_2!38386 (get!26615 lt!2682839))) lt!2682994)))

(assert (= (and d!2358129 c!1449921) b!7900461))

(assert (= (and d!2358129 (not c!1449921)) b!7900462))

(assert (= (and d!2358129 res!3134400) b!7900463))

(assert (= (and b!7900463 res!3134401) b!7900464))

(declare-fun m!8275244 () Bool)

(assert (=> b!7900463 m!8275244))

(assert (=> b!7900463 m!8274786))

(declare-fun m!8275246 () Bool)

(assert (=> b!7900463 m!8275246))

(assert (=> b!7900463 m!8274804))

(declare-fun m!8275248 () Bool)

(assert (=> b!7900462 m!8275248))

(declare-fun m!8275250 () Bool)

(assert (=> d!2358129 m!8275250))

(assert (=> d!2358129 m!8274786))

(declare-fun m!8275252 () Bool)

(assert (=> d!2358129 m!8275252))

(declare-fun m!8275254 () Bool)

(assert (=> d!2358129 m!8275254))

(assert (=> b!7900097 d!2358129))

(declare-fun d!2358131 () Bool)

(assert (=> d!2358131 (= (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839)))) (list!19195 (c!1449799 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))))))

(declare-fun bs!1967924 () Bool)

(assert (= bs!1967924 d!2358131))

(declare-fun m!8275256 () Bool)

(assert (=> bs!1967924 m!8275256))

(assert (=> b!7900097 d!2358131))

(declare-fun d!2358133 () Bool)

(declare-fun lt!2682995 () BalanceConc!30614)

(assert (=> d!2358133 (= (list!19193 lt!2682995) (originalCharacters!8815 (_1!38386 (get!26615 lt!2682839))))))

(assert (=> d!2358133 (= lt!2682995 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839))))) (value!286340 (_1!38386 (get!26615 lt!2682839)))))))

(assert (=> d!2358133 (= (charsOf!5518 (_1!38386 (get!26615 lt!2682839))) lt!2682995)))

(declare-fun b_lambda!289627 () Bool)

(assert (=> (not b_lambda!289627) (not d!2358133)))

(declare-fun t!389100 () Bool)

(declare-fun tb!262699 () Bool)

(assert (=> (and b!7899809 (= (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))) (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839)))))) t!389100) tb!262699))

(declare-fun b!7900465 () Bool)

(declare-fun e!4663364 () Bool)

(declare-fun tp!2353730 () Bool)

(assert (=> b!7900465 (= e!4663364 (and (inv!95102 (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839))))) (value!286340 (_1!38386 (get!26615 lt!2682839)))))) tp!2353730))))

(declare-fun result!359734 () Bool)

(assert (=> tb!262699 (= result!359734 (and (inv!95103 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839))))) (value!286340 (_1!38386 (get!26615 lt!2682839))))) e!4663364))))

(assert (= tb!262699 b!7900465))

(declare-fun m!8275258 () Bool)

(assert (=> b!7900465 m!8275258))

(declare-fun m!8275260 () Bool)

(assert (=> tb!262699 m!8275260))

(assert (=> d!2358133 t!389100))

(declare-fun b_and!352603 () Bool)

(assert (= b_and!352587 (and (=> t!389100 result!359734) b_and!352603)))

(declare-fun t!389102 () Bool)

(declare-fun tb!262701 () Bool)

(assert (=> (and b!7900144 (= (toChars!11474 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839)))))) t!389102) tb!262701))

(declare-fun result!359736 () Bool)

(assert (= result!359736 result!359734))

(assert (=> d!2358133 t!389102))

(declare-fun b_and!352605 () Bool)

(assert (= b_and!352589 (and (=> t!389102 result!359736) b_and!352605)))

(declare-fun m!8275262 () Bool)

(assert (=> d!2358133 m!8275262))

(declare-fun m!8275264 () Bool)

(assert (=> d!2358133 m!8275264))

(assert (=> b!7900097 d!2358133))

(assert (=> b!7900097 d!2358023))

(declare-fun d!2358135 () Bool)

(declare-fun lt!2682996 () Int)

(assert (=> d!2358135 (>= lt!2682996 0)))

(declare-fun e!4663365 () Int)

(assert (=> d!2358135 (= lt!2682996 e!4663365)))

(declare-fun c!1449922 () Bool)

(assert (=> d!2358135 (= c!1449922 ((_ is Nil!74119) lt!2682844))))

(assert (=> d!2358135 (= (size!42939 lt!2682844) lt!2682996)))

(declare-fun b!7900466 () Bool)

(assert (=> b!7900466 (= e!4663365 0)))

(declare-fun b!7900467 () Bool)

(assert (=> b!7900467 (= e!4663365 (+ 1 (size!42939 (t!389052 lt!2682844))))))

(assert (= (and d!2358135 c!1449922) b!7900466))

(assert (= (and d!2358135 (not c!1449922)) b!7900467))

(declare-fun m!8275266 () Bool)

(assert (=> b!7900467 m!8275266))

(assert (=> b!7900113 d!2358135))

(declare-fun d!2358137 () Bool)

(declare-fun lt!2682997 () Int)

(assert (=> d!2358137 (>= lt!2682997 0)))

(declare-fun e!4663366 () Int)

(assert (=> d!2358137 (= lt!2682997 e!4663366)))

(declare-fun c!1449923 () Bool)

(assert (=> d!2358137 (= c!1449923 ((_ is Nil!74119) lt!2682746))))

(assert (=> d!2358137 (= (size!42939 lt!2682746) lt!2682997)))

(declare-fun b!7900468 () Bool)

(assert (=> b!7900468 (= e!4663366 0)))

(declare-fun b!7900469 () Bool)

(assert (=> b!7900469 (= e!4663366 (+ 1 (size!42939 (t!389052 lt!2682746))))))

(assert (= (and d!2358137 c!1449923) b!7900468))

(assert (= (and d!2358137 (not c!1449923)) b!7900469))

(declare-fun m!8275268 () Bool)

(assert (=> b!7900469 m!8275268))

(assert (=> b!7900113 d!2358137))

(assert (=> b!7900113 d!2357941))

(declare-fun b!7900470 () Bool)

(declare-fun e!4663369 () Bool)

(assert (=> b!7900470 (= e!4663369 (= (head!16141 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))) (c!1449800 (regex!8574 (h!80568 rulesArg!141)))))))

(declare-fun d!2358139 () Bool)

(declare-fun e!4663368 () Bool)

(assert (=> d!2358139 e!4663368))

(declare-fun c!1449926 () Bool)

(assert (=> d!2358139 (= c!1449926 ((_ is EmptyExpr!21277) (regex!8574 (h!80568 rulesArg!141))))))

(declare-fun lt!2682998 () Bool)

(declare-fun e!4663371 () Bool)

(assert (=> d!2358139 (= lt!2682998 e!4663371)))

(declare-fun c!1449925 () Bool)

(assert (=> d!2358139 (= c!1449925 (isEmpty!42515 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))))))

(assert (=> d!2358139 (validRegex!11643 (regex!8574 (h!80568 rulesArg!141)))))

(assert (=> d!2358139 (= (matchR!10638 (regex!8574 (h!80568 rulesArg!141)) (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))) lt!2682998)))

(declare-fun b!7900471 () Bool)

(assert (=> b!7900471 (= e!4663371 (nullable!9480 (regex!8574 (h!80568 rulesArg!141))))))

(declare-fun b!7900472 () Bool)

(declare-fun e!4663370 () Bool)

(assert (=> b!7900472 (= e!4663368 e!4663370)))

(declare-fun c!1449924 () Bool)

(assert (=> b!7900472 (= c!1449924 ((_ is EmptyLang!21277) (regex!8574 (h!80568 rulesArg!141))))))

(declare-fun b!7900473 () Bool)

(declare-fun res!3134406 () Bool)

(assert (=> b!7900473 (=> (not res!3134406) (not e!4663369))))

(assert (=> b!7900473 (= res!3134406 (isEmpty!42515 (tail!15684 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839)))))))))

(declare-fun b!7900474 () Bool)

(declare-fun e!4663367 () Bool)

(declare-fun e!4663373 () Bool)

(assert (=> b!7900474 (= e!4663367 e!4663373)))

(declare-fun res!3134405 () Bool)

(assert (=> b!7900474 (=> (not res!3134405) (not e!4663373))))

(assert (=> b!7900474 (= res!3134405 (not lt!2682998))))

(declare-fun bm!733102 () Bool)

(declare-fun call!733107 () Bool)

(assert (=> bm!733102 (= call!733107 (isEmpty!42515 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))))))

(declare-fun b!7900475 () Bool)

(assert (=> b!7900475 (= e!4663370 (not lt!2682998))))

(declare-fun b!7900476 () Bool)

(declare-fun e!4663372 () Bool)

(assert (=> b!7900476 (= e!4663372 (not (= (head!16141 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))) (c!1449800 (regex!8574 (h!80568 rulesArg!141))))))))

(declare-fun b!7900477 () Bool)

(declare-fun res!3134404 () Bool)

(assert (=> b!7900477 (=> res!3134404 e!4663367)))

(assert (=> b!7900477 (= res!3134404 (not ((_ is ElementMatch!21277) (regex!8574 (h!80568 rulesArg!141)))))))

(assert (=> b!7900477 (= e!4663370 e!4663367)))

(declare-fun b!7900478 () Bool)

(assert (=> b!7900478 (= e!4663371 (matchR!10638 (derivativeStep!6424 (regex!8574 (h!80568 rulesArg!141)) (head!16141 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839)))))) (tail!15684 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839)))))))))

(declare-fun b!7900479 () Bool)

(declare-fun res!3134408 () Bool)

(assert (=> b!7900479 (=> res!3134408 e!4663367)))

(assert (=> b!7900479 (= res!3134408 e!4663369)))

(declare-fun res!3134403 () Bool)

(assert (=> b!7900479 (=> (not res!3134403) (not e!4663369))))

(assert (=> b!7900479 (= res!3134403 lt!2682998)))

(declare-fun b!7900480 () Bool)

(declare-fun res!3134409 () Bool)

(assert (=> b!7900480 (=> (not res!3134409) (not e!4663369))))

(assert (=> b!7900480 (= res!3134409 (not call!733107))))

(declare-fun b!7900481 () Bool)

(declare-fun res!3134402 () Bool)

(assert (=> b!7900481 (=> res!3134402 e!4663372)))

(assert (=> b!7900481 (= res!3134402 (not (isEmpty!42515 (tail!15684 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682839))))))))))

(declare-fun b!7900482 () Bool)

(assert (=> b!7900482 (= e!4663373 e!4663372)))

(declare-fun res!3134407 () Bool)

(assert (=> b!7900482 (=> res!3134407 e!4663372)))

(assert (=> b!7900482 (= res!3134407 call!733107)))

(declare-fun b!7900483 () Bool)

(assert (=> b!7900483 (= e!4663368 (= lt!2682998 call!733107))))

(assert (= (and d!2358139 c!1449925) b!7900471))

(assert (= (and d!2358139 (not c!1449925)) b!7900478))

(assert (= (and d!2358139 c!1449926) b!7900483))

(assert (= (and d!2358139 (not c!1449926)) b!7900472))

(assert (= (and b!7900472 c!1449924) b!7900475))

(assert (= (and b!7900472 (not c!1449924)) b!7900477))

(assert (= (and b!7900477 (not res!3134404)) b!7900479))

(assert (= (and b!7900479 res!3134403) b!7900480))

(assert (= (and b!7900480 res!3134409) b!7900473))

(assert (= (and b!7900473 res!3134406) b!7900470))

(assert (= (and b!7900479 (not res!3134408)) b!7900474))

(assert (= (and b!7900474 res!3134405) b!7900482))

(assert (= (and b!7900482 (not res!3134407)) b!7900481))

(assert (= (and b!7900481 (not res!3134402)) b!7900476))

(assert (= (or b!7900483 b!7900482 b!7900480) bm!733102))

(assert (=> bm!733102 m!8274786))

(declare-fun m!8275270 () Bool)

(assert (=> bm!733102 m!8275270))

(assert (=> b!7900476 m!8274786))

(declare-fun m!8275272 () Bool)

(assert (=> b!7900476 m!8275272))

(assert (=> b!7900478 m!8274786))

(assert (=> b!7900478 m!8275272))

(assert (=> b!7900478 m!8275272))

(declare-fun m!8275274 () Bool)

(assert (=> b!7900478 m!8275274))

(assert (=> b!7900478 m!8274786))

(declare-fun m!8275276 () Bool)

(assert (=> b!7900478 m!8275276))

(assert (=> b!7900478 m!8275274))

(assert (=> b!7900478 m!8275276))

(declare-fun m!8275278 () Bool)

(assert (=> b!7900478 m!8275278))

(assert (=> b!7900471 m!8275048))

(assert (=> b!7900473 m!8274786))

(assert (=> b!7900473 m!8275276))

(assert (=> b!7900473 m!8275276))

(declare-fun m!8275280 () Bool)

(assert (=> b!7900473 m!8275280))

(assert (=> d!2358139 m!8274786))

(assert (=> d!2358139 m!8275270))

(assert (=> d!2358139 m!8275052))

(assert (=> b!7900481 m!8274786))

(assert (=> b!7900481 m!8275276))

(assert (=> b!7900481 m!8275276))

(assert (=> b!7900481 m!8275280))

(assert (=> b!7900470 m!8274786))

(assert (=> b!7900470 m!8275272))

(assert (=> b!7900096 d!2358139))

(assert (=> b!7900096 d!2358131))

(assert (=> b!7900096 d!2358133))

(assert (=> b!7900096 d!2358023))

(assert (=> d!2357949 d!2357953))

(declare-fun b!7900484 () Bool)

(declare-fun res!3134412 () Bool)

(declare-fun e!4663374 () Bool)

(assert (=> b!7900484 (=> (not res!3134412) (not e!4663374))))

(declare-fun lt!2682999 () Option!17856)

(assert (=> b!7900484 (= res!3134412 (< (size!42939 (_2!38386 (get!26615 lt!2682999))) (size!42939 input!1184)))))

(declare-fun d!2358141 () Bool)

(declare-fun e!4663375 () Bool)

(assert (=> d!2358141 e!4663375))

(declare-fun res!3134416 () Bool)

(assert (=> d!2358141 (=> res!3134416 e!4663375)))

(assert (=> d!2358141 (= res!3134416 (isEmpty!42512 lt!2682999))))

(declare-fun e!4663376 () Option!17856)

(assert (=> d!2358141 (= lt!2682999 e!4663376)))

(declare-fun c!1449927 () Bool)

(assert (=> d!2358141 (= c!1449927 (and ((_ is Cons!74120) (t!389053 (t!389053 rulesArg!141))) ((_ is Nil!74120) (t!389053 (t!389053 (t!389053 rulesArg!141))))))))

(declare-fun lt!2683003 () Unit!169137)

(declare-fun lt!2683002 () Unit!169137)

(assert (=> d!2358141 (= lt!2683003 lt!2683002)))

(assert (=> d!2358141 (isPrefix!6407 input!1184 input!1184)))

(assert (=> d!2358141 (= lt!2683002 (lemmaIsPrefixRefl!3918 input!1184 input!1184))))

(assert (=> d!2358141 (rulesValidInductive!3385 thiss!14377 (t!389053 (t!389053 rulesArg!141)))))

(assert (=> d!2358141 (= (maxPrefix!4707 thiss!14377 (t!389053 (t!389053 rulesArg!141)) input!1184) lt!2682999)))

(declare-fun b!7900485 () Bool)

(assert (=> b!7900485 (= e!4663374 (contains!20884 (t!389053 (t!389053 rulesArg!141)) (rule!11858 (_1!38386 (get!26615 lt!2682999)))))))

(declare-fun b!7900486 () Bool)

(declare-fun res!3134411 () Bool)

(assert (=> b!7900486 (=> (not res!3134411) (not e!4663374))))

(assert (=> b!7900486 (= res!3134411 (= (++!18144 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682999)))) (_2!38386 (get!26615 lt!2682999))) input!1184))))

(declare-fun b!7900487 () Bool)

(declare-fun call!733108 () Option!17856)

(assert (=> b!7900487 (= e!4663376 call!733108)))

(declare-fun b!7900488 () Bool)

(declare-fun res!3134410 () Bool)

(assert (=> b!7900488 (=> (not res!3134410) (not e!4663374))))

(assert (=> b!7900488 (= res!3134410 (matchR!10638 (regex!8574 (rule!11858 (_1!38386 (get!26615 lt!2682999)))) (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682999))))))))

(declare-fun b!7900489 () Bool)

(declare-fun lt!2683001 () Option!17856)

(declare-fun lt!2683000 () Option!17856)

(assert (=> b!7900489 (= e!4663376 (ite (and ((_ is None!17855) lt!2683001) ((_ is None!17855) lt!2683000)) None!17855 (ite ((_ is None!17855) lt!2683000) lt!2683001 (ite ((_ is None!17855) lt!2683001) lt!2683000 (ite (>= (size!42938 (_1!38386 (v!54992 lt!2683001))) (size!42938 (_1!38386 (v!54992 lt!2683000)))) lt!2683001 lt!2683000)))))))

(assert (=> b!7900489 (= lt!2683001 call!733108)))

(assert (=> b!7900489 (= lt!2683000 (maxPrefix!4707 thiss!14377 (t!389053 (t!389053 (t!389053 rulesArg!141))) input!1184))))

(declare-fun b!7900490 () Bool)

(declare-fun res!3134413 () Bool)

(assert (=> b!7900490 (=> (not res!3134413) (not e!4663374))))

(assert (=> b!7900490 (= res!3134413 (= (value!286340 (_1!38386 (get!26615 lt!2682999))) (apply!14321 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682999)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 (get!26615 lt!2682999)))))))))

(declare-fun b!7900491 () Bool)

(assert (=> b!7900491 (= e!4663375 e!4663374)))

(declare-fun res!3134415 () Bool)

(assert (=> b!7900491 (=> (not res!3134415) (not e!4663374))))

(assert (=> b!7900491 (= res!3134415 (isDefined!14432 lt!2682999))))

(declare-fun b!7900492 () Bool)

(declare-fun res!3134414 () Bool)

(assert (=> b!7900492 (=> (not res!3134414) (not e!4663374))))

(assert (=> b!7900492 (= res!3134414 (= (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682999)))) (originalCharacters!8815 (_1!38386 (get!26615 lt!2682999)))))))

(declare-fun bm!733103 () Bool)

(assert (=> bm!733103 (= call!733108 (maxPrefixOneRule!3754 thiss!14377 (h!80568 (t!389053 (t!389053 rulesArg!141))) input!1184))))

(assert (= (and d!2358141 c!1449927) b!7900487))

(assert (= (and d!2358141 (not c!1449927)) b!7900489))

(assert (= (or b!7900487 b!7900489) bm!733103))

(assert (= (and d!2358141 (not res!3134416)) b!7900491))

(assert (= (and b!7900491 res!3134415) b!7900492))

(assert (= (and b!7900492 res!3134414) b!7900484))

(assert (= (and b!7900484 res!3134412) b!7900486))

(assert (= (and b!7900486 res!3134411) b!7900490))

(assert (= (and b!7900490 res!3134413) b!7900488))

(assert (= (and b!7900488 res!3134410) b!7900485))

(declare-fun m!8275282 () Bool)

(assert (=> b!7900492 m!8275282))

(declare-fun m!8275284 () Bool)

(assert (=> b!7900492 m!8275284))

(assert (=> b!7900492 m!8275284))

(declare-fun m!8275286 () Bool)

(assert (=> b!7900492 m!8275286))

(declare-fun m!8275288 () Bool)

(assert (=> d!2358141 m!8275288))

(assert (=> d!2358141 m!8274558))

(assert (=> d!2358141 m!8274560))

(declare-fun m!8275290 () Bool)

(assert (=> d!2358141 m!8275290))

(assert (=> b!7900486 m!8275282))

(assert (=> b!7900486 m!8275284))

(assert (=> b!7900486 m!8275284))

(assert (=> b!7900486 m!8275286))

(assert (=> b!7900486 m!8275286))

(declare-fun m!8275292 () Bool)

(assert (=> b!7900486 m!8275292))

(declare-fun m!8275294 () Bool)

(assert (=> bm!733103 m!8275294))

(assert (=> b!7900485 m!8275282))

(declare-fun m!8275296 () Bool)

(assert (=> b!7900485 m!8275296))

(assert (=> b!7900490 m!8275282))

(declare-fun m!8275298 () Bool)

(assert (=> b!7900490 m!8275298))

(assert (=> b!7900490 m!8275298))

(declare-fun m!8275300 () Bool)

(assert (=> b!7900490 m!8275300))

(assert (=> b!7900484 m!8275282))

(declare-fun m!8275302 () Bool)

(assert (=> b!7900484 m!8275302))

(assert (=> b!7900484 m!8274564))

(declare-fun m!8275304 () Bool)

(assert (=> b!7900489 m!8275304))

(assert (=> b!7900488 m!8275282))

(assert (=> b!7900488 m!8275284))

(assert (=> b!7900488 m!8275284))

(assert (=> b!7900488 m!8275286))

(assert (=> b!7900488 m!8275286))

(declare-fun m!8275306 () Bool)

(assert (=> b!7900488 m!8275306))

(declare-fun m!8275308 () Bool)

(assert (=> b!7900491 m!8275308))

(assert (=> b!7900072 d!2358141))

(declare-fun d!2358143 () Bool)

(declare-fun lt!2683018 () Int)

(assert (=> d!2358143 (>= lt!2683018 0)))

(declare-fun e!4663381 () Int)

(assert (=> d!2358143 (= lt!2683018 e!4663381)))

(declare-fun c!1449932 () Bool)

(assert (=> d!2358143 (= c!1449932 ((_ is Nil!74119) (_2!38386 (get!26615 lt!2682839))))))

(assert (=> d!2358143 (= (size!42939 (_2!38386 (get!26615 lt!2682839))) lt!2683018)))

(declare-fun b!7900501 () Bool)

(assert (=> b!7900501 (= e!4663381 0)))

(declare-fun b!7900502 () Bool)

(assert (=> b!7900502 (= e!4663381 (+ 1 (size!42939 (t!389052 (_2!38386 (get!26615 lt!2682839))))))))

(assert (= (and d!2358143 c!1449932) b!7900501))

(assert (= (and d!2358143 (not c!1449932)) b!7900502))

(declare-fun m!8275310 () Bool)

(assert (=> b!7900502 m!8275310))

(assert (=> b!7900098 d!2358143))

(assert (=> b!7900098 d!2358023))

(assert (=> b!7900098 d!2357943))

(declare-fun d!2358145 () Bool)

(declare-fun nullableFct!3747 (Regex!21277) Bool)

(assert (=> d!2358145 (= (nullable!9480 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))) (nullableFct!3747 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))))

(declare-fun bs!1967925 () Bool)

(assert (= bs!1967925 d!2358145))

(declare-fun m!8275312 () Bool)

(assert (=> bs!1967925 m!8275312))

(assert (=> b!7899982 d!2358145))

(declare-fun d!2358147 () Bool)

(declare-fun e!4663396 () Bool)

(assert (=> d!2358147 e!4663396))

(declare-fun res!3134423 () Bool)

(assert (=> d!2358147 (=> res!3134423 e!4663396)))

(assert (=> d!2358147 (= res!3134423 (isEmpty!42515 (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))))))

(declare-fun lt!2683063 () Unit!169137)

(declare-fun choose!59710 (Regex!21277 List!74243) Unit!169137)

(assert (=> d!2358147 (= lt!2683063 (choose!59710 (regex!8574 (h!80568 rulesArg!141)) input!1184))))

(assert (=> d!2358147 (validRegex!11643 (regex!8574 (h!80568 rulesArg!141)))))

(assert (=> d!2358147 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2112 (regex!8574 (h!80568 rulesArg!141)) input!1184) lt!2683063)))

(declare-fun b!7900525 () Bool)

(assert (=> b!7900525 (= e!4663396 (matchR!10638 (regex!8574 (h!80568 rulesArg!141)) (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))))))

(assert (= (and d!2358147 (not res!3134423)) b!7900525))

(assert (=> d!2358147 m!8274790))

(declare-fun m!8275314 () Bool)

(assert (=> d!2358147 m!8275314))

(assert (=> d!2358147 m!8275052))

(assert (=> d!2358147 m!8274790))

(assert (=> d!2358147 m!8274564))

(assert (=> d!2358147 m!8274792))

(assert (=> d!2358147 m!8274564))

(assert (=> d!2358147 m!8274810))

(assert (=> b!7900525 m!8274790))

(assert (=> b!7900525 m!8274564))

(assert (=> b!7900525 m!8274790))

(assert (=> b!7900525 m!8274564))

(assert (=> b!7900525 m!8274792))

(assert (=> b!7900525 m!8274794))

(assert (=> b!7900094 d!2358147))

(assert (=> b!7900094 d!2358125))

(declare-fun d!2358149 () Bool)

(assert (=> d!2358149 (= (isEmpty!42515 (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))) ((_ is Nil!74119) (_1!38388 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 (size!42939 Nil!74119) input!1184 input!1184 (size!42939 input!1184)))))))

(assert (=> b!7900094 d!2358149))

(declare-fun bs!1967926 () Bool)

(declare-fun d!2358151 () Bool)

(assert (= bs!1967926 (and d!2358151 d!2358045)))

(declare-fun lambda!472406 () Int)

(assert (=> bs!1967926 (= lambda!472406 lambda!472400)))

(declare-fun b!7900544 () Bool)

(declare-fun e!4663407 () Bool)

(assert (=> b!7900544 (= e!4663407 true)))

(assert (=> d!2358151 e!4663407))

(assert (= d!2358151 b!7900544))

(assert (=> b!7900544 (< (dynLambda!30036 order!29803 (toValue!11615 (transformation!8574 (h!80568 rulesArg!141)))) (dynLambda!30035 order!29801 lambda!472406))))

(assert (=> b!7900544 (< (dynLambda!30034 order!29799 (toChars!11474 (transformation!8574 (h!80568 rulesArg!141)))) (dynLambda!30035 order!29801 lambda!472406))))

(assert (=> d!2358151 (= (list!19193 (dynLambda!30028 (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))) (dynLambda!30029 (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))) (seqFromList!6139 (_1!38388 lt!2682838))))) (list!19193 (seqFromList!6139 (_1!38388 lt!2682838))))))

(declare-fun lt!2683077 () Unit!169137)

(declare-fun ForallOf!1295 (Int BalanceConc!30614) Unit!169137)

(assert (=> d!2358151 (= lt!2683077 (ForallOf!1295 lambda!472406 (seqFromList!6139 (_1!38388 lt!2682838))))))

(assert (=> d!2358151 (= (lemmaSemiInverse!2659 (transformation!8574 (h!80568 rulesArg!141)) (seqFromList!6139 (_1!38388 lt!2682838))) lt!2683077)))

(declare-fun b_lambda!289629 () Bool)

(assert (=> (not b_lambda!289629) (not d!2358151)))

(declare-fun t!389104 () Bool)

(declare-fun tb!262703 () Bool)

(assert (=> (and b!7899809 (= (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))) (toChars!11474 (transformation!8574 (h!80568 rulesArg!141)))) t!389104) tb!262703))

(declare-fun tp!2353731 () Bool)

(declare-fun e!4663408 () Bool)

(declare-fun b!7900545 () Bool)

(assert (=> b!7900545 (= e!4663408 (and (inv!95102 (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))) (dynLambda!30029 (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))) (seqFromList!6139 (_1!38388 lt!2682838)))))) tp!2353731))))

(declare-fun result!359738 () Bool)

(assert (=> tb!262703 (= result!359738 (and (inv!95103 (dynLambda!30028 (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))) (dynLambda!30029 (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))) (seqFromList!6139 (_1!38388 lt!2682838))))) e!4663408))))

(assert (= tb!262703 b!7900545))

(declare-fun m!8275320 () Bool)

(assert (=> b!7900545 m!8275320))

(declare-fun m!8275322 () Bool)

(assert (=> tb!262703 m!8275322))

(assert (=> d!2358151 t!389104))

(declare-fun b_and!352607 () Bool)

(assert (= b_and!352603 (and (=> t!389104 result!359738) b_and!352607)))

(declare-fun t!389106 () Bool)

(declare-fun tb!262705 () Bool)

(assert (=> (and b!7900144 (= (toChars!11474 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toChars!11474 (transformation!8574 (h!80568 rulesArg!141)))) t!389106) tb!262705))

(declare-fun result!359740 () Bool)

(assert (= result!359740 result!359738))

(assert (=> d!2358151 t!389106))

(declare-fun b_and!352609 () Bool)

(assert (= b_and!352605 (and (=> t!389106 result!359740) b_and!352609)))

(declare-fun b_lambda!289631 () Bool)

(assert (=> (not b_lambda!289631) (not d!2358151)))

(declare-fun t!389108 () Bool)

(declare-fun tb!262707 () Bool)

(assert (=> (and b!7899809 (= (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))) (toValue!11615 (transformation!8574 (h!80568 rulesArg!141)))) t!389108) tb!262707))

(declare-fun result!359742 () Bool)

(assert (=> tb!262707 (= result!359742 (inv!21 (dynLambda!30029 (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))) (seqFromList!6139 (_1!38388 lt!2682838)))))))

(declare-fun m!8275346 () Bool)

(assert (=> tb!262707 m!8275346))

(assert (=> d!2358151 t!389108))

(declare-fun b_and!352611 () Bool)

(assert (= b_and!352583 (and (=> t!389108 result!359742) b_and!352611)))

(declare-fun t!389110 () Bool)

(declare-fun tb!262709 () Bool)

(assert (=> (and b!7900144 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toValue!11615 (transformation!8574 (h!80568 rulesArg!141)))) t!389110) tb!262709))

(declare-fun result!359744 () Bool)

(assert (= result!359744 result!359742))

(assert (=> d!2358151 t!389110))

(declare-fun b_and!352613 () Bool)

(assert (= b_and!352585 (and (=> t!389110 result!359744) b_and!352613)))

(assert (=> d!2358151 m!8274806))

(declare-fun m!8275358 () Bool)

(assert (=> d!2358151 m!8275358))

(declare-fun m!8275364 () Bool)

(assert (=> d!2358151 m!8275364))

(declare-fun m!8275368 () Bool)

(assert (=> d!2358151 m!8275368))

(assert (=> d!2358151 m!8275358))

(assert (=> d!2358151 m!8275364))

(assert (=> d!2358151 m!8274806))

(declare-fun m!8275372 () Bool)

(assert (=> d!2358151 m!8275372))

(assert (=> d!2358151 m!8274806))

(declare-fun m!8275374 () Bool)

(assert (=> d!2358151 m!8275374))

(assert (=> b!7900094 d!2358151))

(assert (=> b!7900094 d!2357943))

(assert (=> b!7900094 d!2358063))

(declare-fun d!2358155 () Bool)

(declare-fun lt!2683098 () Int)

(assert (=> d!2358155 (= lt!2683098 (size!42939 (list!19193 (seqFromList!6139 (_1!38388 lt!2682838)))))))

(declare-fun size!42942 (Conc!15748) Int)

(assert (=> d!2358155 (= lt!2683098 (size!42942 (c!1449799 (seqFromList!6139 (_1!38388 lt!2682838)))))))

(assert (=> d!2358155 (= (size!42941 (seqFromList!6139 (_1!38388 lt!2682838))) lt!2683098)))

(declare-fun bs!1967927 () Bool)

(assert (= bs!1967927 d!2358155))

(assert (=> bs!1967927 m!8274806))

(assert (=> bs!1967927 m!8275372))

(assert (=> bs!1967927 m!8275372))

(declare-fun m!8275378 () Bool)

(assert (=> bs!1967927 m!8275378))

(declare-fun m!8275380 () Bool)

(assert (=> bs!1967927 m!8275380))

(assert (=> b!7900094 d!2358155))

(declare-fun d!2358159 () Bool)

(assert (=> d!2358159 (= (seqFromList!6139 (_1!38388 lt!2682838)) (fromListB!2772 (_1!38388 lt!2682838)))))

(declare-fun bs!1967928 () Bool)

(assert (= bs!1967928 d!2358159))

(declare-fun m!8275382 () Bool)

(assert (=> bs!1967928 m!8275382))

(assert (=> b!7900094 d!2358159))

(declare-fun d!2358161 () Bool)

(assert (=> d!2358161 (= (apply!14321 (transformation!8574 (h!80568 rulesArg!141)) (seqFromList!6139 (_1!38388 lt!2682838))) (dynLambda!30029 (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))) (seqFromList!6139 (_1!38388 lt!2682838))))))

(declare-fun b_lambda!289633 () Bool)

(assert (=> (not b_lambda!289633) (not d!2358161)))

(assert (=> d!2358161 t!389108))

(declare-fun b_and!352615 () Bool)

(assert (= b_and!352611 (and (=> t!389108 result!359742) b_and!352615)))

(assert (=> d!2358161 t!389110))

(declare-fun b_and!352617 () Bool)

(assert (= b_and!352613 (and (=> t!389110 result!359744) b_and!352617)))

(assert (=> d!2358161 m!8274806))

(assert (=> d!2358161 m!8275358))

(assert (=> b!7900094 d!2358161))

(declare-fun d!2358163 () Bool)

(declare-fun lt!2683107 () Bool)

(declare-fun content!15708 (List!74244) (InoxSet Rule!16948))

(assert (=> d!2358163 (= lt!2683107 (select (content!15708 (t!389053 rulesArg!141)) (rule!11858 (_1!38386 (get!26615 lt!2682822)))))))

(declare-fun e!4663427 () Bool)

(assert (=> d!2358163 (= lt!2683107 e!4663427)))

(declare-fun res!3134441 () Bool)

(assert (=> d!2358163 (=> (not res!3134441) (not e!4663427))))

(assert (=> d!2358163 (= res!3134441 ((_ is Cons!74120) (t!389053 rulesArg!141)))))

(assert (=> d!2358163 (= (contains!20884 (t!389053 rulesArg!141) (rule!11858 (_1!38386 (get!26615 lt!2682822)))) lt!2683107)))

(declare-fun b!7900568 () Bool)

(declare-fun e!4663426 () Bool)

(assert (=> b!7900568 (= e!4663427 e!4663426)))

(declare-fun res!3134440 () Bool)

(assert (=> b!7900568 (=> res!3134440 e!4663426)))

(assert (=> b!7900568 (= res!3134440 (= (h!80568 (t!389053 rulesArg!141)) (rule!11858 (_1!38386 (get!26615 lt!2682822)))))))

(declare-fun b!7900569 () Bool)

(assert (=> b!7900569 (= e!4663426 (contains!20884 (t!389053 (t!389053 rulesArg!141)) (rule!11858 (_1!38386 (get!26615 lt!2682822)))))))

(assert (= (and d!2358163 res!3134441) b!7900568))

(assert (= (and b!7900568 (not res!3134440)) b!7900569))

(declare-fun m!8275412 () Bool)

(assert (=> d!2358163 m!8275412))

(declare-fun m!8275414 () Bool)

(assert (=> d!2358163 m!8275414))

(declare-fun m!8275416 () Bool)

(assert (=> b!7900569 m!8275416))

(assert (=> b!7900068 d!2358163))

(assert (=> b!7900068 d!2358027))

(declare-fun b!7900582 () Bool)

(declare-fun e!4663434 () List!74243)

(declare-fun list!19197 (IArray!31557) List!74243)

(assert (=> b!7900582 (= e!4663434 (list!19197 (xs!19130 (c!1449799 (charsOf!5518 (_1!38386 lt!2682744))))))))

(declare-fun b!7900581 () Bool)

(declare-fun e!4663433 () List!74243)

(assert (=> b!7900581 (= e!4663433 e!4663434)))

(declare-fun c!1449958 () Bool)

(assert (=> b!7900581 (= c!1449958 ((_ is Leaf!30003) (c!1449799 (charsOf!5518 (_1!38386 lt!2682744)))))))

(declare-fun b!7900580 () Bool)

(assert (=> b!7900580 (= e!4663433 Nil!74119)))

(declare-fun d!2358175 () Bool)

(declare-fun c!1449957 () Bool)

(assert (=> d!2358175 (= c!1449957 ((_ is Empty!15748) (c!1449799 (charsOf!5518 (_1!38386 lt!2682744)))))))

(assert (=> d!2358175 (= (list!19195 (c!1449799 (charsOf!5518 (_1!38386 lt!2682744)))) e!4663433)))

(declare-fun b!7900583 () Bool)

(assert (=> b!7900583 (= e!4663434 (++!18144 (list!19195 (left!56550 (c!1449799 (charsOf!5518 (_1!38386 lt!2682744))))) (list!19195 (right!56880 (c!1449799 (charsOf!5518 (_1!38386 lt!2682744)))))))))

(assert (= (and d!2358175 c!1449957) b!7900580))

(assert (= (and d!2358175 (not c!1449957)) b!7900581))

(assert (= (and b!7900581 c!1449958) b!7900582))

(assert (= (and b!7900581 (not c!1449958)) b!7900583))

(declare-fun m!8275420 () Bool)

(assert (=> b!7900582 m!8275420))

(declare-fun m!8275422 () Bool)

(assert (=> b!7900583 m!8275422))

(declare-fun m!8275424 () Bool)

(assert (=> b!7900583 m!8275424))

(assert (=> b!7900583 m!8275422))

(assert (=> b!7900583 m!8275424))

(declare-fun m!8275426 () Bool)

(assert (=> b!7900583 m!8275426))

(assert (=> d!2357923 d!2358175))

(declare-fun b!7900584 () Bool)

(declare-fun e!4663440 () Bool)

(declare-fun call!733133 () Bool)

(assert (=> b!7900584 (= e!4663440 call!733133)))

(declare-fun b!7900585 () Bool)

(declare-fun e!4663437 () Bool)

(declare-fun call!733134 () Bool)

(assert (=> b!7900585 (= e!4663437 call!733134)))

(declare-fun b!7900586 () Bool)

(declare-fun e!4663441 () Bool)

(declare-fun e!4663435 () Bool)

(assert (=> b!7900586 (= e!4663441 e!4663435)))

(declare-fun c!1449960 () Bool)

(assert (=> b!7900586 (= c!1449960 ((_ is Star!21277) (ite c!1449824 (regOne!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regTwo!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))))

(declare-fun bm!733128 () Bool)

(declare-fun call!733135 () Bool)

(assert (=> bm!733128 (= call!733135 call!733134)))

(declare-fun b!7900587 () Bool)

(declare-fun res!3134445 () Bool)

(declare-fun e!4663439 () Bool)

(assert (=> b!7900587 (=> (not res!3134445) (not e!4663439))))

(assert (=> b!7900587 (= res!3134445 call!733133)))

(declare-fun e!4663438 () Bool)

(assert (=> b!7900587 (= e!4663438 e!4663439)))

(declare-fun c!1449959 () Bool)

(declare-fun bm!733129 () Bool)

(assert (=> bm!733129 (= call!733134 (validRegex!11643 (ite c!1449960 (reg!21606 (ite c!1449824 (regOne!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regTwo!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))) (ite c!1449959 (regTwo!43067 (ite c!1449824 (regOne!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regTwo!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))) (regOne!43066 (ite c!1449824 (regOne!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regTwo!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))))))))

(declare-fun b!7900588 () Bool)

(assert (=> b!7900588 (= e!4663435 e!4663438)))

(assert (=> b!7900588 (= c!1449959 ((_ is Union!21277) (ite c!1449824 (regOne!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regTwo!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))))

(declare-fun b!7900589 () Bool)

(assert (=> b!7900589 (= e!4663439 call!733135)))

(declare-fun b!7900591 () Bool)

(declare-fun e!4663436 () Bool)

(assert (=> b!7900591 (= e!4663436 e!4663440)))

(declare-fun res!3134442 () Bool)

(assert (=> b!7900591 (=> (not res!3134442) (not e!4663440))))

(assert (=> b!7900591 (= res!3134442 call!733135)))

(declare-fun b!7900592 () Bool)

(assert (=> b!7900592 (= e!4663435 e!4663437)))

(declare-fun res!3134443 () Bool)

(assert (=> b!7900592 (= res!3134443 (not (nullable!9480 (reg!21606 (ite c!1449824 (regOne!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regTwo!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))))))

(assert (=> b!7900592 (=> (not res!3134443) (not e!4663437))))

(declare-fun bm!733130 () Bool)

(assert (=> bm!733130 (= call!733133 (validRegex!11643 (ite c!1449959 (regOne!43067 (ite c!1449824 (regOne!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regTwo!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))) (regTwo!43066 (ite c!1449824 (regOne!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regTwo!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))))))

(declare-fun d!2358179 () Bool)

(declare-fun res!3134444 () Bool)

(assert (=> d!2358179 (=> res!3134444 e!4663441)))

(assert (=> d!2358179 (= res!3134444 ((_ is ElementMatch!21277) (ite c!1449824 (regOne!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regTwo!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))))

(assert (=> d!2358179 (= (validRegex!11643 (ite c!1449824 (regOne!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regTwo!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))) e!4663441)))

(declare-fun b!7900590 () Bool)

(declare-fun res!3134446 () Bool)

(assert (=> b!7900590 (=> res!3134446 e!4663436)))

(assert (=> b!7900590 (= res!3134446 (not ((_ is Concat!30168) (ite c!1449824 (regOne!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regTwo!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))))))

(assert (=> b!7900590 (= e!4663438 e!4663436)))

(assert (= (and d!2358179 (not res!3134444)) b!7900586))

(assert (= (and b!7900586 c!1449960) b!7900592))

(assert (= (and b!7900586 (not c!1449960)) b!7900588))

(assert (= (and b!7900592 res!3134443) b!7900585))

(assert (= (and b!7900588 c!1449959) b!7900587))

(assert (= (and b!7900588 (not c!1449959)) b!7900590))

(assert (= (and b!7900587 res!3134445) b!7900589))

(assert (= (and b!7900590 (not res!3134446)) b!7900591))

(assert (= (and b!7900591 res!3134442) b!7900584))

(assert (= (or b!7900587 b!7900584) bm!733130))

(assert (= (or b!7900589 b!7900591) bm!733128))

(assert (= (or b!7900585 bm!733128) bm!733129))

(declare-fun m!8275428 () Bool)

(assert (=> bm!733129 m!8275428))

(declare-fun m!8275430 () Bool)

(assert (=> b!7900592 m!8275430))

(declare-fun m!8275432 () Bool)

(assert (=> bm!733130 m!8275432))

(assert (=> bm!733058 d!2358179))

(declare-fun b!7900596 () Bool)

(declare-fun e!4663442 () Bool)

(declare-fun lt!2683109 () List!74243)

(assert (=> b!7900596 (= e!4663442 (or (not (= (_2!38386 lt!2682744) Nil!74119)) (= lt!2683109 (t!389052 lt!2682746))))))

(declare-fun b!7900593 () Bool)

(declare-fun e!4663443 () List!74243)

(assert (=> b!7900593 (= e!4663443 (_2!38386 lt!2682744))))

(declare-fun b!7900595 () Bool)

(declare-fun res!3134448 () Bool)

(assert (=> b!7900595 (=> (not res!3134448) (not e!4663442))))

(assert (=> b!7900595 (= res!3134448 (= (size!42939 lt!2683109) (+ (size!42939 (t!389052 lt!2682746)) (size!42939 (_2!38386 lt!2682744)))))))

(declare-fun b!7900594 () Bool)

(assert (=> b!7900594 (= e!4663443 (Cons!74119 (h!80567 (t!389052 lt!2682746)) (++!18144 (t!389052 (t!389052 lt!2682746)) (_2!38386 lt!2682744))))))

(declare-fun d!2358181 () Bool)

(assert (=> d!2358181 e!4663442))

(declare-fun res!3134447 () Bool)

(assert (=> d!2358181 (=> (not res!3134447) (not e!4663442))))

(assert (=> d!2358181 (= res!3134447 (= (content!15707 lt!2683109) ((_ map or) (content!15707 (t!389052 lt!2682746)) (content!15707 (_2!38386 lt!2682744)))))))

(assert (=> d!2358181 (= lt!2683109 e!4663443)))

(declare-fun c!1449961 () Bool)

(assert (=> d!2358181 (= c!1449961 ((_ is Nil!74119) (t!389052 lt!2682746)))))

(assert (=> d!2358181 (= (++!18144 (t!389052 lt!2682746) (_2!38386 lt!2682744)) lt!2683109)))

(assert (= (and d!2358181 c!1449961) b!7900593))

(assert (= (and d!2358181 (not c!1449961)) b!7900594))

(assert (= (and d!2358181 res!3134447) b!7900595))

(assert (= (and b!7900595 res!3134448) b!7900596))

(declare-fun m!8275434 () Bool)

(assert (=> b!7900595 m!8275434))

(assert (=> b!7900595 m!8275268))

(assert (=> b!7900595 m!8274562))

(declare-fun m!8275436 () Bool)

(assert (=> b!7900594 m!8275436))

(declare-fun m!8275438 () Bool)

(assert (=> d!2358181 m!8275438))

(declare-fun m!8275440 () Bool)

(assert (=> d!2358181 m!8275440))

(assert (=> d!2358181 m!8274834))

(assert (=> b!7900112 d!2358181))

(declare-fun d!2358183 () Bool)

(declare-fun isBalanced!4471 (Conc!15748) Bool)

(assert (=> d!2358183 (= (inv!95103 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744)))) (isBalanced!4471 (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744))))))))

(declare-fun bs!1967930 () Bool)

(assert (= bs!1967930 d!2358183))

(declare-fun m!8275442 () Bool)

(assert (=> bs!1967930 m!8275442))

(assert (=> tb!262655 d!2358183))

(declare-fun b!7900600 () Bool)

(declare-fun e!4663444 () Bool)

(declare-fun lt!2683110 () List!74243)

(assert (=> b!7900600 (= e!4663444 (or (not (= (_2!38386 (get!26615 lt!2682822)) Nil!74119)) (= lt!2683110 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822)))))))))

(declare-fun b!7900597 () Bool)

(declare-fun e!4663445 () List!74243)

(assert (=> b!7900597 (= e!4663445 (_2!38386 (get!26615 lt!2682822)))))

(declare-fun b!7900599 () Bool)

(declare-fun res!3134450 () Bool)

(assert (=> b!7900599 (=> (not res!3134450) (not e!4663444))))

(assert (=> b!7900599 (= res!3134450 (= (size!42939 lt!2683110) (+ (size!42939 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))) (size!42939 (_2!38386 (get!26615 lt!2682822))))))))

(declare-fun b!7900598 () Bool)

(assert (=> b!7900598 (= e!4663445 (Cons!74119 (h!80567 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))) (++!18144 (t!389052 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))) (_2!38386 (get!26615 lt!2682822)))))))

(declare-fun d!2358185 () Bool)

(assert (=> d!2358185 e!4663444))

(declare-fun res!3134449 () Bool)

(assert (=> d!2358185 (=> (not res!3134449) (not e!4663444))))

(assert (=> d!2358185 (= res!3134449 (= (content!15707 lt!2683110) ((_ map or) (content!15707 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))) (content!15707 (_2!38386 (get!26615 lt!2682822))))))))

(assert (=> d!2358185 (= lt!2683110 e!4663445)))

(declare-fun c!1449962 () Bool)

(assert (=> d!2358185 (= c!1449962 ((_ is Nil!74119) (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822))))))))

(assert (=> d!2358185 (= (++!18144 (list!19193 (charsOf!5518 (_1!38386 (get!26615 lt!2682822)))) (_2!38386 (get!26615 lt!2682822))) lt!2683110)))

(assert (= (and d!2358185 c!1449962) b!7900597))

(assert (= (and d!2358185 (not c!1449962)) b!7900598))

(assert (= (and d!2358185 res!3134449) b!7900599))

(assert (= (and b!7900599 res!3134450) b!7900600))

(declare-fun m!8275444 () Bool)

(assert (=> b!7900599 m!8275444))

(assert (=> b!7900599 m!8274760))

(declare-fun m!8275446 () Bool)

(assert (=> b!7900599 m!8275446))

(assert (=> b!7900599 m!8274774))

(declare-fun m!8275448 () Bool)

(assert (=> b!7900598 m!8275448))

(declare-fun m!8275450 () Bool)

(assert (=> d!2358185 m!8275450))

(assert (=> d!2358185 m!8274760))

(declare-fun m!8275452 () Bool)

(assert (=> d!2358185 m!8275452))

(declare-fun m!8275454 () Bool)

(assert (=> d!2358185 m!8275454))

(assert (=> b!7900069 d!2358185))

(assert (=> b!7900069 d!2358039))

(assert (=> b!7900069 d!2358041))

(assert (=> b!7900069 d!2358027))

(declare-fun d!2358187 () Bool)

(assert (=> d!2358187 (= (inv!95097 (tag!9438 (h!80568 (t!389053 rulesArg!141)))) (= (mod (str.len (value!286339 (tag!9438 (h!80568 (t!389053 rulesArg!141))))) 2) 0))))

(assert (=> b!7900143 d!2358187))

(declare-fun d!2358189 () Bool)

(declare-fun res!3134453 () Bool)

(declare-fun e!4663448 () Bool)

(assert (=> d!2358189 (=> (not res!3134453) (not e!4663448))))

(assert (=> d!2358189 (= res!3134453 (semiInverseModEq!3809 (toChars!11474 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toValue!11615 (transformation!8574 (h!80568 (t!389053 rulesArg!141))))))))

(assert (=> d!2358189 (= (inv!95099 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) e!4663448)))

(declare-fun b!7900603 () Bool)

(assert (=> b!7900603 (= e!4663448 (equivClasses!3624 (toChars!11474 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toValue!11615 (transformation!8574 (h!80568 (t!389053 rulesArg!141))))))))

(assert (= (and d!2358189 res!3134453) b!7900603))

(declare-fun m!8275456 () Bool)

(assert (=> d!2358189 m!8275456))

(declare-fun m!8275458 () Bool)

(assert (=> b!7900603 m!8275458))

(assert (=> b!7900143 d!2358189))

(assert (=> d!2357939 d!2357937))

(declare-fun d!2358191 () Bool)

(assert (=> d!2358191 (isPrefix!6407 input!1184 input!1184)))

(assert (=> d!2358191 true))

(declare-fun _$45!2425 () Unit!169137)

(assert (=> d!2358191 (= (choose!59709 input!1184 input!1184) _$45!2425)))

(declare-fun bs!1967931 () Bool)

(assert (= bs!1967931 d!2358191))

(assert (=> bs!1967931 m!8274558))

(assert (=> d!2357939 d!2358191))

(declare-fun d!2358193 () Bool)

(declare-fun c!1449967 () Bool)

(assert (=> d!2358193 (= c!1449967 ((_ is IntegerValue!26670) (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 lt!2682744))))))))

(declare-fun e!4663456 () Bool)

(assert (=> d!2358193 (= (inv!21 (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 lt!2682744))))) e!4663456)))

(declare-fun b!7900615 () Bool)

(declare-fun res!3134457 () Bool)

(declare-fun e!4663457 () Bool)

(assert (=> b!7900615 (=> res!3134457 e!4663457)))

(assert (=> b!7900615 (= res!3134457 (not ((_ is IntegerValue!26672) (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 lt!2682744)))))))))

(declare-fun e!4663458 () Bool)

(assert (=> b!7900615 (= e!4663458 e!4663457)))

(declare-fun b!7900616 () Bool)

(declare-fun inv!17 (TokenValue!8890) Bool)

(assert (=> b!7900616 (= e!4663458 (inv!17 (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 lt!2682744))))))))

(declare-fun b!7900617 () Bool)

(assert (=> b!7900617 (= e!4663456 e!4663458)))

(declare-fun c!1449968 () Bool)

(assert (=> b!7900617 (= c!1449968 ((_ is IntegerValue!26671) (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 lt!2682744))))))))

(declare-fun b!7900618 () Bool)

(declare-fun inv!15 (TokenValue!8890) Bool)

(assert (=> b!7900618 (= e!4663457 (inv!15 (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 lt!2682744))))))))

(declare-fun b!7900619 () Bool)

(declare-fun inv!16 (TokenValue!8890) Bool)

(assert (=> b!7900619 (= e!4663456 (inv!16 (dynLambda!30029 (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (seqFromList!6139 (originalCharacters!8815 (_1!38386 lt!2682744))))))))

(assert (= (and d!2358193 c!1449967) b!7900619))

(assert (= (and d!2358193 (not c!1449967)) b!7900617))

(assert (= (and b!7900617 c!1449968) b!7900616))

(assert (= (and b!7900617 (not c!1449968)) b!7900615))

(assert (= (and b!7900615 (not res!3134457)) b!7900618))

(declare-fun m!8275468 () Bool)

(assert (=> b!7900616 m!8275468))

(declare-fun m!8275470 () Bool)

(assert (=> b!7900618 m!8275470))

(declare-fun m!8275472 () Bool)

(assert (=> b!7900619 m!8275472))

(assert (=> tb!262657 d!2358193))

(declare-fun d!2358199 () Bool)

(declare-fun lt!2683117 () Int)

(assert (=> d!2358199 (>= lt!2683117 0)))

(declare-fun e!4663459 () Int)

(assert (=> d!2358199 (= lt!2683117 e!4663459)))

(declare-fun c!1449969 () Bool)

(assert (=> d!2358199 (= c!1449969 ((_ is Nil!74119) (t!389052 input!1184)))))

(assert (=> d!2358199 (= (size!42939 (t!389052 input!1184)) lt!2683117)))

(declare-fun b!7900620 () Bool)

(assert (=> b!7900620 (= e!4663459 0)))

(declare-fun b!7900621 () Bool)

(assert (=> b!7900621 (= e!4663459 (+ 1 (size!42939 (t!389052 (t!389052 input!1184)))))))

(assert (= (and d!2358199 c!1449969) b!7900620))

(assert (= (and d!2358199 (not c!1449969)) b!7900621))

(declare-fun m!8275474 () Bool)

(assert (=> b!7900621 m!8275474))

(assert (=> b!7899952 d!2358199))

(declare-fun d!2358201 () Bool)

(declare-fun lt!2683118 () Int)

(assert (=> d!2358201 (>= lt!2683118 0)))

(declare-fun e!4663460 () Int)

(assert (=> d!2358201 (= lt!2683118 e!4663460)))

(declare-fun c!1449970 () Bool)

(assert (=> d!2358201 (= c!1449970 ((_ is Nil!74119) (_2!38386 (get!26615 lt!2682822))))))

(assert (=> d!2358201 (= (size!42939 (_2!38386 (get!26615 lt!2682822))) lt!2683118)))

(declare-fun b!7900622 () Bool)

(assert (=> b!7900622 (= e!4663460 0)))

(declare-fun b!7900623 () Bool)

(assert (=> b!7900623 (= e!4663460 (+ 1 (size!42939 (t!389052 (_2!38386 (get!26615 lt!2682822))))))))

(assert (= (and d!2358201 c!1449970) b!7900622))

(assert (= (and d!2358201 (not c!1449970)) b!7900623))

(declare-fun m!8275476 () Bool)

(assert (=> b!7900623 m!8275476))

(assert (=> b!7900067 d!2358201))

(assert (=> b!7900067 d!2358027))

(assert (=> b!7900067 d!2357943))

(declare-fun bs!1967933 () Bool)

(declare-fun d!2358203 () Bool)

(assert (= bs!1967933 (and d!2358203 d!2357929)))

(declare-fun lambda!472407 () Int)

(assert (=> bs!1967933 (= lambda!472407 lambda!472390)))

(assert (=> d!2358203 true))

(declare-fun lt!2683119 () Bool)

(assert (=> d!2358203 (= lt!2683119 (forall!18439 (t!389053 rulesArg!141) lambda!472407))))

(declare-fun e!4663462 () Bool)

(assert (=> d!2358203 (= lt!2683119 e!4663462)))

(declare-fun res!3134459 () Bool)

(assert (=> d!2358203 (=> res!3134459 e!4663462)))

(assert (=> d!2358203 (= res!3134459 (not ((_ is Cons!74120) (t!389053 rulesArg!141))))))

(assert (=> d!2358203 (= (rulesValidInductive!3385 thiss!14377 (t!389053 rulesArg!141)) lt!2683119)))

(declare-fun b!7900624 () Bool)

(declare-fun e!4663461 () Bool)

(assert (=> b!7900624 (= e!4663462 e!4663461)))

(declare-fun res!3134458 () Bool)

(assert (=> b!7900624 (=> (not res!3134458) (not e!4663461))))

(assert (=> b!7900624 (= res!3134458 (ruleValid!3930 thiss!14377 (h!80568 (t!389053 rulesArg!141))))))

(declare-fun b!7900625 () Bool)

(assert (=> b!7900625 (= e!4663461 (rulesValidInductive!3385 thiss!14377 (t!389053 (t!389053 rulesArg!141))))))

(assert (= (and d!2358203 (not res!3134459)) b!7900624))

(assert (= (and b!7900624 res!3134458) b!7900625))

(declare-fun m!8275478 () Bool)

(assert (=> d!2358203 m!8275478))

(assert (=> b!7900624 m!8274920))

(assert (=> b!7900625 m!8275290))

(assert (=> b!7899930 d!2358203))

(declare-fun b!7900626 () Bool)

(declare-fun e!4663468 () Bool)

(declare-fun call!733136 () Bool)

(assert (=> b!7900626 (= e!4663468 call!733136)))

(declare-fun b!7900627 () Bool)

(declare-fun e!4663465 () Bool)

(declare-fun call!733137 () Bool)

(assert (=> b!7900627 (= e!4663465 call!733137)))

(declare-fun b!7900628 () Bool)

(declare-fun e!4663469 () Bool)

(declare-fun e!4663463 () Bool)

(assert (=> b!7900628 (= e!4663469 e!4663463)))

(declare-fun c!1449973 () Bool)

(assert (=> b!7900628 (= c!1449973 ((_ is Star!21277) (ite c!1449825 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (ite c!1449824 (regTwo!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regOne!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))))))

(declare-fun bm!733131 () Bool)

(declare-fun call!733138 () Bool)

(assert (=> bm!733131 (= call!733138 call!733137)))

(declare-fun b!7900629 () Bool)

(declare-fun res!3134463 () Bool)

(declare-fun e!4663467 () Bool)

(assert (=> b!7900629 (=> (not res!3134463) (not e!4663467))))

(assert (=> b!7900629 (= res!3134463 call!733136)))

(declare-fun e!4663466 () Bool)

(assert (=> b!7900629 (= e!4663466 e!4663467)))

(declare-fun bm!733132 () Bool)

(declare-fun c!1449972 () Bool)

(assert (=> bm!733132 (= call!733137 (validRegex!11643 (ite c!1449973 (reg!21606 (ite c!1449825 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (ite c!1449824 (regTwo!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regOne!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))) (ite c!1449972 (regTwo!43067 (ite c!1449825 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (ite c!1449824 (regTwo!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regOne!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))) (regOne!43066 (ite c!1449825 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (ite c!1449824 (regTwo!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regOne!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))))))))

(declare-fun b!7900630 () Bool)

(assert (=> b!7900630 (= e!4663463 e!4663466)))

(assert (=> b!7900630 (= c!1449972 ((_ is Union!21277) (ite c!1449825 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (ite c!1449824 (regTwo!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regOne!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))))))

(declare-fun b!7900631 () Bool)

(assert (=> b!7900631 (= e!4663467 call!733138)))

(declare-fun b!7900633 () Bool)

(declare-fun e!4663464 () Bool)

(assert (=> b!7900633 (= e!4663464 e!4663468)))

(declare-fun res!3134460 () Bool)

(assert (=> b!7900633 (=> (not res!3134460) (not e!4663468))))

(assert (=> b!7900633 (= res!3134460 call!733138)))

(declare-fun b!7900634 () Bool)

(assert (=> b!7900634 (= e!4663463 e!4663465)))

(declare-fun res!3134461 () Bool)

(assert (=> b!7900634 (= res!3134461 (not (nullable!9480 (reg!21606 (ite c!1449825 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (ite c!1449824 (regTwo!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regOne!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))))))))

(assert (=> b!7900634 (=> (not res!3134461) (not e!4663465))))

(declare-fun bm!733133 () Bool)

(assert (=> bm!733133 (= call!733136 (validRegex!11643 (ite c!1449972 (regOne!43067 (ite c!1449825 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (ite c!1449824 (regTwo!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regOne!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))) (regTwo!43066 (ite c!1449825 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (ite c!1449824 (regTwo!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regOne!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))))))))

(declare-fun d!2358205 () Bool)

(declare-fun res!3134462 () Bool)

(assert (=> d!2358205 (=> res!3134462 e!4663469)))

(assert (=> d!2358205 (= res!3134462 ((_ is ElementMatch!21277) (ite c!1449825 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (ite c!1449824 (regTwo!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regOne!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))))))

(assert (=> d!2358205 (= (validRegex!11643 (ite c!1449825 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (ite c!1449824 (regTwo!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regOne!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744))))))) e!4663469)))

(declare-fun b!7900632 () Bool)

(declare-fun res!3134464 () Bool)

(assert (=> b!7900632 (=> res!3134464 e!4663464)))

(assert (=> b!7900632 (= res!3134464 (not ((_ is Concat!30168) (ite c!1449825 (reg!21606 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (ite c!1449824 (regTwo!43067 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))) (regOne!43066 (regex!8574 (rule!11858 (_1!38386 lt!2682744)))))))))))

(assert (=> b!7900632 (= e!4663466 e!4663464)))

(assert (= (and d!2358205 (not res!3134462)) b!7900628))

(assert (= (and b!7900628 c!1449973) b!7900634))

(assert (= (and b!7900628 (not c!1449973)) b!7900630))

(assert (= (and b!7900634 res!3134461) b!7900627))

(assert (= (and b!7900630 c!1449972) b!7900629))

(assert (= (and b!7900630 (not c!1449972)) b!7900632))

(assert (= (and b!7900629 res!3134463) b!7900631))

(assert (= (and b!7900632 (not res!3134464)) b!7900633))

(assert (= (and b!7900633 res!3134460) b!7900626))

(assert (= (or b!7900629 b!7900626) bm!733133))

(assert (= (or b!7900631 b!7900633) bm!733131))

(assert (= (or b!7900627 bm!733131) bm!733132))

(declare-fun m!8275480 () Bool)

(assert (=> bm!733132 m!8275480))

(declare-fun m!8275482 () Bool)

(assert (=> b!7900634 m!8275482))

(declare-fun m!8275484 () Bool)

(assert (=> bm!733133 m!8275484))

(assert (=> bm!733057 d!2358205))

(declare-fun d!2358207 () Bool)

(declare-fun e!4663475 () Bool)

(assert (=> d!2358207 e!4663475))

(declare-fun res!3134467 () Bool)

(assert (=> d!2358207 (=> (not res!3134467) (not e!4663475))))

(declare-fun lt!2683125 () BalanceConc!30614)

(assert (=> d!2358207 (= res!3134467 (= (list!19193 lt!2683125) (originalCharacters!8815 (_1!38386 lt!2682744))))))

(declare-fun fromList!958 (List!74243) Conc!15748)

(assert (=> d!2358207 (= lt!2683125 (BalanceConc!30615 (fromList!958 (originalCharacters!8815 (_1!38386 lt!2682744)))))))

(assert (=> d!2358207 (= (fromListB!2772 (originalCharacters!8815 (_1!38386 lt!2682744))) lt!2683125)))

(declare-fun b!7900642 () Bool)

(assert (=> b!7900642 (= e!4663475 (isBalanced!4471 (fromList!958 (originalCharacters!8815 (_1!38386 lt!2682744)))))))

(assert (= (and d!2358207 res!3134467) b!7900642))

(declare-fun m!8275486 () Bool)

(assert (=> d!2358207 m!8275486))

(declare-fun m!8275488 () Bool)

(assert (=> d!2358207 m!8275488))

(assert (=> b!7900642 m!8275488))

(assert (=> b!7900642 m!8275488))

(declare-fun m!8275490 () Bool)

(assert (=> b!7900642 m!8275490))

(assert (=> d!2357959 d!2358207))

(declare-fun d!2358209 () Bool)

(assert (=> d!2358209 (= (isEmpty!42512 lt!2682839) (not ((_ is Some!17855) lt!2682839)))))

(assert (=> d!2357991 d!2358209))

(declare-fun d!2358211 () Bool)

(assert (=> d!2358211 (= (isEmpty!42515 (_1!38388 lt!2682838)) ((_ is Nil!74119) (_1!38388 lt!2682838)))))

(assert (=> d!2357991 d!2358211))

(declare-fun d!2358213 () Bool)

(declare-fun lt!2683144 () tuple2!70170)

(assert (=> d!2358213 (= (++!18144 (_1!38388 lt!2683144) (_2!38388 lt!2683144)) input!1184)))

(declare-fun sizeTr!447 (List!74243 Int) Int)

(assert (=> d!2358213 (= lt!2683144 (findLongestMatchInner!2149 (regex!8574 (h!80568 rulesArg!141)) Nil!74119 0 input!1184 input!1184 (sizeTr!447 input!1184 0)))))

(declare-fun lt!2683147 () Unit!169137)

(declare-fun lt!2683146 () Unit!169137)

(assert (=> d!2358213 (= lt!2683147 lt!2683146)))

(declare-fun lt!2683148 () List!74243)

(declare-fun lt!2683145 () Int)

(assert (=> d!2358213 (= (sizeTr!447 lt!2683148 lt!2683145) (+ (size!42939 lt!2683148) lt!2683145))))

(declare-fun lemmaSizeTrEqualsSize!446 (List!74243 Int) Unit!169137)

(assert (=> d!2358213 (= lt!2683146 (lemmaSizeTrEqualsSize!446 lt!2683148 lt!2683145))))

(assert (=> d!2358213 (= lt!2683145 0)))

(assert (=> d!2358213 (= lt!2683148 Nil!74119)))

(declare-fun lt!2683143 () Unit!169137)

(declare-fun lt!2683142 () Unit!169137)

(assert (=> d!2358213 (= lt!2683143 lt!2683142)))

(declare-fun lt!2683149 () Int)

(assert (=> d!2358213 (= (sizeTr!447 input!1184 lt!2683149) (+ (size!42939 input!1184) lt!2683149))))

(assert (=> d!2358213 (= lt!2683142 (lemmaSizeTrEqualsSize!446 input!1184 lt!2683149))))

(assert (=> d!2358213 (= lt!2683149 0)))

(assert (=> d!2358213 (validRegex!11643 (regex!8574 (h!80568 rulesArg!141)))))

(assert (=> d!2358213 (= (findLongestMatch!1916 (regex!8574 (h!80568 rulesArg!141)) input!1184) lt!2683144)))

(declare-fun bs!1967937 () Bool)

(assert (= bs!1967937 d!2358213))

(declare-fun m!8275518 () Bool)

(assert (=> bs!1967937 m!8275518))

(declare-fun m!8275520 () Bool)

(assert (=> bs!1967937 m!8275520))

(declare-fun m!8275522 () Bool)

(assert (=> bs!1967937 m!8275522))

(declare-fun m!8275524 () Bool)

(assert (=> bs!1967937 m!8275524))

(declare-fun m!8275526 () Bool)

(assert (=> bs!1967937 m!8275526))

(declare-fun m!8275528 () Bool)

(assert (=> bs!1967937 m!8275528))

(declare-fun m!8275530 () Bool)

(assert (=> bs!1967937 m!8275530))

(assert (=> bs!1967937 m!8274564))

(assert (=> bs!1967937 m!8275526))

(declare-fun m!8275532 () Bool)

(assert (=> bs!1967937 m!8275532))

(assert (=> bs!1967937 m!8275052))

(assert (=> d!2357991 d!2358213))

(declare-fun d!2358223 () Bool)

(declare-fun res!3134472 () Bool)

(declare-fun e!4663497 () Bool)

(assert (=> d!2358223 (=> (not res!3134472) (not e!4663497))))

(assert (=> d!2358223 (= res!3134472 (validRegex!11643 (regex!8574 (h!80568 rulesArg!141))))))

(assert (=> d!2358223 (= (ruleValid!3930 thiss!14377 (h!80568 rulesArg!141)) e!4663497)))

(declare-fun b!7900687 () Bool)

(declare-fun res!3134473 () Bool)

(assert (=> b!7900687 (=> (not res!3134473) (not e!4663497))))

(assert (=> b!7900687 (= res!3134473 (not (nullable!9480 (regex!8574 (h!80568 rulesArg!141)))))))

(declare-fun b!7900688 () Bool)

(assert (=> b!7900688 (= e!4663497 (not (= (tag!9438 (h!80568 rulesArg!141)) (String!82873 ""))))))

(assert (= (and d!2358223 res!3134472) b!7900687))

(assert (= (and b!7900687 res!3134473) b!7900688))

(assert (=> d!2358223 m!8275052))

(assert (=> b!7900687 m!8275048))

(assert (=> d!2357991 d!2358223))

(declare-fun d!2358225 () Bool)

(declare-fun c!1449977 () Bool)

(assert (=> d!2358225 (= c!1449977 ((_ is Node!15748) (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744))))))))

(declare-fun e!4663502 () Bool)

(assert (=> d!2358225 (= (inv!95102 (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744))))) e!4663502)))

(declare-fun b!7900695 () Bool)

(declare-fun inv!95106 (Conc!15748) Bool)

(assert (=> b!7900695 (= e!4663502 (inv!95106 (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744))))))))

(declare-fun b!7900696 () Bool)

(declare-fun e!4663503 () Bool)

(assert (=> b!7900696 (= e!4663502 e!4663503)))

(declare-fun res!3134476 () Bool)

(assert (=> b!7900696 (= res!3134476 (not ((_ is Leaf!30003) (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744)))))))))

(assert (=> b!7900696 (=> res!3134476 e!4663503)))

(declare-fun b!7900697 () Bool)

(declare-fun inv!95107 (Conc!15748) Bool)

(assert (=> b!7900697 (= e!4663503 (inv!95107 (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744))))))))

(assert (= (and d!2358225 c!1449977) b!7900695))

(assert (= (and d!2358225 (not c!1449977)) b!7900696))

(assert (= (and b!7900696 (not res!3134476)) b!7900697))

(declare-fun m!8275534 () Bool)

(assert (=> b!7900695 m!8275534))

(declare-fun m!8275536 () Bool)

(assert (=> b!7900697 m!8275536))

(assert (=> b!7899854 d!2358225))

(assert (=> b!7899929 d!2358223))

(declare-fun d!2358227 () Bool)

(assert (=> d!2358227 true))

(declare-fun lambda!472413 () Int)

(declare-fun order!29807 () Int)

(declare-fun dynLambda!30038 (Int Int) Int)

(assert (=> d!2358227 (< (dynLambda!30036 order!29803 (toValue!11615 (transformation!8574 (h!80568 rulesArg!141)))) (dynLambda!30038 order!29807 lambda!472413))))

(declare-fun Forall2!1311 (Int) Bool)

(assert (=> d!2358227 (= (equivClasses!3624 (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))) (toValue!11615 (transformation!8574 (h!80568 rulesArg!141)))) (Forall2!1311 lambda!472413))))

(declare-fun bs!1967938 () Bool)

(assert (= bs!1967938 d!2358227))

(declare-fun m!8275538 () Bool)

(assert (=> bs!1967938 m!8275538))

(assert (=> b!7899955 d!2358227))

(declare-fun b!7900705 () Bool)

(declare-fun e!4663508 () Bool)

(assert (=> b!7900705 (= e!4663508 (>= (size!42939 (tail!15684 input!1184)) (size!42939 (tail!15684 input!1184))))))

(declare-fun d!2358229 () Bool)

(assert (=> d!2358229 e!4663508))

(declare-fun res!3134482 () Bool)

(assert (=> d!2358229 (=> res!3134482 e!4663508)))

(declare-fun lt!2683150 () Bool)

(assert (=> d!2358229 (= res!3134482 (not lt!2683150))))

(declare-fun e!4663507 () Bool)

(assert (=> d!2358229 (= lt!2683150 e!4663507)))

(declare-fun res!3134481 () Bool)

(assert (=> d!2358229 (=> res!3134481 e!4663507)))

(assert (=> d!2358229 (= res!3134481 ((_ is Nil!74119) (tail!15684 input!1184)))))

(assert (=> d!2358229 (= (isPrefix!6407 (tail!15684 input!1184) (tail!15684 input!1184)) lt!2683150)))

(declare-fun b!7900703 () Bool)

(declare-fun res!3134480 () Bool)

(declare-fun e!4663506 () Bool)

(assert (=> b!7900703 (=> (not res!3134480) (not e!4663506))))

(assert (=> b!7900703 (= res!3134480 (= (head!16141 (tail!15684 input!1184)) (head!16141 (tail!15684 input!1184))))))

(declare-fun b!7900702 () Bool)

(assert (=> b!7900702 (= e!4663507 e!4663506)))

(declare-fun res!3134479 () Bool)

(assert (=> b!7900702 (=> (not res!3134479) (not e!4663506))))

(assert (=> b!7900702 (= res!3134479 (not ((_ is Nil!74119) (tail!15684 input!1184))))))

(declare-fun b!7900704 () Bool)

(assert (=> b!7900704 (= e!4663506 (isPrefix!6407 (tail!15684 (tail!15684 input!1184)) (tail!15684 (tail!15684 input!1184))))))

(assert (= (and d!2358229 (not res!3134481)) b!7900702))

(assert (= (and b!7900702 res!3134479) b!7900703))

(assert (= (and b!7900703 res!3134480) b!7900704))

(assert (= (and d!2358229 (not res!3134482)) b!7900705))

(assert (=> b!7900705 m!8274692))

(declare-fun m!8275540 () Bool)

(assert (=> b!7900705 m!8275540))

(assert (=> b!7900705 m!8274692))

(assert (=> b!7900705 m!8275540))

(assert (=> b!7900703 m!8274692))

(declare-fun m!8275542 () Bool)

(assert (=> b!7900703 m!8275542))

(assert (=> b!7900703 m!8274692))

(assert (=> b!7900703 m!8275542))

(assert (=> b!7900704 m!8274692))

(declare-fun m!8275544 () Bool)

(assert (=> b!7900704 m!8275544))

(assert (=> b!7900704 m!8274692))

(assert (=> b!7900704 m!8275544))

(assert (=> b!7900704 m!8275544))

(assert (=> b!7900704 m!8275544))

(declare-fun m!8275546 () Bool)

(assert (=> b!7900704 m!8275546))

(assert (=> b!7899943 d!2358229))

(declare-fun d!2358231 () Bool)

(assert (=> d!2358231 (= (tail!15684 input!1184) (t!389052 input!1184))))

(assert (=> b!7899943 d!2358231))

(declare-fun d!2358233 () Bool)

(declare-fun res!3134487 () Bool)

(declare-fun e!4663513 () Bool)

(assert (=> d!2358233 (=> res!3134487 e!4663513)))

(assert (=> d!2358233 (= res!3134487 ((_ is Nil!74120) rulesArg!141))))

(assert (=> d!2358233 (= (forall!18439 rulesArg!141 lambda!472390) e!4663513)))

(declare-fun b!7900710 () Bool)

(declare-fun e!4663514 () Bool)

(assert (=> b!7900710 (= e!4663513 e!4663514)))

(declare-fun res!3134488 () Bool)

(assert (=> b!7900710 (=> (not res!3134488) (not e!4663514))))

(declare-fun dynLambda!30039 (Int Rule!16948) Bool)

(assert (=> b!7900710 (= res!3134488 (dynLambda!30039 lambda!472390 (h!80568 rulesArg!141)))))

(declare-fun b!7900711 () Bool)

(assert (=> b!7900711 (= e!4663514 (forall!18439 (t!389053 rulesArg!141) lambda!472390))))

(assert (= (and d!2358233 (not res!3134487)) b!7900710))

(assert (= (and b!7900710 res!3134488) b!7900711))

(declare-fun b_lambda!289653 () Bool)

(assert (=> (not b_lambda!289653) (not b!7900710)))

(declare-fun m!8275548 () Bool)

(assert (=> b!7900710 m!8275548))

(declare-fun m!8275550 () Bool)

(assert (=> b!7900711 m!8275550))

(assert (=> d!2357929 d!2358233))

(assert (=> b!7899944 d!2357943))

(declare-fun d!2358235 () Bool)

(assert (=> d!2358235 (= (head!16141 input!1184) (h!80567 input!1184))))

(assert (=> b!7899942 d!2358235))

(declare-fun d!2358237 () Bool)

(assert (=> d!2358237 (= (isEmpty!42512 lt!2682822) (not ((_ is Some!17855) lt!2682822)))))

(assert (=> d!2357961 d!2358237))

(assert (=> d!2357961 d!2357937))

(assert (=> d!2357961 d!2357939))

(assert (=> d!2357961 d!2358203))

(declare-fun d!2358239 () Bool)

(declare-fun c!1449980 () Bool)

(assert (=> d!2358239 (= c!1449980 ((_ is Nil!74119) lt!2682844))))

(declare-fun e!4663517 () (InoxSet C!42884))

(assert (=> d!2358239 (= (content!15707 lt!2682844) e!4663517)))

(declare-fun b!7900716 () Bool)

(assert (=> b!7900716 (= e!4663517 ((as const (Array C!42884 Bool)) false))))

(declare-fun b!7900717 () Bool)

(assert (=> b!7900717 (= e!4663517 ((_ map or) (store ((as const (Array C!42884 Bool)) false) (h!80567 lt!2682844) true) (content!15707 (t!389052 lt!2682844))))))

(assert (= (and d!2358239 c!1449980) b!7900716))

(assert (= (and d!2358239 (not c!1449980)) b!7900717))

(declare-fun m!8275552 () Bool)

(assert (=> b!7900717 m!8275552))

(declare-fun m!8275554 () Bool)

(assert (=> b!7900717 m!8275554))

(assert (=> d!2357993 d!2358239))

(declare-fun d!2358241 () Bool)

(declare-fun c!1449981 () Bool)

(assert (=> d!2358241 (= c!1449981 ((_ is Nil!74119) lt!2682746))))

(declare-fun e!4663518 () (InoxSet C!42884))

(assert (=> d!2358241 (= (content!15707 lt!2682746) e!4663518)))

(declare-fun b!7900718 () Bool)

(assert (=> b!7900718 (= e!4663518 ((as const (Array C!42884 Bool)) false))))

(declare-fun b!7900719 () Bool)

(assert (=> b!7900719 (= e!4663518 ((_ map or) (store ((as const (Array C!42884 Bool)) false) (h!80567 lt!2682746) true) (content!15707 (t!389052 lt!2682746))))))

(assert (= (and d!2358241 c!1449981) b!7900718))

(assert (= (and d!2358241 (not c!1449981)) b!7900719))

(declare-fun m!8275556 () Bool)

(assert (=> b!7900719 m!8275556))

(assert (=> b!7900719 m!8275440))

(assert (=> d!2357993 d!2358241))

(declare-fun d!2358243 () Bool)

(declare-fun c!1449982 () Bool)

(assert (=> d!2358243 (= c!1449982 ((_ is Nil!74119) (_2!38386 lt!2682744)))))

(declare-fun e!4663519 () (InoxSet C!42884))

(assert (=> d!2358243 (= (content!15707 (_2!38386 lt!2682744)) e!4663519)))

(declare-fun b!7900720 () Bool)

(assert (=> b!7900720 (= e!4663519 ((as const (Array C!42884 Bool)) false))))

(declare-fun b!7900721 () Bool)

(assert (=> b!7900721 (= e!4663519 ((_ map or) (store ((as const (Array C!42884 Bool)) false) (h!80567 (_2!38386 lt!2682744)) true) (content!15707 (t!389052 (_2!38386 lt!2682744)))))))

(assert (= (and d!2358243 c!1449982) b!7900720))

(assert (= (and d!2358243 (not c!1449982)) b!7900721))

(declare-fun m!8275558 () Bool)

(assert (=> b!7900721 m!8275558))

(declare-fun m!8275560 () Bool)

(assert (=> b!7900721 m!8275560))

(assert (=> d!2357993 d!2358243))

(declare-fun b!7900723 () Bool)

(declare-fun e!4663520 () Bool)

(declare-fun tp!2353780 () Bool)

(declare-fun tp!2353779 () Bool)

(assert (=> b!7900723 (= e!4663520 (and tp!2353780 tp!2353779))))

(declare-fun b!7900722 () Bool)

(assert (=> b!7900722 (= e!4663520 tp_is_empty!52929)))

(declare-fun b!7900725 () Bool)

(declare-fun tp!2353778 () Bool)

(declare-fun tp!2353781 () Bool)

(assert (=> b!7900725 (= e!4663520 (and tp!2353778 tp!2353781))))

(declare-fun b!7900724 () Bool)

(declare-fun tp!2353777 () Bool)

(assert (=> b!7900724 (= e!4663520 tp!2353777)))

(assert (=> b!7900132 (= tp!2353710 e!4663520)))

(assert (= (and b!7900132 ((_ is ElementMatch!21277) (reg!21606 (regex!8574 (h!80568 rulesArg!141))))) b!7900722))

(assert (= (and b!7900132 ((_ is Concat!30168) (reg!21606 (regex!8574 (h!80568 rulesArg!141))))) b!7900723))

(assert (= (and b!7900132 ((_ is Star!21277) (reg!21606 (regex!8574 (h!80568 rulesArg!141))))) b!7900724))

(assert (= (and b!7900132 ((_ is Union!21277) (reg!21606 (regex!8574 (h!80568 rulesArg!141))))) b!7900725))

(declare-fun b!7900727 () Bool)

(declare-fun e!4663521 () Bool)

(declare-fun tp!2353785 () Bool)

(declare-fun tp!2353784 () Bool)

(assert (=> b!7900727 (= e!4663521 (and tp!2353785 tp!2353784))))

(declare-fun b!7900726 () Bool)

(assert (=> b!7900726 (= e!4663521 tp_is_empty!52929)))

(declare-fun b!7900729 () Bool)

(declare-fun tp!2353783 () Bool)

(declare-fun tp!2353786 () Bool)

(assert (=> b!7900729 (= e!4663521 (and tp!2353783 tp!2353786))))

(declare-fun b!7900728 () Bool)

(declare-fun tp!2353782 () Bool)

(assert (=> b!7900728 (= e!4663521 tp!2353782)))

(assert (=> b!7900133 (= tp!2353711 e!4663521)))

(assert (= (and b!7900133 ((_ is ElementMatch!21277) (regOne!43067 (regex!8574 (h!80568 rulesArg!141))))) b!7900726))

(assert (= (and b!7900133 ((_ is Concat!30168) (regOne!43067 (regex!8574 (h!80568 rulesArg!141))))) b!7900727))

(assert (= (and b!7900133 ((_ is Star!21277) (regOne!43067 (regex!8574 (h!80568 rulesArg!141))))) b!7900728))

(assert (= (and b!7900133 ((_ is Union!21277) (regOne!43067 (regex!8574 (h!80568 rulesArg!141))))) b!7900729))

(declare-fun b!7900731 () Bool)

(declare-fun e!4663522 () Bool)

(declare-fun tp!2353790 () Bool)

(declare-fun tp!2353789 () Bool)

(assert (=> b!7900731 (= e!4663522 (and tp!2353790 tp!2353789))))

(declare-fun b!7900730 () Bool)

(assert (=> b!7900730 (= e!4663522 tp_is_empty!52929)))

(declare-fun b!7900733 () Bool)

(declare-fun tp!2353788 () Bool)

(declare-fun tp!2353791 () Bool)

(assert (=> b!7900733 (= e!4663522 (and tp!2353788 tp!2353791))))

(declare-fun b!7900732 () Bool)

(declare-fun tp!2353787 () Bool)

(assert (=> b!7900732 (= e!4663522 tp!2353787)))

(assert (=> b!7900133 (= tp!2353714 e!4663522)))

(assert (= (and b!7900133 ((_ is ElementMatch!21277) (regTwo!43067 (regex!8574 (h!80568 rulesArg!141))))) b!7900730))

(assert (= (and b!7900133 ((_ is Concat!30168) (regTwo!43067 (regex!8574 (h!80568 rulesArg!141))))) b!7900731))

(assert (= (and b!7900133 ((_ is Star!21277) (regTwo!43067 (regex!8574 (h!80568 rulesArg!141))))) b!7900732))

(assert (= (and b!7900133 ((_ is Union!21277) (regTwo!43067 (regex!8574 (h!80568 rulesArg!141))))) b!7900733))

(declare-fun b!7900736 () Bool)

(declare-fun b_free!134671 () Bool)

(declare-fun b_next!135461 () Bool)

(assert (=> b!7900736 (= b_free!134671 (not b_next!135461))))

(declare-fun t!389137 () Bool)

(declare-fun tb!262735 () Bool)

(assert (=> (and b!7900736 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toValue!11615 (transformation!8574 (h!80568 rulesArg!141)))) t!389137) tb!262735))

(declare-fun result!359772 () Bool)

(assert (= result!359772 result!359742))

(assert (=> d!2358151 t!389137))

(declare-fun tb!262737 () Bool)

(declare-fun t!389139 () Bool)

(assert (=> (and b!7900736 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839)))))) t!389139) tb!262737))

(declare-fun result!359774 () Bool)

(assert (= result!359774 result!359714))

(assert (=> d!2358035 t!389139))

(declare-fun tb!262739 () Bool)

(declare-fun t!389141 () Bool)

(assert (=> (and b!7900736 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744))))) t!389141) tb!262739))

(declare-fun result!359776 () Bool)

(assert (= result!359776 result!359674))

(assert (=> d!2357957 t!389141))

(declare-fun t!389143 () Bool)

(declare-fun tb!262741 () Bool)

(assert (=> (and b!7900736 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))))) t!389143) tb!262741))

(declare-fun result!359778 () Bool)

(assert (= result!359778 result!359710))

(assert (=> d!2358029 t!389143))

(assert (=> d!2358161 t!389137))

(declare-fun b_and!352635 () Bool)

(declare-fun tp!2353792 () Bool)

(assert (=> b!7900736 (= tp!2353792 (and (=> t!389139 result!359774) (=> t!389141 result!359776) (=> t!389137 result!359772) (=> t!389143 result!359778) b_and!352635))))

(declare-fun b_free!134673 () Bool)

(declare-fun b_next!135463 () Bool)

(assert (=> b!7900736 (= b_free!134673 (not b_next!135463))))

(declare-fun t!389145 () Bool)

(declare-fun tb!262743 () Bool)

(assert (=> (and b!7900736 (= (toChars!11474 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744))))) t!389145) tb!262743))

(declare-fun result!359780 () Bool)

(assert (= result!359780 result!359670))

(assert (=> d!2357925 t!389145))

(declare-fun t!389147 () Bool)

(declare-fun tb!262745 () Bool)

(assert (=> (and b!7900736 (= (toChars!11474 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682822)))))) t!389147) tb!262745))

(declare-fun result!359782 () Bool)

(assert (= result!359782 result!359718))

(assert (=> d!2358041 t!389147))

(declare-fun tb!262747 () Bool)

(declare-fun t!389149 () Bool)

(assert (=> (and b!7900736 (= (toChars!11474 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 (get!26615 lt!2682839)))))) t!389149) tb!262747))

(declare-fun result!359784 () Bool)

(assert (= result!359784 result!359734))

(assert (=> d!2358133 t!389149))

(declare-fun t!389151 () Bool)

(declare-fun tb!262749 () Bool)

(assert (=> (and b!7900736 (= (toChars!11474 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toChars!11474 (transformation!8574 (h!80568 rulesArg!141)))) t!389151) tb!262749))

(declare-fun result!359786 () Bool)

(assert (= result!359786 result!359738))

(assert (=> d!2358151 t!389151))

(declare-fun tp!2353795 () Bool)

(declare-fun b_and!352637 () Bool)

(assert (=> b!7900736 (= tp!2353795 (and (=> t!389145 result!359780) (=> t!389147 result!359782) (=> t!389149 result!359784) (=> t!389151 result!359786) b_and!352637))))

(declare-fun e!4663524 () Bool)

(assert (=> b!7900736 (= e!4663524 (and tp!2353792 tp!2353795))))

(declare-fun b!7900735 () Bool)

(declare-fun tp!2353793 () Bool)

(declare-fun e!4663525 () Bool)

(assert (=> b!7900735 (= e!4663525 (and tp!2353793 (inv!95097 (tag!9438 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (inv!95099 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) e!4663524))))

(declare-fun b!7900734 () Bool)

(declare-fun e!4663526 () Bool)

(declare-fun tp!2353794 () Bool)

(assert (=> b!7900734 (= e!4663526 (and e!4663525 tp!2353794))))

(assert (=> b!7900142 (= tp!2353725 e!4663526)))

(assert (= b!7900735 b!7900736))

(assert (= b!7900734 b!7900735))

(assert (= (and b!7900142 ((_ is Cons!74120) (t!389053 (t!389053 rulesArg!141)))) b!7900734))

(declare-fun m!8275562 () Bool)

(assert (=> b!7900735 m!8275562))

(declare-fun m!8275564 () Bool)

(assert (=> b!7900735 m!8275564))

(declare-fun b!7900737 () Bool)

(declare-fun e!4663527 () Bool)

(declare-fun tp!2353796 () Bool)

(assert (=> b!7900737 (= e!4663527 (and tp_is_empty!52929 tp!2353796))))

(assert (=> b!7900119 (= tp!2353699 e!4663527)))

(assert (= (and b!7900119 ((_ is Cons!74119) (t!389052 (t!389052 input!1184)))) b!7900737))

(declare-fun b!7900746 () Bool)

(declare-fun e!4663533 () Bool)

(declare-fun tp!2353805 () Bool)

(declare-fun tp!2353803 () Bool)

(assert (=> b!7900746 (= e!4663533 (and (inv!95102 (left!56550 (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744)))))) tp!2353805 (inv!95102 (right!56880 (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744)))))) tp!2353803))))

(declare-fun b!7900748 () Bool)

(declare-fun e!4663532 () Bool)

(declare-fun tp!2353804 () Bool)

(assert (=> b!7900748 (= e!4663532 tp!2353804)))

(declare-fun b!7900747 () Bool)

(declare-fun inv!95109 (IArray!31557) Bool)

(assert (=> b!7900747 (= e!4663533 (and (inv!95109 (xs!19130 (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744)))))) e!4663532))))

(assert (=> b!7899854 (= tp!2353663 (and (inv!95102 (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744))))) e!4663533))))

(assert (= (and b!7899854 ((_ is Node!15748) (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744)))))) b!7900746))

(assert (= b!7900747 b!7900748))

(assert (= (and b!7899854 ((_ is Leaf!30003) (c!1449799 (dynLambda!30028 (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))) (value!286340 (_1!38386 lt!2682744)))))) b!7900747))

(declare-fun m!8275566 () Bool)

(assert (=> b!7900746 m!8275566))

(declare-fun m!8275568 () Bool)

(assert (=> b!7900746 m!8275568))

(declare-fun m!8275570 () Bool)

(assert (=> b!7900747 m!8275570))

(assert (=> b!7899854 m!8274592))

(declare-fun b!7900750 () Bool)

(declare-fun e!4663534 () Bool)

(declare-fun tp!2353809 () Bool)

(declare-fun tp!2353808 () Bool)

(assert (=> b!7900750 (= e!4663534 (and tp!2353809 tp!2353808))))

(declare-fun b!7900749 () Bool)

(assert (=> b!7900749 (= e!4663534 tp_is_empty!52929)))

(declare-fun b!7900752 () Bool)

(declare-fun tp!2353807 () Bool)

(declare-fun tp!2353810 () Bool)

(assert (=> b!7900752 (= e!4663534 (and tp!2353807 tp!2353810))))

(declare-fun b!7900751 () Bool)

(declare-fun tp!2353806 () Bool)

(assert (=> b!7900751 (= e!4663534 tp!2353806)))

(assert (=> b!7900131 (= tp!2353713 e!4663534)))

(assert (= (and b!7900131 ((_ is ElementMatch!21277) (regOne!43066 (regex!8574 (h!80568 rulesArg!141))))) b!7900749))

(assert (= (and b!7900131 ((_ is Concat!30168) (regOne!43066 (regex!8574 (h!80568 rulesArg!141))))) b!7900750))

(assert (= (and b!7900131 ((_ is Star!21277) (regOne!43066 (regex!8574 (h!80568 rulesArg!141))))) b!7900751))

(assert (= (and b!7900131 ((_ is Union!21277) (regOne!43066 (regex!8574 (h!80568 rulesArg!141))))) b!7900752))

(declare-fun b!7900754 () Bool)

(declare-fun e!4663535 () Bool)

(declare-fun tp!2353814 () Bool)

(declare-fun tp!2353813 () Bool)

(assert (=> b!7900754 (= e!4663535 (and tp!2353814 tp!2353813))))

(declare-fun b!7900753 () Bool)

(assert (=> b!7900753 (= e!4663535 tp_is_empty!52929)))

(declare-fun b!7900756 () Bool)

(declare-fun tp!2353812 () Bool)

(declare-fun tp!2353815 () Bool)

(assert (=> b!7900756 (= e!4663535 (and tp!2353812 tp!2353815))))

(declare-fun b!7900755 () Bool)

(declare-fun tp!2353811 () Bool)

(assert (=> b!7900755 (= e!4663535 tp!2353811)))

(assert (=> b!7900131 (= tp!2353712 e!4663535)))

(assert (= (and b!7900131 ((_ is ElementMatch!21277) (regTwo!43066 (regex!8574 (h!80568 rulesArg!141))))) b!7900753))

(assert (= (and b!7900131 ((_ is Concat!30168) (regTwo!43066 (regex!8574 (h!80568 rulesArg!141))))) b!7900754))

(assert (= (and b!7900131 ((_ is Star!21277) (regTwo!43066 (regex!8574 (h!80568 rulesArg!141))))) b!7900755))

(assert (= (and b!7900131 ((_ is Union!21277) (regTwo!43066 (regex!8574 (h!80568 rulesArg!141))))) b!7900756))

(declare-fun b!7900758 () Bool)

(declare-fun e!4663536 () Bool)

(declare-fun tp!2353819 () Bool)

(declare-fun tp!2353818 () Bool)

(assert (=> b!7900758 (= e!4663536 (and tp!2353819 tp!2353818))))

(declare-fun b!7900757 () Bool)

(assert (=> b!7900757 (= e!4663536 tp_is_empty!52929)))

(declare-fun b!7900760 () Bool)

(declare-fun tp!2353817 () Bool)

(declare-fun tp!2353820 () Bool)

(assert (=> b!7900760 (= e!4663536 (and tp!2353817 tp!2353820))))

(declare-fun b!7900759 () Bool)

(declare-fun tp!2353816 () Bool)

(assert (=> b!7900759 (= e!4663536 tp!2353816)))

(assert (=> b!7900143 (= tp!2353724 e!4663536)))

(assert (= (and b!7900143 ((_ is ElementMatch!21277) (regex!8574 (h!80568 (t!389053 rulesArg!141))))) b!7900757))

(assert (= (and b!7900143 ((_ is Concat!30168) (regex!8574 (h!80568 (t!389053 rulesArg!141))))) b!7900758))

(assert (= (and b!7900143 ((_ is Star!21277) (regex!8574 (h!80568 (t!389053 rulesArg!141))))) b!7900759))

(assert (= (and b!7900143 ((_ is Union!21277) (regex!8574 (h!80568 (t!389053 rulesArg!141))))) b!7900760))

(declare-fun b_lambda!289655 () Bool)

(assert (= b_lambda!289631 (or (and b!7899809 b_free!134655) (and b!7900144 b_free!134663 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))))) (and b!7900736 b_free!134671 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))))) b_lambda!289655)))

(declare-fun b_lambda!289657 () Bool)

(assert (= b_lambda!289603 (or (and b!7899809 b_free!134657 (= (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))) (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))))) (and b!7900144 b_free!134665 (= (toChars!11474 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))))) (and b!7900736 b_free!134673 (= (toChars!11474 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toChars!11474 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))))) b_lambda!289657)))

(declare-fun b_lambda!289659 () Bool)

(assert (= b_lambda!289633 (or (and b!7899809 b_free!134655) (and b!7900144 b_free!134663 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))))) (and b!7900736 b_free!134671 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))))) b_lambda!289659)))

(declare-fun b_lambda!289661 () Bool)

(assert (= b_lambda!289653 (or d!2357929 b_lambda!289661)))

(declare-fun bs!1967939 () Bool)

(declare-fun d!2358245 () Bool)

(assert (= bs!1967939 (and d!2358245 d!2357929)))

(assert (=> bs!1967939 (= (dynLambda!30039 lambda!472390 (h!80568 rulesArg!141)) (ruleValid!3930 thiss!14377 (h!80568 rulesArg!141)))))

(assert (=> bs!1967939 m!8274686))

(assert (=> b!7900710 d!2358245))

(declare-fun b_lambda!289663 () Bool)

(assert (= b_lambda!289605 (or (and b!7899809 b_free!134655 (= (toValue!11615 (transformation!8574 (h!80568 rulesArg!141))) (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))))) (and b!7900144 b_free!134663 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))))) (and b!7900736 b_free!134671 (= (toValue!11615 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toValue!11615 (transformation!8574 (rule!11858 (_1!38386 lt!2682744)))))) b_lambda!289663)))

(declare-fun b_lambda!289665 () Bool)

(assert (= b_lambda!289629 (or (and b!7899809 b_free!134657) (and b!7900144 b_free!134665 (= (toChars!11474 (transformation!8574 (h!80568 (t!389053 rulesArg!141)))) (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))))) (and b!7900736 b_free!134673 (= (toChars!11474 (transformation!8574 (h!80568 (t!389053 (t!389053 rulesArg!141))))) (toChars!11474 (transformation!8574 (h!80568 rulesArg!141))))) b_lambda!289665)))

(check-sat (not b!7900471) (not b!7900170) (not b!7900746) (not d!2358025) (not tb!262703) (not b_next!135463) (not b!7900719) (not b_next!135453) (not b!7900616) (not b!7900278) (not b!7900444) (not d!2358047) (not b!7900485) (not d!2358021) (not d!2358033) (not b!7900490) (not b!7900488) (not b!7900642) (not b_lambda!289663) (not b!7900603) (not b!7900492) (not d!2358223) (not bs!1967939) (not d!2358129) (not b!7900486) (not b!7900441) (not b!7900697) (not b!7900476) (not b_lambda!289617) (not b!7900594) (not b!7900728) (not b_next!135461) (not bm!733130) (not d!2358131) (not b!7900752) (not b!7900545) (not b!7900434) (not b!7900727) (not b!7900171) (not bm!733100) b_and!352637 (not b!7900705) (not b!7900473) (not b!7900467) (not b!7900582) (not b!7900569) (not b!7900747) (not b!7900176) (not d!2358063) (not b!7900463) (not b_lambda!289627) (not b_lambda!289661) (not b!7900469) (not bm!733095) (not d!2358139) (not b!7900484) (not b!7900618) (not d!2358049) tp_is_empty!52929 (not d!2358127) (not d!2358045) b_and!352615 (not b!7900181) (not tb!262707) (not tb!262699) (not b!7900280) (not b!7900756) (not b!7900711) (not b!7900168) (not b!7900704) (not b!7900621) (not bm!733102) (not bm!733132) (not b!7900751) (not b!7900735) (not b!7900721) (not d!2358159) (not bm!733129) (not b!7900598) (not b!7900470) (not b!7900625) (not b!7900750) (not b!7900172) (not d!2358041) (not b!7900481) (not b!7900283) (not d!2358191) (not b!7899854) (not b!7900592) (not b!7900489) (not d!2358185) (not b_lambda!289655) (not b!7900455) (not b!7900754) b_and!352607 (not b!7900731) (not b!7900173) (not bm!733068) (not b!7900478) (not b!7900758) (not bm!733099) (not b!7900695) (not b!7900447) (not d!2358213) (not b!7900453) (not tb!262683) (not b!7900448) (not bm!733093) (not tb!262679) (not b!7900624) (not d!2358183) (not bm!733133) (not d!2358181) (not b!7900759) (not d!2358037) (not b_lambda!289665) (not b!7900733) (not b!7900458) (not b!7900583) (not b!7900760) (not b_next!135447) (not b_next!135445) (not b!7900755) (not b!7900525) (not b_lambda!289615) (not b_lambda!289659) (not b!7900732) (not b!7900465) (not b!7900273) (not d!2358207) (not bm!733098) (not b!7900175) (not b!7900687) (not d!2358163) (not b!7900491) (not b!7900748) (not b!7900729) (not b!7900502) (not b_lambda!289619) (not b!7900174) (not b_next!135455) b_and!352635 (not bm!733103) (not b!7900450) (not b!7900737) b_and!352617 (not b_lambda!289657) (not bm!733094) (not tb!262675) (not b!7900275) (not b!7900634) (not d!2358189) (not b!7900183) (not d!2358145) (not d!2358141) (not d!2358151) (not b!7900725) (not d!2358203) (not b!7900734) (not b!7900462) (not d!2358133) (not bm!733097) (not b!7900717) (not d!2358155) (not bm!733096) (not b!7900723) (not b!7900623) (not b!7900619) b_and!352609 (not b!7900272) (not bm!733101) (not b!7900724) (not d!2358227) (not b!7900595) (not b!7900167) (not b!7900703) (not d!2358039) (not b!7900446) (not d!2358147) (not b!7900433) (not b!7900599))
(check-sat (not b_next!135461) b_and!352637 b_and!352615 b_and!352607 b_and!352617 b_and!352609 (not b_next!135463) (not b_next!135453) (not b_next!135447) (not b_next!135445) (not b_next!135455) b_and!352635)
