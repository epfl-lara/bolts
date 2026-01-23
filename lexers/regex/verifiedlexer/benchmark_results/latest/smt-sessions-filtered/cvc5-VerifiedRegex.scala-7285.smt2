; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!388554 () Bool)

(assert start!388554)

(declare-fun b!4101154 () Bool)

(declare-fun b_free!114865 () Bool)

(declare-fun b_next!115569 () Bool)

(assert (=> b!4101154 (= b_free!114865 (not b_next!115569))))

(declare-fun tp!1241820 () Bool)

(declare-fun b_and!316679 () Bool)

(assert (=> b!4101154 (= tp!1241820 b_and!316679)))

(declare-fun b_free!114867 () Bool)

(declare-fun b_next!115571 () Bool)

(assert (=> b!4101154 (= b_free!114867 (not b_next!115571))))

(declare-fun tp!1241819 () Bool)

(declare-fun b_and!316681 () Bool)

(assert (=> b!4101154 (= tp!1241819 b_and!316681)))

(declare-fun b!4101166 () Bool)

(declare-fun b_free!114869 () Bool)

(declare-fun b_next!115573 () Bool)

(assert (=> b!4101166 (= b_free!114869 (not b_next!115573))))

(declare-fun tp!1241826 () Bool)

(declare-fun b_and!316683 () Bool)

(assert (=> b!4101166 (= tp!1241826 b_and!316683)))

(declare-fun b_free!114871 () Bool)

(declare-fun b_next!115575 () Bool)

(assert (=> b!4101166 (= b_free!114871 (not b_next!115575))))

(declare-fun tp!1241823 () Bool)

(declare-fun b_and!316685 () Bool)

(assert (=> b!4101166 (= tp!1241823 b_and!316685)))

(declare-fun b!4101153 () Bool)

(declare-fun e!2545066 () Bool)

(declare-datatypes ((List!44166 0))(
  ( (Nil!44042) (Cons!44042 (h!49462 (_ BitVec 16)) (t!339823 List!44166)) )
))
(declare-datatypes ((TokenValue!7371 0))(
  ( (FloatLiteralValue!14742 (text!52042 List!44166)) (TokenValueExt!7370 (__x!26959 Int)) (Broken!36855 (value!224138 List!44166)) (Object!7494) (End!7371) (Def!7371) (Underscore!7371) (Match!7371) (Else!7371) (Error!7371) (Case!7371) (If!7371) (Extends!7371) (Abstract!7371) (Class!7371) (Val!7371) (DelimiterValue!14742 (del!7431 List!44166)) (KeywordValue!7377 (value!224139 List!44166)) (CommentValue!14742 (value!224140 List!44166)) (WhitespaceValue!14742 (value!224141 List!44166)) (IndentationValue!7371 (value!224142 List!44166)) (String!50606) (Int32!7371) (Broken!36856 (value!224143 List!44166)) (Boolean!7372) (Unit!63563) (OperatorValue!7374 (op!7431 List!44166)) (IdentifierValue!14742 (value!224144 List!44166)) (IdentifierValue!14743 (value!224145 List!44166)) (WhitespaceValue!14743 (value!224146 List!44166)) (True!14742) (False!14742) (Broken!36857 (value!224147 List!44166)) (Broken!36858 (value!224148 List!44166)) (True!14743) (RightBrace!7371) (RightBracket!7371) (Colon!7371) (Null!7371) (Comma!7371) (LeftBracket!7371) (False!14743) (LeftBrace!7371) (ImaginaryLiteralValue!7371 (text!52043 List!44166)) (StringLiteralValue!22113 (value!224149 List!44166)) (EOFValue!7371 (value!224150 List!44166)) (IdentValue!7371 (value!224151 List!44166)) (DelimiterValue!14743 (value!224152 List!44166)) (DedentValue!7371 (value!224153 List!44166)) (NewLineValue!7371 (value!224154 List!44166)) (IntegerValue!22113 (value!224155 (_ BitVec 32)) (text!52044 List!44166)) (IntegerValue!22114 (value!224156 Int) (text!52045 List!44166)) (Times!7371) (Or!7371) (Equal!7371) (Minus!7371) (Broken!36859 (value!224157 List!44166)) (And!7371) (Div!7371) (LessEqual!7371) (Mod!7371) (Concat!19417) (Not!7371) (Plus!7371) (SpaceValue!7371 (value!224158 List!44166)) (IntegerValue!22115 (value!224159 Int) (text!52046 List!44166)) (StringLiteralValue!22114 (text!52047 List!44166)) (FloatLiteralValue!14743 (text!52048 List!44166)) (BytesLiteralValue!7371 (value!224160 List!44166)) (CommentValue!14743 (value!224161 List!44166)) (StringLiteralValue!22115 (value!224162 List!44166)) (ErrorTokenValue!7371 (msg!7432 List!44166)) )
))
(declare-datatypes ((C!24278 0))(
  ( (C!24279 (val!14249 Int)) )
))
(declare-datatypes ((Regex!12046 0))(
  ( (ElementMatch!12046 (c!706495 C!24278)) (Concat!19418 (regOne!24604 Regex!12046) (regTwo!24604 Regex!12046)) (EmptyExpr!12046) (Star!12046 (reg!12375 Regex!12046)) (EmptyLang!12046) (Union!12046 (regOne!24605 Regex!12046) (regTwo!24605 Regex!12046)) )
))
(declare-datatypes ((String!50607 0))(
  ( (String!50608 (value!224163 String)) )
))
(declare-datatypes ((List!44167 0))(
  ( (Nil!44043) (Cons!44043 (h!49463 C!24278) (t!339824 List!44167)) )
))
(declare-datatypes ((IArray!26709 0))(
  ( (IArray!26710 (innerList!13412 List!44167)) )
))
(declare-datatypes ((Conc!13352 0))(
  ( (Node!13352 (left!33085 Conc!13352) (right!33415 Conc!13352) (csize!26934 Int) (cheight!13563 Int)) (Leaf!20638 (xs!16658 IArray!26709) (csize!26935 Int)) (Empty!13352) )
))
(declare-datatypes ((BalanceConc!26298 0))(
  ( (BalanceConc!26299 (c!706496 Conc!13352)) )
))
(declare-datatypes ((TokenValueInjection!14170 0))(
  ( (TokenValueInjection!14171 (toValue!9749 Int) (toChars!9608 Int)) )
))
(declare-datatypes ((Rule!14082 0))(
  ( (Rule!14083 (regex!7141 Regex!12046) (tag!8001 String!50607) (isSeparator!7141 Bool) (transformation!7141 TokenValueInjection!14170)) )
))
(declare-datatypes ((Token!13392 0))(
  ( (Token!13393 (value!224164 TokenValue!7371) (rule!10291 Rule!14082) (size!32864 Int) (originalCharacters!7727 List!44167)) )
))
(declare-datatypes ((tuple2!42910 0))(
  ( (tuple2!42911 (_1!24589 Token!13392) (_2!24589 List!44167)) )
))
(declare-datatypes ((Option!9539 0))(
  ( (None!9538) (Some!9538 (v!40046 tuple2!42910)) )
))
(declare-fun lt!1466874 () Option!9539)

(declare-fun isDefined!7209 (Option!9539) Bool)

(assert (=> b!4101153 (= e!2545066 (isDefined!7209 lt!1466874))))

(declare-fun e!2545063 () Bool)

(assert (=> b!4101154 (= e!2545063 (and tp!1241820 tp!1241819))))

