; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55908 () Bool)

(assert start!55908)

(declare-fun b!593907 () Bool)

(declare-fun b_free!16725 () Bool)

(declare-fun b_next!16741 () Bool)

(assert (=> b!593907 (= b_free!16725 (not b_next!16741))))

(declare-fun tp!185180 () Bool)

(declare-fun b_and!58555 () Bool)

(assert (=> b!593907 (= tp!185180 b_and!58555)))

(declare-fun b_free!16727 () Bool)

(declare-fun b_next!16743 () Bool)

(assert (=> b!593907 (= b_free!16727 (not b_next!16743))))

(declare-fun tp!185182 () Bool)

(declare-fun b_and!58557 () Bool)

(assert (=> b!593907 (= tp!185182 b_and!58557)))

(declare-fun b!593905 () Bool)

(declare-fun b_free!16729 () Bool)

(declare-fun b_next!16745 () Bool)

(assert (=> b!593905 (= b_free!16729 (not b_next!16745))))

(declare-fun tp!185178 () Bool)

(declare-fun b_and!58559 () Bool)

(assert (=> b!593905 (= tp!185178 b_and!58559)))

(declare-fun b_free!16731 () Bool)

(declare-fun b_next!16747 () Bool)

(assert (=> b!593905 (= b_free!16731 (not b_next!16747))))

(declare-fun tp!185174 () Bool)

(declare-fun b_and!58561 () Bool)

(assert (=> b!593905 (= tp!185174 b_and!58561)))

(declare-fun b!593892 () Bool)

