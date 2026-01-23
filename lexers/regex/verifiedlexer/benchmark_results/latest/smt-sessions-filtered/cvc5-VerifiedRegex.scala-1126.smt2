; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!58842 () Bool)

(assert start!58842)

(declare-fun b!614985 () Bool)

(declare-fun b_free!17549 () Bool)

(declare-fun b_next!17565 () Bool)

(assert (=> b!614985 (= b_free!17549 (not b_next!17565))))

(declare-fun tp!189932 () Bool)

(declare-fun b_and!60999 () Bool)

(assert (=> b!614985 (= tp!189932 b_and!60999)))

(declare-fun b_free!17551 () Bool)

(declare-fun b_next!17567 () Bool)

(assert (=> b!614985 (= b_free!17551 (not b_next!17567))))

(declare-fun tp!189934 () Bool)

(declare-fun b_and!61001 () Bool)

(assert (=> b!614985 (= tp!189934 b_and!61001)))

(declare-fun b!614982 () Bool)

(declare-fun b_free!17553 () Bool)

(declare-fun b_next!17569 () Bool)

(assert (=> b!614982 (= b_free!17553 (not b_next!17569))))

(declare-fun tp!189936 () Bool)

(declare-fun b_and!61003 () Bool)

(assert (=> b!614982 (= tp!189936 b_and!61003)))

(declare-fun b_free!17555 () Bool)

(declare-fun b_next!17571 () Bool)

(assert (=> b!614982 (= b_free!17555 (not b_next!17571))))

(declare-fun tp!189937 () Bool)

(declare-fun b_and!61005 () Bool)

(assert (=> b!614982 (= tp!189937 b_and!61005)))

(declare-fun b!614972 () Bool)

(declare-fun res!267614 () Bool)

(declare-fun e!372843 () Bool)

(assert (=> b!614972 (=> (not res!267614) (not e!372843))))

(declare-datatypes ((C!4066 0))(
  ( (C!4067 (val!2259 Int)) )
))
(declare-datatypes ((Regex!1572 0))(
  ( (ElementMatch!1572 (c!113594 C!4066)) (Concat!2834 (regOne!3656 Regex!1572) (regTwo!3656 Regex!1572)) (EmptyExpr!1572) (Star!1572 (reg!1901 Regex!1572)) (EmptyLang!1572) (Union!1572 (regOne!3657 Regex!1572) (regTwo!3657 Regex!1572)) )
))
(declare-datatypes ((String!8055 0))(
  ( (String!8056 (value!40125 String)) )
))
(declare-datatypes ((List!6166 0))(
  ( (Nil!6156) (Cons!6156 (h!11557 (_ BitVec 16)) (t!81357 List!6166)) )
))
(declare-datatypes ((TokenValue!1262 0))(
  ( (FloatLiteralValue!2524 (text!9279 List!6166)) (TokenValueExt!1261 (__x!4422 Int)) (Broken!6310 (value!40126 List!6166)) (Object!1271) (End!1262) (Def!1262) (Underscore!1262) (Match!1262) (Else!1262) (Error!1262) (Case!1262) (If!1262) (Extends!1262) (Abstract!1262) (Class!1262) (Val!1262) (DelimiterValue!2524 (del!1322 List!6166)) (KeywordValue!1268 (value!40127 List!6166)) (CommentValue!2524 (value!40128 List!6166)) (WhitespaceValue!2524 (value!40129 List!6166)) (IndentationValue!1262 (value!40130 List!6166)) (String!8057) (Int32!1262) (Broken!6311 (value!40131 List!6166)) (Boolean!1263) (Unit!11336) (OperatorValue!1265 (op!1322 List!6166)) (IdentifierValue!2524 (value!40132 List!6166)) (IdentifierValue!2525 (value!40133 List!6166)) (WhitespaceValue!2525 (value!40134 List!6166)) (True!2524) (False!2524) (Broken!6312 (value!40135 List!6166)) (Broken!6313 (value!40136 List!6166)) (True!2525) (RightBrace!1262) (RightBracket!1262) (Colon!1262) (Null!1262) (Comma!1262) (LeftBracket!1262) (False!2525) (LeftBrace!1262) (ImaginaryLiteralValue!1262 (text!9280 List!6166)) (StringLiteralValue!3786 (value!40137 List!6166)) (EOFValue!1262 (value!40138 List!6166)) (IdentValue!1262 (value!40139 List!6166)) (DelimiterValue!2525 (value!40140 List!6166)) (DedentValue!1262 (value!40141 List!6166)) (NewLineValue!1262 (value!40142 List!6166)) (IntegerValue!3786 (value!40143 (_ BitVec 32)) (text!9281 List!6166)) (IntegerValue!3787 (value!40144 Int) (text!9282 List!6166)) (Times!1262) (Or!1262) (Equal!1262) (Minus!1262) (Broken!6314 (value!40145 List!6166)) (And!1262) (Div!1262) (LessEqual!1262) (Mod!1262) (Concat!2835) (Not!1262) (Plus!1262) (SpaceValue!1262 (value!40146 List!6166)) (IntegerValue!3788 (value!40147 Int) (text!9283 List!6166)) (StringLiteralValue!3787 (text!9284 List!6166)) (FloatLiteralValue!2525 (text!9285 List!6166)) (BytesLiteralValue!1262 (value!40148 List!6166)) (CommentValue!2525 (value!40149 List!6166)) (StringLiteralValue!3788 (value!40150 List!6166)) (ErrorTokenValue!1262 (msg!1323 List!6166)) )
))
(declare-datatypes ((List!6167 0))(
  ( (Nil!6157) (Cons!6157 (h!11558 C!4066) (t!81358 List!6167)) )
))
(declare-datatypes ((IArray!3911 0))(
  ( (IArray!3912 (innerList!2013 List!6167)) )
))
(declare-datatypes ((Conc!1955 0))(
  ( (Node!1955 (left!4923 Conc!1955) (right!5253 Conc!1955) (csize!4140 Int) (cheight!2166 Int)) (Leaf!3082 (xs!4592 IArray!3911) (csize!4141 Int)) (Empty!1955) )
))
(declare-datatypes ((BalanceConc!3918 0))(
  ( (BalanceConc!3919 (c!113595 Conc!1955)) )
))
(declare-datatypes ((TokenValueInjection!2292 0))(
  ( (TokenValueInjection!2293 (toValue!2149 Int) (toChars!2008 Int)) )
))
(declare-datatypes ((Rule!2276 0))(
  ( (Rule!2277 (regex!1238 Regex!1572) (tag!1500 String!8055) (isSeparator!1238 Bool) (transformation!1238 TokenValueInjection!2292)) )
))
(declare-datatypes ((List!6168 0))(
  ( (Nil!6158) (Cons!6158 (h!11559 Rule!2276) (t!81359 List!6168)) )
))
(declare-fun rules!3103 () List!6168)

(declare-datatypes ((LexerInterface!1124 0))(
  ( (LexerInterfaceExt!1121 (__x!4423 Int)) (Lexer!1122) )
))
(declare-fun thiss!22590 () LexerInterface!1124)

(declare-fun input!2705 () List!6167)

(declare-datatypes ((Token!2212 0))(
  ( (Token!2213 (value!40151 TokenValue!1262) (rule!2032 Rule!2276) (size!4839 Int) (originalCharacters!1277 List!6167)) )
))
(declare-datatypes ((tuple2!7016 0))(
  ( (tuple2!7017 (_1!3772 Token!2212) (_2!3772 List!6167)) )
))
(declare-datatypes ((Option!1589 0))(
  ( (None!1588) (Some!1588 (v!16501 tuple2!7016)) )
))
(declare-fun maxPrefix!822 (LexerInterface!1124 List!6168 List!6167) Option!1589)

