; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!388894 () Bool)

(assert start!388894)

(declare-fun b!4103545 () Bool)

(declare-fun b_free!115141 () Bool)

(declare-fun b_next!115845 () Bool)

(assert (=> b!4103545 (= b_free!115141 (not b_next!115845))))

(declare-fun tp!1243547 () Bool)

(declare-fun b_and!316955 () Bool)

(assert (=> b!4103545 (= tp!1243547 b_and!316955)))

(declare-fun b_free!115143 () Bool)

(declare-fun b_next!115847 () Bool)

(assert (=> b!4103545 (= b_free!115143 (not b_next!115847))))

(declare-fun tp!1243549 () Bool)

(declare-fun b_and!316957 () Bool)

(assert (=> b!4103545 (= tp!1243549 b_and!316957)))

(declare-fun b!4103546 () Bool)

(declare-fun b_free!115145 () Bool)

(declare-fun b_next!115849 () Bool)

(assert (=> b!4103546 (= b_free!115145 (not b_next!115849))))

(declare-fun tp!1243546 () Bool)

(declare-fun b_and!316959 () Bool)

(assert (=> b!4103546 (= tp!1243546 b_and!316959)))

(declare-fun b_free!115147 () Bool)

(declare-fun b_next!115851 () Bool)

(assert (=> b!4103546 (= b_free!115147 (not b_next!115851))))

(declare-fun tp!1243550 () Bool)

(declare-fun b_and!316961 () Bool)

(assert (=> b!4103546 (= tp!1243550 b_and!316961)))

(declare-fun b!4103540 () Bool)

(declare-fun e!2546669 () Bool)

(declare-datatypes ((C!24330 0))(
  ( (C!24331 (val!14275 Int)) )
))
(declare-datatypes ((List!44268 0))(
  ( (Nil!44144) (Cons!44144 (h!49564 C!24330) (t!339925 List!44268)) )
))
(declare-datatypes ((IArray!26761 0))(
  ( (IArray!26762 (innerList!13438 List!44268)) )
))
(declare-datatypes ((Conc!13378 0))(
  ( (Node!13378 (left!33132 Conc!13378) (right!33462 Conc!13378) (csize!26986 Int) (cheight!13589 Int)) (Leaf!20677 (xs!16684 IArray!26761) (csize!26987 Int)) (Empty!13378) )
))
(declare-datatypes ((List!44269 0))(
  ( (Nil!44145) (Cons!44145 (h!49565 (_ BitVec 16)) (t!339926 List!44269)) )
))
(declare-datatypes ((TokenValue!7397 0))(
  ( (FloatLiteralValue!14794 (text!52224 List!44269)) (TokenValueExt!7396 (__x!27011 Int)) (Broken!36985 (value!224863 List!44269)) (Object!7520) (End!7397) (Def!7397) (Underscore!7397) (Match!7397) (Else!7397) (Error!7397) (Case!7397) (If!7397) (Extends!7397) (Abstract!7397) (Class!7397) (Val!7397) (DelimiterValue!14794 (del!7457 List!44269)) (KeywordValue!7403 (value!224864 List!44269)) (CommentValue!14794 (value!224865 List!44269)) (WhitespaceValue!14794 (value!224866 List!44269)) (IndentationValue!7397 (value!224867 List!44269)) (String!50736) (Int32!7397) (Broken!36986 (value!224868 List!44269)) (Boolean!7398) (Unit!63629) (OperatorValue!7400 (op!7457 List!44269)) (IdentifierValue!14794 (value!224869 List!44269)) (IdentifierValue!14795 (value!224870 List!44269)) (WhitespaceValue!14795 (value!224871 List!44269)) (True!14794) (False!14794) (Broken!36987 (value!224872 List!44269)) (Broken!36988 (value!224873 List!44269)) (True!14795) (RightBrace!7397) (RightBracket!7397) (Colon!7397) (Null!7397) (Comma!7397) (LeftBracket!7397) (False!14795) (LeftBrace!7397) (ImaginaryLiteralValue!7397 (text!52225 List!44269)) (StringLiteralValue!22191 (value!224874 List!44269)) (EOFValue!7397 (value!224875 List!44269)) (IdentValue!7397 (value!224876 List!44269)) (DelimiterValue!14795 (value!224877 List!44269)) (DedentValue!7397 (value!224878 List!44269)) (NewLineValue!7397 (value!224879 List!44269)) (IntegerValue!22191 (value!224880 (_ BitVec 32)) (text!52226 List!44269)) (IntegerValue!22192 (value!224881 Int) (text!52227 List!44269)) (Times!7397) (Or!7397) (Equal!7397) (Minus!7397) (Broken!36989 (value!224882 List!44269)) (And!7397) (Div!7397) (LessEqual!7397) (Mod!7397) (Concat!19469) (Not!7397) (Plus!7397) (SpaceValue!7397 (value!224883 List!44269)) (IntegerValue!22193 (value!224884 Int) (text!52228 List!44269)) (StringLiteralValue!22192 (text!52229 List!44269)) (FloatLiteralValue!14795 (text!52230 List!44269)) (BytesLiteralValue!7397 (value!224885 List!44269)) (CommentValue!14795 (value!224886 List!44269)) (StringLiteralValue!22193 (value!224887 List!44269)) (ErrorTokenValue!7397 (msg!7458 List!44269)) )
))
(declare-datatypes ((BalanceConc!26350 0))(
  ( (BalanceConc!26351 (c!706600 Conc!13378)) )
))
(declare-datatypes ((TokenValueInjection!14222 0))(
  ( (TokenValueInjection!14223 (toValue!9779 Int) (toChars!9638 Int)) )
))
(declare-datatypes ((Regex!12072 0))(
  ( (ElementMatch!12072 (c!706601 C!24330)) (Concat!19470 (regOne!24656 Regex!12072) (regTwo!24656 Regex!12072)) (EmptyExpr!12072) (Star!12072 (reg!12401 Regex!12072)) (EmptyLang!12072) (Union!12072 (regOne!24657 Regex!12072) (regTwo!24657 Regex!12072)) )
))
(declare-datatypes ((String!50737 0))(
  ( (String!50738 (value!224888 String)) )
))
(declare-datatypes ((Rule!14134 0))(
  ( (Rule!14135 (regex!7167 Regex!12072) (tag!8027 String!50737) (isSeparator!7167 Bool) (transformation!7167 TokenValueInjection!14222)) )
))
(declare-datatypes ((List!44270 0))(
  ( (Nil!44146) (Cons!44146 (h!49566 Rule!14134) (t!339927 List!44270)) )
))
(declare-fun lt!1467307 () List!44270)

(declare-fun rTail!27 () List!44270)

(declare-fun contains!8838 (List!44270 Rule!14134) Bool)

(assert (=> b!4103540 (= e!2546669 (contains!8838 lt!1467307 (h!49566 rTail!27)))))

(declare-fun b!4103541 () Bool)

(declare-fun res!1677614 () Bool)

(declare-fun e!2546676 () Bool)

(assert (=> b!4103541 (=> (not res!1677614) (not e!2546676))))

(assert (=> b!4103541 (= res!1677614 (is-Cons!44146 rTail!27))))

(declare-fun b!4103542 () Bool)

(declare-fun e!2546668 () Bool)

(assert (=> b!4103542 (= e!2546668 e!2546676)))

(declare-fun res!1677613 () Bool)

(assert (=> b!4103542 (=> (not res!1677613) (not e!2546676))))

(declare-datatypes ((LexerInterface!6756 0))(
  ( (LexerInterfaceExt!6753 (__x!27012 Int)) (Lexer!6754) )
))
(declare-fun thiss!26455 () LexerInterface!6756)

(declare-fun rulesInvariant!6099 (LexerInterface!6756 List!44270) Bool)

(assert (=> b!4103542 (= res!1677613 (rulesInvariant!6099 thiss!26455 lt!1467307))))

(declare-fun rHead!24 () Rule!14134)

(assert (=> b!4103542 (= lt!1467307 (Cons!44146 rHead!24 rTail!27))))

(declare-fun res!1677611 () Bool)

(assert (=> start!388894 (=> (not res!1677611) (not e!2546668))))

(assert (=> start!388894 (= res!1677611 (is-Lexer!6754 thiss!26455))))

(assert (=> start!388894 e!2546668))

(assert (=> start!388894 true))

(declare-fun e!2546677 () Bool)

(assert (=> start!388894 e!2546677))

(declare-fun e!2546670 () Bool)

(assert (=> start!388894 e!2546670))

(declare-fun e!2546671 () Bool)

(declare-fun b!4103543 () Bool)

(declare-fun tp!1243548 () Bool)

(declare-fun inv!58821 (String!50737) Bool)

(declare-fun inv!58824 (TokenValueInjection!14222) Bool)

