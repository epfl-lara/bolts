; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!370946 () Bool)

(assert start!370946)

(declare-fun b!3947270 () Bool)

(declare-fun b_free!108209 () Bool)

(declare-fun b_next!108913 () Bool)

(assert (=> b!3947270 (= b_free!108209 (not b_next!108913))))

(declare-fun tp!1201851 () Bool)

(declare-fun b_and!302087 () Bool)

(assert (=> b!3947270 (= tp!1201851 b_and!302087)))

(declare-fun b_free!108211 () Bool)

(declare-fun b_next!108915 () Bool)

(assert (=> b!3947270 (= b_free!108211 (not b_next!108915))))

(declare-fun tp!1201846 () Bool)

(declare-fun b_and!302089 () Bool)

(assert (=> b!3947270 (= tp!1201846 b_and!302089)))

(declare-fun b!3947265 () Bool)

(declare-fun b_free!108213 () Bool)

(declare-fun b_next!108917 () Bool)

(assert (=> b!3947265 (= b_free!108213 (not b_next!108917))))

(declare-fun tp!1201848 () Bool)

(declare-fun b_and!302091 () Bool)

(assert (=> b!3947265 (= tp!1201848 b_and!302091)))

(declare-fun b_free!108215 () Bool)

(declare-fun b_next!108919 () Bool)

(assert (=> b!3947265 (= b_free!108215 (not b_next!108919))))

(declare-fun tp!1201844 () Bool)

(declare-fun b_and!302093 () Bool)

(assert (=> b!3947265 (= tp!1201844 b_and!302093)))

(declare-fun b!3947258 () Bool)

(declare-fun b_free!108217 () Bool)

(declare-fun b_next!108921 () Bool)

(assert (=> b!3947258 (= b_free!108217 (not b_next!108921))))

(declare-fun tp!1201853 () Bool)

(declare-fun b_and!302095 () Bool)

(assert (=> b!3947258 (= tp!1201853 b_and!302095)))

(declare-fun b_free!108219 () Bool)

(declare-fun b_next!108923 () Bool)

(assert (=> b!3947258 (= b_free!108219 (not b_next!108923))))

(declare-fun tp!1201847 () Bool)

(declare-fun b_and!302097 () Bool)

(assert (=> b!3947258 (= tp!1201847 b_and!302097)))

(declare-fun b!3947255 () Bool)

(declare-datatypes ((List!42051 0))(
  ( (Nil!41927) (Cons!41927 (h!47347 (_ BitVec 16)) (t!328004 List!42051)) )
))
(declare-datatypes ((TokenValue!6787 0))(
  ( (FloatLiteralValue!13574 (text!47954 List!42051)) (TokenValueExt!6786 (__x!25791 Int)) (Broken!33935 (value!207484 List!42051)) (Object!6910) (End!6787) (Def!6787) (Underscore!6787) (Match!6787) (Else!6787) (Error!6787) (Case!6787) (If!6787) (Extends!6787) (Abstract!6787) (Class!6787) (Val!6787) (DelimiterValue!13574 (del!6847 List!42051)) (KeywordValue!6793 (value!207485 List!42051)) (CommentValue!13574 (value!207486 List!42051)) (WhitespaceValue!13574 (value!207487 List!42051)) (IndentationValue!6787 (value!207488 List!42051)) (String!47654) (Int32!6787) (Broken!33936 (value!207489 List!42051)) (Boolean!6788) (Unit!60460) (OperatorValue!6790 (op!6847 List!42051)) (IdentifierValue!13574 (value!207490 List!42051)) (IdentifierValue!13575 (value!207491 List!42051)) (WhitespaceValue!13575 (value!207492 List!42051)) (True!13574) (False!13574) (Broken!33937 (value!207493 List!42051)) (Broken!33938 (value!207494 List!42051)) (True!13575) (RightBrace!6787) (RightBracket!6787) (Colon!6787) (Null!6787) (Comma!6787) (LeftBracket!6787) (False!13575) (LeftBrace!6787) (ImaginaryLiteralValue!6787 (text!47955 List!42051)) (StringLiteralValue!20361 (value!207495 List!42051)) (EOFValue!6787 (value!207496 List!42051)) (IdentValue!6787 (value!207497 List!42051)) (DelimiterValue!13575 (value!207498 List!42051)) (DedentValue!6787 (value!207499 List!42051)) (NewLineValue!6787 (value!207500 List!42051)) (IntegerValue!20361 (value!207501 (_ BitVec 32)) (text!47956 List!42051)) (IntegerValue!20362 (value!207502 Int) (text!47957 List!42051)) (Times!6787) (Or!6787) (Equal!6787) (Minus!6787) (Broken!33939 (value!207503 List!42051)) (And!6787) (Div!6787) (LessEqual!6787) (Mod!6787) (Concat!18249) (Not!6787) (Plus!6787) (SpaceValue!6787 (value!207504 List!42051)) (IntegerValue!20363 (value!207505 Int) (text!47958 List!42051)) (StringLiteralValue!20362 (text!47959 List!42051)) (FloatLiteralValue!13575 (text!47960 List!42051)) (BytesLiteralValue!6787 (value!207506 List!42051)) (CommentValue!13575 (value!207507 List!42051)) (StringLiteralValue!20363 (value!207508 List!42051)) (ErrorTokenValue!6787 (msg!6848 List!42051)) )
))
(declare-datatypes ((C!23110 0))(
  ( (C!23111 (val!13649 Int)) )
))
(declare-datatypes ((Regex!11462 0))(
  ( (ElementMatch!11462 (c!685603 C!23110)) (Concat!18250 (regOne!23436 Regex!11462) (regTwo!23436 Regex!11462)) (EmptyExpr!11462) (Star!11462 (reg!11791 Regex!11462)) (EmptyLang!11462) (Union!11462 (regOne!23437 Regex!11462) (regTwo!23437 Regex!11462)) )
))
(declare-datatypes ((String!47655 0))(
  ( (String!47656 (value!207509 String)) )
))
(declare-datatypes ((List!42052 0))(
  ( (Nil!41928) (Cons!41928 (h!47348 C!23110) (t!328005 List!42052)) )
))
(declare-datatypes ((IArray!25541 0))(
  ( (IArray!25542 (innerList!12828 List!42052)) )
))
(declare-datatypes ((Conc!12768 0))(
  ( (Node!12768 (left!31925 Conc!12768) (right!32255 Conc!12768) (csize!25766 Int) (cheight!12979 Int)) (Leaf!19754 (xs!16074 IArray!25541) (csize!25767 Int)) (Empty!12768) )
))
(declare-datatypes ((BalanceConc!25130 0))(
  ( (BalanceConc!25131 (c!685604 Conc!12768)) )
))
(declare-datatypes ((TokenValueInjection!13002 0))(
  ( (TokenValueInjection!13003 (toValue!9033 Int) (toChars!8892 Int)) )
))
(declare-datatypes ((Rule!12914 0))(
  ( (Rule!12915 (regex!6557 Regex!11462) (tag!7417 String!47655) (isSeparator!6557 Bool) (transformation!6557 TokenValueInjection!13002)) )
))
(declare-datatypes ((Token!12252 0))(
  ( (Token!12253 (value!207510 TokenValue!6787) (rule!9523 Rule!12914) (size!31436 Int) (originalCharacters!7157 List!42052)) )
))
(declare-datatypes ((List!42053 0))(
  ( (Nil!41929) (Cons!41929 (h!47349 Token!12252) (t!328006 List!42053)) )
))
(declare-fun prefixTokens!80 () List!42053)

(declare-fun e!2442610 () Bool)

(declare-fun tp!1201849 () Bool)

(declare-fun e!2442595 () Bool)

(declare-fun inv!21 (TokenValue!6787) Bool)

(assert (=> b!3947255 (= e!2442595 (and (inv!21 (value!207510 (h!47349 prefixTokens!80))) e!2442610 tp!1201849))))

(declare-fun b!3947256 () Bool)

(declare-fun e!2442613 () Bool)

(declare-datatypes ((tuple2!41218 0))(
  ( (tuple2!41219 (_1!23743 Token!12252) (_2!23743 List!42052)) )
))
(declare-datatypes ((Option!8977 0))(
  ( (None!8976) (Some!8976 (v!39316 tuple2!41218)) )
))
(declare-fun lt!1379886 () Option!8977)

(declare-fun size!31437 (List!42052) Int)

(assert (=> b!3947256 (= e!2442613 (not (= (size!31436 (_1!23743 (v!39316 lt!1379886))) (size!31437 (originalCharacters!7157 (_1!23743 (v!39316 lt!1379886)))))))))

(declare-fun e!2442608 () Bool)

(assert (=> b!3947256 e!2442608))

(declare-fun res!1597152 () Bool)

(assert (=> b!3947256 (=> (not res!1597152) (not e!2442608))))

(declare-fun lt!1379887 () List!42052)

(assert (=> b!3947256 (= res!1597152 (= (_2!23743 (v!39316 lt!1379886)) lt!1379887))))

(declare-fun lt!1379884 () List!42052)

(declare-datatypes ((Unit!60461 0))(
  ( (Unit!60462) )
))
(declare-fun lt!1379889 () Unit!60461)

(declare-fun lt!1379885 () List!42052)

(declare-fun lemmaSamePrefixThenSameSuffix!1855 (List!42052 List!42052 List!42052 List!42052 List!42052) Unit!60461)

(assert (=> b!3947256 (= lt!1379889 (lemmaSamePrefixThenSameSuffix!1855 lt!1379885 (_2!23743 (v!39316 lt!1379886)) lt!1379885 lt!1379887 lt!1379884))))

(declare-fun getSuffix!2097 (List!42052 List!42052) List!42052)

(assert (=> b!3947256 (= lt!1379887 (getSuffix!2097 lt!1379884 lt!1379885))))

(declare-fun isPrefix!3646 (List!42052 List!42052) Bool)

(declare-fun ++!10871 (List!42052 List!42052) List!42052)

(assert (=> b!3947256 (isPrefix!3646 lt!1379885 (++!10871 lt!1379885 (_2!23743 (v!39316 lt!1379886))))))

(declare-fun lt!1379891 () Unit!60461)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2505 (List!42052 List!42052) Unit!60461)

(assert (=> b!3947256 (= lt!1379891 (lemmaConcatTwoListThenFirstIsPrefix!2505 lt!1379885 (_2!23743 (v!39316 lt!1379886))))))

(declare-fun list!15575 (BalanceConc!25130) List!42052)

(declare-fun charsOf!4375 (Token!12252) BalanceConc!25130)

(assert (=> b!3947256 (= lt!1379885 (list!15575 (charsOf!4375 (_1!23743 (v!39316 lt!1379886)))))))

(declare-datatypes ((LexerInterface!6146 0))(
  ( (LexerInterfaceExt!6143 (__x!25792 Int)) (Lexer!6144) )
))
(declare-fun thiss!20629 () LexerInterface!6146)

(declare-fun ruleValid!2499 (LexerInterface!6146 Rule!12914) Bool)

(assert (=> b!3947256 (ruleValid!2499 thiss!20629 (rule!9523 (_1!23743 (v!39316 lt!1379886))))))

(declare-datatypes ((List!42054 0))(
  ( (Nil!41930) (Cons!41930 (h!47350 Rule!12914) (t!328007 List!42054)) )
))
(declare-fun rules!2768 () List!42054)

(declare-fun lt!1379890 () Unit!60461)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1575 (LexerInterface!6146 Rule!12914 List!42054) Unit!60461)

(assert (=> b!3947256 (= lt!1379890 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1575 thiss!20629 (rule!9523 (_1!23743 (v!39316 lt!1379886))) rules!2768))))

(declare-fun lt!1379888 () Unit!60461)

(declare-fun lemmaCharactersSize!1210 (Token!12252) Unit!60461)

(assert (=> b!3947256 (= lt!1379888 (lemmaCharactersSize!1210 (_1!23743 (v!39316 lt!1379886))))))

(declare-fun b!3947257 () Bool)

(declare-fun e!2442609 () Bool)

(assert (=> b!3947257 (= e!2442609 e!2442613)))

(declare-fun res!1597153 () Bool)

(assert (=> b!3947257 (=> (not res!1597153) (not e!2442613))))

(assert (=> b!3947257 (= res!1597153 (is-Some!8976 lt!1379886))))

(declare-fun maxPrefix!3450 (LexerInterface!6146 List!42054 List!42052) Option!8977)

(assert (=> b!3947257 (= lt!1379886 (maxPrefix!3450 thiss!20629 rules!2768 lt!1379884))))

(declare-fun e!2442606 () Bool)

(assert (=> b!3947258 (= e!2442606 (and tp!1201853 tp!1201847))))

(declare-fun b!3947259 () Bool)

(declare-fun res!1597159 () Bool)

(declare-fun e!2442600 () Bool)

(assert (=> b!3947259 (=> (not res!1597159) (not e!2442600))))

(declare-fun prefix!426 () List!42052)

(declare-fun isEmpty!25027 (List!42052) Bool)

(assert (=> b!3947259 (= res!1597159 (not (isEmpty!25027 prefix!426)))))

(declare-fun b!3947260 () Bool)

(declare-fun e!2442592 () Bool)

(declare-fun tp!1201855 () Bool)

(declare-fun inv!56157 (Token!12252) Bool)

(assert (=> b!3947260 (= e!2442592 (and (inv!56157 (h!47349 prefixTokens!80)) e!2442595 tp!1201855))))

(declare-fun suffixTokens!72 () List!42053)

(declare-fun b!3947261 () Bool)

(declare-fun e!2442605 () Bool)

(declare-fun e!2442594 () Bool)

(declare-fun tp!1201859 () Bool)

(assert (=> b!3947261 (= e!2442605 (and (inv!56157 (h!47349 suffixTokens!72)) e!2442594 tp!1201859))))

