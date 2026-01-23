; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!54394 () Bool)

(assert start!54394)

(declare-fun b!585272 () Bool)

(declare-fun b_free!16325 () Bool)

(declare-fun b_next!16341 () Bool)

(assert (=> b!585272 (= b_free!16325 (not b_next!16341))))

(declare-fun tp!182612 () Bool)

(declare-fun b_and!57651 () Bool)

(assert (=> b!585272 (= tp!182612 b_and!57651)))

(declare-fun b_free!16327 () Bool)

(declare-fun b_next!16343 () Bool)

(assert (=> b!585272 (= b_free!16327 (not b_next!16343))))

(declare-fun tp!182610 () Bool)

(declare-fun b_and!57653 () Bool)

(assert (=> b!585272 (= tp!182610 b_and!57653)))

(declare-fun b!585268 () Bool)

(declare-fun b_free!16329 () Bool)

(declare-fun b_next!16345 () Bool)

(assert (=> b!585268 (= b_free!16329 (not b_next!16345))))

(declare-fun tp!182611 () Bool)

(declare-fun b_and!57655 () Bool)

(assert (=> b!585268 (= tp!182611 b_and!57655)))

(declare-fun b_free!16331 () Bool)

(declare-fun b_next!16347 () Bool)

(assert (=> b!585268 (= b_free!16331 (not b_next!16347))))

(declare-fun tp!182605 () Bool)

(declare-fun b_and!57657 () Bool)

(assert (=> b!585268 (= tp!182605 b_and!57657)))

(declare-fun b!585256 () Bool)

(declare-fun e!353768 () Bool)

(declare-fun e!353760 () Bool)

(assert (=> b!585256 (= e!353768 e!353760)))

(declare-fun res!252101 () Bool)

(assert (=> b!585256 (=> (not res!252101) (not e!353760))))

(declare-datatypes ((C!3838 0))(
  ( (C!3839 (val!2145 Int)) )
))
(declare-datatypes ((Regex!1458 0))(
  ( (ElementMatch!1458 (c!109427 C!3838)) (Concat!2606 (regOne!3428 Regex!1458) (regTwo!3428 Regex!1458)) (EmptyExpr!1458) (Star!1458 (reg!1787 Regex!1458)) (EmptyLang!1458) (Union!1458 (regOne!3429 Regex!1458) (regTwo!3429 Regex!1458)) )
))
(declare-datatypes ((List!5765 0))(
  ( (Nil!5755) (Cons!5755 (h!11156 (_ BitVec 16)) (t!78474 List!5765)) )
))
(declare-datatypes ((List!5766 0))(
  ( (Nil!5756) (Cons!5756 (h!11157 C!3838) (t!78475 List!5766)) )
))
(declare-datatypes ((IArray!3683 0))(
  ( (IArray!3684 (innerList!1899 List!5766)) )
))
(declare-datatypes ((Conc!1841 0))(
  ( (Node!1841 (left!4692 Conc!1841) (right!5022 Conc!1841) (csize!3912 Int) (cheight!2052 Int)) (Leaf!2911 (xs!4478 IArray!3683) (csize!3913 Int)) (Empty!1841) )
))
(declare-datatypes ((BalanceConc!3690 0))(
  ( (BalanceConc!3691 (c!109428 Conc!1841)) )
))
(declare-datatypes ((TokenValue!1148 0))(
  ( (FloatLiteralValue!2296 (text!8481 List!5765)) (TokenValueExt!1147 (__x!4194 Int)) (Broken!5740 (value!36876 List!5765)) (Object!1157) (End!1148) (Def!1148) (Underscore!1148) (Match!1148) (Else!1148) (Error!1148) (Case!1148) (If!1148) (Extends!1148) (Abstract!1148) (Class!1148) (Val!1148) (DelimiterValue!2296 (del!1208 List!5765)) (KeywordValue!1154 (value!36877 List!5765)) (CommentValue!2296 (value!36878 List!5765)) (WhitespaceValue!2296 (value!36879 List!5765)) (IndentationValue!1148 (value!36880 List!5765)) (String!7485) (Int32!1148) (Broken!5741 (value!36881 List!5765)) (Boolean!1149) (Unit!10453) (OperatorValue!1151 (op!1208 List!5765)) (IdentifierValue!2296 (value!36882 List!5765)) (IdentifierValue!2297 (value!36883 List!5765)) (WhitespaceValue!2297 (value!36884 List!5765)) (True!2296) (False!2296) (Broken!5742 (value!36885 List!5765)) (Broken!5743 (value!36886 List!5765)) (True!2297) (RightBrace!1148) (RightBracket!1148) (Colon!1148) (Null!1148) (Comma!1148) (LeftBracket!1148) (False!2297) (LeftBrace!1148) (ImaginaryLiteralValue!1148 (text!8482 List!5765)) (StringLiteralValue!3444 (value!36887 List!5765)) (EOFValue!1148 (value!36888 List!5765)) (IdentValue!1148 (value!36889 List!5765)) (DelimiterValue!2297 (value!36890 List!5765)) (DedentValue!1148 (value!36891 List!5765)) (NewLineValue!1148 (value!36892 List!5765)) (IntegerValue!3444 (value!36893 (_ BitVec 32)) (text!8483 List!5765)) (IntegerValue!3445 (value!36894 Int) (text!8484 List!5765)) (Times!1148) (Or!1148) (Equal!1148) (Minus!1148) (Broken!5744 (value!36895 List!5765)) (And!1148) (Div!1148) (LessEqual!1148) (Mod!1148) (Concat!2607) (Not!1148) (Plus!1148) (SpaceValue!1148 (value!36896 List!5765)) (IntegerValue!3446 (value!36897 Int) (text!8485 List!5765)) (StringLiteralValue!3445 (text!8486 List!5765)) (FloatLiteralValue!2297 (text!8487 List!5765)) (BytesLiteralValue!1148 (value!36898 List!5765)) (CommentValue!2297 (value!36899 List!5765)) (StringLiteralValue!3446 (value!36900 List!5765)) (ErrorTokenValue!1148 (msg!1209 List!5765)) )
))
(declare-datatypes ((String!7486 0))(
  ( (String!7487 (value!36901 String)) )
))
(declare-datatypes ((TokenValueInjection!2064 0))(
  ( (TokenValueInjection!2065 (toValue!1999 Int) (toChars!1858 Int)) )
))
(declare-datatypes ((Rule!2048 0))(
  ( (Rule!2049 (regex!1124 Regex!1458) (tag!1386 String!7486) (isSeparator!1124 Bool) (transformation!1124 TokenValueInjection!2064)) )
))
(declare-datatypes ((Token!1984 0))(
  ( (Token!1985 (value!36902 TokenValue!1148) (rule!1886 Rule!2048) (size!4574 Int) (originalCharacters!1163 List!5766)) )
))
(declare-datatypes ((tuple2!6726 0))(
  ( (tuple2!6727 (_1!3627 Token!1984) (_2!3627 List!5766)) )
))
(declare-datatypes ((Option!1475 0))(
  ( (None!1474) (Some!1474 (v!16347 tuple2!6726)) )
))
(declare-fun lt!248149 () Option!1475)

(declare-fun isDefined!1286 (Option!1475) Bool)

(assert (=> b!585256 (= res!252101 (isDefined!1286 lt!248149))))

(declare-datatypes ((List!5767 0))(
  ( (Nil!5757) (Cons!5757 (h!11158 Rule!2048) (t!78476 List!5767)) )
))
(declare-fun rules!3103 () List!5767)

(declare-fun lt!248154 () List!5766)

(declare-datatypes ((LexerInterface!1010 0))(
  ( (LexerInterfaceExt!1007 (__x!4195 Int)) (Lexer!1008) )
))
(declare-fun thiss!22590 () LexerInterface!1010)

(declare-fun maxPrefix!708 (LexerInterface!1010 List!5767 List!5766) Option!1475)

(assert (=> b!585256 (= lt!248149 (maxPrefix!708 thiss!22590 rules!3103 lt!248154))))

(declare-fun input!2705 () List!5766)

(declare-fun suffix!1342 () List!5766)

(declare-fun ++!1612 (List!5766 List!5766) List!5766)

(assert (=> b!585256 (= lt!248154 (++!1612 input!2705 suffix!1342))))

(declare-fun b!585257 () Bool)

(declare-fun res!252102 () Bool)

(declare-fun e!353770 () Bool)

(assert (=> b!585257 (=> (not res!252102) (not e!353770))))

(declare-fun isEmpty!4155 (List!5766) Bool)

(assert (=> b!585257 (= res!252102 (not (isEmpty!4155 input!2705)))))

(declare-fun tp!182608 () Bool)

(declare-fun e!353762 () Bool)

(declare-fun b!585258 () Bool)

(declare-fun e!353766 () Bool)

(declare-fun token!491 () Token!1984)

(declare-fun inv!21 (TokenValue!1148) Bool)

(assert (=> b!585258 (= e!353762 (and (inv!21 (value!36902 token!491)) e!353766 tp!182608))))

(declare-fun tp!182613 () Bool)

(declare-fun e!353767 () Bool)

(declare-fun e!353772 () Bool)

(declare-fun b!585259 () Bool)

(declare-fun inv!7264 (String!7486) Bool)

(declare-fun inv!7267 (TokenValueInjection!2064) Bool)

(assert (=> b!585259 (= e!353767 (and tp!182613 (inv!7264 (tag!1386 (h!11158 rules!3103))) (inv!7267 (transformation!1124 (h!11158 rules!3103))) e!353772))))

(declare-fun b!585260 () Bool)

(declare-fun e!353765 () Bool)

(declare-fun e!353764 () Bool)

(assert (=> b!585260 (= e!353765 (not e!353764))))

(declare-fun res!252108 () Bool)

(assert (=> b!585260 (=> res!252108 e!353764)))

(declare-fun lt!248155 () List!5766)

(declare-fun isPrefix!752 (List!5766 List!5766) Bool)

(assert (=> b!585260 (= res!252108 (not (isPrefix!752 lt!248155 input!2705)))))

(declare-fun lt!248148 () List!5766)

(declare-fun getSuffix!269 (List!5766 List!5766) List!5766)

(assert (=> b!585260 (= lt!248148 (getSuffix!269 input!2705 lt!248155))))

(declare-fun lt!248146 () List!5766)

(assert (=> b!585260 (isPrefix!752 lt!248155 lt!248146)))

(declare-fun lt!248157 () Option!1475)

(assert (=> b!585260 (= lt!248146 (++!1612 lt!248155 (_2!3627 (v!16347 lt!248157))))))

(declare-datatypes ((Unit!10454 0))(
  ( (Unit!10455) )
))
(declare-fun lt!248151 () Unit!10454)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!597 (List!5766 List!5766) Unit!10454)

(assert (=> b!585260 (= lt!248151 (lemmaConcatTwoListThenFirstIsPrefix!597 lt!248155 (_2!3627 (v!16347 lt!248157))))))

(declare-fun lt!248156 () Unit!10454)

(declare-fun lemmaCharactersSize!183 (Token!1984) Unit!10454)

(assert (=> b!585260 (= lt!248156 (lemmaCharactersSize!183 token!491))))

(declare-fun lt!248150 () Unit!10454)

(assert (=> b!585260 (= lt!248150 (lemmaCharactersSize!183 (_1!3627 (v!16347 lt!248157))))))

(declare-fun lt!248145 () Unit!10454)

(declare-fun e!353775 () Unit!10454)

(assert (=> b!585260 (= lt!248145 e!353775)))

(declare-fun c!109426 () Bool)

(declare-fun lt!248153 () List!5766)

(declare-fun size!4575 (List!5766) Int)

(assert (=> b!585260 (= c!109426 (> (size!4575 lt!248155) (size!4575 lt!248153)))))

(declare-fun list!2399 (BalanceConc!3690) List!5766)

(declare-fun charsOf!753 (Token!1984) BalanceConc!3690)

(assert (=> b!585260 (= lt!248155 (list!2399 (charsOf!753 (_1!3627 (v!16347 lt!248157)))))))

(assert (=> b!585260 (= lt!248157 (Some!1474 (v!16347 lt!248157)))))

(declare-fun lt!248152 () Unit!10454)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!197 (List!5766 List!5766 List!5766 List!5766) Unit!10454)

(assert (=> b!585260 (= lt!248152 (lemmaConcatSameAndSameSizesThenSameLists!197 lt!248153 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!585261 () Bool)

(declare-fun res!252109 () Bool)

(assert (=> b!585261 (=> (not res!252109) (not e!353770))))

(declare-fun rulesInvariant!973 (LexerInterface!1010 List!5767) Bool)

(assert (=> b!585261 (= res!252109 (rulesInvariant!973 thiss!22590 rules!3103))))

(declare-fun b!585262 () Bool)

(declare-fun e!353763 () Bool)

(declare-fun tp!182606 () Bool)

(assert (=> b!585262 (= e!353763 (and e!353767 tp!182606))))

(declare-fun res!252107 () Bool)

(assert (=> start!54394 (=> (not res!252107) (not e!353770))))

(assert (=> start!54394 (= res!252107 (is-Lexer!1008 thiss!22590))))

(assert (=> start!54394 e!353770))

(declare-fun e!353759 () Bool)

(assert (=> start!54394 e!353759))

(assert (=> start!54394 e!353763))

(declare-fun inv!7268 (Token!1984) Bool)

(assert (=> start!54394 (and (inv!7268 token!491) e!353762)))

(assert (=> start!54394 true))

(declare-fun e!353758 () Bool)

(assert (=> start!54394 e!353758))

(declare-fun b!585263 () Bool)

(declare-fun res!252110 () Bool)

(assert (=> b!585263 (=> (not res!252110) (not e!353770))))

(declare-fun isEmpty!4156 (List!5767) Bool)

(assert (=> b!585263 (= res!252110 (not (isEmpty!4156 rules!3103)))))

(declare-fun b!585264 () Bool)

(declare-fun e!353769 () Bool)

(assert (=> b!585264 (= e!353760 e!353769)))

(declare-fun res!252105 () Bool)

(assert (=> b!585264 (=> (not res!252105) (not e!353769))))

(declare-fun lt!248147 () tuple2!6726)

(assert (=> b!585264 (= res!252105 (and (= (_1!3627 lt!248147) token!491) (= (_2!3627 lt!248147) suffix!1342)))))

(declare-fun get!2201 (Option!1475) tuple2!6726)

(assert (=> b!585264 (= lt!248147 (get!2201 lt!248149))))

(declare-fun b!585265 () Bool)

(declare-fun res!252103 () Bool)

(assert (=> b!585265 (=> (not res!252103) (not e!353765))))

(assert (=> b!585265 (= res!252103 (= (++!1612 lt!248153 suffix!1342) lt!248154))))

(declare-fun b!585266 () Bool)

(assert (=> b!585266 (= e!353770 e!353768)))

(declare-fun res!252104 () Bool)

(assert (=> b!585266 (=> (not res!252104) (not e!353768))))

(assert (=> b!585266 (= res!252104 (= lt!248153 input!2705))))

(assert (=> b!585266 (= lt!248153 (list!2399 (charsOf!753 token!491)))))

(declare-fun e!353774 () Bool)

(declare-fun b!585267 () Bool)

(declare-fun tp!182607 () Bool)

(assert (=> b!585267 (= e!353766 (and tp!182607 (inv!7264 (tag!1386 (rule!1886 token!491))) (inv!7267 (transformation!1124 (rule!1886 token!491))) e!353774))))

(assert (=> b!585268 (= e!353774 (and tp!182611 tp!182605))))

(declare-fun b!585269 () Bool)

(declare-fun tp_is_empty!3271 () Bool)

(declare-fun tp!182614 () Bool)

(assert (=> b!585269 (= e!353758 (and tp_is_empty!3271 tp!182614))))

(declare-fun b!585270 () Bool)

(declare-fun Unit!10456 () Unit!10454)

(assert (=> b!585270 (= e!353775 Unit!10456)))

(declare-fun b!585271 () Bool)

(assert (=> b!585271 (= e!353769 e!353765)))

(declare-fun res!252106 () Bool)

(assert (=> b!585271 (=> (not res!252106) (not e!353765))))

(assert (=> b!585271 (= res!252106 (is-Some!1474 lt!248157))))

(assert (=> b!585271 (= lt!248157 (maxPrefix!708 thiss!22590 rules!3103 input!2705))))

(assert (=> b!585272 (= e!353772 (and tp!182612 tp!182610))))

(declare-fun b!585273 () Bool)

(declare-fun Unit!10457 () Unit!10454)

(assert (=> b!585273 (= e!353775 Unit!10457)))

(assert (=> b!585273 false))

(declare-fun b!585274 () Bool)

(assert (=> b!585274 (= e!353764 (= lt!248146 input!2705))))

(declare-fun b!585275 () Bool)

(declare-fun tp!182609 () Bool)

(assert (=> b!585275 (= e!353759 (and tp_is_empty!3271 tp!182609))))

(assert (= (and start!54394 res!252107) b!585263))

(assert (= (and b!585263 res!252110) b!585261))

(assert (= (and b!585261 res!252109) b!585257))

(assert (= (and b!585257 res!252102) b!585266))

(assert (= (and b!585266 res!252104) b!585256))

(assert (= (and b!585256 res!252101) b!585264))

(assert (= (and b!585264 res!252105) b!585271))

(assert (= (and b!585271 res!252106) b!585265))

(assert (= (and b!585265 res!252103) b!585260))

(assert (= (and b!585260 c!109426) b!585273))

(assert (= (and b!585260 (not c!109426)) b!585270))

(assert (= (and b!585260 (not res!252108)) b!585274))

(assert (= (and start!54394 (is-Cons!5756 suffix!1342)) b!585275))

(assert (= b!585259 b!585272))

(assert (= b!585262 b!585259))

(assert (= (and start!54394 (is-Cons!5757 rules!3103)) b!585262))

(assert (= b!585267 b!585268))

(assert (= b!585258 b!585267))

(assert (= start!54394 b!585258))

(assert (= (and start!54394 (is-Cons!5756 input!2705)) b!585269))

(declare-fun m!845153 () Bool)

(assert (=> b!585260 m!845153))

(declare-fun m!845155 () Bool)

(assert (=> b!585260 m!845155))

(declare-fun m!845157 () Bool)

(assert (=> b!585260 m!845157))

(assert (=> b!585260 m!845157))

(declare-fun m!845159 () Bool)

(assert (=> b!585260 m!845159))

(declare-fun m!845161 () Bool)

(assert (=> b!585260 m!845161))

(declare-fun m!845163 () Bool)

(assert (=> b!585260 m!845163))

(declare-fun m!845165 () Bool)

(assert (=> b!585260 m!845165))

(declare-fun m!845167 () Bool)

(assert (=> b!585260 m!845167))

(declare-fun m!845169 () Bool)

(assert (=> b!585260 m!845169))

(declare-fun m!845171 () Bool)

(assert (=> b!585260 m!845171))

(declare-fun m!845173 () Bool)

(assert (=> b!585260 m!845173))

(declare-fun m!845175 () Bool)

(assert (=> b!585260 m!845175))

(declare-fun m!845177 () Bool)

(assert (=> b!585265 m!845177))

(declare-fun m!845179 () Bool)

(assert (=> b!585264 m!845179))

(declare-fun m!845181 () Bool)

(assert (=> b!585267 m!845181))

(declare-fun m!845183 () Bool)

(assert (=> b!585267 m!845183))

(declare-fun m!845185 () Bool)

(assert (=> b!585266 m!845185))

(assert (=> b!585266 m!845185))

(declare-fun m!845187 () Bool)

(assert (=> b!585266 m!845187))

(declare-fun m!845189 () Bool)

(assert (=> b!585258 m!845189))

(declare-fun m!845191 () Bool)

(assert (=> start!54394 m!845191))

(declare-fun m!845193 () Bool)

(assert (=> b!585259 m!845193))

(declare-fun m!845195 () Bool)

(assert (=> b!585259 m!845195))

(declare-fun m!845197 () Bool)

(assert (=> b!585271 m!845197))

(declare-fun m!845199 () Bool)

(assert (=> b!585256 m!845199))

(declare-fun m!845201 () Bool)

(assert (=> b!585256 m!845201))

(declare-fun m!845203 () Bool)

(assert (=> b!585256 m!845203))

(declare-fun m!845205 () Bool)

(assert (=> b!585261 m!845205))

(declare-fun m!845207 () Bool)

(assert (=> b!585257 m!845207))

(declare-fun m!845209 () Bool)

(assert (=> b!585263 m!845209))

(push 1)

(assert (not b!585269))

(assert (not b_next!16343))

(assert (not b!585265))

(assert b_and!57653)

(assert (not b!585261))

(assert (not b!585275))

(assert (not start!54394))

(assert (not b!585257))

(assert (not b!585266))

(assert (not b!585267))

(assert (not b!585263))

(assert b_and!57651)

(assert b_and!57655)

(assert (not b!585259))

(assert (not b!585262))

(assert (not b!585258))

(assert (not b!585260))

(assert (not b_next!16341))

(assert b_and!57657)

(assert (not b!585264))

(assert tp_is_empty!3271)

(assert (not b_next!16347))

(assert (not b!585256))

(assert (not b_next!16345))

(assert (not b!585271))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!16343))

(assert b_and!57653)

(assert b_and!57651)

(assert (not b_next!16347))

(assert (not b_next!16345))

(assert b_and!57655)

(assert (not b_next!16341))

(assert b_and!57657)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!585353 () Bool)

(declare-fun res!252157 () Bool)

(declare-fun e!353843 () Bool)

(assert (=> b!585353 (=> res!252157 e!353843)))

(assert (=> b!585353 (= res!252157 (not (is-IntegerValue!3446 (value!36902 token!491))))))

(declare-fun e!353841 () Bool)

(assert (=> b!585353 (= e!353841 e!353843)))

(declare-fun b!585354 () Bool)

(declare-fun inv!15 (TokenValue!1148) Bool)

(assert (=> b!585354 (= e!353843 (inv!15 (value!36902 token!491)))))

(declare-fun b!585356 () Bool)

(declare-fun e!353842 () Bool)

(assert (=> b!585356 (= e!353842 e!353841)))

(declare-fun c!109440 () Bool)

(assert (=> b!585356 (= c!109440 (is-IntegerValue!3445 (value!36902 token!491)))))

(declare-fun b!585357 () Bool)

(declare-fun inv!17 (TokenValue!1148) Bool)

(assert (=> b!585357 (= e!353841 (inv!17 (value!36902 token!491)))))

(declare-fun d!205814 () Bool)

(declare-fun c!109439 () Bool)

(assert (=> d!205814 (= c!109439 (is-IntegerValue!3444 (value!36902 token!491)))))

(assert (=> d!205814 (= (inv!21 (value!36902 token!491)) e!353842)))

(declare-fun b!585355 () Bool)

(declare-fun inv!16 (TokenValue!1148) Bool)

(assert (=> b!585355 (= e!353842 (inv!16 (value!36902 token!491)))))

(assert (= (and d!205814 c!109439) b!585355))

(assert (= (and d!205814 (not c!109439)) b!585356))

(assert (= (and b!585356 c!109440) b!585357))

(assert (= (and b!585356 (not c!109440)) b!585353))

(assert (= (and b!585353 (not res!252157)) b!585354))

(declare-fun m!845273 () Bool)

(assert (=> b!585354 m!845273))

(declare-fun m!845275 () Bool)

(assert (=> b!585357 m!845275))

(declare-fun m!845277 () Bool)

(assert (=> b!585355 m!845277))

(assert (=> b!585258 d!205814))

(declare-fun d!205818 () Bool)

(declare-fun res!252164 () Bool)

(declare-fun e!353850 () Bool)

(assert (=> d!205818 (=> (not res!252164) (not e!353850))))

(assert (=> d!205818 (= res!252164 (not (isEmpty!4155 (originalCharacters!1163 token!491))))))

(assert (=> d!205818 (= (inv!7268 token!491) e!353850)))

(declare-fun b!585369 () Bool)

(declare-fun res!252165 () Bool)

(assert (=> b!585369 (=> (not res!252165) (not e!353850))))

(declare-fun dynLambda!3357 (Int TokenValue!1148) BalanceConc!3690)

(assert (=> b!585369 (= res!252165 (= (originalCharacters!1163 token!491) (list!2399 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491)))))))

(declare-fun b!585370 () Bool)

(assert (=> b!585370 (= e!353850 (= (size!4574 token!491) (size!4575 (originalCharacters!1163 token!491))))))

(assert (= (and d!205818 res!252164) b!585369))

(assert (= (and b!585369 res!252165) b!585370))

(declare-fun b_lambda!23059 () Bool)

(assert (=> (not b_lambda!23059) (not b!585369)))

(declare-fun tb!51259 () Bool)

(declare-fun t!78485 () Bool)

(assert (=> (and b!585272 (= (toChars!1858 (transformation!1124 (h!11158 rules!3103))) (toChars!1858 (transformation!1124 (rule!1886 token!491)))) t!78485) tb!51259))

(declare-fun b!585375 () Bool)

(declare-fun e!353853 () Bool)

(declare-fun tp!182650 () Bool)

(declare-fun inv!7271 (Conc!1841) Bool)

(assert (=> b!585375 (= e!353853 (and (inv!7271 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491)))) tp!182650))))

(declare-fun result!57404 () Bool)

(declare-fun inv!7272 (BalanceConc!3690) Bool)

(assert (=> tb!51259 (= result!57404 (and (inv!7272 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491))) e!353853))))

(assert (= tb!51259 b!585375))

(declare-fun m!845291 () Bool)

(assert (=> b!585375 m!845291))

(declare-fun m!845293 () Bool)

(assert (=> tb!51259 m!845293))

(assert (=> b!585369 t!78485))

(declare-fun b_and!57671 () Bool)

(assert (= b_and!57653 (and (=> t!78485 result!57404) b_and!57671)))

(declare-fun t!78487 () Bool)

(declare-fun tb!51261 () Bool)

(assert (=> (and b!585268 (= (toChars!1858 (transformation!1124 (rule!1886 token!491))) (toChars!1858 (transformation!1124 (rule!1886 token!491)))) t!78487) tb!51261))

(declare-fun result!57408 () Bool)

(assert (= result!57408 result!57404))

(assert (=> b!585369 t!78487))

(declare-fun b_and!57673 () Bool)

(assert (= b_and!57657 (and (=> t!78487 result!57408) b_and!57673)))

(declare-fun m!845295 () Bool)

(assert (=> d!205818 m!845295))

(declare-fun m!845297 () Bool)

(assert (=> b!585369 m!845297))

(assert (=> b!585369 m!845297))

(declare-fun m!845299 () Bool)

(assert (=> b!585369 m!845299))

(declare-fun m!845301 () Bool)

(assert (=> b!585370 m!845301))

(assert (=> start!54394 d!205818))

(declare-fun d!205822 () Bool)

(assert (=> d!205822 (= (inv!7264 (tag!1386 (h!11158 rules!3103))) (= (mod (str.len (value!36901 (tag!1386 (h!11158 rules!3103)))) 2) 0))))

(assert (=> b!585259 d!205822))

(declare-fun d!205824 () Bool)

(declare-fun res!252174 () Bool)

(declare-fun e!353862 () Bool)

(assert (=> d!205824 (=> (not res!252174) (not e!353862))))

(declare-fun semiInverseModEq!436 (Int Int) Bool)

(assert (=> d!205824 (= res!252174 (semiInverseModEq!436 (toChars!1858 (transformation!1124 (h!11158 rules!3103))) (toValue!1999 (transformation!1124 (h!11158 rules!3103)))))))

(assert (=> d!205824 (= (inv!7267 (transformation!1124 (h!11158 rules!3103))) e!353862)))

(declare-fun b!585390 () Bool)

(declare-fun equivClasses!419 (Int Int) Bool)

(assert (=> b!585390 (= e!353862 (equivClasses!419 (toChars!1858 (transformation!1124 (h!11158 rules!3103))) (toValue!1999 (transformation!1124 (h!11158 rules!3103)))))))

(assert (= (and d!205824 res!252174) b!585390))

(declare-fun m!845315 () Bool)

(assert (=> d!205824 m!845315))

(declare-fun m!845317 () Bool)

(assert (=> b!585390 m!845317))

(assert (=> b!585259 d!205824))

(declare-fun d!205830 () Bool)

(declare-fun list!2401 (Conc!1841) List!5766)

(assert (=> d!205830 (= (list!2399 (charsOf!753 token!491)) (list!2401 (c!109428 (charsOf!753 token!491))))))

(declare-fun bs!70008 () Bool)

(assert (= bs!70008 d!205830))

(declare-fun m!845319 () Bool)

(assert (=> bs!70008 m!845319))

(assert (=> b!585266 d!205830))

(declare-fun d!205832 () Bool)

(declare-fun lt!248202 () BalanceConc!3690)

(assert (=> d!205832 (= (list!2399 lt!248202) (originalCharacters!1163 token!491))))

(assert (=> d!205832 (= lt!248202 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491)))))

(assert (=> d!205832 (= (charsOf!753 token!491) lt!248202)))

(declare-fun b_lambda!23061 () Bool)

(assert (=> (not b_lambda!23061) (not d!205832)))

(assert (=> d!205832 t!78485))

(declare-fun b_and!57675 () Bool)

(assert (= b_and!57671 (and (=> t!78485 result!57404) b_and!57675)))

(assert (=> d!205832 t!78487))

(declare-fun b_and!57677 () Bool)

(assert (= b_and!57673 (and (=> t!78487 result!57408) b_and!57677)))

(declare-fun m!845327 () Bool)

(assert (=> d!205832 m!845327))

(assert (=> d!205832 m!845297))

(assert (=> b!585266 d!205832))

(declare-fun d!205838 () Bool)

(assert (=> d!205838 (= (isEmpty!4155 input!2705) (is-Nil!5756 input!2705))))

(assert (=> b!585257 d!205838))

(declare-fun d!205842 () Bool)

(declare-fun isEmpty!4159 (Option!1475) Bool)

(assert (=> d!205842 (= (isDefined!1286 lt!248149) (not (isEmpty!4159 lt!248149)))))

(declare-fun bs!70010 () Bool)

(assert (= bs!70010 d!205842))

(declare-fun m!845335 () Bool)

(assert (=> bs!70010 m!845335))

(assert (=> b!585256 d!205842))

(declare-fun b!585425 () Bool)

(declare-fun res!252199 () Bool)

(declare-fun e!353880 () Bool)

(assert (=> b!585425 (=> (not res!252199) (not e!353880))))

(declare-fun lt!248214 () Option!1475)

(declare-fun apply!1381 (TokenValueInjection!2064 BalanceConc!3690) TokenValue!1148)

(declare-fun seqFromList!1304 (List!5766) BalanceConc!3690)

(assert (=> b!585425 (= res!252199 (= (value!36902 (_1!3627 (get!2201 lt!248214))) (apply!1381 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))) (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248214)))))))))

(declare-fun b!585426 () Bool)

(declare-fun e!353879 () Option!1475)

(declare-fun lt!248213 () Option!1475)

(declare-fun lt!248215 () Option!1475)

