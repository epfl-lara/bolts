; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!131406 () Bool)

(assert start!131406)

(declare-fun b!1423791 () Bool)

(declare-fun e!908972 () Bool)

(declare-fun e!908971 () Bool)

(assert (=> b!1423791 (= e!908972 e!908971)))

(declare-fun res!644680 () Bool)

(assert (=> b!1423791 (=> (not res!644680) (not e!908971))))

(declare-datatypes ((C!7974 0))(
  ( (C!7975 (val!4557 Int)) )
))
(declare-datatypes ((List!14825 0))(
  ( (Nil!14759) (Cons!14759 (h!20160 C!7974) (t!124668 List!14825)) )
))
(declare-datatypes ((IArray!9993 0))(
  ( (IArray!9994 (innerList!5054 List!14825)) )
))
(declare-datatypes ((Conc!4994 0))(
  ( (Node!4994 (left!12589 Conc!4994) (right!12919 Conc!4994) (csize!10218 Int) (cheight!5205 Int)) (Leaf!7488 (xs!7723 IArray!9993) (csize!10219 Int)) (Empty!4994) )
))
(declare-datatypes ((BalanceConc!9928 0))(
  ( (BalanceConc!9929 (c!234071 Conc!4994)) )
))
(declare-datatypes ((List!14826 0))(
  ( (Nil!14760) (Cons!14760 (h!20161 (_ BitVec 16)) (t!124669 List!14826)) )
))
(declare-datatypes ((TokenValue!2674 0))(
  ( (FloatLiteralValue!5348 (text!19163 List!14826)) (TokenValueExt!2673 (__x!9146 Int)) (Broken!13370 (value!83267 List!14826)) (Object!2739) (End!2674) (Def!2674) (Underscore!2674) (Match!2674) (Else!2674) (Error!2674) (Case!2674) (If!2674) (Extends!2674) (Abstract!2674) (Class!2674) (Val!2674) (DelimiterValue!5348 (del!2734 List!14826)) (KeywordValue!2680 (value!83268 List!14826)) (CommentValue!5348 (value!83269 List!14826)) (WhitespaceValue!5348 (value!83270 List!14826)) (IndentationValue!2674 (value!83271 List!14826)) (String!17627) (Int32!2674) (Broken!13371 (value!83272 List!14826)) (Boolean!2675) (Unit!22248) (OperatorValue!2677 (op!2734 List!14826)) (IdentifierValue!5348 (value!83273 List!14826)) (IdentifierValue!5349 (value!83274 List!14826)) (WhitespaceValue!5349 (value!83275 List!14826)) (True!5348) (False!5348) (Broken!13372 (value!83276 List!14826)) (Broken!13373 (value!83277 List!14826)) (True!5349) (RightBrace!2674) (RightBracket!2674) (Colon!2674) (Null!2674) (Comma!2674) (LeftBracket!2674) (False!5349) (LeftBrace!2674) (ImaginaryLiteralValue!2674 (text!19164 List!14826)) (StringLiteralValue!8022 (value!83278 List!14826)) (EOFValue!2674 (value!83279 List!14826)) (IdentValue!2674 (value!83280 List!14826)) (DelimiterValue!5349 (value!83281 List!14826)) (DedentValue!2674 (value!83282 List!14826)) (NewLineValue!2674 (value!83283 List!14826)) (IntegerValue!8022 (value!83284 (_ BitVec 32)) (text!19165 List!14826)) (IntegerValue!8023 (value!83285 Int) (text!19166 List!14826)) (Times!2674) (Or!2674) (Equal!2674) (Minus!2674) (Broken!13374 (value!83286 List!14826)) (And!2674) (Div!2674) (LessEqual!2674) (Mod!2674) (Concat!6572) (Not!2674) (Plus!2674) (SpaceValue!2674 (value!83287 List!14826)) (IntegerValue!8024 (value!83288 Int) (text!19167 List!14826)) (StringLiteralValue!8023 (text!19168 List!14826)) (FloatLiteralValue!5349 (text!19169 List!14826)) (BytesLiteralValue!2674 (value!83289 List!14826)) (CommentValue!5349 (value!83290 List!14826)) (StringLiteralValue!8024 (value!83291 List!14826)) (ErrorTokenValue!2674 (msg!2735 List!14826)) )
))
(declare-datatypes ((Regex!3898 0))(
  ( (ElementMatch!3898 (c!234072 C!7974)) (Concat!6573 (regOne!8308 Regex!3898) (regTwo!8308 Regex!3898)) (EmptyExpr!3898) (Star!3898 (reg!4227 Regex!3898)) (EmptyLang!3898) (Union!3898 (regOne!8309 Regex!3898) (regTwo!8309 Regex!3898)) )
))
(declare-datatypes ((String!17628 0))(
  ( (String!17629 (value!83292 String)) )
))
(declare-datatypes ((TokenValueInjection!5008 0))(
  ( (TokenValueInjection!5009 (toValue!3883 Int) (toChars!3742 Int)) )
))
(declare-datatypes ((Rule!4968 0))(
  ( (Rule!4969 (regex!2584 Regex!3898) (tag!2846 String!17628) (isSeparator!2584 Bool) (transformation!2584 TokenValueInjection!5008)) )
))
(declare-datatypes ((Token!4830 0))(
  ( (Token!4831 (value!83293 TokenValue!2674) (rule!4347 Rule!4968) (size!12123 Int) (originalCharacters!3446 List!14825)) )
))
(declare-datatypes ((List!14827 0))(
  ( (Nil!14761) (Cons!14761 (h!20162 Token!4830) (t!124670 List!14827)) )
))
(declare-datatypes ((IArray!9995 0))(
  ( (IArray!9996 (innerList!5055 List!14827)) )
))
(declare-datatypes ((Conc!4995 0))(
  ( (Node!4995 (left!12590 Conc!4995) (right!12920 Conc!4995) (csize!10220 Int) (cheight!5206 Int)) (Leaf!7489 (xs!7724 IArray!9995) (csize!10221 Int)) (Empty!4995) )
))
(declare-datatypes ((BalanceConc!9930 0))(
  ( (BalanceConc!9931 (c!234073 Conc!4995)) )
))
(declare-datatypes ((List!14828 0))(
  ( (Nil!14762) (Cons!14762 (h!20163 Rule!4968) (t!124671 List!14828)) )
))
(declare-datatypes ((PrintableTokens!950 0))(
  ( (PrintableTokens!951 (rules!11217 List!14828) (tokens!1909 BalanceConc!9930)) )
))
(declare-fun other!32 () PrintableTokens!950)

