; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333194 () Bool)

(assert start!333194)

(declare-fun b!3590106 () Bool)

(declare-fun b_free!92513 () Bool)

(declare-fun b_next!93217 () Bool)

(assert (=> b!3590106 (= b_free!92513 (not b_next!93217))))

(declare-fun tp!1098862 () Bool)

(declare-fun b_and!259539 () Bool)

(assert (=> b!3590106 (= tp!1098862 b_and!259539)))

(declare-fun b_free!92515 () Bool)

(declare-fun b_next!93219 () Bool)

(assert (=> b!3590106 (= b_free!92515 (not b_next!93219))))

(declare-fun tp!1098861 () Bool)

(declare-fun b_and!259541 () Bool)

(assert (=> b!3590106 (= tp!1098861 b_and!259541)))

(declare-fun b!3590097 () Bool)

(declare-fun b_free!92517 () Bool)

(declare-fun b_next!93221 () Bool)

(assert (=> b!3590097 (= b_free!92517 (not b_next!93221))))

(declare-fun tp!1098860 () Bool)

(declare-fun b_and!259543 () Bool)

(assert (=> b!3590097 (= tp!1098860 b_and!259543)))

(declare-fun b_free!92519 () Bool)

(declare-fun b_next!93223 () Bool)

(assert (=> b!3590097 (= b_free!92519 (not b_next!93223))))

(declare-fun tp!1098871 () Bool)

(declare-fun b_and!259545 () Bool)

(assert (=> b!3590097 (= tp!1098871 b_and!259545)))

(declare-fun b!3590101 () Bool)

(declare-fun b_free!92521 () Bool)

(declare-fun b_next!93225 () Bool)

(assert (=> b!3590101 (= b_free!92521 (not b_next!93225))))

(declare-fun tp!1098874 () Bool)

(declare-fun b_and!259547 () Bool)

(assert (=> b!3590101 (= tp!1098874 b_and!259547)))

(declare-fun b_free!92523 () Bool)

(declare-fun b_next!93227 () Bool)

(assert (=> b!3590101 (= b_free!92523 (not b_next!93227))))

(declare-fun tp!1098863 () Bool)

(declare-fun b_and!259549 () Bool)

(assert (=> b!3590101 (= tp!1098863 b_and!259549)))

(declare-fun b!3590079 () Bool)

(declare-fun b_free!92525 () Bool)

(declare-fun b_next!93229 () Bool)

(assert (=> b!3590079 (= b_free!92525 (not b_next!93229))))

(declare-fun tp!1098866 () Bool)

(declare-fun b_and!259551 () Bool)

(assert (=> b!3590079 (= tp!1098866 b_and!259551)))

(declare-fun b_free!92527 () Bool)

(declare-fun b_next!93231 () Bool)

(assert (=> b!3590079 (= b_free!92527 (not b_next!93231))))

(declare-fun tp!1098873 () Bool)

(declare-fun b_and!259553 () Bool)

(assert (=> b!3590079 (= tp!1098873 b_and!259553)))

(declare-fun b!3590077 () Bool)

(declare-fun e!2221299 () Bool)

(declare-fun e!2221302 () Bool)

(assert (=> b!3590077 (= e!2221299 e!2221302)))

(declare-fun res!1449216 () Bool)

(assert (=> b!3590077 (=> (not res!1449216) (not e!2221302))))