(assert (=> b!585426 (= e!353879 (ite (and (is-None!1474 lt!248213) (is-None!1474 lt!248215)) None!1474 (ite (is-None!1474 lt!248215) lt!248213 (ite (is-None!1474 lt!248213) lt!248215 (ite (>= (size!4574 (_1!3627 (v!16347 lt!248213))) (size!4574 (_1!3627 (v!16347 lt!248215)))) lt!248213 lt!248215)))))))

(declare-fun call!40200 () Option!1475)

(assert (=> b!585426 (= lt!248213 call!40200)))

(assert (=> b!585426 (= lt!248215 (maxPrefix!708 thiss!22590 (t!78476 rules!3103) lt!248154))))

(declare-fun d!205846 () Bool)

(declare-fun e!353881 () Bool)

(assert (=> d!205846 e!353881))

(declare-fun res!252198 () Bool)

(assert (=> d!205846 (=> res!252198 e!353881)))

(assert (=> d!205846 (= res!252198 (isEmpty!4159 lt!248214))))

(assert (=> d!205846 (= lt!248214 e!353879)))

(declare-fun c!109452 () Bool)

(assert (=> d!205846 (= c!109452 (and (is-Cons!5757 rules!3103) (is-Nil!5757 (t!78476 rules!3103))))))

(declare-fun lt!248216 () Unit!10454)

(declare-fun lt!248217 () Unit!10454)

(assert (=> d!205846 (= lt!248216 lt!248217)))

(assert (=> d!205846 (isPrefix!752 lt!248154 lt!248154)))

(declare-fun lemmaIsPrefixRefl!488 (List!5766 List!5766) Unit!10454)

(assert (=> d!205846 (= lt!248217 (lemmaIsPrefixRefl!488 lt!248154 lt!248154))))

(declare-fun rulesValidInductive!405 (LexerInterface!1010 List!5767) Bool)

(assert (=> d!205846 (rulesValidInductive!405 thiss!22590 rules!3103)))

(assert (=> d!205846 (= (maxPrefix!708 thiss!22590 rules!3103 lt!248154) lt!248214)))

(declare-fun b!585427 () Bool)

(declare-fun res!252194 () Bool)

(assert (=> b!585427 (=> (not res!252194) (not e!353880))))

(assert (=> b!585427 (= res!252194 (= (++!1612 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214)))) (_2!3627 (get!2201 lt!248214))) lt!248154))))

(declare-fun b!585428 () Bool)

(declare-fun res!252195 () Bool)

(assert (=> b!585428 (=> (not res!252195) (not e!353880))))

(declare-fun matchR!597 (Regex!1458 List!5766) Bool)

(assert (=> b!585428 (= res!252195 (matchR!597 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))) (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214))))))))

(declare-fun b!585429 () Bool)

(assert (=> b!585429 (= e!353881 e!353880)))

(declare-fun res!252196 () Bool)

(assert (=> b!585429 (=> (not res!252196) (not e!353880))))

(assert (=> b!585429 (= res!252196 (isDefined!1286 lt!248214))))

(declare-fun bm!40195 () Bool)

(declare-fun maxPrefixOneRule!401 (LexerInterface!1010 Rule!2048 List!5766) Option!1475)

(assert (=> bm!40195 (= call!40200 (maxPrefixOneRule!401 thiss!22590 (h!11158 rules!3103) lt!248154))))

(declare-fun b!585430 () Bool)

(declare-fun res!252193 () Bool)

(assert (=> b!585430 (=> (not res!252193) (not e!353880))))

(assert (=> b!585430 (= res!252193 (= (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214)))) (originalCharacters!1163 (_1!3627 (get!2201 lt!248214)))))))

(declare-fun b!585431 () Bool)

(assert (=> b!585431 (= e!353879 call!40200)))

(declare-fun b!585432 () Bool)

(declare-fun res!252197 () Bool)

(assert (=> b!585432 (=> (not res!252197) (not e!353880))))

(assert (=> b!585432 (= res!252197 (< (size!4575 (_2!3627 (get!2201 lt!248214))) (size!4575 lt!248154)))))

(declare-fun b!585433 () Bool)

(declare-fun contains!1354 (List!5767 Rule!2048) Bool)

(assert (=> b!585433 (= e!353880 (contains!1354 rules!3103 (rule!1886 (_1!3627 (get!2201 lt!248214)))))))

(assert (= (and d!205846 c!109452) b!585431))

(assert (= (and d!205846 (not c!109452)) b!585426))

(assert (= (or b!585431 b!585426) bm!40195))

(assert (= (and d!205846 (not res!252198)) b!585429))

(assert (= (and b!585429 res!252196) b!585430))

(assert (= (and b!585430 res!252193) b!585432))

(assert (= (and b!585432 res!252197) b!585427))

(assert (= (and b!585427 res!252194) b!585425))

(assert (= (and b!585425 res!252199) b!585428))

(assert (= (and b!585428 res!252195) b!585433))

(declare-fun m!845337 () Bool)

(assert (=> b!585433 m!845337))

(declare-fun m!845339 () Bool)

(assert (=> b!585433 m!845339))

(assert (=> b!585428 m!845337))

(declare-fun m!845341 () Bool)

(assert (=> b!585428 m!845341))

(assert (=> b!585428 m!845341))

(declare-fun m!845343 () Bool)

(assert (=> b!585428 m!845343))

(assert (=> b!585428 m!845343))

(declare-fun m!845345 () Bool)

(assert (=> b!585428 m!845345))

(declare-fun m!845347 () Bool)

(assert (=> b!585426 m!845347))

(assert (=> b!585432 m!845337))

(declare-fun m!845349 () Bool)

(assert (=> b!585432 m!845349))

(declare-fun m!845351 () Bool)

(assert (=> b!585432 m!845351))

(declare-fun m!845353 () Bool)

(assert (=> bm!40195 m!845353))

(declare-fun m!845355 () Bool)

(assert (=> b!585429 m!845355))

(assert (=> b!585430 m!845337))

(assert (=> b!585430 m!845341))

(assert (=> b!585430 m!845341))

(assert (=> b!585430 m!845343))

(declare-fun m!845357 () Bool)

(assert (=> d!205846 m!845357))

(declare-fun m!845359 () Bool)

(assert (=> d!205846 m!845359))

(declare-fun m!845361 () Bool)

(assert (=> d!205846 m!845361))

(declare-fun m!845363 () Bool)

(assert (=> d!205846 m!845363))

(assert (=> b!585427 m!845337))

(assert (=> b!585427 m!845341))

(assert (=> b!585427 m!845341))

(assert (=> b!585427 m!845343))

(assert (=> b!585427 m!845343))

(declare-fun m!845365 () Bool)

(assert (=> b!585427 m!845365))

(assert (=> b!585425 m!845337))

(declare-fun m!845367 () Bool)

(assert (=> b!585425 m!845367))

(assert (=> b!585425 m!845367))

(declare-fun m!845369 () Bool)

(assert (=> b!585425 m!845369))

(assert (=> b!585256 d!205846))

(declare-fun d!205848 () Bool)

(declare-fun e!353892 () Bool)

(assert (=> d!205848 e!353892))

(declare-fun res!252219 () Bool)

(assert (=> d!205848 (=> (not res!252219) (not e!353892))))

(declare-fun lt!248230 () List!5766)

(declare-fun content!1024 (List!5766) (Set C!3838))

(assert (=> d!205848 (= res!252219 (= (content!1024 lt!248230) (set.union (content!1024 input!2705) (content!1024 suffix!1342))))))

(declare-fun e!353893 () List!5766)

(assert (=> d!205848 (= lt!248230 e!353893)))

(declare-fun c!109457 () Bool)

(assert (=> d!205848 (= c!109457 (is-Nil!5756 input!2705))))

(assert (=> d!205848 (= (++!1612 input!2705 suffix!1342) lt!248230)))

(declare-fun b!585461 () Bool)

(assert (=> b!585461 (= e!353893 (Cons!5756 (h!11157 input!2705) (++!1612 (t!78475 input!2705) suffix!1342)))))

(declare-fun b!585463 () Bool)

(assert (=> b!585463 (= e!353892 (or (not (= suffix!1342 Nil!5756)) (= lt!248230 input!2705)))))

(declare-fun b!585462 () Bool)

(declare-fun res!252218 () Bool)

(assert (=> b!585462 (=> (not res!252218) (not e!353892))))

(assert (=> b!585462 (= res!252218 (= (size!4575 lt!248230) (+ (size!4575 input!2705) (size!4575 suffix!1342))))))

(declare-fun b!585460 () Bool)

(assert (=> b!585460 (= e!353893 suffix!1342)))

(assert (= (and d!205848 c!109457) b!585460))

(assert (= (and d!205848 (not c!109457)) b!585461))

(assert (= (and d!205848 res!252219) b!585462))

(assert (= (and b!585462 res!252218) b!585463))

(declare-fun m!845371 () Bool)

(assert (=> d!205848 m!845371))

(declare-fun m!845373 () Bool)

(assert (=> d!205848 m!845373))

(declare-fun m!845375 () Bool)

(assert (=> d!205848 m!845375))

(declare-fun m!845377 () Bool)

(assert (=> b!585461 m!845377))

(declare-fun m!845379 () Bool)

(assert (=> b!585462 m!845379))

(declare-fun m!845381 () Bool)

(assert (=> b!585462 m!845381))

(declare-fun m!845383 () Bool)

(assert (=> b!585462 m!845383))

(assert (=> b!585256 d!205848))

(declare-fun d!205850 () Bool)

(assert (=> d!205850 (= (inv!7264 (tag!1386 (rule!1886 token!491))) (= (mod (str.len (value!36901 (tag!1386 (rule!1886 token!491)))) 2) 0))))

(assert (=> b!585267 d!205850))

(declare-fun d!205852 () Bool)

(declare-fun res!252220 () Bool)

(declare-fun e!353894 () Bool)

(assert (=> d!205852 (=> (not res!252220) (not e!353894))))

(assert (=> d!205852 (= res!252220 (semiInverseModEq!436 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (toValue!1999 (transformation!1124 (rule!1886 token!491)))))))

(assert (=> d!205852 (= (inv!7267 (transformation!1124 (rule!1886 token!491))) e!353894)))

(declare-fun b!585464 () Bool)

(assert (=> b!585464 (= e!353894 (equivClasses!419 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (toValue!1999 (transformation!1124 (rule!1886 token!491)))))))

(assert (= (and d!205852 res!252220) b!585464))

(declare-fun m!845385 () Bool)

(assert (=> d!205852 m!845385))

(declare-fun m!845387 () Bool)

(assert (=> b!585464 m!845387))

(assert (=> b!585267 d!205852))

(declare-fun d!205854 () Bool)

(assert (=> d!205854 (= (isEmpty!4156 rules!3103) (is-Nil!5757 rules!3103))))

(assert (=> b!585263 d!205854))

(declare-fun d!205856 () Bool)

(declare-fun e!353895 () Bool)

(assert (=> d!205856 e!353895))

(declare-fun res!252222 () Bool)

(assert (=> d!205856 (=> (not res!252222) (not e!353895))))

(declare-fun lt!248231 () List!5766)

(assert (=> d!205856 (= res!252222 (= (content!1024 lt!248231) (set.union (content!1024 lt!248153) (content!1024 suffix!1342))))))

(declare-fun e!353896 () List!5766)

(assert (=> d!205856 (= lt!248231 e!353896)))

(declare-fun c!109458 () Bool)

(assert (=> d!205856 (= c!109458 (is-Nil!5756 lt!248153))))

(assert (=> d!205856 (= (++!1612 lt!248153 suffix!1342) lt!248231)))

(declare-fun b!585466 () Bool)

(assert (=> b!585466 (= e!353896 (Cons!5756 (h!11157 lt!248153) (++!1612 (t!78475 lt!248153) suffix!1342)))))

(declare-fun b!585468 () Bool)

(assert (=> b!585468 (= e!353895 (or (not (= suffix!1342 Nil!5756)) (= lt!248231 lt!248153)))))

(declare-fun b!585467 () Bool)

(declare-fun res!252221 () Bool)

(assert (=> b!585467 (=> (not res!252221) (not e!353895))))

(assert (=> b!585467 (= res!252221 (= (size!4575 lt!248231) (+ (size!4575 lt!248153) (size!4575 suffix!1342))))))

(declare-fun b!585465 () Bool)

(assert (=> b!585465 (= e!353896 suffix!1342)))

(assert (= (and d!205856 c!109458) b!585465))

(assert (= (and d!205856 (not c!109458)) b!585466))

(assert (= (and d!205856 res!252222) b!585467))

(assert (= (and b!585467 res!252221) b!585468))

(declare-fun m!845389 () Bool)

(assert (=> d!205856 m!845389))

(declare-fun m!845391 () Bool)

(assert (=> d!205856 m!845391))

(assert (=> d!205856 m!845375))

(declare-fun m!845393 () Bool)

(assert (=> b!585466 m!845393))

(declare-fun m!845395 () Bool)

(assert (=> b!585467 m!845395))

(assert (=> b!585467 m!845163))

(assert (=> b!585467 m!845383))

(assert (=> b!585265 d!205856))

(declare-fun d!205858 () Bool)

(assert (=> d!205858 (= (get!2201 lt!248149) (v!16347 lt!248149))))

(assert (=> b!585264 d!205858))

(declare-fun d!205860 () Bool)

(declare-fun res!252225 () Bool)

(declare-fun e!353899 () Bool)

(assert (=> d!205860 (=> (not res!252225) (not e!353899))))

(declare-fun rulesValid!400 (LexerInterface!1010 List!5767) Bool)

(assert (=> d!205860 (= res!252225 (rulesValid!400 thiss!22590 rules!3103))))

(assert (=> d!205860 (= (rulesInvariant!973 thiss!22590 rules!3103) e!353899)))

(declare-fun b!585471 () Bool)

(declare-datatypes ((List!5771 0))(
  ( (Nil!5761) (Cons!5761 (h!11162 String!7486) (t!78504 List!5771)) )
))
(declare-fun noDuplicateTag!400 (LexerInterface!1010 List!5767 List!5771) Bool)

(assert (=> b!585471 (= e!353899 (noDuplicateTag!400 thiss!22590 rules!3103 Nil!5761))))

(assert (= (and d!205860 res!252225) b!585471))

(declare-fun m!845397 () Bool)

(assert (=> d!205860 m!845397))

(declare-fun m!845399 () Bool)

(assert (=> b!585471 m!845399))

(assert (=> b!585261 d!205860))

(declare-fun d!205862 () Bool)

(declare-fun e!353900 () Bool)

(assert (=> d!205862 e!353900))

(declare-fun res!252227 () Bool)

(assert (=> d!205862 (=> (not res!252227) (not e!353900))))

(declare-fun lt!248232 () List!5766)

(assert (=> d!205862 (= res!252227 (= (content!1024 lt!248232) (set.union (content!1024 lt!248155) (content!1024 (_2!3627 (v!16347 lt!248157))))))))

(declare-fun e!353901 () List!5766)

(assert (=> d!205862 (= lt!248232 e!353901)))

(declare-fun c!109459 () Bool)

(assert (=> d!205862 (= c!109459 (is-Nil!5756 lt!248155))))

(assert (=> d!205862 (= (++!1612 lt!248155 (_2!3627 (v!16347 lt!248157))) lt!248232)))

(declare-fun b!585473 () Bool)

(assert (=> b!585473 (= e!353901 (Cons!5756 (h!11157 lt!248155) (++!1612 (t!78475 lt!248155) (_2!3627 (v!16347 lt!248157)))))))

(declare-fun b!585475 () Bool)

(assert (=> b!585475 (= e!353900 (or (not (= (_2!3627 (v!16347 lt!248157)) Nil!5756)) (= lt!248232 lt!248155)))))

(declare-fun b!585474 () Bool)

(declare-fun res!252226 () Bool)

(assert (=> b!585474 (=> (not res!252226) (not e!353900))))

(assert (=> b!585474 (= res!252226 (= (size!4575 lt!248232) (+ (size!4575 lt!248155) (size!4575 (_2!3627 (v!16347 lt!248157))))))))

(declare-fun b!585472 () Bool)

(assert (=> b!585472 (= e!353901 (_2!3627 (v!16347 lt!248157)))))

(assert (= (and d!205862 c!109459) b!585472))

(assert (= (and d!205862 (not c!109459)) b!585473))

(assert (= (and d!205862 res!252227) b!585474))

(assert (= (and b!585474 res!252226) b!585475))

(declare-fun m!845401 () Bool)

(assert (=> d!205862 m!845401))

(declare-fun m!845403 () Bool)

(assert (=> d!205862 m!845403))

(declare-fun m!845405 () Bool)

(assert (=> d!205862 m!845405))

(declare-fun m!845407 () Bool)

(assert (=> b!585473 m!845407))

(declare-fun m!845409 () Bool)

(assert (=> b!585474 m!845409))

(assert (=> b!585474 m!845153))

(declare-fun m!845411 () Bool)

(assert (=> b!585474 m!845411))

(assert (=> b!585260 d!205862))

(declare-fun b!585493 () Bool)

(declare-fun e!353912 () Bool)

(declare-fun e!353913 () Bool)

(assert (=> b!585493 (= e!353912 e!353913)))

(declare-fun res!252245 () Bool)

(assert (=> b!585493 (=> (not res!252245) (not e!353913))))

(assert (=> b!585493 (= res!252245 (not (is-Nil!5756 input!2705)))))

(declare-fun d!205864 () Bool)

(declare-fun e!353911 () Bool)

(assert (=> d!205864 e!353911))

(declare-fun res!252244 () Bool)

(assert (=> d!205864 (=> res!252244 e!353911)))

(declare-fun lt!248240 () Bool)

(assert (=> d!205864 (= res!252244 (not lt!248240))))

(assert (=> d!205864 (= lt!248240 e!353912)))

(declare-fun res!252246 () Bool)

(assert (=> d!205864 (=> res!252246 e!353912)))

(assert (=> d!205864 (= res!252246 (is-Nil!5756 lt!248155))))

(assert (=> d!205864 (= (isPrefix!752 lt!248155 input!2705) lt!248240)))

(declare-fun b!585496 () Bool)

(assert (=> b!585496 (= e!353911 (>= (size!4575 input!2705) (size!4575 lt!248155)))))

(declare-fun b!585494 () Bool)

(declare-fun res!252243 () Bool)

(assert (=> b!585494 (=> (not res!252243) (not e!353913))))

(declare-fun head!1235 (List!5766) C!3838)

(assert (=> b!585494 (= res!252243 (= (head!1235 lt!248155) (head!1235 input!2705)))))

(declare-fun b!585495 () Bool)

(declare-fun tail!764 (List!5766) List!5766)

(assert (=> b!585495 (= e!353913 (isPrefix!752 (tail!764 lt!248155) (tail!764 input!2705)))))

(assert (= (and d!205864 (not res!252246)) b!585493))

(assert (= (and b!585493 res!252245) b!585494))

(assert (= (and b!585494 res!252243) b!585495))

(assert (= (and d!205864 (not res!252244)) b!585496))

(assert (=> b!585496 m!845381))

(assert (=> b!585496 m!845153))

(declare-fun m!845427 () Bool)

(assert (=> b!585494 m!845427))

(declare-fun m!845431 () Bool)

(assert (=> b!585494 m!845431))

(declare-fun m!845433 () Bool)

(assert (=> b!585495 m!845433))

(declare-fun m!845435 () Bool)

(assert (=> b!585495 m!845435))

(assert (=> b!585495 m!845433))

(assert (=> b!585495 m!845435))

(declare-fun m!845437 () Bool)

(assert (=> b!585495 m!845437))

(assert (=> b!585260 d!205864))

(declare-fun d!205866 () Bool)

(declare-fun lt!248244 () Int)

(assert (=> d!205866 (>= lt!248244 0)))

(declare-fun e!353918 () Int)

(assert (=> d!205866 (= lt!248244 e!353918)))

(declare-fun c!109464 () Bool)

(assert (=> d!205866 (= c!109464 (is-Nil!5756 lt!248153))))

(assert (=> d!205866 (= (size!4575 lt!248153) lt!248244)))

(declare-fun b!585505 () Bool)

(assert (=> b!585505 (= e!353918 0)))

(declare-fun b!585506 () Bool)

(assert (=> b!585506 (= e!353918 (+ 1 (size!4575 (t!78475 lt!248153))))))

(assert (= (and d!205866 c!109464) b!585505))

(assert (= (and d!205866 (not c!109464)) b!585506))

(declare-fun m!845457 () Bool)

(assert (=> b!585506 m!845457))

(assert (=> b!585260 d!205866))

(declare-fun d!205870 () Bool)

(assert (=> d!205870 (= (list!2399 (charsOf!753 (_1!3627 (v!16347 lt!248157)))) (list!2401 (c!109428 (charsOf!753 (_1!3627 (v!16347 lt!248157))))))))

(declare-fun bs!70011 () Bool)

(assert (= bs!70011 d!205870))

(declare-fun m!845461 () Bool)

(assert (=> bs!70011 m!845461))

(assert (=> b!585260 d!205870))

(declare-fun d!205872 () Bool)

(declare-fun lt!248245 () Int)

(assert (=> d!205872 (>= lt!248245 0)))

(declare-fun e!353919 () Int)

(assert (=> d!205872 (= lt!248245 e!353919)))

(declare-fun c!109465 () Bool)

(assert (=> d!205872 (= c!109465 (is-Nil!5756 lt!248155))))

(assert (=> d!205872 (= (size!4575 lt!248155) lt!248245)))

(declare-fun b!585507 () Bool)

(assert (=> b!585507 (= e!353919 0)))

(declare-fun b!585508 () Bool)

(assert (=> b!585508 (= e!353919 (+ 1 (size!4575 (t!78475 lt!248155))))))

(assert (= (and d!205872 c!109465) b!585507))

(assert (= (and d!205872 (not c!109465)) b!585508))

(declare-fun m!845471 () Bool)

(assert (=> b!585508 m!845471))

(assert (=> b!585260 d!205872))

(declare-fun d!205876 () Bool)

(assert (=> d!205876 (isPrefix!752 lt!248155 (++!1612 lt!248155 (_2!3627 (v!16347 lt!248157))))))

(declare-fun lt!248248 () Unit!10454)

(declare-fun choose!4202 (List!5766 List!5766) Unit!10454)

(assert (=> d!205876 (= lt!248248 (choose!4202 lt!248155 (_2!3627 (v!16347 lt!248157))))))

(assert (=> d!205876 (= (lemmaConcatTwoListThenFirstIsPrefix!597 lt!248155 (_2!3627 (v!16347 lt!248157))) lt!248248)))

(declare-fun bs!70012 () Bool)

(assert (= bs!70012 d!205876))

(assert (=> bs!70012 m!845167))

(assert (=> bs!70012 m!845167))

(declare-fun m!845473 () Bool)

(assert (=> bs!70012 m!845473))

(declare-fun m!845475 () Bool)

(assert (=> bs!70012 m!845475))

(assert (=> b!585260 d!205876))

(declare-fun d!205878 () Bool)

(declare-fun lt!248249 () BalanceConc!3690)

(assert (=> d!205878 (= (list!2399 lt!248249) (originalCharacters!1163 (_1!3627 (v!16347 lt!248157))))))

(assert (=> d!205878 (= lt!248249 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157)))))))

(assert (=> d!205878 (= (charsOf!753 (_1!3627 (v!16347 lt!248157))) lt!248249)))

(declare-fun b_lambda!23063 () Bool)

(assert (=> (not b_lambda!23063) (not d!205878)))

(declare-fun t!78489 () Bool)

(declare-fun tb!51263 () Bool)

(assert (=> (and b!585272 (= (toChars!1858 (transformation!1124 (h!11158 rules!3103))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157)))))) t!78489) tb!51263))

(declare-fun b!585509 () Bool)

(declare-fun e!353920 () Bool)

(declare-fun tp!182651 () Bool)

(assert (=> b!585509 (= e!353920 (and (inv!7271 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157)))))) tp!182651))))

(declare-fun result!57410 () Bool)

(assert (=> tb!51263 (= result!57410 (and (inv!7272 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157))))) e!353920))))

(assert (= tb!51263 b!585509))

(declare-fun m!845477 () Bool)

(assert (=> b!585509 m!845477))

(declare-fun m!845479 () Bool)

(assert (=> tb!51263 m!845479))

(assert (=> d!205878 t!78489))

(declare-fun b_and!57679 () Bool)

(assert (= b_and!57675 (and (=> t!78489 result!57410) b_and!57679)))

(declare-fun tb!51265 () Bool)

(declare-fun t!78491 () Bool)

(assert (=> (and b!585268 (= (toChars!1858 (transformation!1124 (rule!1886 token!491))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157)))))) t!78491) tb!51265))

(declare-fun result!57412 () Bool)

(assert (= result!57412 result!57410))

(assert (=> d!205878 t!78491))

(declare-fun b_and!57681 () Bool)

(assert (= b_and!57677 (and (=> t!78491 result!57412) b_and!57681)))

(declare-fun m!845481 () Bool)

(assert (=> d!205878 m!845481))

(declare-fun m!845483 () Bool)

(assert (=> d!205878 m!845483))

(assert (=> b!585260 d!205878))

(declare-fun d!205880 () Bool)

(assert (=> d!205880 (and (= lt!248153 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!248254 () Unit!10454)

(declare-fun choose!4203 (List!5766 List!5766 List!5766 List!5766) Unit!10454)

(assert (=> d!205880 (= lt!248254 (choose!4203 lt!248153 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!205880 (= (++!1612 lt!248153 suffix!1342) (++!1612 input!2705 suffix!1342))))

(assert (=> d!205880 (= (lemmaConcatSameAndSameSizesThenSameLists!197 lt!248153 suffix!1342 input!2705 suffix!1342) lt!248254)))

(declare-fun bs!70013 () Bool)

(assert (= bs!70013 d!205880))

(declare-fun m!845485 () Bool)

(assert (=> bs!70013 m!845485))

(assert (=> bs!70013 m!845177))

(assert (=> bs!70013 m!845203))

(assert (=> b!585260 d!205880))

(declare-fun b!585518 () Bool)

(declare-fun e!353928 () Bool)

(declare-fun e!353929 () Bool)

(assert (=> b!585518 (= e!353928 e!353929)))

(declare-fun res!252259 () Bool)

(assert (=> b!585518 (=> (not res!252259) (not e!353929))))

(assert (=> b!585518 (= res!252259 (not (is-Nil!5756 lt!248146)))))

(declare-fun d!205882 () Bool)

(declare-fun e!353927 () Bool)

(assert (=> d!205882 e!353927))

(declare-fun res!252258 () Bool)

(assert (=> d!205882 (=> res!252258 e!353927)))

(declare-fun lt!248255 () Bool)

(assert (=> d!205882 (= res!252258 (not lt!248255))))

(assert (=> d!205882 (= lt!248255 e!353928)))

(declare-fun res!252260 () Bool)

(assert (=> d!205882 (=> res!252260 e!353928)))

(assert (=> d!205882 (= res!252260 (is-Nil!5756 lt!248155))))

(assert (=> d!205882 (= (isPrefix!752 lt!248155 lt!248146) lt!248255)))

(declare-fun b!585521 () Bool)

(assert (=> b!585521 (= e!353927 (>= (size!4575 lt!248146) (size!4575 lt!248155)))))

(declare-fun b!585519 () Bool)

(declare-fun res!252257 () Bool)

(assert (=> b!585519 (=> (not res!252257) (not e!353929))))

(assert (=> b!585519 (= res!252257 (= (head!1235 lt!248155) (head!1235 lt!248146)))))

(declare-fun b!585520 () Bool)

(assert (=> b!585520 (= e!353929 (isPrefix!752 (tail!764 lt!248155) (tail!764 lt!248146)))))

(assert (= (and d!205882 (not res!252260)) b!585518))

(assert (= (and b!585518 res!252259) b!585519))

(assert (= (and b!585519 res!252257) b!585520))

(assert (= (and d!205882 (not res!252258)) b!585521))

(declare-fun m!845487 () Bool)

(assert (=> b!585521 m!845487))

(assert (=> b!585521 m!845153))

(assert (=> b!585519 m!845427))

(declare-fun m!845489 () Bool)

(assert (=> b!585519 m!845489))

(assert (=> b!585520 m!845433))

(declare-fun m!845491 () Bool)

(assert (=> b!585520 m!845491))

(assert (=> b!585520 m!845433))

(assert (=> b!585520 m!845491))

(declare-fun m!845493 () Bool)

(assert (=> b!585520 m!845493))

(assert (=> b!585260 d!205882))

(declare-fun d!205884 () Bool)

(declare-fun lt!248259 () List!5766)

(assert (=> d!205884 (= (++!1612 lt!248155 lt!248259) input!2705)))

(declare-fun e!353935 () List!5766)

(assert (=> d!205884 (= lt!248259 e!353935)))

(declare-fun c!109468 () Bool)

(assert (=> d!205884 (= c!109468 (is-Cons!5756 lt!248155))))

(assert (=> d!205884 (>= (size!4575 input!2705) (size!4575 lt!248155))))

(assert (=> d!205884 (= (getSuffix!269 input!2705 lt!248155) lt!248259)))

(declare-fun b!585530 () Bool)

(assert (=> b!585530 (= e!353935 (getSuffix!269 (tail!764 input!2705) (t!78475 lt!248155)))))

(declare-fun b!585531 () Bool)

(assert (=> b!585531 (= e!353935 input!2705)))

(assert (= (and d!205884 c!109468) b!585530))

(assert (= (and d!205884 (not c!109468)) b!585531))

(declare-fun m!845505 () Bool)

(assert (=> d!205884 m!845505))

(assert (=> d!205884 m!845381))

(assert (=> d!205884 m!845153))

(assert (=> b!585530 m!845435))

(assert (=> b!585530 m!845435))

(declare-fun m!845507 () Bool)

(assert (=> b!585530 m!845507))

(assert (=> b!585260 d!205884))

(declare-fun d!205888 () Bool)

(assert (=> d!205888 (= (size!4574 token!491) (size!4575 (originalCharacters!1163 token!491)))))

(declare-fun Unit!10463 () Unit!10454)

(assert (=> d!205888 (= (lemmaCharactersSize!183 token!491) Unit!10463)))

(declare-fun bs!70014 () Bool)

(assert (= bs!70014 d!205888))

(assert (=> bs!70014 m!845301))

(assert (=> b!585260 d!205888))

(declare-fun d!205890 () Bool)

(assert (=> d!205890 (= (size!4574 (_1!3627 (v!16347 lt!248157))) (size!4575 (originalCharacters!1163 (_1!3627 (v!16347 lt!248157)))))))

(declare-fun Unit!10464 () Unit!10454)

(assert (=> d!205890 (= (lemmaCharactersSize!183 (_1!3627 (v!16347 lt!248157))) Unit!10464)))

(declare-fun bs!70015 () Bool)

(assert (= bs!70015 d!205890))

(declare-fun m!845509 () Bool)

(assert (=> bs!70015 m!845509))

(assert (=> b!585260 d!205890))

(declare-fun b!585532 () Bool)

(declare-fun res!252271 () Bool)

(declare-fun e!353937 () Bool)

(assert (=> b!585532 (=> (not res!252271) (not e!353937))))

(declare-fun lt!248261 () Option!1475)

(assert (=> b!585532 (= res!252271 (= (value!36902 (_1!3627 (get!2201 lt!248261))) (apply!1381 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))) (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248261)))))))))

