; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!388762 () Bool)

(assert start!388762)

(declare-fun b!4102811 () Bool)

(declare-fun b_free!115017 () Bool)

(declare-fun b_next!115721 () Bool)

(assert (=> b!4102811 (= b_free!115017 (not b_next!115721))))

(declare-fun tp!1243030 () Bool)

(declare-fun b_and!316831 () Bool)

(assert (=> b!4102811 (= tp!1243030 b_and!316831)))

(declare-fun b_free!115019 () Bool)

(declare-fun b_next!115723 () Bool)

(assert (=> b!4102811 (= b_free!115019 (not b_next!115723))))

(declare-fun tp!1243027 () Bool)

(declare-fun b_and!316833 () Bool)

(assert (=> b!4102811 (= tp!1243027 b_and!316833)))

(declare-fun b!4102815 () Bool)

(declare-fun b_free!115021 () Bool)

(declare-fun b_next!115725 () Bool)

(assert (=> b!4102815 (= b_free!115021 (not b_next!115725))))

(declare-fun tp!1243032 () Bool)

(declare-fun b_and!316835 () Bool)

(assert (=> b!4102815 (= tp!1243032 b_and!316835)))

(declare-fun b_free!115023 () Bool)

(declare-fun b_next!115727 () Bool)

(assert (=> b!4102815 (= b_free!115023 (not b_next!115727))))

(declare-fun tp!1243028 () Bool)

(declare-fun b_and!316837 () Bool)

(assert (=> b!4102815 (= tp!1243028 b_and!316837)))

(declare-fun b!4102809 () Bool)

(declare-fun e!2546098 () Bool)

(declare-datatypes ((List!44222 0))(
  ( (Nil!44098) (Cons!44098 (h!49518 (_ BitVec 16)) (t!339879 List!44222)) )
))
(declare-datatypes ((TokenValue!7385 0))(
  ( (FloatLiteralValue!14770 (text!52140 List!44222)) (TokenValueExt!7384 (__x!26987 Int)) (Broken!36925 (value!224531 List!44222)) (Object!7508) (End!7385) (Def!7385) (Underscore!7385) (Match!7385) (Else!7385) (Error!7385) (Case!7385) (If!7385) (Extends!7385) (Abstract!7385) (Class!7385) (Val!7385) (DelimiterValue!14770 (del!7445 List!44222)) (KeywordValue!7391 (value!224532 List!44222)) (CommentValue!14770 (value!224533 List!44222)) (WhitespaceValue!14770 (value!224534 List!44222)) (IndentationValue!7385 (value!224535 List!44222)) (String!50676) (Int32!7385) (Broken!36926 (value!224536 List!44222)) (Boolean!7386) (Unit!63605) (OperatorValue!7388 (op!7445 List!44222)) (IdentifierValue!14770 (value!224537 List!44222)) (IdentifierValue!14771 (value!224538 List!44222)) (WhitespaceValue!14771 (value!224539 List!44222)) (True!14770) (False!14770) (Broken!36927 (value!224540 List!44222)) (Broken!36928 (value!224541 List!44222)) (True!14771) (RightBrace!7385) (RightBracket!7385) (Colon!7385) (Null!7385) (Comma!7385) (LeftBracket!7385) (False!14771) (LeftBrace!7385) (ImaginaryLiteralValue!7385 (text!52141 List!44222)) (StringLiteralValue!22155 (value!224542 List!44222)) (EOFValue!7385 (value!224543 List!44222)) (IdentValue!7385 (value!224544 List!44222)) (DelimiterValue!14771 (value!224545 List!44222)) (DedentValue!7385 (value!224546 List!44222)) (NewLineValue!7385 (value!224547 List!44222)) (IntegerValue!22155 (value!224548 (_ BitVec 32)) (text!52142 List!44222)) (IntegerValue!22156 (value!224549 Int) (text!52143 List!44222)) (Times!7385) (Or!7385) (Equal!7385) (Minus!7385) (Broken!36929 (value!224550 List!44222)) (And!7385) (Div!7385) (LessEqual!7385) (Mod!7385) (Concat!19445) (Not!7385) (Plus!7385) (SpaceValue!7385 (value!224551 List!44222)) (IntegerValue!22157 (value!224552 Int) (text!52144 List!44222)) (StringLiteralValue!22156 (text!52145 List!44222)) (FloatLiteralValue!14771 (text!52146 List!44222)) (BytesLiteralValue!7385 (value!224553 List!44222)) (CommentValue!14771 (value!224554 List!44222)) (StringLiteralValue!22157 (value!224555 List!44222)) (ErrorTokenValue!7385 (msg!7446 List!44222)) )
))
(declare-datatypes ((C!24306 0))(
  ( (C!24307 (val!14263 Int)) )
))
(declare-datatypes ((Regex!12060 0))(
  ( (ElementMatch!12060 (c!706563 C!24306)) (Concat!19446 (regOne!24632 Regex!12060) (regTwo!24632 Regex!12060)) (EmptyExpr!12060) (Star!12060 (reg!12389 Regex!12060)) (EmptyLang!12060) (Union!12060 (regOne!24633 Regex!12060) (regTwo!24633 Regex!12060)) )
))
(declare-datatypes ((String!50677 0))(
  ( (String!50678 (value!224556 String)) )
))
(declare-datatypes ((List!44223 0))(
  ( (Nil!44099) (Cons!44099 (h!49519 C!24306) (t!339880 List!44223)) )
))
(declare-datatypes ((IArray!26737 0))(
  ( (IArray!26738 (innerList!13426 List!44223)) )
))
(declare-datatypes ((Conc!13366 0))(
  ( (Node!13366 (left!33114 Conc!13366) (right!33444 Conc!13366) (csize!26962 Int) (cheight!13577 Int)) (Leaf!20659 (xs!16672 IArray!26737) (csize!26963 Int)) (Empty!13366) )
))
(declare-datatypes ((BalanceConc!26326 0))(
  ( (BalanceConc!26327 (c!706564 Conc!13366)) )
))
(declare-datatypes ((TokenValueInjection!14198 0))(
  ( (TokenValueInjection!14199 (toValue!9767 Int) (toChars!9626 Int)) )
))
(declare-datatypes ((Rule!14110 0))(
  ( (Rule!14111 (regex!7155 Regex!12060) (tag!8015 String!50677) (isSeparator!7155 Bool) (transformation!7155 TokenValueInjection!14198)) )
))
(declare-datatypes ((Token!13408 0))(
  ( (Token!13409 (value!224557 TokenValue!7385) (rule!10299 Rule!14110) (size!32876 Int) (originalCharacters!7735 List!44223)) )
))
(declare-datatypes ((tuple2!42926 0))(
  ( (tuple2!42927 (_1!24597 Token!13408) (_2!24597 List!44223)) )
))
(declare-datatypes ((Option!9547 0))(
  ( (None!9546) (Some!9546 (v!40058 tuple2!42926)) )
))
(declare-fun lt!1467204 () Option!9547)

