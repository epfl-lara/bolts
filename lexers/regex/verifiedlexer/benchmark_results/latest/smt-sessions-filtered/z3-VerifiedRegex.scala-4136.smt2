; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221924 () Bool)

(assert start!221924)

(declare-fun b!2270062 () Bool)

(declare-fun b_free!67453 () Bool)

(declare-fun b_next!68157 () Bool)

(assert (=> b!2270062 (= b_free!67453 (not b_next!68157))))

(declare-fun tp!718675 () Bool)

(declare-fun b_and!178841 () Bool)

(assert (=> b!2270062 (= tp!718675 b_and!178841)))

(declare-fun b_free!67455 () Bool)

(declare-fun b_next!68159 () Bool)

(assert (=> b!2270062 (= b_free!67455 (not b_next!68159))))

(declare-fun tp!718679 () Bool)

(declare-fun b_and!178843 () Bool)

(assert (=> b!2270062 (= tp!718679 b_and!178843)))

(declare-fun b!2270066 () Bool)

(declare-fun b_free!67457 () Bool)

(declare-fun b_next!68161 () Bool)

(assert (=> b!2270066 (= b_free!67457 (not b_next!68161))))

(declare-fun tp!718666 () Bool)

(declare-fun b_and!178845 () Bool)

(assert (=> b!2270066 (= tp!718666 b_and!178845)))

(declare-fun b_free!67459 () Bool)

(declare-fun b_next!68163 () Bool)

(assert (=> b!2270066 (= b_free!67459 (not b_next!68163))))

(declare-fun tp!718670 () Bool)

(declare-fun b_and!178847 () Bool)

(assert (=> b!2270066 (= tp!718670 b_and!178847)))

(declare-fun b!2270081 () Bool)

(declare-fun b_free!67461 () Bool)

(declare-fun b_next!68165 () Bool)

(assert (=> b!2270081 (= b_free!67461 (not b_next!68165))))

(declare-fun tp!718682 () Bool)

(declare-fun b_and!178849 () Bool)

(assert (=> b!2270081 (= tp!718682 b_and!178849)))

(declare-fun b_free!67463 () Bool)

(declare-fun b_next!68167 () Bool)

(assert (=> b!2270081 (= b_free!67463 (not b_next!68167))))

(declare-fun tp!718681 () Bool)

(declare-fun b_and!178851 () Bool)

(assert (=> b!2270081 (= tp!718681 b_and!178851)))

(declare-fun b!2270080 () Bool)

(declare-fun b_free!67465 () Bool)

(declare-fun b_next!68169 () Bool)

(assert (=> b!2270080 (= b_free!67465 (not b_next!68169))))

(declare-fun tp!718678 () Bool)

(declare-fun b_and!178853 () Bool)

(assert (=> b!2270080 (= tp!718678 b_and!178853)))

(declare-fun b_free!67467 () Bool)

(declare-fun b_next!68171 () Bool)

(assert (=> b!2270080 (= b_free!67467 (not b_next!68171))))

(declare-fun tp!718669 () Bool)

(declare-fun b_and!178855 () Bool)

(assert (=> b!2270080 (= tp!718669 b_and!178855)))

(declare-fun b!2270056 () Bool)

(declare-fun e!1453947 () Bool)

(declare-fun e!1453958 () Bool)

(assert (=> b!2270056 (= e!1453947 e!1453958)))

(declare-fun res!970452 () Bool)

(assert (=> b!2270056 (=> (not res!970452) (not e!1453958))))

(declare-fun e!1453956 () Bool)

(assert (=> b!2270056 (= res!970452 e!1453956)))

(declare-fun res!970449 () Bool)

(assert (=> b!2270056 (=> res!970449 e!1453956)))

(declare-fun lt!843386 () Bool)

(assert (=> b!2270056 (= res!970449 lt!843386)))