(assert (=> b!4103543 (= e!2546670 (and tp!1243548 (inv!58821 (tag!8027 rHead!24)) (inv!58824 (transformation!7167 rHead!24)) e!2546671))))

(declare-fun b!4103544 () Bool)

(assert (=> b!4103544 (= e!2546676 (not e!2546669))))

(declare-fun res!1677610 () Bool)

(assert (=> b!4103544 (=> res!1677610 e!2546669)))

(assert (=> b!4103544 (= res!1677610 (not (contains!8838 lt!1467307 rHead!24)))))

(declare-datatypes ((List!44271 0))(
  ( (Nil!44147) (Cons!44147 (h!49567 String!50737) (t!339928 List!44271)) )
))
(declare-fun noDuplicateTag!2844 (LexerInterface!6756 List!44270 List!44271) Bool)

(assert (=> b!4103544 (noDuplicateTag!2844 thiss!26455 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27))) Nil!44147)))

(declare-datatypes ((Unit!63630 0))(
  ( (Unit!63631) )
))
(declare-fun lt!1467306 () Unit!63630)

(declare-fun lemmaNoDuplicateCanReorder!39 (LexerInterface!6756 Rule!14134 Rule!14134 List!44270) Unit!63630)

(assert (=> b!4103544 (= lt!1467306 (lemmaNoDuplicateCanReorder!39 thiss!26455 rHead!24 (h!49566 rTail!27) (t!339927 rTail!27)))))

(assert (=> b!4103545 (= e!2546671 (and tp!1243547 tp!1243549))))

(declare-fun e!2546674 () Bool)

(assert (=> b!4103546 (= e!2546674 (and tp!1243546 tp!1243550))))

(declare-fun b!4103547 () Bool)

(declare-fun e!2546672 () Bool)

(declare-fun tp!1243551 () Bool)

(assert (=> b!4103547 (= e!2546677 (and e!2546672 tp!1243551))))

(declare-fun b!4103548 () Bool)

(declare-fun tp!1243545 () Bool)

(assert (=> b!4103548 (= e!2546672 (and tp!1243545 (inv!58821 (tag!8027 (h!49566 rTail!27))) (inv!58824 (transformation!7167 (h!49566 rTail!27))) e!2546674))))

(declare-fun b!4103549 () Bool)

(declare-fun res!1677612 () Bool)

(assert (=> b!4103549 (=> (not res!1677612) (not e!2546668))))

(declare-fun isEmpty!26378 (List!44270) Bool)

(assert (=> b!4103549 (= res!1677612 (not (isEmpty!26378 rTail!27)))))

(assert (= (and start!388894 res!1677611) b!4103549))

(assert (= (and b!4103549 res!1677612) b!4103542))

(assert (= (and b!4103542 res!1677613) b!4103541))

(assert (= (and b!4103541 res!1677614) b!4103544))

(assert (= (and b!4103544 (not res!1677610)) b!4103540))

(assert (= b!4103548 b!4103546))

(assert (= b!4103547 b!4103548))

(assert (= (and start!388894 (is-Cons!44146 rTail!27)) b!4103547))

(assert (= b!4103543 b!4103545))

(assert (= start!388894 b!4103543))

(declare-fun m!4709329 () Bool)

(assert (=> b!4103549 m!4709329))

(declare-fun m!4709331 () Bool)

(assert (=> b!4103544 m!4709331))

(declare-fun m!4709333 () Bool)

(assert (=> b!4103544 m!4709333))

(declare-fun m!4709335 () Bool)

(assert (=> b!4103544 m!4709335))

(declare-fun m!4709337 () Bool)

(assert (=> b!4103548 m!4709337))

(declare-fun m!4709339 () Bool)

(assert (=> b!4103548 m!4709339))

(declare-fun m!4709341 () Bool)

(assert (=> b!4103540 m!4709341))

(declare-fun m!4709343 () Bool)

(assert (=> b!4103543 m!4709343))

(declare-fun m!4709345 () Bool)

(assert (=> b!4103543 m!4709345))

(declare-fun m!4709347 () Bool)

(assert (=> b!4103542 m!4709347))

(push 1)

(assert b_and!316961)

(assert (not b_next!115847))

(assert (not b!4103542))

(assert (not b_next!115851))

(assert (not b_next!115845))

(assert (not b!4103540))

(assert b_and!316955)

(assert (not b!4103547))

(assert (not b!4103548))

(assert b_and!316959)

(assert (not b!4103544))

(assert (not b_next!115849))

(assert b_and!316957)

(assert (not b!4103549))

(assert (not b!4103543))

(check-sat)

(pop 1)

(push 1)

(assert b_and!316961)

(assert b_and!316959)

(assert (not b_next!115847))

(assert (not b_next!115851))

(assert (not b_next!115845))

(assert b_and!316955)

(assert (not b_next!115849))

(assert b_and!316957)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1218091 () Bool)

(declare-fun res!1677639 () Bool)

(declare-fun e!2546710 () Bool)

(assert (=> d!1218091 (=> (not res!1677639) (not e!2546710))))

(declare-fun rulesValid!2816 (LexerInterface!6756 List!44270) Bool)

(assert (=> d!1218091 (= res!1677639 (rulesValid!2816 thiss!26455 lt!1467307))))

(assert (=> d!1218091 (= (rulesInvariant!6099 thiss!26455 lt!1467307) e!2546710)))

(declare-fun b!4103582 () Bool)

(assert (=> b!4103582 (= e!2546710 (noDuplicateTag!2844 thiss!26455 lt!1467307 Nil!44147))))

(assert (= (and d!1218091 res!1677639) b!4103582))

(declare-fun m!4709369 () Bool)

(assert (=> d!1218091 m!4709369))

(declare-fun m!4709371 () Bool)

(assert (=> b!4103582 m!4709371))

(assert (=> b!4103542 d!1218091))

(declare-fun d!1218093 () Bool)

(assert (=> d!1218093 (= (inv!58821 (tag!8027 (h!49566 rTail!27))) (= (mod (str.len (value!224888 (tag!8027 (h!49566 rTail!27)))) 2) 0))))

(assert (=> b!4103548 d!1218093))

(declare-fun d!1218095 () Bool)

(declare-fun res!1677642 () Bool)

(declare-fun e!2546713 () Bool)

(assert (=> d!1218095 (=> (not res!1677642) (not e!2546713))))

(declare-fun semiInverseModEq!3081 (Int Int) Bool)

(assert (=> d!1218095 (= res!1677642 (semiInverseModEq!3081 (toChars!9638 (transformation!7167 (h!49566 rTail!27))) (toValue!9779 (transformation!7167 (h!49566 rTail!27)))))))

(assert (=> d!1218095 (= (inv!58824 (transformation!7167 (h!49566 rTail!27))) e!2546713)))

(declare-fun b!4103585 () Bool)

(declare-fun equivClasses!2980 (Int Int) Bool)

(assert (=> b!4103585 (= e!2546713 (equivClasses!2980 (toChars!9638 (transformation!7167 (h!49566 rTail!27))) (toValue!9779 (transformation!7167 (h!49566 rTail!27)))))))

(assert (= (and d!1218095 res!1677642) b!4103585))

(declare-fun m!4709373 () Bool)

(assert (=> d!1218095 m!4709373))

(declare-fun m!4709375 () Bool)

(assert (=> b!4103585 m!4709375))

(assert (=> b!4103548 d!1218095))

(declare-fun d!1218097 () Bool)

(declare-fun lt!1467316 () Bool)

(declare-fun content!6801 (List!44270) (Set Rule!14134))

(assert (=> d!1218097 (= lt!1467316 (set.member (h!49566 rTail!27) (content!6801 lt!1467307)))))

(declare-fun e!2546719 () Bool)

(assert (=> d!1218097 (= lt!1467316 e!2546719)))

(declare-fun res!1677647 () Bool)

(assert (=> d!1218097 (=> (not res!1677647) (not e!2546719))))

(assert (=> d!1218097 (= res!1677647 (is-Cons!44146 lt!1467307))))

(assert (=> d!1218097 (= (contains!8838 lt!1467307 (h!49566 rTail!27)) lt!1467316)))

(declare-fun b!4103590 () Bool)

(declare-fun e!2546718 () Bool)

(assert (=> b!4103590 (= e!2546719 e!2546718)))

(declare-fun res!1677648 () Bool)

(assert (=> b!4103590 (=> res!1677648 e!2546718)))

(assert (=> b!4103590 (= res!1677648 (= (h!49566 lt!1467307) (h!49566 rTail!27)))))

(declare-fun b!4103591 () Bool)

(assert (=> b!4103591 (= e!2546718 (contains!8838 (t!339927 lt!1467307) (h!49566 rTail!27)))))

(assert (= (and d!1218097 res!1677647) b!4103590))

(assert (= (and b!4103590 (not res!1677648)) b!4103591))