(declare-datatypes ((String!7658 0))(
  ( (String!7659 (value!37872 String)) )
))
(declare-datatypes ((C!3908 0))(
  ( (C!3909 (val!2180 Int)) )
))
(declare-datatypes ((Regex!1493 0))(
  ( (ElementMatch!1493 (c!110673 C!3908)) (Concat!2676 (regOne!3498 Regex!1493) (regTwo!3498 Regex!1493)) (EmptyExpr!1493) (Star!1493 (reg!1822 Regex!1493)) (EmptyLang!1493) (Union!1493 (regOne!3499 Regex!1493) (regTwo!3499 Regex!1493)) )
))
(declare-datatypes ((List!5892 0))(
  ( (Nil!5882) (Cons!5882 (h!11283 (_ BitVec 16)) (t!79245 List!5892)) )
))
(declare-datatypes ((TokenValue!1183 0))(
  ( (FloatLiteralValue!2366 (text!8726 List!5892)) (TokenValueExt!1182 (__x!4264 Int)) (Broken!5915 (value!37873 List!5892)) (Object!1192) (End!1183) (Def!1183) (Underscore!1183) (Match!1183) (Else!1183) (Error!1183) (Case!1183) (If!1183) (Extends!1183) (Abstract!1183) (Class!1183) (Val!1183) (DelimiterValue!2366 (del!1243 List!5892)) (KeywordValue!1189 (value!37874 List!5892)) (CommentValue!2366 (value!37875 List!5892)) (WhitespaceValue!2366 (value!37876 List!5892)) (IndentationValue!1183 (value!37877 List!5892)) (String!7660) (Int32!1183) (Broken!5916 (value!37878 List!5892)) (Boolean!1184) (Unit!10692) (OperatorValue!1186 (op!1243 List!5892)) (IdentifierValue!2366 (value!37879 List!5892)) (IdentifierValue!2367 (value!37880 List!5892)) (WhitespaceValue!2367 (value!37881 List!5892)) (True!2366) (False!2366) (Broken!5917 (value!37882 List!5892)) (Broken!5918 (value!37883 List!5892)) (True!2367) (RightBrace!1183) (RightBracket!1183) (Colon!1183) (Null!1183) (Comma!1183) (LeftBracket!1183) (False!2367) (LeftBrace!1183) (ImaginaryLiteralValue!1183 (text!8727 List!5892)) (StringLiteralValue!3549 (value!37884 List!5892)) (EOFValue!1183 (value!37885 List!5892)) (IdentValue!1183 (value!37886 List!5892)) (DelimiterValue!2367 (value!37887 List!5892)) (DedentValue!1183 (value!37888 List!5892)) (NewLineValue!1183 (value!37889 List!5892)) (IntegerValue!3549 (value!37890 (_ BitVec 32)) (text!8728 List!5892)) (IntegerValue!3550 (value!37891 Int) (text!8729 List!5892)) (Times!1183) (Or!1183) (Equal!1183) (Minus!1183) (Broken!5919 (value!37892 List!5892)) (And!1183) (Div!1183) (LessEqual!1183) (Mod!1183) (Concat!2677) (Not!1183) (Plus!1183) (SpaceValue!1183 (value!37893 List!5892)) (IntegerValue!3551 (value!37894 Int) (text!8730 List!5892)) (StringLiteralValue!3550 (text!8731 List!5892)) (FloatLiteralValue!2367 (text!8732 List!5892)) (BytesLiteralValue!1183 (value!37895 List!5892)) (CommentValue!2367 (value!37896 List!5892)) (StringLiteralValue!3551 (value!37897 List!5892)) (ErrorTokenValue!1183 (msg!1244 List!5892)) )
))
(declare-datatypes ((List!5893 0))(
  ( (Nil!5883) (Cons!5883 (h!11284 C!3908) (t!79246 List!5893)) )
))
(declare-datatypes ((IArray!3753 0))(
  ( (IArray!3754 (innerList!1934 List!5893)) )
))
(declare-datatypes ((Conc!1876 0))(
  ( (Node!1876 (left!4768 Conc!1876) (right!5098 Conc!1876) (csize!3982 Int) (cheight!2087 Int)) (Leaf!2963 (xs!4513 IArray!3753) (csize!3983 Int)) (Empty!1876) )
))
(declare-datatypes ((BalanceConc!3760 0))(
  ( (BalanceConc!3761 (c!110674 Conc!1876)) )
))
(declare-datatypes ((TokenValueInjection!2134 0))(
  ( (TokenValueInjection!2135 (toValue!2050 Int) (toChars!1909 Int)) )
))
(declare-datatypes ((Rule!2118 0))(
  ( (Rule!2119 (regex!1159 Regex!1493) (tag!1421 String!7658) (isSeparator!1159 Bool) (transformation!1159 TokenValueInjection!2134)) )
))
(declare-datatypes ((Token!2054 0))(
  ( (Token!2055 (value!37898 TokenValue!1183) (rule!1929 Rule!2118) (size!4652 Int) (originalCharacters!1198 List!5893)) )
))
(declare-fun token!491 () Token!2054)

(declare-fun tp!185179 () Bool)

(declare-fun e!359222 () Bool)

(declare-fun e!359228 () Bool)

(declare-fun inv!21 (TokenValue!1183) Bool)

(assert (=> b!593892 (= e!359228 (and (inv!21 (value!37898 token!491)) e!359222 tp!185179))))

(declare-fun b!593893 () Bool)

(declare-datatypes ((Unit!10693 0))(
  ( (Unit!10694) )
))
(declare-fun e!359232 () Unit!10693)

(declare-fun Unit!10695 () Unit!10693)

(assert (=> b!593893 (= e!359232 Unit!10695)))

(declare-fun b!593894 () Bool)

(declare-fun Unit!10696 () Unit!10693)

(assert (=> b!593894 (= e!359232 Unit!10696)))

(assert (=> b!593894 false))

(declare-fun e!359236 () Bool)

(declare-fun e!359220 () Bool)

(declare-datatypes ((List!5894 0))(
  ( (Nil!5884) (Cons!5884 (h!11285 Rule!2118) (t!79247 List!5894)) )
))
(declare-fun rules!3103 () List!5894)

(declare-fun tp!185177 () Bool)

(declare-fun b!593895 () Bool)

(declare-fun inv!7452 (String!7658) Bool)

(declare-fun inv!7455 (TokenValueInjection!2134) Bool)

(assert (=> b!593895 (= e!359236 (and tp!185177 (inv!7452 (tag!1421 (h!11285 rules!3103))) (inv!7455 (transformation!1159 (h!11285 rules!3103))) e!359220))))