(declare-datatypes ((List!27087 0))(
  ( (Nil!26993) (Cons!26993 (h!32394 (_ BitVec 16)) (t!202497 List!27087)) )
))
(declare-datatypes ((TokenValue!4465 0))(
  ( (FloatLiteralValue!8930 (text!31700 List!27087)) (TokenValueExt!4464 (__x!17990 Int)) (Broken!22325 (value!136429 List!27087)) (Object!4558) (End!4465) (Def!4465) (Underscore!4465) (Match!4465) (Else!4465) (Error!4465) (Case!4465) (If!4465) (Extends!4465) (Abstract!4465) (Class!4465) (Val!4465) (DelimiterValue!8930 (del!4525 List!27087)) (KeywordValue!4471 (value!136430 List!27087)) (CommentValue!8930 (value!136431 List!27087)) (WhitespaceValue!8930 (value!136432 List!27087)) (IndentationValue!4465 (value!136433 List!27087)) (String!29428) (Int32!4465) (Broken!22326 (value!136434 List!27087)) (Boolean!4466) (Unit!39943) (OperatorValue!4468 (op!4525 List!27087)) (IdentifierValue!8930 (value!136435 List!27087)) (IdentifierValue!8931 (value!136436 List!27087)) (WhitespaceValue!8931 (value!136437 List!27087)) (True!8930) (False!8930) (Broken!22327 (value!136438 List!27087)) (Broken!22328 (value!136439 List!27087)) (True!8931) (RightBrace!4465) (RightBracket!4465) (Colon!4465) (Null!4465) (Comma!4465) (LeftBracket!4465) (False!8931) (LeftBrace!4465) (ImaginaryLiteralValue!4465 (text!31701 List!27087)) (StringLiteralValue!13395 (value!136440 List!27087)) (EOFValue!4465 (value!136441 List!27087)) (IdentValue!4465 (value!136442 List!27087)) (DelimiterValue!8931 (value!136443 List!27087)) (DedentValue!4465 (value!136444 List!27087)) (NewLineValue!4465 (value!136445 List!27087)) (IntegerValue!13395 (value!136446 (_ BitVec 32)) (text!31702 List!27087)) (IntegerValue!13396 (value!136447 Int) (text!31703 List!27087)) (Times!4465) (Or!4465) (Equal!4465) (Minus!4465) (Broken!22329 (value!136448 List!27087)) (And!4465) (Div!4465) (LessEqual!4465) (Mod!4465) (Concat!11116) (Not!4465) (Plus!4465) (SpaceValue!4465 (value!136449 List!27087)) (IntegerValue!13397 (value!136450 Int) (text!31704 List!27087)) (StringLiteralValue!13396 (text!31705 List!27087)) (FloatLiteralValue!8931 (text!31706 List!27087)) (BytesLiteralValue!4465 (value!136451 List!27087)) (CommentValue!8931 (value!136452 List!27087)) (StringLiteralValue!13397 (value!136453 List!27087)) (ErrorTokenValue!4465 (msg!4526 List!27087)) )
))
(declare-datatypes ((C!13448 0))(
  ( (C!13449 (val!7772 Int)) )
))
(declare-datatypes ((List!27088 0))(
  ( (Nil!26994) (Cons!26994 (h!32395 C!13448) (t!202498 List!27088)) )
))
(declare-datatypes ((IArray!17513 0))(
  ( (IArray!17514 (innerList!8814 List!27088)) )
))
(declare-datatypes ((Conc!8754 0))(
  ( (Node!8754 (left!20482 Conc!8754) (right!20812 Conc!8754) (csize!17738 Int) (cheight!8965 Int)) (Leaf!12891 (xs!11696 IArray!17513) (csize!17739 Int)) (Empty!8754) )
))
(declare-datatypes ((BalanceConc!17236 0))(
  ( (BalanceConc!17237 (c!360410 Conc!8754)) )
))
(declare-datatypes ((Regex!6651 0))(
  ( (ElementMatch!6651 (c!360411 C!13448)) (Concat!11117 (regOne!13814 Regex!6651) (regTwo!13814 Regex!6651)) (EmptyExpr!6651) (Star!6651 (reg!6980 Regex!6651)) (EmptyLang!6651) (Union!6651 (regOne!13815 Regex!6651) (regTwo!13815 Regex!6651)) )
))
(declare-datatypes ((String!29429 0))(
  ( (String!29430 (value!136454 String)) )
))
(declare-datatypes ((TokenValueInjection!8470 0))(
  ( (TokenValueInjection!8471 (toValue!6065 Int) (toChars!5924 Int)) )
))
(declare-datatypes ((Rule!8406 0))(
  ( (Rule!8407 (regex!4303 Regex!6651) (tag!4793 String!29429) (isSeparator!4303 Bool) (transformation!4303 TokenValueInjection!8470)) )
))
(declare-datatypes ((Token!8084 0))(
  ( (Token!8085 (value!136455 TokenValue!4465) (rule!6621 Rule!8406) (size!21186 Int) (originalCharacters!5073 List!27088)) )
))
(declare-datatypes ((List!27089 0))(
  ( (Nil!26995) (Cons!26995 (h!32396 Token!8084) (t!202499 List!27089)) )
))
(declare-fun tokens!456 () List!27089)