(declare-fun b!3947262 () Bool)

(assert (=> b!3947262 (= e!2442600 e!2442609)))

(declare-fun res!1597154 () Bool)

(assert (=> b!3947262 (=> (not res!1597154) (not e!2442609))))

(declare-fun suffixResult!91 () List!42052)

(declare-datatypes ((tuple2!41220 0))(
  ( (tuple2!41221 (_1!23744 List!42053) (_2!23744 List!42052)) )
))
(declare-fun lexList!1914 (LexerInterface!6146 List!42054 List!42052) tuple2!41220)

(declare-fun ++!10872 (List!42053 List!42053) List!42053)

(assert (=> b!3947262 (= res!1597154 (= (lexList!1914 thiss!20629 rules!2768 lt!1379884) (tuple2!41221 (++!10872 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun suffix!1176 () List!42052)

(assert (=> b!3947262 (= lt!1379884 (++!10871 prefix!426 suffix!1176))))

(declare-fun tp!1201857 () Bool)

(declare-fun b!3947263 () Bool)

(declare-fun e!2442599 () Bool)

(declare-fun inv!56154 (String!47655) Bool)

(declare-fun inv!56158 (TokenValueInjection!13002) Bool)

(assert (=> b!3947263 (= e!2442610 (and tp!1201857 (inv!56154 (tag!7417 (rule!9523 (h!47349 prefixTokens!80)))) (inv!56158 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))) e!2442599))))

(declare-fun b!3947264 () Bool)

(declare-fun e!2442596 () Bool)

(declare-fun tp_is_empty!19895 () Bool)

(declare-fun tp!1201854 () Bool)

(assert (=> b!3947264 (= e!2442596 (and tp_is_empty!19895 tp!1201854))))

(declare-fun e!2442602 () Bool)

(assert (=> b!3947265 (= e!2442602 (and tp!1201848 tp!1201844))))

(declare-fun b!3947266 () Bool)

(declare-fun e!2442601 () Bool)

(declare-fun tp!1201850 () Bool)

(assert (=> b!3947266 (= e!2442601 (and tp_is_empty!19895 tp!1201850))))

(declare-fun b!3947267 () Bool)

(declare-fun e!2442598 () Bool)

(declare-fun e!2442604 () Bool)

(declare-fun tp!1201852 () Bool)

(assert (=> b!3947267 (= e!2442598 (and e!2442604 tp!1201852))))

(declare-fun res!1597151 () Bool)

(assert (=> start!370946 (=> (not res!1597151) (not e!2442600))))

(assert (=> start!370946 (= res!1597151 (is-Lexer!6144 thiss!20629))))

(assert (=> start!370946 e!2442600))

(assert (=> start!370946 e!2442596))

(assert (=> start!370946 true))

(declare-fun e!2442611 () Bool)

(assert (=> start!370946 e!2442611))

(assert (=> start!370946 e!2442598))

(assert (=> start!370946 e!2442592))

(assert (=> start!370946 e!2442605))

(assert (=> start!370946 e!2442601))

(declare-fun tp!1201856 () Bool)

(declare-fun b!3947268 () Bool)

(assert (=> b!3947268 (= e!2442604 (and tp!1201856 (inv!56154 (tag!7417 (h!47350 rules!2768))) (inv!56158 (transformation!6557 (h!47350 rules!2768))) e!2442606))))

(declare-fun b!3947269 () Bool)

(declare-fun apply!9788 (TokenValueInjection!13002 BalanceConc!25130) TokenValue!6787)

(declare-fun seqFromList!4816 (List!42052) BalanceConc!25130)

(assert (=> b!3947269 (= e!2442608 (= (value!207510 (_1!23743 (v!39316 lt!1379886))) (apply!9788 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))) (seqFromList!4816 lt!1379885))))))

(assert (=> b!3947270 (= e!2442599 (and tp!1201851 tp!1201846))))

(declare-fun e!2442603 () Bool)

(declare-fun b!3947271 () Bool)

(declare-fun tp!1201843 () Bool)

(assert (=> b!3947271 (= e!2442594 (and (inv!21 (value!207510 (h!47349 suffixTokens!72))) e!2442603 tp!1201843))))

(declare-fun b!3947272 () Bool)

(declare-fun res!1597156 () Bool)

(assert (=> b!3947272 (=> (not res!1597156) (not e!2442609))))

(assert (=> b!3947272 (= res!1597156 (= (lexList!1914 thiss!20629 rules!2768 suffix!1176) (tuple2!41221 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3947273 () Bool)

(declare-fun res!1597158 () Bool)

(assert (=> b!3947273 (=> (not res!1597158) (not e!2442600))))

(declare-fun rulesInvariant!5489 (LexerInterface!6146 List!42054) Bool)

(assert (=> b!3947273 (= res!1597158 (rulesInvariant!5489 thiss!20629 rules!2768))))

(declare-fun tp!1201858 () Bool)

(declare-fun b!3947274 () Bool)

(assert (=> b!3947274 (= e!2442603 (and tp!1201858 (inv!56154 (tag!7417 (rule!9523 (h!47349 suffixTokens!72)))) (inv!56158 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))) e!2442602))))

(declare-fun b!3947275 () Bool)

(declare-fun res!1597157 () Bool)

(assert (=> b!3947275 (=> (not res!1597157) (not e!2442600))))

(declare-fun isEmpty!25028 (List!42054) Bool)

(assert (=> b!3947275 (= res!1597157 (not (isEmpty!25028 rules!2768)))))

(declare-fun b!3947276 () Bool)

(declare-fun res!1597155 () Bool)

(assert (=> b!3947276 (=> (not res!1597155) (not e!2442600))))

(declare-fun isEmpty!25029 (List!42053) Bool)

(assert (=> b!3947276 (= res!1597155 (not (isEmpty!25029 prefixTokens!80)))))

(declare-fun b!3947277 () Bool)

(declare-fun tp!1201845 () Bool)

(assert (=> b!3947277 (= e!2442611 (and tp_is_empty!19895 tp!1201845))))

(assert (= (and start!370946 res!1597151) b!3947275))

(assert (= (and b!3947275 res!1597157) b!3947273))

(assert (= (and b!3947273 res!1597158) b!3947276))

(assert (= (and b!3947276 res!1597155) b!3947259))

(assert (= (and b!3947259 res!1597159) b!3947262))

(assert (= (and b!3947262 res!1597154) b!3947272))

(assert (= (and b!3947272 res!1597156) b!3947257))

(assert (= (and b!3947257 res!1597153) b!3947256))

(assert (= (and b!3947256 res!1597152) b!3947269))

(assert (= (and start!370946 (is-Cons!41928 suffixResult!91)) b!3947264))

(assert (= (and start!370946 (is-Cons!41928 suffix!1176)) b!3947277))

(assert (= b!3947268 b!3947258))

(assert (= b!3947267 b!3947268))

(assert (= (and start!370946 (is-Cons!41930 rules!2768)) b!3947267))

(assert (= b!3947263 b!3947270))

(assert (= b!3947255 b!3947263))

(assert (= b!3947260 b!3947255))

(assert (= (and start!370946 (is-Cons!41929 prefixTokens!80)) b!3947260))

(assert (= b!3947274 b!3947265))

(assert (= b!3947271 b!3947274))

(assert (= b!3947261 b!3947271))

(assert (= (and start!370946 (is-Cons!41929 suffixTokens!72)) b!3947261))

(assert (= (and start!370946 (is-Cons!41928 prefix!426)) b!3947266))

(declare-fun m!4516121 () Bool)

(assert (=> b!3947260 m!4516121))

(declare-fun m!4516123 () Bool)

(assert (=> b!3947269 m!4516123))

(assert (=> b!3947269 m!4516123))

(declare-fun m!4516125 () Bool)

(assert (=> b!3947269 m!4516125))

(declare-fun m!4516127 () Bool)

(assert (=> b!3947276 m!4516127))

(declare-fun m!4516129 () Bool)

(assert (=> b!3947262 m!4516129))

(declare-fun m!4516131 () Bool)

(assert (=> b!3947262 m!4516131))

(declare-fun m!4516133 () Bool)

(assert (=> b!3947262 m!4516133))

(declare-fun m!4516135 () Bool)

(assert (=> b!3947274 m!4516135))

(declare-fun m!4516137 () Bool)

(assert (=> b!3947274 m!4516137))

(declare-fun m!4516139 () Bool)

(assert (=> b!3947256 m!4516139))

(declare-fun m!4516141 () Bool)

(assert (=> b!3947256 m!4516141))

(declare-fun m!4516143 () Bool)

(assert (=> b!3947256 m!4516143))

(declare-fun m!4516145 () Bool)

(assert (=> b!3947256 m!4516145))

(declare-fun m!4516147 () Bool)

(assert (=> b!3947256 m!4516147))

(declare-fun m!4516149 () Bool)

(assert (=> b!3947256 m!4516149))

(declare-fun m!4516151 () Bool)

(assert (=> b!3947256 m!4516151))

(assert (=> b!3947256 m!4516149))

(declare-fun m!4516153 () Bool)

(assert (=> b!3947256 m!4516153))

(declare-fun m!4516155 () Bool)

(assert (=> b!3947256 m!4516155))

(assert (=> b!3947256 m!4516143))

(declare-fun m!4516157 () Bool)

(assert (=> b!3947256 m!4516157))

(declare-fun m!4516159 () Bool)

(assert (=> b!3947256 m!4516159))

(declare-fun m!4516161 () Bool)

(assert (=> b!3947268 m!4516161))

(declare-fun m!4516163 () Bool)

(assert (=> b!3947268 m!4516163))

(declare-fun m!4516165 () Bool)

(assert (=> b!3947263 m!4516165))

(declare-fun m!4516167 () Bool)

(assert (=> b!3947263 m!4516167))

(declare-fun m!4516169 () Bool)

(assert (=> b!3947257 m!4516169))

(declare-fun m!4516171 () Bool)

(assert (=> b!3947271 m!4516171))

(declare-fun m!4516173 () Bool)

(assert (=> b!3947273 m!4516173))

(declare-fun m!4516175 () Bool)

(assert (=> b!3947259 m!4516175))

(declare-fun m!4516177 () Bool)

(assert (=> b!3947272 m!4516177))

(declare-fun m!4516179 () Bool)

(assert (=> b!3947255 m!4516179))

(declare-fun m!4516181 () Bool)

(assert (=> b!3947275 m!4516181))

(declare-fun m!4516183 () Bool)

(assert (=> b!3947261 m!4516183))

(push 1)

(assert (not b_next!108923))

(assert (not b!3947255))

(assert (not b!3947266))

(assert (not b!3947273))

(assert (not b!3947261))

(assert (not b!3947277))

(assert (not b!3947272))

(assert (not b!3947262))

(assert b_and!302089)

(assert (not b!3947264))

(assert (not b!3947269))

(assert (not b!3947274))

(assert (not b!3947257))

(assert (not b_next!108921))

(assert (not b_next!108917))

(assert b_and!302087)

(assert (not b_next!108919))

(assert tp_is_empty!19895)

(assert (not b!3947259))

(assert (not b!3947276))

(assert b_and!302097)

(assert b_and!302095)

(assert (not b_next!108913))

(assert (not b!3947263))

(assert (not b!3947268))

(assert b_and!302091)

(assert (not b!3947260))

(assert (not b!3947275))

(assert (not b!3947256))

(assert (not b!3947267))

(assert b_and!302093)

(assert (not b_next!108915))

(assert (not b!3947271))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!108923))

(assert b_and!302097)

(assert b_and!302091)

(assert b_and!302089)

(assert (not b_next!108921))

(assert (not b_next!108917))

(assert b_and!302087)

(assert (not b_next!108919))

(assert b_and!302095)

(assert (not b_next!108913))

(assert b_and!302093)

(assert (not b_next!108915))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1170980 () Bool)

(assert (=> d!1170980 (= (inv!56154 (tag!7417 (rule!9523 (h!47349 prefixTokens!80)))) (= (mod (str.len (value!207509 (tag!7417 (rule!9523 (h!47349 prefixTokens!80))))) 2) 0))))

(assert (=> b!3947263 d!1170980))

(declare-fun d!1170984 () Bool)

(declare-fun res!1597204 () Bool)

(declare-fun e!2442699 () Bool)

(assert (=> d!1170984 (=> (not res!1597204) (not e!2442699))))

(declare-fun semiInverseModEq!2826 (Int Int) Bool)

(assert (=> d!1170984 (= res!1597204 (semiInverseModEq!2826 (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))) (toValue!9033 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80))))))))

(assert (=> d!1170984 (= (inv!56158 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))) e!2442699)))

(declare-fun b!3947368 () Bool)

(declare-fun equivClasses!2725 (Int Int) Bool)

(assert (=> b!3947368 (= e!2442699 (equivClasses!2725 (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))) (toValue!9033 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80))))))))

(assert (= (and d!1170984 res!1597204) b!3947368))

(declare-fun m!4516281 () Bool)

(assert (=> d!1170984 m!4516281))

(declare-fun m!4516283 () Bool)

(assert (=> b!3947368 m!4516283))

(assert (=> b!3947263 d!1170984))

(declare-fun d!1170988 () Bool)

(declare-fun res!1597207 () Bool)

(declare-fun e!2442702 () Bool)

(assert (=> d!1170988 (=> (not res!1597207) (not e!2442702))))

(declare-fun rulesValid!2560 (LexerInterface!6146 List!42054) Bool)

(assert (=> d!1170988 (= res!1597207 (rulesValid!2560 thiss!20629 rules!2768))))

(assert (=> d!1170988 (= (rulesInvariant!5489 thiss!20629 rules!2768) e!2442702)))

(declare-fun b!3947371 () Bool)