(declare-fun b!593896 () Bool)

(declare-fun e!359229 () Bool)

(declare-fun e!359226 () Bool)

(assert (=> b!593896 (= e!359229 e!359226)))

(declare-fun res!256165 () Bool)

(assert (=> b!593896 (=> (not res!256165) (not e!359226))))

(declare-fun lt!251761 () List!5893)

(declare-fun input!2705 () List!5893)

(assert (=> b!593896 (= res!256165 (= lt!251761 input!2705))))

(declare-fun list!2464 (BalanceConc!3760) List!5893)

(declare-fun charsOf!788 (Token!2054) BalanceConc!3760)

(assert (=> b!593896 (= lt!251761 (list!2464 (charsOf!788 token!491)))))

(declare-fun b!593897 () Bool)

(declare-fun e!359224 () Bool)

(declare-fun tp!185176 () Bool)

(assert (=> b!593897 (= e!359224 (and e!359236 tp!185176))))

(declare-fun b!593898 () Bool)

(declare-fun e!359237 () Bool)

(declare-fun lt!251773 () List!5893)

(declare-fun isPrefix!787 (List!5893 List!5893) Bool)

(assert (=> b!593898 (= e!359237 (isPrefix!787 lt!251761 lt!251773))))

(declare-fun lt!251763 () List!5893)

(declare-fun getSuffix!304 (List!5893 List!5893) List!5893)

(assert (=> b!593898 (= lt!251763 (getSuffix!304 lt!251773 lt!251761))))

(declare-fun b!593899 () Bool)

(declare-fun e!359235 () Bool)

(declare-fun e!359218 () Bool)

(assert (=> b!593899 (= e!359235 e!359218)))

(declare-fun res!256161 () Bool)

(assert (=> b!593899 (=> (not res!256161) (not e!359218))))

(declare-fun lt!251762 () List!5893)

(assert (=> b!593899 (= res!256161 (= lt!251762 lt!251773))))

(declare-fun suffix!1342 () List!5893)

(declare-fun ++!1647 (List!5893 List!5893) List!5893)

(assert (=> b!593899 (= lt!251762 (++!1647 lt!251761 suffix!1342))))

(declare-fun res!256169 () Bool)

(assert (=> start!55908 (=> (not res!256169) (not e!359229))))

(declare-datatypes ((LexerInterface!1045 0))(
  ( (LexerInterfaceExt!1042 (__x!4265 Int)) (Lexer!1043) )
))
(declare-fun thiss!22590 () LexerInterface!1045)

(get-info :version)

(assert (=> start!55908 (= res!256169 ((_ is Lexer!1043) thiss!22590))))

(assert (=> start!55908 e!359229))

(declare-fun e!359219 () Bool)

(assert (=> start!55908 e!359219))

(assert (=> start!55908 e!359224))

(declare-fun inv!7456 (Token!2054) Bool)

(assert (=> start!55908 (and (inv!7456 token!491) e!359228)))

(assert (=> start!55908 true))

(declare-fun e!359230 () Bool)

(assert (=> start!55908 e!359230))

(declare-fun b!593900 () Bool)

(declare-fun e!359234 () Bool)

(assert (=> b!593900 (= e!359234 e!359235)))

(declare-fun res!256166 () Bool)

(assert (=> b!593900 (=> (not res!256166) (not e!359235))))

(declare-datatypes ((tuple2!6812 0))(
  ( (tuple2!6813 (_1!3670 Token!2054) (_2!3670 List!5893)) )
))
(declare-datatypes ((Option!1510 0))(
  ( (None!1509) (Some!1509 (v!16396 tuple2!6812)) )
))
(declare-fun lt!251767 () Option!1510)

(assert (=> b!593900 (= res!256166 ((_ is Some!1509) lt!251767))))

(declare-fun maxPrefix!743 (LexerInterface!1045 List!5894 List!5893) Option!1510)

(assert (=> b!593900 (= lt!251767 (maxPrefix!743 thiss!22590 rules!3103 input!2705))))