(declare-fun b!585533 () Bool)

(declare-fun e!353936 () Option!1475)

(declare-fun lt!248260 () Option!1475)

(declare-fun lt!248262 () Option!1475)

(assert (=> b!585533 (= e!353936 (ite (and (is-None!1474 lt!248260) (is-None!1474 lt!248262)) None!1474 (ite (is-None!1474 lt!248262) lt!248260 (ite (is-None!1474 lt!248260) lt!248262 (ite (>= (size!4574 (_1!3627 (v!16347 lt!248260))) (size!4574 (_1!3627 (v!16347 lt!248262)))) lt!248260 lt!248262)))))))

(declare-fun call!40204 () Option!1475)

(assert (=> b!585533 (= lt!248260 call!40204)))

(assert (=> b!585533 (= lt!248262 (maxPrefix!708 thiss!22590 (t!78476 rules!3103) input!2705))))

(declare-fun d!205892 () Bool)

(declare-fun e!353938 () Bool)

(assert (=> d!205892 e!353938))

(declare-fun res!252270 () Bool)

(assert (=> d!205892 (=> res!252270 e!353938)))

(assert (=> d!205892 (= res!252270 (isEmpty!4159 lt!248261))))

(assert (=> d!205892 (= lt!248261 e!353936)))

(declare-fun c!109469 () Bool)

(assert (=> d!205892 (= c!109469 (and (is-Cons!5757 rules!3103) (is-Nil!5757 (t!78476 rules!3103))))))

(declare-fun lt!248263 () Unit!10454)

(declare-fun lt!248264 () Unit!10454)

(assert (=> d!205892 (= lt!248263 lt!248264)))

(assert (=> d!205892 (isPrefix!752 input!2705 input!2705)))

(assert (=> d!205892 (= lt!248264 (lemmaIsPrefixRefl!488 input!2705 input!2705))))

(assert (=> d!205892 (rulesValidInductive!405 thiss!22590 rules!3103)))

(assert (=> d!205892 (= (maxPrefix!708 thiss!22590 rules!3103 input!2705) lt!248261)))

(declare-fun b!585534 () Bool)

(declare-fun res!252266 () Bool)

(assert (=> b!585534 (=> (not res!252266) (not e!353937))))

(assert (=> b!585534 (= res!252266 (= (++!1612 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261)))) (_2!3627 (get!2201 lt!248261))) input!2705))))

(declare-fun b!585535 () Bool)

(declare-fun res!252267 () Bool)

(assert (=> b!585535 (=> (not res!252267) (not e!353937))))

(assert (=> b!585535 (= res!252267 (matchR!597 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))) (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261))))))))

(declare-fun b!585536 () Bool)

(assert (=> b!585536 (= e!353938 e!353937)))

(declare-fun res!252268 () Bool)

(assert (=> b!585536 (=> (not res!252268) (not e!353937))))

(assert (=> b!585536 (= res!252268 (isDefined!1286 lt!248261))))

(declare-fun bm!40199 () Bool)

(assert (=> bm!40199 (= call!40204 (maxPrefixOneRule!401 thiss!22590 (h!11158 rules!3103) input!2705))))

(declare-fun b!585537 () Bool)

(declare-fun res!252265 () Bool)

(assert (=> b!585537 (=> (not res!252265) (not e!353937))))

(assert (=> b!585537 (= res!252265 (= (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261)))) (originalCharacters!1163 (_1!3627 (get!2201 lt!248261)))))))

(declare-fun b!585538 () Bool)

(assert (=> b!585538 (= e!353936 call!40204)))

(declare-fun b!585539 () Bool)

(declare-fun res!252269 () Bool)

(assert (=> b!585539 (=> (not res!252269) (not e!353937))))

(assert (=> b!585539 (= res!252269 (< (size!4575 (_2!3627 (get!2201 lt!248261))) (size!4575 input!2705)))))

(declare-fun b!585540 () Bool)

(assert (=> b!585540 (= e!353937 (contains!1354 rules!3103 (rule!1886 (_1!3627 (get!2201 lt!248261)))))))

(assert (= (and d!205892 c!109469) b!585538))

(assert (= (and d!205892 (not c!109469)) b!585533))

(assert (= (or b!585538 b!585533) bm!40199))

(assert (= (and d!205892 (not res!252270)) b!585536))

(assert (= (and b!585536 res!252268) b!585537))

(assert (= (and b!585537 res!252265) b!585539))

(assert (= (and b!585539 res!252269) b!585534))

(assert (= (and b!585534 res!252266) b!585532))

(assert (= (and b!585532 res!252271) b!585535))

(assert (= (and b!585535 res!252267) b!585540))

(declare-fun m!845511 () Bool)

(assert (=> b!585540 m!845511))

(declare-fun m!845513 () Bool)

(assert (=> b!585540 m!845513))

(assert (=> b!585535 m!845511))

(declare-fun m!845515 () Bool)

(assert (=> b!585535 m!845515))

(assert (=> b!585535 m!845515))

(declare-fun m!845517 () Bool)

(assert (=> b!585535 m!845517))

(assert (=> b!585535 m!845517))

(declare-fun m!845519 () Bool)

(assert (=> b!585535 m!845519))

(declare-fun m!845521 () Bool)

(assert (=> b!585533 m!845521))

(assert (=> b!585539 m!845511))

(declare-fun m!845523 () Bool)

(assert (=> b!585539 m!845523))

(assert (=> b!585539 m!845381))

(declare-fun m!845525 () Bool)

(assert (=> bm!40199 m!845525))

(declare-fun m!845527 () Bool)

(assert (=> b!585536 m!845527))

(assert (=> b!585537 m!845511))

(assert (=> b!585537 m!845515))

(assert (=> b!585537 m!845515))

(assert (=> b!585537 m!845517))

(declare-fun m!845529 () Bool)

(assert (=> d!205892 m!845529))

(declare-fun m!845531 () Bool)

(assert (=> d!205892 m!845531))

(declare-fun m!845533 () Bool)

(assert (=> d!205892 m!845533))

(assert (=> d!205892 m!845363))

(assert (=> b!585534 m!845511))

(assert (=> b!585534 m!845515))

(assert (=> b!585534 m!845515))

(assert (=> b!585534 m!845517))

(assert (=> b!585534 m!845517))

(declare-fun m!845539 () Bool)

(assert (=> b!585534 m!845539))

(assert (=> b!585532 m!845511))

(declare-fun m!845541 () Bool)

(assert (=> b!585532 m!845541))

(assert (=> b!585532 m!845541))

(declare-fun m!845543 () Bool)

(assert (=> b!585532 m!845543))

(assert (=> b!585271 d!205892))

(declare-fun b!585546 () Bool)

(declare-fun e!353942 () Bool)

(declare-fun tp!182655 () Bool)

(assert (=> b!585546 (= e!353942 (and tp_is_empty!3271 tp!182655))))

(assert (=> b!585258 (= tp!182608 e!353942)))

(assert (= (and b!585258 (is-Cons!5756 (originalCharacters!1163 token!491))) b!585546))

(declare-fun b!585547 () Bool)

(declare-fun e!353943 () Bool)

(declare-fun tp!182656 () Bool)

(assert (=> b!585547 (= e!353943 (and tp_is_empty!3271 tp!182656))))

(assert (=> b!585269 (= tp!182614 e!353943)))

(assert (= (and b!585269 (is-Cons!5756 (t!78475 input!2705))) b!585547))

(declare-fun b!585548 () Bool)

(declare-fun e!353944 () Bool)

(declare-fun tp!182657 () Bool)

(assert (=> b!585548 (= e!353944 (and tp_is_empty!3271 tp!182657))))

(assert (=> b!585275 (= tp!182609 e!353944)))

(assert (= (and b!585275 (is-Cons!5756 (t!78475 suffix!1342))) b!585548))

(declare-fun b!585561 () Bool)

(declare-fun e!353947 () Bool)

(declare-fun tp!182671 () Bool)

(assert (=> b!585561 (= e!353947 tp!182671)))

(declare-fun b!585559 () Bool)

(assert (=> b!585559 (= e!353947 tp_is_empty!3271)))

(assert (=> b!585259 (= tp!182613 e!353947)))

(declare-fun b!585562 () Bool)

(declare-fun tp!182669 () Bool)

(declare-fun tp!182672 () Bool)

(assert (=> b!585562 (= e!353947 (and tp!182669 tp!182672))))

(declare-fun b!585560 () Bool)

(declare-fun tp!182668 () Bool)

(declare-fun tp!182670 () Bool)

(assert (=> b!585560 (= e!353947 (and tp!182668 tp!182670))))

(assert (= (and b!585259 (is-ElementMatch!1458 (regex!1124 (h!11158 rules!3103)))) b!585559))

(assert (= (and b!585259 (is-Concat!2606 (regex!1124 (h!11158 rules!3103)))) b!585560))

(assert (= (and b!585259 (is-Star!1458 (regex!1124 (h!11158 rules!3103)))) b!585561))

(assert (= (and b!585259 (is-Union!1458 (regex!1124 (h!11158 rules!3103)))) b!585562))

(declare-fun b!585577 () Bool)

(declare-fun b_free!16341 () Bool)

(declare-fun b_next!16357 () Bool)

(assert (=> b!585577 (= b_free!16341 (not b_next!16357))))

(declare-fun tp!182682 () Bool)

(declare-fun b_and!57687 () Bool)

(assert (=> b!585577 (= tp!182682 b_and!57687)))

(declare-fun b_free!16343 () Bool)

(declare-fun b_next!16359 () Bool)

(assert (=> b!585577 (= b_free!16343 (not b_next!16359))))

(declare-fun tb!51271 () Bool)

(declare-fun t!78497 () Bool)

(assert (=> (and b!585577 (= (toChars!1858 (transformation!1124 (h!11158 (t!78476 rules!3103)))) (toChars!1858 (transformation!1124 (rule!1886 token!491)))) t!78497) tb!51271))

(declare-fun result!57424 () Bool)

(assert (= result!57424 result!57404))

(assert (=> b!585369 t!78497))

(assert (=> d!205832 t!78497))

(declare-fun tb!51273 () Bool)

(declare-fun t!78499 () Bool)

(assert (=> (and b!585577 (= (toChars!1858 (transformation!1124 (h!11158 (t!78476 rules!3103)))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157)))))) t!78499) tb!51273))

(declare-fun result!57426 () Bool)

(assert (= result!57426 result!57410))

(assert (=> d!205878 t!78499))

(declare-fun tp!182681 () Bool)

(declare-fun b_and!57689 () Bool)

(assert (=> b!585577 (= tp!182681 (and (=> t!78497 result!57424) (=> t!78499 result!57426) b_and!57689))))

(declare-fun e!353960 () Bool)

(assert (=> b!585577 (= e!353960 (and tp!182682 tp!182681))))

(declare-fun e!353958 () Bool)

(declare-fun tp!182684 () Bool)

(declare-fun b!585576 () Bool)

(assert (=> b!585576 (= e!353958 (and tp!182684 (inv!7264 (tag!1386 (h!11158 (t!78476 rules!3103)))) (inv!7267 (transformation!1124 (h!11158 (t!78476 rules!3103)))) e!353960))))

(declare-fun b!585575 () Bool)

(declare-fun e!353959 () Bool)

(declare-fun tp!182683 () Bool)

(assert (=> b!585575 (= e!353959 (and e!353958 tp!182683))))

(assert (=> b!585262 (= tp!182606 e!353959)))

(assert (= b!585576 b!585577))

(assert (= b!585575 b!585576))

(assert (= (and b!585262 (is-Cons!5757 (t!78476 rules!3103))) b!585575))

(declare-fun m!845549 () Bool)

(assert (=> b!585576 m!845549))

(declare-fun m!845551 () Bool)

(assert (=> b!585576 m!845551))

(declare-fun b!585580 () Bool)

(declare-fun e!353962 () Bool)

(declare-fun tp!182688 () Bool)

(assert (=> b!585580 (= e!353962 tp!182688)))

(declare-fun b!585578 () Bool)

(assert (=> b!585578 (= e!353962 tp_is_empty!3271)))

(assert (=> b!585267 (= tp!182607 e!353962)))

(declare-fun b!585581 () Bool)

(declare-fun tp!182686 () Bool)

(declare-fun tp!182689 () Bool)

(assert (=> b!585581 (= e!353962 (and tp!182686 tp!182689))))

(declare-fun b!585579 () Bool)

(declare-fun tp!182685 () Bool)

(declare-fun tp!182687 () Bool)

(assert (=> b!585579 (= e!353962 (and tp!182685 tp!182687))))

(assert (= (and b!585267 (is-ElementMatch!1458 (regex!1124 (rule!1886 token!491)))) b!585578))

(assert (= (and b!585267 (is-Concat!2606 (regex!1124 (rule!1886 token!491)))) b!585579))

(assert (= (and b!585267 (is-Star!1458 (regex!1124 (rule!1886 token!491)))) b!585580))

(assert (= (and b!585267 (is-Union!1458 (regex!1124 (rule!1886 token!491)))) b!585581))

(declare-fun b_lambda!23067 () Bool)

(assert (= b_lambda!23061 (or (and b!585272 b_free!16327 (= (toChars!1858 (transformation!1124 (h!11158 rules!3103))) (toChars!1858 (transformation!1124 (rule!1886 token!491))))) (and b!585268 b_free!16331) (and b!585577 b_free!16343 (= (toChars!1858 (transformation!1124 (h!11158 (t!78476 rules!3103)))) (toChars!1858 (transformation!1124 (rule!1886 token!491))))) b_lambda!23067)))

(declare-fun b_lambda!23069 () Bool)

(assert (= b_lambda!23059 (or (and b!585272 b_free!16327 (= (toChars!1858 (transformation!1124 (h!11158 rules!3103))) (toChars!1858 (transformation!1124 (rule!1886 token!491))))) (and b!585268 b_free!16331) (and b!585577 b_free!16343 (= (toChars!1858 (transformation!1124 (h!11158 (t!78476 rules!3103)))) (toChars!1858 (transformation!1124 (rule!1886 token!491))))) b_lambda!23069)))

(push 1)

(assert (not b!585509))

(assert (not bm!40199))

(assert (not b!585548))

(assert (not b!585464))

(assert (not b!585432))

(assert (not b!585357))

(assert (not d!205888))

(assert (not b!585540))

(assert (not b!585530))

(assert (not b!585369))

(assert (not b!585576))

(assert (not b!585535))

(assert b_and!57687)

(assert (not b!585521))

(assert (not d!205876))

(assert (not d!205862))

(assert (not b!585547))

(assert (not d!205870))

(assert (not b_next!16343))

(assert (not d!205860))

(assert (not b!585473))

(assert (not b!585461))

(assert (not b!585494))

(assert (not b_next!16357))

(assert (not b!585466))

(assert b_and!57689)

(assert (not b!585562))

(assert (not b!585370))

(assert (not tb!51259))

(assert (not b!585467))

(assert (not b!585427))

(assert (not b!585536))

(assert (not b!585433))

(assert (not b!585533))

(assert (not b!585390))

(assert (not d!205846))

(assert (not b!585546))

(assert (not d!205852))

(assert (not d!205884))

(assert (not bm!40195))

(assert (not b_lambda!23069))

(assert (not d!205890))

(assert (not b_next!16341))

(assert (not d!205856))

(assert b_and!57679)

(assert (not d!205832))

(assert (not b!585375))

(assert (not b!585471))

(assert (not b!585354))

(assert (not b!585579))

(assert (not d!205892))

(assert (not b_lambda!23063))

(assert b_and!57681)

(assert (not d!205830))

(assert (not b!585462))

(assert (not b!585426))

(assert (not b!585580))

(assert (not d!205848))

(assert (not b!585539))

(assert (not b!585532))

(assert (not b_lambda!23067))

(assert (not b!585506))

(assert (not b!585496))

(assert (not b!585428))

(assert (not d!205878))

(assert (not b!585508))

(assert (not b!585561))

(assert (not b!585581))

(assert (not b!585537))

(assert (not b!585430))

(assert b_and!57651)

(assert (not b!585519))

(assert (not d!205824))

(assert (not b!585355))

(assert tp_is_empty!3271)

(assert (not b_next!16347))

(assert (not tb!51263))

(assert (not d!205842))

(assert (not b!585474))

(assert (not b!585520))

(assert (not b_next!16345))

(assert (not b!585560))

(assert (not d!205818))

(assert (not b!585425))

(assert (not b_next!16359))

(assert b_and!57655)

(assert (not b!585575))

(assert (not b!585534))

(assert (not b!585495))

(assert (not d!205880))

(assert (not b!585429))

(check-sat)

(pop 1)

(push 1)

(assert b_and!57687)

(assert (not b_next!16343))

(assert (not b_next!16357))

(assert b_and!57689)

(assert (not b_next!16341))

(assert b_and!57679)

(assert b_and!57681)

(assert b_and!57651)

(assert (not b_next!16347))

(assert (not b_next!16345))

(assert (not b_next!16359))

(assert b_and!57655)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!205926 () Bool)

(assert (=> d!205926 (= (list!2399 lt!248202) (list!2401 (c!109428 lt!248202)))))

(declare-fun bs!70022 () Bool)

(assert (= bs!70022 d!205926))

(declare-fun m!845633 () Bool)

(assert (=> bs!70022 m!845633))

(assert (=> d!205832 d!205926))

(declare-fun d!205928 () Bool)

(assert (=> d!205928 (= (isDefined!1286 lt!248261) (not (isEmpty!4159 lt!248261)))))

(declare-fun bs!70023 () Bool)

(assert (= bs!70023 d!205928))

(assert (=> bs!70023 m!845529))

(assert (=> b!585536 d!205928))

(declare-fun d!205930 () Bool)

(declare-fun e!354000 () Bool)

(assert (=> d!205930 e!354000))

(declare-fun res!252291 () Bool)

(assert (=> d!205930 (=> (not res!252291) (not e!354000))))

(declare-fun lt!248289 () List!5766)

(assert (=> d!205930 (= res!252291 (= (content!1024 lt!248289) (set.union (content!1024 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214))))) (content!1024 (_2!3627 (get!2201 lt!248214))))))))

(declare-fun e!354001 () List!5766)

(assert (=> d!205930 (= lt!248289 e!354001)))

(declare-fun c!109479 () Bool)

(assert (=> d!205930 (= c!109479 (is-Nil!5756 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214))))))))

(assert (=> d!205930 (= (++!1612 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214)))) (_2!3627 (get!2201 lt!248214))) lt!248289)))

(declare-fun b!585649 () Bool)

(assert (=> b!585649 (= e!354001 (Cons!5756 (h!11157 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214))))) (++!1612 (t!78475 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214))))) (_2!3627 (get!2201 lt!248214)))))))

(declare-fun b!585651 () Bool)

(assert (=> b!585651 (= e!354000 (or (not (= (_2!3627 (get!2201 lt!248214)) Nil!5756)) (= lt!248289 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214)))))))))

(declare-fun b!585650 () Bool)

(declare-fun res!252290 () Bool)

(assert (=> b!585650 (=> (not res!252290) (not e!354000))))

(assert (=> b!585650 (= res!252290 (= (size!4575 lt!248289) (+ (size!4575 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214))))) (size!4575 (_2!3627 (get!2201 lt!248214))))))))

(declare-fun b!585648 () Bool)

(assert (=> b!585648 (= e!354001 (_2!3627 (get!2201 lt!248214)))))

(assert (= (and d!205930 c!109479) b!585648))

(assert (= (and d!205930 (not c!109479)) b!585649))

(assert (= (and d!205930 res!252291) b!585650))

(assert (= (and b!585650 res!252290) b!585651))

(declare-fun m!845635 () Bool)

(assert (=> d!205930 m!845635))

(assert (=> d!205930 m!845343))

(declare-fun m!845637 () Bool)

(assert (=> d!205930 m!845637))

(declare-fun m!845639 () Bool)

(assert (=> d!205930 m!845639))

(declare-fun m!845641 () Bool)

(assert (=> b!585649 m!845641))

(declare-fun m!845643 () Bool)

(assert (=> b!585650 m!845643))

(assert (=> b!585650 m!845343))

(declare-fun m!845645 () Bool)

(assert (=> b!585650 m!845645))

(assert (=> b!585650 m!845349))

(assert (=> b!585427 d!205930))

(declare-fun d!205932 () Bool)

(assert (=> d!205932 (= (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214)))) (list!2401 (c!109428 (charsOf!753 (_1!3627 (get!2201 lt!248214))))))))

(declare-fun bs!70024 () Bool)

(assert (= bs!70024 d!205932))

(declare-fun m!845647 () Bool)

(assert (=> bs!70024 m!845647))

(assert (=> b!585427 d!205932))

(declare-fun d!205934 () Bool)

(declare-fun lt!248290 () BalanceConc!3690)

(assert (=> d!205934 (= (list!2399 lt!248290) (originalCharacters!1163 (_1!3627 (get!2201 lt!248214))))))

(assert (=> d!205934 (= lt!248290 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214))))) (value!36902 (_1!3627 (get!2201 lt!248214)))))))

(assert (=> d!205934 (= (charsOf!753 (_1!3627 (get!2201 lt!248214))) lt!248290)))

(declare-fun b_lambda!23077 () Bool)

(assert (=> (not b_lambda!23077) (not d!205934)))

(declare-fun tb!51279 () Bool)

(declare-fun t!78507 () Bool)

(assert (=> (and b!585272 (= (toChars!1858 (transformation!1124 (h!11158 rules!3103))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))))) t!78507) tb!51279))

(declare-fun b!585652 () Bool)

(declare-fun e!354002 () Bool)

(declare-fun tp!182727 () Bool)

(assert (=> b!585652 (= e!354002 (and (inv!7271 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214))))) (value!36902 (_1!3627 (get!2201 lt!248214)))))) tp!182727))))

(declare-fun result!57438 () Bool)

(assert (=> tb!51279 (= result!57438 (and (inv!7272 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214))))) (value!36902 (_1!3627 (get!2201 lt!248214))))) e!354002))))

(assert (= tb!51279 b!585652))

(declare-fun m!845649 () Bool)

(assert (=> b!585652 m!845649))

(declare-fun m!845651 () Bool)

(assert (=> tb!51279 m!845651))

(assert (=> d!205934 t!78507))

(declare-fun b_and!57699 () Bool)

(assert (= b_and!57679 (and (=> t!78507 result!57438) b_and!57699)))

(declare-fun t!78509 () Bool)

(declare-fun tb!51281 () Bool)

(assert (=> (and b!585268 (= (toChars!1858 (transformation!1124 (rule!1886 token!491))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))))) t!78509) tb!51281))

(declare-fun result!57440 () Bool)

(assert (= result!57440 result!57438))

(assert (=> d!205934 t!78509))

(declare-fun b_and!57701 () Bool)

(assert (= b_and!57681 (and (=> t!78509 result!57440) b_and!57701)))

(declare-fun t!78511 () Bool)

(declare-fun tb!51283 () Bool)

(assert (=> (and b!585577 (= (toChars!1858 (transformation!1124 (h!11158 (t!78476 rules!3103)))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))))) t!78511) tb!51283))

(declare-fun result!57442 () Bool)

(assert (= result!57442 result!57438))

(assert (=> d!205934 t!78511))

(declare-fun b_and!57703 () Bool)

(assert (= b_and!57689 (and (=> t!78511 result!57442) b_and!57703)))

(declare-fun m!845653 () Bool)

(assert (=> d!205934 m!845653))

(declare-fun m!845655 () Bool)

(assert (=> d!205934 m!845655))

(assert (=> b!585427 d!205934))

(declare-fun d!205936 () Bool)

(assert (=> d!205936 (= (get!2201 lt!248214) (v!16347 lt!248214))))

(assert (=> b!585427 d!205936))

(declare-fun d!205938 () Bool)

(assert (=> d!205938 true))

(declare-fun order!4709 () Int)

(declare-fun order!4707 () Int)

(declare-fun lambda!15869 () Int)

(declare-fun dynLambda!3359 (Int Int) Int)

(declare-fun dynLambda!3360 (Int Int) Int)

(assert (=> d!205938 (< (dynLambda!3359 order!4707 (toChars!1858 (transformation!1124 (rule!1886 token!491)))) (dynLambda!3360 order!4709 lambda!15869))))

(assert (=> d!205938 true))

(declare-fun order!4711 () Int)

(declare-fun dynLambda!3361 (Int Int) Int)

(assert (=> d!205938 (< (dynLambda!3361 order!4711 (toValue!1999 (transformation!1124 (rule!1886 token!491)))) (dynLambda!3360 order!4709 lambda!15869))))

(declare-fun Forall!291 (Int) Bool)

(assert (=> d!205938 (= (semiInverseModEq!436 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (toValue!1999 (transformation!1124 (rule!1886 token!491)))) (Forall!291 lambda!15869))))

(declare-fun bs!70025 () Bool)

(assert (= bs!70025 d!205938))

(declare-fun m!845657 () Bool)

(assert (=> bs!70025 m!845657))

(assert (=> d!205852 d!205938))

(declare-fun d!205940 () Bool)

(assert (=> d!205940 (= (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261)))) (list!2401 (c!109428 (charsOf!753 (_1!3627 (get!2201 lt!248261))))))))

(declare-fun bs!70026 () Bool)

(assert (= bs!70026 d!205940))

(declare-fun m!845659 () Bool)

(assert (=> bs!70026 m!845659))

(assert (=> b!585537 d!205940))

(declare-fun d!205942 () Bool)

(declare-fun lt!248291 () BalanceConc!3690)

(assert (=> d!205942 (= (list!2399 lt!248291) (originalCharacters!1163 (_1!3627 (get!2201 lt!248261))))))

(assert (=> d!205942 (= lt!248291 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261))))) (value!36902 (_1!3627 (get!2201 lt!248261)))))))

(assert (=> d!205942 (= (charsOf!753 (_1!3627 (get!2201 lt!248261))) lt!248291)))

(declare-fun b_lambda!23079 () Bool)

(assert (=> (not b_lambda!23079) (not d!205942)))

(declare-fun tb!51285 () Bool)

(declare-fun t!78513 () Bool)

(assert (=> (and b!585272 (= (toChars!1858 (transformation!1124 (h!11158 rules!3103))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))))) t!78513) tb!51285))

(declare-fun b!585657 () Bool)

(declare-fun e!354003 () Bool)

(declare-fun tp!182728 () Bool)

(assert (=> b!585657 (= e!354003 (and (inv!7271 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261))))) (value!36902 (_1!3627 (get!2201 lt!248261)))))) tp!182728))))

(declare-fun result!57444 () Bool)

(assert (=> tb!51285 (= result!57444 (and (inv!7272 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261))))) (value!36902 (_1!3627 (get!2201 lt!248261))))) e!354003))))

(assert (= tb!51285 b!585657))

(declare-fun m!845661 () Bool)

(assert (=> b!585657 m!845661))

(declare-fun m!845663 () Bool)

(assert (=> tb!51285 m!845663))

(assert (=> d!205942 t!78513))

(declare-fun b_and!57705 () Bool)

(assert (= b_and!57699 (and (=> t!78513 result!57444) b_and!57705)))

(declare-fun tb!51287 () Bool)

(declare-fun t!78515 () Bool)

(assert (=> (and b!585268 (= (toChars!1858 (transformation!1124 (rule!1886 token!491))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))))) t!78515) tb!51287))

(declare-fun result!57446 () Bool)

(assert (= result!57446 result!57444))

(assert (=> d!205942 t!78515))

(declare-fun b_and!57707 () Bool)

(assert (= b_and!57701 (and (=> t!78515 result!57446) b_and!57707)))

(declare-fun tb!51289 () Bool)

(declare-fun t!78517 () Bool)

(assert (=> (and b!585577 (= (toChars!1858 (transformation!1124 (h!11158 (t!78476 rules!3103)))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))))) t!78517) tb!51289))

(declare-fun result!57448 () Bool)

(assert (= result!57448 result!57444))

(assert (=> d!205942 t!78517))

(declare-fun b_and!57709 () Bool)

(assert (= b_and!57703 (and (=> t!78517 result!57448) b_and!57709)))

(declare-fun m!845665 () Bool)

(assert (=> d!205942 m!845665))

(declare-fun m!845667 () Bool)

(assert (=> d!205942 m!845667))

(assert (=> b!585537 d!205942))

(declare-fun d!205944 () Bool)

(assert (=> d!205944 (= (get!2201 lt!248261) (v!16347 lt!248261))))

(assert (=> b!585537 d!205944))

(declare-fun d!205946 () Bool)

(declare-fun charsToBigInt!0 (List!5765 Int) Int)

(assert (=> d!205946 (= (inv!15 (value!36902 token!491)) (= (charsToBigInt!0 (text!8485 (value!36902 token!491)) 0) (value!36897 (value!36902 token!491))))))

(declare-fun bs!70027 () Bool)

(assert (= bs!70027 d!205946))

(declare-fun m!845669 () Bool)

(assert (=> bs!70027 m!845669))

(assert (=> b!585354 d!205946))

(declare-fun d!205948 () Bool)

(declare-fun e!354004 () Bool)

(assert (=> d!205948 e!354004))

(declare-fun res!252299 () Bool)

(assert (=> d!205948 (=> (not res!252299) (not e!354004))))

(declare-fun lt!248292 () List!5766)

(assert (=> d!205948 (= res!252299 (= (content!1024 lt!248292) (set.union (content!1024 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261))))) (content!1024 (_2!3627 (get!2201 lt!248261))))))))

(declare-fun e!354005 () List!5766)

(assert (=> d!205948 (= lt!248292 e!354005)))

(declare-fun c!109480 () Bool)

(assert (=> d!205948 (= c!109480 (is-Nil!5756 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261))))))))

(assert (=> d!205948 (= (++!1612 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261)))) (_2!3627 (get!2201 lt!248261))) lt!248292)))

(declare-fun b!585659 () Bool)

(assert (=> b!585659 (= e!354005 (Cons!5756 (h!11157 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261))))) (++!1612 (t!78475 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261))))) (_2!3627 (get!2201 lt!248261)))))))

(declare-fun b!585661 () Bool)

(assert (=> b!585661 (= e!354004 (or (not (= (_2!3627 (get!2201 lt!248261)) Nil!5756)) (= lt!248292 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261)))))))))

(declare-fun b!585660 () Bool)

(declare-fun res!252298 () Bool)

(assert (=> b!585660 (=> (not res!252298) (not e!354004))))

(assert (=> b!585660 (= res!252298 (= (size!4575 lt!248292) (+ (size!4575 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261))))) (size!4575 (_2!3627 (get!2201 lt!248261))))))))

(declare-fun b!585658 () Bool)

(assert (=> b!585658 (= e!354005 (_2!3627 (get!2201 lt!248261)))))

(assert (= (and d!205948 c!109480) b!585658))

(assert (= (and d!205948 (not c!109480)) b!585659))

(assert (= (and d!205948 res!252299) b!585660))

(assert (= (and b!585660 res!252298) b!585661))

