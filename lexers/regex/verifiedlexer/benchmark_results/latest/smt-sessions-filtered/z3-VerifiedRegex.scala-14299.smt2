; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!746724 () Bool)

(assert start!746724)

(declare-fun b!7910532 () Bool)

(declare-fun b_free!135199 () Bool)

(declare-fun b_next!135989 () Bool)

(assert (=> b!7910532 (= b_free!135199 (not b_next!135989))))

(declare-fun tp!2356471 () Bool)

(declare-fun b_and!353487 () Bool)

(assert (=> b!7910532 (= tp!2356471 b_and!353487)))

(declare-fun b_free!135201 () Bool)

(declare-fun b_next!135991 () Bool)

(assert (=> b!7910532 (= b_free!135201 (not b_next!135991))))

(declare-fun tp!2356469 () Bool)

(declare-fun b_and!353489 () Bool)

(assert (=> b!7910532 (= tp!2356469 b_and!353489)))

(declare-fun b!7910529 () Bool)

(declare-fun e!4669604 () Bool)

(declare-fun e!4669606 () Bool)

(assert (=> b!7910529 (= e!4669604 e!4669606)))

(declare-fun res!3139732 () Bool)

(assert (=> b!7910529 (=> (not res!3139732) (not e!4669606))))

(declare-datatypes ((C!43064 0))(
  ( (C!43065 (val!31996 Int)) )
))
(declare-datatypes ((List!74489 0))(
  ( (Nil!74365) (Cons!74365 (h!80813 C!43064) (t!389874 List!74489)) )
))
(declare-datatypes ((tuple2!70422 0))(
  ( (tuple2!70423 (_1!38514 List!74489) (_2!38514 List!74489)) )
))
(declare-fun lt!2686922 () tuple2!70422)

(declare-fun isEmpty!42698 (List!74489) Bool)

(assert (=> b!7910529 (= res!3139732 (not (isEmpty!42698 (_1!38514 lt!2686922))))))

(declare-datatypes ((List!74490 0))(
  ( (Nil!74366) (Cons!74366 (h!80814 (_ BitVec 16)) (t!389875 List!74490)) )
))
(declare-datatypes ((IArray!31737 0))(
  ( (IArray!31738 (innerList!15926 List!74489)) )
))
(declare-datatypes ((Conc!15838 0))(
  ( (Node!15838 (left!56745 Conc!15838) (right!57075 Conc!15838) (csize!31906 Int) (cheight!16049 Int)) (Leaf!30138 (xs!19220 IArray!31737) (csize!31907 Int)) (Empty!15838) )
))
(declare-datatypes ((BalanceConc!30794 0))(
  ( (BalanceConc!30795 (c!1451297 Conc!15838)) )
))
(declare-datatypes ((TokenValue!8980 0))(
  ( (FloatLiteralValue!17960 (text!63305 List!74490)) (TokenValueExt!8979 (__x!35247 Int)) (Broken!44900 (value!288875 List!74490)) (Object!9103) (End!8980) (Def!8980) (Underscore!8980) (Match!8980) (Else!8980) (Error!8980) (Case!8980) (If!8980) (Extends!8980) (Abstract!8980) (Class!8980) (Val!8980) (DelimiterValue!17960 (del!9040 List!74490)) (KeywordValue!8986 (value!288876 List!74490)) (CommentValue!17960 (value!288877 List!74490)) (WhitespaceValue!17960 (value!288878 List!74490)) (IndentationValue!8980 (value!288879 List!74490)) (String!83321) (Int32!8980) (Broken!44901 (value!288880 List!74490)) (Boolean!8981) (Unit!169413) (OperatorValue!8983 (op!9040 List!74490)) (IdentifierValue!17960 (value!288881 List!74490)) (IdentifierValue!17961 (value!288882 List!74490)) (WhitespaceValue!17961 (value!288883 List!74490)) (True!17960) (False!17960) (Broken!44902 (value!288884 List!74490)) (Broken!44903 (value!288885 List!74490)) (True!17961) (RightBrace!8980) (RightBracket!8980) (Colon!8980) (Null!8980) (Comma!8980) (LeftBracket!8980) (False!17961) (LeftBrace!8980) (ImaginaryLiteralValue!8980 (text!63306 List!74490)) (StringLiteralValue!26940 (value!288886 List!74490)) (EOFValue!8980 (value!288887 List!74490)) (IdentValue!8980 (value!288888 List!74490)) (DelimiterValue!17961 (value!288889 List!74490)) (DedentValue!8980 (value!288890 List!74490)) (NewLineValue!8980 (value!288891 List!74490)) (IntegerValue!26940 (value!288892 (_ BitVec 32)) (text!63307 List!74490)) (IntegerValue!26941 (value!288893 Int) (text!63308 List!74490)) (Times!8980) (Or!8980) (Equal!8980) (Minus!8980) (Broken!44904 (value!288894 List!74490)) (And!8980) (Div!8980) (LessEqual!8980) (Mod!8980) (Concat!30347) (Not!8980) (Plus!8980) (SpaceValue!8980 (value!288895 List!74490)) (IntegerValue!26942 (value!288896 Int) (text!63309 List!74490)) (StringLiteralValue!26941 (text!63310 List!74490)) (FloatLiteralValue!17961 (text!63311 List!74490)) (BytesLiteralValue!8980 (value!288897 List!74490)) (CommentValue!17961 (value!288898 List!74490)) (StringLiteralValue!26942 (value!288899 List!74490)) (ErrorTokenValue!8980 (msg!9041 List!74490)) )
))
(declare-datatypes ((String!83322 0))(
  ( (String!83323 (value!288900 String)) )
))
(declare-datatypes ((Regex!21367 0))(
  ( (ElementMatch!21367 (c!1451298 C!43064)) (Concat!30348 (regOne!43246 Regex!21367) (regTwo!43246 Regex!21367)) (EmptyExpr!21367) (Star!21367 (reg!21696 Regex!21367)) (EmptyLang!21367) (Union!21367 (regOne!43247 Regex!21367) (regTwo!43247 Regex!21367)) )
))
(declare-datatypes ((TokenValueInjection!17268 0))(
  ( (TokenValueInjection!17269 (toValue!11721 Int) (toChars!11580 Int)) )
))
(declare-datatypes ((Rule!17128 0))(
  ( (Rule!17129 (regex!8664 Regex!21367) (tag!9528 String!83322) (isSeparator!8664 Bool) (transformation!8664 TokenValueInjection!17268)) )
))
(declare-fun rule!156 () Rule!17128)

(declare-fun input!1480 () List!74489)

(declare-fun findLongestMatch!1957 (Regex!21367 List!74489) tuple2!70422)

(assert (=> b!7910529 (= lt!2686922 (findLongestMatch!1957 (regex!8664 rule!156) input!1480))))

(declare-fun res!3139727 () Bool)

(assert (=> start!746724 (=> (not res!3139727) (not e!4669604))))

(declare-datatypes ((LexerInterface!8256 0))(
  ( (LexerInterfaceExt!8253 (__x!35248 Int)) (Lexer!8254) )
))
(declare-fun thiss!15815 () LexerInterface!8256)

(get-info :version)

(assert (=> start!746724 (= res!3139727 ((_ is Lexer!8254) thiss!15815))))

(assert (=> start!746724 e!4669604))

(assert (=> start!746724 true))

(declare-fun e!4669600 () Bool)

(assert (=> start!746724 e!4669600))

(declare-fun e!4669603 () Bool)

(assert (=> start!746724 e!4669603))

(declare-fun b!7910530 () Bool)

(declare-fun e!4669605 () Bool)

(declare-fun e!4669607 () Bool)

(assert (=> b!7910530 (= e!4669605 e!4669607)))

(declare-fun res!3139731 () Bool)

(assert (=> b!7910530 (=> res!3139731 e!4669607)))

(declare-fun lt!2686924 () List!74489)

(declare-fun matchR!10688 (Regex!21367 List!74489) Bool)

(assert (=> b!7910530 (= res!3139731 (not (matchR!10688 (regex!8664 rule!156) lt!2686924)))))

(declare-datatypes ((Token!15740 0))(
  ( (Token!15741 (value!288901 TokenValue!8980) (rule!11964 Rule!17128) (size!43137 Int) (originalCharacters!8901 List!74489)) )
))
(declare-datatypes ((tuple2!70424 0))(
  ( (tuple2!70425 (_1!38515 Token!15740) (_2!38515 List!74489)) )
))
(declare-fun lt!2686919 () tuple2!70424)

(declare-fun list!19312 (BalanceConc!30794) List!74489)

(declare-fun charsOf!5602 (Token!15740) BalanceConc!30794)

(assert (=> b!7910530 (= lt!2686924 (list!19312 (charsOf!5602 (_1!38515 lt!2686919))))))

(declare-datatypes ((Option!17942 0))(
  ( (None!17941) (Some!17941 (v!55098 tuple2!70424)) )
))
(declare-fun lt!2686918 () Option!17942)

(declare-fun get!26744 (Option!17942) tuple2!70424)

(assert (=> b!7910530 (= lt!2686919 (get!26744 lt!2686918))))

(declare-fun b!7910531 () Bool)

(declare-fun e!4669608 () Bool)

(declare-fun lt!2686920 () tuple2!70422)

(assert (=> b!7910531 (= e!4669608 (matchR!10688 (regex!8664 rule!156) (_1!38514 lt!2686920)))))

(declare-fun e!4669602 () Bool)