(declare-datatypes ((List!37853 0))(
  ( (Nil!37729) (Cons!37729 (h!43149 (_ BitVec 16)) (t!290984 List!37853)) )
))
(declare-datatypes ((TokenValue!5800 0))(
  ( (FloatLiteralValue!11600 (text!41045 List!37853)) (TokenValueExt!5799 (__x!23817 Int)) (Broken!29000 (value!179179 List!37853)) (Object!5923) (End!5800) (Def!5800) (Underscore!5800) (Match!5800) (Else!5800) (Error!5800) (Case!5800) (If!5800) (Extends!5800) (Abstract!5800) (Class!5800) (Val!5800) (DelimiterValue!11600 (del!5860 List!37853)) (KeywordValue!5806 (value!179180 List!37853)) (CommentValue!11600 (value!179181 List!37853)) (WhitespaceValue!11600 (value!179182 List!37853)) (IndentationValue!5800 (value!179183 List!37853)) (String!42333) (Int32!5800) (Broken!29001 (value!179184 List!37853)) (Boolean!5801) (Unit!53728) (OperatorValue!5803 (op!5860 List!37853)) (IdentifierValue!11600 (value!179185 List!37853)) (IdentifierValue!11601 (value!179186 List!37853)) (WhitespaceValue!11601 (value!179187 List!37853)) (True!11600) (False!11600) (Broken!29002 (value!179188 List!37853)) (Broken!29003 (value!179189 List!37853)) (True!11601) (RightBrace!5800) (RightBracket!5800) (Colon!5800) (Null!5800) (Comma!5800) (LeftBracket!5800) (False!11601) (LeftBrace!5800) (ImaginaryLiteralValue!5800 (text!41046 List!37853)) (StringLiteralValue!17400 (value!179190 List!37853)) (EOFValue!5800 (value!179191 List!37853)) (IdentValue!5800 (value!179192 List!37853)) (DelimiterValue!11601 (value!179193 List!37853)) (DedentValue!5800 (value!179194 List!37853)) (NewLineValue!5800 (value!179195 List!37853)) (IntegerValue!17400 (value!179196 (_ BitVec 32)) (text!41047 List!37853)) (IntegerValue!17401 (value!179197 Int) (text!41048 List!37853)) (Times!5800) (Or!5800) (Equal!5800) (Minus!5800) (Broken!29004 (value!179198 List!37853)) (And!5800) (Div!5800) (LessEqual!5800) (Mod!5800) (Concat!16129) (Not!5800) (Plus!5800) (SpaceValue!5800 (value!179199 List!37853)) (IntegerValue!17402 (value!179200 Int) (text!41049 List!37853)) (StringLiteralValue!17401 (text!41050 List!37853)) (FloatLiteralValue!11601 (text!41051 List!37853)) (BytesLiteralValue!5800 (value!179201 List!37853)) (CommentValue!11601 (value!179202 List!37853)) (StringLiteralValue!17402 (value!179203 List!37853)) (ErrorTokenValue!5800 (msg!5861 List!37853)) )
))
(declare-datatypes ((C!20844 0))(
  ( (C!20845 (val!12470 Int)) )
))
(declare-datatypes ((Regex!10329 0))(
  ( (ElementMatch!10329 (c!621806 C!20844)) (Concat!16130 (regOne!21170 Regex!10329) (regTwo!21170 Regex!10329)) (EmptyExpr!10329) (Star!10329 (reg!10658 Regex!10329)) (EmptyLang!10329) (Union!10329 (regOne!21171 Regex!10329) (regTwo!21171 Regex!10329)) )
))
(declare-datatypes ((String!42334 0))(
  ( (String!42335 (value!179204 String)) )
))
(declare-datatypes ((List!37854 0))(
  ( (Nil!37730) (Cons!37730 (h!43150 C!20844) (t!290985 List!37854)) )
))
(declare-datatypes ((IArray!22959 0))(
  ( (IArray!22960 (innerList!11537 List!37854)) )
))
(declare-datatypes ((Conc!11477 0))(
  ( (Node!11477 (left!29484 Conc!11477) (right!29814 Conc!11477) (csize!23184 Int) (cheight!11688 Int)) (Leaf!17873 (xs!14679 IArray!22959) (csize!23185 Int)) (Empty!11477) )
))
(declare-datatypes ((BalanceConc!22568 0))(
  ( (BalanceConc!22569 (c!621807 Conc!11477)) )
))
(declare-datatypes ((TokenValueInjection!11028 0))(
  ( (TokenValueInjection!11029 (toValue!7854 Int) (toChars!7713 Int)) )
))
(declare-datatypes ((Rule!10940 0))(
  ( (Rule!10941 (regex!5570 Regex!10329) (tag!6242 String!42334) (isSeparator!5570 Bool) (transformation!5570 TokenValueInjection!11028)) )
))
(declare-datatypes ((Token!10506 0))(
  ( (Token!10507 (value!179205 TokenValue!5800) (rule!8286 Rule!10940) (size!28736 Int) (originalCharacters!6284 List!37854)) )
))
(declare-datatypes ((tuple2!37620 0))(
  ( (tuple2!37621 (_1!21944 Token!10506) (_2!21944 List!37854)) )
))
(declare-fun lt!1231424 () tuple2!37620)