(declare-fun m!845671 () Bool)

(assert (=> d!205948 m!845671))

(assert (=> d!205948 m!845517))

(declare-fun m!845673 () Bool)

(assert (=> d!205948 m!845673))

(declare-fun m!845675 () Bool)

(assert (=> d!205948 m!845675))

(declare-fun m!845677 () Bool)

(assert (=> b!585659 m!845677))

(declare-fun m!845679 () Bool)

(assert (=> b!585660 m!845679))

(assert (=> b!585660 m!845517))

(declare-fun m!845681 () Bool)

(assert (=> b!585660 m!845681))

(assert (=> b!585660 m!845523))

(assert (=> b!585534 d!205948))

(assert (=> b!585534 d!205940))

(assert (=> b!585534 d!205942))

(assert (=> b!585534 d!205944))

(assert (=> b!585425 d!205936))

(declare-fun d!205950 () Bool)

(declare-fun dynLambda!3362 (Int BalanceConc!3690) TokenValue!1148)

(assert (=> d!205950 (= (apply!1381 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))) (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248214))))) (dynLambda!3362 (toValue!1999 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214))))) (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248214))))))))

(declare-fun b_lambda!23081 () Bool)

(assert (=> (not b_lambda!23081) (not d!205950)))

(declare-fun t!78519 () Bool)

(declare-fun tb!51291 () Bool)

(assert (=> (and b!585272 (= (toValue!1999 (transformation!1124 (h!11158 rules!3103))) (toValue!1999 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))))) t!78519) tb!51291))

(declare-fun result!57450 () Bool)

(assert (=> tb!51291 (= result!57450 (inv!21 (dynLambda!3362 (toValue!1999 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214))))) (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248214)))))))))

(declare-fun m!845683 () Bool)

(assert (=> tb!51291 m!845683))

(assert (=> d!205950 t!78519))

(declare-fun b_and!57711 () Bool)

(assert (= b_and!57651 (and (=> t!78519 result!57450) b_and!57711)))

(declare-fun t!78521 () Bool)

(declare-fun tb!51293 () Bool)

(assert (=> (and b!585268 (= (toValue!1999 (transformation!1124 (rule!1886 token!491))) (toValue!1999 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))))) t!78521) tb!51293))

(declare-fun result!57454 () Bool)

(assert (= result!57454 result!57450))

(assert (=> d!205950 t!78521))

(declare-fun b_and!57713 () Bool)

(assert (= b_and!57655 (and (=> t!78521 result!57454) b_and!57713)))

(declare-fun t!78523 () Bool)

(declare-fun tb!51295 () Bool)

(assert (=> (and b!585577 (= (toValue!1999 (transformation!1124 (h!11158 (t!78476 rules!3103)))) (toValue!1999 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))))) t!78523) tb!51295))

(declare-fun result!57456 () Bool)

(assert (= result!57456 result!57450))

(assert (=> d!205950 t!78523))

(declare-fun b_and!57715 () Bool)

(assert (= b_and!57687 (and (=> t!78523 result!57456) b_and!57715)))

(assert (=> d!205950 m!845367))

(declare-fun m!845685 () Bool)

(assert (=> d!205950 m!845685))

(assert (=> b!585425 d!205950))

(declare-fun d!205952 () Bool)

(declare-fun fromListB!571 (List!5766) BalanceConc!3690)

(assert (=> d!205952 (= (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248214)))) (fromListB!571 (originalCharacters!1163 (_1!3627 (get!2201 lt!248214)))))))

(declare-fun bs!70028 () Bool)

(assert (= bs!70028 d!205952))

(declare-fun m!845687 () Bool)

(assert (=> bs!70028 m!845687))

(assert (=> b!585425 d!205952))

(assert (=> b!585430 d!205932))

(assert (=> b!585430 d!205934))

(assert (=> b!585430 d!205936))

(declare-fun bs!70029 () Bool)

(declare-fun d!205954 () Bool)

(assert (= bs!70029 (and d!205954 d!205938)))

(declare-fun lambda!15870 () Int)

(assert (=> bs!70029 (= (and (= (toChars!1858 (transformation!1124 (h!11158 rules!3103))) (toChars!1858 (transformation!1124 (rule!1886 token!491)))) (= (toValue!1999 (transformation!1124 (h!11158 rules!3103))) (toValue!1999 (transformation!1124 (rule!1886 token!491))))) (= lambda!15870 lambda!15869))))

(assert (=> d!205954 true))

(assert (=> d!205954 (< (dynLambda!3359 order!4707 (toChars!1858 (transformation!1124 (h!11158 rules!3103)))) (dynLambda!3360 order!4709 lambda!15870))))

(assert (=> d!205954 true))

(assert (=> d!205954 (< (dynLambda!3361 order!4711 (toValue!1999 (transformation!1124 (h!11158 rules!3103)))) (dynLambda!3360 order!4709 lambda!15870))))

(assert (=> d!205954 (= (semiInverseModEq!436 (toChars!1858 (transformation!1124 (h!11158 rules!3103))) (toValue!1999 (transformation!1124 (h!11158 rules!3103)))) (Forall!291 lambda!15870))))

(declare-fun bs!70030 () Bool)

(assert (= bs!70030 d!205954))

(declare-fun m!845689 () Bool)

(assert (=> bs!70030 m!845689))

(assert (=> d!205824 d!205954))

(declare-fun d!205956 () Bool)

(assert (=> d!205956 (= (head!1235 lt!248155) (h!11157 lt!248155))))

(assert (=> b!585494 d!205956))

(declare-fun d!205958 () Bool)

(assert (=> d!205958 (= (head!1235 input!2705) (h!11157 input!2705))))

(assert (=> b!585494 d!205958))

(declare-fun d!205960 () Bool)

(declare-fun lt!248293 () Int)

(assert (=> d!205960 (>= lt!248293 0)))

(declare-fun e!354009 () Int)

(assert (=> d!205960 (= lt!248293 e!354009)))

(declare-fun c!109481 () Bool)

(assert (=> d!205960 (= c!109481 (is-Nil!5756 (_2!3627 (get!2201 lt!248214))))))

(assert (=> d!205960 (= (size!4575 (_2!3627 (get!2201 lt!248214))) lt!248293)))

(declare-fun b!585664 () Bool)

(assert (=> b!585664 (= e!354009 0)))

(declare-fun b!585665 () Bool)

(assert (=> b!585665 (= e!354009 (+ 1 (size!4575 (t!78475 (_2!3627 (get!2201 lt!248214))))))))

(assert (= (and d!205960 c!109481) b!585664))

(assert (= (and d!205960 (not c!109481)) b!585665))

(declare-fun m!845691 () Bool)

(assert (=> b!585665 m!845691))

(assert (=> b!585432 d!205960))

(assert (=> b!585432 d!205936))

(declare-fun d!205962 () Bool)

(declare-fun lt!248294 () Int)

(assert (=> d!205962 (>= lt!248294 0)))

(declare-fun e!354010 () Int)

(assert (=> d!205962 (= lt!248294 e!354010)))

(declare-fun c!109482 () Bool)

(assert (=> d!205962 (= c!109482 (is-Nil!5756 lt!248154))))

(assert (=> d!205962 (= (size!4575 lt!248154) lt!248294)))

(declare-fun b!585666 () Bool)

(assert (=> b!585666 (= e!354010 0)))

(declare-fun b!585667 () Bool)

(assert (=> b!585667 (= e!354010 (+ 1 (size!4575 (t!78475 lt!248154))))))

(assert (= (and d!205962 c!109482) b!585666))

(assert (= (and d!205962 (not c!109482)) b!585667))

(declare-fun m!845693 () Bool)

(assert (=> b!585667 m!845693))

(assert (=> b!585432 d!205962))

(declare-fun d!205964 () Bool)

(assert (=> d!205964 (= (isEmpty!4159 lt!248214) (not (is-Some!1474 lt!248214)))))

(assert (=> d!205846 d!205964))

(declare-fun b!585668 () Bool)

(declare-fun e!354012 () Bool)

(declare-fun e!354013 () Bool)

(assert (=> b!585668 (= e!354012 e!354013)))

(declare-fun res!252302 () Bool)

(assert (=> b!585668 (=> (not res!252302) (not e!354013))))

(assert (=> b!585668 (= res!252302 (not (is-Nil!5756 lt!248154)))))

(declare-fun d!205966 () Bool)

(declare-fun e!354011 () Bool)

(assert (=> d!205966 e!354011))

(declare-fun res!252301 () Bool)

(assert (=> d!205966 (=> res!252301 e!354011)))

(declare-fun lt!248295 () Bool)

(assert (=> d!205966 (= res!252301 (not lt!248295))))

(assert (=> d!205966 (= lt!248295 e!354012)))

(declare-fun res!252303 () Bool)

(assert (=> d!205966 (=> res!252303 e!354012)))

(assert (=> d!205966 (= res!252303 (is-Nil!5756 lt!248154))))

(assert (=> d!205966 (= (isPrefix!752 lt!248154 lt!248154) lt!248295)))

(declare-fun b!585671 () Bool)

(assert (=> b!585671 (= e!354011 (>= (size!4575 lt!248154) (size!4575 lt!248154)))))

(declare-fun b!585669 () Bool)

(declare-fun res!252300 () Bool)

(assert (=> b!585669 (=> (not res!252300) (not e!354013))))

(assert (=> b!585669 (= res!252300 (= (head!1235 lt!248154) (head!1235 lt!248154)))))

(declare-fun b!585670 () Bool)

(assert (=> b!585670 (= e!354013 (isPrefix!752 (tail!764 lt!248154) (tail!764 lt!248154)))))

(assert (= (and d!205966 (not res!252303)) b!585668))

(assert (= (and b!585668 res!252302) b!585669))

(assert (= (and b!585669 res!252300) b!585670))

(assert (= (and d!205966 (not res!252301)) b!585671))

(assert (=> b!585671 m!845351))

(assert (=> b!585671 m!845351))

(declare-fun m!845695 () Bool)

(assert (=> b!585669 m!845695))

(assert (=> b!585669 m!845695))

(declare-fun m!845697 () Bool)

(assert (=> b!585670 m!845697))

(assert (=> b!585670 m!845697))

(assert (=> b!585670 m!845697))

(assert (=> b!585670 m!845697))

(declare-fun m!845699 () Bool)

(assert (=> b!585670 m!845699))

(assert (=> d!205846 d!205966))

(declare-fun d!205968 () Bool)

(assert (=> d!205968 (isPrefix!752 lt!248154 lt!248154)))

(declare-fun lt!248298 () Unit!10454)

(declare-fun choose!4206 (List!5766 List!5766) Unit!10454)

(assert (=> d!205968 (= lt!248298 (choose!4206 lt!248154 lt!248154))))

(assert (=> d!205968 (= (lemmaIsPrefixRefl!488 lt!248154 lt!248154) lt!248298)))

(declare-fun bs!70031 () Bool)

(assert (= bs!70031 d!205968))

(assert (=> bs!70031 m!845359))

(declare-fun m!845701 () Bool)

(assert (=> bs!70031 m!845701))

(assert (=> d!205846 d!205968))

(declare-fun d!205970 () Bool)

(assert (=> d!205970 true))

(declare-fun lt!248301 () Bool)

(declare-fun lambda!15873 () Int)

(declare-fun forall!1543 (List!5767 Int) Bool)

(assert (=> d!205970 (= lt!248301 (forall!1543 rules!3103 lambda!15873))))

(declare-fun e!354018 () Bool)

(assert (=> d!205970 (= lt!248301 e!354018)))

(declare-fun res!252309 () Bool)

(assert (=> d!205970 (=> res!252309 e!354018)))

(assert (=> d!205970 (= res!252309 (not (is-Cons!5757 rules!3103)))))

(assert (=> d!205970 (= (rulesValidInductive!405 thiss!22590 rules!3103) lt!248301)))

(declare-fun b!585676 () Bool)

(declare-fun e!354019 () Bool)

(assert (=> b!585676 (= e!354018 e!354019)))

(declare-fun res!252308 () Bool)

(assert (=> b!585676 (=> (not res!252308) (not e!354019))))

(declare-fun ruleValid!326 (LexerInterface!1010 Rule!2048) Bool)

(assert (=> b!585676 (= res!252308 (ruleValid!326 thiss!22590 (h!11158 rules!3103)))))

(declare-fun b!585677 () Bool)

(assert (=> b!585677 (= e!354019 (rulesValidInductive!405 thiss!22590 (t!78476 rules!3103)))))

(assert (= (and d!205970 (not res!252309)) b!585676))

(assert (= (and b!585676 res!252308) b!585677))

(declare-fun m!845705 () Bool)

(assert (=> d!205970 m!845705))

(declare-fun m!845707 () Bool)

(assert (=> b!585676 m!845707))

(declare-fun m!845709 () Bool)

(assert (=> b!585677 m!845709))

(assert (=> d!205846 d!205970))

(declare-fun d!205978 () Bool)

(declare-fun lt!248303 () List!5766)

(assert (=> d!205978 (= (++!1612 (t!78475 lt!248155) lt!248303) (tail!764 input!2705))))

(declare-fun e!354020 () List!5766)

(assert (=> d!205978 (= lt!248303 e!354020)))

(declare-fun c!109483 () Bool)

(assert (=> d!205978 (= c!109483 (is-Cons!5756 (t!78475 lt!248155)))))

(assert (=> d!205978 (>= (size!4575 (tail!764 input!2705)) (size!4575 (t!78475 lt!248155)))))

(assert (=> d!205978 (= (getSuffix!269 (tail!764 input!2705) (t!78475 lt!248155)) lt!248303)))

(declare-fun b!585680 () Bool)

(assert (=> b!585680 (= e!354020 (getSuffix!269 (tail!764 (tail!764 input!2705)) (t!78475 (t!78475 lt!248155))))))

(declare-fun b!585681 () Bool)

(assert (=> b!585681 (= e!354020 (tail!764 input!2705))))

(assert (= (and d!205978 c!109483) b!585680))

(assert (= (and d!205978 (not c!109483)) b!585681))

(declare-fun m!845711 () Bool)

(assert (=> d!205978 m!845711))

(assert (=> d!205978 m!845435))

(declare-fun m!845713 () Bool)

(assert (=> d!205978 m!845713))

(assert (=> d!205978 m!845471))

(assert (=> b!585680 m!845435))

(declare-fun m!845715 () Bool)

(assert (=> b!585680 m!845715))

(assert (=> b!585680 m!845715))

(declare-fun m!845717 () Bool)

(assert (=> b!585680 m!845717))

(assert (=> b!585530 d!205978))

(declare-fun d!205980 () Bool)

(assert (=> d!205980 (= (tail!764 input!2705) (t!78475 input!2705))))

(assert (=> b!585530 d!205980))

(declare-fun d!205982 () Bool)

(declare-fun lt!248304 () Int)

(assert (=> d!205982 (>= lt!248304 0)))

(declare-fun e!354022 () Int)

(assert (=> d!205982 (= lt!248304 e!354022)))

(declare-fun c!109484 () Bool)

(assert (=> d!205982 (= c!109484 (is-Nil!5756 lt!248231))))

(assert (=> d!205982 (= (size!4575 lt!248231) lt!248304)))

(declare-fun b!585683 () Bool)

(assert (=> b!585683 (= e!354022 0)))

(declare-fun b!585684 () Bool)

(assert (=> b!585684 (= e!354022 (+ 1 (size!4575 (t!78475 lt!248231))))))

(assert (= (and d!205982 c!109484) b!585683))

(assert (= (and d!205982 (not c!109484)) b!585684))

(declare-fun m!845727 () Bool)

(assert (=> b!585684 m!845727))

(assert (=> b!585467 d!205982))

(assert (=> b!585467 d!205866))

(declare-fun d!205988 () Bool)

(declare-fun lt!248305 () Int)

(assert (=> d!205988 (>= lt!248305 0)))

(declare-fun e!354023 () Int)

(assert (=> d!205988 (= lt!248305 e!354023)))

(declare-fun c!109485 () Bool)

(assert (=> d!205988 (= c!109485 (is-Nil!5756 suffix!1342))))

(assert (=> d!205988 (= (size!4575 suffix!1342) lt!248305)))

(declare-fun b!585685 () Bool)

(assert (=> b!585685 (= e!354023 0)))

(declare-fun b!585686 () Bool)

(assert (=> b!585686 (= e!354023 (+ 1 (size!4575 (t!78475 suffix!1342))))))

(assert (= (and d!205988 c!109485) b!585685))

(assert (= (and d!205988 (not c!109485)) b!585686))

(declare-fun m!845729 () Bool)

(assert (=> b!585686 m!845729))

(assert (=> b!585467 d!205988))

(declare-fun d!205990 () Bool)

(declare-fun lt!248306 () Int)

(assert (=> d!205990 (>= lt!248306 0)))

(declare-fun e!354024 () Int)

(assert (=> d!205990 (= lt!248306 e!354024)))

(declare-fun c!109486 () Bool)

(assert (=> d!205990 (= c!109486 (is-Nil!5756 lt!248230))))

(assert (=> d!205990 (= (size!4575 lt!248230) lt!248306)))

(declare-fun b!585687 () Bool)

(assert (=> b!585687 (= e!354024 0)))

(declare-fun b!585688 () Bool)

(assert (=> b!585688 (= e!354024 (+ 1 (size!4575 (t!78475 lt!248230))))))

(assert (= (and d!205990 c!109486) b!585687))

(assert (= (and d!205990 (not c!109486)) b!585688))

(declare-fun m!845731 () Bool)

(assert (=> b!585688 m!845731))

(assert (=> b!585462 d!205990))

(declare-fun d!205992 () Bool)

(declare-fun lt!248307 () Int)

(assert (=> d!205992 (>= lt!248307 0)))

(declare-fun e!354025 () Int)

(assert (=> d!205992 (= lt!248307 e!354025)))

(declare-fun c!109487 () Bool)

(assert (=> d!205992 (= c!109487 (is-Nil!5756 input!2705))))

(assert (=> d!205992 (= (size!4575 input!2705) lt!248307)))

(declare-fun b!585689 () Bool)

(assert (=> b!585689 (= e!354025 0)))

(declare-fun b!585690 () Bool)

(assert (=> b!585690 (= e!354025 (+ 1 (size!4575 (t!78475 input!2705))))))

(assert (= (and d!205992 c!109487) b!585689))

(assert (= (and d!205992 (not c!109487)) b!585690))

(declare-fun m!845733 () Bool)

(assert (=> b!585690 m!845733))

(assert (=> b!585462 d!205992))

(assert (=> b!585462 d!205988))

(declare-fun d!205994 () Bool)

(assert (=> d!205994 (= (isDefined!1286 lt!248214) (not (isEmpty!4159 lt!248214)))))

(declare-fun bs!70033 () Bool)

(assert (= bs!70033 d!205994))

(assert (=> bs!70033 m!845357))

(assert (=> b!585429 d!205994))

(declare-fun d!205996 () Bool)

(declare-fun e!354026 () Bool)

(assert (=> d!205996 e!354026))

(declare-fun res!252311 () Bool)

(assert (=> d!205996 (=> (not res!252311) (not e!354026))))

(declare-fun lt!248308 () List!5766)

(assert (=> d!205996 (= res!252311 (= (content!1024 lt!248308) (set.union (content!1024 lt!248155) (content!1024 lt!248259))))))

(declare-fun e!354027 () List!5766)

(assert (=> d!205996 (= lt!248308 e!354027)))

(declare-fun c!109488 () Bool)

(assert (=> d!205996 (= c!109488 (is-Nil!5756 lt!248155))))

(assert (=> d!205996 (= (++!1612 lt!248155 lt!248259) lt!248308)))

(declare-fun b!585692 () Bool)

(assert (=> b!585692 (= e!354027 (Cons!5756 (h!11157 lt!248155) (++!1612 (t!78475 lt!248155) lt!248259)))))

(declare-fun b!585694 () Bool)

(assert (=> b!585694 (= e!354026 (or (not (= lt!248259 Nil!5756)) (= lt!248308 lt!248155)))))

(declare-fun b!585693 () Bool)

(declare-fun res!252310 () Bool)

(assert (=> b!585693 (=> (not res!252310) (not e!354026))))

(assert (=> b!585693 (= res!252310 (= (size!4575 lt!248308) (+ (size!4575 lt!248155) (size!4575 lt!248259))))))

(declare-fun b!585691 () Bool)

(assert (=> b!585691 (= e!354027 lt!248259)))

(assert (= (and d!205996 c!109488) b!585691))

(assert (= (and d!205996 (not c!109488)) b!585692))

(assert (= (and d!205996 res!252311) b!585693))

(assert (= (and b!585693 res!252310) b!585694))

(declare-fun m!845735 () Bool)

(assert (=> d!205996 m!845735))

(assert (=> d!205996 m!845403))

(declare-fun m!845737 () Bool)

(assert (=> d!205996 m!845737))

(declare-fun m!845739 () Bool)

(assert (=> b!585692 m!845739))

(declare-fun m!845741 () Bool)

(assert (=> b!585693 m!845741))

(assert (=> b!585693 m!845153))

(declare-fun m!845743 () Bool)

(assert (=> b!585693 m!845743))

(assert (=> d!205884 d!205996))

(assert (=> d!205884 d!205992))

(assert (=> d!205884 d!205872))

(declare-fun d!205998 () Bool)

(declare-fun lt!248309 () Int)

(assert (=> d!205998 (>= lt!248309 0)))

(declare-fun e!354028 () Int)

(assert (=> d!205998 (= lt!248309 e!354028)))

(declare-fun c!109489 () Bool)

(assert (=> d!205998 (= c!109489 (is-Nil!5756 (_2!3627 (get!2201 lt!248261))))))

(assert (=> d!205998 (= (size!4575 (_2!3627 (get!2201 lt!248261))) lt!248309)))

(declare-fun b!585695 () Bool)

(assert (=> b!585695 (= e!354028 0)))

(declare-fun b!585696 () Bool)

(assert (=> b!585696 (= e!354028 (+ 1 (size!4575 (t!78475 (_2!3627 (get!2201 lt!248261))))))))

(assert (= (and d!205998 c!109489) b!585695))

(assert (= (and d!205998 (not c!109489)) b!585696))

(declare-fun m!845745 () Bool)

(assert (=> b!585696 m!845745))

(assert (=> b!585539 d!205998))

(assert (=> b!585539 d!205944))

(assert (=> b!585539 d!205992))

(declare-fun d!206000 () Bool)

(declare-fun lt!248310 () Int)

(assert (=> d!206000 (>= lt!248310 0)))

(declare-fun e!354029 () Int)

(assert (=> d!206000 (= lt!248310 e!354029)))

(declare-fun c!109490 () Bool)

(assert (=> d!206000 (= c!109490 (is-Nil!5756 lt!248232))))

(assert (=> d!206000 (= (size!4575 lt!248232) lt!248310)))

(declare-fun b!585697 () Bool)

(assert (=> b!585697 (= e!354029 0)))

(declare-fun b!585698 () Bool)

(assert (=> b!585698 (= e!354029 (+ 1 (size!4575 (t!78475 lt!248232))))))

(assert (= (and d!206000 c!109490) b!585697))

(assert (= (and d!206000 (not c!109490)) b!585698))

(declare-fun m!845747 () Bool)

(assert (=> b!585698 m!845747))

(assert (=> b!585474 d!206000))

(assert (=> b!585474 d!205872))

(declare-fun d!206002 () Bool)

(declare-fun lt!248311 () Int)

(assert (=> d!206002 (>= lt!248311 0)))

(declare-fun e!354030 () Int)

(assert (=> d!206002 (= lt!248311 e!354030)))

(declare-fun c!109491 () Bool)

(assert (=> d!206002 (= c!109491 (is-Nil!5756 (_2!3627 (v!16347 lt!248157))))))

(assert (=> d!206002 (= (size!4575 (_2!3627 (v!16347 lt!248157))) lt!248311)))

(declare-fun b!585699 () Bool)

(assert (=> b!585699 (= e!354030 0)))

(declare-fun b!585700 () Bool)

(assert (=> b!585700 (= e!354030 (+ 1 (size!4575 (t!78475 (_2!3627 (v!16347 lt!248157))))))))

(assert (= (and d!206002 c!109491) b!585699))

(assert (= (and d!206002 (not c!109491)) b!585700))

(declare-fun m!845749 () Bool)

(assert (=> b!585700 m!845749))

(assert (=> b!585474 d!206002))

(declare-fun d!206004 () Bool)

(declare-fun c!109494 () Bool)

(assert (=> d!206004 (= c!109494 (is-Node!1841 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157)))))))))

(declare-fun e!354035 () Bool)

(assert (=> d!206004 (= (inv!7271 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157)))))) e!354035)))

(declare-fun b!585707 () Bool)

(declare-fun inv!7275 (Conc!1841) Bool)

(assert (=> b!585707 (= e!354035 (inv!7275 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157)))))))))

(declare-fun b!585708 () Bool)

(declare-fun e!354036 () Bool)

(assert (=> b!585708 (= e!354035 e!354036)))

(declare-fun res!252314 () Bool)

(assert (=> b!585708 (= res!252314 (not (is-Leaf!2911 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157))))))))))

(assert (=> b!585708 (=> res!252314 e!354036)))

(declare-fun b!585709 () Bool)

(declare-fun inv!7276 (Conc!1841) Bool)

(assert (=> b!585709 (= e!354036 (inv!7276 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157)))))))))

(assert (= (and d!206004 c!109494) b!585707))

(assert (= (and d!206004 (not c!109494)) b!585708))

(assert (= (and b!585708 (not res!252314)) b!585709))

(declare-fun m!845751 () Bool)

(assert (=> b!585707 m!845751))

(declare-fun m!845753 () Bool)

(assert (=> b!585709 m!845753))

(assert (=> b!585509 d!206004))

(declare-fun d!206006 () Bool)

(assert (=> d!206006 (= (inv!7264 (tag!1386 (h!11158 (t!78476 rules!3103)))) (= (mod (str.len (value!36901 (tag!1386 (h!11158 (t!78476 rules!3103))))) 2) 0))))

(assert (=> b!585576 d!206006))

(declare-fun d!206008 () Bool)

(declare-fun res!252315 () Bool)

(declare-fun e!354039 () Bool)

(assert (=> d!206008 (=> (not res!252315) (not e!354039))))

(assert (=> d!206008 (= res!252315 (semiInverseModEq!436 (toChars!1858 (transformation!1124 (h!11158 (t!78476 rules!3103)))) (toValue!1999 (transformation!1124 (h!11158 (t!78476 rules!3103))))))))

(assert (=> d!206008 (= (inv!7267 (transformation!1124 (h!11158 (t!78476 rules!3103)))) e!354039)))

(declare-fun b!585714 () Bool)

(assert (=> b!585714 (= e!354039 (equivClasses!419 (toChars!1858 (transformation!1124 (h!11158 (t!78476 rules!3103)))) (toValue!1999 (transformation!1124 (h!11158 (t!78476 rules!3103))))))))

(assert (= (and d!206008 res!252315) b!585714))

(declare-fun m!845755 () Bool)

(assert (=> d!206008 m!845755))

(declare-fun m!845757 () Bool)

(assert (=> b!585714 m!845757))

(assert (=> b!585576 d!206008))

(assert (=> b!585519 d!205956))

(declare-fun d!206010 () Bool)

(assert (=> d!206010 (= (head!1235 lt!248146) (h!11157 lt!248146))))

(assert (=> b!585519 d!206010))

(declare-fun d!206012 () Bool)

(declare-fun lt!248314 () Int)

(assert (=> d!206012 (>= lt!248314 0)))

(declare-fun e!354040 () Int)

(assert (=> d!206012 (= lt!248314 e!354040)))

(declare-fun c!109497 () Bool)

(assert (=> d!206012 (= c!109497 (is-Nil!5756 (t!78475 lt!248153)))))

(assert (=> d!206012 (= (size!4575 (t!78475 lt!248153)) lt!248314)))

(declare-fun b!585717 () Bool)

(assert (=> b!585717 (= e!354040 0)))

(declare-fun b!585718 () Bool)

(assert (=> b!585718 (= e!354040 (+ 1 (size!4575 (t!78475 (t!78475 lt!248153)))))))

(assert (= (and d!206012 c!109497) b!585717))

(assert (= (and d!206012 (not c!109497)) b!585718))

(declare-fun m!845759 () Bool)

(assert (=> b!585718 m!845759))

(assert (=> b!585506 d!206012))

(declare-fun b!585727 () Bool)

(declare-fun e!354048 () Bool)

(declare-fun e!354049 () Bool)

(assert (=> b!585727 (= e!354048 e!354049)))

(declare-fun res!252320 () Bool)

(assert (=> b!585727 (=> (not res!252320) (not e!354049))))

(assert (=> b!585727 (= res!252320 (not (is-Nil!5756 (tail!764 input!2705))))))

(declare-fun d!206014 () Bool)

(declare-fun e!354047 () Bool)

(assert (=> d!206014 e!354047))

(declare-fun res!252319 () Bool)

(assert (=> d!206014 (=> res!252319 e!354047)))

(declare-fun lt!248315 () Bool)

(assert (=> d!206014 (= res!252319 (not lt!248315))))

(assert (=> d!206014 (= lt!248315 e!354048)))

(declare-fun res!252321 () Bool)

(assert (=> d!206014 (=> res!252321 e!354048)))

(assert (=> d!206014 (= res!252321 (is-Nil!5756 (tail!764 lt!248155)))))

(assert (=> d!206014 (= (isPrefix!752 (tail!764 lt!248155) (tail!764 input!2705)) lt!248315)))

(declare-fun b!585730 () Bool)

(assert (=> b!585730 (= e!354047 (>= (size!4575 (tail!764 input!2705)) (size!4575 (tail!764 lt!248155))))))

(declare-fun b!585728 () Bool)

(declare-fun res!252318 () Bool)

(assert (=> b!585728 (=> (not res!252318) (not e!354049))))

(assert (=> b!585728 (= res!252318 (= (head!1235 (tail!764 lt!248155)) (head!1235 (tail!764 input!2705))))))

(declare-fun b!585729 () Bool)

(assert (=> b!585729 (= e!354049 (isPrefix!752 (tail!764 (tail!764 lt!248155)) (tail!764 (tail!764 input!2705))))))

(assert (= (and d!206014 (not res!252321)) b!585727))

(assert (= (and b!585727 res!252320) b!585728))

(assert (= (and b!585728 res!252318) b!585729))

(assert (= (and d!206014 (not res!252319)) b!585730))

(assert (=> b!585730 m!845435))

(assert (=> b!585730 m!845713))

(assert (=> b!585730 m!845433))

(declare-fun m!845761 () Bool)

(assert (=> b!585730 m!845761))

(assert (=> b!585728 m!845433))

(declare-fun m!845763 () Bool)

(assert (=> b!585728 m!845763))

(assert (=> b!585728 m!845435))

(declare-fun m!845765 () Bool)

(assert (=> b!585728 m!845765))

(assert (=> b!585729 m!845433))

(declare-fun m!845767 () Bool)

(assert (=> b!585729 m!845767))

(assert (=> b!585729 m!845435))

(assert (=> b!585729 m!845715))

