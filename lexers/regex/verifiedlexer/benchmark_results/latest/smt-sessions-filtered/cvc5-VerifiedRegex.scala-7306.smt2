; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!389294 () Bool)

(assert start!389294)

(declare-fun b!4108841 () Bool)

(declare-fun b_free!115369 () Bool)

(declare-fun b_next!116073 () Bool)

(assert (=> b!4108841 (= b_free!115369 (not b_next!116073))))

(declare-fun tp!1248639 () Bool)

(declare-fun b_and!317183 () Bool)

(assert (=> b!4108841 (= tp!1248639 b_and!317183)))

(declare-fun b_free!115371 () Bool)

(declare-fun b_next!116075 () Bool)

(assert (=> b!4108841 (= b_free!115371 (not b_next!116075))))

(declare-fun tp!1248646 () Bool)

(declare-fun b_and!317185 () Bool)

(assert (=> b!4108841 (= tp!1248646 b_and!317185)))

(declare-fun b!4108839 () Bool)

(declare-fun b_free!115373 () Bool)

(declare-fun b_next!116077 () Bool)

(assert (=> b!4108839 (= b_free!115373 (not b_next!116077))))

(declare-fun tp!1248640 () Bool)

(declare-fun b_and!317187 () Bool)

(assert (=> b!4108839 (= tp!1248640 b_and!317187)))

(declare-fun b_free!115375 () Bool)

(declare-fun b_next!116079 () Bool)

(assert (=> b!4108839 (= b_free!115375 (not b_next!116079))))

(declare-fun tp!1248641 () Bool)

(declare-fun b_and!317189 () Bool)

(assert (=> b!4108839 (= tp!1248641 b_and!317189)))

(declare-fun b!4108830 () Bool)

(declare-fun e!2549084 () Bool)

(declare-fun e!2549088 () Bool)

(declare-fun tp!1248643 () Bool)

(assert (=> b!4108830 (= e!2549084 (and e!2549088 tp!1248643))))

(declare-fun e!2549090 () Bool)

(declare-fun b!4108831 () Bool)

(declare-datatypes ((C!24362 0))(
  ( (C!24363 (val!14291 Int)) )
))
(declare-datatypes ((List!44332 0))(
  ( (Nil!44208) (Cons!44208 (h!49628 C!24362) (t!339989 List!44332)) )
))
(declare-datatypes ((IArray!26793 0))(
  ( (IArray!26794 (innerList!13454 List!44332)) )
))
(declare-datatypes ((Conc!13394 0))(
  ( (Node!13394 (left!33168 Conc!13394) (right!33498 Conc!13394) (csize!27018 Int) (cheight!13605 Int)) (Leaf!20701 (xs!16700 IArray!26793) (csize!27019 Int)) (Empty!13394) )
))
(declare-datatypes ((List!44333 0))(
  ( (Nil!44209) (Cons!44209 (h!49629 (_ BitVec 16)) (t!339990 List!44333)) )
))
(declare-datatypes ((Regex!12088 0))(
  ( (ElementMatch!12088 (c!706709 C!24362)) (Concat!19501 (regOne!24688 Regex!12088) (regTwo!24688 Regex!12088)) (EmptyExpr!12088) (Star!12088 (reg!12417 Regex!12088)) (EmptyLang!12088) (Union!12088 (regOne!24689 Regex!12088) (regTwo!24689 Regex!12088)) )
))
(declare-datatypes ((String!50816 0))(
  ( (String!50817 (value!225303 String)) )
))
(declare-datatypes ((TokenValue!7413 0))(
  ( (FloatLiteralValue!14826 (text!52336 List!44333)) (TokenValueExt!7412 (__x!27043 Int)) (Broken!37065 (value!225304 List!44333)) (Object!7536) (End!7413) (Def!7413) (Underscore!7413) (Match!7413) (Else!7413) (Error!7413) (Case!7413) (If!7413) (Extends!7413) (Abstract!7413) (Class!7413) (Val!7413) (DelimiterValue!14826 (del!7473 List!44333)) (KeywordValue!7419 (value!225305 List!44333)) (CommentValue!14826 (value!225306 List!44333)) (WhitespaceValue!14826 (value!225307 List!44333)) (IndentationValue!7413 (value!225308 List!44333)) (String!50818) (Int32!7413) (Broken!37066 (value!225309 List!44333)) (Boolean!7414) (Unit!63677) (OperatorValue!7416 (op!7473 List!44333)) (IdentifierValue!14826 (value!225310 List!44333)) (IdentifierValue!14827 (value!225311 List!44333)) (WhitespaceValue!14827 (value!225312 List!44333)) (True!14826) (False!14826) (Broken!37067 (value!225313 List!44333)) (Broken!37068 (value!225314 List!44333)) (True!14827) (RightBrace!7413) (RightBracket!7413) (Colon!7413) (Null!7413) (Comma!7413) (LeftBracket!7413) (False!14827) (LeftBrace!7413) (ImaginaryLiteralValue!7413 (text!52337 List!44333)) (StringLiteralValue!22239 (value!225315 List!44333)) (EOFValue!7413 (value!225316 List!44333)) (IdentValue!7413 (value!225317 List!44333)) (DelimiterValue!14827 (value!225318 List!44333)) (DedentValue!7413 (value!225319 List!44333)) (NewLineValue!7413 (value!225320 List!44333)) (IntegerValue!22239 (value!225321 (_ BitVec 32)) (text!52338 List!44333)) (IntegerValue!22240 (value!225322 Int) (text!52339 List!44333)) (Times!7413) (Or!7413) (Equal!7413) (Minus!7413) (Broken!37069 (value!225323 List!44333)) (And!7413) (Div!7413) (LessEqual!7413) (Mod!7413) (Concat!19502) (Not!7413) (Plus!7413) (SpaceValue!7413 (value!225324 List!44333)) (IntegerValue!22241 (value!225325 Int) (text!52340 List!44333)) (StringLiteralValue!22240 (text!52341 List!44333)) (FloatLiteralValue!14827 (text!52342 List!44333)) (BytesLiteralValue!7413 (value!225326 List!44333)) (CommentValue!14827 (value!225327 List!44333)) (StringLiteralValue!22241 (value!225328 List!44333)) (ErrorTokenValue!7413 (msg!7474 List!44333)) )
))
(declare-datatypes ((BalanceConc!26382 0))(
  ( (BalanceConc!26383 (c!706710 Conc!13394)) )
))
(declare-datatypes ((TokenValueInjection!14254 0))(
  ( (TokenValueInjection!14255 (toValue!9807 Int) (toChars!9666 Int)) )
))
(declare-datatypes ((Rule!14166 0))(
  ( (Rule!14167 (regex!7183 Regex!12088) (tag!8043 String!50816) (isSeparator!7183 Bool) (transformation!7183 TokenValueInjection!14254)) )
))
(declare-fun rHead!24 () Rule!14166)

(declare-fun e!2549086 () Bool)

(declare-fun tp!1248645 () Bool)

(declare-fun inv!58861 (String!50816) Bool)

(declare-fun inv!58864 (TokenValueInjection!14254) Bool)

(assert (=> b!4108831 (= e!2549086 (and tp!1248645 (inv!58861 (tag!8043 rHead!24)) (inv!58864 (transformation!7183 rHead!24)) e!2549090))))

(declare-fun b!4108832 () Bool)

(declare-fun e!2549092 () Bool)

(declare-fun e!2549089 () Bool)

(assert (=> b!4108832 (= e!2549092 e!2549089)))

(declare-fun res!1678718 () Bool)

(assert (=> b!4108832 (=> res!1678718 e!2549089)))

(declare-datatypes ((LexerInterface!6772 0))(
  ( (LexerInterfaceExt!6769 (__x!27044 Int)) (Lexer!6770) )
))
(declare-fun thiss!26455 () LexerInterface!6772)

(declare-datatypes ((List!44334 0))(
  ( (Nil!44210) (Cons!44210 (h!49630 Rule!14166) (t!339991 List!44334)) )
))
(declare-fun lt!1467735 () List!44334)

(declare-fun rulesInvariant!6115 (LexerInterface!6772 List!44334) Bool)

(assert (=> b!4108832 (= res!1678718 (not (rulesInvariant!6115 thiss!26455 lt!1467735)))))

(declare-datatypes ((List!44335 0))(
  ( (Nil!44211) (Cons!44211 (h!49631 String!50816) (t!339992 List!44335)) )
))
(declare-fun noDuplicateTag!2860 (LexerInterface!6772 List!44334 List!44335) Bool)

(assert (=> b!4108832 (noDuplicateTag!2860 thiss!26455 lt!1467735 Nil!44211)))

(declare-datatypes ((Unit!63678 0))(
  ( (Unit!63679) )
))
(declare-fun lt!1467736 () Unit!63678)

(declare-fun rTail!27 () List!44334)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!23 (LexerInterface!6772 List!44335 List!44335 List!44334) Unit!63678)

(assert (=> b!4108832 (= lt!1467736 (lemmaNoDupTagThenAlsoWithSubListAcc!23 thiss!26455 (Cons!44211 (tag!8043 (h!49630 rTail!27)) Nil!44211) Nil!44211 lt!1467735))))

(declare-fun b!4108833 () Bool)

(declare-fun e!2549091 () Bool)

(declare-fun e!2549093 () Bool)

(assert (=> b!4108833 (= e!2549091 e!2549093)))

(declare-fun res!1678715 () Bool)

(assert (=> b!4108833 (=> (not res!1678715) (not e!2549093))))

(declare-fun lt!1467741 () List!44334)

(assert (=> b!4108833 (= res!1678715 (rulesInvariant!6115 thiss!26455 lt!1467741))))

(assert (=> b!4108833 (= lt!1467741 (Cons!44210 rHead!24 rTail!27))))

(declare-fun b!4108834 () Bool)

(declare-fun e!2549097 () Bool)

(assert (=> b!4108834 (= e!2549089 e!2549097)))

(declare-fun res!1678721 () Bool)

(assert (=> b!4108834 (=> res!1678721 e!2549097)))

(declare-datatypes ((Token!13412 0))(
  ( (Token!13413 (value!225329 TokenValue!7413) (rule!10301 Rule!14166) (size!32880 Int) (originalCharacters!7737 List!44332)) )
))
(declare-datatypes ((tuple2!42930 0))(
  ( (tuple2!42931 (_1!24599 Token!13412) (_2!24599 List!44332)) )
))
(declare-datatypes ((Option!9549 0))(
  ( (None!9548) (Some!9548 (v!40076 tuple2!42930)) )
))
(declare-fun lt!1467740 () Option!9549)

(declare-fun isEmpty!26394 (Option!9549) Bool)

(assert (=> b!4108834 (= res!1678721 (isEmpty!26394 lt!1467740))))

(declare-fun input!3491 () List!44332)

(declare-fun maxPrefix!4022 (LexerInterface!6772 List!44334 List!44332) Option!9549)

(assert (=> b!4108834 (= lt!1467740 (maxPrefix!4022 thiss!26455 rTail!27 input!3491))))

(declare-fun e!2549095 () Bool)

(assert (=> b!4108834 e!2549095))

(declare-fun res!1678722 () Bool)

(assert (=> b!4108834 (=> res!1678722 e!2549095)))

(declare-fun lt!1467737 () Option!9549)

(assert (=> b!4108834 (= res!1678722 (isEmpty!26394 lt!1467737))))

(assert (=> b!4108834 (= lt!1467737 (maxPrefix!4022 thiss!26455 (t!339991 rTail!27) input!3491))))

(declare-fun lt!1467734 () Unit!63678)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!35 (LexerInterface!6772 Rule!14166 List!44334 List!44332) Unit!63678)

(assert (=> b!4108834 (= lt!1467734 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!35 thiss!26455 rHead!24 (t!339991 rTail!27) input!3491))))

(declare-fun res!1678720 () Bool)

(assert (=> start!389294 (=> (not res!1678720) (not e!2549091))))

(assert (=> start!389294 (= res!1678720 (is-Lexer!6770 thiss!26455))))

(assert (=> start!389294 e!2549091))

(assert (=> start!389294 true))

(assert (=> start!389294 e!2549084))

(declare-fun e!2549096 () Bool)

(assert (=> start!389294 e!2549096))

(assert (=> start!389294 e!2549086))

(declare-fun b!4108835 () Bool)

(declare-fun tp_is_empty!21143 () Bool)

(declare-fun tp!1248642 () Bool)

(assert (=> b!4108835 (= e!2549096 (and tp_is_empty!21143 tp!1248642))))

(declare-fun b!4108836 () Bool)

(declare-fun res!1678719 () Bool)

(assert (=> b!4108836 (=> (not res!1678719) (not e!2549093))))

(assert (=> b!4108836 (= res!1678719 (is-Cons!44210 rTail!27))))

(declare-fun b!4108837 () Bool)

(declare-fun res!1678716 () Bool)

(assert (=> b!4108837 (=> (not res!1678716) (not e!2549091))))

(declare-fun isEmpty!26395 (List!44334) Bool)

(assert (=> b!4108837 (= res!1678716 (not (isEmpty!26395 rTail!27)))))

(declare-fun b!4108838 () Bool)

(declare-fun get!14469 (Option!9549) tuple2!42930)

(assert (=> b!4108838 (= e!2549097 (not (= (rule!10301 (_1!24599 (get!14469 lt!1467740))) rHead!24)))))

(assert (=> b!4108839 (= e!2549090 (and tp!1248640 tp!1248641))))

(declare-fun b!4108840 () Bool)

(assert (=> b!4108840 (= e!2549093 (not e!2549092))))

(declare-fun res!1678717 () Bool)

(assert (=> b!4108840 (=> res!1678717 e!2549092)))

(assert (=> b!4108840 (= res!1678717 (isEmpty!26395 (t!339991 rTail!27)))))

(assert (=> b!4108840 (not (= (tag!8043 rHead!24) (tag!8043 (h!49630 rTail!27))))))

(declare-fun lt!1467739 () Unit!63678)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!43 (LexerInterface!6772 List!44334 Rule!14166 Rule!14166) Unit!63678)

(assert (=> b!4108840 (= lt!1467739 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!43 thiss!26455 lt!1467741 rHead!24 (h!49630 rTail!27)))))

(assert (=> b!4108840 (noDuplicateTag!2860 thiss!26455 (Cons!44210 (h!49630 rTail!27) lt!1467735) Nil!44211)))

(assert (=> b!4108840 (= lt!1467735 (Cons!44210 rHead!24 (t!339991 rTail!27)))))

(declare-fun lt!1467738 () Unit!63678)

(declare-fun lemmaNoDuplicateCanReorder!55 (LexerInterface!6772 Rule!14166 Rule!14166 List!44334) Unit!63678)

(assert (=> b!4108840 (= lt!1467738 (lemmaNoDuplicateCanReorder!55 thiss!26455 rHead!24 (h!49630 rTail!27) (t!339991 rTail!27)))))

(declare-fun e!2549094 () Bool)

(assert (=> b!4108841 (= e!2549094 (and tp!1248639 tp!1248646))))

(declare-fun tp!1248644 () Bool)

(declare-fun b!4108842 () Bool)

(assert (=> b!4108842 (= e!2549088 (and tp!1248644 (inv!58861 (tag!8043 (h!49630 rTail!27))) (inv!58864 (transformation!7183 (h!49630 rTail!27))) e!2549094))))

(declare-fun b!4108843 () Bool)

(assert (=> b!4108843 (= e!2549095 (not (= (rule!10301 (_1!24599 (get!14469 lt!1467737))) rHead!24)))))

(assert (= (and start!389294 res!1678720) b!4108837))

(assert (= (and b!4108837 res!1678716) b!4108833))

(assert (= (and b!4108833 res!1678715) b!4108836))

(assert (= (and b!4108836 res!1678719) b!4108840))

(assert (= (and b!4108840 (not res!1678717)) b!4108832))

(assert (= (and b!4108832 (not res!1678718)) b!4108834))

(assert (= (and b!4108834 (not res!1678722)) b!4108843))

(assert (= (and b!4108834 (not res!1678721)) b!4108838))

(assert (= b!4108842 b!4108841))

(assert (= b!4108830 b!4108842))

(assert (= (and start!389294 (is-Cons!44210 rTail!27)) b!4108830))

(assert (= (and start!389294 (is-Cons!44208 input!3491)) b!4108835))

(assert (= b!4108831 b!4108839))

(assert (= start!389294 b!4108831))

(declare-fun m!4711237 () Bool)

(assert (=> b!4108831 m!4711237))

(declare-fun m!4711239 () Bool)

(assert (=> b!4108831 m!4711239))

(declare-fun m!4711241 () Bool)

(assert (=> b!4108833 m!4711241))

(declare-fun m!4711243 () Bool)

(assert (=> b!4108838 m!4711243))

(declare-fun m!4711245 () Bool)

(assert (=> b!4108834 m!4711245))

(declare-fun m!4711247 () Bool)

(assert (=> b!4108834 m!4711247))

(declare-fun m!4711249 () Bool)

(assert (=> b!4108834 m!4711249))

(declare-fun m!4711251 () Bool)

(assert (=> b!4108834 m!4711251))

(declare-fun m!4711253 () Bool)

(assert (=> b!4108834 m!4711253))

(declare-fun m!4711255 () Bool)

(assert (=> b!4108842 m!4711255))

(declare-fun m!4711257 () Bool)

(assert (=> b!4108842 m!4711257))

(declare-fun m!4711259 () Bool)

(assert (=> b!4108837 m!4711259))

(declare-fun m!4711261 () Bool)

(assert (=> b!4108832 m!4711261))

(declare-fun m!4711263 () Bool)

(assert (=> b!4108832 m!4711263))

(declare-fun m!4711265 () Bool)

(assert (=> b!4108832 m!4711265))

(declare-fun m!4711267 () Bool)

(assert (=> b!4108843 m!4711267))

(declare-fun m!4711269 () Bool)

(assert (=> b!4108840 m!4711269))

(declare-fun m!4711271 () Bool)

(assert (=> b!4108840 m!4711271))

(declare-fun m!4711273 () Bool)

(assert (=> b!4108840 m!4711273))

(declare-fun m!4711275 () Bool)

(assert (=> b!4108840 m!4711275))

(push 1)

(assert (not b_next!116077))

(assert (not b!4108842))

(assert (not b!4108843))

(assert (not b!4108834))

(assert (not b!4108833))

(assert (not b!4108837))

(assert b_and!317189)

(assert (not b_next!116075))

(assert b_and!317185)

(assert tp_is_empty!21143)

(assert (not b_next!116079))

(assert (not b!4108835))

(assert (not b!4108832))

(assert (not b!4108831))

(assert (not b!4108830))

(assert b_and!317187)

(assert b_and!317183)

(assert (not b!4108840))

(assert (not b!4108838))

(assert (not b_next!116073))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!116077))

(assert b_and!317189)

(assert (not b_next!116073))

(assert (not b_next!116075))

(assert b_and!317185)

(assert (not b_next!116079))

(assert b_and!317187)

(assert b_and!317183)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1219071 () Bool)

(assert (=> d!1219071 (= (inv!58861 (tag!8043 rHead!24)) (= (mod (str.len (value!225303 (tag!8043 rHead!24))) 2) 0))))

(assert (=> b!4108831 d!1219071))

(declare-fun d!1219073 () Bool)

(declare-fun res!1678758 () Bool)

(declare-fun e!2549142 () Bool)

(assert (=> d!1219073 (=> (not res!1678758) (not e!2549142))))

(declare-fun semiInverseModEq!3094 (Int Int) Bool)

(assert (=> d!1219073 (= res!1678758 (semiInverseModEq!3094 (toChars!9666 (transformation!7183 rHead!24)) (toValue!9807 (transformation!7183 rHead!24))))))

(assert (=> d!1219073 (= (inv!58864 (transformation!7183 rHead!24)) e!2549142)))

(declare-fun b!4108888 () Bool)

(declare-fun equivClasses!2993 (Int Int) Bool)

(assert (=> b!4108888 (= e!2549142 (equivClasses!2993 (toChars!9666 (transformation!7183 rHead!24)) (toValue!9807 (transformation!7183 rHead!24))))))

(assert (= (and d!1219073 res!1678758) b!4108888))

(declare-fun m!4711317 () Bool)

(assert (=> d!1219073 m!4711317))

(declare-fun m!4711319 () Bool)

(assert (=> b!4108888 m!4711319))

(assert (=> b!4108831 d!1219073))

(declare-fun d!1219075 () Bool)

(assert (=> d!1219075 (= (inv!58861 (tag!8043 (h!49630 rTail!27))) (= (mod (str.len (value!225303 (tag!8043 (h!49630 rTail!27)))) 2) 0))))

(assert (=> b!4108842 d!1219075))

(declare-fun d!1219077 () Bool)

(declare-fun res!1678759 () Bool)

(declare-fun e!2549143 () Bool)

(assert (=> d!1219077 (=> (not res!1678759) (not e!2549143))))

(assert (=> d!1219077 (= res!1678759 (semiInverseModEq!3094 (toChars!9666 (transformation!7183 (h!49630 rTail!27))) (toValue!9807 (transformation!7183 (h!49630 rTail!27)))))))

(assert (=> d!1219077 (= (inv!58864 (transformation!7183 (h!49630 rTail!27))) e!2549143)))

(declare-fun b!4108889 () Bool)

(assert (=> b!4108889 (= e!2549143 (equivClasses!2993 (toChars!9666 (transformation!7183 (h!49630 rTail!27))) (toValue!9807 (transformation!7183 (h!49630 rTail!27)))))))

(assert (= (and d!1219077 res!1678759) b!4108889))

(declare-fun m!4711321 () Bool)

(assert (=> d!1219077 m!4711321))

(declare-fun m!4711323 () Bool)

(assert (=> b!4108889 m!4711323))

(assert (=> b!4108842 d!1219077))

(declare-fun d!1219079 () Bool)

(assert (=> d!1219079 (= (isEmpty!26395 (t!339991 rTail!27)) (is-Nil!44210 (t!339991 rTail!27)))))

(assert (=> b!4108840 d!1219079))

(declare-fun d!1219081 () Bool)

(assert (=> d!1219081 (not (= (tag!8043 rHead!24) (tag!8043 (h!49630 rTail!27))))))

(declare-fun lt!1467768 () Unit!63678)

(declare-fun choose!25120 (LexerInterface!6772 List!44334 Rule!14166 Rule!14166) Unit!63678)

(assert (=> d!1219081 (= lt!1467768 (choose!25120 thiss!26455 lt!1467741 rHead!24 (h!49630 rTail!27)))))

(declare-fun contains!8865 (List!44334 Rule!14166) Bool)

(assert (=> d!1219081 (contains!8865 lt!1467741 rHead!24)))

(assert (=> d!1219081 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!43 thiss!26455 lt!1467741 rHead!24 (h!49630 rTail!27)) lt!1467768)))

(declare-fun bs!594173 () Bool)

(assert (= bs!594173 d!1219081))

(declare-fun m!4711325 () Bool)

(assert (=> bs!594173 m!4711325))

(declare-fun m!4711327 () Bool)

(assert (=> bs!594173 m!4711327))

(assert (=> b!4108840 d!1219081))

(declare-fun d!1219085 () Bool)

(declare-fun res!1678764 () Bool)

(declare-fun e!2549148 () Bool)

(assert (=> d!1219085 (=> res!1678764 e!2549148)))

(assert (=> d!1219085 (= res!1678764 (is-Nil!44210 (Cons!44210 (h!49630 rTail!27) lt!1467735)))))