(assert (=> b!614972 (= res!267614 (not (is-Some!1588 (maxPrefix!822 thiss!22590 rules!3103 input!2705))))))

(declare-fun b!614973 () Bool)

(declare-fun res!267608 () Bool)

(declare-fun e!372837 () Bool)

(assert (=> b!614973 (=> (not res!267608) (not e!372837))))

(declare-fun rulesInvariant!1087 (LexerInterface!1124 List!6168) Bool)

(assert (=> b!614973 (= res!267608 (rulesInvariant!1087 thiss!22590 rules!3103))))

(declare-fun b!614974 () Bool)

(declare-fun e!372838 () Bool)

(declare-fun e!372845 () Bool)

(declare-fun tp!189938 () Bool)

(assert (=> b!614974 (= e!372838 (and e!372845 tp!189938))))

(declare-fun b!614975 () Bool)

(declare-fun res!267607 () Bool)

(assert (=> b!614975 (=> (not res!267607) (not e!372837))))

(declare-fun isEmpty!4443 (List!6167) Bool)

(assert (=> b!614975 (= res!267607 (not (isEmpty!4443 input!2705)))))

(declare-fun b!614976 () Bool)

(declare-fun res!267613 () Bool)

(assert (=> b!614976 (=> (not res!267613) (not e!372837))))

(declare-fun token!491 () Token!2212)

(declare-fun list!2591 (BalanceConc!3918) List!6167)

(declare-fun charsOf!867 (Token!2212) BalanceConc!3918)

(assert (=> b!614976 (= res!267613 (= (list!2591 (charsOf!867 token!491)) input!2705))))

(declare-fun tp!189935 () Bool)

(declare-fun b!614977 () Bool)

(declare-fun e!372847 () Bool)

(declare-fun e!372840 () Bool)

(declare-fun inv!7836 (String!8055) Bool)

(declare-fun inv!7839 (TokenValueInjection!2292) Bool)

(assert (=> b!614977 (= e!372847 (and tp!189935 (inv!7836 (tag!1500 (rule!2032 token!491))) (inv!7839 (transformation!1238 (rule!2032 token!491))) e!372840))))

(declare-fun e!372841 () Bool)

(declare-fun b!614978 () Bool)

(declare-fun tp!189931 () Bool)

(assert (=> b!614978 (= e!372845 (and tp!189931 (inv!7836 (tag!1500 (h!11559 rules!3103))) (inv!7839 (transformation!1238 (h!11559 rules!3103))) e!372841))))

(declare-fun b!614979 () Bool)

(declare-fun e!372842 () Bool)

(declare-fun tp_is_empty!3499 () Bool)

(declare-fun tp!189929 () Bool)

(assert (=> b!614979 (= e!372842 (and tp_is_empty!3499 tp!189929))))

(declare-fun b!614981 () Bool)

(declare-fun e!372844 () Bool)

(assert (=> b!614981 (= e!372844 e!372843)))

(declare-fun res!267611 () Bool)

(assert (=> b!614981 (=> (not res!267611) (not e!372843))))

(declare-fun suffix!1342 () List!6167)

(declare-fun lt!264094 () tuple2!7016)

(assert (=> b!614981 (= res!267611 (and (= (_1!3772 lt!264094) token!491) (= (_2!3772 lt!264094) suffix!1342)))))

(declare-fun lt!264093 () Option!1589)

(declare-fun get!2372 (Option!1589) tuple2!7016)

(assert (=> b!614981 (= lt!264094 (get!2372 lt!264093))))

(assert (=> b!614982 (= e!372841 (and tp!189936 tp!189937))))

(declare-fun b!614983 () Bool)

(declare-fun e!372846 () Bool)

(declare-fun tp!189933 () Bool)

(assert (=> b!614983 (= e!372846 (and tp_is_empty!3499 tp!189933))))

(declare-fun b!614984 () Bool)

(declare-fun res!267610 () Bool)

(assert (=> b!614984 (=> (not res!267610) (not e!372837))))

(declare-fun isEmpty!4444 (List!6168) Bool)

(assert (=> b!614984 (= res!267610 (not (isEmpty!4444 rules!3103)))))

(assert (=> b!614985 (= e!372840 (and tp!189932 tp!189934))))

(declare-fun b!614986 () Bool)

(assert (=> b!614986 (= e!372837 e!372844)))

(declare-fun res!267609 () Bool)

(assert (=> b!614986 (=> (not res!267609) (not e!372844))))

(declare-fun isDefined!1400 (Option!1589) Bool)

(assert (=> b!614986 (= res!267609 (isDefined!1400 lt!264093))))

(declare-fun ++!1726 (List!6167 List!6167) List!6167)

(assert (=> b!614986 (= lt!264093 (maxPrefix!822 thiss!22590 rules!3103 (++!1726 input!2705 suffix!1342)))))

(declare-fun tp!189930 () Bool)

(declare-fun b!614987 () Bool)

(declare-fun e!372834 () Bool)

(declare-fun inv!21 (TokenValue!1262) Bool)

(assert (=> b!614987 (= e!372834 (and (inv!21 (value!40151 token!491)) e!372847 tp!189930))))

(declare-fun b!614980 () Bool)

(declare-fun isPrefix!866 (List!6167 List!6167) Bool)

(assert (=> b!614980 (= e!372843 (not (isPrefix!866 input!2705 input!2705)))))

(declare-fun res!267612 () Bool)

(assert (=> start!58842 (=> (not res!267612) (not e!372837))))

(assert (=> start!58842 (= res!267612 (is-Lexer!1122 thiss!22590))))

(assert (=> start!58842 e!372837))

(assert (=> start!58842 e!372842))

(assert (=> start!58842 e!372838))

(declare-fun inv!7840 (Token!2212) Bool)

(assert (=> start!58842 (and (inv!7840 token!491) e!372834)))

(assert (=> start!58842 true))

(assert (=> start!58842 e!372846))

(assert (= (and start!58842 res!267612) b!614984))

(assert (= (and b!614984 res!267610) b!614973))

(assert (= (and b!614973 res!267608) b!614975))

(assert (= (and b!614975 res!267607) b!614976))

(assert (= (and b!614976 res!267613) b!614986))

(assert (= (and b!614986 res!267609) b!614981))

(assert (= (and b!614981 res!267611) b!614972))

(assert (= (and b!614972 res!267614) b!614980))

(assert (= (and start!58842 (is-Cons!6157 suffix!1342)) b!614979))

(assert (= b!614978 b!614982))

(assert (= b!614974 b!614978))

(assert (= (and start!58842 (is-Cons!6158 rules!3103)) b!614974))

(assert (= b!614977 b!614985))

(assert (= b!614987 b!614977))

(assert (= start!58842 b!614987))

(assert (= (and start!58842 (is-Cons!6157 input!2705)) b!614983))

(declare-fun m!883841 () Bool)

(assert (=> b!614975 m!883841))

(declare-fun m!883843 () Bool)

(assert (=> b!614973 m!883843))

(declare-fun m!883845 () Bool)

(assert (=> b!614986 m!883845))

(declare-fun m!883847 () Bool)

(assert (=> b!614986 m!883847))

(assert (=> b!614986 m!883847))

(declare-fun m!883849 () Bool)

(assert (=> b!614986 m!883849))

(declare-fun m!883851 () Bool)

(assert (=> b!614977 m!883851))

(declare-fun m!883853 () Bool)

(assert (=> b!614977 m!883853))

(declare-fun m!883855 () Bool)

