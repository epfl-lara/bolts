; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!403568 () Bool)

(assert start!403568)

(declare-fun b!4221960 () Bool)

(declare-fun b_free!124067 () Bool)

(declare-fun b_next!124771 () Bool)

(assert (=> b!4221960 (= b_free!124067 (not b_next!124771))))

(declare-fun tp!1291935 () Bool)

(declare-fun b_and!333181 () Bool)

(assert (=> b!4221960 (= tp!1291935 b_and!333181)))

(declare-fun b_free!124069 () Bool)

(declare-fun b_next!124773 () Bool)

(assert (=> b!4221960 (= b_free!124069 (not b_next!124773))))

(declare-fun tp!1291943 () Bool)

(declare-fun b_and!333183 () Bool)

(assert (=> b!4221960 (= tp!1291943 b_and!333183)))

(declare-fun b!4221956 () Bool)

(declare-fun b_free!124071 () Bool)

(declare-fun b_next!124775 () Bool)

(assert (=> b!4221956 (= b_free!124071 (not b_next!124775))))

(declare-fun tp!1291942 () Bool)

(declare-fun b_and!333185 () Bool)

(assert (=> b!4221956 (= tp!1291942 b_and!333185)))

(declare-fun b_free!124073 () Bool)

(declare-fun b_next!124777 () Bool)

(assert (=> b!4221956 (= b_free!124073 (not b_next!124777))))

(declare-fun tp!1291934 () Bool)

(declare-fun b_and!333187 () Bool)

(assert (=> b!4221956 (= tp!1291934 b_and!333187)))

(declare-fun b!4221966 () Bool)

(declare-fun b_free!124075 () Bool)

(declare-fun b_next!124779 () Bool)

(assert (=> b!4221966 (= b_free!124075 (not b_next!124779))))

(declare-fun tp!1291939 () Bool)

(declare-fun b_and!333189 () Bool)

(assert (=> b!4221966 (= tp!1291939 b_and!333189)))

(declare-fun b_free!124077 () Bool)

(declare-fun b_next!124781 () Bool)

(assert (=> b!4221966 (= b_free!124077 (not b_next!124781))))

(declare-fun tp!1291925 () Bool)

(declare-fun b_and!333191 () Bool)

(assert (=> b!4221966 (= tp!1291925 b_and!333191)))

(declare-fun b!4221957 () Bool)

(declare-fun b_free!124079 () Bool)

(declare-fun b_next!124783 () Bool)

(assert (=> b!4221957 (= b_free!124079 (not b_next!124783))))

(declare-fun tp!1291926 () Bool)

(declare-fun b_and!333193 () Bool)

(assert (=> b!4221957 (= tp!1291926 b_and!333193)))

(declare-fun b_free!124081 () Bool)

(declare-fun b_next!124785 () Bool)

(assert (=> b!4221957 (= b_free!124081 (not b_next!124785))))

(declare-fun tp!1291944 () Bool)

(declare-fun b_and!333195 () Bool)

(assert (=> b!4221957 (= tp!1291944 b_and!333195)))

(declare-fun b!4221941 () Bool)

(declare-fun res!1735479 () Bool)

(declare-fun e!2621182 () Bool)

(assert (=> b!4221941 (=> (not res!1735479) (not e!2621182))))

(declare-datatypes ((C!25590 0))(
  ( (C!25591 (val!14957 Int)) )
))
(declare-datatypes ((List!46578 0))(
  ( (Nil!46454) (Cons!46454 (h!51874 C!25590) (t!349083 List!46578)) )
))
(declare-fun pBis!121 () List!46578)

(declare-fun input!3517 () List!46578)

(declare-fun isPrefix!4652 (List!46578 List!46578) Bool)

(assert (=> b!4221941 (= res!1735479 (isPrefix!4652 pBis!121 input!3517))))

(declare-datatypes ((List!46579 0))(
  ( (Nil!46455) (Cons!46455 (h!51875 (_ BitVec 16)) (t!349084 List!46579)) )
))
(declare-datatypes ((TokenValue!8023 0))(
  ( (FloatLiteralValue!16046 (text!56606 List!46579)) (TokenValueExt!8022 (__x!28269 Int)) (Broken!40115 (value!242605 List!46579)) (Object!8146) (End!8023) (Def!8023) (Underscore!8023) (Match!8023) (Else!8023) (Error!8023) (Case!8023) (If!8023) (Extends!8023) (Abstract!8023) (Class!8023) (Val!8023) (DelimiterValue!16046 (del!8083 List!46579)) (KeywordValue!8029 (value!242606 List!46579)) (CommentValue!16046 (value!242607 List!46579)) (WhitespaceValue!16046 (value!242608 List!46579)) (IndentationValue!8023 (value!242609 List!46579)) (String!53986) (Int32!8023) (Broken!40116 (value!242610 List!46579)) (Boolean!8024) (Unit!65625) (OperatorValue!8026 (op!8083 List!46579)) (IdentifierValue!16046 (value!242611 List!46579)) (IdentifierValue!16047 (value!242612 List!46579)) (WhitespaceValue!16047 (value!242613 List!46579)) (True!16046) (False!16046) (Broken!40117 (value!242614 List!46579)) (Broken!40118 (value!242615 List!46579)) (True!16047) (RightBrace!8023) (RightBracket!8023) (Colon!8023) (Null!8023) (Comma!8023) (LeftBracket!8023) (False!16047) (LeftBrace!8023) (ImaginaryLiteralValue!8023 (text!56607 List!46579)) (StringLiteralValue!24069 (value!242616 List!46579)) (EOFValue!8023 (value!242617 List!46579)) (IdentValue!8023 (value!242618 List!46579)) (DelimiterValue!16047 (value!242619 List!46579)) (DedentValue!8023 (value!242620 List!46579)) (NewLineValue!8023 (value!242621 List!46579)) (IntegerValue!24069 (value!242622 (_ BitVec 32)) (text!56608 List!46579)) (IntegerValue!24070 (value!242623 Int) (text!56609 List!46579)) (Times!8023) (Or!8023) (Equal!8023) (Minus!8023) (Broken!40119 (value!242624 List!46579)) (And!8023) (Div!8023) (LessEqual!8023) (Mod!8023) (Concat!20721) (Not!8023) (Plus!8023) (SpaceValue!8023 (value!242625 List!46579)) (IntegerValue!24071 (value!242626 Int) (text!56610 List!46579)) (StringLiteralValue!24070 (text!56611 List!46579)) (FloatLiteralValue!16047 (text!56612 List!46579)) (BytesLiteralValue!8023 (value!242627 List!46579)) (CommentValue!16047 (value!242628 List!46579)) (StringLiteralValue!24071 (value!242629 List!46579)) (ErrorTokenValue!8023 (msg!8084 List!46579)) )
))
(declare-datatypes ((IArray!28013 0))(
  ( (IArray!28014 (innerList!14064 List!46578)) )
))
(declare-datatypes ((Regex!12698 0))(
  ( (ElementMatch!12698 (c!718349 C!25590)) (Concat!20722 (regOne!25908 Regex!12698) (regTwo!25908 Regex!12698)) (EmptyExpr!12698) (Star!12698 (reg!13027 Regex!12698)) (EmptyLang!12698) (Union!12698 (regOne!25909 Regex!12698) (regTwo!25909 Regex!12698)) )
))
(declare-datatypes ((String!53987 0))(
  ( (String!53988 (value!242630 String)) )
))
(declare-datatypes ((Conc!14004 0))(
  ( (Node!14004 (left!34544 Conc!14004) (right!34874 Conc!14004) (csize!28238 Int) (cheight!14215 Int)) (Leaf!21645 (xs!17310 IArray!28013) (csize!28239 Int)) (Empty!14004) )
))
(declare-datatypes ((BalanceConc!27602 0))(
  ( (BalanceConc!27603 (c!718350 Conc!14004)) )
))
(declare-datatypes ((TokenValueInjection!15474 0))(
  ( (TokenValueInjection!15475 (toValue!10517 Int) (toChars!10376 Int)) )
))
(declare-datatypes ((Rule!15386 0))(
  ( (Rule!15387 (regex!7793 Regex!12698) (tag!8657 String!53987) (isSeparator!7793 Bool) (transformation!7793 TokenValueInjection!15474)) )
))
(declare-datatypes ((List!46580 0))(
  ( (Nil!46456) (Cons!46456 (h!51876 Rule!15386) (t!349085 List!46580)) )
))
(declare-fun rules!3967 () List!46580)

(declare-fun e!2621198 () Bool)

(declare-fun b!4221942 () Bool)

(declare-fun tp!1291930 () Bool)

(declare-fun e!2621196 () Bool)

(declare-fun inv!61121 (String!53987) Bool)

(declare-fun inv!61124 (TokenValueInjection!15474) Bool)

(assert (=> b!4221942 (= e!2621198 (and tp!1291930 (inv!61121 (tag!8657 (h!51876 rules!3967))) (inv!61124 (transformation!7793 (h!51876 rules!3967))) e!2621196))))

(declare-fun b!4221943 () Bool)

(declare-fun res!1735484 () Bool)

(declare-fun e!2621181 () Bool)

(assert (=> b!4221943 (=> res!1735484 e!2621181)))

(declare-datatypes ((Token!14288 0))(
  ( (Token!14289 (value!242631 TokenValue!8023) (rule!10931 Rule!15386) (size!34110 Int) (originalCharacters!8175 List!46578)) )
))
(declare-fun tBis!41 () Token!14288)

(declare-fun rBis!178 () Rule!15386)

(assert (=> b!4221943 (= res!1735484 (not (= (rule!10931 tBis!41) rBis!178)))))

(declare-fun b!4221944 () Bool)

(declare-fun e!2621190 () Bool)

(declare-fun tp!1291927 () Bool)

(assert (=> b!4221944 (= e!2621190 (and e!2621198 tp!1291927))))

(declare-fun b!4221945 () Bool)

(declare-fun res!1735477 () Bool)

(assert (=> b!4221945 (=> (not res!1735477) (not e!2621182))))

(declare-fun contains!9616 (List!46580 Rule!15386) Bool)

(assert (=> b!4221945 (= res!1735477 (contains!9616 rules!3967 rBis!178))))

(declare-fun b!4221946 () Bool)

(declare-fun e!2621180 () Bool)

(declare-fun tp_is_empty!22363 () Bool)

(declare-fun tp!1291940 () Bool)

(assert (=> b!4221946 (= e!2621180 (and tp_is_empty!22363 tp!1291940))))

(declare-fun b!4221947 () Bool)

(declare-fun res!1735475 () Bool)

(assert (=> b!4221947 (=> res!1735475 e!2621181)))

(declare-fun list!16812 (BalanceConc!27602) List!46578)

(declare-fun charsOf!5216 (Token!14288) BalanceConc!27602)

(assert (=> b!4221947 (= res!1735475 (not (= (list!16812 (charsOf!5216 tBis!41)) pBis!121)))))

(declare-fun b!4221948 () Bool)

(declare-fun res!1735488 () Bool)

(declare-fun e!2621199 () Bool)

(assert (=> b!4221948 (=> res!1735488 e!2621199)))

(assert (=> b!4221948 (= res!1735488 (not (contains!9616 (t!349085 rules!3967) rBis!178)))))

(declare-fun b!4221949 () Bool)

(declare-fun res!1735486 () Bool)

(assert (=> b!4221949 (=> (not res!1735486) (not e!2621182))))

(declare-fun p!3001 () List!46578)

(declare-fun suffix!1557 () List!46578)

(declare-fun ++!11867 (List!46578 List!46578) List!46578)

(assert (=> b!4221949 (= res!1735486 (= (++!11867 p!3001 suffix!1557) input!3517))))

(declare-fun b!4221950 () Bool)

(declare-fun e!2621193 () Bool)

(declare-fun tp!1291932 () Bool)

(assert (=> b!4221950 (= e!2621193 (and tp_is_empty!22363 tp!1291932))))

(declare-fun tp!1291938 () Bool)

(declare-fun t!8364 () Token!14288)

(declare-fun b!4221951 () Bool)

(declare-fun e!2621179 () Bool)

(declare-fun e!2621177 () Bool)

(assert (=> b!4221951 (= e!2621177 (and tp!1291938 (inv!61121 (tag!8657 (rule!10931 t!8364))) (inv!61124 (transformation!7793 (rule!10931 t!8364))) e!2621179))))

(declare-fun e!2621194 () Bool)

(declare-fun tp!1291928 () Bool)

(declare-fun b!4221952 () Bool)

(declare-fun e!2621187 () Bool)

(declare-fun inv!21 (TokenValue!8023) Bool)

(assert (=> b!4221952 (= e!2621187 (and (inv!21 (value!242631 tBis!41)) e!2621194 tp!1291928))))

(declare-fun b!4221953 () Bool)

(declare-fun e!2621191 () Bool)

(assert (=> b!4221953 (= e!2621191 (not e!2621181))))

(declare-fun res!1735480 () Bool)

(assert (=> b!4221953 (=> res!1735480 e!2621181)))

(declare-datatypes ((LexerInterface!7388 0))(
  ( (LexerInterfaceExt!7385 (__x!28270 Int)) (Lexer!7386) )
))
(declare-fun thiss!26544 () LexerInterface!7388)

(declare-fun suffixBis!41 () List!46578)

(declare-datatypes ((tuple2!44176 0))(
  ( (tuple2!44177 (_1!25222 Token!14288) (_2!25222 List!46578)) )
))
(declare-datatypes ((Option!9981 0))(
  ( (None!9980) (Some!9980 (v!40874 tuple2!44176)) )
))
(declare-fun maxPrefixOneRule!3383 (LexerInterface!7388 Rule!15386 List!46578) Option!9981)

(assert (=> b!4221953 (= res!1735480 (not (= (maxPrefixOneRule!3383 thiss!26544 rBis!178 input!3517) (Some!9980 (tuple2!44177 tBis!41 suffixBis!41)))))))

(assert (=> b!4221953 (isPrefix!4652 input!3517 input!3517)))

(declare-datatypes ((Unit!65626 0))(
  ( (Unit!65627) )
))
(declare-fun lt!1502225 () Unit!65626)

(declare-fun lemmaIsPrefixRefl!3069 (List!46578 List!46578) Unit!65626)

(assert (=> b!4221953 (= lt!1502225 (lemmaIsPrefixRefl!3069 input!3517 input!3517))))

(declare-fun e!2621184 () Bool)

(declare-fun b!4221954 () Bool)

(declare-fun e!2621200 () Bool)

(declare-fun tp!1291929 () Bool)

(assert (=> b!4221954 (= e!2621200 (and tp!1291929 (inv!61121 (tag!8657 rBis!178)) (inv!61124 (transformation!7793 rBis!178)) e!2621184))))

(declare-fun b!4221955 () Bool)

(declare-fun res!1735489 () Bool)

(assert (=> b!4221955 (=> res!1735489 e!2621199)))

(declare-fun lt!1502226 () Option!9981)

(declare-fun maxPrefix!4428 (LexerInterface!7388 List!46580 List!46578) Option!9981)

(assert (=> b!4221955 (= res!1735489 (not (= (maxPrefix!4428 thiss!26544 (t!349085 rules!3967) input!3517) lt!1502226)))))

(assert (=> b!4221956 (= e!2621196 (and tp!1291942 tp!1291934))))

(declare-fun e!2621197 () Bool)

(assert (=> b!4221957 (= e!2621197 (and tp!1291926 tp!1291944))))

(declare-fun b!4221958 () Bool)

(declare-fun tp!1291933 () Bool)

(assert (=> b!4221958 (= e!2621194 (and tp!1291933 (inv!61121 (tag!8657 (rule!10931 tBis!41))) (inv!61124 (transformation!7793 (rule!10931 tBis!41))) e!2621197))))

(declare-fun b!4221959 () Bool)

(declare-fun res!1735491 () Bool)

(assert (=> b!4221959 (=> res!1735491 e!2621181)))

(assert (=> b!4221959 (= res!1735491 (not (= (++!11867 pBis!121 suffixBis!41) input!3517)))))

(declare-fun res!1735492 () Bool)

(assert (=> start!403568 (=> (not res!1735492) (not e!2621182))))

(assert (=> start!403568 (= res!1735492 (is-Lexer!7386 thiss!26544))))