(declare-fun isEmpty!15287 (List!27089) Bool)

(assert (=> b!2270056 (= lt!843386 (isEmpty!15287 tokens!456))))

(declare-fun e!1453939 () Bool)

(declare-fun e!1453946 () Bool)

(declare-fun b!2270057 () Bool)

(declare-fun tp!718672 () Bool)

(declare-datatypes ((List!27090 0))(
  ( (Nil!26996) (Cons!26996 (h!32397 Rule!8406) (t!202500 List!27090)) )
))
(declare-fun rules!1750 () List!27090)

(declare-fun inv!36547 (String!29429) Bool)

(declare-fun inv!36550 (TokenValueInjection!8470) Bool)

(assert (=> b!2270057 (= e!1453946 (and tp!718672 (inv!36547 (tag!4793 (h!32397 rules!1750))) (inv!36550 (transformation!4303 (h!32397 rules!1750))) e!1453939))))

(declare-fun b!2270058 () Bool)

(declare-fun e!1453950 () Bool)

(declare-fun r!2363 () Rule!8406)

(declare-fun head!4896 (List!27089) Token!8084)

(assert (=> b!2270058 (= e!1453950 (= (rule!6621 (head!4896 tokens!456)) r!2363))))

(declare-fun b!2270059 () Bool)

(declare-fun e!1453938 () Bool)

(declare-fun tp!718676 () Bool)

(assert (=> b!2270059 (= e!1453938 (and e!1453946 tp!718676))))

(declare-fun b!2270060 () Bool)

(declare-fun e!1453941 () Bool)

(declare-fun tp_is_empty!10523 () Bool)

(declare-fun tp!718680 () Bool)

(assert (=> b!2270060 (= e!1453941 (and tp_is_empty!10523 tp!718680))))

(declare-fun b!2270061 () Bool)

(assert (=> b!2270061 (= e!1453958 (not true))))

(declare-fun lt!843383 () Bool)

(declare-fun e!1453951 () Bool)

(assert (=> b!2270061 (= lt!843383 e!1453951)))

(declare-fun res!970445 () Bool)

(assert (=> b!2270061 (=> res!970445 e!1453951)))

(assert (=> b!2270061 (= res!970445 lt!843386)))

(declare-datatypes ((LexerInterface!3900 0))(
  ( (LexerInterfaceExt!3897 (__x!17991 Int)) (Lexer!3898) )
))
(declare-fun thiss!16613 () LexerInterface!3900)

(declare-fun ruleValid!1393 (LexerInterface!3900 Rule!8406) Bool)

(assert (=> b!2270061 (ruleValid!1393 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39944 0))(
  ( (Unit!39945) )
))
(declare-fun lt!843385 () Unit!39944)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!798 (LexerInterface!3900 Rule!8406 List!27090) Unit!39944)

(assert (=> b!2270061 (= lt!843385 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!798 thiss!16613 r!2363 rules!1750))))

(declare-fun e!1453949 () Bool)

(assert (=> b!2270062 (= e!1453949 (and tp!718675 tp!718679))))

(declare-fun b!2270063 () Bool)

(declare-fun res!970447 () Bool)

(declare-fun e!1453940 () Bool)

(assert (=> b!2270063 (=> (not res!970447) (not e!1453940))))

(declare-fun rulesInvariant!3402 (LexerInterface!3900 List!27090) Bool)

(assert (=> b!2270063 (= res!970447 (rulesInvariant!3402 thiss!16613 rules!1750))))

(declare-fun e!1453953 () Bool)

(declare-fun b!2270064 () Bool)

(declare-fun tp!718683 () Bool)

(declare-fun e!1453944 () Bool)

(declare-fun inv!36551 (Token!8084) Bool)

(assert (=> b!2270064 (= e!1453944 (and (inv!36551 (h!32396 tokens!456)) e!1453953 tp!718683))))

(declare-fun b!2270065 () Bool)

(declare-fun res!970457 () Bool)

(assert (=> b!2270065 (=> (not res!970457) (not e!1453958))))

(assert (=> b!2270065 (= res!970457 e!1453950)))

(declare-fun res!970456 () Bool)