(declare-fun m!4709377 () Bool)

(assert (=> d!1218097 m!4709377))

(declare-fun m!4709379 () Bool)

(assert (=> d!1218097 m!4709379))

(declare-fun m!4709381 () Bool)

(assert (=> b!4103591 m!4709381))

(assert (=> b!4103540 d!1218097))

(declare-fun d!1218099 () Bool)

(assert (=> d!1218099 (= (inv!58821 (tag!8027 rHead!24)) (= (mod (str.len (value!224888 (tag!8027 rHead!24))) 2) 0))))

(assert (=> b!4103543 d!1218099))

(declare-fun d!1218101 () Bool)

(declare-fun res!1677649 () Bool)

(declare-fun e!2546720 () Bool)

(assert (=> d!1218101 (=> (not res!1677649) (not e!2546720))))

(assert (=> d!1218101 (= res!1677649 (semiInverseModEq!3081 (toChars!9638 (transformation!7167 rHead!24)) (toValue!9779 (transformation!7167 rHead!24))))))

(assert (=> d!1218101 (= (inv!58824 (transformation!7167 rHead!24)) e!2546720)))

(declare-fun b!4103592 () Bool)

(assert (=> b!4103592 (= e!2546720 (equivClasses!2980 (toChars!9638 (transformation!7167 rHead!24)) (toValue!9779 (transformation!7167 rHead!24))))))

(assert (= (and d!1218101 res!1677649) b!4103592))

(declare-fun m!4709383 () Bool)

(assert (=> d!1218101 m!4709383))

(declare-fun m!4709385 () Bool)

(assert (=> b!4103592 m!4709385))

(assert (=> b!4103543 d!1218101))

(declare-fun d!1218103 () Bool)

(assert (=> d!1218103 (= (isEmpty!26378 rTail!27) (is-Nil!44146 rTail!27))))

(assert (=> b!4103549 d!1218103))

(declare-fun d!1218105 () Bool)

(declare-fun lt!1467317 () Bool)

(assert (=> d!1218105 (= lt!1467317 (set.member rHead!24 (content!6801 lt!1467307)))))

(declare-fun e!2546722 () Bool)

(assert (=> d!1218105 (= lt!1467317 e!2546722)))

(declare-fun res!1677650 () Bool)

(assert (=> d!1218105 (=> (not res!1677650) (not e!2546722))))

(assert (=> d!1218105 (= res!1677650 (is-Cons!44146 lt!1467307))))

(assert (=> d!1218105 (= (contains!8838 lt!1467307 rHead!24) lt!1467317)))

(declare-fun b!4103593 () Bool)

(declare-fun e!2546721 () Bool)

(assert (=> b!4103593 (= e!2546722 e!2546721)))

(declare-fun res!1677651 () Bool)

(assert (=> b!4103593 (=> res!1677651 e!2546721)))

(assert (=> b!4103593 (= res!1677651 (= (h!49566 lt!1467307) rHead!24))))

(declare-fun b!4103594 () Bool)

(assert (=> b!4103594 (= e!2546721 (contains!8838 (t!339927 lt!1467307) rHead!24))))

(assert (= (and d!1218105 res!1677650) b!4103593))

(assert (= (and b!4103593 (not res!1677651)) b!4103594))

(assert (=> d!1218105 m!4709377))

(declare-fun m!4709387 () Bool)

(assert (=> d!1218105 m!4709387))

(declare-fun m!4709389 () Bool)

(assert (=> b!4103594 m!4709389))

(assert (=> b!4103544 d!1218105))

(declare-fun d!1218107 () Bool)

(declare-fun res!1677656 () Bool)

(declare-fun e!2546727 () Bool)

(assert (=> d!1218107 (=> res!1677656 e!2546727)))

(assert (=> d!1218107 (= res!1677656 (is-Nil!44146 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27)))))))

(assert (=> d!1218107 (= (noDuplicateTag!2844 thiss!26455 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27))) Nil!44147) e!2546727)))

(declare-fun b!4103599 () Bool)

(declare-fun e!2546728 () Bool)

(assert (=> b!4103599 (= e!2546727 e!2546728)))

(declare-fun res!1677657 () Bool)

(assert (=> b!4103599 (=> (not res!1677657) (not e!2546728))))

(declare-fun contains!8840 (List!44271 String!50737) Bool)

(assert (=> b!4103599 (= res!1677657 (not (contains!8840 Nil!44147 (tag!8027 (h!49566 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27))))))))))

(declare-fun b!4103600 () Bool)

(assert (=> b!4103600 (= e!2546728 (noDuplicateTag!2844 thiss!26455 (t!339927 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27)))) (Cons!44147 (tag!8027 (h!49566 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27))))) Nil!44147)))))

(assert (= (and d!1218107 (not res!1677656)) b!4103599))

(assert (= (and b!4103599 res!1677657) b!4103600))

(declare-fun m!4709391 () Bool)

(assert (=> b!4103599 m!4709391))

(declare-fun m!4709393 () Bool)

(assert (=> b!4103600 m!4709393))

(assert (=> b!4103544 d!1218107))

(declare-fun d!1218109 () Bool)

(assert (=> d!1218109 (noDuplicateTag!2844 thiss!26455 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27))) Nil!44147)))

(declare-fun lt!1467320 () Unit!63630)

(declare-fun choose!25087 (LexerInterface!6756 Rule!14134 Rule!14134 List!44270) Unit!63630)

(assert (=> d!1218109 (= lt!1467320 (choose!25087 thiss!26455 rHead!24 (h!49566 rTail!27) (t!339927 rTail!27)))))

(assert (=> d!1218109 (noDuplicateTag!2844 thiss!26455 (Cons!44146 rHead!24 (Cons!44146 (h!49566 rTail!27) (t!339927 rTail!27))) Nil!44147)))

(assert (=> d!1218109 (= (lemmaNoDuplicateCanReorder!39 thiss!26455 rHead!24 (h!49566 rTail!27) (t!339927 rTail!27)) lt!1467320)))

(declare-fun bs!593973 () Bool)

(assert (= bs!593973 d!1218109))

(assert (=> bs!593973 m!4709333))

(declare-fun m!4709395 () Bool)

(assert (=> bs!593973 m!4709395))

(declare-fun m!4709397 () Bool)

(assert (=> bs!593973 m!4709397))

(assert (=> b!4103544 d!1218109))

(declare-fun b!4103611 () Bool)

(declare-fun b_free!115157 () Bool)

(declare-fun b_next!115861 () Bool)

(assert (=> b!4103611 (= b_free!115157 (not b_next!115861))))

(declare-fun tp!1243584 () Bool)

(declare-fun b_and!316971 () Bool)

(assert (=> b!4103611 (= tp!1243584 b_and!316971)))

(declare-fun b_free!115159 () Bool)

(declare-fun b_next!115863 () Bool)

(assert (=> b!4103611 (= b_free!115159 (not b_next!115863))))

(declare-fun tp!1243582 () Bool)

(declare-fun b_and!316973 () Bool)

(assert (=> b!4103611 (= tp!1243582 b_and!316973)))

(declare-fun e!2546740 () Bool)

(assert (=> b!4103611 (= e!2546740 (and tp!1243584 tp!1243582))))

(declare-fun b!4103610 () Bool)

(declare-fun tp!1243583 () Bool)

(declare-fun e!2546737 () Bool)

(assert (=> b!4103610 (= e!2546737 (and tp!1243583 (inv!58821 (tag!8027 (h!49566 (t!339927 rTail!27)))) (inv!58824 (transformation!7167 (h!49566 (t!339927 rTail!27)))) e!2546740))))

(declare-fun b!4103609 () Bool)

(declare-fun e!2546738 () Bool)

(declare-fun tp!1243581 () Bool)

(assert (=> b!4103609 (= e!2546738 (and e!2546737 tp!1243581))))

(assert (=> b!4103547 (= tp!1243551 e!2546738)))

(assert (= b!4103610 b!4103611))

(assert (= b!4103609 b!4103610))

(assert (= (and b!4103547 (is-Cons!44146 (t!339927 rTail!27))) b!4103609))

(declare-fun m!4709399 () Bool)

(assert (=> b!4103610 m!4709399))

(declare-fun m!4709401 () Bool)

(assert (=> b!4103610 m!4709401))

(declare-fun b!4103625 () Bool)

(declare-fun e!2546743 () Bool)

(declare-fun tp!1243598 () Bool)

(declare-fun tp!1243595 () Bool)

(assert (=> b!4103625 (= e!2546743 (and tp!1243598 tp!1243595))))

(declare-fun b!4103624 () Bool)

(declare-fun tp!1243599 () Bool)

(assert (=> b!4103624 (= e!2546743 tp!1243599)))

(declare-fun b!4103622 () Bool)

(declare-fun tp_is_empty!21115 () Bool)