(assert (=> start!403568 e!2621182))

(declare-fun inv!61125 (Token!14288) Bool)

(assert (=> start!403568 (and (inv!61125 tBis!41) e!2621187)))

(assert (=> start!403568 true))

(assert (=> start!403568 e!2621200))

(assert (=> start!403568 e!2621180))

(assert (=> start!403568 e!2621190))

(declare-fun e!2621176 () Bool)

(assert (=> start!403568 e!2621176))

(declare-fun e!2621189 () Bool)

(assert (=> start!403568 (and (inv!61125 t!8364) e!2621189)))

(assert (=> start!403568 e!2621193))

(declare-fun e!2621195 () Bool)

(assert (=> start!403568 e!2621195))

(declare-fun e!2621183 () Bool)

(assert (=> start!403568 e!2621183))

(assert (=> b!4221960 (= e!2621184 (and tp!1291935 tp!1291943))))

(declare-fun b!4221961 () Bool)

(declare-fun tp!1291931 () Bool)

(assert (=> b!4221961 (= e!2621176 (and tp_is_empty!22363 tp!1291931))))

(declare-fun tp!1291937 () Bool)

(declare-fun b!4221962 () Bool)

(assert (=> b!4221962 (= e!2621189 (and (inv!21 (value!242631 t!8364)) e!2621177 tp!1291937))))

(declare-fun b!4221963 () Bool)

(declare-fun tp!1291936 () Bool)

(assert (=> b!4221963 (= e!2621195 (and tp_is_empty!22363 tp!1291936))))

(declare-fun b!4221964 () Bool)

(declare-fun tp!1291941 () Bool)

(assert (=> b!4221964 (= e!2621183 (and tp_is_empty!22363 tp!1291941))))

(declare-fun b!4221965 () Bool)

(declare-fun res!1735485 () Bool)

(assert (=> b!4221965 (=> res!1735485 e!2621181)))

(assert (=> b!4221965 (= res!1735485 (or (and (is-Cons!46456 rules!3967) (is-Nil!46456 (t!349085 rules!3967))) (not (is-Cons!46456 rules!3967)) (= (h!51876 rules!3967) rBis!178)))))

(assert (=> b!4221966 (= e!2621179 (and tp!1291939 tp!1291925))))

(declare-fun b!4221967 () Bool)

(assert (=> b!4221967 (= e!2621181 e!2621199)))

(declare-fun res!1735490 () Bool)

(assert (=> b!4221967 (=> res!1735490 e!2621199)))

(declare-fun isEmpty!27524 (List!46580) Bool)

(assert (=> b!4221967 (= res!1735490 (isEmpty!27524 (t!349085 rules!3967)))))

(declare-fun rulesInvariant!6599 (LexerInterface!7388 List!46580) Bool)

(assert (=> b!4221967 (rulesInvariant!6599 thiss!26544 (t!349085 rules!3967))))

(declare-fun lt!1502227 () Unit!65626)

(declare-fun lemmaInvariantOnRulesThenOnTail!881 (LexerInterface!7388 Rule!15386 List!46580) Unit!65626)

(assert (=> b!4221967 (= lt!1502227 (lemmaInvariantOnRulesThenOnTail!881 thiss!26544 (h!51876 rules!3967) (t!349085 rules!3967)))))

(declare-fun b!4221968 () Bool)

(declare-fun res!1735482 () Bool)

(assert (=> b!4221968 (=> (not res!1735482) (not e!2621182))))

(assert (=> b!4221968 (= res!1735482 (isPrefix!4652 p!3001 input!3517))))

(declare-fun b!4221969 () Bool)

(declare-fun res!1735487 () Bool)

(assert (=> b!4221969 (=> (not res!1735487) (not e!2621182))))

(assert (=> b!4221969 (= res!1735487 (not (isEmpty!27524 rules!3967)))))

(declare-fun b!4221970 () Bool)

(declare-fun res!1735483 () Bool)

(assert (=> b!4221970 (=> res!1735483 e!2621181)))

(assert (=> b!4221970 (= res!1735483 (= (maxPrefixOneRule!3383 thiss!26544 (h!51876 rules!3967) input!3517) lt!1502226))))

(declare-fun b!4221971 () Bool)

(declare-fun res!1735481 () Bool)

(assert (=> b!4221971 (=> (not res!1735481) (not e!2621191))))

(declare-fun ruleValid!3505 (LexerInterface!7388 Rule!15386) Bool)

(assert (=> b!4221971 (= res!1735481 (ruleValid!3505 thiss!26544 rBis!178))))

(declare-fun b!4221972 () Bool)

(declare-fun ListPrimitiveSize!300 (List!46580) Int)

(assert (=> b!4221972 (= e!2621199 (< (ListPrimitiveSize!300 (t!349085 rules!3967)) (ListPrimitiveSize!300 rules!3967)))))

(declare-fun b!4221973 () Bool)

(declare-fun res!1735478 () Bool)

(assert (=> b!4221973 (=> (not res!1735478) (not e!2621182))))

(assert (=> b!4221973 (= res!1735478 (rulesInvariant!6599 thiss!26544 rules!3967))))

(declare-fun b!4221974 () Bool)

(assert (=> b!4221974 (= e!2621182 e!2621191)))

(declare-fun res!1735476 () Bool)

(assert (=> b!4221974 (=> (not res!1735476) (not e!2621191))))

(assert (=> b!4221974 (= res!1735476 (= (maxPrefix!4428 thiss!26544 rules!3967 input!3517) lt!1502226))))

(assert (=> b!4221974 (= lt!1502226 (Some!9980 (tuple2!44177 t!8364 suffix!1557)))))

(assert (= (and start!403568 res!1735492) b!4221949))

(assert (= (and b!4221949 res!1735486) b!4221968))

(assert (= (and b!4221968 res!1735482) b!4221941))

(assert (= (and b!4221941 res!1735479) b!4221969))

(assert (= (and b!4221969 res!1735487) b!4221973))

(assert (= (and b!4221973 res!1735478) b!4221945))

(assert (= (and b!4221945 res!1735477) b!4221974))

(assert (= (and b!4221974 res!1735476) b!4221971))

(assert (= (and b!4221971 res!1735481) b!4221953))

(assert (= (and b!4221953 (not res!1735480)) b!4221943))

(assert (= (and b!4221943 (not res!1735484)) b!4221947))

(assert (= (and b!4221947 (not res!1735475)) b!4221959))

(assert (= (and b!4221959 (not res!1735491)) b!4221965))

(assert (= (and b!4221965 (not res!1735485)) b!4221970))

(assert (= (and b!4221970 (not res!1735483)) b!4221967))

(assert (= (and b!4221967 (not res!1735490)) b!4221948))

(assert (= (and b!4221948 (not res!1735488)) b!4221955))

(assert (= (and b!4221955 (not res!1735489)) b!4221972))

(assert (= b!4221958 b!4221957))

(assert (= b!4221952 b!4221958))

(assert (= start!403568 b!4221952))

(assert (= b!4221954 b!4221960))

(assert (= start!403568 b!4221954))

(assert (= (and start!403568 (is-Cons!46454 p!3001)) b!4221946))

(assert (= b!4221942 b!4221956))

(assert (= b!4221944 b!4221942))

(assert (= (and start!403568 (is-Cons!46456 rules!3967)) b!4221944))

(assert (= (and start!403568 (is-Cons!46454 input!3517)) b!4221961))

(assert (= b!4221951 b!4221966))

(assert (= b!4221962 b!4221951))

(assert (= start!403568 b!4221962))

(assert (= (and start!403568 (is-Cons!46454 pBis!121)) b!4221950))

(assert (= (and start!403568 (is-Cons!46454 suffix!1557)) b!4221963))

(assert (= (and start!403568 (is-Cons!46454 suffixBis!41)) b!4221964))

(declare-fun m!4810595 () Bool)

(assert (=> start!403568 m!4810595))

(declare-fun m!4810597 () Bool)

(assert (=> start!403568 m!4810597))

(declare-fun m!4810599 () Bool)

(assert (=> b!4221972 m!4810599))

(declare-fun m!4810601 () Bool)

(assert (=> b!4221972 m!4810601))

(declare-fun m!4810603 () Bool)

(assert (=> b!4221970 m!4810603))

(declare-fun m!4810605 () Bool)

(assert (=> b!4221969 m!4810605))

(declare-fun m!4810607 () Bool)

(assert (=> b!4221949 m!4810607))

(declare-fun m!4810609 () Bool)

(assert (=> b!4221968 m!4810609))

(declare-fun m!4810611 () Bool)

(assert (=> b!4221952 m!4810611))

(declare-fun m!4810613 () Bool)

(assert (=> b!4221959 m!4810613))

(declare-fun m!4810615 () Bool)

(assert (=> b!4221973 m!4810615))

(declare-fun m!4810617 () Bool)

(assert (=> b!4221954 m!4810617))

(declare-fun m!4810619 () Bool)

(assert (=> b!4221954 m!4810619))

(declare-fun m!4810621 () Bool)

(assert (=> b!4221962 m!4810621))

(declare-fun m!4810623 () Bool)

(assert (=> b!4221967 m!4810623))

(declare-fun m!4810625 () Bool)

(assert (=> b!4221967 m!4810625))

(declare-fun m!4810627 () Bool)

(assert (=> b!4221967 m!4810627))

(declare-fun m!4810629 () Bool)

(assert (=> b!4221955 m!4810629))

(declare-fun m!4810631 () Bool)

(assert (=> b!4221941 m!4810631))

(declare-fun m!4810633 () Bool)

(assert (=> b!4221958 m!4810633))

(declare-fun m!4810635 () Bool)

(assert (=> b!4221958 m!4810635))

(declare-fun m!4810637 () Bool)

(assert (=> b!4221951 m!4810637))

(declare-fun m!4810639 () Bool)

(assert (=> b!4221951 m!4810639))

(declare-fun m!4810641 () Bool)

(assert (=> b!4221942 m!4810641))

(declare-fun m!4810643 () Bool)

(assert (=> b!4221942 m!4810643))

(declare-fun m!4810645 () Bool)

(assert (=> b!4221974 m!4810645))

(declare-fun m!4810647 () Bool)

(assert (=> b!4221945 m!4810647))

(declare-fun m!4810649 () Bool)

(assert (=> b!4221971 m!4810649))

(declare-fun m!4810651 () Bool)

(assert (=> b!4221953 m!4810651))

(declare-fun m!4810653 () Bool)

(assert (=> b!4221953 m!4810653))

(declare-fun m!4810655 () Bool)

(assert (=> b!4221953 m!4810655))

(declare-fun m!4810657 () Bool)

(assert (=> b!4221948 m!4810657))

(declare-fun m!4810659 () Bool)

(assert (=> b!4221947 m!4810659))

(assert (=> b!4221947 m!4810659))

(declare-fun m!4810661 () Bool)

(assert (=> b!4221947 m!4810661))

(push 1)

(assert (not b_next!124779))

(assert (not b!4221972))

(assert b_and!333181)

(assert b_and!333187)

(assert (not b!4221973))

(assert (not b_next!124781))

(assert (not b_next!124777))

(assert (not b!4221949))

(assert (not b!4221942))

(assert (not b!4221974))

(assert (not b!4221945))

(assert b_and!333185)

(assert b_and!333189)

(assert (not b_next!124773))

(assert (not b!4221950))

(assert (not b_next!124775))

(assert b_and!333193)

(assert (not b!4221948))

(assert (not b!4221953))

(assert (not b!4221968))

(assert (not b!4221963))

(assert (not start!403568))

(assert (not b!4221959))

(assert b_and!333183)

(assert (not b_next!124785))

(assert (not b!4221955))

(assert (not b!4221941))

(assert b_and!333191)

(assert (not b!4221962))

(assert (not b!4221946))

(assert (not b!4221954))

(assert (not b!4221961))

(assert (not b_next!124771))

(assert (not b!4221947))

(assert (not b!4221951))

(assert b_and!333195)

(assert (not b_next!124783))

(assert tp_is_empty!22363)

(assert (not b!4221971))

(assert (not b!4221969))

(assert (not b!4221964))

(assert (not b!4221944))

(assert (not b!4221952))

(assert (not b!4221967))

(assert (not b!4221970))

(assert (not b!4221958))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!124779))

(assert b_and!333181)

(assert b_and!333187)

(assert b_and!333193)

(assert b_and!333191)

(assert (not b_next!124781))

(assert (not b_next!124771))

(assert (not b_next!124777))

(assert b_and!333185)

(assert b_and!333189)

(assert (not b_next!124773))

(assert (not b_next!124775))

(assert b_and!333183)

(assert (not b_next!124785))

(assert b_and!333195)

(assert (not b_next!124783))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1243529 () Bool)

(assert (=> d!1243529 (= (inv!61121 (tag!8657 (rule!10931 t!8364))) (= (mod (str.len (value!242630 (tag!8657 (rule!10931 t!8364)))) 2) 0))))

(assert (=> b!4221951 d!1243529))

(declare-fun d!1243531 () Bool)

(declare-fun res!1735561 () Bool)

(declare-fun e!2621281 () Bool)

(assert (=> d!1243531 (=> (not res!1735561) (not e!2621281))))

(declare-fun semiInverseModEq!3388 (Int Int) Bool)

(assert (=> d!1243531 (= res!1735561 (semiInverseModEq!3388 (toChars!10376 (transformation!7793 (rule!10931 t!8364))) (toValue!10517 (transformation!7793 (rule!10931 t!8364)))))))

(assert (=> d!1243531 (= (inv!61124 (transformation!7793 (rule!10931 t!8364))) e!2621281)))

(declare-fun b!4222079 () Bool)

(declare-fun equivClasses!3287 (Int Int) Bool)

(assert (=> b!4222079 (= e!2621281 (equivClasses!3287 (toChars!10376 (transformation!7793 (rule!10931 t!8364))) (toValue!10517 (transformation!7793 (rule!10931 t!8364)))))))

(assert (= (and d!1243531 res!1735561) b!4222079))

(declare-fun m!4810731 () Bool)

(assert (=> d!1243531 m!4810731))

(declare-fun m!4810733 () Bool)

(assert (=> b!4222079 m!4810733))

(assert (=> b!4221951 d!1243531))

(declare-fun b!4222090 () Bool)

(declare-fun res!1735564 () Bool)

(declare-fun e!2621289 () Bool)

(assert (=> b!4222090 (=> res!1735564 e!2621289)))

(assert (=> b!4222090 (= res!1735564 (not (is-IntegerValue!24071 (value!242631 t!8364))))))

(declare-fun e!2621288 () Bool)

(assert (=> b!4222090 (= e!2621288 e!2621289)))

(declare-fun b!4222091 () Bool)

(declare-fun e!2621290 () Bool)

(declare-fun inv!16 (TokenValue!8023) Bool)

(assert (=> b!4222091 (= e!2621290 (inv!16 (value!242631 t!8364)))))

(declare-fun b!4222092 () Bool)

(assert (=> b!4222092 (= e!2621290 e!2621288)))

(declare-fun c!718358 () Bool)

(assert (=> b!4222092 (= c!718358 (is-IntegerValue!24070 (value!242631 t!8364)))))

(declare-fun d!1243533 () Bool)

(declare-fun c!718359 () Bool)

(assert (=> d!1243533 (= c!718359 (is-IntegerValue!24069 (value!242631 t!8364)))))

(assert (=> d!1243533 (= (inv!21 (value!242631 t!8364)) e!2621290)))

(declare-fun b!4222093 () Bool)

(declare-fun inv!15 (TokenValue!8023) Bool)

(assert (=> b!4222093 (= e!2621289 (inv!15 (value!242631 t!8364)))))

(declare-fun b!4222094 () Bool)

(declare-fun inv!17 (TokenValue!8023) Bool)

(assert (=> b!4222094 (= e!2621288 (inv!17 (value!242631 t!8364)))))

(assert (= (and d!1243533 c!718359) b!4222091))

(assert (= (and d!1243533 (not c!718359)) b!4222092))

(assert (= (and b!4222092 c!718358) b!4222094))

(assert (= (and b!4222092 (not c!718358)) b!4222090))

(assert (= (and b!4222090 (not res!1735564)) b!4222093))

(declare-fun m!4810735 () Bool)