(declare-fun isEmpty!9129 (BalanceConc!9930) Bool)

(assert (=> b!1423791 (= res!644680 (not (isEmpty!9129 (tokens!1909 other!32))))))

(declare-datatypes ((Unit!22249 0))(
  ( (Unit!22250) )
))
(declare-fun lt!482723 () Unit!22249)

(declare-fun thiss!10022 () PrintableTokens!950)

(declare-fun lemmaInvariant!280 (PrintableTokens!950) Unit!22249)

(assert (=> b!1423791 (= lt!482723 (lemmaInvariant!280 thiss!10022))))

(declare-fun lt!482729 () Unit!22249)

(assert (=> b!1423791 (= lt!482729 (lemmaInvariant!280 other!32))))

(declare-fun b!1423792 () Bool)

(declare-fun e!908975 () Bool)

(declare-fun tp!403624 () Bool)

(declare-fun inv!19571 (Conc!4995) Bool)

(assert (=> b!1423792 (= e!908975 (and (inv!19571 (c!234073 (tokens!1909 thiss!10022))) tp!403624))))

(declare-fun tp!403623 () Bool)

(declare-fun b!1423793 () Bool)

(declare-fun e!908970 () Bool)

(declare-fun e!908974 () Bool)

(declare-fun inv!19572 (BalanceConc!9930) Bool)

(assert (=> b!1423793 (= e!908974 (and tp!403623 (inv!19572 (tokens!1909 other!32)) e!908970))))

(declare-fun res!644679 () Bool)

(assert (=> start!131406 (=> (not res!644679) (not e!908972))))

(assert (=> start!131406 (= res!644679 (= (rules!11217 thiss!10022) (rules!11217 other!32)))))

(assert (=> start!131406 e!908972))

(declare-fun e!908973 () Bool)

(declare-fun inv!19573 (PrintableTokens!950) Bool)

(assert (=> start!131406 (and (inv!19573 thiss!10022) e!908973)))

(assert (=> start!131406 (and (inv!19573 other!32) e!908974)))

(declare-fun b!1423794 () Bool)

(declare-fun res!644681 () Bool)

(assert (=> b!1423794 (=> (not res!644681) (not e!908971))))

(assert (=> b!1423794 (= res!644681 (not (isEmpty!9129 (tokens!1909 thiss!10022))))))

(declare-fun b!1423795 () Bool)

(declare-fun tp!403625 () Bool)

(assert (=> b!1423795 (= e!908970 (and (inv!19571 (c!234073 (tokens!1909 other!32))) tp!403625))))

(declare-fun b!1423796 () Bool)

(declare-fun isEmpty!9130 (List!14828) Bool)

(assert (=> b!1423796 (= e!908971 (not (not (isEmpty!9130 (rules!11217 thiss!10022)))))))

(declare-fun lt!482730 () Token!4830)

(declare-datatypes ((LexerInterface!2248 0))(
  ( (LexerInterfaceExt!2245 (__x!9147 Int)) (Lexer!2246) )
))
(declare-fun rulesProduceIndividualToken!1181 (LexerInterface!2248 List!14828 Token!4830) Bool)

(assert (=> b!1423796 (rulesProduceIndividualToken!1181 Lexer!2246 (rules!11217 thiss!10022) lt!482730)))

(declare-fun lt!482727 () List!14827)

(declare-fun lt!482724 () Unit!22249)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!366 (LexerInterface!2248 List!14828 List!14827 Token!4830) Unit!22249)

(assert (=> b!1423796 (= lt!482724 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!366 Lexer!2246 (rules!11217 thiss!10022) lt!482727 lt!482730))))

(declare-fun head!2820 (BalanceConc!9930) Token!4830)

(assert (=> b!1423796 (= lt!482730 (head!2820 (tokens!1909 other!32)))))

(declare-fun list!5858 (BalanceConc!9930) List!14827)

(assert (=> b!1423796 (= lt!482727 (list!5858 (tokens!1909 other!32)))))

(declare-fun lt!482725 () Token!4830)

(assert (=> b!1423796 (rulesProduceIndividualToken!1181 Lexer!2246 (rules!11217 thiss!10022) lt!482725)))

(declare-fun lt!482728 () Unit!22249)

(declare-fun lt!482726 () List!14827)

(assert (=> b!1423796 (= lt!482728 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!366 Lexer!2246 (rules!11217 thiss!10022) lt!482726 lt!482725))))

(declare-fun last!98 (BalanceConc!9930) Token!4830)

(assert (=> b!1423796 (= lt!482725 (last!98 (tokens!1909 thiss!10022)))))

(assert (=> b!1423796 (= lt!482726 (list!5858 (tokens!1909 thiss!10022)))))

(declare-fun tp!403626 () Bool)

(declare-fun b!1423797 () Bool)

(assert (=> b!1423797 (= e!908973 (and tp!403626 (inv!19572 (tokens!1909 thiss!10022)) e!908975))))

(assert (= (and start!131406 res!644679) b!1423791))

(assert (= (and b!1423791 res!644680) b!1423794))

(assert (= (and b!1423794 res!644681) b!1423796))

(assert (= b!1423797 b!1423792))

(assert (= start!131406 b!1423797))

(assert (= b!1423793 b!1423795))

(assert (= start!131406 b!1423793))

(declare-fun m!1617073 () Bool)

(assert (=> b!1423794 m!1617073))

(declare-fun m!1617075 () Bool)

(assert (=> b!1423797 m!1617075))

(declare-fun m!1617077 () Bool)

(assert (=> b!1423791 m!1617077))

(declare-fun m!1617079 () Bool)

(assert (=> b!1423791 m!1617079))

(declare-fun m!1617081 () Bool)

(assert (=> b!1423791 m!1617081))

(declare-fun m!1617083 () Bool)

