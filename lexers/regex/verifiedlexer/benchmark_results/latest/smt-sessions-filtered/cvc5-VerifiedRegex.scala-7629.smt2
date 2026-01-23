; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!402948 () Bool)

(assert start!402948)

(declare-fun b!4216094 () Bool)

(declare-fun b_free!123659 () Bool)

(declare-fun b_next!124363 () Bool)

(assert (=> b!4216094 (= b_free!123659 (not b_next!124363))))

(declare-fun tp!1289680 () Bool)

(declare-fun b_and!332157 () Bool)

(assert (=> b!4216094 (= tp!1289680 b_and!332157)))

(declare-fun b_free!123661 () Bool)

(declare-fun b_next!124365 () Bool)

(assert (=> b!4216094 (= b_free!123661 (not b_next!124365))))

(declare-fun tp!1289668 () Bool)

(declare-fun b_and!332159 () Bool)

(assert (=> b!4216094 (= tp!1289668 b_and!332159)))

(declare-fun b!4216093 () Bool)

(declare-fun b_free!123663 () Bool)

(declare-fun b_next!124367 () Bool)

(assert (=> b!4216093 (= b_free!123663 (not b_next!124367))))

(declare-fun tp!1289675 () Bool)

(declare-fun b_and!332161 () Bool)

(assert (=> b!4216093 (= tp!1289675 b_and!332161)))

(declare-fun b_free!123665 () Bool)

(declare-fun b_next!124369 () Bool)

(assert (=> b!4216093 (= b_free!123665 (not b_next!124369))))

(declare-fun tp!1289671 () Bool)

(declare-fun b_and!332163 () Bool)

(assert (=> b!4216093 (= tp!1289671 b_and!332163)))

(declare-fun b!4216082 () Bool)

(declare-fun b_free!123667 () Bool)

(declare-fun b_next!124371 () Bool)

(assert (=> b!4216082 (= b_free!123667 (not b_next!124371))))

(declare-fun tp!1289677 () Bool)

(declare-fun b_and!332165 () Bool)

(assert (=> b!4216082 (= tp!1289677 b_and!332165)))

(declare-fun b_free!123669 () Bool)

(declare-fun b_next!124373 () Bool)

(assert (=> b!4216082 (= b_free!123669 (not b_next!124373))))

(declare-fun tp!1289681 () Bool)

(declare-fun b_and!332167 () Bool)

(assert (=> b!4216082 (= tp!1289681 b_and!332167)))

(declare-fun b!4216091 () Bool)

(declare-fun b_free!123671 () Bool)

(declare-fun b_next!124375 () Bool)

(assert (=> b!4216091 (= b_free!123671 (not b_next!124375))))

(declare-fun tp!1289679 () Bool)

(declare-fun b_and!332169 () Bool)

(assert (=> b!4216091 (= tp!1289679 b_and!332169)))

(declare-fun b_free!123673 () Bool)

(declare-fun b_next!124377 () Bool)

(assert (=> b!4216091 (= b_free!123673 (not b_next!124377))))

(declare-fun tp!1289682 () Bool)

(declare-fun b_and!332171 () Bool)

(assert (=> b!4216091 (= tp!1289682 b_and!332171)))

(declare-fun b!4216081 () Bool)

(declare-fun res!1732553 () Bool)

(declare-fun e!2617429 () Bool)

(assert (=> b!4216081 (=> res!1732553 e!2617429)))

(declare-datatypes ((List!46500 0))(
  ( (Nil!46376) (Cons!46376 (h!51796 (_ BitVec 16)) (t!348399 List!46500)) )
))
(declare-datatypes ((TokenValue!8001 0))(
  ( (FloatLiteralValue!16002 (text!56452 List!46500)) (TokenValueExt!8000 (__x!28225 Int)) (Broken!40005 (value!241978 List!46500)) (Object!8124) (End!8001) (Def!8001) (Underscore!8001) (Match!8001) (Else!8001) (Error!8001) (Case!8001) (If!8001) (Extends!8001) (Abstract!8001) (Class!8001) (Val!8001) (DelimiterValue!16002 (del!8061 List!46500)) (KeywordValue!8007 (value!241979 List!46500)) (CommentValue!16002 (value!241980 List!46500)) (WhitespaceValue!16002 (value!241981 List!46500)) (IndentationValue!8001 (value!241982 List!46500)) (String!53876) (Int32!8001) (Broken!40006 (value!241983 List!46500)) (Boolean!8002) (Unit!65517) (OperatorValue!8004 (op!8061 List!46500)) (IdentifierValue!16002 (value!241984 List!46500)) (IdentifierValue!16003 (value!241985 List!46500)) (WhitespaceValue!16003 (value!241986 List!46500)) (True!16002) (False!16002) (Broken!40007 (value!241987 List!46500)) (Broken!40008 (value!241988 List!46500)) (True!16003) (RightBrace!8001) (RightBracket!8001) (Colon!8001) (Null!8001) (Comma!8001) (LeftBracket!8001) (False!16003) (LeftBrace!8001) (ImaginaryLiteralValue!8001 (text!56453 List!46500)) (StringLiteralValue!24003 (value!241989 List!46500)) (EOFValue!8001 (value!241990 List!46500)) (IdentValue!8001 (value!241991 List!46500)) (DelimiterValue!16003 (value!241992 List!46500)) (DedentValue!8001 (value!241993 List!46500)) (NewLineValue!8001 (value!241994 List!46500)) (IntegerValue!24003 (value!241995 (_ BitVec 32)) (text!56454 List!46500)) (IntegerValue!24004 (value!241996 Int) (text!56455 List!46500)) (Times!8001) (Or!8001) (Equal!8001) (Minus!8001) (Broken!40009 (value!241997 List!46500)) (And!8001) (Div!8001) (LessEqual!8001) (Mod!8001) (Concat!20677) (Not!8001) (Plus!8001) (SpaceValue!8001 (value!241998 List!46500)) (IntegerValue!24005 (value!241999 Int) (text!56456 List!46500)) (StringLiteralValue!24004 (text!56457 List!46500)) (FloatLiteralValue!16003 (text!56458 List!46500)) (BytesLiteralValue!8001 (value!242000 List!46500)) (CommentValue!16003 (value!242001 List!46500)) (StringLiteralValue!24005 (value!242002 List!46500)) (ErrorTokenValue!8001 (msg!8062 List!46500)) )
))
(declare-datatypes ((C!25546 0))(
  ( (C!25547 (val!14935 Int)) )
))
(declare-datatypes ((List!46501 0))(
  ( (Nil!46377) (Cons!46377 (h!51797 C!25546) (t!348400 List!46501)) )
))
(declare-datatypes ((IArray!27969 0))(
  ( (IArray!27970 (innerList!14042 List!46501)) )
))
(declare-datatypes ((Regex!12676 0))(
  ( (ElementMatch!12676 (c!717766 C!25546)) (Concat!20678 (regOne!25864 Regex!12676) (regTwo!25864 Regex!12676)) (EmptyExpr!12676) (Star!12676 (reg!13005 Regex!12676)) (EmptyLang!12676) (Union!12676 (regOne!25865 Regex!12676) (regTwo!25865 Regex!12676)) )
))
(declare-datatypes ((String!53877 0))(
  ( (String!53878 (value!242003 String)) )
))
(declare-datatypes ((Conc!13982 0))(
  ( (Node!13982 (left!34507 Conc!13982) (right!34837 Conc!13982) (csize!28194 Int) (cheight!14193 Int)) (Leaf!21612 (xs!17288 IArray!27969) (csize!28195 Int)) (Empty!13982) )
))
(declare-datatypes ((BalanceConc!27558 0))(
  ( (BalanceConc!27559 (c!717767 Conc!13982)) )
))
(declare-datatypes ((TokenValueInjection!15430 0))(
  ( (TokenValueInjection!15431 (toValue!10491 Int) (toChars!10350 Int)) )
))
(declare-datatypes ((Rule!15342 0))(
  ( (Rule!15343 (regex!7771 Regex!12676) (tag!8635 String!53877) (isSeparator!7771 Bool) (transformation!7771 TokenValueInjection!15430)) )
))
(declare-datatypes ((List!46502 0))(
  ( (Nil!46378) (Cons!46378 (h!51798 Rule!15342) (t!348401 List!46502)) )
))
(declare-fun rules!3967 () List!46502)

(declare-fun isEmpty!27472 (List!46502) Bool)

(assert (=> b!4216081 (= res!1732553 (isEmpty!27472 (t!348401 rules!3967)))))

(declare-fun e!2617422 () Bool)

(assert (=> b!4216082 (= e!2617422 (and tp!1289677 tp!1289681))))

(declare-fun b!4216083 () Bool)

(declare-fun res!1732543 () Bool)

(declare-fun e!2617431 () Bool)

(assert (=> b!4216083 (=> (not res!1732543) (not e!2617431))))

(declare-fun rBis!178 () Rule!15342)

(declare-fun contains!9592 (List!46502 Rule!15342) Bool)

(assert (=> b!4216083 (= res!1732543 (contains!9592 rules!3967 rBis!178))))

(declare-fun b!4216084 () Bool)

(declare-fun res!1732547 () Bool)

(declare-fun e!2617444 () Bool)

(assert (=> b!4216084 (=> res!1732547 e!2617444)))

(declare-datatypes ((Token!14244 0))(
  ( (Token!14245 (value!242004 TokenValue!8001) (rule!10897 Rule!15342) (size!34056 Int) (originalCharacters!8153 List!46501)) )
))
(declare-fun tBis!41 () Token!14244)

(assert (=> b!4216084 (= res!1732547 (not (= (rule!10897 tBis!41) rBis!178)))))

(declare-fun b!4216085 () Bool)

(assert (=> b!4216085 (= e!2617444 e!2617429)))

(declare-fun res!1732550 () Bool)

(assert (=> b!4216085 (=> res!1732550 e!2617429)))

(declare-fun lt!1500441 () List!46501)

(declare-fun input!3517 () List!46501)

(assert (=> b!4216085 (= res!1732550 (not (= lt!1500441 input!3517)))))

(declare-datatypes ((LexerInterface!7366 0))(
  ( (LexerInterfaceExt!7363 (__x!28226 Int)) (Lexer!7364) )
))
(declare-fun thiss!26544 () LexerInterface!7366)

(declare-fun rulesInvariant!6577 (LexerInterface!7366 List!46502) Bool)

(assert (=> b!4216085 (rulesInvariant!6577 thiss!26544 (t!348401 rules!3967))))

(declare-datatypes ((Unit!65518 0))(
  ( (Unit!65519) )
))
(declare-fun lt!1500439 () Unit!65518)

(declare-fun lemmaInvariantOnRulesThenOnTail!861 (LexerInterface!7366 Rule!15342 List!46502) Unit!65518)

(assert (=> b!4216085 (= lt!1500439 (lemmaInvariantOnRulesThenOnTail!861 thiss!26544 (h!51798 rules!3967) (t!348401 rules!3967)))))

(declare-fun lt!1500438 () List!46501)

(declare-fun isPrefix!4630 (List!46501 List!46501) Bool)

(assert (=> b!4216085 (isPrefix!4630 lt!1500438 lt!1500441)))

(declare-datatypes ((tuple2!44108 0))(
  ( (tuple2!44109 (_1!25188 Token!14244) (_2!25188 List!46501)) )
))
(declare-fun lt!1500437 () tuple2!44108)

(declare-fun ++!11845 (List!46501 List!46501) List!46501)

(assert (=> b!4216085 (= lt!1500441 (++!11845 lt!1500438 (_2!25188 lt!1500437)))))

(declare-fun lt!1500445 () Unit!65518)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3085 (List!46501 List!46501) Unit!65518)

(assert (=> b!4216085 (= lt!1500445 (lemmaConcatTwoListThenFirstIsPrefix!3085 lt!1500438 (_2!25188 lt!1500437)))))

(declare-fun list!16776 (BalanceConc!27558) List!46501)

(declare-fun charsOf!5194 (Token!14244) BalanceConc!27558)

(assert (=> b!4216085 (= lt!1500438 (list!16776 (charsOf!5194 (_1!25188 lt!1500437))))))

(declare-datatypes ((Option!9959 0))(
  ( (None!9958) (Some!9958 (v!40840 tuple2!44108)) )
))
(declare-fun lt!1500444 () Option!9959)

(declare-fun get!15091 (Option!9959) tuple2!44108)

(assert (=> b!4216085 (= lt!1500437 (get!15091 lt!1500444))))

(declare-fun lt!1500443 () Unit!65518)

(declare-fun e!2617447 () Unit!65518)

(assert (=> b!4216085 (= lt!1500443 e!2617447)))

(declare-fun c!717765 () Bool)

(declare-fun isEmpty!27473 (Option!9959) Bool)

(assert (=> b!4216085 (= c!717765 (isEmpty!27473 lt!1500444))))

(declare-fun maxPrefix!4406 (LexerInterface!7366 List!46502 List!46501) Option!9959)

(assert (=> b!4216085 (= lt!1500444 (maxPrefix!4406 thiss!26544 (t!348401 rules!3967) input!3517))))

(declare-fun b!4216086 () Bool)

(declare-fun res!1732542 () Bool)

(assert (=> b!4216086 (=> (not res!1732542) (not e!2617431))))

(declare-fun pBis!121 () List!46501)

(assert (=> b!4216086 (= res!1732542 (isPrefix!4630 pBis!121 input!3517))))

(declare-fun e!2617434 () Bool)

(declare-fun e!2617441 () Bool)

(declare-fun b!4216087 () Bool)

(declare-fun tp!1289669 () Bool)

(declare-fun inv!61015 (String!53877) Bool)

(declare-fun inv!61018 (TokenValueInjection!15430) Bool)

(assert (=> b!4216087 (= e!2617441 (and tp!1289669 (inv!61015 (tag!8635 (rule!10897 tBis!41))) (inv!61018 (transformation!7771 (rule!10897 tBis!41))) e!2617434))))

(declare-fun b!4216088 () Bool)

(declare-fun e!2617440 () Bool)

(assert (=> b!4216088 (= e!2617431 e!2617440)))

(declare-fun res!1732537 () Bool)

(assert (=> b!4216088 (=> (not res!1732537) (not e!2617440))))

(declare-fun lt!1500440 () Option!9959)

(assert (=> b!4216088 (= res!1732537 (= (maxPrefix!4406 thiss!26544 rules!3967 input!3517) lt!1500440))))

(declare-fun t!8364 () Token!14244)

(declare-fun suffix!1557 () List!46501)

(assert (=> b!4216088 (= lt!1500440 (Some!9958 (tuple2!44109 t!8364 suffix!1557)))))

(declare-fun b!4216089 () Bool)

(declare-fun e!2617426 () Bool)

(declare-fun tp_is_empty!22319 () Bool)

(declare-fun tp!1289667 () Bool)

(assert (=> b!4216089 (= e!2617426 (and tp_is_empty!22319 tp!1289667))))

(declare-fun e!2617435 () Bool)

(declare-fun tp!1289670 () Bool)

(declare-fun b!4216090 () Bool)

(declare-fun e!2617436 () Bool)

(declare-fun inv!21 (TokenValue!8001) Bool)

(assert (=> b!4216090 (= e!2617435 (and (inv!21 (value!242004 t!8364)) e!2617436 tp!1289670))))

(assert (=> b!4216091 (= e!2617434 (and tp!1289679 tp!1289682))))

(declare-fun b!4216092 () Bool)

(declare-fun res!1732539 () Bool)

(assert (=> b!4216092 (=> res!1732539 e!2617429)))

(assert (=> b!4216092 (= res!1732539 (not (contains!9592 (t!348401 rules!3967) rBis!178)))))

(declare-fun e!2617425 () Bool)

(assert (=> b!4216093 (= e!2617425 (and tp!1289675 tp!1289671))))

(declare-fun e!2617424 () Bool)

(assert (=> b!4216094 (= e!2617424 (and tp!1289680 tp!1289668))))

(declare-fun b!4216095 () Bool)

(declare-fun tp!1289673 () Bool)

(assert (=> b!4216095 (= e!2617436 (and tp!1289673 (inv!61015 (tag!8635 (rule!10897 t!8364))) (inv!61018 (transformation!7771 (rule!10897 t!8364))) e!2617424))))

(declare-fun b!4216096 () Bool)

(assert (=> b!4216096 (= e!2617429 (= lt!1500444 (Some!9958 (tuple2!44109 (_1!25188 lt!1500437) (_2!25188 lt!1500437)))))))

(declare-fun b!4216097 () Bool)

(assert (=> b!4216097 (= e!2617440 (not e!2617444))))

(declare-fun res!1732549 () Bool)

(assert (=> b!4216097 (=> res!1732549 e!2617444)))

(declare-fun suffixBis!41 () List!46501)

(declare-fun maxPrefixOneRule!3361 (LexerInterface!7366 Rule!15342 List!46501) Option!9959)

(assert (=> b!4216097 (= res!1732549 (not (= (maxPrefixOneRule!3361 thiss!26544 rBis!178 input!3517) (Some!9958 (tuple2!44109 tBis!41 suffixBis!41)))))))

(assert (=> b!4216097 (isPrefix!4630 input!3517 input!3517)))

(declare-fun lt!1500442 () Unit!65518)

(declare-fun lemmaIsPrefixRefl!3047 (List!46501 List!46501) Unit!65518)

(assert (=> b!4216097 (= lt!1500442 (lemmaIsPrefixRefl!3047 input!3517 input!3517))))

(declare-fun b!4216098 () Bool)

(declare-fun res!1732551 () Bool)

(assert (=> b!4216098 (=> (not res!1732551) (not e!2617431))))

(declare-fun p!3001 () List!46501)

(assert (=> b!4216098 (= res!1732551 (= (++!11845 p!3001 suffix!1557) input!3517))))

(declare-fun b!4216099 () Bool)

(declare-fun Unit!65520 () Unit!65518)

(assert (=> b!4216099 (= e!2617447 Unit!65520)))

(declare-fun lt!1500446 () Unit!65518)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!629 (LexerInterface!7366 Rule!15342 List!46502 List!46501) Unit!65518)

(assert (=> b!4216099 (= lt!1500446 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!629 thiss!26544 rBis!178 (t!348401 rules!3967) input!3517))))

(assert (=> b!4216099 false))

(declare-fun b!4216100 () Bool)

(declare-fun res!1732548 () Bool)