(assert (=> b!4222091 m!4810735))

(declare-fun m!4810737 () Bool)

(assert (=> b!4222093 m!4810737))

(declare-fun m!4810739 () Bool)

(assert (=> b!4222094 m!4810739))

(assert (=> b!4221962 d!1243533))

(declare-fun d!1243535 () Bool)

(declare-fun lt!1502239 () Int)

(assert (=> d!1243535 (>= lt!1502239 0)))

(declare-fun e!2621293 () Int)

(assert (=> d!1243535 (= lt!1502239 e!2621293)))

(declare-fun c!718362 () Bool)

(assert (=> d!1243535 (= c!718362 (is-Nil!46456 (t!349085 rules!3967)))))

(assert (=> d!1243535 (= (ListPrimitiveSize!300 (t!349085 rules!3967)) lt!1502239)))

(declare-fun b!4222099 () Bool)

(assert (=> b!4222099 (= e!2621293 0)))

(declare-fun b!4222100 () Bool)

(assert (=> b!4222100 (= e!2621293 (+ 1 (ListPrimitiveSize!300 (t!349085 (t!349085 rules!3967)))))))

(assert (= (and d!1243535 c!718362) b!4222099))

(assert (= (and d!1243535 (not c!718362)) b!4222100))

(declare-fun m!4810741 () Bool)

(assert (=> b!4222100 m!4810741))

(assert (=> b!4221972 d!1243535))

(declare-fun d!1243537 () Bool)

(declare-fun lt!1502240 () Int)

(assert (=> d!1243537 (>= lt!1502240 0)))

(declare-fun e!2621294 () Int)

(assert (=> d!1243537 (= lt!1502240 e!2621294)))

(declare-fun c!718363 () Bool)

(assert (=> d!1243537 (= c!718363 (is-Nil!46456 rules!3967))))

(assert (=> d!1243537 (= (ListPrimitiveSize!300 rules!3967) lt!1502240)))

(declare-fun b!4222101 () Bool)

(assert (=> b!4222101 (= e!2621294 0)))

(declare-fun b!4222102 () Bool)

(assert (=> b!4222102 (= e!2621294 (+ 1 (ListPrimitiveSize!300 (t!349085 rules!3967))))))

(assert (= (and d!1243537 c!718363) b!4222101))

(assert (= (and d!1243537 (not c!718363)) b!4222102))

(assert (=> b!4222102 m!4810599))

(assert (=> b!4221972 d!1243537))

(declare-fun d!1243539 () Bool)

(assert (=> d!1243539 (= (inv!61121 (tag!8657 (h!51876 rules!3967))) (= (mod (str.len (value!242630 (tag!8657 (h!51876 rules!3967)))) 2) 0))))

(assert (=> b!4221942 d!1243539))

(declare-fun d!1243541 () Bool)

(declare-fun res!1735565 () Bool)

(declare-fun e!2621295 () Bool)

(assert (=> d!1243541 (=> (not res!1735565) (not e!2621295))))

(assert (=> d!1243541 (= res!1735565 (semiInverseModEq!3388 (toChars!10376 (transformation!7793 (h!51876 rules!3967))) (toValue!10517 (transformation!7793 (h!51876 rules!3967)))))))

(assert (=> d!1243541 (= (inv!61124 (transformation!7793 (h!51876 rules!3967))) e!2621295)))

(declare-fun b!4222103 () Bool)

(assert (=> b!4222103 (= e!2621295 (equivClasses!3287 (toChars!10376 (transformation!7793 (h!51876 rules!3967))) (toValue!10517 (transformation!7793 (h!51876 rules!3967)))))))

(assert (= (and d!1243541 res!1735565) b!4222103))

(declare-fun m!4810743 () Bool)

(assert (=> d!1243541 m!4810743))

(declare-fun m!4810745 () Bool)

(assert (=> b!4222103 m!4810745))

(assert (=> b!4221942 d!1243541))

(declare-fun d!1243543 () Bool)

(declare-fun e!2621304 () Bool)

(assert (=> d!1243543 e!2621304))

(declare-fun res!1735583 () Bool)

(assert (=> d!1243543 (=> res!1735583 e!2621304)))

(declare-fun lt!1502253 () Option!9981)

(declare-fun isEmpty!27526 (Option!9981) Bool)

(assert (=> d!1243543 (= res!1735583 (isEmpty!27526 lt!1502253))))

(declare-fun e!2621302 () Option!9981)

(assert (=> d!1243543 (= lt!1502253 e!2621302)))

(declare-fun c!718366 () Bool)

(assert (=> d!1243543 (= c!718366 (and (is-Cons!46456 rules!3967) (is-Nil!46456 (t!349085 rules!3967))))))

(declare-fun lt!1502251 () Unit!65626)

(declare-fun lt!1502255 () Unit!65626)

(assert (=> d!1243543 (= lt!1502251 lt!1502255)))

(assert (=> d!1243543 (isPrefix!4652 input!3517 input!3517)))

(assert (=> d!1243543 (= lt!1502255 (lemmaIsPrefixRefl!3069 input!3517 input!3517))))

(declare-fun rulesValidInductive!2899 (LexerInterface!7388 List!46580) Bool)

(assert (=> d!1243543 (rulesValidInductive!2899 thiss!26544 rules!3967)))

(assert (=> d!1243543 (= (maxPrefix!4428 thiss!26544 rules!3967 input!3517) lt!1502253)))

(declare-fun b!4222122 () Bool)

(declare-fun e!2621303 () Bool)

(declare-fun get!15120 (Option!9981) tuple2!44176)

(assert (=> b!4222122 (= e!2621303 (contains!9616 rules!3967 (rule!10931 (_1!25222 (get!15120 lt!1502253)))))))

(declare-fun b!4222123 () Bool)

(declare-fun res!1735581 () Bool)

(assert (=> b!4222123 (=> (not res!1735581) (not e!2621303))))

(assert (=> b!4222123 (= res!1735581 (= (++!11867 (list!16812 (charsOf!5216 (_1!25222 (get!15120 lt!1502253)))) (_2!25222 (get!15120 lt!1502253))) input!3517))))

(declare-fun b!4222124 () Bool)

(declare-fun res!1735586 () Bool)

(assert (=> b!4222124 (=> (not res!1735586) (not e!2621303))))

(assert (=> b!4222124 (= res!1735586 (= (list!16812 (charsOf!5216 (_1!25222 (get!15120 lt!1502253)))) (originalCharacters!8175 (_1!25222 (get!15120 lt!1502253)))))))

(declare-fun b!4222125 () Bool)

(assert (=> b!4222125 (= e!2621304 e!2621303)))

(declare-fun res!1735585 () Bool)

(assert (=> b!4222125 (=> (not res!1735585) (not e!2621303))))

(declare-fun isDefined!7409 (Option!9981) Bool)

(assert (=> b!4222125 (= res!1735585 (isDefined!7409 lt!1502253))))

(declare-fun call!293161 () Option!9981)

(declare-fun bm!293156 () Bool)

(assert (=> bm!293156 (= call!293161 (maxPrefixOneRule!3383 thiss!26544 (h!51876 rules!3967) input!3517))))

(declare-fun b!4222126 () Bool)

(declare-fun res!1735580 () Bool)

(assert (=> b!4222126 (=> (not res!1735580) (not e!2621303))))

(declare-fun apply!10708 (TokenValueInjection!15474 BalanceConc!27602) TokenValue!8023)

(declare-fun seqFromList!5768 (List!46578) BalanceConc!27602)

(assert (=> b!4222126 (= res!1735580 (= (value!242631 (_1!25222 (get!15120 lt!1502253))) (apply!10708 (transformation!7793 (rule!10931 (_1!25222 (get!15120 lt!1502253)))) (seqFromList!5768 (originalCharacters!8175 (_1!25222 (get!15120 lt!1502253)))))))))

(declare-fun b!4222127 () Bool)

(assert (=> b!4222127 (= e!2621302 call!293161)))

(declare-fun b!4222128 () Bool)

(declare-fun lt!1502252 () Option!9981)

(declare-fun lt!1502254 () Option!9981)

(assert (=> b!4222128 (= e!2621302 (ite (and (is-None!9980 lt!1502252) (is-None!9980 lt!1502254)) None!9980 (ite (is-None!9980 lt!1502254) lt!1502252 (ite (is-None!9980 lt!1502252) lt!1502254 (ite (>= (size!34110 (_1!25222 (v!40874 lt!1502252))) (size!34110 (_1!25222 (v!40874 lt!1502254)))) lt!1502252 lt!1502254)))))))

(assert (=> b!4222128 (= lt!1502252 call!293161)))

(assert (=> b!4222128 (= lt!1502254 (maxPrefix!4428 thiss!26544 (t!349085 rules!3967) input!3517))))

(declare-fun b!4222129 () Bool)

(declare-fun res!1735584 () Bool)

(assert (=> b!4222129 (=> (not res!1735584) (not e!2621303))))

(declare-fun size!34112 (List!46578) Int)

(assert (=> b!4222129 (= res!1735584 (< (size!34112 (_2!25222 (get!15120 lt!1502253))) (size!34112 input!3517)))))

(declare-fun b!4222130 () Bool)

(declare-fun res!1735582 () Bool)

(assert (=> b!4222130 (=> (not res!1735582) (not e!2621303))))

(declare-fun matchR!6387 (Regex!12698 List!46578) Bool)

(assert (=> b!4222130 (= res!1735582 (matchR!6387 (regex!7793 (rule!10931 (_1!25222 (get!15120 lt!1502253)))) (list!16812 (charsOf!5216 (_1!25222 (get!15120 lt!1502253))))))))

(assert (= (and d!1243543 c!718366) b!4222127))

(assert (= (and d!1243543 (not c!718366)) b!4222128))

(assert (= (or b!4222127 b!4222128) bm!293156))

(assert (= (and d!1243543 (not res!1735583)) b!4222125))

(assert (= (and b!4222125 res!1735585) b!4222124))

(assert (= (and b!4222124 res!1735586) b!4222129))

(assert (= (and b!4222129 res!1735584) b!4222123))

(assert (= (and b!4222123 res!1735581) b!4222126))

(assert (= (and b!4222126 res!1735580) b!4222130))

(assert (= (and b!4222130 res!1735582) b!4222122))

(declare-fun m!4810747 () Bool)

(assert (=> d!1243543 m!4810747))

(assert (=> d!1243543 m!4810653))

(assert (=> d!1243543 m!4810655))

(declare-fun m!4810749 () Bool)

(assert (=> d!1243543 m!4810749))

(declare-fun m!4810751 () Bool)

(assert (=> b!4222129 m!4810751))

(declare-fun m!4810753 () Bool)

(assert (=> b!4222129 m!4810753))

(declare-fun m!4810755 () Bool)

(assert (=> b!4222129 m!4810755))

(assert (=> b!4222124 m!4810751))

(declare-fun m!4810757 () Bool)

(assert (=> b!4222124 m!4810757))

(assert (=> b!4222124 m!4810757))

(declare-fun m!4810759 () Bool)

(assert (=> b!4222124 m!4810759))

(declare-fun m!4810761 () Bool)

(assert (=> b!4222125 m!4810761))

(assert (=> bm!293156 m!4810603))

(assert (=> b!4222130 m!4810751))

(assert (=> b!4222130 m!4810757))

(assert (=> b!4222130 m!4810757))

(assert (=> b!4222130 m!4810759))

(assert (=> b!4222130 m!4810759))

(declare-fun m!4810763 () Bool)

(assert (=> b!4222130 m!4810763))

(assert (=> b!4222123 m!4810751))

(assert (=> b!4222123 m!4810757))

(assert (=> b!4222123 m!4810757))

(assert (=> b!4222123 m!4810759))

(assert (=> b!4222123 m!4810759))

(declare-fun m!4810765 () Bool)

(assert (=> b!4222123 m!4810765))

(assert (=> b!4222126 m!4810751))

(declare-fun m!4810767 () Bool)

(assert (=> b!4222126 m!4810767))

(assert (=> b!4222126 m!4810767))

(declare-fun m!4810769 () Bool)

(assert (=> b!4222126 m!4810769))

(assert (=> b!4222122 m!4810751))

(declare-fun m!4810771 () Bool)

(assert (=> b!4222122 m!4810771))

(assert (=> b!4222128 m!4810629))

(assert (=> b!4221974 d!1243543))

(declare-fun b!4222142 () Bool)

(declare-fun e!2621311 () Bool)

(assert (=> b!4222142 (= e!2621311 (>= (size!34112 input!3517) (size!34112 pBis!121)))))

(declare-fun d!1243547 () Bool)

(assert (=> d!1243547 e!2621311))

(declare-fun res!1735596 () Bool)

(assert (=> d!1243547 (=> res!1735596 e!2621311)))

(declare-fun lt!1502258 () Bool)

(assert (=> d!1243547 (= res!1735596 (not lt!1502258))))

(declare-fun e!2621313 () Bool)

(assert (=> d!1243547 (= lt!1502258 e!2621313)))

(declare-fun res!1735598 () Bool)

(assert (=> d!1243547 (=> res!1735598 e!2621313)))

(assert (=> d!1243547 (= res!1735598 (is-Nil!46454 pBis!121))))

(assert (=> d!1243547 (= (isPrefix!4652 pBis!121 input!3517) lt!1502258)))

(declare-fun b!4222139 () Bool)

(declare-fun e!2621312 () Bool)

(assert (=> b!4222139 (= e!2621313 e!2621312)))

(declare-fun res!1735597 () Bool)

(assert (=> b!4222139 (=> (not res!1735597) (not e!2621312))))

(assert (=> b!4222139 (= res!1735597 (not (is-Nil!46454 input!3517)))))

(declare-fun b!4222141 () Bool)

(declare-fun tail!6804 (List!46578) List!46578)

(assert (=> b!4222141 (= e!2621312 (isPrefix!4652 (tail!6804 pBis!121) (tail!6804 input!3517)))))

(declare-fun b!4222140 () Bool)

(declare-fun res!1735595 () Bool)

(assert (=> b!4222140 (=> (not res!1735595) (not e!2621312))))

(declare-fun head!8957 (List!46578) C!25590)

(assert (=> b!4222140 (= res!1735595 (= (head!8957 pBis!121) (head!8957 input!3517)))))

(assert (= (and d!1243547 (not res!1735598)) b!4222139))

(assert (= (and b!4222139 res!1735597) b!4222140))

(assert (= (and b!4222140 res!1735595) b!4222141))

(assert (= (and d!1243547 (not res!1735596)) b!4222142))

(assert (=> b!4222142 m!4810755))

(declare-fun m!4810773 () Bool)

(assert (=> b!4222142 m!4810773))

(declare-fun m!4810775 () Bool)

(assert (=> b!4222141 m!4810775))

(declare-fun m!4810777 () Bool)

(assert (=> b!4222141 m!4810777))

(assert (=> b!4222141 m!4810775))

(assert (=> b!4222141 m!4810777))

(declare-fun m!4810779 () Bool)

(assert (=> b!4222141 m!4810779))

(declare-fun m!4810781 () Bool)

(assert (=> b!4222140 m!4810781))

(declare-fun m!4810783 () Bool)

(assert (=> b!4222140 m!4810783))

(assert (=> b!4221941 d!1243547))

(declare-fun d!1243549 () Bool)

(declare-fun res!1735601 () Bool)

(declare-fun e!2621316 () Bool)

(assert (=> d!1243549 (=> (not res!1735601) (not e!2621316))))

(declare-fun rulesValid!3057 (LexerInterface!7388 List!46580) Bool)

(assert (=> d!1243549 (= res!1735601 (rulesValid!3057 thiss!26544 rules!3967))))

(assert (=> d!1243549 (= (rulesInvariant!6599 thiss!26544 rules!3967) e!2621316)))

(declare-fun b!4222145 () Bool)

(declare-datatypes ((List!46584 0))(
  ( (Nil!46460) (Cons!46460 (h!51880 String!53987) (t!349109 List!46584)) )
))
(declare-fun noDuplicateTag!3218 (LexerInterface!7388 List!46580 List!46584) Bool)

(assert (=> b!4222145 (= e!2621316 (noDuplicateTag!3218 thiss!26544 rules!3967 Nil!46460))))