(assert (=> b!1423792 m!1617083))

(declare-fun m!1617085 () Bool)

(assert (=> b!1423793 m!1617085))

(declare-fun m!1617087 () Bool)

(assert (=> b!1423796 m!1617087))

(declare-fun m!1617089 () Bool)

(assert (=> b!1423796 m!1617089))

(declare-fun m!1617091 () Bool)

(assert (=> b!1423796 m!1617091))

(declare-fun m!1617093 () Bool)

(assert (=> b!1423796 m!1617093))

(declare-fun m!1617095 () Bool)

(assert (=> b!1423796 m!1617095))

(declare-fun m!1617097 () Bool)

(assert (=> b!1423796 m!1617097))

(declare-fun m!1617099 () Bool)

(assert (=> b!1423796 m!1617099))

(declare-fun m!1617101 () Bool)

(assert (=> b!1423796 m!1617101))

(declare-fun m!1617103 () Bool)

(assert (=> b!1423796 m!1617103))

(declare-fun m!1617105 () Bool)

(assert (=> start!131406 m!1617105))

(declare-fun m!1617107 () Bool)

(assert (=> start!131406 m!1617107))

(declare-fun m!1617109 () Bool)

(assert (=> b!1423795 m!1617109))

(push 1)

(assert (not b!1423796))

(assert (not b!1423791))

(assert (not b!1423797))

(assert (not b!1423794))

(assert (not start!131406))

(assert (not b!1423793))

(assert (not b!1423795))