(assert (=> start!58842 m!883855))

(declare-fun m!883857 () Bool)

(assert (=> b!614980 m!883857))

(declare-fun m!883859 () Bool)

(assert (=> b!614976 m!883859))

(assert (=> b!614976 m!883859))

(declare-fun m!883861 () Bool)

(assert (=> b!614976 m!883861))

(declare-fun m!883863 () Bool)

(assert (=> b!614972 m!883863))

(declare-fun m!883865 () Bool)

(assert (=> b!614978 m!883865))

(declare-fun m!883867 () Bool)

(assert (=> b!614978 m!883867))

(declare-fun m!883869 () Bool)

(assert (=> b!614987 m!883869))

(declare-fun m!883871 () Bool)

(assert (=> b!614981 m!883871))

(declare-fun m!883873 () Bool)

(assert (=> b!614984 m!883873))

(push 1)

(assert (not b!614979))

(assert (not b!614983))

(assert b_and!61005)

(assert (not b!614986))

(assert (not b_next!17565))

(assert (not b!614975))

(assert (not b!614980))

(assert (not b!614987))

(assert (not b_next!17567))

(assert (not b!614978))

(assert (not b!614981))

(assert (not b!614974))

(assert b_and!61003)

(assert (not b!614973))

(assert (not b_next!17571))

(assert (not b!614972))

(assert (not b!614977))

(assert (not b_next!17569))

(assert (not b!614984))

(assert (not b!614976))

(assert b_and!61001)

(assert tp_is_empty!3499)

(assert (not start!58842))

(assert b_and!60999)

(check-sat)

(pop 1)

(push 1)

(assert b_and!61003)

(assert (not b_next!17571))

(assert b_and!61005)

(assert (not b_next!17565))

(assert (not b_next!17569))

(assert b_and!61001)

(assert (not b_next!17567))

(assert b_and!60999)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!41018 () Option!1589)

(declare-fun bm!41013 () Bool)

(declare-fun maxPrefixOneRule!485 (LexerInterface!1124 Rule!2276 List!6167) Option!1589)

(assert (=> bm!41013 (= call!41018 (maxPrefixOneRule!485 thiss!22590 (h!11559 rules!3103) input!2705))))

(declare-fun b!615072 () Bool)

(declare-fun res!267674 () Bool)

(declare-fun e!372904 () Bool)

(assert (=> b!615072 (=> (not res!267674) (not e!372904))))

(declare-fun lt!264125 () Option!1589)

(declare-fun matchR!675 (Regex!1572 List!6167) Bool)

(assert (=> b!615072 (= res!267674 (matchR!675 (regex!1238 (rule!2032 (_1!3772 (get!2372 lt!264125)))) (list!2591 (charsOf!867 (_1!3772 (get!2372 lt!264125))))))))

(declare-fun b!615073 () Bool)

(declare-fun res!267675 () Bool)

(assert (=> b!615073 (=> (not res!267675) (not e!372904))))

(declare-fun size!4841 (List!6167) Int)

(assert (=> b!615073 (= res!267675 (< (size!4841 (_2!3772 (get!2372 lt!264125))) (size!4841 input!2705)))))

(declare-fun b!615075 () Bool)

(declare-fun e!372902 () Option!1589)

(declare-fun lt!264123 () Option!1589)

(declare-fun lt!264122 () Option!1589)

(assert (=> b!615075 (= e!372902 (ite (and (is-None!1588 lt!264123) (is-None!1588 lt!264122)) None!1588 (ite (is-None!1588 lt!264122) lt!264123 (ite (is-None!1588 lt!264123) lt!264122 (ite (>= (size!4839 (_1!3772 (v!16501 lt!264123))) (size!4839 (_1!3772 (v!16501 lt!264122)))) lt!264123 lt!264122)))))))

(assert (=> b!615075 (= lt!264123 call!41018)))

(assert (=> b!615075 (= lt!264122 (maxPrefix!822 thiss!22590 (t!81359 rules!3103) input!2705))))

(declare-fun b!615076 () Bool)

(declare-fun e!372903 () Bool)

(assert (=> b!615076 (= e!372903 e!372904)))

(declare-fun res!267677 () Bool)

(assert (=> b!615076 (=> (not res!267677) (not e!372904))))

(assert (=> b!615076 (= res!267677 (isDefined!1400 lt!264125))))

(declare-fun b!615077 () Bool)

(declare-fun res!267678 () Bool)

(assert (=> b!615077 (=> (not res!267678) (not e!372904))))

(assert (=> b!615077 (= res!267678 (= (list!2591 (charsOf!867 (_1!3772 (get!2372 lt!264125)))) (originalCharacters!1277 (_1!3772 (get!2372 lt!264125)))))))

(declare-fun b!615078 () Bool)

(declare-fun res!267673 () Bool)

(assert (=> b!615078 (=> (not res!267673) (not e!372904))))

(declare-fun apply!1491 (TokenValueInjection!2292 BalanceConc!3918) TokenValue!1262)

(declare-fun seqFromList!1414 (List!6167) BalanceConc!3918)

(assert (=> b!615078 (= res!267673 (= (value!40151 (_1!3772 (get!2372 lt!264125))) (apply!1491 (transformation!1238 (rule!2032 (_1!3772 (get!2372 lt!264125)))) (seqFromList!1414 (originalCharacters!1277 (_1!3772 (get!2372 lt!264125)))))))))

(declare-fun b!615079 () Bool)

(assert (=> b!615079 (= e!372902 call!41018)))

(declare-fun b!615080 () Bool)

(declare-fun contains!1456 (List!6168 Rule!2276) Bool)

(assert (=> b!615080 (= e!372904 (contains!1456 rules!3103 (rule!2032 (_1!3772 (get!2372 lt!264125)))))))

(declare-fun d!216311 () Bool)

(assert (=> d!216311 e!372903))

(declare-fun res!267679 () Bool)

(assert (=> d!216311 (=> res!267679 e!372903)))

(declare-fun isEmpty!4447 (Option!1589) Bool)

(assert (=> d!216311 (= res!267679 (isEmpty!4447 lt!264125))))

(assert (=> d!216311 (= lt!264125 e!372902)))

(declare-fun c!113603 () Bool)

(assert (=> d!216311 (= c!113603 (and (is-Cons!6158 rules!3103) (is-Nil!6158 (t!81359 rules!3103))))))

(declare-datatypes ((Unit!11338 0))(
  ( (Unit!11339) )
))
(declare-fun lt!264124 () Unit!11338)

(declare-fun lt!264121 () Unit!11338)

(assert (=> d!216311 (= lt!264124 lt!264121)))

(assert (=> d!216311 (isPrefix!866 input!2705 input!2705)))

(declare-fun lemmaIsPrefixRefl!602 (List!6167 List!6167) Unit!11338)

(assert (=> d!216311 (= lt!264121 (lemmaIsPrefixRefl!602 input!2705 input!2705))))

(declare-fun rulesValidInductive!465 (LexerInterface!1124 List!6168) Bool)

(assert (=> d!216311 (rulesValidInductive!465 thiss!22590 rules!3103)))

(assert (=> d!216311 (= (maxPrefix!822 thiss!22590 rules!3103 input!2705) lt!264125)))

(declare-fun b!615074 () Bool)

(declare-fun res!267676 () Bool)

(assert (=> b!615074 (=> (not res!267676) (not e!372904))))

(assert (=> b!615074 (= res!267676 (= (++!1726 (list!2591 (charsOf!867 (_1!3772 (get!2372 lt!264125)))) (_2!3772 (get!2372 lt!264125))) input!2705))))