(declare-fun tp!185181 () Bool)

(declare-fun b!593901 () Bool)

(declare-fun e!359231 () Bool)

(assert (=> b!593901 (= e!359222 (and tp!185181 (inv!7452 (tag!1421 (rule!1929 token!491))) (inv!7455 (transformation!1159 (rule!1929 token!491))) e!359231))))

(declare-fun b!593902 () Bool)

(declare-fun tp_is_empty!3341 () Bool)

(declare-fun tp!185173 () Bool)

(assert (=> b!593902 (= e!359230 (and tp_is_empty!3341 tp!185173))))

(declare-fun b!593903 () Bool)

(declare-fun res!256164 () Bool)

(assert (=> b!593903 (=> (not res!256164) (not e!359229))))

(declare-fun isEmpty!4247 (List!5894) Bool)

(assert (=> b!593903 (= res!256164 (not (isEmpty!4247 rules!3103)))))

(declare-fun b!593904 () Bool)

(declare-fun res!256168 () Bool)

(declare-fun e!359233 () Bool)

(assert (=> b!593904 (=> (not res!256168) (not e!359233))))

(declare-fun size!4653 (List!5893) Int)

(assert (=> b!593904 (= res!256168 (= (size!4652 (_1!3670 (v!16396 lt!251767))) (size!4653 (originalCharacters!1198 (_1!3670 (v!16396 lt!251767))))))))

(assert (=> b!593905 (= e!359231 (and tp!185178 tp!185174))))

(declare-fun b!593906 () Bool)

(declare-fun res!256170 () Bool)

(assert (=> b!593906 (=> (not res!256170) (not e!359229))))

(declare-fun rulesInvariant!1008 (LexerInterface!1045 List!5894) Bool)

(assert (=> b!593906 (= res!256170 (rulesInvariant!1008 thiss!22590 rules!3103))))

(assert (=> b!593907 (= e!359220 (and tp!185180 tp!185182))))

(declare-fun b!593908 () Bool)

(declare-fun tp!185175 () Bool)

(assert (=> b!593908 (= e!359219 (and tp_is_empty!3341 tp!185175))))

(declare-fun b!593909 () Bool)

(declare-fun e!359223 () Bool)

(assert (=> b!593909 (= e!359223 e!359234)))

(declare-fun res!256172 () Bool)

(assert (=> b!593909 (=> (not res!256172) (not e!359234))))

(declare-fun lt!251774 () tuple2!6812)

(assert (=> b!593909 (= res!256172 (and (= (_1!3670 lt!251774) token!491) (= (_2!3670 lt!251774) suffix!1342)))))

(declare-fun lt!251753 () Option!1510)

(declare-fun get!2253 (Option!1510) tuple2!6812)

(assert (=> b!593909 (= lt!251774 (get!2253 lt!251753))))

(declare-fun b!593910 () Bool)

(assert (=> b!593910 (= e!359218 (not e!359237))))

(declare-fun res!256171 () Bool)

(assert (=> b!593910 (=> res!256171 e!359237)))

(assert (=> b!593910 (= res!256171 (not (isPrefix!787 input!2705 lt!251762)))))

(assert (=> b!593910 (isPrefix!787 lt!251761 lt!251762)))

(declare-fun lt!251768 () Unit!10693)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!632 (List!5893 List!5893) Unit!10693)

(assert (=> b!593910 (= lt!251768 (lemmaConcatTwoListThenFirstIsPrefix!632 lt!251761 suffix!1342))))

(assert (=> b!593910 (isPrefix!787 input!2705 lt!251773)))

(declare-fun lt!251769 () Unit!10693)

(assert (=> b!593910 (= lt!251769 (lemmaConcatTwoListThenFirstIsPrefix!632 input!2705 suffix!1342))))

(assert (=> b!593910 e!359233))

(declare-fun res!256163 () Bool)

(assert (=> b!593910 (=> (not res!256163) (not e!359233))))

(declare-fun lt!251756 () TokenValue!1183)

