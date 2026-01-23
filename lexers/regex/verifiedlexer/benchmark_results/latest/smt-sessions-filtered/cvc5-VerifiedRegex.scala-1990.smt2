; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!101260 () Bool)

(assert start!101260)

(declare-fun b!1158195 () Bool)

(declare-fun e!741062 () Bool)

(assert (=> b!1158195 (= e!741062 true)))

(declare-fun b!1158194 () Bool)

(declare-fun e!741061 () Bool)

(assert (=> b!1158194 (= e!741061 e!741062)))

(declare-fun b!1158180 () Bool)

(assert (=> b!1158180 e!741061))

(assert (= b!1158194 b!1158195))

(assert (= b!1158180 b!1158194))

(declare-fun b!1158175 () Bool)

(declare-fun e!741051 () Bool)

(declare-datatypes ((List!11333 0))(
  ( (Nil!11309) (Cons!11309 (h!16710 (_ BitVec 16)) (t!109276 List!11333)) )
))
(declare-datatypes ((TokenValue!2026 0))(
  ( (FloatLiteralValue!4052 (text!14627 List!11333)) (TokenValueExt!2025 (__x!7763 Int)) (Broken!10130 (value!63832 List!11333)) (Object!2049) (End!2026) (Def!2026) (Underscore!2026) (Match!2026) (Else!2026) (Error!2026) (Case!2026) (If!2026) (Extends!2026) (Abstract!2026) (Class!2026) (Val!2026) (DelimiterValue!4052 (del!2086 List!11333)) (KeywordValue!2032 (value!63833 List!11333)) (CommentValue!4052 (value!63834 List!11333)) (WhitespaceValue!4052 (value!63835 List!11333)) (IndentationValue!2026 (value!63836 List!11333)) (String!13719) (Int32!2026) (Broken!10131 (value!63837 List!11333)) (Boolean!2027) (Unit!17323) (OperatorValue!2029 (op!2086 List!11333)) (IdentifierValue!4052 (value!63838 List!11333)) (IdentifierValue!4053 (value!63839 List!11333)) (WhitespaceValue!4053 (value!63840 List!11333)) (True!4052) (False!4052) (Broken!10132 (value!63841 List!11333)) (Broken!10133 (value!63842 List!11333)) (True!4053) (RightBrace!2026) (RightBracket!2026) (Colon!2026) (Null!2026) (Comma!2026) (LeftBracket!2026) (False!4053) (LeftBrace!2026) (ImaginaryLiteralValue!2026 (text!14628 List!11333)) (StringLiteralValue!6078 (value!63843 List!11333)) (EOFValue!2026 (value!63844 List!11333)) (IdentValue!2026 (value!63845 List!11333)) (DelimiterValue!4053 (value!63846 List!11333)) (DedentValue!2026 (value!63847 List!11333)) (NewLineValue!2026 (value!63848 List!11333)) (IntegerValue!6078 (value!63849 (_ BitVec 32)) (text!14629 List!11333)) (IntegerValue!6079 (value!63850 Int) (text!14630 List!11333)) (Times!2026) (Or!2026) (Equal!2026) (Minus!2026) (Broken!10134 (value!63851 List!11333)) (And!2026) (Div!2026) (LessEqual!2026) (Mod!2026) (Concat!5256) (Not!2026) (Plus!2026) (SpaceValue!2026 (value!63852 List!11333)) (IntegerValue!6080 (value!63853 Int) (text!14631 List!11333)) (StringLiteralValue!6079 (text!14632 List!11333)) (FloatLiteralValue!4053 (text!14633 List!11333)) (BytesLiteralValue!2026 (value!63854 List!11333)) (CommentValue!4053 (value!63855 List!11333)) (StringLiteralValue!6080 (value!63856 List!11333)) (ErrorTokenValue!2026 (msg!2087 List!11333)) )
))
(declare-datatypes ((C!6778 0))(
  ( (C!6779 (val!3645 Int)) )
))
(declare-datatypes ((Regex!3230 0))(
  ( (ElementMatch!3230 (c!194127 C!6778)) (Concat!5257 (regOne!6972 Regex!3230) (regTwo!6972 Regex!3230)) (EmptyExpr!3230) (Star!3230 (reg!3559 Regex!3230)) (EmptyLang!3230) (Union!3230 (regOne!6973 Regex!3230) (regTwo!6973 Regex!3230)) )
))
(declare-datatypes ((String!13720 0))(
  ( (String!13721 (value!63857 String)) )
))
(declare-datatypes ((List!11334 0))(
  ( (Nil!11310) (Cons!11310 (h!16711 C!6778) (t!109277 List!11334)) )
))
(declare-datatypes ((IArray!7369 0))(
  ( (IArray!7370 (innerList!3742 List!11334)) )
))
(declare-datatypes ((Conc!3682 0))(
  ( (Node!3682 (left!9866 Conc!3682) (right!10196 Conc!3682) (csize!7594 Int) (cheight!3893 Int)) (Leaf!5673 (xs!6387 IArray!7369) (csize!7595 Int)) (Empty!3682) )
))
(declare-datatypes ((BalanceConc!7386 0))(
  ( (BalanceConc!7387 (c!194128 Conc!3682)) )
))
(declare-datatypes ((TokenValueInjection!3752 0))(
  ( (TokenValueInjection!3753 (toValue!3061 Int) (toChars!2920 Int)) )
))
(declare-datatypes ((Rule!3720 0))(
  ( (Rule!3721 (regex!1960 Regex!3230) (tag!2222 String!13720) (isSeparator!1960 Bool) (transformation!1960 TokenValueInjection!3752)) )
))
(declare-datatypes ((Token!3582 0))(
  ( (Token!3583 (value!63858 TokenValue!2026) (rule!3381 Rule!3720) (size!8894 Int) (originalCharacters!2514 List!11334)) )
))
(declare-datatypes ((List!11335 0))(
  ( (Nil!11311) (Cons!11311 (h!16712 Token!3582) (t!109278 List!11335)) )
))
(declare-datatypes ((List!11336 0))(
  ( (Nil!11312) (Cons!11312 (h!16713 Rule!3720) (t!109279 List!11336)) )
))
(declare-datatypes ((IArray!7371 0))(
  ( (IArray!7372 (innerList!3743 List!11335)) )
))
(declare-datatypes ((Conc!3683 0))(
  ( (Node!3683 (left!9867 Conc!3683) (right!10197 Conc!3683) (csize!7596 Int) (cheight!3894 Int)) (Leaf!5674 (xs!6388 IArray!7371) (csize!7597 Int)) (Empty!3683) )
))
(declare-datatypes ((BalanceConc!7388 0))(
  ( (BalanceConc!7389 (c!194129 Conc!3683)) )
))
(declare-datatypes ((PrintableTokens!606 0))(
  ( (PrintableTokens!607 (rules!9445 List!11336) (tokens!1559 BalanceConc!7388)) )
))
(declare-fun thiss!10527 () PrintableTokens!606)

(declare-fun lt!393610 () List!11335)

(declare-datatypes ((LexerInterface!1655 0))(
  ( (LexerInterfaceExt!1652 (__x!7764 Int)) (Lexer!1653) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!523 (LexerInterface!1655 List!11336 List!11335) Bool)

(assert (=> b!1158175 (= e!741051 (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) (t!109278 lt!393610)))))

(declare-fun b!1158176 () Bool)

(declare-fun e!741046 () Bool)

(declare-fun lt!393611 () List!11335)

(assert (=> b!1158176 (= e!741046 (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) (t!109278 lt!393611)))))

(declare-fun b!1158177 () Bool)

(declare-fun res!521492 () Bool)

(declare-fun e!741052 () Bool)

(assert (=> b!1158177 (=> (not res!521492) (not e!741052))))

(declare-fun to!267 () Int)

(declare-fun size!8895 (BalanceConc!7388) Int)

(assert (=> b!1158177 (= res!521492 (<= to!267 (size!8895 (tokens!1559 thiss!10527))))))

(declare-fun b!1158178 () Bool)

(declare-fun e!741050 () Bool)

(declare-fun tp!333455 () Bool)

(declare-fun inv!14861 (Conc!3683) Bool)

(assert (=> b!1158178 (= e!741050 (and (inv!14861 (c!194129 (tokens!1559 thiss!10527))) tp!333455))))

(declare-fun e!741048 () Bool)

(declare-fun e!741049 () Bool)

(assert (=> b!1158180 (= e!741048 (not e!741049))))

(declare-fun res!521491 () Bool)

(assert (=> b!1158180 (=> res!521491 e!741049)))

(declare-fun lambda!46900 () Int)

(declare-fun forall!2916 (BalanceConc!7388 Int) Bool)

(assert (=> b!1158180 (= res!521491 (not (forall!2916 (tokens!1559 thiss!10527) lambda!46900)))))

(declare-fun e!741047 () Bool)

(assert (=> b!1158180 (= (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) lt!393611) e!741047)))

(declare-fun res!521489 () Bool)

(assert (=> b!1158180 (=> res!521489 e!741047)))

(assert (=> b!1158180 (= res!521489 (not (is-Cons!11311 lt!393611)))))

(declare-fun list!4167 (BalanceConc!7388) List!11335)