(assert (= (and d!216311 c!113603) b!615079))

(assert (= (and d!216311 (not c!113603)) b!615075))

(assert (= (or b!615079 b!615075) bm!41013))

(assert (= (and d!216311 (not res!267679)) b!615076))

(assert (= (and b!615076 res!267677) b!615077))

(assert (= (and b!615077 res!267678) b!615073))

(assert (= (and b!615073 res!267675) b!615074))

(assert (= (and b!615074 res!267676) b!615078))

(assert (= (and b!615078 res!267673) b!615072))

(assert (= (and b!615072 res!267674) b!615080))

(declare-fun m!883911 () Bool)

(assert (=> bm!41013 m!883911))

(declare-fun m!883913 () Bool)

(assert (=> b!615078 m!883913))

(declare-fun m!883915 () Bool)

(assert (=> b!615078 m!883915))

(assert (=> b!615078 m!883915))

(declare-fun m!883917 () Bool)

(assert (=> b!615078 m!883917))

(assert (=> b!615073 m!883913))

(declare-fun m!883919 () Bool)

(assert (=> b!615073 m!883919))

(declare-fun m!883921 () Bool)

(assert (=> b!615073 m!883921))

(declare-fun m!883923 () Bool)

(assert (=> b!615076 m!883923))

(declare-fun m!883925 () Bool)

(assert (=> b!615075 m!883925))

(assert (=> b!615077 m!883913))

(declare-fun m!883927 () Bool)

(assert (=> b!615077 m!883927))

(assert (=> b!615077 m!883927))

(declare-fun m!883929 () Bool)

(assert (=> b!615077 m!883929))

(declare-fun m!883931 () Bool)

(assert (=> d!216311 m!883931))

(assert (=> d!216311 m!883857))

(declare-fun m!883933 () Bool)

(assert (=> d!216311 m!883933))

(declare-fun m!883935 () Bool)

(assert (=> d!216311 m!883935))

(assert (=> b!615072 m!883913))

(assert (=> b!615072 m!883927))

(assert (=> b!615072 m!883927))

(assert (=> b!615072 m!883929))

(assert (=> b!615072 m!883929))

(declare-fun m!883937 () Bool)

(assert (=> b!615072 m!883937))

(assert (=> b!615074 m!883913))

(assert (=> b!615074 m!883927))

(assert (=> b!615074 m!883927))

(assert (=> b!615074 m!883929))

(assert (=> b!615074 m!883929))

(declare-fun m!883939 () Bool)

(assert (=> b!615074 m!883939))

(assert (=> b!615080 m!883913))

(declare-fun m!883941 () Bool)

(assert (=> b!615080 m!883941))

(assert (=> b!614972 d!216311))

(declare-fun d!216313 () Bool)

(assert (=> d!216313 (= (get!2372 lt!264093) (v!16501 lt!264093))))

(assert (=> b!614981 d!216313))

(declare-fun d!216315 () Bool)

(assert (=> d!216315 (= (isEmpty!4443 input!2705) (is-Nil!6157 input!2705))))

(assert (=> b!614975 d!216315))

(declare-fun d!216317 () Bool)

(assert (=> d!216317 (= (isEmpty!4444 rules!3103) (is-Nil!6158 rules!3103))))

(assert (=> b!614984 d!216317))

(declare-fun d!216319 () Bool)

(declare-fun res!267689 () Bool)

(declare-fun e!372910 () Bool)

(assert (=> d!216319 (=> (not res!267689) (not e!372910))))

(declare-fun rulesValid!459 (LexerInterface!1124 List!6168) Bool)

(assert (=> d!216319 (= res!267689 (rulesValid!459 thiss!22590 rules!3103))))

(assert (=> d!216319 (= (rulesInvariant!1087 thiss!22590 rules!3103) e!372910)))

(declare-fun b!615092 () Bool)

(declare-datatypes ((List!6172 0))(
  ( (Nil!6162) (Cons!6162 (h!11563 String!8055) (t!81373 List!6172)) )
))
(declare-fun noDuplicateTag!459 (LexerInterface!1124 List!6168 List!6172) Bool)

(assert (=> b!615092 (= e!372910 (noDuplicateTag!459 thiss!22590 rules!3103 Nil!6162))))

(assert (= (and d!216319 res!267689) b!615092))

(declare-fun m!883967 () Bool)

(assert (=> d!216319 m!883967))

(declare-fun m!883971 () Bool)

(assert (=> b!615092 m!883971))

(assert (=> b!614973 d!216319))

(declare-fun d!216321 () Bool)

(declare-fun res!267694 () Bool)

(declare-fun e!372913 () Bool)

(assert (=> d!216321 (=> (not res!267694) (not e!372913))))

(assert (=> d!216321 (= res!267694 (not (isEmpty!4443 (originalCharacters!1277 token!491))))))

(assert (=> d!216321 (= (inv!7840 token!491) e!372913)))

(declare-fun b!615097 () Bool)

(declare-fun res!267695 () Bool)

(assert (=> b!615097 (=> (not res!267695) (not e!372913))))

(declare-fun dynLambda!3571 (Int TokenValue!1262) BalanceConc!3918)

(assert (=> b!615097 (= res!267695 (= (originalCharacters!1277 token!491) (list!2591 (dynLambda!3571 (toChars!2008 (transformation!1238 (rule!2032 token!491))) (value!40151 token!491)))))))

(declare-fun b!615098 () Bool)

(assert (=> b!615098 (= e!372913 (= (size!4839 token!491) (size!4841 (originalCharacters!1277 token!491))))))

(assert (= (and d!216321 res!267694) b!615097))

(assert (= (and b!615097 res!267695) b!615098))

(declare-fun b_lambda!24453 () Bool)

(assert (=> (not b_lambda!24453) (not b!615097)))

(declare-fun t!81364 () Bool)

(declare-fun tb!53719 () Bool)

(assert (=> (and b!614985 (= (toChars!2008 (transformation!1238 (rule!2032 token!491))) (toChars!2008 (transformation!1238 (rule!2032 token!491)))) t!81364) tb!53719))

(declare-fun b!615103 () Bool)

(declare-fun e!372916 () Bool)

(declare-fun tp!189971 () Bool)

(declare-fun inv!7843 (Conc!1955) Bool)

(assert (=> b!615103 (= e!372916 (and (inv!7843 (c!113595 (dynLambda!3571 (toChars!2008 (transformation!1238 (rule!2032 token!491))) (value!40151 token!491)))) tp!189971))))

(declare-fun result!60482 () Bool)

(declare-fun inv!7844 (BalanceConc!3918) Bool)

(assert (=> tb!53719 (= result!60482 (and (inv!7844 (dynLambda!3571 (toChars!2008 (transformation!1238 (rule!2032 token!491))) (value!40151 token!491))) e!372916))))

(assert (= tb!53719 b!615103))

(declare-fun m!883981 () Bool)

(assert (=> b!615103 m!883981))

(declare-fun m!883983 () Bool)

(assert (=> tb!53719 m!883983))

(assert (=> b!615097 t!81364))

(declare-fun b_and!61015 () Bool)

(assert (= b_and!61001 (and (=> t!81364 result!60482) b_and!61015)))

(declare-fun t!81366 () Bool)

(declare-fun tb!53721 () Bool)

(assert (=> (and b!614982 (= (toChars!2008 (transformation!1238 (h!11559 rules!3103))) (toChars!2008 (transformation!1238 (rule!2032 token!491)))) t!81366) tb!53721))

(declare-fun result!60486 () Bool)

(assert (= result!60486 result!60482))

(assert (=> b!615097 t!81366))

(declare-fun b_and!61017 () Bool)