(declare-fun token!511 () Token!10506)

(assert (=> b!3590077 (= res!1449216 (= (_1!21944 lt!1231424) token!511))))

(declare-datatypes ((Option!7770 0))(
  ( (None!7769) (Some!7769 (v!37443 tuple2!37620)) )
))
(declare-fun lt!1231425 () Option!7770)

(declare-fun get!12165 (Option!7770) tuple2!37620)

(assert (=> b!3590077 (= lt!1231424 (get!12165 lt!1231425))))

(declare-fun res!1449223 () Bool)

(declare-fun e!2221300 () Bool)

(assert (=> start!333194 (=> (not res!1449223) (not e!2221300))))

(declare-datatypes ((LexerInterface!5159 0))(
  ( (LexerInterfaceExt!5156 (__x!23818 Int)) (Lexer!5157) )
))
(declare-fun thiss!23823 () LexerInterface!5159)

(get-info :version)

(assert (=> start!333194 (= res!1449223 ((_ is Lexer!5157) thiss!23823))))

(assert (=> start!333194 e!2221300))

(declare-fun e!2221298 () Bool)

(assert (=> start!333194 e!2221298))

(declare-fun e!2221308 () Bool)

(assert (=> start!333194 e!2221308))

(assert (=> start!333194 true))

(declare-fun e!2221306 () Bool)

(declare-fun inv!51068 (Token!10506) Bool)

(assert (=> start!333194 (and (inv!51068 token!511) e!2221306)))

(declare-fun e!2221318 () Bool)

(assert (=> start!333194 e!2221318))

(declare-fun e!2221310 () Bool)

(assert (=> start!333194 e!2221310))

(declare-fun b!3590078 () Bool)

(declare-fun tp_is_empty!17741 () Bool)

(declare-fun tp!1098869 () Bool)

(assert (=> b!3590078 (= e!2221308 (and tp_is_empty!17741 tp!1098869))))

(declare-fun e!2221316 () Bool)

(assert (=> b!3590079 (= e!2221316 (and tp!1098866 tp!1098873))))

(declare-fun b!3590080 () Bool)

(declare-fun rule!403 () Rule!10940)

(declare-fun tp!1098870 () Bool)

(declare-fun e!2221303 () Bool)

(declare-fun inv!51065 (String!42334) Bool)

(declare-fun inv!51069 (TokenValueInjection!11028) Bool)

(assert (=> b!3590080 (= e!2221318 (and tp!1098870 (inv!51065 (tag!6242 rule!403)) (inv!51069 (transformation!5570 rule!403)) e!2221303))))

(declare-fun b!3590081 () Bool)

(declare-fun e!2221313 () Bool)

(assert (=> b!3590081 (= e!2221302 (not e!2221313))))

(declare-fun res!1449227 () Bool)

(assert (=> b!3590081 (=> res!1449227 e!2221313)))

(declare-fun lt!1231411 () List!37854)

(declare-fun matchR!4898 (Regex!10329 List!37854) Bool)

(assert (=> b!3590081 (= res!1449227 (not (matchR!4898 (regex!5570 rule!403) lt!1231411)))))

(declare-fun ruleValid!1835 (LexerInterface!5159 Rule!10940) Bool)

(assert (=> b!3590081 (ruleValid!1835 thiss!23823 rule!403)))

(declare-datatypes ((List!37855 0))(
  ( (Nil!37731) (Cons!37731 (h!43151 Rule!10940) (t!290986 List!37855)) )
))
(declare-fun rules!3307 () List!37855)

(declare-datatypes ((Unit!53729 0))(
  ( (Unit!53730) )
))
(declare-fun lt!1231419 () Unit!53729)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!990 (LexerInterface!5159 Rule!10940 List!37855) Unit!53729)