(assert (= (and d!1243549 res!1735601) b!4222145))

(declare-fun m!4810785 () Bool)

(assert (=> d!1243549 m!4810785))

(declare-fun m!4810787 () Bool)

(assert (=> b!4222145 m!4810787))

(assert (=> b!4221973 d!1243549))

(declare-fun b!4222146 () Bool)

(declare-fun res!1735602 () Bool)

(declare-fun e!2621318 () Bool)

(assert (=> b!4222146 (=> res!1735602 e!2621318)))

(assert (=> b!4222146 (= res!1735602 (not (is-IntegerValue!24071 (value!242631 tBis!41))))))

(declare-fun e!2621317 () Bool)

(assert (=> b!4222146 (= e!2621317 e!2621318)))

(declare-fun b!4222147 () Bool)

(declare-fun e!2621319 () Bool)

(assert (=> b!4222147 (= e!2621319 (inv!16 (value!242631 tBis!41)))))

(declare-fun b!4222148 () Bool)

(assert (=> b!4222148 (= e!2621319 e!2621317)))

(declare-fun c!718367 () Bool)

(assert (=> b!4222148 (= c!718367 (is-IntegerValue!24070 (value!242631 tBis!41)))))

(declare-fun d!1243551 () Bool)

(declare-fun c!718368 () Bool)

(assert (=> d!1243551 (= c!718368 (is-IntegerValue!24069 (value!242631 tBis!41)))))

(assert (=> d!1243551 (= (inv!21 (value!242631 tBis!41)) e!2621319)))

(declare-fun b!4222149 () Bool)

(assert (=> b!4222149 (= e!2621318 (inv!15 (value!242631 tBis!41)))))

(declare-fun b!4222150 () Bool)

(assert (=> b!4222150 (= e!2621317 (inv!17 (value!242631 tBis!41)))))

(assert (= (and d!1243551 c!718368) b!4222147))

(assert (= (and d!1243551 (not c!718368)) b!4222148))

(assert (= (and b!4222148 c!718367) b!4222150))

(assert (= (and b!4222148 (not c!718367)) b!4222146))

(assert (= (and b!4222146 (not res!1735602)) b!4222149))

(declare-fun m!4810789 () Bool)

(assert (=> b!4222147 m!4810789))

(declare-fun m!4810791 () Bool)

(assert (=> b!4222149 m!4810791))

(declare-fun m!4810793 () Bool)

(assert (=> b!4222150 m!4810793))

(assert (=> b!4221952 d!1243551))

(declare-fun d!1243553 () Bool)

(assert (=> d!1243553 (= (inv!61121 (tag!8657 rBis!178)) (= (mod (str.len (value!242630 (tag!8657 rBis!178))) 2) 0))))

(assert (=> b!4221954 d!1243553))

(declare-fun d!1243555 () Bool)

(declare-fun res!1735603 () Bool)

(declare-fun e!2621320 () Bool)

(assert (=> d!1243555 (=> (not res!1735603) (not e!2621320))))

(assert (=> d!1243555 (= res!1735603 (semiInverseModEq!3388 (toChars!10376 (transformation!7793 rBis!178)) (toValue!10517 (transformation!7793 rBis!178))))))

(assert (=> d!1243555 (= (inv!61124 (transformation!7793 rBis!178)) e!2621320)))

(declare-fun b!4222151 () Bool)

(assert (=> b!4222151 (= e!2621320 (equivClasses!3287 (toChars!10376 (transformation!7793 rBis!178)) (toValue!10517 (transformation!7793 rBis!178))))))

(assert (= (and d!1243555 res!1735603) b!4222151))

(declare-fun m!4810795 () Bool)

(assert (=> d!1243555 m!4810795))

(declare-fun m!4810797 () Bool)

(assert (=> b!4222151 m!4810797))

(assert (=> b!4221954 d!1243555))

(declare-fun b!4222170 () Bool)

(declare-fun e!2621329 () Option!9981)

(declare-datatypes ((tuple2!44180 0))(
  ( (tuple2!44181 (_1!25224 List!46578) (_2!25224 List!46578)) )
))
(declare-fun lt!1502270 () tuple2!44180)

(declare-fun size!34113 (BalanceConc!27602) Int)

(assert (=> b!4222170 (= e!2621329 (Some!9980 (tuple2!44177 (Token!14289 (apply!10708 (transformation!7793 rBis!178) (seqFromList!5768 (_1!25224 lt!1502270))) rBis!178 (size!34113 (seqFromList!5768 (_1!25224 lt!1502270))) (_1!25224 lt!1502270)) (_2!25224 lt!1502270))))))

(declare-fun lt!1502273 () Unit!65626)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1641 (Regex!12698 List!46578) Unit!65626)

(assert (=> b!4222170 (= lt!1502273 (longestMatchIsAcceptedByMatchOrIsEmpty!1641 (regex!7793 rBis!178) input!3517))))

(declare-fun res!1735619 () Bool)

(declare-fun isEmpty!27527 (List!46578) Bool)

(declare-fun findLongestMatchInner!1668 (Regex!12698 List!46578 Int List!46578 List!46578 Int) tuple2!44180)

(assert (=> b!4222170 (= res!1735619 (isEmpty!27527 (_1!25224 (findLongestMatchInner!1668 (regex!7793 rBis!178) Nil!46454 (size!34112 Nil!46454) input!3517 input!3517 (size!34112 input!3517)))))))

(declare-fun e!2621332 () Bool)

(assert (=> b!4222170 (=> res!1735619 e!2621332)))

(assert (=> b!4222170 e!2621332))

(declare-fun lt!1502272 () Unit!65626)

(assert (=> b!4222170 (= lt!1502272 lt!1502273)))

(declare-fun lt!1502269 () Unit!65626)

(declare-fun lemmaSemiInverse!2509 (TokenValueInjection!15474 BalanceConc!27602) Unit!65626)

(assert (=> b!4222170 (= lt!1502269 (lemmaSemiInverse!2509 (transformation!7793 rBis!178) (seqFromList!5768 (_1!25224 lt!1502270))))))

(declare-fun b!4222171 () Bool)

(assert (=> b!4222171 (= e!2621332 (matchR!6387 (regex!7793 rBis!178) (_1!25224 (findLongestMatchInner!1668 (regex!7793 rBis!178) Nil!46454 (size!34112 Nil!46454) input!3517 input!3517 (size!34112 input!3517)))))))

(declare-fun b!4222172 () Bool)

(declare-fun res!1735618 () Bool)

(declare-fun e!2621331 () Bool)

(assert (=> b!4222172 (=> (not res!1735618) (not e!2621331))))

(declare-fun lt!1502271 () Option!9981)

(assert (=> b!4222172 (= res!1735618 (< (size!34112 (_2!25222 (get!15120 lt!1502271))) (size!34112 input!3517)))))

(declare-fun b!4222173 () Bool)

(declare-fun res!1735620 () Bool)

(assert (=> b!4222173 (=> (not res!1735620) (not e!2621331))))

(assert (=> b!4222173 (= res!1735620 (= (value!242631 (_1!25222 (get!15120 lt!1502271))) (apply!10708 (transformation!7793 (rule!10931 (_1!25222 (get!15120 lt!1502271)))) (seqFromList!5768 (originalCharacters!8175 (_1!25222 (get!15120 lt!1502271)))))))))

(declare-fun b!4222174 () Bool)

(declare-fun res!1735621 () Bool)

(assert (=> b!4222174 (=> (not res!1735621) (not e!2621331))))

(assert (=> b!4222174 (= res!1735621 (= (++!11867 (list!16812 (charsOf!5216 (_1!25222 (get!15120 lt!1502271)))) (_2!25222 (get!15120 lt!1502271))) input!3517))))

(declare-fun b!4222175 () Bool)

(declare-fun res!1735624 () Bool)

(assert (=> b!4222175 (=> (not res!1735624) (not e!2621331))))

(assert (=> b!4222175 (= res!1735624 (= (rule!10931 (_1!25222 (get!15120 lt!1502271))) rBis!178))))

(declare-fun d!1243557 () Bool)

(declare-fun e!2621330 () Bool)

(assert (=> d!1243557 e!2621330))

(declare-fun res!1735623 () Bool)

(assert (=> d!1243557 (=> res!1735623 e!2621330)))

(assert (=> d!1243557 (= res!1735623 (isEmpty!27526 lt!1502271))))

(assert (=> d!1243557 (= lt!1502271 e!2621329)))

(declare-fun c!718371 () Bool)

(assert (=> d!1243557 (= c!718371 (isEmpty!27527 (_1!25224 lt!1502270)))))

(declare-fun findLongestMatch!1581 (Regex!12698 List!46578) tuple2!44180)

(assert (=> d!1243557 (= lt!1502270 (findLongestMatch!1581 (regex!7793 rBis!178) input!3517))))

(assert (=> d!1243557 (ruleValid!3505 thiss!26544 rBis!178)))

(assert (=> d!1243557 (= (maxPrefixOneRule!3383 thiss!26544 rBis!178 input!3517) lt!1502271)))

(declare-fun b!4222176 () Bool)

(assert (=> b!4222176 (= e!2621329 None!9980)))

(declare-fun b!4222177 () Bool)

(assert (=> b!4222177 (= e!2621330 e!2621331)))

(declare-fun res!1735622 () Bool)

(assert (=> b!4222177 (=> (not res!1735622) (not e!2621331))))

(assert (=> b!4222177 (= res!1735622 (matchR!6387 (regex!7793 rBis!178) (list!16812 (charsOf!5216 (_1!25222 (get!15120 lt!1502271))))))))

(declare-fun b!4222178 () Bool)

(assert (=> b!4222178 (= e!2621331 (= (size!34110 (_1!25222 (get!15120 lt!1502271))) (size!34112 (originalCharacters!8175 (_1!25222 (get!15120 lt!1502271))))))))

(assert (= (and d!1243557 c!718371) b!4222176))

(assert (= (and d!1243557 (not c!718371)) b!4222170))

(assert (= (and b!4222170 (not res!1735619)) b!4222171))

(assert (= (and d!1243557 (not res!1735623)) b!4222177))

(assert (= (and b!4222177 res!1735622) b!4222174))

(assert (= (and b!4222174 res!1735621) b!4222172))

(assert (= (and b!4222172 res!1735618) b!4222175))

(assert (= (and b!4222175 res!1735624) b!4222173))

(assert (= (and b!4222173 res!1735620) b!4222178))

(declare-fun m!4810799 () Bool)

(assert (=> b!4222173 m!4810799))

(declare-fun m!4810801 () Bool)

(assert (=> b!4222173 m!4810801))

(assert (=> b!4222173 m!4810801))

(declare-fun m!4810803 () Bool)

(assert (=> b!4222173 m!4810803))

(assert (=> b!4222174 m!4810799))

(declare-fun m!4810805 () Bool)

(assert (=> b!4222174 m!4810805))

(assert (=> b!4222174 m!4810805))

(declare-fun m!4810807 () Bool)

(assert (=> b!4222174 m!4810807))

(assert (=> b!4222174 m!4810807))

(declare-fun m!4810809 () Bool)

(assert (=> b!4222174 m!4810809))

(assert (=> b!4222175 m!4810799))

(assert (=> b!4222177 m!4810799))

(assert (=> b!4222177 m!4810805))

(assert (=> b!4222177 m!4810805))

(assert (=> b!4222177 m!4810807))

(assert (=> b!4222177 m!4810807))

(declare-fun m!4810811 () Bool)

(assert (=> b!4222177 m!4810811))

(assert (=> b!4222172 m!4810799))

(declare-fun m!4810813 () Bool)

(assert (=> b!4222172 m!4810813))

(assert (=> b!4222172 m!4810755))

(assert (=> b!4222178 m!4810799))

(declare-fun m!4810815 () Bool)

(assert (=> b!4222178 m!4810815))

(assert (=> b!4222170 m!4810755))

(declare-fun m!4810817 () Bool)

(assert (=> b!4222170 m!4810817))

(declare-fun m!4810819 () Bool)

(assert (=> b!4222170 m!4810819))

(declare-fun m!4810821 () Bool)

(assert (=> b!4222170 m!4810821))

(assert (=> b!4222170 m!4810817))

(declare-fun m!4810823 () Bool)

(assert (=> b!4222170 m!4810823))

(assert (=> b!4222170 m!4810817))

(declare-fun m!4810825 () Bool)

(assert (=> b!4222170 m!4810825))

(declare-fun m!4810827 () Bool)

(assert (=> b!4222170 m!4810827))

(assert (=> b!4222170 m!4810817))

(declare-fun m!4810829 () Bool)

(assert (=> b!4222170 m!4810829))

(assert (=> b!4222170 m!4810827))

(assert (=> b!4222170 m!4810755))

(declare-fun m!4810831 () Bool)

(assert (=> b!4222170 m!4810831))

(declare-fun m!4810833 () Bool)

(assert (=> d!1243557 m!4810833))

(declare-fun m!4810835 () Bool)

(assert (=> d!1243557 m!4810835))

(declare-fun m!4810837 () Bool)

(assert (=> d!1243557 m!4810837))

(assert (=> d!1243557 m!4810649))

(assert (=> b!4222171 m!4810827))

(assert (=> b!4222171 m!4810755))

(assert (=> b!4222171 m!4810827))

(assert (=> b!4222171 m!4810755))

(assert (=> b!4222171 m!4810831))

(declare-fun m!4810839 () Bool)

(assert (=> b!4222171 m!4810839))

(assert (=> b!4221953 d!1243557))

(declare-fun b!4222182 () Bool)

(declare-fun e!2621333 () Bool)

(assert (=> b!4222182 (= e!2621333 (>= (size!34112 input!3517) (size!34112 input!3517)))))

(declare-fun d!1243559 () Bool)

(assert (=> d!1243559 e!2621333))

(declare-fun res!1735626 () Bool)

(assert (=> d!1243559 (=> res!1735626 e!2621333)))

(declare-fun lt!1502274 () Bool)

(assert (=> d!1243559 (= res!1735626 (not lt!1502274))))

(declare-fun e!2621335 () Bool)

(assert (=> d!1243559 (= lt!1502274 e!2621335)))

(declare-fun res!1735628 () Bool)

(assert (=> d!1243559 (=> res!1735628 e!2621335)))

(assert (=> d!1243559 (= res!1735628 (is-Nil!46454 input!3517))))

(assert (=> d!1243559 (= (isPrefix!4652 input!3517 input!3517) lt!1502274)))

(declare-fun b!4222179 () Bool)

(declare-fun e!2621334 () Bool)

(assert (=> b!4222179 (= e!2621335 e!2621334)))

(declare-fun res!1735627 () Bool)

(assert (=> b!4222179 (=> (not res!1735627) (not e!2621334))))

(assert (=> b!4222179 (= res!1735627 (not (is-Nil!46454 input!3517)))))

(declare-fun b!4222181 () Bool)

(assert (=> b!4222181 (= e!2621334 (isPrefix!4652 (tail!6804 input!3517) (tail!6804 input!3517)))))

(declare-fun b!4222180 () Bool)

(declare-fun res!1735625 () Bool)

(assert (=> b!4222180 (=> (not res!1735625) (not e!2621334))))

(assert (=> b!4222180 (= res!1735625 (= (head!8957 input!3517) (head!8957 input!3517)))))

(assert (= (and d!1243559 (not res!1735628)) b!4222179))

(assert (= (and b!4222179 res!1735627) b!4222180))

(assert (= (and b!4222180 res!1735625) b!4222181))

(assert (= (and d!1243559 (not res!1735626)) b!4222182))

(assert (=> b!4222182 m!4810755))

(assert (=> b!4222182 m!4810755))

(assert (=> b!4222181 m!4810777))

(assert (=> b!4222181 m!4810777))

(assert (=> b!4222181 m!4810777))

(assert (=> b!4222181 m!4810777))

(declare-fun m!4810841 () Bool)

(assert (=> b!4222181 m!4810841))

(assert (=> b!4222180 m!4810783))

(assert (=> b!4222180 m!4810783))

(assert (=> b!4221953 d!1243559))

(declare-fun d!1243561 () Bool)

(assert (=> d!1243561 (isPrefix!4652 input!3517 input!3517)))

(declare-fun lt!1502277 () Unit!65626)