(assert (=> b!593910 (= res!256163 (= (value!37898 (_1!3670 (v!16396 lt!251767))) lt!251756))))

(declare-fun lt!251760 () List!5893)

(declare-fun apply!1412 (TokenValueInjection!2134 BalanceConc!3760) TokenValue!1183)

(declare-fun seqFromList!1335 (List!5893) BalanceConc!3760)

(assert (=> b!593910 (= lt!251756 (apply!1412 (transformation!1159 (rule!1929 (_1!3670 (v!16396 lt!251767)))) (seqFromList!1335 lt!251760)))))

(declare-fun lt!251765 () Unit!10693)

(declare-fun lemmaInv!267 (TokenValueInjection!2134) Unit!10693)

(assert (=> b!593910 (= lt!251765 (lemmaInv!267 (transformation!1159 (rule!1929 token!491))))))

(declare-fun lt!251754 () Unit!10693)

(assert (=> b!593910 (= lt!251754 (lemmaInv!267 (transformation!1159 (rule!1929 (_1!3670 (v!16396 lt!251767))))))))

(declare-fun ruleValid!357 (LexerInterface!1045 Rule!2118) Bool)

(assert (=> b!593910 (ruleValid!357 thiss!22590 (rule!1929 token!491))))

(declare-fun lt!251776 () Unit!10693)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!204 (LexerInterface!1045 Rule!2118 List!5894) Unit!10693)

(assert (=> b!593910 (= lt!251776 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!204 thiss!22590 (rule!1929 token!491) rules!3103))))

(assert (=> b!593910 (ruleValid!357 thiss!22590 (rule!1929 (_1!3670 (v!16396 lt!251767))))))

(declare-fun lt!251759 () Unit!10693)

(assert (=> b!593910 (= lt!251759 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!204 thiss!22590 (rule!1929 (_1!3670 (v!16396 lt!251767))) rules!3103))))

(assert (=> b!593910 (isPrefix!787 input!2705 input!2705)))

(declare-fun lt!251772 () Unit!10693)

(declare-fun lemmaIsPrefixRefl!523 (List!5893 List!5893) Unit!10693)

(assert (=> b!593910 (= lt!251772 (lemmaIsPrefixRefl!523 input!2705 input!2705))))

(declare-fun lt!251770 () List!5893)

(assert (=> b!593910 (= (_2!3670 (v!16396 lt!251767)) lt!251770)))

(declare-fun lt!251764 () Unit!10693)

(declare-fun lemmaSamePrefixThenSameSuffix!500 (List!5893 List!5893 List!5893 List!5893 List!5893) Unit!10693)

(assert (=> b!593910 (= lt!251764 (lemmaSamePrefixThenSameSuffix!500 lt!251760 (_2!3670 (v!16396 lt!251767)) lt!251760 lt!251770 input!2705))))

(assert (=> b!593910 (= lt!251770 (getSuffix!304 input!2705 lt!251760))))

(assert (=> b!593910 (isPrefix!787 lt!251760 (++!1647 lt!251760 (_2!3670 (v!16396 lt!251767))))))

(declare-fun lt!251766 () Unit!10693)

(assert (=> b!593910 (= lt!251766 (lemmaConcatTwoListThenFirstIsPrefix!632 lt!251760 (_2!3670 (v!16396 lt!251767))))))

(declare-fun lt!251757 () Unit!10693)

(declare-fun lemmaCharactersSize!218 (Token!2054) Unit!10693)

(assert (=> b!593910 (= lt!251757 (lemmaCharactersSize!218 token!491))))

(declare-fun lt!251775 () Unit!10693)

(assert (=> b!593910 (= lt!251775 (lemmaCharactersSize!218 (_1!3670 (v!16396 lt!251767))))))

(declare-fun lt!251758 () Unit!10693)

(assert (=> b!593910 (= lt!251758 e!359232)))

(declare-fun c!110672 () Bool)

(declare-fun lt!251771 () Int)

(assert (=> b!593910 (= c!110672 (> lt!251771 (size!4653 lt!251761)))))

(assert (=> b!593910 (= lt!251771 (size!4653 lt!251760))))