(declare-fun isDefined!7213 (Option!9547) Bool)

(assert (=> b!4102809 (= e!2546098 (isDefined!7213 lt!1467204))))

(declare-fun e!2546101 () Bool)

(declare-fun b!4102810 () Bool)

(declare-fun e!2546100 () Bool)

(declare-fun tp!1243034 () Bool)

(declare-fun rHead!24 () Rule!14110)

(declare-fun inv!58791 (String!50677) Bool)

(declare-fun inv!58794 (TokenValueInjection!14198) Bool)

(assert (=> b!4102810 (= e!2546101 (and tp!1243034 (inv!58791 (tag!8015 rHead!24)) (inv!58794 (transformation!7155 rHead!24)) e!2546100))))

(assert (=> b!4102811 (= e!2546100 (and tp!1243030 tp!1243027))))

(declare-fun b!4102812 () Bool)

(declare-fun res!1677306 () Bool)

(declare-fun e!2546095 () Bool)

(assert (=> b!4102812 (=> (not res!1677306) (not e!2546095))))

(declare-datatypes ((List!44224 0))(
  ( (Nil!44100) (Cons!44100 (h!49520 Rule!14110) (t!339881 List!44224)) )
))
(declare-fun rTail!27 () List!44224)

(assert (=> b!4102812 (= res!1677306 (is-Cons!44100 rTail!27))))

(declare-fun res!1677305 () Bool)

(declare-fun e!2546104 () Bool)

(assert (=> start!388762 (=> (not res!1677305) (not e!2546104))))

(declare-datatypes ((LexerInterface!6744 0))(
  ( (LexerInterfaceExt!6741 (__x!26988 Int)) (Lexer!6742) )
))
(declare-fun thiss!26455 () LexerInterface!6744)

(assert (=> start!388762 (= res!1677305 (is-Lexer!6742 thiss!26455))))

(assert (=> start!388762 e!2546104))

(assert (=> start!388762 true))

(declare-fun e!2546099 () Bool)

(assert (=> start!388762 e!2546099))

(declare-fun e!2546103 () Bool)

(assert (=> start!388762 e!2546103))

(assert (=> start!388762 e!2546101))

(declare-fun b!4102813 () Bool)

(assert (=> b!4102813 (= e!2546104 e!2546095)))

(declare-fun res!1677304 () Bool)

(assert (=> b!4102813 (=> (not res!1677304) (not e!2546095))))

(declare-fun lt!1467203 () List!44224)

(declare-fun rulesInvariant!6087 (LexerInterface!6744 List!44224) Bool)

(assert (=> b!4102813 (= res!1677304 (rulesInvariant!6087 thiss!26455 lt!1467203))))

(assert (=> b!4102813 (= lt!1467203 (Cons!44100 rHead!24 rTail!27))))

(declare-fun b!4102814 () Bool)

(declare-fun e!2546096 () Bool)

(assert (=> b!4102814 (= e!2546095 (not e!2546096))))

(declare-fun res!1677309 () Bool)

(assert (=> b!4102814 (=> res!1677309 e!2546096)))

(declare-fun isEmpty!26364 (List!44224) Bool)

(assert (=> b!4102814 (= res!1677309 (not (isEmpty!26364 (t!339881 rTail!27))))))

(assert (=> b!4102814 (not (= (tag!8015 rHead!24) (tag!8015 (h!49520 rTail!27))))))

(declare-datatypes ((Unit!63606 0))(
  ( (Unit!63607) )
))
(declare-fun lt!1467202 () Unit!63606)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!31 (LexerInterface!6744 List!44224 Rule!14110 Rule!14110) Unit!63606)