(assert (=> b!2270065 (=> res!970456 e!1453950)))

(assert (=> b!2270065 (= res!970456 lt!843386)))

(assert (=> b!2270066 (= e!1453939 (and tp!718666 tp!718670))))

(declare-fun res!970450 () Bool)

(assert (=> start!221924 (=> (not res!970450) (not e!1453940))))

(get-info :version)

(assert (=> start!221924 (= res!970450 ((_ is Lexer!3898) thiss!16613))))

(assert (=> start!221924 e!1453940))

(assert (=> start!221924 true))

(declare-fun e!1453954 () Bool)

(assert (=> start!221924 e!1453954))

(declare-fun e!1453952 () Bool)

(assert (=> start!221924 e!1453952))

(declare-fun e!1453935 () Bool)

(assert (=> start!221924 e!1453935))

(assert (=> start!221924 e!1453941))

(assert (=> start!221924 e!1453938))

(declare-fun e!1453955 () Bool)

(assert (=> start!221924 e!1453955))

(assert (=> start!221924 e!1453944))

(declare-fun b!2270067 () Bool)

(declare-fun tp!718671 () Bool)

(assert (=> b!2270067 (= e!1453955 (and tp!718671 (inv!36547 (tag!4793 r!2363)) (inv!36550 (transformation!4303 r!2363)) e!1453949))))

(declare-fun b!2270068 () Bool)

(declare-fun res!970451 () Bool)

(assert (=> b!2270068 (=> (not res!970451) (not e!1453940))))

(declare-fun contains!4665 (List!27090 Rule!8406) Bool)

(assert (=> b!2270068 (= res!970451 (contains!4665 rules!1750 r!2363))))

(declare-fun b!2270069 () Bool)

(assert (=> b!2270069 (= e!1453940 e!1453947)))

(declare-fun res!970454 () Bool)

(assert (=> b!2270069 (=> (not res!970454) (not e!1453947))))

(declare-fun suffix!886 () List!27088)

(declare-datatypes ((IArray!17515 0))(
  ( (IArray!17516 (innerList!8815 List!27089)) )
))
(declare-datatypes ((Conc!8755 0))(
  ( (Node!8755 (left!20483 Conc!8755) (right!20813 Conc!8755) (csize!17740 Int) (cheight!8966 Int)) (Leaf!12892 (xs!11697 IArray!17515) (csize!17741 Int)) (Empty!8755) )
))
(declare-datatypes ((BalanceConc!17238 0))(
  ( (BalanceConc!17239 (c!360412 Conc!8755)) )
))
(declare-datatypes ((tuple2!26660 0))(
  ( (tuple2!26661 (_1!15840 BalanceConc!17238) (_2!15840 BalanceConc!17236)) )
))
(declare-fun lt!843384 () tuple2!26660)

(declare-datatypes ((tuple2!26662 0))(
  ( (tuple2!26663 (_1!15841 List!27089) (_2!15841 List!27088)) )
))
(declare-fun list!10461 (BalanceConc!17238) List!27089)

(declare-fun list!10462 (BalanceConc!17236) List!27088)