(declare-fun choose!25870 (List!46578 List!46578) Unit!65626)

(assert (=> d!1243561 (= lt!1502277 (choose!25870 input!3517 input!3517))))

(assert (=> d!1243561 (= (lemmaIsPrefixRefl!3069 input!3517 input!3517) lt!1502277)))

(declare-fun bs!597750 () Bool)

(assert (= bs!597750 d!1243561))

(assert (=> bs!597750 m!4810653))

(declare-fun m!4810843 () Bool)

(assert (=> bs!597750 m!4810843))

(assert (=> b!4221953 d!1243561))

(declare-fun d!1243563 () Bool)

(declare-fun e!2621338 () Bool)

(assert (=> d!1243563 e!2621338))

(declare-fun res!1735632 () Bool)

(assert (=> d!1243563 (=> res!1735632 e!2621338)))

(declare-fun lt!1502280 () Option!9981)

(assert (=> d!1243563 (= res!1735632 (isEmpty!27526 lt!1502280))))

(declare-fun e!2621336 () Option!9981)

(assert (=> d!1243563 (= lt!1502280 e!2621336)))

(declare-fun c!718372 () Bool)

(assert (=> d!1243563 (= c!718372 (and (is-Cons!46456 (t!349085 rules!3967)) (is-Nil!46456 (t!349085 (t!349085 rules!3967)))))))

(declare-fun lt!1502278 () Unit!65626)

(declare-fun lt!1502282 () Unit!65626)

(assert (=> d!1243563 (= lt!1502278 lt!1502282)))

(assert (=> d!1243563 (isPrefix!4652 input!3517 input!3517)))

(assert (=> d!1243563 (= lt!1502282 (lemmaIsPrefixRefl!3069 input!3517 input!3517))))

(assert (=> d!1243563 (rulesValidInductive!2899 thiss!26544 (t!349085 rules!3967))))

(assert (=> d!1243563 (= (maxPrefix!4428 thiss!26544 (t!349085 rules!3967) input!3517) lt!1502280)))

(declare-fun b!4222183 () Bool)

(declare-fun e!2621337 () Bool)

(assert (=> b!4222183 (= e!2621337 (contains!9616 (t!349085 rules!3967) (rule!10931 (_1!25222 (get!15120 lt!1502280)))))))

(declare-fun b!4222184 () Bool)

(declare-fun res!1735630 () Bool)

(assert (=> b!4222184 (=> (not res!1735630) (not e!2621337))))

(assert (=> b!4222184 (= res!1735630 (= (++!11867 (list!16812 (charsOf!5216 (_1!25222 (get!15120 lt!1502280)))) (_2!25222 (get!15120 lt!1502280))) input!3517))))

(declare-fun b!4222185 () Bool)

(declare-fun res!1735635 () Bool)

(assert (=> b!4222185 (=> (not res!1735635) (not e!2621337))))

(assert (=> b!4222185 (= res!1735635 (= (list!16812 (charsOf!5216 (_1!25222 (get!15120 lt!1502280)))) (originalCharacters!8175 (_1!25222 (get!15120 lt!1502280)))))))

(declare-fun b!4222186 () Bool)

(assert (=> b!4222186 (= e!2621338 e!2621337)))

(declare-fun res!1735634 () Bool)

(assert (=> b!4222186 (=> (not res!1735634) (not e!2621337))))

(assert (=> b!4222186 (= res!1735634 (isDefined!7409 lt!1502280))))

(declare-fun call!293162 () Option!9981)

(declare-fun bm!293157 () Bool)

(assert (=> bm!293157 (= call!293162 (maxPrefixOneRule!3383 thiss!26544 (h!51876 (t!349085 rules!3967)) input!3517))))

(declare-fun b!4222187 () Bool)

(declare-fun res!1735629 () Bool)

(assert (=> b!4222187 (=> (not res!1735629) (not e!2621337))))

(assert (=> b!4222187 (= res!1735629 (= (value!242631 (_1!25222 (get!15120 lt!1502280))) (apply!10708 (transformation!7793 (rule!10931 (_1!25222 (get!15120 lt!1502280)))) (seqFromList!5768 (originalCharacters!8175 (_1!25222 (get!15120 lt!1502280)))))))))

(declare-fun b!4222188 () Bool)

(assert (=> b!4222188 (= e!2621336 call!293162)))

(declare-fun b!4222189 () Bool)

(declare-fun lt!1502279 () Option!9981)

(declare-fun lt!1502281 () Option!9981)

(assert (=> b!4222189 (= e!2621336 (ite (and (is-None!9980 lt!1502279) (is-None!9980 lt!1502281)) None!9980 (ite (is-None!9980 lt!1502281) lt!1502279 (ite (is-None!9980 lt!1502279) lt!1502281 (ite (>= (size!34110 (_1!25222 (v!40874 lt!1502279))) (size!34110 (_1!25222 (v!40874 lt!1502281)))) lt!1502279 lt!1502281)))))))

(assert (=> b!4222189 (= lt!1502279 call!293162)))

(assert (=> b!4222189 (= lt!1502281 (maxPrefix!4428 thiss!26544 (t!349085 (t!349085 rules!3967)) input!3517))))

(declare-fun b!4222190 () Bool)

(declare-fun res!1735633 () Bool)

(assert (=> b!4222190 (=> (not res!1735633) (not e!2621337))))

(assert (=> b!4222190 (= res!1735633 (< (size!34112 (_2!25222 (get!15120 lt!1502280))) (size!34112 input!3517)))))

(declare-fun b!4222191 () Bool)

(declare-fun res!1735631 () Bool)

(assert (=> b!4222191 (=> (not res!1735631) (not e!2621337))))

(assert (=> b!4222191 (= res!1735631 (matchR!6387 (regex!7793 (rule!10931 (_1!25222 (get!15120 lt!1502280)))) (list!16812 (charsOf!5216 (_1!25222 (get!15120 lt!1502280))))))))

(assert (= (and d!1243563 c!718372) b!4222188))

(assert (= (and d!1243563 (not c!718372)) b!4222189))

(assert (= (or b!4222188 b!4222189) bm!293157))

(assert (= (and d!1243563 (not res!1735632)) b!4222186))

(assert (= (and b!4222186 res!1735634) b!4222185))

(assert (= (and b!4222185 res!1735635) b!4222190))

(assert (= (and b!4222190 res!1735633) b!4222184))

(assert (= (and b!4222184 res!1735630) b!4222187))

(assert (= (and b!4222187 res!1735629) b!4222191))

(assert (= (and b!4222191 res!1735631) b!4222183))

(declare-fun m!4810845 () Bool)

(assert (=> d!1243563 m!4810845))

(assert (=> d!1243563 m!4810653))

(assert (=> d!1243563 m!4810655))

(declare-fun m!4810847 () Bool)

(assert (=> d!1243563 m!4810847))

(declare-fun m!4810849 () Bool)

(assert (=> b!4222190 m!4810849))

(declare-fun m!4810851 () Bool)

(assert (=> b!4222190 m!4810851))

(assert (=> b!4222190 m!4810755))

(assert (=> b!4222185 m!4810849))

(declare-fun m!4810853 () Bool)

(assert (=> b!4222185 m!4810853))

(assert (=> b!4222185 m!4810853))

(declare-fun m!4810855 () Bool)

(assert (=> b!4222185 m!4810855))

(declare-fun m!4810857 () Bool)

(assert (=> b!4222186 m!4810857))

(declare-fun m!4810859 () Bool)

(assert (=> bm!293157 m!4810859))

(assert (=> b!4222191 m!4810849))

(assert (=> b!4222191 m!4810853))

(assert (=> b!4222191 m!4810853))

(assert (=> b!4222191 m!4810855))

(assert (=> b!4222191 m!4810855))

(declare-fun m!4810861 () Bool)

(assert (=> b!4222191 m!4810861))

(assert (=> b!4222184 m!4810849))

(assert (=> b!4222184 m!4810853))

(assert (=> b!4222184 m!4810853))

(assert (=> b!4222184 m!4810855))

(assert (=> b!4222184 m!4810855))

(declare-fun m!4810863 () Bool)

(assert (=> b!4222184 m!4810863))

(assert (=> b!4222187 m!4810849))

(declare-fun m!4810865 () Bool)

(assert (=> b!4222187 m!4810865))

(assert (=> b!4222187 m!4810865))

(declare-fun m!4810867 () Bool)

(assert (=> b!4222187 m!4810867))

(assert (=> b!4222183 m!4810849))

(declare-fun m!4810869 () Bool)

(assert (=> b!4222183 m!4810869))

(declare-fun m!4810871 () Bool)

(assert (=> b!4222189 m!4810871))

(assert (=> b!4221955 d!1243563))

(declare-fun d!1243565 () Bool)

(assert (=> d!1243565 (= (isEmpty!27524 (t!349085 rules!3967)) (is-Nil!46456 (t!349085 rules!3967)))))

(assert (=> b!4221967 d!1243565))

(declare-fun d!1243567 () Bool)

(declare-fun res!1735636 () Bool)

(declare-fun e!2621339 () Bool)

(assert (=> d!1243567 (=> (not res!1735636) (not e!2621339))))

(assert (=> d!1243567 (= res!1735636 (rulesValid!3057 thiss!26544 (t!349085 rules!3967)))))

(assert (=> d!1243567 (= (rulesInvariant!6599 thiss!26544 (t!349085 rules!3967)) e!2621339)))

(declare-fun b!4222192 () Bool)

(assert (=> b!4222192 (= e!2621339 (noDuplicateTag!3218 thiss!26544 (t!349085 rules!3967) Nil!46460))))

(assert (= (and d!1243567 res!1735636) b!4222192))

(declare-fun m!4810873 () Bool)

(assert (=> d!1243567 m!4810873))

(declare-fun m!4810875 () Bool)

(assert (=> b!4222192 m!4810875))

(assert (=> b!4221967 d!1243567))

(declare-fun d!1243569 () Bool)

(assert (=> d!1243569 (rulesInvariant!6599 thiss!26544 (t!349085 rules!3967))))

(declare-fun lt!1502285 () Unit!65626)

(declare-fun choose!25871 (LexerInterface!7388 Rule!15386 List!46580) Unit!65626)

(assert (=> d!1243569 (= lt!1502285 (choose!25871 thiss!26544 (h!51876 rules!3967) (t!349085 rules!3967)))))

(assert (=> d!1243569 (rulesInvariant!6599 thiss!26544 (Cons!46456 (h!51876 rules!3967) (t!349085 rules!3967)))))

(assert (=> d!1243569 (= (lemmaInvariantOnRulesThenOnTail!881 thiss!26544 (h!51876 rules!3967) (t!349085 rules!3967)) lt!1502285)))

(declare-fun bs!597751 () Bool)

(assert (= bs!597751 d!1243569))

(assert (=> bs!597751 m!4810625))

(declare-fun m!4810877 () Bool)

(assert (=> bs!597751 m!4810877))

(declare-fun m!4810879 () Bool)

(assert (=> bs!597751 m!4810879))

(assert (=> b!4221967 d!1243569))

(declare-fun d!1243571 () Bool)

(declare-fun lt!1502288 () Bool)

(declare-fun content!7294 (List!46580) (Set Rule!15386))

(assert (=> d!1243571 (= lt!1502288 (set.member rBis!178 (content!7294 rules!3967)))))

(declare-fun e!2621344 () Bool)

(assert (=> d!1243571 (= lt!1502288 e!2621344)))

(declare-fun res!1735642 () Bool)

(assert (=> d!1243571 (=> (not res!1735642) (not e!2621344))))

(assert (=> d!1243571 (= res!1735642 (is-Cons!46456 rules!3967))))

(assert (=> d!1243571 (= (contains!9616 rules!3967 rBis!178) lt!1502288)))

(declare-fun b!4222197 () Bool)

(declare-fun e!2621345 () Bool)

(assert (=> b!4222197 (= e!2621344 e!2621345)))

(declare-fun res!1735641 () Bool)

(assert (=> b!4222197 (=> res!1735641 e!2621345)))

(assert (=> b!4222197 (= res!1735641 (= (h!51876 rules!3967) rBis!178))))

(declare-fun b!4222198 () Bool)

(assert (=> b!4222198 (= e!2621345 (contains!9616 (t!349085 rules!3967) rBis!178))))

(assert (= (and d!1243571 res!1735642) b!4222197))

(assert (= (and b!4222197 (not res!1735641)) b!4222198))

(declare-fun m!4810881 () Bool)

(assert (=> d!1243571 m!4810881))

(declare-fun m!4810883 () Bool)

(assert (=> d!1243571 m!4810883))

(assert (=> b!4222198 m!4810657))

(assert (=> b!4221945 d!1243571))

(declare-fun d!1243573 () Bool)

(declare-fun res!1735647 () Bool)

(declare-fun e!2621348 () Bool)

(assert (=> d!1243573 (=> (not res!1735647) (not e!2621348))))

(assert (=> d!1243573 (= res!1735647 (not (isEmpty!27527 (originalCharacters!8175 tBis!41))))))

(assert (=> d!1243573 (= (inv!61125 tBis!41) e!2621348)))

(declare-fun b!4222203 () Bool)

(declare-fun res!1735648 () Bool)

(assert (=> b!4222203 (=> (not res!1735648) (not e!2621348))))

(declare-fun dynLambda!20003 (Int TokenValue!8023) BalanceConc!27602)

(assert (=> b!4222203 (= res!1735648 (= (originalCharacters!8175 tBis!41) (list!16812 (dynLambda!20003 (toChars!10376 (transformation!7793 (rule!10931 tBis!41))) (value!242631 tBis!41)))))))

(declare-fun b!4222204 () Bool)

(assert (=> b!4222204 (= e!2621348 (= (size!34110 tBis!41) (size!34112 (originalCharacters!8175 tBis!41))))))

(assert (= (and d!1243573 res!1735647) b!4222203))

(assert (= (and b!4222203 res!1735648) b!4222204))

(declare-fun b_lambda!124443 () Bool)

(assert (=> (not b_lambda!124443) (not b!4222203)))

(declare-fun tb!253699 () Bool)

(declare-fun t!349090 () Bool)

(assert (=> (and b!4221960 (= (toChars!10376 (transformation!7793 rBis!178)) (toChars!10376 (transformation!7793 (rule!10931 tBis!41)))) t!349090) tb!253699))

(declare-fun b!4222209 () Bool)

(declare-fun e!2621351 () Bool)

(declare-fun tp!1292007 () Bool)

(declare-fun inv!61128 (Conc!14004) Bool)

(assert (=> b!4222209 (= e!2621351 (and (inv!61128 (c!718350 (dynLambda!20003 (toChars!10376 (transformation!7793 (rule!10931 tBis!41))) (value!242631 tBis!41)))) tp!1292007))))

(declare-fun result!309196 () Bool)

(declare-fun inv!61129 (BalanceConc!27602) Bool)

(assert (=> tb!253699 (= result!309196 (and (inv!61129 (dynLambda!20003 (toChars!10376 (transformation!7793 (rule!10931 tBis!41))) (value!242631 tBis!41))) e!2621351))))

(assert (= tb!253699 b!4222209))

(declare-fun m!4810885 () Bool)

(assert (=> b!4222209 m!4810885))

(declare-fun m!4810887 () Bool)

(assert (=> tb!253699 m!4810887))

(assert (=> b!4222203 t!349090))

(declare-fun b_and!333213 () Bool)

(assert (= b_and!333183 (and (=> t!349090 result!309196) b_and!333213)))

(declare-fun t!349092 () Bool)

(declare-fun tb!253701 () Bool)

(assert (=> (and b!4221956 (= (toChars!10376 (transformation!7793 (h!51876 rules!3967))) (toChars!10376 (transformation!7793 (rule!10931 tBis!41)))) t!349092) tb!253701))

(declare-fun result!309200 () Bool)

(assert (= result!309200 result!309196))

(assert (=> b!4222203 t!349092))

(declare-fun b_and!333215 () Bool)

(assert (= b_and!333187 (and (=> t!349092 result!309200) b_and!333215)))

(declare-fun t!349094 () Bool)

(declare-fun tb!253703 () Bool)

(assert (=> (and b!4221966 (= (toChars!10376 (transformation!7793 (rule!10931 t!8364))) (toChars!10376 (transformation!7793 (rule!10931 tBis!41)))) t!349094) tb!253703))