(assert (=> b!4102814 (= lt!1467202 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!31 thiss!26455 lt!1467203 rHead!24 (h!49520 rTail!27)))))

(declare-datatypes ((List!44225 0))(
  ( (Nil!44101) (Cons!44101 (h!49521 String!50677) (t!339882 List!44225)) )
))
(declare-fun noDuplicateTag!2834 (LexerInterface!6744 List!44224 List!44225) Bool)

(assert (=> b!4102814 (noDuplicateTag!2834 thiss!26455 (Cons!44100 (h!49520 rTail!27) (Cons!44100 rHead!24 (t!339881 rTail!27))) Nil!44101)))

(declare-fun lt!1467205 () Unit!63606)

(declare-fun lemmaNoDuplicateCanReorder!33 (LexerInterface!6744 Rule!14110 Rule!14110 List!44224) Unit!63606)

(assert (=> b!4102814 (= lt!1467205 (lemmaNoDuplicateCanReorder!33 thiss!26455 rHead!24 (h!49520 rTail!27) (t!339881 rTail!27)))))

(declare-fun e!2546093 () Bool)

(assert (=> b!4102815 (= e!2546093 (and tp!1243032 tp!1243028))))

(declare-fun b!4102816 () Bool)

(declare-fun e!2546102 () Bool)

(declare-fun tp!1243033 () Bool)

(assert (=> b!4102816 (= e!2546099 (and e!2546102 tp!1243033))))

(declare-fun b!4102817 () Bool)

(assert (=> b!4102817 (= e!2546096 e!2546098)))

(declare-fun res!1677307 () Bool)

(assert (=> b!4102817 (=> res!1677307 e!2546098)))

(declare-fun isEmpty!26365 (Option!9547) Bool)

(assert (=> b!4102817 (= res!1677307 (isEmpty!26365 lt!1467204))))

(declare-fun input!3491 () List!44223)

(declare-fun maxPrefix!4020 (LexerInterface!6744 List!44224 List!44223) Option!9547)

(assert (=> b!4102817 (= lt!1467204 (maxPrefix!4020 thiss!26455 rTail!27 input!3491))))

(declare-fun b!4102818 () Bool)

(declare-fun tp_is_empty!21099 () Bool)

(declare-fun tp!1243031 () Bool)

(assert (=> b!4102818 (= e!2546103 (and tp_is_empty!21099 tp!1243031))))

(declare-fun b!4102819 () Bool)

(declare-fun res!1677308 () Bool)

(assert (=> b!4102819 (=> (not res!1677308) (not e!2546104))))

(assert (=> b!4102819 (= res!1677308 (not (isEmpty!26364 rTail!27)))))

(declare-fun tp!1243029 () Bool)

(declare-fun b!4102820 () Bool)

(assert (=> b!4102820 (= e!2546102 (and tp!1243029 (inv!58791 (tag!8015 (h!49520 rTail!27))) (inv!58794 (transformation!7155 (h!49520 rTail!27))) e!2546093))))

(assert (= (and start!388762 res!1677305) b!4102819))

(assert (= (and b!4102819 res!1677308) b!4102813))

(assert (= (and b!4102813 res!1677304) b!4102812))

(assert (= (and b!4102812 res!1677306) b!4102814))

(assert (= (and b!4102814 (not res!1677309)) b!4102817))

(assert (= (and b!4102817 (not res!1677307)) b!4102809))

(assert (= b!4102820 b!4102815))

(assert (= b!4102816 b!4102820))

(assert (= (and start!388762 (is-Cons!44100 rTail!27)) b!4102816))

(assert (= (and start!388762 (is-Cons!44099 input!3491)) b!4102818))

(assert (= b!4102810 b!4102811))

(assert (= start!388762 b!4102810))

(declare-fun m!4708881 () Bool)

(assert (=> b!4102814 m!4708881))

(declare-fun m!4708883 () Bool)

(assert (=> b!4102814 m!4708883))

(declare-fun m!4708885 () Bool)

(assert (=> b!4102814 m!4708885))

(declare-fun m!4708887 () Bool)

(assert (=> b!4102814 m!4708887))

(declare-fun m!4708889 () Bool)

(assert (=> b!4102819 m!4708889))

(declare-fun m!4708891 () Bool)

(assert (=> b!4102813 m!4708891))

(declare-fun m!4708893 () Bool)

(assert (=> b!4102820 m!4708893))

(declare-fun m!4708895 () Bool)

(assert (=> b!4102820 m!4708895))

(declare-fun m!4708897 () Bool)

(assert (=> b!4102810 m!4708897))

(declare-fun m!4708899 () Bool)

(assert (=> b!4102810 m!4708899))

(declare-fun m!4708901 () Bool)

(assert (=> b!4102809 m!4708901))

(declare-fun m!4708903 () Bool)

(assert (=> b!4102817 m!4708903))

(declare-fun m!4708905 () Bool)

(assert (=> b!4102817 m!4708905))

(push 1)

(assert (not b_next!115725))

(assert (not b!4102813))

(assert b_and!316831)

(assert (not b!4102816))

(assert (not b!4102810))

(assert (not b_next!115721))

(assert b_and!316833)