(assert (=> b!7910532 (= e!4669602 (and tp!2356471 tp!2356469))))

(declare-fun b!7910533 () Bool)

(declare-fun tp_is_empty!53109 () Bool)

(declare-fun tp!2356472 () Bool)

(assert (=> b!7910533 (= e!4669603 (and tp_is_empty!53109 tp!2356472))))

(declare-fun b!7910534 () Bool)

(declare-fun res!3139728 () Bool)

(assert (=> b!7910534 (=> res!3139728 e!4669607)))

(declare-fun ++!18210 (List!74489 List!74489) List!74489)

(assert (=> b!7910534 (= res!3139728 (not (= (++!18210 lt!2686924 (_2!38515 lt!2686919)) input!1480)))))

(declare-fun b!7910535 () Bool)

(declare-fun isDefined!14500 (Option!17942) Bool)

(assert (=> b!7910535 (= e!4669607 (isDefined!14500 lt!2686918))))

(declare-fun tp!2356470 () Bool)

(declare-fun b!7910536 () Bool)

(declare-fun inv!95412 (String!83322) Bool)

(declare-fun inv!95414 (TokenValueInjection!17268) Bool)

(assert (=> b!7910536 (= e!4669600 (and tp!2356470 (inv!95412 (tag!9528 rule!156)) (inv!95414 (transformation!8664 rule!156)) e!4669602))))

(declare-fun b!7910537 () Bool)

(declare-fun res!3139726 () Bool)

(assert (=> b!7910537 (=> (not res!3139726) (not e!4669604))))

(declare-fun ruleValid!3975 (LexerInterface!8256 Rule!17128) Bool)

(assert (=> b!7910537 (= res!3139726 (ruleValid!3975 thiss!15815 rule!156))))

(declare-fun b!7910538 () Bool)

(assert (=> b!7910538 (= e!4669606 (not e!4669605))))

(declare-fun res!3139729 () Bool)

(assert (=> b!7910538 (=> res!3139729 e!4669605)))

(declare-fun isEmpty!42699 (Option!17942) Bool)

(assert (=> b!7910538 (= res!3139729 (isEmpty!42699 lt!2686918))))

(declare-fun lt!2686917 () BalanceConc!30794)

(declare-fun apply!14373 (TokenValueInjection!17268 BalanceConc!30794) TokenValue!8980)

(declare-fun size!43138 (BalanceConc!30794) Int)

(assert (=> b!7910538 (= lt!2686918 (Some!17941 (tuple2!70425 (Token!15741 (apply!14373 (transformation!8664 rule!156) lt!2686917) rule!156 (size!43138 lt!2686917) (_1!38514 lt!2686922)) (_2!38514 lt!2686922))))))

(declare-datatypes ((Unit!169414 0))(
  ( (Unit!169415) )
))
(declare-fun lt!2686923 () Unit!169414)

(declare-fun lemmaSemiInverse!2684 (TokenValueInjection!17268 BalanceConc!30794) Unit!169414)

(assert (=> b!7910538 (= lt!2686923 (lemmaSemiInverse!2684 (transformation!8664 rule!156) lt!2686917))))

(declare-fun seqFromList!6191 (List!74489) BalanceConc!30794)

(assert (=> b!7910538 (= lt!2686917 (seqFromList!6191 (_1!38514 lt!2686922)))))

(assert (=> b!7910538 e!4669608))

(declare-fun res!3139730 () Bool)

(assert (=> b!7910538 (=> res!3139730 e!4669608)))

(assert (=> b!7910538 (= res!3139730 (isEmpty!42698 (_1!38514 lt!2686920)))))

(declare-fun findLongestMatchInner!2174 (Regex!21367 List!74489 Int List!74489 List!74489 Int) tuple2!70422)

(declare-fun size!43139 (List!74489) Int)

(assert (=> b!7910538 (= lt!2686920 (findLongestMatchInner!2174 (regex!8664 rule!156) Nil!74365 (size!43139 Nil!74365) input!1480 input!1480 (size!43139 input!1480)))))

(declare-fun lt!2686921 () Unit!169414)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2137 (Regex!21367 List!74489) Unit!169414)

(assert (=> b!7910538 (= lt!2686921 (longestMatchIsAcceptedByMatchOrIsEmpty!2137 (regex!8664 rule!156) input!1480))))

(assert (= (and start!746724 res!3139727) b!7910537))

(assert (= (and b!7910537 res!3139726) b!7910529))

(assert (= (and b!7910529 res!3139732) b!7910538))

(assert (= (and b!7910538 (not res!3139730)) b!7910531))

(assert (= (and b!7910538 (not res!3139729)) b!7910530))

(assert (= (and b!7910530 (not res!3139731)) b!7910534))

(assert (= (and b!7910534 (not res!3139728)) b!7910535))

(assert (= b!7910536 b!7910532))

(assert (= start!746724 b!7910536))

(assert (= (and start!746724 ((_ is Cons!74365) input!1480)) b!7910533))

(declare-fun m!8284096 () Bool)

(assert (=> b!7910531 m!8284096))

(declare-fun m!8284098 () Bool)

(assert (=> b!7910530 m!8284098))

(declare-fun m!8284100 () Bool)

(assert (=> b!7910530 m!8284100))

(assert (=> b!7910530 m!8284100))

(declare-fun m!8284102 () Bool)

(assert (=> b!7910530 m!8284102))

(declare-fun m!8284104 () Bool)

(assert (=> b!7910530 m!8284104))

(declare-fun m!8284106 () Bool)

(assert (=> b!7910529 m!8284106))

(declare-fun m!8284108 () Bool)

(assert (=> b!7910529 m!8284108))

(declare-fun m!8284110 () Bool)

(assert (=> b!7910537 m!8284110))

(declare-fun m!8284112 () Bool)

(assert (=> b!7910536 m!8284112))

(declare-fun m!8284114 () Bool)

(assert (=> b!7910536 m!8284114))

(declare-fun m!8284116 () Bool)

(assert (=> b!7910538 m!8284116))

(declare-fun m!8284118 () Bool)

(assert (=> b!7910538 m!8284118))

(declare-fun m!8284120 () Bool)

(assert (=> b!7910538 m!8284120))

(declare-fun m!8284122 () Bool)

(assert (=> b!7910538 m!8284122))

(declare-fun m!8284124 () Bool)

(assert (=> b!7910538 m!8284124))

(assert (=> b!7910538 m!8284116))

(declare-fun m!8284126 () Bool)

(assert (=> b!7910538 m!8284126))

(declare-fun m!8284128 () Bool)

(assert (=> b!7910538 m!8284128))

(declare-fun m!8284130 () Bool)

(assert (=> b!7910538 m!8284130))

(assert (=> b!7910538 m!8284126))

(declare-fun m!8284132 () Bool)

(assert (=> b!7910538 m!8284132))

(declare-fun m!8284134 () Bool)

(assert (=> b!7910538 m!8284134))

(declare-fun m!8284136 () Bool)

(assert (=> b!7910535 m!8284136))

(declare-fun m!8284138 () Bool)

(assert (=> b!7910534 m!8284138))

(check-sat (not b!7910531) b_and!353487 (not b_next!135991) (not b!7910530) (not b!7910536) (not b!7910529) (not b!7910538) (not b!7910534) tp_is_empty!53109 (not b!7910533) b_and!353489 (not b!7910537) (not b!7910535) (not b_next!135989))
(check-sat b_and!353487 b_and!353489 (not b_next!135989) (not b_next!135991))
(get-model)

(declare-fun d!2360112 () Bool)

(assert (=> d!2360112 (= (isDefined!14500 lt!2686918) (not (isEmpty!42699 lt!2686918)))))

(declare-fun bs!1968240 () Bool)

(assert (= bs!1968240 d!2360112))

(assert (=> bs!1968240 m!8284134))

(assert (=> b!7910535 d!2360112))

(declare-fun b!7910567 () Bool)

(declare-fun res!3139756 () Bool)

(declare-fun e!4669628 () Bool)

(assert (=> b!7910567 (=> (not res!3139756) (not e!4669628))))

(declare-fun call!733689 () Bool)

(assert (=> b!7910567 (= res!3139756 (not call!733689))))

(declare-fun b!7910568 () Bool)

(declare-fun res!3139762 () Bool)

(declare-fun e!4669624 () Bool)

(assert (=> b!7910568 (=> res!3139762 e!4669624)))

(assert (=> b!7910568 (= res!3139762 (not ((_ is ElementMatch!21367) (regex!8664 rule!156))))))

(declare-fun e!4669629 () Bool)

(assert (=> b!7910568 (= e!4669629 e!4669624)))

(declare-fun b!7910569 () Bool)

(declare-fun e!4669626 () Bool)

(assert (=> b!7910569 (= e!4669624 e!4669626)))

(declare-fun res!3139757 () Bool)

(assert (=> b!7910569 (=> (not res!3139757) (not e!4669626))))

(declare-fun lt!2686927 () Bool)

(assert (=> b!7910569 (= res!3139757 (not lt!2686927))))

(declare-fun b!7910570 () Bool)

(declare-fun e!4669625 () Bool)

(declare-fun head!16170 (List!74489) C!43064)

(assert (=> b!7910570 (= e!4669625 (not (= (head!16170 lt!2686924) (c!1451298 (regex!8664 rule!156)))))))

(declare-fun b!7910571 () Bool)

(declare-fun e!4669627 () Bool)

(declare-fun derivativeStep!6449 (Regex!21367 C!43064) Regex!21367)