(declare-fun result!309202 () Bool)

(assert (= result!309202 result!309196))

(assert (=> b!4222203 t!349094))

(declare-fun b_and!333217 () Bool)

(assert (= b_and!333191 (and (=> t!349094 result!309202) b_and!333217)))

(declare-fun t!349096 () Bool)

(declare-fun tb!253705 () Bool)

(assert (=> (and b!4221957 (= (toChars!10376 (transformation!7793 (rule!10931 tBis!41))) (toChars!10376 (transformation!7793 (rule!10931 tBis!41)))) t!349096) tb!253705))

(declare-fun result!309204 () Bool)

(assert (= result!309204 result!309196))

(assert (=> b!4222203 t!349096))

(declare-fun b_and!333219 () Bool)

(assert (= b_and!333195 (and (=> t!349096 result!309204) b_and!333219)))

(declare-fun m!4810889 () Bool)

(assert (=> d!1243573 m!4810889))

(declare-fun m!4810891 () Bool)

(assert (=> b!4222203 m!4810891))

(assert (=> b!4222203 m!4810891))

(declare-fun m!4810893 () Bool)

(assert (=> b!4222203 m!4810893))

(declare-fun m!4810895 () Bool)

(assert (=> b!4222204 m!4810895))

(assert (=> start!403568 d!1243573))

(declare-fun d!1243575 () Bool)

(declare-fun res!1735649 () Bool)

(declare-fun e!2621352 () Bool)

(assert (=> d!1243575 (=> (not res!1735649) (not e!2621352))))

(assert (=> d!1243575 (= res!1735649 (not (isEmpty!27527 (originalCharacters!8175 t!8364))))))

(assert (=> d!1243575 (= (inv!61125 t!8364) e!2621352)))

(declare-fun b!4222210 () Bool)

(declare-fun res!1735650 () Bool)

(assert (=> b!4222210 (=> (not res!1735650) (not e!2621352))))

(assert (=> b!4222210 (= res!1735650 (= (originalCharacters!8175 t!8364) (list!16812 (dynLambda!20003 (toChars!10376 (transformation!7793 (rule!10931 t!8364))) (value!242631 t!8364)))))))

(declare-fun b!4222211 () Bool)

(assert (=> b!4222211 (= e!2621352 (= (size!34110 t!8364) (size!34112 (originalCharacters!8175 t!8364))))))

(assert (= (and d!1243575 res!1735649) b!4222210))

(assert (= (and b!4222210 res!1735650) b!4222211))

(declare-fun b_lambda!124445 () Bool)

(assert (=> (not b_lambda!124445) (not b!4222210)))

(declare-fun tb!253707 () Bool)

(declare-fun t!349098 () Bool)

(assert (=> (and b!4221960 (= (toChars!10376 (transformation!7793 rBis!178)) (toChars!10376 (transformation!7793 (rule!10931 t!8364)))) t!349098) tb!253707))

(declare-fun b!4222212 () Bool)

(declare-fun e!2621353 () Bool)

(declare-fun tp!1292008 () Bool)

(assert (=> b!4222212 (= e!2621353 (and (inv!61128 (c!718350 (dynLambda!20003 (toChars!10376 (transformation!7793 (rule!10931 t!8364))) (value!242631 t!8364)))) tp!1292008))))

(declare-fun result!309206 () Bool)

(assert (=> tb!253707 (= result!309206 (and (inv!61129 (dynLambda!20003 (toChars!10376 (transformation!7793 (rule!10931 t!8364))) (value!242631 t!8364))) e!2621353))))

(assert (= tb!253707 b!4222212))

(declare-fun m!4810897 () Bool)

(assert (=> b!4222212 m!4810897))

(declare-fun m!4810899 () Bool)

(assert (=> tb!253707 m!4810899))

(assert (=> b!4222210 t!349098))

(declare-fun b_and!333221 () Bool)

(assert (= b_and!333213 (and (=> t!349098 result!309206) b_and!333221)))

(declare-fun t!349100 () Bool)

(declare-fun tb!253709 () Bool)

(assert (=> (and b!4221956 (= (toChars!10376 (transformation!7793 (h!51876 rules!3967))) (toChars!10376 (transformation!7793 (rule!10931 t!8364)))) t!349100) tb!253709))

(declare-fun result!309208 () Bool)

(assert (= result!309208 result!309206))

(assert (=> b!4222210 t!349100))

(declare-fun b_and!333223 () Bool)

(assert (= b_and!333215 (and (=> t!349100 result!309208) b_and!333223)))

(declare-fun t!349102 () Bool)

(declare-fun tb!253711 () Bool)

(assert (=> (and b!4221966 (= (toChars!10376 (transformation!7793 (rule!10931 t!8364))) (toChars!10376 (transformation!7793 (rule!10931 t!8364)))) t!349102) tb!253711))

(declare-fun result!309210 () Bool)

(assert (= result!309210 result!309206))

(assert (=> b!4222210 t!349102))

(declare-fun b_and!333225 () Bool)

(assert (= b_and!333217 (and (=> t!349102 result!309210) b_and!333225)))

(declare-fun t!349104 () Bool)

(declare-fun tb!253713 () Bool)

(assert (=> (and b!4221957 (= (toChars!10376 (transformation!7793 (rule!10931 tBis!41))) (toChars!10376 (transformation!7793 (rule!10931 t!8364)))) t!349104) tb!253713))

(declare-fun result!309212 () Bool)

(assert (= result!309212 result!309206))

(assert (=> b!4222210 t!349104))

(declare-fun b_and!333227 () Bool)

(assert (= b_and!333219 (and (=> t!349104 result!309212) b_and!333227)))

(declare-fun m!4810901 () Bool)

(assert (=> d!1243575 m!4810901))

(declare-fun m!4810903 () Bool)

(assert (=> b!4222210 m!4810903))

(assert (=> b!4222210 m!4810903))

(declare-fun m!4810905 () Bool)

(assert (=> b!4222210 m!4810905))

(declare-fun m!4810907 () Bool)

(assert (=> b!4222211 m!4810907))

(assert (=> start!403568 d!1243575))

(declare-fun d!1243577 () Bool)

(declare-fun list!16814 (Conc!14004) List!46578)

(assert (=> d!1243577 (= (list!16812 (charsOf!5216 tBis!41)) (list!16814 (c!718350 (charsOf!5216 tBis!41))))))

(declare-fun bs!597752 () Bool)

(assert (= bs!597752 d!1243577))

(declare-fun m!4810909 () Bool)

(assert (=> bs!597752 m!4810909))

(assert (=> b!4221947 d!1243577))

(declare-fun d!1243579 () Bool)

(declare-fun lt!1502291 () BalanceConc!27602)

(assert (=> d!1243579 (= (list!16812 lt!1502291) (originalCharacters!8175 tBis!41))))

(assert (=> d!1243579 (= lt!1502291 (dynLambda!20003 (toChars!10376 (transformation!7793 (rule!10931 tBis!41))) (value!242631 tBis!41)))))

(assert (=> d!1243579 (= (charsOf!5216 tBis!41) lt!1502291)))

(declare-fun b_lambda!124447 () Bool)

(assert (=> (not b_lambda!124447) (not d!1243579)))

(assert (=> d!1243579 t!349090))

(declare-fun b_and!333229 () Bool)

(assert (= b_and!333221 (and (=> t!349090 result!309196) b_and!333229)))

(assert (=> d!1243579 t!349092))

(declare-fun b_and!333231 () Bool)

(assert (= b_and!333223 (and (=> t!349092 result!309200) b_and!333231)))

(assert (=> d!1243579 t!349094))

(declare-fun b_and!333233 () Bool)

(assert (= b_and!333225 (and (=> t!349094 result!309202) b_and!333233)))

(assert (=> d!1243579 t!349096))

(declare-fun b_and!333235 () Bool)

(assert (= b_and!333227 (and (=> t!349096 result!309204) b_and!333235)))

(declare-fun m!4810911 () Bool)

(assert (=> d!1243579 m!4810911))

(assert (=> d!1243579 m!4810891))

(assert (=> b!4221947 d!1243579))

(declare-fun d!1243581 () Bool)

(assert (=> d!1243581 (= (inv!61121 (tag!8657 (rule!10931 tBis!41))) (= (mod (str.len (value!242630 (tag!8657 (rule!10931 tBis!41)))) 2) 0))))

(assert (=> b!4221958 d!1243581))

(declare-fun d!1243583 () Bool)

(declare-fun res!1735651 () Bool)

(declare-fun e!2621354 () Bool)

(assert (=> d!1243583 (=> (not res!1735651) (not e!2621354))))

(assert (=> d!1243583 (= res!1735651 (semiInverseModEq!3388 (toChars!10376 (transformation!7793 (rule!10931 tBis!41))) (toValue!10517 (transformation!7793 (rule!10931 tBis!41)))))))

(assert (=> d!1243583 (= (inv!61124 (transformation!7793 (rule!10931 tBis!41))) e!2621354)))

(declare-fun b!4222213 () Bool)

(assert (=> b!4222213 (= e!2621354 (equivClasses!3287 (toChars!10376 (transformation!7793 (rule!10931 tBis!41))) (toValue!10517 (transformation!7793 (rule!10931 tBis!41)))))))

(assert (= (and d!1243583 res!1735651) b!4222213))

(declare-fun m!4810913 () Bool)

(assert (=> d!1243583 m!4810913))

(declare-fun m!4810915 () Bool)

(assert (=> b!4222213 m!4810915))

(assert (=> b!4221958 d!1243583))

(declare-fun b!4222217 () Bool)

(declare-fun e!2621355 () Bool)

(assert (=> b!4222217 (= e!2621355 (>= (size!34112 input!3517) (size!34112 p!3001)))))

(declare-fun d!1243585 () Bool)

(assert (=> d!1243585 e!2621355))

(declare-fun res!1735653 () Bool)

(assert (=> d!1243585 (=> res!1735653 e!2621355)))

(declare-fun lt!1502292 () Bool)

(assert (=> d!1243585 (= res!1735653 (not lt!1502292))))

(declare-fun e!2621357 () Bool)

(assert (=> d!1243585 (= lt!1502292 e!2621357)))

(declare-fun res!1735655 () Bool)

(assert (=> d!1243585 (=> res!1735655 e!2621357)))

(assert (=> d!1243585 (= res!1735655 (is-Nil!46454 p!3001))))

(assert (=> d!1243585 (= (isPrefix!4652 p!3001 input!3517) lt!1502292)))

(declare-fun b!4222214 () Bool)

(declare-fun e!2621356 () Bool)

(assert (=> b!4222214 (= e!2621357 e!2621356)))

(declare-fun res!1735654 () Bool)

(assert (=> b!4222214 (=> (not res!1735654) (not e!2621356))))

(assert (=> b!4222214 (= res!1735654 (not (is-Nil!46454 input!3517)))))

(declare-fun b!4222216 () Bool)

(assert (=> b!4222216 (= e!2621356 (isPrefix!4652 (tail!6804 p!3001) (tail!6804 input!3517)))))

(declare-fun b!4222215 () Bool)

(declare-fun res!1735652 () Bool)

(assert (=> b!4222215 (=> (not res!1735652) (not e!2621356))))

(assert (=> b!4222215 (= res!1735652 (= (head!8957 p!3001) (head!8957 input!3517)))))

(assert (= (and d!1243585 (not res!1735655)) b!4222214))

(assert (= (and b!4222214 res!1735654) b!4222215))

(assert (= (and b!4222215 res!1735652) b!4222216))

(assert (= (and d!1243585 (not res!1735653)) b!4222217))

(assert (=> b!4222217 m!4810755))

(declare-fun m!4810917 () Bool)

(assert (=> b!4222217 m!4810917))

(declare-fun m!4810919 () Bool)

(assert (=> b!4222216 m!4810919))

(assert (=> b!4222216 m!4810777))

(assert (=> b!4222216 m!4810919))

(assert (=> b!4222216 m!4810777))

(declare-fun m!4810921 () Bool)

(assert (=> b!4222216 m!4810921))

(declare-fun m!4810923 () Bool)

(assert (=> b!4222215 m!4810923))

(assert (=> b!4222215 m!4810783))

(assert (=> b!4221968 d!1243585))

(declare-fun b!4222239 () Bool)

(declare-fun e!2621370 () List!46578)

(assert (=> b!4222239 (= e!2621370 (Cons!46454 (h!51874 pBis!121) (++!11867 (t!349083 pBis!121) suffixBis!41)))))

(declare-fun b!4222240 () Bool)

(declare-fun res!1735669 () Bool)

(declare-fun e!2621371 () Bool)

(assert (=> b!4222240 (=> (not res!1735669) (not e!2621371))))

(declare-fun lt!1502305 () List!46578)

(assert (=> b!4222240 (= res!1735669 (= (size!34112 lt!1502305) (+ (size!34112 pBis!121) (size!34112 suffixBis!41))))))

(declare-fun b!4222241 () Bool)

(assert (=> b!4222241 (= e!2621371 (or (not (= suffixBis!41 Nil!46454)) (= lt!1502305 pBis!121)))))

(declare-fun b!4222238 () Bool)

(assert (=> b!4222238 (= e!2621370 suffixBis!41)))

(declare-fun d!1243587 () Bool)

(assert (=> d!1243587 e!2621371))

(declare-fun res!1735668 () Bool)

(assert (=> d!1243587 (=> (not res!1735668) (not e!2621371))))

(declare-fun content!7295 (List!46578) (Set C!25590))

(assert (=> d!1243587 (= res!1735668 (= (content!7295 lt!1502305) (set.union (content!7295 pBis!121) (content!7295 suffixBis!41))))))

(assert (=> d!1243587 (= lt!1502305 e!2621370)))

(declare-fun c!718377 () Bool)

(assert (=> d!1243587 (= c!718377 (is-Nil!46454 pBis!121))))

(assert (=> d!1243587 (= (++!11867 pBis!121 suffixBis!41) lt!1502305)))

(assert (= (and d!1243587 c!718377) b!4222238))

(assert (= (and d!1243587 (not c!718377)) b!4222239))

(assert (= (and d!1243587 res!1735668) b!4222240))

(assert (= (and b!4222240 res!1735669) b!4222241))

(declare-fun m!4810925 () Bool)

(assert (=> b!4222239 m!4810925))

(declare-fun m!4810927 () Bool)

(assert (=> b!4222240 m!4810927))

(assert (=> b!4222240 m!4810773))

(declare-fun m!4810929 () Bool)

(assert (=> b!4222240 m!4810929))

(declare-fun m!4810931 () Bool)

(assert (=> d!1243587 m!4810931))

(declare-fun m!4810933 () Bool)

(assert (=> d!1243587 m!4810933))

(declare-fun m!4810935 () Bool)

(assert (=> d!1243587 m!4810935))

(assert (=> b!4221959 d!1243587))

(declare-fun b!4222248 () Bool)

(declare-fun e!2621372 () Option!9981)

(declare-fun lt!1502307 () tuple2!44180)

(assert (=> b!4222248 (= e!2621372 (Some!9980 (tuple2!44177 (Token!14289 (apply!10708 (transformation!7793 (h!51876 rules!3967)) (seqFromList!5768 (_1!25224 lt!1502307))) (h!51876 rules!3967) (size!34113 (seqFromList!5768 (_1!25224 lt!1502307))) (_1!25224 lt!1502307)) (_2!25224 lt!1502307))))))

(declare-fun lt!1502310 () Unit!65626)

(assert (=> b!4222248 (= lt!1502310 (longestMatchIsAcceptedByMatchOrIsEmpty!1641 (regex!7793 (h!51876 rules!3967)) input!3517))))

(declare-fun res!1735677 () Bool)

(assert (=> b!4222248 (= res!1735677 (isEmpty!27527 (_1!25224 (findLongestMatchInner!1668 (regex!7793 (h!51876 rules!3967)) Nil!46454 (size!34112 Nil!46454) input!3517 input!3517 (size!34112 input!3517)))))))

(declare-fun e!2621375 () Bool)

(assert (=> b!4222248 (=> res!1735677 e!2621375)))

(assert (=> b!4222248 e!2621375))

(declare-fun lt!1502309 () Unit!65626)