(declare-fun b!4101155 () Bool)

(declare-fun e!2545064 () Bool)

(declare-datatypes ((List!44168 0))(
  ( (Nil!44044) (Cons!44044 (h!49464 Rule!14082) (t!339825 List!44168)) )
))
(declare-fun rTail!27 () List!44168)

(declare-fun e!2545068 () Bool)

(declare-fun tp!1241824 () Bool)

(declare-fun inv!58756 (String!50607) Bool)

(declare-fun inv!58759 (TokenValueInjection!14170) Bool)

(assert (=> b!4101155 (= e!2545068 (and tp!1241824 (inv!58756 (tag!8001 (h!49464 rTail!27))) (inv!58759 (transformation!7141 (h!49464 rTail!27))) e!2545064))))

(declare-fun res!1676680 () Bool)

(declare-fun e!2545070 () Bool)

(assert (=> start!388554 (=> (not res!1676680) (not e!2545070))))

(declare-datatypes ((LexerInterface!6730 0))(
  ( (LexerInterfaceExt!6727 (__x!26960 Int)) (Lexer!6728) )
))
(declare-fun thiss!26455 () LexerInterface!6730)

(assert (=> start!388554 (= res!1676680 (is-Lexer!6728 thiss!26455))))

(assert (=> start!388554 e!2545070))

(assert (=> start!388554 true))

(declare-fun e!2545076 () Bool)

(assert (=> start!388554 e!2545076))

(declare-fun e!2545067 () Bool)

(assert (=> start!388554 e!2545067))

(declare-fun e!2545069 () Bool)

(assert (=> start!388554 e!2545069))

(declare-fun b!4101156 () Bool)

(declare-fun e!2545065 () Bool)

(declare-fun e!2545071 () Bool)

(assert (=> b!4101156 (= e!2545065 (not e!2545071))))

(declare-fun res!1676679 () Bool)

(assert (=> b!4101156 (=> res!1676679 e!2545071)))

(declare-fun isEmpty!26344 (List!44168) Bool)

(assert (=> b!4101156 (= res!1676679 (isEmpty!26344 (t!339825 rTail!27)))))

(declare-fun rHead!24 () Rule!14082)

(assert (=> b!4101156 (not (= (tag!8001 rHead!24) (tag!8001 (h!49464 rTail!27))))))

(declare-fun lt!1466875 () List!44168)

(declare-datatypes ((Unit!63564 0))(
  ( (Unit!63565) )
))
(declare-fun lt!1466881 () Unit!63564)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!17 (LexerInterface!6730 List!44168 Rule!14082 Rule!14082) Unit!63564)

(assert (=> b!4101156 (= lt!1466881 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!17 thiss!26455 lt!1466875 rHead!24 (h!49464 rTail!27)))))

(declare-fun lt!1466878 () List!44168)

(declare-datatypes ((List!44169 0))(
  ( (Nil!44045) (Cons!44045 (h!49465 String!50607) (t!339826 List!44169)) )
))
(declare-fun noDuplicateTag!2820 (LexerInterface!6730 List!44168 List!44169) Bool)

(assert (=> b!4101156 (noDuplicateTag!2820 thiss!26455 (Cons!44044 (h!49464 rTail!27) lt!1466878) Nil!44045)))

(assert (=> b!4101156 (= lt!1466878 (Cons!44044 rHead!24 (t!339825 rTail!27)))))

(declare-fun lt!1466880 () Unit!63564)

(declare-fun lemmaNoDuplicateCanReorder!19 (LexerInterface!6730 Rule!14082 Rule!14082 List!44168) Unit!63564)

(assert (=> b!4101156 (= lt!1466880 (lemmaNoDuplicateCanReorder!19 thiss!26455 rHead!24 (h!49464 rTail!27) (t!339825 rTail!27)))))

(declare-fun b!4101157 () Bool)

(declare-fun e!2545075 () Bool)

(assert (=> b!4101157 (= e!2545075 e!2545066)))

(declare-fun res!1676674 () Bool)

(assert (=> b!4101157 (=> res!1676674 e!2545066)))

(declare-fun isEmpty!26345 (Option!9539) Bool)

(assert (=> b!4101157 (= res!1676674 (isEmpty!26345 lt!1466874))))

(declare-fun input!3491 () List!44167)

(declare-fun maxPrefix!4012 (LexerInterface!6730 List!44168 List!44167) Option!9539)

(assert (=> b!4101157 (= lt!1466874 (maxPrefix!4012 thiss!26455 rTail!27 input!3491))))

(declare-fun e!2545074 () Bool)

(assert (=> b!4101157 e!2545074))

(declare-fun res!1676676 () Bool)

(assert (=> b!4101157 (=> res!1676676 e!2545074)))

(declare-fun lt!1466879 () Option!9539)

(assert (=> b!4101157 (= res!1676676 (isEmpty!26345 lt!1466879))))

(assert (=> b!4101157 (= lt!1466879 (maxPrefix!4012 thiss!26455 (t!339825 rTail!27) input!3491))))

(declare-fun lt!1466876 () Unit!63564)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!33 (LexerInterface!6730 Rule!14082 List!44168 List!44167) Unit!63564)

(assert (=> b!4101157 (= lt!1466876 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!33 thiss!26455 rHead!24 (t!339825 rTail!27) input!3491))))

(declare-fun b!4101158 () Bool)

(declare-fun tp!1241825 () Bool)

(assert (=> b!4101158 (= e!2545076 (and e!2545068 tp!1241825))))

(declare-fun b!4101159 () Bool)

(assert (=> b!4101159 (= e!2545071 e!2545075)))

(declare-fun res!1676675 () Bool)

(assert (=> b!4101159 (=> res!1676675 e!2545075)))

(declare-fun rulesInvariant!6073 (LexerInterface!6730 List!44168) Bool)

(assert (=> b!4101159 (= res!1676675 (not (rulesInvariant!6073 thiss!26455 lt!1466878)))))

(assert (=> b!4101159 (noDuplicateTag!2820 thiss!26455 lt!1466878 Nil!44045)))

(declare-fun lt!1466877 () Unit!63564)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!15 (LexerInterface!6730 List!44169 List!44169 List!44168) Unit!63564)

(assert (=> b!4101159 (= lt!1466877 (lemmaNoDupTagThenAlsoWithSubListAcc!15 thiss!26455 (Cons!44045 (tag!8001 (h!49464 rTail!27)) Nil!44045) Nil!44045 lt!1466878))))

(declare-fun b!4101160 () Bool)

(declare-fun res!1676677 () Bool)

(assert (=> b!4101160 (=> (not res!1676677) (not e!2545065))))

(assert (=> b!4101160 (= res!1676677 (is-Cons!44044 rTail!27))))

(declare-fun b!4101161 () Bool)

(declare-fun get!14442 (Option!9539) tuple2!42910)

(assert (=> b!4101161 (= e!2545074 (not (= (rule!10291 (_1!24589 (get!14442 lt!1466879))) rHead!24)))))

(declare-fun b!4101162 () Bool)

(declare-fun tp!1241822 () Bool)

(assert (=> b!4101162 (= e!2545069 (and tp!1241822 (inv!58756 (tag!8001 rHead!24)) (inv!58759 (transformation!7141 rHead!24)) e!2545063))))

(declare-fun b!4101163 () Bool)

(declare-fun res!1676678 () Bool)