(assert (=> b!1158180 (= lt!393611 (list!4167 (tokens!1559 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!694 (LexerInterface!1655 List!11336 BalanceConc!7388) Bool)

(assert (=> b!1158180 (= (rulesProduceEachTokenIndividually!694 Lexer!1653 (rules!9445 thiss!10527) (tokens!1559 thiss!10527)) (forall!2916 (tokens!1559 thiss!10527) lambda!46900))))

(declare-fun b!1158181 () Bool)

(assert (=> b!1158181 (= e!741052 e!741048)))

(declare-fun res!521485 () Bool)

(assert (=> b!1158181 (=> (not res!521485) (not e!741048))))

(declare-fun rulesInvariant!1529 (LexerInterface!1655 List!11336) Bool)

(assert (=> b!1158181 (= res!521485 (rulesInvariant!1529 Lexer!1653 (rules!9445 thiss!10527)))))

(declare-datatypes ((Unit!17324 0))(
  ( (Unit!17325) )
))
(declare-fun lt!393612 () Unit!17324)

(declare-fun lemmaInvariant!147 (PrintableTokens!606) Unit!17324)

(assert (=> b!1158181 (= lt!393612 (lemmaInvariant!147 thiss!10527))))

(declare-fun b!1158182 () Bool)

(declare-fun e!741056 () Bool)

(assert (=> b!1158182 (= e!741049 e!741056)))

(declare-fun res!521486 () Bool)

(assert (=> b!1158182 (=> res!521486 e!741056)))

(declare-fun forall!2917 (List!11335 Int) Bool)

(assert (=> b!1158182 (= res!521486 (not (forall!2917 lt!393610 lambda!46900)))))

(declare-fun e!741053 () Bool)

(assert (=> b!1158182 e!741053))

(declare-fun res!521488 () Bool)

(assert (=> b!1158182 (=> (not res!521488) (not e!741053))))

(assert (=> b!1158182 (= res!521488 (forall!2917 lt!393610 lambda!46900))))

(declare-fun lt!393609 () Unit!17324)

(declare-fun lemmaForallSubseq!108 (List!11335 List!11335 Int) Unit!17324)

(assert (=> b!1158182 (= lt!393609 (lemmaForallSubseq!108 lt!393610 lt!393611 lambda!46900))))

(declare-fun lt!393607 () BalanceConc!7388)

(assert (=> b!1158182 (= lt!393610 (list!4167 lt!393607))))

(declare-fun from!787 () Int)

(declare-fun slice!209 (BalanceConc!7388 Int Int) BalanceConc!7388)

(assert (=> b!1158182 (= lt!393607 (slice!209 (tokens!1559 thiss!10527) from!787 to!267))))

(declare-fun subseq!216 (List!11335 List!11335) Bool)

(declare-fun slice!210 (List!11335 Int Int) List!11335)

(assert (=> b!1158182 (subseq!216 (slice!210 lt!393611 from!787 to!267) lt!393611)))

(declare-fun lt!393608 () Unit!17324)

(declare-fun lemmaSliceSubseq!57 (List!11335 Int Int) Unit!17324)

(assert (=> b!1158182 (= lt!393608 (lemmaSliceSubseq!57 lt!393611 from!787 to!267))))

(declare-fun b!1158183 () Bool)

(assert (=> b!1158183 (= e!741047 e!741046)))

(declare-fun res!521482 () Bool)

(assert (=> b!1158183 (=> (not res!521482) (not e!741046))))

(declare-fun rulesProduceIndividualToken!692 (LexerInterface!1655 List!11336 Token!3582) Bool)

(assert (=> b!1158183 (= res!521482 (rulesProduceIndividualToken!692 Lexer!1653 (rules!9445 thiss!10527) (h!16712 lt!393611)))))

(declare-fun e!741054 () Bool)

(declare-fun tp!333456 () Bool)

(declare-fun b!1158184 () Bool)

(declare-fun inv!14862 (BalanceConc!7388) Bool)

(assert (=> b!1158184 (= e!741054 (and tp!333456 (inv!14862 (tokens!1559 thiss!10527)) e!741050))))

(declare-fun b!1158185 () Bool)

(declare-fun e!741055 () Bool)

(assert (=> b!1158185 (= e!741055 e!741051)))

(declare-fun res!521490 () Bool)

(assert (=> b!1158185 (=> (not res!521490) (not e!741051))))

(assert (=> b!1158185 (= res!521490 (rulesProduceIndividualToken!692 Lexer!1653 (rules!9445 thiss!10527) (h!16712 lt!393610)))))

(declare-fun b!1158186 () Bool)

(assert (=> b!1158186 (= e!741053 (= (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) lt!393610) e!741055))))

(declare-fun res!521483 () Bool)

(assert (=> b!1158186 (=> res!521483 e!741055)))

(assert (=> b!1158186 (= res!521483 (not (is-Cons!11311 lt!393610)))))

(declare-fun b!1158187 () Bool)

(declare-fun res!521487 () Bool)

(assert (=> b!1158187 (=> (not res!521487) (not e!741053))))

(assert (=> b!1158187 (= res!521487 (= (rulesProduceEachTokenIndividually!694 Lexer!1653 (rules!9445 thiss!10527) lt!393607) (forall!2916 lt!393607 lambda!46900)))))

(declare-fun res!521484 () Bool)

(assert (=> start!101260 (=> (not res!521484) (not e!741052))))

(assert (=> start!101260 (= res!521484 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101260 e!741052))

(assert (=> start!101260 true))

(declare-fun inv!14863 (PrintableTokens!606) Bool)

(assert (=> start!101260 (and (inv!14863 thiss!10527) e!741054)))

(declare-fun b!1158179 () Bool)

(declare-fun isEmpty!6950 (List!11336) Bool)

(assert (=> b!1158179 (= e!741056 (not (isEmpty!6950 (rules!9445 thiss!10527))))))

(assert (= (and start!101260 res!521484) b!1158177))

(assert (= (and b!1158177 res!521492) b!1158181))

(assert (= (and b!1158181 res!521485) b!1158180))

(assert (= (and b!1158180 (not res!521489)) b!1158183))

(assert (= (and b!1158183 res!521482) b!1158176))

(assert (= (and b!1158180 (not res!521491)) b!1158182))

(assert (= (and b!1158182 res!521488) b!1158187))

(assert (= (and b!1158187 res!521487) b!1158186))

(assert (= (and b!1158186 (not res!521483)) b!1158185))

(assert (= (and b!1158185 res!521490) b!1158175))

(assert (= (and b!1158182 (not res!521486)) b!1158179))

(assert (= b!1158184 b!1158178))

(assert (= start!101260 b!1158184))

(declare-fun m!1324839 () Bool)

(assert (=> start!101260 m!1324839))

(declare-fun m!1324841 () Bool)

(assert (=> b!1158185 m!1324841))

(declare-fun m!1324843 () Bool)

(assert (=> b!1158176 m!1324843))

(declare-fun m!1324845 () Bool)

(assert (=> b!1158186 m!1324845))

(declare-fun m!1324847 () Bool)

(assert (=> b!1158177 m!1324847))

(declare-fun m!1324849 () Bool)

(assert (=> b!1158184 m!1324849))

(declare-fun m!1324851 () Bool)

(assert (=> b!1158183 m!1324851))

(declare-fun m!1324853 () Bool)

(assert (=> b!1158178 m!1324853))

(declare-fun m!1324855 () Bool)

(assert (=> b!1158181 m!1324855))

(declare-fun m!1324857 () Bool)

(assert (=> b!1158181 m!1324857))

(declare-fun m!1324859 () Bool)

(assert (=> b!1158180 m!1324859))

(declare-fun m!1324861 () Bool)

(assert (=> b!1158180 m!1324861))

(assert (=> b!1158180 m!1324859))

(declare-fun m!1324863 () Bool)

(assert (=> b!1158180 m!1324863))

(declare-fun m!1324865 () Bool)

(assert (=> b!1158180 m!1324865))

(declare-fun m!1324867 () Bool)

(assert (=> b!1158182 m!1324867))

(declare-fun m!1324869 () Bool)

(assert (=> b!1158182 m!1324869))

(declare-fun m!1324871 () Bool)

(assert (=> b!1158182 m!1324871))

(assert (=> b!1158182 m!1324869))

(declare-fun m!1324873 () Bool)

(assert (=> b!1158182 m!1324873))

(declare-fun m!1324875 () Bool)

(assert (=> b!1158182 m!1324875))

(declare-fun m!1324877 () Bool)

(assert (=> b!1158182 m!1324877))

(declare-fun m!1324879 () Bool)

(assert (=> b!1158182 m!1324879))

(assert (=> b!1158182 m!1324879))

(declare-fun m!1324881 () Bool)

(assert (=> b!1158187 m!1324881))

(declare-fun m!1324883 () Bool)

(assert (=> b!1158187 m!1324883))

(declare-fun m!1324885 () Bool)

(assert (=> b!1158175 m!1324885))

(declare-fun m!1324887 () Bool)

(assert (=> b!1158179 m!1324887))

(push 1)

(assert (not b!1158182))

(assert (not b!1158194))

(assert (not b!1158183))

(assert (not b!1158186))

(assert (not b!1158175))

(assert (not start!101260))

(assert (not b!1158187))

(assert (not b!1158195))

(assert (not b!1158176))

(assert (not b!1158184))

(assert (not b!1158177))

(assert (not b!1158181))

(assert (not b!1158180))

(assert (not b!1158185))

(assert (not b!1158178))

(assert (not b!1158179))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!330919 () Bool)

(declare-fun c!194135 () Bool)

(assert (=> d!330919 (= c!194135 (is-Node!3683 (c!194129 (tokens!1559 thiss!10527))))))

(declare-fun e!741106 () Bool)

(assert (=> d!330919 (= (inv!14861 (c!194129 (tokens!1559 thiss!10527))) e!741106)))

(declare-fun b!1158249 () Bool)

(declare-fun inv!14867 (Conc!3683) Bool)

(assert (=> b!1158249 (= e!741106 (inv!14867 (c!194129 (tokens!1559 thiss!10527))))))

(declare-fun b!1158250 () Bool)

(declare-fun e!741107 () Bool)

(assert (=> b!1158250 (= e!741106 e!741107)))

(declare-fun res!521528 () Bool)

(assert (=> b!1158250 (= res!521528 (not (is-Leaf!5674 (c!194129 (tokens!1559 thiss!10527)))))))

(assert (=> b!1158250 (=> res!521528 e!741107)))

(declare-fun b!1158251 () Bool)

(declare-fun inv!14868 (Conc!3683) Bool)

(assert (=> b!1158251 (= e!741107 (inv!14868 (c!194129 (tokens!1559 thiss!10527))))))

(assert (= (and d!330919 c!194135) b!1158249))

(assert (= (and d!330919 (not c!194135)) b!1158250))

(assert (= (and b!1158250 (not res!521528)) b!1158251))

(declare-fun m!1324939 () Bool)

(assert (=> b!1158249 m!1324939))

(declare-fun m!1324941 () Bool)

(assert (=> b!1158251 m!1324941))

(assert (=> b!1158178 d!330919))

(declare-fun d!330921 () Bool)

(assert (=> d!330921 (= (isEmpty!6950 (rules!9445 thiss!10527)) (is-Nil!11312 (rules!9445 thiss!10527)))))

(assert (=> b!1158179 d!330921))

(declare-fun d!330923 () Bool)

(declare-fun res!521535 () Bool)

(declare-fun e!741110 () Bool)

(assert (=> d!330923 (=> (not res!521535) (not e!741110))))

(assert (=> d!330923 (= res!521535 (not (isEmpty!6950 (rules!9445 thiss!10527))))))

(assert (=> d!330923 (= (inv!14863 thiss!10527) e!741110)))

(declare-fun b!1158258 () Bool)

(declare-fun res!521536 () Bool)

(assert (=> b!1158258 (=> (not res!521536) (not e!741110))))

(assert (=> b!1158258 (= res!521536 (rulesInvariant!1529 Lexer!1653 (rules!9445 thiss!10527)))))

(declare-fun b!1158259 () Bool)

(declare-fun res!521537 () Bool)

(assert (=> b!1158259 (=> (not res!521537) (not e!741110))))

(assert (=> b!1158259 (= res!521537 (rulesProduceEachTokenIndividually!694 Lexer!1653 (rules!9445 thiss!10527) (tokens!1559 thiss!10527)))))

(declare-fun b!1158260 () Bool)

(declare-fun separableTokens!101 (LexerInterface!1655 BalanceConc!7388 List!11336) Bool)

(assert (=> b!1158260 (= e!741110 (separableTokens!101 Lexer!1653 (tokens!1559 thiss!10527) (rules!9445 thiss!10527)))))

(assert (= (and d!330923 res!521535) b!1158258))

(assert (= (and b!1158258 res!521536) b!1158259))

(assert (= (and b!1158259 res!521537) b!1158260))

(assert (=> d!330923 m!1324887))

(assert (=> b!1158258 m!1324855))

(assert (=> b!1158259 m!1324861))

(declare-fun m!1324943 () Bool)

(assert (=> b!1158260 m!1324943))

(assert (=> start!101260 d!330923))

(declare-fun d!330925 () Bool)

(declare-fun res!521540 () Bool)

(declare-fun e!741113 () Bool)

(assert (=> d!330925 (=> (not res!521540) (not e!741113))))

(declare-fun rulesValid!681 (LexerInterface!1655 List!11336) Bool)

(assert (=> d!330925 (= res!521540 (rulesValid!681 Lexer!1653 (rules!9445 thiss!10527)))))

(assert (=> d!330925 (= (rulesInvariant!1529 Lexer!1653 (rules!9445 thiss!10527)) e!741113)))

(declare-fun b!1158263 () Bool)

(declare-datatypes ((List!11341 0))(
  ( (Nil!11317) (Cons!11317 (h!16718 String!13720) (t!109305 List!11341)) )
))
(declare-fun noDuplicateTag!681 (LexerInterface!1655 List!11336 List!11341) Bool)

(assert (=> b!1158263 (= e!741113 (noDuplicateTag!681 Lexer!1653 (rules!9445 thiss!10527) Nil!11317))))

(assert (= (and d!330925 res!521540) b!1158263))

(declare-fun m!1324945 () Bool)

(assert (=> d!330925 m!1324945))

(declare-fun m!1324947 () Bool)

(assert (=> b!1158263 m!1324947))

(assert (=> b!1158181 d!330925))

(declare-fun d!330927 () Bool)

(declare-fun e!741122 () Bool)

(assert (=> d!330927 e!741122))

(declare-fun res!521554 () Bool)

(assert (=> d!330927 (=> (not res!521554) (not e!741122))))

(assert (=> d!330927 (= res!521554 (rulesInvariant!1529 Lexer!1653 (rules!9445 thiss!10527)))))

(declare-fun Unit!17329 () Unit!17324)

(assert (=> d!330927 (= (lemmaInvariant!147 thiss!10527) Unit!17329)))

(declare-fun b!1158277 () Bool)

(declare-fun res!521555 () Bool)

(assert (=> b!1158277 (=> (not res!521555) (not e!741122))))

(assert (=> b!1158277 (= res!521555 (rulesProduceEachTokenIndividually!694 Lexer!1653 (rules!9445 thiss!10527) (tokens!1559 thiss!10527)))))

(declare-fun b!1158278 () Bool)

(assert (=> b!1158278 (= e!741122 (separableTokens!101 Lexer!1653 (tokens!1559 thiss!10527) (rules!9445 thiss!10527)))))

(assert (= (and d!330927 res!521554) b!1158277))

(assert (= (and b!1158277 res!521555) b!1158278))

(assert (=> d!330927 m!1324855))

(assert (=> b!1158277 m!1324861))

(assert (=> b!1158278 m!1324943))

(assert (=> b!1158181 d!330927))

(declare-fun bs!283155 () Bool)

(declare-fun d!330931 () Bool)

(assert (= bs!283155 (and d!330931 b!1158180)))

(declare-fun lambda!46914 () Int)

(assert (=> bs!283155 (= lambda!46914 lambda!46900)))

(declare-fun b!1158295 () Bool)

(declare-fun e!741137 () Bool)

(assert (=> b!1158295 (= e!741137 true)))

(declare-fun b!1158294 () Bool)

(declare-fun e!741136 () Bool)

(assert (=> b!1158294 (= e!741136 e!741137)))

(declare-fun b!1158293 () Bool)

(declare-fun e!741135 () Bool)

(assert (=> b!1158293 (= e!741135 e!741136)))

(assert (=> d!330931 e!741135))

(assert (= b!1158294 b!1158295))

(assert (= b!1158293 b!1158294))

(assert (= (and d!330931 (is-Cons!11312 (rules!9445 thiss!10527))) b!1158293))

(declare-fun order!6927 () Int)

(declare-fun order!6929 () Int)

(declare-fun dynLambda!4987 (Int Int) Int)

(declare-fun dynLambda!4988 (Int Int) Int)

(assert (=> b!1158295 (< (dynLambda!4987 order!6927 (toValue!3061 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46914))))

(declare-fun order!6931 () Int)

(declare-fun dynLambda!4989 (Int Int) Int)

(assert (=> b!1158295 (< (dynLambda!4989 order!6931 (toChars!2920 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46914))))

(assert (=> d!330931 true))

(declare-fun lt!393639 () Bool)

(assert (=> d!330931 (= lt!393639 (forall!2917 lt!393611 lambda!46914))))

(declare-fun e!741127 () Bool)

(assert (=> d!330931 (= lt!393639 e!741127)))

(declare-fun res!521561 () Bool)

(assert (=> d!330931 (=> res!521561 e!741127)))

(assert (=> d!330931 (= res!521561 (not (is-Cons!11311 lt!393611)))))

(assert (=> d!330931 (not (isEmpty!6950 (rules!9445 thiss!10527)))))

(assert (=> d!330931 (= (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) lt!393611) lt!393639)))

(declare-fun b!1158283 () Bool)

(declare-fun e!741128 () Bool)

(assert (=> b!1158283 (= e!741127 e!741128)))

(declare-fun res!521560 () Bool)

(assert (=> b!1158283 (=> (not res!521560) (not e!741128))))

(assert (=> b!1158283 (= res!521560 (rulesProduceIndividualToken!692 Lexer!1653 (rules!9445 thiss!10527) (h!16712 lt!393611)))))

(declare-fun b!1158284 () Bool)

(assert (=> b!1158284 (= e!741128 (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) (t!109278 lt!393611)))))

(assert (= (and d!330931 (not res!521561)) b!1158283))

(assert (= (and b!1158283 res!521560) b!1158284))

(declare-fun m!1324967 () Bool)

(assert (=> d!330931 m!1324967))

(assert (=> d!330931 m!1324887))

(assert (=> b!1158283 m!1324851))

(assert (=> b!1158284 m!1324843))

(assert (=> b!1158180 d!330931))

(declare-fun bs!283156 () Bool)

(declare-fun d!330933 () Bool)

(assert (= bs!283156 (and d!330933 b!1158180)))

(declare-fun lambda!46919 () Int)

(assert (=> bs!283156 (= lambda!46919 lambda!46900)))

(declare-fun bs!283157 () Bool)

(assert (= bs!283157 (and d!330933 d!330931)))

(assert (=> bs!283157 (= lambda!46919 lambda!46914)))

(declare-fun b!1158316 () Bool)

(declare-fun e!741150 () Bool)

(assert (=> b!1158316 (= e!741150 true)))

(declare-fun b!1158315 () Bool)

(declare-fun e!741149 () Bool)

(assert (=> b!1158315 (= e!741149 e!741150)))

(declare-fun b!1158314 () Bool)

(declare-fun e!741148 () Bool)

(assert (=> b!1158314 (= e!741148 e!741149)))

(assert (=> d!330933 e!741148))

(assert (= b!1158315 b!1158316))

(assert (= b!1158314 b!1158315))

(assert (= (and d!330933 (is-Cons!11312 (rules!9445 thiss!10527))) b!1158314))

(assert (=> b!1158316 (< (dynLambda!4987 order!6927 (toValue!3061 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46919))))

(assert (=> b!1158316 (< (dynLambda!4989 order!6931 (toChars!2920 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46919))))

(assert (=> d!330933 true))

(declare-fun e!741147 () Bool)

(assert (=> d!330933 e!741147))

(declare-fun res!521577 () Bool)

(assert (=> d!330933 (=> (not res!521577) (not e!741147))))

(declare-fun lt!393644 () Bool)

(assert (=> d!330933 (= res!521577 (= lt!393644 (forall!2917 (list!4167 (tokens!1559 thiss!10527)) lambda!46919)))))

(assert (=> d!330933 (= lt!393644 (forall!2916 (tokens!1559 thiss!10527) lambda!46919))))

(assert (=> d!330933 (not (isEmpty!6950 (rules!9445 thiss!10527)))))

(assert (=> d!330933 (= (rulesProduceEachTokenIndividually!694 Lexer!1653 (rules!9445 thiss!10527) (tokens!1559 thiss!10527)) lt!393644)))

(declare-fun b!1158313 () Bool)

(assert (=> b!1158313 (= e!741147 (= lt!393644 (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) (list!4167 (tokens!1559 thiss!10527)))))))

(assert (= (and d!330933 res!521577) b!1158313))

(assert (=> d!330933 m!1324863))

(assert (=> d!330933 m!1324863))

(declare-fun m!1324971 () Bool)

(assert (=> d!330933 m!1324971))

(declare-fun m!1324973 () Bool)

(assert (=> d!330933 m!1324973))

(assert (=> d!330933 m!1324887))

(assert (=> b!1158313 m!1324863))

(assert (=> b!1158313 m!1324863))

(declare-fun m!1324975 () Bool)

(assert (=> b!1158313 m!1324975))

(assert (=> b!1158180 d!330933))

(declare-fun d!330937 () Bool)

(declare-fun lt!393648 () Bool)

(assert (=> d!330937 (= lt!393648 (forall!2917 (list!4167 (tokens!1559 thiss!10527)) lambda!46900))))

(declare-fun forall!2920 (Conc!3683 Int) Bool)

(assert (=> d!330937 (= lt!393648 (forall!2920 (c!194129 (tokens!1559 thiss!10527)) lambda!46900))))

(assert (=> d!330937 (= (forall!2916 (tokens!1559 thiss!10527) lambda!46900) lt!393648)))

(declare-fun bs!283158 () Bool)

(assert (= bs!283158 d!330937))

(assert (=> bs!283158 m!1324863))

(assert (=> bs!283158 m!1324863))

(declare-fun m!1324977 () Bool)

(assert (=> bs!283158 m!1324977))

(declare-fun m!1324979 () Bool)

(assert (=> bs!283158 m!1324979))

(assert (=> b!1158180 d!330937))

(declare-fun d!330939 () Bool)

(declare-fun list!4169 (Conc!3683) List!11335)

(assert (=> d!330939 (= (list!4167 (tokens!1559 thiss!10527)) (list!4169 (c!194129 (tokens!1559 thiss!10527))))))

(declare-fun bs!283159 () Bool)

(assert (= bs!283159 d!330939))

(declare-fun m!1324981 () Bool)

(assert (=> bs!283159 m!1324981))

(assert (=> b!1158180 d!330939))

(declare-fun d!330941 () Bool)

(assert (=> d!330941 (forall!2917 lt!393610 lambda!46900)))

(declare-fun lt!393651 () Unit!17324)

(declare-fun choose!7436 (List!11335 List!11335 Int) Unit!17324)

(assert (=> d!330941 (= lt!393651 (choose!7436 lt!393610 lt!393611 lambda!46900))))

(assert (=> d!330941 (forall!2917 lt!393611 lambda!46900)))

(assert (=> d!330941 (= (lemmaForallSubseq!108 lt!393610 lt!393611 lambda!46900) lt!393651)))

(declare-fun bs!283161 () Bool)

(assert (= bs!283161 d!330941))

(assert (=> bs!283161 m!1324879))

(declare-fun m!1324989 () Bool)

(assert (=> bs!283161 m!1324989))

(declare-fun m!1324991 () Bool)

(assert (=> bs!283161 m!1324991))

(assert (=> b!1158182 d!330941))

(declare-fun b!1158343 () Bool)

(declare-fun e!741173 () Bool)

(assert (=> b!1158343 (= e!741173 (subseq!216 (slice!210 lt!393611 from!787 to!267) (t!109278 lt!393611)))))

(declare-fun d!330945 () Bool)

(declare-fun res!521589 () Bool)

(declare-fun e!741172 () Bool)

(assert (=> d!330945 (=> res!521589 e!741172)))

(assert (=> d!330945 (= res!521589 (is-Nil!11311 (slice!210 lt!393611 from!787 to!267)))))

(assert (=> d!330945 (= (subseq!216 (slice!210 lt!393611 from!787 to!267) lt!393611) e!741172)))

(declare-fun b!1158341 () Bool)

(declare-fun e!741170 () Bool)

(assert (=> b!1158341 (= e!741170 e!741173)))

(declare-fun res!521591 () Bool)

(assert (=> b!1158341 (=> res!521591 e!741173)))

(declare-fun e!741171 () Bool)

(assert (=> b!1158341 (= res!521591 e!741171)))

(declare-fun res!521590 () Bool)

(assert (=> b!1158341 (=> (not res!521590) (not e!741171))))

(assert (=> b!1158341 (= res!521590 (= (h!16712 (slice!210 lt!393611 from!787 to!267)) (h!16712 lt!393611)))))

(declare-fun b!1158340 () Bool)

(assert (=> b!1158340 (= e!741172 e!741170)))

(declare-fun res!521588 () Bool)

(assert (=> b!1158340 (=> (not res!521588) (not e!741170))))

(assert (=> b!1158340 (= res!521588 (is-Cons!11311 lt!393611))))

(declare-fun b!1158342 () Bool)

(assert (=> b!1158342 (= e!741171 (subseq!216 (t!109278 (slice!210 lt!393611 from!787 to!267)) (t!109278 lt!393611)))))

(assert (= (and d!330945 (not res!521589)) b!1158340))

(assert (= (and b!1158340 res!521588) b!1158341))

(assert (= (and b!1158341 res!521590) b!1158342))

(assert (= (and b!1158341 (not res!521591)) b!1158343))

(assert (=> b!1158343 m!1324869))

(declare-fun m!1324999 () Bool)

(assert (=> b!1158343 m!1324999))

(declare-fun m!1325001 () Bool)

(assert (=> b!1158342 m!1325001))

(assert (=> b!1158182 d!330945))

(declare-fun d!330951 () Bool)

(declare-fun e!741182 () Bool)

(assert (=> d!330951 e!741182))

(declare-fun res!521601 () Bool)

(assert (=> d!330951 (=> (not res!521601) (not e!741182))))

(declare-fun isBalanced!1040 (Conc!3683) Bool)

(declare-fun slice!213 (Conc!3683 Int Int) Conc!3683)

(assert (=> d!330951 (= res!521601 (isBalanced!1040 (slice!213 (c!194129 (tokens!1559 thiss!10527)) from!787 to!267)))))

(declare-fun lt!393657 () BalanceConc!7388)

(assert (=> d!330951 (= lt!393657 (BalanceConc!7389 (slice!213 (c!194129 (tokens!1559 thiss!10527)) from!787 to!267)))))

(declare-fun e!741181 () Bool)

(assert (=> d!330951 e!741181))

(declare-fun res!521603 () Bool)

(assert (=> d!330951 (=> (not res!521603) (not e!741181))))

(assert (=> d!330951 (= res!521603 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!330951 (= (slice!209 (tokens!1559 thiss!10527) from!787 to!267) lt!393657)))

(declare-fun b!1158353 () Bool)

(declare-fun res!521602 () Bool)

(assert (=> b!1158353 (=> (not res!521602) (not e!741181))))

(assert (=> b!1158353 (= res!521602 (<= to!267 (size!8895 (tokens!1559 thiss!10527))))))

(declare-fun b!1158354 () Bool)

(assert (=> b!1158354 (= e!741181 (isBalanced!1040 (c!194129 (tokens!1559 thiss!10527))))))

(declare-fun b!1158355 () Bool)

(assert (=> b!1158355 (= e!741182 (= (list!4167 lt!393657) (slice!210 (list!4167 (tokens!1559 thiss!10527)) from!787 to!267)))))

(assert (= (and d!330951 res!521603) b!1158353))

(assert (= (and b!1158353 res!521602) b!1158354))

(assert (= (and d!330951 res!521601) b!1158355))

(declare-fun m!1325007 () Bool)

(assert (=> d!330951 m!1325007))

(assert (=> d!330951 m!1325007))

(declare-fun m!1325009 () Bool)

(assert (=> d!330951 m!1325009))

(assert (=> b!1158353 m!1324847))

(declare-fun m!1325011 () Bool)

(assert (=> b!1158354 m!1325011))

(declare-fun m!1325013 () Bool)

(assert (=> b!1158355 m!1325013))

(assert (=> b!1158355 m!1324863))

(assert (=> b!1158355 m!1324863))

(declare-fun m!1325015 () Bool)

(assert (=> b!1158355 m!1325015))

(assert (=> b!1158182 d!330951))

(declare-fun d!330955 () Bool)

(assert (=> d!330955 (= (list!4167 lt!393607) (list!4169 (c!194129 lt!393607)))))

(declare-fun bs!283164 () Bool)

(assert (= bs!283164 d!330955))

(declare-fun m!1325017 () Bool)

(assert (=> bs!283164 m!1325017))

(assert (=> b!1158182 d!330955))

(declare-fun d!330957 () Bool)

(assert (=> d!330957 (subseq!216 (slice!210 lt!393611 from!787 to!267) lt!393611)))

(declare-fun lt!393660 () Unit!17324)

(declare-fun choose!7437 (List!11335 Int Int) Unit!17324)

(assert (=> d!330957 (= lt!393660 (choose!7437 lt!393611 from!787 to!267))))

(declare-fun e!741185 () Bool)

(assert (=> d!330957 e!741185))

(declare-fun res!521606 () Bool)

(assert (=> d!330957 (=> (not res!521606) (not e!741185))))

(assert (=> d!330957 (= res!521606 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!330957 (= (lemmaSliceSubseq!57 lt!393611 from!787 to!267) lt!393660)))

(declare-fun b!1158358 () Bool)

(declare-fun size!8898 (List!11335) Int)

(assert (=> b!1158358 (= e!741185 (<= to!267 (size!8898 lt!393611)))))

(assert (= (and d!330957 res!521606) b!1158358))

(assert (=> d!330957 m!1324869))

(assert (=> d!330957 m!1324869))

(assert (=> d!330957 m!1324873))

(declare-fun m!1325019 () Bool)

(assert (=> d!330957 m!1325019))

(declare-fun m!1325021 () Bool)

(assert (=> b!1158358 m!1325021))

(assert (=> b!1158182 d!330957))

(declare-fun d!330959 () Bool)

(declare-fun res!521611 () Bool)

(declare-fun e!741190 () Bool)

(assert (=> d!330959 (=> res!521611 e!741190)))

(assert (=> d!330959 (= res!521611 (is-Nil!11311 lt!393610))))

(assert (=> d!330959 (= (forall!2917 lt!393610 lambda!46900) e!741190)))

(declare-fun b!1158363 () Bool)

(declare-fun e!741191 () Bool)

(assert (=> b!1158363 (= e!741190 e!741191)))

(declare-fun res!521612 () Bool)

(assert (=> b!1158363 (=> (not res!521612) (not e!741191))))

(declare-fun dynLambda!4990 (Int Token!3582) Bool)

(assert (=> b!1158363 (= res!521612 (dynLambda!4990 lambda!46900 (h!16712 lt!393610)))))

(declare-fun b!1158364 () Bool)

(assert (=> b!1158364 (= e!741191 (forall!2917 (t!109278 lt!393610) lambda!46900))))

(assert (= (and d!330959 (not res!521611)) b!1158363))

(assert (= (and b!1158363 res!521612) b!1158364))

(declare-fun b_lambda!34583 () Bool)

(assert (=> (not b_lambda!34583) (not b!1158363)))

(declare-fun m!1325023 () Bool)

(assert (=> b!1158363 m!1325023))

(declare-fun m!1325025 () Bool)

(assert (=> b!1158364 m!1325025))

(assert (=> b!1158182 d!330959))

(declare-fun d!330961 () Bool)

(declare-fun take!50 (List!11335 Int) List!11335)

(declare-fun drop!452 (List!11335 Int) List!11335)

(assert (=> d!330961 (= (slice!210 lt!393611 from!787 to!267) (take!50 (drop!452 lt!393611 from!787) (- to!267 from!787)))))

(declare-fun bs!283165 () Bool)

(assert (= bs!283165 d!330961))

(declare-fun m!1325027 () Bool)

(assert (=> bs!283165 m!1325027))

(assert (=> bs!283165 m!1325027))

(declare-fun m!1325029 () Bool)

(assert (=> bs!283165 m!1325029))

(assert (=> b!1158182 d!330961))

(declare-fun d!330963 () Bool)

(declare-fun lt!393666 () Bool)

(declare-fun e!741200 () Bool)

(assert (=> d!330963 (= lt!393666 e!741200)))

(declare-fun res!521626 () Bool)

(assert (=> d!330963 (=> (not res!521626) (not e!741200))))

(declare-datatypes ((tuple2!11984 0))(
  ( (tuple2!11985 (_1!6839 BalanceConc!7388) (_2!6839 BalanceConc!7386)) )
))
(declare-fun lex!685 (LexerInterface!1655 List!11336 BalanceConc!7386) tuple2!11984)

(declare-fun print!622 (LexerInterface!1655 BalanceConc!7388) BalanceConc!7386)

(declare-fun singletonSeq!640 (Token!3582) BalanceConc!7388)

(assert (=> d!330963 (= res!521626 (= (list!4167 (_1!6839 (lex!685 Lexer!1653 (rules!9445 thiss!10527) (print!622 Lexer!1653 (singletonSeq!640 (h!16712 lt!393611)))))) (list!4167 (singletonSeq!640 (h!16712 lt!393611)))))))

(declare-fun e!741199 () Bool)

(assert (=> d!330963 (= lt!393666 e!741199)))

(declare-fun res!521627 () Bool)

(assert (=> d!330963 (=> (not res!521627) (not e!741199))))

(declare-fun lt!393665 () tuple2!11984)

(assert (=> d!330963 (= res!521627 (= (size!8895 (_1!6839 lt!393665)) 1))))

(assert (=> d!330963 (= lt!393665 (lex!685 Lexer!1653 (rules!9445 thiss!10527) (print!622 Lexer!1653 (singletonSeq!640 (h!16712 lt!393611)))))))

(assert (=> d!330963 (not (isEmpty!6950 (rules!9445 thiss!10527)))))

(assert (=> d!330963 (= (rulesProduceIndividualToken!692 Lexer!1653 (rules!9445 thiss!10527) (h!16712 lt!393611)) lt!393666)))

(declare-fun b!1158377 () Bool)

(declare-fun res!521625 () Bool)

(assert (=> b!1158377 (=> (not res!521625) (not e!741199))))

(declare-fun apply!2409 (BalanceConc!7388 Int) Token!3582)

(assert (=> b!1158377 (= res!521625 (= (apply!2409 (_1!6839 lt!393665) 0) (h!16712 lt!393611)))))

(declare-fun b!1158378 () Bool)

(declare-fun isEmpty!6952 (BalanceConc!7386) Bool)

(assert (=> b!1158378 (= e!741199 (isEmpty!6952 (_2!6839 lt!393665)))))

(declare-fun b!1158379 () Bool)

(assert (=> b!1158379 (= e!741200 (isEmpty!6952 (_2!6839 (lex!685 Lexer!1653 (rules!9445 thiss!10527) (print!622 Lexer!1653 (singletonSeq!640 (h!16712 lt!393611)))))))))

(assert (= (and d!330963 res!521627) b!1158377))

(assert (= (and b!1158377 res!521625) b!1158378))

(assert (= (and d!330963 res!521626) b!1158379))

(declare-fun m!1325031 () Bool)

(assert (=> d!330963 m!1325031))

(assert (=> d!330963 m!1324887))

(declare-fun m!1325033 () Bool)

(assert (=> d!330963 m!1325033))

(declare-fun m!1325035 () Bool)

(assert (=> d!330963 m!1325035))

(declare-fun m!1325037 () Bool)

(assert (=> d!330963 m!1325037))

(declare-fun m!1325039 () Bool)

(assert (=> d!330963 m!1325039))

(assert (=> d!330963 m!1325039))

(declare-fun m!1325041 () Bool)

(assert (=> d!330963 m!1325041))

(assert (=> d!330963 m!1325039))

(assert (=> d!330963 m!1325035))

(declare-fun m!1325043 () Bool)

(assert (=> b!1158377 m!1325043))

(declare-fun m!1325045 () Bool)

(assert (=> b!1158378 m!1325045))

(assert (=> b!1158379 m!1325039))

(assert (=> b!1158379 m!1325039))

(assert (=> b!1158379 m!1325035))

(assert (=> b!1158379 m!1325035))

(assert (=> b!1158379 m!1325037))

(declare-fun m!1325049 () Bool)

(assert (=> b!1158379 m!1325049))

(assert (=> b!1158183 d!330963))

(declare-fun d!330967 () Bool)

(declare-fun lt!393669 () Bool)

(declare-fun e!741207 () Bool)

(assert (=> d!330967 (= lt!393669 e!741207)))

(declare-fun res!521631 () Bool)

(assert (=> d!330967 (=> (not res!521631) (not e!741207))))

(assert (=> d!330967 (= res!521631 (= (list!4167 (_1!6839 (lex!685 Lexer!1653 (rules!9445 thiss!10527) (print!622 Lexer!1653 (singletonSeq!640 (h!16712 lt!393610)))))) (list!4167 (singletonSeq!640 (h!16712 lt!393610)))))))

(declare-fun e!741206 () Bool)

(assert (=> d!330967 (= lt!393669 e!741206)))

(declare-fun res!521632 () Bool)

(assert (=> d!330967 (=> (not res!521632) (not e!741206))))

(declare-fun lt!393668 () tuple2!11984)

(assert (=> d!330967 (= res!521632 (= (size!8895 (_1!6839 lt!393668)) 1))))

(assert (=> d!330967 (= lt!393668 (lex!685 Lexer!1653 (rules!9445 thiss!10527) (print!622 Lexer!1653 (singletonSeq!640 (h!16712 lt!393610)))))))

(assert (=> d!330967 (not (isEmpty!6950 (rules!9445 thiss!10527)))))

(assert (=> d!330967 (= (rulesProduceIndividualToken!692 Lexer!1653 (rules!9445 thiss!10527) (h!16712 lt!393610)) lt!393669)))

(declare-fun b!1158385 () Bool)

(declare-fun res!521630 () Bool)

(assert (=> b!1158385 (=> (not res!521630) (not e!741206))))

(assert (=> b!1158385 (= res!521630 (= (apply!2409 (_1!6839 lt!393668) 0) (h!16712 lt!393610)))))

(declare-fun b!1158386 () Bool)

(assert (=> b!1158386 (= e!741206 (isEmpty!6952 (_2!6839 lt!393668)))))

(declare-fun b!1158387 () Bool)

(assert (=> b!1158387 (= e!741207 (isEmpty!6952 (_2!6839 (lex!685 Lexer!1653 (rules!9445 thiss!10527) (print!622 Lexer!1653 (singletonSeq!640 (h!16712 lt!393610)))))))))

(assert (= (and d!330967 res!521632) b!1158385))

(assert (= (and b!1158385 res!521630) b!1158386))

(assert (= (and d!330967 res!521631) b!1158387))

(declare-fun m!1325051 () Bool)

(assert (=> d!330967 m!1325051))

(assert (=> d!330967 m!1324887))

(declare-fun m!1325053 () Bool)

(assert (=> d!330967 m!1325053))

(declare-fun m!1325055 () Bool)

(assert (=> d!330967 m!1325055))

(declare-fun m!1325057 () Bool)

(assert (=> d!330967 m!1325057))

(declare-fun m!1325059 () Bool)

(assert (=> d!330967 m!1325059))

(assert (=> d!330967 m!1325059))

(declare-fun m!1325061 () Bool)

(assert (=> d!330967 m!1325061))

(assert (=> d!330967 m!1325059))

(assert (=> d!330967 m!1325055))

(declare-fun m!1325063 () Bool)

(assert (=> b!1158385 m!1325063))

(declare-fun m!1325065 () Bool)

(assert (=> b!1158386 m!1325065))

(assert (=> b!1158387 m!1325059))

(assert (=> b!1158387 m!1325059))

(assert (=> b!1158387 m!1325055))

(assert (=> b!1158387 m!1325055))

(assert (=> b!1158387 m!1325057))

(declare-fun m!1325067 () Bool)

(assert (=> b!1158387 m!1325067))

(assert (=> b!1158185 d!330967))

(declare-fun d!330971 () Bool)

(assert (=> d!330971 (= (inv!14862 (tokens!1559 thiss!10527)) (isBalanced!1040 (c!194129 (tokens!1559 thiss!10527))))))

(declare-fun bs!283168 () Bool)

(assert (= bs!283168 d!330971))

(assert (=> bs!283168 m!1325011))

(assert (=> b!1158184 d!330971))

(declare-fun bs!283169 () Bool)

(declare-fun d!330973 () Bool)

(assert (= bs!283169 (and d!330973 b!1158180)))

(declare-fun lambda!46924 () Int)

(assert (=> bs!283169 (= lambda!46924 lambda!46900)))

(declare-fun bs!283170 () Bool)

(assert (= bs!283170 (and d!330973 d!330931)))

(assert (=> bs!283170 (= lambda!46924 lambda!46914)))

(declare-fun bs!283171 () Bool)

(assert (= bs!283171 (and d!330973 d!330933)))

(assert (=> bs!283171 (= lambda!46924 lambda!46919)))

(declare-fun b!1158392 () Bool)

(declare-fun e!741212 () Bool)

(assert (=> b!1158392 (= e!741212 true)))

(declare-fun b!1158391 () Bool)

(declare-fun e!741211 () Bool)

(assert (=> b!1158391 (= e!741211 e!741212)))

(declare-fun b!1158390 () Bool)

(declare-fun e!741210 () Bool)

(assert (=> b!1158390 (= e!741210 e!741211)))

(assert (=> d!330973 e!741210))

(assert (= b!1158391 b!1158392))

(assert (= b!1158390 b!1158391))

(assert (= (and d!330973 (is-Cons!11312 (rules!9445 thiss!10527))) b!1158390))

(assert (=> b!1158392 (< (dynLambda!4987 order!6927 (toValue!3061 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46924))))

(assert (=> b!1158392 (< (dynLambda!4989 order!6931 (toChars!2920 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46924))))

(assert (=> d!330973 true))

(declare-fun lt!393670 () Bool)

(assert (=> d!330973 (= lt!393670 (forall!2917 lt!393610 lambda!46924))))

(declare-fun e!741208 () Bool)

(assert (=> d!330973 (= lt!393670 e!741208)))

(declare-fun res!521634 () Bool)

(assert (=> d!330973 (=> res!521634 e!741208)))

(assert (=> d!330973 (= res!521634 (not (is-Cons!11311 lt!393610)))))

(assert (=> d!330973 (not (isEmpty!6950 (rules!9445 thiss!10527)))))

(assert (=> d!330973 (= (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) lt!393610) lt!393670)))

(declare-fun b!1158388 () Bool)

(declare-fun e!741209 () Bool)

(assert (=> b!1158388 (= e!741208 e!741209)))

(declare-fun res!521633 () Bool)

(assert (=> b!1158388 (=> (not res!521633) (not e!741209))))

(assert (=> b!1158388 (= res!521633 (rulesProduceIndividualToken!692 Lexer!1653 (rules!9445 thiss!10527) (h!16712 lt!393610)))))

(declare-fun b!1158389 () Bool)

(assert (=> b!1158389 (= e!741209 (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) (t!109278 lt!393610)))))

(assert (= (and d!330973 (not res!521634)) b!1158388))

(assert (= (and b!1158388 res!521633) b!1158389))

(declare-fun m!1325069 () Bool)

(assert (=> d!330973 m!1325069))

(assert (=> d!330973 m!1324887))

(assert (=> b!1158388 m!1324841))

(assert (=> b!1158389 m!1324885))

(assert (=> b!1158186 d!330973))

(declare-fun bs!283172 () Bool)

(declare-fun d!330975 () Bool)

(assert (= bs!283172 (and d!330975 b!1158180)))

(declare-fun lambda!46925 () Int)

(assert (=> bs!283172 (= lambda!46925 lambda!46900)))

(declare-fun bs!283173 () Bool)

(assert (= bs!283173 (and d!330975 d!330931)))

(assert (=> bs!283173 (= lambda!46925 lambda!46914)))

(declare-fun bs!283174 () Bool)

(assert (= bs!283174 (and d!330975 d!330933)))

(assert (=> bs!283174 (= lambda!46925 lambda!46919)))

(declare-fun bs!283175 () Bool)

(assert (= bs!283175 (and d!330975 d!330973)))

(assert (=> bs!283175 (= lambda!46925 lambda!46924)))

(declare-fun b!1158397 () Bool)

(declare-fun e!741217 () Bool)

(assert (=> b!1158397 (= e!741217 true)))

(declare-fun b!1158396 () Bool)

(declare-fun e!741216 () Bool)

(assert (=> b!1158396 (= e!741216 e!741217)))

(declare-fun b!1158395 () Bool)

(declare-fun e!741215 () Bool)

(assert (=> b!1158395 (= e!741215 e!741216)))

(assert (=> d!330975 e!741215))

(assert (= b!1158396 b!1158397))

(assert (= b!1158395 b!1158396))

(assert (= (and d!330975 (is-Cons!11312 (rules!9445 thiss!10527))) b!1158395))

(assert (=> b!1158397 (< (dynLambda!4987 order!6927 (toValue!3061 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46925))))

(assert (=> b!1158397 (< (dynLambda!4989 order!6931 (toChars!2920 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46925))))

(assert (=> d!330975 true))

(declare-fun lt!393671 () Bool)

(assert (=> d!330975 (= lt!393671 (forall!2917 (t!109278 lt!393610) lambda!46925))))

(declare-fun e!741213 () Bool)

(assert (=> d!330975 (= lt!393671 e!741213)))

(declare-fun res!521636 () Bool)

(assert (=> d!330975 (=> res!521636 e!741213)))

(assert (=> d!330975 (= res!521636 (not (is-Cons!11311 (t!109278 lt!393610))))))

(assert (=> d!330975 (not (isEmpty!6950 (rules!9445 thiss!10527)))))

(assert (=> d!330975 (= (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) (t!109278 lt!393610)) lt!393671)))

(declare-fun b!1158393 () Bool)

(declare-fun e!741214 () Bool)

(assert (=> b!1158393 (= e!741213 e!741214)))

(declare-fun res!521635 () Bool)

(assert (=> b!1158393 (=> (not res!521635) (not e!741214))))

(assert (=> b!1158393 (= res!521635 (rulesProduceIndividualToken!692 Lexer!1653 (rules!9445 thiss!10527) (h!16712 (t!109278 lt!393610))))))

(declare-fun b!1158394 () Bool)

(assert (=> b!1158394 (= e!741214 (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) (t!109278 (t!109278 lt!393610))))))

(assert (= (and d!330975 (not res!521636)) b!1158393))

(assert (= (and b!1158393 res!521635) b!1158394))

(declare-fun m!1325071 () Bool)

(assert (=> d!330975 m!1325071))

(assert (=> d!330975 m!1324887))

(declare-fun m!1325073 () Bool)

(assert (=> b!1158393 m!1325073))

(declare-fun m!1325075 () Bool)

(assert (=> b!1158394 m!1325075))

(assert (=> b!1158175 d!330975))

(declare-fun d!330977 () Bool)

(declare-fun lt!393674 () Int)

(assert (=> d!330977 (= lt!393674 (size!8898 (list!4167 (tokens!1559 thiss!10527))))))

(declare-fun size!8899 (Conc!3683) Int)

(assert (=> d!330977 (= lt!393674 (size!8899 (c!194129 (tokens!1559 thiss!10527))))))

(assert (=> d!330977 (= (size!8895 (tokens!1559 thiss!10527)) lt!393674)))

(declare-fun bs!283176 () Bool)

(assert (= bs!283176 d!330977))

(assert (=> bs!283176 m!1324863))

(assert (=> bs!283176 m!1324863))

(declare-fun m!1325077 () Bool)

(assert (=> bs!283176 m!1325077))

(declare-fun m!1325079 () Bool)

(assert (=> bs!283176 m!1325079))

(assert (=> b!1158177 d!330977))

(declare-fun bs!283177 () Bool)

(declare-fun d!330979 () Bool)

(assert (= bs!283177 (and d!330979 d!330931)))

(declare-fun lambda!46926 () Int)

(assert (=> bs!283177 (= lambda!46926 lambda!46914)))

(declare-fun bs!283178 () Bool)

(assert (= bs!283178 (and d!330979 d!330933)))

(assert (=> bs!283178 (= lambda!46926 lambda!46919)))

(declare-fun bs!283179 () Bool)

(assert (= bs!283179 (and d!330979 b!1158180)))

(assert (=> bs!283179 (= lambda!46926 lambda!46900)))

(declare-fun bs!283180 () Bool)

(assert (= bs!283180 (and d!330979 d!330973)))

(assert (=> bs!283180 (= lambda!46926 lambda!46924)))

(declare-fun bs!283181 () Bool)

(assert (= bs!283181 (and d!330979 d!330975)))

(assert (=> bs!283181 (= lambda!46926 lambda!46925)))

(declare-fun b!1158402 () Bool)

(declare-fun e!741222 () Bool)

(assert (=> b!1158402 (= e!741222 true)))

(declare-fun b!1158401 () Bool)

(declare-fun e!741221 () Bool)

(assert (=> b!1158401 (= e!741221 e!741222)))

(declare-fun b!1158400 () Bool)

(declare-fun e!741220 () Bool)

(assert (=> b!1158400 (= e!741220 e!741221)))

(assert (=> d!330979 e!741220))

(assert (= b!1158401 b!1158402))

(assert (= b!1158400 b!1158401))

(assert (= (and d!330979 (is-Cons!11312 (rules!9445 thiss!10527))) b!1158400))

(assert (=> b!1158402 (< (dynLambda!4987 order!6927 (toValue!3061 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46926))))

(assert (=> b!1158402 (< (dynLambda!4989 order!6931 (toChars!2920 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46926))))

(assert (=> d!330979 true))

(declare-fun lt!393675 () Bool)

(assert (=> d!330979 (= lt!393675 (forall!2917 (t!109278 lt!393611) lambda!46926))))

(declare-fun e!741218 () Bool)

(assert (=> d!330979 (= lt!393675 e!741218)))

(declare-fun res!521638 () Bool)

(assert (=> d!330979 (=> res!521638 e!741218)))

(assert (=> d!330979 (= res!521638 (not (is-Cons!11311 (t!109278 lt!393611))))))

(assert (=> d!330979 (not (isEmpty!6950 (rules!9445 thiss!10527)))))

(assert (=> d!330979 (= (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) (t!109278 lt!393611)) lt!393675)))

(declare-fun b!1158398 () Bool)

(declare-fun e!741219 () Bool)

(assert (=> b!1158398 (= e!741218 e!741219)))

(declare-fun res!521637 () Bool)

(assert (=> b!1158398 (=> (not res!521637) (not e!741219))))

(assert (=> b!1158398 (= res!521637 (rulesProduceIndividualToken!692 Lexer!1653 (rules!9445 thiss!10527) (h!16712 (t!109278 lt!393611))))))

(declare-fun b!1158399 () Bool)

(assert (=> b!1158399 (= e!741219 (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) (t!109278 (t!109278 lt!393611))))))

(assert (= (and d!330979 (not res!521638)) b!1158398))

(assert (= (and b!1158398 res!521637) b!1158399))

(declare-fun m!1325081 () Bool)

(assert (=> d!330979 m!1325081))

(assert (=> d!330979 m!1324887))

(declare-fun m!1325083 () Bool)

(assert (=> b!1158398 m!1325083))

(declare-fun m!1325085 () Bool)

(assert (=> b!1158399 m!1325085))

(assert (=> b!1158176 d!330979))

(declare-fun bs!283182 () Bool)

(declare-fun d!330981 () Bool)

(assert (= bs!283182 (and d!330981 d!330931)))

(declare-fun lambda!46927 () Int)

(assert (=> bs!283182 (= lambda!46927 lambda!46914)))

(declare-fun bs!283183 () Bool)

(assert (= bs!283183 (and d!330981 d!330979)))

(assert (=> bs!283183 (= lambda!46927 lambda!46926)))

(declare-fun bs!283184 () Bool)

(assert (= bs!283184 (and d!330981 d!330933)))

(assert (=> bs!283184 (= lambda!46927 lambda!46919)))

(declare-fun bs!283185 () Bool)

(assert (= bs!283185 (and d!330981 b!1158180)))

(assert (=> bs!283185 (= lambda!46927 lambda!46900)))

(declare-fun bs!283186 () Bool)

(assert (= bs!283186 (and d!330981 d!330973)))

(assert (=> bs!283186 (= lambda!46927 lambda!46924)))

(declare-fun bs!283187 () Bool)

(assert (= bs!283187 (and d!330981 d!330975)))

(assert (=> bs!283187 (= lambda!46927 lambda!46925)))

(declare-fun b!1158406 () Bool)

(declare-fun e!741226 () Bool)

(assert (=> b!1158406 (= e!741226 true)))

(declare-fun b!1158405 () Bool)

(declare-fun e!741225 () Bool)

(assert (=> b!1158405 (= e!741225 e!741226)))

(declare-fun b!1158404 () Bool)

(declare-fun e!741224 () Bool)

(assert (=> b!1158404 (= e!741224 e!741225)))

(assert (=> d!330981 e!741224))

(assert (= b!1158405 b!1158406))

(assert (= b!1158404 b!1158405))

(assert (= (and d!330981 (is-Cons!11312 (rules!9445 thiss!10527))) b!1158404))

(assert (=> b!1158406 (< (dynLambda!4987 order!6927 (toValue!3061 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46927))))

(assert (=> b!1158406 (< (dynLambda!4989 order!6931 (toChars!2920 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46927))))

(assert (=> d!330981 true))

(declare-fun e!741223 () Bool)

(assert (=> d!330981 e!741223))

(declare-fun res!521639 () Bool)

(assert (=> d!330981 (=> (not res!521639) (not e!741223))))

(declare-fun lt!393676 () Bool)

(assert (=> d!330981 (= res!521639 (= lt!393676 (forall!2917 (list!4167 lt!393607) lambda!46927)))))

(assert (=> d!330981 (= lt!393676 (forall!2916 lt!393607 lambda!46927))))

(assert (=> d!330981 (not (isEmpty!6950 (rules!9445 thiss!10527)))))

(assert (=> d!330981 (= (rulesProduceEachTokenIndividually!694 Lexer!1653 (rules!9445 thiss!10527) lt!393607) lt!393676)))

(declare-fun b!1158403 () Bool)

(assert (=> b!1158403 (= e!741223 (= lt!393676 (rulesProduceEachTokenIndividuallyList!523 Lexer!1653 (rules!9445 thiss!10527) (list!4167 lt!393607))))))

(assert (= (and d!330981 res!521639) b!1158403))

(assert (=> d!330981 m!1324867))

(assert (=> d!330981 m!1324867))

(declare-fun m!1325087 () Bool)

(assert (=> d!330981 m!1325087))

(declare-fun m!1325089 () Bool)

(assert (=> d!330981 m!1325089))

(assert (=> d!330981 m!1324887))

(assert (=> b!1158403 m!1324867))

(assert (=> b!1158403 m!1324867))

(declare-fun m!1325091 () Bool)

(assert (=> b!1158403 m!1325091))

(assert (=> b!1158187 d!330981))

(declare-fun d!330983 () Bool)

(declare-fun lt!393677 () Bool)

(assert (=> d!330983 (= lt!393677 (forall!2917 (list!4167 lt!393607) lambda!46900))))

(assert (=> d!330983 (= lt!393677 (forall!2920 (c!194129 lt!393607) lambda!46900))))

(assert (=> d!330983 (= (forall!2916 lt!393607 lambda!46900) lt!393677)))

(declare-fun bs!283188 () Bool)

(assert (= bs!283188 d!330983))

(assert (=> bs!283188 m!1324867))

(assert (=> bs!283188 m!1324867))

(declare-fun m!1325093 () Bool)

(assert (=> bs!283188 m!1325093))

(declare-fun m!1325095 () Bool)

(assert (=> bs!283188 m!1325095))

(assert (=> b!1158187 d!330983))

(declare-fun e!741232 () Bool)

(declare-fun tp!333470 () Bool)

(declare-fun b!1158415 () Bool)

(declare-fun tp!333471 () Bool)

(assert (=> b!1158415 (= e!741232 (and (inv!14861 (left!9867 (c!194129 (tokens!1559 thiss!10527)))) tp!333470 (inv!14861 (right!10197 (c!194129 (tokens!1559 thiss!10527)))) tp!333471))))

(declare-fun b!1158417 () Bool)

(declare-fun e!741231 () Bool)

(declare-fun tp!333469 () Bool)

(assert (=> b!1158417 (= e!741231 tp!333469)))

(declare-fun b!1158416 () Bool)

(declare-fun inv!14869 (IArray!7371) Bool)

(assert (=> b!1158416 (= e!741232 (and (inv!14869 (xs!6388 (c!194129 (tokens!1559 thiss!10527)))) e!741231))))

(assert (=> b!1158178 (= tp!333455 (and (inv!14861 (c!194129 (tokens!1559 thiss!10527))) e!741232))))

(assert (= (and b!1158178 (is-Node!3683 (c!194129 (tokens!1559 thiss!10527)))) b!1158415))

(assert (= b!1158416 b!1158417))

(assert (= (and b!1158178 (is-Leaf!5674 (c!194129 (tokens!1559 thiss!10527)))) b!1158416))

(declare-fun m!1325097 () Bool)

(assert (=> b!1158415 m!1325097))

(declare-fun m!1325099 () Bool)

(assert (=> b!1158415 m!1325099))

(declare-fun m!1325101 () Bool)

(assert (=> b!1158416 m!1325101))

(assert (=> b!1158178 m!1324853))

(declare-fun b!1158426 () Bool)

(declare-fun e!741237 () Bool)

(assert (=> b!1158426 (= e!741237 true)))

(declare-fun b!1158428 () Bool)

(declare-fun e!741238 () Bool)

(assert (=> b!1158428 (= e!741238 true)))

(declare-fun b!1158427 () Bool)

(assert (=> b!1158427 (= e!741237 e!741238)))

(assert (=> b!1158195 e!741237))

(assert (= (and b!1158195 (is-Node!3683 (c!194129 (tokens!1559 thiss!10527)))) b!1158426))

(assert (= b!1158427 b!1158428))

(assert (= (and b!1158195 (is-Leaf!5674 (c!194129 (tokens!1559 thiss!10527)))) b!1158427))

(declare-fun b!1158439 () Bool)

(declare-fun b_free!27705 () Bool)

(declare-fun b_next!28409 () Bool)

(assert (=> b!1158439 (= b_free!27705 (not b_next!28409))))

(declare-fun tp!333482 () Bool)

(declare-fun b_and!80581 () Bool)

(assert (=> b!1158439 (= tp!333482 b_and!80581)))

(declare-fun b_free!27707 () Bool)

(declare-fun b_next!28411 () Bool)

(assert (=> b!1158439 (= b_free!27707 (not b_next!28411))))

(declare-fun tp!333481 () Bool)

(declare-fun b_and!80583 () Bool)

(assert (=> b!1158439 (= tp!333481 b_and!80583)))

(declare-fun e!741248 () Bool)

(assert (=> b!1158439 (= e!741248 (and tp!333482 tp!333481))))

(declare-fun b!1158438 () Bool)

(declare-fun e!741250 () Bool)

(declare-fun tp!333483 () Bool)

(declare-fun inv!14858 (String!13720) Bool)

(declare-fun inv!14870 (TokenValueInjection!3752) Bool)

(assert (=> b!1158438 (= e!741250 (and tp!333483 (inv!14858 (tag!2222 (h!16713 (rules!9445 thiss!10527)))) (inv!14870 (transformation!1960 (h!16713 (rules!9445 thiss!10527)))) e!741248))))

(declare-fun b!1158437 () Bool)

(declare-fun e!741247 () Bool)

(declare-fun tp!333480 () Bool)

(assert (=> b!1158437 (= e!741247 (and e!741250 tp!333480))))

(assert (=> b!1158184 (= tp!333456 e!741247)))

(assert (= b!1158438 b!1158439))

(assert (= b!1158437 b!1158438))

(assert (= (and b!1158184 (is-Cons!11312 (rules!9445 thiss!10527))) b!1158437))

(declare-fun m!1325103 () Bool)

(assert (=> b!1158438 m!1325103))

(declare-fun m!1325105 () Bool)

(assert (=> b!1158438 m!1325105))

(declare-fun b!1158442 () Bool)

(declare-fun e!741253 () Bool)

(assert (=> b!1158442 (= e!741253 true)))

(declare-fun b!1158441 () Bool)

(declare-fun e!741252 () Bool)

(assert (=> b!1158441 (= e!741252 e!741253)))

(declare-fun b!1158440 () Bool)

(declare-fun e!741251 () Bool)

(assert (=> b!1158440 (= e!741251 e!741252)))

(assert (=> b!1158194 e!741251))

(assert (= b!1158441 b!1158442))

(assert (= b!1158440 b!1158441))

(assert (= (and b!1158194 (is-Cons!11312 (rules!9445 thiss!10527))) b!1158440))

(assert (=> b!1158442 (< (dynLambda!4987 order!6927 (toValue!3061 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46900))))

(assert (=> b!1158442 (< (dynLambda!4989 order!6931 (toChars!2920 (transformation!1960 (h!16713 (rules!9445 thiss!10527))))) (dynLambda!4988 order!6929 lambda!46900))))

(declare-fun b_lambda!34585 () Bool)

(assert (= b_lambda!34583 (or b!1158180 b_lambda!34585)))

(declare-fun bs!283189 () Bool)

(declare-fun d!330985 () Bool)

(assert (= bs!283189 (and d!330985 b!1158180)))

(assert (=> bs!283189 (= (dynLambda!4990 lambda!46900 (h!16712 lt!393610)) (rulesProduceIndividualToken!692 Lexer!1653 (rules!9445 thiss!10527) (h!16712 lt!393610)))))

(assert (=> bs!283189 m!1324841))

(assert (=> b!1158363 d!330985))

(push 1)

(assert (not d!330981))

(assert (not b!1158388))

(assert (not b!1158251))

(assert (not b!1158263))

(assert (not b!1158415))

(assert (not b!1158278))

(assert (not b!1158428))

(assert (not b!1158378))

(assert (not d!330957))

(assert (not d!330967))

(assert (not b!1158438))

(assert (not d!330923))

(assert (not b_lambda!34585))

(assert (not b!1158417))

(assert (not b!1158377))

(assert (not b!1158354))

(assert (not d!330975))

(assert (not b_next!28411))

(assert (not d!330941))

(assert (not b!1158249))

(assert (not b!1158314))

(assert (not d!330951))

(assert (not b!1158389))

(assert (not b!1158393))

(assert (not d!330961))

(assert (not b!1158403))

(assert (not b!1158343))

(assert (not b!1158404))

(assert (not b!1158283))

(assert (not b!1158258))

(assert (not b!1158386))

(assert (not d!330925))

(assert (not d!330977))

(assert (not b!1158358))

(assert (not b!1158355))

(assert (not b!1158353))

(assert (not d!330937))

(assert (not b!1158364))

(assert (not b_next!28409))

(assert (not b!1158398))

(assert (not b!1158400))

(assert (not b!1158387))

(assert (not b!1158437))

(assert (not b!1158399))

(assert (not d!330939))

(assert (not b!1158385))

(assert (not b!1158293))

(assert (not b!1158259))

(assert (not d!330983))

(assert (not b!1158416))

(assert (not b!1158395))

(assert (not d!330931))

(assert (not d!330933))

(assert (not d!330963))

(assert (not b!1158284))

(assert (not b!1158379))

(assert (not d!330979))

(assert (not d!330955))

(assert (not b!1158277))

(assert (not b!1158390))

(assert b_and!80581)

(assert (not d!330971))

(assert (not b!1158342))

(assert (not b!1158260))

(assert (not d!330927))

(assert (not b!1158440))

(assert (not bs!283189))

(assert (not b!1158178))

(assert (not b!1158394))

(assert (not b!1158313))

(assert (not d!330973))

(assert b_and!80583)

(assert (not b!1158426))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80581)

(assert b_and!80583)

(assert (not b_next!28409))

(assert (not b_next!28411))

(check-sat)

(pop 1)