(assert (=> b!585729 m!845767))

(assert (=> b!585729 m!845715))

(declare-fun m!845769 () Bool)

(assert (=> b!585729 m!845769))

(assert (=> b!585495 d!206014))

(declare-fun d!206016 () Bool)

(assert (=> d!206016 (= (tail!764 lt!248155) (t!78475 lt!248155))))

(assert (=> b!585495 d!206016))

(assert (=> b!585495 d!205980))

(declare-fun d!206018 () Bool)

(declare-fun lt!248318 () Bool)

(declare-fun content!1026 (List!5767) (Set Rule!2048))

(assert (=> d!206018 (= lt!248318 (set.member (rule!1886 (_1!3627 (get!2201 lt!248214))) (content!1026 rules!3103)))))

(declare-fun e!354060 () Bool)

(assert (=> d!206018 (= lt!248318 e!354060)))

(declare-fun res!252341 () Bool)

(assert (=> d!206018 (=> (not res!252341) (not e!354060))))

(assert (=> d!206018 (= res!252341 (is-Cons!5757 rules!3103))))

(assert (=> d!206018 (= (contains!1354 rules!3103 (rule!1886 (_1!3627 (get!2201 lt!248214)))) lt!248318)))

(declare-fun b!585749 () Bool)

(declare-fun e!354061 () Bool)

(assert (=> b!585749 (= e!354060 e!354061)))

(declare-fun res!252340 () Bool)

(assert (=> b!585749 (=> res!252340 e!354061)))

(assert (=> b!585749 (= res!252340 (= (h!11158 rules!3103) (rule!1886 (_1!3627 (get!2201 lt!248214)))))))

(declare-fun b!585750 () Bool)

(assert (=> b!585750 (= e!354061 (contains!1354 (t!78476 rules!3103) (rule!1886 (_1!3627 (get!2201 lt!248214)))))))

(assert (= (and d!206018 res!252341) b!585749))

(assert (= (and b!585749 (not res!252340)) b!585750))

(declare-fun m!845771 () Bool)

(assert (=> d!206018 m!845771))

(declare-fun m!845773 () Bool)

(assert (=> d!206018 m!845773))

(declare-fun m!845775 () Bool)

(assert (=> b!585750 m!845775))

(assert (=> b!585433 d!206018))

(assert (=> b!585433 d!205936))

(declare-fun b!585775 () Bool)

(declare-fun e!354074 () List!5766)

(declare-fun list!2403 (IArray!3683) List!5766)

(assert (=> b!585775 (= e!354074 (list!2403 (xs!4478 (c!109428 (charsOf!753 token!491)))))))

(declare-fun b!585776 () Bool)

(assert (=> b!585776 (= e!354074 (++!1612 (list!2401 (left!4692 (c!109428 (charsOf!753 token!491)))) (list!2401 (right!5022 (c!109428 (charsOf!753 token!491))))))))

(declare-fun d!206020 () Bool)

(declare-fun c!109509 () Bool)

(assert (=> d!206020 (= c!109509 (is-Empty!1841 (c!109428 (charsOf!753 token!491))))))

(declare-fun e!354073 () List!5766)

(assert (=> d!206020 (= (list!2401 (c!109428 (charsOf!753 token!491))) e!354073)))

(declare-fun b!585773 () Bool)

(assert (=> b!585773 (= e!354073 Nil!5756)))

(declare-fun b!585774 () Bool)

(assert (=> b!585774 (= e!354073 e!354074)))

(declare-fun c!109510 () Bool)

(assert (=> b!585774 (= c!109510 (is-Leaf!2911 (c!109428 (charsOf!753 token!491))))))

(assert (= (and d!206020 c!109509) b!585773))

(assert (= (and d!206020 (not c!109509)) b!585774))

(assert (= (and b!585774 c!109510) b!585775))

(assert (= (and b!585774 (not c!109510)) b!585776))

(declare-fun m!845789 () Bool)

(assert (=> b!585775 m!845789))

(declare-fun m!845793 () Bool)

(assert (=> b!585776 m!845793))

(declare-fun m!845795 () Bool)

(assert (=> b!585776 m!845795))

(assert (=> b!585776 m!845793))

(assert (=> b!585776 m!845795))

(declare-fun m!845799 () Bool)

(assert (=> b!585776 m!845799))

(assert (=> d!205830 d!206020))

(declare-fun d!206022 () Bool)

(declare-fun lt!248320 () Int)

(assert (=> d!206022 (>= lt!248320 0)))

(declare-fun e!354075 () Int)

(assert (=> d!206022 (= lt!248320 e!354075)))

(declare-fun c!109511 () Bool)

(assert (=> d!206022 (= c!109511 (is-Nil!5756 (originalCharacters!1163 token!491)))))

(assert (=> d!206022 (= (size!4575 (originalCharacters!1163 token!491)) lt!248320)))

(declare-fun b!585777 () Bool)

(assert (=> b!585777 (= e!354075 0)))

(declare-fun b!585778 () Bool)

(assert (=> b!585778 (= e!354075 (+ 1 (size!4575 (t!78475 (originalCharacters!1163 token!491)))))))

(assert (= (and d!206022 c!109511) b!585777))

(assert (= (and d!206022 (not c!109511)) b!585778))

(declare-fun m!845801 () Bool)

(assert (=> b!585778 m!845801))

(assert (=> d!205888 d!206022))

(declare-fun d!206028 () Bool)

(declare-fun lt!248321 () Int)

(assert (=> d!206028 (>= lt!248321 0)))

(declare-fun e!354076 () Int)

(assert (=> d!206028 (= lt!248321 e!354076)))

(declare-fun c!109512 () Bool)

(assert (=> d!206028 (= c!109512 (is-Nil!5756 (originalCharacters!1163 (_1!3627 (v!16347 lt!248157)))))))

(assert (=> d!206028 (= (size!4575 (originalCharacters!1163 (_1!3627 (v!16347 lt!248157)))) lt!248321)))

(declare-fun b!585779 () Bool)

(assert (=> b!585779 (= e!354076 0)))

(declare-fun b!585780 () Bool)

(assert (=> b!585780 (= e!354076 (+ 1 (size!4575 (t!78475 (originalCharacters!1163 (_1!3627 (v!16347 lt!248157)))))))))

(assert (= (and d!206028 c!109512) b!585779))

(assert (= (and d!206028 (not c!109512)) b!585780))

(declare-fun m!845805 () Bool)

(assert (=> b!585780 m!845805))

(assert (=> d!205890 d!206028))

(declare-fun b!585783 () Bool)

(declare-fun e!354078 () List!5766)

(assert (=> b!585783 (= e!354078 (list!2403 (xs!4478 (c!109428 (charsOf!753 (_1!3627 (v!16347 lt!248157)))))))))

(declare-fun b!585784 () Bool)

(assert (=> b!585784 (= e!354078 (++!1612 (list!2401 (left!4692 (c!109428 (charsOf!753 (_1!3627 (v!16347 lt!248157)))))) (list!2401 (right!5022 (c!109428 (charsOf!753 (_1!3627 (v!16347 lt!248157))))))))))

(declare-fun d!206032 () Bool)

(declare-fun c!109513 () Bool)

(assert (=> d!206032 (= c!109513 (is-Empty!1841 (c!109428 (charsOf!753 (_1!3627 (v!16347 lt!248157))))))))

(declare-fun e!354077 () List!5766)

(assert (=> d!206032 (= (list!2401 (c!109428 (charsOf!753 (_1!3627 (v!16347 lt!248157))))) e!354077)))

(declare-fun b!585781 () Bool)

(assert (=> b!585781 (= e!354077 Nil!5756)))

(declare-fun b!585782 () Bool)

(assert (=> b!585782 (= e!354077 e!354078)))

(declare-fun c!109514 () Bool)

(assert (=> b!585782 (= c!109514 (is-Leaf!2911 (c!109428 (charsOf!753 (_1!3627 (v!16347 lt!248157))))))))

(assert (= (and d!206032 c!109513) b!585781))

(assert (= (and d!206032 (not c!109513)) b!585782))

(assert (= (and b!585782 c!109514) b!585783))

(assert (= (and b!585782 (not c!109514)) b!585784))

(declare-fun m!845807 () Bool)

(assert (=> b!585783 m!845807))

(declare-fun m!845809 () Bool)

(assert (=> b!585784 m!845809))

(declare-fun m!845811 () Bool)

(assert (=> b!585784 m!845811))

(assert (=> b!585784 m!845809))

(assert (=> b!585784 m!845811))

(declare-fun m!845815 () Bool)

(assert (=> b!585784 m!845815))

(assert (=> d!205870 d!206032))

(assert (=> b!585532 d!205944))

(declare-fun d!206034 () Bool)

(assert (=> d!206034 (= (apply!1381 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))) (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248261))))) (dynLambda!3362 (toValue!1999 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261))))) (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248261))))))))

(declare-fun b_lambda!23087 () Bool)

(assert (=> (not b_lambda!23087) (not d!206034)))

(declare-fun t!78538 () Bool)

(declare-fun tb!51309 () Bool)

(assert (=> (and b!585272 (= (toValue!1999 (transformation!1124 (h!11158 rules!3103))) (toValue!1999 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))))) t!78538) tb!51309))

(declare-fun result!57470 () Bool)

(assert (=> tb!51309 (= result!57470 (inv!21 (dynLambda!3362 (toValue!1999 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261))))) (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248261)))))))))

(declare-fun m!845823 () Bool)

(assert (=> tb!51309 m!845823))

(assert (=> d!206034 t!78538))

(declare-fun b_and!57729 () Bool)

(assert (= b_and!57711 (and (=> t!78538 result!57470) b_and!57729)))

(declare-fun tb!51311 () Bool)

(declare-fun t!78540 () Bool)

(assert (=> (and b!585268 (= (toValue!1999 (transformation!1124 (rule!1886 token!491))) (toValue!1999 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))))) t!78540) tb!51311))

(declare-fun result!57472 () Bool)

(assert (= result!57472 result!57470))

(assert (=> d!206034 t!78540))

(declare-fun b_and!57731 () Bool)

(assert (= b_and!57713 (and (=> t!78540 result!57472) b_and!57731)))

(declare-fun tb!51313 () Bool)

(declare-fun t!78542 () Bool)

(assert (=> (and b!585577 (= (toValue!1999 (transformation!1124 (h!11158 (t!78476 rules!3103)))) (toValue!1999 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))))) t!78542) tb!51313))

(declare-fun result!57474 () Bool)

(assert (= result!57474 result!57470))

(assert (=> d!206034 t!78542))

(declare-fun b_and!57733 () Bool)

(assert (= b_and!57715 (and (=> t!78542 result!57474) b_and!57733)))

(assert (=> d!206034 m!845541))

(declare-fun m!845825 () Bool)

(assert (=> d!206034 m!845825))

(assert (=> b!585532 d!206034))

(declare-fun d!206040 () Bool)

(assert (=> d!206040 (= (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248261)))) (fromListB!571 (originalCharacters!1163 (_1!3627 (get!2201 lt!248261)))))))

(declare-fun bs!70036 () Bool)

(assert (= bs!70036 d!206040))

(declare-fun m!845827 () Bool)

(assert (=> bs!70036 m!845827))

(assert (=> b!585532 d!206040))

(declare-fun d!206042 () Bool)

(assert (=> d!206042 (= (list!2399 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491))) (list!2401 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491)))))))

(declare-fun bs!70037 () Bool)

(assert (= bs!70037 d!206042))

(declare-fun m!845829 () Bool)

(assert (=> bs!70037 m!845829))

(assert (=> b!585369 d!206042))

(declare-fun d!206044 () Bool)

(assert (=> d!206044 (= (list!2399 lt!248249) (list!2401 (c!109428 lt!248249)))))

(declare-fun bs!70038 () Bool)

(assert (= bs!70038 d!206044))

(declare-fun m!845831 () Bool)

(assert (=> bs!70038 m!845831))

(assert (=> d!205878 d!206044))

(declare-fun d!206046 () Bool)

(declare-fun lt!248323 () Int)

(assert (=> d!206046 (>= lt!248323 0)))

(declare-fun e!354083 () Int)

(assert (=> d!206046 (= lt!248323 e!354083)))

(declare-fun c!109517 () Bool)

(assert (=> d!206046 (= c!109517 (is-Nil!5756 lt!248146))))

(assert (=> d!206046 (= (size!4575 lt!248146) lt!248323)))

(declare-fun b!585790 () Bool)

(assert (=> b!585790 (= e!354083 0)))

(declare-fun b!585791 () Bool)

(assert (=> b!585791 (= e!354083 (+ 1 (size!4575 (t!78475 lt!248146))))))

(assert (= (and d!206046 c!109517) b!585790))

(assert (= (and d!206046 (not c!109517)) b!585791))

(declare-fun m!845833 () Bool)

(assert (=> b!585791 m!845833))

(assert (=> b!585521 d!206046))

(assert (=> b!585521 d!205872))

(declare-fun d!206048 () Bool)

(declare-fun isBalanced!517 (Conc!1841) Bool)

(assert (=> d!206048 (= (inv!7272 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157))))) (isBalanced!517 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157)))))))))

(declare-fun bs!70040 () Bool)

(assert (= bs!70040 d!206048))

(declare-fun m!845849 () Bool)

(assert (=> bs!70040 m!845849))

(assert (=> tb!51263 d!206048))

(declare-fun b!585798 () Bool)

(declare-fun e!354088 () Bool)

(declare-fun e!354089 () Bool)

(assert (=> b!585798 (= e!354088 e!354089)))

(declare-fun res!252352 () Bool)

(assert (=> b!585798 (=> (not res!252352) (not e!354089))))

(assert (=> b!585798 (= res!252352 (not (is-Nil!5756 (++!1612 lt!248155 (_2!3627 (v!16347 lt!248157))))))))

(declare-fun d!206058 () Bool)

(declare-fun e!354087 () Bool)

(assert (=> d!206058 e!354087))

(declare-fun res!252351 () Bool)

(assert (=> d!206058 (=> res!252351 e!354087)))

(declare-fun lt!248324 () Bool)

(assert (=> d!206058 (= res!252351 (not lt!248324))))

(assert (=> d!206058 (= lt!248324 e!354088)))

(declare-fun res!252353 () Bool)

(assert (=> d!206058 (=> res!252353 e!354088)))

(assert (=> d!206058 (= res!252353 (is-Nil!5756 lt!248155))))

(assert (=> d!206058 (= (isPrefix!752 lt!248155 (++!1612 lt!248155 (_2!3627 (v!16347 lt!248157)))) lt!248324)))

(declare-fun b!585801 () Bool)

(assert (=> b!585801 (= e!354087 (>= (size!4575 (++!1612 lt!248155 (_2!3627 (v!16347 lt!248157)))) (size!4575 lt!248155)))))

(declare-fun b!585799 () Bool)

(declare-fun res!252350 () Bool)

(assert (=> b!585799 (=> (not res!252350) (not e!354089))))

(assert (=> b!585799 (= res!252350 (= (head!1235 lt!248155) (head!1235 (++!1612 lt!248155 (_2!3627 (v!16347 lt!248157))))))))

(declare-fun b!585800 () Bool)

(assert (=> b!585800 (= e!354089 (isPrefix!752 (tail!764 lt!248155) (tail!764 (++!1612 lt!248155 (_2!3627 (v!16347 lt!248157))))))))

(assert (= (and d!206058 (not res!252353)) b!585798))

(assert (= (and b!585798 res!252352) b!585799))

(assert (= (and b!585799 res!252350) b!585800))

(assert (= (and d!206058 (not res!252351)) b!585801))

(assert (=> b!585801 m!845167))

(declare-fun m!845851 () Bool)

(assert (=> b!585801 m!845851))

(assert (=> b!585801 m!845153))

(assert (=> b!585799 m!845427))

(assert (=> b!585799 m!845167))

(declare-fun m!845853 () Bool)

(assert (=> b!585799 m!845853))

(assert (=> b!585800 m!845433))

(assert (=> b!585800 m!845167))

(declare-fun m!845855 () Bool)

(assert (=> b!585800 m!845855))

(assert (=> b!585800 m!845433))

(assert (=> b!585800 m!845855))

(declare-fun m!845857 () Bool)

(assert (=> b!585800 m!845857))

(assert (=> d!205876 d!206058))

(assert (=> d!205876 d!205862))

(declare-fun d!206060 () Bool)

(assert (=> d!206060 (isPrefix!752 lt!248155 (++!1612 lt!248155 (_2!3627 (v!16347 lt!248157))))))

(assert (=> d!206060 true))

(declare-fun _$46!944 () Unit!10454)

(assert (=> d!206060 (= (choose!4202 lt!248155 (_2!3627 (v!16347 lt!248157))) _$46!944)))

(declare-fun bs!70041 () Bool)

(assert (= bs!70041 d!206060))

(assert (=> bs!70041 m!845167))

(assert (=> bs!70041 m!845167))

(assert (=> bs!70041 m!845473))

(assert (=> d!205876 d!206060))

(declare-fun b!585804 () Bool)

(declare-fun res!252360 () Bool)

(declare-fun e!354094 () Bool)

(assert (=> b!585804 (=> (not res!252360) (not e!354094))))

(declare-fun lt!248326 () Option!1475)

(assert (=> b!585804 (= res!252360 (= (value!36902 (_1!3627 (get!2201 lt!248326))) (apply!1381 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248326)))) (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248326)))))))))

(declare-fun b!585805 () Bool)

(declare-fun e!354093 () Option!1475)

(declare-fun lt!248325 () Option!1475)

(declare-fun lt!248327 () Option!1475)

(assert (=> b!585805 (= e!354093 (ite (and (is-None!1474 lt!248325) (is-None!1474 lt!248327)) None!1474 (ite (is-None!1474 lt!248327) lt!248325 (ite (is-None!1474 lt!248325) lt!248327 (ite (>= (size!4574 (_1!3627 (v!16347 lt!248325))) (size!4574 (_1!3627 (v!16347 lt!248327)))) lt!248325 lt!248327)))))))

(declare-fun call!40209 () Option!1475)

(assert (=> b!585805 (= lt!248325 call!40209)))

(assert (=> b!585805 (= lt!248327 (maxPrefix!708 thiss!22590 (t!78476 (t!78476 rules!3103)) lt!248154))))

(declare-fun d!206064 () Bool)

(declare-fun e!354095 () Bool)

(assert (=> d!206064 e!354095))

(declare-fun res!252359 () Bool)

(assert (=> d!206064 (=> res!252359 e!354095)))

(assert (=> d!206064 (= res!252359 (isEmpty!4159 lt!248326))))

(assert (=> d!206064 (= lt!248326 e!354093)))

(declare-fun c!109521 () Bool)

(assert (=> d!206064 (= c!109521 (and (is-Cons!5757 (t!78476 rules!3103)) (is-Nil!5757 (t!78476 (t!78476 rules!3103)))))))

(declare-fun lt!248328 () Unit!10454)

(declare-fun lt!248329 () Unit!10454)

(assert (=> d!206064 (= lt!248328 lt!248329)))

(assert (=> d!206064 (isPrefix!752 lt!248154 lt!248154)))

(assert (=> d!206064 (= lt!248329 (lemmaIsPrefixRefl!488 lt!248154 lt!248154))))

(assert (=> d!206064 (rulesValidInductive!405 thiss!22590 (t!78476 rules!3103))))

(assert (=> d!206064 (= (maxPrefix!708 thiss!22590 (t!78476 rules!3103) lt!248154) lt!248326)))

(declare-fun b!585806 () Bool)

(declare-fun res!252355 () Bool)

(assert (=> b!585806 (=> (not res!252355) (not e!354094))))

(assert (=> b!585806 (= res!252355 (= (++!1612 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248326)))) (_2!3627 (get!2201 lt!248326))) lt!248154))))

(declare-fun b!585807 () Bool)

(declare-fun res!252356 () Bool)

(assert (=> b!585807 (=> (not res!252356) (not e!354094))))

(assert (=> b!585807 (= res!252356 (matchR!597 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248326)))) (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248326))))))))

(declare-fun b!585808 () Bool)

(assert (=> b!585808 (= e!354095 e!354094)))

(declare-fun res!252357 () Bool)

(assert (=> b!585808 (=> (not res!252357) (not e!354094))))

(assert (=> b!585808 (= res!252357 (isDefined!1286 lt!248326))))

(declare-fun bm!40204 () Bool)

(assert (=> bm!40204 (= call!40209 (maxPrefixOneRule!401 thiss!22590 (h!11158 (t!78476 rules!3103)) lt!248154))))

(declare-fun b!585809 () Bool)

(declare-fun res!252354 () Bool)

(assert (=> b!585809 (=> (not res!252354) (not e!354094))))

(assert (=> b!585809 (= res!252354 (= (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248326)))) (originalCharacters!1163 (_1!3627 (get!2201 lt!248326)))))))

(declare-fun b!585810 () Bool)

(assert (=> b!585810 (= e!354093 call!40209)))

(declare-fun b!585811 () Bool)

(declare-fun res!252358 () Bool)

(assert (=> b!585811 (=> (not res!252358) (not e!354094))))

(assert (=> b!585811 (= res!252358 (< (size!4575 (_2!3627 (get!2201 lt!248326))) (size!4575 lt!248154)))))

(declare-fun b!585812 () Bool)

(assert (=> b!585812 (= e!354094 (contains!1354 (t!78476 rules!3103) (rule!1886 (_1!3627 (get!2201 lt!248326)))))))

(assert (= (and d!206064 c!109521) b!585810))

(assert (= (and d!206064 (not c!109521)) b!585805))

(assert (= (or b!585810 b!585805) bm!40204))

(assert (= (and d!206064 (not res!252359)) b!585808))

(assert (= (and b!585808 res!252357) b!585809))

(assert (= (and b!585809 res!252354) b!585811))

(assert (= (and b!585811 res!252358) b!585806))

(assert (= (and b!585806 res!252355) b!585804))

(assert (= (and b!585804 res!252360) b!585807))

(assert (= (and b!585807 res!252356) b!585812))

(declare-fun m!845865 () Bool)

(assert (=> b!585812 m!845865))

(declare-fun m!845867 () Bool)

(assert (=> b!585812 m!845867))

(assert (=> b!585807 m!845865))

(declare-fun m!845869 () Bool)

(assert (=> b!585807 m!845869))

(assert (=> b!585807 m!845869))

(declare-fun m!845871 () Bool)

(assert (=> b!585807 m!845871))

(assert (=> b!585807 m!845871))

(declare-fun m!845873 () Bool)

(assert (=> b!585807 m!845873))

(declare-fun m!845875 () Bool)

(assert (=> b!585805 m!845875))

(assert (=> b!585811 m!845865))

(declare-fun m!845877 () Bool)

(assert (=> b!585811 m!845877))

(assert (=> b!585811 m!845351))

(declare-fun m!845879 () Bool)

(assert (=> bm!40204 m!845879))

(declare-fun m!845881 () Bool)

(assert (=> b!585808 m!845881))

(assert (=> b!585809 m!845865))

(assert (=> b!585809 m!845869))

(assert (=> b!585809 m!845869))

(assert (=> b!585809 m!845871))

(declare-fun m!845883 () Bool)

(assert (=> d!206064 m!845883))

(assert (=> d!206064 m!845359))

(assert (=> d!206064 m!845361))

(assert (=> d!206064 m!845709))

(assert (=> b!585806 m!845865))

(assert (=> b!585806 m!845869))

(assert (=> b!585806 m!845869))

(assert (=> b!585806 m!845871))

(assert (=> b!585806 m!845871))

(declare-fun m!845885 () Bool)

(assert (=> b!585806 m!845885))

(assert (=> b!585804 m!845865))

(declare-fun m!845887 () Bool)

(assert (=> b!585804 m!845887))

(assert (=> b!585804 m!845887))

(declare-fun m!845889 () Bool)

(assert (=> b!585804 m!845889))

(assert (=> b!585426 d!206064))

(declare-fun d!206068 () Bool)

(declare-fun charsToBigInt!1 (List!5765) Int)

(assert (=> d!206068 (= (inv!17 (value!36902 token!491)) (= (charsToBigInt!1 (text!8484 (value!36902 token!491))) (value!36894 (value!36902 token!491))))))

(declare-fun bs!70043 () Bool)

(assert (= bs!70043 d!206068))

(declare-fun m!845891 () Bool)

(assert (=> bs!70043 m!845891))

(assert (=> b!585357 d!206068))

(declare-fun b!585831 () Bool)

(declare-fun e!354104 () Bool)

(declare-fun lt!248342 () Option!1475)

(assert (=> b!585831 (= e!354104 (= (size!4574 (_1!3627 (get!2201 lt!248342))) (size!4575 (originalCharacters!1163 (_1!3627 (get!2201 lt!248342))))))))

(declare-fun b!585832 () Bool)

(declare-fun e!354106 () Option!1475)

(declare-datatypes ((tuple2!6730 0))(
  ( (tuple2!6731 (_1!3629 List!5766) (_2!3629 List!5766)) )
))
(declare-fun lt!248340 () tuple2!6730)

(declare-fun size!4578 (BalanceConc!3690) Int)

(assert (=> b!585832 (= e!354106 (Some!1474 (tuple2!6727 (Token!1985 (apply!1381 (transformation!1124 (h!11158 rules!3103)) (seqFromList!1304 (_1!3629 lt!248340))) (h!11158 rules!3103) (size!4578 (seqFromList!1304 (_1!3629 lt!248340))) (_1!3629 lt!248340)) (_2!3629 lt!248340))))))

(declare-fun lt!248341 () Unit!10454)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!166 (Regex!1458 List!5766) Unit!10454)

(assert (=> b!585832 (= lt!248341 (longestMatchIsAcceptedByMatchOrIsEmpty!166 (regex!1124 (h!11158 rules!3103)) input!2705))))

(declare-fun res!252376 () Bool)

(declare-fun findLongestMatchInner!182 (Regex!1458 List!5766 Int List!5766 List!5766 Int) tuple2!6730)

(assert (=> b!585832 (= res!252376 (isEmpty!4155 (_1!3629 (findLongestMatchInner!182 (regex!1124 (h!11158 rules!3103)) Nil!5756 (size!4575 Nil!5756) input!2705 input!2705 (size!4575 input!2705)))))))

(declare-fun e!354107 () Bool)

(assert (=> b!585832 (=> res!252376 e!354107)))

(assert (=> b!585832 e!354107))

(declare-fun lt!248343 () Unit!10454)

(assert (=> b!585832 (= lt!248343 lt!248341)))

(declare-fun lt!248344 () Unit!10454)

(declare-fun lemmaSemiInverse!219 (TokenValueInjection!2064 BalanceConc!3690) Unit!10454)

(assert (=> b!585832 (= lt!248344 (lemmaSemiInverse!219 (transformation!1124 (h!11158 rules!3103)) (seqFromList!1304 (_1!3629 lt!248340))))))

(declare-fun d!206070 () Bool)

(declare-fun e!354105 () Bool)

(assert (=> d!206070 e!354105))

(declare-fun res!252378 () Bool)

(assert (=> d!206070 (=> res!252378 e!354105)))

(assert (=> d!206070 (= res!252378 (isEmpty!4159 lt!248342))))

(assert (=> d!206070 (= lt!248342 e!354106)))

(declare-fun c!109524 () Bool)

(assert (=> d!206070 (= c!109524 (isEmpty!4155 (_1!3629 lt!248340)))))

(declare-fun findLongestMatch!161 (Regex!1458 List!5766) tuple2!6730)

(assert (=> d!206070 (= lt!248340 (findLongestMatch!161 (regex!1124 (h!11158 rules!3103)) input!2705))))

(assert (=> d!206070 (ruleValid!326 thiss!22590 (h!11158 rules!3103))))

(assert (=> d!206070 (= (maxPrefixOneRule!401 thiss!22590 (h!11158 rules!3103) input!2705) lt!248342)))

(declare-fun b!585833 () Bool)

(assert (=> b!585833 (= e!354106 None!1474)))

(declare-fun b!585834 () Bool)

(declare-fun res!252381 () Bool)

(assert (=> b!585834 (=> (not res!252381) (not e!354104))))

(assert (=> b!585834 (= res!252381 (< (size!4575 (_2!3627 (get!2201 lt!248342))) (size!4575 input!2705)))))

(declare-fun b!585835 () Bool)

(declare-fun res!252380 () Bool)

(assert (=> b!585835 (=> (not res!252380) (not e!354104))))

(assert (=> b!585835 (= res!252380 (= (++!1612 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248342)))) (_2!3627 (get!2201 lt!248342))) input!2705))))

(declare-fun b!585836 () Bool)

(assert (=> b!585836 (= e!354105 e!354104)))

(declare-fun res!252377 () Bool)

(assert (=> b!585836 (=> (not res!252377) (not e!354104))))

(assert (=> b!585836 (= res!252377 (matchR!597 (regex!1124 (h!11158 rules!3103)) (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248342))))))))

(declare-fun b!585837 () Bool)

(assert (=> b!585837 (= e!354107 (matchR!597 (regex!1124 (h!11158 rules!3103)) (_1!3629 (findLongestMatchInner!182 (regex!1124 (h!11158 rules!3103)) Nil!5756 (size!4575 Nil!5756) input!2705 input!2705 (size!4575 input!2705)))))))

(declare-fun b!585838 () Bool)

(declare-fun res!252375 () Bool)

(assert (=> b!585838 (=> (not res!252375) (not e!354104))))

(assert (=> b!585838 (= res!252375 (= (rule!1886 (_1!3627 (get!2201 lt!248342))) (h!11158 rules!3103)))))

(declare-fun b!585839 () Bool)

(declare-fun res!252379 () Bool)

(assert (=> b!585839 (=> (not res!252379) (not e!354104))))

(assert (=> b!585839 (= res!252379 (= (value!36902 (_1!3627 (get!2201 lt!248342))) (apply!1381 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248342)))) (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248342)))))))))

(assert (= (and d!206070 c!109524) b!585833))

(assert (= (and d!206070 (not c!109524)) b!585832))

(assert (= (and b!585832 (not res!252376)) b!585837))

(assert (= (and d!206070 (not res!252378)) b!585836))

(assert (= (and b!585836 res!252377) b!585835))

(assert (= (and b!585835 res!252380) b!585834))

(assert (= (and b!585834 res!252381) b!585838))

(assert (= (and b!585838 res!252375) b!585839))

(assert (= (and b!585839 res!252379) b!585831))

(declare-fun m!845893 () Bool)

(assert (=> b!585838 m!845893))

(assert (=> b!585835 m!845893))

(declare-fun m!845895 () Bool)

(assert (=> b!585835 m!845895))

(assert (=> b!585835 m!845895))

(declare-fun m!845897 () Bool)

(assert (=> b!585835 m!845897))

(assert (=> b!585835 m!845897))

(declare-fun m!845899 () Bool)

(assert (=> b!585835 m!845899))

(assert (=> b!585839 m!845893))

(declare-fun m!845901 () Bool)

(assert (=> b!585839 m!845901))

(assert (=> b!585839 m!845901))

(declare-fun m!845903 () Bool)

(assert (=> b!585839 m!845903))

(assert (=> b!585836 m!845893))

(assert (=> b!585836 m!845895))