(assert (=> b!4103622 (= e!2546743 tp_is_empty!21115)))

(assert (=> b!4103548 (= tp!1243545 e!2546743)))

(declare-fun b!4103623 () Bool)

(declare-fun tp!1243597 () Bool)

(declare-fun tp!1243596 () Bool)

(assert (=> b!4103623 (= e!2546743 (and tp!1243597 tp!1243596))))

(assert (= (and b!4103548 (is-ElementMatch!12072 (regex!7167 (h!49566 rTail!27)))) b!4103622))

(assert (= (and b!4103548 (is-Concat!19470 (regex!7167 (h!49566 rTail!27)))) b!4103623))

(assert (= (and b!4103548 (is-Star!12072 (regex!7167 (h!49566 rTail!27)))) b!4103624))

(assert (= (and b!4103548 (is-Union!12072 (regex!7167 (h!49566 rTail!27)))) b!4103625))

(declare-fun b!4103629 () Bool)

(declare-fun e!2546744 () Bool)

(declare-fun tp!1243603 () Bool)

(declare-fun tp!1243600 () Bool)

(assert (=> b!4103629 (= e!2546744 (and tp!1243603 tp!1243600))))

(declare-fun b!4103628 () Bool)

(declare-fun tp!1243604 () Bool)

(assert (=> b!4103628 (= e!2546744 tp!1243604)))

(declare-fun b!4103626 () Bool)

(assert (=> b!4103626 (= e!2546744 tp_is_empty!21115)))

(assert (=> b!4103543 (= tp!1243548 e!2546744)))

(declare-fun b!4103627 () Bool)

(declare-fun tp!1243602 () Bool)

(declare-fun tp!1243601 () Bool)

(assert (=> b!4103627 (= e!2546744 (and tp!1243602 tp!1243601))))

(assert (= (and b!4103543 (is-ElementMatch!12072 (regex!7167 rHead!24))) b!4103626))

(assert (= (and b!4103543 (is-Concat!19470 (regex!7167 rHead!24))) b!4103627))

(assert (= (and b!4103543 (is-Star!12072 (regex!7167 rHead!24))) b!4103628))

(assert (= (and b!4103543 (is-Union!12072 (regex!7167 rHead!24))) b!4103629))

(push 1)

(assert (not b!4103628))

(assert (not b!4103625))

(assert (not d!1218109))

(assert tp_is_empty!21115)

(assert (not b!4103585))

(assert (not b!4103624))

(assert (not b!4103600))

(assert (not b_next!115851))

(assert (not d!1218091))

(assert (not b!4103591))

(assert (not b!4103629))

(assert (not b!4103610))

(assert b_and!316961)

(assert b_and!316959)

(assert (not d!1218101))

(assert (not b!4103609))

(assert b_and!316973)

(assert (not b!4103623))

(assert (not d!1218105))

(assert (not b!4103599))

(assert (not b!4103594))

(assert (not b_next!115849))

(assert b_and!316957)

(assert (not b_next!115863))

(assert (not b_next!115847))

(assert (not d!1218095))

(assert (not b_next!115845))

(assert b_and!316955)

(assert (not b!4103627))

(assert (not b!4103582))

(assert (not d!1218097))

(assert (not b!4103592))

(assert (not b_next!115861))

(assert b_and!316971)

(check-sat)

(pop 1)

(push 1)

(assert b_and!316961)

(assert b_and!316959)

(assert b_and!316973)

(assert (not b_next!115851))

(assert (not b_next!115845))

(assert b_and!316955)

(assert (not b_next!115849))

(assert b_and!316957)

(assert (not b_next!115863))

(assert (not b_next!115847))

(assert (not b_next!115861))

(assert b_and!316971)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1218131 () Bool)

(assert (=> d!1218131 true))

(declare-fun order!23215 () Int)

(declare-fun lambda!128280 () Int)

(declare-fun order!23217 () Int)

(declare-fun dynLambda!18882 (Int Int) Int)

(declare-fun dynLambda!18883 (Int Int) Int)

(assert (=> d!1218131 (< (dynLambda!18882 order!23215 (toChars!9638 (transformation!7167 rHead!24))) (dynLambda!18883 order!23217 lambda!128280))))

(assert (=> d!1218131 true))

(declare-fun order!23219 () Int)

(declare-fun dynLambda!18884 (Int Int) Int)

(assert (=> d!1218131 (< (dynLambda!18884 order!23219 (toValue!9779 (transformation!7167 rHead!24))) (dynLambda!18883 order!23217 lambda!128280))))

(declare-fun Forall!1526 (Int) Bool)

(assert (=> d!1218131 (= (semiInverseModEq!3081 (toChars!9638 (transformation!7167 rHead!24)) (toValue!9779 (transformation!7167 rHead!24))) (Forall!1526 lambda!128280))))

(declare-fun bs!593975 () Bool)

(assert (= bs!593975 d!1218131))

(declare-fun m!4709447 () Bool)

(assert (=> bs!593975 m!4709447))

(assert (=> d!1218101 d!1218131))

(declare-fun d!1218139 () Bool)

(declare-fun c!706606 () Bool)

(assert (=> d!1218139 (= c!706606 (is-Nil!44146 lt!1467307))))

(declare-fun e!2546788 () (Set Rule!14134))

(assert (=> d!1218139 (= (content!6801 lt!1467307) e!2546788)))

(declare-fun b!4103692 () Bool)

(assert (=> b!4103692 (= e!2546788 (as set.empty (Set Rule!14134)))))

(declare-fun b!4103693 () Bool)

(assert (=> b!4103693 (= e!2546788 (set.union (set.insert (h!49566 lt!1467307) (as set.empty (Set Rule!14134))) (content!6801 (t!339927 lt!1467307))))))

(assert (= (and d!1218139 c!706606) b!4103692))

(assert (= (and d!1218139 (not c!706606)) b!4103693))

(declare-fun m!4709449 () Bool)

(assert (=> b!4103693 m!4709449))

(declare-fun m!4709451 () Bool)

(assert (=> b!4103693 m!4709451))

(assert (=> d!1218097 d!1218139))

(declare-fun d!1218141 () Bool)

(assert (=> d!1218141 true))

(declare-fun lt!1467331 () Bool)

(declare-fun rulesValidInductive!2658 (LexerInterface!6756 List!44270) Bool)

(assert (=> d!1218141 (= lt!1467331 (rulesValidInductive!2658 thiss!26455 lt!1467307))))

(declare-fun lambda!128283 () Int)

(declare-fun forall!8426 (List!44270 Int) Bool)

(assert (=> d!1218141 (= lt!1467331 (forall!8426 lt!1467307 lambda!128283))))

(assert (=> d!1218141 (= (rulesValid!2816 thiss!26455 lt!1467307) lt!1467331)))

(declare-fun bs!593976 () Bool)

(assert (= bs!593976 d!1218141))

(declare-fun m!4709453 () Bool)

(assert (=> bs!593976 m!4709453))

(declare-fun m!4709455 () Bool)

(assert (=> bs!593976 m!4709455))

(assert (=> d!1218091 d!1218141))

(declare-fun d!1218143 () Bool)

(assert (=> d!1218143 (= (inv!58821 (tag!8027 (h!49566 (t!339927 rTail!27)))) (= (mod (str.len (value!224888 (tag!8027 (h!49566 (t!339927 rTail!27))))) 2) 0))))

(assert (=> b!4103610 d!1218143))

(declare-fun d!1218145 () Bool)

(declare-fun res!1677690 () Bool)

(declare-fun e!2546789 () Bool)

(assert (=> d!1218145 (=> (not res!1677690) (not e!2546789))))

(assert (=> d!1218145 (= res!1677690 (semiInverseModEq!3081 (toChars!9638 (transformation!7167 (h!49566 (t!339927 rTail!27)))) (toValue!9779 (transformation!7167 (h!49566 (t!339927 rTail!27))))))))

(assert (=> d!1218145 (= (inv!58824 (transformation!7167 (h!49566 (t!339927 rTail!27)))) e!2546789)))

(declare-fun b!4103696 () Bool)

(assert (=> b!4103696 (= e!2546789 (equivClasses!2980 (toChars!9638 (transformation!7167 (h!49566 (t!339927 rTail!27)))) (toValue!9779 (transformation!7167 (h!49566 (t!339927 rTail!27))))))))

(assert (= (and d!1218145 res!1677690) b!4103696))

(declare-fun m!4709457 () Bool)

(assert (=> d!1218145 m!4709457))

(declare-fun m!4709459 () Bool)

(assert (=> b!4103696 m!4709459))

(assert (=> b!4103610 d!1218145))

(declare-fun d!1218147 () Bool)

(declare-fun lt!1467332 () Bool)

(assert (=> d!1218147 (= lt!1467332 (set.member (h!49566 rTail!27) (content!6801 (t!339927 lt!1467307))))))