(assert (=> d!1219085 (= (noDuplicateTag!2860 thiss!26455 (Cons!44210 (h!49630 rTail!27) lt!1467735) Nil!44211) e!2549148)))

(declare-fun b!4108894 () Bool)

(declare-fun e!2549149 () Bool)

(assert (=> b!4108894 (= e!2549148 e!2549149)))

(declare-fun res!1678765 () Bool)

(assert (=> b!4108894 (=> (not res!1678765) (not e!2549149))))

(declare-fun contains!8866 (List!44335 String!50816) Bool)

(assert (=> b!4108894 (= res!1678765 (not (contains!8866 Nil!44211 (tag!8043 (h!49630 (Cons!44210 (h!49630 rTail!27) lt!1467735))))))))

(declare-fun b!4108895 () Bool)

(assert (=> b!4108895 (= e!2549149 (noDuplicateTag!2860 thiss!26455 (t!339991 (Cons!44210 (h!49630 rTail!27) lt!1467735)) (Cons!44211 (tag!8043 (h!49630 (Cons!44210 (h!49630 rTail!27) lt!1467735))) Nil!44211)))))

(assert (= (and d!1219085 (not res!1678764)) b!4108894))

(assert (= (and b!4108894 res!1678765) b!4108895))

(declare-fun m!4711329 () Bool)

(assert (=> b!4108894 m!4711329))

(declare-fun m!4711331 () Bool)

(assert (=> b!4108895 m!4711331))

(assert (=> b!4108840 d!1219085))

(declare-fun d!1219089 () Bool)

(assert (=> d!1219089 (noDuplicateTag!2860 thiss!26455 (Cons!44210 (h!49630 rTail!27) (Cons!44210 rHead!24 (t!339991 rTail!27))) Nil!44211)))

(declare-fun lt!1467771 () Unit!63678)

(declare-fun choose!25121 (LexerInterface!6772 Rule!14166 Rule!14166 List!44334) Unit!63678)

(assert (=> d!1219089 (= lt!1467771 (choose!25121 thiss!26455 rHead!24 (h!49630 rTail!27) (t!339991 rTail!27)))))

(assert (=> d!1219089 (noDuplicateTag!2860 thiss!26455 (Cons!44210 rHead!24 (Cons!44210 (h!49630 rTail!27) (t!339991 rTail!27))) Nil!44211)))

(assert (=> d!1219089 (= (lemmaNoDuplicateCanReorder!55 thiss!26455 rHead!24 (h!49630 rTail!27) (t!339991 rTail!27)) lt!1467771)))

(declare-fun bs!594174 () Bool)

(assert (= bs!594174 d!1219089))

(declare-fun m!4711337 () Bool)

(assert (=> bs!594174 m!4711337))

(declare-fun m!4711339 () Bool)

(assert (=> bs!594174 m!4711339))

(declare-fun m!4711341 () Bool)

(assert (=> bs!594174 m!4711341))

(assert (=> b!4108840 d!1219089))

(declare-fun d!1219095 () Bool)

(declare-fun res!1678771 () Bool)

(declare-fun e!2549155 () Bool)

(assert (=> d!1219095 (=> (not res!1678771) (not e!2549155))))

(declare-fun rulesValid!2829 (LexerInterface!6772 List!44334) Bool)

(assert (=> d!1219095 (= res!1678771 (rulesValid!2829 thiss!26455 lt!1467741))))

(assert (=> d!1219095 (= (rulesInvariant!6115 thiss!26455 lt!1467741) e!2549155)))

(declare-fun b!4108901 () Bool)

(assert (=> b!4108901 (= e!2549155 (noDuplicateTag!2860 thiss!26455 lt!1467741 Nil!44211))))

(assert (= (and d!1219095 res!1678771) b!4108901))

(declare-fun m!4711343 () Bool)

(assert (=> d!1219095 m!4711343))

(declare-fun m!4711345 () Bool)

(assert (=> b!4108901 m!4711345))

(assert (=> b!4108833 d!1219095))

(declare-fun d!1219105 () Bool)

(assert (=> d!1219105 (= (isEmpty!26394 lt!1467740) (not (is-Some!9548 lt!1467740)))))

(assert (=> b!4108834 d!1219105))

(declare-fun b!4108920 () Bool)

(declare-fun e!2549162 () Bool)

(declare-fun e!2549164 () Bool)

(assert (=> b!4108920 (= e!2549162 e!2549164)))

(declare-fun res!1678788 () Bool)

(assert (=> b!4108920 (=> (not res!1678788) (not e!2549164))))

(declare-fun lt!1467783 () Option!9549)

(declare-fun isDefined!7215 (Option!9549) Bool)

(assert (=> b!4108920 (= res!1678788 (isDefined!7215 lt!1467783))))

(declare-fun b!4108921 () Bool)

(declare-fun res!1678790 () Bool)

(assert (=> b!4108921 (=> (not res!1678790) (not e!2549164))))

(declare-fun size!32882 (List!44332) Int)

(assert (=> b!4108921 (= res!1678790 (< (size!32882 (_2!24599 (get!14469 lt!1467783))) (size!32882 input!3491)))))

(declare-fun b!4108923 () Bool)

(assert (=> b!4108923 (= e!2549164 (contains!8865 (t!339991 rTail!27) (rule!10301 (_1!24599 (get!14469 lt!1467783)))))))

(declare-fun b!4108924 () Bool)

(declare-fun e!2549163 () Option!9549)

(declare-fun lt!1467786 () Option!9549)

(declare-fun lt!1467784 () Option!9549)

(assert (=> b!4108924 (= e!2549163 (ite (and (is-None!9548 lt!1467786) (is-None!9548 lt!1467784)) None!9548 (ite (is-None!9548 lt!1467784) lt!1467786 (ite (is-None!9548 lt!1467786) lt!1467784 (ite (>= (size!32880 (_1!24599 (v!40076 lt!1467786))) (size!32880 (_1!24599 (v!40076 lt!1467784)))) lt!1467786 lt!1467784)))))))

(declare-fun call!289813 () Option!9549)

(assert (=> b!4108924 (= lt!1467786 call!289813)))

(assert (=> b!4108924 (= lt!1467784 (maxPrefix!4022 thiss!26455 (t!339991 (t!339991 rTail!27)) input!3491))))

(declare-fun bm!289808 () Bool)

(declare-fun maxPrefixOneRule!2988 (LexerInterface!6772 Rule!14166 List!44332) Option!9549)

(assert (=> bm!289808 (= call!289813 (maxPrefixOneRule!2988 thiss!26455 (h!49630 (t!339991 rTail!27)) input!3491))))

(declare-fun b!4108925 () Bool)

(declare-fun res!1678791 () Bool)

(assert (=> b!4108925 (=> (not res!1678791) (not e!2549164))))

(declare-fun apply!10314 (TokenValueInjection!14254 BalanceConc!26382) TokenValue!7413)

(declare-fun seqFromList!5348 (List!44332) BalanceConc!26382)

(assert (=> b!4108925 (= res!1678791 (= (value!225329 (_1!24599 (get!14469 lt!1467783))) (apply!10314 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))) (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467783)))))))))

(declare-fun b!4108926 () Bool)

(declare-fun res!1678789 () Bool)

(assert (=> b!4108926 (=> (not res!1678789) (not e!2549164))))

(declare-fun list!16321 (BalanceConc!26382) List!44332)

(declare-fun charsOf!4881 (Token!13412) BalanceConc!26382)

(assert (=> b!4108926 (= res!1678789 (= (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783)))) (originalCharacters!7737 (_1!24599 (get!14469 lt!1467783)))))))

(declare-fun b!4108927 () Bool)

(assert (=> b!4108927 (= e!2549163 call!289813)))

(declare-fun b!4108928 () Bool)

(declare-fun res!1678786 () Bool)

(assert (=> b!4108928 (=> (not res!1678786) (not e!2549164))))

(declare-fun matchR!5977 (Regex!12088 List!44332) Bool)

(assert (=> b!4108928 (= res!1678786 (matchR!5977 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))) (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))))))

(declare-fun d!1219107 () Bool)

(assert (=> d!1219107 e!2549162))

(declare-fun res!1678787 () Bool)

(assert (=> d!1219107 (=> res!1678787 e!2549162)))

(assert (=> d!1219107 (= res!1678787 (isEmpty!26394 lt!1467783))))

(assert (=> d!1219107 (= lt!1467783 e!2549163)))

(declare-fun c!706716 () Bool)

(assert (=> d!1219107 (= c!706716 (and (is-Cons!44210 (t!339991 rTail!27)) (is-Nil!44210 (t!339991 (t!339991 rTail!27)))))))

(declare-fun lt!1467785 () Unit!63678)

(declare-fun lt!1467782 () Unit!63678)

(assert (=> d!1219107 (= lt!1467785 lt!1467782)))

(declare-fun isPrefix!4166 (List!44332 List!44332) Bool)

(assert (=> d!1219107 (isPrefix!4166 input!3491 input!3491)))

(declare-fun lemmaIsPrefixRefl!2717 (List!44332 List!44332) Unit!63678)

(assert (=> d!1219107 (= lt!1467782 (lemmaIsPrefixRefl!2717 input!3491 input!3491))))

(declare-fun rulesValidInductive!2664 (LexerInterface!6772 List!44334) Bool)

(assert (=> d!1219107 (rulesValidInductive!2664 thiss!26455 (t!339991 rTail!27))))

(assert (=> d!1219107 (= (maxPrefix!4022 thiss!26455 (t!339991 rTail!27) input!3491) lt!1467783)))

(declare-fun b!4108922 () Bool)

(declare-fun res!1678792 () Bool)

(assert (=> b!4108922 (=> (not res!1678792) (not e!2549164))))

(declare-fun ++!11537 (List!44332 List!44332) List!44332)

(assert (=> b!4108922 (= res!1678792 (= (++!11537 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783)))) (_2!24599 (get!14469 lt!1467783))) input!3491))))

(assert (= (and d!1219107 c!706716) b!4108927))

(assert (= (and d!1219107 (not c!706716)) b!4108924))

(assert (= (or b!4108927 b!4108924) bm!289808))

(assert (= (and d!1219107 (not res!1678787)) b!4108920))

(assert (= (and b!4108920 res!1678788) b!4108926))

(assert (= (and b!4108926 res!1678789) b!4108921))

(assert (= (and b!4108921 res!1678790) b!4108922))

(assert (= (and b!4108922 res!1678792) b!4108925))

(assert (= (and b!4108925 res!1678791) b!4108928))

(assert (= (and b!4108928 res!1678786) b!4108923))

(declare-fun m!4711347 () Bool)

(assert (=> b!4108924 m!4711347))

(declare-fun m!4711349 () Bool)

(assert (=> b!4108922 m!4711349))

(declare-fun m!4711351 () Bool)

(assert (=> b!4108922 m!4711351))

(assert (=> b!4108922 m!4711351))

(declare-fun m!4711353 () Bool)

(assert (=> b!4108922 m!4711353))

(assert (=> b!4108922 m!4711353))

(declare-fun m!4711355 () Bool)

(assert (=> b!4108922 m!4711355))

(assert (=> b!4108926 m!4711349))

(assert (=> b!4108926 m!4711351))

(assert (=> b!4108926 m!4711351))

(assert (=> b!4108926 m!4711353))

(assert (=> b!4108928 m!4711349))

(assert (=> b!4108928 m!4711351))

(assert (=> b!4108928 m!4711351))

(assert (=> b!4108928 m!4711353))

(assert (=> b!4108928 m!4711353))

(declare-fun m!4711357 () Bool)

(assert (=> b!4108928 m!4711357))

(assert (=> b!4108921 m!4711349))

(declare-fun m!4711359 () Bool)

(assert (=> b!4108921 m!4711359))

(declare-fun m!4711361 () Bool)

(assert (=> b!4108921 m!4711361))

(assert (=> b!4108925 m!4711349))

(declare-fun m!4711363 () Bool)

(assert (=> b!4108925 m!4711363))

(assert (=> b!4108925 m!4711363))

(declare-fun m!4711365 () Bool)

(assert (=> b!4108925 m!4711365))

(declare-fun m!4711367 () Bool)

(assert (=> bm!289808 m!4711367))

(declare-fun m!4711369 () Bool)

(assert (=> b!4108920 m!4711369))

(declare-fun m!4711371 () Bool)

(assert (=> d!1219107 m!4711371))

(declare-fun m!4711373 () Bool)

(assert (=> d!1219107 m!4711373))

(declare-fun m!4711375 () Bool)

(assert (=> d!1219107 m!4711375))

(declare-fun m!4711377 () Bool)

(assert (=> d!1219107 m!4711377))

(assert (=> b!4108923 m!4711349))

(declare-fun m!4711379 () Bool)

(assert (=> b!4108923 m!4711379))

(assert (=> b!4108834 d!1219107))

(declare-fun d!1219109 () Bool)

(declare-fun e!2549173 () Bool)

(assert (=> d!1219109 e!2549173))

(declare-fun res!1678809 () Bool)

(assert (=> d!1219109 (=> res!1678809 e!2549173)))

(assert (=> d!1219109 (= res!1678809 (isEmpty!26394 (maxPrefix!4022 thiss!26455 (t!339991 rTail!27) input!3491)))))

(declare-fun lt!1467799 () Unit!63678)

(declare-fun choose!25122 (LexerInterface!6772 Rule!14166 List!44334 List!44332) Unit!63678)

(assert (=> d!1219109 (= lt!1467799 (choose!25122 thiss!26455 rHead!24 (t!339991 rTail!27) input!3491))))

(assert (=> d!1219109 (not (isEmpty!26395 (t!339991 rTail!27)))))

(assert (=> d!1219109 (= (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!35 thiss!26455 rHead!24 (t!339991 rTail!27) input!3491) lt!1467799)))

(declare-fun b!4108949 () Bool)

(assert (=> b!4108949 (= e!2549173 (not (= (rule!10301 (_1!24599 (get!14469 (maxPrefix!4022 thiss!26455 (t!339991 rTail!27) input!3491)))) rHead!24)))))

(assert (= (and d!1219109 (not res!1678809)) b!4108949))

(assert (=> d!1219109 m!4711251))

(assert (=> d!1219109 m!4711251))

(declare-fun m!4711381 () Bool)

(assert (=> d!1219109 m!4711381))

(declare-fun m!4711383 () Bool)

(assert (=> d!1219109 m!4711383))

(assert (=> d!1219109 m!4711269))

(assert (=> b!4108949 m!4711251))

(assert (=> b!4108949 m!4711251))

(declare-fun m!4711385 () Bool)

(assert (=> b!4108949 m!4711385))

(assert (=> b!4108834 d!1219109))

(declare-fun d!1219111 () Bool)

(assert (=> d!1219111 (= (isEmpty!26394 lt!1467737) (not (is-Some!9548 lt!1467737)))))

(assert (=> b!4108834 d!1219111))

(declare-fun b!4108950 () Bool)

(declare-fun e!2549174 () Bool)

(declare-fun e!2549176 () Bool)

(assert (=> b!4108950 (= e!2549174 e!2549176)))

(declare-fun res!1678812 () Bool)

(assert (=> b!4108950 (=> (not res!1678812) (not e!2549176))))

(declare-fun lt!1467801 () Option!9549)

(assert (=> b!4108950 (= res!1678812 (isDefined!7215 lt!1467801))))

(declare-fun b!4108951 () Bool)

(declare-fun res!1678814 () Bool)

(assert (=> b!4108951 (=> (not res!1678814) (not e!2549176))))

(assert (=> b!4108951 (= res!1678814 (< (size!32882 (_2!24599 (get!14469 lt!1467801))) (size!32882 input!3491)))))

(declare-fun b!4108953 () Bool)

(assert (=> b!4108953 (= e!2549176 (contains!8865 rTail!27 (rule!10301 (_1!24599 (get!14469 lt!1467801)))))))

(declare-fun b!4108954 () Bool)

(declare-fun e!2549175 () Option!9549)

(declare-fun lt!1467804 () Option!9549)

(declare-fun lt!1467802 () Option!9549)

(assert (=> b!4108954 (= e!2549175 (ite (and (is-None!9548 lt!1467804) (is-None!9548 lt!1467802)) None!9548 (ite (is-None!9548 lt!1467802) lt!1467804 (ite (is-None!9548 lt!1467804) lt!1467802 (ite (>= (size!32880 (_1!24599 (v!40076 lt!1467804))) (size!32880 (_1!24599 (v!40076 lt!1467802)))) lt!1467804 lt!1467802)))))))

(declare-fun call!289816 () Option!9549)

(assert (=> b!4108954 (= lt!1467804 call!289816)))

(assert (=> b!4108954 (= lt!1467802 (maxPrefix!4022 thiss!26455 (t!339991 rTail!27) input!3491))))

(declare-fun bm!289811 () Bool)

(assert (=> bm!289811 (= call!289816 (maxPrefixOneRule!2988 thiss!26455 (h!49630 rTail!27) input!3491))))

(declare-fun b!4108955 () Bool)

(declare-fun res!1678815 () Bool)

(assert (=> b!4108955 (=> (not res!1678815) (not e!2549176))))

(assert (=> b!4108955 (= res!1678815 (= (value!225329 (_1!24599 (get!14469 lt!1467801))) (apply!10314 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))) (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467801)))))))))

(declare-fun b!4108956 () Bool)

(declare-fun res!1678813 () Bool)

(assert (=> b!4108956 (=> (not res!1678813) (not e!2549176))))

(assert (=> b!4108956 (= res!1678813 (= (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801)))) (originalCharacters!7737 (_1!24599 (get!14469 lt!1467801)))))))

(declare-fun b!4108957 () Bool)

(assert (=> b!4108957 (= e!2549175 call!289816)))

(declare-fun b!4108958 () Bool)

(declare-fun res!1678810 () Bool)

(assert (=> b!4108958 (=> (not res!1678810) (not e!2549176))))

(assert (=> b!4108958 (= res!1678810 (matchR!5977 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))) (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))))))

(declare-fun d!1219113 () Bool)

(assert (=> d!1219113 e!2549174))

(declare-fun res!1678811 () Bool)

(assert (=> d!1219113 (=> res!1678811 e!2549174)))

(assert (=> d!1219113 (= res!1678811 (isEmpty!26394 lt!1467801))))

(assert (=> d!1219113 (= lt!1467801 e!2549175)))

(declare-fun c!706719 () Bool)

(assert (=> d!1219113 (= c!706719 (and (is-Cons!44210 rTail!27) (is-Nil!44210 (t!339991 rTail!27))))))

(declare-fun lt!1467803 () Unit!63678)

(declare-fun lt!1467800 () Unit!63678)

(assert (=> d!1219113 (= lt!1467803 lt!1467800)))

(assert (=> d!1219113 (isPrefix!4166 input!3491 input!3491)))

(assert (=> d!1219113 (= lt!1467800 (lemmaIsPrefixRefl!2717 input!3491 input!3491))))

(assert (=> d!1219113 (rulesValidInductive!2664 thiss!26455 rTail!27)))

(assert (=> d!1219113 (= (maxPrefix!4022 thiss!26455 rTail!27 input!3491) lt!1467801)))

(declare-fun b!4108952 () Bool)

(declare-fun res!1678816 () Bool)

(assert (=> b!4108952 (=> (not res!1678816) (not e!2549176))))

(assert (=> b!4108952 (= res!1678816 (= (++!11537 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801)))) (_2!24599 (get!14469 lt!1467801))) input!3491))))

(assert (= (and d!1219113 c!706719) b!4108957))

(assert (= (and d!1219113 (not c!706719)) b!4108954))

(assert (= (or b!4108957 b!4108954) bm!289811))

(assert (= (and d!1219113 (not res!1678811)) b!4108950))

(assert (= (and b!4108950 res!1678812) b!4108956))

(assert (= (and b!4108956 res!1678813) b!4108951))

(assert (= (and b!4108951 res!1678814) b!4108952))

(assert (= (and b!4108952 res!1678816) b!4108955))

(assert (= (and b!4108955 res!1678815) b!4108958))

(assert (= (and b!4108958 res!1678810) b!4108953))

(assert (=> b!4108954 m!4711251))

(declare-fun m!4711387 () Bool)

(assert (=> b!4108952 m!4711387))

(declare-fun m!4711389 () Bool)

(assert (=> b!4108952 m!4711389))

(assert (=> b!4108952 m!4711389))

(declare-fun m!4711391 () Bool)

(assert (=> b!4108952 m!4711391))

(assert (=> b!4108952 m!4711391))

(declare-fun m!4711393 () Bool)

(assert (=> b!4108952 m!4711393))

(assert (=> b!4108956 m!4711387))

(assert (=> b!4108956 m!4711389))

(assert (=> b!4108956 m!4711389))

(assert (=> b!4108956 m!4711391))

(assert (=> b!4108958 m!4711387))

(assert (=> b!4108958 m!4711389))

(assert (=> b!4108958 m!4711389))

(assert (=> b!4108958 m!4711391))

(assert (=> b!4108958 m!4711391))

(declare-fun m!4711395 () Bool)

(assert (=> b!4108958 m!4711395))

(assert (=> b!4108951 m!4711387))

(declare-fun m!4711397 () Bool)

(assert (=> b!4108951 m!4711397))

(assert (=> b!4108951 m!4711361))

(assert (=> b!4108955 m!4711387))

(declare-fun m!4711399 () Bool)

(assert (=> b!4108955 m!4711399))

(assert (=> b!4108955 m!4711399))

(declare-fun m!4711401 () Bool)

(assert (=> b!4108955 m!4711401))

(declare-fun m!4711403 () Bool)

(assert (=> bm!289811 m!4711403))

(declare-fun m!4711405 () Bool)

(assert (=> b!4108950 m!4711405))

(declare-fun m!4711407 () Bool)

(assert (=> d!1219113 m!4711407))

(assert (=> d!1219113 m!4711373))

(assert (=> d!1219113 m!4711375))

(declare-fun m!4711409 () Bool)

(assert (=> d!1219113 m!4711409))

(assert (=> b!4108953 m!4711387))

(declare-fun m!4711411 () Bool)

(assert (=> b!4108953 m!4711411))

(assert (=> b!4108834 d!1219113))

(declare-fun d!1219115 () Bool)

(assert (=> d!1219115 (= (isEmpty!26395 rTail!27) (is-Nil!44210 rTail!27))))

(assert (=> b!4108837 d!1219115))

(declare-fun d!1219117 () Bool)

(declare-fun res!1678824 () Bool)

(declare-fun e!2549180 () Bool)

(assert (=> d!1219117 (=> (not res!1678824) (not e!2549180))))

(assert (=> d!1219117 (= res!1678824 (rulesValid!2829 thiss!26455 lt!1467735))))

(assert (=> d!1219117 (= (rulesInvariant!6115 thiss!26455 lt!1467735) e!2549180)))

(declare-fun b!4108968 () Bool)

(assert (=> b!4108968 (= e!2549180 (noDuplicateTag!2860 thiss!26455 lt!1467735 Nil!44211))))

(assert (= (and d!1219117 res!1678824) b!4108968))

(declare-fun m!4711413 () Bool)

(assert (=> d!1219117 m!4711413))

(assert (=> b!4108968 m!4711263))

(assert (=> b!4108832 d!1219117))

(declare-fun d!1219119 () Bool)

(declare-fun res!1678825 () Bool)

(declare-fun e!2549181 () Bool)

(assert (=> d!1219119 (=> res!1678825 e!2549181)))

(assert (=> d!1219119 (= res!1678825 (is-Nil!44210 lt!1467735))))

(assert (=> d!1219119 (= (noDuplicateTag!2860 thiss!26455 lt!1467735 Nil!44211) e!2549181)))