(declare-datatypes ((List!42059 0))(
  ( (Nil!41935) (Cons!41935 (h!47355 String!47655) (t!328078 List!42059)) )
))
(declare-fun noDuplicateTag!2561 (LexerInterface!6146 List!42054 List!42059) Bool)

(assert (=> b!3947371 (= e!2442702 (noDuplicateTag!2561 thiss!20629 rules!2768 Nil!41935))))

(assert (= (and d!1170988 res!1597207) b!3947371))

(declare-fun m!4516285 () Bool)

(assert (=> d!1170988 m!4516285))

(declare-fun m!4516287 () Bool)

(assert (=> b!3947371 m!4516287))

(assert (=> b!3947273 d!1170988))

(declare-fun b!3947382 () Bool)

(declare-fun e!2442709 () Bool)

(declare-fun lt!1379923 () tuple2!41220)

(assert (=> b!3947382 (= e!2442709 (not (isEmpty!25029 (_1!23744 lt!1379923))))))

(declare-fun b!3947383 () Bool)

(declare-fun e!2442710 () tuple2!41220)

(declare-fun lt!1379924 () Option!8977)

(declare-fun lt!1379922 () tuple2!41220)

(assert (=> b!3947383 (= e!2442710 (tuple2!41221 (Cons!41929 (_1!23743 (v!39316 lt!1379924)) (_1!23744 lt!1379922)) (_2!23744 lt!1379922)))))

(assert (=> b!3947383 (= lt!1379922 (lexList!1914 thiss!20629 rules!2768 (_2!23743 (v!39316 lt!1379924))))))

(declare-fun b!3947384 () Bool)

(declare-fun e!2442711 () Bool)

(assert (=> b!3947384 (= e!2442711 e!2442709)))

(declare-fun res!1597210 () Bool)

(assert (=> b!3947384 (= res!1597210 (< (size!31437 (_2!23744 lt!1379923)) (size!31437 lt!1379884)))))

(assert (=> b!3947384 (=> (not res!1597210) (not e!2442709))))

(declare-fun b!3947385 () Bool)

(assert (=> b!3947385 (= e!2442711 (= (_2!23744 lt!1379923) lt!1379884))))

(declare-fun d!1170990 () Bool)

(assert (=> d!1170990 e!2442711))

(declare-fun c!685613 () Bool)

(declare-fun size!31440 (List!42053) Int)

(assert (=> d!1170990 (= c!685613 (> (size!31440 (_1!23744 lt!1379923)) 0))))

(assert (=> d!1170990 (= lt!1379923 e!2442710)))

(declare-fun c!685612 () Bool)

(assert (=> d!1170990 (= c!685612 (is-Some!8976 lt!1379924))))

(assert (=> d!1170990 (= lt!1379924 (maxPrefix!3450 thiss!20629 rules!2768 lt!1379884))))

(assert (=> d!1170990 (= (lexList!1914 thiss!20629 rules!2768 lt!1379884) lt!1379923)))

(declare-fun b!3947386 () Bool)

(assert (=> b!3947386 (= e!2442710 (tuple2!41221 Nil!41929 lt!1379884))))

(assert (= (and d!1170990 c!685612) b!3947383))

(assert (= (and d!1170990 (not c!685612)) b!3947386))

(assert (= (and d!1170990 c!685613) b!3947384))

(assert (= (and d!1170990 (not c!685613)) b!3947385))

(assert (= (and b!3947384 res!1597210) b!3947382))

(declare-fun m!4516291 () Bool)

(assert (=> b!3947382 m!4516291))

(declare-fun m!4516293 () Bool)

(assert (=> b!3947383 m!4516293))

(declare-fun m!4516295 () Bool)

(assert (=> b!3947384 m!4516295))

(declare-fun m!4516297 () Bool)

(assert (=> b!3947384 m!4516297))

(declare-fun m!4516299 () Bool)

(assert (=> d!1170990 m!4516299))

(assert (=> d!1170990 m!4516169))

(assert (=> b!3947262 d!1170990))

(declare-fun b!3947397 () Bool)

(declare-fun res!1597216 () Bool)

(declare-fun e!2442717 () Bool)

(assert (=> b!3947397 (=> (not res!1597216) (not e!2442717))))

(declare-fun lt!1379927 () List!42053)

(assert (=> b!3947397 (= res!1597216 (= (size!31440 lt!1379927) (+ (size!31440 prefixTokens!80) (size!31440 suffixTokens!72))))))

(declare-fun b!3947396 () Bool)

(declare-fun e!2442716 () List!42053)

(assert (=> b!3947396 (= e!2442716 (Cons!41929 (h!47349 prefixTokens!80) (++!10872 (t!328006 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3947398 () Bool)

(assert (=> b!3947398 (= e!2442717 (or (not (= suffixTokens!72 Nil!41929)) (= lt!1379927 prefixTokens!80)))))

(declare-fun d!1170994 () Bool)

(assert (=> d!1170994 e!2442717))

(declare-fun res!1597215 () Bool)

(assert (=> d!1170994 (=> (not res!1597215) (not e!2442717))))

(declare-fun content!6350 (List!42053) (Set Token!12252))

(assert (=> d!1170994 (= res!1597215 (= (content!6350 lt!1379927) (set.union (content!6350 prefixTokens!80) (content!6350 suffixTokens!72))))))

(assert (=> d!1170994 (= lt!1379927 e!2442716)))

(declare-fun c!685616 () Bool)

(assert (=> d!1170994 (= c!685616 (is-Nil!41929 prefixTokens!80))))

(assert (=> d!1170994 (= (++!10872 prefixTokens!80 suffixTokens!72) lt!1379927)))

(declare-fun b!3947395 () Bool)

(assert (=> b!3947395 (= e!2442716 suffixTokens!72)))

(assert (= (and d!1170994 c!685616) b!3947395))

(assert (= (and d!1170994 (not c!685616)) b!3947396))

(assert (= (and d!1170994 res!1597215) b!3947397))

(assert (= (and b!3947397 res!1597216) b!3947398))

(declare-fun m!4516301 () Bool)

(assert (=> b!3947397 m!4516301))

(declare-fun m!4516303 () Bool)

(assert (=> b!3947397 m!4516303))

(declare-fun m!4516305 () Bool)

(assert (=> b!3947397 m!4516305))

(declare-fun m!4516307 () Bool)

(assert (=> b!3947396 m!4516307))

(declare-fun m!4516309 () Bool)

(assert (=> d!1170994 m!4516309))

(declare-fun m!4516311 () Bool)

(assert (=> d!1170994 m!4516311))

(declare-fun m!4516313 () Bool)

(assert (=> d!1170994 m!4516313))

(assert (=> b!3947262 d!1170994))

(declare-fun b!3947408 () Bool)

(declare-fun e!2442723 () List!42052)

(assert (=> b!3947408 (= e!2442723 (Cons!41928 (h!47348 prefix!426) (++!10871 (t!328005 prefix!426) suffix!1176)))))

(declare-fun b!3947409 () Bool)

(declare-fun res!1597221 () Bool)

(declare-fun e!2442722 () Bool)

(assert (=> b!3947409 (=> (not res!1597221) (not e!2442722))))

(declare-fun lt!1379930 () List!42052)

(assert (=> b!3947409 (= res!1597221 (= (size!31437 lt!1379930) (+ (size!31437 prefix!426) (size!31437 suffix!1176))))))

(declare-fun b!3947407 () Bool)

(assert (=> b!3947407 (= e!2442723 suffix!1176)))

(declare-fun d!1170996 () Bool)

(assert (=> d!1170996 e!2442722))

(declare-fun res!1597222 () Bool)

(assert (=> d!1170996 (=> (not res!1597222) (not e!2442722))))

(declare-fun content!6351 (List!42052) (Set C!23110))

(assert (=> d!1170996 (= res!1597222 (= (content!6351 lt!1379930) (set.union (content!6351 prefix!426) (content!6351 suffix!1176))))))

(assert (=> d!1170996 (= lt!1379930 e!2442723)))

(declare-fun c!685619 () Bool)

(assert (=> d!1170996 (= c!685619 (is-Nil!41928 prefix!426))))

(assert (=> d!1170996 (= (++!10871 prefix!426 suffix!1176) lt!1379930)))

(declare-fun b!3947410 () Bool)

(assert (=> b!3947410 (= e!2442722 (or (not (= suffix!1176 Nil!41928)) (= lt!1379930 prefix!426)))))

(assert (= (and d!1170996 c!685619) b!3947407))

(assert (= (and d!1170996 (not c!685619)) b!3947408))

(assert (= (and d!1170996 res!1597222) b!3947409))

(assert (= (and b!3947409 res!1597221) b!3947410))

(declare-fun m!4516315 () Bool)

(assert (=> b!3947408 m!4516315))

(declare-fun m!4516317 () Bool)

(assert (=> b!3947409 m!4516317))

(declare-fun m!4516319 () Bool)

(assert (=> b!3947409 m!4516319))

(declare-fun m!4516321 () Bool)

(assert (=> b!3947409 m!4516321))

(declare-fun m!4516323 () Bool)

(assert (=> d!1170996 m!4516323))

(declare-fun m!4516325 () Bool)

(assert (=> d!1170996 m!4516325))

(declare-fun m!4516327 () Bool)

(assert (=> d!1170996 m!4516327))

(assert (=> b!3947262 d!1170996))

(declare-fun b!3947411 () Bool)

(declare-fun e!2442724 () Bool)

(declare-fun lt!1379932 () tuple2!41220)

(assert (=> b!3947411 (= e!2442724 (not (isEmpty!25029 (_1!23744 lt!1379932))))))

(declare-fun b!3947412 () Bool)

(declare-fun e!2442725 () tuple2!41220)

(declare-fun lt!1379933 () Option!8977)

(declare-fun lt!1379931 () tuple2!41220)

(assert (=> b!3947412 (= e!2442725 (tuple2!41221 (Cons!41929 (_1!23743 (v!39316 lt!1379933)) (_1!23744 lt!1379931)) (_2!23744 lt!1379931)))))

(assert (=> b!3947412 (= lt!1379931 (lexList!1914 thiss!20629 rules!2768 (_2!23743 (v!39316 lt!1379933))))))

(declare-fun b!3947413 () Bool)

(declare-fun e!2442726 () Bool)

(assert (=> b!3947413 (= e!2442726 e!2442724)))

(declare-fun res!1597223 () Bool)

(assert (=> b!3947413 (= res!1597223 (< (size!31437 (_2!23744 lt!1379932)) (size!31437 suffix!1176)))))

(assert (=> b!3947413 (=> (not res!1597223) (not e!2442724))))

(declare-fun b!3947414 () Bool)

(assert (=> b!3947414 (= e!2442726 (= (_2!23744 lt!1379932) suffix!1176))))

(declare-fun d!1170998 () Bool)

(assert (=> d!1170998 e!2442726))

(declare-fun c!685621 () Bool)

(assert (=> d!1170998 (= c!685621 (> (size!31440 (_1!23744 lt!1379932)) 0))))

(assert (=> d!1170998 (= lt!1379932 e!2442725)))

(declare-fun c!685620 () Bool)

(assert (=> d!1170998 (= c!685620 (is-Some!8976 lt!1379933))))

(assert (=> d!1170998 (= lt!1379933 (maxPrefix!3450 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1170998 (= (lexList!1914 thiss!20629 rules!2768 suffix!1176) lt!1379932)))

(declare-fun b!3947415 () Bool)

(assert (=> b!3947415 (= e!2442725 (tuple2!41221 Nil!41929 suffix!1176))))

(assert (= (and d!1170998 c!685620) b!3947412))

(assert (= (and d!1170998 (not c!685620)) b!3947415))

(assert (= (and d!1170998 c!685621) b!3947413))

(assert (= (and d!1170998 (not c!685621)) b!3947414))

(assert (= (and b!3947413 res!1597223) b!3947411))

(declare-fun m!4516329 () Bool)

(assert (=> b!3947411 m!4516329))

(declare-fun m!4516331 () Bool)

(assert (=> b!3947412 m!4516331))

(declare-fun m!4516333 () Bool)

(assert (=> b!3947413 m!4516333))

(assert (=> b!3947413 m!4516321))

(declare-fun m!4516335 () Bool)

(assert (=> d!1170998 m!4516335))

(declare-fun m!4516337 () Bool)

(assert (=> d!1170998 m!4516337))

(assert (=> b!3947272 d!1170998))

(declare-fun d!1171000 () Bool)

(declare-fun res!1597228 () Bool)

(declare-fun e!2442729 () Bool)

(assert (=> d!1171000 (=> (not res!1597228) (not e!2442729))))

(assert (=> d!1171000 (= res!1597228 (not (isEmpty!25027 (originalCharacters!7157 (h!47349 suffixTokens!72)))))))

(assert (=> d!1171000 (= (inv!56157 (h!47349 suffixTokens!72)) e!2442729)))

(declare-fun b!3947420 () Bool)

(declare-fun res!1597229 () Bool)

(assert (=> b!3947420 (=> (not res!1597229) (not e!2442729))))

(declare-fun dynLambda!17968 (Int TokenValue!6787) BalanceConc!25130)

(assert (=> b!3947420 (= res!1597229 (= (originalCharacters!7157 (h!47349 suffixTokens!72)) (list!15575 (dynLambda!17968 (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))) (value!207510 (h!47349 suffixTokens!72))))))))

(declare-fun b!3947421 () Bool)

(assert (=> b!3947421 (= e!2442729 (= (size!31436 (h!47349 suffixTokens!72)) (size!31437 (originalCharacters!7157 (h!47349 suffixTokens!72)))))))

(assert (= (and d!1171000 res!1597228) b!3947420))

(assert (= (and b!3947420 res!1597229) b!3947421))

(declare-fun b_lambda!115465 () Bool)

(assert (=> (not b_lambda!115465) (not b!3947420)))

(declare-fun t!328031 () Bool)

(declare-fun tb!237239 () Bool)

(assert (=> (and b!3947270 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72))))) t!328031) tb!237239))