(assert (=> b!593910 (= lt!251760 (list!2464 (charsOf!788 (_1!3670 (v!16396 lt!251767)))))))

(assert (=> b!593910 (= lt!251767 (Some!1509 (v!16396 lt!251767)))))

(declare-fun lt!251755 () Unit!10693)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!232 (List!5893 List!5893 List!5893 List!5893) Unit!10693)

(assert (=> b!593910 (= lt!251755 (lemmaConcatSameAndSameSizesThenSameLists!232 lt!251761 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!593911 () Bool)

(assert (=> b!593911 (= e!359226 e!359223)))

(declare-fun res!256162 () Bool)

(assert (=> b!593911 (=> (not res!256162) (not e!359223))))

(declare-fun isDefined!1321 (Option!1510) Bool)

(assert (=> b!593911 (= res!256162 (isDefined!1321 lt!251753))))

(assert (=> b!593911 (= lt!251753 (maxPrefix!743 thiss!22590 rules!3103 lt!251773))))

(assert (=> b!593911 (= lt!251773 (++!1647 input!2705 suffix!1342))))

(declare-fun b!593912 () Bool)

(declare-fun res!256167 () Bool)

(assert (=> b!593912 (=> (not res!256167) (not e!359229))))

(declare-fun isEmpty!4248 (List!5893) Bool)

(assert (=> b!593912 (= res!256167 (not (isEmpty!4248 input!2705)))))

(declare-fun b!593913 () Bool)

(assert (=> b!593913 (= e!359233 (and (= (size!4652 (_1!3670 (v!16396 lt!251767))) lt!251771) (= (originalCharacters!1198 (_1!3670 (v!16396 lt!251767))) lt!251760) (= (v!16396 lt!251767) (tuple2!6813 (Token!2055 lt!251756 (rule!1929 (_1!3670 (v!16396 lt!251767))) lt!251771 lt!251760) lt!251770))))))

(assert (= (and start!55908 res!256169) b!593903))

(assert (= (and b!593903 res!256164) b!593906))

(assert (= (and b!593906 res!256170) b!593912))

(assert (= (and b!593912 res!256167) b!593896))

(assert (= (and b!593896 res!256165) b!593911))

(assert (= (and b!593911 res!256162) b!593909))

(assert (= (and b!593909 res!256172) b!593900))

(assert (= (and b!593900 res!256166) b!593899))

(assert (= (and b!593899 res!256161) b!593910))

(assert (= (and b!593910 c!110672) b!593894))

(assert (= (and b!593910 (not c!110672)) b!593893))

(assert (= (and b!593910 res!256163) b!593904))

(assert (= (and b!593904 res!256168) b!593913))

(assert (= (and b!593910 (not res!256171)) b!593898))

(assert (= (and start!55908 ((_ is Cons!5883) suffix!1342)) b!593908))

(assert (= b!593895 b!593907))

(assert (= b!593897 b!593895))

(assert (= (and start!55908 ((_ is Cons!5884) rules!3103)) b!593897))

(assert (= b!593901 b!593905))

(assert (= b!593892 b!593901))

(assert (= start!55908 b!593892))

(assert (= (and start!55908 ((_ is Cons!5883) input!2705)) b!593902))

(declare-fun m!855827 () Bool)

(assert (=> b!593910 m!855827))

(declare-fun m!855829 () Bool)

(assert (=> b!593910 m!855829))

(declare-fun m!855831 () Bool)

(assert (=> b!593910 m!855831))

(declare-fun m!855833 () Bool)

(assert (=> b!593910 m!855833))

(declare-fun m!855835 () Bool)

(assert (=> b!593910 m!855835))

(declare-fun m!855837 () Bool)

(assert (=> b!593910 m!855837))

(declare-fun m!855839 () Bool)

(assert (=> b!593910 m!855839))

(declare-fun m!855841 () Bool)

(assert (=> b!593910 m!855841))

(declare-fun m!855843 () Bool)

(assert (=> b!593910 m!855843))

(assert (=> b!593910 m!855841))

(declare-fun m!855845 () Bool)

(assert (=> b!593910 m!855845))

(declare-fun m!855847 () Bool)

(assert (=> b!593910 m!855847))

(declare-fun m!855849 () Bool)

(assert (=> b!593910 m!855849))

(declare-fun m!855851 () Bool)

(assert (=> b!593910 m!855851))

(declare-fun m!855853 () Bool)

(assert (=> b!593910 m!855853))

(declare-fun m!855855 () Bool)

(assert (=> b!593910 m!855855))

(declare-fun m!855857 () Bool)

(assert (=> b!593910 m!855857))

(assert (=> b!593910 m!855851))

(declare-fun m!855859 () Bool)

(assert (=> b!593910 m!855859))

(assert (=> b!593910 m!855831))

(declare-fun m!855861 () Bool)

(assert (=> b!593910 m!855861))

(declare-fun m!855863 () Bool)

(assert (=> b!593910 m!855863))

(declare-fun m!855865 () Bool)

(assert (=> b!593910 m!855865))

(declare-fun m!855867 () Bool)

(assert (=> b!593910 m!855867))

(declare-fun m!855869 () Bool)

(assert (=> b!593910 m!855869))

(declare-fun m!855871 () Bool)

(assert (=> b!593910 m!855871))

(declare-fun m!855873 () Bool)

(assert (=> b!593910 m!855873))

(declare-fun m!855875 () Bool)

(assert (=> b!593910 m!855875))

(declare-fun m!855877 () Bool)

(assert (=> b!593910 m!855877))

(declare-fun m!855879 () Bool)

(assert (=> b!593910 m!855879))

(declare-fun m!855881 () Bool)

(assert (=> b!593898 m!855881))

(declare-fun m!855883 () Bool)

(assert (=> b!593898 m!855883))

(declare-fun m!855885 () Bool)

(assert (=> start!55908 m!855885))

(declare-fun m!855887 () Bool)

(assert (=> b!593903 m!855887))

(declare-fun m!855889 () Bool)

(assert (=> b!593892 m!855889))

(declare-fun m!855891 () Bool)

(assert (=> b!593906 m!855891))

(declare-fun m!855893 () Bool)

(assert (=> b!593900 m!855893))

(declare-fun m!855895 () Bool)

(assert (=> b!593912 m!855895))

(declare-fun m!855897 () Bool)

(assert (=> b!593895 m!855897))

(declare-fun m!855899 () Bool)

(assert (=> b!593895 m!855899))

(declare-fun m!855901 () Bool)

(assert (=> b!593896 m!855901))

(assert (=> b!593896 m!855901))

(declare-fun m!855903 () Bool)

(assert (=> b!593896 m!855903))

(declare-fun m!855905 () Bool)

(assert (=> b!593904 m!855905))

(declare-fun m!855907 () Bool)

(assert (=> b!593901 m!855907))

(declare-fun m!855909 () Bool)

(assert (=> b!593901 m!855909))

(declare-fun m!855911 () Bool)

(assert (=> b!593899 m!855911))

(declare-fun m!855913 () Bool)

(assert (=> b!593911 m!855913))

(declare-fun m!855915 () Bool)

(assert (=> b!593911 m!855915))

(declare-fun m!855917 () Bool)

(assert (=> b!593911 m!855917))

(declare-fun m!855919 () Bool)

(assert (=> b!593909 m!855919))

(check-sat (not b_next!16743) tp_is_empty!3341 (not b_next!16745) b_and!58561 (not b!593896) b_and!58559 (not b!593892) (not b!593908) (not b_next!16747) (not b!593909) (not b!593900) (not b!593902) (not b_next!16741) (not b!593897) (not b!593906) (not b!593911) b_and!58557 (not b!593910) (not b!593903) b_and!58555 (not b!593912) (not start!55908) (not b!593895) (not b!593899) (not b!593901) (not b!593904) (not b!593898))
(check-sat (not b_next!16743) (not b_next!16745) b_and!58557 b_and!58561 b_and!58559 (not b_next!16747) b_and!58555 (not b_next!16741))