(assert (=> b!4222248 (= lt!1502309 lt!1502310)))

(declare-fun lt!1502306 () Unit!65626)

(assert (=> b!4222248 (= lt!1502306 (lemmaSemiInverse!2509 (transformation!7793 (h!51876 rules!3967)) (seqFromList!5768 (_1!25224 lt!1502307))))))

(declare-fun b!4222249 () Bool)

(assert (=> b!4222249 (= e!2621375 (matchR!6387 (regex!7793 (h!51876 rules!3967)) (_1!25224 (findLongestMatchInner!1668 (regex!7793 (h!51876 rules!3967)) Nil!46454 (size!34112 Nil!46454) input!3517 input!3517 (size!34112 input!3517)))))))

(declare-fun b!4222250 () Bool)

(declare-fun res!1735676 () Bool)

(declare-fun e!2621374 () Bool)

(assert (=> b!4222250 (=> (not res!1735676) (not e!2621374))))

(declare-fun lt!1502308 () Option!9981)

(assert (=> b!4222250 (= res!1735676 (< (size!34112 (_2!25222 (get!15120 lt!1502308))) (size!34112 input!3517)))))

(declare-fun b!4222251 () Bool)

(declare-fun res!1735678 () Bool)

(assert (=> b!4222251 (=> (not res!1735678) (not e!2621374))))

(assert (=> b!4222251 (= res!1735678 (= (value!242631 (_1!25222 (get!15120 lt!1502308))) (apply!10708 (transformation!7793 (rule!10931 (_1!25222 (get!15120 lt!1502308)))) (seqFromList!5768 (originalCharacters!8175 (_1!25222 (get!15120 lt!1502308)))))))))

(declare-fun b!4222252 () Bool)

(declare-fun res!1735679 () Bool)

(assert (=> b!4222252 (=> (not res!1735679) (not e!2621374))))

(assert (=> b!4222252 (= res!1735679 (= (++!11867 (list!16812 (charsOf!5216 (_1!25222 (get!15120 lt!1502308)))) (_2!25222 (get!15120 lt!1502308))) input!3517))))

(declare-fun b!4222253 () Bool)

(declare-fun res!1735682 () Bool)

(assert (=> b!4222253 (=> (not res!1735682) (not e!2621374))))

(assert (=> b!4222253 (= res!1735682 (= (rule!10931 (_1!25222 (get!15120 lt!1502308))) (h!51876 rules!3967)))))

(declare-fun d!1243589 () Bool)

(declare-fun e!2621373 () Bool)

(assert (=> d!1243589 e!2621373))

(declare-fun res!1735681 () Bool)

(assert (=> d!1243589 (=> res!1735681 e!2621373)))

(assert (=> d!1243589 (= res!1735681 (isEmpty!27526 lt!1502308))))

(assert (=> d!1243589 (= lt!1502308 e!2621372)))

(declare-fun c!718378 () Bool)

(assert (=> d!1243589 (= c!718378 (isEmpty!27527 (_1!25224 lt!1502307)))))

(assert (=> d!1243589 (= lt!1502307 (findLongestMatch!1581 (regex!7793 (h!51876 rules!3967)) input!3517))))

(assert (=> d!1243589 (ruleValid!3505 thiss!26544 (h!51876 rules!3967))))

(assert (=> d!1243589 (= (maxPrefixOneRule!3383 thiss!26544 (h!51876 rules!3967) input!3517) lt!1502308)))

(declare-fun b!4222254 () Bool)

(assert (=> b!4222254 (= e!2621372 None!9980)))

(declare-fun b!4222255 () Bool)

(assert (=> b!4222255 (= e!2621373 e!2621374)))

(declare-fun res!1735680 () Bool)

(assert (=> b!4222255 (=> (not res!1735680) (not e!2621374))))

(assert (=> b!4222255 (= res!1735680 (matchR!6387 (regex!7793 (h!51876 rules!3967)) (list!16812 (charsOf!5216 (_1!25222 (get!15120 lt!1502308))))))))

(declare-fun b!4222256 () Bool)

(assert (=> b!4222256 (= e!2621374 (= (size!34110 (_1!25222 (get!15120 lt!1502308))) (size!34112 (originalCharacters!8175 (_1!25222 (get!15120 lt!1502308))))))))

(assert (= (and d!1243589 c!718378) b!4222254))

(assert (= (and d!1243589 (not c!718378)) b!4222248))

(assert (= (and b!4222248 (not res!1735677)) b!4222249))

(assert (= (and d!1243589 (not res!1735681)) b!4222255))

(assert (= (and b!4222255 res!1735680) b!4222252))

(assert (= (and b!4222252 res!1735679) b!4222250))

(assert (= (and b!4222250 res!1735676) b!4222253))

(assert (= (and b!4222253 res!1735682) b!4222251))

(assert (= (and b!4222251 res!1735678) b!4222256))

(declare-fun m!4810937 () Bool)

(assert (=> b!4222251 m!4810937))

(declare-fun m!4810939 () Bool)

(assert (=> b!4222251 m!4810939))

(assert (=> b!4222251 m!4810939))

(declare-fun m!4810941 () Bool)

(assert (=> b!4222251 m!4810941))

(assert (=> b!4222252 m!4810937))

(declare-fun m!4810943 () Bool)

(assert (=> b!4222252 m!4810943))

(assert (=> b!4222252 m!4810943))

(declare-fun m!4810945 () Bool)

(assert (=> b!4222252 m!4810945))

(assert (=> b!4222252 m!4810945))

(declare-fun m!4810947 () Bool)

(assert (=> b!4222252 m!4810947))

(assert (=> b!4222253 m!4810937))

(assert (=> b!4222255 m!4810937))

(assert (=> b!4222255 m!4810943))

(assert (=> b!4222255 m!4810943))

(assert (=> b!4222255 m!4810945))

(assert (=> b!4222255 m!4810945))

(declare-fun m!4810949 () Bool)

(assert (=> b!4222255 m!4810949))

(assert (=> b!4222250 m!4810937))

(declare-fun m!4810951 () Bool)

(assert (=> b!4222250 m!4810951))

(assert (=> b!4222250 m!4810755))

(assert (=> b!4222256 m!4810937))

(declare-fun m!4810953 () Bool)

(assert (=> b!4222256 m!4810953))

(assert (=> b!4222248 m!4810755))

(declare-fun m!4810955 () Bool)

(assert (=> b!4222248 m!4810955))

(declare-fun m!4810957 () Bool)

(assert (=> b!4222248 m!4810957))

(declare-fun m!4810959 () Bool)

(assert (=> b!4222248 m!4810959))

(assert (=> b!4222248 m!4810955))

(declare-fun m!4810961 () Bool)

(assert (=> b!4222248 m!4810961))

(assert (=> b!4222248 m!4810955))

(declare-fun m!4810963 () Bool)

(assert (=> b!4222248 m!4810963))

(assert (=> b!4222248 m!4810827))

(assert (=> b!4222248 m!4810955))

(declare-fun m!4810965 () Bool)

(assert (=> b!4222248 m!4810965))

(assert (=> b!4222248 m!4810827))

(assert (=> b!4222248 m!4810755))

(declare-fun m!4810967 () Bool)

(assert (=> b!4222248 m!4810967))

(declare-fun m!4810969 () Bool)

(assert (=> d!1243589 m!4810969))

(declare-fun m!4810971 () Bool)

(assert (=> d!1243589 m!4810971))

(declare-fun m!4810973 () Bool)

(assert (=> d!1243589 m!4810973))

(declare-fun m!4810975 () Bool)

(assert (=> d!1243589 m!4810975))

(assert (=> b!4222249 m!4810827))

(assert (=> b!4222249 m!4810755))

(assert (=> b!4222249 m!4810827))

(assert (=> b!4222249 m!4810755))

(assert (=> b!4222249 m!4810967))

(declare-fun m!4810977 () Bool)

(assert (=> b!4222249 m!4810977))

(assert (=> b!4221970 d!1243589))

(declare-fun d!1243591 () Bool)

(assert (=> d!1243591 (= (isEmpty!27524 rules!3967) (is-Nil!46456 rules!3967))))

(assert (=> b!4221969 d!1243591))

(declare-fun d!1243593 () Bool)

(declare-fun lt!1502311 () Bool)

(assert (=> d!1243593 (= lt!1502311 (set.member rBis!178 (content!7294 (t!349085 rules!3967))))))

(declare-fun e!2621376 () Bool)

(assert (=> d!1243593 (= lt!1502311 e!2621376)))

(declare-fun res!1735684 () Bool)

(assert (=> d!1243593 (=> (not res!1735684) (not e!2621376))))

(assert (=> d!1243593 (= res!1735684 (is-Cons!46456 (t!349085 rules!3967)))))

(assert (=> d!1243593 (= (contains!9616 (t!349085 rules!3967) rBis!178) lt!1502311)))

(declare-fun b!4222257 () Bool)

(declare-fun e!2621377 () Bool)

(assert (=> b!4222257 (= e!2621376 e!2621377)))

(declare-fun res!1735683 () Bool)

(assert (=> b!4222257 (=> res!1735683 e!2621377)))

(assert (=> b!4222257 (= res!1735683 (= (h!51876 (t!349085 rules!3967)) rBis!178))))

(declare-fun b!4222258 () Bool)

(assert (=> b!4222258 (= e!2621377 (contains!9616 (t!349085 (t!349085 rules!3967)) rBis!178))))

(assert (= (and d!1243593 res!1735684) b!4222257))

(assert (= (and b!4222257 (not res!1735683)) b!4222258))

(declare-fun m!4810979 () Bool)

(assert (=> d!1243593 m!4810979))

(declare-fun m!4810981 () Bool)

(assert (=> d!1243593 m!4810981))

(declare-fun m!4810983 () Bool)

(assert (=> b!4222258 m!4810983))

(assert (=> b!4221948 d!1243593))

(declare-fun d!1243595 () Bool)

(declare-fun res!1735689 () Bool)

(declare-fun e!2621380 () Bool)

(assert (=> d!1243595 (=> (not res!1735689) (not e!2621380))))

(declare-fun validRegex!5765 (Regex!12698) Bool)

(assert (=> d!1243595 (= res!1735689 (validRegex!5765 (regex!7793 rBis!178)))))

(assert (=> d!1243595 (= (ruleValid!3505 thiss!26544 rBis!178) e!2621380)))

(declare-fun b!4222263 () Bool)

(declare-fun res!1735690 () Bool)

(assert (=> b!4222263 (=> (not res!1735690) (not e!2621380))))

(declare-fun nullable!4478 (Regex!12698) Bool)

(assert (=> b!4222263 (= res!1735690 (not (nullable!4478 (regex!7793 rBis!178))))))

(declare-fun b!4222264 () Bool)

(assert (=> b!4222264 (= e!2621380 (not (= (tag!8657 rBis!178) (String!53988 ""))))))

(assert (= (and d!1243595 res!1735689) b!4222263))

(assert (= (and b!4222263 res!1735690) b!4222264))

(declare-fun m!4810985 () Bool)

(assert (=> d!1243595 m!4810985))

(declare-fun m!4810987 () Bool)

(assert (=> b!4222263 m!4810987))

(assert (=> b!4221971 d!1243595))

(declare-fun b!4222266 () Bool)

(declare-fun e!2621381 () List!46578)

(assert (=> b!4222266 (= e!2621381 (Cons!46454 (h!51874 p!3001) (++!11867 (t!349083 p!3001) suffix!1557)))))

(declare-fun b!4222267 () Bool)

(declare-fun res!1735692 () Bool)

(declare-fun e!2621382 () Bool)

(assert (=> b!4222267 (=> (not res!1735692) (not e!2621382))))

(declare-fun lt!1502312 () List!46578)

(assert (=> b!4222267 (= res!1735692 (= (size!34112 lt!1502312) (+ (size!34112 p!3001) (size!34112 suffix!1557))))))

(declare-fun b!4222268 () Bool)

(assert (=> b!4222268 (= e!2621382 (or (not (= suffix!1557 Nil!46454)) (= lt!1502312 p!3001)))))

(declare-fun b!4222265 () Bool)

(assert (=> b!4222265 (= e!2621381 suffix!1557)))

(declare-fun d!1243597 () Bool)

(assert (=> d!1243597 e!2621382))

(declare-fun res!1735691 () Bool)

(assert (=> d!1243597 (=> (not res!1735691) (not e!2621382))))

(assert (=> d!1243597 (= res!1735691 (= (content!7295 lt!1502312) (set.union (content!7295 p!3001) (content!7295 suffix!1557))))))

(assert (=> d!1243597 (= lt!1502312 e!2621381)))

(declare-fun c!718379 () Bool)

(assert (=> d!1243597 (= c!718379 (is-Nil!46454 p!3001))))

(assert (=> d!1243597 (= (++!11867 p!3001 suffix!1557) lt!1502312)))

(assert (= (and d!1243597 c!718379) b!4222265))

(assert (= (and d!1243597 (not c!718379)) b!4222266))

(assert (= (and d!1243597 res!1735691) b!4222267))

(assert (= (and b!4222267 res!1735692) b!4222268))

(declare-fun m!4810989 () Bool)

(assert (=> b!4222266 m!4810989))

(declare-fun m!4810991 () Bool)

(assert (=> b!4222267 m!4810991))

(assert (=> b!4222267 m!4810917))

(declare-fun m!4810993 () Bool)

(assert (=> b!4222267 m!4810993))

(declare-fun m!4810995 () Bool)

(assert (=> d!1243597 m!4810995))

(declare-fun m!4810997 () Bool)

(assert (=> d!1243597 m!4810997))

(declare-fun m!4810999 () Bool)

(assert (=> d!1243597 m!4810999))

(assert (=> b!4221949 d!1243597))

(declare-fun b!4222282 () Bool)

(declare-fun e!2621385 () Bool)

(declare-fun tp!1292019 () Bool)

(declare-fun tp!1292020 () Bool)

(assert (=> b!4222282 (= e!2621385 (and tp!1292019 tp!1292020))))

(declare-fun b!4222280 () Bool)

(declare-fun tp!1292023 () Bool)

(declare-fun tp!1292022 () Bool)

(assert (=> b!4222280 (= e!2621385 (and tp!1292023 tp!1292022))))

(declare-fun b!4222281 () Bool)

(declare-fun tp!1292021 () Bool)

(assert (=> b!4222281 (= e!2621385 tp!1292021)))

(declare-fun b!4222279 () Bool)

(assert (=> b!4222279 (= e!2621385 tp_is_empty!22363)))

(assert (=> b!4221951 (= tp!1291938 e!2621385)))

(assert (= (and b!4221951 (is-ElementMatch!12698 (regex!7793 (rule!10931 t!8364)))) b!4222279))

(assert (= (and b!4221951 (is-Concat!20722 (regex!7793 (rule!10931 t!8364)))) b!4222280))

(assert (= (and b!4221951 (is-Star!12698 (regex!7793 (rule!10931 t!8364)))) b!4222281))

(assert (= (and b!4221951 (is-Union!12698 (regex!7793 (rule!10931 t!8364)))) b!4222282))

(declare-fun b!4222287 () Bool)

(declare-fun e!2621388 () Bool)

(declare-fun tp!1292026 () Bool)

(assert (=> b!4222287 (= e!2621388 (and tp_is_empty!22363 tp!1292026))))

(assert (=> b!4221962 (= tp!1291937 e!2621388)))

(assert (= (and b!4221962 (is-Cons!46454 (originalCharacters!8175 t!8364))) b!4222287))

(declare-fun b!4222288 () Bool)

(declare-fun e!2621389 () Bool)

(declare-fun tp!1292027 () Bool)

(assert (=> b!4222288 (= e!2621389 (and tp_is_empty!22363 tp!1292027))))

(assert (=> b!4221961 (= tp!1291931 e!2621389)))

(assert (= (and b!4221961 (is-Cons!46454 (t!349083 input!3517))) b!4222288))

(declare-fun b!4222289 () Bool)

(declare-fun e!2621390 () Bool)

(declare-fun tp!1292028 () Bool)

(assert (=> b!4222289 (= e!2621390 (and tp_is_empty!22363 tp!1292028))))

(assert (=> b!4221963 (= tp!1291936 e!2621390)))