(assert (not b!1423792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!407848 () Bool)

(declare-fun isBalanced!1479 (Conc!4995) Bool)

(assert (=> d!407848 (= (inv!19572 (tokens!1909 thiss!10022)) (isBalanced!1479 (c!234073 (tokens!1909 thiss!10022))))))

(declare-fun bs!339953 () Bool)

(assert (= bs!339953 d!407848))

(declare-fun m!1617149 () Bool)

(assert (=> bs!339953 m!1617149))

(assert (=> b!1423797 d!407848))

(declare-fun d!407850 () Bool)

(declare-fun c!234079 () Bool)

(assert (=> d!407850 (= c!234079 (is-Node!4995 (c!234073 (tokens!1909 thiss!10022))))))

(declare-fun e!908998 () Bool)

(assert (=> d!407850 (= (inv!19571 (c!234073 (tokens!1909 thiss!10022))) e!908998)))

(declare-fun b!1423825 () Bool)

(declare-fun inv!19577 (Conc!4995) Bool)

(assert (=> b!1423825 (= e!908998 (inv!19577 (c!234073 (tokens!1909 thiss!10022))))))

(declare-fun b!1423826 () Bool)

(declare-fun e!908999 () Bool)

(assert (=> b!1423826 (= e!908998 e!908999)))

(declare-fun res!644697 () Bool)

(assert (=> b!1423826 (= res!644697 (not (is-Leaf!7489 (c!234073 (tokens!1909 thiss!10022)))))))

(assert (=> b!1423826 (=> res!644697 e!908999)))

(declare-fun b!1423827 () Bool)

(declare-fun inv!19578 (Conc!4995) Bool)

(assert (=> b!1423827 (= e!908999 (inv!19578 (c!234073 (tokens!1909 thiss!10022))))))

(assert (= (and d!407850 c!234079) b!1423825))

(assert (= (and d!407850 (not c!234079)) b!1423826))

(assert (= (and b!1423826 (not res!644697)) b!1423827))

(declare-fun m!1617151 () Bool)

(assert (=> b!1423825 m!1617151))

(declare-fun m!1617153 () Bool)

(assert (=> b!1423827 m!1617153))

(assert (=> b!1423792 d!407850))

(declare-fun d!407852 () Bool)

(assert (=> d!407852 (= (inv!19572 (tokens!1909 other!32)) (isBalanced!1479 (c!234073 (tokens!1909 other!32))))))

(declare-fun bs!339954 () Bool)

(assert (= bs!339954 d!407852))

(declare-fun m!1617155 () Bool)

(assert (=> bs!339954 m!1617155))

(assert (=> b!1423793 d!407852))

(declare-fun d!407854 () Bool)

(declare-fun res!644704 () Bool)

(declare-fun e!909002 () Bool)

(assert (=> d!407854 (=> (not res!644704) (not e!909002))))

(assert (=> d!407854 (= res!644704 (not (isEmpty!9130 (rules!11217 thiss!10022))))))

(assert (=> d!407854 (= (inv!19573 thiss!10022) e!909002)))

(declare-fun b!1423834 () Bool)

(declare-fun res!644705 () Bool)

(assert (=> b!1423834 (=> (not res!644705) (not e!909002))))

(declare-fun rulesInvariant!2098 (LexerInterface!2248 List!14828) Bool)

(assert (=> b!1423834 (= res!644705 (rulesInvariant!2098 Lexer!2246 (rules!11217 thiss!10022)))))

(declare-fun b!1423835 () Bool)

(declare-fun res!644706 () Bool)

(assert (=> b!1423835 (=> (not res!644706) (not e!909002))))

(declare-fun rulesProduceEachTokenIndividually!821 (LexerInterface!2248 List!14828 BalanceConc!9930) Bool)

(assert (=> b!1423835 (= res!644706 (rulesProduceEachTokenIndividually!821 Lexer!2246 (rules!11217 thiss!10022) (tokens!1909 thiss!10022)))))

(declare-fun b!1423836 () Bool)

(declare-fun separableTokens!206 (LexerInterface!2248 BalanceConc!9930 List!14828) Bool)

(assert (=> b!1423836 (= e!909002 (separableTokens!206 Lexer!2246 (tokens!1909 thiss!10022) (rules!11217 thiss!10022)))))

(assert (= (and d!407854 res!644704) b!1423834))

(assert (= (and b!1423834 res!644705) b!1423835))

(assert (= (and b!1423835 res!644706) b!1423836))

(assert (=> d!407854 m!1617103))

(declare-fun m!1617159 () Bool)

(assert (=> b!1423834 m!1617159))

(declare-fun m!1617161 () Bool)

(assert (=> b!1423835 m!1617161))

(declare-fun m!1617163 () Bool)

(assert (=> b!1423836 m!1617163))

(assert (=> start!131406 d!407854))

(declare-fun d!407860 () Bool)

(declare-fun res!644707 () Bool)

(declare-fun e!909003 () Bool)

(assert (=> d!407860 (=> (not res!644707) (not e!909003))))

(assert (=> d!407860 (= res!644707 (not (isEmpty!9130 (rules!11217 other!32))))))

(assert (=> d!407860 (= (inv!19573 other!32) e!909003)))

(declare-fun b!1423837 () Bool)

(declare-fun res!644708 () Bool)

(assert (=> b!1423837 (=> (not res!644708) (not e!909003))))

(assert (=> b!1423837 (= res!644708 (rulesInvariant!2098 Lexer!2246 (rules!11217 other!32)))))

(declare-fun b!1423838 () Bool)

(declare-fun res!644709 () Bool)

(assert (=> b!1423838 (=> (not res!644709) (not e!909003))))

(assert (=> b!1423838 (= res!644709 (rulesProduceEachTokenIndividually!821 Lexer!2246 (rules!11217 other!32) (tokens!1909 other!32)))))

(declare-fun b!1423839 () Bool)

(assert (=> b!1423839 (= e!909003 (separableTokens!206 Lexer!2246 (tokens!1909 other!32) (rules!11217 other!32)))))

(assert (= (and d!407860 res!644707) b!1423837))

(assert (= (and b!1423837 res!644708) b!1423838))

(assert (= (and b!1423838 res!644709) b!1423839))

(declare-fun m!1617165 () Bool)

(assert (=> d!407860 m!1617165))

(declare-fun m!1617167 () Bool)

(assert (=> b!1423837 m!1617167))

(declare-fun m!1617169 () Bool)

(assert (=> b!1423838 m!1617169))

(declare-fun m!1617171 () Bool)

(assert (=> b!1423839 m!1617171))

(assert (=> start!131406 d!407860))

(declare-fun d!407862 () Bool)

(declare-fun lt!482757 () Bool)

(declare-fun isEmpty!9133 (List!14827) Bool)

(assert (=> d!407862 (= lt!482757 (isEmpty!9133 (list!5858 (tokens!1909 thiss!10022))))))

(declare-fun isEmpty!9134 (Conc!4995) Bool)

(assert (=> d!407862 (= lt!482757 (isEmpty!9134 (c!234073 (tokens!1909 thiss!10022))))))

(assert (=> d!407862 (= (isEmpty!9129 (tokens!1909 thiss!10022)) lt!482757)))

(declare-fun bs!339956 () Bool)

(assert (= bs!339956 d!407862))

(assert (=> bs!339956 m!1617101))

(assert (=> bs!339956 m!1617101))

(declare-fun m!1617173 () Bool)

(assert (=> bs!339956 m!1617173))

(declare-fun m!1617175 () Bool)

(assert (=> bs!339956 m!1617175))

(assert (=> b!1423794 d!407862))

(declare-fun d!407864 () Bool)

(declare-fun c!234080 () Bool)

(assert (=> d!407864 (= c!234080 (is-Node!4995 (c!234073 (tokens!1909 other!32))))))

(declare-fun e!909004 () Bool)

(assert (=> d!407864 (= (inv!19571 (c!234073 (tokens!1909 other!32))) e!909004)))

(declare-fun b!1423840 () Bool)

(assert (=> b!1423840 (= e!909004 (inv!19577 (c!234073 (tokens!1909 other!32))))))

(declare-fun b!1423841 () Bool)

(declare-fun e!909005 () Bool)

(assert (=> b!1423841 (= e!909004 e!909005)))

(declare-fun res!644710 () Bool)

(assert (=> b!1423841 (= res!644710 (not (is-Leaf!7489 (c!234073 (tokens!1909 other!32)))))))

(assert (=> b!1423841 (=> res!644710 e!909005)))

(declare-fun b!1423842 () Bool)

(assert (=> b!1423842 (= e!909005 (inv!19578 (c!234073 (tokens!1909 other!32))))))

(assert (= (and d!407864 c!234080) b!1423840))

(assert (= (and d!407864 (not c!234080)) b!1423841))

(assert (= (and b!1423841 (not res!644710)) b!1423842))

(declare-fun m!1617177 () Bool)

(assert (=> b!1423840 m!1617177))

(declare-fun m!1617179 () Bool)

(assert (=> b!1423842 m!1617179))

(assert (=> b!1423795 d!407864))

(declare-fun d!407866 () Bool)

(declare-fun list!5860 (Conc!4995) List!14827)

(assert (=> d!407866 (= (list!5858 (tokens!1909 other!32)) (list!5860 (c!234073 (tokens!1909 other!32))))))

(declare-fun bs!339957 () Bool)

(assert (= bs!339957 d!407866))

(declare-fun m!1617181 () Bool)

(assert (=> bs!339957 m!1617181))

(assert (=> b!1423796 d!407866))

(declare-fun d!407868 () Bool)

(declare-fun lt!482760 () Token!4830)

(declare-fun head!2822 (List!14827) Token!4830)

(assert (=> d!407868 (= lt!482760 (head!2822 (list!5858 (tokens!1909 other!32))))))

(declare-fun head!2823 (Conc!4995) Token!4830)

(assert (=> d!407868 (= lt!482760 (head!2823 (c!234073 (tokens!1909 other!32))))))

(assert (=> d!407868 (not (isEmpty!9129 (tokens!1909 other!32)))))

(assert (=> d!407868 (= (head!2820 (tokens!1909 other!32)) lt!482760)))

(declare-fun bs!339958 () Bool)

(assert (= bs!339958 d!407868))

(assert (=> bs!339958 m!1617093))

(assert (=> bs!339958 m!1617093))

(declare-fun m!1617183 () Bool)

(assert (=> bs!339958 m!1617183))

(declare-fun m!1617185 () Bool)

(assert (=> bs!339958 m!1617185))

(assert (=> bs!339958 m!1617077))

(assert (=> b!1423796 d!407868))

(declare-fun d!407870 () Bool)

(declare-fun lt!482763 () Token!4830)

(declare-fun last!100 (List!14827) Token!4830)

(assert (=> d!407870 (= lt!482763 (last!100 (list!5858 (tokens!1909 thiss!10022))))))

(declare-fun last!101 (Conc!4995) Token!4830)

(assert (=> d!407870 (= lt!482763 (last!101 (c!234073 (tokens!1909 thiss!10022))))))

(assert (=> d!407870 (not (isEmpty!9129 (tokens!1909 thiss!10022)))))

(assert (=> d!407870 (= (last!98 (tokens!1909 thiss!10022)) lt!482763)))

(declare-fun bs!339959 () Bool)

(assert (= bs!339959 d!407870))

(assert (=> bs!339959 m!1617101))

(assert (=> bs!339959 m!1617101))

(declare-fun m!1617187 () Bool)

(assert (=> bs!339959 m!1617187))

(declare-fun m!1617189 () Bool)

(assert (=> bs!339959 m!1617189))

(assert (=> bs!339959 m!1617073))

(assert (=> b!1423796 d!407870))

(declare-fun d!407872 () Bool)

(assert (=> d!407872 (rulesProduceIndividualToken!1181 Lexer!2246 (rules!11217 thiss!10022) lt!482730)))

(declare-fun lt!482766 () Unit!22249)

(declare-fun choose!8761 (LexerInterface!2248 List!14828 List!14827 Token!4830) Unit!22249)

(assert (=> d!407872 (= lt!482766 (choose!8761 Lexer!2246 (rules!11217 thiss!10022) lt!482727 lt!482730))))

(assert (=> d!407872 (not (isEmpty!9130 (rules!11217 thiss!10022)))))

(assert (=> d!407872 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!366 Lexer!2246 (rules!11217 thiss!10022) lt!482727 lt!482730) lt!482766)))