(declare-fun b!4108969 () Bool)

(declare-fun e!2549182 () Bool)

(assert (=> b!4108969 (= e!2549181 e!2549182)))

(declare-fun res!1678826 () Bool)

(assert (=> b!4108969 (=> (not res!1678826) (not e!2549182))))

(assert (=> b!4108969 (= res!1678826 (not (contains!8866 Nil!44211 (tag!8043 (h!49630 lt!1467735)))))))

(declare-fun b!4108970 () Bool)

(assert (=> b!4108970 (= e!2549182 (noDuplicateTag!2860 thiss!26455 (t!339991 lt!1467735) (Cons!44211 (tag!8043 (h!49630 lt!1467735)) Nil!44211)))))

(assert (= (and d!1219119 (not res!1678825)) b!4108969))

(assert (= (and b!4108969 res!1678826) b!4108970))

(declare-fun m!4711415 () Bool)

(assert (=> b!4108969 m!4711415))

(declare-fun m!4711417 () Bool)

(assert (=> b!4108970 m!4711417))

(assert (=> b!4108832 d!1219119))

(declare-fun d!1219121 () Bool)

(assert (=> d!1219121 (noDuplicateTag!2860 thiss!26455 lt!1467735 Nil!44211)))

(declare-fun lt!1467812 () Unit!63678)

(declare-fun choose!25123 (LexerInterface!6772 List!44335 List!44335 List!44334) Unit!63678)

(assert (=> d!1219121 (= lt!1467812 (choose!25123 thiss!26455 (Cons!44211 (tag!8043 (h!49630 rTail!27)) Nil!44211) Nil!44211 lt!1467735))))

(declare-fun subseq!552 (List!44335 List!44335) Bool)

(assert (=> d!1219121 (subseq!552 Nil!44211 (Cons!44211 (tag!8043 (h!49630 rTail!27)) Nil!44211))))

(assert (=> d!1219121 (= (lemmaNoDupTagThenAlsoWithSubListAcc!23 thiss!26455 (Cons!44211 (tag!8043 (h!49630 rTail!27)) Nil!44211) Nil!44211 lt!1467735) lt!1467812)))

(declare-fun bs!594175 () Bool)

(assert (= bs!594175 d!1219121))

(assert (=> bs!594175 m!4711263))

(declare-fun m!4711419 () Bool)

(assert (=> bs!594175 m!4711419))

(declare-fun m!4711421 () Bool)

(assert (=> bs!594175 m!4711421))

(assert (=> b!4108832 d!1219121))

(declare-fun d!1219123 () Bool)

(assert (=> d!1219123 (= (get!14469 lt!1467737) (v!40076 lt!1467737))))

(assert (=> b!4108843 d!1219123))

(declare-fun d!1219125 () Bool)

(assert (=> d!1219125 (= (get!14469 lt!1467740) (v!40076 lt!1467740))))

(assert (=> b!4108838 d!1219125))

(declare-fun b!4108983 () Bool)

(declare-fun e!2549185 () Bool)

(declare-fun tp!1248685 () Bool)

(assert (=> b!4108983 (= e!2549185 tp!1248685)))

(declare-fun b!4108981 () Bool)

(assert (=> b!4108981 (= e!2549185 tp_is_empty!21143)))

(declare-fun b!4108984 () Bool)

(declare-fun tp!1248682 () Bool)

(declare-fun tp!1248684 () Bool)

(assert (=> b!4108984 (= e!2549185 (and tp!1248682 tp!1248684))))

(declare-fun b!4108982 () Bool)

(declare-fun tp!1248681 () Bool)

(declare-fun tp!1248683 () Bool)

(assert (=> b!4108982 (= e!2549185 (and tp!1248681 tp!1248683))))

(assert (=> b!4108831 (= tp!1248645 e!2549185)))

(assert (= (and b!4108831 (is-ElementMatch!12088 (regex!7183 rHead!24))) b!4108981))

(assert (= (and b!4108831 (is-Concat!19501 (regex!7183 rHead!24))) b!4108982))

(assert (= (and b!4108831 (is-Star!12088 (regex!7183 rHead!24))) b!4108983))

(assert (= (and b!4108831 (is-Union!12088 (regex!7183 rHead!24))) b!4108984))

(declare-fun b!4108987 () Bool)

(declare-fun e!2549186 () Bool)

(declare-fun tp!1248690 () Bool)

(assert (=> b!4108987 (= e!2549186 tp!1248690)))

(declare-fun b!4108985 () Bool)

(assert (=> b!4108985 (= e!2549186 tp_is_empty!21143)))

(declare-fun b!4108988 () Bool)

(declare-fun tp!1248687 () Bool)

(declare-fun tp!1248689 () Bool)

(assert (=> b!4108988 (= e!2549186 (and tp!1248687 tp!1248689))))

(declare-fun b!4108986 () Bool)

(declare-fun tp!1248686 () Bool)

(declare-fun tp!1248688 () Bool)

(assert (=> b!4108986 (= e!2549186 (and tp!1248686 tp!1248688))))

(assert (=> b!4108842 (= tp!1248644 e!2549186)))

(assert (= (and b!4108842 (is-ElementMatch!12088 (regex!7183 (h!49630 rTail!27)))) b!4108985))

(assert (= (and b!4108842 (is-Concat!19501 (regex!7183 (h!49630 rTail!27)))) b!4108986))

(assert (= (and b!4108842 (is-Star!12088 (regex!7183 (h!49630 rTail!27)))) b!4108987))

(assert (= (and b!4108842 (is-Union!12088 (regex!7183 (h!49630 rTail!27)))) b!4108988))

(declare-fun b!4108993 () Bool)

(declare-fun e!2549189 () Bool)

(declare-fun tp!1248693 () Bool)

(assert (=> b!4108993 (= e!2549189 (and tp_is_empty!21143 tp!1248693))))

(assert (=> b!4108835 (= tp!1248642 e!2549189)))

(assert (= (and b!4108835 (is-Cons!44208 (t!339989 input!3491))) b!4108993))

(declare-fun b!4109004 () Bool)

(declare-fun b_free!115385 () Bool)

(declare-fun b_next!116089 () Bool)

(assert (=> b!4109004 (= b_free!115385 (not b_next!116089))))

(declare-fun tp!1248705 () Bool)

(declare-fun b_and!317199 () Bool)

(assert (=> b!4109004 (= tp!1248705 b_and!317199)))

(declare-fun b_free!115387 () Bool)

(declare-fun b_next!116091 () Bool)

(assert (=> b!4109004 (= b_free!115387 (not b_next!116091))))

(declare-fun tp!1248702 () Bool)

(declare-fun b_and!317201 () Bool)

(assert (=> b!4109004 (= tp!1248702 b_and!317201)))

(declare-fun e!2549201 () Bool)

(assert (=> b!4109004 (= e!2549201 (and tp!1248705 tp!1248702))))

(declare-fun b!4109003 () Bool)

(declare-fun e!2549198 () Bool)

(declare-fun tp!1248703 () Bool)

(assert (=> b!4109003 (= e!2549198 (and tp!1248703 (inv!58861 (tag!8043 (h!49630 (t!339991 rTail!27)))) (inv!58864 (transformation!7183 (h!49630 (t!339991 rTail!27)))) e!2549201))))

(declare-fun b!4109002 () Bool)

(declare-fun e!2549200 () Bool)

(declare-fun tp!1248704 () Bool)

(assert (=> b!4109002 (= e!2549200 (and e!2549198 tp!1248704))))

(assert (=> b!4108830 (= tp!1248643 e!2549200)))

(assert (= b!4109003 b!4109004))

(assert (= b!4109002 b!4109003))

(assert (= (and b!4108830 (is-Cons!44210 (t!339991 rTail!27))) b!4109002))

(declare-fun m!4711457 () Bool)

(assert (=> b!4109003 m!4711457))

(declare-fun m!4711459 () Bool)

(assert (=> b!4109003 m!4711459))

(push 1)

(assert (not b!4108987))

(assert (not b!4108928))

(assert (not b!4108924))

(assert (not b!4109002))

(assert (not d!1219081))

(assert (not b!4108894))

(assert b_and!317189)

(assert (not d!1219095))

(assert (not b!4108982))

(assert (not b!4108926))

(assert b_and!317199)

(assert (not b!4108955))

(assert (not b!4108888))

(assert (not d!1219073))

(assert (not b!4108921))

(assert (not b_next!116077))

(assert (not b!4108986))

(assert (not b!4108920))

(assert (not d!1219113))

(assert (not b!4108950))

(assert (not bm!289808))

(assert (not b!4108983))

(assert (not d!1219109))

(assert (not b!4108922))

(assert (not d!1219107))

(assert (not bm!289811))

(assert b_and!317187)

(assert b_and!317183)

(assert (not b!4108951))

(assert (not b!4108925))

(assert (not b!4108949))

(assert (not b!4109003))

(assert (not b!4108889))

(assert (not b!4108988))

(assert (not b!4108984))

(assert (not b!4108969))

(assert (not b!4108968))

(assert (not b!4108958))

(assert (not d!1219077))

(assert (not b_next!116073))

(assert (not b_next!116091))

(assert (not b!4108970))

(assert (not d!1219117))

(assert (not b_next!116075))

(assert (not b!4108993))

(assert (not b!4108953))

(assert (not b!4108895))

(assert (not b_next!116089))

(assert b_and!317185)

(assert (not b!4108954))

(assert (not d!1219089))

(assert b_and!317201)

(assert (not b!4108923))

(assert tp_is_empty!21143)

(assert (not b_next!116079))

(assert (not b!4108901))

(assert (not b!4108952))

(assert (not d!1219121))

(assert (not b!4108956))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317199)

(assert (not b_next!116077))

(assert b_and!317189)

(assert (not b_next!116075))

(assert (not b_next!116079))

(assert b_and!317187)

(assert b_and!317183)

(assert (not b_next!116073))

(assert (not b_next!116091))

(assert (not b_next!116089))

(assert b_and!317185)

(assert b_and!317201)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1219151 () Bool)

(declare-fun lt!1467832 () Bool)

(declare-fun content!6814 (List!44334) (Set Rule!14166))

(assert (=> d!1219151 (= lt!1467832 (set.member (rule!10301 (_1!24599 (get!14469 lt!1467801))) (content!6814 rTail!27)))))

(declare-fun e!2549245 () Bool)

(assert (=> d!1219151 (= lt!1467832 e!2549245)))

(declare-fun res!1678857 () Bool)

(assert (=> d!1219151 (=> (not res!1678857) (not e!2549245))))

(assert (=> d!1219151 (= res!1678857 (is-Cons!44210 rTail!27))))

(assert (=> d!1219151 (= (contains!8865 rTail!27 (rule!10301 (_1!24599 (get!14469 lt!1467801)))) lt!1467832)))

(declare-fun b!4109068 () Bool)

(declare-fun e!2549244 () Bool)

(assert (=> b!4109068 (= e!2549245 e!2549244)))

(declare-fun res!1678858 () Bool)

(assert (=> b!4109068 (=> res!1678858 e!2549244)))

(assert (=> b!4109068 (= res!1678858 (= (h!49630 rTail!27) (rule!10301 (_1!24599 (get!14469 lt!1467801)))))))

(declare-fun b!4109069 () Bool)

(assert (=> b!4109069 (= e!2549244 (contains!8865 (t!339991 rTail!27) (rule!10301 (_1!24599 (get!14469 lt!1467801)))))))

(assert (= (and d!1219151 res!1678857) b!4109068))

(assert (= (and b!4109068 (not res!1678858)) b!4109069))

(declare-fun m!4711529 () Bool)

(assert (=> d!1219151 m!4711529))

(declare-fun m!4711531 () Bool)

(assert (=> d!1219151 m!4711531))

(declare-fun m!4711533 () Bool)

(assert (=> b!4109069 m!4711533))

(assert (=> b!4108953 d!1219151))

(declare-fun d!1219153 () Bool)

(assert (=> d!1219153 (= (get!14469 lt!1467801) (v!40076 lt!1467801))))

(assert (=> b!4108953 d!1219153))

(declare-fun d!1219155 () Bool)

(declare-fun lt!1467833 () Bool)

(assert (=> d!1219155 (= lt!1467833 (set.member (rule!10301 (_1!24599 (get!14469 lt!1467783))) (content!6814 (t!339991 rTail!27))))))

(declare-fun e!2549247 () Bool)

(assert (=> d!1219155 (= lt!1467833 e!2549247)))

(declare-fun res!1678859 () Bool)

(assert (=> d!1219155 (=> (not res!1678859) (not e!2549247))))

(assert (=> d!1219155 (= res!1678859 (is-Cons!44210 (t!339991 rTail!27)))))

(assert (=> d!1219155 (= (contains!8865 (t!339991 rTail!27) (rule!10301 (_1!24599 (get!14469 lt!1467783)))) lt!1467833)))

(declare-fun b!4109070 () Bool)

(declare-fun e!2549246 () Bool)

(assert (=> b!4109070 (= e!2549247 e!2549246)))

(declare-fun res!1678860 () Bool)

(assert (=> b!4109070 (=> res!1678860 e!2549246)))

(assert (=> b!4109070 (= res!1678860 (= (h!49630 (t!339991 rTail!27)) (rule!10301 (_1!24599 (get!14469 lt!1467783)))))))

(declare-fun b!4109071 () Bool)

(assert (=> b!4109071 (= e!2549246 (contains!8865 (t!339991 (t!339991 rTail!27)) (rule!10301 (_1!24599 (get!14469 lt!1467783)))))))

(assert (= (and d!1219155 res!1678859) b!4109070))

(assert (= (and b!4109070 (not res!1678860)) b!4109071))

(declare-fun m!4711535 () Bool)

(assert (=> d!1219155 m!4711535))

(declare-fun m!4711537 () Bool)

(assert (=> d!1219155 m!4711537))

(declare-fun m!4711539 () Bool)

(assert (=> b!4109071 m!4711539))

(assert (=> b!4108923 d!1219155))

(declare-fun d!1219157 () Bool)

(assert (=> d!1219157 (= (get!14469 lt!1467783) (v!40076 lt!1467783))))

(assert (=> b!4108923 d!1219157))

(declare-fun d!1219159 () Bool)

(assert (=> d!1219159 true))

(declare-fun lt!1467848 () Bool)

(assert (=> d!1219159 (= lt!1467848 (rulesValidInductive!2664 thiss!26455 lt!1467735))))

(declare-fun lambda!128378 () Int)

(declare-fun forall!8432 (List!44334 Int) Bool)

(assert (=> d!1219159 (= lt!1467848 (forall!8432 lt!1467735 lambda!128378))))

(assert (=> d!1219159 (= (rulesValid!2829 thiss!26455 lt!1467735) lt!1467848)))

(declare-fun bs!594183 () Bool)

(assert (= bs!594183 d!1219159))

(declare-fun m!4711587 () Bool)

(assert (=> bs!594183 m!4711587))

(declare-fun m!4711589 () Bool)

(assert (=> bs!594183 m!4711589))

(assert (=> d!1219117 d!1219159))

(declare-fun b!4109153 () Bool)

(declare-fun res!1678923 () Bool)

(declare-fun e!2549295 () Bool)

(assert (=> b!4109153 (=> (not res!1678923) (not e!2549295))))

(declare-fun lt!1467853 () List!44332)

(assert (=> b!4109153 (= res!1678923 (= (size!32882 lt!1467853) (+ (size!32882 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))) (size!32882 (_2!24599 (get!14469 lt!1467801))))))))

(declare-fun d!1219187 () Bool)

(assert (=> d!1219187 e!2549295))

(declare-fun res!1678924 () Bool)

(assert (=> d!1219187 (=> (not res!1678924) (not e!2549295))))

(declare-fun content!6815 (List!44332) (Set C!24362))

(assert (=> d!1219187 (= res!1678924 (= (content!6815 lt!1467853) (set.union (content!6815 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))) (content!6815 (_2!24599 (get!14469 lt!1467801))))))))

(declare-fun e!2549296 () List!44332)

(assert (=> d!1219187 (= lt!1467853 e!2549296)))

(declare-fun c!706733 () Bool)

(assert (=> d!1219187 (= c!706733 (is-Nil!44208 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))))))

(assert (=> d!1219187 (= (++!11537 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801)))) (_2!24599 (get!14469 lt!1467801))) lt!1467853)))

(declare-fun b!4109151 () Bool)

(assert (=> b!4109151 (= e!2549296 (_2!24599 (get!14469 lt!1467801)))))

(declare-fun b!4109154 () Bool)

(assert (=> b!4109154 (= e!2549295 (or (not (= (_2!24599 (get!14469 lt!1467801)) Nil!44208)) (= lt!1467853 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801)))))))))

(declare-fun b!4109152 () Bool)

(assert (=> b!4109152 (= e!2549296 (Cons!44208 (h!49628 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))) (++!11537 (t!339989 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))) (_2!24599 (get!14469 lt!1467801)))))))

(assert (= (and d!1219187 c!706733) b!4109151))

(assert (= (and d!1219187 (not c!706733)) b!4109152))

(assert (= (and d!1219187 res!1678924) b!4109153))

(assert (= (and b!4109153 res!1678923) b!4109154))

(declare-fun m!4711591 () Bool)

(assert (=> b!4109153 m!4711591))

(assert (=> b!4109153 m!4711391))

(declare-fun m!4711593 () Bool)

(assert (=> b!4109153 m!4711593))

(assert (=> b!4109153 m!4711397))

(declare-fun m!4711595 () Bool)

(assert (=> d!1219187 m!4711595))

(assert (=> d!1219187 m!4711391))

(declare-fun m!4711597 () Bool)

(assert (=> d!1219187 m!4711597))

(declare-fun m!4711599 () Bool)

(assert (=> d!1219187 m!4711599))

(declare-fun m!4711601 () Bool)

(assert (=> b!4109152 m!4711601))

(assert (=> b!4108952 d!1219187))

(declare-fun d!1219189 () Bool)

(declare-fun list!16323 (Conc!13394) List!44332)

(assert (=> d!1219189 (= (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801)))) (list!16323 (c!706710 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))))))

(declare-fun bs!594184 () Bool)

(assert (= bs!594184 d!1219189))

(declare-fun m!4711603 () Bool)

(assert (=> bs!594184 m!4711603))

(assert (=> b!4108952 d!1219189))

(declare-fun d!1219191 () Bool)

(declare-fun lt!1467856 () BalanceConc!26382)

(assert (=> d!1219191 (= (list!16321 lt!1467856) (originalCharacters!7737 (_1!24599 (get!14469 lt!1467801))))))

(declare-fun dynLambda!18910 (Int TokenValue!7413) BalanceConc!26382)

(assert (=> d!1219191 (= lt!1467856 (dynLambda!18910 (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801))))) (value!225329 (_1!24599 (get!14469 lt!1467801)))))))

(assert (=> d!1219191 (= (charsOf!4881 (_1!24599 (get!14469 lt!1467801))) lt!1467856)))

(declare-fun b_lambda!120609 () Bool)

(assert (=> (not b_lambda!120609) (not d!1219191)))

(declare-fun tb!246887 () Bool)

(declare-fun t!340004 () Bool)

(assert (=> (and b!4108841 (= (toChars!9666 (transformation!7183 (h!49630 rTail!27))) (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))))) t!340004) tb!246887))

(declare-fun b!4109159 () Bool)

(declare-fun e!2549299 () Bool)

(declare-fun tp!1248746 () Bool)

(declare-fun inv!58866 (Conc!13394) Bool)

(assert (=> b!4109159 (= e!2549299 (and (inv!58866 (c!706710 (dynLambda!18910 (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801))))) (value!225329 (_1!24599 (get!14469 lt!1467801)))))) tp!1248746))))

(declare-fun result!299726 () Bool)

(declare-fun inv!58867 (BalanceConc!26382) Bool)

(assert (=> tb!246887 (= result!299726 (and (inv!58867 (dynLambda!18910 (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801))))) (value!225329 (_1!24599 (get!14469 lt!1467801))))) e!2549299))))

(assert (= tb!246887 b!4109159))

(declare-fun m!4711605 () Bool)

(assert (=> b!4109159 m!4711605))

(declare-fun m!4711607 () Bool)

(assert (=> tb!246887 m!4711607))

(assert (=> d!1219191 t!340004))

(declare-fun b_and!317213 () Bool)

(assert (= b_and!317185 (and (=> t!340004 result!299726) b_and!317213)))

(declare-fun tb!246889 () Bool)

(declare-fun t!340006 () Bool)

(assert (=> (and b!4108839 (= (toChars!9666 (transformation!7183 rHead!24)) (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))))) t!340006) tb!246889))

(declare-fun result!299730 () Bool)

(assert (= result!299730 result!299726))

(assert (=> d!1219191 t!340006))

(declare-fun b_and!317215 () Bool)

(assert (= b_and!317189 (and (=> t!340006 result!299730) b_and!317215)))

(declare-fun t!340008 () Bool)

(declare-fun tb!246891 () Bool)

(assert (=> (and b!4109004 (= (toChars!9666 (transformation!7183 (h!49630 (t!339991 rTail!27)))) (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))))) t!340008) tb!246891))

(declare-fun result!299732 () Bool)

(assert (= result!299732 result!299726))

(assert (=> d!1219191 t!340008))

(declare-fun b_and!317217 () Bool)

(assert (= b_and!317201 (and (=> t!340008 result!299732) b_and!317217)))

(declare-fun m!4711609 () Bool)

(assert (=> d!1219191 m!4711609))

(declare-fun m!4711611 () Bool)

(assert (=> d!1219191 m!4711611))

(assert (=> b!4108952 d!1219191))

(assert (=> b!4108952 d!1219153))

(declare-fun b!4109178 () Bool)

(declare-fun res!1678939 () Bool)

(declare-fun e!2549311 () Bool)

(assert (=> b!4109178 (=> (not res!1678939) (not e!2549311))))

(declare-fun lt!1467870 () Option!9549)

(assert (=> b!4109178 (= res!1678939 (= (++!11537 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467870)))) (_2!24599 (get!14469 lt!1467870))) input!3491))))

(declare-fun d!1219193 () Bool)

(declare-fun e!2549309 () Bool)

(assert (=> d!1219193 e!2549309))

(declare-fun res!1678945 () Bool)

(assert (=> d!1219193 (=> res!1678945 e!2549309)))

(assert (=> d!1219193 (= res!1678945 (isEmpty!26394 lt!1467870))))

(declare-fun e!2549308 () Option!9549)

(assert (=> d!1219193 (= lt!1467870 e!2549308)))

(declare-fun c!706736 () Bool)

(declare-datatypes ((tuple2!42934 0))(
  ( (tuple2!42935 (_1!24601 List!44332) (_2!24601 List!44332)) )
))
(declare-fun lt!1467867 () tuple2!42934)

(declare-fun isEmpty!26398 (List!44332) Bool)

(assert (=> d!1219193 (= c!706736 (isEmpty!26398 (_1!24601 lt!1467867)))))

(declare-fun findLongestMatch!1390 (Regex!12088 List!44332) tuple2!42934)

(assert (=> d!1219193 (= lt!1467867 (findLongestMatch!1390 (regex!7183 (h!49630 (t!339991 rTail!27))) input!3491))))

(declare-fun ruleValid!3052 (LexerInterface!6772 Rule!14166) Bool)

(assert (=> d!1219193 (ruleValid!3052 thiss!26455 (h!49630 (t!339991 rTail!27)))))

(assert (=> d!1219193 (= (maxPrefixOneRule!2988 thiss!26455 (h!49630 (t!339991 rTail!27)) input!3491) lt!1467870)))