(assert (=> b!4216100 (=> (not res!1732548) (not e!2617431))))

(assert (=> b!4216100 (= res!1732548 (isPrefix!4630 p!3001 input!3517))))

(declare-fun b!4216101 () Bool)

(declare-fun res!1732536 () Bool)

(assert (=> b!4216101 (=> (not res!1732536) (not e!2617431))))

(assert (=> b!4216101 (= res!1732536 (rulesInvariant!6577 thiss!26544 rules!3967))))

(declare-fun b!4216102 () Bool)

(declare-fun e!2617421 () Bool)

(declare-fun tp!1289672 () Bool)

(assert (=> b!4216102 (= e!2617421 (and tp_is_empty!22319 tp!1289672))))

(declare-fun b!4216103 () Bool)

(declare-fun res!1732545 () Bool)

(assert (=> b!4216103 (=> res!1732545 e!2617444)))

(assert (=> b!4216103 (= res!1732545 (not (= (maxPrefixOneRule!3361 thiss!26544 (h!51798 rules!3967) input!3517) lt!1500440)))))

(declare-fun b!4216104 () Bool)

(declare-fun e!2617437 () Bool)

(declare-fun tp!1289683 () Bool)

(assert (=> b!4216104 (= e!2617437 (and tp_is_empty!22319 tp!1289683))))

(declare-fun tp!1289676 () Bool)

(declare-fun e!2617430 () Bool)

(declare-fun b!4216105 () Bool)

(assert (=> b!4216105 (= e!2617430 (and (inv!21 (value!242004 tBis!41)) e!2617441 tp!1289676))))

(declare-fun b!4216106 () Bool)

(declare-fun res!1732554 () Bool)

(assert (=> b!4216106 (=> res!1732554 e!2617429)))

(assert (=> b!4216106 (= res!1732554 (not (isPrefix!4630 lt!1500438 input!3517)))))

(declare-fun e!2617438 () Bool)

(declare-fun b!4216107 () Bool)

(declare-fun tp!1289666 () Bool)

(assert (=> b!4216107 (= e!2617438 (and tp!1289666 (inv!61015 (tag!8635 rBis!178)) (inv!61018 (transformation!7771 rBis!178)) e!2617422))))

(declare-fun b!4216108 () Bool)

(declare-fun res!1732540 () Bool)

(assert (=> b!4216108 (=> res!1732540 e!2617444)))

(assert (=> b!4216108 (= res!1732540 (not (= (list!16776 (charsOf!5194 tBis!41)) pBis!121)))))

(declare-fun b!4216109 () Bool)

(declare-fun e!2617443 () Bool)

(declare-fun e!2617445 () Bool)

(declare-fun tp!1289665 () Bool)

(assert (=> b!4216109 (= e!2617443 (and e!2617445 tp!1289665))))

(declare-fun b!4216110 () Bool)

(declare-fun e!2617433 () Bool)

(declare-fun tp!1289684 () Bool)

(assert (=> b!4216110 (= e!2617433 (and tp_is_empty!22319 tp!1289684))))

(declare-fun b!4216111 () Bool)

(declare-fun res!1732538 () Bool)

(assert (=> b!4216111 (=> (not res!1732538) (not e!2617431))))

(assert (=> b!4216111 (= res!1732538 (not (isEmpty!27472 rules!3967)))))

(declare-fun b!4216112 () Bool)

(declare-fun res!1732541 () Bool)

(assert (=> b!4216112 (=> (not res!1732541) (not e!2617440))))

(declare-fun ruleValid!3483 (LexerInterface!7366 Rule!15342) Bool)

(assert (=> b!4216112 (= res!1732541 (ruleValid!3483 thiss!26544 rBis!178))))

(declare-fun tp!1289678 () Bool)

(declare-fun b!4216113 () Bool)

(assert (=> b!4216113 (= e!2617445 (and tp!1289678 (inv!61015 (tag!8635 (h!51798 rules!3967))) (inv!61018 (transformation!7771 (h!51798 rules!3967))) e!2617425))))

(declare-fun res!1732552 () Bool)

(assert (=> start!402948 (=> (not res!1732552) (not e!2617431))))

(assert (=> start!402948 (= res!1732552 (is-Lexer!7364 thiss!26544))))

(assert (=> start!402948 e!2617431))

(declare-fun inv!61019 (Token!14244) Bool)

(assert (=> start!402948 (and (inv!61019 tBis!41) e!2617430)))

(assert (=> start!402948 true))

(assert (=> start!402948 e!2617438))

(declare-fun e!2617442 () Bool)

(assert (=> start!402948 e!2617442))

(assert (=> start!402948 e!2617443))

(assert (=> start!402948 e!2617437))

(assert (=> start!402948 (and (inv!61019 t!8364) e!2617435)))

(assert (=> start!402948 e!2617421))

(assert (=> start!402948 e!2617426))

(assert (=> start!402948 e!2617433))

(declare-fun b!4216114 () Bool)

(declare-fun res!1732546 () Bool)

(assert (=> b!4216114 (=> res!1732546 e!2617444)))