(declare-fun bs!339960 () Bool)

(assert (= bs!339960 d!407872))

(assert (=> bs!339960 m!1617099))

(declare-fun m!1617191 () Bool)

(assert (=> bs!339960 m!1617191))

(assert (=> bs!339960 m!1617103))

(assert (=> b!1423796 d!407872))

(declare-fun d!407874 () Bool)

(assert (=> d!407874 (= (list!5858 (tokens!1909 thiss!10022)) (list!5860 (c!234073 (tokens!1909 thiss!10022))))))

(declare-fun bs!339961 () Bool)

(assert (= bs!339961 d!407874))

(declare-fun m!1617193 () Bool)

(assert (=> bs!339961 m!1617193))

(assert (=> b!1423796 d!407874))

(declare-fun d!407876 () Bool)

(declare-fun lt!482775 () Bool)

(declare-fun e!909020 () Bool)

(assert (=> d!407876 (= lt!482775 e!909020)))

(declare-fun res!644733 () Bool)

(assert (=> d!407876 (=> (not res!644733) (not e!909020))))

(declare-datatypes ((tuple2!14054 0))(
  ( (tuple2!14055 (_1!7913 BalanceConc!9930) (_2!7913 BalanceConc!9928)) )
))
(declare-fun lex!1026 (LexerInterface!2248 List!14828 BalanceConc!9928) tuple2!14054)

(declare-fun print!1035 (LexerInterface!2248 BalanceConc!9930) BalanceConc!9928)

(declare-fun singletonSeq!1193 (Token!4830) BalanceConc!9930)

(assert (=> d!407876 (= res!644733 (= (list!5858 (_1!7913 (lex!1026 Lexer!2246 (rules!11217 thiss!10022) (print!1035 Lexer!2246 (singletonSeq!1193 lt!482725))))) (list!5858 (singletonSeq!1193 lt!482725))))))

(declare-fun e!909021 () Bool)

(assert (=> d!407876 (= lt!482775 e!909021)))

(declare-fun res!644734 () Bool)

(assert (=> d!407876 (=> (not res!644734) (not e!909021))))

(declare-fun lt!482774 () tuple2!14054)

(declare-fun size!12125 (BalanceConc!9930) Int)

(assert (=> d!407876 (= res!644734 (= (size!12125 (_1!7913 lt!482774)) 1))))

(assert (=> d!407876 (= lt!482774 (lex!1026 Lexer!2246 (rules!11217 thiss!10022) (print!1035 Lexer!2246 (singletonSeq!1193 lt!482725))))))

(assert (=> d!407876 (not (isEmpty!9130 (rules!11217 thiss!10022)))))

(assert (=> d!407876 (= (rulesProduceIndividualToken!1181 Lexer!2246 (rules!11217 thiss!10022) lt!482725) lt!482775)))

(declare-fun b!1423870 () Bool)

(declare-fun res!644732 () Bool)

(assert (=> b!1423870 (=> (not res!644732) (not e!909021))))

(declare-fun apply!3760 (BalanceConc!9930 Int) Token!4830)

(assert (=> b!1423870 (= res!644732 (= (apply!3760 (_1!7913 lt!482774) 0) lt!482725))))

(declare-fun b!1423871 () Bool)

(declare-fun isEmpty!9135 (BalanceConc!9928) Bool)

(assert (=> b!1423871 (= e!909021 (isEmpty!9135 (_2!7913 lt!482774)))))

(declare-fun b!1423872 () Bool)

(assert (=> b!1423872 (= e!909020 (isEmpty!9135 (_2!7913 (lex!1026 Lexer!2246 (rules!11217 thiss!10022) (print!1035 Lexer!2246 (singletonSeq!1193 lt!482725))))))))

(assert (= (and d!407876 res!644734) b!1423870))

(assert (= (and b!1423870 res!644732) b!1423871))

(assert (= (and d!407876 res!644733) b!1423872))

(declare-fun m!1617217 () Bool)

(assert (=> d!407876 m!1617217))

(declare-fun m!1617219 () Bool)

(assert (=> d!407876 m!1617219))

(declare-fun m!1617221 () Bool)

(assert (=> d!407876 m!1617221))

(declare-fun m!1617223 () Bool)

(assert (=> d!407876 m!1617223))

(assert (=> d!407876 m!1617103))

(assert (=> d!407876 m!1617221))

(assert (=> d!407876 m!1617221))

(declare-fun m!1617225 () Bool)