(assert (=> b!4101163 (=> (not res!1676678) (not e!2545070))))

(assert (=> b!4101163 (= res!1676678 (not (isEmpty!26344 rTail!27)))))

(declare-fun b!4101164 () Bool)

(declare-fun tp_is_empty!21079 () Bool)

(declare-fun tp!1241821 () Bool)

(assert (=> b!4101164 (= e!2545067 (and tp_is_empty!21079 tp!1241821))))

(declare-fun b!4101165 () Bool)

(assert (=> b!4101165 (= e!2545070 e!2545065)))

(declare-fun res!1676681 () Bool)

(assert (=> b!4101165 (=> (not res!1676681) (not e!2545065))))

(assert (=> b!4101165 (= res!1676681 (rulesInvariant!6073 thiss!26455 lt!1466875))))

(assert (=> b!4101165 (= lt!1466875 (Cons!44044 rHead!24 rTail!27))))

(assert (=> b!4101166 (= e!2545064 (and tp!1241826 tp!1241823))))

(assert (= (and start!388554 res!1676680) b!4101163))

(assert (= (and b!4101163 res!1676678) b!4101165))

(assert (= (and b!4101165 res!1676681) b!4101160))

(assert (= (and b!4101160 res!1676677) b!4101156))

(assert (= (and b!4101156 (not res!1676679)) b!4101159))

(assert (= (and b!4101159 (not res!1676675)) b!4101157))

(assert (= (and b!4101157 (not res!1676676)) b!4101161))

(assert (= (and b!4101157 (not res!1676674)) b!4101153))

(assert (= b!4101155 b!4101166))

(assert (= b!4101158 b!4101155))

(assert (= (and start!388554 (is-Cons!44044 rTail!27)) b!4101158))

(assert (= (and start!388554 (is-Cons!44043 input!3491)) b!4101164))

(assert (= b!4101162 b!4101154))

(assert (= start!388554 b!4101162))

(declare-fun m!4707821 () Bool)

(assert (=> b!4101153 m!4707821))

(declare-fun m!4707823 () Bool)

(assert (=> b!4101163 m!4707823))

(declare-fun m!4707825 () Bool)

(assert (=> b!4101157 m!4707825))

(declare-fun m!4707827 () Bool)

(assert (=> b!4101157 m!4707827))

(declare-fun m!4707829 () Bool)

(assert (=> b!4101157 m!4707829))

(declare-fun m!4707831 () Bool)

(assert (=> b!4101157 m!4707831))

(declare-fun m!4707833 () Bool)

(assert (=> b!4101157 m!4707833))

(declare-fun m!4707835 () Bool)

(assert (=> b!4101156 m!4707835))

(declare-fun m!4707837 () Bool)

(assert (=> b!4101156 m!4707837))

(declare-fun m!4707839 () Bool)

(assert (=> b!4101156 m!4707839))

(declare-fun m!4707841 () Bool)

(assert (=> b!4101156 m!4707841))

(declare-fun m!4707843 () Bool)

(assert (=> b!4101161 m!4707843))

(declare-fun m!4707845 () Bool)

(assert (=> b!4101159 m!4707845))

(declare-fun m!4707847 () Bool)

(assert (=> b!4101159 m!4707847))

(declare-fun m!4707849 () Bool)

(assert (=> b!4101159 m!4707849))

(declare-fun m!4707851 () Bool)

(assert (=> b!4101165 m!4707851))

(declare-fun m!4707853 () Bool)

(assert (=> b!4101155 m!4707853))

(declare-fun m!4707855 () Bool)

(assert (=> b!4101155 m!4707855))

(declare-fun m!4707857 () Bool)

(assert (=> b!4101162 m!4707857))

(declare-fun m!4707859 () Bool)

(assert (=> b!4101162 m!4707859))

(push 1)

(assert (not b!4101156))

(assert (not b!4101163))

(assert (not b!4101162))

(assert (not b!4101157))

(assert b_and!316679)

(assert (not b!4101159))

(assert (not b_next!115571))

(assert (not b_next!115575))

(assert (not b!4101164))

(assert (not b!4101153))

(assert b_and!316685)

(assert (not b_next!115569))

(assert (not b!4101161))

(assert (not b!4101165))

(assert (not b!4101158))

(assert tp_is_empty!21079)

(assert b_and!316681)

(assert (not b_next!115573))

(assert b_and!316683)

(assert (not b!4101155))

(check-sat)

(pop 1)

(push 1)

(assert b_and!316679)

(assert (not b_next!115571))

(assert (not b_next!115575))

(assert b_and!316685)

(assert (not b_next!115569))

(assert b_and!316683)

(assert b_and!316681)

(assert (not b_next!115573))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1217574 () Bool)

(assert (=> d!1217574 (= (inv!58756 (tag!8001 (h!49464 rTail!27))) (= (mod (str.len (value!224163 (tag!8001 (h!49464 rTail!27)))) 2) 0))))

(assert (=> b!4101155 d!1217574))

(declare-fun d!1217576 () Bool)

(declare-fun res!1676716 () Bool)

(declare-fun e!2545121 () Bool)

(assert (=> d!1217576 (=> (not res!1676716) (not e!2545121))))

(declare-fun semiInverseModEq!3068 (Int Int) Bool)

(assert (=> d!1217576 (= res!1676716 (semiInverseModEq!3068 (toChars!9608 (transformation!7141 (h!49464 rTail!27))) (toValue!9749 (transformation!7141 (h!49464 rTail!27)))))))

(assert (=> d!1217576 (= (inv!58759 (transformation!7141 (h!49464 rTail!27))) e!2545121)))

(declare-fun b!4101211 () Bool)

(declare-fun equivClasses!2967 (Int Int) Bool)

(assert (=> b!4101211 (= e!2545121 (equivClasses!2967 (toChars!9608 (transformation!7141 (h!49464 rTail!27))) (toValue!9749 (transformation!7141 (h!49464 rTail!27)))))))

(assert (= (and d!1217576 res!1676716) b!4101211))

(declare-fun m!4707901 () Bool)

(assert (=> d!1217576 m!4707901))

(declare-fun m!4707903 () Bool)

(assert (=> b!4101211 m!4707903))

(assert (=> b!4101155 d!1217576))

(declare-fun d!1217578 () Bool)

(assert (=> d!1217578 (= (get!14442 lt!1466879) (v!40046 lt!1466879))))

(assert (=> b!4101161 d!1217578))

(declare-fun d!1217580 () Bool)

(assert (=> d!1217580 (= (isEmpty!26344 (t!339825 rTail!27)) (is-Nil!44044 (t!339825 rTail!27)))))

(assert (=> b!4101156 d!1217580))

(declare-fun d!1217582 () Bool)

(assert (=> d!1217582 (not (= (tag!8001 rHead!24) (tag!8001 (h!49464 rTail!27))))))

(declare-fun lt!1466908 () Unit!63564)

(declare-fun choose!25063 (LexerInterface!6730 List!44168 Rule!14082 Rule!14082) Unit!63564)

(assert (=> d!1217582 (= lt!1466908 (choose!25063 thiss!26455 lt!1466875 rHead!24 (h!49464 rTail!27)))))

(declare-fun contains!8817 (List!44168 Rule!14082) Bool)

(assert (=> d!1217582 (contains!8817 lt!1466875 rHead!24)))

(assert (=> d!1217582 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!17 thiss!26455 lt!1466875 rHead!24 (h!49464 rTail!27)) lt!1466908)))