(declare-fun b!3947426 () Bool)

(declare-fun e!2442732 () Bool)

(declare-fun tp!1201917 () Bool)

(declare-fun inv!56161 (Conc!12768) Bool)

(assert (=> b!3947426 (= e!2442732 (and (inv!56161 (c!685604 (dynLambda!17968 (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))) (value!207510 (h!47349 suffixTokens!72))))) tp!1201917))))

(declare-fun result!287312 () Bool)

(declare-fun inv!56162 (BalanceConc!25130) Bool)

(assert (=> tb!237239 (= result!287312 (and (inv!56162 (dynLambda!17968 (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))) (value!207510 (h!47349 suffixTokens!72)))) e!2442732))))

(assert (= tb!237239 b!3947426))

(declare-fun m!4516339 () Bool)

(assert (=> b!3947426 m!4516339))

(declare-fun m!4516341 () Bool)

(assert (=> tb!237239 m!4516341))

(assert (=> b!3947420 t!328031))

(declare-fun b_and!302129 () Bool)

(assert (= b_and!302089 (and (=> t!328031 result!287312) b_and!302129)))

(declare-fun t!328033 () Bool)

(declare-fun tb!237241 () Bool)

(assert (=> (and b!3947265 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72))))) t!328033) tb!237241))

(declare-fun result!287316 () Bool)

(assert (= result!287316 result!287312))

(assert (=> b!3947420 t!328033))

(declare-fun b_and!302131 () Bool)

(assert (= b_and!302093 (and (=> t!328033 result!287316) b_and!302131)))

(declare-fun tb!237243 () Bool)

(declare-fun t!328035 () Bool)

(assert (=> (and b!3947258 (= (toChars!8892 (transformation!6557 (h!47350 rules!2768))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72))))) t!328035) tb!237243))

(declare-fun result!287318 () Bool)

(assert (= result!287318 result!287312))

(assert (=> b!3947420 t!328035))

(declare-fun b_and!302133 () Bool)

(assert (= b_and!302097 (and (=> t!328035 result!287318) b_and!302133)))

(declare-fun m!4516343 () Bool)

(assert (=> d!1171000 m!4516343))

(declare-fun m!4516345 () Bool)

(assert (=> b!3947420 m!4516345))

(assert (=> b!3947420 m!4516345))

(declare-fun m!4516347 () Bool)

(assert (=> b!3947420 m!4516347))

(declare-fun m!4516349 () Bool)

(assert (=> b!3947421 m!4516349))

(assert (=> b!3947261 d!1171000))

(declare-fun b!3947447 () Bool)

(declare-fun res!1597234 () Bool)

(declare-fun e!2442745 () Bool)

(assert (=> b!3947447 (=> res!1597234 e!2442745)))

(assert (=> b!3947447 (= res!1597234 (not (is-IntegerValue!20363 (value!207510 (h!47349 prefixTokens!80)))))))

(declare-fun e!2442746 () Bool)

(assert (=> b!3947447 (= e!2442746 e!2442745)))

(declare-fun b!3947448 () Bool)

(declare-fun e!2442747 () Bool)

(declare-fun inv!16 (TokenValue!6787) Bool)

(assert (=> b!3947448 (= e!2442747 (inv!16 (value!207510 (h!47349 prefixTokens!80))))))

(declare-fun b!3947449 () Bool)

(declare-fun inv!15 (TokenValue!6787) Bool)

(assert (=> b!3947449 (= e!2442745 (inv!15 (value!207510 (h!47349 prefixTokens!80))))))

(declare-fun d!1171002 () Bool)

(declare-fun c!685630 () Bool)

(assert (=> d!1171002 (= c!685630 (is-IntegerValue!20361 (value!207510 (h!47349 prefixTokens!80))))))

(assert (=> d!1171002 (= (inv!21 (value!207510 (h!47349 prefixTokens!80))) e!2442747)))

(declare-fun b!3947450 () Bool)

(assert (=> b!3947450 (= e!2442747 e!2442746)))

(declare-fun c!685631 () Bool)

(assert (=> b!3947450 (= c!685631 (is-IntegerValue!20362 (value!207510 (h!47349 prefixTokens!80))))))

(declare-fun b!3947451 () Bool)

(declare-fun inv!17 (TokenValue!6787) Bool)

(assert (=> b!3947451 (= e!2442746 (inv!17 (value!207510 (h!47349 prefixTokens!80))))))

(assert (= (and d!1171002 c!685630) b!3947448))

(assert (= (and d!1171002 (not c!685630)) b!3947450))

(assert (= (and b!3947450 c!685631) b!3947451))

(assert (= (and b!3947450 (not c!685631)) b!3947447))

(assert (= (and b!3947447 (not res!1597234)) b!3947449))

(declare-fun m!4516351 () Bool)

(assert (=> b!3947448 m!4516351))

(declare-fun m!4516353 () Bool)

(assert (=> b!3947449 m!4516353))

(declare-fun m!4516355 () Bool)

(assert (=> b!3947451 m!4516355))

(assert (=> b!3947255 d!1171002))

(declare-fun d!1171004 () Bool)

(assert (=> d!1171004 (= (isEmpty!25029 prefixTokens!80) (is-Nil!41929 prefixTokens!80))))

(assert (=> b!3947276 d!1171004))

(declare-fun d!1171006 () Bool)

(assert (=> d!1171006 (= (isEmpty!25028 rules!2768) (is-Nil!41930 rules!2768))))

(assert (=> b!3947275 d!1171006))

(declare-fun d!1171008 () Bool)

(assert (=> d!1171008 (= (inv!56154 (tag!7417 (rule!9523 (h!47349 suffixTokens!72)))) (= (mod (str.len (value!207509 (tag!7417 (rule!9523 (h!47349 suffixTokens!72))))) 2) 0))))

(assert (=> b!3947274 d!1171008))

(declare-fun d!1171010 () Bool)

(declare-fun res!1597235 () Bool)

(declare-fun e!2442748 () Bool)

(assert (=> d!1171010 (=> (not res!1597235) (not e!2442748))))

(assert (=> d!1171010 (= res!1597235 (semiInverseModEq!2826 (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))) (toValue!9033 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72))))))))

(assert (=> d!1171010 (= (inv!56158 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))) e!2442748)))

(declare-fun b!3947452 () Bool)

(assert (=> b!3947452 (= e!2442748 (equivClasses!2725 (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))) (toValue!9033 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72))))))))

(assert (= (and d!1171010 res!1597235) b!3947452))

(declare-fun m!4516357 () Bool)

(assert (=> d!1171010 m!4516357))

(declare-fun m!4516359 () Bool)

(assert (=> b!3947452 m!4516359))

(assert (=> b!3947274 d!1171010))

(declare-fun d!1171012 () Bool)

(assert (=> d!1171012 (= (inv!56154 (tag!7417 (h!47350 rules!2768))) (= (mod (str.len (value!207509 (tag!7417 (h!47350 rules!2768)))) 2) 0))))

(assert (=> b!3947268 d!1171012))

(declare-fun d!1171014 () Bool)

(declare-fun res!1597236 () Bool)

(declare-fun e!2442749 () Bool)

(assert (=> d!1171014 (=> (not res!1597236) (not e!2442749))))

(assert (=> d!1171014 (= res!1597236 (semiInverseModEq!2826 (toChars!8892 (transformation!6557 (h!47350 rules!2768))) (toValue!9033 (transformation!6557 (h!47350 rules!2768)))))))

(assert (=> d!1171014 (= (inv!56158 (transformation!6557 (h!47350 rules!2768))) e!2442749)))

(declare-fun b!3947453 () Bool)

(assert (=> b!3947453 (= e!2442749 (equivClasses!2725 (toChars!8892 (transformation!6557 (h!47350 rules!2768))) (toValue!9033 (transformation!6557 (h!47350 rules!2768)))))))

(assert (= (and d!1171014 res!1597236) b!3947453))

(declare-fun m!4516361 () Bool)

(assert (=> d!1171014 m!4516361))

(declare-fun m!4516363 () Bool)

(assert (=> b!3947453 m!4516363))

(assert (=> b!3947268 d!1171014))

(declare-fun b!3947501 () Bool)

(declare-fun res!1597266 () Bool)

(declare-fun e!2442773 () Bool)

(assert (=> b!3947501 (=> (not res!1597266) (not e!2442773))))

(declare-fun lt!1379959 () Option!8977)

(declare-fun get!13846 (Option!8977) tuple2!41218)

(assert (=> b!3947501 (= res!1597266 (< (size!31437 (_2!23743 (get!13846 lt!1379959))) (size!31437 lt!1379884)))))

(declare-fun b!3947502 () Bool)

(declare-fun res!1597268 () Bool)

(assert (=> b!3947502 (=> (not res!1597268) (not e!2442773))))

(assert (=> b!3947502 (= res!1597268 (= (++!10871 (list!15575 (charsOf!4375 (_1!23743 (get!13846 lt!1379959)))) (_2!23743 (get!13846 lt!1379959))) lt!1379884))))

(declare-fun b!3947503 () Bool)

(declare-fun res!1597264 () Bool)

(assert (=> b!3947503 (=> (not res!1597264) (not e!2442773))))

(assert (=> b!3947503 (= res!1597264 (= (value!207510 (_1!23743 (get!13846 lt!1379959))) (apply!9788 (transformation!6557 (rule!9523 (_1!23743 (get!13846 lt!1379959)))) (seqFromList!4816 (originalCharacters!7157 (_1!23743 (get!13846 lt!1379959)))))))))

(declare-fun bm!285174 () Bool)

(declare-fun call!285179 () Option!8977)

(declare-fun maxPrefixOneRule!2510 (LexerInterface!6146 Rule!12914 List!42052) Option!8977)

(assert (=> bm!285174 (= call!285179 (maxPrefixOneRule!2510 thiss!20629 (h!47350 rules!2768) lt!1379884))))

(declare-fun b!3947504 () Bool)

(declare-fun res!1597267 () Bool)

(assert (=> b!3947504 (=> (not res!1597267) (not e!2442773))))

(declare-fun matchR!5505 (Regex!11462 List!42052) Bool)

(assert (=> b!3947504 (= res!1597267 (matchR!5505 (regex!6557 (rule!9523 (_1!23743 (get!13846 lt!1379959)))) (list!15575 (charsOf!4375 (_1!23743 (get!13846 lt!1379959))))))))

(declare-fun b!3947505 () Bool)

(declare-fun res!1597265 () Bool)

(assert (=> b!3947505 (=> (not res!1597265) (not e!2442773))))

(assert (=> b!3947505 (= res!1597265 (= (list!15575 (charsOf!4375 (_1!23743 (get!13846 lt!1379959)))) (originalCharacters!7157 (_1!23743 (get!13846 lt!1379959)))))))

(declare-fun b!3947506 () Bool)

(declare-fun e!2442772 () Bool)

(assert (=> b!3947506 (= e!2442772 e!2442773)))

(declare-fun res!1597270 () Bool)

(assert (=> b!3947506 (=> (not res!1597270) (not e!2442773))))

(declare-fun isDefined!6972 (Option!8977) Bool)

(assert (=> b!3947506 (= res!1597270 (isDefined!6972 lt!1379959))))

(declare-fun b!3947507 () Bool)

(declare-fun contains!8397 (List!42054 Rule!12914) Bool)

(assert (=> b!3947507 (= e!2442773 (contains!8397 rules!2768 (rule!9523 (_1!23743 (get!13846 lt!1379959)))))))

(declare-fun b!3947508 () Bool)

(declare-fun e!2442771 () Option!8977)

(assert (=> b!3947508 (= e!2442771 call!285179)))

(declare-fun b!3947509 () Bool)

(declare-fun lt!1379962 () Option!8977)

(declare-fun lt!1379960 () Option!8977)

(assert (=> b!3947509 (= e!2442771 (ite (and (is-None!8976 lt!1379962) (is-None!8976 lt!1379960)) None!8976 (ite (is-None!8976 lt!1379960) lt!1379962 (ite (is-None!8976 lt!1379962) lt!1379960 (ite (>= (size!31436 (_1!23743 (v!39316 lt!1379962))) (size!31436 (_1!23743 (v!39316 lt!1379960)))) lt!1379962 lt!1379960)))))))

(assert (=> b!3947509 (= lt!1379962 call!285179)))

(assert (=> b!3947509 (= lt!1379960 (maxPrefix!3450 thiss!20629 (t!328007 rules!2768) lt!1379884))))

(declare-fun d!1171016 () Bool)

(assert (=> d!1171016 e!2442772))

(declare-fun res!1597269 () Bool)

(assert (=> d!1171016 (=> res!1597269 e!2442772)))

(declare-fun isEmpty!25033 (Option!8977) Bool)

(assert (=> d!1171016 (= res!1597269 (isEmpty!25033 lt!1379959))))

(assert (=> d!1171016 (= lt!1379959 e!2442771)))

(declare-fun c!685642 () Bool)

(assert (=> d!1171016 (= c!685642 (and (is-Cons!41930 rules!2768) (is-Nil!41930 (t!328007 rules!2768))))))

(declare-fun lt!1379963 () Unit!60461)

(declare-fun lt!1379961 () Unit!60461)

(assert (=> d!1171016 (= lt!1379963 lt!1379961)))

(assert (=> d!1171016 (isPrefix!3646 lt!1379884 lt!1379884)))

(declare-fun lemmaIsPrefixRefl!2303 (List!42052 List!42052) Unit!60461)