(assert (=> d!407876 m!1617225))

(assert (=> d!407876 m!1617225))

(declare-fun m!1617227 () Bool)

(assert (=> d!407876 m!1617227))

(declare-fun m!1617229 () Bool)

(assert (=> b!1423870 m!1617229))

(declare-fun m!1617231 () Bool)

(assert (=> b!1423871 m!1617231))

(assert (=> b!1423872 m!1617221))

(assert (=> b!1423872 m!1617221))

(assert (=> b!1423872 m!1617225))

(assert (=> b!1423872 m!1617225))

(assert (=> b!1423872 m!1617227))

(declare-fun m!1617233 () Bool)

(assert (=> b!1423872 m!1617233))

(assert (=> b!1423796 d!407876))

(declare-fun d!407886 () Bool)

(assert (=> d!407886 (rulesProduceIndividualToken!1181 Lexer!2246 (rules!11217 thiss!10022) lt!482725)))

(declare-fun lt!482776 () Unit!22249)

(assert (=> d!407886 (= lt!482776 (choose!8761 Lexer!2246 (rules!11217 thiss!10022) lt!482726 lt!482725))))

(assert (=> d!407886 (not (isEmpty!9130 (rules!11217 thiss!10022)))))

(assert (=> d!407886 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!366 Lexer!2246 (rules!11217 thiss!10022) lt!482726 lt!482725) lt!482776)))

(declare-fun bs!339963 () Bool)

(assert (= bs!339963 d!407886))

(assert (=> bs!339963 m!1617087))

(declare-fun m!1617235 () Bool)

(assert (=> bs!339963 m!1617235))

(assert (=> bs!339963 m!1617103))

(assert (=> b!1423796 d!407886))

(declare-fun d!407888 () Bool)

(assert (=> d!407888 (= (isEmpty!9130 (rules!11217 thiss!10022)) (is-Nil!14762 (rules!11217 thiss!10022)))))

(assert (=> b!1423796 d!407888))

(declare-fun d!407890 () Bool)

(declare-fun lt!482778 () Bool)

(declare-fun e!909022 () Bool)

(assert (=> d!407890 (= lt!482778 e!909022)))

(declare-fun res!644736 () Bool)

(assert (=> d!407890 (=> (not res!644736) (not e!909022))))

(assert (=> d!407890 (= res!644736 (= (list!5858 (_1!7913 (lex!1026 Lexer!2246 (rules!11217 thiss!10022) (print!1035 Lexer!2246 (singletonSeq!1193 lt!482730))))) (list!5858 (singletonSeq!1193 lt!482730))))))

(declare-fun e!909023 () Bool)

(assert (=> d!407890 (= lt!482778 e!909023)))

(declare-fun res!644737 () Bool)

(assert (=> d!407890 (=> (not res!644737) (not e!909023))))

(declare-fun lt!482777 () tuple2!14054)

(assert (=> d!407890 (= res!644737 (= (size!12125 (_1!7913 lt!482777)) 1))))

(assert (=> d!407890 (= lt!482777 (lex!1026 Lexer!2246 (rules!11217 thiss!10022) (print!1035 Lexer!2246 (singletonSeq!1193 lt!482730))))))

(assert (=> d!407890 (not (isEmpty!9130 (rules!11217 thiss!10022)))))

(assert (=> d!407890 (= (rulesProduceIndividualToken!1181 Lexer!2246 (rules!11217 thiss!10022) lt!482730) lt!482778)))

(declare-fun b!1423873 () Bool)

(declare-fun res!644735 () Bool)

(assert (=> b!1423873 (=> (not res!644735) (not e!909023))))

(assert (=> b!1423873 (= res!644735 (= (apply!3760 (_1!7913 lt!482777) 0) lt!482730))))

(declare-fun b!1423874 () Bool)

(assert (=> b!1423874 (= e!909023 (isEmpty!9135 (_2!7913 lt!482777)))))

(declare-fun b!1423875 () Bool)

(assert (=> b!1423875 (= e!909022 (isEmpty!9135 (_2!7913 (lex!1026 Lexer!2246 (rules!11217 thiss!10022) (print!1035 Lexer!2246 (singletonSeq!1193 lt!482730))))))))

(assert (= (and d!407890 res!644737) b!1423873))

(assert (= (and b!1423873 res!644735) b!1423874))

(assert (= (and d!407890 res!644736) b!1423875))

(declare-fun m!1617237 () Bool)

(assert (=> d!407890 m!1617237))

(declare-fun m!1617239 () Bool)

(assert (=> d!407890 m!1617239))

(declare-fun m!1617241 () Bool)

(assert (=> d!407890 m!1617241))

(declare-fun m!1617243 () Bool)

(assert (=> d!407890 m!1617243))

(assert (=> d!407890 m!1617103))

(assert (=> d!407890 m!1617241))

(assert (=> d!407890 m!1617241))

(declare-fun m!1617245 () Bool)

(assert (=> d!407890 m!1617245))

(assert (=> d!407890 m!1617245))

(declare-fun m!1617247 () Bool)

(assert (=> d!407890 m!1617247))

(declare-fun m!1617249 () Bool)

(assert (=> b!1423873 m!1617249))

(declare-fun m!1617251 () Bool)

(assert (=> b!1423874 m!1617251))

(assert (=> b!1423875 m!1617241))

(assert (=> b!1423875 m!1617241))

(assert (=> b!1423875 m!1617245))

(assert (=> b!1423875 m!1617245))

(assert (=> b!1423875 m!1617247))

(declare-fun m!1617253 () Bool)

(assert (=> b!1423875 m!1617253))

(assert (=> b!1423796 d!407890))

(declare-fun d!407892 () Bool)

(declare-fun lt!482779 () Bool)

(assert (=> d!407892 (= lt!482779 (isEmpty!9133 (list!5858 (tokens!1909 other!32))))))

(assert (=> d!407892 (= lt!482779 (isEmpty!9134 (c!234073 (tokens!1909 other!32))))))

(assert (=> d!407892 (= (isEmpty!9129 (tokens!1909 other!32)) lt!482779)))

(declare-fun bs!339964 () Bool)

(assert (= bs!339964 d!407892))