(declare-fun bs!593857 () Bool)

(assert (= bs!593857 d!1217582))

(declare-fun m!4707905 () Bool)

(assert (=> bs!593857 m!4707905))

(declare-fun m!4707907 () Bool)

(assert (=> bs!593857 m!4707907))

(assert (=> b!4101156 d!1217582))

(declare-fun d!1217586 () Bool)

(declare-fun res!1676724 () Bool)

(declare-fun e!2545129 () Bool)

(assert (=> d!1217586 (=> res!1676724 e!2545129)))

(assert (=> d!1217586 (= res!1676724 (is-Nil!44044 (Cons!44044 (h!49464 rTail!27) lt!1466878)))))

(assert (=> d!1217586 (= (noDuplicateTag!2820 thiss!26455 (Cons!44044 (h!49464 rTail!27) lt!1466878) Nil!44045) e!2545129)))

(declare-fun b!4101219 () Bool)

(declare-fun e!2545130 () Bool)

(assert (=> b!4101219 (= e!2545129 e!2545130)))

(declare-fun res!1676725 () Bool)

(assert (=> b!4101219 (=> (not res!1676725) (not e!2545130))))

(declare-fun contains!8818 (List!44169 String!50607) Bool)

(assert (=> b!4101219 (= res!1676725 (not (contains!8818 Nil!44045 (tag!8001 (h!49464 (Cons!44044 (h!49464 rTail!27) lt!1466878))))))))

(declare-fun b!4101220 () Bool)

(assert (=> b!4101220 (= e!2545130 (noDuplicateTag!2820 thiss!26455 (t!339825 (Cons!44044 (h!49464 rTail!27) lt!1466878)) (Cons!44045 (tag!8001 (h!49464 (Cons!44044 (h!49464 rTail!27) lt!1466878))) Nil!44045)))))

(assert (= (and d!1217586 (not res!1676724)) b!4101219))

(assert (= (and b!4101219 res!1676725) b!4101220))

(declare-fun m!4707911 () Bool)

(assert (=> b!4101219 m!4707911))

(declare-fun m!4707913 () Bool)

(assert (=> b!4101220 m!4707913))

(assert (=> b!4101156 d!1217586))

(declare-fun d!1217590 () Bool)

(assert (=> d!1217590 (noDuplicateTag!2820 thiss!26455 (Cons!44044 (h!49464 rTail!27) (Cons!44044 rHead!24 (t!339825 rTail!27))) Nil!44045)))

(declare-fun lt!1466911 () Unit!63564)

(declare-fun choose!25064 (LexerInterface!6730 Rule!14082 Rule!14082 List!44168) Unit!63564)

(assert (=> d!1217590 (= lt!1466911 (choose!25064 thiss!26455 rHead!24 (h!49464 rTail!27) (t!339825 rTail!27)))))

(assert (=> d!1217590 (noDuplicateTag!2820 thiss!26455 (Cons!44044 rHead!24 (Cons!44044 (h!49464 rTail!27) (t!339825 rTail!27))) Nil!44045)))

(assert (=> d!1217590 (= (lemmaNoDuplicateCanReorder!19 thiss!26455 rHead!24 (h!49464 rTail!27) (t!339825 rTail!27)) lt!1466911)))

(declare-fun bs!593858 () Bool)

(assert (= bs!593858 d!1217590))

(declare-fun m!4707919 () Bool)

(assert (=> bs!593858 m!4707919))

(declare-fun m!4707921 () Bool)

(assert (=> bs!593858 m!4707921))

(declare-fun m!4707923 () Bool)

(assert (=> bs!593858 m!4707923))

(assert (=> b!4101156 d!1217590))

(declare-fun d!1217594 () Bool)

(declare-fun res!1676734 () Bool)

(declare-fun e!2545139 () Bool)

(assert (=> d!1217594 (=> (not res!1676734) (not e!2545139))))

(declare-fun rulesValid!2803 (LexerInterface!6730 List!44168) Bool)

(assert (=> d!1217594 (= res!1676734 (rulesValid!2803 thiss!26455 lt!1466878))))

(assert (=> d!1217594 (= (rulesInvariant!6073 thiss!26455 lt!1466878) e!2545139)))

(declare-fun b!4101229 () Bool)

(assert (=> b!4101229 (= e!2545139 (noDuplicateTag!2820 thiss!26455 lt!1466878 Nil!44045))))

(assert (= (and d!1217594 res!1676734) b!4101229))

(declare-fun m!4707925 () Bool)

(assert (=> d!1217594 m!4707925))

(assert (=> b!4101229 m!4707847))

(assert (=> b!4101159 d!1217594))

(declare-fun d!1217596 () Bool)

(declare-fun res!1676735 () Bool)

(declare-fun e!2545140 () Bool)

(assert (=> d!1217596 (=> res!1676735 e!2545140)))

(assert (=> d!1217596 (= res!1676735 (is-Nil!44044 lt!1466878))))

(assert (=> d!1217596 (= (noDuplicateTag!2820 thiss!26455 lt!1466878 Nil!44045) e!2545140)))

(declare-fun b!4101230 () Bool)

(declare-fun e!2545141 () Bool)

(assert (=> b!4101230 (= e!2545140 e!2545141)))

(declare-fun res!1676736 () Bool)

(assert (=> b!4101230 (=> (not res!1676736) (not e!2545141))))

(assert (=> b!4101230 (= res!1676736 (not (contains!8818 Nil!44045 (tag!8001 (h!49464 lt!1466878)))))))

(declare-fun b!4101231 () Bool)

(assert (=> b!4101231 (= e!2545141 (noDuplicateTag!2820 thiss!26455 (t!339825 lt!1466878) (Cons!44045 (tag!8001 (h!49464 lt!1466878)) Nil!44045)))))

(assert (= (and d!1217596 (not res!1676735)) b!4101230))

(assert (= (and b!4101230 res!1676736) b!4101231))

(declare-fun m!4707927 () Bool)

(assert (=> b!4101230 m!4707927))

(declare-fun m!4707931 () Bool)

(assert (=> b!4101231 m!4707931))

(assert (=> b!4101159 d!1217596))

(declare-fun d!1217598 () Bool)

(assert (=> d!1217598 (noDuplicateTag!2820 thiss!26455 lt!1466878 Nil!44045)))

(declare-fun lt!1466917 () Unit!63564)

(declare-fun choose!25065 (LexerInterface!6730 List!44169 List!44169 List!44168) Unit!63564)

(assert (=> d!1217598 (= lt!1466917 (choose!25065 thiss!26455 (Cons!44045 (tag!8001 (h!49464 rTail!27)) Nil!44045) Nil!44045 lt!1466878))))

(declare-fun subseq!542 (List!44169 List!44169) Bool)

(assert (=> d!1217598 (subseq!542 Nil!44045 (Cons!44045 (tag!8001 (h!49464 rTail!27)) Nil!44045))))

(assert (=> d!1217598 (= (lemmaNoDupTagThenAlsoWithSubListAcc!15 thiss!26455 (Cons!44045 (tag!8001 (h!49464 rTail!27)) Nil!44045) Nil!44045 lt!1466878) lt!1466917)))

(declare-fun bs!593860 () Bool)

(assert (= bs!593860 d!1217598))

(assert (=> bs!593860 m!4707847))

(declare-fun m!4707935 () Bool)

(assert (=> bs!593860 m!4707935))

(declare-fun m!4707937 () Bool)

(assert (=> bs!593860 m!4707937))