(declare-fun b!4109179 () Bool)

(declare-fun res!1678942 () Bool)

(assert (=> b!4109179 (=> (not res!1678942) (not e!2549311))))

(assert (=> b!4109179 (= res!1678942 (< (size!32882 (_2!24599 (get!14469 lt!1467870))) (size!32882 input!3491)))))

(declare-fun b!4109180 () Bool)

(assert (=> b!4109180 (= e!2549311 (= (size!32880 (_1!24599 (get!14469 lt!1467870))) (size!32882 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467870))))))))

(declare-fun b!4109181 () Bool)

(declare-fun res!1678943 () Bool)

(assert (=> b!4109181 (=> (not res!1678943) (not e!2549311))))

(assert (=> b!4109181 (= res!1678943 (= (value!225329 (_1!24599 (get!14469 lt!1467870))) (apply!10314 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467870)))) (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467870)))))))))

(declare-fun b!4109182 () Bool)

(assert (=> b!4109182 (= e!2549309 e!2549311)))

(declare-fun res!1678944 () Bool)

(assert (=> b!4109182 (=> (not res!1678944) (not e!2549311))))

(assert (=> b!4109182 (= res!1678944 (matchR!5977 (regex!7183 (h!49630 (t!339991 rTail!27))) (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467870))))))))

(declare-fun b!4109183 () Bool)

(declare-fun e!2549310 () Bool)

(declare-fun findLongestMatchInner!1477 (Regex!12088 List!44332 Int List!44332 List!44332 Int) tuple2!42934)

(assert (=> b!4109183 (= e!2549310 (matchR!5977 (regex!7183 (h!49630 (t!339991 rTail!27))) (_1!24601 (findLongestMatchInner!1477 (regex!7183 (h!49630 (t!339991 rTail!27))) Nil!44208 (size!32882 Nil!44208) input!3491 input!3491 (size!32882 input!3491)))))))

(declare-fun b!4109184 () Bool)

(assert (=> b!4109184 (= e!2549308 None!9548)))

(declare-fun b!4109185 () Bool)

(declare-fun size!32884 (BalanceConc!26382) Int)

(assert (=> b!4109185 (= e!2549308 (Some!9548 (tuple2!42931 (Token!13413 (apply!10314 (transformation!7183 (h!49630 (t!339991 rTail!27))) (seqFromList!5348 (_1!24601 lt!1467867))) (h!49630 (t!339991 rTail!27)) (size!32884 (seqFromList!5348 (_1!24601 lt!1467867))) (_1!24601 lt!1467867)) (_2!24601 lt!1467867))))))

(declare-fun lt!1467871 () Unit!63678)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1450 (Regex!12088 List!44332) Unit!63678)

(assert (=> b!4109185 (= lt!1467871 (longestMatchIsAcceptedByMatchOrIsEmpty!1450 (regex!7183 (h!49630 (t!339991 rTail!27))) input!3491))))

(declare-fun res!1678940 () Bool)

(assert (=> b!4109185 (= res!1678940 (isEmpty!26398 (_1!24601 (findLongestMatchInner!1477 (regex!7183 (h!49630 (t!339991 rTail!27))) Nil!44208 (size!32882 Nil!44208) input!3491 input!3491 (size!32882 input!3491)))))))

(assert (=> b!4109185 (=> res!1678940 e!2549310)))

(assert (=> b!4109185 e!2549310))

(declare-fun lt!1467869 () Unit!63678)

(assert (=> b!4109185 (= lt!1467869 lt!1467871)))

(declare-fun lt!1467868 () Unit!63678)

(declare-fun lemmaSemiInverse!2090 (TokenValueInjection!14254 BalanceConc!26382) Unit!63678)

(assert (=> b!4109185 (= lt!1467868 (lemmaSemiInverse!2090 (transformation!7183 (h!49630 (t!339991 rTail!27))) (seqFromList!5348 (_1!24601 lt!1467867))))))

(declare-fun b!4109186 () Bool)

(declare-fun res!1678941 () Bool)

(assert (=> b!4109186 (=> (not res!1678941) (not e!2549311))))

(assert (=> b!4109186 (= res!1678941 (= (rule!10301 (_1!24599 (get!14469 lt!1467870))) (h!49630 (t!339991 rTail!27))))))

(assert (= (and d!1219193 c!706736) b!4109184))

(assert (= (and d!1219193 (not c!706736)) b!4109185))

(assert (= (and b!4109185 (not res!1678940)) b!4109183))

(assert (= (and d!1219193 (not res!1678945)) b!4109182))

(assert (= (and b!4109182 res!1678944) b!4109178))

(assert (= (and b!4109178 res!1678939) b!4109179))

(assert (= (and b!4109179 res!1678942) b!4109186))

(assert (= (and b!4109186 res!1678941) b!4109181))

(assert (= (and b!4109181 res!1678943) b!4109180))

(declare-fun m!4711613 () Bool)

(assert (=> b!4109181 m!4711613))

(declare-fun m!4711615 () Bool)

(assert (=> b!4109181 m!4711615))

(assert (=> b!4109181 m!4711615))

(declare-fun m!4711617 () Bool)

(assert (=> b!4109181 m!4711617))

(declare-fun m!4711619 () Bool)

(assert (=> d!1219193 m!4711619))

(declare-fun m!4711621 () Bool)

(assert (=> d!1219193 m!4711621))

(declare-fun m!4711623 () Bool)

(assert (=> d!1219193 m!4711623))

(declare-fun m!4711625 () Bool)

(assert (=> d!1219193 m!4711625))

(assert (=> b!4109179 m!4711613))

(declare-fun m!4711627 () Bool)

(assert (=> b!4109179 m!4711627))

(assert (=> b!4109179 m!4711361))

(declare-fun m!4711629 () Bool)

(assert (=> b!4109183 m!4711629))

(assert (=> b!4109183 m!4711361))

(assert (=> b!4109183 m!4711629))

(assert (=> b!4109183 m!4711361))

(declare-fun m!4711631 () Bool)

(assert (=> b!4109183 m!4711631))

(declare-fun m!4711633 () Bool)

(assert (=> b!4109183 m!4711633))

(declare-fun m!4711635 () Bool)

(assert (=> b!4109185 m!4711635))

(assert (=> b!4109185 m!4711629))

(assert (=> b!4109185 m!4711361))

(declare-fun m!4711637 () Bool)

(assert (=> b!4109185 m!4711637))

(declare-fun m!4711639 () Bool)

(assert (=> b!4109185 m!4711639))

(assert (=> b!4109185 m!4711639))

(declare-fun m!4711641 () Bool)

(assert (=> b!4109185 m!4711641))

(assert (=> b!4109185 m!4711639))

(declare-fun m!4711643 () Bool)

(assert (=> b!4109185 m!4711643))

(assert (=> b!4109185 m!4711629))

(assert (=> b!4109185 m!4711361))

(assert (=> b!4109185 m!4711631))

(assert (=> b!4109185 m!4711639))

(declare-fun m!4711645 () Bool)

(assert (=> b!4109185 m!4711645))

(assert (=> b!4109178 m!4711613))

(declare-fun m!4711647 () Bool)

(assert (=> b!4109178 m!4711647))

(assert (=> b!4109178 m!4711647))

(declare-fun m!4711649 () Bool)

(assert (=> b!4109178 m!4711649))

(assert (=> b!4109178 m!4711649))

(declare-fun m!4711651 () Bool)

(assert (=> b!4109178 m!4711651))

(assert (=> b!4109186 m!4711613))

(assert (=> b!4109182 m!4711613))

(assert (=> b!4109182 m!4711647))

(assert (=> b!4109182 m!4711647))

(assert (=> b!4109182 m!4711649))

(assert (=> b!4109182 m!4711649))

(declare-fun m!4711653 () Bool)

(assert (=> b!4109182 m!4711653))

(assert (=> b!4109180 m!4711613))

(declare-fun m!4711655 () Bool)

(assert (=> b!4109180 m!4711655))

(assert (=> bm!289808 d!1219193))

(assert (=> b!4108954 d!1219107))

(declare-fun d!1219195 () Bool)

(assert (=> d!1219195 true))

(declare-fun lambda!128381 () Int)

(declare-fun order!23265 () Int)

(declare-fun order!23263 () Int)

(declare-fun dynLambda!18911 (Int Int) Int)

(declare-fun dynLambda!18912 (Int Int) Int)

(assert (=> d!1219195 (< (dynLambda!18911 order!23263 (toChars!9666 (transformation!7183 rHead!24))) (dynLambda!18912 order!23265 lambda!128381))))

(assert (=> d!1219195 true))

(declare-fun order!23267 () Int)

(declare-fun dynLambda!18913 (Int Int) Int)

(assert (=> d!1219195 (< (dynLambda!18913 order!23267 (toValue!9807 (transformation!7183 rHead!24))) (dynLambda!18912 order!23265 lambda!128381))))

(declare-fun Forall!1532 (Int) Bool)

(assert (=> d!1219195 (= (semiInverseModEq!3094 (toChars!9666 (transformation!7183 rHead!24)) (toValue!9807 (transformation!7183 rHead!24))) (Forall!1532 lambda!128381))))

(declare-fun bs!594185 () Bool)

(assert (= bs!594185 d!1219195))

(declare-fun m!4711657 () Bool)

(assert (=> bs!594185 m!4711657))

(assert (=> d!1219073 d!1219195))

(declare-fun d!1219197 () Bool)

(assert (=> d!1219197 true))

(declare-fun lambda!128384 () Int)

(declare-fun order!23269 () Int)

(declare-fun dynLambda!18914 (Int Int) Int)

(assert (=> d!1219197 (< (dynLambda!18913 order!23267 (toValue!9807 (transformation!7183 (h!49630 rTail!27)))) (dynLambda!18914 order!23269 lambda!128384))))

(declare-fun Forall2!1131 (Int) Bool)

(assert (=> d!1219197 (= (equivClasses!2993 (toChars!9666 (transformation!7183 (h!49630 rTail!27))) (toValue!9807 (transformation!7183 (h!49630 rTail!27)))) (Forall2!1131 lambda!128384))))

(declare-fun bs!594186 () Bool)

(assert (= bs!594186 d!1219197))

(declare-fun m!4711659 () Bool)

(assert (=> bs!594186 m!4711659))

(assert (=> b!4108889 d!1219197))

(declare-fun b!4109195 () Bool)

(declare-fun e!2549314 () Bool)

(declare-fun e!2549316 () Bool)

(assert (=> b!4109195 (= e!2549314 e!2549316)))

(declare-fun res!1678950 () Bool)

(assert (=> b!4109195 (=> (not res!1678950) (not e!2549316))))

(declare-fun lt!1467873 () Option!9549)

(assert (=> b!4109195 (= res!1678950 (isDefined!7215 lt!1467873))))

(declare-fun b!4109196 () Bool)

(declare-fun res!1678952 () Bool)

(assert (=> b!4109196 (=> (not res!1678952) (not e!2549316))))

(assert (=> b!4109196 (= res!1678952 (< (size!32882 (_2!24599 (get!14469 lt!1467873))) (size!32882 input!3491)))))

(declare-fun b!4109198 () Bool)

(assert (=> b!4109198 (= e!2549316 (contains!8865 (t!339991 (t!339991 rTail!27)) (rule!10301 (_1!24599 (get!14469 lt!1467873)))))))

(declare-fun b!4109199 () Bool)

(declare-fun e!2549315 () Option!9549)

(declare-fun lt!1467876 () Option!9549)

(declare-fun lt!1467874 () Option!9549)

(assert (=> b!4109199 (= e!2549315 (ite (and (is-None!9548 lt!1467876) (is-None!9548 lt!1467874)) None!9548 (ite (is-None!9548 lt!1467874) lt!1467876 (ite (is-None!9548 lt!1467876) lt!1467874 (ite (>= (size!32880 (_1!24599 (v!40076 lt!1467876))) (size!32880 (_1!24599 (v!40076 lt!1467874)))) lt!1467876 lt!1467874)))))))

(declare-fun call!289822 () Option!9549)

(assert (=> b!4109199 (= lt!1467876 call!289822)))

(assert (=> b!4109199 (= lt!1467874 (maxPrefix!4022 thiss!26455 (t!339991 (t!339991 (t!339991 rTail!27))) input!3491))))

(declare-fun bm!289817 () Bool)

(assert (=> bm!289817 (= call!289822 (maxPrefixOneRule!2988 thiss!26455 (h!49630 (t!339991 (t!339991 rTail!27))) input!3491))))

(declare-fun b!4109200 () Bool)

(declare-fun res!1678953 () Bool)

(assert (=> b!4109200 (=> (not res!1678953) (not e!2549316))))

(assert (=> b!4109200 (= res!1678953 (= (value!225329 (_1!24599 (get!14469 lt!1467873))) (apply!10314 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467873)))) (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467873)))))))))

(declare-fun b!4109201 () Bool)

(declare-fun res!1678951 () Bool)

(assert (=> b!4109201 (=> (not res!1678951) (not e!2549316))))

(assert (=> b!4109201 (= res!1678951 (= (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467873)))) (originalCharacters!7737 (_1!24599 (get!14469 lt!1467873)))))))

(declare-fun b!4109202 () Bool)

(assert (=> b!4109202 (= e!2549315 call!289822)))

(declare-fun b!4109203 () Bool)

(declare-fun res!1678948 () Bool)

(assert (=> b!4109203 (=> (not res!1678948) (not e!2549316))))

(assert (=> b!4109203 (= res!1678948 (matchR!5977 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467873)))) (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467873))))))))

(declare-fun d!1219199 () Bool)

(assert (=> d!1219199 e!2549314))

(declare-fun res!1678949 () Bool)

(assert (=> d!1219199 (=> res!1678949 e!2549314)))

(assert (=> d!1219199 (= res!1678949 (isEmpty!26394 lt!1467873))))

(assert (=> d!1219199 (= lt!1467873 e!2549315)))

(declare-fun c!706737 () Bool)

(assert (=> d!1219199 (= c!706737 (and (is-Cons!44210 (t!339991 (t!339991 rTail!27))) (is-Nil!44210 (t!339991 (t!339991 (t!339991 rTail!27))))))))

(declare-fun lt!1467875 () Unit!63678)

(declare-fun lt!1467872 () Unit!63678)

(assert (=> d!1219199 (= lt!1467875 lt!1467872)))

(assert (=> d!1219199 (isPrefix!4166 input!3491 input!3491)))

(assert (=> d!1219199 (= lt!1467872 (lemmaIsPrefixRefl!2717 input!3491 input!3491))))

(assert (=> d!1219199 (rulesValidInductive!2664 thiss!26455 (t!339991 (t!339991 rTail!27)))))

(assert (=> d!1219199 (= (maxPrefix!4022 thiss!26455 (t!339991 (t!339991 rTail!27)) input!3491) lt!1467873)))

(declare-fun b!4109197 () Bool)

(declare-fun res!1678954 () Bool)

(assert (=> b!4109197 (=> (not res!1678954) (not e!2549316))))

(assert (=> b!4109197 (= res!1678954 (= (++!11537 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467873)))) (_2!24599 (get!14469 lt!1467873))) input!3491))))

(assert (= (and d!1219199 c!706737) b!4109202))

(assert (= (and d!1219199 (not c!706737)) b!4109199))

(assert (= (or b!4109202 b!4109199) bm!289817))

(assert (= (and d!1219199 (not res!1678949)) b!4109195))

(assert (= (and b!4109195 res!1678950) b!4109201))

(assert (= (and b!4109201 res!1678951) b!4109196))

(assert (= (and b!4109196 res!1678952) b!4109197))

(assert (= (and b!4109197 res!1678954) b!4109200))

(assert (= (and b!4109200 res!1678953) b!4109203))

(assert (= (and b!4109203 res!1678948) b!4109198))

(declare-fun m!4711661 () Bool)

(assert (=> b!4109199 m!4711661))

(declare-fun m!4711663 () Bool)

(assert (=> b!4109197 m!4711663))

(declare-fun m!4711665 () Bool)

(assert (=> b!4109197 m!4711665))

(assert (=> b!4109197 m!4711665))

(declare-fun m!4711667 () Bool)

(assert (=> b!4109197 m!4711667))

(assert (=> b!4109197 m!4711667))

(declare-fun m!4711669 () Bool)

(assert (=> b!4109197 m!4711669))

(assert (=> b!4109201 m!4711663))

(assert (=> b!4109201 m!4711665))

(assert (=> b!4109201 m!4711665))

(assert (=> b!4109201 m!4711667))

(assert (=> b!4109203 m!4711663))

(assert (=> b!4109203 m!4711665))

(assert (=> b!4109203 m!4711665))

(assert (=> b!4109203 m!4711667))

(assert (=> b!4109203 m!4711667))

(declare-fun m!4711671 () Bool)

(assert (=> b!4109203 m!4711671))

(assert (=> b!4109196 m!4711663))

(declare-fun m!4711673 () Bool)

(assert (=> b!4109196 m!4711673))

(assert (=> b!4109196 m!4711361))

(assert (=> b!4109200 m!4711663))

(declare-fun m!4711675 () Bool)

(assert (=> b!4109200 m!4711675))

(assert (=> b!4109200 m!4711675))

(declare-fun m!4711677 () Bool)

(assert (=> b!4109200 m!4711677))

(declare-fun m!4711679 () Bool)

(assert (=> bm!289817 m!4711679))

(declare-fun m!4711681 () Bool)

(assert (=> b!4109195 m!4711681))

(declare-fun m!4711683 () Bool)

(assert (=> d!1219199 m!4711683))

(assert (=> d!1219199 m!4711373))

(assert (=> d!1219199 m!4711375))

(declare-fun m!4711685 () Bool)

(assert (=> d!1219199 m!4711685))

(assert (=> b!4109198 m!4711663))

(declare-fun m!4711687 () Bool)

(assert (=> b!4109198 m!4711687))

(assert (=> b!4108924 d!1219199))

(declare-fun d!1219201 () Bool)

(assert (=> d!1219201 (= (isEmpty!26394 (maxPrefix!4022 thiss!26455 (t!339991 rTail!27) input!3491)) (not (is-Some!9548 (maxPrefix!4022 thiss!26455 (t!339991 rTail!27) input!3491))))))

(assert (=> d!1219109 d!1219201))

(assert (=> d!1219109 d!1219107))

(declare-fun d!1219203 () Bool)

(declare-fun e!2549319 () Bool)

(assert (=> d!1219203 e!2549319))

(declare-fun res!1678957 () Bool)

(assert (=> d!1219203 (=> res!1678957 e!2549319)))

(assert (=> d!1219203 (= res!1678957 (isEmpty!26394 (maxPrefix!4022 thiss!26455 (t!339991 rTail!27) input!3491)))))

(assert (=> d!1219203 true))

(declare-fun _$60!840 () Unit!63678)

(assert (=> d!1219203 (= (choose!25122 thiss!26455 rHead!24 (t!339991 rTail!27) input!3491) _$60!840)))

(declare-fun b!4109206 () Bool)

(assert (=> b!4109206 (= e!2549319 (not (= (rule!10301 (_1!24599 (get!14469 (maxPrefix!4022 thiss!26455 (t!339991 rTail!27) input!3491)))) rHead!24)))))

(assert (= (and d!1219203 (not res!1678957)) b!4109206))

(assert (=> d!1219203 m!4711251))

(assert (=> d!1219203 m!4711251))

(assert (=> d!1219203 m!4711381))

(assert (=> b!4109206 m!4711251))

(assert (=> b!4109206 m!4711251))

(assert (=> b!4109206 m!4711385))

(assert (=> d!1219109 d!1219203))

(assert (=> d!1219109 d!1219079))

(declare-fun d!1219205 () Bool)

(assert (=> d!1219205 (= (isEmpty!26394 lt!1467801) (not (is-Some!9548 lt!1467801)))))

(assert (=> d!1219113 d!1219205))

(declare-fun d!1219207 () Bool)

(declare-fun e!2549327 () Bool)

(assert (=> d!1219207 e!2549327))

(declare-fun res!1678969 () Bool)

(assert (=> d!1219207 (=> res!1678969 e!2549327)))

(declare-fun lt!1467879 () Bool)

(assert (=> d!1219207 (= res!1678969 (not lt!1467879))))

(declare-fun e!2549326 () Bool)

(assert (=> d!1219207 (= lt!1467879 e!2549326)))

(declare-fun res!1678967 () Bool)

(assert (=> d!1219207 (=> res!1678967 e!2549326)))

(assert (=> d!1219207 (= res!1678967 (is-Nil!44208 input!3491))))

(assert (=> d!1219207 (= (isPrefix!4166 input!3491 input!3491) lt!1467879)))

(declare-fun b!4109218 () Bool)

(assert (=> b!4109218 (= e!2549327 (>= (size!32882 input!3491) (size!32882 input!3491)))))

(declare-fun b!4109215 () Bool)

(declare-fun e!2549328 () Bool)

(assert (=> b!4109215 (= e!2549326 e!2549328)))

(declare-fun res!1678966 () Bool)

(assert (=> b!4109215 (=> (not res!1678966) (not e!2549328))))

(assert (=> b!4109215 (= res!1678966 (not (is-Nil!44208 input!3491)))))

(declare-fun b!4109217 () Bool)

(declare-fun tail!6399 (List!44332) List!44332)

(assert (=> b!4109217 (= e!2549328 (isPrefix!4166 (tail!6399 input!3491) (tail!6399 input!3491)))))

(declare-fun b!4109216 () Bool)

(declare-fun res!1678968 () Bool)

(assert (=> b!4109216 (=> (not res!1678968) (not e!2549328))))

(declare-fun head!8665 (List!44332) C!24362)

(assert (=> b!4109216 (= res!1678968 (= (head!8665 input!3491) (head!8665 input!3491)))))

(assert (= (and d!1219207 (not res!1678967)) b!4109215))

(assert (= (and b!4109215 res!1678966) b!4109216))

(assert (= (and b!4109216 res!1678968) b!4109217))

(assert (= (and d!1219207 (not res!1678969)) b!4109218))

(assert (=> b!4109218 m!4711361))

(assert (=> b!4109218 m!4711361))

(declare-fun m!4711689 () Bool)

(assert (=> b!4109217 m!4711689))

(assert (=> b!4109217 m!4711689))

(assert (=> b!4109217 m!4711689))

(assert (=> b!4109217 m!4711689))

(declare-fun m!4711691 () Bool)

(assert (=> b!4109217 m!4711691))

(declare-fun m!4711693 () Bool)

(assert (=> b!4109216 m!4711693))

(assert (=> b!4109216 m!4711693))

(assert (=> d!1219113 d!1219207))

(declare-fun d!1219209 () Bool)

(assert (=> d!1219209 (isPrefix!4166 input!3491 input!3491)))

(declare-fun lt!1467882 () Unit!63678)

(declare-fun choose!25128 (List!44332 List!44332) Unit!63678)

(assert (=> d!1219209 (= lt!1467882 (choose!25128 input!3491 input!3491))))

(assert (=> d!1219209 (= (lemmaIsPrefixRefl!2717 input!3491 input!3491) lt!1467882)))

(declare-fun bs!594187 () Bool)

(assert (= bs!594187 d!1219209))

(assert (=> bs!594187 m!4711373))

(declare-fun m!4711695 () Bool)

(assert (=> bs!594187 m!4711695))

(assert (=> d!1219113 d!1219209))

(declare-fun bs!594188 () Bool)

(declare-fun d!1219211 () Bool)

(assert (= bs!594188 (and d!1219211 d!1219159)))