(declare-fun e!2546791 () Bool)

(assert (=> d!1218147 (= lt!1467332 e!2546791)))

(declare-fun res!1677691 () Bool)

(assert (=> d!1218147 (=> (not res!1677691) (not e!2546791))))

(assert (=> d!1218147 (= res!1677691 (is-Cons!44146 (t!339927 lt!1467307)))))

(assert (=> d!1218147 (= (contains!8838 (t!339927 lt!1467307) (h!49566 rTail!27)) lt!1467332)))

(declare-fun b!4103697 () Bool)

(declare-fun e!2546790 () Bool)

(assert (=> b!4103697 (= e!2546791 e!2546790)))

(declare-fun res!1677692 () Bool)

(assert (=> b!4103697 (=> res!1677692 e!2546790)))

(assert (=> b!4103697 (= res!1677692 (= (h!49566 (t!339927 lt!1467307)) (h!49566 rTail!27)))))

(declare-fun b!4103698 () Bool)

(assert (=> b!4103698 (= e!2546790 (contains!8838 (t!339927 (t!339927 lt!1467307)) (h!49566 rTail!27)))))

(assert (= (and d!1218147 res!1677691) b!4103697))

(assert (= (and b!4103697 (not res!1677692)) b!4103698))

(assert (=> d!1218147 m!4709451))

(declare-fun m!4709461 () Bool)

(assert (=> d!1218147 m!4709461))

(declare-fun m!4709463 () Bool)

(assert (=> b!4103698 m!4709463))

(assert (=> b!4103591 d!1218147))

(assert (=> d!1218105 d!1218139))

(declare-fun bs!593977 () Bool)

(declare-fun d!1218149 () Bool)

(assert (= bs!593977 (and d!1218149 d!1218131)))

(declare-fun lambda!128284 () Int)

(assert (=> bs!593977 (= (and (= (toChars!9638 (transformation!7167 (h!49566 rTail!27))) (toChars!9638 (transformation!7167 rHead!24))) (= (toValue!9779 (transformation!7167 (h!49566 rTail!27))) (toValue!9779 (transformation!7167 rHead!24)))) (= lambda!128284 lambda!128280))))

(assert (=> d!1218149 true))

(assert (=> d!1218149 (< (dynLambda!18882 order!23215 (toChars!9638 (transformation!7167 (h!49566 rTail!27)))) (dynLambda!18883 order!23217 lambda!128284))))

(assert (=> d!1218149 true))

(assert (=> d!1218149 (< (dynLambda!18884 order!23219 (toValue!9779 (transformation!7167 (h!49566 rTail!27)))) (dynLambda!18883 order!23217 lambda!128284))))

(assert (=> d!1218149 (= (semiInverseModEq!3081 (toChars!9638 (transformation!7167 (h!49566 rTail!27))) (toValue!9779 (transformation!7167 (h!49566 rTail!27)))) (Forall!1526 lambda!128284))))

(declare-fun bs!593978 () Bool)

(assert (= bs!593978 d!1218149))

(declare-fun m!4709465 () Bool)

(assert (=> bs!593978 m!4709465))

(assert (=> d!1218095 d!1218149))

(declare-fun d!1218151 () Bool)

(declare-fun res!1677693 () Bool)

(declare-fun e!2546792 () Bool)

(assert (=> d!1218151 (=> res!1677693 e!2546792)))

(assert (=> d!1218151 (= res!1677693 (is-Nil!44146 (t!339927 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27))))))))

(assert (=> d!1218151 (= (noDuplicateTag!2844 thiss!26455 (t!339927 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27)))) (Cons!44147 (tag!8027 (h!49566 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27))))) Nil!44147)) e!2546792)))

(declare-fun b!4103699 () Bool)

(declare-fun e!2546793 () Bool)

(assert (=> b!4103699 (= e!2546792 e!2546793)))

(declare-fun res!1677694 () Bool)

(assert (=> b!4103699 (=> (not res!1677694) (not e!2546793))))

(assert (=> b!4103699 (= res!1677694 (not (contains!8840 (Cons!44147 (tag!8027 (h!49566 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27))))) Nil!44147) (tag!8027 (h!49566 (t!339927 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27)))))))))))

(declare-fun b!4103700 () Bool)

(assert (=> b!4103700 (= e!2546793 (noDuplicateTag!2844 thiss!26455 (t!339927 (t!339927 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27))))) (Cons!44147 (tag!8027 (h!49566 (t!339927 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27)))))) (Cons!44147 (tag!8027 (h!49566 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27))))) Nil!44147))))))

(assert (= (and d!1218151 (not res!1677693)) b!4103699))

(assert (= (and b!4103699 res!1677694) b!4103700))

(declare-fun m!4709467 () Bool)

(assert (=> b!4103699 m!4709467))

(declare-fun m!4709469 () Bool)

(assert (=> b!4103700 m!4709469))

(assert (=> b!4103600 d!1218151))

(declare-fun d!1218153 () Bool)

(declare-fun lt!1467335 () Bool)

(declare-fun content!6803 (List!44271) (Set String!50737))

(assert (=> d!1218153 (= lt!1467335 (set.member (tag!8027 (h!49566 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27))))) (content!6803 Nil!44147)))))

(declare-fun e!2546799 () Bool)

(assert (=> d!1218153 (= lt!1467335 e!2546799)))

(declare-fun res!1677699 () Bool)

(assert (=> d!1218153 (=> (not res!1677699) (not e!2546799))))

(assert (=> d!1218153 (= res!1677699 (is-Cons!44147 Nil!44147))))

(assert (=> d!1218153 (= (contains!8840 Nil!44147 (tag!8027 (h!49566 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27)))))) lt!1467335)))

(declare-fun b!4103705 () Bool)

(declare-fun e!2546798 () Bool)

(assert (=> b!4103705 (= e!2546799 e!2546798)))

(declare-fun res!1677700 () Bool)

(assert (=> b!4103705 (=> res!1677700 e!2546798)))

(assert (=> b!4103705 (= res!1677700 (= (h!49567 Nil!44147) (tag!8027 (h!49566 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27)))))))))

(declare-fun b!4103706 () Bool)

(assert (=> b!4103706 (= e!2546798 (contains!8840 (t!339928 Nil!44147) (tag!8027 (h!49566 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27)))))))))

(assert (= (and d!1218153 res!1677699) b!4103705))

(assert (= (and b!4103705 (not res!1677700)) b!4103706))

(declare-fun m!4709471 () Bool)

(assert (=> d!1218153 m!4709471))

(declare-fun m!4709473 () Bool)

(assert (=> d!1218153 m!4709473))

(declare-fun m!4709475 () Bool)

(assert (=> b!4103706 m!4709475))

(assert (=> b!4103599 d!1218153))

(declare-fun d!1218155 () Bool)

(declare-fun res!1677701 () Bool)

(declare-fun e!2546800 () Bool)

(assert (=> d!1218155 (=> res!1677701 e!2546800)))

(assert (=> d!1218155 (= res!1677701 (is-Nil!44146 lt!1467307))))

(assert (=> d!1218155 (= (noDuplicateTag!2844 thiss!26455 lt!1467307 Nil!44147) e!2546800)))

(declare-fun b!4103707 () Bool)

(declare-fun e!2546801 () Bool)

(assert (=> b!4103707 (= e!2546800 e!2546801)))

(declare-fun res!1677702 () Bool)

(assert (=> b!4103707 (=> (not res!1677702) (not e!2546801))))

(assert (=> b!4103707 (= res!1677702 (not (contains!8840 Nil!44147 (tag!8027 (h!49566 lt!1467307)))))))

(declare-fun b!4103708 () Bool)

(assert (=> b!4103708 (= e!2546801 (noDuplicateTag!2844 thiss!26455 (t!339927 lt!1467307) (Cons!44147 (tag!8027 (h!49566 lt!1467307)) Nil!44147)))))

(assert (= (and d!1218155 (not res!1677701)) b!4103707))

(assert (= (and b!4103707 res!1677702) b!4103708))

(declare-fun m!4709477 () Bool)

(assert (=> b!4103707 m!4709477))

(declare-fun m!4709479 () Bool)

(assert (=> b!4103708 m!4709479))

(assert (=> b!4103582 d!1218155))

(declare-fun d!1218157 () Bool)

(assert (=> d!1218157 true))

(declare-fun lambda!128287 () Int)

(declare-fun order!23221 () Int)

(declare-fun dynLambda!18885 (Int Int) Int)

(assert (=> d!1218157 (< (dynLambda!18884 order!23219 (toValue!9779 (transformation!7167 (h!49566 rTail!27)))) (dynLambda!18885 order!23221 lambda!128287))))

(declare-fun Forall2!1125 (Int) Bool)