(assert (=> b!4101159 d!1217598))

(declare-fun d!1217604 () Bool)

(declare-fun res!1676737 () Bool)

(declare-fun e!2545142 () Bool)

(assert (=> d!1217604 (=> (not res!1676737) (not e!2545142))))

(assert (=> d!1217604 (= res!1676737 (rulesValid!2803 thiss!26455 lt!1466875))))

(assert (=> d!1217604 (= (rulesInvariant!6073 thiss!26455 lt!1466875) e!2545142)))

(declare-fun b!4101232 () Bool)

(assert (=> b!4101232 (= e!2545142 (noDuplicateTag!2820 thiss!26455 lt!1466875 Nil!44045))))

(assert (= (and d!1217604 res!1676737) b!4101232))

(declare-fun m!4707939 () Bool)

(assert (=> d!1217604 m!4707939))

(declare-fun m!4707941 () Bool)

(assert (=> b!4101232 m!4707941))

(assert (=> b!4101165 d!1217604))

(declare-fun d!1217606 () Bool)

(assert (=> d!1217606 (= (isEmpty!26344 rTail!27) (is-Nil!44044 rTail!27))))

(assert (=> b!4101163 d!1217606))

(declare-fun d!1217608 () Bool)

(assert (=> d!1217608 (= (isDefined!7209 lt!1466874) (not (isEmpty!26345 lt!1466874)))))

(declare-fun bs!593861 () Bool)

(assert (= bs!593861 d!1217608))

(assert (=> bs!593861 m!4707831))

(assert (=> b!4101153 d!1217608))

(declare-fun d!1217610 () Bool)

(assert (=> d!1217610 (= (inv!58756 (tag!8001 rHead!24)) (= (mod (str.len (value!224163 (tag!8001 rHead!24))) 2) 0))))

(assert (=> b!4101162 d!1217610))

(declare-fun d!1217612 () Bool)

(declare-fun res!1676738 () Bool)

(declare-fun e!2545143 () Bool)

(assert (=> d!1217612 (=> (not res!1676738) (not e!2545143))))

(assert (=> d!1217612 (= res!1676738 (semiInverseModEq!3068 (toChars!9608 (transformation!7141 rHead!24)) (toValue!9749 (transformation!7141 rHead!24))))))

(assert (=> d!1217612 (= (inv!58759 (transformation!7141 rHead!24)) e!2545143)))

(declare-fun b!4101233 () Bool)

(assert (=> b!4101233 (= e!2545143 (equivClasses!2967 (toChars!9608 (transformation!7141 rHead!24)) (toValue!9749 (transformation!7141 rHead!24))))))

(assert (= (and d!1217612 res!1676738) b!4101233))

(declare-fun m!4707943 () Bool)

(assert (=> d!1217612 m!4707943))

(declare-fun m!4707945 () Bool)

(assert (=> b!4101233 m!4707945))

(assert (=> b!4101162 d!1217612))

(declare-fun d!1217614 () Bool)

(assert (=> d!1217614 (= (isEmpty!26345 lt!1466879) (not (is-Some!9538 lt!1466879)))))

(assert (=> b!4101157 d!1217614))

(declare-fun d!1217616 () Bool)

(assert (=> d!1217616 (= (isEmpty!26345 lt!1466874) (not (is-Some!9538 lt!1466874)))))

(assert (=> b!4101157 d!1217616))

(declare-fun b!4101252 () Bool)

(declare-fun res!1676755 () Bool)

(declare-fun e!2545152 () Bool)

(assert (=> b!4101252 (=> (not res!1676755) (not e!2545152))))

(declare-fun lt!1466928 () Option!9539)

(declare-fun ++!11531 (List!44167 List!44167) List!44167)

(declare-fun list!16315 (BalanceConc!26298) List!44167)

(declare-fun charsOf!4875 (Token!13392) BalanceConc!26298)

(assert (=> b!4101252 (= res!1676755 (= (++!11531 (list!16315 (charsOf!4875 (_1!24589 (get!14442 lt!1466928)))) (_2!24589 (get!14442 lt!1466928))) input!3491))))

(declare-fun d!1217618 () Bool)

(declare-fun e!2545151 () Bool)

(assert (=> d!1217618 e!2545151))

(declare-fun res!1676759 () Bool)

(assert (=> d!1217618 (=> res!1676759 e!2545151)))

(assert (=> d!1217618 (= res!1676759 (isEmpty!26345 lt!1466928))))

(declare-fun e!2545150 () Option!9539)

(assert (=> d!1217618 (= lt!1466928 e!2545150)))

(declare-fun c!706502 () Bool)

(assert (=> d!1217618 (= c!706502 (and (is-Cons!44044 (t!339825 rTail!27)) (is-Nil!44044 (t!339825 (t!339825 rTail!27)))))))

(declare-fun lt!1466929 () Unit!63564)

(declare-fun lt!1466930 () Unit!63564)

(assert (=> d!1217618 (= lt!1466929 lt!1466930)))

(declare-fun isPrefix!4160 (List!44167 List!44167) Bool)

(assert (=> d!1217618 (isPrefix!4160 input!3491 input!3491)))

(declare-fun lemmaIsPrefixRefl!2711 (List!44167 List!44167) Unit!63564)

(assert (=> d!1217618 (= lt!1466930 (lemmaIsPrefixRefl!2711 input!3491 input!3491))))

(declare-fun rulesValidInductive!2646 (LexerInterface!6730 List!44168) Bool)

(assert (=> d!1217618 (rulesValidInductive!2646 thiss!26455 (t!339825 rTail!27))))

(assert (=> d!1217618 (= (maxPrefix!4012 thiss!26455 (t!339825 rTail!27) input!3491) lt!1466928)))

(declare-fun b!4101253 () Bool)

(declare-fun res!1676757 () Bool)

(assert (=> b!4101253 (=> (not res!1676757) (not e!2545152))))

(declare-fun size!32866 (List!44167) Int)

(assert (=> b!4101253 (= res!1676757 (< (size!32866 (_2!24589 (get!14442 lt!1466928))) (size!32866 input!3491)))))

(declare-fun b!4101254 () Bool)

(declare-fun lt!1466932 () Option!9539)

(declare-fun lt!1466931 () Option!9539)

(assert (=> b!4101254 (= e!2545150 (ite (and (is-None!9538 lt!1466932) (is-None!9538 lt!1466931)) None!9538 (ite (is-None!9538 lt!1466931) lt!1466932 (ite (is-None!9538 lt!1466932) lt!1466931 (ite (>= (size!32864 (_1!24589 (v!40046 lt!1466932))) (size!32864 (_1!24589 (v!40046 lt!1466931)))) lt!1466932 lt!1466931)))))))

(declare-fun call!289775 () Option!9539)

(assert (=> b!4101254 (= lt!1466932 call!289775)))

(assert (=> b!4101254 (= lt!1466931 (maxPrefix!4012 thiss!26455 (t!339825 (t!339825 rTail!27)) input!3491))))

(declare-fun b!4101255 () Bool)

(assert (=> b!4101255 (= e!2545150 call!289775)))

(declare-fun b!4101256 () Bool)

(assert (=> b!4101256 (= e!2545152 (contains!8817 (t!339825 rTail!27) (rule!10291 (_1!24589 (get!14442 lt!1466928)))))))

(declare-fun b!4101257 () Bool)

(assert (=> b!4101257 (= e!2545151 e!2545152)))