(assert (=> d!1171016 (= lt!1379961 (lemmaIsPrefixRefl!2303 lt!1379884 lt!1379884))))

(declare-fun rulesValidInductive!2373 (LexerInterface!6146 List!42054) Bool)

(assert (=> d!1171016 (rulesValidInductive!2373 thiss!20629 rules!2768)))

(assert (=> d!1171016 (= (maxPrefix!3450 thiss!20629 rules!2768 lt!1379884) lt!1379959)))

(assert (= (and d!1171016 c!685642) b!3947508))

(assert (= (and d!1171016 (not c!685642)) b!3947509))

(assert (= (or b!3947508 b!3947509) bm!285174))

(assert (= (and d!1171016 (not res!1597269)) b!3947506))

(assert (= (and b!3947506 res!1597270) b!3947505))

(assert (= (and b!3947505 res!1597265) b!3947501))

(assert (= (and b!3947501 res!1597266) b!3947502))

(assert (= (and b!3947502 res!1597268) b!3947503))

(assert (= (and b!3947503 res!1597264) b!3947504))

(assert (= (and b!3947504 res!1597267) b!3947507))

(declare-fun m!4516403 () Bool)

(assert (=> b!3947507 m!4516403))

(declare-fun m!4516405 () Bool)

(assert (=> b!3947507 m!4516405))

(assert (=> b!3947502 m!4516403))

(declare-fun m!4516407 () Bool)

(assert (=> b!3947502 m!4516407))

(assert (=> b!3947502 m!4516407))

(declare-fun m!4516409 () Bool)

(assert (=> b!3947502 m!4516409))

(assert (=> b!3947502 m!4516409))

(declare-fun m!4516411 () Bool)

(assert (=> b!3947502 m!4516411))

(declare-fun m!4516413 () Bool)

(assert (=> bm!285174 m!4516413))

(declare-fun m!4516415 () Bool)

(assert (=> b!3947509 m!4516415))

(assert (=> b!3947501 m!4516403))

(declare-fun m!4516417 () Bool)

(assert (=> b!3947501 m!4516417))

(assert (=> b!3947501 m!4516297))

(declare-fun m!4516419 () Bool)

(assert (=> d!1171016 m!4516419))

(declare-fun m!4516421 () Bool)

(assert (=> d!1171016 m!4516421))

(declare-fun m!4516423 () Bool)

(assert (=> d!1171016 m!4516423))

(declare-fun m!4516425 () Bool)

(assert (=> d!1171016 m!4516425))

(assert (=> b!3947504 m!4516403))

(assert (=> b!3947504 m!4516407))

(assert (=> b!3947504 m!4516407))

(assert (=> b!3947504 m!4516409))

(assert (=> b!3947504 m!4516409))

(declare-fun m!4516427 () Bool)

(assert (=> b!3947504 m!4516427))

(assert (=> b!3947503 m!4516403))

(declare-fun m!4516429 () Bool)

(assert (=> b!3947503 m!4516429))

(assert (=> b!3947503 m!4516429))

(declare-fun m!4516431 () Bool)

(assert (=> b!3947503 m!4516431))

(declare-fun m!4516433 () Bool)

(assert (=> b!3947506 m!4516433))

(assert (=> b!3947505 m!4516403))

(assert (=> b!3947505 m!4516407))

(assert (=> b!3947505 m!4516407))

(assert (=> b!3947505 m!4516409))

(assert (=> b!3947257 d!1171016))

(declare-fun d!1171024 () Bool)

(assert (=> d!1171024 (ruleValid!2499 thiss!20629 (rule!9523 (_1!23743 (v!39316 lt!1379886))))))

(declare-fun lt!1379966 () Unit!60461)

(declare-fun choose!23550 (LexerInterface!6146 Rule!12914 List!42054) Unit!60461)

(assert (=> d!1171024 (= lt!1379966 (choose!23550 thiss!20629 (rule!9523 (_1!23743 (v!39316 lt!1379886))) rules!2768))))

(assert (=> d!1171024 (contains!8397 rules!2768 (rule!9523 (_1!23743 (v!39316 lt!1379886))))))

(assert (=> d!1171024 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1575 thiss!20629 (rule!9523 (_1!23743 (v!39316 lt!1379886))) rules!2768) lt!1379966)))

(declare-fun bs!586940 () Bool)

(assert (= bs!586940 d!1171024))

(assert (=> bs!586940 m!4516147))

(declare-fun m!4516435 () Bool)

(assert (=> bs!586940 m!4516435))

(declare-fun m!4516437 () Bool)

(assert (=> bs!586940 m!4516437))

(assert (=> b!3947256 d!1171024))

(declare-fun d!1171026 () Bool)

(assert (=> d!1171026 (= (_2!23743 (v!39316 lt!1379886)) lt!1379887)))

(declare-fun lt!1379969 () Unit!60461)

(declare-fun choose!23551 (List!42052 List!42052 List!42052 List!42052 List!42052) Unit!60461)

(assert (=> d!1171026 (= lt!1379969 (choose!23551 lt!1379885 (_2!23743 (v!39316 lt!1379886)) lt!1379885 lt!1379887 lt!1379884))))

(assert (=> d!1171026 (isPrefix!3646 lt!1379885 lt!1379884)))

(assert (=> d!1171026 (= (lemmaSamePrefixThenSameSuffix!1855 lt!1379885 (_2!23743 (v!39316 lt!1379886)) lt!1379885 lt!1379887 lt!1379884) lt!1379969)))

(declare-fun bs!586941 () Bool)

(assert (= bs!586941 d!1171026))

(declare-fun m!4516439 () Bool)

(assert (=> bs!586941 m!4516439))

(declare-fun m!4516441 () Bool)

(assert (=> bs!586941 m!4516441))

(assert (=> b!3947256 d!1171026))

(declare-fun b!3947511 () Bool)

(declare-fun e!2442775 () List!42052)

(assert (=> b!3947511 (= e!2442775 (Cons!41928 (h!47348 lt!1379885) (++!10871 (t!328005 lt!1379885) (_2!23743 (v!39316 lt!1379886)))))))

(declare-fun b!3947512 () Bool)

(declare-fun res!1597271 () Bool)

(declare-fun e!2442774 () Bool)

(assert (=> b!3947512 (=> (not res!1597271) (not e!2442774))))

(declare-fun lt!1379970 () List!42052)

(assert (=> b!3947512 (= res!1597271 (= (size!31437 lt!1379970) (+ (size!31437 lt!1379885) (size!31437 (_2!23743 (v!39316 lt!1379886))))))))

(declare-fun b!3947510 () Bool)

(assert (=> b!3947510 (= e!2442775 (_2!23743 (v!39316 lt!1379886)))))

(declare-fun d!1171028 () Bool)

(assert (=> d!1171028 e!2442774))

(declare-fun res!1597272 () Bool)

(assert (=> d!1171028 (=> (not res!1597272) (not e!2442774))))

(assert (=> d!1171028 (= res!1597272 (= (content!6351 lt!1379970) (set.union (content!6351 lt!1379885) (content!6351 (_2!23743 (v!39316 lt!1379886))))))))

(assert (=> d!1171028 (= lt!1379970 e!2442775)))

(declare-fun c!685643 () Bool)

(assert (=> d!1171028 (= c!685643 (is-Nil!41928 lt!1379885))))

(assert (=> d!1171028 (= (++!10871 lt!1379885 (_2!23743 (v!39316 lt!1379886))) lt!1379970)))

(declare-fun b!3947513 () Bool)

(assert (=> b!3947513 (= e!2442774 (or (not (= (_2!23743 (v!39316 lt!1379886)) Nil!41928)) (= lt!1379970 lt!1379885)))))

(assert (= (and d!1171028 c!685643) b!3947510))

(assert (= (and d!1171028 (not c!685643)) b!3947511))

(assert (= (and d!1171028 res!1597272) b!3947512))

(assert (= (and b!3947512 res!1597271) b!3947513))

(declare-fun m!4516443 () Bool)

(assert (=> b!3947511 m!4516443))

(declare-fun m!4516445 () Bool)

(assert (=> b!3947512 m!4516445))

(declare-fun m!4516447 () Bool)

(assert (=> b!3947512 m!4516447))

(declare-fun m!4516449 () Bool)

(assert (=> b!3947512 m!4516449))

(declare-fun m!4516451 () Bool)

(assert (=> d!1171028 m!4516451))

(declare-fun m!4516453 () Bool)

(assert (=> d!1171028 m!4516453))

(declare-fun m!4516455 () Bool)

(assert (=> d!1171028 m!4516455))

(assert (=> b!3947256 d!1171028))

(declare-fun b!3947523 () Bool)

(declare-fun res!1597281 () Bool)

(declare-fun e!2442783 () Bool)

(assert (=> b!3947523 (=> (not res!1597281) (not e!2442783))))

(declare-fun head!8384 (List!42052) C!23110)

(assert (=> b!3947523 (= res!1597281 (= (head!8384 lt!1379885) (head!8384 (++!10871 lt!1379885 (_2!23743 (v!39316 lt!1379886))))))))

(declare-fun d!1171030 () Bool)

(declare-fun e!2442782 () Bool)

(assert (=> d!1171030 e!2442782))

(declare-fun res!1597283 () Bool)

(assert (=> d!1171030 (=> res!1597283 e!2442782)))

(declare-fun lt!1379973 () Bool)

(assert (=> d!1171030 (= res!1597283 (not lt!1379973))))

(declare-fun e!2442784 () Bool)

(assert (=> d!1171030 (= lt!1379973 e!2442784)))

(declare-fun res!1597284 () Bool)

(assert (=> d!1171030 (=> res!1597284 e!2442784)))

(assert (=> d!1171030 (= res!1597284 (is-Nil!41928 lt!1379885))))

(assert (=> d!1171030 (= (isPrefix!3646 lt!1379885 (++!10871 lt!1379885 (_2!23743 (v!39316 lt!1379886)))) lt!1379973)))

(declare-fun b!3947524 () Bool)

(declare-fun tail!6110 (List!42052) List!42052)

(assert (=> b!3947524 (= e!2442783 (isPrefix!3646 (tail!6110 lt!1379885) (tail!6110 (++!10871 lt!1379885 (_2!23743 (v!39316 lt!1379886))))))))

(declare-fun b!3947522 () Bool)

(assert (=> b!3947522 (= e!2442784 e!2442783)))

(declare-fun res!1597282 () Bool)

(assert (=> b!3947522 (=> (not res!1597282) (not e!2442783))))

(assert (=> b!3947522 (= res!1597282 (not (is-Nil!41928 (++!10871 lt!1379885 (_2!23743 (v!39316 lt!1379886))))))))

(declare-fun b!3947525 () Bool)

(assert (=> b!3947525 (= e!2442782 (>= (size!31437 (++!10871 lt!1379885 (_2!23743 (v!39316 lt!1379886)))) (size!31437 lt!1379885)))))

(assert (= (and d!1171030 (not res!1597284)) b!3947522))

(assert (= (and b!3947522 res!1597282) b!3947523))

(assert (= (and b!3947523 res!1597281) b!3947524))

(assert (= (and d!1171030 (not res!1597283)) b!3947525))

(declare-fun m!4516457 () Bool)

(assert (=> b!3947523 m!4516457))

(assert (=> b!3947523 m!4516149))

(declare-fun m!4516459 () Bool)

(assert (=> b!3947523 m!4516459))

(declare-fun m!4516461 () Bool)

(assert (=> b!3947524 m!4516461))

(assert (=> b!3947524 m!4516149))

(declare-fun m!4516463 () Bool)

(assert (=> b!3947524 m!4516463))

(assert (=> b!3947524 m!4516461))

(assert (=> b!3947524 m!4516463))

(declare-fun m!4516465 () Bool)

(assert (=> b!3947524 m!4516465))

(assert (=> b!3947525 m!4516149))

(declare-fun m!4516467 () Bool)

(assert (=> b!3947525 m!4516467))

(assert (=> b!3947525 m!4516447))

(assert (=> b!3947256 d!1171030))

(declare-fun d!1171032 () Bool)

(declare-fun lt!1379976 () List!42052)

(assert (=> d!1171032 (= (++!10871 lt!1379885 lt!1379976) lt!1379884)))

(declare-fun e!2442787 () List!42052)

(assert (=> d!1171032 (= lt!1379976 e!2442787)))

(declare-fun c!685646 () Bool)

(assert (=> d!1171032 (= c!685646 (is-Cons!41928 lt!1379885))))

(assert (=> d!1171032 (>= (size!31437 lt!1379884) (size!31437 lt!1379885))))

(assert (=> d!1171032 (= (getSuffix!2097 lt!1379884 lt!1379885) lt!1379976)))

(declare-fun b!3947530 () Bool)

(assert (=> b!3947530 (= e!2442787 (getSuffix!2097 (tail!6110 lt!1379884) (t!328005 lt!1379885)))))

(declare-fun b!3947531 () Bool)

(assert (=> b!3947531 (= e!2442787 lt!1379884)))

(assert (= (and d!1171032 c!685646) b!3947530))

(assert (= (and d!1171032 (not c!685646)) b!3947531))

(declare-fun m!4516469 () Bool)

(assert (=> d!1171032 m!4516469))

(assert (=> d!1171032 m!4516297))

(assert (=> d!1171032 m!4516447))

(declare-fun m!4516471 () Bool)

(assert (=> b!3947530 m!4516471))

(assert (=> b!3947530 m!4516471))

(declare-fun m!4516473 () Bool)

(assert (=> b!3947530 m!4516473))

(assert (=> b!3947256 d!1171032))

(declare-fun d!1171034 () Bool)

(assert (=> d!1171034 (isPrefix!3646 lt!1379885 (++!10871 lt!1379885 (_2!23743 (v!39316 lt!1379886))))))