(assert (=> bs!339964 m!1617093))

(assert (=> bs!339964 m!1617093))

(declare-fun m!1617255 () Bool)

(assert (=> bs!339964 m!1617255))

(declare-fun m!1617257 () Bool)

(assert (=> bs!339964 m!1617257))

(assert (=> b!1423791 d!407892))

(declare-fun d!407894 () Bool)

(declare-fun e!909030 () Bool)

(assert (=> d!407894 e!909030))

(declare-fun res!644750 () Bool)

(assert (=> d!407894 (=> (not res!644750) (not e!909030))))

(assert (=> d!407894 (= res!644750 (rulesInvariant!2098 Lexer!2246 (rules!11217 thiss!10022)))))

(declare-fun Unit!22254 () Unit!22249)

(assert (=> d!407894 (= (lemmaInvariant!280 thiss!10022) Unit!22254)))

(declare-fun b!1423888 () Bool)

(declare-fun res!644751 () Bool)

(assert (=> b!1423888 (=> (not res!644751) (not e!909030))))

(assert (=> b!1423888 (= res!644751 (rulesProduceEachTokenIndividually!821 Lexer!2246 (rules!11217 thiss!10022) (tokens!1909 thiss!10022)))))

(declare-fun b!1423889 () Bool)

(assert (=> b!1423889 (= e!909030 (separableTokens!206 Lexer!2246 (tokens!1909 thiss!10022) (rules!11217 thiss!10022)))))

(assert (= (and d!407894 res!644750) b!1423888))

(assert (= (and b!1423888 res!644751) b!1423889))

(assert (=> d!407894 m!1617159))

(assert (=> b!1423888 m!1617161))

(assert (=> b!1423889 m!1617163))

(assert (=> b!1423791 d!407894))

(declare-fun d!407902 () Bool)

(declare-fun e!909031 () Bool)

(assert (=> d!407902 e!909031))

(declare-fun res!644752 () Bool)

(assert (=> d!407902 (=> (not res!644752) (not e!909031))))

(assert (=> d!407902 (= res!644752 (rulesInvariant!2098 Lexer!2246 (rules!11217 other!32)))))

(declare-fun Unit!22255 () Unit!22249)

(assert (=> d!407902 (= (lemmaInvariant!280 other!32) Unit!22255)))

(declare-fun b!1423890 () Bool)

(declare-fun res!644753 () Bool)

(assert (=> b!1423890 (=> (not res!644753) (not e!909031))))

(assert (=> b!1423890 (= res!644753 (rulesProduceEachTokenIndividually!821 Lexer!2246 (rules!11217 other!32) (tokens!1909 other!32)))))

(declare-fun b!1423891 () Bool)

(assert (=> b!1423891 (= e!909031 (separableTokens!206 Lexer!2246 (tokens!1909 other!32) (rules!11217 other!32)))))

(assert (= (and d!407902 res!644752) b!1423890))

(assert (= (and b!1423890 res!644753) b!1423891))

(assert (=> d!407902 m!1617167))

(assert (=> b!1423890 m!1617169))

(assert (=> b!1423891 m!1617171))

(assert (=> b!1423791 d!407902))

(declare-fun b!1423902 () Bool)

(declare-fun b_free!35111 () Bool)

(declare-fun b_next!35815 () Bool)

(assert (=> b!1423902 (= b_free!35111 (not b_next!35815))))

(declare-fun tp!403648 () Bool)

(declare-fun b_and!95127 () Bool)

(assert (=> b!1423902 (= tp!403648 b_and!95127)))

(declare-fun b_free!35113 () Bool)

(declare-fun b_next!35817 () Bool)

(assert (=> b!1423902 (= b_free!35113 (not b_next!35817))))

(declare-fun tp!403650 () Bool)

(declare-fun b_and!95129 () Bool)

(assert (=> b!1423902 (= tp!403650 b_and!95129)))

(declare-fun e!909040 () Bool)

(assert (=> b!1423902 (= e!909040 (and tp!403648 tp!403650))))

(declare-fun tp!403649 () Bool)

(declare-fun e!909043 () Bool)

(declare-fun b!1423901 () Bool)

(declare-fun inv!19568 (String!17628) Bool)

(declare-fun inv!19579 (TokenValueInjection!5008) Bool)

(assert (=> b!1423901 (= e!909043 (and tp!403649 (inv!19568 (tag!2846 (h!20163 (rules!11217 thiss!10022)))) (inv!19579 (transformation!2584 (h!20163 (rules!11217 thiss!10022)))) e!909040))))

(declare-fun b!1423900 () Bool)

(declare-fun e!909041 () Bool)

(declare-fun tp!403647 () Bool)

(assert (=> b!1423900 (= e!909041 (and e!909043 tp!403647))))

(assert (=> b!1423797 (= tp!403626 e!909041)))

(assert (= b!1423901 b!1423902))

(assert (= b!1423900 b!1423901))

(assert (= (and b!1423797 (is-Cons!14762 (rules!11217 thiss!10022))) b!1423900))

(declare-fun m!1617263 () Bool)

(assert (=> b!1423901 m!1617263))

(declare-fun m!1617265 () Bool)

(assert (=> b!1423901 m!1617265))

(declare-fun tp!403659 () Bool)

(declare-fun tp!403657 () Bool)

(declare-fun b!1423911 () Bool)

(declare-fun e!909049 () Bool)

(assert (=> b!1423911 (= e!909049 (and (inv!19571 (left!12590 (c!234073 (tokens!1909 thiss!10022)))) tp!403659 (inv!19571 (right!12920 (c!234073 (tokens!1909 thiss!10022)))) tp!403657))))

(declare-fun b!1423913 () Bool)

(declare-fun e!909048 () Bool)

(declare-fun tp!403658 () Bool)

(assert (=> b!1423913 (= e!909048 tp!403658)))

(declare-fun b!1423912 () Bool)

(declare-fun inv!19580 (IArray!9995) Bool)

(assert (=> b!1423912 (= e!909049 (and (inv!19580 (xs!7724 (c!234073 (tokens!1909 thiss!10022)))) e!909048))))

(assert (=> b!1423792 (= tp!403624 (and (inv!19571 (c!234073 (tokens!1909 thiss!10022))) e!909049))))