(assert (= b_and!61005 (and (=> t!81366 result!60486) b_and!61017)))

(declare-fun m!883985 () Bool)

(assert (=> d!216321 m!883985))

(declare-fun m!883987 () Bool)

(assert (=> b!615097 m!883987))

(assert (=> b!615097 m!883987))

(declare-fun m!883989 () Bool)

(assert (=> b!615097 m!883989))

(declare-fun m!883991 () Bool)

(assert (=> b!615098 m!883991))

(assert (=> start!58842 d!216321))

(declare-fun d!216325 () Bool)

(assert (=> d!216325 (= (inv!7836 (tag!1500 (rule!2032 token!491))) (= (mod (str.len (value!40125 (tag!1500 (rule!2032 token!491)))) 2) 0))))

(assert (=> b!614977 d!216325))

(declare-fun d!216327 () Bool)

(declare-fun res!267704 () Bool)

(declare-fun e!372925 () Bool)

(assert (=> d!216327 (=> (not res!267704) (not e!372925))))

(declare-fun semiInverseModEq!496 (Int Int) Bool)

(assert (=> d!216327 (= res!267704 (semiInverseModEq!496 (toChars!2008 (transformation!1238 (rule!2032 token!491))) (toValue!2149 (transformation!1238 (rule!2032 token!491)))))))

(assert (=> d!216327 (= (inv!7839 (transformation!1238 (rule!2032 token!491))) e!372925)))

(declare-fun b!615118 () Bool)

(declare-fun equivClasses!479 (Int Int) Bool)

(assert (=> b!615118 (= e!372925 (equivClasses!479 (toChars!2008 (transformation!1238 (rule!2032 token!491))) (toValue!2149 (transformation!1238 (rule!2032 token!491)))))))

(assert (= (and d!216327 res!267704) b!615118))

(declare-fun m!883993 () Bool)

(assert (=> d!216327 m!883993))

(declare-fun m!883995 () Bool)

(assert (=> b!615118 m!883995))

(assert (=> b!614977 d!216327))

(declare-fun d!216329 () Bool)

(declare-fun c!113613 () Bool)

(assert (=> d!216329 (= c!113613 (is-IntegerValue!3786 (value!40151 token!491)))))

(declare-fun e!372934 () Bool)

(assert (=> d!216329 (= (inv!21 (value!40151 token!491)) e!372934)))

(declare-fun b!615129 () Bool)

(declare-fun e!372932 () Bool)

(declare-fun inv!17 (TokenValue!1262) Bool)

(assert (=> b!615129 (= e!372932 (inv!17 (value!40151 token!491)))))

(declare-fun b!615130 () Bool)

(declare-fun e!372933 () Bool)

(declare-fun inv!15 (TokenValue!1262) Bool)

(assert (=> b!615130 (= e!372933 (inv!15 (value!40151 token!491)))))

(declare-fun b!615131 () Bool)

(assert (=> b!615131 (= e!372934 e!372932)))

(declare-fun c!113612 () Bool)

(assert (=> b!615131 (= c!113612 (is-IntegerValue!3787 (value!40151 token!491)))))

(declare-fun b!615132 () Bool)

(declare-fun res!267707 () Bool)

(assert (=> b!615132 (=> res!267707 e!372933)))

(assert (=> b!615132 (= res!267707 (not (is-IntegerValue!3788 (value!40151 token!491))))))

(assert (=> b!615132 (= e!372932 e!372933)))

(declare-fun b!615133 () Bool)

(declare-fun inv!16 (TokenValue!1262) Bool)

(assert (=> b!615133 (= e!372934 (inv!16 (value!40151 token!491)))))

(assert (= (and d!216329 c!113613) b!615133))

(assert (= (and d!216329 (not c!113613)) b!615131))

(assert (= (and b!615131 c!113612) b!615129))

(assert (= (and b!615131 (not c!113612)) b!615132))

(assert (= (and b!615132 (not res!267707)) b!615130))

(declare-fun m!884013 () Bool)

(assert (=> b!615129 m!884013))

(declare-fun m!884015 () Bool)

(assert (=> b!615130 m!884015))

(declare-fun m!884017 () Bool)

(assert (=> b!615133 m!884017))

(assert (=> b!614987 d!216329))

(declare-fun d!216339 () Bool)

(declare-fun list!2593 (Conc!1955) List!6167)

(assert (=> d!216339 (= (list!2591 (charsOf!867 token!491)) (list!2593 (c!113595 (charsOf!867 token!491))))))

(declare-fun bs!71802 () Bool)

(assert (= bs!71802 d!216339))

(declare-fun m!884019 () Bool)

(assert (=> bs!71802 m!884019))

(assert (=> b!614976 d!216339))

(declare-fun d!216341 () Bool)

(declare-fun lt!264139 () BalanceConc!3918)

(assert (=> d!216341 (= (list!2591 lt!264139) (originalCharacters!1277 token!491))))

(assert (=> d!216341 (= lt!264139 (dynLambda!3571 (toChars!2008 (transformation!1238 (rule!2032 token!491))) (value!40151 token!491)))))

(assert (=> d!216341 (= (charsOf!867 token!491) lt!264139)))

(declare-fun b_lambda!24457 () Bool)

(assert (=> (not b_lambda!24457) (not d!216341)))

(assert (=> d!216341 t!81364))

(declare-fun b_and!61019 () Bool)

(assert (= b_and!61015 (and (=> t!81364 result!60482) b_and!61019)))

(assert (=> d!216341 t!81366))

(declare-fun b_and!61021 () Bool)

(assert (= b_and!61017 (and (=> t!81366 result!60486) b_and!61021)))

(declare-fun m!884021 () Bool)

(assert (=> d!216341 m!884021))

(assert (=> d!216341 m!883987))

(assert (=> b!614976 d!216341))

(declare-fun d!216343 () Bool)

(assert (=> d!216343 (= (isDefined!1400 lt!264093) (not (isEmpty!4447 lt!264093)))))

(declare-fun bs!71803 () Bool)

(assert (= bs!71803 d!216343))

(declare-fun m!884023 () Bool)

(assert (=> bs!71803 m!884023))

(assert (=> b!614986 d!216343))

(declare-fun bm!41015 () Bool)

(declare-fun call!41020 () Option!1589)

(assert (=> bm!41015 (= call!41020 (maxPrefixOneRule!485 thiss!22590 (h!11559 rules!3103) (++!1726 input!2705 suffix!1342)))))

(declare-fun b!615138 () Bool)

(declare-fun res!267709 () Bool)

(declare-fun e!372939 () Bool)

(assert (=> b!615138 (=> (not res!267709) (not e!372939))))

(declare-fun lt!264144 () Option!1589)

(assert (=> b!615138 (= res!267709 (matchR!675 (regex!1238 (rule!2032 (_1!3772 (get!2372 lt!264144)))) (list!2591 (charsOf!867 (_1!3772 (get!2372 lt!264144))))))))

(declare-fun b!615139 () Bool)

(declare-fun res!267710 () Bool)

(assert (=> b!615139 (=> (not res!267710) (not e!372939))))

(assert (=> b!615139 (= res!267710 (< (size!4841 (_2!3772 (get!2372 lt!264144))) (size!4841 (++!1726 input!2705 suffix!1342))))))

(declare-fun b!615141 () Bool)

(declare-fun e!372937 () Option!1589)

(declare-fun lt!264142 () Option!1589)

(declare-fun lt!264141 () Option!1589)