(declare-fun lt!1379979 () Unit!60461)

(declare-fun choose!23552 (List!42052 List!42052) Unit!60461)

(assert (=> d!1171034 (= lt!1379979 (choose!23552 lt!1379885 (_2!23743 (v!39316 lt!1379886))))))

(assert (=> d!1171034 (= (lemmaConcatTwoListThenFirstIsPrefix!2505 lt!1379885 (_2!23743 (v!39316 lt!1379886))) lt!1379979)))

(declare-fun bs!586942 () Bool)

(assert (= bs!586942 d!1171034))

(assert (=> bs!586942 m!4516149))

(assert (=> bs!586942 m!4516149))

(assert (=> bs!586942 m!4516153))

(declare-fun m!4516475 () Bool)

(assert (=> bs!586942 m!4516475))

(assert (=> b!3947256 d!1171034))

(declare-fun d!1171036 () Bool)

(declare-fun lt!1379982 () Int)

(assert (=> d!1171036 (>= lt!1379982 0)))

(declare-fun e!2442790 () Int)

(assert (=> d!1171036 (= lt!1379982 e!2442790)))

(declare-fun c!685649 () Bool)

(assert (=> d!1171036 (= c!685649 (is-Nil!41928 (originalCharacters!7157 (_1!23743 (v!39316 lt!1379886)))))))

(assert (=> d!1171036 (= (size!31437 (originalCharacters!7157 (_1!23743 (v!39316 lt!1379886)))) lt!1379982)))

(declare-fun b!3947536 () Bool)

(assert (=> b!3947536 (= e!2442790 0)))

(declare-fun b!3947537 () Bool)

(assert (=> b!3947537 (= e!2442790 (+ 1 (size!31437 (t!328005 (originalCharacters!7157 (_1!23743 (v!39316 lt!1379886)))))))))

(assert (= (and d!1171036 c!685649) b!3947536))

(assert (= (and d!1171036 (not c!685649)) b!3947537))

(declare-fun m!4516477 () Bool)

(assert (=> b!3947537 m!4516477))

(assert (=> b!3947256 d!1171036))

(declare-fun d!1171038 () Bool)

(declare-fun lt!1379985 () BalanceConc!25130)

(assert (=> d!1171038 (= (list!15575 lt!1379985) (originalCharacters!7157 (_1!23743 (v!39316 lt!1379886))))))

(assert (=> d!1171038 (= lt!1379985 (dynLambda!17968 (toChars!8892 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886))))) (value!207510 (_1!23743 (v!39316 lt!1379886)))))))

(assert (=> d!1171038 (= (charsOf!4375 (_1!23743 (v!39316 lt!1379886))) lt!1379985)))

(declare-fun b_lambda!115467 () Bool)

(assert (=> (not b_lambda!115467) (not d!1171038)))

(declare-fun tb!237245 () Bool)

(declare-fun t!328037 () Bool)

(assert (=> (and b!3947270 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))) (toChars!8892 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))) t!328037) tb!237245))

(declare-fun b!3947538 () Bool)

(declare-fun e!2442791 () Bool)

(declare-fun tp!1201918 () Bool)

(assert (=> b!3947538 (= e!2442791 (and (inv!56161 (c!685604 (dynLambda!17968 (toChars!8892 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886))))) (value!207510 (_1!23743 (v!39316 lt!1379886)))))) tp!1201918))))

(declare-fun result!287320 () Bool)

(assert (=> tb!237245 (= result!287320 (and (inv!56162 (dynLambda!17968 (toChars!8892 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886))))) (value!207510 (_1!23743 (v!39316 lt!1379886))))) e!2442791))))

(assert (= tb!237245 b!3947538))

(declare-fun m!4516479 () Bool)

(assert (=> b!3947538 m!4516479))

(declare-fun m!4516481 () Bool)

(assert (=> tb!237245 m!4516481))

(assert (=> d!1171038 t!328037))

(declare-fun b_and!302135 () Bool)

(assert (= b_and!302129 (and (=> t!328037 result!287320) b_and!302135)))

(declare-fun t!328039 () Bool)

(declare-fun tb!237247 () Bool)

(assert (=> (and b!3947265 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))) (toChars!8892 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))) t!328039) tb!237247))

(declare-fun result!287322 () Bool)

(assert (= result!287322 result!287320))

(assert (=> d!1171038 t!328039))

(declare-fun b_and!302137 () Bool)

(assert (= b_and!302131 (and (=> t!328039 result!287322) b_and!302137)))

(declare-fun t!328041 () Bool)

(declare-fun tb!237249 () Bool)

(assert (=> (and b!3947258 (= (toChars!8892 (transformation!6557 (h!47350 rules!2768))) (toChars!8892 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))) t!328041) tb!237249))

(declare-fun result!287324 () Bool)

(assert (= result!287324 result!287320))

(assert (=> d!1171038 t!328041))

(declare-fun b_and!302139 () Bool)

(assert (= b_and!302133 (and (=> t!328041 result!287324) b_and!302139)))

(declare-fun m!4516483 () Bool)

(assert (=> d!1171038 m!4516483))

(declare-fun m!4516485 () Bool)

(assert (=> d!1171038 m!4516485))

(assert (=> b!3947256 d!1171038))

(declare-fun d!1171040 () Bool)

(assert (=> d!1171040 (= (size!31436 (_1!23743 (v!39316 lt!1379886))) (size!31437 (originalCharacters!7157 (_1!23743 (v!39316 lt!1379886)))))))

(declare-fun Unit!60466 () Unit!60461)

(assert (=> d!1171040 (= (lemmaCharactersSize!1210 (_1!23743 (v!39316 lt!1379886))) Unit!60466)))

(declare-fun bs!586943 () Bool)

(assert (= bs!586943 d!1171040))

(assert (=> bs!586943 m!4516141))

(assert (=> b!3947256 d!1171040))

(declare-fun d!1171042 () Bool)

(declare-fun res!1597289 () Bool)

(declare-fun e!2442794 () Bool)

(assert (=> d!1171042 (=> (not res!1597289) (not e!2442794))))

(declare-fun validRegex!5221 (Regex!11462) Bool)

(assert (=> d!1171042 (= res!1597289 (validRegex!5221 (regex!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886))))))))

(assert (=> d!1171042 (= (ruleValid!2499 thiss!20629 (rule!9523 (_1!23743 (v!39316 lt!1379886)))) e!2442794)))

(declare-fun b!3947543 () Bool)

(declare-fun res!1597290 () Bool)

(assert (=> b!3947543 (=> (not res!1597290) (not e!2442794))))

(declare-fun nullable!4022 (Regex!11462) Bool)

(assert (=> b!3947543 (= res!1597290 (not (nullable!4022 (regex!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))))))

(declare-fun b!3947544 () Bool)

(assert (=> b!3947544 (= e!2442794 (not (= (tag!7417 (rule!9523 (_1!23743 (v!39316 lt!1379886)))) (String!47656 ""))))))

(assert (= (and d!1171042 res!1597289) b!3947543))

(assert (= (and b!3947543 res!1597290) b!3947544))

(declare-fun m!4516487 () Bool)

(assert (=> d!1171042 m!4516487))

(declare-fun m!4516489 () Bool)

(assert (=> b!3947543 m!4516489))

(assert (=> b!3947256 d!1171042))

(declare-fun d!1171044 () Bool)

(declare-fun list!15577 (Conc!12768) List!42052)

(assert (=> d!1171044 (= (list!15575 (charsOf!4375 (_1!23743 (v!39316 lt!1379886)))) (list!15577 (c!685604 (charsOf!4375 (_1!23743 (v!39316 lt!1379886))))))))

(declare-fun bs!586944 () Bool)

(assert (= bs!586944 d!1171044))

(declare-fun m!4516491 () Bool)

(assert (=> bs!586944 m!4516491))

(assert (=> b!3947256 d!1171044))

(declare-fun b!3947545 () Bool)

(declare-fun res!1597291 () Bool)

(declare-fun e!2442795 () Bool)

(assert (=> b!3947545 (=> res!1597291 e!2442795)))

(assert (=> b!3947545 (= res!1597291 (not (is-IntegerValue!20363 (value!207510 (h!47349 suffixTokens!72)))))))

(declare-fun e!2442796 () Bool)

(assert (=> b!3947545 (= e!2442796 e!2442795)))

(declare-fun b!3947546 () Bool)

(declare-fun e!2442797 () Bool)

(assert (=> b!3947546 (= e!2442797 (inv!16 (value!207510 (h!47349 suffixTokens!72))))))

(declare-fun b!3947547 () Bool)

(assert (=> b!3947547 (= e!2442795 (inv!15 (value!207510 (h!47349 suffixTokens!72))))))

(declare-fun d!1171046 () Bool)

(declare-fun c!685650 () Bool)

(assert (=> d!1171046 (= c!685650 (is-IntegerValue!20361 (value!207510 (h!47349 suffixTokens!72))))))

(assert (=> d!1171046 (= (inv!21 (value!207510 (h!47349 suffixTokens!72))) e!2442797)))

(declare-fun b!3947548 () Bool)

(assert (=> b!3947548 (= e!2442797 e!2442796)))

(declare-fun c!685651 () Bool)

(assert (=> b!3947548 (= c!685651 (is-IntegerValue!20362 (value!207510 (h!47349 suffixTokens!72))))))

(declare-fun b!3947549 () Bool)

(assert (=> b!3947549 (= e!2442796 (inv!17 (value!207510 (h!47349 suffixTokens!72))))))

(assert (= (and d!1171046 c!685650) b!3947546))

(assert (= (and d!1171046 (not c!685650)) b!3947548))

(assert (= (and b!3947548 c!685651) b!3947549))

(assert (= (and b!3947548 (not c!685651)) b!3947545))

(assert (= (and b!3947545 (not res!1597291)) b!3947547))

(declare-fun m!4516493 () Bool)

(assert (=> b!3947546 m!4516493))

(declare-fun m!4516495 () Bool)

(assert (=> b!3947547 m!4516495))

(declare-fun m!4516497 () Bool)

(assert (=> b!3947549 m!4516497))

(assert (=> b!3947271 d!1171046))

(declare-fun d!1171048 () Bool)

(declare-fun res!1597292 () Bool)

(declare-fun e!2442798 () Bool)

(assert (=> d!1171048 (=> (not res!1597292) (not e!2442798))))

(assert (=> d!1171048 (= res!1597292 (not (isEmpty!25027 (originalCharacters!7157 (h!47349 prefixTokens!80)))))))

(assert (=> d!1171048 (= (inv!56157 (h!47349 prefixTokens!80)) e!2442798)))

(declare-fun b!3947550 () Bool)

(declare-fun res!1597293 () Bool)

(assert (=> b!3947550 (=> (not res!1597293) (not e!2442798))))

(assert (=> b!3947550 (= res!1597293 (= (originalCharacters!7157 (h!47349 prefixTokens!80)) (list!15575 (dynLambda!17968 (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))) (value!207510 (h!47349 prefixTokens!80))))))))

(declare-fun b!3947551 () Bool)

(assert (=> b!3947551 (= e!2442798 (= (size!31436 (h!47349 prefixTokens!80)) (size!31437 (originalCharacters!7157 (h!47349 prefixTokens!80)))))))

(assert (= (and d!1171048 res!1597292) b!3947550))

(assert (= (and b!3947550 res!1597293) b!3947551))

(declare-fun b_lambda!115469 () Bool)

(assert (=> (not b_lambda!115469) (not b!3947550)))

(declare-fun t!328043 () Bool)

(declare-fun tb!237251 () Bool)

(assert (=> (and b!3947270 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80))))) t!328043) tb!237251))

(declare-fun b!3947552 () Bool)

(declare-fun e!2442799 () Bool)

(declare-fun tp!1201919 () Bool)

(assert (=> b!3947552 (= e!2442799 (and (inv!56161 (c!685604 (dynLambda!17968 (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))) (value!207510 (h!47349 prefixTokens!80))))) tp!1201919))))

(declare-fun result!287326 () Bool)

(assert (=> tb!237251 (= result!287326 (and (inv!56162 (dynLambda!17968 (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))) (value!207510 (h!47349 prefixTokens!80)))) e!2442799))))

(assert (= tb!237251 b!3947552))

(declare-fun m!4516499 () Bool)

(assert (=> b!3947552 m!4516499))

(declare-fun m!4516501 () Bool)

(assert (=> tb!237251 m!4516501))

(assert (=> b!3947550 t!328043))

(declare-fun b_and!302141 () Bool)

(assert (= b_and!302135 (and (=> t!328043 result!287326) b_and!302141)))

(declare-fun tb!237253 () Bool)

(declare-fun t!328045 () Bool)

(assert (=> (and b!3947265 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80))))) t!328045) tb!237253))

(declare-fun result!287328 () Bool)

(assert (= result!287328 result!287326))

(assert (=> b!3947550 t!328045))

(declare-fun b_and!302143 () Bool)

(assert (= b_and!302137 (and (=> t!328045 result!287328) b_and!302143)))

(declare-fun t!328047 () Bool)

(declare-fun tb!237255 () Bool)

(assert (=> (and b!3947258 (= (toChars!8892 (transformation!6557 (h!47350 rules!2768))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80))))) t!328047) tb!237255))

(declare-fun result!287330 () Bool)

(assert (= result!287330 result!287326))

(assert (=> b!3947550 t!328047))

(declare-fun b_and!302145 () Bool)

(assert (= b_and!302139 (and (=> t!328047 result!287330) b_and!302145)))

(declare-fun m!4516503 () Bool)

(assert (=> d!1171048 m!4516503))

(declare-fun m!4516505 () Bool)

(assert (=> b!3947550 m!4516505))

(assert (=> b!3947550 m!4516505))

(declare-fun m!4516507 () Bool)