(assert (=> b!3590081 (= lt!1231419 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!990 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3590082 () Bool)

(declare-fun e!2221312 () Bool)

(declare-fun e!2221305 () Bool)

(assert (=> b!3590082 (= e!2221312 e!2221305)))

(declare-fun res!1449218 () Bool)

(assert (=> b!3590082 (=> (not res!1449218) (not e!2221305))))

(declare-fun lt!1231418 () Rule!10940)

(declare-fun lt!1231430 () tuple2!37620)

(declare-fun list!13878 (BalanceConc!22568) List!37854)

(declare-fun charsOf!3584 (Token!10506) BalanceConc!22568)

(assert (=> b!3590082 (= res!1449218 (matchR!4898 (regex!5570 lt!1231418) (list!13878 (charsOf!3584 (_1!21944 lt!1231430)))))))

(declare-datatypes ((Option!7771 0))(
  ( (None!7770) (Some!7770 (v!37444 Rule!10940)) )
))
(declare-fun lt!1231428 () Option!7771)

(declare-fun get!12166 (Option!7771) Rule!10940)

(assert (=> b!3590082 (= lt!1231418 (get!12166 lt!1231428))))

(declare-fun b!3590083 () Bool)

(declare-fun res!1449217 () Bool)

(declare-fun e!2221296 () Bool)

(assert (=> b!3590083 (=> res!1449217 e!2221296)))

(declare-fun sepAndNonSepRulesDisjointChars!1740 (List!37855 List!37855) Bool)

(assert (=> b!3590083 (= res!1449217 (not (sepAndNonSepRulesDisjointChars!1740 rules!3307 rules!3307)))))

(declare-fun e!2221307 () Bool)

(declare-fun tp!1098872 () Bool)

(declare-fun e!2221315 () Bool)

(declare-fun b!3590084 () Bool)

(assert (=> b!3590084 (= e!2221307 (and tp!1098872 (inv!51065 (tag!6242 (rule!8286 token!511))) (inv!51069 (transformation!5570 (rule!8286 token!511))) e!2221315))))

(declare-fun b!3590085 () Bool)

(assert (=> b!3590085 (= e!2221313 e!2221296)))

(declare-fun res!1449229 () Bool)

(assert (=> b!3590085 (=> res!1449229 e!2221296)))

(declare-fun lt!1231426 () C!20844)

(declare-fun contains!7203 (List!37854 C!20844) Bool)

(declare-fun usedCharacters!784 (Regex!10329) List!37854)

(assert (=> b!3590085 (= res!1449229 (contains!7203 (usedCharacters!784 (regex!5570 rule!403)) lt!1231426))))

(declare-fun suffix!1395 () List!37854)

(declare-fun head!7494 (List!37854) C!20844)

(assert (=> b!3590085 (= lt!1231426 (head!7494 suffix!1395))))

(declare-fun b!3590086 () Bool)

(declare-fun res!1449225 () Bool)

(assert (=> b!3590086 (=> (not res!1449225) (not e!2221300))))

(declare-fun isEmpty!22234 (List!37855) Bool)

(assert (=> b!3590086 (= res!1449225 (not (isEmpty!22234 rules!3307)))))

(declare-fun b!3590087 () Bool)

(declare-fun res!1449228 () Bool)

(assert (=> b!3590087 (=> (not res!1449228) (not e!2221302))))

(declare-fun isEmpty!22235 (List!37854) Bool)

(assert (=> b!3590087 (= res!1449228 (isEmpty!22235 (_2!21944 lt!1231424)))))

(declare-fun b!3590088 () Bool)

(declare-fun res!1449226 () Bool)

(assert (=> b!3590088 (=> (not res!1449226) (not e!2221300))))

(declare-fun contains!7204 (List!37855 Rule!10940) Bool)

(assert (=> b!3590088 (= res!1449226 (contains!7204 rules!3307 rule!403))))

(declare-fun b!3590089 () Bool)

(assert (=> b!3590089 (= e!2221305 (= (rule!8286 (_1!21944 lt!1231430)) lt!1231418))))

(declare-fun b!3590090 () Bool)

(declare-fun res!1449220 () Bool)

(assert (=> b!3590090 (=> (not res!1449220) (not e!2221300))))

(declare-fun rulesInvariant!4556 (LexerInterface!5159 List!37855) Bool)

(assert (=> b!3590090 (= res!1449220 (rulesInvariant!4556 thiss!23823 rules!3307))))

(declare-fun b!3590091 () Bool)

(declare-fun e!2221304 () Bool)

(assert (=> b!3590091 (= e!2221304 true)))

(declare-fun lt!1231420 () Bool)

(declare-fun rulesValidInductive!1945 (LexerInterface!5159 List!37855) Bool)

(assert (=> b!3590091 (= lt!1231420 (rulesValidInductive!1945 thiss!23823 rules!3307))))

(declare-fun lt!1231422 () Unit!53729)

(declare-fun lemmaCharactersSize!623 (Token!10506) Unit!53729)

(assert (=> b!3590091 (= lt!1231422 (lemmaCharactersSize!623 (_1!21944 lt!1231430)))))

(declare-fun lt!1231415 () Unit!53729)

(declare-fun lt!1231421 () BalanceConc!22568)

(declare-fun lemmaEqSameImage!761 (TokenValueInjection!11028 BalanceConc!22568 BalanceConc!22568) Unit!53729)

(declare-fun seqFromList!4123 (List!37854) BalanceConc!22568)

(assert (=> b!3590091 (= lt!1231415 (lemmaEqSameImage!761 (transformation!5570 (rule!8286 (_1!21944 lt!1231430))) lt!1231421 (seqFromList!4123 (originalCharacters!6284 (_1!21944 lt!1231430)))))))

(declare-fun lt!1231427 () Unit!53729)

(declare-fun lemmaSemiInverse!1327 (TokenValueInjection!11028 BalanceConc!22568) Unit!53729)

(assert (=> b!3590091 (= lt!1231427 (lemmaSemiInverse!1327 (transformation!5570 (rule!8286 (_1!21944 lt!1231430))) lt!1231421))))

(declare-fun b!3590092 () Bool)

(declare-fun res!1449213 () Bool)

(assert (=> b!3590092 (=> (not res!1449213) (not e!2221300))))

(declare-fun anOtherTypeRule!33 () Rule!10940)

(assert (=> b!3590092 (= res!1449213 (not (= (isSeparator!5570 anOtherTypeRule!33) (isSeparator!5570 rule!403))))))

(declare-fun b!3590093 () Bool)

(assert (=> b!3590093 (= e!2221296 e!2221304)))

(declare-fun res!1449231 () Bool)

(assert (=> b!3590093 (=> res!1449231 e!2221304)))

(declare-fun lt!1231416 () List!37854)

(declare-fun lt!1231423 () List!37854)

(declare-fun isPrefix!2933 (List!37854 List!37854) Bool)

(assert (=> b!3590093 (= res!1449231 (not (isPrefix!2933 lt!1231416 lt!1231423)))))

(declare-fun ++!9386 (List!37854 List!37854) List!37854)

(assert (=> b!3590093 (isPrefix!2933 lt!1231416 (++!9386 lt!1231416 (_2!21944 lt!1231430)))))

(declare-fun lt!1231414 () Unit!53729)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1854 (List!37854 List!37854) Unit!53729)

(assert (=> b!3590093 (= lt!1231414 (lemmaConcatTwoListThenFirstIsPrefix!1854 lt!1231416 (_2!21944 lt!1231430)))))

(assert (=> b!3590093 (= lt!1231416 (list!13878 lt!1231421))))

(assert (=> b!3590093 (= lt!1231421 (charsOf!3584 (_1!21944 lt!1231430)))))

(assert (=> b!3590093 e!2221312))

(declare-fun res!1449221 () Bool)

(assert (=> b!3590093 (=> (not res!1449221) (not e!2221312))))

(declare-fun isDefined!6002 (Option!7771) Bool)

(assert (=> b!3590093 (= res!1449221 (isDefined!6002 lt!1231428))))

(declare-fun getRuleFromTag!1176 (LexerInterface!5159 List!37855 String!42334) Option!7771)

(assert (=> b!3590093 (= lt!1231428 (getRuleFromTag!1176 thiss!23823 rules!3307 (tag!6242 (rule!8286 (_1!21944 lt!1231430)))))))

(declare-fun lt!1231413 () Unit!53729)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1176 (LexerInterface!5159 List!37855 List!37854 Token!10506) Unit!53729)