(assert (=> d!1218157 (= (equivClasses!2980 (toChars!9638 (transformation!7167 (h!49566 rTail!27))) (toValue!9779 (transformation!7167 (h!49566 rTail!27)))) (Forall2!1125 lambda!128287))))

(declare-fun bs!593979 () Bool)

(assert (= bs!593979 d!1218157))

(declare-fun m!4709481 () Bool)

(assert (=> bs!593979 m!4709481))

(assert (=> b!4103585 d!1218157))

(assert (=> d!1218109 d!1218107))

(declare-fun d!1218159 () Bool)

(assert (=> d!1218159 (noDuplicateTag!2844 thiss!26455 (Cons!44146 (h!49566 rTail!27) (Cons!44146 rHead!24 (t!339927 rTail!27))) Nil!44147)))

(assert (=> d!1218159 true))

(declare-fun _$67!54 () Unit!63630)

(assert (=> d!1218159 (= (choose!25087 thiss!26455 rHead!24 (h!49566 rTail!27) (t!339927 rTail!27)) _$67!54)))

(declare-fun bs!593980 () Bool)

(assert (= bs!593980 d!1218159))

(assert (=> bs!593980 m!4709333))

(assert (=> d!1218109 d!1218159))

(declare-fun d!1218161 () Bool)

(declare-fun res!1677705 () Bool)

(declare-fun e!2546804 () Bool)

(assert (=> d!1218161 (=> res!1677705 e!2546804)))

(assert (=> d!1218161 (= res!1677705 (is-Nil!44146 (Cons!44146 rHead!24 (Cons!44146 (h!49566 rTail!27) (t!339927 rTail!27)))))))

(assert (=> d!1218161 (= (noDuplicateTag!2844 thiss!26455 (Cons!44146 rHead!24 (Cons!44146 (h!49566 rTail!27) (t!339927 rTail!27))) Nil!44147) e!2546804)))

(declare-fun b!4103713 () Bool)

(declare-fun e!2546805 () Bool)

(assert (=> b!4103713 (= e!2546804 e!2546805)))

(declare-fun res!1677706 () Bool)

(assert (=> b!4103713 (=> (not res!1677706) (not e!2546805))))

(assert (=> b!4103713 (= res!1677706 (not (contains!8840 Nil!44147 (tag!8027 (h!49566 (Cons!44146 rHead!24 (Cons!44146 (h!49566 rTail!27) (t!339927 rTail!27))))))))))

(declare-fun b!4103714 () Bool)

(assert (=> b!4103714 (= e!2546805 (noDuplicateTag!2844 thiss!26455 (t!339927 (Cons!44146 rHead!24 (Cons!44146 (h!49566 rTail!27) (t!339927 rTail!27)))) (Cons!44147 (tag!8027 (h!49566 (Cons!44146 rHead!24 (Cons!44146 (h!49566 rTail!27) (t!339927 rTail!27))))) Nil!44147)))))

(assert (= (and d!1218161 (not res!1677705)) b!4103713))

(assert (= (and b!4103713 res!1677706) b!4103714))

(declare-fun m!4709483 () Bool)

(assert (=> b!4103713 m!4709483))

(declare-fun m!4709485 () Bool)

(assert (=> b!4103714 m!4709485))

(assert (=> d!1218109 d!1218161))

(declare-fun d!1218163 () Bool)

(declare-fun lt!1467336 () Bool)

(assert (=> d!1218163 (= lt!1467336 (set.member rHead!24 (content!6801 (t!339927 lt!1467307))))))

(declare-fun e!2546807 () Bool)

(assert (=> d!1218163 (= lt!1467336 e!2546807)))

(declare-fun res!1677707 () Bool)

(assert (=> d!1218163 (=> (not res!1677707) (not e!2546807))))

(assert (=> d!1218163 (= res!1677707 (is-Cons!44146 (t!339927 lt!1467307)))))

(assert (=> d!1218163 (= (contains!8838 (t!339927 lt!1467307) rHead!24) lt!1467336)))

(declare-fun b!4103715 () Bool)

(declare-fun e!2546806 () Bool)

(assert (=> b!4103715 (= e!2546807 e!2546806)))

(declare-fun res!1677708 () Bool)

(assert (=> b!4103715 (=> res!1677708 e!2546806)))

(assert (=> b!4103715 (= res!1677708 (= (h!49566 (t!339927 lt!1467307)) rHead!24))))

(declare-fun b!4103716 () Bool)

(assert (=> b!4103716 (= e!2546806 (contains!8838 (t!339927 (t!339927 lt!1467307)) rHead!24))))

(assert (= (and d!1218163 res!1677707) b!4103715))

(assert (= (and b!4103715 (not res!1677708)) b!4103716))

(assert (=> d!1218163 m!4709451))

(declare-fun m!4709487 () Bool)

(assert (=> d!1218163 m!4709487))

(declare-fun m!4709489 () Bool)

(assert (=> b!4103716 m!4709489))

(assert (=> b!4103594 d!1218163))

(declare-fun bs!593981 () Bool)

(declare-fun d!1218165 () Bool)

(assert (= bs!593981 (and d!1218165 d!1218157)))

(declare-fun lambda!128288 () Int)

(assert (=> bs!593981 (= (= (toValue!9779 (transformation!7167 rHead!24)) (toValue!9779 (transformation!7167 (h!49566 rTail!27)))) (= lambda!128288 lambda!128287))))

(assert (=> d!1218165 true))

(assert (=> d!1218165 (< (dynLambda!18884 order!23219 (toValue!9779 (transformation!7167 rHead!24))) (dynLambda!18885 order!23221 lambda!128288))))

(assert (=> d!1218165 (= (equivClasses!2980 (toChars!9638 (transformation!7167 rHead!24)) (toValue!9779 (transformation!7167 rHead!24))) (Forall2!1125 lambda!128288))))

(declare-fun bs!593982 () Bool)

(assert (= bs!593982 d!1218165))

(declare-fun m!4709491 () Bool)

(assert (=> bs!593982 m!4709491))

(assert (=> b!4103592 d!1218165))

(declare-fun b!4103720 () Bool)

(declare-fun e!2546808 () Bool)

(declare-fun tp!1243640 () Bool)

(declare-fun tp!1243637 () Bool)

(assert (=> b!4103720 (= e!2546808 (and tp!1243640 tp!1243637))))

(declare-fun b!4103719 () Bool)

(declare-fun tp!1243641 () Bool)

(assert (=> b!4103719 (= e!2546808 tp!1243641)))

(declare-fun b!4103717 () Bool)

(assert (=> b!4103717 (= e!2546808 tp_is_empty!21115)))

(assert (=> b!4103627 (= tp!1243602 e!2546808)))

(declare-fun b!4103718 () Bool)

(declare-fun tp!1243639 () Bool)

(declare-fun tp!1243638 () Bool)

(assert (=> b!4103718 (= e!2546808 (and tp!1243639 tp!1243638))))

(assert (= (and b!4103627 (is-ElementMatch!12072 (regOne!24656 (regex!7167 rHead!24)))) b!4103717))

(assert (= (and b!4103627 (is-Concat!19470 (regOne!24656 (regex!7167 rHead!24)))) b!4103718))

(assert (= (and b!4103627 (is-Star!12072 (regOne!24656 (regex!7167 rHead!24)))) b!4103719))

(assert (= (and b!4103627 (is-Union!12072 (regOne!24656 (regex!7167 rHead!24)))) b!4103720))

(declare-fun b!4103724 () Bool)

(declare-fun e!2546809 () Bool)

(declare-fun tp!1243645 () Bool)

(declare-fun tp!1243642 () Bool)

(assert (=> b!4103724 (= e!2546809 (and tp!1243645 tp!1243642))))

(declare-fun b!4103723 () Bool)

(declare-fun tp!1243646 () Bool)

(assert (=> b!4103723 (= e!2546809 tp!1243646)))

(declare-fun b!4103721 () Bool)

(assert (=> b!4103721 (= e!2546809 tp_is_empty!21115)))

(assert (=> b!4103627 (= tp!1243601 e!2546809)))

(declare-fun b!4103722 () Bool)

(declare-fun tp!1243644 () Bool)

(declare-fun tp!1243643 () Bool)

(assert (=> b!4103722 (= e!2546809 (and tp!1243644 tp!1243643))))

(assert (= (and b!4103627 (is-ElementMatch!12072 (regTwo!24656 (regex!7167 rHead!24)))) b!4103721))

(assert (= (and b!4103627 (is-Concat!19470 (regTwo!24656 (regex!7167 rHead!24)))) b!4103722))

(assert (= (and b!4103627 (is-Star!12072 (regTwo!24656 (regex!7167 rHead!24)))) b!4103723))

(assert (= (and b!4103627 (is-Union!12072 (regTwo!24656 (regex!7167 rHead!24)))) b!4103724))

(declare-fun b!4103727 () Bool)

(declare-fun b_free!115165 () Bool)