(declare-fun res!1676754 () Bool)

(assert (=> b!4101257 (=> (not res!1676754) (not e!2545152))))

(assert (=> b!4101257 (= res!1676754 (isDefined!7209 lt!1466928))))

(declare-fun bm!289770 () Bool)

(declare-fun maxPrefixOneRule!2982 (LexerInterface!6730 Rule!14082 List!44167) Option!9539)

(assert (=> bm!289770 (= call!289775 (maxPrefixOneRule!2982 thiss!26455 (h!49464 (t!339825 rTail!27)) input!3491))))

(declare-fun b!4101258 () Bool)

(declare-fun res!1676758 () Bool)

(assert (=> b!4101258 (=> (not res!1676758) (not e!2545152))))

(assert (=> b!4101258 (= res!1676758 (= (list!16315 (charsOf!4875 (_1!24589 (get!14442 lt!1466928)))) (originalCharacters!7727 (_1!24589 (get!14442 lt!1466928)))))))

(declare-fun b!4101259 () Bool)

(declare-fun res!1676753 () Bool)

(assert (=> b!4101259 (=> (not res!1676753) (not e!2545152))))

(declare-fun apply!10308 (TokenValueInjection!14170 BalanceConc!26298) TokenValue!7371)

(declare-fun seqFromList!5342 (List!44167) BalanceConc!26298)

(assert (=> b!4101259 (= res!1676753 (= (value!224164 (_1!24589 (get!14442 lt!1466928))) (apply!10308 (transformation!7141 (rule!10291 (_1!24589 (get!14442 lt!1466928)))) (seqFromList!5342 (originalCharacters!7727 (_1!24589 (get!14442 lt!1466928)))))))))

(declare-fun b!4101260 () Bool)

(declare-fun res!1676756 () Bool)

(assert (=> b!4101260 (=> (not res!1676756) (not e!2545152))))

(declare-fun matchR!5971 (Regex!12046 List!44167) Bool)

(assert (=> b!4101260 (= res!1676756 (matchR!5971 (regex!7141 (rule!10291 (_1!24589 (get!14442 lt!1466928)))) (list!16315 (charsOf!4875 (_1!24589 (get!14442 lt!1466928))))))))

(assert (= (and d!1217618 c!706502) b!4101255))

(assert (= (and d!1217618 (not c!706502)) b!4101254))

(assert (= (or b!4101255 b!4101254) bm!289770))

(assert (= (and d!1217618 (not res!1676759)) b!4101257))

(assert (= (and b!4101257 res!1676754) b!4101258))

(assert (= (and b!4101258 res!1676758) b!4101253))

(assert (= (and b!4101253 res!1676757) b!4101252))

(assert (= (and b!4101252 res!1676755) b!4101259))

(assert (= (and b!4101259 res!1676753) b!4101260))

(assert (= (and b!4101260 res!1676756) b!4101256))

(declare-fun m!4707947 () Bool)

(assert (=> bm!289770 m!4707947))

(declare-fun m!4707949 () Bool)

(assert (=> b!4101253 m!4707949))

(declare-fun m!4707951 () Bool)

(assert (=> b!4101253 m!4707951))

(declare-fun m!4707953 () Bool)

(assert (=> b!4101253 m!4707953))

(assert (=> b!4101258 m!4707949))

(declare-fun m!4707955 () Bool)

(assert (=> b!4101258 m!4707955))

(assert (=> b!4101258 m!4707955))

(declare-fun m!4707957 () Bool)

(assert (=> b!4101258 m!4707957))

(declare-fun m!4707959 () Bool)

(assert (=> b!4101254 m!4707959))

(assert (=> b!4101256 m!4707949))

(declare-fun m!4707961 () Bool)

(assert (=> b!4101256 m!4707961))

(declare-fun m!4707963 () Bool)

(assert (=> d!1217618 m!4707963))

(declare-fun m!4707965 () Bool)

(assert (=> d!1217618 m!4707965))

(declare-fun m!4707967 () Bool)

(assert (=> d!1217618 m!4707967))

(declare-fun m!4707969 () Bool)

(assert (=> d!1217618 m!4707969))

(declare-fun m!4707971 () Bool)

(assert (=> b!4101257 m!4707971))

(assert (=> b!4101260 m!4707949))

(assert (=> b!4101260 m!4707955))

(assert (=> b!4101260 m!4707955))

(assert (=> b!4101260 m!4707957))

(assert (=> b!4101260 m!4707957))

(declare-fun m!4707973 () Bool)

(assert (=> b!4101260 m!4707973))

(assert (=> b!4101259 m!4707949))

(declare-fun m!4707975 () Bool)

(assert (=> b!4101259 m!4707975))

(assert (=> b!4101259 m!4707975))

(declare-fun m!4707977 () Bool)

(assert (=> b!4101259 m!4707977))

(assert (=> b!4101252 m!4707949))

(assert (=> b!4101252 m!4707955))

(assert (=> b!4101252 m!4707955))

(assert (=> b!4101252 m!4707957))

(assert (=> b!4101252 m!4707957))

(declare-fun m!4707979 () Bool)

(assert (=> b!4101252 m!4707979))

(assert (=> b!4101157 d!1217618))

(declare-fun d!1217620 () Bool)

(declare-fun e!2545161 () Bool)

(assert (=> d!1217620 e!2545161))

(declare-fun res!1676776 () Bool)

(assert (=> d!1217620 (=> res!1676776 e!2545161)))

(assert (=> d!1217620 (= res!1676776 (isEmpty!26345 (maxPrefix!4012 thiss!26455 (t!339825 rTail!27) input!3491)))))

(declare-fun lt!1466945 () Unit!63564)

(declare-fun choose!25066 (LexerInterface!6730 Rule!14082 List!44168 List!44167) Unit!63564)

(assert (=> d!1217620 (= lt!1466945 (choose!25066 thiss!26455 rHead!24 (t!339825 rTail!27) input!3491))))

(assert (=> d!1217620 (not (isEmpty!26344 (t!339825 rTail!27)))))

(assert (=> d!1217620 (= (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!33 thiss!26455 rHead!24 (t!339825 rTail!27) input!3491) lt!1466945)))

(declare-fun b!4101281 () Bool)

(assert (=> b!4101281 (= e!2545161 (not (= (rule!10291 (_1!24589 (get!14442 (maxPrefix!4012 thiss!26455 (t!339825 rTail!27) input!3491)))) rHead!24)))))

(assert (= (and d!1217620 (not res!1676776)) b!4101281))

(assert (=> d!1217620 m!4707829))

(assert (=> d!1217620 m!4707829))

(declare-fun m!4707981 () Bool)

(assert (=> d!1217620 m!4707981))

(declare-fun m!4707983 () Bool)

(assert (=> d!1217620 m!4707983))

(assert (=> d!1217620 m!4707835))

(assert (=> b!4101281 m!4707829))

(assert (=> b!4101281 m!4707829))

(declare-fun m!4707985 () Bool)

(assert (=> b!4101281 m!4707985))

(assert (=> b!4101157 d!1217620))

(declare-fun b!4101282 () Bool)

(declare-fun res!1676779 () Bool)

(declare-fun e!2545164 () Bool)

(assert (=> b!4101282 (=> (not res!1676779) (not e!2545164))))

(declare-fun lt!1466946 () Option!9539)

(assert (=> b!4101282 (= res!1676779 (= (++!11531 (list!16315 (charsOf!4875 (_1!24589 (get!14442 lt!1466946)))) (_2!24589 (get!14442 lt!1466946))) input!3491))))