(assert (=> b!3590093 (= lt!1231413 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1176 thiss!23823 rules!3307 lt!1231423 (_1!21944 lt!1231430)))))

(declare-fun lt!1231412 () Option!7770)

(assert (=> b!3590093 (= lt!1231430 (get!12165 lt!1231412))))

(declare-fun lt!1231429 () Unit!53729)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!839 (LexerInterface!5159 List!37855 List!37854 List!37854) Unit!53729)

(assert (=> b!3590093 (= lt!1231429 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!839 thiss!23823 rules!3307 lt!1231411 suffix!1395))))

(declare-fun maxPrefix!2693 (LexerInterface!5159 List!37855 List!37854) Option!7770)

(assert (=> b!3590093 (= lt!1231412 (maxPrefix!2693 thiss!23823 rules!3307 lt!1231423))))

(assert (=> b!3590093 (isPrefix!2933 lt!1231411 lt!1231423)))

(declare-fun lt!1231417 () Unit!53729)

(assert (=> b!3590093 (= lt!1231417 (lemmaConcatTwoListThenFirstIsPrefix!1854 lt!1231411 suffix!1395))))

(assert (=> b!3590093 (= lt!1231423 (++!9386 lt!1231411 suffix!1395))))

(declare-fun b!3590094 () Bool)