(assert (=> b!2270069 (= res!970454 (= (tuple2!26663 (list!10461 (_1!15840 lt!843384)) (list!10462 (_2!15840 lt!843384))) (tuple2!26663 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!27088)

(declare-fun lex!1739 (LexerInterface!3900 List!27090 BalanceConc!17236) tuple2!26660)

(declare-fun seqFromList!3007 (List!27088) BalanceConc!17236)

(assert (=> b!2270069 (= lt!843384 (lex!1739 thiss!16613 rules!1750 (seqFromList!3007 input!1722)))))

(declare-fun b!2270070 () Bool)

(declare-fun tp!718668 () Bool)

(assert (=> b!2270070 (= e!1453954 (and tp_is_empty!10523 tp!718668))))

(declare-fun b!2270071 () Bool)

(declare-fun res!970455 () Bool)

(assert (=> b!2270071 (=> (not res!970455) (not e!1453940))))

(declare-fun otherR!12 () Rule!8406)

(assert (=> b!2270071 (= res!970455 (contains!4665 rules!1750 otherR!12))))

(declare-fun b!2270072 () Bool)

(declare-fun otherP!12 () List!27088)

(declare-fun size!21187 (BalanceConc!17236) Int)

(declare-fun charsOf!2691 (Token!8084) BalanceConc!17236)

(declare-fun size!21188 (List!27088) Int)

(assert (=> b!2270072 (= e!1453956 (<= (size!21187 (charsOf!2691 (head!4896 tokens!456))) (size!21188 otherP!12)))))

(declare-fun b!2270073 () Bool)

(declare-fun res!970453 () Bool)

(assert (=> b!2270073 (=> (not res!970453) (not e!1453958))))

(assert (=> b!2270073 (= res!970453 (not (= r!2363 otherR!12)))))

(declare-fun b!2270074 () Bool)

(declare-fun tp!718673 () Bool)

(assert (=> b!2270074 (= e!1453935 (and tp_is_empty!10523 tp!718673))))

(declare-fun b!2270075 () Bool)

(declare-fun res!970448 () Bool)

(assert (=> b!2270075 (=> (not res!970448) (not e!1453958))))

(declare-fun isPrefix!2293 (List!27088 List!27088) Bool)

(assert (=> b!2270075 (= res!970448 (isPrefix!2293 otherP!12 input!1722))))

(declare-fun b!2270076 () Bool)

(declare-fun matchR!2908 (Regex!6651 List!27088) Bool)

(assert (=> b!2270076 (= e!1453951 (matchR!2908 (regex!4303 r!2363) (list!10462 (charsOf!2691 (head!4896 tokens!456)))))))

(declare-fun tp!718667 () Bool)

(declare-fun e!1453942 () Bool)

(declare-fun e!1453959 () Bool)

(declare-fun b!2270077 () Bool)

(assert (=> b!2270077 (= e!1453942 (and tp!718667 (inv!36547 (tag!4793 (rule!6621 (h!32396 tokens!456)))) (inv!36550 (transformation!4303 (rule!6621 (h!32396 tokens!456)))) e!1453959))))

(declare-fun b!2270078 () Bool)

(declare-fun e!1453936 () Bool)

(declare-fun tp!718674 () Bool)

(assert (=> b!2270078 (= e!1453952 (and tp!718674 (inv!36547 (tag!4793 otherR!12)) (inv!36550 (transformation!4303 otherR!12)) e!1453936))))

(declare-fun b!2270079 () Bool)

(declare-fun res!970446 () Bool)

(assert (=> b!2270079 (=> (not res!970446) (not e!1453940))))

(declare-fun isEmpty!15288 (List!27090) Bool)

(assert (=> b!2270079 (= res!970446 (not (isEmpty!15288 rules!1750)))))

(assert (=> b!2270080 (= e!1453936 (and tp!718678 tp!718669))))

(assert (=> b!2270081 (= e!1453959 (and tp!718682 tp!718681))))

(declare-fun b!2270082 () Bool)

(declare-fun tp!718677 () Bool)

(declare-fun inv!21 (TokenValue!4465) Bool)

(assert (=> b!2270082 (= e!1453953 (and (inv!21 (value!136455 (h!32396 tokens!456))) e!1453942 tp!718677))))

(assert (= (and start!221924 res!970450) b!2270079))

(assert (= (and b!2270079 res!970446) b!2270063))

(assert (= (and b!2270063 res!970447) b!2270068))

(assert (= (and b!2270068 res!970451) b!2270071))

(assert (= (and b!2270071 res!970455) b!2270069))

(assert (= (and b!2270069 res!970454) b!2270056))

(assert (= (and b!2270056 (not res!970449)) b!2270072))

(assert (= (and b!2270056 res!970452) b!2270065))

(assert (= (and b!2270065 (not res!970456)) b!2270058))

(assert (= (and b!2270065 res!970457) b!2270075))

(assert (= (and b!2270075 res!970448) b!2270073))

(assert (= (and b!2270073 res!970453) b!2270061))

(assert (= (and b!2270061 (not res!970445)) b!2270076))

(assert (= (and start!221924 ((_ is Cons!26994) input!1722)) b!2270070))

(assert (= b!2270078 b!2270080))

(assert (= start!221924 b!2270078))

(assert (= (and start!221924 ((_ is Cons!26994) suffix!886)) b!2270074))

(assert (= (and start!221924 ((_ is Cons!26994) otherP!12)) b!2270060))

(assert (= b!2270057 b!2270066))

(assert (= b!2270059 b!2270057))

(assert (= (and start!221924 ((_ is Cons!26996) rules!1750)) b!2270059))

(assert (= b!2270067 b!2270062))

(assert (= start!221924 b!2270067))

(assert (= b!2270077 b!2270081))

(assert (= b!2270082 b!2270077))

(assert (= b!2270064 b!2270082))

(assert (= (and start!221924 ((_ is Cons!26995) tokens!456)) b!2270064))

(declare-fun m!2698939 () Bool)

(assert (=> b!2270067 m!2698939))

(declare-fun m!2698941 () Bool)

(assert (=> b!2270067 m!2698941))

(declare-fun m!2698943 () Bool)

(assert (=> b!2270071 m!2698943))

(declare-fun m!2698945 () Bool)

(assert (=> b!2270078 m!2698945))

(declare-fun m!2698947 () Bool)

(assert (=> b!2270078 m!2698947))

(declare-fun m!2698949 () Bool)

(assert (=> b!2270069 m!2698949))

(declare-fun m!2698951 () Bool)

(assert (=> b!2270069 m!2698951))

(declare-fun m!2698953 () Bool)

(assert (=> b!2270069 m!2698953))

(assert (=> b!2270069 m!2698953))

(declare-fun m!2698955 () Bool)

(assert (=> b!2270069 m!2698955))

(declare-fun m!2698957 () Bool)

(assert (=> b!2270079 m!2698957))

(declare-fun m!2698959 () Bool)

(assert (=> b!2270076 m!2698959))

(assert (=> b!2270076 m!2698959))

(declare-fun m!2698961 () Bool)

(assert (=> b!2270076 m!2698961))

(assert (=> b!2270076 m!2698961))

(declare-fun m!2698963 () Bool)

(assert (=> b!2270076 m!2698963))

(assert (=> b!2270076 m!2698963))

(declare-fun m!2698965 () Bool)

(assert (=> b!2270076 m!2698965))

(declare-fun m!2698967 () Bool)

(assert (=> b!2270057 m!2698967))

(declare-fun m!2698969 () Bool)

(assert (=> b!2270057 m!2698969))

(assert (=> b!2270058 m!2698959))

(declare-fun m!2698971 () Bool)

(assert (=> b!2270064 m!2698971))

(assert (=> b!2270072 m!2698959))

(assert (=> b!2270072 m!2698959))

(assert (=> b!2270072 m!2698961))

(assert (=> b!2270072 m!2698961))

(declare-fun m!2698973 () Bool)

(assert (=> b!2270072 m!2698973))

(declare-fun m!2698975 () Bool)

(assert (=> b!2270072 m!2698975))

(declare-fun m!2698977 () Bool)

(assert (=> b!2270082 m!2698977))

(declare-fun m!2698979 () Bool)

(assert (=> b!2270068 m!2698979))

(declare-fun m!2698981 () Bool)

(assert (=> b!2270063 m!2698981))

(declare-fun m!2698983 () Bool)

(assert (=> b!2270077 m!2698983))

(declare-fun m!2698985 () Bool)

(assert (=> b!2270077 m!2698985))

(declare-fun m!2698987 () Bool)

(assert (=> b!2270075 m!2698987))

(declare-fun m!2698989 () Bool)

(assert (=> b!2270061 m!2698989))

(declare-fun m!2698991 () Bool)

(assert (=> b!2270061 m!2698991))

(declare-fun m!2698993 () Bool)

(assert (=> b!2270056 m!2698993))

(check-sat b_and!178853 (not b!2270072) (not b!2270082) (not b!2270058) (not b_next!68159) b_and!178851 (not b!2270074) tp_is_empty!10523 (not b_next!68163) (not b!2270071) b_and!178847 (not b!2270070) (not b!2270079) (not b!2270078) (not b!2270075) b_and!178841 (not b!2270076) (not b!2270064) (not b!2270059) (not b_next!68157) (not b!2270067) (not b!2270069) (not b!2270057) b_and!178849 (not b!2270077) b_and!178855 (not b!2270060) (not b!2270068) (not b_next!68169) (not b_next!68165) (not b!2270063) (not b_next!68167) (not b_next!68161) b_and!178845 (not b_next!68171) (not b!2270061) b_and!178843 (not b!2270056))
(check-sat b_and!178853 b_and!178841 (not b_next!68157) b_and!178849 (not b_next!68165) b_and!178843 (not b_next!68159) b_and!178851 (not b_next!68163) b_and!178847 b_and!178855 (not b_next!68169) (not b_next!68167) (not b_next!68161) b_and!178845 (not b_next!68171))