(assert (=> b!4216114 (= res!1732546 (not (= (++!11845 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4216115 () Bool)

(declare-fun Unit!65521 () Unit!65518)

(assert (=> b!4216115 (= e!2617447 Unit!65521)))

(declare-fun b!4216116 () Bool)

(declare-fun tp!1289674 () Bool)

(assert (=> b!4216116 (= e!2617442 (and tp_is_empty!22319 tp!1289674))))

(declare-fun b!4216117 () Bool)

(declare-fun res!1732544 () Bool)

(assert (=> b!4216117 (=> res!1732544 e!2617444)))

(assert (=> b!4216117 (= res!1732544 (or (and (is-Cons!46378 rules!3967) (is-Nil!46378 (t!348401 rules!3967))) (not (is-Cons!46378 rules!3967)) (= (h!51798 rules!3967) rBis!178)))))

(assert (= (and start!402948 res!1732552) b!4216098))

(assert (= (and b!4216098 res!1732551) b!4216100))

(assert (= (and b!4216100 res!1732548) b!4216086))

(assert (= (and b!4216086 res!1732542) b!4216111))

(assert (= (and b!4216111 res!1732538) b!4216101))

(assert (= (and b!4216101 res!1732536) b!4216083))

(assert (= (and b!4216083 res!1732543) b!4216088))

(assert (= (and b!4216088 res!1732537) b!4216112))

(assert (= (and b!4216112 res!1732541) b!4216097))

(assert (= (and b!4216097 (not res!1732549)) b!4216084))

(assert (= (and b!4216084 (not res!1732547)) b!4216108))

(assert (= (and b!4216108 (not res!1732540)) b!4216114))

(assert (= (and b!4216114 (not res!1732546)) b!4216117))

(assert (= (and b!4216117 (not res!1732544)) b!4216103))

(assert (= (and b!4216103 (not res!1732545)) b!4216085))

(assert (= (and b!4216085 c!717765) b!4216099))

(assert (= (and b!4216085 (not c!717765)) b!4216115))

(assert (= (and b!4216085 (not res!1732550)) b!4216106))

(assert (= (and b!4216106 (not res!1732554)) b!4216081))

(assert (= (and b!4216081 (not res!1732553)) b!4216092))

(assert (= (and b!4216092 (not res!1732539)) b!4216096))

(assert (= b!4216087 b!4216091))

(assert (= b!4216105 b!4216087))

(assert (= start!402948 b!4216105))

(assert (= b!4216107 b!4216082))

(assert (= start!402948 b!4216107))

(assert (= (and start!402948 (is-Cons!46377 p!3001)) b!4216116))

(assert (= b!4216113 b!4216093))

(assert (= b!4216109 b!4216113))

(assert (= (and start!402948 (is-Cons!46378 rules!3967)) b!4216109))

(assert (= (and start!402948 (is-Cons!46377 input!3517)) b!4216104))

(assert (= b!4216095 b!4216094))

(assert (= b!4216090 b!4216095))

(assert (= start!402948 b!4216090))

(assert (= (and start!402948 (is-Cons!46377 pBis!121)) b!4216102))

(assert (= (and start!402948 (is-Cons!46377 suffix!1557)) b!4216089))

(assert (= (and start!402948 (is-Cons!46377 suffixBis!41)) b!4216110))

(declare-fun m!4804155 () Bool)

(assert (=> b!4216113 m!4804155))

(declare-fun m!4804157 () Bool)

(assert (=> b!4216113 m!4804157))

(declare-fun m!4804159 () Bool)

(assert (=> b!4216099 m!4804159))

(declare-fun m!4804161 () Bool)

(assert (=> b!4216083 m!4804161))

(declare-fun m!4804163 () Bool)

(assert (=> b!4216101 m!4804163))

(declare-fun m!4804165 () Bool)

(assert (=> b!4216114 m!4804165))

(declare-fun m!4804167 () Bool)

(assert (=> b!4216085 m!4804167))

(declare-fun m!4804169 () Bool)

(assert (=> b!4216085 m!4804169))

(declare-fun m!4804171 () Bool)

(assert (=> b!4216085 m!4804171))

(declare-fun m!4804173 () Bool)

(assert (=> b!4216085 m!4804173))

(declare-fun m!4804175 () Bool)

(assert (=> b!4216085 m!4804175))

(declare-fun m!4804177 () Bool)

(assert (=> b!4216085 m!4804177))

(declare-fun m!4804179 () Bool)

(assert (=> b!4216085 m!4804179))

(assert (=> b!4216085 m!4804177))

(declare-fun m!4804181 () Bool)

(assert (=> b!4216085 m!4804181))

(declare-fun m!4804183 () Bool)

(assert (=> b!4216085 m!4804183))

(declare-fun m!4804185 () Bool)

(assert (=> b!4216085 m!4804185))

(declare-fun m!4804187 () Bool)

(assert (=> b!4216105 m!4804187))

(declare-fun m!4804189 () Bool)

(assert (=> b!4216108 m!4804189))

(assert (=> b!4216108 m!4804189))

(declare-fun m!4804191 () Bool)

(assert (=> b!4216108 m!4804191))

(declare-fun m!4804193 () Bool)

(assert (=> b!4216092 m!4804193))

(declare-fun m!4804195 () Bool)

(assert (=> b!4216103 m!4804195))

(declare-fun m!4804197 () Bool)

(assert (=> b!4216106 m!4804197))

(declare-fun m!4804199 () Bool)

(assert (=> b!4216087 m!4804199))

(declare-fun m!4804201 () Bool)

(assert (=> b!4216087 m!4804201))

(declare-fun m!4804203 () Bool)

(assert (=> b!4216107 m!4804203))

(declare-fun m!4804205 () Bool)

(assert (=> b!4216107 m!4804205))

(declare-fun m!4804207 () Bool)

(assert (=> start!402948 m!4804207))

(declare-fun m!4804209 () Bool)

(assert (=> start!402948 m!4804209))

(declare-fun m!4804211 () Bool)

(assert (=> b!4216090 m!4804211))

(declare-fun m!4804213 () Bool)

(assert (=> b!4216098 m!4804213))

(declare-fun m!4804215 () Bool)

(assert (=> b!4216111 m!4804215))

(declare-fun m!4804217 () Bool)

(assert (=> b!4216088 m!4804217))

(declare-fun m!4804219 () Bool)

(assert (=> b!4216097 m!4804219))

(declare-fun m!4804221 () Bool)

(assert (=> b!4216097 m!4804221))

(declare-fun m!4804223 () Bool)

(assert (=> b!4216097 m!4804223))

(declare-fun m!4804225 () Bool)

(assert (=> b!4216081 m!4804225))

(declare-fun m!4804227 () Bool)

(assert (=> b!4216086 m!4804227))

(declare-fun m!4804229 () Bool)

(assert (=> b!4216112 m!4804229))

(declare-fun m!4804231 () Bool)

(assert (=> b!4216100 m!4804231))

(declare-fun m!4804233 () Bool)

(assert (=> b!4216095 m!4804233))

(declare-fun m!4804235 () Bool)

(assert (=> b!4216095 m!4804235))

(push 1)

(assert (not b!4216092))

(assert b_and!332163)

(assert (not b!4216100))

(assert (not start!402948))

(assert b_and!332159)

(assert (not b!4216081))

(assert (not b!4216095))

(assert b_and!332171)

(assert (not b!4216107))

(assert (not b!4216114))

(assert (not b!4216113))

(assert (not b!4216116))

(assert (not b!4216086))

(assert (not b_next!124363))

(assert (not b_next!124375))

(assert (not b!4216088))

(assert (not b!4216105))

(assert (not b!4216099))

(assert (not b!4216106))

(assert b_and!332169)

(assert b_and!332161)

(assert (not b!4216083))

(assert (not b!4216098))

(assert (not b_next!124365))

(assert (not b!4216085))

(assert (not b_next!124371))

(assert (not b!4216108))

(assert (not b!4216089))

(assert (not b_next!124373))

(assert (not b!4216087))

(assert (not b!4216110))

(assert (not b!4216090))

(assert b_and!332157)

(assert tp_is_empty!22319)

(assert (not b!4216109))

(assert (not b!4216101))

(assert b_and!332165)

(assert (not b_next!124377))

(assert (not b_next!124369))

(assert (not b!4216102))

(assert (not b!4216104))

(assert (not b!4216112))

(assert (not b!4216097))

(assert (not b!4216111))

(assert (not b_next!124367))

(assert b_and!332167)

(assert (not b!4216103))

(check-sat)

(pop 1)

(push 1)

(assert b_and!332159)

(assert b_and!332171)

(assert (not b_next!124363))

(assert (not b_next!124375))

(assert b_and!332163)

(assert (not b_next!124365))

(assert (not b_next!124371))

(assert (not b_next!124373))

(assert b_and!332157)

(assert b_and!332161)

(assert b_and!332169)

(assert b_and!332165)

(assert (not b_next!124377))

(assert (not b_next!124369))

(assert (not b_next!124367))

(assert b_and!332167)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4216240 () Bool)

(declare-fun e!2617536 () Bool)

(declare-fun size!34058 (List!46501) Int)

(assert (=> b!4216240 (= e!2617536 (>= (size!34058 input!3517) (size!34058 lt!1500438)))))

(declare-fun b!4216239 () Bool)

(declare-fun e!2617537 () Bool)

(declare-fun tail!6792 (List!46501) List!46501)

(assert (=> b!4216239 (= e!2617537 (isPrefix!4630 (tail!6792 lt!1500438) (tail!6792 input!3517)))))

(declare-fun b!4216237 () Bool)

(declare-fun e!2617535 () Bool)

(assert (=> b!4216237 (= e!2617535 e!2617537)))

(declare-fun res!1732627 () Bool)

(assert (=> b!4216237 (=> (not res!1732627) (not e!2617537))))

(assert (=> b!4216237 (= res!1732627 (not (is-Nil!46377 input!3517)))))

(declare-fun b!4216238 () Bool)

(declare-fun res!1732629 () Bool)

(assert (=> b!4216238 (=> (not res!1732629) (not e!2617537))))

(declare-fun head!8945 (List!46501) C!25546)

(assert (=> b!4216238 (= res!1732629 (= (head!8945 lt!1500438) (head!8945 input!3517)))))

(declare-fun d!1242014 () Bool)

(assert (=> d!1242014 e!2617536))

(declare-fun res!1732630 () Bool)

(assert (=> d!1242014 (=> res!1732630 e!2617536)))

(declare-fun lt!1500479 () Bool)

(assert (=> d!1242014 (= res!1732630 (not lt!1500479))))

(assert (=> d!1242014 (= lt!1500479 e!2617535)))

(declare-fun res!1732628 () Bool)

(assert (=> d!1242014 (=> res!1732628 e!2617535)))

(assert (=> d!1242014 (= res!1732628 (is-Nil!46377 lt!1500438))))

(assert (=> d!1242014 (= (isPrefix!4630 lt!1500438 input!3517) lt!1500479)))

(assert (= (and d!1242014 (not res!1732628)) b!4216237))

(assert (= (and b!4216237 res!1732627) b!4216238))

(assert (= (and b!4216238 res!1732629) b!4216239))

(assert (= (and d!1242014 (not res!1732630)) b!4216240))

(declare-fun m!4804319 () Bool)

(assert (=> b!4216240 m!4804319))

(declare-fun m!4804321 () Bool)

(assert (=> b!4216240 m!4804321))

(declare-fun m!4804323 () Bool)

(assert (=> b!4216239 m!4804323))

(declare-fun m!4804325 () Bool)

(assert (=> b!4216239 m!4804325))

(assert (=> b!4216239 m!4804323))

(assert (=> b!4216239 m!4804325))

(declare-fun m!4804327 () Bool)

(assert (=> b!4216239 m!4804327))

(declare-fun m!4804329 () Bool)

(assert (=> b!4216238 m!4804329))

(declare-fun m!4804331 () Bool)

(assert (=> b!4216238 m!4804331))

(assert (=> b!4216106 d!1242014))

(declare-fun d!1242016 () Bool)

(declare-fun e!2617546 () Bool)

(assert (=> d!1242016 e!2617546))

(declare-fun res!1732657 () Bool)

(assert (=> d!1242016 (=> res!1732657 e!2617546)))

(declare-fun lt!1500491 () Option!9959)

(assert (=> d!1242016 (= res!1732657 (isEmpty!27473 lt!1500491))))

(declare-fun e!2617545 () Option!9959)

(assert (=> d!1242016 (= lt!1500491 e!2617545)))

(declare-fun c!717776 () Bool)

(assert (=> d!1242016 (= c!717776 (and (is-Cons!46378 (t!348401 rules!3967)) (is-Nil!46378 (t!348401 (t!348401 rules!3967)))))))

(declare-fun lt!1500494 () Unit!65518)

(declare-fun lt!1500493 () Unit!65518)

(assert (=> d!1242016 (= lt!1500494 lt!1500493)))

(assert (=> d!1242016 (isPrefix!4630 input!3517 input!3517)))

(assert (=> d!1242016 (= lt!1500493 (lemmaIsPrefixRefl!3047 input!3517 input!3517))))

(declare-fun rulesValidInductive!2887 (LexerInterface!7366 List!46502) Bool)

(assert (=> d!1242016 (rulesValidInductive!2887 thiss!26544 (t!348401 rules!3967))))

(assert (=> d!1242016 (= (maxPrefix!4406 thiss!26544 (t!348401 rules!3967) input!3517) lt!1500491)))

(declare-fun b!4216259 () Bool)

(declare-fun res!1732656 () Bool)

(declare-fun e!2617544 () Bool)

(assert (=> b!4216259 (=> (not res!1732656) (not e!2617544))))

(declare-fun apply!10696 (TokenValueInjection!15430 BalanceConc!27558) TokenValue!8001)

(declare-fun seqFromList!5756 (List!46501) BalanceConc!27558)

(assert (=> b!4216259 (= res!1732656 (= (value!242004 (_1!25188 (get!15091 lt!1500491))) (apply!10696 (transformation!7771 (rule!10897 (_1!25188 (get!15091 lt!1500491)))) (seqFromList!5756 (originalCharacters!8153 (_1!25188 (get!15091 lt!1500491)))))))))

(declare-fun b!4216260 () Bool)

(assert (=> b!4216260 (= e!2617546 e!2617544)))

(declare-fun res!1732653 () Bool)

(assert (=> b!4216260 (=> (not res!1732653) (not e!2617544))))

(declare-fun isDefined!7397 (Option!9959) Bool)

(assert (=> b!4216260 (= res!1732653 (isDefined!7397 lt!1500491))))

(declare-fun b!4216261 () Bool)

(assert (=> b!4216261 (= e!2617544 (contains!9592 (t!348401 rules!3967) (rule!10897 (_1!25188 (get!15091 lt!1500491)))))))

(declare-fun b!4216262 () Bool)

(declare-fun res!1732652 () Bool)

(assert (=> b!4216262 (=> (not res!1732652) (not e!2617544))))

(assert (=> b!4216262 (= res!1732652 (= (list!16776 (charsOf!5194 (_1!25188 (get!15091 lt!1500491)))) (originalCharacters!8153 (_1!25188 (get!15091 lt!1500491)))))))

(declare-fun b!4216263 () Bool)

(declare-fun lt!1500490 () Option!9959)

(declare-fun lt!1500492 () Option!9959)

(assert (=> b!4216263 (= e!2617545 (ite (and (is-None!9958 lt!1500490) (is-None!9958 lt!1500492)) None!9958 (ite (is-None!9958 lt!1500492) lt!1500490 (ite (is-None!9958 lt!1500490) lt!1500492 (ite (>= (size!34056 (_1!25188 (v!40840 lt!1500490))) (size!34056 (_1!25188 (v!40840 lt!1500492)))) lt!1500490 lt!1500492)))))))

(declare-fun call!293017 () Option!9959)

(assert (=> b!4216263 (= lt!1500490 call!293017)))

(assert (=> b!4216263 (= lt!1500492 (maxPrefix!4406 thiss!26544 (t!348401 (t!348401 rules!3967)) input!3517))))

(declare-fun bm!293012 () Bool)

(assert (=> bm!293012 (= call!293017 (maxPrefixOneRule!3361 thiss!26544 (h!51798 (t!348401 rules!3967)) input!3517))))

(declare-fun b!4216264 () Bool)

(assert (=> b!4216264 (= e!2617545 call!293017)))

(declare-fun b!4216265 () Bool)

(declare-fun res!1732658 () Bool)

(assert (=> b!4216265 (=> (not res!1732658) (not e!2617544))))

(assert (=> b!4216265 (= res!1732658 (< (size!34058 (_2!25188 (get!15091 lt!1500491))) (size!34058 input!3517)))))

(declare-fun b!4216266 () Bool)

(declare-fun res!1732654 () Bool)

(assert (=> b!4216266 (=> (not res!1732654) (not e!2617544))))

(assert (=> b!4216266 (= res!1732654 (= (++!11845 (list!16776 (charsOf!5194 (_1!25188 (get!15091 lt!1500491)))) (_2!25188 (get!15091 lt!1500491))) input!3517))))

(declare-fun b!4216267 () Bool)

(declare-fun res!1732655 () Bool)

(assert (=> b!4216267 (=> (not res!1732655) (not e!2617544))))

(declare-fun matchR!6375 (Regex!12676 List!46501) Bool)

(assert (=> b!4216267 (= res!1732655 (matchR!6375 (regex!7771 (rule!10897 (_1!25188 (get!15091 lt!1500491)))) (list!16776 (charsOf!5194 (_1!25188 (get!15091 lt!1500491))))))))

(assert (= (and d!1242016 c!717776) b!4216264))

(assert (= (and d!1242016 (not c!717776)) b!4216263))

(assert (= (or b!4216264 b!4216263) bm!293012))

(assert (= (and d!1242016 (not res!1732657)) b!4216260))

(assert (= (and b!4216260 res!1732653) b!4216262))

(assert (= (and b!4216262 res!1732652) b!4216265))

(assert (= (and b!4216265 res!1732658) b!4216266))

(assert (= (and b!4216266 res!1732654) b!4216259))

(assert (= (and b!4216259 res!1732656) b!4216267))

(assert (= (and b!4216267 res!1732655) b!4216261))

(declare-fun m!4804333 () Bool)

(assert (=> b!4216260 m!4804333))

(declare-fun m!4804335 () Bool)

(assert (=> bm!293012 m!4804335))

(declare-fun m!4804337 () Bool)

(assert (=> b!4216262 m!4804337))

(declare-fun m!4804339 () Bool)

(assert (=> b!4216262 m!4804339))

(assert (=> b!4216262 m!4804339))

(declare-fun m!4804341 () Bool)

(assert (=> b!4216262 m!4804341))

(assert (=> b!4216259 m!4804337))

(declare-fun m!4804343 () Bool)

(assert (=> b!4216259 m!4804343))

(assert (=> b!4216259 m!4804343))

(declare-fun m!4804345 () Bool)

(assert (=> b!4216259 m!4804345))

(assert (=> b!4216261 m!4804337))

(declare-fun m!4804347 () Bool)

(assert (=> b!4216261 m!4804347))

(assert (=> b!4216267 m!4804337))

(assert (=> b!4216267 m!4804339))

(assert (=> b!4216267 m!4804339))

(assert (=> b!4216267 m!4804341))

(assert (=> b!4216267 m!4804341))

(declare-fun m!4804349 () Bool)

(assert (=> b!4216267 m!4804349))

(declare-fun m!4804351 () Bool)

(assert (=> b!4216263 m!4804351))

(assert (=> b!4216266 m!4804337))

(assert (=> b!4216266 m!4804339))

(assert (=> b!4216266 m!4804339))

(assert (=> b!4216266 m!4804341))

(assert (=> b!4216266 m!4804341))

(declare-fun m!4804353 () Bool)

(assert (=> b!4216266 m!4804353))

(declare-fun m!4804355 () Bool)

(assert (=> d!1242016 m!4804355))

(assert (=> d!1242016 m!4804221))

(assert (=> d!1242016 m!4804223))

(declare-fun m!4804357 () Bool)

(assert (=> d!1242016 m!4804357))

(assert (=> b!4216265 m!4804337))

(declare-fun m!4804359 () Bool)

(assert (=> b!4216265 m!4804359))

(assert (=> b!4216265 m!4804319))

(assert (=> b!4216085 d!1242016))

(declare-fun d!1242018 () Bool)

(assert (=> d!1242018 (isPrefix!4630 lt!1500438 (++!11845 lt!1500438 (_2!25188 lt!1500437)))))

(declare-fun lt!1500497 () Unit!65518)

(declare-fun choose!25831 (List!46501 List!46501) Unit!65518)

(assert (=> d!1242018 (= lt!1500497 (choose!25831 lt!1500438 (_2!25188 lt!1500437)))))

(assert (=> d!1242018 (= (lemmaConcatTwoListThenFirstIsPrefix!3085 lt!1500438 (_2!25188 lt!1500437)) lt!1500497)))

(declare-fun bs!597522 () Bool)

(assert (= bs!597522 d!1242018))

(assert (=> bs!597522 m!4804171))

(assert (=> bs!597522 m!4804171))

(declare-fun m!4804361 () Bool)

(assert (=> bs!597522 m!4804361))

(declare-fun m!4804363 () Bool)

(assert (=> bs!597522 m!4804363))

(assert (=> b!4216085 d!1242018))

(declare-fun b!4216277 () Bool)

(declare-fun e!2617551 () List!46501)

(assert (=> b!4216277 (= e!2617551 (Cons!46377 (h!51797 lt!1500438) (++!11845 (t!348400 lt!1500438) (_2!25188 lt!1500437))))))

(declare-fun lt!1500500 () List!46501)

(declare-fun b!4216279 () Bool)

(declare-fun e!2617552 () Bool)

(assert (=> b!4216279 (= e!2617552 (or (not (= (_2!25188 lt!1500437) Nil!46377)) (= lt!1500500 lt!1500438)))))

(declare-fun b!4216278 () Bool)

(declare-fun res!1732664 () Bool)

(assert (=> b!4216278 (=> (not res!1732664) (not e!2617552))))

(assert (=> b!4216278 (= res!1732664 (= (size!34058 lt!1500500) (+ (size!34058 lt!1500438) (size!34058 (_2!25188 lt!1500437)))))))

(declare-fun d!1242020 () Bool)

(assert (=> d!1242020 e!2617552))

(declare-fun res!1732663 () Bool)

(assert (=> d!1242020 (=> (not res!1732663) (not e!2617552))))

(declare-fun content!7270 (List!46501) (Set C!25546))

(assert (=> d!1242020 (= res!1732663 (= (content!7270 lt!1500500) (set.union (content!7270 lt!1500438) (content!7270 (_2!25188 lt!1500437)))))))

(assert (=> d!1242020 (= lt!1500500 e!2617551)))

(declare-fun c!717779 () Bool)

(assert (=> d!1242020 (= c!717779 (is-Nil!46377 lt!1500438))))

(assert (=> d!1242020 (= (++!11845 lt!1500438 (_2!25188 lt!1500437)) lt!1500500)))

(declare-fun b!4216276 () Bool)

(assert (=> b!4216276 (= e!2617551 (_2!25188 lt!1500437))))

(assert (= (and d!1242020 c!717779) b!4216276))

(assert (= (and d!1242020 (not c!717779)) b!4216277))

(assert (= (and d!1242020 res!1732663) b!4216278))

(assert (= (and b!4216278 res!1732664) b!4216279))

(declare-fun m!4804365 () Bool)

(assert (=> b!4216277 m!4804365))

(declare-fun m!4804367 () Bool)

(assert (=> b!4216278 m!4804367))

(assert (=> b!4216278 m!4804321))

(declare-fun m!4804369 () Bool)

(assert (=> b!4216278 m!4804369))

(declare-fun m!4804371 () Bool)

(assert (=> d!1242020 m!4804371))

(declare-fun m!4804373 () Bool)

(assert (=> d!1242020 m!4804373))

(declare-fun m!4804375 () Bool)

(assert (=> d!1242020 m!4804375))

(assert (=> b!4216085 d!1242020))

(declare-fun d!1242022 () Bool)

(declare-fun lt!1500503 () BalanceConc!27558)

(assert (=> d!1242022 (= (list!16776 lt!1500503) (originalCharacters!8153 (_1!25188 lt!1500437)))))

(declare-fun dynLambda!19981 (Int TokenValue!8001) BalanceConc!27558)

(assert (=> d!1242022 (= lt!1500503 (dynLambda!19981 (toChars!10350 (transformation!7771 (rule!10897 (_1!25188 lt!1500437)))) (value!242004 (_1!25188 lt!1500437))))))

(assert (=> d!1242022 (= (charsOf!5194 (_1!25188 lt!1500437)) lt!1500503)))

(declare-fun b_lambda!124203 () Bool)

(assert (=> (not b_lambda!124203) (not d!1242022)))

(declare-fun t!348406 () Bool)

(declare-fun tb!253099 () Bool)

(assert (=> (and b!4216094 (= (toChars!10350 (transformation!7771 (rule!10897 t!8364))) (toChars!10350 (transformation!7771 (rule!10897 (_1!25188 lt!1500437))))) t!348406) tb!253099))

(declare-fun b!4216284 () Bool)

(declare-fun e!2617555 () Bool)

(declare-fun tp!1289747 () Bool)

(declare-fun inv!61022 (Conc!13982) Bool)

(assert (=> b!4216284 (= e!2617555 (and (inv!61022 (c!717767 (dynLambda!19981 (toChars!10350 (transformation!7771 (rule!10897 (_1!25188 lt!1500437)))) (value!242004 (_1!25188 lt!1500437))))) tp!1289747))))

(declare-fun result!308492 () Bool)

(declare-fun inv!61023 (BalanceConc!27558) Bool)

(assert (=> tb!253099 (= result!308492 (and (inv!61023 (dynLambda!19981 (toChars!10350 (transformation!7771 (rule!10897 (_1!25188 lt!1500437)))) (value!242004 (_1!25188 lt!1500437)))) e!2617555))))

(assert (= tb!253099 b!4216284))

(declare-fun m!4804377 () Bool)

(assert (=> b!4216284 m!4804377))

(declare-fun m!4804379 () Bool)

(assert (=> tb!253099 m!4804379))

(assert (=> d!1242022 t!348406))

(declare-fun b_and!332189 () Bool)

(assert (= b_and!332159 (and (=> t!348406 result!308492) b_and!332189)))

(declare-fun t!348408 () Bool)

(declare-fun tb!253101 () Bool)

(assert (=> (and b!4216093 (= (toChars!10350 (transformation!7771 (h!51798 rules!3967))) (toChars!10350 (transformation!7771 (rule!10897 (_1!25188 lt!1500437))))) t!348408) tb!253101))

(declare-fun result!308496 () Bool)

(assert (= result!308496 result!308492))

(assert (=> d!1242022 t!348408))

(declare-fun b_and!332191 () Bool)

(assert (= b_and!332163 (and (=> t!348408 result!308496) b_and!332191)))

(declare-fun tb!253103 () Bool)

(declare-fun t!348410 () Bool)

(assert (=> (and b!4216082 (= (toChars!10350 (transformation!7771 rBis!178)) (toChars!10350 (transformation!7771 (rule!10897 (_1!25188 lt!1500437))))) t!348410) tb!253103))

(declare-fun result!308498 () Bool)

(assert (= result!308498 result!308492))

(assert (=> d!1242022 t!348410))

(declare-fun b_and!332193 () Bool)

(assert (= b_and!332167 (and (=> t!348410 result!308498) b_and!332193)))

(declare-fun t!348412 () Bool)

(declare-fun tb!253105 () Bool)

(assert (=> (and b!4216091 (= (toChars!10350 (transformation!7771 (rule!10897 tBis!41))) (toChars!10350 (transformation!7771 (rule!10897 (_1!25188 lt!1500437))))) t!348412) tb!253105))

(declare-fun result!308500 () Bool)

(assert (= result!308500 result!308492))

(assert (=> d!1242022 t!348412))

(declare-fun b_and!332195 () Bool)

(assert (= b_and!332171 (and (=> t!348412 result!308500) b_and!332195)))

(declare-fun m!4804381 () Bool)

(assert (=> d!1242022 m!4804381))

(declare-fun m!4804383 () Bool)

(assert (=> d!1242022 m!4804383))

(assert (=> b!4216085 d!1242022))

(declare-fun d!1242024 () Bool)

(assert (=> d!1242024 (= (get!15091 lt!1500444) (v!40840 lt!1500444))))

(assert (=> b!4216085 d!1242024))

(declare-fun d!1242026 () Bool)

(declare-fun res!1732667 () Bool)

(declare-fun e!2617558 () Bool)

(assert (=> d!1242026 (=> (not res!1732667) (not e!2617558))))

(declare-fun rulesValid!3045 (LexerInterface!7366 List!46502) Bool)

(assert (=> d!1242026 (= res!1732667 (rulesValid!3045 thiss!26544 (t!348401 rules!3967)))))

(assert (=> d!1242026 (= (rulesInvariant!6577 thiss!26544 (t!348401 rules!3967)) e!2617558)))

(declare-fun b!4216287 () Bool)

(declare-datatypes ((List!46506 0))(
  ( (Nil!46382) (Cons!46382 (h!51802 String!53877) (t!348435 List!46506)) )
))
(declare-fun noDuplicateTag!3206 (LexerInterface!7366 List!46502 List!46506) Bool)

(assert (=> b!4216287 (= e!2617558 (noDuplicateTag!3206 thiss!26544 (t!348401 rules!3967) Nil!46382))))

(assert (= (and d!1242026 res!1732667) b!4216287))

(declare-fun m!4804385 () Bool)

(assert (=> d!1242026 m!4804385))

(declare-fun m!4804387 () Bool)

(assert (=> b!4216287 m!4804387))

(assert (=> b!4216085 d!1242026))

(declare-fun d!1242028 () Bool)

(assert (=> d!1242028 (= (isEmpty!27473 lt!1500444) (not (is-Some!9958 lt!1500444)))))

(assert (=> b!4216085 d!1242028))

(declare-fun b!4216291 () Bool)

(declare-fun e!2617560 () Bool)

(assert (=> b!4216291 (= e!2617560 (>= (size!34058 lt!1500441) (size!34058 lt!1500438)))))

(declare-fun b!4216290 () Bool)

(declare-fun e!2617561 () Bool)

(assert (=> b!4216290 (= e!2617561 (isPrefix!4630 (tail!6792 lt!1500438) (tail!6792 lt!1500441)))))

(declare-fun b!4216288 () Bool)

(declare-fun e!2617559 () Bool)

(assert (=> b!4216288 (= e!2617559 e!2617561)))

(declare-fun res!1732668 () Bool)

(assert (=> b!4216288 (=> (not res!1732668) (not e!2617561))))

(assert (=> b!4216288 (= res!1732668 (not (is-Nil!46377 lt!1500441)))))

(declare-fun b!4216289 () Bool)

(declare-fun res!1732670 () Bool)

(assert (=> b!4216289 (=> (not res!1732670) (not e!2617561))))

(assert (=> b!4216289 (= res!1732670 (= (head!8945 lt!1500438) (head!8945 lt!1500441)))))

(declare-fun d!1242030 () Bool)

(assert (=> d!1242030 e!2617560))

(declare-fun res!1732671 () Bool)

(assert (=> d!1242030 (=> res!1732671 e!2617560)))

(declare-fun lt!1500504 () Bool)

(assert (=> d!1242030 (= res!1732671 (not lt!1500504))))

(assert (=> d!1242030 (= lt!1500504 e!2617559)))

(declare-fun res!1732669 () Bool)

(assert (=> d!1242030 (=> res!1732669 e!2617559)))

(assert (=> d!1242030 (= res!1732669 (is-Nil!46377 lt!1500438))))

(assert (=> d!1242030 (= (isPrefix!4630 lt!1500438 lt!1500441) lt!1500504)))

(assert (= (and d!1242030 (not res!1732669)) b!4216288))

(assert (= (and b!4216288 res!1732668) b!4216289))

(assert (= (and b!4216289 res!1732670) b!4216290))

(assert (= (and d!1242030 (not res!1732671)) b!4216291))

(declare-fun m!4804389 () Bool)

(assert (=> b!4216291 m!4804389))

(assert (=> b!4216291 m!4804321))

(assert (=> b!4216290 m!4804323))

(declare-fun m!4804391 () Bool)

(assert (=> b!4216290 m!4804391))

(assert (=> b!4216290 m!4804323))

(assert (=> b!4216290 m!4804391))

(declare-fun m!4804393 () Bool)

(assert (=> b!4216290 m!4804393))

(assert (=> b!4216289 m!4804329))

(declare-fun m!4804395 () Bool)

(assert (=> b!4216289 m!4804395))

(assert (=> b!4216085 d!1242030))

(declare-fun d!1242032 () Bool)

(declare-fun list!16778 (Conc!13982) List!46501)

(assert (=> d!1242032 (= (list!16776 (charsOf!5194 (_1!25188 lt!1500437))) (list!16778 (c!717767 (charsOf!5194 (_1!25188 lt!1500437)))))))

(declare-fun bs!597523 () Bool)

(assert (= bs!597523 d!1242032))

(declare-fun m!4804397 () Bool)

(assert (=> bs!597523 m!4804397))

(assert (=> b!4216085 d!1242032))

(declare-fun d!1242034 () Bool)

(assert (=> d!1242034 (rulesInvariant!6577 thiss!26544 (t!348401 rules!3967))))

(declare-fun lt!1500507 () Unit!65518)

(declare-fun choose!25832 (LexerInterface!7366 Rule!15342 List!46502) Unit!65518)

(assert (=> d!1242034 (= lt!1500507 (choose!25832 thiss!26544 (h!51798 rules!3967) (t!348401 rules!3967)))))

(assert (=> d!1242034 (rulesInvariant!6577 thiss!26544 (Cons!46378 (h!51798 rules!3967) (t!348401 rules!3967)))))

(assert (=> d!1242034 (= (lemmaInvariantOnRulesThenOnTail!861 thiss!26544 (h!51798 rules!3967) (t!348401 rules!3967)) lt!1500507)))

(declare-fun bs!597524 () Bool)

(assert (= bs!597524 d!1242034))

(assert (=> bs!597524 m!4804183))

(declare-fun m!4804399 () Bool)

(assert (=> bs!597524 m!4804399))

(declare-fun m!4804401 () Bool)

(assert (=> bs!597524 m!4804401))

(assert (=> b!4216085 d!1242034))

(declare-fun d!1242036 () Bool)

(declare-fun lt!1500510 () Bool)

(declare-fun content!7271 (List!46502) (Set Rule!15342))

(assert (=> d!1242036 (= lt!1500510 (set.member rBis!178 (content!7271 rules!3967)))))

(declare-fun e!2617566 () Bool)

(assert (=> d!1242036 (= lt!1500510 e!2617566)))

(declare-fun res!1732677 () Bool)

(assert (=> d!1242036 (=> (not res!1732677) (not e!2617566))))

(assert (=> d!1242036 (= res!1732677 (is-Cons!46378 rules!3967))))

(assert (=> d!1242036 (= (contains!9592 rules!3967 rBis!178) lt!1500510)))

(declare-fun b!4216296 () Bool)

(declare-fun e!2617567 () Bool)

(assert (=> b!4216296 (= e!2617566 e!2617567)))

(declare-fun res!1732676 () Bool)

(assert (=> b!4216296 (=> res!1732676 e!2617567)))

(assert (=> b!4216296 (= res!1732676 (= (h!51798 rules!3967) rBis!178))))

(declare-fun b!4216297 () Bool)

(assert (=> b!4216297 (= e!2617567 (contains!9592 (t!348401 rules!3967) rBis!178))))

(assert (= (and d!1242036 res!1732677) b!4216296))

(assert (= (and b!4216296 (not res!1732676)) b!4216297))

(declare-fun m!4804403 () Bool)

(assert (=> d!1242036 m!4804403))

(declare-fun m!4804405 () Bool)

(assert (=> d!1242036 m!4804405))

(assert (=> b!4216297 m!4804193))

(assert (=> b!4216083 d!1242036))

(declare-fun b!4216308 () Bool)

(declare-fun e!2617574 () Bool)

(declare-fun inv!16 (TokenValue!8001) Bool)

(assert (=> b!4216308 (= e!2617574 (inv!16 (value!242004 tBis!41)))))

(declare-fun b!4216309 () Bool)

(declare-fun res!1732680 () Bool)

(declare-fun e!2617576 () Bool)

(assert (=> b!4216309 (=> res!1732680 e!2617576)))

(assert (=> b!4216309 (= res!1732680 (not (is-IntegerValue!24005 (value!242004 tBis!41))))))

(declare-fun e!2617575 () Bool)

(assert (=> b!4216309 (= e!2617575 e!2617576)))

(declare-fun b!4216310 () Bool)

(assert (=> b!4216310 (= e!2617574 e!2617575)))

(declare-fun c!717785 () Bool)

(assert (=> b!4216310 (= c!717785 (is-IntegerValue!24004 (value!242004 tBis!41)))))

(declare-fun d!1242038 () Bool)

(declare-fun c!717784 () Bool)

(assert (=> d!1242038 (= c!717784 (is-IntegerValue!24003 (value!242004 tBis!41)))))

(assert (=> d!1242038 (= (inv!21 (value!242004 tBis!41)) e!2617574)))

(declare-fun b!4216311 () Bool)

(declare-fun inv!15 (TokenValue!8001) Bool)

(assert (=> b!4216311 (= e!2617576 (inv!15 (value!242004 tBis!41)))))

(declare-fun b!4216312 () Bool)

(declare-fun inv!17 (TokenValue!8001) Bool)

(assert (=> b!4216312 (= e!2617575 (inv!17 (value!242004 tBis!41)))))

(assert (= (and d!1242038 c!717784) b!4216308))

(assert (= (and d!1242038 (not c!717784)) b!4216310))

(assert (= (and b!4216310 c!717785) b!4216312))

(assert (= (and b!4216310 (not c!717785)) b!4216309))

(assert (= (and b!4216309 (not res!1732680)) b!4216311))

(declare-fun m!4804407 () Bool)

(assert (=> b!4216308 m!4804407))

(declare-fun m!4804409 () Bool)

(assert (=> b!4216311 m!4804409))

(declare-fun m!4804411 () Bool)

(assert (=> b!4216312 m!4804411))

(assert (=> b!4216105 d!1242038))

(declare-fun d!1242042 () Bool)

(assert (=> d!1242042 (= (inv!61015 (tag!8635 (rule!10897 tBis!41))) (= (mod (str.len (value!242003 (tag!8635 (rule!10897 tBis!41)))) 2) 0))))

(assert (=> b!4216087 d!1242042))

(declare-fun d!1242044 () Bool)

(declare-fun res!1732683 () Bool)

(declare-fun e!2617579 () Bool)

(assert (=> d!1242044 (=> (not res!1732683) (not e!2617579))))

(declare-fun semiInverseModEq!3377 (Int Int) Bool)

(assert (=> d!1242044 (= res!1732683 (semiInverseModEq!3377 (toChars!10350 (transformation!7771 (rule!10897 tBis!41))) (toValue!10491 (transformation!7771 (rule!10897 tBis!41)))))))

(assert (=> d!1242044 (= (inv!61018 (transformation!7771 (rule!10897 tBis!41))) e!2617579)))

(declare-fun b!4216315 () Bool)

(declare-fun equivClasses!3276 (Int Int) Bool)

(assert (=> b!4216315 (= e!2617579 (equivClasses!3276 (toChars!10350 (transformation!7771 (rule!10897 tBis!41))) (toValue!10491 (transformation!7771 (rule!10897 tBis!41)))))))

(assert (= (and d!1242044 res!1732683) b!4216315))

(declare-fun m!4804413 () Bool)

(assert (=> d!1242044 m!4804413))

(declare-fun m!4804415 () Bool)

(assert (=> b!4216315 m!4804415))

(assert (=> b!4216087 d!1242044))

(declare-fun d!1242046 () Bool)

(declare-fun e!2617582 () Bool)

(assert (=> d!1242046 e!2617582))

(declare-fun res!1732689 () Bool)

(assert (=> d!1242046 (=> res!1732689 e!2617582)))

(declare-fun lt!1500512 () Option!9959)

(assert (=> d!1242046 (= res!1732689 (isEmpty!27473 lt!1500512))))

(declare-fun e!2617581 () Option!9959)

(assert (=> d!1242046 (= lt!1500512 e!2617581)))

(declare-fun c!717786 () Bool)

(assert (=> d!1242046 (= c!717786 (and (is-Cons!46378 rules!3967) (is-Nil!46378 (t!348401 rules!3967))))))

(declare-fun lt!1500515 () Unit!65518)

(declare-fun lt!1500514 () Unit!65518)

(assert (=> d!1242046 (= lt!1500515 lt!1500514)))

(assert (=> d!1242046 (isPrefix!4630 input!3517 input!3517)))

(assert (=> d!1242046 (= lt!1500514 (lemmaIsPrefixRefl!3047 input!3517 input!3517))))

(assert (=> d!1242046 (rulesValidInductive!2887 thiss!26544 rules!3967)))

(assert (=> d!1242046 (= (maxPrefix!4406 thiss!26544 rules!3967 input!3517) lt!1500512)))

(declare-fun b!4216316 () Bool)

(declare-fun res!1732688 () Bool)

(declare-fun e!2617580 () Bool)

(assert (=> b!4216316 (=> (not res!1732688) (not e!2617580))))

(assert (=> b!4216316 (= res!1732688 (= (value!242004 (_1!25188 (get!15091 lt!1500512))) (apply!10696 (transformation!7771 (rule!10897 (_1!25188 (get!15091 lt!1500512)))) (seqFromList!5756 (originalCharacters!8153 (_1!25188 (get!15091 lt!1500512)))))))))

(declare-fun b!4216317 () Bool)

(assert (=> b!4216317 (= e!2617582 e!2617580)))

(declare-fun res!1732685 () Bool)

(assert (=> b!4216317 (=> (not res!1732685) (not e!2617580))))

(assert (=> b!4216317 (= res!1732685 (isDefined!7397 lt!1500512))))

(declare-fun b!4216318 () Bool)

(assert (=> b!4216318 (= e!2617580 (contains!9592 rules!3967 (rule!10897 (_1!25188 (get!15091 lt!1500512)))))))

(declare-fun b!4216319 () Bool)

(declare-fun res!1732684 () Bool)

(assert (=> b!4216319 (=> (not res!1732684) (not e!2617580))))

(assert (=> b!4216319 (= res!1732684 (= (list!16776 (charsOf!5194 (_1!25188 (get!15091 lt!1500512)))) (originalCharacters!8153 (_1!25188 (get!15091 lt!1500512)))))))

(declare-fun b!4216320 () Bool)

(declare-fun lt!1500511 () Option!9959)

(declare-fun lt!1500513 () Option!9959)

(assert (=> b!4216320 (= e!2617581 (ite (and (is-None!9958 lt!1500511) (is-None!9958 lt!1500513)) None!9958 (ite (is-None!9958 lt!1500513) lt!1500511 (ite (is-None!9958 lt!1500511) lt!1500513 (ite (>= (size!34056 (_1!25188 (v!40840 lt!1500511))) (size!34056 (_1!25188 (v!40840 lt!1500513)))) lt!1500511 lt!1500513)))))))

(declare-fun call!293018 () Option!9959)

(assert (=> b!4216320 (= lt!1500511 call!293018)))

(assert (=> b!4216320 (= lt!1500513 (maxPrefix!4406 thiss!26544 (t!348401 rules!3967) input!3517))))

(declare-fun bm!293013 () Bool)

(assert (=> bm!293013 (= call!293018 (maxPrefixOneRule!3361 thiss!26544 (h!51798 rules!3967) input!3517))))

(declare-fun b!4216321 () Bool)

(assert (=> b!4216321 (= e!2617581 call!293018)))

(declare-fun b!4216322 () Bool)

(declare-fun res!1732690 () Bool)

(assert (=> b!4216322 (=> (not res!1732690) (not e!2617580))))

(assert (=> b!4216322 (= res!1732690 (< (size!34058 (_2!25188 (get!15091 lt!1500512))) (size!34058 input!3517)))))

(declare-fun b!4216323 () Bool)

(declare-fun res!1732686 () Bool)

(assert (=> b!4216323 (=> (not res!1732686) (not e!2617580))))

(assert (=> b!4216323 (= res!1732686 (= (++!11845 (list!16776 (charsOf!5194 (_1!25188 (get!15091 lt!1500512)))) (_2!25188 (get!15091 lt!1500512))) input!3517))))

(declare-fun b!4216324 () Bool)

(declare-fun res!1732687 () Bool)

(assert (=> b!4216324 (=> (not res!1732687) (not e!2617580))))

(assert (=> b!4216324 (= res!1732687 (matchR!6375 (regex!7771 (rule!10897 (_1!25188 (get!15091 lt!1500512)))) (list!16776 (charsOf!5194 (_1!25188 (get!15091 lt!1500512))))))))

(assert (= (and d!1242046 c!717786) b!4216321))

(assert (= (and d!1242046 (not c!717786)) b!4216320))

(assert (= (or b!4216321 b!4216320) bm!293013))

(assert (= (and d!1242046 (not res!1732689)) b!4216317))

(assert (= (and b!4216317 res!1732685) b!4216319))

(assert (= (and b!4216319 res!1732684) b!4216322))

(assert (= (and b!4216322 res!1732690) b!4216323))

(assert (= (and b!4216323 res!1732686) b!4216316))

(assert (= (and b!4216316 res!1732688) b!4216324))

(assert (= (and b!4216324 res!1732687) b!4216318))

(declare-fun m!4804417 () Bool)

(assert (=> b!4216317 m!4804417))

(assert (=> bm!293013 m!4804195))

(declare-fun m!4804419 () Bool)

(assert (=> b!4216319 m!4804419))

(declare-fun m!4804421 () Bool)

(assert (=> b!4216319 m!4804421))

(assert (=> b!4216319 m!4804421))

(declare-fun m!4804423 () Bool)

(assert (=> b!4216319 m!4804423))

(assert (=> b!4216316 m!4804419))

(declare-fun m!4804425 () Bool)

(assert (=> b!4216316 m!4804425))

(assert (=> b!4216316 m!4804425))

(declare-fun m!4804427 () Bool)

(assert (=> b!4216316 m!4804427))

(assert (=> b!4216318 m!4804419))

(declare-fun m!4804429 () Bool)

(assert (=> b!4216318 m!4804429))

(assert (=> b!4216324 m!4804419))

(assert (=> b!4216324 m!4804421))

(assert (=> b!4216324 m!4804421))

(assert (=> b!4216324 m!4804423))

(assert (=> b!4216324 m!4804423))

(declare-fun m!4804431 () Bool)

(assert (=> b!4216324 m!4804431))

(assert (=> b!4216320 m!4804167))

(assert (=> b!4216323 m!4804419))

(assert (=> b!4216323 m!4804421))

(assert (=> b!4216323 m!4804421))

(assert (=> b!4216323 m!4804423))

(assert (=> b!4216323 m!4804423))

(declare-fun m!4804433 () Bool)

(assert (=> b!4216323 m!4804433))

(declare-fun m!4804435 () Bool)

(assert (=> d!1242046 m!4804435))

(assert (=> d!1242046 m!4804221))

(assert (=> d!1242046 m!4804223))

(declare-fun m!4804437 () Bool)

(assert (=> d!1242046 m!4804437))

(assert (=> b!4216322 m!4804419))

(declare-fun m!4804439 () Bool)

(assert (=> b!4216322 m!4804439))

(assert (=> b!4216322 m!4804319))

(assert (=> b!4216088 d!1242046))

(declare-fun b!4216328 () Bool)

(declare-fun e!2617584 () Bool)

(assert (=> b!4216328 (= e!2617584 (>= (size!34058 input!3517) (size!34058 pBis!121)))))

(declare-fun b!4216327 () Bool)

(declare-fun e!2617585 () Bool)

(assert (=> b!4216327 (= e!2617585 (isPrefix!4630 (tail!6792 pBis!121) (tail!6792 input!3517)))))

(declare-fun b!4216325 () Bool)

(declare-fun e!2617583 () Bool)

(assert (=> b!4216325 (= e!2617583 e!2617585)))

(declare-fun res!1732691 () Bool)

(assert (=> b!4216325 (=> (not res!1732691) (not e!2617585))))

(assert (=> b!4216325 (= res!1732691 (not (is-Nil!46377 input!3517)))))

(declare-fun b!4216326 () Bool)

(declare-fun res!1732693 () Bool)

(assert (=> b!4216326 (=> (not res!1732693) (not e!2617585))))

(assert (=> b!4216326 (= res!1732693 (= (head!8945 pBis!121) (head!8945 input!3517)))))

(declare-fun d!1242048 () Bool)

(assert (=> d!1242048 e!2617584))

(declare-fun res!1732694 () Bool)

(assert (=> d!1242048 (=> res!1732694 e!2617584)))

(declare-fun lt!1500516 () Bool)

(assert (=> d!1242048 (= res!1732694 (not lt!1500516))))

(assert (=> d!1242048 (= lt!1500516 e!2617583)))

(declare-fun res!1732692 () Bool)

(assert (=> d!1242048 (=> res!1732692 e!2617583)))

(assert (=> d!1242048 (= res!1732692 (is-Nil!46377 pBis!121))))

(assert (=> d!1242048 (= (isPrefix!4630 pBis!121 input!3517) lt!1500516)))

(assert (= (and d!1242048 (not res!1732692)) b!4216325))

(assert (= (and b!4216325 res!1732691) b!4216326))

(assert (= (and b!4216326 res!1732693) b!4216327))

(assert (= (and d!1242048 (not res!1732694)) b!4216328))

(assert (=> b!4216328 m!4804319))

(declare-fun m!4804441 () Bool)

(assert (=> b!4216328 m!4804441))

(declare-fun m!4804443 () Bool)

(assert (=> b!4216327 m!4804443))

(assert (=> b!4216327 m!4804325))

(assert (=> b!4216327 m!4804443))

(assert (=> b!4216327 m!4804325))

(declare-fun m!4804445 () Bool)

(assert (=> b!4216327 m!4804445))

(declare-fun m!4804447 () Bool)

(assert (=> b!4216326 m!4804447))

(assert (=> b!4216326 m!4804331))

(assert (=> b!4216086 d!1242048))

(declare-fun d!1242050 () Bool)

(assert (=> d!1242050 (= (inv!61015 (tag!8635 rBis!178)) (= (mod (str.len (value!242003 (tag!8635 rBis!178))) 2) 0))))

(assert (=> b!4216107 d!1242050))

(declare-fun d!1242052 () Bool)

(declare-fun res!1732695 () Bool)

(declare-fun e!2617586 () Bool)

(assert (=> d!1242052 (=> (not res!1732695) (not e!2617586))))

(assert (=> d!1242052 (= res!1732695 (semiInverseModEq!3377 (toChars!10350 (transformation!7771 rBis!178)) (toValue!10491 (transformation!7771 rBis!178))))))

(assert (=> d!1242052 (= (inv!61018 (transformation!7771 rBis!178)) e!2617586)))

(declare-fun b!4216329 () Bool)

(assert (=> b!4216329 (= e!2617586 (equivClasses!3276 (toChars!10350 (transformation!7771 rBis!178)) (toValue!10491 (transformation!7771 rBis!178))))))

(assert (= (and d!1242052 res!1732695) b!4216329))

(declare-fun m!4804449 () Bool)

(assert (=> d!1242052 m!4804449))

(declare-fun m!4804451 () Bool)

(assert (=> b!4216329 m!4804451))

(assert (=> b!4216107 d!1242052))

(declare-fun d!1242054 () Bool)

(assert (=> d!1242054 (= (list!16776 (charsOf!5194 tBis!41)) (list!16778 (c!717767 (charsOf!5194 tBis!41))))))

(declare-fun bs!597525 () Bool)

(assert (= bs!597525 d!1242054))

(declare-fun m!4804453 () Bool)

(assert (=> bs!597525 m!4804453))

(assert (=> b!4216108 d!1242054))

(declare-fun d!1242056 () Bool)

(declare-fun lt!1500517 () BalanceConc!27558)

(assert (=> d!1242056 (= (list!16776 lt!1500517) (originalCharacters!8153 tBis!41))))

(assert (=> d!1242056 (= lt!1500517 (dynLambda!19981 (toChars!10350 (transformation!7771 (rule!10897 tBis!41))) (value!242004 tBis!41)))))

(assert (=> d!1242056 (= (charsOf!5194 tBis!41) lt!1500517)))

(declare-fun b_lambda!124205 () Bool)

(assert (=> (not b_lambda!124205) (not d!1242056)))

(declare-fun tb!253107 () Bool)

(declare-fun t!348414 () Bool)

(assert (=> (and b!4216094 (= (toChars!10350 (transformation!7771 (rule!10897 t!8364))) (toChars!10350 (transformation!7771 (rule!10897 tBis!41)))) t!348414) tb!253107))

(declare-fun b!4216330 () Bool)

(declare-fun e!2617587 () Bool)

(declare-fun tp!1289748 () Bool)

(assert (=> b!4216330 (= e!2617587 (and (inv!61022 (c!717767 (dynLambda!19981 (toChars!10350 (transformation!7771 (rule!10897 tBis!41))) (value!242004 tBis!41)))) tp!1289748))))

(declare-fun result!308502 () Bool)

(assert (=> tb!253107 (= result!308502 (and (inv!61023 (dynLambda!19981 (toChars!10350 (transformation!7771 (rule!10897 tBis!41))) (value!242004 tBis!41))) e!2617587))))

(assert (= tb!253107 b!4216330))

(declare-fun m!4804455 () Bool)

(assert (=> b!4216330 m!4804455))

(declare-fun m!4804457 () Bool)

(assert (=> tb!253107 m!4804457))

(assert (=> d!1242056 t!348414))

(declare-fun b_and!332197 () Bool)

(assert (= b_and!332189 (and (=> t!348414 result!308502) b_and!332197)))

(declare-fun t!348416 () Bool)

(declare-fun tb!253109 () Bool)

(assert (=> (and b!4216093 (= (toChars!10350 (transformation!7771 (h!51798 rules!3967))) (toChars!10350 (transformation!7771 (rule!10897 tBis!41)))) t!348416) tb!253109))

(declare-fun result!308504 () Bool)

(assert (= result!308504 result!308502))

(assert (=> d!1242056 t!348416))

(declare-fun b_and!332199 () Bool)

(assert (= b_and!332191 (and (=> t!348416 result!308504) b_and!332199)))

(declare-fun t!348418 () Bool)

(declare-fun tb!253111 () Bool)

(assert (=> (and b!4216082 (= (toChars!10350 (transformation!7771 rBis!178)) (toChars!10350 (transformation!7771 (rule!10897 tBis!41)))) t!348418) tb!253111))

(declare-fun result!308506 () Bool)

(assert (= result!308506 result!308502))

(assert (=> d!1242056 t!348418))

(declare-fun b_and!332201 () Bool)

(assert (= b_and!332193 (and (=> t!348418 result!308506) b_and!332201)))

(declare-fun t!348420 () Bool)

(declare-fun tb!253113 () Bool)

(assert (=> (and b!4216091 (= (toChars!10350 (transformation!7771 (rule!10897 tBis!41))) (toChars!10350 (transformation!7771 (rule!10897 tBis!41)))) t!348420) tb!253113))

(declare-fun result!308508 () Bool)

(assert (= result!308508 result!308502))

(assert (=> d!1242056 t!348420))

(declare-fun b_and!332203 () Bool)

(assert (= b_and!332195 (and (=> t!348420 result!308508) b_and!332203)))

(declare-fun m!4804459 () Bool)

(assert (=> d!1242056 m!4804459))

(declare-fun m!4804461 () Bool)

(assert (=> d!1242056 m!4804461))

(assert (=> b!4216108 d!1242056))

(declare-fun b!4216331 () Bool)

(declare-fun e!2617588 () Bool)

(assert (=> b!4216331 (= e!2617588 (inv!16 (value!242004 t!8364)))))

(declare-fun b!4216332 () Bool)

(declare-fun res!1732696 () Bool)

(declare-fun e!2617590 () Bool)

(assert (=> b!4216332 (=> res!1732696 e!2617590)))

(assert (=> b!4216332 (= res!1732696 (not (is-IntegerValue!24005 (value!242004 t!8364))))))

(declare-fun e!2617589 () Bool)

(assert (=> b!4216332 (= e!2617589 e!2617590)))

(declare-fun b!4216333 () Bool)

(assert (=> b!4216333 (= e!2617588 e!2617589)))

(declare-fun c!717788 () Bool)

(assert (=> b!4216333 (= c!717788 (is-IntegerValue!24004 (value!242004 t!8364)))))

(declare-fun d!1242058 () Bool)

(declare-fun c!717787 () Bool)

(assert (=> d!1242058 (= c!717787 (is-IntegerValue!24003 (value!242004 t!8364)))))

(assert (=> d!1242058 (= (inv!21 (value!242004 t!8364)) e!2617588)))

(declare-fun b!4216334 () Bool)

(assert (=> b!4216334 (= e!2617590 (inv!15 (value!242004 t!8364)))))

(declare-fun b!4216335 () Bool)

(assert (=> b!4216335 (= e!2617589 (inv!17 (value!242004 t!8364)))))

(assert (= (and d!1242058 c!717787) b!4216331))

(assert (= (and d!1242058 (not c!717787)) b!4216333))

(assert (= (and b!4216333 c!717788) b!4216335))

(assert (= (and b!4216333 (not c!717788)) b!4216332))

(assert (= (and b!4216332 (not res!1732696)) b!4216334))

(declare-fun m!4804463 () Bool)

(assert (=> b!4216331 m!4804463))

(declare-fun m!4804465 () Bool)

(assert (=> b!4216334 m!4804465))

(declare-fun m!4804467 () Bool)

(assert (=> b!4216335 m!4804467))

(assert (=> b!4216090 d!1242058))

(declare-fun d!1242060 () Bool)

(assert (=> d!1242060 (= (isEmpty!27472 rules!3967) (is-Nil!46378 rules!3967))))

(assert (=> b!4216111 d!1242060))

(declare-fun d!1242062 () Bool)

(declare-fun res!1732701 () Bool)

(declare-fun e!2617593 () Bool)

(assert (=> d!1242062 (=> (not res!1732701) (not e!2617593))))

(declare-fun validRegex!5754 (Regex!12676) Bool)

(assert (=> d!1242062 (= res!1732701 (validRegex!5754 (regex!7771 rBis!178)))))

(assert (=> d!1242062 (= (ruleValid!3483 thiss!26544 rBis!178) e!2617593)))

(declare-fun b!4216340 () Bool)

(declare-fun res!1732702 () Bool)

(assert (=> b!4216340 (=> (not res!1732702) (not e!2617593))))

(declare-fun nullable!4467 (Regex!12676) Bool)

(assert (=> b!4216340 (= res!1732702 (not (nullable!4467 (regex!7771 rBis!178))))))

(declare-fun b!4216341 () Bool)

(assert (=> b!4216341 (= e!2617593 (not (= (tag!8635 rBis!178) (String!53878 ""))))))

(assert (= (and d!1242062 res!1732701) b!4216340))

(assert (= (and b!4216340 res!1732702) b!4216341))

(declare-fun m!4804469 () Bool)

(assert (=> d!1242062 m!4804469))

(declare-fun m!4804471 () Bool)

(assert (=> b!4216340 m!4804471))

(assert (=> b!4216112 d!1242062))

(declare-fun b!4216343 () Bool)

(declare-fun e!2617594 () List!46501)

(assert (=> b!4216343 (= e!2617594 (Cons!46377 (h!51797 pBis!121) (++!11845 (t!348400 pBis!121) suffixBis!41)))))

(declare-fun b!4216345 () Bool)

(declare-fun lt!1500518 () List!46501)

(declare-fun e!2617595 () Bool)

(assert (=> b!4216345 (= e!2617595 (or (not (= suffixBis!41 Nil!46377)) (= lt!1500518 pBis!121)))))

(declare-fun b!4216344 () Bool)

(declare-fun res!1732704 () Bool)

(assert (=> b!4216344 (=> (not res!1732704) (not e!2617595))))

(assert (=> b!4216344 (= res!1732704 (= (size!34058 lt!1500518) (+ (size!34058 pBis!121) (size!34058 suffixBis!41))))))

(declare-fun d!1242064 () Bool)

(assert (=> d!1242064 e!2617595))

(declare-fun res!1732703 () Bool)

(assert (=> d!1242064 (=> (not res!1732703) (not e!2617595))))

(assert (=> d!1242064 (= res!1732703 (= (content!7270 lt!1500518) (set.union (content!7270 pBis!121) (content!7270 suffixBis!41))))))

(assert (=> d!1242064 (= lt!1500518 e!2617594)))

(declare-fun c!717789 () Bool)

(assert (=> d!1242064 (= c!717789 (is-Nil!46377 pBis!121))))

(assert (=> d!1242064 (= (++!11845 pBis!121 suffixBis!41) lt!1500518)))

(declare-fun b!4216342 () Bool)

(assert (=> b!4216342 (= e!2617594 suffixBis!41)))

(assert (= (and d!1242064 c!717789) b!4216342))

(assert (= (and d!1242064 (not c!717789)) b!4216343))

(assert (= (and d!1242064 res!1732703) b!4216344))

(assert (= (and b!4216344 res!1732704) b!4216345))

(declare-fun m!4804473 () Bool)

(assert (=> b!4216343 m!4804473))

(declare-fun m!4804475 () Bool)

(assert (=> b!4216344 m!4804475))

(assert (=> b!4216344 m!4804441))

(declare-fun m!4804477 () Bool)

(assert (=> b!4216344 m!4804477))

(declare-fun m!4804479 () Bool)

(assert (=> d!1242064 m!4804479))

(declare-fun m!4804481 () Bool)

(assert (=> d!1242064 m!4804481))

(declare-fun m!4804483 () Bool)

(assert (=> d!1242064 m!4804483))

(assert (=> b!4216114 d!1242064))

(declare-fun d!1242066 () Bool)

(declare-fun res!1732709 () Bool)

(declare-fun e!2617598 () Bool)

(assert (=> d!1242066 (=> (not res!1732709) (not e!2617598))))

(declare-fun isEmpty!27476 (List!46501) Bool)

(assert (=> d!1242066 (= res!1732709 (not (isEmpty!27476 (originalCharacters!8153 tBis!41))))))

(assert (=> d!1242066 (= (inv!61019 tBis!41) e!2617598)))

(declare-fun b!4216350 () Bool)

(declare-fun res!1732710 () Bool)

(assert (=> b!4216350 (=> (not res!1732710) (not e!2617598))))

(assert (=> b!4216350 (= res!1732710 (= (originalCharacters!8153 tBis!41) (list!16776 (dynLambda!19981 (toChars!10350 (transformation!7771 (rule!10897 tBis!41))) (value!242004 tBis!41)))))))

(declare-fun b!4216351 () Bool)

(assert (=> b!4216351 (= e!2617598 (= (size!34056 tBis!41) (size!34058 (originalCharacters!8153 tBis!41))))))

(assert (= (and d!1242066 res!1732709) b!4216350))

(assert (= (and b!4216350 res!1732710) b!4216351))

(declare-fun b_lambda!124207 () Bool)

(assert (=> (not b_lambda!124207) (not b!4216350)))

(assert (=> b!4216350 t!348414))

(declare-fun b_and!332205 () Bool)

(assert (= b_and!332197 (and (=> t!348414 result!308502) b_and!332205)))

(assert (=> b!4216350 t!348416))

(declare-fun b_and!332207 () Bool)

(assert (= b_and!332199 (and (=> t!348416 result!308504) b_and!332207)))

(assert (=> b!4216350 t!348418))

(declare-fun b_and!332209 () Bool)

(assert (= b_and!332201 (and (=> t!348418 result!308506) b_and!332209)))

(assert (=> b!4216350 t!348420))

(declare-fun b_and!332211 () Bool)

(assert (= b_and!332203 (and (=> t!348420 result!308508) b_and!332211)))

(declare-fun m!4804485 () Bool)

(assert (=> d!1242066 m!4804485))

(assert (=> b!4216350 m!4804461))

(assert (=> b!4216350 m!4804461))

(declare-fun m!4804487 () Bool)

(assert (=> b!4216350 m!4804487))

(declare-fun m!4804489 () Bool)

(assert (=> b!4216351 m!4804489))

(assert (=> start!402948 d!1242066))

(declare-fun d!1242068 () Bool)

(declare-fun res!1732711 () Bool)

(declare-fun e!2617599 () Bool)

(assert (=> d!1242068 (=> (not res!1732711) (not e!2617599))))

(assert (=> d!1242068 (= res!1732711 (not (isEmpty!27476 (originalCharacters!8153 t!8364))))))

(assert (=> d!1242068 (= (inv!61019 t!8364) e!2617599)))

(declare-fun b!4216352 () Bool)

(declare-fun res!1732712 () Bool)

(assert (=> b!4216352 (=> (not res!1732712) (not e!2617599))))

(assert (=> b!4216352 (= res!1732712 (= (originalCharacters!8153 t!8364) (list!16776 (dynLambda!19981 (toChars!10350 (transformation!7771 (rule!10897 t!8364))) (value!242004 t!8364)))))))

(declare-fun b!4216353 () Bool)

(assert (=> b!4216353 (= e!2617599 (= (size!34056 t!8364) (size!34058 (originalCharacters!8153 t!8364))))))

(assert (= (and d!1242068 res!1732711) b!4216352))

(assert (= (and b!4216352 res!1732712) b!4216353))

(declare-fun b_lambda!124209 () Bool)

(assert (=> (not b_lambda!124209) (not b!4216352)))

(declare-fun t!348422 () Bool)

(declare-fun tb!253115 () Bool)

(assert (=> (and b!4216094 (= (toChars!10350 (transformation!7771 (rule!10897 t!8364))) (toChars!10350 (transformation!7771 (rule!10897 t!8364)))) t!348422) tb!253115))

(declare-fun b!4216354 () Bool)

(declare-fun e!2617600 () Bool)

(declare-fun tp!1289749 () Bool)

(assert (=> b!4216354 (= e!2617600 (and (inv!61022 (c!717767 (dynLambda!19981 (toChars!10350 (transformation!7771 (rule!10897 t!8364))) (value!242004 t!8364)))) tp!1289749))))

(declare-fun result!308510 () Bool)

(assert (=> tb!253115 (= result!308510 (and (inv!61023 (dynLambda!19981 (toChars!10350 (transformation!7771 (rule!10897 t!8364))) (value!242004 t!8364))) e!2617600))))

(assert (= tb!253115 b!4216354))

(declare-fun m!4804491 () Bool)

(assert (=> b!4216354 m!4804491))

(declare-fun m!4804493 () Bool)

(assert (=> tb!253115 m!4804493))

(assert (=> b!4216352 t!348422))

(declare-fun b_and!332213 () Bool)

(assert (= b_and!332205 (and (=> t!348422 result!308510) b_and!332213)))

(declare-fun tb!253117 () Bool)

(declare-fun t!348424 () Bool)

(assert (=> (and b!4216093 (= (toChars!10350 (transformation!7771 (h!51798 rules!3967))) (toChars!10350 (transformation!7771 (rule!10897 t!8364)))) t!348424) tb!253117))

(declare-fun result!308512 () Bool)

(assert (= result!308512 result!308510))

(assert (=> b!4216352 t!348424))

(declare-fun b_and!332215 () Bool)

(assert (= b_and!332207 (and (=> t!348424 result!308512) b_and!332215)))

(declare-fun tb!253119 () Bool)

(declare-fun t!348426 () Bool)

(assert (=> (and b!4216082 (= (toChars!10350 (transformation!7771 rBis!178)) (toChars!10350 (transformation!7771 (rule!10897 t!8364)))) t!348426) tb!253119))

(declare-fun result!308514 () Bool)

(assert (= result!308514 result!308510))

(assert (=> b!4216352 t!348426))

(declare-fun b_and!332217 () Bool)

(assert (= b_and!332209 (and (=> t!348426 result!308514) b_and!332217)))

(declare-fun tb!253121 () Bool)

(declare-fun t!348428 () Bool)

(assert (=> (and b!4216091 (= (toChars!10350 (transformation!7771 (rule!10897 tBis!41))) (toChars!10350 (transformation!7771 (rule!10897 t!8364)))) t!348428) tb!253121))

(declare-fun result!308516 () Bool)

(assert (= result!308516 result!308510))

(assert (=> b!4216352 t!348428))

(declare-fun b_and!332219 () Bool)

(assert (= b_and!332211 (and (=> t!348428 result!308516) b_and!332219)))

(declare-fun m!4804495 () Bool)

(assert (=> d!1242068 m!4804495))

(declare-fun m!4804497 () Bool)

(assert (=> b!4216352 m!4804497))

(assert (=> b!4216352 m!4804497))

(declare-fun m!4804499 () Bool)

(assert (=> b!4216352 m!4804499))

(declare-fun m!4804501 () Bool)

(assert (=> b!4216353 m!4804501))

(assert (=> start!402948 d!1242068))

(declare-fun d!1242070 () Bool)

(declare-fun lt!1500519 () Bool)

(assert (=> d!1242070 (= lt!1500519 (set.member rBis!178 (content!7271 (t!348401 rules!3967))))))

(declare-fun e!2617601 () Bool)

(assert (=> d!1242070 (= lt!1500519 e!2617601)))

(declare-fun res!1732714 () Bool)

(assert (=> d!1242070 (=> (not res!1732714) (not e!2617601))))

(assert (=> d!1242070 (= res!1732714 (is-Cons!46378 (t!348401 rules!3967)))))

(assert (=> d!1242070 (= (contains!9592 (t!348401 rules!3967) rBis!178) lt!1500519)))

(declare-fun b!4216355 () Bool)

(declare-fun e!2617602 () Bool)

(assert (=> b!4216355 (= e!2617601 e!2617602)))

(declare-fun res!1732713 () Bool)

(assert (=> b!4216355 (=> res!1732713 e!2617602)))

(assert (=> b!4216355 (= res!1732713 (= (h!51798 (t!348401 rules!3967)) rBis!178))))

(declare-fun b!4216356 () Bool)

(assert (=> b!4216356 (= e!2617602 (contains!9592 (t!348401 (t!348401 rules!3967)) rBis!178))))

(assert (= (and d!1242070 res!1732714) b!4216355))

(assert (= (and b!4216355 (not res!1732713)) b!4216356))

(declare-fun m!4804503 () Bool)

(assert (=> d!1242070 m!4804503))

(declare-fun m!4804505 () Bool)

(assert (=> d!1242070 m!4804505))

(declare-fun m!4804507 () Bool)

(assert (=> b!4216356 m!4804507))

(assert (=> b!4216092 d!1242070))

(declare-fun d!1242072 () Bool)

(assert (=> d!1242072 (= (inv!61015 (tag!8635 (h!51798 rules!3967))) (= (mod (str.len (value!242003 (tag!8635 (h!51798 rules!3967)))) 2) 0))))

(assert (=> b!4216113 d!1242072))

(declare-fun d!1242074 () Bool)

(declare-fun res!1732715 () Bool)

(declare-fun e!2617603 () Bool)

(assert (=> d!1242074 (=> (not res!1732715) (not e!2617603))))

(assert (=> d!1242074 (= res!1732715 (semiInverseModEq!3377 (toChars!10350 (transformation!7771 (h!51798 rules!3967))) (toValue!10491 (transformation!7771 (h!51798 rules!3967)))))))

(assert (=> d!1242074 (= (inv!61018 (transformation!7771 (h!51798 rules!3967))) e!2617603)))

(declare-fun b!4216357 () Bool)

(assert (=> b!4216357 (= e!2617603 (equivClasses!3276 (toChars!10350 (transformation!7771 (h!51798 rules!3967))) (toValue!10491 (transformation!7771 (h!51798 rules!3967)))))))

(assert (= (and d!1242074 res!1732715) b!4216357))

(declare-fun m!4804509 () Bool)

(assert (=> d!1242074 m!4804509))

(declare-fun m!4804511 () Bool)

(assert (=> b!4216357 m!4804511))

(assert (=> b!4216113 d!1242074))

(declare-fun d!1242076 () Bool)

(assert (=> d!1242076 (= (inv!61015 (tag!8635 (rule!10897 t!8364))) (= (mod (str.len (value!242003 (tag!8635 (rule!10897 t!8364)))) 2) 0))))

(assert (=> b!4216095 d!1242076))

(declare-fun d!1242078 () Bool)

(declare-fun res!1732716 () Bool)

(declare-fun e!2617604 () Bool)

(assert (=> d!1242078 (=> (not res!1732716) (not e!2617604))))

(assert (=> d!1242078 (= res!1732716 (semiInverseModEq!3377 (toChars!10350 (transformation!7771 (rule!10897 t!8364))) (toValue!10491 (transformation!7771 (rule!10897 t!8364)))))))

(assert (=> d!1242078 (= (inv!61018 (transformation!7771 (rule!10897 t!8364))) e!2617604)))

(declare-fun b!4216358 () Bool)

(assert (=> b!4216358 (= e!2617604 (equivClasses!3276 (toChars!10350 (transformation!7771 (rule!10897 t!8364))) (toValue!10491 (transformation!7771 (rule!10897 t!8364)))))))

(assert (= (and d!1242078 res!1732716) b!4216358))

(declare-fun m!4804513 () Bool)

(assert (=> d!1242078 m!4804513))

(declare-fun m!4804515 () Bool)

(assert (=> b!4216358 m!4804515))

(assert (=> b!4216095 d!1242078))

(declare-fun b!4216360 () Bool)

(declare-fun e!2617605 () List!46501)

(assert (=> b!4216360 (= e!2617605 (Cons!46377 (h!51797 p!3001) (++!11845 (t!348400 p!3001) suffix!1557)))))

(declare-fun lt!1500520 () List!46501)

(declare-fun e!2617606 () Bool)

(declare-fun b!4216362 () Bool)

(assert (=> b!4216362 (= e!2617606 (or (not (= suffix!1557 Nil!46377)) (= lt!1500520 p!3001)))))

(declare-fun b!4216361 () Bool)

(declare-fun res!1732718 () Bool)

(assert (=> b!4216361 (=> (not res!1732718) (not e!2617606))))

(assert (=> b!4216361 (= res!1732718 (= (size!34058 lt!1500520) (+ (size!34058 p!3001) (size!34058 suffix!1557))))))

(declare-fun d!1242080 () Bool)

(assert (=> d!1242080 e!2617606))

(declare-fun res!1732717 () Bool)

(assert (=> d!1242080 (=> (not res!1732717) (not e!2617606))))

(assert (=> d!1242080 (= res!1732717 (= (content!7270 lt!1500520) (set.union (content!7270 p!3001) (content!7270 suffix!1557))))))

(assert (=> d!1242080 (= lt!1500520 e!2617605)))

(declare-fun c!717790 () Bool)

(assert (=> d!1242080 (= c!717790 (is-Nil!46377 p!3001))))

(assert (=> d!1242080 (= (++!11845 p!3001 suffix!1557) lt!1500520)))

(declare-fun b!4216359 () Bool)

(assert (=> b!4216359 (= e!2617605 suffix!1557)))

(assert (= (and d!1242080 c!717790) b!4216359))

(assert (= (and d!1242080 (not c!717790)) b!4216360))

(assert (= (and d!1242080 res!1732717) b!4216361))

(assert (= (and b!4216361 res!1732718) b!4216362))

(declare-fun m!4804517 () Bool)

(assert (=> b!4216360 m!4804517))

(declare-fun m!4804519 () Bool)

(assert (=> b!4216361 m!4804519))

(declare-fun m!4804521 () Bool)

(assert (=> b!4216361 m!4804521))

(declare-fun m!4804523 () Bool)

(assert (=> b!4216361 m!4804523))

(declare-fun m!4804525 () Bool)

(assert (=> d!1242080 m!4804525))

(declare-fun m!4804527 () Bool)

(assert (=> d!1242080 m!4804527))

(declare-fun m!4804529 () Bool)

(assert (=> d!1242080 m!4804529))

(assert (=> b!4216098 d!1242080))

(declare-fun b!4216399 () Bool)

(declare-fun e!2617621 () Bool)

(declare-fun e!2617622 () Bool)

(assert (=> b!4216399 (= e!2617621 e!2617622)))

(declare-fun res!1732753 () Bool)

(assert (=> b!4216399 (=> (not res!1732753) (not e!2617622))))

(declare-fun lt!1500544 () Option!9959)

(assert (=> b!4216399 (= res!1732753 (matchR!6375 (regex!7771 rBis!178) (list!16776 (charsOf!5194 (_1!25188 (get!15091 lt!1500544))))))))

(declare-fun b!4216400 () Bool)

(declare-fun res!1732751 () Bool)

(assert (=> b!4216400 (=> (not res!1732751) (not e!2617622))))

(assert (=> b!4216400 (= res!1732751 (= (++!11845 (list!16776 (charsOf!5194 (_1!25188 (get!15091 lt!1500544)))) (_2!25188 (get!15091 lt!1500544))) input!3517))))

(declare-fun b!4216401 () Bool)

(declare-fun e!2617624 () Option!9959)

(assert (=> b!4216401 (= e!2617624 None!9958)))

(declare-fun b!4216402 () Bool)

(declare-fun res!1732749 () Bool)

(assert (=> b!4216402 (=> (not res!1732749) (not e!2617622))))

(assert (=> b!4216402 (= res!1732749 (= (rule!10897 (_1!25188 (get!15091 lt!1500544))) rBis!178))))

(declare-fun b!4216403 () Bool)

(declare-fun res!1732748 () Bool)

(assert (=> b!4216403 (=> (not res!1732748) (not e!2617622))))

(assert (=> b!4216403 (= res!1732748 (= (value!242004 (_1!25188 (get!15091 lt!1500544))) (apply!10696 (transformation!7771 (rule!10897 (_1!25188 (get!15091 lt!1500544)))) (seqFromList!5756 (originalCharacters!8153 (_1!25188 (get!15091 lt!1500544)))))))))

(declare-fun d!1242082 () Bool)

(assert (=> d!1242082 e!2617621))

(declare-fun res!1732747 () Bool)

(assert (=> d!1242082 (=> res!1732747 e!2617621)))

(assert (=> d!1242082 (= res!1732747 (isEmpty!27473 lt!1500544))))

(assert (=> d!1242082 (= lt!1500544 e!2617624)))

(declare-fun c!717795 () Bool)

(declare-datatypes ((tuple2!44112 0))(
  ( (tuple2!44113 (_1!25190 List!46501) (_2!25190 List!46501)) )
))
(declare-fun lt!1500545 () tuple2!44112)

(assert (=> d!1242082 (= c!717795 (isEmpty!27476 (_1!25190 lt!1500545)))))

(declare-fun findLongestMatch!1569 (Regex!12676 List!46501) tuple2!44112)

(assert (=> d!1242082 (= lt!1500545 (findLongestMatch!1569 (regex!7771 rBis!178) input!3517))))

(assert (=> d!1242082 (ruleValid!3483 thiss!26544 rBis!178)))

(assert (=> d!1242082 (= (maxPrefixOneRule!3361 thiss!26544 rBis!178 input!3517) lt!1500544)))

(declare-fun b!4216404 () Bool)

(declare-fun res!1732752 () Bool)

(assert (=> b!4216404 (=> (not res!1732752) (not e!2617622))))

(assert (=> b!4216404 (= res!1732752 (< (size!34058 (_2!25188 (get!15091 lt!1500544))) (size!34058 input!3517)))))

(declare-fun b!4216405 () Bool)

(declare-fun size!34059 (BalanceConc!27558) Int)

(assert (=> b!4216405 (= e!2617624 (Some!9958 (tuple2!44109 (Token!14245 (apply!10696 (transformation!7771 rBis!178) (seqFromList!5756 (_1!25190 lt!1500545))) rBis!178 (size!34059 (seqFromList!5756 (_1!25190 lt!1500545))) (_1!25190 lt!1500545)) (_2!25190 lt!1500545))))))

(declare-fun lt!1500541 () Unit!65518)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1629 (Regex!12676 List!46501) Unit!65518)

(assert (=> b!4216405 (= lt!1500541 (longestMatchIsAcceptedByMatchOrIsEmpty!1629 (regex!7771 rBis!178) input!3517))))

(declare-fun res!1732750 () Bool)

(declare-fun findLongestMatchInner!1656 (Regex!12676 List!46501 Int List!46501 List!46501 Int) tuple2!44112)

(assert (=> b!4216405 (= res!1732750 (isEmpty!27476 (_1!25190 (findLongestMatchInner!1656 (regex!7771 rBis!178) Nil!46377 (size!34058 Nil!46377) input!3517 input!3517 (size!34058 input!3517)))))))

(declare-fun e!2617623 () Bool)

(assert (=> b!4216405 (=> res!1732750 e!2617623)))

(assert (=> b!4216405 e!2617623))

(declare-fun lt!1500543 () Unit!65518)

(assert (=> b!4216405 (= lt!1500543 lt!1500541)))

(declare-fun lt!1500542 () Unit!65518)

(declare-fun lemmaSemiInverse!2497 (TokenValueInjection!15430 BalanceConc!27558) Unit!65518)

(assert (=> b!4216405 (= lt!1500542 (lemmaSemiInverse!2497 (transformation!7771 rBis!178) (seqFromList!5756 (_1!25190 lt!1500545))))))

(declare-fun b!4216406 () Bool)

(assert (=> b!4216406 (= e!2617623 (matchR!6375 (regex!7771 rBis!178) (_1!25190 (findLongestMatchInner!1656 (regex!7771 rBis!178) Nil!46377 (size!34058 Nil!46377) input!3517 input!3517 (size!34058 input!3517)))))))

(declare-fun b!4216407 () Bool)

(assert (=> b!4216407 (= e!2617622 (= (size!34056 (_1!25188 (get!15091 lt!1500544))) (size!34058 (originalCharacters!8153 (_1!25188 (get!15091 lt!1500544))))))))

(assert (= (and d!1242082 c!717795) b!4216401))

(assert (= (and d!1242082 (not c!717795)) b!4216405))

(assert (= (and b!4216405 (not res!1732750)) b!4216406))

(assert (= (and d!1242082 (not res!1732747)) b!4216399))

(assert (= (and b!4216399 res!1732753) b!4216400))

(assert (= (and b!4216400 res!1732751) b!4216404))

(assert (= (and b!4216404 res!1732752) b!4216402))

(assert (= (and b!4216402 res!1732749) b!4216403))

(assert (= (and b!4216403 res!1732748) b!4216407))

(declare-fun m!4804531 () Bool)

(assert (=> b!4216405 m!4804531))

(declare-fun m!4804533 () Bool)

(assert (=> b!4216405 m!4804533))

(declare-fun m!4804535 () Bool)

(assert (=> b!4216405 m!4804535))

(assert (=> b!4216405 m!4804319))

(declare-fun m!4804537 () Bool)

(assert (=> b!4216405 m!4804537))

(assert (=> b!4216405 m!4804531))

(declare-fun m!4804539 () Bool)

(assert (=> b!4216405 m!4804539))

(assert (=> b!4216405 m!4804531))

(declare-fun m!4804541 () Bool)

(assert (=> b!4216405 m!4804541))

(assert (=> b!4216405 m!4804539))

(assert (=> b!4216405 m!4804319))

(declare-fun m!4804543 () Bool)

(assert (=> b!4216405 m!4804543))

(assert (=> b!4216405 m!4804531))

(declare-fun m!4804545 () Bool)

(assert (=> b!4216405 m!4804545))

(declare-fun m!4804547 () Bool)

(assert (=> b!4216407 m!4804547))

(declare-fun m!4804549 () Bool)

(assert (=> b!4216407 m!4804549))

(assert (=> b!4216400 m!4804547))

(declare-fun m!4804551 () Bool)

(assert (=> b!4216400 m!4804551))

(assert (=> b!4216400 m!4804551))

(declare-fun m!4804553 () Bool)

(assert (=> b!4216400 m!4804553))

(assert (=> b!4216400 m!4804553))

(declare-fun m!4804555 () Bool)

(assert (=> b!4216400 m!4804555))

(assert (=> b!4216406 m!4804539))

(assert (=> b!4216406 m!4804319))

(assert (=> b!4216406 m!4804539))

(assert (=> b!4216406 m!4804319))

(assert (=> b!4216406 m!4804543))

(declare-fun m!4804557 () Bool)

(assert (=> b!4216406 m!4804557))

(assert (=> b!4216399 m!4804547))

(assert (=> b!4216399 m!4804551))

(assert (=> b!4216399 m!4804551))

(assert (=> b!4216399 m!4804553))

(assert (=> b!4216399 m!4804553))

(declare-fun m!4804559 () Bool)

(assert (=> b!4216399 m!4804559))

(assert (=> b!4216402 m!4804547))

(assert (=> b!4216403 m!4804547))

(declare-fun m!4804561 () Bool)

(assert (=> b!4216403 m!4804561))

(assert (=> b!4216403 m!4804561))

(declare-fun m!4804563 () Bool)

(assert (=> b!4216403 m!4804563))

(assert (=> b!4216404 m!4804547))

(declare-fun m!4804565 () Bool)

(assert (=> b!4216404 m!4804565))

(assert (=> b!4216404 m!4804319))

(declare-fun m!4804567 () Bool)

(assert (=> d!1242082 m!4804567))

(declare-fun m!4804569 () Bool)

(assert (=> d!1242082 m!4804569))

(declare-fun m!4804571 () Bool)

(assert (=> d!1242082 m!4804571))

(assert (=> d!1242082 m!4804229))

(assert (=> b!4216097 d!1242082))

(declare-fun b!4216411 () Bool)

(declare-fun e!2617626 () Bool)

(assert (=> b!4216411 (= e!2617626 (>= (size!34058 input!3517) (size!34058 input!3517)))))

(declare-fun b!4216410 () Bool)

(declare-fun e!2617627 () Bool)

(assert (=> b!4216410 (= e!2617627 (isPrefix!4630 (tail!6792 input!3517) (tail!6792 input!3517)))))

(declare-fun b!4216408 () Bool)

(declare-fun e!2617625 () Bool)

(assert (=> b!4216408 (= e!2617625 e!2617627)))

(declare-fun res!1732754 () Bool)

(assert (=> b!4216408 (=> (not res!1732754) (not e!2617627))))

(assert (=> b!4216408 (= res!1732754 (not (is-Nil!46377 input!3517)))))

(declare-fun b!4216409 () Bool)

(declare-fun res!1732756 () Bool)

(assert (=> b!4216409 (=> (not res!1732756) (not e!2617627))))

(assert (=> b!4216409 (= res!1732756 (= (head!8945 input!3517) (head!8945 input!3517)))))

(declare-fun d!1242084 () Bool)

(assert (=> d!1242084 e!2617626))

(declare-fun res!1732757 () Bool)

(assert (=> d!1242084 (=> res!1732757 e!2617626)))

(declare-fun lt!1500546 () Bool)

(assert (=> d!1242084 (= res!1732757 (not lt!1500546))))

(assert (=> d!1242084 (= lt!1500546 e!2617625)))

(declare-fun res!1732755 () Bool)

(assert (=> d!1242084 (=> res!1732755 e!2617625)))

(assert (=> d!1242084 (= res!1732755 (is-Nil!46377 input!3517))))

(assert (=> d!1242084 (= (isPrefix!4630 input!3517 input!3517) lt!1500546)))

(assert (= (and d!1242084 (not res!1732755)) b!4216408))

(assert (= (and b!4216408 res!1732754) b!4216409))

(assert (= (and b!4216409 res!1732756) b!4216410))

(assert (= (and d!1242084 (not res!1732757)) b!4216411))

(assert (=> b!4216411 m!4804319))

(assert (=> b!4216411 m!4804319))

(assert (=> b!4216410 m!4804325))

(assert (=> b!4216410 m!4804325))

(assert (=> b!4216410 m!4804325))

(assert (=> b!4216410 m!4804325))

(declare-fun m!4804573 () Bool)

(assert (=> b!4216410 m!4804573))

(assert (=> b!4216409 m!4804331))

(assert (=> b!4216409 m!4804331))

(assert (=> b!4216097 d!1242084))

(declare-fun d!1242086 () Bool)

(assert (=> d!1242086 (isPrefix!4630 input!3517 input!3517)))

(declare-fun lt!1500549 () Unit!65518)

(declare-fun choose!25833 (List!46501 List!46501) Unit!65518)

(assert (=> d!1242086 (= lt!1500549 (choose!25833 input!3517 input!3517))))

(assert (=> d!1242086 (= (lemmaIsPrefixRefl!3047 input!3517 input!3517) lt!1500549)))

(declare-fun bs!597526 () Bool)

(assert (= bs!597526 d!1242086))

(assert (=> bs!597526 m!4804221))

(declare-fun m!4804575 () Bool)

(assert (=> bs!597526 m!4804575))

(assert (=> b!4216097 d!1242086))

(declare-fun d!1242088 () Bool)

(declare-fun res!1732758 () Bool)

(declare-fun e!2617628 () Bool)

(assert (=> d!1242088 (=> (not res!1732758) (not e!2617628))))

(assert (=> d!1242088 (= res!1732758 (rulesValid!3045 thiss!26544 rules!3967))))

(assert (=> d!1242088 (= (rulesInvariant!6577 thiss!26544 rules!3967) e!2617628)))

(declare-fun b!4216412 () Bool)

(assert (=> b!4216412 (= e!2617628 (noDuplicateTag!3206 thiss!26544 rules!3967 Nil!46382))))

(assert (= (and d!1242088 res!1732758) b!4216412))

(declare-fun m!4804577 () Bool)

(assert (=> d!1242088 m!4804577))

(declare-fun m!4804579 () Bool)

(assert (=> b!4216412 m!4804579))

(assert (=> b!4216101 d!1242088))

(declare-fun d!1242090 () Bool)

(assert (=> d!1242090 (isEmpty!27473 (maxPrefixOneRule!3361 thiss!26544 rBis!178 input!3517))))

(declare-fun lt!1500557 () Unit!65518)

(declare-fun choose!25834 (LexerInterface!7366 Rule!15342 List!46502 List!46501) Unit!65518)

(assert (=> d!1242090 (= lt!1500557 (choose!25834 thiss!26544 rBis!178 (t!348401 rules!3967) input!3517))))

(assert (=> d!1242090 (not (isEmpty!27472 (t!348401 rules!3967)))))

(assert (=> d!1242090 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!629 thiss!26544 rBis!178 (t!348401 rules!3967) input!3517) lt!1500557)))

(declare-fun bs!597527 () Bool)

(assert (= bs!597527 d!1242090))

(assert (=> bs!597527 m!4804219))

(assert (=> bs!597527 m!4804219))

(declare-fun m!4804599 () Bool)

(assert (=> bs!597527 m!4804599))

(declare-fun m!4804603 () Bool)

(assert (=> bs!597527 m!4804603))

(assert (=> bs!597527 m!4804225))

(assert (=> b!4216099 d!1242090))

(declare-fun b!4216425 () Bool)

(declare-fun e!2617633 () Bool)

(assert (=> b!4216425 (= e!2617633 (>= (size!34058 input!3517) (size!34058 p!3001)))))

(declare-fun b!4216424 () Bool)

(declare-fun e!2617634 () Bool)

(assert (=> b!4216424 (= e!2617634 (isPrefix!4630 (tail!6792 p!3001) (tail!6792 input!3517)))))

(declare-fun b!4216422 () Bool)

(declare-fun e!2617632 () Bool)

(assert (=> b!4216422 (= e!2617632 e!2617634)))

(declare-fun res!1732766 () Bool)

(assert (=> b!4216422 (=> (not res!1732766) (not e!2617634))))

(assert (=> b!4216422 (= res!1732766 (not (is-Nil!46377 input!3517)))))

(declare-fun b!4216423 () Bool)

(declare-fun res!1732768 () Bool)

(assert (=> b!4216423 (=> (not res!1732768) (not e!2617634))))

(assert (=> b!4216423 (= res!1732768 (= (head!8945 p!3001) (head!8945 input!3517)))))

(declare-fun d!1242092 () Bool)

(assert (=> d!1242092 e!2617633))

(declare-fun res!1732769 () Bool)

(assert (=> d!1242092 (=> res!1732769 e!2617633)))

(declare-fun lt!1500558 () Bool)

(assert (=> d!1242092 (= res!1732769 (not lt!1500558))))

(assert (=> d!1242092 (= lt!1500558 e!2617632)))

(declare-fun res!1732767 () Bool)

(assert (=> d!1242092 (=> res!1732767 e!2617632)))

(assert (=> d!1242092 (= res!1732767 (is-Nil!46377 p!3001))))

(assert (=> d!1242092 (= (isPrefix!4630 p!3001 input!3517) lt!1500558)))

(assert (= (and d!1242092 (not res!1732767)) b!4216422))

(assert (= (and b!4216422 res!1732766) b!4216423))

(assert (= (and b!4216423 res!1732768) b!4216424))

(assert (= (and d!1242092 (not res!1732769)) b!4216425))

(assert (=> b!4216425 m!4804319))

(assert (=> b!4216425 m!4804521))

(declare-fun m!4804611 () Bool)

(assert (=> b!4216424 m!4804611))

(assert (=> b!4216424 m!4804325))

(assert (=> b!4216424 m!4804611))

(assert (=> b!4216424 m!4804325))

(declare-fun m!4804613 () Bool)

(assert (=> b!4216424 m!4804613))

(declare-fun m!4804615 () Bool)

(assert (=> b!4216423 m!4804615))

(assert (=> b!4216423 m!4804331))

(assert (=> b!4216100 d!1242092))

(declare-fun b!4216426 () Bool)

(declare-fun e!2617635 () Bool)

(declare-fun e!2617636 () Bool)

(assert (=> b!4216426 (= e!2617635 e!2617636)))

(declare-fun res!1732776 () Bool)

(assert (=> b!4216426 (=> (not res!1732776) (not e!2617636))))

(declare-fun lt!1500562 () Option!9959)

(assert (=> b!4216426 (= res!1732776 (matchR!6375 (regex!7771 (h!51798 rules!3967)) (list!16776 (charsOf!5194 (_1!25188 (get!15091 lt!1500562))))))))

(declare-fun b!4216427 () Bool)

(declare-fun res!1732774 () Bool)

(assert (=> b!4216427 (=> (not res!1732774) (not e!2617636))))

(assert (=> b!4216427 (= res!1732774 (= (++!11845 (list!16776 (charsOf!5194 (_1!25188 (get!15091 lt!1500562)))) (_2!25188 (get!15091 lt!1500562))) input!3517))))

(declare-fun b!4216428 () Bool)

(declare-fun e!2617638 () Option!9959)

(assert (=> b!4216428 (= e!2617638 None!9958)))

(declare-fun b!4216429 () Bool)

(declare-fun res!1732772 () Bool)

(assert (=> b!4216429 (=> (not res!1732772) (not e!2617636))))

(assert (=> b!4216429 (= res!1732772 (= (rule!10897 (_1!25188 (get!15091 lt!1500562))) (h!51798 rules!3967)))))

(declare-fun b!4216430 () Bool)

(declare-fun res!1732771 () Bool)

(assert (=> b!4216430 (=> (not res!1732771) (not e!2617636))))

(assert (=> b!4216430 (= res!1732771 (= (value!242004 (_1!25188 (get!15091 lt!1500562))) (apply!10696 (transformation!7771 (rule!10897 (_1!25188 (get!15091 lt!1500562)))) (seqFromList!5756 (originalCharacters!8153 (_1!25188 (get!15091 lt!1500562)))))))))

(declare-fun d!1242096 () Bool)

(assert (=> d!1242096 e!2617635))

(declare-fun res!1732770 () Bool)

(assert (=> d!1242096 (=> res!1732770 e!2617635)))

(assert (=> d!1242096 (= res!1732770 (isEmpty!27473 lt!1500562))))

(assert (=> d!1242096 (= lt!1500562 e!2617638)))

(declare-fun c!717797 () Bool)

(declare-fun lt!1500563 () tuple2!44112)

(assert (=> d!1242096 (= c!717797 (isEmpty!27476 (_1!25190 lt!1500563)))))

(assert (=> d!1242096 (= lt!1500563 (findLongestMatch!1569 (regex!7771 (h!51798 rules!3967)) input!3517))))

(assert (=> d!1242096 (ruleValid!3483 thiss!26544 (h!51798 rules!3967))))

(assert (=> d!1242096 (= (maxPrefixOneRule!3361 thiss!26544 (h!51798 rules!3967) input!3517) lt!1500562)))

(declare-fun b!4216431 () Bool)

(declare-fun res!1732775 () Bool)

(assert (=> b!4216431 (=> (not res!1732775) (not e!2617636))))

(assert (=> b!4216431 (= res!1732775 (< (size!34058 (_2!25188 (get!15091 lt!1500562))) (size!34058 input!3517)))))

(declare-fun b!4216432 () Bool)

(assert (=> b!4216432 (= e!2617638 (Some!9958 (tuple2!44109 (Token!14245 (apply!10696 (transformation!7771 (h!51798 rules!3967)) (seqFromList!5756 (_1!25190 lt!1500563))) (h!51798 rules!3967) (size!34059 (seqFromList!5756 (_1!25190 lt!1500563))) (_1!25190 lt!1500563)) (_2!25190 lt!1500563))))))

(declare-fun lt!1500559 () Unit!65518)

(assert (=> b!4216432 (= lt!1500559 (longestMatchIsAcceptedByMatchOrIsEmpty!1629 (regex!7771 (h!51798 rules!3967)) input!3517))))

(declare-fun res!1732773 () Bool)

(assert (=> b!4216432 (= res!1732773 (isEmpty!27476 (_1!25190 (findLongestMatchInner!1656 (regex!7771 (h!51798 rules!3967)) Nil!46377 (size!34058 Nil!46377) input!3517 input!3517 (size!34058 input!3517)))))))

(declare-fun e!2617637 () Bool)

(assert (=> b!4216432 (=> res!1732773 e!2617637)))

(assert (=> b!4216432 e!2617637))

(declare-fun lt!1500561 () Unit!65518)

(assert (=> b!4216432 (= lt!1500561 lt!1500559)))

(declare-fun lt!1500560 () Unit!65518)

(assert (=> b!4216432 (= lt!1500560 (lemmaSemiInverse!2497 (transformation!7771 (h!51798 rules!3967)) (seqFromList!5756 (_1!25190 lt!1500563))))))

(declare-fun b!4216433 () Bool)

(assert (=> b!4216433 (= e!2617637 (matchR!6375 (regex!7771 (h!51798 rules!3967)) (_1!25190 (findLongestMatchInner!1656 (regex!7771 (h!51798 rules!3967)) Nil!46377 (size!34058 Nil!46377) input!3517 input!3517 (size!34058 input!3517)))))))

(declare-fun b!4216434 () Bool)

(assert (=> b!4216434 (= e!2617636 (= (size!34056 (_1!25188 (get!15091 lt!1500562))) (size!34058 (originalCharacters!8153 (_1!25188 (get!15091 lt!1500562))))))))

(assert (= (and d!1242096 c!717797) b!4216428))

(assert (= (and d!1242096 (not c!717797)) b!4216432))

(assert (= (and b!4216432 (not res!1732773)) b!4216433))

(assert (= (and d!1242096 (not res!1732770)) b!4216426))

(assert (= (and b!4216426 res!1732776) b!4216427))

(assert (= (and b!4216427 res!1732774) b!4216431))

(assert (= (and b!4216431 res!1732775) b!4216429))

(assert (= (and b!4216429 res!1732772) b!4216430))

(assert (= (and b!4216430 res!1732771) b!4216434))

(declare-fun m!4804617 () Bool)

(assert (=> b!4216432 m!4804617))

(declare-fun m!4804619 () Bool)

(assert (=> b!4216432 m!4804619))

(declare-fun m!4804621 () Bool)

(assert (=> b!4216432 m!4804621))

(assert (=> b!4216432 m!4804319))

(declare-fun m!4804623 () Bool)

(assert (=> b!4216432 m!4804623))

(assert (=> b!4216432 m!4804617))

(assert (=> b!4216432 m!4804539))

(assert (=> b!4216432 m!4804617))

(declare-fun m!4804625 () Bool)

(assert (=> b!4216432 m!4804625))

(assert (=> b!4216432 m!4804539))

(assert (=> b!4216432 m!4804319))

(declare-fun m!4804627 () Bool)

(assert (=> b!4216432 m!4804627))

(assert (=> b!4216432 m!4804617))

(declare-fun m!4804629 () Bool)

(assert (=> b!4216432 m!4804629))

(declare-fun m!4804631 () Bool)

(assert (=> b!4216434 m!4804631))

(declare-fun m!4804633 () Bool)

(assert (=> b!4216434 m!4804633))

(assert (=> b!4216427 m!4804631))

(declare-fun m!4804635 () Bool)

(assert (=> b!4216427 m!4804635))

(assert (=> b!4216427 m!4804635))

(declare-fun m!4804637 () Bool)

(assert (=> b!4216427 m!4804637))

(assert (=> b!4216427 m!4804637))

(declare-fun m!4804639 () Bool)

(assert (=> b!4216427 m!4804639))

(assert (=> b!4216433 m!4804539))

(assert (=> b!4216433 m!4804319))

(assert (=> b!4216433 m!4804539))

(assert (=> b!4216433 m!4804319))

(assert (=> b!4216433 m!4804627))

(declare-fun m!4804641 () Bool)

(assert (=> b!4216433 m!4804641))

(assert (=> b!4216426 m!4804631))

(assert (=> b!4216426 m!4804635))

(assert (=> b!4216426 m!4804635))

(assert (=> b!4216426 m!4804637))

(assert (=> b!4216426 m!4804637))

(declare-fun m!4804643 () Bool)

(assert (=> b!4216426 m!4804643))

(assert (=> b!4216429 m!4804631))

(assert (=> b!4216430 m!4804631))

(declare-fun m!4804645 () Bool)

(assert (=> b!4216430 m!4804645))

(assert (=> b!4216430 m!4804645))

(declare-fun m!4804647 () Bool)

(assert (=> b!4216430 m!4804647))

(assert (=> b!4216431 m!4804631))

(declare-fun m!4804649 () Bool)

(assert (=> b!4216431 m!4804649))

(assert (=> b!4216431 m!4804319))

(declare-fun m!4804651 () Bool)

(assert (=> d!1242096 m!4804651))

(declare-fun m!4804653 () Bool)

(assert (=> d!1242096 m!4804653))

(declare-fun m!4804655 () Bool)

(assert (=> d!1242096 m!4804655))

(declare-fun m!4804657 () Bool)

(assert (=> d!1242096 m!4804657))

(assert (=> b!4216103 d!1242096))

(declare-fun d!1242098 () Bool)

(assert (=> d!1242098 (= (isEmpty!27472 (t!348401 rules!3967)) (is-Nil!46378 (t!348401 rules!3967)))))

(assert (=> b!4216081 d!1242098))

(declare-fun b!4216452 () Bool)

(declare-fun e!2617645 () Bool)

(declare-fun tp!1289764 () Bool)

(declare-fun tp!1289763 () Bool)

(assert (=> b!4216452 (= e!2617645 (and tp!1289764 tp!1289763))))

(assert (=> b!4216095 (= tp!1289673 e!2617645)))

(declare-fun b!4216450 () Bool)

(declare-fun tp!1289762 () Bool)

(declare-fun tp!1289760 () Bool)

(assert (=> b!4216450 (= e!2617645 (and tp!1289762 tp!1289760))))

(declare-fun b!4216451 () Bool)

(declare-fun tp!1289761 () Bool)

(assert (=> b!4216451 (= e!2617645 tp!1289761)))

(declare-fun b!4216449 () Bool)

(assert (=> b!4216449 (= e!2617645 tp_is_empty!22319)))

(assert (= (and b!4216095 (is-ElementMatch!12676 (regex!7771 (rule!10897 t!8364)))) b!4216449))

(assert (= (and b!4216095 (is-Concat!20678 (regex!7771 (rule!10897 t!8364)))) b!4216450))

(assert (= (and b!4216095 (is-Star!12676 (regex!7771 (rule!10897 t!8364)))) b!4216451))

(assert (= (and b!4216095 (is-Union!12676 (regex!7771 (rule!10897 t!8364)))) b!4216452))

(declare-fun b!4216459 () Bool)

(declare-fun e!2617650 () Bool)

(declare-fun tp!1289767 () Bool)

(assert (=> b!4216459 (= e!2617650 (and tp_is_empty!22319 tp!1289767))))

(assert (=> b!4216116 (= tp!1289674 e!2617650)))

(assert (= (and b!4216116 (is-Cons!46377 (t!348400 p!3001))) b!4216459))

(declare-fun b!4216460 () Bool)

(declare-fun e!2617651 () Bool)

(declare-fun tp!1289768 () Bool)

(assert (=> b!4216460 (= e!2617651 (and tp_is_empty!22319 tp!1289768))))

(assert (=> b!4216105 (= tp!1289676 e!2617651)))

(assert (= (and b!4216105 (is-Cons!46377 (originalCharacters!8153 tBis!41))) b!4216460))

(declare-fun b!4216464 () Bool)

(declare-fun e!2617652 () Bool)

(declare-fun tp!1289773 () Bool)

(declare-fun tp!1289772 () Bool)

(assert (=> b!4216464 (= e!2617652 (and tp!1289773 tp!1289772))))

(assert (=> b!4216087 (= tp!1289669 e!2617652)))

(declare-fun b!4216462 () Bool)

(declare-fun tp!1289771 () Bool)

(declare-fun tp!1289769 () Bool)

(assert (=> b!4216462 (= e!2617652 (and tp!1289771 tp!1289769))))

(declare-fun b!4216463 () Bool)

(declare-fun tp!1289770 () Bool)

(assert (=> b!4216463 (= e!2617652 tp!1289770)))

(declare-fun b!4216461 () Bool)

(assert (=> b!4216461 (= e!2617652 tp_is_empty!22319)))

(assert (= (and b!4216087 (is-ElementMatch!12676 (regex!7771 (rule!10897 tBis!41)))) b!4216461))

(assert (= (and b!4216087 (is-Concat!20678 (regex!7771 (rule!10897 tBis!41)))) b!4216462))

(assert (= (and b!4216087 (is-Star!12676 (regex!7771 (rule!10897 tBis!41)))) b!4216463))

(assert (= (and b!4216087 (is-Union!12676 (regex!7771 (rule!10897 tBis!41)))) b!4216464))

(declare-fun b!4216477 () Bool)

(declare-fun b_free!123691 () Bool)

(declare-fun b_next!124395 () Bool)

(assert (=> b!4216477 (= b_free!123691 (not b_next!124395))))

(declare-fun tp!1289783 () Bool)

(declare-fun b_and!332221 () Bool)

(assert (=> b!4216477 (= tp!1289783 b_and!332221)))

(declare-fun b_free!123693 () Bool)

(declare-fun b_next!124397 () Bool)

(assert (=> b!4216477 (= b_free!123693 (not b_next!124397))))

(declare-fun tb!253123 () Bool)

(declare-fun t!348430 () Bool)

(assert (=> (and b!4216477 (= (toChars!10350 (transformation!7771 (h!51798 (t!348401 rules!3967)))) (toChars!10350 (transformation!7771 (rule!10897 (_1!25188 lt!1500437))))) t!348430) tb!253123))

(declare-fun result!308524 () Bool)

(assert (= result!308524 result!308492))

(assert (=> d!1242022 t!348430))

(declare-fun t!348432 () Bool)

(declare-fun tb!253125 () Bool)

(assert (=> (and b!4216477 (= (toChars!10350 (transformation!7771 (h!51798 (t!348401 rules!3967)))) (toChars!10350 (transformation!7771 (rule!10897 tBis!41)))) t!348432) tb!253125))

(declare-fun result!308526 () Bool)

(assert (= result!308526 result!308502))

(assert (=> d!1242056 t!348432))

(assert (=> b!4216350 t!348432))

(declare-fun tb!253127 () Bool)

(declare-fun t!348434 () Bool)

(assert (=> (and b!4216477 (= (toChars!10350 (transformation!7771 (h!51798 (t!348401 rules!3967)))) (toChars!10350 (transformation!7771 (rule!10897 t!8364)))) t!348434) tb!253127))

(declare-fun result!308528 () Bool)

(assert (= result!308528 result!308510))

(assert (=> b!4216352 t!348434))

(declare-fun tp!1289784 () Bool)

(declare-fun b_and!332223 () Bool)

(assert (=> b!4216477 (= tp!1289784 (and (=> t!348430 result!308524) (=> t!348432 result!308526) (=> t!348434 result!308528) b_and!332223))))

(declare-fun e!2617663 () Bool)

(assert (=> b!4216477 (= e!2617663 (and tp!1289783 tp!1289784))))

(declare-fun e!2617664 () Bool)

(declare-fun b!4216476 () Bool)

(declare-fun tp!1289782 () Bool)

(assert (=> b!4216476 (= e!2617664 (and tp!1289782 (inv!61015 (tag!8635 (h!51798 (t!348401 rules!3967)))) (inv!61018 (transformation!7771 (h!51798 (t!348401 rules!3967)))) e!2617663))))

(declare-fun b!4216475 () Bool)

(declare-fun e!2617665 () Bool)

(declare-fun tp!1289785 () Bool)

(assert (=> b!4216475 (= e!2617665 (and e!2617664 tp!1289785))))

(assert (=> b!4216109 (= tp!1289665 e!2617665)))

(assert (= b!4216476 b!4216477))

(assert (= b!4216475 b!4216476))

(assert (= (and b!4216109 (is-Cons!46378 (t!348401 rules!3967))) b!4216475))

(declare-fun m!4804669 () Bool)

(assert (=> b!4216476 m!4804669))

(declare-fun m!4804671 () Bool)

(assert (=> b!4216476 m!4804671))

(declare-fun b!4216481 () Bool)

(declare-fun e!2617667 () Bool)

(declare-fun tp!1289790 () Bool)

(declare-fun tp!1289789 () Bool)

(assert (=> b!4216481 (= e!2617667 (and tp!1289790 tp!1289789))))

(assert (=> b!4216107 (= tp!1289666 e!2617667)))

(declare-fun b!4216479 () Bool)

(declare-fun tp!1289788 () Bool)

(declare-fun tp!1289786 () Bool)

(assert (=> b!4216479 (= e!2617667 (and tp!1289788 tp!1289786))))

(declare-fun b!4216480 () Bool)

(declare-fun tp!1289787 () Bool)

(assert (=> b!4216480 (= e!2617667 tp!1289787)))

(declare-fun b!4216478 () Bool)

(assert (=> b!4216478 (= e!2617667 tp_is_empty!22319)))

(assert (= (and b!4216107 (is-ElementMatch!12676 (regex!7771 rBis!178))) b!4216478))

(assert (= (and b!4216107 (is-Concat!20678 (regex!7771 rBis!178))) b!4216479))

(assert (= (and b!4216107 (is-Star!12676 (regex!7771 rBis!178))) b!4216480))

(assert (= (and b!4216107 (is-Union!12676 (regex!7771 rBis!178))) b!4216481))

(declare-fun b!4216482 () Bool)

(declare-fun e!2617668 () Bool)

(declare-fun tp!1289791 () Bool)

(assert (=> b!4216482 (= e!2617668 (and tp_is_empty!22319 tp!1289791))))

(assert (=> b!4216090 (= tp!1289670 e!2617668)))

(assert (= (and b!4216090 (is-Cons!46377 (originalCharacters!8153 t!8364))) b!4216482))

(declare-fun b!4216483 () Bool)

(declare-fun e!2617669 () Bool)

(declare-fun tp!1289792 () Bool)

(assert (=> b!4216483 (= e!2617669 (and tp_is_empty!22319 tp!1289792))))

(assert (=> b!4216110 (= tp!1289684 e!2617669)))

(assert (= (and b!4216110 (is-Cons!46377 (t!348400 suffixBis!41))) b!4216483))

(declare-fun b!4216484 () Bool)

(declare-fun e!2617670 () Bool)

(declare-fun tp!1289793 () Bool)

(assert (=> b!4216484 (= e!2617670 (and tp_is_empty!22319 tp!1289793))))

(assert (=> b!4216089 (= tp!1289667 e!2617670)))

(assert (= (and b!4216089 (is-Cons!46377 (t!348400 suffix!1557))) b!4216484))

(declare-fun b!4216485 () Bool)

(declare-fun e!2617671 () Bool)

(declare-fun tp!1289794 () Bool)

(assert (=> b!4216485 (= e!2617671 (and tp_is_empty!22319 tp!1289794))))

(assert (=> b!4216104 (= tp!1289683 e!2617671)))

(assert (= (and b!4216104 (is-Cons!46377 (t!348400 input!3517))) b!4216485))

(declare-fun b!4216486 () Bool)

(declare-fun e!2617672 () Bool)

(declare-fun tp!1289795 () Bool)

(assert (=> b!4216486 (= e!2617672 (and tp_is_empty!22319 tp!1289795))))

(assert (=> b!4216102 (= tp!1289672 e!2617672)))

(assert (= (and b!4216102 (is-Cons!46377 (t!348400 pBis!121))) b!4216486))

(declare-fun b!4216490 () Bool)

(declare-fun e!2617673 () Bool)

(declare-fun tp!1289800 () Bool)

(declare-fun tp!1289799 () Bool)

(assert (=> b!4216490 (= e!2617673 (and tp!1289800 tp!1289799))))

(assert (=> b!4216113 (= tp!1289678 e!2617673)))

(declare-fun b!4216488 () Bool)

(declare-fun tp!1289798 () Bool)

(declare-fun tp!1289796 () Bool)

(assert (=> b!4216488 (= e!2617673 (and tp!1289798 tp!1289796))))

(declare-fun b!4216489 () Bool)

(declare-fun tp!1289797 () Bool)

(assert (=> b!4216489 (= e!2617673 tp!1289797)))

(declare-fun b!4216487 () Bool)

(assert (=> b!4216487 (= e!2617673 tp_is_empty!22319)))

(assert (= (and b!4216113 (is-ElementMatch!12676 (regex!7771 (h!51798 rules!3967)))) b!4216487))

(assert (= (and b!4216113 (is-Concat!20678 (regex!7771 (h!51798 rules!3967)))) b!4216488))

(assert (= (and b!4216113 (is-Star!12676 (regex!7771 (h!51798 rules!3967)))) b!4216489))

(assert (= (and b!4216113 (is-Union!12676 (regex!7771 (h!51798 rules!3967)))) b!4216490))

(declare-fun b_lambda!124211 () Bool)

(assert (= b_lambda!124209 (or (and b!4216082 b_free!123669 (= (toChars!10350 (transformation!7771 rBis!178)) (toChars!10350 (transformation!7771 (rule!10897 t!8364))))) (and b!4216094 b_free!123661) (and b!4216477 b_free!123693 (= (toChars!10350 (transformation!7771 (h!51798 (t!348401 rules!3967)))) (toChars!10350 (transformation!7771 (rule!10897 t!8364))))) (and b!4216091 b_free!123673 (= (toChars!10350 (transformation!7771 (rule!10897 tBis!41))) (toChars!10350 (transformation!7771 (rule!10897 t!8364))))) (and b!4216093 b_free!123665 (= (toChars!10350 (transformation!7771 (h!51798 rules!3967))) (toChars!10350 (transformation!7771 (rule!10897 t!8364))))) b_lambda!124211)))

(declare-fun b_lambda!124213 () Bool)

(assert (= b_lambda!124205 (or (and b!4216093 b_free!123665 (= (toChars!10350 (transformation!7771 (h!51798 rules!3967))) (toChars!10350 (transformation!7771 (rule!10897 tBis!41))))) (and b!4216094 b_free!123661 (= (toChars!10350 (transformation!7771 (rule!10897 t!8364))) (toChars!10350 (transformation!7771 (rule!10897 tBis!41))))) (and b!4216091 b_free!123673) (and b!4216477 b_free!123693 (= (toChars!10350 (transformation!7771 (h!51798 (t!348401 rules!3967)))) (toChars!10350 (transformation!7771 (rule!10897 tBis!41))))) (and b!4216082 b_free!123669 (= (toChars!10350 (transformation!7771 rBis!178)) (toChars!10350 (transformation!7771 (rule!10897 tBis!41))))) b_lambda!124213)))

(declare-fun b_lambda!124215 () Bool)

(assert (= b_lambda!124207 (or (and b!4216093 b_free!123665 (= (toChars!10350 (transformation!7771 (h!51798 rules!3967))) (toChars!10350 (transformation!7771 (rule!10897 tBis!41))))) (and b!4216094 b_free!123661 (= (toChars!10350 (transformation!7771 (rule!10897 t!8364))) (toChars!10350 (transformation!7771 (rule!10897 tBis!41))))) (and b!4216091 b_free!123673) (and b!4216477 b_free!123693 (= (toChars!10350 (transformation!7771 (h!51798 (t!348401 rules!3967)))) (toChars!10350 (transformation!7771 (rule!10897 tBis!41))))) (and b!4216082 b_free!123669 (= (toChars!10350 (transformation!7771 rBis!178)) (toChars!10350 (transformation!7771 (rule!10897 tBis!41))))) b_lambda!124215)))

(push 1)

(assert (not d!1242036))

(assert (not b!4216356))

(assert (not b!4216284))

(assert (not b!4216486))

(assert (not b!4216360))

(assert (not b!4216404))

(assert (not b!4216324))

(assert b_and!332223)

(assert (not b!4216361))

(assert (not b!4216323))

(assert (not d!1242086))

(assert (not b!4216432))

(assert (not d!1242066))

(assert (not b!4216353))

(assert (not d!1242080))

(assert (not b!4216405))

(assert (not b!4216358))

(assert (not b!4216407))

(assert (not b!4216426))

(assert (not b!4216488))

(assert (not b!4216267))

(assert (not b!4216489))

(assert (not b!4216481))

(assert (not d!1242020))

(assert (not b!4216484))

(assert (not b!4216344))

(assert (not d!1242044))

(assert (not d!1242064))

(assert (not b!4216429))

(assert (not tb!253115))

(assert (not tb!253099))

(assert (not d!1242022))

(assert (not b_next!124363))

(assert b_and!332219)

(assert (not b_lambda!124213))

(assert b_and!332213)

(assert (not b!4216290))

(assert (not d!1242034))

(assert (not b!4216354))

(assert (not b!4216330))

(assert (not b_lambda!124211))

(assert (not b!4216327))

(assert (not b!4216452))

(assert (not b!4216462))

(assert (not b!4216433))

(assert (not b!4216410))

(assert (not b!4216291))

(assert (not b!4216343))

(assert (not b!4216427))

(assert (not b!4216451))

(assert (not b!4216459))

(assert (not b!4216316))

(assert (not b!4216431))

(assert (not b!4216350))

(assert (not b_next!124375))

(assert (not d!1242026))

(assert (not b_lambda!124203))

(assert (not b!4216240))

(assert b_and!332217)

(assert (not b_next!124395))

(assert b_and!332221)

(assert (not b!4216326))

(assert (not b!4216322))

(assert (not d!1242068))

(assert b_and!332161)

(assert b_and!332169)

(assert (not b!4216463))

(assert (not b!4216430))

(assert (not b!4216261))

(assert b_and!332215)

(assert (not b!4216315))

(assert (not b!4216265))

(assert (not b!4216311))

(assert (not b!4216262))

(assert (not b!4216334))

(assert (not b!4216320))

(assert (not d!1242082))

(assert (not b!4216411))

(assert (not b!4216434))

(assert (not b!4216409))

(assert (not b_next!124365))

(assert (not d!1242074))

(assert (not bm!293013))

(assert (not d!1242096))

(assert (not d!1242078))

(assert (not b_next!124371))

(assert (not b!4216352))

(assert (not b!4216403))

(assert (not b!4216297))

(assert (not b!4216402))

(assert (not b!4216239))

(assert (not b!4216460))

(assert (not b!4216480))

(assert (not d!1242088))

(assert (not b!4216483))

(assert (not b_next!124397))

(assert (not b!4216476))

(assert (not b_next!124373))

(assert (not b!4216412))

(assert (not d!1242018))

(assert (not d!1242070))

(assert (not d!1242032))

(assert (not b!4216450))

(assert (not b!4216259))

(assert (not b!4216406))

(assert (not d!1242062))

(assert (not d!1242056))

(assert (not b_lambda!124215))

(assert (not b!4216263))

(assert (not b!4216266))

(assert (not d!1242046))

(assert (not b!4216329))

(assert (not b!4216289))

(assert (not b!4216287))

(assert (not b!4216328))

(assert (not b!4216490))

(assert (not b!4216277))

(assert (not b!4216479))

(assert (not b!4216278))

(assert (not b!4216482))

(assert b_and!332157)

(assert tp_is_empty!22319)

(assert (not b!4216464))

(assert (not b!4216312))

(assert (not b!4216424))

(assert (not b!4216475))

(assert b_and!332165)

(assert (not b_next!124377))

(assert (not b!4216319))

(assert (not tb!253107))

(assert (not b_next!124369))

(assert (not b!4216318))

(assert (not b!4216399))

(assert (not b!4216400))

(assert (not b!4216335))

(assert (not b!4216238))

(assert (not b!4216260))

(assert (not d!1242016))

(assert (not b!4216351))

(assert (not d!1242054))

(assert (not b!4216357))

(assert (not bm!293012))

(assert (not b!4216425))

(assert (not b!4216485))

(assert (not b!4216423))

(assert (not d!1242052))

(assert (not b!4216317))

(assert (not b!4216308))

(assert (not b!4216331))

(assert (not d!1242090))

(assert (not b!4216340))

(assert (not b_next!124367))

(check-sat)

(pop 1)

(push 1)

(assert b_and!332223)

(assert b_and!332213)

(assert (not b_next!124375))

(assert b_and!332215)

(assert (not b_next!124365))

(assert (not b_next!124371))

(assert b_and!332157)

(assert (not b_next!124367))

(assert (not b_next!124363))

(assert b_and!332219)

(assert b_and!332217)

(assert (not b_next!124395))

(assert b_and!332221)

(assert b_and!332161)

(assert b_and!332169)

(assert (not b_next!124397))

(assert (not b_next!124373))

(assert b_and!332165)

(assert (not b_next!124377))

(assert (not b_next!124369))

(check-sat)

(pop 1)