(declare-fun d!1217622 () Bool)

(declare-fun e!2545163 () Bool)

(assert (=> d!1217622 e!2545163))

(declare-fun res!1676783 () Bool)

(assert (=> d!1217622 (=> res!1676783 e!2545163)))

(assert (=> d!1217622 (= res!1676783 (isEmpty!26345 lt!1466946))))

(declare-fun e!2545162 () Option!9539)

(assert (=> d!1217622 (= lt!1466946 e!2545162)))

(declare-fun c!706505 () Bool)

(assert (=> d!1217622 (= c!706505 (and (is-Cons!44044 rTail!27) (is-Nil!44044 (t!339825 rTail!27))))))

(declare-fun lt!1466947 () Unit!63564)

(declare-fun lt!1466948 () Unit!63564)

(assert (=> d!1217622 (= lt!1466947 lt!1466948)))

(assert (=> d!1217622 (isPrefix!4160 input!3491 input!3491)))

(assert (=> d!1217622 (= lt!1466948 (lemmaIsPrefixRefl!2711 input!3491 input!3491))))

(assert (=> d!1217622 (rulesValidInductive!2646 thiss!26455 rTail!27)))

(assert (=> d!1217622 (= (maxPrefix!4012 thiss!26455 rTail!27 input!3491) lt!1466946)))

(declare-fun b!4101283 () Bool)

(declare-fun res!1676781 () Bool)

(assert (=> b!4101283 (=> (not res!1676781) (not e!2545164))))

(assert (=> b!4101283 (= res!1676781 (< (size!32866 (_2!24589 (get!14442 lt!1466946))) (size!32866 input!3491)))))

(declare-fun b!4101284 () Bool)

(declare-fun lt!1466950 () Option!9539)

(declare-fun lt!1466949 () Option!9539)

(assert (=> b!4101284 (= e!2545162 (ite (and (is-None!9538 lt!1466950) (is-None!9538 lt!1466949)) None!9538 (ite (is-None!9538 lt!1466949) lt!1466950 (ite (is-None!9538 lt!1466950) lt!1466949 (ite (>= (size!32864 (_1!24589 (v!40046 lt!1466950))) (size!32864 (_1!24589 (v!40046 lt!1466949)))) lt!1466950 lt!1466949)))))))

(declare-fun call!289778 () Option!9539)

(assert (=> b!4101284 (= lt!1466950 call!289778)))

(assert (=> b!4101284 (= lt!1466949 (maxPrefix!4012 thiss!26455 (t!339825 rTail!27) input!3491))))

(declare-fun b!4101285 () Bool)

(assert (=> b!4101285 (= e!2545162 call!289778)))

(declare-fun b!4101286 () Bool)

(assert (=> b!4101286 (= e!2545164 (contains!8817 rTail!27 (rule!10291 (_1!24589 (get!14442 lt!1466946)))))))

(declare-fun b!4101287 () Bool)

(assert (=> b!4101287 (= e!2545163 e!2545164)))

(declare-fun res!1676778 () Bool)

(assert (=> b!4101287 (=> (not res!1676778) (not e!2545164))))

(assert (=> b!4101287 (= res!1676778 (isDefined!7209 lt!1466946))))

(declare-fun bm!289773 () Bool)

(assert (=> bm!289773 (= call!289778 (maxPrefixOneRule!2982 thiss!26455 (h!49464 rTail!27) input!3491))))

(declare-fun b!4101288 () Bool)

(declare-fun res!1676782 () Bool)

(assert (=> b!4101288 (=> (not res!1676782) (not e!2545164))))

(assert (=> b!4101288 (= res!1676782 (= (list!16315 (charsOf!4875 (_1!24589 (get!14442 lt!1466946)))) (originalCharacters!7727 (_1!24589 (get!14442 lt!1466946)))))))

(declare-fun b!4101289 () Bool)

(declare-fun res!1676777 () Bool)

(assert (=> b!4101289 (=> (not res!1676777) (not e!2545164))))

(assert (=> b!4101289 (= res!1676777 (= (value!224164 (_1!24589 (get!14442 lt!1466946))) (apply!10308 (transformation!7141 (rule!10291 (_1!24589 (get!14442 lt!1466946)))) (seqFromList!5342 (originalCharacters!7727 (_1!24589 (get!14442 lt!1466946)))))))))

(declare-fun b!4101290 () Bool)

(declare-fun res!1676780 () Bool)

(assert (=> b!4101290 (=> (not res!1676780) (not e!2545164))))

(assert (=> b!4101290 (= res!1676780 (matchR!5971 (regex!7141 (rule!10291 (_1!24589 (get!14442 lt!1466946)))) (list!16315 (charsOf!4875 (_1!24589 (get!14442 lt!1466946))))))))

(assert (= (and d!1217622 c!706505) b!4101285))

(assert (= (and d!1217622 (not c!706505)) b!4101284))

(assert (= (or b!4101285 b!4101284) bm!289773))

(assert (= (and d!1217622 (not res!1676783)) b!4101287))

(assert (= (and b!4101287 res!1676778) b!4101288))

(assert (= (and b!4101288 res!1676782) b!4101283))

(assert (= (and b!4101283 res!1676781) b!4101282))

(assert (= (and b!4101282 res!1676779) b!4101289))

(assert (= (and b!4101289 res!1676777) b!4101290))

(assert (= (and b!4101290 res!1676780) b!4101286))

(declare-fun m!4707987 () Bool)

(assert (=> bm!289773 m!4707987))

(declare-fun m!4707989 () Bool)

(assert (=> b!4101283 m!4707989))

(declare-fun m!4707991 () Bool)

(assert (=> b!4101283 m!4707991))

(assert (=> b!4101283 m!4707953))

(assert (=> b!4101288 m!4707989))

(declare-fun m!4707993 () Bool)

(assert (=> b!4101288 m!4707993))

(assert (=> b!4101288 m!4707993))

(declare-fun m!4707995 () Bool)

(assert (=> b!4101288 m!4707995))

(assert (=> b!4101284 m!4707829))

(assert (=> b!4101286 m!4707989))

(declare-fun m!4707997 () Bool)

(assert (=> b!4101286 m!4707997))

(declare-fun m!4707999 () Bool)

(assert (=> d!1217622 m!4707999))

(assert (=> d!1217622 m!4707965))

(assert (=> d!1217622 m!4707967))

(declare-fun m!4708001 () Bool)

(assert (=> d!1217622 m!4708001))

(declare-fun m!4708003 () Bool)

(assert (=> b!4101287 m!4708003))

(assert (=> b!4101290 m!4707989))

(assert (=> b!4101290 m!4707993))

(assert (=> b!4101290 m!4707993))

(assert (=> b!4101290 m!4707995))

(assert (=> b!4101290 m!4707995))

(declare-fun m!4708005 () Bool)

(assert (=> b!4101290 m!4708005))

(assert (=> b!4101289 m!4707989))

(declare-fun m!4708007 () Bool)

(assert (=> b!4101289 m!4708007))

(assert (=> b!4101289 m!4708007))

(declare-fun m!4708009 () Bool)

(assert (=> b!4101289 m!4708009))

(assert (=> b!4101282 m!4707989))

(assert (=> b!4101282 m!4707993))

(assert (=> b!4101282 m!4707993))

(assert (=> b!4101282 m!4707995))