(declare-fun b_next!115869 () Bool)

(assert (=> b!4103727 (= b_free!115165 (not b_next!115869))))

(declare-fun tp!1243650 () Bool)

(declare-fun b_and!316979 () Bool)

(assert (=> b!4103727 (= tp!1243650 b_and!316979)))

(declare-fun b_free!115167 () Bool)

(declare-fun b_next!115871 () Bool)

(assert (=> b!4103727 (= b_free!115167 (not b_next!115871))))

(declare-fun tp!1243648 () Bool)

(declare-fun b_and!316981 () Bool)

(assert (=> b!4103727 (= tp!1243648 b_and!316981)))

(declare-fun e!2546813 () Bool)

(assert (=> b!4103727 (= e!2546813 (and tp!1243650 tp!1243648))))

(declare-fun b!4103726 () Bool)

(declare-fun tp!1243649 () Bool)

(declare-fun e!2546810 () Bool)

(assert (=> b!4103726 (= e!2546810 (and tp!1243649 (inv!58821 (tag!8027 (h!49566 (t!339927 (t!339927 rTail!27))))) (inv!58824 (transformation!7167 (h!49566 (t!339927 (t!339927 rTail!27))))) e!2546813))))

(declare-fun b!4103725 () Bool)

(declare-fun e!2546811 () Bool)

(declare-fun tp!1243647 () Bool)

(assert (=> b!4103725 (= e!2546811 (and e!2546810 tp!1243647))))

(assert (=> b!4103609 (= tp!1243581 e!2546811)))

(assert (= b!4103726 b!4103727))

(assert (= b!4103725 b!4103726))

(assert (= (and b!4103609 (is-Cons!44146 (t!339927 (t!339927 rTail!27)))) b!4103725))

(declare-fun m!4709493 () Bool)

(assert (=> b!4103726 m!4709493))

(declare-fun m!4709495 () Bool)

(assert (=> b!4103726 m!4709495))

(declare-fun b!4103731 () Bool)

(declare-fun e!2546814 () Bool)

(declare-fun tp!1243654 () Bool)

(declare-fun tp!1243651 () Bool)

(assert (=> b!4103731 (= e!2546814 (and tp!1243654 tp!1243651))))

(declare-fun b!4103730 () Bool)

(declare-fun tp!1243655 () Bool)

(assert (=> b!4103730 (= e!2546814 tp!1243655)))

(declare-fun b!4103728 () Bool)

(assert (=> b!4103728 (= e!2546814 tp_is_empty!21115)))

(assert (=> b!4103628 (= tp!1243604 e!2546814)))

(declare-fun b!4103729 () Bool)

(declare-fun tp!1243653 () Bool)

(declare-fun tp!1243652 () Bool)

(assert (=> b!4103729 (= e!2546814 (and tp!1243653 tp!1243652))))

(assert (= (and b!4103628 (is-ElementMatch!12072 (reg!12401 (regex!7167 rHead!24)))) b!4103728))

(assert (= (and b!4103628 (is-Concat!19470 (reg!12401 (regex!7167 rHead!24)))) b!4103729))

(assert (= (and b!4103628 (is-Star!12072 (reg!12401 (regex!7167 rHead!24)))) b!4103730))

(assert (= (and b!4103628 (is-Union!12072 (reg!12401 (regex!7167 rHead!24)))) b!4103731))

(declare-fun b!4103735 () Bool)

(declare-fun e!2546815 () Bool)

(declare-fun tp!1243659 () Bool)

(declare-fun tp!1243656 () Bool)

(assert (=> b!4103735 (= e!2546815 (and tp!1243659 tp!1243656))))

(declare-fun b!4103734 () Bool)

(declare-fun tp!1243660 () Bool)

(assert (=> b!4103734 (= e!2546815 tp!1243660)))

(declare-fun b!4103732 () Bool)

(assert (=> b!4103732 (= e!2546815 tp_is_empty!21115)))

(assert (=> b!4103610 (= tp!1243583 e!2546815)))

(declare-fun b!4103733 () Bool)

(declare-fun tp!1243658 () Bool)

(declare-fun tp!1243657 () Bool)

(assert (=> b!4103733 (= e!2546815 (and tp!1243658 tp!1243657))))

(assert (= (and b!4103610 (is-ElementMatch!12072 (regex!7167 (h!49566 (t!339927 rTail!27))))) b!4103732))

(assert (= (and b!4103610 (is-Concat!19470 (regex!7167 (h!49566 (t!339927 rTail!27))))) b!4103733))

(assert (= (and b!4103610 (is-Star!12072 (regex!7167 (h!49566 (t!339927 rTail!27))))) b!4103734))

(assert (= (and b!4103610 (is-Union!12072 (regex!7167 (h!49566 (t!339927 rTail!27))))) b!4103735))

(declare-fun b!4103739 () Bool)

(declare-fun e!2546816 () Bool)

(declare-fun tp!1243664 () Bool)

(declare-fun tp!1243661 () Bool)

(assert (=> b!4103739 (= e!2546816 (and tp!1243664 tp!1243661))))

(declare-fun b!4103738 () Bool)

(declare-fun tp!1243665 () Bool)

(assert (=> b!4103738 (= e!2546816 tp!1243665)))

(declare-fun b!4103736 () Bool)

(assert (=> b!4103736 (= e!2546816 tp_is_empty!21115)))

(assert (=> b!4103623 (= tp!1243597 e!2546816)))

(declare-fun b!4103737 () Bool)

(declare-fun tp!1243663 () Bool)

(declare-fun tp!1243662 () Bool)

(assert (=> b!4103737 (= e!2546816 (and tp!1243663 tp!1243662))))

(assert (= (and b!4103623 (is-ElementMatch!12072 (regOne!24656 (regex!7167 (h!49566 rTail!27))))) b!4103736))

(assert (= (and b!4103623 (is-Concat!19470 (regOne!24656 (regex!7167 (h!49566 rTail!27))))) b!4103737))

(assert (= (and b!4103623 (is-Star!12072 (regOne!24656 (regex!7167 (h!49566 rTail!27))))) b!4103738))

(assert (= (and b!4103623 (is-Union!12072 (regOne!24656 (regex!7167 (h!49566 rTail!27))))) b!4103739))

(declare-fun b!4103743 () Bool)

(declare-fun e!2546817 () Bool)

(declare-fun tp!1243669 () Bool)

(declare-fun tp!1243666 () Bool)

(assert (=> b!4103743 (= e!2546817 (and tp!1243669 tp!1243666))))

(declare-fun b!4103742 () Bool)

(declare-fun tp!1243670 () Bool)

(assert (=> b!4103742 (= e!2546817 tp!1243670)))

(declare-fun b!4103740 () Bool)

(assert (=> b!4103740 (= e!2546817 tp_is_empty!21115)))

(assert (=> b!4103623 (= tp!1243596 e!2546817)))

(declare-fun b!4103741 () Bool)

(declare-fun tp!1243668 () Bool)

(declare-fun tp!1243667 () Bool)

(assert (=> b!4103741 (= e!2546817 (and tp!1243668 tp!1243667))))

(assert (= (and b!4103623 (is-ElementMatch!12072 (regTwo!24656 (regex!7167 (h!49566 rTail!27))))) b!4103740))

(assert (= (and b!4103623 (is-Concat!19470 (regTwo!24656 (regex!7167 (h!49566 rTail!27))))) b!4103741))

(assert (= (and b!4103623 (is-Star!12072 (regTwo!24656 (regex!7167 (h!49566 rTail!27))))) b!4103742))

(assert (= (and b!4103623 (is-Union!12072 (regTwo!24656 (regex!7167 (h!49566 rTail!27))))) b!4103743))

(declare-fun b!4103747 () Bool)

(declare-fun e!2546818 () Bool)

(declare-fun tp!1243674 () Bool)

(declare-fun tp!1243671 () Bool)

(assert (=> b!4103747 (= e!2546818 (and tp!1243674 tp!1243671))))

(declare-fun b!4103746 () Bool)

(declare-fun tp!1243675 () Bool)

(assert (=> b!4103746 (= e!2546818 tp!1243675)))

(declare-fun b!4103744 () Bool)

(assert (=> b!4103744 (= e!2546818 tp_is_empty!21115)))

(assert (=> b!4103625 (= tp!1243598 e!2546818)))

(declare-fun b!4103745 () Bool)

(declare-fun tp!1243673 () Bool)

(declare-fun tp!1243672 () Bool)

(assert (=> b!4103745 (= e!2546818 (and tp!1243673 tp!1243672))))

(assert (= (and b!4103625 (is-ElementMatch!12072 (regOne!24657 (regex!7167 (h!49566 rTail!27))))) b!4103744))

(assert (= (and b!4103625 (is-Concat!19470 (regOne!24657 (regex!7167 (h!49566 rTail!27))))) b!4103745))