(assert (=> b!615141 (= e!372937 (ite (and (is-None!1588 lt!264142) (is-None!1588 lt!264141)) None!1588 (ite (is-None!1588 lt!264141) lt!264142 (ite (is-None!1588 lt!264142) lt!264141 (ite (>= (size!4839 (_1!3772 (v!16501 lt!264142))) (size!4839 (_1!3772 (v!16501 lt!264141)))) lt!264142 lt!264141)))))))

(assert (=> b!615141 (= lt!264142 call!41020)))

(assert (=> b!615141 (= lt!264141 (maxPrefix!822 thiss!22590 (t!81359 rules!3103) (++!1726 input!2705 suffix!1342)))))

(declare-fun b!615142 () Bool)

(declare-fun e!372938 () Bool)

(assert (=> b!615142 (= e!372938 e!372939)))

(declare-fun res!267712 () Bool)

(assert (=> b!615142 (=> (not res!267712) (not e!372939))))

(assert (=> b!615142 (= res!267712 (isDefined!1400 lt!264144))))

(declare-fun b!615143 () Bool)

(declare-fun res!267713 () Bool)

(assert (=> b!615143 (=> (not res!267713) (not e!372939))))

(assert (=> b!615143 (= res!267713 (= (list!2591 (charsOf!867 (_1!3772 (get!2372 lt!264144)))) (originalCharacters!1277 (_1!3772 (get!2372 lt!264144)))))))

(declare-fun b!615144 () Bool)

(declare-fun res!267708 () Bool)

(assert (=> b!615144 (=> (not res!267708) (not e!372939))))

(assert (=> b!615144 (= res!267708 (= (value!40151 (_1!3772 (get!2372 lt!264144))) (apply!1491 (transformation!1238 (rule!2032 (_1!3772 (get!2372 lt!264144)))) (seqFromList!1414 (originalCharacters!1277 (_1!3772 (get!2372 lt!264144)))))))))

(declare-fun b!615145 () Bool)

(assert (=> b!615145 (= e!372937 call!41020)))

(declare-fun b!615146 () Bool)

(assert (=> b!615146 (= e!372939 (contains!1456 rules!3103 (rule!2032 (_1!3772 (get!2372 lt!264144)))))))

(declare-fun d!216345 () Bool)

(assert (=> d!216345 e!372938))

(declare-fun res!267714 () Bool)

(assert (=> d!216345 (=> res!267714 e!372938)))

(assert (=> d!216345 (= res!267714 (isEmpty!4447 lt!264144))))

(assert (=> d!216345 (= lt!264144 e!372937)))

(declare-fun c!113614 () Bool)

(assert (=> d!216345 (= c!113614 (and (is-Cons!6158 rules!3103) (is-Nil!6158 (t!81359 rules!3103))))))

(declare-fun lt!264143 () Unit!11338)

(declare-fun lt!264140 () Unit!11338)

(assert (=> d!216345 (= lt!264143 lt!264140)))

(assert (=> d!216345 (isPrefix!866 (++!1726 input!2705 suffix!1342) (++!1726 input!2705 suffix!1342))))

(assert (=> d!216345 (= lt!264140 (lemmaIsPrefixRefl!602 (++!1726 input!2705 suffix!1342) (++!1726 input!2705 suffix!1342)))))

(assert (=> d!216345 (rulesValidInductive!465 thiss!22590 rules!3103)))

(assert (=> d!216345 (= (maxPrefix!822 thiss!22590 rules!3103 (++!1726 input!2705 suffix!1342)) lt!264144)))

(declare-fun b!615140 () Bool)

(declare-fun res!267711 () Bool)

(assert (=> b!615140 (=> (not res!267711) (not e!372939))))

(assert (=> b!615140 (= res!267711 (= (++!1726 (list!2591 (charsOf!867 (_1!3772 (get!2372 lt!264144)))) (_2!3772 (get!2372 lt!264144))) (++!1726 input!2705 suffix!1342)))))

(assert (= (and d!216345 c!113614) b!615145))

(assert (= (and d!216345 (not c!113614)) b!615141))

(assert (= (or b!615145 b!615141) bm!41015))

(assert (= (and d!216345 (not res!267714)) b!615142))

(assert (= (and b!615142 res!267712) b!615143))

(assert (= (and b!615143 res!267713) b!615139))

(assert (= (and b!615139 res!267710) b!615140))

(assert (= (and b!615140 res!267711) b!615144))

(assert (= (and b!615144 res!267708) b!615138))

(assert (= (and b!615138 res!267709) b!615146))

(assert (=> bm!41015 m!883847))

(declare-fun m!884033 () Bool)

(assert (=> bm!41015 m!884033))

(declare-fun m!884035 () Bool)

(assert (=> b!615144 m!884035))

(declare-fun m!884037 () Bool)

(assert (=> b!615144 m!884037))

(assert (=> b!615144 m!884037))

(declare-fun m!884039 () Bool)

(assert (=> b!615144 m!884039))

(assert (=> b!615139 m!884035))

(declare-fun m!884041 () Bool)

(assert (=> b!615139 m!884041))

(assert (=> b!615139 m!883847))

(declare-fun m!884043 () Bool)

(assert (=> b!615139 m!884043))

(declare-fun m!884045 () Bool)

(assert (=> b!615142 m!884045))

(assert (=> b!615141 m!883847))

(declare-fun m!884047 () Bool)

(assert (=> b!615141 m!884047))

(assert (=> b!615143 m!884035))

(declare-fun m!884049 () Bool)

(assert (=> b!615143 m!884049))

(assert (=> b!615143 m!884049))

(declare-fun m!884051 () Bool)

(assert (=> b!615143 m!884051))

(declare-fun m!884053 () Bool)

(assert (=> d!216345 m!884053))

(assert (=> d!216345 m!883847))

(assert (=> d!216345 m!883847))

(declare-fun m!884055 () Bool)

(assert (=> d!216345 m!884055))

(assert (=> d!216345 m!883847))

(assert (=> d!216345 m!883847))

(declare-fun m!884057 () Bool)

(assert (=> d!216345 m!884057))

(assert (=> d!216345 m!883935))

(assert (=> b!615138 m!884035))

(assert (=> b!615138 m!884049))

(assert (=> b!615138 m!884049))

(assert (=> b!615138 m!884051))

(assert (=> b!615138 m!884051))

(declare-fun m!884059 () Bool)

(assert (=> b!615138 m!884059))

(assert (=> b!615140 m!884035))

(assert (=> b!615140 m!884049))

(assert (=> b!615140 m!884049))

(assert (=> b!615140 m!884051))

(assert (=> b!615140 m!884051))

(declare-fun m!884061 () Bool)

(assert (=> b!615140 m!884061))

(assert (=> b!615146 m!884035))

(declare-fun m!884063 () Bool)

(assert (=> b!615146 m!884063))

(assert (=> b!614986 d!216345))

(declare-fun b!615156 () Bool)

(declare-fun e!372946 () List!6167)

(assert (=> b!615156 (= e!372946 suffix!1342)))

(declare-fun b!615158 () Bool)

(declare-fun res!267719 () Bool)

(declare-fun e!372945 () Bool)

(assert (=> b!615158 (=> (not res!267719) (not e!372945))))

(declare-fun lt!264147 () List!6167)

(assert (=> b!615158 (= res!267719 (= (size!4841 lt!264147) (+ (size!4841 input!2705) (size!4841 suffix!1342))))))

(declare-fun b!615157 () Bool)

(assert (=> b!615157 (= e!372946 (Cons!6157 (h!11558 input!2705) (++!1726 (t!81358 input!2705) suffix!1342)))))

(declare-fun b!615159 () Bool)

(assert (=> b!615159 (= e!372945 (or (not (= suffix!1342 Nil!6157)) (= lt!264147 input!2705)))))