(assert (not b!4102809))

(assert (not b!4102814))

(assert tp_is_empty!21099)

(assert (not b!4102818))

(assert (not b!4102817))

(assert (not b_next!115723))

(assert (not b_next!115727))

(assert b_and!316837)

(assert (not b!4102819))

(assert (not b!4102820))

(assert b_and!316835)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!115725))

(assert b_and!316831)

(assert (not b_next!115721))

(assert b_and!316837)

(assert b_and!316833)

(assert b_and!316835)

(assert (not b_next!115723))

(assert (not b_next!115727))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1217947 () Bool)

(assert (=> d!1217947 (= (isEmpty!26364 (t!339881 rTail!27)) (is-Nil!44100 (t!339881 rTail!27)))))

(assert (=> b!4102814 d!1217947))

(declare-fun d!1217951 () Bool)

(assert (=> d!1217951 (not (= (tag!8015 rHead!24) (tag!8015 (h!49520 rTail!27))))))

(declare-fun lt!1467220 () Unit!63606)

(declare-fun choose!25081 (LexerInterface!6744 List!44224 Rule!14110 Rule!14110) Unit!63606)

(assert (=> d!1217951 (= lt!1467220 (choose!25081 thiss!26455 lt!1467203 rHead!24 (h!49520 rTail!27)))))

(declare-fun contains!8829 (List!44224 Rule!14110) Bool)

(assert (=> d!1217951 (contains!8829 lt!1467203 rHead!24)))

(assert (=> d!1217951 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!31 thiss!26455 lt!1467203 rHead!24 (h!49520 rTail!27)) lt!1467220)))

(declare-fun bs!593954 () Bool)

(assert (= bs!593954 d!1217951))

(declare-fun m!4708937 () Bool)

(assert (=> bs!593954 m!4708937))

(declare-fun m!4708939 () Bool)

(assert (=> bs!593954 m!4708939))

(assert (=> b!4102814 d!1217951))

(declare-fun d!1217955 () Bool)

(declare-fun res!1677344 () Bool)

(declare-fun e!2546150 () Bool)

(assert (=> d!1217955 (=> res!1677344 e!2546150)))

(assert (=> d!1217955 (= res!1677344 (is-Nil!44100 (Cons!44100 (h!49520 rTail!27) (Cons!44100 rHead!24 (t!339881 rTail!27)))))))

(assert (=> d!1217955 (= (noDuplicateTag!2834 thiss!26455 (Cons!44100 (h!49520 rTail!27) (Cons!44100 rHead!24 (t!339881 rTail!27))) Nil!44101) e!2546150)))

(declare-fun b!4102866 () Bool)

(declare-fun e!2546151 () Bool)

(assert (=> b!4102866 (= e!2546150 e!2546151)))

(declare-fun res!1677345 () Bool)

(assert (=> b!4102866 (=> (not res!1677345) (not e!2546151))))

(declare-fun contains!8830 (List!44225 String!50677) Bool)

(assert (=> b!4102866 (= res!1677345 (not (contains!8830 Nil!44101 (tag!8015 (h!49520 (Cons!44100 (h!49520 rTail!27) (Cons!44100 rHead!24 (t!339881 rTail!27))))))))))

(declare-fun b!4102867 () Bool)

(assert (=> b!4102867 (= e!2546151 (noDuplicateTag!2834 thiss!26455 (t!339881 (Cons!44100 (h!49520 rTail!27) (Cons!44100 rHead!24 (t!339881 rTail!27)))) (Cons!44101 (tag!8015 (h!49520 (Cons!44100 (h!49520 rTail!27) (Cons!44100 rHead!24 (t!339881 rTail!27))))) Nil!44101)))))

(assert (= (and d!1217955 (not res!1677344)) b!4102866))

(assert (= (and b!4102866 res!1677345) b!4102867))

(declare-fun m!4708941 () Bool)

(assert (=> b!4102866 m!4708941))

(declare-fun m!4708943 () Bool)

(assert (=> b!4102867 m!4708943))

(assert (=> b!4102814 d!1217955))

(declare-fun d!1217959 () Bool)

(assert (=> d!1217959 (noDuplicateTag!2834 thiss!26455 (Cons!44100 (h!49520 rTail!27) (Cons!44100 rHead!24 (t!339881 rTail!27))) Nil!44101)))

(declare-fun lt!1467225 () Unit!63606)

(declare-fun choose!25082 (LexerInterface!6744 Rule!14110 Rule!14110 List!44224) Unit!63606)

(assert (=> d!1217959 (= lt!1467225 (choose!25082 thiss!26455 rHead!24 (h!49520 rTail!27) (t!339881 rTail!27)))))

(assert (=> d!1217959 (noDuplicateTag!2834 thiss!26455 (Cons!44100 rHead!24 (Cons!44100 (h!49520 rTail!27) (t!339881 rTail!27))) Nil!44101)))

(assert (=> d!1217959 (= (lemmaNoDuplicateCanReorder!33 thiss!26455 rHead!24 (h!49520 rTail!27) (t!339881 rTail!27)) lt!1467225)))

(declare-fun bs!593955 () Bool)

(assert (= bs!593955 d!1217959))

(assert (=> bs!593955 m!4708885))

(declare-fun m!4708953 () Bool)