(assert (= (and b!4221963 (is-Cons!46454 (t!349083 suffix!1557))) b!4222289))

(declare-fun b!4222293 () Bool)

(declare-fun e!2621391 () Bool)

(declare-fun tp!1292029 () Bool)

(declare-fun tp!1292030 () Bool)

(assert (=> b!4222293 (= e!2621391 (and tp!1292029 tp!1292030))))

(declare-fun b!4222291 () Bool)

(declare-fun tp!1292033 () Bool)

(declare-fun tp!1292032 () Bool)

(assert (=> b!4222291 (= e!2621391 (and tp!1292033 tp!1292032))))

(declare-fun b!4222292 () Bool)

(declare-fun tp!1292031 () Bool)

(assert (=> b!4222292 (= e!2621391 tp!1292031)))

(declare-fun b!4222290 () Bool)

(assert (=> b!4222290 (= e!2621391 tp_is_empty!22363)))

(assert (=> b!4221942 (= tp!1291930 e!2621391)))

(assert (= (and b!4221942 (is-ElementMatch!12698 (regex!7793 (h!51876 rules!3967)))) b!4222290))

(assert (= (and b!4221942 (is-Concat!20722 (regex!7793 (h!51876 rules!3967)))) b!4222291))

(assert (= (and b!4221942 (is-Star!12698 (regex!7793 (h!51876 rules!3967)))) b!4222292))

(assert (= (and b!4221942 (is-Union!12698 (regex!7793 (h!51876 rules!3967)))) b!4222293))

(declare-fun b!4222294 () Bool)

(declare-fun e!2621392 () Bool)

(declare-fun tp!1292034 () Bool)

(assert (=> b!4222294 (= e!2621392 (and tp_is_empty!22363 tp!1292034))))

(assert (=> b!4221952 (= tp!1291928 e!2621392)))

(assert (= (and b!4221952 (is-Cons!46454 (originalCharacters!8175 tBis!41))) b!4222294))

(declare-fun b!4222298 () Bool)

(declare-fun e!2621393 () Bool)

(declare-fun tp!1292035 () Bool)

(declare-fun tp!1292036 () Bool)

(assert (=> b!4222298 (= e!2621393 (and tp!1292035 tp!1292036))))

(declare-fun b!4222296 () Bool)

(declare-fun tp!1292039 () Bool)

(declare-fun tp!1292038 () Bool)

(assert (=> b!4222296 (= e!2621393 (and tp!1292039 tp!1292038))))

(declare-fun b!4222297 () Bool)

(declare-fun tp!1292037 () Bool)

(assert (=> b!4222297 (= e!2621393 tp!1292037)))

(declare-fun b!4222295 () Bool)

(assert (=> b!4222295 (= e!2621393 tp_is_empty!22363)))

(assert (=> b!4221954 (= tp!1291929 e!2621393)))

(assert (= (and b!4221954 (is-ElementMatch!12698 (regex!7793 rBis!178))) b!4222295))

(assert (= (and b!4221954 (is-Concat!20722 (regex!7793 rBis!178))) b!4222296))

(assert (= (and b!4221954 (is-Star!12698 (regex!7793 rBis!178))) b!4222297))

(assert (= (and b!4221954 (is-Union!12698 (regex!7793 rBis!178))) b!4222298))

(declare-fun b!4222299 () Bool)

(declare-fun e!2621394 () Bool)

(declare-fun tp!1292040 () Bool)

(assert (=> b!4222299 (= e!2621394 (and tp_is_empty!22363 tp!1292040))))

(assert (=> b!4221964 (= tp!1291941 e!2621394)))

(assert (= (and b!4221964 (is-Cons!46454 (t!349083 suffixBis!41))) b!4222299))

(declare-fun b!4222310 () Bool)

(declare-fun b_free!124099 () Bool)

(declare-fun b_next!124803 () Bool)

(assert (=> b!4222310 (= b_free!124099 (not b_next!124803))))

(declare-fun tp!1292050 () Bool)

(declare-fun b_and!333237 () Bool)

(assert (=> b!4222310 (= tp!1292050 b_and!333237)))

(declare-fun b_free!124101 () Bool)

(declare-fun b_next!124805 () Bool)

(assert (=> b!4222310 (= b_free!124101 (not b_next!124805))))

(declare-fun t!349106 () Bool)

(declare-fun tb!253715 () Bool)

(assert (=> (and b!4222310 (= (toChars!10376 (transformation!7793 (h!51876 (t!349085 rules!3967)))) (toChars!10376 (transformation!7793 (rule!10931 tBis!41)))) t!349106) tb!253715))

(declare-fun result!309220 () Bool)

(assert (= result!309220 result!309196))

(assert (=> b!4222203 t!349106))

(declare-fun t!349108 () Bool)

(declare-fun tb!253717 () Bool)

(assert (=> (and b!4222310 (= (toChars!10376 (transformation!7793 (h!51876 (t!349085 rules!3967)))) (toChars!10376 (transformation!7793 (rule!10931 t!8364)))) t!349108) tb!253717))

(declare-fun result!309222 () Bool)

(assert (= result!309222 result!309206))

(assert (=> b!4222210 t!349108))

(assert (=> d!1243579 t!349106))

(declare-fun b_and!333239 () Bool)

(declare-fun tp!1292052 () Bool)

(assert (=> b!4222310 (= tp!1292052 (and (=> t!349106 result!309220) (=> t!349108 result!309222) b_and!333239))))

(declare-fun e!2621405 () Bool)

(assert (=> b!4222310 (= e!2621405 (and tp!1292050 tp!1292052))))

(declare-fun tp!1292051 () Bool)

(declare-fun e!2621406 () Bool)

(declare-fun b!4222309 () Bool)

(assert (=> b!4222309 (= e!2621406 (and tp!1292051 (inv!61121 (tag!8657 (h!51876 (t!349085 rules!3967)))) (inv!61124 (transformation!7793 (h!51876 (t!349085 rules!3967)))) e!2621405))))

(declare-fun b!4222308 () Bool)

(declare-fun e!2621403 () Bool)

(declare-fun tp!1292049 () Bool)

(assert (=> b!4222308 (= e!2621403 (and e!2621406 tp!1292049))))

(assert (=> b!4221944 (= tp!1291927 e!2621403)))

(assert (= b!4222309 b!4222310))

(assert (= b!4222308 b!4222309))

(assert (= (and b!4221944 (is-Cons!46456 (t!349085 rules!3967))) b!4222308))

(declare-fun m!4811001 () Bool)

(assert (=> b!4222309 m!4811001))

(declare-fun m!4811003 () Bool)

(assert (=> b!4222309 m!4811003))

(declare-fun b!4222311 () Bool)

(declare-fun e!2621407 () Bool)

(declare-fun tp!1292053 () Bool)

(assert (=> b!4222311 (= e!2621407 (and tp_is_empty!22363 tp!1292053))))

(assert (=> b!4221946 (= tp!1291940 e!2621407)))

(assert (= (and b!4221946 (is-Cons!46454 (t!349083 p!3001))) b!4222311))

(declare-fun b!4222315 () Bool)

(declare-fun e!2621408 () Bool)

(declare-fun tp!1292054 () Bool)

(declare-fun tp!1292055 () Bool)

(assert (=> b!4222315 (= e!2621408 (and tp!1292054 tp!1292055))))

(declare-fun b!4222313 () Bool)

(declare-fun tp!1292058 () Bool)

(declare-fun tp!1292057 () Bool)

(assert (=> b!4222313 (= e!2621408 (and tp!1292058 tp!1292057))))

(declare-fun b!4222314 () Bool)

(declare-fun tp!1292056 () Bool)

(assert (=> b!4222314 (= e!2621408 tp!1292056)))

(declare-fun b!4222312 () Bool)

(assert (=> b!4222312 (= e!2621408 tp_is_empty!22363)))

(assert (=> b!4221958 (= tp!1291933 e!2621408)))

(assert (= (and b!4221958 (is-ElementMatch!12698 (regex!7793 (rule!10931 tBis!41)))) b!4222312))

(assert (= (and b!4221958 (is-Concat!20722 (regex!7793 (rule!10931 tBis!41)))) b!4222313))

(assert (= (and b!4221958 (is-Star!12698 (regex!7793 (rule!10931 tBis!41)))) b!4222314))

(assert (= (and b!4221958 (is-Union!12698 (regex!7793 (rule!10931 tBis!41)))) b!4222315))

(declare-fun b!4222316 () Bool)

(declare-fun e!2621413 () Bool)

(declare-fun tp!1292059 () Bool)

(assert (=> b!4222316 (= e!2621413 (and tp_is_empty!22363 tp!1292059))))

(assert (=> b!4221950 (= tp!1291932 e!2621413)))

(assert (= (and b!4221950 (is-Cons!46454 (t!349083 pBis!121))) b!4222316))

(declare-fun b_lambda!124449 () Bool)

(assert (= b_lambda!124443 (or (and b!4221957 b_free!124081) (and b!4221966 b_free!124077 (= (toChars!10376 (transformation!7793 (rule!10931 t!8364))) (toChars!10376 (transformation!7793 (rule!10931 tBis!41))))) (and b!4221960 b_free!124069 (= (toChars!10376 (transformation!7793 rBis!178)) (toChars!10376 (transformation!7793 (rule!10931 tBis!41))))) (and b!4221956 b_free!124073 (= (toChars!10376 (transformation!7793 (h!51876 rules!3967))) (toChars!10376 (transformation!7793 (rule!10931 tBis!41))))) (and b!4222310 b_free!124101 (= (toChars!10376 (transformation!7793 (h!51876 (t!349085 rules!3967)))) (toChars!10376 (transformation!7793 (rule!10931 tBis!41))))) b_lambda!124449)))

(declare-fun b_lambda!124451 () Bool)

(assert (= b_lambda!124445 (or (and b!4222310 b_free!124101 (= (toChars!10376 (transformation!7793 (h!51876 (t!349085 rules!3967)))) (toChars!10376 (transformation!7793 (rule!10931 t!8364))))) (and b!4221960 b_free!124069 (= (toChars!10376 (transformation!7793 rBis!178)) (toChars!10376 (transformation!7793 (rule!10931 t!8364))))) (and b!4221957 b_free!124081 (= (toChars!10376 (transformation!7793 (rule!10931 tBis!41))) (toChars!10376 (transformation!7793 (rule!10931 t!8364))))) (and b!4221966 b_free!124077) (and b!4221956 b_free!124073 (= (toChars!10376 (transformation!7793 (h!51876 rules!3967))) (toChars!10376 (transformation!7793 (rule!10931 t!8364))))) b_lambda!124451)))

(declare-fun b_lambda!124453 () Bool)

(assert (= b_lambda!124447 (or (and b!4221957 b_free!124081) (and b!4221966 b_free!124077 (= (toChars!10376 (transformation!7793 (rule!10931 t!8364))) (toChars!10376 (transformation!7793 (rule!10931 tBis!41))))) (and b!4221960 b_free!124069 (= (toChars!10376 (transformation!7793 rBis!178)) (toChars!10376 (transformation!7793 (rule!10931 tBis!41))))) (and b!4221956 b_free!124073 (= (toChars!10376 (transformation!7793 (h!51876 rules!3967))) (toChars!10376 (transformation!7793 (rule!10931 tBis!41))))) (and b!4222310 b_free!124101 (= (toChars!10376 (transformation!7793 (h!51876 (t!349085 rules!3967)))) (toChars!10376 (transformation!7793 (rule!10931 tBis!41))))) b_lambda!124453)))

(push 1)

(assert (not bm!293157))

(assert (not b!4222316))

(assert (not d!1243555))

(assert (not b!4222093))

(assert b_and!333237)

(assert (not b!4222239))

(assert (not b_next!124779))

(assert (not b!4222175))

(assert (not b!4222256))

(assert (not b!4222185))

(assert (not d!1243561))

(assert (not b!4222209))

(assert b_and!333229)

(assert (not b!4222126))

(assert b_and!333239)

(assert (not b!4222281))

(assert (not b!4222313))

(assert b_and!333181)

(assert (not b!4222287))

(assert (not b!4222174))

(assert (not d!1243587))

(assert (not b!4222170))

(assert (not b!4222125))

(assert (not b_lambda!124449))

(assert b_and!333185)

(assert b_and!333189)

(assert (not b!4222187))

(assert (not b!4222315))

(assert (not d!1243579))

(assert (not b!4222151))

(assert (not b!4222251))

(assert (not b!4222100))

(assert (not b!4222250))

(assert (not b_next!124773))

(assert (not b!4222183))

(assert (not b_next!124775))

(assert (not bm!293156))

(assert (not d!1243589))

(assert b_and!333193)

(assert (not b!4222309))

(assert (not b!4222314))

(assert (not d!1243575))

(assert (not b!4222299))

(assert (not b!4222204))

(assert (not b!4222184))

(assert (not b_next!124803))

(assert (not b!4222258))

(assert (not b!4222263))

(assert (not b!4222253))

(assert (not b!4222079))

(assert (not b!4222280))

(assert b_and!333231)

(assert (not d!1243573))

(assert (not b_next!124785))

(assert (not b!4222094))

(assert (not d!1243549))

(assert (not b!4222297))

(assert (not b!4222289))

(assert (not d!1243583))

(assert b_and!333233)

(assert (not d!1243597))

(assert (not b!4222123))

(assert (not b!4222255))

(assert (not b_next!124781))

(assert (not tb!253707))

(assert (not d!1243593))

(assert (not b!4222182))

(assert (not b!4222210))

(assert (not b!4222190))

(assert (not b_next!124771))

(assert (not b!4222122))

(assert (not d!1243595))

(assert (not b!4222294))

(assert (not b_next!124783))

(assert (not b!4222103))

(assert (not b!4222216))

(assert (not b!4222248))

(assert (not d!1243577))

(assert tp_is_empty!22363)

(assert (not b!4222293))

(assert (not b!4222145))

(assert (not b!4222215))

(assert (not b!4222292))

(assert (not b!4222189))

(assert (not d!1243543))

(assert (not b!4222186))

(assert (not b!4222291))

(assert (not b_next!124777))

(assert (not b!4222147))

(assert (not b!4222172))

(assert (not b!4222149))

(assert (not b!4222203))

(assert (not b!4222142))

(assert (not b!4222130))

(assert (not b!4222249))

(assert (not b_lambda!124451))

(assert (not b!4222211))

(assert (not b!4222212))

(assert (not b!4222298))

(assert (not b!4222178))

(assert (not tb!253699))

(assert (not b!4222102))

(assert (not b!4222180))

(assert (not b!4222240))

(assert (not b!4222252))

(assert (not b!4222198))

(assert (not d!1243531))

(assert (not b!4222288))

(assert (not b!4222140))

(assert (not b!4222177))

(assert (not d!1243567))

(assert (not b!4222217))

(assert (not b!4222267))

(assert (not b!4222173))

(assert (not b!4222191))

(assert b_and!333235)

(assert (not b!4222091))

(assert (not b!4222129))

(assert (not d!1243557))

(assert (not b!4222282))

(assert (not b!4222311))

(assert (not b!4222296))

(assert (not b!4222141))

(assert (not b!4222213))

(assert (not b_next!124805))

(assert (not b!4222192))

(assert (not b!4222150))

(assert (not d!1243563))

(assert (not b!4222128))

(assert (not d!1243541))

(assert (not b!4222171))

(assert (not d!1243571))

(assert (not d!1243569))

(assert (not b_lambda!124453))

(assert (not b!4222308))

(assert (not b!4222266))

(assert (not b!4222181))

(assert (not b!4222124))

(check-sat)

(pop 1)

(push 1)

(assert b_and!333181)

(assert b_and!333193)

(assert (not b_next!124803))

(assert b_and!333233)

(assert (not b_next!124781))

(assert (not b_next!124771))

(assert (not b_next!124783))

(assert (not b_next!124777))

(assert b_and!333235)

(assert (not b_next!124805))

(assert b_and!333237)

(assert (not b_next!124779))

(assert b_and!333239)

(assert b_and!333229)

(assert b_and!333185)

(assert b_and!333189)

(assert (not b_next!124773))

(assert (not b_next!124775))

(assert b_and!333231)

(assert (not b_next!124785))

(check-sat)

(pop 1)