(declare-fun tail!15713 (List!74489) List!74489)

(assert (=> b!7910571 (= e!4669627 (matchR!10688 (derivativeStep!6449 (regex!8664 rule!156) (head!16170 lt!2686924)) (tail!15713 lt!2686924)))))

(declare-fun b!7910572 () Bool)

(declare-fun res!3139760 () Bool)

(assert (=> b!7910572 (=> res!3139760 e!4669624)))

(assert (=> b!7910572 (= res!3139760 e!4669628)))

(declare-fun res!3139761 () Bool)

(assert (=> b!7910572 (=> (not res!3139761) (not e!4669628))))

(assert (=> b!7910572 (= res!3139761 lt!2686927)))

(declare-fun d!2360114 () Bool)

(declare-fun e!4669623 () Bool)

(assert (=> d!2360114 e!4669623))

(declare-fun c!1451306 () Bool)

(assert (=> d!2360114 (= c!1451306 ((_ is EmptyExpr!21367) (regex!8664 rule!156)))))

(assert (=> d!2360114 (= lt!2686927 e!4669627)))

(declare-fun c!1451307 () Bool)

(assert (=> d!2360114 (= c!1451307 (isEmpty!42698 lt!2686924))))

(declare-fun validRegex!11672 (Regex!21367) Bool)

(assert (=> d!2360114 (validRegex!11672 (regex!8664 rule!156))))

(assert (=> d!2360114 (= (matchR!10688 (regex!8664 rule!156) lt!2686924) lt!2686927)))

(declare-fun b!7910573 () Bool)

(declare-fun nullable!9507 (Regex!21367) Bool)

(assert (=> b!7910573 (= e!4669627 (nullable!9507 (regex!8664 rule!156)))))

(declare-fun b!7910574 () Bool)

(declare-fun res!3139758 () Bool)

(assert (=> b!7910574 (=> res!3139758 e!4669625)))

(assert (=> b!7910574 (= res!3139758 (not (isEmpty!42698 (tail!15713 lt!2686924))))))

(declare-fun b!7910575 () Bool)

(declare-fun res!3139759 () Bool)

(assert (=> b!7910575 (=> (not res!3139759) (not e!4669628))))

(assert (=> b!7910575 (= res!3139759 (isEmpty!42698 (tail!15713 lt!2686924)))))

(declare-fun b!7910576 () Bool)

(assert (=> b!7910576 (= e!4669626 e!4669625)))

(declare-fun res!3139755 () Bool)

(assert (=> b!7910576 (=> res!3139755 e!4669625)))

(assert (=> b!7910576 (= res!3139755 call!733689)))

(declare-fun b!7910577 () Bool)

(assert (=> b!7910577 (= e!4669623 e!4669629)))

(declare-fun c!1451305 () Bool)

(assert (=> b!7910577 (= c!1451305 ((_ is EmptyLang!21367) (regex!8664 rule!156)))))

(declare-fun b!7910578 () Bool)

(assert (=> b!7910578 (= e!4669628 (= (head!16170 lt!2686924) (c!1451298 (regex!8664 rule!156))))))

(declare-fun b!7910579 () Bool)

(assert (=> b!7910579 (= e!4669629 (not lt!2686927))))

(declare-fun b!7910580 () Bool)

(assert (=> b!7910580 (= e!4669623 (= lt!2686927 call!733689))))

(declare-fun bm!733684 () Bool)

(assert (=> bm!733684 (= call!733689 (isEmpty!42698 lt!2686924))))

(assert (= (and d!2360114 c!1451307) b!7910573))

(assert (= (and d!2360114 (not c!1451307)) b!7910571))

(assert (= (and d!2360114 c!1451306) b!7910580))

(assert (= (and d!2360114 (not c!1451306)) b!7910577))

(assert (= (and b!7910577 c!1451305) b!7910579))

(assert (= (and b!7910577 (not c!1451305)) b!7910568))

(assert (= (and b!7910568 (not res!3139762)) b!7910572))

(assert (= (and b!7910572 res!3139761) b!7910567))

(assert (= (and b!7910567 res!3139756) b!7910575))

(assert (= (and b!7910575 res!3139759) b!7910578))

(assert (= (and b!7910572 (not res!3139760)) b!7910569))

(assert (= (and b!7910569 res!3139757) b!7910576))

(assert (= (and b!7910576 (not res!3139755)) b!7910574))

(assert (= (and b!7910574 (not res!3139758)) b!7910570))

(assert (= (or b!7910580 b!7910567 b!7910576) bm!733684))

(declare-fun m!8284140 () Bool)

(assert (=> d!2360114 m!8284140))

(declare-fun m!8284142 () Bool)

(assert (=> d!2360114 m!8284142))

(declare-fun m!8284144 () Bool)

(assert (=> b!7910570 m!8284144))

(assert (=> b!7910571 m!8284144))

(assert (=> b!7910571 m!8284144))

(declare-fun m!8284146 () Bool)

(assert (=> b!7910571 m!8284146))

(declare-fun m!8284148 () Bool)

(assert (=> b!7910571 m!8284148))

(assert (=> b!7910571 m!8284146))

(assert (=> b!7910571 m!8284148))

(declare-fun m!8284150 () Bool)

(assert (=> b!7910571 m!8284150))

(assert (=> b!7910575 m!8284148))

(assert (=> b!7910575 m!8284148))

(declare-fun m!8284152 () Bool)

(assert (=> b!7910575 m!8284152))

(assert (=> b!7910578 m!8284144))

(assert (=> bm!733684 m!8284140))

(assert (=> b!7910574 m!8284148))

(assert (=> b!7910574 m!8284148))

(assert (=> b!7910574 m!8284152))

(declare-fun m!8284154 () Bool)

(assert (=> b!7910573 m!8284154))

(assert (=> b!7910530 d!2360114))

(declare-fun d!2360116 () Bool)

(declare-fun list!19313 (Conc!15838) List!74489)

(assert (=> d!2360116 (= (list!19312 (charsOf!5602 (_1!38515 lt!2686919))) (list!19313 (c!1451297 (charsOf!5602 (_1!38515 lt!2686919)))))))

(declare-fun bs!1968241 () Bool)

(assert (= bs!1968241 d!2360116))

(declare-fun m!8284156 () Bool)

(assert (=> bs!1968241 m!8284156))

(assert (=> b!7910530 d!2360116))

(declare-fun d!2360118 () Bool)

(declare-fun lt!2686930 () BalanceConc!30794)

(assert (=> d!2360118 (= (list!19312 lt!2686930) (originalCharacters!8901 (_1!38515 lt!2686919)))))

(declare-fun dynLambda!30138 (Int TokenValue!8980) BalanceConc!30794)

(assert (=> d!2360118 (= lt!2686930 (dynLambda!30138 (toChars!11580 (transformation!8664 (rule!11964 (_1!38515 lt!2686919)))) (value!288901 (_1!38515 lt!2686919))))))

(assert (=> d!2360118 (= (charsOf!5602 (_1!38515 lt!2686919)) lt!2686930)))

(declare-fun b_lambda!290011 () Bool)

(assert (=> (not b_lambda!290011) (not d!2360118)))

(declare-fun tb!263223 () Bool)

(declare-fun t!389877 () Bool)

(assert (=> (and b!7910532 (= (toChars!11580 (transformation!8664 rule!156)) (toChars!11580 (transformation!8664 (rule!11964 (_1!38515 lt!2686919))))) t!389877) tb!263223))

(declare-fun b!7910585 () Bool)

(declare-fun e!4669632 () Bool)

(declare-fun tp!2356475 () Bool)

(declare-fun inv!95415 (Conc!15838) Bool)

(assert (=> b!7910585 (= e!4669632 (and (inv!95415 (c!1451297 (dynLambda!30138 (toChars!11580 (transformation!8664 (rule!11964 (_1!38515 lt!2686919)))) (value!288901 (_1!38515 lt!2686919))))) tp!2356475))))

(declare-fun result!360534 () Bool)

(declare-fun inv!95416 (BalanceConc!30794) Bool)

(assert (=> tb!263223 (= result!360534 (and (inv!95416 (dynLambda!30138 (toChars!11580 (transformation!8664 (rule!11964 (_1!38515 lt!2686919)))) (value!288901 (_1!38515 lt!2686919)))) e!4669632))))

(assert (= tb!263223 b!7910585))

(declare-fun m!8284158 () Bool)

(assert (=> b!7910585 m!8284158))

(declare-fun m!8284160 () Bool)

(assert (=> tb!263223 m!8284160))

(assert (=> d!2360118 t!389877))

(declare-fun b_and!353491 () Bool)

(assert (= b_and!353489 (and (=> t!389877 result!360534) b_and!353491)))

(declare-fun m!8284162 () Bool)

(assert (=> d!2360118 m!8284162))

(declare-fun m!8284164 () Bool)

(assert (=> d!2360118 m!8284164))

(assert (=> b!7910530 d!2360118))

(declare-fun d!2360122 () Bool)

(assert (=> d!2360122 (= (get!26744 lt!2686918) (v!55098 lt!2686918))))

(assert (=> b!7910530 d!2360122))

(declare-fun d!2360124 () Bool)

(assert (=> d!2360124 (= (isEmpty!42698 (_1!38514 lt!2686922)) ((_ is Nil!74365) (_1!38514 lt!2686922)))))

(assert (=> b!7910529 d!2360124))

(declare-fun d!2360126 () Bool)

(declare-fun lt!2686957 () tuple2!70422)