(declare-fun lambda!128387 () Int)

(assert (=> bs!594188 (= lambda!128387 lambda!128378)))

(assert (=> d!1219211 true))

(declare-fun lt!1467885 () Bool)

(assert (=> d!1219211 (= lt!1467885 (forall!8432 rTail!27 lambda!128387))))

(declare-fun e!2549333 () Bool)

(assert (=> d!1219211 (= lt!1467885 e!2549333)))

(declare-fun res!1678974 () Bool)

(assert (=> d!1219211 (=> res!1678974 e!2549333)))

(assert (=> d!1219211 (= res!1678974 (not (is-Cons!44210 rTail!27)))))

(assert (=> d!1219211 (= (rulesValidInductive!2664 thiss!26455 rTail!27) lt!1467885)))

(declare-fun b!4109223 () Bool)

(declare-fun e!2549334 () Bool)

(assert (=> b!4109223 (= e!2549333 e!2549334)))

(declare-fun res!1678975 () Bool)

(assert (=> b!4109223 (=> (not res!1678975) (not e!2549334))))

(assert (=> b!4109223 (= res!1678975 (ruleValid!3052 thiss!26455 (h!49630 rTail!27)))))

(declare-fun b!4109224 () Bool)

(assert (=> b!4109224 (= e!2549334 (rulesValidInductive!2664 thiss!26455 (t!339991 rTail!27)))))

(assert (= (and d!1219211 (not res!1678974)) b!4109223))

(assert (= (and b!4109223 res!1678975) b!4109224))

(declare-fun m!4711697 () Bool)

(assert (=> d!1219211 m!4711697))

(declare-fun m!4711699 () Bool)

(assert (=> b!4109223 m!4711699))

(assert (=> b!4109224 m!4711377))

(assert (=> d!1219113 d!1219211))

(assert (=> b!4108925 d!1219157))

(declare-fun d!1219213 () Bool)

(declare-fun dynLambda!18915 (Int BalanceConc!26382) TokenValue!7413)

(assert (=> d!1219213 (= (apply!10314 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))) (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467783))))) (dynLambda!18915 (toValue!9807 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783))))) (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467783))))))))

(declare-fun b_lambda!120611 () Bool)

(assert (=> (not b_lambda!120611) (not d!1219213)))

(declare-fun tb!246893 () Bool)

(declare-fun t!340010 () Bool)

(assert (=> (and b!4108841 (= (toValue!9807 (transformation!7183 (h!49630 rTail!27))) (toValue!9807 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))))) t!340010) tb!246893))

(declare-fun result!299734 () Bool)

(declare-fun inv!21 (TokenValue!7413) Bool)

(assert (=> tb!246893 (= result!299734 (inv!21 (dynLambda!18915 (toValue!9807 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783))))) (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467783)))))))))

(declare-fun m!4711701 () Bool)

(assert (=> tb!246893 m!4711701))

(assert (=> d!1219213 t!340010))

(declare-fun b_and!317219 () Bool)

(assert (= b_and!317183 (and (=> t!340010 result!299734) b_and!317219)))

(declare-fun t!340012 () Bool)

(declare-fun tb!246895 () Bool)

(assert (=> (and b!4108839 (= (toValue!9807 (transformation!7183 rHead!24)) (toValue!9807 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))))) t!340012) tb!246895))

(declare-fun result!299738 () Bool)

(assert (= result!299738 result!299734))

(assert (=> d!1219213 t!340012))

(declare-fun b_and!317221 () Bool)

(assert (= b_and!317187 (and (=> t!340012 result!299738) b_and!317221)))

(declare-fun t!340014 () Bool)

(declare-fun tb!246897 () Bool)

(assert (=> (and b!4109004 (= (toValue!9807 (transformation!7183 (h!49630 (t!339991 rTail!27)))) (toValue!9807 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))))) t!340014) tb!246897))

(declare-fun result!299740 () Bool)

(assert (= result!299740 result!299734))

(assert (=> d!1219213 t!340014))

(declare-fun b_and!317223 () Bool)

(assert (= b_and!317199 (and (=> t!340014 result!299740) b_and!317223)))

(assert (=> d!1219213 m!4711363))

(declare-fun m!4711703 () Bool)

(assert (=> d!1219213 m!4711703))

(assert (=> b!4108925 d!1219213))

(declare-fun d!1219215 () Bool)

(declare-fun fromListB!2451 (List!44332) BalanceConc!26382)

(assert (=> d!1219215 (= (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467783)))) (fromListB!2451 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467783)))))))

(declare-fun bs!594189 () Bool)

(assert (= bs!594189 d!1219215))

(declare-fun m!4711705 () Bool)

(assert (=> bs!594189 m!4711705))

(assert (=> b!4108925 d!1219215))

(assert (=> b!4108968 d!1219119))

(declare-fun b!4109227 () Bool)

(declare-fun res!1678976 () Bool)

(declare-fun e!2549341 () Bool)

(assert (=> b!4109227 (=> (not res!1678976) (not e!2549341))))

(declare-fun lt!1467889 () Option!9549)

(assert (=> b!4109227 (= res!1678976 (= (++!11537 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467889)))) (_2!24599 (get!14469 lt!1467889))) input!3491))))

(declare-fun d!1219217 () Bool)

(declare-fun e!2549339 () Bool)

(assert (=> d!1219217 e!2549339))

(declare-fun res!1678982 () Bool)

(assert (=> d!1219217 (=> res!1678982 e!2549339)))

(assert (=> d!1219217 (= res!1678982 (isEmpty!26394 lt!1467889))))

(declare-fun e!2549338 () Option!9549)

(assert (=> d!1219217 (= lt!1467889 e!2549338)))

(declare-fun c!706738 () Bool)

(declare-fun lt!1467886 () tuple2!42934)

(assert (=> d!1219217 (= c!706738 (isEmpty!26398 (_1!24601 lt!1467886)))))

(assert (=> d!1219217 (= lt!1467886 (findLongestMatch!1390 (regex!7183 (h!49630 rTail!27)) input!3491))))

(assert (=> d!1219217 (ruleValid!3052 thiss!26455 (h!49630 rTail!27))))

(assert (=> d!1219217 (= (maxPrefixOneRule!2988 thiss!26455 (h!49630 rTail!27) input!3491) lt!1467889)))

(declare-fun b!4109228 () Bool)

(declare-fun res!1678979 () Bool)

(assert (=> b!4109228 (=> (not res!1678979) (not e!2549341))))

(assert (=> b!4109228 (= res!1678979 (< (size!32882 (_2!24599 (get!14469 lt!1467889))) (size!32882 input!3491)))))

(declare-fun b!4109229 () Bool)

(assert (=> b!4109229 (= e!2549341 (= (size!32880 (_1!24599 (get!14469 lt!1467889))) (size!32882 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467889))))))))

(declare-fun b!4109230 () Bool)

(declare-fun res!1678980 () Bool)

(assert (=> b!4109230 (=> (not res!1678980) (not e!2549341))))

(assert (=> b!4109230 (= res!1678980 (= (value!225329 (_1!24599 (get!14469 lt!1467889))) (apply!10314 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467889)))) (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467889)))))))))

(declare-fun b!4109231 () Bool)

(assert (=> b!4109231 (= e!2549339 e!2549341)))

(declare-fun res!1678981 () Bool)

(assert (=> b!4109231 (=> (not res!1678981) (not e!2549341))))

(assert (=> b!4109231 (= res!1678981 (matchR!5977 (regex!7183 (h!49630 rTail!27)) (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467889))))))))

(declare-fun b!4109232 () Bool)

(declare-fun e!2549340 () Bool)

(assert (=> b!4109232 (= e!2549340 (matchR!5977 (regex!7183 (h!49630 rTail!27)) (_1!24601 (findLongestMatchInner!1477 (regex!7183 (h!49630 rTail!27)) Nil!44208 (size!32882 Nil!44208) input!3491 input!3491 (size!32882 input!3491)))))))

(declare-fun b!4109233 () Bool)

(assert (=> b!4109233 (= e!2549338 None!9548)))

(declare-fun b!4109234 () Bool)

(assert (=> b!4109234 (= e!2549338 (Some!9548 (tuple2!42931 (Token!13413 (apply!10314 (transformation!7183 (h!49630 rTail!27)) (seqFromList!5348 (_1!24601 lt!1467886))) (h!49630 rTail!27) (size!32884 (seqFromList!5348 (_1!24601 lt!1467886))) (_1!24601 lt!1467886)) (_2!24601 lt!1467886))))))

(declare-fun lt!1467890 () Unit!63678)

(assert (=> b!4109234 (= lt!1467890 (longestMatchIsAcceptedByMatchOrIsEmpty!1450 (regex!7183 (h!49630 rTail!27)) input!3491))))

(declare-fun res!1678977 () Bool)

(assert (=> b!4109234 (= res!1678977 (isEmpty!26398 (_1!24601 (findLongestMatchInner!1477 (regex!7183 (h!49630 rTail!27)) Nil!44208 (size!32882 Nil!44208) input!3491 input!3491 (size!32882 input!3491)))))))

(assert (=> b!4109234 (=> res!1678977 e!2549340)))

(assert (=> b!4109234 e!2549340))

(declare-fun lt!1467888 () Unit!63678)

(assert (=> b!4109234 (= lt!1467888 lt!1467890)))

(declare-fun lt!1467887 () Unit!63678)

(assert (=> b!4109234 (= lt!1467887 (lemmaSemiInverse!2090 (transformation!7183 (h!49630 rTail!27)) (seqFromList!5348 (_1!24601 lt!1467886))))))

(declare-fun b!4109235 () Bool)

(declare-fun res!1678978 () Bool)

(assert (=> b!4109235 (=> (not res!1678978) (not e!2549341))))

(assert (=> b!4109235 (= res!1678978 (= (rule!10301 (_1!24599 (get!14469 lt!1467889))) (h!49630 rTail!27)))))

(assert (= (and d!1219217 c!706738) b!4109233))

(assert (= (and d!1219217 (not c!706738)) b!4109234))

(assert (= (and b!4109234 (not res!1678977)) b!4109232))

(assert (= (and d!1219217 (not res!1678982)) b!4109231))

(assert (= (and b!4109231 res!1678981) b!4109227))

(assert (= (and b!4109227 res!1678976) b!4109228))

(assert (= (and b!4109228 res!1678979) b!4109235))

(assert (= (and b!4109235 res!1678978) b!4109230))

(assert (= (and b!4109230 res!1678980) b!4109229))

(declare-fun m!4711707 () Bool)

(assert (=> b!4109230 m!4711707))

(declare-fun m!4711709 () Bool)

(assert (=> b!4109230 m!4711709))

(assert (=> b!4109230 m!4711709))

(declare-fun m!4711711 () Bool)

(assert (=> b!4109230 m!4711711))

(declare-fun m!4711713 () Bool)

(assert (=> d!1219217 m!4711713))

(declare-fun m!4711715 () Bool)

(assert (=> d!1219217 m!4711715))

(declare-fun m!4711717 () Bool)

(assert (=> d!1219217 m!4711717))

(assert (=> d!1219217 m!4711699))

(assert (=> b!4109228 m!4711707))

(declare-fun m!4711719 () Bool)

(assert (=> b!4109228 m!4711719))

(assert (=> b!4109228 m!4711361))

(assert (=> b!4109232 m!4711629))

(assert (=> b!4109232 m!4711361))

(assert (=> b!4109232 m!4711629))

(assert (=> b!4109232 m!4711361))

(declare-fun m!4711721 () Bool)

(assert (=> b!4109232 m!4711721))

(declare-fun m!4711723 () Bool)

(assert (=> b!4109232 m!4711723))

(declare-fun m!4711725 () Bool)

(assert (=> b!4109234 m!4711725))

(assert (=> b!4109234 m!4711629))

(assert (=> b!4109234 m!4711361))

(declare-fun m!4711727 () Bool)

(assert (=> b!4109234 m!4711727))

(declare-fun m!4711729 () Bool)

(assert (=> b!4109234 m!4711729))

(assert (=> b!4109234 m!4711729))

(declare-fun m!4711731 () Bool)

(assert (=> b!4109234 m!4711731))

(assert (=> b!4109234 m!4711729))

(declare-fun m!4711733 () Bool)

(assert (=> b!4109234 m!4711733))

(assert (=> b!4109234 m!4711629))

(assert (=> b!4109234 m!4711361))

(assert (=> b!4109234 m!4711721))

(assert (=> b!4109234 m!4711729))

(declare-fun m!4711735 () Bool)

(assert (=> b!4109234 m!4711735))

(assert (=> b!4109227 m!4711707))

(declare-fun m!4711737 () Bool)

(assert (=> b!4109227 m!4711737))

(assert (=> b!4109227 m!4711737))

(declare-fun m!4711739 () Bool)

(assert (=> b!4109227 m!4711739))

(assert (=> b!4109227 m!4711739))

(declare-fun m!4711741 () Bool)

(assert (=> b!4109227 m!4711741))

(assert (=> b!4109235 m!4711707))

(assert (=> b!4109231 m!4711707))

(assert (=> b!4109231 m!4711737))

(assert (=> b!4109231 m!4711737))

(assert (=> b!4109231 m!4711739))

(assert (=> b!4109231 m!4711739))

(declare-fun m!4711743 () Bool)

(assert (=> b!4109231 m!4711743))

(assert (=> b!4109229 m!4711707))

(declare-fun m!4711745 () Bool)

(assert (=> b!4109229 m!4711745))

(assert (=> bm!289811 d!1219217))

(declare-fun d!1219219 () Bool)

(declare-fun lt!1467893 () Bool)

(declare-fun content!6816 (List!44335) (Set String!50816))

(assert (=> d!1219219 (= lt!1467893 (set.member (tag!8043 (h!49630 (Cons!44210 (h!49630 rTail!27) lt!1467735))) (content!6816 Nil!44211)))))

(declare-fun e!2549346 () Bool)

(assert (=> d!1219219 (= lt!1467893 e!2549346)))

(declare-fun res!1678987 () Bool)

(assert (=> d!1219219 (=> (not res!1678987) (not e!2549346))))

(assert (=> d!1219219 (= res!1678987 (is-Cons!44211 Nil!44211))))

(assert (=> d!1219219 (= (contains!8866 Nil!44211 (tag!8043 (h!49630 (Cons!44210 (h!49630 rTail!27) lt!1467735)))) lt!1467893)))

(declare-fun b!4109240 () Bool)

(declare-fun e!2549347 () Bool)

(assert (=> b!4109240 (= e!2549346 e!2549347)))

(declare-fun res!1678988 () Bool)

(assert (=> b!4109240 (=> res!1678988 e!2549347)))

(assert (=> b!4109240 (= res!1678988 (= (h!49631 Nil!44211) (tag!8043 (h!49630 (Cons!44210 (h!49630 rTail!27) lt!1467735)))))))

(declare-fun b!4109241 () Bool)

(assert (=> b!4109241 (= e!2549347 (contains!8866 (t!339992 Nil!44211) (tag!8043 (h!49630 (Cons!44210 (h!49630 rTail!27) lt!1467735)))))))

(assert (= (and d!1219219 res!1678987) b!4109240))

(assert (= (and b!4109240 (not res!1678988)) b!4109241))

(declare-fun m!4711747 () Bool)

(assert (=> d!1219219 m!4711747))

(declare-fun m!4711749 () Bool)

(assert (=> d!1219219 m!4711749))

(declare-fun m!4711751 () Bool)

(assert (=> b!4109241 m!4711751))

(assert (=> b!4108894 d!1219219))

(assert (=> b!4108956 d!1219189))

(assert (=> b!4108956 d!1219191))

(assert (=> b!4108956 d!1219153))

(declare-fun d!1219221 () Bool)

(assert (=> d!1219221 (= (inv!58861 (tag!8043 (h!49630 (t!339991 rTail!27)))) (= (mod (str.len (value!225303 (tag!8043 (h!49630 (t!339991 rTail!27))))) 2) 0))))

(assert (=> b!4109003 d!1219221))

(declare-fun d!1219223 () Bool)

(declare-fun res!1678989 () Bool)

(declare-fun e!2549348 () Bool)

(assert (=> d!1219223 (=> (not res!1678989) (not e!2549348))))

(assert (=> d!1219223 (= res!1678989 (semiInverseModEq!3094 (toChars!9666 (transformation!7183 (h!49630 (t!339991 rTail!27)))) (toValue!9807 (transformation!7183 (h!49630 (t!339991 rTail!27))))))))

(assert (=> d!1219223 (= (inv!58864 (transformation!7183 (h!49630 (t!339991 rTail!27)))) e!2549348)))

(declare-fun b!4109242 () Bool)

(assert (=> b!4109242 (= e!2549348 (equivClasses!2993 (toChars!9666 (transformation!7183 (h!49630 (t!339991 rTail!27)))) (toValue!9807 (transformation!7183 (h!49630 (t!339991 rTail!27))))))))

(assert (= (and d!1219223 res!1678989) b!4109242))

(declare-fun m!4711753 () Bool)

(assert (=> d!1219223 m!4711753))

(declare-fun m!4711755 () Bool)

(assert (=> b!4109242 m!4711755))

(assert (=> b!4109003 d!1219223))

(declare-fun d!1219225 () Bool)

(assert (=> d!1219225 (= (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783)))) (list!16323 (c!706710 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))))))

(declare-fun bs!594190 () Bool)

(assert (= bs!594190 d!1219225))

(declare-fun m!4711757 () Bool)

(assert (=> bs!594190 m!4711757))

(assert (=> b!4108926 d!1219225))

(declare-fun d!1219227 () Bool)

(declare-fun lt!1467894 () BalanceConc!26382)

(assert (=> d!1219227 (= (list!16321 lt!1467894) (originalCharacters!7737 (_1!24599 (get!14469 lt!1467783))))))

(assert (=> d!1219227 (= lt!1467894 (dynLambda!18910 (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783))))) (value!225329 (_1!24599 (get!14469 lt!1467783)))))))

(assert (=> d!1219227 (= (charsOf!4881 (_1!24599 (get!14469 lt!1467783))) lt!1467894)))

(declare-fun b_lambda!120613 () Bool)

(assert (=> (not b_lambda!120613) (not d!1219227)))

(declare-fun t!340016 () Bool)

(declare-fun tb!246899 () Bool)

(assert (=> (and b!4108841 (= (toChars!9666 (transformation!7183 (h!49630 rTail!27))) (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))))) t!340016) tb!246899))

(declare-fun b!4109243 () Bool)

(declare-fun e!2549349 () Bool)

(declare-fun tp!1248747 () Bool)

(assert (=> b!4109243 (= e!2549349 (and (inv!58866 (c!706710 (dynLambda!18910 (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783))))) (value!225329 (_1!24599 (get!14469 lt!1467783)))))) tp!1248747))))

(declare-fun result!299742 () Bool)

(assert (=> tb!246899 (= result!299742 (and (inv!58867 (dynLambda!18910 (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783))))) (value!225329 (_1!24599 (get!14469 lt!1467783))))) e!2549349))))

(assert (= tb!246899 b!4109243))

(declare-fun m!4711759 () Bool)

(assert (=> b!4109243 m!4711759))

(declare-fun m!4711761 () Bool)

(assert (=> tb!246899 m!4711761))

(assert (=> d!1219227 t!340016))

(declare-fun b_and!317225 () Bool)

(assert (= b_and!317213 (and (=> t!340016 result!299742) b_and!317225)))

(declare-fun t!340018 () Bool)

(declare-fun tb!246901 () Bool)

(assert (=> (and b!4108839 (= (toChars!9666 (transformation!7183 rHead!24)) (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))))) t!340018) tb!246901))

(declare-fun result!299744 () Bool)

(assert (= result!299744 result!299742))

(assert (=> d!1219227 t!340018))

(declare-fun b_and!317227 () Bool)

(assert (= b_and!317215 (and (=> t!340018 result!299744) b_and!317227)))

(declare-fun t!340020 () Bool)

(declare-fun tb!246903 () Bool)

(assert (=> (and b!4109004 (= (toChars!9666 (transformation!7183 (h!49630 (t!339991 rTail!27)))) (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))))) t!340020) tb!246903))

(declare-fun result!299746 () Bool)

(assert (= result!299746 result!299742))

(assert (=> d!1219227 t!340020))

(declare-fun b_and!317229 () Bool)

(assert (= b_and!317217 (and (=> t!340020 result!299746) b_and!317229)))

(declare-fun m!4711763 () Bool)

(assert (=> d!1219227 m!4711763))

(declare-fun m!4711765 () Bool)

(assert (=> d!1219227 m!4711765))

(assert (=> b!4108926 d!1219227))

(assert (=> b!4108926 d!1219157))

(assert (=> b!4108955 d!1219153))

(declare-fun d!1219229 () Bool)

(assert (=> d!1219229 (= (apply!10314 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))) (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467801))))) (dynLambda!18915 (toValue!9807 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801))))) (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467801))))))))

(declare-fun b_lambda!120615 () Bool)

(assert (=> (not b_lambda!120615) (not d!1219229)))

(declare-fun t!340022 () Bool)

(declare-fun tb!246905 () Bool)

(assert (=> (and b!4108841 (= (toValue!9807 (transformation!7183 (h!49630 rTail!27))) (toValue!9807 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))))) t!340022) tb!246905))

(declare-fun result!299748 () Bool)

(assert (=> tb!246905 (= result!299748 (inv!21 (dynLambda!18915 (toValue!9807 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801))))) (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467801)))))))))

(declare-fun m!4711767 () Bool)

(assert (=> tb!246905 m!4711767))

(assert (=> d!1219229 t!340022))

(declare-fun b_and!317231 () Bool)

(assert (= b_and!317219 (and (=> t!340022 result!299748) b_and!317231)))

(declare-fun t!340024 () Bool)

(declare-fun tb!246907 () Bool)

(assert (=> (and b!4108839 (= (toValue!9807 (transformation!7183 rHead!24)) (toValue!9807 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))))) t!340024) tb!246907))

(declare-fun result!299750 () Bool)

(assert (= result!299750 result!299748))

(assert (=> d!1219229 t!340024))

(declare-fun b_and!317233 () Bool)

(assert (= b_and!317221 (and (=> t!340024 result!299750) b_and!317233)))

(declare-fun tb!246909 () Bool)

(declare-fun t!340026 () Bool)

(assert (=> (and b!4109004 (= (toValue!9807 (transformation!7183 (h!49630 (t!339991 rTail!27)))) (toValue!9807 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))))) t!340026) tb!246909))

(declare-fun result!299752 () Bool)

(assert (= result!299752 result!299748))

(assert (=> d!1219229 t!340026))

(declare-fun b_and!317235 () Bool)

(assert (= b_and!317223 (and (=> t!340026 result!299752) b_and!317235)))

(assert (=> d!1219229 m!4711399))

(declare-fun m!4711769 () Bool)

(assert (=> d!1219229 m!4711769))

(assert (=> b!4108955 d!1219229))

(declare-fun d!1219231 () Bool)

(assert (=> d!1219231 (= (seqFromList!5348 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467801)))) (fromListB!2451 (originalCharacters!7737 (_1!24599 (get!14469 lt!1467801)))))))

(declare-fun bs!594191 () Bool)

(assert (= bs!594191 d!1219231))

(declare-fun m!4711771 () Bool)

(assert (=> bs!594191 m!4711771))

(assert (=> b!4108955 d!1219231))

(declare-fun d!1219233 () Bool)

(declare-fun res!1678990 () Bool)

(declare-fun e!2549351 () Bool)

(assert (=> d!1219233 (=> res!1678990 e!2549351)))