(assert (=> bs!593955 m!4708953))

(declare-fun m!4708955 () Bool)

(assert (=> bs!593955 m!4708955))

(assert (=> b!4102814 d!1217959))

(declare-fun d!1217971 () Bool)

(assert (=> d!1217971 (= (isDefined!7213 lt!1467204) (not (isEmpty!26365 lt!1467204)))))

(declare-fun bs!593957 () Bool)

(assert (= bs!593957 d!1217971))

(assert (=> bs!593957 m!4708903))

(assert (=> b!4102809 d!1217971))

(declare-fun d!1217975 () Bool)

(assert (=> d!1217975 (= (isEmpty!26364 rTail!27) (is-Nil!44100 rTail!27))))

(assert (=> b!4102819 d!1217975))

(declare-fun d!1217977 () Bool)

(assert (=> d!1217977 (= (inv!58791 (tag!8015 rHead!24)) (= (mod (str.len (value!224556 (tag!8015 rHead!24))) 2) 0))))

(assert (=> b!4102810 d!1217977))

(declare-fun d!1217979 () Bool)

(declare-fun res!1677356 () Bool)

(declare-fun e!2546162 () Bool)

(assert (=> d!1217979 (=> (not res!1677356) (not e!2546162))))

(declare-fun semiInverseModEq!3074 (Int Int) Bool)

(assert (=> d!1217979 (= res!1677356 (semiInverseModEq!3074 (toChars!9626 (transformation!7155 rHead!24)) (toValue!9767 (transformation!7155 rHead!24))))))

(assert (=> d!1217979 (= (inv!58794 (transformation!7155 rHead!24)) e!2546162)))

(declare-fun b!4102878 () Bool)

(declare-fun equivClasses!2973 (Int Int) Bool)

(assert (=> b!4102878 (= e!2546162 (equivClasses!2973 (toChars!9626 (transformation!7155 rHead!24)) (toValue!9767 (transformation!7155 rHead!24))))))

(assert (= (and d!1217979 res!1677356) b!4102878))

(declare-fun m!4708965 () Bool)

(assert (=> d!1217979 m!4708965))

(declare-fun m!4708967 () Bool)

(assert (=> b!4102878 m!4708967))

(assert (=> b!4102810 d!1217979))

(declare-fun d!1217983 () Bool)

(assert (=> d!1217983 (= (inv!58791 (tag!8015 (h!49520 rTail!27))) (= (mod (str.len (value!224556 (tag!8015 (h!49520 rTail!27)))) 2) 0))))

(assert (=> b!4102820 d!1217983))

(declare-fun d!1217985 () Bool)

(declare-fun res!1677357 () Bool)

(declare-fun e!2546163 () Bool)

(assert (=> d!1217985 (=> (not res!1677357) (not e!2546163))))

(assert (=> d!1217985 (= res!1677357 (semiInverseModEq!3074 (toChars!9626 (transformation!7155 (h!49520 rTail!27))) (toValue!9767 (transformation!7155 (h!49520 rTail!27)))))))

(assert (=> d!1217985 (= (inv!58794 (transformation!7155 (h!49520 rTail!27))) e!2546163)))

(declare-fun b!4102879 () Bool)

(assert (=> b!4102879 (= e!2546163 (equivClasses!2973 (toChars!9626 (transformation!7155 (h!49520 rTail!27))) (toValue!9767 (transformation!7155 (h!49520 rTail!27)))))))

(assert (= (and d!1217985 res!1677357) b!4102879))

(declare-fun m!4708969 () Bool)

(assert (=> d!1217985 m!4708969))

(declare-fun m!4708971 () Bool)

(assert (=> b!4102879 m!4708971))

(assert (=> b!4102820 d!1217985))

(declare-fun d!1217987 () Bool)

(assert (=> d!1217987 (= (isEmpty!26365 lt!1467204) (not (is-Some!9546 lt!1467204)))))

(assert (=> b!4102817 d!1217987))

(declare-fun d!1217989 () Bool)

(declare-fun e!2546172 () Bool)

(assert (=> d!1217989 e!2546172))

(declare-fun res!1677374 () Bool)

(assert (=> d!1217989 (=> res!1677374 e!2546172)))

(declare-fun lt!1467244 () Option!9547)

(assert (=> d!1217989 (= res!1677374 (isEmpty!26365 lt!1467244))))

(declare-fun e!2546170 () Option!9547)

(assert (=> d!1217989 (= lt!1467244 e!2546170)))

(declare-fun c!706570 () Bool)

(assert (=> d!1217989 (= c!706570 (and (is-Cons!44100 rTail!27) (is-Nil!44100 (t!339881 rTail!27))))))

(declare-fun lt!1467243 () Unit!63606)

(declare-fun lt!1467242 () Unit!63606)

(assert (=> d!1217989 (= lt!1467243 lt!1467242)))

(declare-fun isPrefix!4164 (List!44223 List!44223) Bool)

(assert (=> d!1217989 (isPrefix!4164 input!3491 input!3491)))

(declare-fun lemmaIsPrefixRefl!2715 (List!44223 List!44223) Unit!63606)

(assert (=> d!1217989 (= lt!1467242 (lemmaIsPrefixRefl!2715 input!3491 input!3491))))

(declare-fun rulesValidInductive!2656 (LexerInterface!6744 List!44224) Bool)