(assert (=> b!585836 m!845895))

(assert (=> b!585836 m!845897))

(assert (=> b!585836 m!845897))

(declare-fun m!845905 () Bool)

(assert (=> b!585836 m!845905))

(declare-fun m!845907 () Bool)

(assert (=> b!585837 m!845907))

(assert (=> b!585837 m!845381))

(assert (=> b!585837 m!845907))

(assert (=> b!585837 m!845381))

(declare-fun m!845909 () Bool)

(assert (=> b!585837 m!845909))

(declare-fun m!845911 () Bool)

(assert (=> b!585837 m!845911))

(declare-fun m!845913 () Bool)

(assert (=> b!585832 m!845913))

(assert (=> b!585832 m!845907))

(declare-fun m!845915 () Bool)

(assert (=> b!585832 m!845915))

(declare-fun m!845917 () Bool)

(assert (=> b!585832 m!845917))

(declare-fun m!845919 () Bool)

(assert (=> b!585832 m!845919))

(assert (=> b!585832 m!845915))

(declare-fun m!845921 () Bool)

(assert (=> b!585832 m!845921))

(assert (=> b!585832 m!845915))

(assert (=> b!585832 m!845915))

(declare-fun m!845923 () Bool)

(assert (=> b!585832 m!845923))

(assert (=> b!585832 m!845381))

(assert (=> b!585832 m!845907))

(assert (=> b!585832 m!845381))

(assert (=> b!585832 m!845909))

(declare-fun m!845925 () Bool)

(assert (=> d!206070 m!845925))

(declare-fun m!845927 () Bool)

(assert (=> d!206070 m!845927))

(declare-fun m!845929 () Bool)

(assert (=> d!206070 m!845929))

(assert (=> d!206070 m!845707))

(assert (=> b!585834 m!845893))

(declare-fun m!845931 () Bool)

(assert (=> b!585834 m!845931))

(assert (=> b!585834 m!845381))

(assert (=> b!585831 m!845893))

(declare-fun m!845933 () Bool)

(assert (=> b!585831 m!845933))

(assert (=> bm!40199 d!206070))

(declare-fun d!206072 () Bool)

(declare-fun c!109527 () Bool)

(assert (=> d!206072 (= c!109527 (is-Nil!5756 lt!248230))))

(declare-fun e!354110 () (Set C!3838))

(assert (=> d!206072 (= (content!1024 lt!248230) e!354110)))

(declare-fun b!585844 () Bool)

(assert (=> b!585844 (= e!354110 (as set.empty (Set C!3838)))))

(declare-fun b!585845 () Bool)

(assert (=> b!585845 (= e!354110 (set.union (set.insert (h!11157 lt!248230) (as set.empty (Set C!3838))) (content!1024 (t!78475 lt!248230))))))

(assert (= (and d!206072 c!109527) b!585844))

(assert (= (and d!206072 (not c!109527)) b!585845))

(declare-fun m!845935 () Bool)

(assert (=> b!585845 m!845935))

(declare-fun m!845937 () Bool)

(assert (=> b!585845 m!845937))

(assert (=> d!205848 d!206072))

(declare-fun d!206074 () Bool)

(declare-fun c!109528 () Bool)

(assert (=> d!206074 (= c!109528 (is-Nil!5756 input!2705))))

(declare-fun e!354111 () (Set C!3838))

(assert (=> d!206074 (= (content!1024 input!2705) e!354111)))

(declare-fun b!585846 () Bool)

(assert (=> b!585846 (= e!354111 (as set.empty (Set C!3838)))))

(declare-fun b!585847 () Bool)

(assert (=> b!585847 (= e!354111 (set.union (set.insert (h!11157 input!2705) (as set.empty (Set C!3838))) (content!1024 (t!78475 input!2705))))))

(assert (= (and d!206074 c!109528) b!585846))

(assert (= (and d!206074 (not c!109528)) b!585847))

(declare-fun m!845939 () Bool)

(assert (=> b!585847 m!845939))

(declare-fun m!845941 () Bool)

(assert (=> b!585847 m!845941))

(assert (=> d!205848 d!206074))

(declare-fun d!206076 () Bool)

(declare-fun c!109529 () Bool)

(assert (=> d!206076 (= c!109529 (is-Nil!5756 suffix!1342))))

(declare-fun e!354112 () (Set C!3838))

(assert (=> d!206076 (= (content!1024 suffix!1342) e!354112)))

(declare-fun b!585848 () Bool)

(assert (=> b!585848 (= e!354112 (as set.empty (Set C!3838)))))

(declare-fun b!585849 () Bool)

(assert (=> b!585849 (= e!354112 (set.union (set.insert (h!11157 suffix!1342) (as set.empty (Set C!3838))) (content!1024 (t!78475 suffix!1342))))))

(assert (= (and d!206076 c!109529) b!585848))

(assert (= (and d!206076 (not c!109529)) b!585849))

(declare-fun m!845943 () Bool)

(assert (=> b!585849 m!845943))

(declare-fun m!845945 () Bool)

(assert (=> b!585849 m!845945))

(assert (=> d!205848 d!206076))

(declare-fun d!206078 () Bool)

(declare-fun e!354113 () Bool)

(assert (=> d!206078 e!354113))

(declare-fun res!252383 () Bool)

(assert (=> d!206078 (=> (not res!252383) (not e!354113))))

(declare-fun lt!248345 () List!5766)

(assert (=> d!206078 (= res!252383 (= (content!1024 lt!248345) (set.union (content!1024 (t!78475 lt!248153)) (content!1024 suffix!1342))))))

(declare-fun e!354114 () List!5766)

(assert (=> d!206078 (= lt!248345 e!354114)))

(declare-fun c!109530 () Bool)

(assert (=> d!206078 (= c!109530 (is-Nil!5756 (t!78475 lt!248153)))))

(assert (=> d!206078 (= (++!1612 (t!78475 lt!248153) suffix!1342) lt!248345)))

(declare-fun b!585851 () Bool)

(assert (=> b!585851 (= e!354114 (Cons!5756 (h!11157 (t!78475 lt!248153)) (++!1612 (t!78475 (t!78475 lt!248153)) suffix!1342)))))

(declare-fun b!585853 () Bool)

(assert (=> b!585853 (= e!354113 (or (not (= suffix!1342 Nil!5756)) (= lt!248345 (t!78475 lt!248153))))))

(declare-fun b!585852 () Bool)

(declare-fun res!252382 () Bool)

(assert (=> b!585852 (=> (not res!252382) (not e!354113))))

(assert (=> b!585852 (= res!252382 (= (size!4575 lt!248345) (+ (size!4575 (t!78475 lt!248153)) (size!4575 suffix!1342))))))

(declare-fun b!585850 () Bool)

(assert (=> b!585850 (= e!354114 suffix!1342)))

(assert (= (and d!206078 c!109530) b!585850))

(assert (= (and d!206078 (not c!109530)) b!585851))

(assert (= (and d!206078 res!252383) b!585852))

(assert (= (and b!585852 res!252382) b!585853))

(declare-fun m!845947 () Bool)

(assert (=> d!206078 m!845947))

(declare-fun m!845949 () Bool)

(assert (=> d!206078 m!845949))

(assert (=> d!206078 m!845375))

(declare-fun m!845951 () Bool)

(assert (=> b!585851 m!845951))

(declare-fun m!845953 () Bool)

(assert (=> b!585852 m!845953))

(assert (=> b!585852 m!845457))

(assert (=> b!585852 m!845383))

(assert (=> b!585466 d!206078))

(declare-fun b!585854 () Bool)

(declare-fun res!252390 () Bool)

(declare-fun e!354116 () Bool)

(assert (=> b!585854 (=> (not res!252390) (not e!354116))))

(declare-fun lt!248347 () Option!1475)

(assert (=> b!585854 (= res!252390 (= (value!36902 (_1!3627 (get!2201 lt!248347))) (apply!1381 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248347)))) (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248347)))))))))

(declare-fun b!585855 () Bool)

(declare-fun e!354115 () Option!1475)

(declare-fun lt!248346 () Option!1475)

(declare-fun lt!248348 () Option!1475)

(assert (=> b!585855 (= e!354115 (ite (and (is-None!1474 lt!248346) (is-None!1474 lt!248348)) None!1474 (ite (is-None!1474 lt!248348) lt!248346 (ite (is-None!1474 lt!248346) lt!248348 (ite (>= (size!4574 (_1!3627 (v!16347 lt!248346))) (size!4574 (_1!3627 (v!16347 lt!248348)))) lt!248346 lt!248348)))))))

(declare-fun call!40210 () Option!1475)

(assert (=> b!585855 (= lt!248346 call!40210)))

(assert (=> b!585855 (= lt!248348 (maxPrefix!708 thiss!22590 (t!78476 (t!78476 rules!3103)) input!2705))))

(declare-fun d!206080 () Bool)

(declare-fun e!354117 () Bool)

(assert (=> d!206080 e!354117))

(declare-fun res!252389 () Bool)

(assert (=> d!206080 (=> res!252389 e!354117)))

(assert (=> d!206080 (= res!252389 (isEmpty!4159 lt!248347))))

(assert (=> d!206080 (= lt!248347 e!354115)))

(declare-fun c!109531 () Bool)

(assert (=> d!206080 (= c!109531 (and (is-Cons!5757 (t!78476 rules!3103)) (is-Nil!5757 (t!78476 (t!78476 rules!3103)))))))

(declare-fun lt!248349 () Unit!10454)

(declare-fun lt!248350 () Unit!10454)

(assert (=> d!206080 (= lt!248349 lt!248350)))

(assert (=> d!206080 (isPrefix!752 input!2705 input!2705)))

(assert (=> d!206080 (= lt!248350 (lemmaIsPrefixRefl!488 input!2705 input!2705))))

(assert (=> d!206080 (rulesValidInductive!405 thiss!22590 (t!78476 rules!3103))))

(assert (=> d!206080 (= (maxPrefix!708 thiss!22590 (t!78476 rules!3103) input!2705) lt!248347)))

(declare-fun b!585856 () Bool)

(declare-fun res!252385 () Bool)

(assert (=> b!585856 (=> (not res!252385) (not e!354116))))

(assert (=> b!585856 (= res!252385 (= (++!1612 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248347)))) (_2!3627 (get!2201 lt!248347))) input!2705))))

(declare-fun b!585857 () Bool)

(declare-fun res!252386 () Bool)

(assert (=> b!585857 (=> (not res!252386) (not e!354116))))

(assert (=> b!585857 (= res!252386 (matchR!597 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248347)))) (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248347))))))))

(declare-fun b!585858 () Bool)

(assert (=> b!585858 (= e!354117 e!354116)))

(declare-fun res!252387 () Bool)

(assert (=> b!585858 (=> (not res!252387) (not e!354116))))

(assert (=> b!585858 (= res!252387 (isDefined!1286 lt!248347))))

(declare-fun bm!40205 () Bool)

(assert (=> bm!40205 (= call!40210 (maxPrefixOneRule!401 thiss!22590 (h!11158 (t!78476 rules!3103)) input!2705))))

(declare-fun b!585859 () Bool)

(declare-fun res!252384 () Bool)

(assert (=> b!585859 (=> (not res!252384) (not e!354116))))

(assert (=> b!585859 (= res!252384 (= (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248347)))) (originalCharacters!1163 (_1!3627 (get!2201 lt!248347)))))))

(declare-fun b!585860 () Bool)

(assert (=> b!585860 (= e!354115 call!40210)))

(declare-fun b!585861 () Bool)

(declare-fun res!252388 () Bool)

(assert (=> b!585861 (=> (not res!252388) (not e!354116))))

(assert (=> b!585861 (= res!252388 (< (size!4575 (_2!3627 (get!2201 lt!248347))) (size!4575 input!2705)))))

(declare-fun b!585862 () Bool)

(assert (=> b!585862 (= e!354116 (contains!1354 (t!78476 rules!3103) (rule!1886 (_1!3627 (get!2201 lt!248347)))))))

(assert (= (and d!206080 c!109531) b!585860))

(assert (= (and d!206080 (not c!109531)) b!585855))

(assert (= (or b!585860 b!585855) bm!40205))

(assert (= (and d!206080 (not res!252389)) b!585858))

(assert (= (and b!585858 res!252387) b!585859))

(assert (= (and b!585859 res!252384) b!585861))

(assert (= (and b!585861 res!252388) b!585856))

(assert (= (and b!585856 res!252385) b!585854))

(assert (= (and b!585854 res!252390) b!585857))

(assert (= (and b!585857 res!252386) b!585862))

(declare-fun m!845955 () Bool)

(assert (=> b!585862 m!845955))

(declare-fun m!845957 () Bool)

(assert (=> b!585862 m!845957))

(assert (=> b!585857 m!845955))

(declare-fun m!845959 () Bool)

(assert (=> b!585857 m!845959))

(assert (=> b!585857 m!845959))

(declare-fun m!845961 () Bool)

(assert (=> b!585857 m!845961))

(assert (=> b!585857 m!845961))

(declare-fun m!845963 () Bool)

(assert (=> b!585857 m!845963))

(declare-fun m!845965 () Bool)

(assert (=> b!585855 m!845965))

(assert (=> b!585861 m!845955))

(declare-fun m!845967 () Bool)

(assert (=> b!585861 m!845967))

(assert (=> b!585861 m!845381))

(declare-fun m!845969 () Bool)

(assert (=> bm!40205 m!845969))

(declare-fun m!845971 () Bool)

(assert (=> b!585858 m!845971))

(assert (=> b!585859 m!845955))

(assert (=> b!585859 m!845959))

(assert (=> b!585859 m!845959))

(assert (=> b!585859 m!845961))

(declare-fun m!845973 () Bool)

(assert (=> d!206080 m!845973))

(assert (=> d!206080 m!845531))

(assert (=> d!206080 m!845533))

(assert (=> d!206080 m!845709))

(assert (=> b!585856 m!845955))

(assert (=> b!585856 m!845959))

(assert (=> b!585856 m!845959))

(assert (=> b!585856 m!845961))

(assert (=> b!585856 m!845961))

(declare-fun m!845975 () Bool)

(assert (=> b!585856 m!845975))

(assert (=> b!585854 m!845955))

(declare-fun m!845977 () Bool)

(assert (=> b!585854 m!845977))

(assert (=> b!585854 m!845977))

(declare-fun m!845979 () Bool)

(assert (=> b!585854 m!845979))

(assert (=> b!585533 d!206080))

(declare-fun bs!70044 () Bool)

(declare-fun d!206082 () Bool)

(assert (= bs!70044 (and d!206082 d!205970)))

(declare-fun lambda!15876 () Int)

(assert (=> bs!70044 (= lambda!15876 lambda!15873)))

(assert (=> d!206082 true))

(declare-fun lt!248353 () Bool)

(assert (=> d!206082 (= lt!248353 (rulesValidInductive!405 thiss!22590 rules!3103))))

(assert (=> d!206082 (= lt!248353 (forall!1543 rules!3103 lambda!15876))))

(assert (=> d!206082 (= (rulesValid!400 thiss!22590 rules!3103) lt!248353)))

(declare-fun bs!70045 () Bool)

(assert (= bs!70045 d!206082))

(assert (=> bs!70045 m!845363))

(declare-fun m!845981 () Bool)

(assert (=> bs!70045 m!845981))

(assert (=> d!205860 d!206082))

(declare-fun d!206084 () Bool)

(declare-fun charsToInt!0 (List!5765) (_ BitVec 32))

(assert (=> d!206084 (= (inv!16 (value!36902 token!491)) (= (charsToInt!0 (text!8483 (value!36902 token!491))) (value!36893 (value!36902 token!491))))))

(declare-fun bs!70046 () Bool)

(assert (= bs!70046 d!206084))

(declare-fun m!845983 () Bool)

(assert (=> bs!70046 m!845983))

(assert (=> b!585355 d!206084))

(declare-fun b!585891 () Bool)

(declare-fun e!354132 () Bool)

(declare-fun nullable!398 (Regex!1458) Bool)

(assert (=> b!585891 (= e!354132 (nullable!398 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248261))))))))

(declare-fun d!206086 () Bool)

(declare-fun e!354136 () Bool)

(assert (=> d!206086 e!354136))

(declare-fun c!109538 () Bool)

(assert (=> d!206086 (= c!109538 (is-EmptyExpr!1458 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248261))))))))

(declare-fun lt!248356 () Bool)

(assert (=> d!206086 (= lt!248356 e!354132)))

(declare-fun c!109539 () Bool)

(assert (=> d!206086 (= c!109539 (isEmpty!4155 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261))))))))

(declare-fun validRegex!493 (Regex!1458) Bool)

(assert (=> d!206086 (validRegex!493 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))))))

(assert (=> d!206086 (= (matchR!597 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))) (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261))))) lt!248356)))

(declare-fun b!585892 () Bool)

(declare-fun e!354135 () Bool)

(assert (=> b!585892 (= e!354135 (= (head!1235 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261))))) (c!109427 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))))))))

(declare-fun b!585893 () Bool)

(declare-fun res!252414 () Bool)

(declare-fun e!354138 () Bool)

(assert (=> b!585893 (=> res!252414 e!354138)))

(assert (=> b!585893 (= res!252414 (not (isEmpty!4155 (tail!764 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261))))))))))

(declare-fun b!585894 () Bool)

(assert (=> b!585894 (= e!354138 (not (= (head!1235 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261))))) (c!109427 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248261))))))))))

(declare-fun b!585895 () Bool)

(declare-fun res!252408 () Bool)

(declare-fun e!354137 () Bool)

(assert (=> b!585895 (=> res!252408 e!354137)))

(assert (=> b!585895 (= res!252408 e!354135)))

(declare-fun res!252412 () Bool)

(assert (=> b!585895 (=> (not res!252412) (not e!354135))))

(assert (=> b!585895 (= res!252412 lt!248356)))

(declare-fun b!585896 () Bool)

(declare-fun derivativeStep!311 (Regex!1458 C!3838) Regex!1458)

(assert (=> b!585896 (= e!354132 (matchR!597 (derivativeStep!311 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))) (head!1235 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261)))))) (tail!764 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261)))))))))

(declare-fun b!585897 () Bool)

(declare-fun res!252407 () Bool)

(assert (=> b!585897 (=> (not res!252407) (not e!354135))))

(declare-fun call!40213 () Bool)

(assert (=> b!585897 (= res!252407 (not call!40213))))

(declare-fun bm!40208 () Bool)

(assert (=> bm!40208 (= call!40213 (isEmpty!4155 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261))))))))

(declare-fun b!585898 () Bool)

(declare-fun res!252410 () Bool)

(assert (=> b!585898 (=> res!252410 e!354137)))

(assert (=> b!585898 (= res!252410 (not (is-ElementMatch!1458 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))))))))

(declare-fun e!354133 () Bool)

(assert (=> b!585898 (= e!354133 e!354137)))

(declare-fun b!585899 () Bool)

(assert (=> b!585899 (= e!354136 e!354133)))

(declare-fun c!109540 () Bool)

(assert (=> b!585899 (= c!109540 (is-EmptyLang!1458 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248261))))))))

(declare-fun b!585900 () Bool)

(assert (=> b!585900 (= e!354133 (not lt!248356))))

(declare-fun b!585901 () Bool)

(declare-fun e!354134 () Bool)

(assert (=> b!585901 (= e!354137 e!354134)))

(declare-fun res!252413 () Bool)

(assert (=> b!585901 (=> (not res!252413) (not e!354134))))

(assert (=> b!585901 (= res!252413 (not lt!248356))))

(declare-fun b!585902 () Bool)

(assert (=> b!585902 (= e!354134 e!354138)))

(declare-fun res!252409 () Bool)

(assert (=> b!585902 (=> res!252409 e!354138)))

(assert (=> b!585902 (= res!252409 call!40213)))

(declare-fun b!585903 () Bool)

(declare-fun res!252411 () Bool)

(assert (=> b!585903 (=> (not res!252411) (not e!354135))))

(assert (=> b!585903 (= res!252411 (isEmpty!4155 (tail!764 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248261)))))))))

(declare-fun b!585904 () Bool)

(assert (=> b!585904 (= e!354136 (= lt!248356 call!40213))))

(assert (= (and d!206086 c!109539) b!585891))

(assert (= (and d!206086 (not c!109539)) b!585896))

(assert (= (and d!206086 c!109538) b!585904))

(assert (= (and d!206086 (not c!109538)) b!585899))

(assert (= (and b!585899 c!109540) b!585900))

(assert (= (and b!585899 (not c!109540)) b!585898))

(assert (= (and b!585898 (not res!252410)) b!585895))

(assert (= (and b!585895 res!252412) b!585897))

(assert (= (and b!585897 res!252407) b!585903))

(assert (= (and b!585903 res!252411) b!585892))

(assert (= (and b!585895 (not res!252408)) b!585901))

(assert (= (and b!585901 res!252413) b!585902))

(assert (= (and b!585902 (not res!252409)) b!585893))

(assert (= (and b!585893 (not res!252414)) b!585894))

(assert (= (or b!585904 b!585897 b!585902) bm!40208))

(assert (=> b!585896 m!845517))

(declare-fun m!845985 () Bool)

(assert (=> b!585896 m!845985))

(assert (=> b!585896 m!845985))

(declare-fun m!845987 () Bool)

(assert (=> b!585896 m!845987))

(assert (=> b!585896 m!845517))

(declare-fun m!845989 () Bool)

(assert (=> b!585896 m!845989))

(assert (=> b!585896 m!845987))

(assert (=> b!585896 m!845989))

(declare-fun m!845991 () Bool)

(assert (=> b!585896 m!845991))

(declare-fun m!845993 () Bool)

(assert (=> b!585891 m!845993))

(assert (=> b!585903 m!845517))

(assert (=> b!585903 m!845989))

(assert (=> b!585903 m!845989))

(declare-fun m!845995 () Bool)

(assert (=> b!585903 m!845995))

(assert (=> d!206086 m!845517))

(declare-fun m!845997 () Bool)

(assert (=> d!206086 m!845997))

(declare-fun m!845999 () Bool)

(assert (=> d!206086 m!845999))

(assert (=> b!585893 m!845517))

(assert (=> b!585893 m!845989))

(assert (=> b!585893 m!845989))

(assert (=> b!585893 m!845995))

(assert (=> b!585894 m!845517))

(assert (=> b!585894 m!845985))

(assert (=> bm!40208 m!845517))

(assert (=> bm!40208 m!845997))

(assert (=> b!585892 m!845517))

(assert (=> b!585892 m!845985))

(assert (=> b!585535 d!206086))

(assert (=> b!585535 d!205944))

(assert (=> b!585535 d!205940))

(assert (=> b!585535 d!205942))

(declare-fun d!206088 () Bool)

(assert (=> d!206088 (= (inv!7272 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491))) (isBalanced!517 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491)))))))

(declare-fun bs!70047 () Bool)

(assert (= bs!70047 d!206088))

(declare-fun m!846001 () Bool)

(assert (=> bs!70047 m!846001))

(assert (=> tb!51259 d!206088))

(declare-fun d!206090 () Bool)

(assert (=> d!206090 (= (isEmpty!4159 lt!248261) (not (is-Some!1474 lt!248261)))))

(assert (=> d!205892 d!206090))

(declare-fun b!585905 () Bool)

(declare-fun e!354140 () Bool)

(declare-fun e!354141 () Bool)

(assert (=> b!585905 (= e!354140 e!354141)))

(declare-fun res!252417 () Bool)

(assert (=> b!585905 (=> (not res!252417) (not e!354141))))

(assert (=> b!585905 (= res!252417 (not (is-Nil!5756 input!2705)))))

(declare-fun d!206092 () Bool)

(declare-fun e!354139 () Bool)

(assert (=> d!206092 e!354139))

(declare-fun res!252416 () Bool)

(assert (=> d!206092 (=> res!252416 e!354139)))

(declare-fun lt!248357 () Bool)

(assert (=> d!206092 (= res!252416 (not lt!248357))))

(assert (=> d!206092 (= lt!248357 e!354140)))

(declare-fun res!252418 () Bool)

(assert (=> d!206092 (=> res!252418 e!354140)))

(assert (=> d!206092 (= res!252418 (is-Nil!5756 input!2705))))

(assert (=> d!206092 (= (isPrefix!752 input!2705 input!2705) lt!248357)))

(declare-fun b!585908 () Bool)

(assert (=> b!585908 (= e!354139 (>= (size!4575 input!2705) (size!4575 input!2705)))))

(declare-fun b!585906 () Bool)

(declare-fun res!252415 () Bool)

(assert (=> b!585906 (=> (not res!252415) (not e!354141))))

(assert (=> b!585906 (= res!252415 (= (head!1235 input!2705) (head!1235 input!2705)))))

(declare-fun b!585907 () Bool)

(assert (=> b!585907 (= e!354141 (isPrefix!752 (tail!764 input!2705) (tail!764 input!2705)))))

(assert (= (and d!206092 (not res!252418)) b!585905))

(assert (= (and b!585905 res!252417) b!585906))

(assert (= (and b!585906 res!252415) b!585907))

(assert (= (and d!206092 (not res!252416)) b!585908))

(assert (=> b!585908 m!845381))

(assert (=> b!585908 m!845381))

(assert (=> b!585906 m!845431))

(assert (=> b!585906 m!845431))

(assert (=> b!585907 m!845435))

(assert (=> b!585907 m!845435))

(assert (=> b!585907 m!845435))

(assert (=> b!585907 m!845435))

(declare-fun m!846003 () Bool)

(assert (=> b!585907 m!846003))

(assert (=> d!205892 d!206092))

(declare-fun d!206094 () Bool)

(assert (=> d!206094 (isPrefix!752 input!2705 input!2705)))

(declare-fun lt!248358 () Unit!10454)

(assert (=> d!206094 (= lt!248358 (choose!4206 input!2705 input!2705))))

(assert (=> d!206094 (= (lemmaIsPrefixRefl!488 input!2705 input!2705) lt!248358)))

(declare-fun bs!70048 () Bool)

(assert (= bs!70048 d!206094))

(assert (=> bs!70048 m!845531))

(declare-fun m!846005 () Bool)

(assert (=> bs!70048 m!846005))

(assert (=> d!205892 d!206094))

(assert (=> d!205892 d!205970))

(declare-fun d!206096 () Bool)

(declare-fun lt!248359 () Bool)

(assert (=> d!206096 (= lt!248359 (set.member (rule!1886 (_1!3627 (get!2201 lt!248261))) (content!1026 rules!3103)))))

(declare-fun e!354142 () Bool)

(assert (=> d!206096 (= lt!248359 e!354142)))

(declare-fun res!252420 () Bool)

(assert (=> d!206096 (=> (not res!252420) (not e!354142))))

(assert (=> d!206096 (= res!252420 (is-Cons!5757 rules!3103))))

(assert (=> d!206096 (= (contains!1354 rules!3103 (rule!1886 (_1!3627 (get!2201 lt!248261)))) lt!248359)))

(declare-fun b!585909 () Bool)

(declare-fun e!354143 () Bool)

(assert (=> b!585909 (= e!354142 e!354143)))

(declare-fun res!252419 () Bool)

(assert (=> b!585909 (=> res!252419 e!354143)))

(assert (=> b!585909 (= res!252419 (= (h!11158 rules!3103) (rule!1886 (_1!3627 (get!2201 lt!248261)))))))

(declare-fun b!585910 () Bool)

(assert (=> b!585910 (= e!354143 (contains!1354 (t!78476 rules!3103) (rule!1886 (_1!3627 (get!2201 lt!248261)))))))

(assert (= (and d!206096 res!252420) b!585909))

(assert (= (and b!585909 (not res!252419)) b!585910))

(assert (=> d!206096 m!845771))

(declare-fun m!846007 () Bool)

(assert (=> d!206096 m!846007))

(declare-fun m!846009 () Bool)

(assert (=> b!585910 m!846009))

(assert (=> b!585540 d!206096))

(assert (=> b!585540 d!205944))

(declare-fun d!206098 () Bool)

(declare-fun e!354144 () Bool)

(assert (=> d!206098 e!354144))

(declare-fun res!252422 () Bool)

(assert (=> d!206098 (=> (not res!252422) (not e!354144))))

(declare-fun lt!248360 () List!5766)

(assert (=> d!206098 (= res!252422 (= (content!1024 lt!248360) (set.union (content!1024 (t!78475 input!2705)) (content!1024 suffix!1342))))))

(declare-fun e!354145 () List!5766)

(assert (=> d!206098 (= lt!248360 e!354145)))

(declare-fun c!109541 () Bool)

(assert (=> d!206098 (= c!109541 (is-Nil!5756 (t!78475 input!2705)))))

(assert (=> d!206098 (= (++!1612 (t!78475 input!2705) suffix!1342) lt!248360)))

(declare-fun b!585912 () Bool)

(assert (=> b!585912 (= e!354145 (Cons!5756 (h!11157 (t!78475 input!2705)) (++!1612 (t!78475 (t!78475 input!2705)) suffix!1342)))))

(declare-fun b!585914 () Bool)

(assert (=> b!585914 (= e!354144 (or (not (= suffix!1342 Nil!5756)) (= lt!248360 (t!78475 input!2705))))))

(declare-fun b!585913 () Bool)

(declare-fun res!252421 () Bool)

(assert (=> b!585913 (=> (not res!252421) (not e!354144))))

(assert (=> b!585913 (= res!252421 (= (size!4575 lt!248360) (+ (size!4575 (t!78475 input!2705)) (size!4575 suffix!1342))))))

(declare-fun b!585911 () Bool)

(assert (=> b!585911 (= e!354145 suffix!1342)))

(assert (= (and d!206098 c!109541) b!585911))

(assert (= (and d!206098 (not c!109541)) b!585912))

(assert (= (and d!206098 res!252422) b!585913))

(assert (= (and b!585913 res!252421) b!585914))

(declare-fun m!846011 () Bool)

(assert (=> d!206098 m!846011))

(assert (=> d!206098 m!845941))

(assert (=> d!206098 m!845375))

(declare-fun m!846013 () Bool)

(assert (=> b!585912 m!846013))

(declare-fun m!846015 () Bool)

(assert (=> b!585913 m!846015))

(assert (=> b!585913 m!845733))

(assert (=> b!585913 m!845383))

(assert (=> b!585461 d!206098))

(declare-fun b!585915 () Bool)

(declare-fun e!354146 () Bool)

(assert (=> b!585915 (= e!354146 (nullable!398 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248214))))))))

(declare-fun d!206100 () Bool)

(declare-fun e!354150 () Bool)

(assert (=> d!206100 e!354150))

(declare-fun c!109542 () Bool)

(assert (=> d!206100 (= c!109542 (is-EmptyExpr!1458 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248214))))))))

(declare-fun lt!248361 () Bool)

(assert (=> d!206100 (= lt!248361 e!354146)))

(declare-fun c!109543 () Bool)

(assert (=> d!206100 (= c!109543 (isEmpty!4155 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214))))))))

(assert (=> d!206100 (validRegex!493 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))))))

(assert (=> d!206100 (= (matchR!597 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))) (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214))))) lt!248361)))

(declare-fun b!585916 () Bool)

(declare-fun e!354149 () Bool)