(assert (=> d!1219233 (= res!1678990 (is-Nil!44210 lt!1467741))))

(assert (=> d!1219233 (= (noDuplicateTag!2860 thiss!26455 lt!1467741 Nil!44211) e!2549351)))

(declare-fun b!4109244 () Bool)

(declare-fun e!2549352 () Bool)

(assert (=> b!4109244 (= e!2549351 e!2549352)))

(declare-fun res!1678991 () Bool)

(assert (=> b!4109244 (=> (not res!1678991) (not e!2549352))))

(assert (=> b!4109244 (= res!1678991 (not (contains!8866 Nil!44211 (tag!8043 (h!49630 lt!1467741)))))))

(declare-fun b!4109245 () Bool)

(assert (=> b!4109245 (= e!2549352 (noDuplicateTag!2860 thiss!26455 (t!339991 lt!1467741) (Cons!44211 (tag!8043 (h!49630 lt!1467741)) Nil!44211)))))

(assert (= (and d!1219233 (not res!1678990)) b!4109244))

(assert (= (and b!4109244 res!1678991) b!4109245))

(declare-fun m!4711773 () Bool)

(assert (=> b!4109244 m!4711773))

(declare-fun m!4711775 () Bool)

(assert (=> b!4109245 m!4711775))

(assert (=> b!4108901 d!1219233))

(declare-fun d!1219235 () Bool)

(assert (=> d!1219235 (not (= (tag!8043 rHead!24) (tag!8043 (h!49630 rTail!27))))))

(assert (=> d!1219235 true))

(declare-fun _$71!174 () Unit!63678)

(assert (=> d!1219235 (= (choose!25120 thiss!26455 lt!1467741 rHead!24 (h!49630 rTail!27)) _$71!174)))

(assert (=> d!1219081 d!1219235))

(declare-fun d!1219237 () Bool)

(declare-fun lt!1467895 () Bool)

(assert (=> d!1219237 (= lt!1467895 (set.member rHead!24 (content!6814 lt!1467741)))))

(declare-fun e!2549354 () Bool)

(assert (=> d!1219237 (= lt!1467895 e!2549354)))

(declare-fun res!1678992 () Bool)

(assert (=> d!1219237 (=> (not res!1678992) (not e!2549354))))

(assert (=> d!1219237 (= res!1678992 (is-Cons!44210 lt!1467741))))

(assert (=> d!1219237 (= (contains!8865 lt!1467741 rHead!24) lt!1467895)))

(declare-fun b!4109246 () Bool)

(declare-fun e!2549353 () Bool)

(assert (=> b!4109246 (= e!2549354 e!2549353)))

(declare-fun res!1678993 () Bool)

(assert (=> b!4109246 (=> res!1678993 e!2549353)))

(assert (=> b!4109246 (= res!1678993 (= (h!49630 lt!1467741) rHead!24))))

(declare-fun b!4109247 () Bool)

(assert (=> b!4109247 (= e!2549353 (contains!8865 (t!339991 lt!1467741) rHead!24))))

(assert (= (and d!1219237 res!1678992) b!4109246))

(assert (= (and b!4109246 (not res!1678993)) b!4109247))

(declare-fun m!4711777 () Bool)

(assert (=> d!1219237 m!4711777))

(declare-fun m!4711779 () Bool)

(assert (=> d!1219237 m!4711779))

(declare-fun m!4711781 () Bool)

(assert (=> b!4109247 m!4711781))

(assert (=> d!1219081 d!1219237))

(declare-fun d!1219239 () Bool)

(declare-fun lt!1467898 () Int)

(assert (=> d!1219239 (>= lt!1467898 0)))

(declare-fun e!2549357 () Int)

(assert (=> d!1219239 (= lt!1467898 e!2549357)))

(declare-fun c!706741 () Bool)

(assert (=> d!1219239 (= c!706741 (is-Nil!44208 (_2!24599 (get!14469 lt!1467783))))))

(assert (=> d!1219239 (= (size!32882 (_2!24599 (get!14469 lt!1467783))) lt!1467898)))

(declare-fun b!4109252 () Bool)

(assert (=> b!4109252 (= e!2549357 0)))

(declare-fun b!4109253 () Bool)

(assert (=> b!4109253 (= e!2549357 (+ 1 (size!32882 (t!339989 (_2!24599 (get!14469 lt!1467783))))))))

(assert (= (and d!1219239 c!706741) b!4109252))

(assert (= (and d!1219239 (not c!706741)) b!4109253))

(declare-fun m!4711783 () Bool)

(assert (=> b!4109253 m!4711783))

(assert (=> b!4108921 d!1219239))

(assert (=> b!4108921 d!1219157))

(declare-fun d!1219241 () Bool)

(declare-fun lt!1467899 () Int)

(assert (=> d!1219241 (>= lt!1467899 0)))

(declare-fun e!2549358 () Int)

(assert (=> d!1219241 (= lt!1467899 e!2549358)))

(declare-fun c!706742 () Bool)

(assert (=> d!1219241 (= c!706742 (is-Nil!44208 input!3491))))

(assert (=> d!1219241 (= (size!32882 input!3491) lt!1467899)))

(declare-fun b!4109254 () Bool)

(assert (=> b!4109254 (= e!2549358 0)))

(declare-fun b!4109255 () Bool)

(assert (=> b!4109255 (= e!2549358 (+ 1 (size!32882 (t!339989 input!3491))))))

(assert (= (and d!1219241 c!706742) b!4109254))

(assert (= (and d!1219241 (not c!706742)) b!4109255))

(declare-fun m!4711785 () Bool)

(assert (=> b!4109255 m!4711785))

(assert (=> b!4108921 d!1219241))

(declare-fun d!1219243 () Bool)

(assert (=> d!1219243 (= (isDefined!7215 lt!1467801) (not (isEmpty!26394 lt!1467801)))))

(declare-fun bs!594192 () Bool)

(assert (= bs!594192 d!1219243))

(assert (=> bs!594192 m!4711407))

(assert (=> b!4108950 d!1219243))

(assert (=> d!1219121 d!1219119))

(declare-fun d!1219245 () Bool)

(assert (=> d!1219245 (noDuplicateTag!2860 thiss!26455 lt!1467735 Nil!44211)))

(assert (=> d!1219245 true))

(declare-fun _$69!331 () Unit!63678)

(assert (=> d!1219245 (= (choose!25123 thiss!26455 (Cons!44211 (tag!8043 (h!49630 rTail!27)) Nil!44211) Nil!44211 lt!1467735) _$69!331)))

(declare-fun bs!594193 () Bool)

(assert (= bs!594193 d!1219245))

(assert (=> bs!594193 m!4711263))

(assert (=> d!1219121 d!1219245))

(declare-fun d!1219247 () Bool)

(declare-fun res!1679005 () Bool)

(declare-fun e!2549368 () Bool)

(assert (=> d!1219247 (=> res!1679005 e!2549368)))

(assert (=> d!1219247 (= res!1679005 (is-Nil!44211 Nil!44211))))

(assert (=> d!1219247 (= (subseq!552 Nil!44211 (Cons!44211 (tag!8043 (h!49630 rTail!27)) Nil!44211)) e!2549368)))

(declare-fun b!4109265 () Bool)

(declare-fun e!2549367 () Bool)

(declare-fun e!2549369 () Bool)

(assert (=> b!4109265 (= e!2549367 e!2549369)))

(declare-fun res!1679002 () Bool)

(assert (=> b!4109265 (=> res!1679002 e!2549369)))

(declare-fun e!2549370 () Bool)

(assert (=> b!4109265 (= res!1679002 e!2549370)))

(declare-fun res!1679004 () Bool)

(assert (=> b!4109265 (=> (not res!1679004) (not e!2549370))))

(assert (=> b!4109265 (= res!1679004 (= (h!49631 Nil!44211) (h!49631 (Cons!44211 (tag!8043 (h!49630 rTail!27)) Nil!44211))))))

(declare-fun b!4109264 () Bool)

(assert (=> b!4109264 (= e!2549368 e!2549367)))

(declare-fun res!1679003 () Bool)

(assert (=> b!4109264 (=> (not res!1679003) (not e!2549367))))

(assert (=> b!4109264 (= res!1679003 (is-Cons!44211 (Cons!44211 (tag!8043 (h!49630 rTail!27)) Nil!44211)))))

(declare-fun b!4109267 () Bool)

(assert (=> b!4109267 (= e!2549369 (subseq!552 Nil!44211 (t!339992 (Cons!44211 (tag!8043 (h!49630 rTail!27)) Nil!44211))))))

(declare-fun b!4109266 () Bool)

(assert (=> b!4109266 (= e!2549370 (subseq!552 (t!339992 Nil!44211) (t!339992 (Cons!44211 (tag!8043 (h!49630 rTail!27)) Nil!44211))))))

(assert (= (and d!1219247 (not res!1679005)) b!4109264))

(assert (= (and b!4109264 res!1679003) b!4109265))

(assert (= (and b!4109265 res!1679004) b!4109266))

(assert (= (and b!4109265 (not res!1679002)) b!4109267))

(declare-fun m!4711787 () Bool)

(assert (=> b!4109267 m!4711787))

(declare-fun m!4711789 () Bool)

(assert (=> b!4109266 m!4711789))

(assert (=> d!1219121 d!1219247))

(declare-fun d!1219249 () Bool)

(assert (=> d!1219249 (= (isDefined!7215 lt!1467783) (not (isEmpty!26394 lt!1467783)))))

(declare-fun bs!594194 () Bool)

(assert (= bs!594194 d!1219249))

(assert (=> bs!594194 m!4711371))

(assert (=> b!4108920 d!1219249))

(declare-fun b!4109270 () Bool)

(declare-fun res!1679006 () Bool)

(declare-fun e!2549371 () Bool)

(assert (=> b!4109270 (=> (not res!1679006) (not e!2549371))))

(declare-fun lt!1467900 () List!44332)

(assert (=> b!4109270 (= res!1679006 (= (size!32882 lt!1467900) (+ (size!32882 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))) (size!32882 (_2!24599 (get!14469 lt!1467783))))))))

(declare-fun d!1219251 () Bool)

(assert (=> d!1219251 e!2549371))

(declare-fun res!1679007 () Bool)

(assert (=> d!1219251 (=> (not res!1679007) (not e!2549371))))

(assert (=> d!1219251 (= res!1679007 (= (content!6815 lt!1467900) (set.union (content!6815 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))) (content!6815 (_2!24599 (get!14469 lt!1467783))))))))

(declare-fun e!2549372 () List!44332)

(assert (=> d!1219251 (= lt!1467900 e!2549372)))

(declare-fun c!706743 () Bool)

(assert (=> d!1219251 (= c!706743 (is-Nil!44208 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))))))

(assert (=> d!1219251 (= (++!11537 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783)))) (_2!24599 (get!14469 lt!1467783))) lt!1467900)))

(declare-fun b!4109268 () Bool)

(assert (=> b!4109268 (= e!2549372 (_2!24599 (get!14469 lt!1467783)))))

(declare-fun b!4109271 () Bool)

(assert (=> b!4109271 (= e!2549371 (or (not (= (_2!24599 (get!14469 lt!1467783)) Nil!44208)) (= lt!1467900 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783)))))))))

(declare-fun b!4109269 () Bool)

(assert (=> b!4109269 (= e!2549372 (Cons!44208 (h!49628 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))) (++!11537 (t!339989 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))) (_2!24599 (get!14469 lt!1467783)))))))

(assert (= (and d!1219251 c!706743) b!4109268))

(assert (= (and d!1219251 (not c!706743)) b!4109269))

(assert (= (and d!1219251 res!1679007) b!4109270))

(assert (= (and b!4109270 res!1679006) b!4109271))

(declare-fun m!4711791 () Bool)

(assert (=> b!4109270 m!4711791))

(assert (=> b!4109270 m!4711353))

(declare-fun m!4711793 () Bool)

(assert (=> b!4109270 m!4711793))

(assert (=> b!4109270 m!4711359))

(declare-fun m!4711795 () Bool)

(assert (=> d!1219251 m!4711795))

(assert (=> d!1219251 m!4711353))

(declare-fun m!4711797 () Bool)

(assert (=> d!1219251 m!4711797))

(declare-fun m!4711799 () Bool)

(assert (=> d!1219251 m!4711799))

(declare-fun m!4711801 () Bool)

(assert (=> b!4109269 m!4711801))

(assert (=> b!4108922 d!1219251))

(assert (=> b!4108922 d!1219225))

(assert (=> b!4108922 d!1219227))

(assert (=> b!4108922 d!1219157))

(declare-fun bs!594195 () Bool)

(declare-fun d!1219253 () Bool)

(assert (= bs!594195 (and d!1219253 d!1219195)))

(declare-fun lambda!128388 () Int)

(assert (=> bs!594195 (= (and (= (toChars!9666 (transformation!7183 (h!49630 rTail!27))) (toChars!9666 (transformation!7183 rHead!24))) (= (toValue!9807 (transformation!7183 (h!49630 rTail!27))) (toValue!9807 (transformation!7183 rHead!24)))) (= lambda!128388 lambda!128381))))

(assert (=> d!1219253 true))

(assert (=> d!1219253 (< (dynLambda!18911 order!23263 (toChars!9666 (transformation!7183 (h!49630 rTail!27)))) (dynLambda!18912 order!23265 lambda!128388))))

(assert (=> d!1219253 true))

(assert (=> d!1219253 (< (dynLambda!18913 order!23267 (toValue!9807 (transformation!7183 (h!49630 rTail!27)))) (dynLambda!18912 order!23265 lambda!128388))))

(assert (=> d!1219253 (= (semiInverseModEq!3094 (toChars!9666 (transformation!7183 (h!49630 rTail!27))) (toValue!9807 (transformation!7183 (h!49630 rTail!27)))) (Forall!1532 lambda!128388))))

(declare-fun bs!594196 () Bool)

(assert (= bs!594196 d!1219253))

(declare-fun m!4711803 () Bool)

(assert (=> bs!594196 m!4711803))

(assert (=> d!1219077 d!1219253))

(declare-fun d!1219255 () Bool)

(declare-fun lt!1467901 () Int)

(assert (=> d!1219255 (>= lt!1467901 0)))

(declare-fun e!2549373 () Int)

(assert (=> d!1219255 (= lt!1467901 e!2549373)))

(declare-fun c!706744 () Bool)

(assert (=> d!1219255 (= c!706744 (is-Nil!44208 (_2!24599 (get!14469 lt!1467801))))))

(assert (=> d!1219255 (= (size!32882 (_2!24599 (get!14469 lt!1467801))) lt!1467901)))

(declare-fun b!4109272 () Bool)

(assert (=> b!4109272 (= e!2549373 0)))

(declare-fun b!4109273 () Bool)

(assert (=> b!4109273 (= e!2549373 (+ 1 (size!32882 (t!339989 (_2!24599 (get!14469 lt!1467801))))))))

(assert (= (and d!1219255 c!706744) b!4109272))

(assert (= (and d!1219255 (not c!706744)) b!4109273))

(declare-fun m!4711805 () Bool)

(assert (=> b!4109273 m!4711805))

(assert (=> b!4108951 d!1219255))

(assert (=> b!4108951 d!1219153))

(assert (=> b!4108951 d!1219241))

(declare-fun d!1219257 () Bool)

(declare-fun res!1679008 () Bool)

(declare-fun e!2549374 () Bool)

(assert (=> d!1219257 (=> res!1679008 e!2549374)))

(assert (=> d!1219257 (= res!1679008 (is-Nil!44210 (Cons!44210 (h!49630 rTail!27) (Cons!44210 rHead!24 (t!339991 rTail!27)))))))

(assert (=> d!1219257 (= (noDuplicateTag!2860 thiss!26455 (Cons!44210 (h!49630 rTail!27) (Cons!44210 rHead!24 (t!339991 rTail!27))) Nil!44211) e!2549374)))

(declare-fun b!4109274 () Bool)

(declare-fun e!2549375 () Bool)

(assert (=> b!4109274 (= e!2549374 e!2549375)))

(declare-fun res!1679009 () Bool)

(assert (=> b!4109274 (=> (not res!1679009) (not e!2549375))))

(assert (=> b!4109274 (= res!1679009 (not (contains!8866 Nil!44211 (tag!8043 (h!49630 (Cons!44210 (h!49630 rTail!27) (Cons!44210 rHead!24 (t!339991 rTail!27))))))))))

(declare-fun b!4109275 () Bool)

(assert (=> b!4109275 (= e!2549375 (noDuplicateTag!2860 thiss!26455 (t!339991 (Cons!44210 (h!49630 rTail!27) (Cons!44210 rHead!24 (t!339991 rTail!27)))) (Cons!44211 (tag!8043 (h!49630 (Cons!44210 (h!49630 rTail!27) (Cons!44210 rHead!24 (t!339991 rTail!27))))) Nil!44211)))))

(assert (= (and d!1219257 (not res!1679008)) b!4109274))

(assert (= (and b!4109274 res!1679009) b!4109275))

(declare-fun m!4711807 () Bool)

(assert (=> b!4109274 m!4711807))

(declare-fun m!4711809 () Bool)

(assert (=> b!4109275 m!4711809))

(assert (=> d!1219089 d!1219257))

(declare-fun d!1219259 () Bool)

(assert (=> d!1219259 (noDuplicateTag!2860 thiss!26455 (Cons!44210 (h!49630 rTail!27) (Cons!44210 rHead!24 (t!339991 rTail!27))) Nil!44211)))

(assert (=> d!1219259 true))

(declare-fun _$67!75 () Unit!63678)

(assert (=> d!1219259 (= (choose!25121 thiss!26455 rHead!24 (h!49630 rTail!27) (t!339991 rTail!27)) _$67!75)))

(declare-fun bs!594197 () Bool)

(assert (= bs!594197 d!1219259))

(assert (=> bs!594197 m!4711337))

(assert (=> d!1219089 d!1219259))

(declare-fun d!1219261 () Bool)

(declare-fun res!1679010 () Bool)

(declare-fun e!2549376 () Bool)

(assert (=> d!1219261 (=> res!1679010 e!2549376)))

(assert (=> d!1219261 (= res!1679010 (is-Nil!44210 (Cons!44210 rHead!24 (Cons!44210 (h!49630 rTail!27) (t!339991 rTail!27)))))))

(assert (=> d!1219261 (= (noDuplicateTag!2860 thiss!26455 (Cons!44210 rHead!24 (Cons!44210 (h!49630 rTail!27) (t!339991 rTail!27))) Nil!44211) e!2549376)))

(declare-fun b!4109276 () Bool)

(declare-fun e!2549377 () Bool)

(assert (=> b!4109276 (= e!2549376 e!2549377)))

(declare-fun res!1679011 () Bool)

(assert (=> b!4109276 (=> (not res!1679011) (not e!2549377))))

(assert (=> b!4109276 (= res!1679011 (not (contains!8866 Nil!44211 (tag!8043 (h!49630 (Cons!44210 rHead!24 (Cons!44210 (h!49630 rTail!27) (t!339991 rTail!27))))))))))

(declare-fun b!4109277 () Bool)

(assert (=> b!4109277 (= e!2549377 (noDuplicateTag!2860 thiss!26455 (t!339991 (Cons!44210 rHead!24 (Cons!44210 (h!49630 rTail!27) (t!339991 rTail!27)))) (Cons!44211 (tag!8043 (h!49630 (Cons!44210 rHead!24 (Cons!44210 (h!49630 rTail!27) (t!339991 rTail!27))))) Nil!44211)))))

(assert (= (and d!1219261 (not res!1679010)) b!4109276))

(assert (= (and b!4109276 res!1679011) b!4109277))

(declare-fun m!4711811 () Bool)

(assert (=> b!4109276 m!4711811))

(declare-fun m!4711813 () Bool)

(assert (=> b!4109277 m!4711813))

(assert (=> d!1219089 d!1219261))

(declare-fun d!1219263 () Bool)

(declare-fun res!1679012 () Bool)

(declare-fun e!2549378 () Bool)

(assert (=> d!1219263 (=> res!1679012 e!2549378)))

(assert (=> d!1219263 (= res!1679012 (is-Nil!44210 (t!339991 lt!1467735)))))

(assert (=> d!1219263 (= (noDuplicateTag!2860 thiss!26455 (t!339991 lt!1467735) (Cons!44211 (tag!8043 (h!49630 lt!1467735)) Nil!44211)) e!2549378)))

(declare-fun b!4109278 () Bool)

(declare-fun e!2549379 () Bool)

(assert (=> b!4109278 (= e!2549378 e!2549379)))

(declare-fun res!1679013 () Bool)

(assert (=> b!4109278 (=> (not res!1679013) (not e!2549379))))

(assert (=> b!4109278 (= res!1679013 (not (contains!8866 (Cons!44211 (tag!8043 (h!49630 lt!1467735)) Nil!44211) (tag!8043 (h!49630 (t!339991 lt!1467735))))))))

(declare-fun b!4109279 () Bool)

(assert (=> b!4109279 (= e!2549379 (noDuplicateTag!2860 thiss!26455 (t!339991 (t!339991 lt!1467735)) (Cons!44211 (tag!8043 (h!49630 (t!339991 lt!1467735))) (Cons!44211 (tag!8043 (h!49630 lt!1467735)) Nil!44211))))))

(assert (= (and d!1219263 (not res!1679012)) b!4109278))

(assert (= (and b!4109278 res!1679013) b!4109279))

(declare-fun m!4711815 () Bool)

(assert (=> b!4109278 m!4711815))

(declare-fun m!4711817 () Bool)

(assert (=> b!4109279 m!4711817))

(assert (=> b!4108970 d!1219263))

(declare-fun d!1219265 () Bool)

(assert (=> d!1219265 (= (get!14469 (maxPrefix!4022 thiss!26455 (t!339991 rTail!27) input!3491)) (v!40076 (maxPrefix!4022 thiss!26455 (t!339991 rTail!27) input!3491)))))

(assert (=> b!4108949 d!1219265))

(assert (=> b!4108949 d!1219107))

(declare-fun d!1219267 () Bool)

(declare-fun lt!1467902 () Bool)

(assert (=> d!1219267 (= lt!1467902 (set.member (tag!8043 (h!49630 lt!1467735)) (content!6816 Nil!44211)))))

(declare-fun e!2549380 () Bool)

(assert (=> d!1219267 (= lt!1467902 e!2549380)))

(declare-fun res!1679014 () Bool)

(assert (=> d!1219267 (=> (not res!1679014) (not e!2549380))))

(assert (=> d!1219267 (= res!1679014 (is-Cons!44211 Nil!44211))))

(assert (=> d!1219267 (= (contains!8866 Nil!44211 (tag!8043 (h!49630 lt!1467735))) lt!1467902)))

(declare-fun b!4109280 () Bool)

(declare-fun e!2549381 () Bool)

(assert (=> b!4109280 (= e!2549380 e!2549381)))

(declare-fun res!1679015 () Bool)

(assert (=> b!4109280 (=> res!1679015 e!2549381)))

(assert (=> b!4109280 (= res!1679015 (= (h!49631 Nil!44211) (tag!8043 (h!49630 lt!1467735))))))

(declare-fun b!4109281 () Bool)

(assert (=> b!4109281 (= e!2549381 (contains!8866 (t!339992 Nil!44211) (tag!8043 (h!49630 lt!1467735))))))

(assert (= (and d!1219267 res!1679014) b!4109280))

(assert (= (and b!4109280 (not res!1679015)) b!4109281))

(assert (=> d!1219267 m!4711747))

(declare-fun m!4711819 () Bool)