(assert (=> b!3947550 m!4516507))

(declare-fun m!4516509 () Bool)

(assert (=> b!3947551 m!4516509))

(assert (=> b!3947260 d!1171048))

(declare-fun d!1171050 () Bool)

(assert (=> d!1171050 (= (isEmpty!25027 prefix!426) (is-Nil!41928 prefix!426))))

(assert (=> b!3947259 d!1171050))

(declare-fun d!1171052 () Bool)

(declare-fun dynLambda!17971 (Int BalanceConc!25130) TokenValue!6787)

(assert (=> d!1171052 (= (apply!9788 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))) (seqFromList!4816 lt!1379885)) (dynLambda!17971 (toValue!9033 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886))))) (seqFromList!4816 lt!1379885)))))

(declare-fun b_lambda!115471 () Bool)

(assert (=> (not b_lambda!115471) (not d!1171052)))

(declare-fun t!328049 () Bool)

(declare-fun tb!237257 () Bool)

(assert (=> (and b!3947270 (= (toValue!9033 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))) (toValue!9033 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))) t!328049) tb!237257))

(declare-fun result!287332 () Bool)

(assert (=> tb!237257 (= result!287332 (inv!21 (dynLambda!17971 (toValue!9033 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886))))) (seqFromList!4816 lt!1379885))))))

(declare-fun m!4516511 () Bool)

(assert (=> tb!237257 m!4516511))

(assert (=> d!1171052 t!328049))

(declare-fun b_and!302147 () Bool)

(assert (= b_and!302087 (and (=> t!328049 result!287332) b_and!302147)))

(declare-fun tb!237259 () Bool)

(declare-fun t!328051 () Bool)

(assert (=> (and b!3947265 (= (toValue!9033 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))) (toValue!9033 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))) t!328051) tb!237259))

(declare-fun result!287336 () Bool)

(assert (= result!287336 result!287332))

(assert (=> d!1171052 t!328051))

(declare-fun b_and!302149 () Bool)

(assert (= b_and!302091 (and (=> t!328051 result!287336) b_and!302149)))

(declare-fun tb!237261 () Bool)

(declare-fun t!328053 () Bool)

(assert (=> (and b!3947258 (= (toValue!9033 (transformation!6557 (h!47350 rules!2768))) (toValue!9033 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))) t!328053) tb!237261))

(declare-fun result!287338 () Bool)

(assert (= result!287338 result!287332))

(assert (=> d!1171052 t!328053))

(declare-fun b_and!302151 () Bool)

(assert (= b_and!302095 (and (=> t!328053 result!287338) b_and!302151)))

(assert (=> d!1171052 m!4516123))

(declare-fun m!4516513 () Bool)

(assert (=> d!1171052 m!4516513))

(assert (=> b!3947269 d!1171052))

(declare-fun d!1171054 () Bool)

(declare-fun fromListB!2228 (List!42052) BalanceConc!25130)

(assert (=> d!1171054 (= (seqFromList!4816 lt!1379885) (fromListB!2228 lt!1379885))))

(declare-fun bs!586945 () Bool)

(assert (= bs!586945 d!1171054))

(declare-fun m!4516515 () Bool)

(assert (=> bs!586945 m!4516515))

(assert (=> b!3947269 d!1171054))

(declare-fun b!3947565 () Bool)

(declare-fun e!2442805 () Bool)

(assert (=> b!3947565 (= e!2442805 tp_is_empty!19895)))

(declare-fun b!3947567 () Bool)

(declare-fun tp!1201932 () Bool)

(assert (=> b!3947567 (= e!2442805 tp!1201932)))

(declare-fun b!3947566 () Bool)

(declare-fun tp!1201931 () Bool)

(declare-fun tp!1201930 () Bool)

(assert (=> b!3947566 (= e!2442805 (and tp!1201931 tp!1201930))))

(declare-fun b!3947568 () Bool)

(declare-fun tp!1201933 () Bool)

(declare-fun tp!1201934 () Bool)

(assert (=> b!3947568 (= e!2442805 (and tp!1201933 tp!1201934))))

(assert (=> b!3947263 (= tp!1201857 e!2442805)))

(assert (= (and b!3947263 (is-ElementMatch!11462 (regex!6557 (rule!9523 (h!47349 prefixTokens!80))))) b!3947565))

(assert (= (and b!3947263 (is-Concat!18250 (regex!6557 (rule!9523 (h!47349 prefixTokens!80))))) b!3947566))

(assert (= (and b!3947263 (is-Star!11462 (regex!6557 (rule!9523 (h!47349 prefixTokens!80))))) b!3947567))

(assert (= (and b!3947263 (is-Union!11462 (regex!6557 (rule!9523 (h!47349 prefixTokens!80))))) b!3947568))

(declare-fun b!3947582 () Bool)

(declare-fun b_free!108233 () Bool)

(declare-fun b_next!108937 () Bool)

(assert (=> b!3947582 (= b_free!108233 (not b_next!108937))))

(declare-fun t!328055 () Bool)

(declare-fun tb!237263 () Bool)

(assert (=> (and b!3947582 (= (toValue!9033 (transformation!6557 (rule!9523 (h!47349 (t!328006 suffixTokens!72))))) (toValue!9033 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))) t!328055) tb!237263))

(declare-fun result!287344 () Bool)

(assert (= result!287344 result!287332))

(assert (=> d!1171052 t!328055))

(declare-fun tp!1201946 () Bool)

(declare-fun b_and!302153 () Bool)

(assert (=> b!3947582 (= tp!1201946 (and (=> t!328055 result!287344) b_and!302153))))

(declare-fun b_free!108235 () Bool)

(declare-fun b_next!108939 () Bool)

(assert (=> b!3947582 (= b_free!108235 (not b_next!108939))))

(declare-fun t!328057 () Bool)

(declare-fun tb!237265 () Bool)

(assert (=> (and b!3947582 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 (t!328006 suffixTokens!72))))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72))))) t!328057) tb!237265))

(declare-fun result!287346 () Bool)

(assert (= result!287346 result!287312))

(assert (=> b!3947420 t!328057))

(declare-fun t!328059 () Bool)

(declare-fun tb!237267 () Bool)

(assert (=> (and b!3947582 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 (t!328006 suffixTokens!72))))) (toChars!8892 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))) t!328059) tb!237267))

(declare-fun result!287348 () Bool)

(assert (= result!287348 result!287320))

(assert (=> d!1171038 t!328059))

(declare-fun tb!237269 () Bool)

(declare-fun t!328061 () Bool)

(assert (=> (and b!3947582 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 (t!328006 suffixTokens!72))))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80))))) t!328061) tb!237269))

(declare-fun result!287350 () Bool)

(assert (= result!287350 result!287326))

(assert (=> b!3947550 t!328061))

(declare-fun tp!1201948 () Bool)

(declare-fun b_and!302155 () Bool)

(assert (=> b!3947582 (= tp!1201948 (and (=> t!328057 result!287346) (=> t!328059 result!287348) (=> t!328061 result!287350) b_and!302155))))

(declare-fun e!2442818 () Bool)

(declare-fun b!3947580 () Bool)

(declare-fun e!2442822 () Bool)

(declare-fun tp!1201947 () Bool)

(assert (=> b!3947580 (= e!2442822 (and (inv!21 (value!207510 (h!47349 (t!328006 suffixTokens!72)))) e!2442818 tp!1201947))))

(declare-fun b!3947579 () Bool)

(declare-fun tp!1201949 () Bool)

(declare-fun e!2442823 () Bool)

(assert (=> b!3947579 (= e!2442823 (and (inv!56157 (h!47349 (t!328006 suffixTokens!72))) e!2442822 tp!1201949))))

(declare-fun e!2442820 () Bool)

(assert (=> b!3947582 (= e!2442820 (and tp!1201946 tp!1201948))))

(assert (=> b!3947261 (= tp!1201859 e!2442823)))

(declare-fun tp!1201945 () Bool)

(declare-fun b!3947581 () Bool)

(assert (=> b!3947581 (= e!2442818 (and tp!1201945 (inv!56154 (tag!7417 (rule!9523 (h!47349 (t!328006 suffixTokens!72))))) (inv!56158 (transformation!6557 (rule!9523 (h!47349 (t!328006 suffixTokens!72))))) e!2442820))))

(assert (= b!3947581 b!3947582))

(assert (= b!3947580 b!3947581))

(assert (= b!3947579 b!3947580))

(assert (= (and b!3947261 (is-Cons!41929 (t!328006 suffixTokens!72))) b!3947579))

(declare-fun m!4516517 () Bool)

(assert (=> b!3947580 m!4516517))

(declare-fun m!4516519 () Bool)

(assert (=> b!3947579 m!4516519))

(declare-fun m!4516521 () Bool)

(assert (=> b!3947581 m!4516521))

(declare-fun m!4516523 () Bool)

(assert (=> b!3947581 m!4516523))

(declare-fun b!3947587 () Bool)

(declare-fun e!2442826 () Bool)

(declare-fun tp!1201952 () Bool)

(assert (=> b!3947587 (= e!2442826 (and tp_is_empty!19895 tp!1201952))))

(assert (=> b!3947255 (= tp!1201849 e!2442826)))

(assert (= (and b!3947255 (is-Cons!41928 (originalCharacters!7157 (h!47349 prefixTokens!80)))) b!3947587))

(declare-fun b!3947588 () Bool)

(declare-fun e!2442827 () Bool)

(declare-fun tp!1201953 () Bool)

(assert (=> b!3947588 (= e!2442827 (and tp_is_empty!19895 tp!1201953))))

(assert (=> b!3947264 (= tp!1201854 e!2442827)))

(assert (= (and b!3947264 (is-Cons!41928 (t!328005 suffixResult!91))) b!3947588))

(declare-fun b!3947589 () Bool)

(declare-fun e!2442828 () Bool)

(assert (=> b!3947589 (= e!2442828 tp_is_empty!19895)))

(declare-fun b!3947591 () Bool)

(declare-fun tp!1201956 () Bool)

(assert (=> b!3947591 (= e!2442828 tp!1201956)))

(declare-fun b!3947590 () Bool)

(declare-fun tp!1201955 () Bool)

(declare-fun tp!1201954 () Bool)

(assert (=> b!3947590 (= e!2442828 (and tp!1201955 tp!1201954))))

(declare-fun b!3947592 () Bool)

(declare-fun tp!1201957 () Bool)

(declare-fun tp!1201958 () Bool)

(assert (=> b!3947592 (= e!2442828 (and tp!1201957 tp!1201958))))

(assert (=> b!3947274 (= tp!1201858 e!2442828)))

(assert (= (and b!3947274 (is-ElementMatch!11462 (regex!6557 (rule!9523 (h!47349 suffixTokens!72))))) b!3947589))

(assert (= (and b!3947274 (is-Concat!18250 (regex!6557 (rule!9523 (h!47349 suffixTokens!72))))) b!3947590))

(assert (= (and b!3947274 (is-Star!11462 (regex!6557 (rule!9523 (h!47349 suffixTokens!72))))) b!3947591))

(assert (= (and b!3947274 (is-Union!11462 (regex!6557 (rule!9523 (h!47349 suffixTokens!72))))) b!3947592))

(declare-fun b!3947593 () Bool)

(declare-fun e!2442829 () Bool)

(assert (=> b!3947593 (= e!2442829 tp_is_empty!19895)))

(declare-fun b!3947595 () Bool)

(declare-fun tp!1201961 () Bool)

(assert (=> b!3947595 (= e!2442829 tp!1201961)))

(declare-fun b!3947594 () Bool)

(declare-fun tp!1201960 () Bool)

(declare-fun tp!1201959 () Bool)

(assert (=> b!3947594 (= e!2442829 (and tp!1201960 tp!1201959))))

(declare-fun b!3947596 () Bool)

(declare-fun tp!1201962 () Bool)

(declare-fun tp!1201963 () Bool)

(assert (=> b!3947596 (= e!2442829 (and tp!1201962 tp!1201963))))

(assert (=> b!3947268 (= tp!1201856 e!2442829)))

(assert (= (and b!3947268 (is-ElementMatch!11462 (regex!6557 (h!47350 rules!2768)))) b!3947593))

(assert (= (and b!3947268 (is-Concat!18250 (regex!6557 (h!47350 rules!2768)))) b!3947594))

(assert (= (and b!3947268 (is-Star!11462 (regex!6557 (h!47350 rules!2768)))) b!3947595))

(assert (= (and b!3947268 (is-Union!11462 (regex!6557 (h!47350 rules!2768)))) b!3947596))

(declare-fun b!3947607 () Bool)

(declare-fun b_free!108237 () Bool)

(declare-fun b_next!108941 () Bool)

(assert (=> b!3947607 (= b_free!108237 (not b_next!108941))))

(declare-fun tb!237271 () Bool)

(declare-fun t!328063 () Bool)

(assert (=> (and b!3947607 (= (toValue!9033 (transformation!6557 (h!47350 (t!328007 rules!2768)))) (toValue!9033 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))) t!328063) tb!237271))

(declare-fun result!287356 () Bool)

(assert (= result!287356 result!287332))

(assert (=> d!1171052 t!328063))

(declare-fun tp!1201972 () Bool)

(declare-fun b_and!302157 () Bool)

(assert (=> b!3947607 (= tp!1201972 (and (=> t!328063 result!287356) b_and!302157))))

(declare-fun b_free!108239 () Bool)

(declare-fun b_next!108943 () Bool)

(assert (=> b!3947607 (= b_free!108239 (not b_next!108943))))

(declare-fun tb!237273 () Bool)

(declare-fun t!328065 () Bool)

(assert (=> (and b!3947607 (= (toChars!8892 (transformation!6557 (h!47350 (t!328007 rules!2768)))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72))))) t!328065) tb!237273))