(assert (=> d!2360126 (= (++!18210 (_1!38514 lt!2686957) (_2!38514 lt!2686957)) input!1480)))

(declare-fun sizeTr!460 (List!74489 Int) Int)

(assert (=> d!2360126 (= lt!2686957 (findLongestMatchInner!2174 (regex!8664 rule!156) Nil!74365 0 input!1480 input!1480 (sizeTr!460 input!1480 0)))))

(declare-fun lt!2686956 () Unit!169414)

(declare-fun lt!2686950 () Unit!169414)

(assert (=> d!2360126 (= lt!2686956 lt!2686950)))

(declare-fun lt!2686954 () List!74489)

(declare-fun lt!2686953 () Int)

(assert (=> d!2360126 (= (sizeTr!460 lt!2686954 lt!2686953) (+ (size!43139 lt!2686954) lt!2686953))))

(declare-fun lemmaSizeTrEqualsSize!459 (List!74489 Int) Unit!169414)

(assert (=> d!2360126 (= lt!2686950 (lemmaSizeTrEqualsSize!459 lt!2686954 lt!2686953))))

(assert (=> d!2360126 (= lt!2686953 0)))

(assert (=> d!2360126 (= lt!2686954 Nil!74365)))

(declare-fun lt!2686952 () Unit!169414)

(declare-fun lt!2686951 () Unit!169414)

(assert (=> d!2360126 (= lt!2686952 lt!2686951)))

(declare-fun lt!2686955 () Int)

(assert (=> d!2360126 (= (sizeTr!460 input!1480 lt!2686955) (+ (size!43139 input!1480) lt!2686955))))

(assert (=> d!2360126 (= lt!2686951 (lemmaSizeTrEqualsSize!459 input!1480 lt!2686955))))

(assert (=> d!2360126 (= lt!2686955 0)))

(assert (=> d!2360126 (validRegex!11672 (regex!8664 rule!156))))

(assert (=> d!2360126 (= (findLongestMatch!1957 (regex!8664 rule!156) input!1480) lt!2686957)))

(declare-fun bs!1968243 () Bool)

(assert (= bs!1968243 d!2360126))

(declare-fun m!8284180 () Bool)

(assert (=> bs!1968243 m!8284180))

(declare-fun m!8284182 () Bool)

(assert (=> bs!1968243 m!8284182))

(declare-fun m!8284184 () Bool)

(assert (=> bs!1968243 m!8284184))

(assert (=> bs!1968243 m!8284142))

(declare-fun m!8284186 () Bool)

(assert (=> bs!1968243 m!8284186))

(assert (=> bs!1968243 m!8284126))

(declare-fun m!8284188 () Bool)

(assert (=> bs!1968243 m!8284188))

(declare-fun m!8284190 () Bool)

(assert (=> bs!1968243 m!8284190))

(declare-fun m!8284192 () Bool)

(assert (=> bs!1968243 m!8284192))

(assert (=> bs!1968243 m!8284192))

(declare-fun m!8284194 () Bool)

(assert (=> bs!1968243 m!8284194))

(assert (=> b!7910529 d!2360126))

(declare-fun e!4669644 () Bool)

(declare-fun b!7910609 () Bool)

(declare-fun lt!2686960 () List!74489)

(assert (=> b!7910609 (= e!4669644 (or (not (= (_2!38515 lt!2686919) Nil!74365)) (= lt!2686960 lt!2686924)))))

(declare-fun b!7910607 () Bool)

(declare-fun e!4669643 () List!74489)

(assert (=> b!7910607 (= e!4669643 (Cons!74365 (h!80813 lt!2686924) (++!18210 (t!389874 lt!2686924) (_2!38515 lt!2686919))))))

(declare-fun d!2360132 () Bool)

(assert (=> d!2360132 e!4669644))

(declare-fun res!3139773 () Bool)