(assert (=> d!1217989 (rulesValidInductive!2656 thiss!26455 rTail!27)))

(assert (=> d!1217989 (= (maxPrefix!4020 thiss!26455 rTail!27 input!3491) lt!1467244)))

(declare-fun b!4102898 () Bool)

(declare-fun res!1677378 () Bool)

(declare-fun e!2546171 () Bool)

(assert (=> b!4102898 (=> (not res!1677378) (not e!2546171))))

(declare-fun size!32878 (List!44223) Int)

(declare-fun get!14453 (Option!9547) tuple2!42926)

(assert (=> b!4102898 (= res!1677378 (< (size!32878 (_2!24597 (get!14453 lt!1467244))) (size!32878 input!3491)))))

(declare-fun b!4102899 () Bool)

(declare-fun call!289807 () Option!9547)

(assert (=> b!4102899 (= e!2546170 call!289807)))

(declare-fun b!4102900 () Bool)

(assert (=> b!4102900 (= e!2546171 (contains!8829 rTail!27 (rule!10299 (_1!24597 (get!14453 lt!1467244)))))))

(declare-fun b!4102901 () Bool)

(declare-fun res!1677372 () Bool)

(assert (=> b!4102901 (=> (not res!1677372) (not e!2546171))))

(declare-fun ++!11535 (List!44223 List!44223) List!44223)

(declare-fun list!16319 (BalanceConc!26326) List!44223)

(declare-fun charsOf!4879 (Token!13408) BalanceConc!26326)

(assert (=> b!4102901 (= res!1677372 (= (++!11535 (list!16319 (charsOf!4879 (_1!24597 (get!14453 lt!1467244)))) (_2!24597 (get!14453 lt!1467244))) input!3491))))

(declare-fun b!4102902 () Bool)

(declare-fun res!1677373 () Bool)

(assert (=> b!4102902 (=> (not res!1677373) (not e!2546171))))

(declare-fun apply!10312 (TokenValueInjection!14198 BalanceConc!26326) TokenValue!7385)

(declare-fun seqFromList!5346 (List!44223) BalanceConc!26326)

(assert (=> b!4102902 (= res!1677373 (= (value!224557 (_1!24597 (get!14453 lt!1467244))) (apply!10312 (transformation!7155 (rule!10299 (_1!24597 (get!14453 lt!1467244)))) (seqFromList!5346 (originalCharacters!7735 (_1!24597 (get!14453 lt!1467244)))))))))

(declare-fun b!4102903 () Bool)

(assert (=> b!4102903 (= e!2546172 e!2546171)))

(declare-fun res!1677376 () Bool)

(assert (=> b!4102903 (=> (not res!1677376) (not e!2546171))))

(assert (=> b!4102903 (= res!1677376 (isDefined!7213 lt!1467244))))

(declare-fun b!4102904 () Bool)

(declare-fun res!1677375 () Bool)

(assert (=> b!4102904 (=> (not res!1677375) (not e!2546171))))

(declare-fun matchR!5975 (Regex!12060 List!44223) Bool)

(assert (=> b!4102904 (= res!1677375 (matchR!5975 (regex!7155 (rule!10299 (_1!24597 (get!14453 lt!1467244)))) (list!16319 (charsOf!4879 (_1!24597 (get!14453 lt!1467244))))))))

(declare-fun b!4102905 () Bool)

(declare-fun lt!1467241 () Option!9547)

(declare-fun lt!1467240 () Option!9547)

(assert (=> b!4102905 (= e!2546170 (ite (and (is-None!9546 lt!1467241) (is-None!9546 lt!1467240)) None!9546 (ite (is-None!9546 lt!1467240) lt!1467241 (ite (is-None!9546 lt!1467241) lt!1467240 (ite (>= (size!32876 (_1!24597 (v!40058 lt!1467241))) (size!32876 (_1!24597 (v!40058 lt!1467240)))) lt!1467241 lt!1467240)))))))

(assert (=> b!4102905 (= lt!1467241 call!289807)))

(assert (=> b!4102905 (= lt!1467240 (maxPrefix!4020 thiss!26455 (t!339881 rTail!27) input!3491))))

(declare-fun bm!289802 () Bool)

(declare-fun maxPrefixOneRule!2986 (LexerInterface!6744 Rule!14110 List!44223) Option!9547)

(assert (=> bm!289802 (= call!289807 (maxPrefixOneRule!2986 thiss!26455 (h!49520 rTail!27) input!3491))))

(declare-fun b!4102906 () Bool)

(declare-fun res!1677377 () Bool)

(assert (=> b!4102906 (=> (not res!1677377) (not e!2546171))))

(assert (=> b!4102906 (= res!1677377 (= (list!16319 (charsOf!4879 (_1!24597 (get!14453 lt!1467244)))) (originalCharacters!7735 (_1!24597 (get!14453 lt!1467244)))))))

(assert (= (and d!1217989 c!706570) b!4102899))

(assert (= (and d!1217989 (not c!706570)) b!4102905))

(assert (= (or b!4102899 b!4102905) bm!289802))

(assert (= (and d!1217989 (not res!1677374)) b!4102903))

(assert (= (and b!4102903 res!1677376) b!4102906))