(declare-fun tp!1098864 () Bool)

(assert (=> b!3590094 (= e!2221310 (and tp!1098864 (inv!51065 (tag!6242 anOtherTypeRule!33)) (inv!51069 (transformation!5570 anOtherTypeRule!33)) e!2221316))))

(declare-fun b!3590095 () Bool)

(declare-fun res!1449230 () Bool)

(assert (=> b!3590095 (=> res!1449230 e!2221296)))

(assert (=> b!3590095 (= res!1449230 (not (contains!7203 (usedCharacters!784 (regex!5570 anOtherTypeRule!33)) lt!1231426)))))

(declare-fun b!3590096 () Bool)

(declare-fun res!1449214 () Bool)

(assert (=> b!3590096 (=> res!1449214 e!2221304)))

(assert (=> b!3590096 (= res!1449214 (not (matchR!4898 (regex!5570 (rule!8286 (_1!21944 lt!1231430))) lt!1231416)))))

(assert (=> b!3590097 (= e!2221315 (and tp!1098860 tp!1098871))))

(declare-fun b!3590098 () Bool)

(declare-fun tp!1098867 () Bool)

(declare-fun inv!21 (TokenValue!5800) Bool)

(assert (=> b!3590098 (= e!2221306 (and (inv!21 (value!179205 token!511)) e!2221307 tp!1098867))))

(declare-fun b!3590099 () Bool)

(declare-fun e!2221301 () Bool)

(declare-fun tp!1098868 () Bool)

(declare-fun e!2221297 () Bool)

(assert (=> b!3590099 (= e!2221297 (and tp!1098868 (inv!51065 (tag!6242 (h!43151 rules!3307))) (inv!51069 (transformation!5570 (h!43151 rules!3307))) e!2221301))))

(declare-fun b!3590100 () Bool)

(declare-fun res!1449224 () Bool)

(assert (=> b!3590100 (=> res!1449224 e!2221313)))

(assert (=> b!3590100 (= res!1449224 (isEmpty!22235 suffix!1395))))

(assert (=> b!3590101 (= e!2221301 (and tp!1098874 tp!1098863))))

(declare-fun b!3590102 () Bool)

(declare-fun res!1449222 () Bool)

(assert (=> b!3590102 (=> (not res!1449222) (not e!2221300))))