(assert (=> b!585916 (= e!354149 (= (head!1235 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214))))) (c!109427 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))))))))

(declare-fun b!585917 () Bool)

(declare-fun res!252430 () Bool)

(declare-fun e!354152 () Bool)

(assert (=> b!585917 (=> res!252430 e!354152)))

(assert (=> b!585917 (= res!252430 (not (isEmpty!4155 (tail!764 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214))))))))))

(declare-fun b!585918 () Bool)

(assert (=> b!585918 (= e!354152 (not (= (head!1235 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214))))) (c!109427 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248214))))))))))

(declare-fun b!585919 () Bool)

(declare-fun res!252424 () Bool)

(declare-fun e!354151 () Bool)

(assert (=> b!585919 (=> res!252424 e!354151)))

(assert (=> b!585919 (= res!252424 e!354149)))

(declare-fun res!252428 () Bool)

(assert (=> b!585919 (=> (not res!252428) (not e!354149))))

(assert (=> b!585919 (= res!252428 lt!248361)))

(declare-fun b!585920 () Bool)

(assert (=> b!585920 (= e!354146 (matchR!597 (derivativeStep!311 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))) (head!1235 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214)))))) (tail!764 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214)))))))))

(declare-fun b!585921 () Bool)

(declare-fun res!252423 () Bool)

(assert (=> b!585921 (=> (not res!252423) (not e!354149))))

(declare-fun call!40214 () Bool)

(assert (=> b!585921 (= res!252423 (not call!40214))))

(declare-fun bm!40209 () Bool)

(assert (=> bm!40209 (= call!40214 (isEmpty!4155 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214))))))))

(declare-fun b!585922 () Bool)

(declare-fun res!252426 () Bool)

(assert (=> b!585922 (=> res!252426 e!354151)))

(assert (=> b!585922 (= res!252426 (not (is-ElementMatch!1458 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))))))))

(declare-fun e!354147 () Bool)

(assert (=> b!585922 (= e!354147 e!354151)))

(declare-fun b!585923 () Bool)

(assert (=> b!585923 (= e!354150 e!354147)))

(declare-fun c!109544 () Bool)

(assert (=> b!585923 (= c!109544 (is-EmptyLang!1458 (regex!1124 (rule!1886 (_1!3627 (get!2201 lt!248214))))))))

(declare-fun b!585924 () Bool)

(assert (=> b!585924 (= e!354147 (not lt!248361))))

(declare-fun b!585925 () Bool)

(declare-fun e!354148 () Bool)

(assert (=> b!585925 (= e!354151 e!354148)))

(declare-fun res!252429 () Bool)

(assert (=> b!585925 (=> (not res!252429) (not e!354148))))

(assert (=> b!585925 (= res!252429 (not lt!248361))))

(declare-fun b!585926 () Bool)

(assert (=> b!585926 (= e!354148 e!354152)))

(declare-fun res!252425 () Bool)

(assert (=> b!585926 (=> res!252425 e!354152)))

(assert (=> b!585926 (= res!252425 call!40214)))

(declare-fun b!585927 () Bool)

(declare-fun res!252427 () Bool)

(assert (=> b!585927 (=> (not res!252427) (not e!354149))))

(assert (=> b!585927 (= res!252427 (isEmpty!4155 (tail!764 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248214)))))))))

(declare-fun b!585928 () Bool)

(assert (=> b!585928 (= e!354150 (= lt!248361 call!40214))))

(assert (= (and d!206100 c!109543) b!585915))

(assert (= (and d!206100 (not c!109543)) b!585920))

(assert (= (and d!206100 c!109542) b!585928))

(assert (= (and d!206100 (not c!109542)) b!585923))

(assert (= (and b!585923 c!109544) b!585924))

(assert (= (and b!585923 (not c!109544)) b!585922))

(assert (= (and b!585922 (not res!252426)) b!585919))

(assert (= (and b!585919 res!252428) b!585921))

(assert (= (and b!585921 res!252423) b!585927))

(assert (= (and b!585927 res!252427) b!585916))

(assert (= (and b!585919 (not res!252424)) b!585925))

(assert (= (and b!585925 res!252429) b!585926))

(assert (= (and b!585926 (not res!252425)) b!585917))

(assert (= (and b!585917 (not res!252430)) b!585918))

(assert (= (or b!585928 b!585921 b!585926) bm!40209))

(assert (=> b!585920 m!845343))

(declare-fun m!846017 () Bool)

(assert (=> b!585920 m!846017))

(assert (=> b!585920 m!846017))

(declare-fun m!846019 () Bool)

(assert (=> b!585920 m!846019))

(assert (=> b!585920 m!845343))

(declare-fun m!846021 () Bool)

(assert (=> b!585920 m!846021))

(assert (=> b!585920 m!846019))

(assert (=> b!585920 m!846021))

(declare-fun m!846023 () Bool)

(assert (=> b!585920 m!846023))

(declare-fun m!846025 () Bool)

(assert (=> b!585915 m!846025))

(assert (=> b!585927 m!845343))

(assert (=> b!585927 m!846021))

(assert (=> b!585927 m!846021))

(declare-fun m!846027 () Bool)

(assert (=> b!585927 m!846027))

(assert (=> d!206100 m!845343))

(declare-fun m!846029 () Bool)

(assert (=> d!206100 m!846029))

(declare-fun m!846031 () Bool)

(assert (=> d!206100 m!846031))

(assert (=> b!585917 m!845343))

(assert (=> b!585917 m!846021))

(assert (=> b!585917 m!846021))

(assert (=> b!585917 m!846027))

(assert (=> b!585918 m!845343))

(assert (=> b!585918 m!846017))

(assert (=> bm!40209 m!845343))

(assert (=> bm!40209 m!846029))

(assert (=> b!585916 m!845343))

(assert (=> b!585916 m!846017))

(assert (=> b!585428 d!206100))

(assert (=> b!585428 d!205936))

(assert (=> b!585428 d!205932))

(assert (=> b!585428 d!205934))

(declare-fun d!206102 () Bool)

(assert (=> d!206102 true))

(declare-fun lambda!15879 () Int)

(declare-fun order!4713 () Int)

(declare-fun dynLambda!3363 (Int Int) Int)

(assert (=> d!206102 (< (dynLambda!3361 order!4711 (toValue!1999 (transformation!1124 (h!11158 rules!3103)))) (dynLambda!3363 order!4713 lambda!15879))))

(declare-fun Forall2!217 (Int) Bool)

(assert (=> d!206102 (= (equivClasses!419 (toChars!1858 (transformation!1124 (h!11158 rules!3103))) (toValue!1999 (transformation!1124 (h!11158 rules!3103)))) (Forall2!217 lambda!15879))))

(declare-fun bs!70049 () Bool)

(assert (= bs!70049 d!206102))

(declare-fun m!846033 () Bool)

(assert (=> bs!70049 m!846033))

(assert (=> b!585390 d!206102))

(declare-fun d!206104 () Bool)

(declare-fun e!354155 () Bool)

(assert (=> d!206104 e!354155))

(declare-fun res!252434 () Bool)

(assert (=> d!206104 (=> (not res!252434) (not e!354155))))

(declare-fun lt!248362 () List!5766)

(assert (=> d!206104 (= res!252434 (= (content!1024 lt!248362) (set.union (content!1024 (t!78475 lt!248155)) (content!1024 (_2!3627 (v!16347 lt!248157))))))))

(declare-fun e!354156 () List!5766)

(assert (=> d!206104 (= lt!248362 e!354156)))

(declare-fun c!109545 () Bool)

(assert (=> d!206104 (= c!109545 (is-Nil!5756 (t!78475 lt!248155)))))

(assert (=> d!206104 (= (++!1612 (t!78475 lt!248155) (_2!3627 (v!16347 lt!248157))) lt!248362)))

(declare-fun b!585934 () Bool)

(assert (=> b!585934 (= e!354156 (Cons!5756 (h!11157 (t!78475 lt!248155)) (++!1612 (t!78475 (t!78475 lt!248155)) (_2!3627 (v!16347 lt!248157)))))))

(declare-fun b!585936 () Bool)

(assert (=> b!585936 (= e!354155 (or (not (= (_2!3627 (v!16347 lt!248157)) Nil!5756)) (= lt!248362 (t!78475 lt!248155))))))

(declare-fun b!585935 () Bool)

(declare-fun res!252433 () Bool)

(assert (=> b!585935 (=> (not res!252433) (not e!354155))))

(assert (=> b!585935 (= res!252433 (= (size!4575 lt!248362) (+ (size!4575 (t!78475 lt!248155)) (size!4575 (_2!3627 (v!16347 lt!248157))))))))

(declare-fun b!585933 () Bool)

(assert (=> b!585933 (= e!354156 (_2!3627 (v!16347 lt!248157)))))

(assert (= (and d!206104 c!109545) b!585933))

(assert (= (and d!206104 (not c!109545)) b!585934))

(assert (= (and d!206104 res!252434) b!585935))

(assert (= (and b!585935 res!252433) b!585936))

(declare-fun m!846035 () Bool)

(assert (=> d!206104 m!846035))

(declare-fun m!846037 () Bool)

(assert (=> d!206104 m!846037))

(assert (=> d!206104 m!845405))

(declare-fun m!846039 () Bool)

(assert (=> b!585934 m!846039))

(declare-fun m!846041 () Bool)

(assert (=> b!585935 m!846041))

(assert (=> b!585935 m!845471))

(assert (=> b!585935 m!845411))

(assert (=> b!585473 d!206104))

(declare-fun d!206106 () Bool)

(assert (=> d!206106 (and (= lt!248153 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!206106 true))

(declare-fun _$50!250 () Unit!10454)

(assert (=> d!206106 (= (choose!4203 lt!248153 suffix!1342 input!2705 suffix!1342) _$50!250)))

(assert (=> d!205880 d!206106))

(assert (=> d!205880 d!205856))

(assert (=> d!205880 d!205848))

(declare-fun bs!70050 () Bool)

(declare-fun d!206108 () Bool)

(assert (= bs!70050 (and d!206108 d!206102)))

(declare-fun lambda!15880 () Int)

(assert (=> bs!70050 (= (= (toValue!1999 (transformation!1124 (rule!1886 token!491))) (toValue!1999 (transformation!1124 (h!11158 rules!3103)))) (= lambda!15880 lambda!15879))))

(assert (=> d!206108 true))

(assert (=> d!206108 (< (dynLambda!3361 order!4711 (toValue!1999 (transformation!1124 (rule!1886 token!491)))) (dynLambda!3363 order!4713 lambda!15880))))

(assert (=> d!206108 (= (equivClasses!419 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (toValue!1999 (transformation!1124 (rule!1886 token!491)))) (Forall2!217 lambda!15880))))

(declare-fun bs!70051 () Bool)

(assert (= bs!70051 d!206108))

(declare-fun m!846043 () Bool)

(assert (=> bs!70051 m!846043))

(assert (=> b!585464 d!206108))

(declare-fun b!585937 () Bool)

(declare-fun e!354157 () Bool)

(declare-fun lt!248365 () Option!1475)

(assert (=> b!585937 (= e!354157 (= (size!4574 (_1!3627 (get!2201 lt!248365))) (size!4575 (originalCharacters!1163 (_1!3627 (get!2201 lt!248365))))))))

(declare-fun b!585938 () Bool)

(declare-fun e!354159 () Option!1475)

(declare-fun lt!248363 () tuple2!6730)

(assert (=> b!585938 (= e!354159 (Some!1474 (tuple2!6727 (Token!1985 (apply!1381 (transformation!1124 (h!11158 rules!3103)) (seqFromList!1304 (_1!3629 lt!248363))) (h!11158 rules!3103) (size!4578 (seqFromList!1304 (_1!3629 lt!248363))) (_1!3629 lt!248363)) (_2!3629 lt!248363))))))

(declare-fun lt!248364 () Unit!10454)

(assert (=> b!585938 (= lt!248364 (longestMatchIsAcceptedByMatchOrIsEmpty!166 (regex!1124 (h!11158 rules!3103)) lt!248154))))

(declare-fun res!252436 () Bool)

(assert (=> b!585938 (= res!252436 (isEmpty!4155 (_1!3629 (findLongestMatchInner!182 (regex!1124 (h!11158 rules!3103)) Nil!5756 (size!4575 Nil!5756) lt!248154 lt!248154 (size!4575 lt!248154)))))))

(declare-fun e!354160 () Bool)

(assert (=> b!585938 (=> res!252436 e!354160)))

(assert (=> b!585938 e!354160))

(declare-fun lt!248366 () Unit!10454)

(assert (=> b!585938 (= lt!248366 lt!248364)))

(declare-fun lt!248367 () Unit!10454)

(assert (=> b!585938 (= lt!248367 (lemmaSemiInverse!219 (transformation!1124 (h!11158 rules!3103)) (seqFromList!1304 (_1!3629 lt!248363))))))

(declare-fun d!206110 () Bool)

(declare-fun e!354158 () Bool)

(assert (=> d!206110 e!354158))

(declare-fun res!252438 () Bool)

(assert (=> d!206110 (=> res!252438 e!354158)))

(assert (=> d!206110 (= res!252438 (isEmpty!4159 lt!248365))))

(assert (=> d!206110 (= lt!248365 e!354159)))

(declare-fun c!109546 () Bool)

(assert (=> d!206110 (= c!109546 (isEmpty!4155 (_1!3629 lt!248363)))))

(assert (=> d!206110 (= lt!248363 (findLongestMatch!161 (regex!1124 (h!11158 rules!3103)) lt!248154))))

(assert (=> d!206110 (ruleValid!326 thiss!22590 (h!11158 rules!3103))))

(assert (=> d!206110 (= (maxPrefixOneRule!401 thiss!22590 (h!11158 rules!3103) lt!248154) lt!248365)))

(declare-fun b!585939 () Bool)

(assert (=> b!585939 (= e!354159 None!1474)))

(declare-fun b!585940 () Bool)

(declare-fun res!252441 () Bool)

(assert (=> b!585940 (=> (not res!252441) (not e!354157))))

(assert (=> b!585940 (= res!252441 (< (size!4575 (_2!3627 (get!2201 lt!248365))) (size!4575 lt!248154)))))

(declare-fun b!585941 () Bool)

(declare-fun res!252440 () Bool)

(assert (=> b!585941 (=> (not res!252440) (not e!354157))))

(assert (=> b!585941 (= res!252440 (= (++!1612 (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248365)))) (_2!3627 (get!2201 lt!248365))) lt!248154))))

(declare-fun b!585942 () Bool)

(assert (=> b!585942 (= e!354158 e!354157)))

(declare-fun res!252437 () Bool)

(assert (=> b!585942 (=> (not res!252437) (not e!354157))))

(assert (=> b!585942 (= res!252437 (matchR!597 (regex!1124 (h!11158 rules!3103)) (list!2399 (charsOf!753 (_1!3627 (get!2201 lt!248365))))))))

(declare-fun b!585943 () Bool)

(assert (=> b!585943 (= e!354160 (matchR!597 (regex!1124 (h!11158 rules!3103)) (_1!3629 (findLongestMatchInner!182 (regex!1124 (h!11158 rules!3103)) Nil!5756 (size!4575 Nil!5756) lt!248154 lt!248154 (size!4575 lt!248154)))))))

(declare-fun b!585944 () Bool)

(declare-fun res!252435 () Bool)

(assert (=> b!585944 (=> (not res!252435) (not e!354157))))

(assert (=> b!585944 (= res!252435 (= (rule!1886 (_1!3627 (get!2201 lt!248365))) (h!11158 rules!3103)))))

(declare-fun b!585945 () Bool)

(declare-fun res!252439 () Bool)

(assert (=> b!585945 (=> (not res!252439) (not e!354157))))

(assert (=> b!585945 (= res!252439 (= (value!36902 (_1!3627 (get!2201 lt!248365))) (apply!1381 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248365)))) (seqFromList!1304 (originalCharacters!1163 (_1!3627 (get!2201 lt!248365)))))))))

(assert (= (and d!206110 c!109546) b!585939))

(assert (= (and d!206110 (not c!109546)) b!585938))

(assert (= (and b!585938 (not res!252436)) b!585943))

(assert (= (and d!206110 (not res!252438)) b!585942))

(assert (= (and b!585942 res!252437) b!585941))

(assert (= (and b!585941 res!252440) b!585940))

(assert (= (and b!585940 res!252441) b!585944))

(assert (= (and b!585944 res!252435) b!585945))

(assert (= (and b!585945 res!252439) b!585937))

(declare-fun m!846045 () Bool)

(assert (=> b!585944 m!846045))

(assert (=> b!585941 m!846045))

(declare-fun m!846047 () Bool)

(assert (=> b!585941 m!846047))

(assert (=> b!585941 m!846047))

(declare-fun m!846049 () Bool)

(assert (=> b!585941 m!846049))

(assert (=> b!585941 m!846049))

(declare-fun m!846051 () Bool)

(assert (=> b!585941 m!846051))

(assert (=> b!585945 m!846045))

(declare-fun m!846053 () Bool)

(assert (=> b!585945 m!846053))

(assert (=> b!585945 m!846053))

(declare-fun m!846055 () Bool)

(assert (=> b!585945 m!846055))

(assert (=> b!585942 m!846045))

(assert (=> b!585942 m!846047))

(assert (=> b!585942 m!846047))

(assert (=> b!585942 m!846049))

(assert (=> b!585942 m!846049))

(declare-fun m!846057 () Bool)

(assert (=> b!585942 m!846057))

(assert (=> b!585943 m!845907))

(assert (=> b!585943 m!845351))

(assert (=> b!585943 m!845907))

(assert (=> b!585943 m!845351))

(declare-fun m!846059 () Bool)

(assert (=> b!585943 m!846059))

(declare-fun m!846061 () Bool)

(assert (=> b!585943 m!846061))

(declare-fun m!846063 () Bool)

(assert (=> b!585938 m!846063))

(assert (=> b!585938 m!845907))

(declare-fun m!846065 () Bool)

(assert (=> b!585938 m!846065))

(declare-fun m!846067 () Bool)

(assert (=> b!585938 m!846067))

(declare-fun m!846069 () Bool)

(assert (=> b!585938 m!846069))

(assert (=> b!585938 m!846065))

(declare-fun m!846071 () Bool)

(assert (=> b!585938 m!846071))

(assert (=> b!585938 m!846065))

(assert (=> b!585938 m!846065))

(declare-fun m!846073 () Bool)

(assert (=> b!585938 m!846073))

(assert (=> b!585938 m!845351))

(assert (=> b!585938 m!845907))

(assert (=> b!585938 m!845351))

(assert (=> b!585938 m!846059))

(declare-fun m!846075 () Bool)

(assert (=> d!206110 m!846075))

(declare-fun m!846077 () Bool)

(assert (=> d!206110 m!846077))

(declare-fun m!846079 () Bool)

(assert (=> d!206110 m!846079))

(assert (=> d!206110 m!845707))

(assert (=> b!585940 m!846045))

(declare-fun m!846081 () Bool)

(assert (=> b!585940 m!846081))

(assert (=> b!585940 m!845351))

(assert (=> b!585937 m!846045))

(declare-fun m!846083 () Bool)

(assert (=> b!585937 m!846083))

(assert (=> bm!40195 d!206110))

(declare-fun d!206112 () Bool)

(declare-fun res!252446 () Bool)

(declare-fun e!354165 () Bool)

(assert (=> d!206112 (=> res!252446 e!354165)))

(assert (=> d!206112 (= res!252446 (is-Nil!5757 rules!3103))))

(assert (=> d!206112 (= (noDuplicateTag!400 thiss!22590 rules!3103 Nil!5761) e!354165)))

(declare-fun b!585950 () Bool)

(declare-fun e!354166 () Bool)

(assert (=> b!585950 (= e!354165 e!354166)))

(declare-fun res!252447 () Bool)

(assert (=> b!585950 (=> (not res!252447) (not e!354166))))

(declare-fun contains!1356 (List!5771 String!7486) Bool)

(assert (=> b!585950 (= res!252447 (not (contains!1356 Nil!5761 (tag!1386 (h!11158 rules!3103)))))))

(declare-fun b!585951 () Bool)

(assert (=> b!585951 (= e!354166 (noDuplicateTag!400 thiss!22590 (t!78476 rules!3103) (Cons!5761 (tag!1386 (h!11158 rules!3103)) Nil!5761)))))

(assert (= (and d!206112 (not res!252446)) b!585950))

(assert (= (and b!585950 res!252447) b!585951))

(declare-fun m!846085 () Bool)

(assert (=> b!585950 m!846085))

(declare-fun m!846087 () Bool)

(assert (=> b!585951 m!846087))

(assert (=> b!585471 d!206112))

(declare-fun d!206114 () Bool)

(assert (=> d!206114 (= (isEmpty!4155 (originalCharacters!1163 token!491)) (is-Nil!5756 (originalCharacters!1163 token!491)))))

(assert (=> d!205818 d!206114))

(declare-fun d!206116 () Bool)

(assert (=> d!206116 (= (isEmpty!4159 lt!248149) (not (is-Some!1474 lt!248149)))))

(assert (=> d!205842 d!206116))

(declare-fun d!206118 () Bool)

(declare-fun lt!248368 () Int)

(assert (=> d!206118 (>= lt!248368 0)))

(declare-fun e!354167 () Int)

(assert (=> d!206118 (= lt!248368 e!354167)))

(declare-fun c!109547 () Bool)

(assert (=> d!206118 (= c!109547 (is-Nil!5756 (t!78475 lt!248155)))))

(assert (=> d!206118 (= (size!4575 (t!78475 lt!248155)) lt!248368)))

(declare-fun b!585952 () Bool)

(assert (=> b!585952 (= e!354167 0)))

(declare-fun b!585953 () Bool)

(assert (=> b!585953 (= e!354167 (+ 1 (size!4575 (t!78475 (t!78475 lt!248155)))))))

(assert (= (and d!206118 c!109547) b!585952))

(assert (= (and d!206118 (not c!109547)) b!585953))

(declare-fun m!846089 () Bool)

(assert (=> b!585953 m!846089))

(assert (=> b!585508 d!206118))

(assert (=> b!585496 d!205992))

(assert (=> b!585496 d!205872))

(declare-fun d!206120 () Bool)

(declare-fun c!109548 () Bool)

(assert (=> d!206120 (= c!109548 (is-Node!1841 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491)))))))

(declare-fun e!354168 () Bool)

(assert (=> d!206120 (= (inv!7271 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491)))) e!354168)))

(declare-fun b!585954 () Bool)

(assert (=> b!585954 (= e!354168 (inv!7275 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491)))))))

(declare-fun b!585955 () Bool)

(declare-fun e!354169 () Bool)

(assert (=> b!585955 (= e!354168 e!354169)))

(declare-fun res!252448 () Bool)

(assert (=> b!585955 (= res!252448 (not (is-Leaf!2911 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491))))))))

(assert (=> b!585955 (=> res!252448 e!354169)))

(declare-fun b!585956 () Bool)

(assert (=> b!585956 (= e!354169 (inv!7276 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491)))))))

(assert (= (and d!206120 c!109548) b!585954))

(assert (= (and d!206120 (not c!109548)) b!585955))

(assert (= (and b!585955 (not res!252448)) b!585956))

(declare-fun m!846091 () Bool)

(assert (=> b!585954 m!846091))

(declare-fun m!846093 () Bool)

(assert (=> b!585956 m!846093))

(assert (=> b!585375 d!206120))

(declare-fun d!206122 () Bool)

(declare-fun c!109549 () Bool)

(assert (=> d!206122 (= c!109549 (is-Nil!5756 lt!248232))))

(declare-fun e!354170 () (Set C!3838))

(assert (=> d!206122 (= (content!1024 lt!248232) e!354170)))

(declare-fun b!585957 () Bool)

(assert (=> b!585957 (= e!354170 (as set.empty (Set C!3838)))))

(declare-fun b!585958 () Bool)

(assert (=> b!585958 (= e!354170 (set.union (set.insert (h!11157 lt!248232) (as set.empty (Set C!3838))) (content!1024 (t!78475 lt!248232))))))

(assert (= (and d!206122 c!109549) b!585957))

(assert (= (and d!206122 (not c!109549)) b!585958))

(declare-fun m!846095 () Bool)

(assert (=> b!585958 m!846095))

(declare-fun m!846097 () Bool)

(assert (=> b!585958 m!846097))

(assert (=> d!205862 d!206122))

(declare-fun d!206124 () Bool)

(declare-fun c!109550 () Bool)

(assert (=> d!206124 (= c!109550 (is-Nil!5756 lt!248155))))

(declare-fun e!354171 () (Set C!3838))

(assert (=> d!206124 (= (content!1024 lt!248155) e!354171)))

(declare-fun b!585959 () Bool)

(assert (=> b!585959 (= e!354171 (as set.empty (Set C!3838)))))

(declare-fun b!585960 () Bool)

(assert (=> b!585960 (= e!354171 (set.union (set.insert (h!11157 lt!248155) (as set.empty (Set C!3838))) (content!1024 (t!78475 lt!248155))))))

(assert (= (and d!206124 c!109550) b!585959))

(assert (= (and d!206124 (not c!109550)) b!585960))

(declare-fun m!846099 () Bool)

(assert (=> b!585960 m!846099))

(assert (=> b!585960 m!846037))

(assert (=> d!205862 d!206124))

(declare-fun d!206126 () Bool)

(declare-fun c!109551 () Bool)

(assert (=> d!206126 (= c!109551 (is-Nil!5756 (_2!3627 (v!16347 lt!248157))))))

(declare-fun e!354172 () (Set C!3838))

(assert (=> d!206126 (= (content!1024 (_2!3627 (v!16347 lt!248157))) e!354172)))

(declare-fun b!585961 () Bool)

(assert (=> b!585961 (= e!354172 (as set.empty (Set C!3838)))))

(declare-fun b!585962 () Bool)

(assert (=> b!585962 (= e!354172 (set.union (set.insert (h!11157 (_2!3627 (v!16347 lt!248157))) (as set.empty (Set C!3838))) (content!1024 (t!78475 (_2!3627 (v!16347 lt!248157))))))))

(assert (= (and d!206126 c!109551) b!585961))

(assert (= (and d!206126 (not c!109551)) b!585962))

(declare-fun m!846101 () Bool)

(assert (=> b!585962 m!846101))

(declare-fun m!846103 () Bool)

(assert (=> b!585962 m!846103))

(assert (=> d!205862 d!206126))

(declare-fun b!585963 () Bool)

(declare-fun e!354174 () Bool)

(declare-fun e!354175 () Bool)

(assert (=> b!585963 (= e!354174 e!354175)))

(declare-fun res!252451 () Bool)

(assert (=> b!585963 (=> (not res!252451) (not e!354175))))

(assert (=> b!585963 (= res!252451 (not (is-Nil!5756 (tail!764 lt!248146))))))

(declare-fun d!206128 () Bool)

(declare-fun e!354173 () Bool)

(assert (=> d!206128 e!354173))

(declare-fun res!252450 () Bool)

(assert (=> d!206128 (=> res!252450 e!354173)))

(declare-fun lt!248369 () Bool)

(assert (=> d!206128 (= res!252450 (not lt!248369))))

(assert (=> d!206128 (= lt!248369 e!354174)))

(declare-fun res!252452 () Bool)

(assert (=> d!206128 (=> res!252452 e!354174)))

(assert (=> d!206128 (= res!252452 (is-Nil!5756 (tail!764 lt!248155)))))

(assert (=> d!206128 (= (isPrefix!752 (tail!764 lt!248155) (tail!764 lt!248146)) lt!248369)))

(declare-fun b!585966 () Bool)

(assert (=> b!585966 (= e!354173 (>= (size!4575 (tail!764 lt!248146)) (size!4575 (tail!764 lt!248155))))))

(declare-fun b!585964 () Bool)

(declare-fun res!252449 () Bool)

(assert (=> b!585964 (=> (not res!252449) (not e!354175))))

(assert (=> b!585964 (= res!252449 (= (head!1235 (tail!764 lt!248155)) (head!1235 (tail!764 lt!248146))))))

(declare-fun b!585965 () Bool)

(assert (=> b!585965 (= e!354175 (isPrefix!752 (tail!764 (tail!764 lt!248155)) (tail!764 (tail!764 lt!248146))))))

(assert (= (and d!206128 (not res!252452)) b!585963))

(assert (= (and b!585963 res!252451) b!585964))

(assert (= (and b!585964 res!252449) b!585965))

(assert (= (and d!206128 (not res!252450)) b!585966))

(assert (=> b!585966 m!845491))

(declare-fun m!846105 () Bool)

(assert (=> b!585966 m!846105))

(assert (=> b!585966 m!845433))

(assert (=> b!585966 m!845761))

(assert (=> b!585964 m!845433))

(assert (=> b!585964 m!845763))

(assert (=> b!585964 m!845491))

(declare-fun m!846107 () Bool)

(assert (=> b!585964 m!846107))

(assert (=> b!585965 m!845433))

(assert (=> b!585965 m!845767))

(assert (=> b!585965 m!845491))

(declare-fun m!846109 () Bool)

(assert (=> b!585965 m!846109))

(assert (=> b!585965 m!845767))

(assert (=> b!585965 m!846109))

(declare-fun m!846111 () Bool)

(assert (=> b!585965 m!846111))

(assert (=> b!585520 d!206128))

(assert (=> b!585520 d!206016))

(declare-fun d!206130 () Bool)

(assert (=> d!206130 (= (tail!764 lt!248146) (t!78475 lt!248146))))

(assert (=> b!585520 d!206130))

(assert (=> b!585370 d!206022))

(declare-fun d!206132 () Bool)

(declare-fun c!109552 () Bool)

(assert (=> d!206132 (= c!109552 (is-Nil!5756 lt!248231))))

(declare-fun e!354176 () (Set C!3838))

(assert (=> d!206132 (= (content!1024 lt!248231) e!354176)))

(declare-fun b!585967 () Bool)

(assert (=> b!585967 (= e!354176 (as set.empty (Set C!3838)))))

(declare-fun b!585968 () Bool)

(assert (=> b!585968 (= e!354176 (set.union (set.insert (h!11157 lt!248231) (as set.empty (Set C!3838))) (content!1024 (t!78475 lt!248231))))))

(assert (= (and d!206132 c!109552) b!585967))

(assert (= (and d!206132 (not c!109552)) b!585968))

(declare-fun m!846113 () Bool)

(assert (=> b!585968 m!846113))

(declare-fun m!846115 () Bool)

(assert (=> b!585968 m!846115))

(assert (=> d!205856 d!206132))

(declare-fun d!206134 () Bool)

(declare-fun c!109553 () Bool)

(assert (=> d!206134 (= c!109553 (is-Nil!5756 lt!248153))))

(declare-fun e!354177 () (Set C!3838))

(assert (=> d!206134 (= (content!1024 lt!248153) e!354177)))

(declare-fun b!585969 () Bool)

(assert (=> b!585969 (= e!354177 (as set.empty (Set C!3838)))))

(declare-fun b!585970 () Bool)

(assert (=> b!585970 (= e!354177 (set.union (set.insert (h!11157 lt!248153) (as set.empty (Set C!3838))) (content!1024 (t!78475 lt!248153))))))