(assert (=> d!2360132 (=> (not res!3139773) (not e!4669644))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15746 (List!74489) (InoxSet C!43064))

(assert (=> d!2360132 (= res!3139773 (= (content!15746 lt!2686960) ((_ map or) (content!15746 lt!2686924) (content!15746 (_2!38515 lt!2686919)))))))

(assert (=> d!2360132 (= lt!2686960 e!4669643)))

(declare-fun c!1451313 () Bool)

(assert (=> d!2360132 (= c!1451313 ((_ is Nil!74365) lt!2686924))))

(assert (=> d!2360132 (= (++!18210 lt!2686924 (_2!38515 lt!2686919)) lt!2686960)))

(declare-fun b!7910606 () Bool)

(assert (=> b!7910606 (= e!4669643 (_2!38515 lt!2686919))))

(declare-fun b!7910608 () Bool)

(declare-fun res!3139774 () Bool)

(assert (=> b!7910608 (=> (not res!3139774) (not e!4669644))))

(assert (=> b!7910608 (= res!3139774 (= (size!43139 lt!2686960) (+ (size!43139 lt!2686924) (size!43139 (_2!38515 lt!2686919)))))))

(assert (= (and d!2360132 c!1451313) b!7910606))

(assert (= (and d!2360132 (not c!1451313)) b!7910607))

(assert (= (and d!2360132 res!3139773) b!7910608))

(assert (= (and b!7910608 res!3139774) b!7910609))

(declare-fun m!8284196 () Bool)

(assert (=> b!7910607 m!8284196))

(declare-fun m!8284198 () Bool)

(assert (=> d!2360132 m!8284198))

(declare-fun m!8284200 () Bool)

(assert (=> d!2360132 m!8284200))

(declare-fun m!8284202 () Bool)

(assert (=> d!2360132 m!8284202))

(declare-fun m!8284204 () Bool)

(assert (=> b!7910608 m!8284204))

(declare-fun m!8284206 () Bool)

(assert (=> b!7910608 m!8284206))

(declare-fun m!8284208 () Bool)

(assert (=> b!7910608 m!8284208))

(assert (=> b!7910534 d!2360132))

(declare-fun d!2360134 () Bool)

(declare-fun lt!2686963 () Int)

(assert (=> d!2360134 (>= lt!2686963 0)))

(declare-fun e!4669647 () Int)

(assert (=> d!2360134 (= lt!2686963 e!4669647)))

(declare-fun c!1451316 () Bool)

(assert (=> d!2360134 (= c!1451316 ((_ is Nil!74365) input!1480))))

(assert (=> d!2360134 (= (size!43139 input!1480) lt!2686963)))

(declare-fun b!7910614 () Bool)

(assert (=> b!7910614 (= e!4669647 0)))

(declare-fun b!7910615 () Bool)

(assert (=> b!7910615 (= e!4669647 (+ 1 (size!43139 (t!389874 input!1480))))))

(assert (= (and d!2360134 c!1451316) b!7910614))

(assert (= (and d!2360134 (not c!1451316)) b!7910615))

(declare-fun m!8284210 () Bool)

(assert (=> b!7910615 m!8284210))

(assert (=> b!7910538 d!2360134))

(declare-fun b!7910687 () Bool)

(declare-fun e!4669684 () Bool)

(assert (=> b!7910687 (= e!4669684 true)))

(declare-fun d!2360136 () Bool)

(assert (=> d!2360136 e!4669684))

(assert (= d!2360136 b!7910687))

(declare-fun order!29895 () Int)

(declare-fun lambda!472560 () Int)

(declare-fun order!29893 () Int)

(declare-fun dynLambda!30139 (Int Int) Int)

(declare-fun dynLambda!30140 (Int Int) Int)

(assert (=> b!7910687 (< (dynLambda!30139 order!29893 (toValue!11721 (transformation!8664 rule!156))) (dynLambda!30140 order!29895 lambda!472560))))

(declare-fun order!29897 () Int)

(declare-fun dynLambda!30141 (Int Int) Int)

(assert (=> b!7910687 (< (dynLambda!30141 order!29897 (toChars!11580 (transformation!8664 rule!156))) (dynLambda!30140 order!29895 lambda!472560))))

(declare-fun dynLambda!30142 (Int BalanceConc!30794) TokenValue!8980)

(assert (=> d!2360136 (= (list!19312 (dynLambda!30138 (toChars!11580 (transformation!8664 rule!156)) (dynLambda!30142 (toValue!11721 (transformation!8664 rule!156)) lt!2686917))) (list!19312 lt!2686917))))

(declare-fun lt!2687002 () Unit!169414)

(declare-fun ForallOf!1309 (Int BalanceConc!30794) Unit!169414)

(assert (=> d!2360136 (= lt!2687002 (ForallOf!1309 lambda!472560 lt!2686917))))

(assert (=> d!2360136 (= (lemmaSemiInverse!2684 (transformation!8664 rule!156) lt!2686917) lt!2687002)))

(declare-fun b_lambda!290015 () Bool)

(assert (=> (not b_lambda!290015) (not d!2360136)))

(declare-fun t!389881 () Bool)

(declare-fun tb!263227 () Bool)

(assert (=> (and b!7910532 (= (toChars!11580 (transformation!8664 rule!156)) (toChars!11580 (transformation!8664 rule!156))) t!389881) tb!263227))

(declare-fun tp!2356479 () Bool)

(declare-fun b!7910688 () Bool)

(declare-fun e!4669685 () Bool)

(assert (=> b!7910688 (= e!4669685 (and (inv!95415 (c!1451297 (dynLambda!30138 (toChars!11580 (transformation!8664 rule!156)) (dynLambda!30142 (toValue!11721 (transformation!8664 rule!156)) lt!2686917)))) tp!2356479))))

(declare-fun result!360542 () Bool)

(assert (=> tb!263227 (= result!360542 (and (inv!95416 (dynLambda!30138 (toChars!11580 (transformation!8664 rule!156)) (dynLambda!30142 (toValue!11721 (transformation!8664 rule!156)) lt!2686917))) e!4669685))))

(assert (= tb!263227 b!7910688))

(declare-fun m!8284266 () Bool)

(assert (=> b!7910688 m!8284266))

(declare-fun m!8284268 () Bool)

(assert (=> tb!263227 m!8284268))

(assert (=> d!2360136 t!389881))

(declare-fun b_and!353495 () Bool)

(assert (= b_and!353491 (and (=> t!389881 result!360542) b_and!353495)))

(declare-fun b_lambda!290017 () Bool)

(assert (=> (not b_lambda!290017) (not d!2360136)))

(declare-fun t!389883 () Bool)

(declare-fun tb!263229 () Bool)

(assert (=> (and b!7910532 (= (toValue!11721 (transformation!8664 rule!156)) (toValue!11721 (transformation!8664 rule!156))) t!389883) tb!263229))

(declare-fun result!360544 () Bool)

(declare-fun inv!21 (TokenValue!8980) Bool)

(assert (=> tb!263229 (= result!360544 (inv!21 (dynLambda!30142 (toValue!11721 (transformation!8664 rule!156)) lt!2686917)))))

(declare-fun m!8284270 () Bool)

(assert (=> tb!263229 m!8284270))

(assert (=> d!2360136 t!389883))

(declare-fun b_and!353497 () Bool)

(assert (= b_and!353487 (and (=> t!389883 result!360544) b_and!353497)))

(declare-fun m!8284272 () Bool)

(assert (=> d!2360136 m!8284272))

(assert (=> d!2360136 m!8284272))

(declare-fun m!8284274 () Bool)

(assert (=> d!2360136 m!8284274))

(declare-fun m!8284276 () Bool)

(assert (=> d!2360136 m!8284276))

(declare-fun m!8284278 () Bool)

(assert (=> d!2360136 m!8284278))

(assert (=> d!2360136 m!8284274))

(declare-fun m!8284280 () Bool)

(assert (=> d!2360136 m!8284280))

(assert (=> b!7910538 d!2360136))

(declare-fun d!2360154 () Bool)

(declare-fun lt!2687005 () Int)

(assert (=> d!2360154 (= lt!2687005 (size!43139 (list!19312 lt!2686917)))))

(declare-fun size!43140 (Conc!15838) Int)

(assert (=> d!2360154 (= lt!2687005 (size!43140 (c!1451297 lt!2686917)))))

(assert (=> d!2360154 (= (size!43138 lt!2686917) lt!2687005)))

(declare-fun bs!1968246 () Bool)

(assert (= bs!1968246 d!2360154))

(assert (=> bs!1968246 m!8284278))

(assert (=> bs!1968246 m!8284278))

(declare-fun m!8284282 () Bool)

(assert (=> bs!1968246 m!8284282))

(declare-fun m!8284284 () Bool)

(assert (=> bs!1968246 m!8284284))

(assert (=> b!7910538 d!2360154))

(declare-fun d!2360156 () Bool)

(declare-fun lt!2687006 () Int)

(assert (=> d!2360156 (>= lt!2687006 0)))

(declare-fun e!4669689 () Int)

(assert (=> d!2360156 (= lt!2687006 e!4669689)))

(declare-fun c!1451334 () Bool)

(assert (=> d!2360156 (= c!1451334 ((_ is Nil!74365) Nil!74365))))

(assert (=> d!2360156 (= (size!43139 Nil!74365) lt!2687006)))

(declare-fun b!7910691 () Bool)

(assert (=> b!7910691 (= e!4669689 0)))

(declare-fun b!7910692 () Bool)

(assert (=> b!7910692 (= e!4669689 (+ 1 (size!43139 (t!389874 Nil!74365))))))

(assert (= (and d!2360156 c!1451334) b!7910691))

(assert (= (and d!2360156 (not c!1451334)) b!7910692))

(declare-fun m!8284286 () Bool)

(assert (=> b!7910692 m!8284286))

(assert (=> b!7910538 d!2360156))

(declare-fun b!7910731 () Bool)

(declare-fun e!4669719 () Unit!169414)

(declare-fun Unit!169416 () Unit!169414)

(assert (=> b!7910731 (= e!4669719 Unit!169416)))

(declare-fun lt!2687070 () Unit!169414)

(declare-fun call!733710 () Unit!169414)

(assert (=> b!7910731 (= lt!2687070 call!733710)))

(declare-fun call!733711 () Bool)

(assert (=> b!7910731 call!733711))

(declare-fun lt!2687078 () Unit!169414)

(assert (=> b!7910731 (= lt!2687078 lt!2687070)))

(declare-fun lt!2687073 () Unit!169414)

(declare-fun call!733714 () Unit!169414)

(assert (=> b!7910731 (= lt!2687073 call!733714)))

(assert (=> b!7910731 (= input!1480 Nil!74365)))

(declare-fun lt!2687065 () Unit!169414)

(assert (=> b!7910731 (= lt!2687065 lt!2687073)))

(assert (=> b!7910731 false))

(declare-fun b!7910732 () Bool)

(declare-fun e!4669716 () tuple2!70422)

(assert (=> b!7910732 (= e!4669716 (tuple2!70423 Nil!74365 input!1480))))

(declare-fun b!7910733 () Bool)

(declare-fun e!4669720 () tuple2!70422)

(assert (=> b!7910733 (= e!4669720 (tuple2!70423 Nil!74365 Nil!74365))))

(declare-fun b!7910734 () Bool)

(declare-fun lt!2687088 () tuple2!70422)

(assert (=> b!7910734 (= e!4669716 lt!2687088)))

(declare-fun bm!733706 () Bool)

(declare-fun lemmaIsPrefixRefl!3990 (List!74489 List!74489) Unit!169414)

(assert (=> bm!733706 (= call!733710 (lemmaIsPrefixRefl!3990 input!1480 input!1480))))

(declare-fun call!733716 () List!74489)

(declare-fun bm!733707 () Bool)

(declare-fun call!733717 () Regex!21367)

(declare-fun lt!2687085 () List!74489)

(declare-fun call!733712 () tuple2!70422)

(assert (=> bm!733707 (= call!733712 (findLongestMatchInner!2174 call!733717 lt!2687085 (+ (size!43139 Nil!74365) 1) call!733716 input!1480 (size!43139 input!1480)))))

(declare-fun bm!733708 () Bool)

(declare-fun call!733713 () C!43064)

(assert (=> bm!733708 (= call!733713 (head!16170 input!1480))))

(declare-fun bm!733709 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1572 (List!74489 List!74489 List!74489) Unit!169414)

(assert (=> bm!733709 (= call!733714 (lemmaIsPrefixSameLengthThenSameList!1572 input!1480 Nil!74365 input!1480))))

(declare-fun bm!733710 () Bool)

(assert (=> bm!733710 (= call!733716 (tail!15713 input!1480))))

(declare-fun b!7910735 () Bool)

(declare-fun e!4669715 () tuple2!70422)

(assert (=> b!7910735 (= e!4669715 call!733712)))

(declare-fun bm!733711 () Bool)

(declare-fun call!733715 () Bool)

(assert (=> bm!733711 (= call!733715 (nullable!9507 (regex!8664 rule!156)))))

(declare-fun b!7910736 () Bool)

(assert (=> b!7910736 (= e!4669720 (tuple2!70423 Nil!74365 input!1480))))

(declare-fun bm!733705 () Bool)

(declare-fun isPrefix!6479 (List!74489 List!74489) Bool)

(assert (=> bm!733705 (= call!733711 (isPrefix!6479 input!1480 input!1480))))

(declare-fun d!2360158 () Bool)

(declare-fun e!4669718 () Bool)

(assert (=> d!2360158 e!4669718))

(declare-fun res!3139812 () Bool)

(assert (=> d!2360158 (=> (not res!3139812) (not e!4669718))))

(declare-fun lt!2687071 () tuple2!70422)

(assert (=> d!2360158 (= res!3139812 (= (++!18210 (_1!38514 lt!2687071) (_2!38514 lt!2687071)) input!1480))))

(declare-fun e!4669714 () tuple2!70422)

(assert (=> d!2360158 (= lt!2687071 e!4669714)))

(declare-fun c!1451352 () Bool)

(declare-fun lostCause!1924 (Regex!21367) Bool)

(assert (=> d!2360158 (= c!1451352 (lostCause!1924 (regex!8664 rule!156)))))

(declare-fun lt!2687079 () Unit!169414)

(declare-fun Unit!169417 () Unit!169414)

(assert (=> d!2360158 (= lt!2687079 Unit!169417)))

(declare-fun getSuffix!3692 (List!74489 List!74489) List!74489)

(assert (=> d!2360158 (= (getSuffix!3692 input!1480 Nil!74365) input!1480)))

(declare-fun lt!2687083 () Unit!169414)

(declare-fun lt!2687077 () Unit!169414)

(assert (=> d!2360158 (= lt!2687083 lt!2687077)))

(declare-fun lt!2687087 () List!74489)

(assert (=> d!2360158 (= input!1480 lt!2687087)))

(declare-fun lemmaSamePrefixThenSameSuffix!2940 (List!74489 List!74489 List!74489 List!74489 List!74489) Unit!169414)

(assert (=> d!2360158 (= lt!2687077 (lemmaSamePrefixThenSameSuffix!2940 Nil!74365 input!1480 Nil!74365 lt!2687087 input!1480))))

(assert (=> d!2360158 (= lt!2687087 (getSuffix!3692 input!1480 Nil!74365))))

(declare-fun lt!2687092 () Unit!169414)

(declare-fun lt!2687090 () Unit!169414)

(assert (=> d!2360158 (= lt!2687092 lt!2687090)))

(assert (=> d!2360158 (isPrefix!6479 Nil!74365 (++!18210 Nil!74365 input!1480))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3802 (List!74489 List!74489) Unit!169414)

(assert (=> d!2360158 (= lt!2687090 (lemmaConcatTwoListThenFirstIsPrefix!3802 Nil!74365 input!1480))))

(assert (=> d!2360158 (validRegex!11672 (regex!8664 rule!156))))

(assert (=> d!2360158 (= (findLongestMatchInner!2174 (regex!8664 rule!156) Nil!74365 (size!43139 Nil!74365) input!1480 input!1480 (size!43139 input!1480)) lt!2687071)))

(declare-fun b!7910737 () Bool)

(assert (=> b!7910737 (= e!4669714 (tuple2!70423 Nil!74365 input!1480))))

(declare-fun b!7910738 () Bool)

(declare-fun c!1451351 () Bool)

(assert (=> b!7910738 (= c!1451351 call!733715)))

(declare-fun lt!2687069 () Unit!169414)

(declare-fun lt!2687074 () Unit!169414)

(assert (=> b!7910738 (= lt!2687069 lt!2687074)))

(declare-fun lt!2687076 () C!43064)

(declare-fun lt!2687082 () List!74489)

(assert (=> b!7910738 (= (++!18210 (++!18210 Nil!74365 (Cons!74365 lt!2687076 Nil!74365)) lt!2687082) input!1480)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3479 (List!74489 C!43064 List!74489 List!74489) Unit!169414)

(assert (=> b!7910738 (= lt!2687074 (lemmaMoveElementToOtherListKeepsConcatEq!3479 Nil!74365 lt!2687076 lt!2687082 input!1480))))

(assert (=> b!7910738 (= lt!2687082 (tail!15713 input!1480))))

(assert (=> b!7910738 (= lt!2687076 (head!16170 input!1480))))

(declare-fun lt!2687080 () Unit!169414)

(declare-fun lt!2687067 () Unit!169414)

(assert (=> b!7910738 (= lt!2687080 lt!2687067)))

(assert (=> b!7910738 (isPrefix!6479 (++!18210 Nil!74365 (Cons!74365 (head!16170 (getSuffix!3692 input!1480 Nil!74365)) Nil!74365)) input!1480)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1257 (List!74489 List!74489) Unit!169414)

(assert (=> b!7910738 (= lt!2687067 (lemmaAddHeadSuffixToPrefixStillPrefix!1257 Nil!74365 input!1480))))

(declare-fun lt!2687066 () Unit!169414)

(declare-fun lt!2687075 () Unit!169414)

(assert (=> b!7910738 (= lt!2687066 lt!2687075)))

(assert (=> b!7910738 (= lt!2687075 (lemmaAddHeadSuffixToPrefixStillPrefix!1257 Nil!74365 input!1480))))

(assert (=> b!7910738 (= lt!2687085 (++!18210 Nil!74365 (Cons!74365 (head!16170 input!1480) Nil!74365)))))

(declare-fun lt!2687072 () Unit!169414)

(assert (=> b!7910738 (= lt!2687072 e!4669719)))

(declare-fun c!1451348 () Bool)

(assert (=> b!7910738 (= c!1451348 (= (size!43139 Nil!74365) (size!43139 input!1480)))))

(declare-fun lt!2687068 () Unit!169414)

(declare-fun lt!2687086 () Unit!169414)

(assert (=> b!7910738 (= lt!2687068 lt!2687086)))

(assert (=> b!7910738 (<= (size!43139 Nil!74365) (size!43139 input!1480))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1037 (List!74489 List!74489) Unit!169414)

(assert (=> b!7910738 (= lt!2687086 (lemmaIsPrefixThenSmallerEqSize!1037 Nil!74365 input!1480))))

(declare-fun e!4669717 () tuple2!70422)

(assert (=> b!7910738 (= e!4669717 e!4669715)))

(declare-fun b!7910739 () Bool)

(declare-fun e!4669721 () Bool)

(assert (=> b!7910739 (= e!4669721 (>= (size!43139 (_1!38514 lt!2687071)) (size!43139 Nil!74365)))))

(declare-fun b!7910740 () Bool)

(assert (=> b!7910740 (= e!4669714 e!4669717)))

(declare-fun c!1451353 () Bool)

(assert (=> b!7910740 (= c!1451353 (= (size!43139 Nil!74365) (size!43139 input!1480)))))

(declare-fun bm!733712 () Bool)

(assert (=> bm!733712 (= call!733717 (derivativeStep!6449 (regex!8664 rule!156) call!733713))))

(declare-fun b!7910741 () Bool)

(declare-fun Unit!169418 () Unit!169414)

(assert (=> b!7910741 (= e!4669719 Unit!169418)))

(declare-fun b!7910742 () Bool)

(assert (=> b!7910742 (= e!4669715 e!4669716)))

(assert (=> b!7910742 (= lt!2687088 call!733712)))

(declare-fun c!1451350 () Bool)

(assert (=> b!7910742 (= c!1451350 (isEmpty!42698 (_1!38514 lt!2687088)))))

(declare-fun b!7910743 () Bool)

(declare-fun c!1451349 () Bool)

(assert (=> b!7910743 (= c!1451349 call!733715)))

(declare-fun lt!2687091 () Unit!169414)

(declare-fun lt!2687084 () Unit!169414)

(assert (=> b!7910743 (= lt!2687091 lt!2687084)))

(assert (=> b!7910743 (= input!1480 Nil!74365)))

(assert (=> b!7910743 (= lt!2687084 call!733714)))

(declare-fun lt!2687081 () Unit!169414)

(declare-fun lt!2687089 () Unit!169414)

(assert (=> b!7910743 (= lt!2687081 lt!2687089)))

(assert (=> b!7910743 call!733711))

(assert (=> b!7910743 (= lt!2687089 call!733710)))

(assert (=> b!7910743 (= e!4669717 e!4669720)))

(declare-fun b!7910744 () Bool)

(assert (=> b!7910744 (= e!4669718 e!4669721)))

(declare-fun res!3139811 () Bool)

(assert (=> b!7910744 (=> res!3139811 e!4669721)))

(assert (=> b!7910744 (= res!3139811 (isEmpty!42698 (_1!38514 lt!2687071)))))

(assert (= (and d!2360158 c!1451352) b!7910737))

(assert (= (and d!2360158 (not c!1451352)) b!7910740))

(assert (= (and b!7910740 c!1451353) b!7910743))

(assert (= (and b!7910740 (not c!1451353)) b!7910738))

(assert (= (and b!7910743 c!1451349) b!7910733))

(assert (= (and b!7910743 (not c!1451349)) b!7910736))

(assert (= (and b!7910738 c!1451348) b!7910731))

(assert (= (and b!7910738 (not c!1451348)) b!7910741))

(assert (= (and b!7910738 c!1451351) b!7910742))

(assert (= (and b!7910738 (not c!1451351)) b!7910735))

(assert (= (and b!7910742 c!1451350) b!7910732))

(assert (= (and b!7910742 (not c!1451350)) b!7910734))

(assert (= (or b!7910742 b!7910735) bm!733708))

(assert (= (or b!7910742 b!7910735) bm!733710))

(assert (= (or b!7910742 b!7910735) bm!733712))

(assert (= (or b!7910742 b!7910735) bm!733707))

(assert (= (or b!7910743 b!7910738) bm!733711))

(assert (= (or b!7910743 b!7910731) bm!733705))

(assert (= (or b!7910743 b!7910731) bm!733706))

(assert (= (or b!7910743 b!7910731) bm!733709))

(assert (= (and d!2360158 res!3139812) b!7910744))

(assert (= (and b!7910744 (not res!3139811)) b!7910739))

(declare-fun m!8284306 () Bool)

(assert (=> b!7910738 m!8284306))

(declare-fun m!8284308 () Bool)

(assert (=> b!7910738 m!8284308))

(declare-fun m!8284310 () Bool)

(assert (=> b!7910738 m!8284310))

(declare-fun m!8284312 () Bool)

(assert (=> b!7910738 m!8284312))

(declare-fun m!8284314 () Bool)

(assert (=> b!7910738 m!8284314))

(declare-fun m!8284316 () Bool)

(assert (=> b!7910738 m!8284316))

(declare-fun m!8284318 () Bool)

(assert (=> b!7910738 m!8284318))

(declare-fun m!8284320 () Bool)

(assert (=> b!7910738 m!8284320))

(assert (=> b!7910738 m!8284116))

(assert (=> b!7910738 m!8284310))

(assert (=> b!7910738 m!8284126))

(assert (=> b!7910738 m!8284308))

(declare-fun m!8284322 () Bool)

(assert (=> b!7910738 m!8284322))

(assert (=> b!7910738 m!8284318))

(declare-fun m!8284324 () Bool)

(assert (=> b!7910738 m!8284324))

(declare-fun m!8284326 () Bool)

(assert (=> b!7910738 m!8284326))

(declare-fun m!8284328 () Bool)

(assert (=> b!7910738 m!8284328))

(declare-fun m!8284330 () Bool)

(assert (=> b!7910744 m!8284330))

(assert (=> bm!733710 m!8284306))

(declare-fun m!8284332 () Bool)

(assert (=> bm!733706 m!8284332))

(declare-fun m!8284334 () Bool)

(assert (=> bm!733705 m!8284334))

(assert (=> bm!733708 m!8284326))

(declare-fun m!8284336 () Bool)

(assert (=> b!7910742 m!8284336))

(declare-fun m!8284338 () Bool)

(assert (=> b!7910739 m!8284338))

(assert (=> b!7910739 m!8284116))

(declare-fun m!8284340 () Bool)

(assert (=> d!2360158 m!8284340))

(declare-fun m!8284342 () Bool)

(assert (=> d!2360158 m!8284342))

(declare-fun m!8284344 () Bool)

(assert (=> d!2360158 m!8284344))

(assert (=> d!2360158 m!8284142))

(assert (=> d!2360158 m!8284310))

(declare-fun m!8284346 () Bool)

(assert (=> d!2360158 m!8284346))

(assert (=> d!2360158 m!8284342))

(declare-fun m!8284348 () Bool)

(assert (=> d!2360158 m!8284348))

(declare-fun m!8284350 () Bool)

(assert (=> d!2360158 m!8284350))

(declare-fun m!8284352 () Bool)

(assert (=> bm!733712 m!8284352))

(assert (=> bm!733711 m!8284154))

(declare-fun m!8284354 () Bool)

(assert (=> bm!733709 m!8284354))

(assert (=> bm!733707 m!8284126))

(declare-fun m!8284356 () Bool)

(assert (=> bm!733707 m!8284356))

(assert (=> b!7910538 d!2360158))

(declare-fun d!2360164 () Bool)

(assert (=> d!2360164 (= (isEmpty!42699 lt!2686918) (not ((_ is Some!17941) lt!2686918)))))

(assert (=> b!7910538 d!2360164))

(declare-fun d!2360166 () Bool)

(declare-fun fromListB!2796 (List!74489) BalanceConc!30794)

(assert (=> d!2360166 (= (seqFromList!6191 (_1!38514 lt!2686922)) (fromListB!2796 (_1!38514 lt!2686922)))))

(declare-fun bs!1968247 () Bool)

(assert (= bs!1968247 d!2360166))

(declare-fun m!8284358 () Bool)

(assert (=> bs!1968247 m!8284358))

(assert (=> b!7910538 d!2360166))

(declare-fun d!2360168 () Bool)

(declare-fun e!4669726 () Bool)

(assert (=> d!2360168 e!4669726))

(declare-fun res!3139815 () Bool)

(assert (=> d!2360168 (=> res!3139815 e!4669726)))

(assert (=> d!2360168 (= res!3139815 (isEmpty!42698 (_1!38514 (findLongestMatchInner!2174 (regex!8664 rule!156) Nil!74365 (size!43139 Nil!74365) input!1480 input!1480 (size!43139 input!1480)))))))

(declare-fun lt!2687109 () Unit!169414)

(declare-fun choose!59743 (Regex!21367 List!74489) Unit!169414)

(assert (=> d!2360168 (= lt!2687109 (choose!59743 (regex!8664 rule!156) input!1480))))

(assert (=> d!2360168 (validRegex!11672 (regex!8664 rule!156))))

(assert (=> d!2360168 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2137 (regex!8664 rule!156) input!1480) lt!2687109)))

(declare-fun b!7910751 () Bool)

(assert (=> b!7910751 (= e!4669726 (matchR!10688 (regex!8664 rule!156) (_1!38514 (findLongestMatchInner!2174 (regex!8664 rule!156) Nil!74365 (size!43139 Nil!74365) input!1480 input!1480 (size!43139 input!1480)))))))

(assert (= (and d!2360168 (not res!3139815)) b!7910751))

(assert (=> d!2360168 m!8284142))

(assert (=> d!2360168 m!8284116))

(assert (=> d!2360168 m!8284126))

(assert (=> d!2360168 m!8284116))

(assert (=> d!2360168 m!8284126))

(assert (=> d!2360168 m!8284128))

(declare-fun m!8284360 () Bool)

(assert (=> d!2360168 m!8284360))

(declare-fun m!8284362 () Bool)

(assert (=> d!2360168 m!8284362))

(assert (=> b!7910751 m!8284116))

(assert (=> b!7910751 m!8284126))

(assert (=> b!7910751 m!8284116))

(assert (=> b!7910751 m!8284126))

(assert (=> b!7910751 m!8284128))

(declare-fun m!8284364 () Bool)

(assert (=> b!7910751 m!8284364))

(assert (=> b!7910538 d!2360168))

(declare-fun d!2360170 () Bool)

(assert (=> d!2360170 (= (isEmpty!42698 (_1!38514 lt!2686920)) ((_ is Nil!74365) (_1!38514 lt!2686920)))))

(assert (=> b!7910538 d!2360170))

(declare-fun d!2360172 () Bool)

(assert (=> d!2360172 (= (apply!14373 (transformation!8664 rule!156) lt!2686917) (dynLambda!30142 (toValue!11721 (transformation!8664 rule!156)) lt!2686917))))

(declare-fun b_lambda!290023 () Bool)

(assert (=> (not b_lambda!290023) (not d!2360172)))

(assert (=> d!2360172 t!389883))

(declare-fun b_and!353503 () Bool)

(assert (= b_and!353497 (and (=> t!389883 result!360544) b_and!353503)))

(assert (=> d!2360172 m!8284272))

(assert (=> b!7910538 d!2360172))

(declare-fun b!7910772 () Bool)

(declare-fun res!3139817 () Bool)

(declare-fun e!4669742 () Bool)

(assert (=> b!7910772 (=> (not res!3139817) (not e!4669742))))

(declare-fun call!733718 () Bool)

(assert (=> b!7910772 (= res!3139817 (not call!733718))))

(declare-fun b!7910773 () Bool)

(declare-fun res!3139823 () Bool)

(declare-fun e!4669738 () Bool)

(assert (=> b!7910773 (=> res!3139823 e!4669738)))

(assert (=> b!7910773 (= res!3139823 (not ((_ is ElementMatch!21367) (regex!8664 rule!156))))))

(declare-fun e!4669743 () Bool)

(assert (=> b!7910773 (= e!4669743 e!4669738)))

(declare-fun b!7910774 () Bool)

(declare-fun e!4669740 () Bool)

(assert (=> b!7910774 (= e!4669738 e!4669740)))

(declare-fun res!3139818 () Bool)

(assert (=> b!7910774 (=> (not res!3139818) (not e!4669740))))

(declare-fun lt!2687152 () Bool)

(assert (=> b!7910774 (= res!3139818 (not lt!2687152))))

(declare-fun b!7910775 () Bool)

(declare-fun e!4669739 () Bool)

(assert (=> b!7910775 (= e!4669739 (not (= (head!16170 (_1!38514 lt!2686920)) (c!1451298 (regex!8664 rule!156)))))))

(declare-fun b!7910776 () Bool)

(declare-fun e!4669741 () Bool)

(assert (=> b!7910776 (= e!4669741 (matchR!10688 (derivativeStep!6449 (regex!8664 rule!156) (head!16170 (_1!38514 lt!2686920))) (tail!15713 (_1!38514 lt!2686920))))))

(declare-fun b!7910777 () Bool)

(declare-fun res!3139821 () Bool)

(assert (=> b!7910777 (=> res!3139821 e!4669738)))

(assert (=> b!7910777 (= res!3139821 e!4669742)))

(declare-fun res!3139822 () Bool)

(assert (=> b!7910777 (=> (not res!3139822) (not e!4669742))))

(assert (=> b!7910777 (= res!3139822 lt!2687152)))

(declare-fun d!2360174 () Bool)

(declare-fun e!4669737 () Bool)

(assert (=> d!2360174 e!4669737))

(declare-fun c!1451367 () Bool)

(assert (=> d!2360174 (= c!1451367 ((_ is EmptyExpr!21367) (regex!8664 rule!156)))))

(assert (=> d!2360174 (= lt!2687152 e!4669741)))

(declare-fun c!1451368 () Bool)

(assert (=> d!2360174 (= c!1451368 (isEmpty!42698 (_1!38514 lt!2686920)))))

(assert (=> d!2360174 (validRegex!11672 (regex!8664 rule!156))))

(assert (=> d!2360174 (= (matchR!10688 (regex!8664 rule!156) (_1!38514 lt!2686920)) lt!2687152)))

(declare-fun b!7910778 () Bool)

(assert (=> b!7910778 (= e!4669741 (nullable!9507 (regex!8664 rule!156)))))

(declare-fun b!7910779 () Bool)

(declare-fun res!3139819 () Bool)

(assert (=> b!7910779 (=> res!3139819 e!4669739)))

(assert (=> b!7910779 (= res!3139819 (not (isEmpty!42698 (tail!15713 (_1!38514 lt!2686920)))))))

(declare-fun b!7910780 () Bool)

(declare-fun res!3139820 () Bool)

(assert (=> b!7910780 (=> (not res!3139820) (not e!4669742))))

(assert (=> b!7910780 (= res!3139820 (isEmpty!42698 (tail!15713 (_1!38514 lt!2686920))))))

(declare-fun b!7910781 () Bool)

(assert (=> b!7910781 (= e!4669740 e!4669739)))

(declare-fun res!3139816 () Bool)

(assert (=> b!7910781 (=> res!3139816 e!4669739)))

(assert (=> b!7910781 (= res!3139816 call!733718)))

(declare-fun b!7910782 () Bool)

(assert (=> b!7910782 (= e!4669737 e!4669743)))

(declare-fun c!1451366 () Bool)

(assert (=> b!7910782 (= c!1451366 ((_ is EmptyLang!21367) (regex!8664 rule!156)))))

(declare-fun b!7910783 () Bool)

(assert (=> b!7910783 (= e!4669742 (= (head!16170 (_1!38514 lt!2686920)) (c!1451298 (regex!8664 rule!156))))))

(declare-fun b!7910784 () Bool)

(assert (=> b!7910784 (= e!4669743 (not lt!2687152))))

(declare-fun b!7910785 () Bool)

(assert (=> b!7910785 (= e!4669737 (= lt!2687152 call!733718))))

(declare-fun bm!733713 () Bool)

(assert (=> bm!733713 (= call!733718 (isEmpty!42698 (_1!38514 lt!2686920)))))

(assert (= (and d!2360174 c!1451368) b!7910778))

(assert (= (and d!2360174 (not c!1451368)) b!7910776))

(assert (= (and d!2360174 c!1451367) b!7910785))

(assert (= (and d!2360174 (not c!1451367)) b!7910782))

(assert (= (and b!7910782 c!1451366) b!7910784))

(assert (= (and b!7910782 (not c!1451366)) b!7910773))

(assert (= (and b!7910773 (not res!3139823)) b!7910777))

(assert (= (and b!7910777 res!3139822) b!7910772))

(assert (= (and b!7910772 res!3139817) b!7910780))

(assert (= (and b!7910780 res!3139820) b!7910783))

(assert (= (and b!7910777 (not res!3139821)) b!7910774))

(assert (= (and b!7910774 res!3139818) b!7910781))

(assert (= (and b!7910781 (not res!3139816)) b!7910779))

(assert (= (and b!7910779 (not res!3139819)) b!7910775))

(assert (= (or b!7910785 b!7910772 b!7910781) bm!733713))

(assert (=> d!2360174 m!8284130))

(assert (=> d!2360174 m!8284142))

(declare-fun m!8284366 () Bool)

(assert (=> b!7910775 m!8284366))

(assert (=> b!7910776 m!8284366))

(assert (=> b!7910776 m!8284366))

(declare-fun m!8284368 () Bool)

(assert (=> b!7910776 m!8284368))

(declare-fun m!8284370 () Bool)

(assert (=> b!7910776 m!8284370))

(assert (=> b!7910776 m!8284368))

(assert (=> b!7910776 m!8284370))

(declare-fun m!8284372 () Bool)

(assert (=> b!7910776 m!8284372))

(assert (=> b!7910780 m!8284370))

(assert (=> b!7910780 m!8284370))

(declare-fun m!8284374 () Bool)

(assert (=> b!7910780 m!8284374))

(assert (=> b!7910783 m!8284366))

(assert (=> bm!733713 m!8284130))

(assert (=> b!7910779 m!8284370))

(assert (=> b!7910779 m!8284370))

(assert (=> b!7910779 m!8284374))

(assert (=> b!7910778 m!8284154))

(assert (=> b!7910531 d!2360174))

(declare-fun d!2360176 () Bool)

(assert (=> d!2360176 (= (inv!95412 (tag!9528 rule!156)) (= (mod (str.len (value!288900 (tag!9528 rule!156))) 2) 0))))

(assert (=> b!7910536 d!2360176))

(declare-fun d!2360178 () Bool)

(declare-fun res!3139830 () Bool)

(declare-fun e!4669750 () Bool)

(assert (=> d!2360178 (=> (not res!3139830) (not e!4669750))))

(declare-fun semiInverseModEq!3838 (Int Int) Bool)

(assert (=> d!2360178 (= res!3139830 (semiInverseModEq!3838 (toChars!11580 (transformation!8664 rule!156)) (toValue!11721 (transformation!8664 rule!156))))))

(assert (=> d!2360178 (= (inv!95414 (transformation!8664 rule!156)) e!4669750)))

(declare-fun b!7910792 () Bool)

(declare-fun equivClasses!3653 (Int Int) Bool)

(assert (=> b!7910792 (= e!4669750 (equivClasses!3653 (toChars!11580 (transformation!8664 rule!156)) (toValue!11721 (transformation!8664 rule!156))))))

(assert (= (and d!2360178 res!3139830) b!7910792))

(declare-fun m!8284376 () Bool)

(assert (=> d!2360178 m!8284376))

(declare-fun m!8284378 () Bool)

(assert (=> b!7910792 m!8284378))

(assert (=> b!7910536 d!2360178))

(declare-fun d!2360180 () Bool)

(declare-fun res!3139835 () Bool)

(declare-fun e!4669753 () Bool)

(assert (=> d!2360180 (=> (not res!3139835) (not e!4669753))))

(assert (=> d!2360180 (= res!3139835 (validRegex!11672 (regex!8664 rule!156)))))

(assert (=> d!2360180 (= (ruleValid!3975 thiss!15815 rule!156) e!4669753)))

(declare-fun b!7910797 () Bool)

(declare-fun res!3139836 () Bool)

(assert (=> b!7910797 (=> (not res!3139836) (not e!4669753))))

(assert (=> b!7910797 (= res!3139836 (not (nullable!9507 (regex!8664 rule!156))))))

(declare-fun b!7910798 () Bool)

(assert (=> b!7910798 (= e!4669753 (not (= (tag!9528 rule!156) (String!83323 ""))))))

(assert (= (and d!2360180 res!3139835) b!7910797))

(assert (= (and b!7910797 res!3139836) b!7910798))

(assert (=> d!2360180 m!8284142))

(assert (=> b!7910797 m!8284154))

(assert (=> b!7910537 d!2360180))

(declare-fun b!7910803 () Bool)

(declare-fun e!4669756 () Bool)

(declare-fun tp!2356483 () Bool)

(assert (=> b!7910803 (= e!4669756 (and tp_is_empty!53109 tp!2356483))))

(assert (=> b!7910533 (= tp!2356472 e!4669756)))

(assert (= (and b!7910533 ((_ is Cons!74365) (t!389874 input!1480))) b!7910803))

(declare-fun e!4669759 () Bool)

(assert (=> b!7910536 (= tp!2356470 e!4669759)))

(declare-fun b!7910814 () Bool)

(assert (=> b!7910814 (= e!4669759 tp_is_empty!53109)))

(declare-fun b!7910817 () Bool)

(declare-fun tp!2356494 () Bool)

(declare-fun tp!2356495 () Bool)

(assert (=> b!7910817 (= e!4669759 (and tp!2356494 tp!2356495))))

(declare-fun b!7910815 () Bool)

(declare-fun tp!2356497 () Bool)

(declare-fun tp!2356496 () Bool)

(assert (=> b!7910815 (= e!4669759 (and tp!2356497 tp!2356496))))

(declare-fun b!7910816 () Bool)

(declare-fun tp!2356498 () Bool)

(assert (=> b!7910816 (= e!4669759 tp!2356498)))

(assert (= (and b!7910536 ((_ is ElementMatch!21367) (regex!8664 rule!156))) b!7910814))

(assert (= (and b!7910536 ((_ is Concat!30348) (regex!8664 rule!156))) b!7910815))

(assert (= (and b!7910536 ((_ is Star!21367) (regex!8664 rule!156))) b!7910816))

(assert (= (and b!7910536 ((_ is Union!21367) (regex!8664 rule!156))) b!7910817))

(declare-fun b_lambda!290025 () Bool)

(assert (= b_lambda!290015 (or (and b!7910532 b_free!135201) b_lambda!290025)))

(declare-fun b_lambda!290027 () Bool)

(assert (= b_lambda!290023 (or (and b!7910532 b_free!135199) b_lambda!290027)))

(declare-fun b_lambda!290029 () Bool)

(assert (= b_lambda!290017 (or (and b!7910532 b_free!135199) b_lambda!290029)))

(check-sat (not b_lambda!290025) (not b_next!135991) (not b_lambda!290011) tp_is_empty!53109 (not d!2360158) (not d!2360118) (not b!7910688) (not bm!733705) (not tb!263223) (not d!2360114) (not bm!733712) (not b!7910751) (not b!7910776) (not tb!263229) b_and!353495 (not d!2360116) (not bm!733706) (not b!7910815) (not b!7910779) (not bm!733707) (not d!2360112) (not bm!733713) (not d!2360126) (not b!7910803) (not b!7910739) (not tb!263227) (not b!7910775) (not b!7910817) (not b!7910585) (not b!7910571) (not b!7910783) (not b!7910778) (not bm!733711) (not b!7910607) (not bm!733710) (not b!7910692) (not d!2360174) (not d!2360168) (not b!7910738) (not b!7910816) (not b!7910792) (not b!7910574) (not b_lambda!290029) (not d!2360180) (not bm!733684) (not d!2360132) (not b!7910742) (not b!7910573) (not bm!733708) (not d!2360166) (not b!7910744) (not b!7910575) (not b_lambda!290027) (not b!7910570) (not b!7910608) (not b_next!135989) (not d!2360136) (not b!7910615) (not d!2360178) (not b!7910578) (not b!7910797) (not bm!733709) (not d!2360154) b_and!353503 (not b!7910780))
(check-sat b_and!353503 b_and!353495 (not b_next!135989) (not b_next!135991))