(assert (= (and b!4102906 res!1677377) b!4102898))

(assert (= (and b!4102898 res!1677378) b!4102901))

(assert (= (and b!4102901 res!1677372) b!4102902))

(assert (= (and b!4102902 res!1677373) b!4102904))

(assert (= (and b!4102904 res!1677375) b!4102900))

(declare-fun m!4708977 () Bool)

(assert (=> d!1217989 m!4708977))

(declare-fun m!4708979 () Bool)

(assert (=> d!1217989 m!4708979))

(declare-fun m!4708981 () Bool)

(assert (=> d!1217989 m!4708981))

(declare-fun m!4708983 () Bool)

(assert (=> d!1217989 m!4708983))

(declare-fun m!4708985 () Bool)

(assert (=> b!4102903 m!4708985))

(declare-fun m!4708987 () Bool)

(assert (=> b!4102906 m!4708987))

(declare-fun m!4708989 () Bool)

(assert (=> b!4102906 m!4708989))

(assert (=> b!4102906 m!4708989))

(declare-fun m!4708991 () Bool)

(assert (=> b!4102906 m!4708991))

(assert (=> b!4102900 m!4708987))

(declare-fun m!4708993 () Bool)

(assert (=> b!4102900 m!4708993))

(assert (=> b!4102904 m!4708987))

(assert (=> b!4102904 m!4708989))

(assert (=> b!4102904 m!4708989))

(assert (=> b!4102904 m!4708991))

(assert (=> b!4102904 m!4708991))

(declare-fun m!4708995 () Bool)

(assert (=> b!4102904 m!4708995))

(assert (=> b!4102898 m!4708987))

(declare-fun m!4708997 () Bool)

(assert (=> b!4102898 m!4708997))

(declare-fun m!4708999 () Bool)

(assert (=> b!4102898 m!4708999))

(declare-fun m!4709001 () Bool)

(assert (=> b!4102905 m!4709001))

(assert (=> b!4102901 m!4708987))

(assert (=> b!4102901 m!4708989))

(assert (=> b!4102901 m!4708989))

(assert (=> b!4102901 m!4708991))

(assert (=> b!4102901 m!4708991))

(declare-fun m!4709003 () Bool)

(assert (=> b!4102901 m!4709003))

(assert (=> b!4102902 m!4708987))

(declare-fun m!4709005 () Bool)

(assert (=> b!4102902 m!4709005))

(assert (=> b!4102902 m!4709005))

(declare-fun m!4709007 () Bool)

(assert (=> b!4102902 m!4709007))

(declare-fun m!4709009 () Bool)

(assert (=> bm!289802 m!4709009))

(assert (=> b!4102817 d!1217989))

(declare-fun d!1217995 () Bool)

(declare-fun res!1677395 () Bool)

(declare-fun e!2546181 () Bool)

(assert (=> d!1217995 (=> (not res!1677395) (not e!2546181))))

(declare-fun rulesValid!2810 (LexerInterface!6744 List!44224) Bool)

(assert (=> d!1217995 (= res!1677395 (rulesValid!2810 thiss!26455 lt!1467203))))

(assert (=> d!1217995 (= (rulesInvariant!6087 thiss!26455 lt!1467203) e!2546181)))

(declare-fun b!4102927 () Bool)

(assert (=> b!4102927 (= e!2546181 (noDuplicateTag!2834 thiss!26455 lt!1467203 Nil!44101))))

(assert (= (and d!1217995 res!1677395) b!4102927))

(declare-fun m!4709011 () Bool)

(assert (=> d!1217995 m!4709011))

(declare-fun m!4709013 () Bool)

(assert (=> b!4102927 m!4709013))

(assert (=> b!4102813 d!1217995))

(declare-fun b!4102939 () Bool)

(declare-fun e!2546184 () Bool)

(declare-fun tp!1243071 () Bool)

(declare-fun tp!1243069 () Bool)

(assert (=> b!4102939 (= e!2546184 (and tp!1243071 tp!1243069))))

(declare-fun b!4102938 () Bool)

(assert (=> b!4102938 (= e!2546184 tp_is_empty!21099)))

(declare-fun b!4102940 () Bool)

(declare-fun tp!1243070 () Bool)

(assert (=> b!4102940 (= e!2546184 tp!1243070)))

(assert (=> b!4102810 (= tp!1243034 e!2546184)))

(declare-fun b!4102941 () Bool)

(declare-fun tp!1243073 () Bool)

(declare-fun tp!1243072 () Bool)

(assert (=> b!4102941 (= e!2546184 (and tp!1243073 tp!1243072))))

(assert (= (and b!4102810 (is-ElementMatch!12060 (regex!7155 rHead!24))) b!4102938))

(assert (= (and b!4102810 (is-Concat!19446 (regex!7155 rHead!24))) b!4102939))

(assert (= (and b!4102810 (is-Star!12060 (regex!7155 rHead!24))) b!4102940))

(assert (= (and b!4102810 (is-Union!12060 (regex!7155 rHead!24))) b!4102941))

(declare-fun b!4102943 () Bool)

(declare-fun e!2546185 () Bool)

(declare-fun tp!1243076 () Bool)

(declare-fun tp!1243074 () Bool)

(assert (=> b!4102943 (= e!2546185 (and tp!1243076 tp!1243074))))