(assert (= (and d!206134 c!109553) b!585969))

(assert (= (and d!206134 (not c!109553)) b!585970))

(declare-fun m!846117 () Bool)

(assert (=> b!585970 m!846117))

(assert (=> b!585970 m!845949))

(assert (=> d!205856 d!206134))

(assert (=> d!205856 d!206076))

(declare-fun b!585973 () Bool)

(declare-fun e!354178 () Bool)

(declare-fun tp!182734 () Bool)

(assert (=> b!585973 (= e!354178 tp!182734)))

(declare-fun b!585971 () Bool)

(assert (=> b!585971 (= e!354178 tp_is_empty!3271)))

(assert (=> b!585576 (= tp!182684 e!354178)))

(declare-fun b!585974 () Bool)

(declare-fun tp!182732 () Bool)

(declare-fun tp!182735 () Bool)

(assert (=> b!585974 (= e!354178 (and tp!182732 tp!182735))))

(declare-fun b!585972 () Bool)

(declare-fun tp!182731 () Bool)

(declare-fun tp!182733 () Bool)

(assert (=> b!585972 (= e!354178 (and tp!182731 tp!182733))))

(assert (= (and b!585576 (is-ElementMatch!1458 (regex!1124 (h!11158 (t!78476 rules!3103))))) b!585971))

(assert (= (and b!585576 (is-Concat!2606 (regex!1124 (h!11158 (t!78476 rules!3103))))) b!585972))

(assert (= (and b!585576 (is-Star!1458 (regex!1124 (h!11158 (t!78476 rules!3103))))) b!585973))

(assert (= (and b!585576 (is-Union!1458 (regex!1124 (h!11158 (t!78476 rules!3103))))) b!585974))

(declare-fun b!585977 () Bool)

(declare-fun e!354179 () Bool)

(declare-fun tp!182739 () Bool)

(assert (=> b!585977 (= e!354179 tp!182739)))

(declare-fun b!585975 () Bool)

(assert (=> b!585975 (= e!354179 tp_is_empty!3271)))

(assert (=> b!585561 (= tp!182671 e!354179)))

(declare-fun b!585978 () Bool)

(declare-fun tp!182737 () Bool)

(declare-fun tp!182740 () Bool)

(assert (=> b!585978 (= e!354179 (and tp!182737 tp!182740))))

(declare-fun b!585976 () Bool)

(declare-fun tp!182736 () Bool)

(declare-fun tp!182738 () Bool)

(assert (=> b!585976 (= e!354179 (and tp!182736 tp!182738))))

(assert (= (and b!585561 (is-ElementMatch!1458 (reg!1787 (regex!1124 (h!11158 rules!3103))))) b!585975))

(assert (= (and b!585561 (is-Concat!2606 (reg!1787 (regex!1124 (h!11158 rules!3103))))) b!585976))

(assert (= (and b!585561 (is-Star!1458 (reg!1787 (regex!1124 (h!11158 rules!3103))))) b!585977))

(assert (= (and b!585561 (is-Union!1458 (reg!1787 (regex!1124 (h!11158 rules!3103))))) b!585978))

(declare-fun b!585981 () Bool)

(declare-fun e!354180 () Bool)

(declare-fun tp!182744 () Bool)

(assert (=> b!585981 (= e!354180 tp!182744)))

(declare-fun b!585979 () Bool)

(assert (=> b!585979 (= e!354180 tp_is_empty!3271)))

(assert (=> b!585562 (= tp!182669 e!354180)))

(declare-fun b!585982 () Bool)

(declare-fun tp!182742 () Bool)

(declare-fun tp!182745 () Bool)

(assert (=> b!585982 (= e!354180 (and tp!182742 tp!182745))))

(declare-fun b!585980 () Bool)

(declare-fun tp!182741 () Bool)

(declare-fun tp!182743 () Bool)

(assert (=> b!585980 (= e!354180 (and tp!182741 tp!182743))))

(assert (= (and b!585562 (is-ElementMatch!1458 (regOne!3429 (regex!1124 (h!11158 rules!3103))))) b!585979))

(assert (= (and b!585562 (is-Concat!2606 (regOne!3429 (regex!1124 (h!11158 rules!3103))))) b!585980))

(assert (= (and b!585562 (is-Star!1458 (regOne!3429 (regex!1124 (h!11158 rules!3103))))) b!585981))

(assert (= (and b!585562 (is-Union!1458 (regOne!3429 (regex!1124 (h!11158 rules!3103))))) b!585982))

(declare-fun b!585985 () Bool)

(declare-fun e!354181 () Bool)

(declare-fun tp!182749 () Bool)

(assert (=> b!585985 (= e!354181 tp!182749)))

(declare-fun b!585983 () Bool)

(assert (=> b!585983 (= e!354181 tp_is_empty!3271)))

(assert (=> b!585562 (= tp!182672 e!354181)))

(declare-fun b!585986 () Bool)

(declare-fun tp!182747 () Bool)

(declare-fun tp!182750 () Bool)

(assert (=> b!585986 (= e!354181 (and tp!182747 tp!182750))))

(declare-fun b!585984 () Bool)

(declare-fun tp!182746 () Bool)

(declare-fun tp!182748 () Bool)

(assert (=> b!585984 (= e!354181 (and tp!182746 tp!182748))))

(assert (= (and b!585562 (is-ElementMatch!1458 (regTwo!3429 (regex!1124 (h!11158 rules!3103))))) b!585983))

(assert (= (and b!585562 (is-Concat!2606 (regTwo!3429 (regex!1124 (h!11158 rules!3103))))) b!585984))

(assert (= (and b!585562 (is-Star!1458 (regTwo!3429 (regex!1124 (h!11158 rules!3103))))) b!585985))

(assert (= (and b!585562 (is-Union!1458 (regTwo!3429 (regex!1124 (h!11158 rules!3103))))) b!585986))

(declare-fun b!585987 () Bool)

(declare-fun e!354182 () Bool)

(declare-fun tp!182751 () Bool)

(assert (=> b!585987 (= e!354182 (and tp_is_empty!3271 tp!182751))))

(assert (=> b!585546 (= tp!182655 e!354182)))

(assert (= (and b!585546 (is-Cons!5756 (t!78475 (originalCharacters!1163 token!491)))) b!585987))

(declare-fun b!585988 () Bool)

(declare-fun e!354183 () Bool)

(declare-fun tp!182752 () Bool)

(assert (=> b!585988 (= e!354183 (and tp_is_empty!3271 tp!182752))))

(assert (=> b!585548 (= tp!182657 e!354183)))

(assert (= (and b!585548 (is-Cons!5756 (t!78475 (t!78475 suffix!1342)))) b!585988))

(declare-fun b!585991 () Bool)

(declare-fun b_free!16349 () Bool)

(declare-fun b_next!16365 () Bool)

(assert (=> b!585991 (= b_free!16349 (not b_next!16365))))

(declare-fun t!78550 () Bool)

(declare-fun tb!51321 () Bool)

(assert (=> (and b!585991 (= (toValue!1999 (transformation!1124 (h!11158 (t!78476 (t!78476 rules!3103))))) (toValue!1999 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))))) t!78550) tb!51321))

(declare-fun result!57484 () Bool)

(assert (= result!57484 result!57450))

(assert (=> d!205950 t!78550))

(declare-fun tb!51323 () Bool)

(declare-fun t!78552 () Bool)

(assert (=> (and b!585991 (= (toValue!1999 (transformation!1124 (h!11158 (t!78476 (t!78476 rules!3103))))) (toValue!1999 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))))) t!78552) tb!51323))

(declare-fun result!57486 () Bool)

(assert (= result!57486 result!57470))

(assert (=> d!206034 t!78552))

(declare-fun tp!182754 () Bool)

(declare-fun b_and!57741 () Bool)

(assert (=> b!585991 (= tp!182754 (and (=> t!78550 result!57484) (=> t!78552 result!57486) b_and!57741))))

(declare-fun b_free!16351 () Bool)

(declare-fun b_next!16367 () Bool)

(assert (=> b!585991 (= b_free!16351 (not b_next!16367))))

(declare-fun t!78554 () Bool)

(declare-fun tb!51325 () Bool)

(assert (=> (and b!585991 (= (toChars!1858 (transformation!1124 (h!11158 (t!78476 (t!78476 rules!3103))))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248214)))))) t!78554) tb!51325))

(declare-fun result!57488 () Bool)

(assert (= result!57488 result!57438))

(assert (=> d!205934 t!78554))

(declare-fun tb!51327 () Bool)

(declare-fun t!78556 () Bool)

(assert (=> (and b!585991 (= (toChars!1858 (transformation!1124 (h!11158 (t!78476 (t!78476 rules!3103))))) (toChars!1858 (transformation!1124 (rule!1886 token!491)))) t!78556) tb!51327))

(declare-fun result!57490 () Bool)

(assert (= result!57490 result!57404))

(assert (=> d!205832 t!78556))

(assert (=> b!585369 t!78556))

(declare-fun t!78558 () Bool)

(declare-fun tb!51329 () Bool)

(assert (=> (and b!585991 (= (toChars!1858 (transformation!1124 (h!11158 (t!78476 (t!78476 rules!3103))))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157)))))) t!78558) tb!51329))

(declare-fun result!57492 () Bool)

(assert (= result!57492 result!57410))

(assert (=> d!205878 t!78558))

(declare-fun t!78560 () Bool)

(declare-fun tb!51331 () Bool)

(assert (=> (and b!585991 (= (toChars!1858 (transformation!1124 (h!11158 (t!78476 (t!78476 rules!3103))))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (get!2201 lt!248261)))))) t!78560) tb!51331))

(declare-fun result!57494 () Bool)

(assert (= result!57494 result!57444))

(assert (=> d!205942 t!78560))

(declare-fun b_and!57743 () Bool)

(declare-fun tp!182753 () Bool)

(assert (=> b!585991 (= tp!182753 (and (=> t!78560 result!57494) (=> t!78554 result!57488) (=> t!78556 result!57490) (=> t!78558 result!57492) b_and!57743))))

(declare-fun e!354186 () Bool)

(assert (=> b!585991 (= e!354186 (and tp!182754 tp!182753))))

(declare-fun e!354184 () Bool)

(declare-fun tp!182756 () Bool)

(declare-fun b!585990 () Bool)

(assert (=> b!585990 (= e!354184 (and tp!182756 (inv!7264 (tag!1386 (h!11158 (t!78476 (t!78476 rules!3103))))) (inv!7267 (transformation!1124 (h!11158 (t!78476 (t!78476 rules!3103))))) e!354186))))

(declare-fun b!585989 () Bool)

(declare-fun e!354185 () Bool)

(declare-fun tp!182755 () Bool)

(assert (=> b!585989 (= e!354185 (and e!354184 tp!182755))))

(assert (=> b!585575 (= tp!182683 e!354185)))

(assert (= b!585990 b!585991))

(assert (= b!585989 b!585990))

(assert (= (and b!585575 (is-Cons!5757 (t!78476 (t!78476 rules!3103)))) b!585989))

(declare-fun m!846119 () Bool)

(assert (=> b!585990 m!846119))

(declare-fun m!846121 () Bool)

(assert (=> b!585990 m!846121))

(declare-fun b!585994 () Bool)

(declare-fun e!354188 () Bool)

(declare-fun tp!182760 () Bool)

(assert (=> b!585994 (= e!354188 tp!182760)))

(declare-fun b!585992 () Bool)

(assert (=> b!585992 (= e!354188 tp_is_empty!3271)))

(assert (=> b!585560 (= tp!182668 e!354188)))

(declare-fun b!585995 () Bool)

(declare-fun tp!182758 () Bool)

(declare-fun tp!182761 () Bool)

(assert (=> b!585995 (= e!354188 (and tp!182758 tp!182761))))

(declare-fun b!585993 () Bool)

(declare-fun tp!182757 () Bool)

(declare-fun tp!182759 () Bool)

(assert (=> b!585993 (= e!354188 (and tp!182757 tp!182759))))

(assert (= (and b!585560 (is-ElementMatch!1458 (regOne!3428 (regex!1124 (h!11158 rules!3103))))) b!585992))

(assert (= (and b!585560 (is-Concat!2606 (regOne!3428 (regex!1124 (h!11158 rules!3103))))) b!585993))

(assert (= (and b!585560 (is-Star!1458 (regOne!3428 (regex!1124 (h!11158 rules!3103))))) b!585994))

(assert (= (and b!585560 (is-Union!1458 (regOne!3428 (regex!1124 (h!11158 rules!3103))))) b!585995))

(declare-fun b!585998 () Bool)

(declare-fun e!354189 () Bool)

(declare-fun tp!182765 () Bool)

(assert (=> b!585998 (= e!354189 tp!182765)))

(declare-fun b!585996 () Bool)

(assert (=> b!585996 (= e!354189 tp_is_empty!3271)))

(assert (=> b!585560 (= tp!182670 e!354189)))

(declare-fun b!585999 () Bool)

(declare-fun tp!182763 () Bool)

(declare-fun tp!182766 () Bool)

(assert (=> b!585999 (= e!354189 (and tp!182763 tp!182766))))

(declare-fun b!585997 () Bool)

(declare-fun tp!182762 () Bool)

(declare-fun tp!182764 () Bool)

(assert (=> b!585997 (= e!354189 (and tp!182762 tp!182764))))

(assert (= (and b!585560 (is-ElementMatch!1458 (regTwo!3428 (regex!1124 (h!11158 rules!3103))))) b!585996))

(assert (= (and b!585560 (is-Concat!2606 (regTwo!3428 (regex!1124 (h!11158 rules!3103))))) b!585997))

(assert (= (and b!585560 (is-Star!1458 (regTwo!3428 (regex!1124 (h!11158 rules!3103))))) b!585998))

(assert (= (and b!585560 (is-Union!1458 (regTwo!3428 (regex!1124 (h!11158 rules!3103))))) b!585999))

(declare-fun tp!182775 () Bool)

(declare-fun tp!182773 () Bool)

(declare-fun b!586008 () Bool)

(declare-fun e!354195 () Bool)

(assert (=> b!586008 (= e!354195 (and (inv!7271 (left!4692 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491))))) tp!182773 (inv!7271 (right!5022 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491))))) tp!182775))))

(declare-fun b!586010 () Bool)

(declare-fun e!354194 () Bool)

(declare-fun tp!182774 () Bool)

(assert (=> b!586010 (= e!354194 tp!182774)))

(declare-fun b!586009 () Bool)

(declare-fun inv!7277 (IArray!3683) Bool)

(assert (=> b!586009 (= e!354195 (and (inv!7277 (xs!4478 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491))))) e!354194))))

(assert (=> b!585375 (= tp!182650 (and (inv!7271 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491)))) e!354195))))

(assert (= (and b!585375 (is-Node!1841 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491))))) b!586008))

(assert (= b!586009 b!586010))

(assert (= (and b!585375 (is-Leaf!2911 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 token!491))) (value!36902 token!491))))) b!586009))

(declare-fun m!846123 () Bool)

(assert (=> b!586008 m!846123))

(declare-fun m!846125 () Bool)

(assert (=> b!586008 m!846125))

(declare-fun m!846127 () Bool)

(assert (=> b!586009 m!846127))

(assert (=> b!585375 m!845291))

(declare-fun b!586013 () Bool)

(declare-fun e!354196 () Bool)

(declare-fun tp!182779 () Bool)

(assert (=> b!586013 (= e!354196 tp!182779)))

(declare-fun b!586011 () Bool)

(assert (=> b!586011 (= e!354196 tp_is_empty!3271)))

(assert (=> b!585580 (= tp!182688 e!354196)))

(declare-fun b!586014 () Bool)

(declare-fun tp!182777 () Bool)

(declare-fun tp!182780 () Bool)

(assert (=> b!586014 (= e!354196 (and tp!182777 tp!182780))))

(declare-fun b!586012 () Bool)

(declare-fun tp!182776 () Bool)

(declare-fun tp!182778 () Bool)

(assert (=> b!586012 (= e!354196 (and tp!182776 tp!182778))))

(assert (= (and b!585580 (is-ElementMatch!1458 (reg!1787 (regex!1124 (rule!1886 token!491))))) b!586011))

(assert (= (and b!585580 (is-Concat!2606 (reg!1787 (regex!1124 (rule!1886 token!491))))) b!586012))

(assert (= (and b!585580 (is-Star!1458 (reg!1787 (regex!1124 (rule!1886 token!491))))) b!586013))

(assert (= (and b!585580 (is-Union!1458 (reg!1787 (regex!1124 (rule!1886 token!491))))) b!586014))

(declare-fun b!586017 () Bool)

(declare-fun e!354197 () Bool)

(declare-fun tp!182784 () Bool)

(assert (=> b!586017 (= e!354197 tp!182784)))

(declare-fun b!586015 () Bool)

(assert (=> b!586015 (= e!354197 tp_is_empty!3271)))

(assert (=> b!585581 (= tp!182686 e!354197)))

(declare-fun b!586018 () Bool)

(declare-fun tp!182782 () Bool)

(declare-fun tp!182785 () Bool)

(assert (=> b!586018 (= e!354197 (and tp!182782 tp!182785))))

(declare-fun b!586016 () Bool)

(declare-fun tp!182781 () Bool)

(declare-fun tp!182783 () Bool)

(assert (=> b!586016 (= e!354197 (and tp!182781 tp!182783))))

(assert (= (and b!585581 (is-ElementMatch!1458 (regOne!3429 (regex!1124 (rule!1886 token!491))))) b!586015))

(assert (= (and b!585581 (is-Concat!2606 (regOne!3429 (regex!1124 (rule!1886 token!491))))) b!586016))

(assert (= (and b!585581 (is-Star!1458 (regOne!3429 (regex!1124 (rule!1886 token!491))))) b!586017))

(assert (= (and b!585581 (is-Union!1458 (regOne!3429 (regex!1124 (rule!1886 token!491))))) b!586018))

(declare-fun b!586021 () Bool)

(declare-fun e!354198 () Bool)

(declare-fun tp!182789 () Bool)

(assert (=> b!586021 (= e!354198 tp!182789)))

(declare-fun b!586019 () Bool)

(assert (=> b!586019 (= e!354198 tp_is_empty!3271)))

(assert (=> b!585581 (= tp!182689 e!354198)))

(declare-fun b!586022 () Bool)

(declare-fun tp!182787 () Bool)

(declare-fun tp!182790 () Bool)

(assert (=> b!586022 (= e!354198 (and tp!182787 tp!182790))))

(declare-fun b!586020 () Bool)

(declare-fun tp!182786 () Bool)

(declare-fun tp!182788 () Bool)

(assert (=> b!586020 (= e!354198 (and tp!182786 tp!182788))))

(assert (= (and b!585581 (is-ElementMatch!1458 (regTwo!3429 (regex!1124 (rule!1886 token!491))))) b!586019))

(assert (= (and b!585581 (is-Concat!2606 (regTwo!3429 (regex!1124 (rule!1886 token!491))))) b!586020))

(assert (= (and b!585581 (is-Star!1458 (regTwo!3429 (regex!1124 (rule!1886 token!491))))) b!586021))

(assert (= (and b!585581 (is-Union!1458 (regTwo!3429 (regex!1124 (rule!1886 token!491))))) b!586022))

(declare-fun b!586025 () Bool)

(declare-fun e!354199 () Bool)

(declare-fun tp!182794 () Bool)

(assert (=> b!586025 (= e!354199 tp!182794)))

(declare-fun b!586023 () Bool)

(assert (=> b!586023 (= e!354199 tp_is_empty!3271)))

(assert (=> b!585579 (= tp!182685 e!354199)))

(declare-fun b!586026 () Bool)

(declare-fun tp!182792 () Bool)

(declare-fun tp!182795 () Bool)

(assert (=> b!586026 (= e!354199 (and tp!182792 tp!182795))))

(declare-fun b!586024 () Bool)

(declare-fun tp!182791 () Bool)

(declare-fun tp!182793 () Bool)

(assert (=> b!586024 (= e!354199 (and tp!182791 tp!182793))))

(assert (= (and b!585579 (is-ElementMatch!1458 (regOne!3428 (regex!1124 (rule!1886 token!491))))) b!586023))

(assert (= (and b!585579 (is-Concat!2606 (regOne!3428 (regex!1124 (rule!1886 token!491))))) b!586024))

(assert (= (and b!585579 (is-Star!1458 (regOne!3428 (regex!1124 (rule!1886 token!491))))) b!586025))

(assert (= (and b!585579 (is-Union!1458 (regOne!3428 (regex!1124 (rule!1886 token!491))))) b!586026))

(declare-fun b!586029 () Bool)

(declare-fun e!354200 () Bool)

(declare-fun tp!182799 () Bool)

(assert (=> b!586029 (= e!354200 tp!182799)))

(declare-fun b!586027 () Bool)

(assert (=> b!586027 (= e!354200 tp_is_empty!3271)))

(assert (=> b!585579 (= tp!182687 e!354200)))

(declare-fun b!586030 () Bool)

(declare-fun tp!182797 () Bool)

(declare-fun tp!182800 () Bool)

(assert (=> b!586030 (= e!354200 (and tp!182797 tp!182800))))

(declare-fun b!586028 () Bool)

(declare-fun tp!182796 () Bool)

(declare-fun tp!182798 () Bool)

(assert (=> b!586028 (= e!354200 (and tp!182796 tp!182798))))

(assert (= (and b!585579 (is-ElementMatch!1458 (regTwo!3428 (regex!1124 (rule!1886 token!491))))) b!586027))

(assert (= (and b!585579 (is-Concat!2606 (regTwo!3428 (regex!1124 (rule!1886 token!491))))) b!586028))

(assert (= (and b!585579 (is-Star!1458 (regTwo!3428 (regex!1124 (rule!1886 token!491))))) b!586029))

(assert (= (and b!585579 (is-Union!1458 (regTwo!3428 (regex!1124 (rule!1886 token!491))))) b!586030))

(declare-fun b!586031 () Bool)

(declare-fun e!354201 () Bool)

(declare-fun tp!182801 () Bool)

(assert (=> b!586031 (= e!354201 (and tp_is_empty!3271 tp!182801))))

(assert (=> b!585547 (= tp!182656 e!354201)))

(assert (= (and b!585547 (is-Cons!5756 (t!78475 (t!78475 input!2705)))) b!586031))

(declare-fun tp!182802 () Bool)

(declare-fun tp!182804 () Bool)

(declare-fun b!586032 () Bool)

(declare-fun e!354203 () Bool)

(assert (=> b!586032 (= e!354203 (and (inv!7271 (left!4692 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157))))))) tp!182802 (inv!7271 (right!5022 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157))))))) tp!182804))))

(declare-fun b!586034 () Bool)

(declare-fun e!354202 () Bool)

(declare-fun tp!182803 () Bool)

(assert (=> b!586034 (= e!354202 tp!182803)))

(declare-fun b!586033 () Bool)

(assert (=> b!586033 (= e!354203 (and (inv!7277 (xs!4478 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157))))))) e!354202))))

(assert (=> b!585509 (= tp!182651 (and (inv!7271 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157)))))) e!354203))))

(assert (= (and b!585509 (is-Node!1841 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157))))))) b!586032))

(assert (= b!586033 b!586034))

(assert (= (and b!585509 (is-Leaf!2911 (c!109428 (dynLambda!3357 (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))) (value!36902 (_1!3627 (v!16347 lt!248157))))))) b!586033))

(declare-fun m!846129 () Bool)

(assert (=> b!586032 m!846129))

(declare-fun m!846131 () Bool)

(assert (=> b!586032 m!846131))

(declare-fun m!846133 () Bool)

(assert (=> b!586033 m!846133))

(assert (=> b!585509 m!845477))

(declare-fun b_lambda!23091 () Bool)

(assert (= b_lambda!23063 (or (and b!585272 b_free!16327 (= (toChars!1858 (transformation!1124 (h!11158 rules!3103))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))))) (and b!585268 b_free!16331 (= (toChars!1858 (transformation!1124 (rule!1886 token!491))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))))) (and b!585577 b_free!16343 (= (toChars!1858 (transformation!1124 (h!11158 (t!78476 rules!3103)))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))))) (and b!585991 b_free!16351 (= (toChars!1858 (transformation!1124 (h!11158 (t!78476 (t!78476 rules!3103))))) (toChars!1858 (transformation!1124 (rule!1886 (_1!3627 (v!16347 lt!248157))))))) b_lambda!23091)))

(push 1)

(assert (not b!585974))

(assert (not d!205968))

(assert (not b!585910))

(assert (not b!585973))

(assert (not b!586013))

(assert (not d!206060))

(assert (not b!585801))

(assert (not d!206042))

(assert (not b!585784))

(assert (not b!585804))

(assert (not d!205942))

(assert (not b_next!16367))

(assert (not d!206096))

(assert (not b!585976))

(assert (not b!585669))

(assert (not b!585942))

(assert (not b!586034))

(assert (not d!206048))

(assert (not b!585970))

(assert (not bm!40205))

(assert (not d!206078))

(assert (not b!585960))

(assert (not b!585676))

(assert (not b!585987))

(assert (not b!585995))

(assert (not b!585891))

(assert (not b!586009))

(assert (not b!585912))

(assert (not b!585649))

(assert (not b!585861))

(assert (not b!585660))

(assert (not b!585650))

(assert (not b!585686))

(assert (not d!206040))

(assert (not b!585894))

(assert (not b!585993))

(assert (not b!586033))

(assert (not b!585913))

(assert (not b!585665))

(assert (not b!585690))

(assert (not d!205926))

(assert (not b!585934))

(assert (not b!585893))

(assert (not b!585859))

(assert (not d!206094))

(assert (not b!585800))

(assert (not b!586024))

(assert (not b!585775))

(assert (not b!585965))

(assert (not b!585958))

(assert (not b!586014))

(assert (not b!585916))

(assert (not b!585812))

(assert (not b_next!16343))

(assert (not d!206098))

(assert (not b!585962))

(assert (not b!585780))

(assert b_and!57705)

(assert (not b!585509))

(assert (not b!585943))

(assert (not b_lambda!23091))

(assert (not b_lambda!23081))

(assert (not b!585667))

(assert (not b!585799))

(assert (not b!585966))

(assert (not b!585680))

(assert (not b!585956))

(assert (not d!206088))

(assert (not d!206018))

(assert (not b_next!16357))

(assert (not b!585937))

(assert (not b!585978))

(assert (not b!585671))

(assert (not b!585659))

(assert (not b!585953))

(assert (not b!585999))

(assert (not b!585837))

(assert (not b!585791))

(assert (not b!585915))

(assert (not bm!40208))

(assert (not b_lambda!23087))

(assert (not b!585835))

(assert (not tb!51291))

(assert (not b!585698))

(assert (not b!586031))

(assert (not b!586008))

(assert (not b!585981))

(assert b_and!57731)

(assert (not b!585994))

(assert (not b!585696))

(assert (not d!206110))

(assert (not b!586025))

(assert (not d!206108))

(assert (not b!585940))

(assert (not b!585862))

(assert (not b!585838))

(assert (not b!585834))

(assert (not b!585896))

(assert (not d!205970))

(assert (not b!585984))

(assert (not d!205930))

(assert (not b!585935))

(assert (not b!586020))

(assert (not b!585728))

(assert (not d!206104))

(assert (not b!585944))

(assert (not d!205948))

(assert (not d!205994))

(assert (not b!585776))

(assert (not d!205928))

(assert (not b_next!16341))

(assert (not b!585989))

(assert (not b!585657))

(assert (not d!206082))

(assert b_and!57741)

(assert (not b!585920))

(assert (not b!585707))

(assert (not b!585892))

(assert (not b_lambda!23069))

(assert (not b!585997))

(assert (not d!206068))

(assert (not b!585811))

(assert (not b!585750))

(assert (not b!585945))

(assert (not b!585375))

(assert (not b!585677))

(assert (not b!585938))

(assert (not b!585964))

(assert (not b!585980))

(assert (not d!206100))

(assert b_and!57709)

(assert (not d!206008))

(assert (not d!206102))

(assert (not b!586028))

(assert (not d!205940))

(assert (not b!586029))

(assert (not b!585927))

(assert (not b!585652))

(assert (not b!585778))

(assert (not b!585806))

(assert (not b!585990))

(assert (not d!206086))

(assert (not b!585832))

(assert (not d!206064))

(assert (not b!585809))

(assert (not b!585688))

(assert (not d!206084))

(assert (not b!585855))

(assert (not d!205934))

(assert (not b!586010))

(assert (not b!585918))

(assert (not b!585700))

(assert (not b!585836))

(assert (not b!586032))

(assert (not tb!51279))

(assert (not b!585693))

(assert (not b!585808))

(assert (not d!205952))

(assert b_and!57707)

(assert (not b_lambda!23067))

(assert (not bm!40209))

(assert b_and!57743)

(assert (not b!586021))

(assert (not b!585831))

(assert (not b!585783))

(assert (not b!585906))

(assert (not b_lambda!23077))

(assert (not b!586022))

(assert (not b!585854))

(assert (not b!585972))

(assert (not b!585670))

(assert (not b!585851))

(assert (not b!586026))

(assert (not b!585903))

(assert (not d!205946))

(assert (not d!205978))

(assert (not b!585917))

(assert (not b!585847))

(assert (not d!206044))

(assert (not d!205996))

(assert (not b!585729))

(assert (not d!205954))

(assert (not b!585856))

(assert (not b!585845))

(assert (not b!586030))

(assert (not tb!51285))

(assert tp_is_empty!3271)

(assert (not b!585977))

(assert (not b_next!16347))

(assert (not b!585954))

(assert (not b!585968))

(assert (not d!205932))

(assert (not b!585718))

(assert (not d!206070))

(assert (not b!585907))

(assert (not b!585714))

(assert (not b!585730))

(assert b_and!57733)

(assert (not b!586016))

(assert (not d!206080))

(assert (not b!586012))

(assert (not b_next!16345))

(assert (not b!585709))

(assert (not b!585852))

(assert (not b!585986))

(assert (not b_next!16365))

(assert (not b!585839))

(assert (not b!585684))

(assert (not tb!51309))

(assert (not b_lambda!23079))

(assert (not b!585807))

(assert (not b!585950))

(assert (not b_next!16359))

(assert (not b!585857))

(assert (not b!585805))

(assert (not b!585692))

(assert b_and!57729)

(assert (not b!585988))

(assert (not b!585849))

(assert (not b!585998))

(assert (not b!585985))

(assert (not b!586018))

(assert (not d!205938))

(assert (not b!585941))

(assert (not bm!40204))

(assert (not b!585951))

(assert (not b!585858))

(assert (not b!586017))

(assert (not b!585982))

(assert (not b!585908))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!16367))

(assert (not b_next!16343))

(assert b_and!57705)

(assert (not b_next!16357))

(assert b_and!57731)

(assert b_and!57709)

(assert (not b_next!16347))

(assert (not b_next!16359))

(assert b_and!57729)

(assert (not b_next!16341))

(assert b_and!57741)

(assert b_and!57707)

(assert b_and!57743)

(assert b_and!57733)

(assert (not b_next!16345))

(assert (not b_next!16365))

(check-sat)

(pop 1)