(assert (= (and b!1423792 (is-Node!4995 (c!234073 (tokens!1909 thiss!10022)))) b!1423911))

(assert (= b!1423912 b!1423913))

(assert (= (and b!1423792 (is-Leaf!7489 (c!234073 (tokens!1909 thiss!10022)))) b!1423912))

(declare-fun m!1617267 () Bool)

(assert (=> b!1423911 m!1617267))

(declare-fun m!1617269 () Bool)

(assert (=> b!1423911 m!1617269))

(declare-fun m!1617271 () Bool)

(assert (=> b!1423912 m!1617271))

(assert (=> b!1423792 m!1617083))

(declare-fun b!1423916 () Bool)

(declare-fun b_free!35115 () Bool)

(declare-fun b_next!35819 () Bool)

(assert (=> b!1423916 (= b_free!35115 (not b_next!35819))))

(declare-fun tp!403661 () Bool)

(declare-fun b_and!95131 () Bool)

(assert (=> b!1423916 (= tp!403661 b_and!95131)))

(declare-fun b_free!35117 () Bool)

(declare-fun b_next!35821 () Bool)

(assert (=> b!1423916 (= b_free!35117 (not b_next!35821))))

(declare-fun tp!403663 () Bool)

(declare-fun b_and!95133 () Bool)

(assert (=> b!1423916 (= tp!403663 b_and!95133)))

(declare-fun e!909050 () Bool)

(assert (=> b!1423916 (= e!909050 (and tp!403661 tp!403663))))

(declare-fun tp!403662 () Bool)

(declare-fun b!1423915 () Bool)

(declare-fun e!909053 () Bool)

(assert (=> b!1423915 (= e!909053 (and tp!403662 (inv!19568 (tag!2846 (h!20163 (rules!11217 other!32)))) (inv!19579 (transformation!2584 (h!20163 (rules!11217 other!32)))) e!909050))))

(declare-fun b!1423914 () Bool)

(declare-fun e!909051 () Bool)

(declare-fun tp!403660 () Bool)

(assert (=> b!1423914 (= e!909051 (and e!909053 tp!403660))))

(assert (=> b!1423793 (= tp!403623 e!909051)))

(assert (= b!1423915 b!1423916))

(assert (= b!1423914 b!1423915))

(assert (= (and b!1423793 (is-Cons!14762 (rules!11217 other!32))) b!1423914))

(declare-fun m!1617273 () Bool)

(assert (=> b!1423915 m!1617273))

(declare-fun m!1617275 () Bool)

(assert (=> b!1423915 m!1617275))

(declare-fun tp!403666 () Bool)

(declare-fun e!909055 () Bool)

(declare-fun tp!403664 () Bool)

(declare-fun b!1423917 () Bool)

(assert (=> b!1423917 (= e!909055 (and (inv!19571 (left!12590 (c!234073 (tokens!1909 other!32)))) tp!403666 (inv!19571 (right!12920 (c!234073 (tokens!1909 other!32)))) tp!403664))))

(declare-fun b!1423919 () Bool)

(declare-fun e!909054 () Bool)

(declare-fun tp!403665 () Bool)

(assert (=> b!1423919 (= e!909054 tp!403665)))

(declare-fun b!1423918 () Bool)

(assert (=> b!1423918 (= e!909055 (and (inv!19580 (xs!7724 (c!234073 (tokens!1909 other!32)))) e!909054))))

(assert (=> b!1423795 (= tp!403625 (and (inv!19571 (c!234073 (tokens!1909 other!32))) e!909055))))

(assert (= (and b!1423795 (is-Node!4995 (c!234073 (tokens!1909 other!32)))) b!1423917))

(assert (= b!1423918 b!1423919))

(assert (= (and b!1423795 (is-Leaf!7489 (c!234073 (tokens!1909 other!32)))) b!1423918))

(declare-fun m!1617277 () Bool)

(assert (=> b!1423917 m!1617277))

(declare-fun m!1617279 () Bool)

(assert (=> b!1423917 m!1617279))

(declare-fun m!1617281 () Bool)

(assert (=> b!1423918 m!1617281))

(assert (=> b!1423795 m!1617109))

(push 1)

(assert (not d!407872))

(assert (not b!1423901))

(assert (not b!1423870))

(assert (not b!1423900))

(assert (not b_next!35817))

(assert (not b!1423918))

(assert (not b!1423917))

(assert (not b_next!35819))

(assert (not d!407890))

(assert (not b!1423839))

(assert (not b!1423911))

(assert (not d!407860))

(assert b_and!95129)

(assert (not b!1423834))

(assert (not b!1423890))

(assert (not b!1423872))

(assert (not b!1423912))

(assert (not d!407902))

(assert (not b!1423838))

(assert (not d!407852))

(assert (not b!1423914))

(assert (not d!407874))

(assert (not b!1423915))

(assert b_and!95127)

(assert (not b!1423840))

(assert (not b!1423888))

(assert (not d!407848))

(assert b_and!95133)

(assert b_and!95131)

(assert (not d!407876))

(assert (not d!407892))

(assert (not b!1423875))

(assert (not d!407854))

(assert (not d!407862))

(assert (not b!1423827))

(assert (not b!1423889))

(assert (not b!1423837))

(assert (not b_next!35815))

(assert (not b!1423795))

(assert (not b!1423842))

(assert (not b!1423792))

(assert (not d!407894))

(assert (not b!1423835))

(assert (not b!1423836))

(assert (not b_next!35821))

(assert (not d!407868))

(assert (not d!407886))

(assert (not d!407866))

(assert (not d!407870))

(assert (not b!1423873))

(assert (not b!1423825))

(assert (not b!1423874))

(assert (not b!1423871))

(assert (not b!1423913))

(assert (not b!1423891))

(assert (not b!1423919))

(check-sat)

(pop 1)

(push 1)

(assert b_and!95127)

(assert (not b_next!35817))

(assert (not b_next!35815))

(assert (not b_next!35819))

(assert (not b_next!35821))

(assert b_and!95129)

(assert b_and!95133)

(assert b_and!95131)

(check-sat)

(pop 1)