(declare-fun b!4102942 () Bool)

(assert (=> b!4102942 (= e!2546185 tp_is_empty!21099)))

(declare-fun b!4102944 () Bool)

(declare-fun tp!1243075 () Bool)

(assert (=> b!4102944 (= e!2546185 tp!1243075)))

(assert (=> b!4102820 (= tp!1243029 e!2546185)))

(declare-fun b!4102945 () Bool)

(declare-fun tp!1243078 () Bool)

(declare-fun tp!1243077 () Bool)

(assert (=> b!4102945 (= e!2546185 (and tp!1243078 tp!1243077))))

(assert (= (and b!4102820 (is-ElementMatch!12060 (regex!7155 (h!49520 rTail!27)))) b!4102942))

(assert (= (and b!4102820 (is-Concat!19446 (regex!7155 (h!49520 rTail!27)))) b!4102943))

(assert (= (and b!4102820 (is-Star!12060 (regex!7155 (h!49520 rTail!27)))) b!4102944))

(assert (= (and b!4102820 (is-Union!12060 (regex!7155 (h!49520 rTail!27)))) b!4102945))

(declare-fun b!4102956 () Bool)

(declare-fun b_free!115033 () Bool)

(declare-fun b_next!115737 () Bool)

(assert (=> b!4102956 (= b_free!115033 (not b_next!115737))))

(declare-fun tp!1243090 () Bool)

(declare-fun b_and!316847 () Bool)

(assert (=> b!4102956 (= tp!1243090 b_and!316847)))

(declare-fun b_free!115035 () Bool)

(declare-fun b_next!115739 () Bool)

(assert (=> b!4102956 (= b_free!115035 (not b_next!115739))))

(declare-fun tp!1243089 () Bool)

(declare-fun b_and!316849 () Bool)

(assert (=> b!4102956 (= tp!1243089 b_and!316849)))

(declare-fun e!2546197 () Bool)

(assert (=> b!4102956 (= e!2546197 (and tp!1243090 tp!1243089))))

(declare-fun e!2546195 () Bool)

(declare-fun tp!1243087 () Bool)

(declare-fun b!4102955 () Bool)

(assert (=> b!4102955 (= e!2546195 (and tp!1243087 (inv!58791 (tag!8015 (h!49520 (t!339881 rTail!27)))) (inv!58794 (transformation!7155 (h!49520 (t!339881 rTail!27)))) e!2546197))))

(declare-fun b!4102954 () Bool)

(declare-fun e!2546196 () Bool)

(declare-fun tp!1243088 () Bool)

(assert (=> b!4102954 (= e!2546196 (and e!2546195 tp!1243088))))

(assert (=> b!4102816 (= tp!1243033 e!2546196)))

(assert (= b!4102955 b!4102956))

(assert (= b!4102954 b!4102955))

(assert (= (and b!4102816 (is-Cons!44100 (t!339881 rTail!27))) b!4102954))

(declare-fun m!4709015 () Bool)

(assert (=> b!4102955 m!4709015))

(declare-fun m!4709017 () Bool)

(assert (=> b!4102955 m!4709017))

(declare-fun b!4102961 () Bool)

(declare-fun e!2546200 () Bool)

(declare-fun tp!1243093 () Bool)

(assert (=> b!4102961 (= e!2546200 (and tp_is_empty!21099 tp!1243093))))

(assert (=> b!4102818 (= tp!1243031 e!2546200)))

(assert (= (and b!4102818 (is-Cons!44099 (t!339880 input!3491))) b!4102961))

(push 1)

(assert (not b!4102961))

(assert b_and!316833)

(assert (not d!1217989))

(assert (not b!4102904))

(assert tp_is_empty!21099)

(assert (not b!4102867))

(assert b_and!316849)

(assert (not bm!289802))

(assert (not b!4102901))

(assert (not b_next!115725))

(assert (not b!4102955))

(assert b_and!316831)

(assert (not b!4102898))

(assert (not b!4102878))

(assert (not d!1217971))

(assert (not d!1217995))

(assert (not b!4102944))

(assert (not b_next!115723))

(assert (not b!4102903))

(assert (not b_next!115727))

(assert b_and!316847)

(assert (not b!4102879))

(assert (not b_next!115737))

(assert (not b!4102945))

(assert (not d!1217979))

(assert (not b!4102940))

(assert (not b_next!115721))

(assert (not b!4102905))

(assert b_and!316837)

(assert (not b!4102941))

(assert (not b!4102906))

(assert (not b!4102902))

(assert (not b!4102900))

(assert (not d!1217959))

(assert (not b_next!115739))

(assert (not b!4102866))

(assert (not b!4102943))

(assert (not d!1217951))

(assert (not b!4102954))

(assert (not b!4102939))

(assert b_and!316835)

(assert (not b!4102927))

(assert (not d!1217985))

(check-sat)

(pop 1)

(push 1)

(assert b_and!316849)

(assert (not b_next!115725))

(assert b_and!316831)

(assert b_and!316847)

(assert (not b_next!115737))

(assert (not b_next!115721))

(assert b_and!316837)

(assert b_and!316833)

(assert (not b_next!115739))

(assert b_and!316835)

(assert (not b_next!115723))

(assert (not b_next!115727))

(check-sat)

(pop 1)