(assert (= (and b!4103625 (is-Star!12072 (regOne!24657 (regex!7167 (h!49566 rTail!27))))) b!4103746))

(assert (= (and b!4103625 (is-Union!12072 (regOne!24657 (regex!7167 (h!49566 rTail!27))))) b!4103747))

(declare-fun b!4103751 () Bool)

(declare-fun e!2546819 () Bool)

(declare-fun tp!1243679 () Bool)

(declare-fun tp!1243676 () Bool)

(assert (=> b!4103751 (= e!2546819 (and tp!1243679 tp!1243676))))

(declare-fun b!4103750 () Bool)

(declare-fun tp!1243680 () Bool)

(assert (=> b!4103750 (= e!2546819 tp!1243680)))

(declare-fun b!4103748 () Bool)

(assert (=> b!4103748 (= e!2546819 tp_is_empty!21115)))

(assert (=> b!4103625 (= tp!1243595 e!2546819)))

(declare-fun b!4103749 () Bool)

(declare-fun tp!1243678 () Bool)

(declare-fun tp!1243677 () Bool)

(assert (=> b!4103749 (= e!2546819 (and tp!1243678 tp!1243677))))

(assert (= (and b!4103625 (is-ElementMatch!12072 (regTwo!24657 (regex!7167 (h!49566 rTail!27))))) b!4103748))

(assert (= (and b!4103625 (is-Concat!19470 (regTwo!24657 (regex!7167 (h!49566 rTail!27))))) b!4103749))

(assert (= (and b!4103625 (is-Star!12072 (regTwo!24657 (regex!7167 (h!49566 rTail!27))))) b!4103750))

(assert (= (and b!4103625 (is-Union!12072 (regTwo!24657 (regex!7167 (h!49566 rTail!27))))) b!4103751))

(declare-fun b!4103755 () Bool)

(declare-fun e!2546820 () Bool)

(declare-fun tp!1243684 () Bool)

(declare-fun tp!1243681 () Bool)

(assert (=> b!4103755 (= e!2546820 (and tp!1243684 tp!1243681))))

(declare-fun b!4103754 () Bool)

(declare-fun tp!1243685 () Bool)

(assert (=> b!4103754 (= e!2546820 tp!1243685)))

(declare-fun b!4103752 () Bool)

(assert (=> b!4103752 (= e!2546820 tp_is_empty!21115)))

(assert (=> b!4103629 (= tp!1243603 e!2546820)))

(declare-fun b!4103753 () Bool)

(declare-fun tp!1243683 () Bool)

(declare-fun tp!1243682 () Bool)

(assert (=> b!4103753 (= e!2546820 (and tp!1243683 tp!1243682))))

(assert (= (and b!4103629 (is-ElementMatch!12072 (regOne!24657 (regex!7167 rHead!24)))) b!4103752))

(assert (= (and b!4103629 (is-Concat!19470 (regOne!24657 (regex!7167 rHead!24)))) b!4103753))

(assert (= (and b!4103629 (is-Star!12072 (regOne!24657 (regex!7167 rHead!24)))) b!4103754))

(assert (= (and b!4103629 (is-Union!12072 (regOne!24657 (regex!7167 rHead!24)))) b!4103755))

(declare-fun b!4103759 () Bool)

(declare-fun e!2546821 () Bool)

(declare-fun tp!1243689 () Bool)

(declare-fun tp!1243686 () Bool)

(assert (=> b!4103759 (= e!2546821 (and tp!1243689 tp!1243686))))

(declare-fun b!4103758 () Bool)

(declare-fun tp!1243690 () Bool)

(assert (=> b!4103758 (= e!2546821 tp!1243690)))

(declare-fun b!4103756 () Bool)

(assert (=> b!4103756 (= e!2546821 tp_is_empty!21115)))

(assert (=> b!4103629 (= tp!1243600 e!2546821)))

(declare-fun b!4103757 () Bool)

(declare-fun tp!1243688 () Bool)

(declare-fun tp!1243687 () Bool)

(assert (=> b!4103757 (= e!2546821 (and tp!1243688 tp!1243687))))

(assert (= (and b!4103629 (is-ElementMatch!12072 (regTwo!24657 (regex!7167 rHead!24)))) b!4103756))

(assert (= (and b!4103629 (is-Concat!19470 (regTwo!24657 (regex!7167 rHead!24)))) b!4103757))

(assert (= (and b!4103629 (is-Star!12072 (regTwo!24657 (regex!7167 rHead!24)))) b!4103758))

(assert (= (and b!4103629 (is-Union!12072 (regTwo!24657 (regex!7167 rHead!24)))) b!4103759))

(declare-fun b!4103763 () Bool)

(declare-fun e!2546822 () Bool)

(declare-fun tp!1243694 () Bool)

(declare-fun tp!1243691 () Bool)

(assert (=> b!4103763 (= e!2546822 (and tp!1243694 tp!1243691))))

(declare-fun b!4103762 () Bool)

(declare-fun tp!1243695 () Bool)

(assert (=> b!4103762 (= e!2546822 tp!1243695)))

(declare-fun b!4103760 () Bool)

(assert (=> b!4103760 (= e!2546822 tp_is_empty!21115)))

(assert (=> b!4103624 (= tp!1243599 e!2546822)))

(declare-fun b!4103761 () Bool)

(declare-fun tp!1243693 () Bool)

(declare-fun tp!1243692 () Bool)

(assert (=> b!4103761 (= e!2546822 (and tp!1243693 tp!1243692))))

(assert (= (and b!4103624 (is-ElementMatch!12072 (reg!12401 (regex!7167 (h!49566 rTail!27))))) b!4103760))

(assert (= (and b!4103624 (is-Concat!19470 (reg!12401 (regex!7167 (h!49566 rTail!27))))) b!4103761))

(assert (= (and b!4103624 (is-Star!12072 (reg!12401 (regex!7167 (h!49566 rTail!27))))) b!4103762))

(assert (= (and b!4103624 (is-Union!12072 (reg!12401 (regex!7167 (h!49566 rTail!27))))) b!4103763))

(push 1)

(assert (not b!4103716))

(assert (not b!4103713))

(assert tp_is_empty!21115)

(assert (not b!4103734))

(assert (not b!4103714))

(assert (not d!1218145))

(assert (not b!4103735))

(assert (not b!4103738))

(assert (not b!4103726))

(assert (not b!4103731))

(assert (not b!4103758))

(assert (not b!4103720))

(assert b_and!316961)

(assert (not b!4103755))

(assert (not b!4103741))

(assert (not b!4103699))

(assert (not d!1218149))

(assert b_and!316959)

(assert (not b!4103708))

(assert (not b!4103749))

(assert (not b!4103750))

(assert (not b!4103751))

(assert (not b!4103747))

(assert b_and!316973)

(assert (not b!4103733))

(assert (not b!4103743))

(assert (not d!1218147))

(assert (not b!4103742))

(assert (not b!4103724))

(assert (not b!4103757))

(assert (not b!4103729))

(assert (not b!4103739))

(assert (not b!4103693))

(assert (not b_next!115849))

(assert b_and!316957)

(assert (not d!1218163))

(assert (not b!4103696))

(assert (not b!4103759))

(assert (not b_next!115863))

(assert (not b_next!115847))

(assert b_and!316981)

(assert (not d!1218153))

(assert (not b_next!115871))

(assert (not b!4103718))

(assert (not b!4103737))

(assert (not d!1218159))

(assert b_and!316979)

(assert (not b!4103763))

(assert (not b!4103762))

(assert (not b_next!115851))

(assert (not b!4103725))

(assert (not b_next!115845))

(assert (not d!1218131))

(assert (not b!4103723))

(assert (not d!1218157))

(assert (not b!4103707))

(assert b_and!316955)

(assert (not b!4103698))

(assert (not b!4103700))

(assert (not d!1218141))

(assert (not b_next!115869))

(assert (not b!4103719))

(assert (not b!4103730))

(assert (not b!4103706))

(assert (not b!4103722))

(assert (not b_next!115861))

(assert b_and!316971)

(assert (not d!1218165))

(assert (not b!4103753))

(assert (not b!4103746))

(assert (not b!4103745))

(assert (not b!4103761))

(assert (not b!4103754))

(check-sat)

(pop 1)

(push 1)

(assert b_and!316961)

(assert b_and!316959)

(assert b_and!316973)

(assert b_and!316979)

(assert (not b_next!115851))

(assert (not b_next!115845))

(assert b_and!316955)

(assert (not b_next!115869))

(assert (not b_next!115849))

(assert b_and!316957)

(assert (not b_next!115863))

(assert (not b_next!115847))

(assert b_and!316981)

(assert (not b_next!115871))

(assert (not b_next!115861))

(assert b_and!316971)

(check-sat)

(pop 1)