(assert (=> d!1219267 m!4711819))

(declare-fun m!4711821 () Bool)

(assert (=> b!4109281 m!4711821))

(assert (=> b!4108969 d!1219267))

(declare-fun b!4109310 () Bool)

(declare-fun e!2549400 () Bool)

(declare-fun lt!1467905 () Bool)

(assert (=> b!4109310 (= e!2549400 (not lt!1467905))))

(declare-fun b!4109311 () Bool)

(declare-fun res!1679037 () Bool)

(declare-fun e!2549399 () Bool)

(assert (=> b!4109311 (=> (not res!1679037) (not e!2549399))))

(declare-fun call!289825 () Bool)

(assert (=> b!4109311 (= res!1679037 (not call!289825))))

(declare-fun b!4109312 () Bool)

(declare-fun res!1679039 () Bool)

(declare-fun e!2549397 () Bool)

(assert (=> b!4109312 (=> res!1679039 e!2549397)))

(assert (=> b!4109312 (= res!1679039 e!2549399)))

(declare-fun res!1679034 () Bool)

(assert (=> b!4109312 (=> (not res!1679034) (not e!2549399))))

(assert (=> b!4109312 (= res!1679034 lt!1467905)))

(declare-fun b!4109313 () Bool)

(declare-fun e!2549396 () Bool)

(declare-fun nullable!4259 (Regex!12088) Bool)

(assert (=> b!4109313 (= e!2549396 (nullable!4259 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783))))))))

(declare-fun b!4109314 () Bool)

(assert (=> b!4109314 (= e!2549399 (= (head!8665 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))) (c!706709 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))))))))

(declare-fun b!4109315 () Bool)

(declare-fun e!2549398 () Bool)

(assert (=> b!4109315 (= e!2549398 (= lt!1467905 call!289825))))

(declare-fun b!4109316 () Bool)

(declare-fun res!1679036 () Bool)

(declare-fun e!2549401 () Bool)

(assert (=> b!4109316 (=> res!1679036 e!2549401)))

(assert (=> b!4109316 (= res!1679036 (not (isEmpty!26398 (tail!6399 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))))))))

(declare-fun b!4109317 () Bool)

(assert (=> b!4109317 (= e!2549401 (not (= (head!8665 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))) (c!706709 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783))))))))))

(declare-fun b!4109318 () Bool)

(declare-fun derivativeStep!3656 (Regex!12088 C!24362) Regex!12088)

(assert (=> b!4109318 (= e!2549396 (matchR!5977 (derivativeStep!3656 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))) (head!8665 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783)))))) (tail!6399 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783)))))))))

(declare-fun b!4109319 () Bool)

(assert (=> b!4109319 (= e!2549398 e!2549400)))

(declare-fun c!706751 () Bool)

(assert (=> b!4109319 (= c!706751 (is-EmptyLang!12088 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783))))))))

(declare-fun b!4109320 () Bool)

(declare-fun e!2549402 () Bool)

(assert (=> b!4109320 (= e!2549397 e!2549402)))

(declare-fun res!1679038 () Bool)

(assert (=> b!4109320 (=> (not res!1679038) (not e!2549402))))

(assert (=> b!4109320 (= res!1679038 (not lt!1467905))))

(declare-fun b!4109321 () Bool)

(assert (=> b!4109321 (= e!2549402 e!2549401)))

(declare-fun res!1679033 () Bool)

(assert (=> b!4109321 (=> res!1679033 e!2549401)))

(assert (=> b!4109321 (= res!1679033 call!289825)))

(declare-fun d!1219269 () Bool)

(assert (=> d!1219269 e!2549398))

(declare-fun c!706753 () Bool)

(assert (=> d!1219269 (= c!706753 (is-EmptyExpr!12088 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783))))))))

(assert (=> d!1219269 (= lt!1467905 e!2549396)))

(declare-fun c!706752 () Bool)

(assert (=> d!1219269 (= c!706752 (isEmpty!26398 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))))))

(declare-fun validRegex!5459 (Regex!12088) Bool)

(assert (=> d!1219269 (validRegex!5459 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))))))

(assert (=> d!1219269 (= (matchR!5977 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))) (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))) lt!1467905)))

(declare-fun bm!289820 () Bool)

(assert (=> bm!289820 (= call!289825 (isEmpty!26398 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783))))))))

(declare-fun b!4109322 () Bool)

(declare-fun res!1679032 () Bool)

(assert (=> b!4109322 (=> (not res!1679032) (not e!2549399))))

(assert (=> b!4109322 (= res!1679032 (isEmpty!26398 (tail!6399 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467783)))))))))

(declare-fun b!4109323 () Bool)

(declare-fun res!1679035 () Bool)

(assert (=> b!4109323 (=> res!1679035 e!2549397)))

(assert (=> b!4109323 (= res!1679035 (not (is-ElementMatch!12088 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))))))))

(assert (=> b!4109323 (= e!2549400 e!2549397)))

(assert (= (and d!1219269 c!706752) b!4109313))

(assert (= (and d!1219269 (not c!706752)) b!4109318))

(assert (= (and d!1219269 c!706753) b!4109315))

(assert (= (and d!1219269 (not c!706753)) b!4109319))

(assert (= (and b!4109319 c!706751) b!4109310))

(assert (= (and b!4109319 (not c!706751)) b!4109323))

(assert (= (and b!4109323 (not res!1679035)) b!4109312))

(assert (= (and b!4109312 res!1679034) b!4109311))

(assert (= (and b!4109311 res!1679037) b!4109322))

(assert (= (and b!4109322 res!1679032) b!4109314))

(assert (= (and b!4109312 (not res!1679039)) b!4109320))

(assert (= (and b!4109320 res!1679038) b!4109321))

(assert (= (and b!4109321 (not res!1679033)) b!4109316))

(assert (= (and b!4109316 (not res!1679036)) b!4109317))

(assert (= (or b!4109315 b!4109311 b!4109321) bm!289820))

(assert (=> b!4109317 m!4711353))

(declare-fun m!4711823 () Bool)

(assert (=> b!4109317 m!4711823))

(assert (=> d!1219269 m!4711353))

(declare-fun m!4711825 () Bool)

(assert (=> d!1219269 m!4711825))

(declare-fun m!4711827 () Bool)

(assert (=> d!1219269 m!4711827))

(assert (=> b!4109322 m!4711353))

(declare-fun m!4711829 () Bool)

(assert (=> b!4109322 m!4711829))

(assert (=> b!4109322 m!4711829))

(declare-fun m!4711831 () Bool)

(assert (=> b!4109322 m!4711831))

(assert (=> b!4109318 m!4711353))

(assert (=> b!4109318 m!4711823))

(assert (=> b!4109318 m!4711823))

(declare-fun m!4711833 () Bool)

(assert (=> b!4109318 m!4711833))

(assert (=> b!4109318 m!4711353))

(assert (=> b!4109318 m!4711829))

(assert (=> b!4109318 m!4711833))

(assert (=> b!4109318 m!4711829))

(declare-fun m!4711835 () Bool)

(assert (=> b!4109318 m!4711835))

(assert (=> b!4109314 m!4711353))

(assert (=> b!4109314 m!4711823))

(assert (=> b!4109316 m!4711353))

(assert (=> b!4109316 m!4711829))

(assert (=> b!4109316 m!4711829))

(assert (=> b!4109316 m!4711831))

(declare-fun m!4711837 () Bool)

(assert (=> b!4109313 m!4711837))

(assert (=> bm!289820 m!4711353))

(assert (=> bm!289820 m!4711825))

(assert (=> b!4108928 d!1219269))

(assert (=> b!4108928 d!1219157))

(assert (=> b!4108928 d!1219225))

(assert (=> b!4108928 d!1219227))

(declare-fun d!1219271 () Bool)

(assert (=> d!1219271 (= (isEmpty!26394 lt!1467783) (not (is-Some!9548 lt!1467783)))))

(assert (=> d!1219107 d!1219271))

(assert (=> d!1219107 d!1219207))

(assert (=> d!1219107 d!1219209))

(declare-fun bs!594198 () Bool)

(declare-fun d!1219273 () Bool)

(assert (= bs!594198 (and d!1219273 d!1219159)))

(declare-fun lambda!128389 () Int)

(assert (=> bs!594198 (= lambda!128389 lambda!128378)))

(declare-fun bs!594199 () Bool)

(assert (= bs!594199 (and d!1219273 d!1219211)))

(assert (=> bs!594199 (= lambda!128389 lambda!128387)))

(assert (=> d!1219273 true))

(declare-fun lt!1467906 () Bool)

(assert (=> d!1219273 (= lt!1467906 (forall!8432 (t!339991 rTail!27) lambda!128389))))

(declare-fun e!2549403 () Bool)

(assert (=> d!1219273 (= lt!1467906 e!2549403)))

(declare-fun res!1679040 () Bool)

(assert (=> d!1219273 (=> res!1679040 e!2549403)))

(assert (=> d!1219273 (= res!1679040 (not (is-Cons!44210 (t!339991 rTail!27))))))

(assert (=> d!1219273 (= (rulesValidInductive!2664 thiss!26455 (t!339991 rTail!27)) lt!1467906)))

(declare-fun b!4109324 () Bool)

(declare-fun e!2549404 () Bool)

(assert (=> b!4109324 (= e!2549403 e!2549404)))

(declare-fun res!1679041 () Bool)

(assert (=> b!4109324 (=> (not res!1679041) (not e!2549404))))

(assert (=> b!4109324 (= res!1679041 (ruleValid!3052 thiss!26455 (h!49630 (t!339991 rTail!27))))))

(declare-fun b!4109325 () Bool)

(assert (=> b!4109325 (= e!2549404 (rulesValidInductive!2664 thiss!26455 (t!339991 (t!339991 rTail!27))))))

(assert (= (and d!1219273 (not res!1679040)) b!4109324))

(assert (= (and b!4109324 res!1679041) b!4109325))

(declare-fun m!4711839 () Bool)

(assert (=> d!1219273 m!4711839))

(assert (=> b!4109324 m!4711625))

(assert (=> b!4109325 m!4711685))

(assert (=> d!1219107 d!1219273))

(declare-fun d!1219275 () Bool)

(declare-fun res!1679042 () Bool)

(declare-fun e!2549405 () Bool)

(assert (=> d!1219275 (=> res!1679042 e!2549405)))

(assert (=> d!1219275 (= res!1679042 (is-Nil!44210 (t!339991 (Cons!44210 (h!49630 rTail!27) lt!1467735))))))

(assert (=> d!1219275 (= (noDuplicateTag!2860 thiss!26455 (t!339991 (Cons!44210 (h!49630 rTail!27) lt!1467735)) (Cons!44211 (tag!8043 (h!49630 (Cons!44210 (h!49630 rTail!27) lt!1467735))) Nil!44211)) e!2549405)))

(declare-fun b!4109326 () Bool)

(declare-fun e!2549406 () Bool)

(assert (=> b!4109326 (= e!2549405 e!2549406)))

(declare-fun res!1679043 () Bool)

(assert (=> b!4109326 (=> (not res!1679043) (not e!2549406))))

(assert (=> b!4109326 (= res!1679043 (not (contains!8866 (Cons!44211 (tag!8043 (h!49630 (Cons!44210 (h!49630 rTail!27) lt!1467735))) Nil!44211) (tag!8043 (h!49630 (t!339991 (Cons!44210 (h!49630 rTail!27) lt!1467735)))))))))

(declare-fun b!4109327 () Bool)

(assert (=> b!4109327 (= e!2549406 (noDuplicateTag!2860 thiss!26455 (t!339991 (t!339991 (Cons!44210 (h!49630 rTail!27) lt!1467735))) (Cons!44211 (tag!8043 (h!49630 (t!339991 (Cons!44210 (h!49630 rTail!27) lt!1467735)))) (Cons!44211 (tag!8043 (h!49630 (Cons!44210 (h!49630 rTail!27) lt!1467735))) Nil!44211))))))

(assert (= (and d!1219275 (not res!1679042)) b!4109326))

(assert (= (and b!4109326 res!1679043) b!4109327))

(declare-fun m!4711841 () Bool)

(assert (=> b!4109326 m!4711841))

(declare-fun m!4711843 () Bool)

(assert (=> b!4109327 m!4711843))

(assert (=> b!4108895 d!1219275))

(declare-fun b!4109328 () Bool)

(declare-fun e!2549411 () Bool)

(declare-fun lt!1467907 () Bool)

(assert (=> b!4109328 (= e!2549411 (not lt!1467907))))

(declare-fun b!4109329 () Bool)

(declare-fun res!1679049 () Bool)

(declare-fun e!2549410 () Bool)

(assert (=> b!4109329 (=> (not res!1679049) (not e!2549410))))

(declare-fun call!289826 () Bool)

(assert (=> b!4109329 (= res!1679049 (not call!289826))))

(declare-fun b!4109330 () Bool)

(declare-fun res!1679051 () Bool)

(declare-fun e!2549408 () Bool)

(assert (=> b!4109330 (=> res!1679051 e!2549408)))

(assert (=> b!4109330 (= res!1679051 e!2549410)))

(declare-fun res!1679046 () Bool)

(assert (=> b!4109330 (=> (not res!1679046) (not e!2549410))))

(assert (=> b!4109330 (= res!1679046 lt!1467907)))

(declare-fun b!4109331 () Bool)

(declare-fun e!2549407 () Bool)

(assert (=> b!4109331 (= e!2549407 (nullable!4259 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801))))))))

(declare-fun b!4109332 () Bool)

(assert (=> b!4109332 (= e!2549410 (= (head!8665 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))) (c!706709 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))))))))

(declare-fun b!4109333 () Bool)

(declare-fun e!2549409 () Bool)

(assert (=> b!4109333 (= e!2549409 (= lt!1467907 call!289826))))

(declare-fun b!4109334 () Bool)

(declare-fun res!1679048 () Bool)

(declare-fun e!2549412 () Bool)

(assert (=> b!4109334 (=> res!1679048 e!2549412)))

(assert (=> b!4109334 (= res!1679048 (not (isEmpty!26398 (tail!6399 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))))))))

(declare-fun b!4109335 () Bool)

(assert (=> b!4109335 (= e!2549412 (not (= (head!8665 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))) (c!706709 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801))))))))))

(declare-fun b!4109336 () Bool)

(assert (=> b!4109336 (= e!2549407 (matchR!5977 (derivativeStep!3656 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))) (head!8665 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801)))))) (tail!6399 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801)))))))))

(declare-fun b!4109337 () Bool)

(assert (=> b!4109337 (= e!2549409 e!2549411)))

(declare-fun c!706754 () Bool)

(assert (=> b!4109337 (= c!706754 (is-EmptyLang!12088 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801))))))))

(declare-fun b!4109338 () Bool)

(declare-fun e!2549413 () Bool)

(assert (=> b!4109338 (= e!2549408 e!2549413)))

(declare-fun res!1679050 () Bool)

(assert (=> b!4109338 (=> (not res!1679050) (not e!2549413))))

(assert (=> b!4109338 (= res!1679050 (not lt!1467907))))

(declare-fun b!4109339 () Bool)

(assert (=> b!4109339 (= e!2549413 e!2549412)))

(declare-fun res!1679045 () Bool)

(assert (=> b!4109339 (=> res!1679045 e!2549412)))

(assert (=> b!4109339 (= res!1679045 call!289826)))

(declare-fun d!1219277 () Bool)

(assert (=> d!1219277 e!2549409))

(declare-fun c!706756 () Bool)

(assert (=> d!1219277 (= c!706756 (is-EmptyExpr!12088 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801))))))))

(assert (=> d!1219277 (= lt!1467907 e!2549407)))

(declare-fun c!706755 () Bool)

(assert (=> d!1219277 (= c!706755 (isEmpty!26398 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))))))

(assert (=> d!1219277 (validRegex!5459 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))))))

(assert (=> d!1219277 (= (matchR!5977 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))) (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))) lt!1467907)))

(declare-fun bm!289821 () Bool)

(assert (=> bm!289821 (= call!289826 (isEmpty!26398 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801))))))))

(declare-fun b!4109340 () Bool)

(declare-fun res!1679044 () Bool)

(assert (=> b!4109340 (=> (not res!1679044) (not e!2549410))))

(assert (=> b!4109340 (= res!1679044 (isEmpty!26398 (tail!6399 (list!16321 (charsOf!4881 (_1!24599 (get!14469 lt!1467801)))))))))

(declare-fun b!4109341 () Bool)

(declare-fun res!1679047 () Bool)

(assert (=> b!4109341 (=> res!1679047 e!2549408)))

(assert (=> b!4109341 (= res!1679047 (not (is-ElementMatch!12088 (regex!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))))))))

(assert (=> b!4109341 (= e!2549411 e!2549408)))

(assert (= (and d!1219277 c!706755) b!4109331))

(assert (= (and d!1219277 (not c!706755)) b!4109336))

(assert (= (and d!1219277 c!706756) b!4109333))

(assert (= (and d!1219277 (not c!706756)) b!4109337))

(assert (= (and b!4109337 c!706754) b!4109328))

(assert (= (and b!4109337 (not c!706754)) b!4109341))

(assert (= (and b!4109341 (not res!1679047)) b!4109330))

(assert (= (and b!4109330 res!1679046) b!4109329))

(assert (= (and b!4109329 res!1679049) b!4109340))

(assert (= (and b!4109340 res!1679044) b!4109332))

(assert (= (and b!4109330 (not res!1679051)) b!4109338))

(assert (= (and b!4109338 res!1679050) b!4109339))

(assert (= (and b!4109339 (not res!1679045)) b!4109334))

(assert (= (and b!4109334 (not res!1679048)) b!4109335))

(assert (= (or b!4109333 b!4109329 b!4109339) bm!289821))

(assert (=> b!4109335 m!4711391))

(declare-fun m!4711845 () Bool)

(assert (=> b!4109335 m!4711845))

(assert (=> d!1219277 m!4711391))

(declare-fun m!4711847 () Bool)

(assert (=> d!1219277 m!4711847))

(declare-fun m!4711849 () Bool)

(assert (=> d!1219277 m!4711849))

(assert (=> b!4109340 m!4711391))

(declare-fun m!4711851 () Bool)

(assert (=> b!4109340 m!4711851))

(assert (=> b!4109340 m!4711851))

(declare-fun m!4711853 () Bool)

(assert (=> b!4109340 m!4711853))

(assert (=> b!4109336 m!4711391))

(assert (=> b!4109336 m!4711845))

(assert (=> b!4109336 m!4711845))

(declare-fun m!4711855 () Bool)

(assert (=> b!4109336 m!4711855))

(assert (=> b!4109336 m!4711391))

(assert (=> b!4109336 m!4711851))

(assert (=> b!4109336 m!4711855))

(assert (=> b!4109336 m!4711851))

(declare-fun m!4711857 () Bool)

(assert (=> b!4109336 m!4711857))

(assert (=> b!4109332 m!4711391))

(assert (=> b!4109332 m!4711845))

(assert (=> b!4109334 m!4711391))

(assert (=> b!4109334 m!4711851))

(assert (=> b!4109334 m!4711851))

(assert (=> b!4109334 m!4711853))

(declare-fun m!4711859 () Bool)

(assert (=> b!4109331 m!4711859))

(assert (=> bm!289821 m!4711391))

(assert (=> bm!289821 m!4711847))

(assert (=> b!4108958 d!1219277))

(assert (=> b!4108958 d!1219153))

(assert (=> b!4108958 d!1219189))

(assert (=> b!4108958 d!1219191))

(declare-fun bs!594200 () Bool)

(declare-fun d!1219279 () Bool)

(assert (= bs!594200 (and d!1219279 d!1219197)))

(declare-fun lambda!128390 () Int)

(assert (=> bs!594200 (= (= (toValue!9807 (transformation!7183 rHead!24)) (toValue!9807 (transformation!7183 (h!49630 rTail!27)))) (= lambda!128390 lambda!128384))))

(assert (=> d!1219279 true))

(assert (=> d!1219279 (< (dynLambda!18913 order!23267 (toValue!9807 (transformation!7183 rHead!24))) (dynLambda!18914 order!23269 lambda!128390))))

(assert (=> d!1219279 (= (equivClasses!2993 (toChars!9666 (transformation!7183 rHead!24)) (toValue!9807 (transformation!7183 rHead!24))) (Forall2!1131 lambda!128390))))

(declare-fun bs!594201 () Bool)

(assert (= bs!594201 d!1219279))

(declare-fun m!4711861 () Bool)

(assert (=> bs!594201 m!4711861))

(assert (=> b!4108888 d!1219279))

(declare-fun bs!594202 () Bool)

(declare-fun d!1219281 () Bool)

(assert (= bs!594202 (and d!1219281 d!1219159)))

(declare-fun lambda!128391 () Int)

(assert (=> bs!594202 (= lambda!128391 lambda!128378)))

(declare-fun bs!594203 () Bool)

(assert (= bs!594203 (and d!1219281 d!1219211)))

(assert (=> bs!594203 (= lambda!128391 lambda!128387)))

(declare-fun bs!594204 () Bool)

(assert (= bs!594204 (and d!1219281 d!1219273)))

(assert (=> bs!594204 (= lambda!128391 lambda!128389)))

(assert (=> d!1219281 true))

(declare-fun lt!1467908 () Bool)

(assert (=> d!1219281 (= lt!1467908 (rulesValidInductive!2664 thiss!26455 lt!1467741))))

(assert (=> d!1219281 (= lt!1467908 (forall!8432 lt!1467741 lambda!128391))))

(assert (=> d!1219281 (= (rulesValid!2829 thiss!26455 lt!1467741) lt!1467908)))

(declare-fun bs!594205 () Bool)

(assert (= bs!594205 d!1219281))

(declare-fun m!4711863 () Bool)

(assert (=> bs!594205 m!4711863))

(declare-fun m!4711865 () Bool)

(assert (=> bs!594205 m!4711865))

(assert (=> d!1219095 d!1219281))

(declare-fun b!4109342 () Bool)

(declare-fun e!2549414 () Bool)

(declare-fun tp!1248748 () Bool)

(assert (=> b!4109342 (= e!2549414 (and tp_is_empty!21143 tp!1248748))))

(assert (=> b!4108993 (= tp!1248693 e!2549414)))

(assert (= (and b!4108993 (is-Cons!44208 (t!339989 (t!339989 input!3491)))) b!4109342))

(declare-fun b!4109345 () Bool)

(declare-fun e!2549415 () Bool)

(declare-fun tp!1248753 () Bool)

(assert (=> b!4109345 (= e!2549415 tp!1248753)))

(declare-fun b!4109343 () Bool)

(assert (=> b!4109343 (= e!2549415 tp_is_empty!21143)))

(declare-fun b!4109346 () Bool)

(declare-fun tp!1248750 () Bool)

(declare-fun tp!1248752 () Bool)

(assert (=> b!4109346 (= e!2549415 (and tp!1248750 tp!1248752))))

(declare-fun b!4109344 () Bool)

(declare-fun tp!1248749 () Bool)

(declare-fun tp!1248751 () Bool)

(assert (=> b!4109344 (= e!2549415 (and tp!1248749 tp!1248751))))

(assert (=> b!4108983 (= tp!1248685 e!2549415)))

(assert (= (and b!4108983 (is-ElementMatch!12088 (reg!12417 (regex!7183 rHead!24)))) b!4109343))

(assert (= (and b!4108983 (is-Concat!19501 (reg!12417 (regex!7183 rHead!24)))) b!4109344))

(assert (= (and b!4108983 (is-Star!12088 (reg!12417 (regex!7183 rHead!24)))) b!4109345))