(declare-fun result!287358 () Bool)

(assert (= result!287358 result!287312))

(assert (=> b!3947420 t!328065))

(declare-fun t!328067 () Bool)

(declare-fun tb!237275 () Bool)

(assert (=> (and b!3947607 (= (toChars!8892 (transformation!6557 (h!47350 (t!328007 rules!2768)))) (toChars!8892 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))) t!328067) tb!237275))

(declare-fun result!287360 () Bool)

(assert (= result!287360 result!287320))

(assert (=> d!1171038 t!328067))

(declare-fun tb!237277 () Bool)

(declare-fun t!328069 () Bool)

(assert (=> (and b!3947607 (= (toChars!8892 (transformation!6557 (h!47350 (t!328007 rules!2768)))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80))))) t!328069) tb!237277))

(declare-fun result!287362 () Bool)

(assert (= result!287362 result!287326))

(assert (=> b!3947550 t!328069))

(declare-fun b_and!302159 () Bool)

(declare-fun tp!1201975 () Bool)

(assert (=> b!3947607 (= tp!1201975 (and (=> t!328065 result!287358) (=> t!328067 result!287360) (=> t!328069 result!287362) b_and!302159))))

(declare-fun e!2442840 () Bool)

(assert (=> b!3947607 (= e!2442840 (and tp!1201972 tp!1201975))))

(declare-fun e!2442838 () Bool)

(declare-fun b!3947606 () Bool)

(declare-fun tp!1201974 () Bool)

(assert (=> b!3947606 (= e!2442838 (and tp!1201974 (inv!56154 (tag!7417 (h!47350 (t!328007 rules!2768)))) (inv!56158 (transformation!6557 (h!47350 (t!328007 rules!2768)))) e!2442840))))

(declare-fun b!3947605 () Bool)

(declare-fun e!2442839 () Bool)

(declare-fun tp!1201973 () Bool)

(assert (=> b!3947605 (= e!2442839 (and e!2442838 tp!1201973))))

(assert (=> b!3947267 (= tp!1201852 e!2442839)))

(assert (= b!3947606 b!3947607))

(assert (= b!3947605 b!3947606))

(assert (= (and b!3947267 (is-Cons!41930 (t!328007 rules!2768))) b!3947605))

(declare-fun m!4516525 () Bool)

(assert (=> b!3947606 m!4516525))

(declare-fun m!4516527 () Bool)

(assert (=> b!3947606 m!4516527))

(declare-fun b!3947608 () Bool)

(declare-fun e!2442842 () Bool)

(declare-fun tp!1201976 () Bool)

(assert (=> b!3947608 (= e!2442842 (and tp_is_empty!19895 tp!1201976))))

(assert (=> b!3947277 (= tp!1201845 e!2442842)))

(assert (= (and b!3947277 (is-Cons!41928 (t!328005 suffix!1176))) b!3947608))

(declare-fun b!3947609 () Bool)

(declare-fun e!2442843 () Bool)

(declare-fun tp!1201977 () Bool)

(assert (=> b!3947609 (= e!2442843 (and tp_is_empty!19895 tp!1201977))))

(assert (=> b!3947266 (= tp!1201850 e!2442843)))

(assert (= (and b!3947266 (is-Cons!41928 (t!328005 prefix!426))) b!3947609))

(declare-fun b!3947610 () Bool)

(declare-fun e!2442844 () Bool)

(declare-fun tp!1201978 () Bool)

(assert (=> b!3947610 (= e!2442844 (and tp_is_empty!19895 tp!1201978))))

(assert (=> b!3947271 (= tp!1201843 e!2442844)))

(assert (= (and b!3947271 (is-Cons!41928 (originalCharacters!7157 (h!47349 suffixTokens!72)))) b!3947610))

(declare-fun b!3947614 () Bool)

(declare-fun b_free!108241 () Bool)

(declare-fun b_next!108945 () Bool)

(assert (=> b!3947614 (= b_free!108241 (not b_next!108945))))

(declare-fun tb!237279 () Bool)

(declare-fun t!328071 () Bool)

(assert (=> (and b!3947614 (= (toValue!9033 (transformation!6557 (rule!9523 (h!47349 (t!328006 prefixTokens!80))))) (toValue!9033 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))) t!328071) tb!237279))

(declare-fun result!287364 () Bool)

(assert (= result!287364 result!287332))

(assert (=> d!1171052 t!328071))

(declare-fun tp!1201980 () Bool)

(declare-fun b_and!302161 () Bool)

(assert (=> b!3947614 (= tp!1201980 (and (=> t!328071 result!287364) b_and!302161))))

(declare-fun b_free!108243 () Bool)

(declare-fun b_next!108947 () Bool)

(assert (=> b!3947614 (= b_free!108243 (not b_next!108947))))

(declare-fun tb!237281 () Bool)

(declare-fun t!328073 () Bool)

(assert (=> (and b!3947614 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 (t!328006 prefixTokens!80))))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72))))) t!328073) tb!237281))

(declare-fun result!287366 () Bool)

(assert (= result!287366 result!287312))

(assert (=> b!3947420 t!328073))

(declare-fun tb!237283 () Bool)

(declare-fun t!328075 () Bool)

(assert (=> (and b!3947614 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 (t!328006 prefixTokens!80))))) (toChars!8892 (transformation!6557 (rule!9523 (_1!23743 (v!39316 lt!1379886)))))) t!328075) tb!237283))

(declare-fun result!287368 () Bool)

(assert (= result!287368 result!287320))

(assert (=> d!1171038 t!328075))

(declare-fun t!328077 () Bool)

(declare-fun tb!237285 () Bool)

(assert (=> (and b!3947614 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 (t!328006 prefixTokens!80))))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80))))) t!328077) tb!237285))

(declare-fun result!287370 () Bool)

(assert (= result!287370 result!287326))

(assert (=> b!3947550 t!328077))

(declare-fun b_and!302163 () Bool)

(declare-fun tp!1201982 () Bool)

(assert (=> b!3947614 (= tp!1201982 (and (=> t!328073 result!287366) (=> t!328075 result!287368) (=> t!328077 result!287370) b_and!302163))))

(declare-fun e!2442845 () Bool)

(declare-fun e!2442849 () Bool)

(declare-fun b!3947612 () Bool)

(declare-fun tp!1201981 () Bool)

(assert (=> b!3947612 (= e!2442849 (and (inv!21 (value!207510 (h!47349 (t!328006 prefixTokens!80)))) e!2442845 tp!1201981))))

(declare-fun b!3947611 () Bool)

(declare-fun e!2442850 () Bool)

(declare-fun tp!1201983 () Bool)

(assert (=> b!3947611 (= e!2442850 (and (inv!56157 (h!47349 (t!328006 prefixTokens!80))) e!2442849 tp!1201983))))

(declare-fun e!2442847 () Bool)

(assert (=> b!3947614 (= e!2442847 (and tp!1201980 tp!1201982))))

(assert (=> b!3947260 (= tp!1201855 e!2442850)))

(declare-fun b!3947613 () Bool)

(declare-fun tp!1201979 () Bool)

(assert (=> b!3947613 (= e!2442845 (and tp!1201979 (inv!56154 (tag!7417 (rule!9523 (h!47349 (t!328006 prefixTokens!80))))) (inv!56158 (transformation!6557 (rule!9523 (h!47349 (t!328006 prefixTokens!80))))) e!2442847))))

(assert (= b!3947613 b!3947614))

(assert (= b!3947612 b!3947613))

(assert (= b!3947611 b!3947612))

(assert (= (and b!3947260 (is-Cons!41929 (t!328006 prefixTokens!80))) b!3947611))

(declare-fun m!4516529 () Bool)

(assert (=> b!3947612 m!4516529))

(declare-fun m!4516531 () Bool)

(assert (=> b!3947611 m!4516531))

(declare-fun m!4516533 () Bool)

(assert (=> b!3947613 m!4516533))

(declare-fun m!4516535 () Bool)

(assert (=> b!3947613 m!4516535))

(declare-fun b_lambda!115473 () Bool)

(assert (= b_lambda!115469 (or (and b!3947582 b_free!108235 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 (t!328006 suffixTokens!72))))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))))) (and b!3947265 b_free!108215 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))))) (and b!3947607 b_free!108239 (= (toChars!8892 (transformation!6557 (h!47350 (t!328007 rules!2768)))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))))) (and b!3947614 b_free!108243 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 (t!328006 prefixTokens!80))))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))))) (and b!3947258 b_free!108219 (= (toChars!8892 (transformation!6557 (h!47350 rules!2768))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))))) (and b!3947270 b_free!108211) b_lambda!115473)))

(declare-fun b_lambda!115475 () Bool)

(assert (= b_lambda!115465 (or (and b!3947270 b_free!108211 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 prefixTokens!80)))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))))) (and b!3947265 b_free!108215) (and b!3947607 b_free!108239 (= (toChars!8892 (transformation!6557 (h!47350 (t!328007 rules!2768)))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))))) (and b!3947582 b_free!108235 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 (t!328006 suffixTokens!72))))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))))) (and b!3947258 b_free!108219 (= (toChars!8892 (transformation!6557 (h!47350 rules!2768))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))))) (and b!3947614 b_free!108243 (= (toChars!8892 (transformation!6557 (rule!9523 (h!47349 (t!328006 prefixTokens!80))))) (toChars!8892 (transformation!6557 (rule!9523 (h!47349 suffixTokens!72)))))) b_lambda!115475)))

(push 1)

(assert (not b!3947412))

(assert (not b_next!108917))

(assert tp_is_empty!19895)

(assert (not d!1170988))

(assert (not b_next!108943))

(assert b_and!302163)

(assert (not b!3947448))

(assert (not b!3947608))

(assert (not b!3947537))

(assert (not b_next!108923))

(assert b_and!302159)

(assert (not b!3947613))

(assert (not b!3947506))

(assert (not b!3947421))

(assert (not b!3947524))

(assert (not b!3947397))

(assert (not b!3947595))

(assert b_and!302157)

(assert (not tb!237245))

(assert (not d!1171040))

(assert (not b!3947552))

(assert (not b!3947525))

(assert (not b_lambda!115475))

(assert b_and!302161)

(assert (not d!1171032))

(assert (not b!3947409))

(assert (not b!3947587))

(assert (not b!3947507))

(assert (not b_next!108913))

(assert (not b!3947580))

(assert (not tb!237257))

(assert (not b!3947538))

(assert (not b!3947592))

(assert (not b!3947368))

(assert (not d!1171000))

(assert (not b!3947567))

(assert (not d!1171028))

(assert (not b!3947588))

(assert (not b!3947568))

(assert (not b!3947503))

(assert (not b!3947606))

(assert (not d!1171014))

(assert (not b!3947505))

(assert (not b_next!108939))

(assert (not b!3947384))

(assert (not tb!237251))

(assert (not d!1170990))

(assert (not d!1171044))

(assert (not b!3947594))

(assert (not d!1170996))

(assert b_and!302147)

(assert (not b!3947501))

(assert (not b!3947408))

(assert (not b!3947523))

(assert (not b_lambda!115471))

(assert (not b!3947596))

(assert (not b!3947566))

(assert (not b!3947550))

(assert (not b!3947509))

(assert (not b_lambda!115473))

(assert (not d!1171054))

(assert b_and!302145)

(assert b_and!302143)

(assert (not b!3947530))

(assert (not b!3947453))

(assert (not b!3947543))

(assert (not b!3947420))

(assert b_and!302155)

(assert (not d!1171042))

(assert (not b!3947612))

(assert (not d!1171026))

(assert (not b!3947546))

(assert (not b!3947371))

(assert (not b_next!108937))

(assert b_and!302141)

(assert (not d!1171010))

(assert (not b!3947611))

(assert (not b!3947547))

(assert (not b!3947504))

(assert (not b!3947549))

(assert (not b!3947551))

(assert (not b_lambda!115467))

(assert (not b!3947579))

(assert (not b!3947512))

(assert (not b!3947383))

(assert (not b!3947426))

(assert (not d!1170984))

(assert (not b!3947449))

(assert (not b!3947511))

(assert (not d!1170998))

(assert (not d!1171016))

(assert (not b!3947396))

(assert (not b!3947605))

(assert (not d!1171038))

(assert (not b_next!108921))

(assert (not b!3947452))

(assert b_and!302149)

(assert b_and!302153)

(assert (not b!3947411))

(assert (not d!1170994))

(assert (not d!1171024))

(assert (not b_next!108915))

(assert (not tb!237239))

(assert (not b!3947591))

(assert (not d!1171034))

(assert (not b!3947609))

(assert (not b!3947610))

(assert (not b!3947451))

(assert (not b!3947590))

(assert (not b!3947382))

(assert (not b!3947581))

(assert (not b_next!108941))

(assert (not d!1171048))

(assert (not b!3947502))

(assert (not b!3947413))

(assert (not b_next!108945))

(assert b_and!302151)

(assert (not b_next!108947))

(assert (not bm!285174))

(assert (not b_next!108919))

(check-sat)

(pop 1)

(push 1)

(assert b_and!302157)

(assert b_and!302161)

(assert (not b_next!108913))

(assert (not b_next!108939))

(assert b_and!302147)

(assert b_and!302155)

(assert (not b_next!108915))

(assert (not b_next!108917))

(assert (not b_next!108941))

(assert (not b_next!108943))

(assert b_and!302163)

(assert (not b_next!108923))

(assert b_and!302159)

(assert b_and!302145)

(assert b_and!302143)

(assert (not b_next!108937))

(assert b_and!302141)

(assert (not b_next!108921))

(assert b_and!302153)

(assert b_and!302149)

(assert (not b_next!108945))

(assert (not b_next!108919))

(assert b_and!302151)

(assert (not b_next!108947))

(check-sat)

(pop 1)