(declare-fun d!216349 () Bool)

(assert (=> d!216349 e!372945))

(declare-fun res!267720 () Bool)

(assert (=> d!216349 (=> (not res!267720) (not e!372945))))

(declare-fun content!1123 (List!6167) (Set C!4066))

(assert (=> d!216349 (= res!267720 (= (content!1123 lt!264147) (set.union (content!1123 input!2705) (content!1123 suffix!1342))))))

(assert (=> d!216349 (= lt!264147 e!372946)))

(declare-fun c!113617 () Bool)

(assert (=> d!216349 (= c!113617 (is-Nil!6157 input!2705))))

(assert (=> d!216349 (= (++!1726 input!2705 suffix!1342) lt!264147)))

(assert (= (and d!216349 c!113617) b!615156))

(assert (= (and d!216349 (not c!113617)) b!615157))

(assert (= (and d!216349 res!267720) b!615158))

(assert (= (and b!615158 res!267719) b!615159))

(declare-fun m!884065 () Bool)

(assert (=> b!615158 m!884065))

(assert (=> b!615158 m!883921))

(declare-fun m!884067 () Bool)

(assert (=> b!615158 m!884067))

(declare-fun m!884069 () Bool)

(assert (=> b!615157 m!884069))

(declare-fun m!884071 () Bool)

(assert (=> d!216349 m!884071))

(declare-fun m!884073 () Bool)

(assert (=> d!216349 m!884073))

(declare-fun m!884075 () Bool)

(assert (=> d!216349 m!884075))

(assert (=> b!614986 d!216349))

(declare-fun b!615173 () Bool)

(declare-fun e!372958 () Bool)

(declare-fun tail!824 (List!6167) List!6167)

(assert (=> b!615173 (= e!372958 (isPrefix!866 (tail!824 input!2705) (tail!824 input!2705)))))

(declare-fun b!615172 () Bool)

(declare-fun res!267732 () Bool)

(assert (=> b!615172 (=> (not res!267732) (not e!372958))))

(declare-fun head!1295 (List!6167) C!4066)

(assert (=> b!615172 (= res!267732 (= (head!1295 input!2705) (head!1295 input!2705)))))

(declare-fun b!615174 () Bool)

(declare-fun e!372956 () Bool)

(assert (=> b!615174 (= e!372956 (>= (size!4841 input!2705) (size!4841 input!2705)))))

(declare-fun d!216353 () Bool)

(assert (=> d!216353 e!372956))

(declare-fun res!267734 () Bool)

(assert (=> d!216353 (=> res!267734 e!372956)))

(declare-fun lt!264150 () Bool)

(assert (=> d!216353 (= res!267734 (not lt!264150))))

(declare-fun e!372957 () Bool)

(assert (=> d!216353 (= lt!264150 e!372957)))

(declare-fun res!267735 () Bool)

(assert (=> d!216353 (=> res!267735 e!372957)))

(assert (=> d!216353 (= res!267735 (is-Nil!6157 input!2705))))

(assert (=> d!216353 (= (isPrefix!866 input!2705 input!2705) lt!264150)))

(declare-fun b!615171 () Bool)

(assert (=> b!615171 (= e!372957 e!372958)))

(declare-fun res!267733 () Bool)

(assert (=> b!615171 (=> (not res!267733) (not e!372958))))

(assert (=> b!615171 (= res!267733 (not (is-Nil!6157 input!2705)))))

(assert (= (and d!216353 (not res!267735)) b!615171))

(assert (= (and b!615171 res!267733) b!615172))

(assert (= (and b!615172 res!267732) b!615173))

(assert (= (and d!216353 (not res!267734)) b!615174))

(declare-fun m!884081 () Bool)

(assert (=> b!615173 m!884081))

(assert (=> b!615173 m!884081))

(assert (=> b!615173 m!884081))

(assert (=> b!615173 m!884081))

(declare-fun m!884083 () Bool)

(assert (=> b!615173 m!884083))

(declare-fun m!884085 () Bool)

(assert (=> b!615172 m!884085))

(assert (=> b!615172 m!884085))

(assert (=> b!615174 m!883921))

(assert (=> b!615174 m!883921))

(assert (=> b!614980 d!216353))

(declare-fun d!216359 () Bool)

(assert (=> d!216359 (= (inv!7836 (tag!1500 (h!11559 rules!3103))) (= (mod (str.len (value!40125 (tag!1500 (h!11559 rules!3103)))) 2) 0))))

(assert (=> b!614978 d!216359))

(declare-fun d!216361 () Bool)

(declare-fun res!267736 () Bool)

(declare-fun e!372959 () Bool)

(assert (=> d!216361 (=> (not res!267736) (not e!372959))))

(assert (=> d!216361 (= res!267736 (semiInverseModEq!496 (toChars!2008 (transformation!1238 (h!11559 rules!3103))) (toValue!2149 (transformation!1238 (h!11559 rules!3103)))))))

(assert (=> d!216361 (= (inv!7839 (transformation!1238 (h!11559 rules!3103))) e!372959)))

(declare-fun b!615175 () Bool)

(assert (=> b!615175 (= e!372959 (equivClasses!479 (toChars!2008 (transformation!1238 (h!11559 rules!3103))) (toValue!2149 (transformation!1238 (h!11559 rules!3103)))))))

(assert (= (and d!216361 res!267736) b!615175))

(declare-fun m!884087 () Bool)

(assert (=> d!216361 m!884087))

(declare-fun m!884089 () Bool)

(assert (=> b!615175 m!884089))

(assert (=> b!614978 d!216361))

(declare-fun b!615180 () Bool)

(declare-fun e!372962 () Bool)

(declare-fun tp!189977 () Bool)

(assert (=> b!615180 (= e!372962 (and tp_is_empty!3499 tp!189977))))

(assert (=> b!614983 (= tp!189933 e!372962)))

(assert (= (and b!614983 (is-Cons!6157 (t!81358 input!2705))) b!615180))

(declare-fun b!615192 () Bool)

(declare-fun e!372965 () Bool)

(declare-fun tp!189992 () Bool)

(declare-fun tp!189988 () Bool)

(assert (=> b!615192 (= e!372965 (and tp!189992 tp!189988))))

(declare-fun b!615193 () Bool)

(declare-fun tp!189991 () Bool)

(assert (=> b!615193 (= e!372965 tp!189991)))

(assert (=> b!614977 (= tp!189935 e!372965)))

(declare-fun b!615191 () Bool)

(assert (=> b!615191 (= e!372965 tp_is_empty!3499)))

(declare-fun b!615194 () Bool)

(declare-fun tp!189990 () Bool)

(declare-fun tp!189989 () Bool)

(assert (=> b!615194 (= e!372965 (and tp!189990 tp!189989))))

(assert (= (and b!614977 (is-ElementMatch!1572 (regex!1238 (rule!2032 token!491)))) b!615191))

(assert (= (and b!614977 (is-Concat!2834 (regex!1238 (rule!2032 token!491)))) b!615192))

(assert (= (and b!614977 (is-Star!1572 (regex!1238 (rule!2032 token!491)))) b!615193))

(assert (= (and b!614977 (is-Union!1572 (regex!1238 (rule!2032 token!491)))) b!615194))

(declare-fun b!615195 () Bool)

(declare-fun e!372966 () Bool)

(declare-fun tp!189993 () Bool)

(assert (=> b!615195 (= e!372966 (and tp_is_empty!3499 tp!189993))))

(assert (=> b!614987 (= tp!189930 e!372966)))