(assert (=> b!3590102 (= res!1449222 (contains!7204 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3590103 () Bool)

(declare-fun res!1449219 () Bool)

(assert (=> b!3590103 (=> (not res!1449219) (not e!2221302))))

(assert (=> b!3590103 (= res!1449219 (= (rule!8286 token!511) rule!403))))

(declare-fun b!3590104 () Bool)

(declare-fun tp!1098865 () Bool)

(assert (=> b!3590104 (= e!2221298 (and e!2221297 tp!1098865))))

(declare-fun b!3590105 () Bool)

(assert (=> b!3590105 (= e!2221300 e!2221299)))

(declare-fun res!1449215 () Bool)

(assert (=> b!3590105 (=> (not res!1449215) (not e!2221299))))

(declare-fun isDefined!6003 (Option!7770) Bool)

(assert (=> b!3590105 (= res!1449215 (isDefined!6003 lt!1231425))))

(assert (=> b!3590105 (= lt!1231425 (maxPrefix!2693 thiss!23823 rules!3307 lt!1231411))))

(assert (=> b!3590105 (= lt!1231411 (list!13878 (charsOf!3584 token!511)))))

(assert (=> b!3590106 (= e!2221303 (and tp!1098862 tp!1098861))))

(assert (= (and start!333194 res!1449223) b!3590086))

(assert (= (and b!3590086 res!1449225) b!3590090))

(assert (= (and b!3590090 res!1449220) b!3590088))

(assert (= (and b!3590088 res!1449226) b!3590102))

(assert (= (and b!3590102 res!1449222) b!3590092))

(assert (= (and b!3590092 res!1449213) b!3590105))

(assert (= (and b!3590105 res!1449215) b!3590077))

(assert (= (and b!3590077 res!1449216) b!3590087))

(assert (= (and b!3590087 res!1449228) b!3590103))

(assert (= (and b!3590103 res!1449219) b!3590081))

(assert (= (and b!3590081 (not res!1449227)) b!3590100))

(assert (= (and b!3590100 (not res!1449224)) b!3590085))

(assert (= (and b!3590085 (not res!1449229)) b!3590095))

(assert (= (and b!3590095 (not res!1449230)) b!3590083))

(assert (= (and b!3590083 (not res!1449217)) b!3590093))

(assert (= (and b!3590093 res!1449221) b!3590082))

(assert (= (and b!3590082 res!1449218) b!3590089))

(assert (= (and b!3590093 (not res!1449231)) b!3590096))

(assert (= (and b!3590096 (not res!1449214)) b!3590091))

(assert (= b!3590099 b!3590101))

(assert (= b!3590104 b!3590099))

(assert (= (and start!333194 ((_ is Cons!37731) rules!3307)) b!3590104))

(assert (= (and start!333194 ((_ is Cons!37730) suffix!1395)) b!3590078))

(assert (= b!3590084 b!3590097))

(assert (= b!3590098 b!3590084))

(assert (= start!333194 b!3590098))

(assert (= b!3590080 b!3590106))

(assert (= start!333194 b!3590080))

(assert (= b!3590094 b!3590079))

(assert (= start!333194 b!3590094))

(declare-fun m!4083945 () Bool)

(assert (=> start!333194 m!4083945))

(declare-fun m!4083947 () Bool)

(assert (=> b!3590105 m!4083947))

(declare-fun m!4083949 () Bool)

(assert (=> b!3590105 m!4083949))

(declare-fun m!4083951 () Bool)

(assert (=> b!3590105 m!4083951))

(assert (=> b!3590105 m!4083951))

(declare-fun m!4083953 () Bool)

(assert (=> b!3590105 m!4083953))

(declare-fun m!4083955 () Bool)

(assert (=> b!3590095 m!4083955))

(assert (=> b!3590095 m!4083955))

(declare-fun m!4083957 () Bool)

(assert (=> b!3590095 m!4083957))

(declare-fun m!4083959 () Bool)

(assert (=> b!3590090 m!4083959))

(declare-fun m!4083961 () Bool)

(assert (=> b!3590086 m!4083961))

(declare-fun m!4083963 () Bool)

(assert (=> b!3590080 m!4083963))

(declare-fun m!4083965 () Bool)

(assert (=> b!3590080 m!4083965))

(declare-fun m!4083967 () Bool)

(assert (=> b!3590088 m!4083967))

(declare-fun m!4083969 () Bool)

(assert (=> b!3590102 m!4083969))

(declare-fun m!4083971 () Bool)

(assert (=> b!3590091 m!4083971))

(assert (=> b!3590091 m!4083971))

(declare-fun m!4083973 () Bool)

(assert (=> b!3590091 m!4083973))

(declare-fun m!4083975 () Bool)

(assert (=> b!3590091 m!4083975))

(declare-fun m!4083977 () Bool)

(assert (=> b!3590091 m!4083977))

(declare-fun m!4083979 () Bool)

(assert (=> b!3590091 m!4083979))

(declare-fun m!4083981 () Bool)

(assert (=> b!3590085 m!4083981))

(assert (=> b!3590085 m!4083981))

(declare-fun m!4083983 () Bool)

(assert (=> b!3590085 m!4083983))

(declare-fun m!4083985 () Bool)

(assert (=> b!3590085 m!4083985))

(declare-fun m!4083987 () Bool)

(assert (=> b!3590098 m!4083987))

(declare-fun m!4083989 () Bool)

(assert (=> b!3590100 m!4083989))

(declare-fun m!4083991 () Bool)

(assert (=> b!3590094 m!4083991))

(declare-fun m!4083993 () Bool)

(assert (=> b!3590094 m!4083993))

(declare-fun m!4083995 () Bool)

(assert (=> b!3590093 m!4083995))

(declare-fun m!4083997 () Bool)

(assert (=> b!3590093 m!4083997))

(declare-fun m!4083999 () Bool)

(assert (=> b!3590093 m!4083999))

(declare-fun m!4084001 () Bool)

(assert (=> b!3590093 m!4084001))

(declare-fun m!4084003 () Bool)

(assert (=> b!3590093 m!4084003))

(assert (=> b!3590093 m!4083995))

(declare-fun m!4084005 () Bool)

(assert (=> b!3590093 m!4084005))

(declare-fun m!4084007 () Bool)

(assert (=> b!3590093 m!4084007))

(declare-fun m!4084009 () Bool)

(assert (=> b!3590093 m!4084009))

(declare-fun m!4084011 () Bool)

(assert (=> b!3590093 m!4084011))

(declare-fun m!4084013 () Bool)

(assert (=> b!3590093 m!4084013))

(declare-fun m!4084015 () Bool)

(assert (=> b!3590093 m!4084015))

(declare-fun m!4084017 () Bool)

(assert (=> b!3590093 m!4084017))

(declare-fun m!4084019 () Bool)

(assert (=> b!3590093 m!4084019))

(declare-fun m!4084021 () Bool)

(assert (=> b!3590093 m!4084021))

(declare-fun m!4084023 () Bool)

(assert (=> b!3590093 m!4084023))

(declare-fun m!4084025 () Bool)

(assert (=> b!3590081 m!4084025))

(declare-fun m!4084027 () Bool)

(assert (=> b!3590081 m!4084027))

(declare-fun m!4084029 () Bool)

(assert (=> b!3590081 m!4084029))

(declare-fun m!4084031 () Bool)

(assert (=> b!3590099 m!4084031))

(declare-fun m!4084033 () Bool)

(assert (=> b!3590099 m!4084033))

(declare-fun m!4084035 () Bool)

(assert (=> b!3590077 m!4084035))

(declare-fun m!4084037 () Bool)

(assert (=> b!3590087 m!4084037))

(assert (=> b!3590082 m!4084019))

(assert (=> b!3590082 m!4084019))

(declare-fun m!4084039 () Bool)

(assert (=> b!3590082 m!4084039))

(assert (=> b!3590082 m!4084039))

(declare-fun m!4084041 () Bool)

(assert (=> b!3590082 m!4084041))

(declare-fun m!4084043 () Bool)

(assert (=> b!3590082 m!4084043))

(declare-fun m!4084045 () Bool)

(assert (=> b!3590083 m!4084045))

(declare-fun m!4084047 () Bool)

(assert (=> b!3590096 m!4084047))

(declare-fun m!4084049 () Bool)

(assert (=> b!3590084 m!4084049))

(declare-fun m!4084051 () Bool)

(assert (=> b!3590084 m!4084051))

(check-sat (not b!3590085) (not b_next!93229) (not b_next!93217) b_and!259543 b_and!259547 (not b!3590091) (not b!3590104) (not b_next!93219) (not b!3590105) b_and!259539 (not b!3590094) (not b!3590088) (not b!3590093) b_and!259553 (not b_next!93227) (not b!3590087) (not b!3590102) (not b!3590077) b_and!259551 (not start!333194) (not b!3590078) (not b_next!93221) (not b!3590095) (not b!3590084) b_and!259545 b_and!259541 (not b!3590081) (not b!3590099) (not b_next!93225) (not b!3590086) (not b_next!93231) b_and!259549 tp_is_empty!17741 (not b!3590096) (not b_next!93223) (not b!3590100) (not b!3590083) (not b!3590090) (not b!3590080) (not b!3590098) (not b!3590082))
(check-sat (not b_next!93227) b_and!259551 (not b_next!93221) b_and!259545 (not b_next!93229) (not b_next!93217) b_and!259543 b_and!259547 b_and!259541 (not b_next!93219) (not b_next!93225) (not b_next!93231) b_and!259539 b_and!259553 b_and!259549 (not b_next!93223))