(assert (=> b!4101282 m!4707995))

(declare-fun m!4708011 () Bool)

(assert (=> b!4101282 m!4708011))

(assert (=> b!4101157 d!1217622))

(declare-fun b!4101304 () Bool)

(declare-fun e!2545167 () Bool)

(declare-fun tp!1241863 () Bool)

(declare-fun tp!1241862 () Bool)

(assert (=> b!4101304 (= e!2545167 (and tp!1241863 tp!1241862))))

(declare-fun b!4101303 () Bool)

(declare-fun tp!1241865 () Bool)

(assert (=> b!4101303 (= e!2545167 tp!1241865)))

(declare-fun b!4101301 () Bool)

(assert (=> b!4101301 (= e!2545167 tp_is_empty!21079)))

(declare-fun b!4101302 () Bool)

(declare-fun tp!1241864 () Bool)

(declare-fun tp!1241861 () Bool)

(assert (=> b!4101302 (= e!2545167 (and tp!1241864 tp!1241861))))

(assert (=> b!4101155 (= tp!1241824 e!2545167)))

(assert (= (and b!4101155 (is-ElementMatch!12046 (regex!7141 (h!49464 rTail!27)))) b!4101301))

(assert (= (and b!4101155 (is-Concat!19418 (regex!7141 (h!49464 rTail!27)))) b!4101302))

(assert (= (and b!4101155 (is-Star!12046 (regex!7141 (h!49464 rTail!27)))) b!4101303))

(assert (= (and b!4101155 (is-Union!12046 (regex!7141 (h!49464 rTail!27)))) b!4101304))

(declare-fun b!4101315 () Bool)

(declare-fun b_free!114881 () Bool)

(declare-fun b_next!115585 () Bool)

(assert (=> b!4101315 (= b_free!114881 (not b_next!115585))))

(declare-fun tp!1241877 () Bool)

(declare-fun b_and!316695 () Bool)

(assert (=> b!4101315 (= tp!1241877 b_and!316695)))

(declare-fun b_free!114883 () Bool)

(declare-fun b_next!115587 () Bool)

(assert (=> b!4101315 (= b_free!114883 (not b_next!115587))))

(declare-fun tp!1241874 () Bool)

(declare-fun b_and!316697 () Bool)

(assert (=> b!4101315 (= tp!1241874 b_and!316697)))

(declare-fun e!2545177 () Bool)

(assert (=> b!4101315 (= e!2545177 (and tp!1241877 tp!1241874))))

(declare-fun tp!1241875 () Bool)

(declare-fun b!4101314 () Bool)

(declare-fun e!2545178 () Bool)

(assert (=> b!4101314 (= e!2545178 (and tp!1241875 (inv!58756 (tag!8001 (h!49464 (t!339825 rTail!27)))) (inv!58759 (transformation!7141 (h!49464 (t!339825 rTail!27)))) e!2545177))))

(declare-fun b!4101313 () Bool)

(declare-fun e!2545179 () Bool)

(declare-fun tp!1241876 () Bool)

(assert (=> b!4101313 (= e!2545179 (and e!2545178 tp!1241876))))

(assert (=> b!4101158 (= tp!1241825 e!2545179)))

(assert (= b!4101314 b!4101315))

(assert (= b!4101313 b!4101314))

(assert (= (and b!4101158 (is-Cons!44044 (t!339825 rTail!27))) b!4101313))

(declare-fun m!4708013 () Bool)

(assert (=> b!4101314 m!4708013))

(declare-fun m!4708015 () Bool)

(assert (=> b!4101314 m!4708015))

(declare-fun b!4101320 () Bool)

(declare-fun e!2545182 () Bool)

(declare-fun tp!1241880 () Bool)

(assert (=> b!4101320 (= e!2545182 (and tp_is_empty!21079 tp!1241880))))

(assert (=> b!4101164 (= tp!1241821 e!2545182)))

(assert (= (and b!4101164 (is-Cons!44043 (t!339824 input!3491))) b!4101320))

(declare-fun b!4101324 () Bool)

(declare-fun e!2545183 () Bool)

(declare-fun tp!1241883 () Bool)

(declare-fun tp!1241882 () Bool)

(assert (=> b!4101324 (= e!2545183 (and tp!1241883 tp!1241882))))

(declare-fun b!4101323 () Bool)

(declare-fun tp!1241885 () Bool)

(assert (=> b!4101323 (= e!2545183 tp!1241885)))

(declare-fun b!4101321 () Bool)

(assert (=> b!4101321 (= e!2545183 tp_is_empty!21079)))

(declare-fun b!4101322 () Bool)

(declare-fun tp!1241884 () Bool)

(declare-fun tp!1241881 () Bool)

(assert (=> b!4101322 (= e!2545183 (and tp!1241884 tp!1241881))))

(assert (=> b!4101162 (= tp!1241822 e!2545183)))

(assert (= (and b!4101162 (is-ElementMatch!12046 (regex!7141 rHead!24))) b!4101321))

(assert (= (and b!4101162 (is-Concat!19418 (regex!7141 rHead!24))) b!4101322))

(assert (= (and b!4101162 (is-Star!12046 (regex!7141 rHead!24))) b!4101323))

(assert (= (and b!4101162 (is-Union!12046 (regex!7141 rHead!24))) b!4101324))

(push 1)

(assert (not bm!289773))

(assert (not b!4101258))

(assert (not b!4101259))

(assert (not d!1217604))

(assert (not b!4101219))

(assert (not b_next!115571))

(assert (not b!4101322))

(assert b_and!316697)

(assert (not b!4101287))

(assert b_and!316685)

(assert (not b_next!115569))

(assert b_and!316695)

(assert (not b!4101286))

(assert (not b!4101257))

(assert (not d!1217582))

(assert (not b!4101304))

(assert (not b!4101302))

(assert (not b!4101233))

(assert (not b_next!115585))

(assert (not b!4101252))

(assert (not bm!289770))

(assert (not b!4101324))

(assert (not b!4101220))

(assert (not d!1217594))

(assert (not b!4101313))

(assert (not d!1217608))

(assert (not d!1217590))

(assert b_and!316679)

(assert (not b!4101254))

(assert (not b!4101232))

(assert (not b!4101230))

(assert (not b!4101323))

(assert (not b!4101303))

(assert (not d!1217622))

(assert (not b!4101288))

(assert (not b!4101289))

(assert (not b!4101282))

(assert (not b!4101314))

(assert (not b_next!115575))

(assert (not b!4101231))

(assert (not d!1217620))

(assert (not b!4101284))

(assert (not b!4101281))

(assert (not b!4101283))

(assert (not d!1217576))

(assert (not d!1217598))

(assert (not b_next!115587))

(assert (not d!1217618))

(assert (not b!4101260))

(assert (not b!4101320))

(assert (not b!4101211))

(assert tp_is_empty!21079)

(assert b_and!316681)

(assert (not d!1217612))

(assert (not b_next!115573))

(assert (not b!4101229))

(assert (not b!4101290))

(assert (not b!4101253))

(assert (not b!4101256))

(assert b_and!316683)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!115585))

(assert b_and!316679)

(assert (not b_next!115571))

(assert (not b_next!115575))

(assert b_and!316697)

(assert b_and!316685)

(assert (not b_next!115569))

(assert b_and!316695)

(assert (not b_next!115587))

(assert b_and!316683)

(assert b_and!316681)

(assert (not b_next!115573))

(check-sat)

(pop 1)