(assert (= (and b!614987 (is-Cons!6157 (originalCharacters!1277 token!491))) b!615195))

(declare-fun b!615216 () Bool)

(declare-fun b_free!17565 () Bool)

(declare-fun b_next!17581 () Bool)

(assert (=> b!615216 (= b_free!17565 (not b_next!17581))))

(declare-fun tp!190004 () Bool)

(declare-fun b_and!61027 () Bool)

(assert (=> b!615216 (= tp!190004 b_and!61027)))

(declare-fun b_free!17567 () Bool)

(declare-fun b_next!17583 () Bool)

(assert (=> b!615216 (= b_free!17567 (not b_next!17583))))

(declare-fun tb!53727 () Bool)

(declare-fun t!81372 () Bool)

(assert (=> (and b!615216 (= (toChars!2008 (transformation!1238 (h!11559 (t!81359 rules!3103)))) (toChars!2008 (transformation!1238 (rule!2032 token!491)))) t!81372) tb!53727))

(declare-fun result!60500 () Bool)

(assert (= result!60500 result!60482))

(assert (=> b!615097 t!81372))

(assert (=> d!216341 t!81372))

(declare-fun tp!190002 () Bool)

(declare-fun b_and!61029 () Bool)

(assert (=> b!615216 (= tp!190002 (and (=> t!81372 result!60500) b_and!61029))))

(declare-fun e!372981 () Bool)

(assert (=> b!615216 (= e!372981 (and tp!190004 tp!190002))))

(declare-fun b!615215 () Bool)

(declare-fun e!372982 () Bool)

(declare-fun tp!190003 () Bool)

(assert (=> b!615215 (= e!372982 (and tp!190003 (inv!7836 (tag!1500 (h!11559 (t!81359 rules!3103)))) (inv!7839 (transformation!1238 (h!11559 (t!81359 rules!3103)))) e!372981))))

(declare-fun b!615214 () Bool)

(declare-fun e!372984 () Bool)

(declare-fun tp!190005 () Bool)

(assert (=> b!615214 (= e!372984 (and e!372982 tp!190005))))

(assert (=> b!614974 (= tp!189938 e!372984)))

(assert (= b!615215 b!615216))

(assert (= b!615214 b!615215))

(assert (= (and b!614974 (is-Cons!6158 (t!81359 rules!3103))) b!615214))

(declare-fun m!884091 () Bool)

(assert (=> b!615215 m!884091))

(declare-fun m!884093 () Bool)

(assert (=> b!615215 m!884093))

(declare-fun b!615217 () Bool)

(declare-fun e!372985 () Bool)

(declare-fun tp!190006 () Bool)

(assert (=> b!615217 (= e!372985 (and tp_is_empty!3499 tp!190006))))

(assert (=> b!614979 (= tp!189929 e!372985)))

(assert (= (and b!614979 (is-Cons!6157 (t!81358 suffix!1342))) b!615217))

(declare-fun b!615219 () Bool)

(declare-fun e!372986 () Bool)

(declare-fun tp!190011 () Bool)

(declare-fun tp!190007 () Bool)

(assert (=> b!615219 (= e!372986 (and tp!190011 tp!190007))))

(declare-fun b!615220 () Bool)

(declare-fun tp!190010 () Bool)

(assert (=> b!615220 (= e!372986 tp!190010)))

(assert (=> b!614978 (= tp!189931 e!372986)))

(declare-fun b!615218 () Bool)

(assert (=> b!615218 (= e!372986 tp_is_empty!3499)))

(declare-fun b!615221 () Bool)

(declare-fun tp!190009 () Bool)

(declare-fun tp!190008 () Bool)

(assert (=> b!615221 (= e!372986 (and tp!190009 tp!190008))))

(assert (= (and b!614978 (is-ElementMatch!1572 (regex!1238 (h!11559 rules!3103)))) b!615218))

(assert (= (and b!614978 (is-Concat!2834 (regex!1238 (h!11559 rules!3103)))) b!615219))

(assert (= (and b!614978 (is-Star!1572 (regex!1238 (h!11559 rules!3103)))) b!615220))

(assert (= (and b!614978 (is-Union!1572 (regex!1238 (h!11559 rules!3103)))) b!615221))

(declare-fun b_lambda!24459 () Bool)

(assert (= b_lambda!24453 (or (and b!614985 b_free!17551) (and b!614982 b_free!17555 (= (toChars!2008 (transformation!1238 (h!11559 rules!3103))) (toChars!2008 (transformation!1238 (rule!2032 token!491))))) (and b!615216 b_free!17567 (= (toChars!2008 (transformation!1238 (h!11559 (t!81359 rules!3103)))) (toChars!2008 (transformation!1238 (rule!2032 token!491))))) b_lambda!24459)))

(declare-fun b_lambda!24461 () Bool)

(assert (= b_lambda!24457 (or (and b!614985 b_free!17551) (and b!614982 b_free!17555 (= (toChars!2008 (transformation!1238 (h!11559 rules!3103))) (toChars!2008 (transformation!1238 (rule!2032 token!491))))) (and b!615216 b_free!17567 (= (toChars!2008 (transformation!1238 (h!11559 (t!81359 rules!3103)))) (toChars!2008 (transformation!1238 (rule!2032 token!491))))) b_lambda!24461)))

(push 1)

(assert (not b_next!17565))

(assert (not b!615129))

(assert b_and!61029)

(assert (not bm!41015))

(assert (not b_next!17569))

(assert (not b!615140))

(assert (not b!615142))

(assert (not d!216343))

(assert (not b!615075))

(assert (not b!615073))

(assert (not b!615098))

(assert b_and!61019)

(assert (not b!615103))

(assert (not b!615133))

(assert (not b!615080))

(assert (not b!615215))

(assert b_and!61021)

(assert (not b_lambda!24461))

(assert (not b!615143))

(assert (not b!615130))

(assert (not d!216339))

(assert (not b!615141))

(assert (not bm!41013))

(assert (not b_next!17583))

(assert (not d!216345))

(assert (not b!615192))

(assert b_and!61027)

(assert (not b!615180))

(assert (not b!615144))

(assert b_and!61003)

(assert (not b!615097))

(assert (not b!615217))

(assert (not b!615076))

(assert (not b_next!17571))

(assert (not b!615195))

(assert (not d!216361))

(assert (not b!615077))

(assert (not b!615220))

(assert (not b!615194))

(assert (not b!615174))

(assert (not d!216349))

(assert (not d!216311))

(assert (not b!615214))

(assert (not d!216321))

(assert (not tb!53719))

(assert (not b!615138))

(assert (not b!615172))

(assert (not b_next!17581))

(assert (not b!615118))

(assert (not b!615157))

(assert (not d!216319))

(assert tp_is_empty!3499)

(assert (not b!615146))

(assert (not b!615173))

(assert (not b!615158))

(assert (not b!615092))

(assert (not b_next!17567))

(assert (not b!615193))

(assert (not d!216327))

(assert (not b!615072))

(assert (not b!615219))

(assert (not b!615221))

(assert (not b!615139))

(assert (not d!216341))

(assert (not b!615078))

(assert (not b!615175))

(assert (not b_lambda!24459))

(assert (not b!615074))

(assert b_and!60999)

(check-sat)

(pop 1)

(push 1)

(assert b_and!61019)

(assert b_and!61021)

(assert (not b_next!17583))

(assert (not b_next!17571))

(assert (not b_next!17565))

(assert b_and!61029)

(assert (not b_next!17581))

(assert (not b_next!17569))

(assert (not b_next!17567))

(assert b_and!60999)

(assert b_and!61027)

(assert b_and!61003)

(check-sat)

(pop 1)