(assert (= (and b!4108983 (is-Union!12088 (reg!12417 (regex!7183 rHead!24)))) b!4109346))

(declare-fun b!4109349 () Bool)

(declare-fun e!2549416 () Bool)

(declare-fun tp!1248758 () Bool)

(assert (=> b!4109349 (= e!2549416 tp!1248758)))

(declare-fun b!4109347 () Bool)

(assert (=> b!4109347 (= e!2549416 tp_is_empty!21143)))

(declare-fun b!4109350 () Bool)

(declare-fun tp!1248755 () Bool)

(declare-fun tp!1248757 () Bool)

(assert (=> b!4109350 (= e!2549416 (and tp!1248755 tp!1248757))))

(declare-fun b!4109348 () Bool)

(declare-fun tp!1248754 () Bool)

(declare-fun tp!1248756 () Bool)

(assert (=> b!4109348 (= e!2549416 (and tp!1248754 tp!1248756))))

(assert (=> b!4108984 (= tp!1248682 e!2549416)))

(assert (= (and b!4108984 (is-ElementMatch!12088 (regOne!24689 (regex!7183 rHead!24)))) b!4109347))

(assert (= (and b!4108984 (is-Concat!19501 (regOne!24689 (regex!7183 rHead!24)))) b!4109348))

(assert (= (and b!4108984 (is-Star!12088 (regOne!24689 (regex!7183 rHead!24)))) b!4109349))

(assert (= (and b!4108984 (is-Union!12088 (regOne!24689 (regex!7183 rHead!24)))) b!4109350))

(declare-fun b!4109353 () Bool)

(declare-fun e!2549417 () Bool)

(declare-fun tp!1248763 () Bool)

(assert (=> b!4109353 (= e!2549417 tp!1248763)))

(declare-fun b!4109351 () Bool)

(assert (=> b!4109351 (= e!2549417 tp_is_empty!21143)))

(declare-fun b!4109354 () Bool)

(declare-fun tp!1248760 () Bool)

(declare-fun tp!1248762 () Bool)

(assert (=> b!4109354 (= e!2549417 (and tp!1248760 tp!1248762))))

(declare-fun b!4109352 () Bool)

(declare-fun tp!1248759 () Bool)

(declare-fun tp!1248761 () Bool)

(assert (=> b!4109352 (= e!2549417 (and tp!1248759 tp!1248761))))

(assert (=> b!4108984 (= tp!1248684 e!2549417)))

(assert (= (and b!4108984 (is-ElementMatch!12088 (regTwo!24689 (regex!7183 rHead!24)))) b!4109351))

(assert (= (and b!4108984 (is-Concat!19501 (regTwo!24689 (regex!7183 rHead!24)))) b!4109352))

(assert (= (and b!4108984 (is-Star!12088 (regTwo!24689 (regex!7183 rHead!24)))) b!4109353))

(assert (= (and b!4108984 (is-Union!12088 (regTwo!24689 (regex!7183 rHead!24)))) b!4109354))

(declare-fun b!4109357 () Bool)

(declare-fun e!2549418 () Bool)

(declare-fun tp!1248768 () Bool)

(assert (=> b!4109357 (= e!2549418 tp!1248768)))

(declare-fun b!4109355 () Bool)

(assert (=> b!4109355 (= e!2549418 tp_is_empty!21143)))

(declare-fun b!4109358 () Bool)

(declare-fun tp!1248765 () Bool)

(declare-fun tp!1248767 () Bool)

(assert (=> b!4109358 (= e!2549418 (and tp!1248765 tp!1248767))))

(declare-fun b!4109356 () Bool)

(declare-fun tp!1248764 () Bool)

(declare-fun tp!1248766 () Bool)

(assert (=> b!4109356 (= e!2549418 (and tp!1248764 tp!1248766))))

(assert (=> b!4108987 (= tp!1248690 e!2549418)))

(assert (= (and b!4108987 (is-ElementMatch!12088 (reg!12417 (regex!7183 (h!49630 rTail!27))))) b!4109355))

(assert (= (and b!4108987 (is-Concat!19501 (reg!12417 (regex!7183 (h!49630 rTail!27))))) b!4109356))

(assert (= (and b!4108987 (is-Star!12088 (reg!12417 (regex!7183 (h!49630 rTail!27))))) b!4109357))

(assert (= (and b!4108987 (is-Union!12088 (reg!12417 (regex!7183 (h!49630 rTail!27))))) b!4109358))

(declare-fun b!4109361 () Bool)

(declare-fun b_free!115393 () Bool)

(declare-fun b_next!116097 () Bool)

(assert (=> b!4109361 (= b_free!115393 (not b_next!116097))))

(declare-fun t!340028 () Bool)

(declare-fun tb!246911 () Bool)

(assert (=> (and b!4109361 (= (toValue!9807 (transformation!7183 (h!49630 (t!339991 (t!339991 rTail!27))))) (toValue!9807 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))))) t!340028) tb!246911))

(declare-fun result!299754 () Bool)

(assert (= result!299754 result!299734))

(assert (=> d!1219213 t!340028))

(declare-fun t!340030 () Bool)

(declare-fun tb!246913 () Bool)

(assert (=> (and b!4109361 (= (toValue!9807 (transformation!7183 (h!49630 (t!339991 (t!339991 rTail!27))))) (toValue!9807 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))))) t!340030) tb!246913))

(declare-fun result!299756 () Bool)

(assert (= result!299756 result!299748))

(assert (=> d!1219229 t!340030))

(declare-fun b_and!317237 () Bool)

(declare-fun tp!1248772 () Bool)

(assert (=> b!4109361 (= tp!1248772 (and (=> t!340028 result!299754) (=> t!340030 result!299756) b_and!317237))))

(declare-fun b_free!115395 () Bool)

(declare-fun b_next!116099 () Bool)

(assert (=> b!4109361 (= b_free!115395 (not b_next!116099))))

(declare-fun t!340032 () Bool)

(declare-fun tb!246915 () Bool)

(assert (=> (and b!4109361 (= (toChars!9666 (transformation!7183 (h!49630 (t!339991 (t!339991 rTail!27))))) (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467801)))))) t!340032) tb!246915))

(declare-fun result!299758 () Bool)

(assert (= result!299758 result!299726))

(assert (=> d!1219191 t!340032))

(declare-fun tb!246917 () Bool)

(declare-fun t!340034 () Bool)

(assert (=> (and b!4109361 (= (toChars!9666 (transformation!7183 (h!49630 (t!339991 (t!339991 rTail!27))))) (toChars!9666 (transformation!7183 (rule!10301 (_1!24599 (get!14469 lt!1467783)))))) t!340034) tb!246917))

(declare-fun result!299760 () Bool)

(assert (= result!299760 result!299742))

(assert (=> d!1219227 t!340034))

(declare-fun tp!1248769 () Bool)

(declare-fun b_and!317239 () Bool)

(assert (=> b!4109361 (= tp!1248769 (and (=> t!340032 result!299758) (=> t!340034 result!299760) b_and!317239))))

(declare-fun e!2549422 () Bool)

(assert (=> b!4109361 (= e!2549422 (and tp!1248772 tp!1248769))))

(declare-fun tp!1248770 () Bool)

(declare-fun b!4109360 () Bool)

(declare-fun e!2549419 () Bool)

(assert (=> b!4109360 (= e!2549419 (and tp!1248770 (inv!58861 (tag!8043 (h!49630 (t!339991 (t!339991 rTail!27))))) (inv!58864 (transformation!7183 (h!49630 (t!339991 (t!339991 rTail!27))))) e!2549422))))

(declare-fun b!4109359 () Bool)

(declare-fun e!2549421 () Bool)

(declare-fun tp!1248771 () Bool)

(assert (=> b!4109359 (= e!2549421 (and e!2549419 tp!1248771))))

(assert (=> b!4109002 (= tp!1248704 e!2549421)))

(assert (= b!4109360 b!4109361))

(assert (= b!4109359 b!4109360))

(assert (= (and b!4109002 (is-Cons!44210 (t!339991 (t!339991 rTail!27)))) b!4109359))

(declare-fun m!4711867 () Bool)

(assert (=> b!4109360 m!4711867))

(declare-fun m!4711869 () Bool)

(assert (=> b!4109360 m!4711869))

(declare-fun b!4109364 () Bool)

(declare-fun e!2549423 () Bool)

(declare-fun tp!1248777 () Bool)

(assert (=> b!4109364 (= e!2549423 tp!1248777)))

(declare-fun b!4109362 () Bool)

(assert (=> b!4109362 (= e!2549423 tp_is_empty!21143)))

(declare-fun b!4109365 () Bool)

(declare-fun tp!1248774 () Bool)

(declare-fun tp!1248776 () Bool)

(assert (=> b!4109365 (= e!2549423 (and tp!1248774 tp!1248776))))

(declare-fun b!4109363 () Bool)

(declare-fun tp!1248773 () Bool)

(declare-fun tp!1248775 () Bool)

(assert (=> b!4109363 (= e!2549423 (and tp!1248773 tp!1248775))))

(assert (=> b!4108986 (= tp!1248686 e!2549423)))

(assert (= (and b!4108986 (is-ElementMatch!12088 (regOne!24688 (regex!7183 (h!49630 rTail!27))))) b!4109362))

(assert (= (and b!4108986 (is-Concat!19501 (regOne!24688 (regex!7183 (h!49630 rTail!27))))) b!4109363))

(assert (= (and b!4108986 (is-Star!12088 (regOne!24688 (regex!7183 (h!49630 rTail!27))))) b!4109364))

(assert (= (and b!4108986 (is-Union!12088 (regOne!24688 (regex!7183 (h!49630 rTail!27))))) b!4109365))

(declare-fun b!4109368 () Bool)

(declare-fun e!2549424 () Bool)

(declare-fun tp!1248782 () Bool)

(assert (=> b!4109368 (= e!2549424 tp!1248782)))

(declare-fun b!4109366 () Bool)

(assert (=> b!4109366 (= e!2549424 tp_is_empty!21143)))

(declare-fun b!4109369 () Bool)

(declare-fun tp!1248779 () Bool)

(declare-fun tp!1248781 () Bool)

(assert (=> b!4109369 (= e!2549424 (and tp!1248779 tp!1248781))))

(declare-fun b!4109367 () Bool)

(declare-fun tp!1248778 () Bool)

(declare-fun tp!1248780 () Bool)

(assert (=> b!4109367 (= e!2549424 (and tp!1248778 tp!1248780))))

(assert (=> b!4108986 (= tp!1248688 e!2549424)))

(assert (= (and b!4108986 (is-ElementMatch!12088 (regTwo!24688 (regex!7183 (h!49630 rTail!27))))) b!4109366))

(assert (= (and b!4108986 (is-Concat!19501 (regTwo!24688 (regex!7183 (h!49630 rTail!27))))) b!4109367))

(assert (= (and b!4108986 (is-Star!12088 (regTwo!24688 (regex!7183 (h!49630 rTail!27))))) b!4109368))

(assert (= (and b!4108986 (is-Union!12088 (regTwo!24688 (regex!7183 (h!49630 rTail!27))))) b!4109369))

(declare-fun b!4109372 () Bool)

(declare-fun e!2549425 () Bool)

(declare-fun tp!1248787 () Bool)

(assert (=> b!4109372 (= e!2549425 tp!1248787)))

(declare-fun b!4109370 () Bool)

(assert (=> b!4109370 (= e!2549425 tp_is_empty!21143)))

(declare-fun b!4109373 () Bool)

(declare-fun tp!1248784 () Bool)

(declare-fun tp!1248786 () Bool)

(assert (=> b!4109373 (= e!2549425 (and tp!1248784 tp!1248786))))

(declare-fun b!4109371 () Bool)

(declare-fun tp!1248783 () Bool)

(declare-fun tp!1248785 () Bool)

(assert (=> b!4109371 (= e!2549425 (and tp!1248783 tp!1248785))))

(assert (=> b!4108982 (= tp!1248681 e!2549425)))

(assert (= (and b!4108982 (is-ElementMatch!12088 (regOne!24688 (regex!7183 rHead!24)))) b!4109370))

(assert (= (and b!4108982 (is-Concat!19501 (regOne!24688 (regex!7183 rHead!24)))) b!4109371))

(assert (= (and b!4108982 (is-Star!12088 (regOne!24688 (regex!7183 rHead!24)))) b!4109372))

(assert (= (and b!4108982 (is-Union!12088 (regOne!24688 (regex!7183 rHead!24)))) b!4109373))

(declare-fun b!4109376 () Bool)

(declare-fun e!2549426 () Bool)

(declare-fun tp!1248792 () Bool)

(assert (=> b!4109376 (= e!2549426 tp!1248792)))

(declare-fun b!4109374 () Bool)

(assert (=> b!4109374 (= e!2549426 tp_is_empty!21143)))

(declare-fun b!4109377 () Bool)

(declare-fun tp!1248789 () Bool)

(declare-fun tp!1248791 () Bool)

(assert (=> b!4109377 (= e!2549426 (and tp!1248789 tp!1248791))))

(declare-fun b!4109375 () Bool)

(declare-fun tp!1248788 () Bool)

(declare-fun tp!1248790 () Bool)

(assert (=> b!4109375 (= e!2549426 (and tp!1248788 tp!1248790))))

(assert (=> b!4108982 (= tp!1248683 e!2549426)))

(assert (= (and b!4108982 (is-ElementMatch!12088 (regTwo!24688 (regex!7183 rHead!24)))) b!4109374))

(assert (= (and b!4108982 (is-Concat!19501 (regTwo!24688 (regex!7183 rHead!24)))) b!4109375))

(assert (= (and b!4108982 (is-Star!12088 (regTwo!24688 (regex!7183 rHead!24)))) b!4109376))

(assert (= (and b!4108982 (is-Union!12088 (regTwo!24688 (regex!7183 rHead!24)))) b!4109377))

(declare-fun b!4109380 () Bool)

(declare-fun e!2549427 () Bool)

(declare-fun tp!1248797 () Bool)

(assert (=> b!4109380 (= e!2549427 tp!1248797)))

(declare-fun b!4109378 () Bool)

(assert (=> b!4109378 (= e!2549427 tp_is_empty!21143)))

(declare-fun b!4109381 () Bool)

(declare-fun tp!1248794 () Bool)

(declare-fun tp!1248796 () Bool)

(assert (=> b!4109381 (= e!2549427 (and tp!1248794 tp!1248796))))

(declare-fun b!4109379 () Bool)

(declare-fun tp!1248793 () Bool)

(declare-fun tp!1248795 () Bool)

(assert (=> b!4109379 (= e!2549427 (and tp!1248793 tp!1248795))))

(assert (=> b!4108988 (= tp!1248687 e!2549427)))

(assert (= (and b!4108988 (is-ElementMatch!12088 (regOne!24689 (regex!7183 (h!49630 rTail!27))))) b!4109378))

(assert (= (and b!4108988 (is-Concat!19501 (regOne!24689 (regex!7183 (h!49630 rTail!27))))) b!4109379))

(assert (= (and b!4108988 (is-Star!12088 (regOne!24689 (regex!7183 (h!49630 rTail!27))))) b!4109380))

(assert (= (and b!4108988 (is-Union!12088 (regOne!24689 (regex!7183 (h!49630 rTail!27))))) b!4109381))

(declare-fun b!4109384 () Bool)

(declare-fun e!2549428 () Bool)

(declare-fun tp!1248802 () Bool)

(assert (=> b!4109384 (= e!2549428 tp!1248802)))

(declare-fun b!4109382 () Bool)

(assert (=> b!4109382 (= e!2549428 tp_is_empty!21143)))

(declare-fun b!4109385 () Bool)

(declare-fun tp!1248799 () Bool)

(declare-fun tp!1248801 () Bool)

(assert (=> b!4109385 (= e!2549428 (and tp!1248799 tp!1248801))))

(declare-fun b!4109383 () Bool)

(declare-fun tp!1248798 () Bool)

(declare-fun tp!1248800 () Bool)

(assert (=> b!4109383 (= e!2549428 (and tp!1248798 tp!1248800))))

(assert (=> b!4108988 (= tp!1248689 e!2549428)))

(assert (= (and b!4108988 (is-ElementMatch!12088 (regTwo!24689 (regex!7183 (h!49630 rTail!27))))) b!4109382))

(assert (= (and b!4108988 (is-Concat!19501 (regTwo!24689 (regex!7183 (h!49630 rTail!27))))) b!4109383))

(assert (= (and b!4108988 (is-Star!12088 (regTwo!24689 (regex!7183 (h!49630 rTail!27))))) b!4109384))

(assert (= (and b!4108988 (is-Union!12088 (regTwo!24689 (regex!7183 (h!49630 rTail!27))))) b!4109385))

(declare-fun b!4109388 () Bool)

(declare-fun e!2549429 () Bool)

(declare-fun tp!1248807 () Bool)

(assert (=> b!4109388 (= e!2549429 tp!1248807)))

(declare-fun b!4109386 () Bool)

(assert (=> b!4109386 (= e!2549429 tp_is_empty!21143)))

(declare-fun b!4109389 () Bool)

(declare-fun tp!1248804 () Bool)

(declare-fun tp!1248806 () Bool)

(assert (=> b!4109389 (= e!2549429 (and tp!1248804 tp!1248806))))

(declare-fun b!4109387 () Bool)

(declare-fun tp!1248803 () Bool)

(declare-fun tp!1248805 () Bool)

(assert (=> b!4109387 (= e!2549429 (and tp!1248803 tp!1248805))))

(assert (=> b!4109003 (= tp!1248703 e!2549429)))

(assert (= (and b!4109003 (is-ElementMatch!12088 (regex!7183 (h!49630 (t!339991 rTail!27))))) b!4109386))

(assert (= (and b!4109003 (is-Concat!19501 (regex!7183 (h!49630 (t!339991 rTail!27))))) b!4109387))

(assert (= (and b!4109003 (is-Star!12088 (regex!7183 (h!49630 (t!339991 rTail!27))))) b!4109388))

(assert (= (and b!4109003 (is-Union!12088 (regex!7183 (h!49630 (t!339991 rTail!27))))) b!4109389))

(push 1)

(assert (not b!4109379))

(assert (not b!4109372))

(assert (not b!4109159))

(assert (not d!1219189))

(assert (not b!4109325))

(assert (not b!4109230))

(assert (not b!4109349))

(assert (not d!1219203))

(assert (not b!4109217))

(assert (not b!4109199))

(assert (not b!4109266))

(assert (not b!4109281))

(assert (not b!4109198))

(assert (not b_next!116099))

(assert (not b!4109388))

(assert (not b_next!116077))

(assert (not b!4109373))

(assert (not b!4109368))

(assert (not b!4109278))

(assert (not d!1219215))

(assert (not d!1219191))

(assert (not d!1219195))

(assert (not d!1219279))

(assert (not d!1219273))

(assert (not b!4109331))

(assert (not b!4109324))

(assert (not b!4109352))

(assert (not d!1219245))

(assert (not b!4109359))

(assert (not b!4109244))

(assert (not b!4109228))

(assert (not b!4109216))

(assert (not b!4109203))

(assert b_and!317239)

(assert (not b!4109348))

(assert (not b!4109274))

(assert (not b!4109231))

(assert (not d!1219253))

(assert (not d!1219193))

(assert (not d!1219223))

(assert (not tb!246899))

(assert (not b!4109277))

(assert (not b!4109183))

(assert (not b!4109182))

(assert (not b!4109153))

(assert (not d!1219237))

(assert (not b!4109350))

(assert (not b!4109197))

(assert (not b!4109269))

(assert (not b!4109243))

(assert (not b!4109344))

(assert (not d!1219231))

(assert (not b!4109227))

(assert (not b!4109353))

(assert (not b!4109318))

(assert (not b!4109313))

(assert (not b_lambda!120613))

(assert (not b!4109200))

(assert (not b!4109229))

(assert (not b!4109069))

(assert (not b!4109071))

(assert (not d!1219243))

(assert (not b!4109201))

(assert (not b!4109363))

(assert (not b!4109336))

(assert (not b!4109279))

(assert (not d!1219217))

(assert (not d!1219259))

(assert (not b!4109195))

(assert (not b!4109384))

(assert (not b!4109369))

(assert (not b!4109224))

(assert (not b!4109186))

(assert (not d!1219199))

(assert (not b!4109377))

(assert (not b!4109357))

(assert (not b!4109340))

(assert (not tb!246905))

(assert (not b!4109223))

(assert b_and!317229)

(assert b_and!317225)

(assert (not b!4109245))

(assert (not b!4109365))

(assert (not b!4109255))

(assert (not d!1219281))

(assert (not b!4109241))

(assert (not b!4109314))

(assert (not b!4109389))

(assert (not d!1219211))

(assert (not b!4109267))

(assert (not b!4109235))

(assert (not b!4109317))

(assert (not bm!289820))

(assert (not b!4109335))

(assert (not b!4109178))

(assert (not b!4109181))

(assert (not b!4109385))

(assert (not b!4109218))

(assert (not b!4109327))

(assert (not b!4109270))

(assert (not b!4109381))

(assert (not b!4109334))

(assert (not b!4109367))

(assert (not b_lambda!120609))

(assert (not b!4109273))

(assert (not b!4109242))

(assert b_and!317235)

(assert (not b!4109371))

(assert (not b!4109387))

(assert (not d!1219209))

(assert (not b!4109152))

(assert (not b!4109234))

(assert (not b!4109316))

(assert (not b_next!116073))

(assert (not b!4109354))

(assert (not d!1219227))

(assert (not b!4109360))

(assert (not b_next!116091))

(assert (not b!4109253))

(assert (not b!4109375))

(assert (not tb!246893))

(assert (not d!1219251))

(assert (not b!4109326))

(assert (not b_next!116097))

(assert (not bm!289821))

(assert (not d!1219249))

(assert (not b!4109358))

(assert (not b!4109356))

(assert (not b!4109180))

(assert (not tb!246887))

(assert (not bm!289817))

(assert (not b_next!116075))

(assert (not b!4109247))

(assert (not d!1219267))

(assert (not b!4109276))

(assert (not b!4109275))

(assert (not b!4109332))

(assert (not b!4109322))

(assert (not b_lambda!120611))

(assert (not d!1219187))

(assert (not b_next!116089))

(assert (not b!4109185))

(assert b_and!317233)

(assert (not b!4109376))

(assert (not b!4109380))

(assert (not b!4109179))

(assert (not d!1219155))

(assert (not b!4109206))

(assert (not b!4109383))

(assert b_and!317237)

(assert b_and!317227)

(assert (not d!1219269))

(assert b_and!317231)

(assert (not b!4109342))

(assert (not b_lambda!120615))

(assert (not b!4109364))

(assert (not b!4109196))

(assert tp_is_empty!21143)

(assert (not b!4109345))

(assert (not b_next!116079))

(assert (not d!1219277))

(assert (not d!1219151))

(assert (not b!4109232))

(assert (not d!1219219))

(assert (not d!1219197))

(assert (not d!1219159))

(assert (not d!1219225))

(assert (not b!4109346))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!116099))

(assert (not b_next!116077))

(assert b_and!317239)

(assert b_and!317235)

(assert (not b_next!116097))

(assert (not b_next!116075))

(assert b_and!317231)

(assert (not b_next!116079))

(assert b_and!317229)

(assert b_and!317225)

(assert (not b_next!116073))

(assert (not b_next!116091))

(assert (not b_next!116089))

(assert b_and!317233)

(assert b_and!317237)

(assert b_and!317227)

(check-sat)

(pop 1)

