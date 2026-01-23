; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!335172 () Bool)

(assert start!335172)

(declare-fun b!3603390 () Bool)

(declare-fun b_free!93297 () Bool)

(declare-fun b_next!94001 () Bool)

(assert (=> b!3603390 (= b_free!93297 (not b_next!94001))))

(declare-fun tp!1102019 () Bool)

(declare-fun b_and!262051 () Bool)

(assert (=> b!3603390 (= tp!1102019 b_and!262051)))

(declare-fun b_free!93299 () Bool)

(declare-fun b_next!94003 () Bool)

(assert (=> b!3603390 (= b_free!93299 (not b_next!94003))))

(declare-fun tp!1102030 () Bool)

(declare-fun b_and!262053 () Bool)

(assert (=> b!3603390 (= tp!1102030 b_and!262053)))

(declare-fun b!3603410 () Bool)

(declare-fun b_free!93301 () Bool)

(declare-fun b_next!94005 () Bool)

(assert (=> b!3603410 (= b_free!93301 (not b_next!94005))))

(declare-fun tp!1102024 () Bool)

(declare-fun b_and!262055 () Bool)

(assert (=> b!3603410 (= tp!1102024 b_and!262055)))

(declare-fun b_free!93303 () Bool)

(declare-fun b_next!94007 () Bool)

(assert (=> b!3603410 (= b_free!93303 (not b_next!94007))))

(declare-fun tp!1102028 () Bool)

(declare-fun b_and!262057 () Bool)

(assert (=> b!3603410 (= tp!1102028 b_and!262057)))

(declare-fun b!3603389 () Bool)

(declare-fun b_free!93305 () Bool)

(declare-fun b_next!94009 () Bool)

(assert (=> b!3603389 (= b_free!93305 (not b_next!94009))))

(declare-fun tp!1102025 () Bool)

(declare-fun b_and!262059 () Bool)

(assert (=> b!3603389 (= tp!1102025 b_and!262059)))

(declare-fun b_free!93307 () Bool)

(declare-fun b_next!94011 () Bool)

(assert (=> b!3603389 (= b_free!93307 (not b_next!94011))))

(declare-fun tp!1102022 () Bool)

(declare-fun b_and!262061 () Bool)

(assert (=> b!3603389 (= tp!1102022 b_and!262061)))

(declare-fun b!3603405 () Bool)

(declare-fun b_free!93309 () Bool)

(declare-fun b_next!94013 () Bool)

(assert (=> b!3603405 (= b_free!93309 (not b_next!94013))))

(declare-fun tp!1102020 () Bool)

(declare-fun b_and!262063 () Bool)

(assert (=> b!3603405 (= tp!1102020 b_and!262063)))

(declare-fun b_free!93311 () Bool)

(declare-fun b_next!94015 () Bool)

(assert (=> b!3603405 (= b_free!93311 (not b_next!94015))))

(declare-fun tp!1102021 () Bool)

(declare-fun b_and!262065 () Bool)

(assert (=> b!3603405 (= tp!1102021 b_and!262065)))

(declare-fun b!3603375 () Bool)

(declare-fun res!1456591 () Bool)

(declare-fun e!2229836 () Bool)

(assert (=> b!3603375 (=> (not res!1456591) (not e!2229836))))

(declare-datatypes ((List!38029 0))(
  ( (Nil!37905) (Cons!37905 (h!43325 (_ BitVec 16)) (t!292600 List!38029)) )
))
(declare-datatypes ((TokenValue!5843 0))(
  ( (FloatLiteralValue!11686 (text!41346 List!38029)) (TokenValueExt!5842 (__x!23903 Int)) (Broken!29215 (value!180406 List!38029)) (Object!5966) (End!5843) (Def!5843) (Underscore!5843) (Match!5843) (Else!5843) (Error!5843) (Case!5843) (If!5843) (Extends!5843) (Abstract!5843) (Class!5843) (Val!5843) (DelimiterValue!11686 (del!5903 List!38029)) (KeywordValue!5849 (value!180407 List!38029)) (CommentValue!11686 (value!180408 List!38029)) (WhitespaceValue!11686 (value!180409 List!38029)) (IndentationValue!5843 (value!180410 List!38029)) (String!42550) (Int32!5843) (Broken!29216 (value!180411 List!38029)) (Boolean!5844) (Unit!53960) (OperatorValue!5846 (op!5903 List!38029)) (IdentifierValue!11686 (value!180412 List!38029)) (IdentifierValue!11687 (value!180413 List!38029)) (WhitespaceValue!11687 (value!180414 List!38029)) (True!11686) (False!11686) (Broken!29217 (value!180415 List!38029)) (Broken!29218 (value!180416 List!38029)) (True!11687) (RightBrace!5843) (RightBracket!5843) (Colon!5843) (Null!5843) (Comma!5843) (LeftBracket!5843) (False!11687) (LeftBrace!5843) (ImaginaryLiteralValue!5843 (text!41347 List!38029)) (StringLiteralValue!17529 (value!180417 List!38029)) (EOFValue!5843 (value!180418 List!38029)) (IdentValue!5843 (value!180419 List!38029)) (DelimiterValue!11687 (value!180420 List!38029)) (DedentValue!5843 (value!180421 List!38029)) (NewLineValue!5843 (value!180422 List!38029)) (IntegerValue!17529 (value!180423 (_ BitVec 32)) (text!41348 List!38029)) (IntegerValue!17530 (value!180424 Int) (text!41349 List!38029)) (Times!5843) (Or!5843) (Equal!5843) (Minus!5843) (Broken!29219 (value!180425 List!38029)) (And!5843) (Div!5843) (LessEqual!5843) (Mod!5843) (Concat!16215) (Not!5843) (Plus!5843) (SpaceValue!5843 (value!180426 List!38029)) (IntegerValue!17531 (value!180427 Int) (text!41350 List!38029)) (StringLiteralValue!17530 (text!41351 List!38029)) (FloatLiteralValue!11687 (text!41352 List!38029)) (BytesLiteralValue!5843 (value!180428 List!38029)) (CommentValue!11687 (value!180429 List!38029)) (StringLiteralValue!17531 (value!180430 List!38029)) (ErrorTokenValue!5843 (msg!5904 List!38029)) )
))
(declare-datatypes ((C!20930 0))(
  ( (C!20931 (val!12513 Int)) )
))
(declare-datatypes ((Regex!10372 0))(
  ( (ElementMatch!10372 (c!623568 C!20930)) (Concat!16216 (regOne!21256 Regex!10372) (regTwo!21256 Regex!10372)) (EmptyExpr!10372) (Star!10372 (reg!10701 Regex!10372)) (EmptyLang!10372) (Union!10372 (regOne!21257 Regex!10372) (regTwo!21257 Regex!10372)) )
))
(declare-datatypes ((String!42551 0))(
  ( (String!42552 (value!180431 String)) )
))
(declare-datatypes ((List!38030 0))(
  ( (Nil!37906) (Cons!37906 (h!43326 C!20930) (t!292601 List!38030)) )
))
(declare-datatypes ((IArray!23093 0))(
  ( (IArray!23094 (innerList!11604 List!38030)) )
))
(declare-datatypes ((Conc!11544 0))(
  ( (Node!11544 (left!29621 Conc!11544) (right!29951 Conc!11544) (csize!23318 Int) (cheight!11755 Int)) (Leaf!17962 (xs!14746 IArray!23093) (csize!23319 Int)) (Empty!11544) )
))
(declare-datatypes ((BalanceConc!22702 0))(
  ( (BalanceConc!22703 (c!623569 Conc!11544)) )
))
(declare-datatypes ((TokenValueInjection!11114 0))(
  ( (TokenValueInjection!11115 (toValue!7897 Int) (toChars!7756 Int)) )
))
(declare-datatypes ((Rule!11026 0))(
  ( (Rule!11027 (regex!5613 Regex!10372) (tag!6309 String!42551) (isSeparator!5613 Bool) (transformation!5613 TokenValueInjection!11114)) )
))
(declare-datatypes ((List!38031 0))(
  ( (Nil!37907) (Cons!37907 (h!43327 Rule!11026) (t!292602 List!38031)) )
))
(declare-fun rules!3307 () List!38031)

(declare-fun rule!403 () Rule!11026)

(declare-fun contains!7289 (List!38031 Rule!11026) Bool)

(assert (=> b!3603375 (= res!1456591 (contains!7289 rules!3307 rule!403))))

(declare-fun b!3603376 () Bool)

(declare-fun e!2229845 () Bool)

(declare-fun lt!1238495 () Bool)

(declare-fun lt!1238490 () List!38030)

(assert (=> b!3603376 (= e!2229845 (or lt!1238495 (not (= lt!1238490 Nil!37906))))))

(declare-fun b!3603377 () Bool)

(declare-fun e!2229852 () Bool)

(declare-fun e!2229849 () Bool)

(assert (=> b!3603377 (= e!2229852 e!2229849)))

(declare-fun res!1456593 () Bool)

(assert (=> b!3603377 (=> res!1456593 e!2229849)))

(declare-fun lt!1238494 () List!38030)

(declare-fun isPrefix!2976 (List!38030 List!38030) Bool)

(assert (=> b!3603377 (= res!1456593 (not (isPrefix!2976 lt!1238490 lt!1238494)))))

(declare-datatypes ((Token!10592 0))(
  ( (Token!10593 (value!180432 TokenValue!5843) (rule!8353 Rule!11026) (size!28886 Int) (originalCharacters!6327 List!38030)) )
))
(declare-datatypes ((tuple2!37802 0))(
  ( (tuple2!37803 (_1!22035 Token!10592) (_2!22035 List!38030)) )
))
(declare-fun lt!1238496 () tuple2!37802)

(declare-fun ++!9429 (List!38030 List!38030) List!38030)

(assert (=> b!3603377 (isPrefix!2976 lt!1238490 (++!9429 lt!1238490 (_2!22035 lt!1238496)))))

(declare-datatypes ((Unit!53961 0))(
  ( (Unit!53962) )
))
(declare-fun lt!1238481 () Unit!53961)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1897 (List!38030 List!38030) Unit!53961)

(assert (=> b!3603377 (= lt!1238481 (lemmaConcatTwoListThenFirstIsPrefix!1897 lt!1238490 (_2!22035 lt!1238496)))))

(declare-fun lt!1238486 () BalanceConc!22702)

(declare-fun list!13969 (BalanceConc!22702) List!38030)

(assert (=> b!3603377 (= lt!1238490 (list!13969 lt!1238486))))

(declare-fun charsOf!3627 (Token!10592) BalanceConc!22702)

(assert (=> b!3603377 (= lt!1238486 (charsOf!3627 (_1!22035 lt!1238496)))))

(declare-fun e!2229854 () Bool)

(assert (=> b!3603377 e!2229854))

(declare-fun res!1456607 () Bool)

(assert (=> b!3603377 (=> (not res!1456607) (not e!2229854))))

(declare-datatypes ((Option!7856 0))(
  ( (None!7855) (Some!7855 (v!37577 Rule!11026)) )
))
(declare-fun lt!1238479 () Option!7856)

(declare-fun isDefined!6088 (Option!7856) Bool)

(assert (=> b!3603377 (= res!1456607 (isDefined!6088 lt!1238479))))

(declare-datatypes ((LexerInterface!5202 0))(
  ( (LexerInterfaceExt!5199 (__x!23904 Int)) (Lexer!5200) )
))
(declare-fun thiss!23823 () LexerInterface!5202)

(declare-fun getRuleFromTag!1219 (LexerInterface!5202 List!38031 String!42551) Option!7856)

(assert (=> b!3603377 (= lt!1238479 (getRuleFromTag!1219 thiss!23823 rules!3307 (tag!6309 (rule!8353 (_1!22035 lt!1238496)))))))

(declare-fun lt!1238498 () Unit!53961)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1219 (LexerInterface!5202 List!38031 List!38030 Token!10592) Unit!53961)

(assert (=> b!3603377 (= lt!1238498 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1219 thiss!23823 rules!3307 lt!1238494 (_1!22035 lt!1238496)))))

(declare-datatypes ((Option!7857 0))(
  ( (None!7856) (Some!7856 (v!37578 tuple2!37802)) )
))
(declare-fun lt!1238503 () Option!7857)

(declare-fun get!12273 (Option!7857) tuple2!37802)

(assert (=> b!3603377 (= lt!1238496 (get!12273 lt!1238503))))

(declare-fun suffix!1395 () List!38030)

(declare-fun lt!1238487 () Unit!53961)

(declare-fun lt!1238483 () List!38030)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!882 (LexerInterface!5202 List!38031 List!38030 List!38030) Unit!53961)

(assert (=> b!3603377 (= lt!1238487 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!882 thiss!23823 rules!3307 lt!1238483 suffix!1395))))

(declare-fun maxPrefix!2736 (LexerInterface!5202 List!38031 List!38030) Option!7857)

(assert (=> b!3603377 (= lt!1238503 (maxPrefix!2736 thiss!23823 rules!3307 lt!1238494))))

(assert (=> b!3603377 (isPrefix!2976 lt!1238483 lt!1238494)))

(declare-fun lt!1238476 () Unit!53961)

(assert (=> b!3603377 (= lt!1238476 (lemmaConcatTwoListThenFirstIsPrefix!1897 lt!1238483 suffix!1395))))

(assert (=> b!3603377 (= lt!1238494 (++!9429 lt!1238483 suffix!1395))))

(declare-fun b!3603378 () Bool)

(declare-fun e!2229853 () Bool)

(assert (=> b!3603378 (= e!2229854 e!2229853)))

(declare-fun res!1456611 () Bool)

(assert (=> b!3603378 (=> (not res!1456611) (not e!2229853))))

(declare-fun lt!1238480 () Rule!11026)

(declare-fun matchR!4941 (Regex!10372 List!38030) Bool)

(assert (=> b!3603378 (= res!1456611 (matchR!4941 (regex!5613 lt!1238480) (list!13969 (charsOf!3627 (_1!22035 lt!1238496)))))))

(declare-fun get!12274 (Option!7856) Rule!11026)

(assert (=> b!3603378 (= lt!1238480 (get!12274 lt!1238479))))

(declare-fun b!3603379 () Bool)

(declare-fun e!2229840 () Bool)

(declare-fun e!2229837 () Bool)

(assert (=> b!3603379 (= e!2229840 e!2229837)))

(declare-fun res!1456596 () Bool)

(assert (=> b!3603379 (=> res!1456596 e!2229837)))

(declare-fun lt!1238492 () Option!7857)

(declare-fun lt!1238484 () List!38030)

(assert (=> b!3603379 (= res!1456596 (or (not (= lt!1238484 (_2!22035 lt!1238496))) (not (= lt!1238492 (Some!7856 (tuple2!37803 (_1!22035 lt!1238496) lt!1238484))))))))

(assert (=> b!3603379 (= (_2!22035 lt!1238496) lt!1238484)))

(declare-fun lt!1238504 () Unit!53961)

(declare-fun lemmaSamePrefixThenSameSuffix!1331 (List!38030 List!38030 List!38030 List!38030 List!38030) Unit!53961)

(assert (=> b!3603379 (= lt!1238504 (lemmaSamePrefixThenSameSuffix!1331 lt!1238490 (_2!22035 lt!1238496) lt!1238490 lt!1238484 lt!1238494))))

(declare-fun getSuffix!1551 (List!38030 List!38030) List!38030)

(assert (=> b!3603379 (= lt!1238484 (getSuffix!1551 lt!1238494 lt!1238490))))

(declare-fun lt!1238477 () TokenValue!5843)

(declare-fun lt!1238478 () Int)

(assert (=> b!3603379 (= lt!1238492 (Some!7856 (tuple2!37803 (Token!10593 lt!1238477 (rule!8353 (_1!22035 lt!1238496)) lt!1238478 lt!1238490) (_2!22035 lt!1238496))))))

(declare-fun maxPrefixOneRule!1880 (LexerInterface!5202 Rule!11026 List!38030) Option!7857)

(assert (=> b!3603379 (= lt!1238492 (maxPrefixOneRule!1880 thiss!23823 (rule!8353 (_1!22035 lt!1238496)) lt!1238494))))

(declare-fun size!28887 (List!38030) Int)

(assert (=> b!3603379 (= lt!1238478 (size!28887 lt!1238490))))

(declare-fun apply!9119 (TokenValueInjection!11114 BalanceConc!22702) TokenValue!5843)

(declare-fun seqFromList!4166 (List!38030) BalanceConc!22702)

(assert (=> b!3603379 (= lt!1238477 (apply!9119 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))) (seqFromList!4166 lt!1238490)))))

(declare-fun lt!1238491 () Unit!53961)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!952 (LexerInterface!5202 List!38031 List!38030 List!38030 List!38030 Rule!11026) Unit!53961)

(assert (=> b!3603379 (= lt!1238491 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!952 thiss!23823 rules!3307 lt!1238490 lt!1238494 (_2!22035 lt!1238496) (rule!8353 (_1!22035 lt!1238496))))))

(declare-fun b!3603380 () Bool)

(declare-fun res!1456598 () Bool)

(assert (=> b!3603380 (=> (not res!1456598) (not e!2229836))))

(declare-fun rulesInvariant!4599 (LexerInterface!5202 List!38031) Bool)

(assert (=> b!3603380 (= res!1456598 (rulesInvariant!4599 thiss!23823 rules!3307))))

(declare-fun b!3603381 () Bool)

(declare-fun e!2229835 () Bool)

(assert (=> b!3603381 (= e!2229836 e!2229835)))

(declare-fun res!1456592 () Bool)

(assert (=> b!3603381 (=> (not res!1456592) (not e!2229835))))

(declare-fun lt!1238499 () Option!7857)

(declare-fun isDefined!6089 (Option!7857) Bool)

(assert (=> b!3603381 (= res!1456592 (isDefined!6089 lt!1238499))))

(assert (=> b!3603381 (= lt!1238499 (maxPrefix!2736 thiss!23823 rules!3307 lt!1238483))))

(declare-fun token!511 () Token!10592)

(assert (=> b!3603381 (= lt!1238483 (list!13969 (charsOf!3627 token!511)))))

(declare-fun b!3603382 () Bool)

(declare-fun e!2229834 () Bool)

(declare-fun e!2229850 () Bool)

(assert (=> b!3603382 (= e!2229834 (not e!2229850))))

(declare-fun res!1456605 () Bool)

(assert (=> b!3603382 (=> res!1456605 e!2229850)))

(assert (=> b!3603382 (= res!1456605 (not (matchR!4941 (regex!5613 rule!403) lt!1238483)))))

(declare-fun ruleValid!1878 (LexerInterface!5202 Rule!11026) Bool)

(assert (=> b!3603382 (ruleValid!1878 thiss!23823 rule!403)))

(declare-fun lt!1238500 () Unit!53961)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1033 (LexerInterface!5202 Rule!11026 List!38031) Unit!53961)

(assert (=> b!3603382 (= lt!1238500 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1033 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3603383 () Bool)

(assert (=> b!3603383 (= e!2229850 e!2229852)))

(declare-fun res!1456613 () Bool)

(assert (=> b!3603383 (=> res!1456613 e!2229852)))

(declare-fun lt!1238489 () List!38030)

(declare-fun lt!1238485 () C!20930)

(declare-fun contains!7290 (List!38030 C!20930) Bool)

(assert (=> b!3603383 (= res!1456613 (contains!7290 lt!1238489 lt!1238485))))

(declare-fun head!7561 (List!38030) C!20930)

(assert (=> b!3603383 (= lt!1238485 (head!7561 suffix!1395))))

(declare-fun usedCharacters!827 (Regex!10372) List!38030)

(assert (=> b!3603383 (= lt!1238489 (usedCharacters!827 (regex!5613 rule!403)))))

(declare-fun b!3603384 () Bool)

(declare-fun res!1456601 () Bool)

(assert (=> b!3603384 (=> res!1456601 e!2229850)))

(declare-fun isEmpty!22368 (List!38030) Bool)

(assert (=> b!3603384 (= res!1456601 (isEmpty!22368 suffix!1395))))

(declare-fun e!2229842 () Bool)

(declare-fun tp!1102029 () Bool)

(declare-fun b!3603385 () Bool)

(declare-fun e!2229847 () Bool)

(declare-fun inv!51265 (String!42551) Bool)

(declare-fun inv!51268 (TokenValueInjection!11114) Bool)

(assert (=> b!3603385 (= e!2229847 (and tp!1102029 (inv!51265 (tag!6309 (rule!8353 token!511))) (inv!51268 (transformation!5613 (rule!8353 token!511))) e!2229842))))

(declare-fun b!3603386 () Bool)

(declare-fun res!1456609 () Bool)

(assert (=> b!3603386 (=> res!1456609 e!2229849)))

(assert (=> b!3603386 (= res!1456609 (not (matchR!4941 (regex!5613 (rule!8353 (_1!22035 lt!1238496))) lt!1238490)))))

(declare-fun res!1456603 () Bool)

(assert (=> start!335172 (=> (not res!1456603) (not e!2229836))))

(assert (=> start!335172 (= res!1456603 (is-Lexer!5200 thiss!23823))))

(assert (=> start!335172 e!2229836))

(declare-fun e!2229833 () Bool)

(assert (=> start!335172 e!2229833))

(declare-fun e!2229859 () Bool)

(assert (=> start!335172 e!2229859))

(assert (=> start!335172 true))

(declare-fun e!2229843 () Bool)

(declare-fun inv!51269 (Token!10592) Bool)

(assert (=> start!335172 (and (inv!51269 token!511) e!2229843)))

(declare-fun e!2229857 () Bool)

(assert (=> start!335172 e!2229857))

(declare-fun e!2229844 () Bool)

(assert (=> start!335172 e!2229844))

(declare-fun tp!1102032 () Bool)

(declare-fun e!2229856 () Bool)

(declare-fun e!2229855 () Bool)

(declare-fun b!3603387 () Bool)

(assert (=> b!3603387 (= e!2229855 (and tp!1102032 (inv!51265 (tag!6309 (h!43327 rules!3307))) (inv!51268 (transformation!5613 (h!43327 rules!3307))) e!2229856))))

(declare-fun b!3603388 () Bool)

(declare-fun tp!1102027 () Bool)

(declare-fun inv!21 (TokenValue!5843) Bool)

(assert (=> b!3603388 (= e!2229843 (and (inv!21 (value!180432 token!511)) e!2229847 tp!1102027))))

(declare-fun e!2229851 () Bool)

(assert (=> b!3603389 (= e!2229851 (and tp!1102025 tp!1102022))))

(declare-fun e!2229860 () Bool)

(assert (=> b!3603390 (= e!2229860 (and tp!1102019 tp!1102030))))

(declare-fun b!3603391 () Bool)

(assert (=> b!3603391 (= e!2229849 e!2229840)))

(declare-fun res!1456606 () Bool)

(assert (=> b!3603391 (=> res!1456606 e!2229840)))

(declare-fun size!28888 (BalanceConc!22702) Int)

(assert (=> b!3603391 (= res!1456606 (not (= lt!1238503 (Some!7856 (tuple2!37803 (Token!10593 (apply!9119 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))) lt!1238486) (rule!8353 (_1!22035 lt!1238496)) (size!28888 lt!1238486) lt!1238490) (_2!22035 lt!1238496))))))))

(declare-fun lt!1238488 () Unit!53961)

(declare-fun lemmaCharactersSize!666 (Token!10592) Unit!53961)

(assert (=> b!3603391 (= lt!1238488 (lemmaCharactersSize!666 (_1!22035 lt!1238496)))))

(declare-fun lt!1238502 () Unit!53961)

(declare-fun lemmaEqSameImage!804 (TokenValueInjection!11114 BalanceConc!22702 BalanceConc!22702) Unit!53961)

(assert (=> b!3603391 (= lt!1238502 (lemmaEqSameImage!804 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))) lt!1238486 (seqFromList!4166 (originalCharacters!6327 (_1!22035 lt!1238496)))))))

(declare-fun lt!1238482 () Unit!53961)

(declare-fun lemmaSemiInverse!1370 (TokenValueInjection!11114 BalanceConc!22702) Unit!53961)

(assert (=> b!3603391 (= lt!1238482 (lemmaSemiInverse!1370 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))) lt!1238486))))

(declare-fun b!3603392 () Bool)

(declare-fun res!1456600 () Bool)

(assert (=> b!3603392 (=> (not res!1456600) (not e!2229834))))

(assert (=> b!3603392 (= res!1456600 (= (rule!8353 token!511) rule!403))))

(declare-fun b!3603393 () Bool)

(declare-fun res!1456594 () Bool)

(assert (=> b!3603393 (=> res!1456594 e!2229852)))

(declare-fun sepAndNonSepRulesDisjointChars!1783 (List!38031 List!38031) Bool)

(assert (=> b!3603393 (= res!1456594 (not (sepAndNonSepRulesDisjointChars!1783 rules!3307 rules!3307)))))

(declare-fun b!3603394 () Bool)

(declare-fun res!1456612 () Bool)

(assert (=> b!3603394 (=> (not res!1456612) (not e!2229836))))

(declare-fun anOtherTypeRule!33 () Rule!11026)

(assert (=> b!3603394 (= res!1456612 (contains!7289 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3603395 () Bool)

(declare-fun res!1456608 () Bool)

(assert (=> b!3603395 (=> res!1456608 e!2229852)))

(assert (=> b!3603395 (= res!1456608 (not (contains!7290 (usedCharacters!827 (regex!5613 anOtherTypeRule!33)) lt!1238485)))))

(declare-fun b!3603396 () Bool)

(assert (=> b!3603396 (= e!2229837 e!2229845)))

(declare-fun res!1456597 () Bool)

(assert (=> b!3603396 (=> res!1456597 e!2229845)))

(assert (=> b!3603396 (= res!1456597 (or (isSeparator!5613 rule!403) (not (isSeparator!5613 (rule!8353 (_1!22035 lt!1238496))))))))

(declare-fun lt!1238501 () Unit!53961)

(declare-fun e!2229846 () Unit!53961)

(assert (=> b!3603396 (= lt!1238501 e!2229846)))

(declare-fun c!623567 () Bool)

(assert (=> b!3603396 (= c!623567 lt!1238495)))

(declare-fun lt!1238497 () C!20930)

(assert (=> b!3603396 (= lt!1238495 (not (contains!7290 lt!1238489 lt!1238497)))))

(assert (=> b!3603396 (= lt!1238497 (head!7561 lt!1238490))))

(declare-fun b!3603397 () Bool)

(declare-fun res!1456595 () Bool)

(assert (=> b!3603397 (=> (not res!1456595) (not e!2229836))))

(assert (=> b!3603397 (= res!1456595 (not (= (isSeparator!5613 anOtherTypeRule!33) (isSeparator!5613 rule!403))))))

(declare-fun b!3603398 () Bool)

(assert (=> b!3603398 (= e!2229853 (= (rule!8353 (_1!22035 lt!1238496)) lt!1238480))))

(declare-fun b!3603399 () Bool)

(declare-fun res!1456602 () Bool)

(assert (=> b!3603399 (=> (not res!1456602) (not e!2229836))))

(declare-fun isEmpty!22369 (List!38031) Bool)

(assert (=> b!3603399 (= res!1456602 (not (isEmpty!22369 rules!3307)))))

(declare-fun b!3603400 () Bool)

(declare-fun res!1456610 () Bool)

(assert (=> b!3603400 (=> (not res!1456610) (not e!2229834))))

(declare-fun lt!1238475 () tuple2!37802)

(assert (=> b!3603400 (= res!1456610 (isEmpty!22368 (_2!22035 lt!1238475)))))

(declare-fun b!3603401 () Bool)

(declare-fun res!1456604 () Bool)

(assert (=> b!3603401 (=> res!1456604 e!2229845)))

(assert (=> b!3603401 (= res!1456604 (not (contains!7290 lt!1238483 lt!1238497)))))

(declare-fun tp!1102033 () Bool)

(declare-fun b!3603402 () Bool)

(assert (=> b!3603402 (= e!2229857 (and tp!1102033 (inv!51265 (tag!6309 rule!403)) (inv!51268 (transformation!5613 rule!403)) e!2229851))))

(declare-fun b!3603403 () Bool)

(declare-fun Unit!53963 () Unit!53961)

(assert (=> b!3603403 (= e!2229846 Unit!53963)))

(declare-fun b!3603404 () Bool)

(declare-fun tp_is_empty!17827 () Bool)

(declare-fun tp!1102023 () Bool)

(assert (=> b!3603404 (= e!2229859 (and tp_is_empty!17827 tp!1102023))))

(assert (=> b!3603405 (= e!2229856 (and tp!1102020 tp!1102021))))

(declare-fun tp!1102031 () Bool)

(declare-fun b!3603406 () Bool)

(assert (=> b!3603406 (= e!2229844 (and tp!1102031 (inv!51265 (tag!6309 anOtherTypeRule!33)) (inv!51268 (transformation!5613 anOtherTypeRule!33)) e!2229860))))

(declare-fun b!3603407 () Bool)

(declare-fun Unit!53964 () Unit!53961)

(assert (=> b!3603407 (= e!2229846 Unit!53964)))

(declare-fun lt!1238493 () Unit!53961)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!597 (Regex!10372 List!38030 C!20930) Unit!53961)

(assert (=> b!3603407 (= lt!1238493 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!597 (regex!5613 rule!403) lt!1238483 lt!1238497))))

(assert (=> b!3603407 false))

(declare-fun b!3603408 () Bool)

(declare-fun tp!1102026 () Bool)

(assert (=> b!3603408 (= e!2229833 (and e!2229855 tp!1102026))))

(declare-fun b!3603409 () Bool)

(assert (=> b!3603409 (= e!2229835 e!2229834)))

(declare-fun res!1456599 () Bool)

(assert (=> b!3603409 (=> (not res!1456599) (not e!2229834))))

(assert (=> b!3603409 (= res!1456599 (= (_1!22035 lt!1238475) token!511))))

(assert (=> b!3603409 (= lt!1238475 (get!12273 lt!1238499))))

(assert (=> b!3603410 (= e!2229842 (and tp!1102024 tp!1102028))))

(assert (= (and start!335172 res!1456603) b!3603399))

(assert (= (and b!3603399 res!1456602) b!3603380))

(assert (= (and b!3603380 res!1456598) b!3603375))

(assert (= (and b!3603375 res!1456591) b!3603394))

(assert (= (and b!3603394 res!1456612) b!3603397))

(assert (= (and b!3603397 res!1456595) b!3603381))

(assert (= (and b!3603381 res!1456592) b!3603409))

(assert (= (and b!3603409 res!1456599) b!3603400))

(assert (= (and b!3603400 res!1456610) b!3603392))

(assert (= (and b!3603392 res!1456600) b!3603382))

(assert (= (and b!3603382 (not res!1456605)) b!3603384))

(assert (= (and b!3603384 (not res!1456601)) b!3603383))

(assert (= (and b!3603383 (not res!1456613)) b!3603395))

(assert (= (and b!3603395 (not res!1456608)) b!3603393))

(assert (= (and b!3603393 (not res!1456594)) b!3603377))

(assert (= (and b!3603377 res!1456607) b!3603378))

(assert (= (and b!3603378 res!1456611) b!3603398))

(assert (= (and b!3603377 (not res!1456593)) b!3603386))

(assert (= (and b!3603386 (not res!1456609)) b!3603391))

(assert (= (and b!3603391 (not res!1456606)) b!3603379))

(assert (= (and b!3603379 (not res!1456596)) b!3603396))

(assert (= (and b!3603396 c!623567) b!3603407))

(assert (= (and b!3603396 (not c!623567)) b!3603403))

(assert (= (and b!3603396 (not res!1456597)) b!3603401))

(assert (= (and b!3603401 (not res!1456604)) b!3603376))

(assert (= b!3603387 b!3603405))

(assert (= b!3603408 b!3603387))

(assert (= (and start!335172 (is-Cons!37907 rules!3307)) b!3603408))

(assert (= (and start!335172 (is-Cons!37906 suffix!1395)) b!3603404))

(assert (= b!3603385 b!3603410))

(assert (= b!3603388 b!3603385))

(assert (= start!335172 b!3603388))

(assert (= b!3603402 b!3603389))

(assert (= start!335172 b!3603402))

(assert (= b!3603406 b!3603390))

(assert (= start!335172 b!3603406))

(declare-fun m!4099681 () Bool)

(assert (=> b!3603375 m!4099681))

(declare-fun m!4099683 () Bool)

(assert (=> b!3603406 m!4099683))

(declare-fun m!4099685 () Bool)

(assert (=> b!3603406 m!4099685))

(declare-fun m!4099687 () Bool)

(assert (=> b!3603395 m!4099687))

(assert (=> b!3603395 m!4099687))

(declare-fun m!4099689 () Bool)

(assert (=> b!3603395 m!4099689))

(declare-fun m!4099691 () Bool)

(assert (=> b!3603383 m!4099691))

(declare-fun m!4099693 () Bool)

(assert (=> b!3603383 m!4099693))

(declare-fun m!4099695 () Bool)

(assert (=> b!3603383 m!4099695))

(declare-fun m!4099697 () Bool)

(assert (=> b!3603384 m!4099697))

(declare-fun m!4099699 () Bool)

(assert (=> b!3603378 m!4099699))

(assert (=> b!3603378 m!4099699))

(declare-fun m!4099701 () Bool)

(assert (=> b!3603378 m!4099701))

(assert (=> b!3603378 m!4099701))

(declare-fun m!4099703 () Bool)

(assert (=> b!3603378 m!4099703))

(declare-fun m!4099705 () Bool)

(assert (=> b!3603378 m!4099705))

(declare-fun m!4099707 () Bool)

(assert (=> b!3603385 m!4099707))

(declare-fun m!4099709 () Bool)

(assert (=> b!3603385 m!4099709))

(declare-fun m!4099711 () Bool)

(assert (=> b!3603391 m!4099711))

(declare-fun m!4099713 () Bool)

(assert (=> b!3603391 m!4099713))

(declare-fun m!4099715 () Bool)

(assert (=> b!3603391 m!4099715))

(declare-fun m!4099717 () Bool)

(assert (=> b!3603391 m!4099717))

(assert (=> b!3603391 m!4099713))

(declare-fun m!4099719 () Bool)

(assert (=> b!3603391 m!4099719))

(declare-fun m!4099721 () Bool)

(assert (=> b!3603391 m!4099721))

(declare-fun m!4099723 () Bool)

(assert (=> start!335172 m!4099723))

(declare-fun m!4099725 () Bool)

(assert (=> b!3603380 m!4099725))

(declare-fun m!4099727 () Bool)

(assert (=> b!3603399 m!4099727))

(declare-fun m!4099729 () Bool)

(assert (=> b!3603387 m!4099729))

(declare-fun m!4099731 () Bool)

(assert (=> b!3603387 m!4099731))

(declare-fun m!4099733 () Bool)

(assert (=> b!3603379 m!4099733))

(declare-fun m!4099735 () Bool)

(assert (=> b!3603379 m!4099735))

(declare-fun m!4099737 () Bool)

(assert (=> b!3603379 m!4099737))

(declare-fun m!4099739 () Bool)

(assert (=> b!3603379 m!4099739))

(assert (=> b!3603379 m!4099737))

(declare-fun m!4099741 () Bool)

(assert (=> b!3603379 m!4099741))

(declare-fun m!4099743 () Bool)

(assert (=> b!3603379 m!4099743))

(declare-fun m!4099745 () Bool)

(assert (=> b!3603379 m!4099745))

(declare-fun m!4099747 () Bool)

(assert (=> b!3603388 m!4099747))

(declare-fun m!4099749 () Bool)

(assert (=> b!3603409 m!4099749))

(declare-fun m!4099751 () Bool)

(assert (=> b!3603393 m!4099751))

(declare-fun m!4099753 () Bool)

(assert (=> b!3603402 m!4099753))

(declare-fun m!4099755 () Bool)

(assert (=> b!3603402 m!4099755))

(declare-fun m!4099757 () Bool)

(assert (=> b!3603386 m!4099757))

(declare-fun m!4099759 () Bool)

(assert (=> b!3603396 m!4099759))

(declare-fun m!4099761 () Bool)

(assert (=> b!3603396 m!4099761))

(declare-fun m!4099763 () Bool)

(assert (=> b!3603377 m!4099763))

(declare-fun m!4099765 () Bool)

(assert (=> b!3603377 m!4099765))

(declare-fun m!4099767 () Bool)

(assert (=> b!3603377 m!4099767))

(declare-fun m!4099769 () Bool)

(assert (=> b!3603377 m!4099769))

(declare-fun m!4099771 () Bool)

(assert (=> b!3603377 m!4099771))

(declare-fun m!4099773 () Bool)

(assert (=> b!3603377 m!4099773))

(declare-fun m!4099775 () Bool)

(assert (=> b!3603377 m!4099775))

(declare-fun m!4099777 () Bool)

(assert (=> b!3603377 m!4099777))

(assert (=> b!3603377 m!4099775))

(declare-fun m!4099779 () Bool)

(assert (=> b!3603377 m!4099779))

(declare-fun m!4099781 () Bool)

(assert (=> b!3603377 m!4099781))

(declare-fun m!4099783 () Bool)

(assert (=> b!3603377 m!4099783))

(declare-fun m!4099785 () Bool)

(assert (=> b!3603377 m!4099785))

(assert (=> b!3603377 m!4099699))

(declare-fun m!4099787 () Bool)

(assert (=> b!3603377 m!4099787))

(declare-fun m!4099789 () Bool)

(assert (=> b!3603377 m!4099789))

(declare-fun m!4099791 () Bool)

(assert (=> b!3603400 m!4099791))

(declare-fun m!4099793 () Bool)

(assert (=> b!3603401 m!4099793))

(declare-fun m!4099795 () Bool)

(assert (=> b!3603381 m!4099795))

(declare-fun m!4099797 () Bool)

(assert (=> b!3603381 m!4099797))

(declare-fun m!4099799 () Bool)

(assert (=> b!3603381 m!4099799))

(assert (=> b!3603381 m!4099799))

(declare-fun m!4099801 () Bool)

(assert (=> b!3603381 m!4099801))

(declare-fun m!4099803 () Bool)

(assert (=> b!3603394 m!4099803))

(declare-fun m!4099805 () Bool)

(assert (=> b!3603382 m!4099805))

(declare-fun m!4099807 () Bool)

(assert (=> b!3603382 m!4099807))

(declare-fun m!4099809 () Bool)

(assert (=> b!3603382 m!4099809))

(declare-fun m!4099811 () Bool)

(assert (=> b!3603407 m!4099811))

(push 1)

(assert (not b_next!94013))

(assert b_and!262059)

(assert (not b!3603383))

(assert (not b!3603404))

(assert (not b!3603380))

(assert tp_is_empty!17827)

(assert (not b_next!94005))

(assert (not b!3603381))

(assert (not b!3603394))

(assert (not b!3603382))

(assert b_and!262063)

(assert (not b_next!94009))

(assert (not b!3603399))

(assert (not b!3603375))

(assert (not b!3603408))

(assert (not b!3603385))

(assert (not b!3603379))

(assert (not b!3603401))

(assert (not b_next!94001))

(assert (not b!3603387))

(assert (not b!3603393))

(assert (not b!3603400))

(assert (not b_next!94007))

(assert (not b!3603395))

(assert b_and!262061)

(assert (not b!3603377))

(assert b_and!262065)

(assert (not b!3603409))

(assert (not b!3603406))

(assert (not b_next!94015))

(assert (not b!3603396))

(assert (not b!3603384))

(assert (not b_next!94011))

(assert b_and!262051)

(assert (not b!3603388))

(assert (not b_next!94003))

(assert (not start!335172))

(assert b_and!262057)

(assert (not b!3603402))

(assert b_and!262053)

(assert b_and!262055)

(assert (not b!3603391))

(assert (not b!3603386))

(assert (not b!3603378))

(assert (not b!3603407))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!94013))

(assert b_and!262059)

(assert (not b_next!94009))

(assert (not b_next!94001))

(assert (not b_next!94007))

(assert b_and!262061)

(assert b_and!262065)

(assert (not b_next!94015))

(assert (not b_next!94005))

(assert (not b_next!94003))

(assert b_and!262057)

(assert b_and!262063)

(assert (not b_next!94011))

(assert b_and!262051)

(assert b_and!262053)

(assert b_and!262055)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3603529 () Bool)

(declare-fun e!2229952 () Bool)

(declare-fun e!2229951 () Bool)

(assert (=> b!3603529 (= e!2229952 e!2229951)))

(declare-fun c!623581 () Bool)

(assert (=> b!3603529 (= c!623581 (is-IntegerValue!17530 (value!180432 token!511)))))

(declare-fun b!3603530 () Bool)

(declare-fun inv!17 (TokenValue!5843) Bool)

(assert (=> b!3603530 (= e!2229951 (inv!17 (value!180432 token!511)))))

(declare-fun b!3603531 () Bool)

(declare-fun inv!16 (TokenValue!5843) Bool)

(assert (=> b!3603531 (= e!2229952 (inv!16 (value!180432 token!511)))))

(declare-fun b!3603532 () Bool)

(declare-fun e!2229953 () Bool)

(declare-fun inv!15 (TokenValue!5843) Bool)

(assert (=> b!3603532 (= e!2229953 (inv!15 (value!180432 token!511)))))

(declare-fun d!1061628 () Bool)

(declare-fun c!623580 () Bool)

(assert (=> d!1061628 (= c!623580 (is-IntegerValue!17529 (value!180432 token!511)))))

(assert (=> d!1061628 (= (inv!21 (value!180432 token!511)) e!2229952)))

(declare-fun b!3603533 () Bool)

(declare-fun res!1456692 () Bool)

(assert (=> b!3603533 (=> res!1456692 e!2229953)))

(assert (=> b!3603533 (= res!1456692 (not (is-IntegerValue!17531 (value!180432 token!511))))))

(assert (=> b!3603533 (= e!2229951 e!2229953)))

(assert (= (and d!1061628 c!623580) b!3603531))

(assert (= (and d!1061628 (not c!623580)) b!3603529))

(assert (= (and b!3603529 c!623581) b!3603530))

(assert (= (and b!3603529 (not c!623581)) b!3603533))

(assert (= (and b!3603533 (not res!1456692)) b!3603532))

(declare-fun m!4099945 () Bool)

(assert (=> b!3603530 m!4099945))

(declare-fun m!4099947 () Bool)

(assert (=> b!3603531 m!4099947))

(declare-fun m!4099949 () Bool)

(assert (=> b!3603532 m!4099949))

(assert (=> b!3603388 d!1061628))

(declare-fun d!1061630 () Bool)

(declare-fun res!1456699 () Bool)

(declare-fun e!2229958 () Bool)

(assert (=> d!1061630 (=> res!1456699 e!2229958)))

(assert (=> d!1061630 (= res!1456699 (not (is-Cons!37907 rules!3307)))))

(assert (=> d!1061630 (= (sepAndNonSepRulesDisjointChars!1783 rules!3307 rules!3307) e!2229958)))

(declare-fun b!3603538 () Bool)

(declare-fun e!2229959 () Bool)

(assert (=> b!3603538 (= e!2229958 e!2229959)))

(declare-fun res!1456700 () Bool)

(assert (=> b!3603538 (=> (not res!1456700) (not e!2229959))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!812 (Rule!11026 List!38031) Bool)

(assert (=> b!3603538 (= res!1456700 (ruleDisjointCharsFromAllFromOtherType!812 (h!43327 rules!3307) rules!3307))))

(declare-fun b!3603539 () Bool)

(assert (=> b!3603539 (= e!2229959 (sepAndNonSepRulesDisjointChars!1783 rules!3307 (t!292602 rules!3307)))))

(assert (= (and d!1061630 (not res!1456699)) b!3603538))

(assert (= (and b!3603538 res!1456700) b!3603539))

(declare-fun m!4099951 () Bool)

(assert (=> b!3603538 m!4099951))

(declare-fun m!4099953 () Bool)

(assert (=> b!3603539 m!4099953))

(assert (=> b!3603393 d!1061630))

(declare-fun d!1061632 () Bool)

(declare-fun res!1456706 () Bool)

(declare-fun e!2229962 () Bool)

(assert (=> d!1061632 (=> (not res!1456706) (not e!2229962))))

(assert (=> d!1061632 (= res!1456706 (not (isEmpty!22368 (originalCharacters!6327 token!511))))))

(assert (=> d!1061632 (= (inv!51269 token!511) e!2229962)))

(declare-fun b!3603544 () Bool)

(declare-fun res!1456707 () Bool)

(assert (=> b!3603544 (=> (not res!1456707) (not e!2229962))))

(declare-fun dynLambda!16374 (Int TokenValue!5843) BalanceConc!22702)

(assert (=> b!3603544 (= res!1456707 (= (originalCharacters!6327 token!511) (list!13969 (dynLambda!16374 (toChars!7756 (transformation!5613 (rule!8353 token!511))) (value!180432 token!511)))))))

(declare-fun b!3603545 () Bool)

(assert (=> b!3603545 (= e!2229962 (= (size!28886 token!511) (size!28887 (originalCharacters!6327 token!511))))))

(assert (= (and d!1061632 res!1456706) b!3603544))

(assert (= (and b!3603544 res!1456707) b!3603545))

(declare-fun b_lambda!106599 () Bool)

(assert (=> (not b_lambda!106599) (not b!3603544)))

(declare-fun t!292607 () Bool)

(declare-fun tb!206337 () Bool)

(assert (=> (and b!3603390 (= (toChars!7756 (transformation!5613 anOtherTypeRule!33)) (toChars!7756 (transformation!5613 (rule!8353 token!511)))) t!292607) tb!206337))

(declare-fun b!3603550 () Bool)

(declare-fun e!2229965 () Bool)

(declare-fun tp!1102081 () Bool)

(declare-fun inv!51272 (Conc!11544) Bool)

(assert (=> b!3603550 (= e!2229965 (and (inv!51272 (c!623569 (dynLambda!16374 (toChars!7756 (transformation!5613 (rule!8353 token!511))) (value!180432 token!511)))) tp!1102081))))

(declare-fun result!251498 () Bool)

(declare-fun inv!51273 (BalanceConc!22702) Bool)

(assert (=> tb!206337 (= result!251498 (and (inv!51273 (dynLambda!16374 (toChars!7756 (transformation!5613 (rule!8353 token!511))) (value!180432 token!511))) e!2229965))))

(assert (= tb!206337 b!3603550))

(declare-fun m!4099955 () Bool)

(assert (=> b!3603550 m!4099955))

(declare-fun m!4099957 () Bool)

(assert (=> tb!206337 m!4099957))

(assert (=> b!3603544 t!292607))

(declare-fun b_and!262083 () Bool)

(assert (= b_and!262053 (and (=> t!292607 result!251498) b_and!262083)))

(declare-fun t!292609 () Bool)

(declare-fun tb!206339 () Bool)

(assert (=> (and b!3603410 (= (toChars!7756 (transformation!5613 (rule!8353 token!511))) (toChars!7756 (transformation!5613 (rule!8353 token!511)))) t!292609) tb!206339))

(declare-fun result!251502 () Bool)

(assert (= result!251502 result!251498))

(assert (=> b!3603544 t!292609))

(declare-fun b_and!262085 () Bool)

(assert (= b_and!262057 (and (=> t!292609 result!251502) b_and!262085)))

(declare-fun t!292611 () Bool)

(declare-fun tb!206341 () Bool)

(assert (=> (and b!3603389 (= (toChars!7756 (transformation!5613 rule!403)) (toChars!7756 (transformation!5613 (rule!8353 token!511)))) t!292611) tb!206341))

(declare-fun result!251504 () Bool)

(assert (= result!251504 result!251498))

(assert (=> b!3603544 t!292611))

(declare-fun b_and!262087 () Bool)

(assert (= b_and!262061 (and (=> t!292611 result!251504) b_and!262087)))

(declare-fun tb!206343 () Bool)

(declare-fun t!292613 () Bool)

(assert (=> (and b!3603405 (= (toChars!7756 (transformation!5613 (h!43327 rules!3307))) (toChars!7756 (transformation!5613 (rule!8353 token!511)))) t!292613) tb!206343))

(declare-fun result!251506 () Bool)

(assert (= result!251506 result!251498))

(assert (=> b!3603544 t!292613))

(declare-fun b_and!262089 () Bool)

(assert (= b_and!262065 (and (=> t!292613 result!251506) b_and!262089)))

(declare-fun m!4099959 () Bool)

(assert (=> d!1061632 m!4099959))

(declare-fun m!4099961 () Bool)

(assert (=> b!3603544 m!4099961))

(assert (=> b!3603544 m!4099961))

(declare-fun m!4099963 () Bool)

(assert (=> b!3603544 m!4099963))

(declare-fun m!4099965 () Bool)

(assert (=> b!3603545 m!4099965))

(assert (=> start!335172 d!1061632))

(declare-fun d!1061634 () Bool)

(declare-fun fromListB!1926 (List!38030) BalanceConc!22702)

(assert (=> d!1061634 (= (seqFromList!4166 (originalCharacters!6327 (_1!22035 lt!1238496))) (fromListB!1926 (originalCharacters!6327 (_1!22035 lt!1238496))))))

(declare-fun bs!570624 () Bool)

(assert (= bs!570624 d!1061634))

(declare-fun m!4099967 () Bool)

(assert (=> bs!570624 m!4099967))

(assert (=> b!3603391 d!1061634))

(declare-fun b!3603557 () Bool)

(declare-fun e!2229971 () Bool)

(assert (=> b!3603557 (= e!2229971 true)))

(declare-fun d!1061636 () Bool)

(assert (=> d!1061636 e!2229971))

(assert (= d!1061636 b!3603557))

(declare-fun order!20677 () Int)

(declare-fun order!20675 () Int)

(declare-fun lambda!123996 () Int)

(declare-fun dynLambda!16375 (Int Int) Int)

(declare-fun dynLambda!16376 (Int Int) Int)

(assert (=> b!3603557 (< (dynLambda!16375 order!20675 (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) (dynLambda!16376 order!20677 lambda!123996))))

(declare-fun order!20679 () Int)

(declare-fun dynLambda!16377 (Int Int) Int)

(assert (=> b!3603557 (< (dynLambda!16377 order!20679 (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) (dynLambda!16376 order!20677 lambda!123996))))

(declare-fun dynLambda!16378 (Int BalanceConc!22702) TokenValue!5843)

(assert (=> d!1061636 (= (list!13969 (dynLambda!16374 (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) (dynLambda!16378 (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) lt!1238486))) (list!13969 lt!1238486))))

(declare-fun lt!1238599 () Unit!53961)

(declare-fun ForallOf!647 (Int BalanceConc!22702) Unit!53961)

(assert (=> d!1061636 (= lt!1238599 (ForallOf!647 lambda!123996 lt!1238486))))

(assert (=> d!1061636 (= (lemmaSemiInverse!1370 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))) lt!1238486) lt!1238599)))

(declare-fun b_lambda!106603 () Bool)

(assert (=> (not b_lambda!106603) (not d!1061636)))

(declare-fun t!292623 () Bool)

(declare-fun tb!206353 () Bool)

(assert (=> (and b!3603390 (= (toChars!7756 (transformation!5613 anOtherTypeRule!33)) (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292623) tb!206353))

(declare-fun tp!1102082 () Bool)

(declare-fun b!3603558 () Bool)

(declare-fun e!2229972 () Bool)

(assert (=> b!3603558 (= e!2229972 (and (inv!51272 (c!623569 (dynLambda!16374 (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) (dynLambda!16378 (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) lt!1238486)))) tp!1102082))))

(declare-fun result!251518 () Bool)

(assert (=> tb!206353 (= result!251518 (and (inv!51273 (dynLambda!16374 (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) (dynLambda!16378 (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) lt!1238486))) e!2229972))))

(assert (= tb!206353 b!3603558))

(declare-fun m!4099975 () Bool)

(assert (=> b!3603558 m!4099975))

(declare-fun m!4099977 () Bool)

(assert (=> tb!206353 m!4099977))

(assert (=> d!1061636 t!292623))

(declare-fun b_and!262099 () Bool)

(assert (= b_and!262083 (and (=> t!292623 result!251518) b_and!262099)))

(declare-fun tb!206355 () Bool)

(declare-fun t!292625 () Bool)

(assert (=> (and b!3603410 (= (toChars!7756 (transformation!5613 (rule!8353 token!511))) (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292625) tb!206355))

(declare-fun result!251520 () Bool)

(assert (= result!251520 result!251518))

(assert (=> d!1061636 t!292625))

(declare-fun b_and!262101 () Bool)

(assert (= b_and!262085 (and (=> t!292625 result!251520) b_and!262101)))

(declare-fun tb!206357 () Bool)

(declare-fun t!292627 () Bool)

(assert (=> (and b!3603389 (= (toChars!7756 (transformation!5613 rule!403)) (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292627) tb!206357))

(declare-fun result!251522 () Bool)

(assert (= result!251522 result!251518))

(assert (=> d!1061636 t!292627))

(declare-fun b_and!262103 () Bool)

(assert (= b_and!262087 (and (=> t!292627 result!251522) b_and!262103)))

(declare-fun t!292629 () Bool)

(declare-fun tb!206359 () Bool)

(assert (=> (and b!3603405 (= (toChars!7756 (transformation!5613 (h!43327 rules!3307))) (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292629) tb!206359))

(declare-fun result!251524 () Bool)

(assert (= result!251524 result!251518))

(assert (=> d!1061636 t!292629))

(declare-fun b_and!262105 () Bool)

(assert (= b_and!262089 (and (=> t!292629 result!251524) b_and!262105)))

(declare-fun b_lambda!106605 () Bool)

(assert (=> (not b_lambda!106605) (not d!1061636)))

(declare-fun tb!206361 () Bool)

(declare-fun t!292631 () Bool)

(assert (=> (and b!3603390 (= (toValue!7897 (transformation!5613 anOtherTypeRule!33)) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292631) tb!206361))

(declare-fun result!251526 () Bool)

(assert (=> tb!206361 (= result!251526 (inv!21 (dynLambda!16378 (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) lt!1238486)))))

(declare-fun m!4099979 () Bool)

(assert (=> tb!206361 m!4099979))

(assert (=> d!1061636 t!292631))

(declare-fun b_and!262107 () Bool)

(assert (= b_and!262051 (and (=> t!292631 result!251526) b_and!262107)))

(declare-fun t!292633 () Bool)

(declare-fun tb!206363 () Bool)

(assert (=> (and b!3603410 (= (toValue!7897 (transformation!5613 (rule!8353 token!511))) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292633) tb!206363))

(declare-fun result!251530 () Bool)

(assert (= result!251530 result!251526))

(assert (=> d!1061636 t!292633))

(declare-fun b_and!262109 () Bool)

(assert (= b_and!262055 (and (=> t!292633 result!251530) b_and!262109)))

(declare-fun tb!206365 () Bool)

(declare-fun t!292635 () Bool)

(assert (=> (and b!3603389 (= (toValue!7897 (transformation!5613 rule!403)) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292635) tb!206365))

(declare-fun result!251532 () Bool)

(assert (= result!251532 result!251526))

(assert (=> d!1061636 t!292635))

(declare-fun b_and!262111 () Bool)

(assert (= b_and!262059 (and (=> t!292635 result!251532) b_and!262111)))

(declare-fun t!292637 () Bool)

(declare-fun tb!206367 () Bool)

(assert (=> (and b!3603405 (= (toValue!7897 (transformation!5613 (h!43327 rules!3307))) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292637) tb!206367))

(declare-fun result!251534 () Bool)

(assert (= result!251534 result!251526))

(assert (=> d!1061636 t!292637))

(declare-fun b_and!262113 () Bool)

(assert (= b_and!262063 (and (=> t!292637 result!251534) b_and!262113)))

(declare-fun m!4099981 () Bool)

(assert (=> d!1061636 m!4099981))

(declare-fun m!4099983 () Bool)

(assert (=> d!1061636 m!4099983))

(assert (=> d!1061636 m!4099767))

(declare-fun m!4099985 () Bool)

(assert (=> d!1061636 m!4099985))

(assert (=> d!1061636 m!4099985))

(assert (=> d!1061636 m!4099981))

(declare-fun m!4099987 () Bool)

(assert (=> d!1061636 m!4099987))

(assert (=> b!3603391 d!1061636))

(declare-fun b!3603567 () Bool)

(declare-fun e!2229980 () Bool)

(assert (=> b!3603567 (= e!2229980 true)))

(declare-fun d!1061644 () Bool)

(assert (=> d!1061644 e!2229980))

(assert (= d!1061644 b!3603567))

(declare-fun order!20681 () Int)

(declare-fun lambda!123999 () Int)

(declare-fun dynLambda!16379 (Int Int) Int)

(assert (=> b!3603567 (< (dynLambda!16375 order!20675 (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) (dynLambda!16379 order!20681 lambda!123999))))

(assert (=> b!3603567 (< (dynLambda!16377 order!20679 (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) (dynLambda!16379 order!20681 lambda!123999))))

(assert (=> d!1061644 (= (dynLambda!16378 (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) lt!1238486) (dynLambda!16378 (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) (seqFromList!4166 (originalCharacters!6327 (_1!22035 lt!1238496)))))))

(declare-fun lt!1238602 () Unit!53961)

(declare-fun Forall2of!305 (Int BalanceConc!22702 BalanceConc!22702) Unit!53961)

(assert (=> d!1061644 (= lt!1238602 (Forall2of!305 lambda!123999 lt!1238486 (seqFromList!4166 (originalCharacters!6327 (_1!22035 lt!1238496)))))))

(assert (=> d!1061644 (= (list!13969 lt!1238486) (list!13969 (seqFromList!4166 (originalCharacters!6327 (_1!22035 lt!1238496)))))))

(assert (=> d!1061644 (= (lemmaEqSameImage!804 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))) lt!1238486 (seqFromList!4166 (originalCharacters!6327 (_1!22035 lt!1238496)))) lt!1238602)))

(declare-fun b_lambda!106607 () Bool)

(assert (=> (not b_lambda!106607) (not d!1061644)))

(assert (=> d!1061644 t!292631))

(declare-fun b_and!262115 () Bool)

(assert (= b_and!262107 (and (=> t!292631 result!251526) b_and!262115)))

(assert (=> d!1061644 t!292633))

(declare-fun b_and!262117 () Bool)

(assert (= b_and!262109 (and (=> t!292633 result!251530) b_and!262117)))

(assert (=> d!1061644 t!292635))

(declare-fun b_and!262119 () Bool)

(assert (= b_and!262111 (and (=> t!292635 result!251532) b_and!262119)))

(assert (=> d!1061644 t!292637))

(declare-fun b_and!262121 () Bool)

(assert (= b_and!262113 (and (=> t!292637 result!251534) b_and!262121)))

(declare-fun b_lambda!106609 () Bool)

(assert (=> (not b_lambda!106609) (not d!1061644)))

(declare-fun t!292639 () Bool)

(declare-fun tb!206369 () Bool)

(assert (=> (and b!3603390 (= (toValue!7897 (transformation!5613 anOtherTypeRule!33)) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292639) tb!206369))

(declare-fun result!251536 () Bool)

(assert (=> tb!206369 (= result!251536 (inv!21 (dynLambda!16378 (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) (seqFromList!4166 (originalCharacters!6327 (_1!22035 lt!1238496))))))))

(declare-fun m!4099989 () Bool)

(assert (=> tb!206369 m!4099989))

(assert (=> d!1061644 t!292639))

(declare-fun b_and!262123 () Bool)

(assert (= b_and!262115 (and (=> t!292639 result!251536) b_and!262123)))

(declare-fun t!292641 () Bool)

(declare-fun tb!206371 () Bool)

(assert (=> (and b!3603410 (= (toValue!7897 (transformation!5613 (rule!8353 token!511))) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292641) tb!206371))

(declare-fun result!251538 () Bool)

(assert (= result!251538 result!251536))

(assert (=> d!1061644 t!292641))

(declare-fun b_and!262125 () Bool)

(assert (= b_and!262117 (and (=> t!292641 result!251538) b_and!262125)))

(declare-fun tb!206373 () Bool)

(declare-fun t!292643 () Bool)

(assert (=> (and b!3603389 (= (toValue!7897 (transformation!5613 rule!403)) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292643) tb!206373))

(declare-fun result!251540 () Bool)

(assert (= result!251540 result!251536))

(assert (=> d!1061644 t!292643))

(declare-fun b_and!262127 () Bool)

(assert (= b_and!262119 (and (=> t!292643 result!251540) b_and!262127)))

(declare-fun tb!206375 () Bool)

(declare-fun t!292645 () Bool)

(assert (=> (and b!3603405 (= (toValue!7897 (transformation!5613 (h!43327 rules!3307))) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292645) tb!206375))

(declare-fun result!251542 () Bool)

(assert (= result!251542 result!251536))

(assert (=> d!1061644 t!292645))

(declare-fun b_and!262129 () Bool)

(assert (= b_and!262121 (and (=> t!292645 result!251542) b_and!262129)))

(assert (=> d!1061644 m!4099767))

(assert (=> d!1061644 m!4099713))

(declare-fun m!4099991 () Bool)

(assert (=> d!1061644 m!4099991))

(assert (=> d!1061644 m!4099713))

(declare-fun m!4099993 () Bool)

(assert (=> d!1061644 m!4099993))

(assert (=> d!1061644 m!4099713))

(declare-fun m!4099995 () Bool)

(assert (=> d!1061644 m!4099995))

(assert (=> d!1061644 m!4099985))

(assert (=> b!3603391 d!1061644))

(declare-fun d!1061646 () Bool)

(declare-fun lt!1238605 () Int)

(assert (=> d!1061646 (= lt!1238605 (size!28887 (list!13969 lt!1238486)))))

(declare-fun size!28892 (Conc!11544) Int)

(assert (=> d!1061646 (= lt!1238605 (size!28892 (c!623569 lt!1238486)))))

(assert (=> d!1061646 (= (size!28888 lt!1238486) lt!1238605)))

(declare-fun bs!570626 () Bool)

(assert (= bs!570626 d!1061646))

(assert (=> bs!570626 m!4099767))

(assert (=> bs!570626 m!4099767))

(declare-fun m!4099997 () Bool)

(assert (=> bs!570626 m!4099997))

(declare-fun m!4099999 () Bool)

(assert (=> bs!570626 m!4099999))

(assert (=> b!3603391 d!1061646))

(declare-fun d!1061648 () Bool)

(assert (=> d!1061648 (= (size!28886 (_1!22035 lt!1238496)) (size!28887 (originalCharacters!6327 (_1!22035 lt!1238496))))))

(declare-fun Unit!53970 () Unit!53961)

(assert (=> d!1061648 (= (lemmaCharactersSize!666 (_1!22035 lt!1238496)) Unit!53970)))

(declare-fun bs!570627 () Bool)

(assert (= bs!570627 d!1061648))

(declare-fun m!4100001 () Bool)

(assert (=> bs!570627 m!4100001))

(assert (=> b!3603391 d!1061648))

(declare-fun d!1061650 () Bool)

(assert (=> d!1061650 (= (apply!9119 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))) lt!1238486) (dynLambda!16378 (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) lt!1238486))))

(declare-fun b_lambda!106611 () Bool)

(assert (=> (not b_lambda!106611) (not d!1061650)))

(assert (=> d!1061650 t!292631))

(declare-fun b_and!262131 () Bool)

(assert (= b_and!262123 (and (=> t!292631 result!251526) b_and!262131)))

(assert (=> d!1061650 t!292633))

(declare-fun b_and!262133 () Bool)

(assert (= b_and!262125 (and (=> t!292633 result!251530) b_and!262133)))

(assert (=> d!1061650 t!292635))

(declare-fun b_and!262135 () Bool)

(assert (= b_and!262127 (and (=> t!292635 result!251532) b_and!262135)))

(assert (=> d!1061650 t!292637))

(declare-fun b_and!262137 () Bool)

(assert (= b_and!262129 (and (=> t!292637 result!251534) b_and!262137)))

(assert (=> d!1061650 m!4099985))

(assert (=> b!3603391 d!1061650))

(declare-fun d!1061652 () Bool)

(assert (=> d!1061652 (= (inv!51265 (tag!6309 (rule!8353 token!511))) (= (mod (str.len (value!180431 (tag!6309 (rule!8353 token!511)))) 2) 0))))

(assert (=> b!3603385 d!1061652))

(declare-fun d!1061654 () Bool)

(declare-fun res!1456713 () Bool)

(declare-fun e!2229984 () Bool)

(assert (=> d!1061654 (=> (not res!1456713) (not e!2229984))))

(declare-fun semiInverseModEq!2386 (Int Int) Bool)

(assert (=> d!1061654 (= res!1456713 (semiInverseModEq!2386 (toChars!7756 (transformation!5613 (rule!8353 token!511))) (toValue!7897 (transformation!5613 (rule!8353 token!511)))))))

(assert (=> d!1061654 (= (inv!51268 (transformation!5613 (rule!8353 token!511))) e!2229984)))

(declare-fun b!3603570 () Bool)

(declare-fun equivClasses!2285 (Int Int) Bool)

(assert (=> b!3603570 (= e!2229984 (equivClasses!2285 (toChars!7756 (transformation!5613 (rule!8353 token!511))) (toValue!7897 (transformation!5613 (rule!8353 token!511)))))))

(assert (= (and d!1061654 res!1456713) b!3603570))

(declare-fun m!4100003 () Bool)

(assert (=> d!1061654 m!4100003))

(declare-fun m!4100005 () Bool)

(assert (=> b!3603570 m!4100005))

(assert (=> b!3603385 d!1061654))

(declare-fun d!1061656 () Bool)

(assert (=> d!1061656 (= (inv!51265 (tag!6309 anOtherTypeRule!33)) (= (mod (str.len (value!180431 (tag!6309 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3603406 d!1061656))

(declare-fun d!1061658 () Bool)

(declare-fun res!1456714 () Bool)

(declare-fun e!2229985 () Bool)

(assert (=> d!1061658 (=> (not res!1456714) (not e!2229985))))

(assert (=> d!1061658 (= res!1456714 (semiInverseModEq!2386 (toChars!7756 (transformation!5613 anOtherTypeRule!33)) (toValue!7897 (transformation!5613 anOtherTypeRule!33))))))

(assert (=> d!1061658 (= (inv!51268 (transformation!5613 anOtherTypeRule!33)) e!2229985)))

(declare-fun b!3603571 () Bool)

(assert (=> b!3603571 (= e!2229985 (equivClasses!2285 (toChars!7756 (transformation!5613 anOtherTypeRule!33)) (toValue!7897 (transformation!5613 anOtherTypeRule!33))))))

(assert (= (and d!1061658 res!1456714) b!3603571))

(declare-fun m!4100007 () Bool)

(assert (=> d!1061658 m!4100007))

(declare-fun m!4100009 () Bool)

(assert (=> b!3603571 m!4100009))

(assert (=> b!3603406 d!1061658))

(declare-fun d!1061660 () Bool)

(assert (=> d!1061660 (= (isEmpty!22368 suffix!1395) (is-Nil!37906 suffix!1395))))

(assert (=> b!3603384 d!1061660))

(declare-fun d!1061662 () Bool)

(declare-fun lt!1238608 () Bool)

(declare-fun content!5414 (List!38030) (Set C!20930))

(assert (=> d!1061662 (= lt!1238608 (set.member lt!1238485 (content!5414 lt!1238489)))))

(declare-fun e!2229990 () Bool)

(assert (=> d!1061662 (= lt!1238608 e!2229990)))

(declare-fun res!1456720 () Bool)

(assert (=> d!1061662 (=> (not res!1456720) (not e!2229990))))

(assert (=> d!1061662 (= res!1456720 (is-Cons!37906 lt!1238489))))

(assert (=> d!1061662 (= (contains!7290 lt!1238489 lt!1238485) lt!1238608)))

(declare-fun b!3603576 () Bool)

(declare-fun e!2229991 () Bool)

(assert (=> b!3603576 (= e!2229990 e!2229991)))

(declare-fun res!1456719 () Bool)

(assert (=> b!3603576 (=> res!1456719 e!2229991)))

(assert (=> b!3603576 (= res!1456719 (= (h!43326 lt!1238489) lt!1238485))))

(declare-fun b!3603577 () Bool)

(assert (=> b!3603577 (= e!2229991 (contains!7290 (t!292601 lt!1238489) lt!1238485))))

(assert (= (and d!1061662 res!1456720) b!3603576))

(assert (= (and b!3603576 (not res!1456719)) b!3603577))

(declare-fun m!4100011 () Bool)

(assert (=> d!1061662 m!4100011))

(declare-fun m!4100013 () Bool)

(assert (=> d!1061662 m!4100013))

(declare-fun m!4100015 () Bool)

(assert (=> b!3603577 m!4100015))

(assert (=> b!3603383 d!1061662))

(declare-fun d!1061664 () Bool)

(assert (=> d!1061664 (= (head!7561 suffix!1395) (h!43326 suffix!1395))))

(assert (=> b!3603383 d!1061664))

(declare-fun bm!260528 () Bool)

(declare-fun call!260533 () List!38030)

(declare-fun c!623595 () Bool)

(assert (=> bm!260528 (= call!260533 (usedCharacters!827 (ite c!623595 (regTwo!21257 (regex!5613 rule!403)) (regOne!21256 (regex!5613 rule!403)))))))

(declare-fun d!1061666 () Bool)

(declare-fun c!623593 () Bool)

(assert (=> d!1061666 (= c!623593 (or (is-EmptyExpr!10372 (regex!5613 rule!403)) (is-EmptyLang!10372 (regex!5613 rule!403))))))

(declare-fun e!2230002 () List!38030)

(assert (=> d!1061666 (= (usedCharacters!827 (regex!5613 rule!403)) e!2230002)))

(declare-fun b!3603594 () Bool)

(declare-fun e!2230001 () List!38030)

(declare-fun call!260535 () List!38030)

(assert (=> b!3603594 (= e!2230001 call!260535)))

(declare-fun b!3603595 () Bool)

(declare-fun e!2230003 () List!38030)

(assert (=> b!3603595 (= e!2230002 e!2230003)))

(declare-fun c!623594 () Bool)

(assert (=> b!3603595 (= c!623594 (is-ElementMatch!10372 (regex!5613 rule!403)))))

(declare-fun bm!260529 () Bool)

(declare-fun call!260536 () List!38030)

(declare-fun call!260534 () List!38030)

(assert (=> bm!260529 (= call!260536 call!260534)))

(declare-fun b!3603596 () Bool)

(assert (=> b!3603596 (= e!2230003 (Cons!37906 (c!623568 (regex!5613 rule!403)) Nil!37906))))

(declare-fun b!3603597 () Bool)

(declare-fun e!2230000 () List!38030)

(assert (=> b!3603597 (= e!2230000 call!260534)))

(declare-fun b!3603598 () Bool)

(assert (=> b!3603598 (= e!2230002 Nil!37906)))

(declare-fun b!3603599 () Bool)

(assert (=> b!3603599 (= e!2230001 call!260535)))

(declare-fun c!623592 () Bool)

(declare-fun bm!260530 () Bool)

(assert (=> bm!260530 (= call!260534 (usedCharacters!827 (ite c!623592 (reg!10701 (regex!5613 rule!403)) (ite c!623595 (regOne!21257 (regex!5613 rule!403)) (regTwo!21256 (regex!5613 rule!403))))))))

(declare-fun b!3603600 () Bool)

(assert (=> b!3603600 (= e!2230000 e!2230001)))

(assert (=> b!3603600 (= c!623595 (is-Union!10372 (regex!5613 rule!403)))))

(declare-fun bm!260531 () Bool)

(assert (=> bm!260531 (= call!260535 (++!9429 (ite c!623595 call!260536 call!260533) (ite c!623595 call!260533 call!260536)))))

(declare-fun b!3603601 () Bool)

(assert (=> b!3603601 (= c!623592 (is-Star!10372 (regex!5613 rule!403)))))

(assert (=> b!3603601 (= e!2230003 e!2230000)))

(assert (= (and d!1061666 c!623593) b!3603598))

(assert (= (and d!1061666 (not c!623593)) b!3603595))

(assert (= (and b!3603595 c!623594) b!3603596))

(assert (= (and b!3603595 (not c!623594)) b!3603601))

(assert (= (and b!3603601 c!623592) b!3603597))

(assert (= (and b!3603601 (not c!623592)) b!3603600))

(assert (= (and b!3603600 c!623595) b!3603594))

(assert (= (and b!3603600 (not c!623595)) b!3603599))

(assert (= (or b!3603594 b!3603599) bm!260529))

(assert (= (or b!3603594 b!3603599) bm!260528))

(assert (= (or b!3603594 b!3603599) bm!260531))

(assert (= (or b!3603597 bm!260529) bm!260530))

(declare-fun m!4100017 () Bool)

(assert (=> bm!260528 m!4100017))

(declare-fun m!4100019 () Bool)

(assert (=> bm!260530 m!4100019))

(declare-fun m!4100021 () Bool)

(assert (=> bm!260531 m!4100021))

(assert (=> b!3603383 d!1061666))

(declare-fun d!1061668 () Bool)

(assert (=> d!1061668 (= (get!12273 lt!1238499) (v!37578 lt!1238499))))

(assert (=> b!3603409 d!1061668))

(declare-fun d!1061670 () Bool)

(assert (=> d!1061670 (= (inv!51265 (tag!6309 (h!43327 rules!3307))) (= (mod (str.len (value!180431 (tag!6309 (h!43327 rules!3307)))) 2) 0))))

(assert (=> b!3603387 d!1061670))

(declare-fun d!1061672 () Bool)

(declare-fun res!1456721 () Bool)

(declare-fun e!2230004 () Bool)

(assert (=> d!1061672 (=> (not res!1456721) (not e!2230004))))

(assert (=> d!1061672 (= res!1456721 (semiInverseModEq!2386 (toChars!7756 (transformation!5613 (h!43327 rules!3307))) (toValue!7897 (transformation!5613 (h!43327 rules!3307)))))))

(assert (=> d!1061672 (= (inv!51268 (transformation!5613 (h!43327 rules!3307))) e!2230004)))

(declare-fun b!3603602 () Bool)

(assert (=> b!3603602 (= e!2230004 (equivClasses!2285 (toChars!7756 (transformation!5613 (h!43327 rules!3307))) (toValue!7897 (transformation!5613 (h!43327 rules!3307)))))))

(assert (= (and d!1061672 res!1456721) b!3603602))

(declare-fun m!4100023 () Bool)

(assert (=> d!1061672 m!4100023))

(declare-fun m!4100025 () Bool)

(assert (=> b!3603602 m!4100025))

(assert (=> b!3603387 d!1061672))

(declare-fun b!3603631 () Bool)

(declare-fun e!2230024 () Bool)

(declare-fun derivativeStep!3137 (Regex!10372 C!20930) Regex!10372)

(declare-fun tail!5586 (List!38030) List!38030)

(assert (=> b!3603631 (= e!2230024 (matchR!4941 (derivativeStep!3137 (regex!5613 (rule!8353 (_1!22035 lt!1238496))) (head!7561 lt!1238490)) (tail!5586 lt!1238490)))))

(declare-fun b!3603632 () Bool)

(declare-fun e!2230019 () Bool)

(assert (=> b!3603632 (= e!2230019 (not (= (head!7561 lt!1238490) (c!623568 (regex!5613 (rule!8353 (_1!22035 lt!1238496)))))))))

(declare-fun b!3603633 () Bool)

(declare-fun res!1456744 () Bool)

(declare-fun e!2230022 () Bool)

(assert (=> b!3603633 (=> (not res!1456744) (not e!2230022))))

(declare-fun call!260539 () Bool)

(assert (=> b!3603633 (= res!1456744 (not call!260539))))

(declare-fun d!1061674 () Bool)

(declare-fun e!2230025 () Bool)

(assert (=> d!1061674 e!2230025))

(declare-fun c!623603 () Bool)

(assert (=> d!1061674 (= c!623603 (is-EmptyExpr!10372 (regex!5613 (rule!8353 (_1!22035 lt!1238496)))))))

(declare-fun lt!1238611 () Bool)

(assert (=> d!1061674 (= lt!1238611 e!2230024)))

(declare-fun c!623604 () Bool)

(assert (=> d!1061674 (= c!623604 (isEmpty!22368 lt!1238490))))

(declare-fun validRegex!4748 (Regex!10372) Bool)

(assert (=> d!1061674 (validRegex!4748 (regex!5613 (rule!8353 (_1!22035 lt!1238496))))))

(assert (=> d!1061674 (= (matchR!4941 (regex!5613 (rule!8353 (_1!22035 lt!1238496))) lt!1238490) lt!1238611)))

(declare-fun b!3603634 () Bool)

(declare-fun e!2230020 () Bool)

(assert (=> b!3603634 (= e!2230020 (not lt!1238611))))

(declare-fun b!3603635 () Bool)

(declare-fun res!1456741 () Bool)

(declare-fun e!2230023 () Bool)

(assert (=> b!3603635 (=> res!1456741 e!2230023)))

(assert (=> b!3603635 (= res!1456741 e!2230022)))

(declare-fun res!1456745 () Bool)

(assert (=> b!3603635 (=> (not res!1456745) (not e!2230022))))

(assert (=> b!3603635 (= res!1456745 lt!1238611)))

(declare-fun b!3603636 () Bool)

(declare-fun nullable!3588 (Regex!10372) Bool)

(assert (=> b!3603636 (= e!2230024 (nullable!3588 (regex!5613 (rule!8353 (_1!22035 lt!1238496)))))))

(declare-fun b!3603637 () Bool)

(assert (=> b!3603637 (= e!2230025 e!2230020)))

(declare-fun c!623602 () Bool)

(assert (=> b!3603637 (= c!623602 (is-EmptyLang!10372 (regex!5613 (rule!8353 (_1!22035 lt!1238496)))))))

(declare-fun b!3603638 () Bool)

(declare-fun e!2230021 () Bool)

(assert (=> b!3603638 (= e!2230023 e!2230021)))

(declare-fun res!1456743 () Bool)

(assert (=> b!3603638 (=> (not res!1456743) (not e!2230021))))

(assert (=> b!3603638 (= res!1456743 (not lt!1238611))))

(declare-fun b!3603639 () Bool)

(assert (=> b!3603639 (= e!2230022 (= (head!7561 lt!1238490) (c!623568 (regex!5613 (rule!8353 (_1!22035 lt!1238496))))))))

(declare-fun b!3603640 () Bool)

(assert (=> b!3603640 (= e!2230021 e!2230019)))

(declare-fun res!1456740 () Bool)

(assert (=> b!3603640 (=> res!1456740 e!2230019)))

(assert (=> b!3603640 (= res!1456740 call!260539)))

(declare-fun b!3603641 () Bool)

(declare-fun res!1456738 () Bool)

(assert (=> b!3603641 (=> res!1456738 e!2230019)))

(assert (=> b!3603641 (= res!1456738 (not (isEmpty!22368 (tail!5586 lt!1238490))))))

(declare-fun b!3603642 () Bool)

(declare-fun res!1456742 () Bool)

(assert (=> b!3603642 (=> (not res!1456742) (not e!2230022))))

(assert (=> b!3603642 (= res!1456742 (isEmpty!22368 (tail!5586 lt!1238490)))))

(declare-fun b!3603643 () Bool)

(assert (=> b!3603643 (= e!2230025 (= lt!1238611 call!260539))))

(declare-fun bm!260534 () Bool)

(assert (=> bm!260534 (= call!260539 (isEmpty!22368 lt!1238490))))

(declare-fun b!3603644 () Bool)

(declare-fun res!1456739 () Bool)

(assert (=> b!3603644 (=> res!1456739 e!2230023)))

(assert (=> b!3603644 (= res!1456739 (not (is-ElementMatch!10372 (regex!5613 (rule!8353 (_1!22035 lt!1238496))))))))

(assert (=> b!3603644 (= e!2230020 e!2230023)))

(assert (= (and d!1061674 c!623604) b!3603636))

(assert (= (and d!1061674 (not c!623604)) b!3603631))

(assert (= (and d!1061674 c!623603) b!3603643))

(assert (= (and d!1061674 (not c!623603)) b!3603637))

(assert (= (and b!3603637 c!623602) b!3603634))

(assert (= (and b!3603637 (not c!623602)) b!3603644))

(assert (= (and b!3603644 (not res!1456739)) b!3603635))

(assert (= (and b!3603635 res!1456745) b!3603633))

(assert (= (and b!3603633 res!1456744) b!3603642))

(assert (= (and b!3603642 res!1456742) b!3603639))

(assert (= (and b!3603635 (not res!1456741)) b!3603638))

(assert (= (and b!3603638 res!1456743) b!3603640))

(assert (= (and b!3603640 (not res!1456740)) b!3603641))

(assert (= (and b!3603641 (not res!1456738)) b!3603632))

(assert (= (or b!3603643 b!3603633 b!3603640) bm!260534))

(declare-fun m!4100027 () Bool)

(assert (=> b!3603641 m!4100027))

(assert (=> b!3603641 m!4100027))

(declare-fun m!4100029 () Bool)

(assert (=> b!3603641 m!4100029))

(assert (=> b!3603639 m!4099761))

(assert (=> b!3603631 m!4099761))

(assert (=> b!3603631 m!4099761))

(declare-fun m!4100031 () Bool)

(assert (=> b!3603631 m!4100031))

(assert (=> b!3603631 m!4100027))

(assert (=> b!3603631 m!4100031))

(assert (=> b!3603631 m!4100027))

(declare-fun m!4100033 () Bool)

(assert (=> b!3603631 m!4100033))

(declare-fun m!4100035 () Bool)

(assert (=> bm!260534 m!4100035))

(assert (=> b!3603632 m!4099761))

(assert (=> b!3603642 m!4100027))

(assert (=> b!3603642 m!4100027))

(assert (=> b!3603642 m!4100029))

(declare-fun m!4100037 () Bool)

(assert (=> b!3603636 m!4100037))

(assert (=> d!1061674 m!4100035))

(declare-fun m!4100039 () Bool)

(assert (=> d!1061674 m!4100039))

(assert (=> b!3603386 d!1061674))

(declare-fun d!1061676 () Bool)

(assert (=> d!1061676 (not (matchR!4941 (regex!5613 rule!403) lt!1238483))))

(declare-fun lt!1238614 () Unit!53961)

(declare-fun choose!21020 (Regex!10372 List!38030 C!20930) Unit!53961)

(assert (=> d!1061676 (= lt!1238614 (choose!21020 (regex!5613 rule!403) lt!1238483 lt!1238497))))

(assert (=> d!1061676 (validRegex!4748 (regex!5613 rule!403))))

(assert (=> d!1061676 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!597 (regex!5613 rule!403) lt!1238483 lt!1238497) lt!1238614)))

(declare-fun bs!570628 () Bool)

(assert (= bs!570628 d!1061676))

(assert (=> bs!570628 m!4099805))

(declare-fun m!4100041 () Bool)

(assert (=> bs!570628 m!4100041))

(declare-fun m!4100043 () Bool)

(assert (=> bs!570628 m!4100043))

(assert (=> b!3603407 d!1061676))

(declare-fun d!1061678 () Bool)

(declare-fun lt!1238615 () Bool)

(assert (=> d!1061678 (= lt!1238615 (set.member lt!1238497 (content!5414 lt!1238483)))))

(declare-fun e!2230026 () Bool)

(assert (=> d!1061678 (= lt!1238615 e!2230026)))

(declare-fun res!1456747 () Bool)

(assert (=> d!1061678 (=> (not res!1456747) (not e!2230026))))

(assert (=> d!1061678 (= res!1456747 (is-Cons!37906 lt!1238483))))

(assert (=> d!1061678 (= (contains!7290 lt!1238483 lt!1238497) lt!1238615)))

(declare-fun b!3603645 () Bool)

(declare-fun e!2230027 () Bool)

(assert (=> b!3603645 (= e!2230026 e!2230027)))

(declare-fun res!1456746 () Bool)

(assert (=> b!3603645 (=> res!1456746 e!2230027)))

(assert (=> b!3603645 (= res!1456746 (= (h!43326 lt!1238483) lt!1238497))))

(declare-fun b!3603646 () Bool)

(assert (=> b!3603646 (= e!2230027 (contains!7290 (t!292601 lt!1238483) lt!1238497))))

(assert (= (and d!1061678 res!1456747) b!3603645))

(assert (= (and b!3603645 (not res!1456746)) b!3603646))

(declare-fun m!4100045 () Bool)

(assert (=> d!1061678 m!4100045))

(declare-fun m!4100047 () Bool)

(assert (=> d!1061678 m!4100047))

(declare-fun m!4100049 () Bool)

(assert (=> b!3603646 m!4100049))

(assert (=> b!3603401 d!1061678))

(declare-fun d!1061680 () Bool)

(assert (=> d!1061680 (= (_2!22035 lt!1238496) lt!1238484)))

(declare-fun lt!1238618 () Unit!53961)

(declare-fun choose!21021 (List!38030 List!38030 List!38030 List!38030 List!38030) Unit!53961)

(assert (=> d!1061680 (= lt!1238618 (choose!21021 lt!1238490 (_2!22035 lt!1238496) lt!1238490 lt!1238484 lt!1238494))))

(assert (=> d!1061680 (isPrefix!2976 lt!1238490 lt!1238494)))

(assert (=> d!1061680 (= (lemmaSamePrefixThenSameSuffix!1331 lt!1238490 (_2!22035 lt!1238496) lt!1238490 lt!1238484 lt!1238494) lt!1238618)))

(declare-fun bs!570629 () Bool)

(assert (= bs!570629 d!1061680))

(declare-fun m!4100051 () Bool)

(assert (=> bs!570629 m!4100051))

(assert (=> bs!570629 m!4099789))

(assert (=> b!3603379 d!1061680))

(declare-fun d!1061682 () Bool)

(declare-fun e!2230038 () Bool)

(assert (=> d!1061682 e!2230038))

(declare-fun res!1456768 () Bool)

(assert (=> d!1061682 (=> res!1456768 e!2230038)))

(declare-fun lt!1238632 () Option!7857)

(declare-fun isEmpty!22372 (Option!7857) Bool)

(assert (=> d!1061682 (= res!1456768 (isEmpty!22372 lt!1238632))))

(declare-fun e!2230039 () Option!7857)

(assert (=> d!1061682 (= lt!1238632 e!2230039)))

(declare-fun c!623608 () Bool)

(declare-datatypes ((tuple2!37806 0))(
  ( (tuple2!37807 (_1!22037 List!38030) (_2!22037 List!38030)) )
))
(declare-fun lt!1238631 () tuple2!37806)

(assert (=> d!1061682 (= c!623608 (isEmpty!22368 (_1!22037 lt!1238631)))))

(declare-fun findLongestMatch!909 (Regex!10372 List!38030) tuple2!37806)

(assert (=> d!1061682 (= lt!1238631 (findLongestMatch!909 (regex!5613 (rule!8353 (_1!22035 lt!1238496))) lt!1238494))))

(assert (=> d!1061682 (ruleValid!1878 thiss!23823 (rule!8353 (_1!22035 lt!1238496)))))

(assert (=> d!1061682 (= (maxPrefixOneRule!1880 thiss!23823 (rule!8353 (_1!22035 lt!1238496)) lt!1238494) lt!1238632)))

(declare-fun b!3603665 () Bool)

(declare-fun res!1456767 () Bool)

(declare-fun e!2230037 () Bool)

(assert (=> b!3603665 (=> (not res!1456767) (not e!2230037))))

(assert (=> b!3603665 (= res!1456767 (= (++!9429 (list!13969 (charsOf!3627 (_1!22035 (get!12273 lt!1238632)))) (_2!22035 (get!12273 lt!1238632))) lt!1238494))))

(declare-fun b!3603666 () Bool)

(assert (=> b!3603666 (= e!2230038 e!2230037)))

(declare-fun res!1456765 () Bool)

(assert (=> b!3603666 (=> (not res!1456765) (not e!2230037))))

(assert (=> b!3603666 (= res!1456765 (matchR!4941 (regex!5613 (rule!8353 (_1!22035 lt!1238496))) (list!13969 (charsOf!3627 (_1!22035 (get!12273 lt!1238632))))))))

(declare-fun b!3603667 () Bool)

(assert (=> b!3603667 (= e!2230037 (= (size!28886 (_1!22035 (get!12273 lt!1238632))) (size!28887 (originalCharacters!6327 (_1!22035 (get!12273 lt!1238632))))))))

(declare-fun b!3603668 () Bool)

(declare-fun res!1456766 () Bool)

(assert (=> b!3603668 (=> (not res!1456766) (not e!2230037))))

(assert (=> b!3603668 (= res!1456766 (= (value!180432 (_1!22035 (get!12273 lt!1238632))) (apply!9119 (transformation!5613 (rule!8353 (_1!22035 (get!12273 lt!1238632)))) (seqFromList!4166 (originalCharacters!6327 (_1!22035 (get!12273 lt!1238632)))))))))

(declare-fun b!3603669 () Bool)

(assert (=> b!3603669 (= e!2230039 None!7856)))

(declare-fun b!3603670 () Bool)

(assert (=> b!3603670 (= e!2230039 (Some!7856 (tuple2!37803 (Token!10593 (apply!9119 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))) (seqFromList!4166 (_1!22037 lt!1238631))) (rule!8353 (_1!22035 lt!1238496)) (size!28888 (seqFromList!4166 (_1!22037 lt!1238631))) (_1!22037 lt!1238631)) (_2!22037 lt!1238631))))))

(declare-fun lt!1238629 () Unit!53961)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!967 (Regex!10372 List!38030) Unit!53961)

(assert (=> b!3603670 (= lt!1238629 (longestMatchIsAcceptedByMatchOrIsEmpty!967 (regex!5613 (rule!8353 (_1!22035 lt!1238496))) lt!1238494))))

(declare-fun res!1456762 () Bool)

(declare-fun findLongestMatchInner!994 (Regex!10372 List!38030 Int List!38030 List!38030 Int) tuple2!37806)

(assert (=> b!3603670 (= res!1456762 (isEmpty!22368 (_1!22037 (findLongestMatchInner!994 (regex!5613 (rule!8353 (_1!22035 lt!1238496))) Nil!37906 (size!28887 Nil!37906) lt!1238494 lt!1238494 (size!28887 lt!1238494)))))))

(declare-fun e!2230036 () Bool)

(assert (=> b!3603670 (=> res!1456762 e!2230036)))

(assert (=> b!3603670 e!2230036))

(declare-fun lt!1238633 () Unit!53961)

(assert (=> b!3603670 (= lt!1238633 lt!1238629)))

(declare-fun lt!1238630 () Unit!53961)

(assert (=> b!3603670 (= lt!1238630 (lemmaSemiInverse!1370 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))) (seqFromList!4166 (_1!22037 lt!1238631))))))

(declare-fun b!3603671 () Bool)

(assert (=> b!3603671 (= e!2230036 (matchR!4941 (regex!5613 (rule!8353 (_1!22035 lt!1238496))) (_1!22037 (findLongestMatchInner!994 (regex!5613 (rule!8353 (_1!22035 lt!1238496))) Nil!37906 (size!28887 Nil!37906) lt!1238494 lt!1238494 (size!28887 lt!1238494)))))))

(declare-fun b!3603672 () Bool)

(declare-fun res!1456763 () Bool)

(assert (=> b!3603672 (=> (not res!1456763) (not e!2230037))))

(assert (=> b!3603672 (= res!1456763 (= (rule!8353 (_1!22035 (get!12273 lt!1238632))) (rule!8353 (_1!22035 lt!1238496))))))

(declare-fun b!3603673 () Bool)

(declare-fun res!1456764 () Bool)

(assert (=> b!3603673 (=> (not res!1456764) (not e!2230037))))

(assert (=> b!3603673 (= res!1456764 (< (size!28887 (_2!22035 (get!12273 lt!1238632))) (size!28887 lt!1238494)))))

(assert (= (and d!1061682 c!623608) b!3603669))

(assert (= (and d!1061682 (not c!623608)) b!3603670))

(assert (= (and b!3603670 (not res!1456762)) b!3603671))

(assert (= (and d!1061682 (not res!1456768)) b!3603666))

(assert (= (and b!3603666 res!1456765) b!3603665))

(assert (= (and b!3603665 res!1456767) b!3603673))

(assert (= (and b!3603673 res!1456764) b!3603672))

(assert (= (and b!3603672 res!1456763) b!3603668))

(assert (= (and b!3603668 res!1456766) b!3603667))

(declare-fun m!4100053 () Bool)

(assert (=> b!3603667 m!4100053))

(declare-fun m!4100055 () Bool)

(assert (=> b!3603667 m!4100055))

(assert (=> b!3603666 m!4100053))

(declare-fun m!4100057 () Bool)

(assert (=> b!3603666 m!4100057))

(assert (=> b!3603666 m!4100057))

(declare-fun m!4100059 () Bool)

(assert (=> b!3603666 m!4100059))

(assert (=> b!3603666 m!4100059))

(declare-fun m!4100061 () Bool)

(assert (=> b!3603666 m!4100061))

(declare-fun m!4100063 () Bool)

(assert (=> b!3603670 m!4100063))

(declare-fun m!4100065 () Bool)

(assert (=> b!3603670 m!4100065))

(declare-fun m!4100067 () Bool)

(assert (=> b!3603670 m!4100067))

(assert (=> b!3603670 m!4100063))

(assert (=> b!3603670 m!4100063))

(declare-fun m!4100069 () Bool)

(assert (=> b!3603670 m!4100069))

(declare-fun m!4100071 () Bool)

(assert (=> b!3603670 m!4100071))

(declare-fun m!4100073 () Bool)

(assert (=> b!3603670 m!4100073))

(declare-fun m!4100075 () Bool)

(assert (=> b!3603670 m!4100075))

(assert (=> b!3603670 m!4100071))

(assert (=> b!3603670 m!4100073))

(declare-fun m!4100077 () Bool)

(assert (=> b!3603670 m!4100077))

(assert (=> b!3603670 m!4100063))

(declare-fun m!4100079 () Bool)

(assert (=> b!3603670 m!4100079))

(assert (=> b!3603672 m!4100053))

(assert (=> b!3603671 m!4100071))

(assert (=> b!3603671 m!4100073))

(assert (=> b!3603671 m!4100071))

(assert (=> b!3603671 m!4100073))

(assert (=> b!3603671 m!4100077))

(declare-fun m!4100081 () Bool)

(assert (=> b!3603671 m!4100081))

(assert (=> b!3603665 m!4100053))

(assert (=> b!3603665 m!4100057))

(assert (=> b!3603665 m!4100057))

(assert (=> b!3603665 m!4100059))

(assert (=> b!3603665 m!4100059))

(declare-fun m!4100083 () Bool)

(assert (=> b!3603665 m!4100083))

(assert (=> b!3603668 m!4100053))

(declare-fun m!4100085 () Bool)

(assert (=> b!3603668 m!4100085))

(assert (=> b!3603668 m!4100085))

(declare-fun m!4100087 () Bool)

(assert (=> b!3603668 m!4100087))

(declare-fun m!4100089 () Bool)

(assert (=> d!1061682 m!4100089))

(declare-fun m!4100091 () Bool)

(assert (=> d!1061682 m!4100091))

(declare-fun m!4100093 () Bool)

(assert (=> d!1061682 m!4100093))

(declare-fun m!4100095 () Bool)

(assert (=> d!1061682 m!4100095))

(assert (=> b!3603673 m!4100053))

(declare-fun m!4100097 () Bool)

(assert (=> b!3603673 m!4100097))

(assert (=> b!3603673 m!4100073))

(assert (=> b!3603379 d!1061682))

(declare-fun d!1061684 () Bool)

(assert (=> d!1061684 (= (maxPrefixOneRule!1880 thiss!23823 (rule!8353 (_1!22035 lt!1238496)) lt!1238494) (Some!7856 (tuple2!37803 (Token!10593 (apply!9119 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))) (seqFromList!4166 lt!1238490)) (rule!8353 (_1!22035 lt!1238496)) (size!28887 lt!1238490) lt!1238490) (_2!22035 lt!1238496))))))

(declare-fun lt!1238636 () Unit!53961)

(declare-fun choose!21022 (LexerInterface!5202 List!38031 List!38030 List!38030 List!38030 Rule!11026) Unit!53961)

(assert (=> d!1061684 (= lt!1238636 (choose!21022 thiss!23823 rules!3307 lt!1238490 lt!1238494 (_2!22035 lt!1238496) (rule!8353 (_1!22035 lt!1238496))))))

(assert (=> d!1061684 (not (isEmpty!22369 rules!3307))))

(assert (=> d!1061684 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!952 thiss!23823 rules!3307 lt!1238490 lt!1238494 (_2!22035 lt!1238496) (rule!8353 (_1!22035 lt!1238496))) lt!1238636)))

(declare-fun bs!570630 () Bool)

(assert (= bs!570630 d!1061684))

(assert (=> bs!570630 m!4099737))

(assert (=> bs!570630 m!4099739))

(assert (=> bs!570630 m!4099737))

(assert (=> bs!570630 m!4099741))

(assert (=> bs!570630 m!4099733))

(assert (=> bs!570630 m!4099727))

(declare-fun m!4100099 () Bool)

(assert (=> bs!570630 m!4100099))

(assert (=> b!3603379 d!1061684))

(declare-fun d!1061686 () Bool)

(declare-fun lt!1238639 () Int)

(assert (=> d!1061686 (>= lt!1238639 0)))

(declare-fun e!2230042 () Int)

(assert (=> d!1061686 (= lt!1238639 e!2230042)))

(declare-fun c!623611 () Bool)

(assert (=> d!1061686 (= c!623611 (is-Nil!37906 lt!1238490))))

(assert (=> d!1061686 (= (size!28887 lt!1238490) lt!1238639)))

(declare-fun b!3603678 () Bool)

(assert (=> b!3603678 (= e!2230042 0)))

(declare-fun b!3603679 () Bool)

(assert (=> b!3603679 (= e!2230042 (+ 1 (size!28887 (t!292601 lt!1238490))))))

(assert (= (and d!1061686 c!623611) b!3603678))

(assert (= (and d!1061686 (not c!623611)) b!3603679))

(declare-fun m!4100101 () Bool)

(assert (=> b!3603679 m!4100101))

(assert (=> b!3603379 d!1061686))

(declare-fun d!1061688 () Bool)

(assert (=> d!1061688 (= (apply!9119 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))) (seqFromList!4166 lt!1238490)) (dynLambda!16378 (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) (seqFromList!4166 lt!1238490)))))

(declare-fun b_lambda!106613 () Bool)

(assert (=> (not b_lambda!106613) (not d!1061688)))

(declare-fun tb!206377 () Bool)

(declare-fun t!292647 () Bool)

(assert (=> (and b!3603390 (= (toValue!7897 (transformation!5613 anOtherTypeRule!33)) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292647) tb!206377))

(declare-fun result!251544 () Bool)

(assert (=> tb!206377 (= result!251544 (inv!21 (dynLambda!16378 (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) (seqFromList!4166 lt!1238490))))))

(declare-fun m!4100103 () Bool)

(assert (=> tb!206377 m!4100103))

(assert (=> d!1061688 t!292647))

(declare-fun b_and!262139 () Bool)

(assert (= b_and!262131 (and (=> t!292647 result!251544) b_and!262139)))

(declare-fun tb!206379 () Bool)

(declare-fun t!292649 () Bool)

(assert (=> (and b!3603410 (= (toValue!7897 (transformation!5613 (rule!8353 token!511))) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292649) tb!206379))

(declare-fun result!251546 () Bool)

(assert (= result!251546 result!251544))

(assert (=> d!1061688 t!292649))

(declare-fun b_and!262141 () Bool)

(assert (= b_and!262133 (and (=> t!292649 result!251546) b_and!262141)))

(declare-fun t!292651 () Bool)

(declare-fun tb!206381 () Bool)

(assert (=> (and b!3603389 (= (toValue!7897 (transformation!5613 rule!403)) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292651) tb!206381))

(declare-fun result!251548 () Bool)

(assert (= result!251548 result!251544))

(assert (=> d!1061688 t!292651))

(declare-fun b_and!262143 () Bool)

(assert (= b_and!262135 (and (=> t!292651 result!251548) b_and!262143)))

(declare-fun tb!206383 () Bool)

(declare-fun t!292653 () Bool)

(assert (=> (and b!3603405 (= (toValue!7897 (transformation!5613 (h!43327 rules!3307))) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292653) tb!206383))

(declare-fun result!251550 () Bool)

(assert (= result!251550 result!251544))

(assert (=> d!1061688 t!292653))

(declare-fun b_and!262145 () Bool)

(assert (= b_and!262137 (and (=> t!292653 result!251550) b_and!262145)))

(assert (=> d!1061688 m!4099737))

(declare-fun m!4100105 () Bool)

(assert (=> d!1061688 m!4100105))

(assert (=> b!3603379 d!1061688))

(declare-fun d!1061690 () Bool)

(declare-fun lt!1238642 () List!38030)

(assert (=> d!1061690 (= (++!9429 lt!1238490 lt!1238642) lt!1238494)))

(declare-fun e!2230046 () List!38030)

(assert (=> d!1061690 (= lt!1238642 e!2230046)))

(declare-fun c!623614 () Bool)

(assert (=> d!1061690 (= c!623614 (is-Cons!37906 lt!1238490))))

(assert (=> d!1061690 (>= (size!28887 lt!1238494) (size!28887 lt!1238490))))

(assert (=> d!1061690 (= (getSuffix!1551 lt!1238494 lt!1238490) lt!1238642)))

(declare-fun b!3603684 () Bool)

(assert (=> b!3603684 (= e!2230046 (getSuffix!1551 (tail!5586 lt!1238494) (t!292601 lt!1238490)))))

(declare-fun b!3603685 () Bool)

(assert (=> b!3603685 (= e!2230046 lt!1238494)))

(assert (= (and d!1061690 c!623614) b!3603684))

(assert (= (and d!1061690 (not c!623614)) b!3603685))

(declare-fun m!4100107 () Bool)

(assert (=> d!1061690 m!4100107))

(assert (=> d!1061690 m!4100073))

(assert (=> d!1061690 m!4099733))

(declare-fun m!4100109 () Bool)

(assert (=> b!3603684 m!4100109))

(assert (=> b!3603684 m!4100109))

(declare-fun m!4100111 () Bool)

(assert (=> b!3603684 m!4100111))

(assert (=> b!3603379 d!1061690))

(declare-fun d!1061692 () Bool)

(assert (=> d!1061692 (= (seqFromList!4166 lt!1238490) (fromListB!1926 lt!1238490))))

(declare-fun bs!570631 () Bool)

(assert (= bs!570631 d!1061692))

(declare-fun m!4100113 () Bool)

(assert (=> bs!570631 m!4100113))

(assert (=> b!3603379 d!1061692))

(declare-fun d!1061694 () Bool)

(assert (=> d!1061694 (= (isEmpty!22368 (_2!22035 lt!1238475)) (is-Nil!37906 (_2!22035 lt!1238475)))))

(assert (=> b!3603400 d!1061694))

(declare-fun b!3603686 () Bool)

(declare-fun e!2230052 () Bool)

(assert (=> b!3603686 (= e!2230052 (matchR!4941 (derivativeStep!3137 (regex!5613 lt!1238480) (head!7561 (list!13969 (charsOf!3627 (_1!22035 lt!1238496))))) (tail!5586 (list!13969 (charsOf!3627 (_1!22035 lt!1238496))))))))

(declare-fun b!3603687 () Bool)

(declare-fun e!2230047 () Bool)

(assert (=> b!3603687 (= e!2230047 (not (= (head!7561 (list!13969 (charsOf!3627 (_1!22035 lt!1238496)))) (c!623568 (regex!5613 lt!1238480)))))))

(declare-fun b!3603688 () Bool)

(declare-fun res!1456775 () Bool)

(declare-fun e!2230050 () Bool)

(assert (=> b!3603688 (=> (not res!1456775) (not e!2230050))))

(declare-fun call!260540 () Bool)

(assert (=> b!3603688 (= res!1456775 (not call!260540))))

(declare-fun d!1061696 () Bool)

(declare-fun e!2230053 () Bool)

(assert (=> d!1061696 e!2230053))

(declare-fun c!623616 () Bool)

(assert (=> d!1061696 (= c!623616 (is-EmptyExpr!10372 (regex!5613 lt!1238480)))))

(declare-fun lt!1238643 () Bool)

(assert (=> d!1061696 (= lt!1238643 e!2230052)))

(declare-fun c!623617 () Bool)

(assert (=> d!1061696 (= c!623617 (isEmpty!22368 (list!13969 (charsOf!3627 (_1!22035 lt!1238496)))))))

(assert (=> d!1061696 (validRegex!4748 (regex!5613 lt!1238480))))

(assert (=> d!1061696 (= (matchR!4941 (regex!5613 lt!1238480) (list!13969 (charsOf!3627 (_1!22035 lt!1238496)))) lt!1238643)))

(declare-fun b!3603689 () Bool)

(declare-fun e!2230048 () Bool)

(assert (=> b!3603689 (= e!2230048 (not lt!1238643))))

(declare-fun b!3603690 () Bool)

(declare-fun res!1456772 () Bool)

(declare-fun e!2230051 () Bool)

(assert (=> b!3603690 (=> res!1456772 e!2230051)))

(assert (=> b!3603690 (= res!1456772 e!2230050)))

(declare-fun res!1456776 () Bool)

(assert (=> b!3603690 (=> (not res!1456776) (not e!2230050))))

(assert (=> b!3603690 (= res!1456776 lt!1238643)))

(declare-fun b!3603691 () Bool)

(assert (=> b!3603691 (= e!2230052 (nullable!3588 (regex!5613 lt!1238480)))))

(declare-fun b!3603692 () Bool)

(assert (=> b!3603692 (= e!2230053 e!2230048)))

(declare-fun c!623615 () Bool)

(assert (=> b!3603692 (= c!623615 (is-EmptyLang!10372 (regex!5613 lt!1238480)))))

(declare-fun b!3603693 () Bool)

(declare-fun e!2230049 () Bool)

(assert (=> b!3603693 (= e!2230051 e!2230049)))

(declare-fun res!1456774 () Bool)

(assert (=> b!3603693 (=> (not res!1456774) (not e!2230049))))

(assert (=> b!3603693 (= res!1456774 (not lt!1238643))))

(declare-fun b!3603694 () Bool)

(assert (=> b!3603694 (= e!2230050 (= (head!7561 (list!13969 (charsOf!3627 (_1!22035 lt!1238496)))) (c!623568 (regex!5613 lt!1238480))))))

(declare-fun b!3603695 () Bool)

(assert (=> b!3603695 (= e!2230049 e!2230047)))

(declare-fun res!1456771 () Bool)

(assert (=> b!3603695 (=> res!1456771 e!2230047)))

(assert (=> b!3603695 (= res!1456771 call!260540)))

(declare-fun b!3603696 () Bool)

(declare-fun res!1456769 () Bool)

(assert (=> b!3603696 (=> res!1456769 e!2230047)))

(assert (=> b!3603696 (= res!1456769 (not (isEmpty!22368 (tail!5586 (list!13969 (charsOf!3627 (_1!22035 lt!1238496)))))))))

(declare-fun b!3603697 () Bool)

(declare-fun res!1456773 () Bool)

(assert (=> b!3603697 (=> (not res!1456773) (not e!2230050))))

(assert (=> b!3603697 (= res!1456773 (isEmpty!22368 (tail!5586 (list!13969 (charsOf!3627 (_1!22035 lt!1238496))))))))

(declare-fun b!3603698 () Bool)

(assert (=> b!3603698 (= e!2230053 (= lt!1238643 call!260540))))

(declare-fun bm!260535 () Bool)

(assert (=> bm!260535 (= call!260540 (isEmpty!22368 (list!13969 (charsOf!3627 (_1!22035 lt!1238496)))))))

(declare-fun b!3603699 () Bool)

(declare-fun res!1456770 () Bool)

(assert (=> b!3603699 (=> res!1456770 e!2230051)))

(assert (=> b!3603699 (= res!1456770 (not (is-ElementMatch!10372 (regex!5613 lt!1238480))))))

(assert (=> b!3603699 (= e!2230048 e!2230051)))

(assert (= (and d!1061696 c!623617) b!3603691))

(assert (= (and d!1061696 (not c!623617)) b!3603686))

(assert (= (and d!1061696 c!623616) b!3603698))

(assert (= (and d!1061696 (not c!623616)) b!3603692))

(assert (= (and b!3603692 c!623615) b!3603689))

(assert (= (and b!3603692 (not c!623615)) b!3603699))

(assert (= (and b!3603699 (not res!1456770)) b!3603690))

(assert (= (and b!3603690 res!1456776) b!3603688))

(assert (= (and b!3603688 res!1456775) b!3603697))

(assert (= (and b!3603697 res!1456773) b!3603694))

(assert (= (and b!3603690 (not res!1456772)) b!3603693))

(assert (= (and b!3603693 res!1456774) b!3603695))

(assert (= (and b!3603695 (not res!1456771)) b!3603696))

(assert (= (and b!3603696 (not res!1456769)) b!3603687))

(assert (= (or b!3603698 b!3603688 b!3603695) bm!260535))

(assert (=> b!3603696 m!4099701))

(declare-fun m!4100115 () Bool)

(assert (=> b!3603696 m!4100115))

(assert (=> b!3603696 m!4100115))

(declare-fun m!4100117 () Bool)

(assert (=> b!3603696 m!4100117))

(assert (=> b!3603694 m!4099701))

(declare-fun m!4100119 () Bool)

(assert (=> b!3603694 m!4100119))

(assert (=> b!3603686 m!4099701))

(assert (=> b!3603686 m!4100119))

(assert (=> b!3603686 m!4100119))

(declare-fun m!4100121 () Bool)

(assert (=> b!3603686 m!4100121))

(assert (=> b!3603686 m!4099701))

(assert (=> b!3603686 m!4100115))

(assert (=> b!3603686 m!4100121))

(assert (=> b!3603686 m!4100115))

(declare-fun m!4100123 () Bool)

(assert (=> b!3603686 m!4100123))

(assert (=> bm!260535 m!4099701))

(declare-fun m!4100125 () Bool)

(assert (=> bm!260535 m!4100125))

(assert (=> b!3603687 m!4099701))

(assert (=> b!3603687 m!4100119))

(assert (=> b!3603697 m!4099701))

(assert (=> b!3603697 m!4100115))

(assert (=> b!3603697 m!4100115))

(assert (=> b!3603697 m!4100117))

(declare-fun m!4100127 () Bool)

(assert (=> b!3603691 m!4100127))

(assert (=> d!1061696 m!4099701))

(assert (=> d!1061696 m!4100125))

(declare-fun m!4100129 () Bool)

(assert (=> d!1061696 m!4100129))

(assert (=> b!3603378 d!1061696))

(declare-fun d!1061698 () Bool)

(declare-fun list!13971 (Conc!11544) List!38030)

(assert (=> d!1061698 (= (list!13969 (charsOf!3627 (_1!22035 lt!1238496))) (list!13971 (c!623569 (charsOf!3627 (_1!22035 lt!1238496)))))))

(declare-fun bs!570632 () Bool)

(assert (= bs!570632 d!1061698))

(declare-fun m!4100131 () Bool)

(assert (=> bs!570632 m!4100131))

(assert (=> b!3603378 d!1061698))

(declare-fun d!1061700 () Bool)

(declare-fun lt!1238647 () BalanceConc!22702)

(assert (=> d!1061700 (= (list!13969 lt!1238647) (originalCharacters!6327 (_1!22035 lt!1238496)))))

(assert (=> d!1061700 (= lt!1238647 (dynLambda!16374 (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) (value!180432 (_1!22035 lt!1238496))))))

(assert (=> d!1061700 (= (charsOf!3627 (_1!22035 lt!1238496)) lt!1238647)))

(declare-fun b_lambda!106615 () Bool)

(assert (=> (not b_lambda!106615) (not d!1061700)))

(declare-fun tb!206385 () Bool)

(declare-fun t!292655 () Bool)

(assert (=> (and b!3603390 (= (toChars!7756 (transformation!5613 anOtherTypeRule!33)) (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292655) tb!206385))

(declare-fun b!3603704 () Bool)

(declare-fun e!2230056 () Bool)

(declare-fun tp!1102083 () Bool)

(assert (=> b!3603704 (= e!2230056 (and (inv!51272 (c!623569 (dynLambda!16374 (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) (value!180432 (_1!22035 lt!1238496))))) tp!1102083))))

(declare-fun result!251552 () Bool)

(assert (=> tb!206385 (= result!251552 (and (inv!51273 (dynLambda!16374 (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496)))) (value!180432 (_1!22035 lt!1238496)))) e!2230056))))

(assert (= tb!206385 b!3603704))

(declare-fun m!4100133 () Bool)

(assert (=> b!3603704 m!4100133))

(declare-fun m!4100135 () Bool)

(assert (=> tb!206385 m!4100135))

(assert (=> d!1061700 t!292655))

(declare-fun b_and!262147 () Bool)

(assert (= b_and!262099 (and (=> t!292655 result!251552) b_and!262147)))

(declare-fun tb!206387 () Bool)

(declare-fun t!292657 () Bool)

(assert (=> (and b!3603410 (= (toChars!7756 (transformation!5613 (rule!8353 token!511))) (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292657) tb!206387))

(declare-fun result!251554 () Bool)

(assert (= result!251554 result!251552))

(assert (=> d!1061700 t!292657))

(declare-fun b_and!262149 () Bool)

(assert (= b_and!262101 (and (=> t!292657 result!251554) b_and!262149)))

(declare-fun t!292659 () Bool)

(declare-fun tb!206389 () Bool)

(assert (=> (and b!3603389 (= (toChars!7756 (transformation!5613 rule!403)) (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292659) tb!206389))

(declare-fun result!251556 () Bool)

(assert (= result!251556 result!251552))

(assert (=> d!1061700 t!292659))

(declare-fun b_and!262151 () Bool)

(assert (= b_and!262103 (and (=> t!292659 result!251556) b_and!262151)))

(declare-fun t!292661 () Bool)

(declare-fun tb!206391 () Bool)

(assert (=> (and b!3603405 (= (toChars!7756 (transformation!5613 (h!43327 rules!3307))) (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292661) tb!206391))

(declare-fun result!251558 () Bool)

(assert (= result!251558 result!251552))

(assert (=> d!1061700 t!292661))

(declare-fun b_and!262153 () Bool)

(assert (= b_and!262105 (and (=> t!292661 result!251558) b_and!262153)))

(declare-fun m!4100137 () Bool)

(assert (=> d!1061700 m!4100137))

(declare-fun m!4100139 () Bool)

(assert (=> d!1061700 m!4100139))

(assert (=> b!3603378 d!1061700))

(declare-fun d!1061702 () Bool)

(assert (=> d!1061702 (= (get!12274 lt!1238479) (v!37577 lt!1238479))))

(assert (=> b!3603378 d!1061702))

(declare-fun d!1061704 () Bool)

(assert (=> d!1061704 (= (isEmpty!22369 rules!3307) (is-Nil!37907 rules!3307))))

(assert (=> b!3603399 d!1061704))

(declare-fun b!3603710 () Bool)

(declare-fun e!2230065 () Bool)

(assert (=> b!3603710 (= e!2230065 (matchR!4941 (derivativeStep!3137 (regex!5613 rule!403) (head!7561 lt!1238483)) (tail!5586 lt!1238483)))))

(declare-fun b!3603711 () Bool)

(declare-fun e!2230060 () Bool)

(assert (=> b!3603711 (= e!2230060 (not (= (head!7561 lt!1238483) (c!623568 (regex!5613 rule!403)))))))

(declare-fun b!3603712 () Bool)

(declare-fun res!1456783 () Bool)

(declare-fun e!2230063 () Bool)

(assert (=> b!3603712 (=> (not res!1456783) (not e!2230063))))

(declare-fun call!260541 () Bool)

(assert (=> b!3603712 (= res!1456783 (not call!260541))))

(declare-fun d!1061706 () Bool)

(declare-fun e!2230066 () Bool)

(assert (=> d!1061706 e!2230066))

(declare-fun c!623619 () Bool)

(assert (=> d!1061706 (= c!623619 (is-EmptyExpr!10372 (regex!5613 rule!403)))))

(declare-fun lt!1238648 () Bool)

(assert (=> d!1061706 (= lt!1238648 e!2230065)))

(declare-fun c!623620 () Bool)

(assert (=> d!1061706 (= c!623620 (isEmpty!22368 lt!1238483))))

(assert (=> d!1061706 (validRegex!4748 (regex!5613 rule!403))))

(assert (=> d!1061706 (= (matchR!4941 (regex!5613 rule!403) lt!1238483) lt!1238648)))

(declare-fun b!3603713 () Bool)

(declare-fun e!2230061 () Bool)

(assert (=> b!3603713 (= e!2230061 (not lt!1238648))))

(declare-fun b!3603714 () Bool)

(declare-fun res!1456780 () Bool)

(declare-fun e!2230064 () Bool)

(assert (=> b!3603714 (=> res!1456780 e!2230064)))

(assert (=> b!3603714 (= res!1456780 e!2230063)))

(declare-fun res!1456784 () Bool)

(assert (=> b!3603714 (=> (not res!1456784) (not e!2230063))))

(assert (=> b!3603714 (= res!1456784 lt!1238648)))

(declare-fun b!3603715 () Bool)

(assert (=> b!3603715 (= e!2230065 (nullable!3588 (regex!5613 rule!403)))))

(declare-fun b!3603716 () Bool)

(assert (=> b!3603716 (= e!2230066 e!2230061)))

(declare-fun c!623618 () Bool)

(assert (=> b!3603716 (= c!623618 (is-EmptyLang!10372 (regex!5613 rule!403)))))

(declare-fun b!3603717 () Bool)

(declare-fun e!2230062 () Bool)

(assert (=> b!3603717 (= e!2230064 e!2230062)))

(declare-fun res!1456782 () Bool)

(assert (=> b!3603717 (=> (not res!1456782) (not e!2230062))))

(assert (=> b!3603717 (= res!1456782 (not lt!1238648))))

(declare-fun b!3603718 () Bool)

(assert (=> b!3603718 (= e!2230063 (= (head!7561 lt!1238483) (c!623568 (regex!5613 rule!403))))))

(declare-fun b!3603719 () Bool)

(assert (=> b!3603719 (= e!2230062 e!2230060)))

(declare-fun res!1456779 () Bool)

(assert (=> b!3603719 (=> res!1456779 e!2230060)))

(assert (=> b!3603719 (= res!1456779 call!260541)))

(declare-fun b!3603720 () Bool)

(declare-fun res!1456777 () Bool)

(assert (=> b!3603720 (=> res!1456777 e!2230060)))

(assert (=> b!3603720 (= res!1456777 (not (isEmpty!22368 (tail!5586 lt!1238483))))))

(declare-fun b!3603721 () Bool)

(declare-fun res!1456781 () Bool)

(assert (=> b!3603721 (=> (not res!1456781) (not e!2230063))))

(assert (=> b!3603721 (= res!1456781 (isEmpty!22368 (tail!5586 lt!1238483)))))

(declare-fun b!3603722 () Bool)

(assert (=> b!3603722 (= e!2230066 (= lt!1238648 call!260541))))

(declare-fun bm!260536 () Bool)

(assert (=> bm!260536 (= call!260541 (isEmpty!22368 lt!1238483))))

(declare-fun b!3603723 () Bool)

(declare-fun res!1456778 () Bool)

(assert (=> b!3603723 (=> res!1456778 e!2230064)))

(assert (=> b!3603723 (= res!1456778 (not (is-ElementMatch!10372 (regex!5613 rule!403))))))

(assert (=> b!3603723 (= e!2230061 e!2230064)))

(assert (= (and d!1061706 c!623620) b!3603715))

(assert (= (and d!1061706 (not c!623620)) b!3603710))

(assert (= (and d!1061706 c!623619) b!3603722))

(assert (= (and d!1061706 (not c!623619)) b!3603716))

(assert (= (and b!3603716 c!623618) b!3603713))

(assert (= (and b!3603716 (not c!623618)) b!3603723))

(assert (= (and b!3603723 (not res!1456778)) b!3603714))

(assert (= (and b!3603714 res!1456784) b!3603712))

(assert (= (and b!3603712 res!1456783) b!3603721))

(assert (= (and b!3603721 res!1456781) b!3603718))

(assert (= (and b!3603714 (not res!1456780)) b!3603717))

(assert (= (and b!3603717 res!1456782) b!3603719))

(assert (= (and b!3603719 (not res!1456779)) b!3603720))

(assert (= (and b!3603720 (not res!1456777)) b!3603711))

(assert (= (or b!3603722 b!3603712 b!3603719) bm!260536))

(declare-fun m!4100145 () Bool)

(assert (=> b!3603720 m!4100145))

(assert (=> b!3603720 m!4100145))

(declare-fun m!4100147 () Bool)

(assert (=> b!3603720 m!4100147))

(declare-fun m!4100149 () Bool)

(assert (=> b!3603718 m!4100149))

(assert (=> b!3603710 m!4100149))

(assert (=> b!3603710 m!4100149))

(declare-fun m!4100151 () Bool)

(assert (=> b!3603710 m!4100151))

(assert (=> b!3603710 m!4100145))

(assert (=> b!3603710 m!4100151))

(assert (=> b!3603710 m!4100145))

(declare-fun m!4100153 () Bool)

(assert (=> b!3603710 m!4100153))

(declare-fun m!4100155 () Bool)

(assert (=> bm!260536 m!4100155))

(assert (=> b!3603711 m!4100149))

(assert (=> b!3603721 m!4100145))

(assert (=> b!3603721 m!4100145))

(assert (=> b!3603721 m!4100147))

(declare-fun m!4100157 () Bool)

(assert (=> b!3603715 m!4100157))

(assert (=> d!1061706 m!4100155))

(assert (=> d!1061706 m!4100043))

(assert (=> b!3603382 d!1061706))

(declare-fun d!1061708 () Bool)

(declare-fun res!1456789 () Bool)

(declare-fun e!2230070 () Bool)

(assert (=> d!1061708 (=> (not res!1456789) (not e!2230070))))

(assert (=> d!1061708 (= res!1456789 (validRegex!4748 (regex!5613 rule!403)))))

(assert (=> d!1061708 (= (ruleValid!1878 thiss!23823 rule!403) e!2230070)))

(declare-fun b!3603729 () Bool)

(declare-fun res!1456790 () Bool)

(assert (=> b!3603729 (=> (not res!1456790) (not e!2230070))))

(assert (=> b!3603729 (= res!1456790 (not (nullable!3588 (regex!5613 rule!403))))))

(declare-fun b!3603730 () Bool)

(assert (=> b!3603730 (= e!2230070 (not (= (tag!6309 rule!403) (String!42552 ""))))))

(assert (= (and d!1061708 res!1456789) b!3603729))

(assert (= (and b!3603729 res!1456790) b!3603730))

(assert (=> d!1061708 m!4100043))

(assert (=> b!3603729 m!4100157))

(assert (=> b!3603382 d!1061708))

(declare-fun d!1061712 () Bool)

(assert (=> d!1061712 (ruleValid!1878 thiss!23823 rule!403)))

(declare-fun lt!1238653 () Unit!53961)

(declare-fun choose!21023 (LexerInterface!5202 Rule!11026 List!38031) Unit!53961)

(assert (=> d!1061712 (= lt!1238653 (choose!21023 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1061712 (contains!7289 rules!3307 rule!403)))

(assert (=> d!1061712 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1033 thiss!23823 rule!403 rules!3307) lt!1238653)))

(declare-fun bs!570633 () Bool)

(assert (= bs!570633 d!1061712))

(assert (=> bs!570633 m!4099807))

(declare-fun m!4100165 () Bool)

(assert (=> bs!570633 m!4100165))

(assert (=> bs!570633 m!4099681))

(assert (=> b!3603382 d!1061712))

(declare-fun d!1061714 () Bool)

(assert (=> d!1061714 (= (isDefined!6089 lt!1238499) (not (isEmpty!22372 lt!1238499)))))

(declare-fun bs!570634 () Bool)

(assert (= bs!570634 d!1061714))

(declare-fun m!4100167 () Bool)

(assert (=> bs!570634 m!4100167))

(assert (=> b!3603381 d!1061714))

(declare-fun b!3603762 () Bool)

(declare-fun res!1456813 () Bool)

(declare-fun e!2230087 () Bool)

(assert (=> b!3603762 (=> (not res!1456813) (not e!2230087))))

(declare-fun lt!1238681 () Option!7857)

(assert (=> b!3603762 (= res!1456813 (= (value!180432 (_1!22035 (get!12273 lt!1238681))) (apply!9119 (transformation!5613 (rule!8353 (_1!22035 (get!12273 lt!1238681)))) (seqFromList!4166 (originalCharacters!6327 (_1!22035 (get!12273 lt!1238681)))))))))

(declare-fun b!3603763 () Bool)

(assert (=> b!3603763 (= e!2230087 (contains!7289 rules!3307 (rule!8353 (_1!22035 (get!12273 lt!1238681)))))))

(declare-fun b!3603764 () Bool)

(declare-fun e!2230089 () Option!7857)

(declare-fun call!260544 () Option!7857)

(assert (=> b!3603764 (= e!2230089 call!260544)))

(declare-fun b!3603765 () Bool)

(declare-fun res!1456807 () Bool)

(assert (=> b!3603765 (=> (not res!1456807) (not e!2230087))))

(assert (=> b!3603765 (= res!1456807 (matchR!4941 (regex!5613 (rule!8353 (_1!22035 (get!12273 lt!1238681)))) (list!13969 (charsOf!3627 (_1!22035 (get!12273 lt!1238681))))))))

(declare-fun b!3603766 () Bool)

(declare-fun lt!1238677 () Option!7857)

(declare-fun lt!1238680 () Option!7857)

(assert (=> b!3603766 (= e!2230089 (ite (and (is-None!7856 lt!1238677) (is-None!7856 lt!1238680)) None!7856 (ite (is-None!7856 lt!1238680) lt!1238677 (ite (is-None!7856 lt!1238677) lt!1238680 (ite (>= (size!28886 (_1!22035 (v!37578 lt!1238677))) (size!28886 (_1!22035 (v!37578 lt!1238680)))) lt!1238677 lt!1238680)))))))

(assert (=> b!3603766 (= lt!1238677 call!260544)))

(assert (=> b!3603766 (= lt!1238680 (maxPrefix!2736 thiss!23823 (t!292602 rules!3307) lt!1238483))))

(declare-fun b!3603767 () Bool)

(declare-fun res!1456811 () Bool)

(assert (=> b!3603767 (=> (not res!1456811) (not e!2230087))))

(assert (=> b!3603767 (= res!1456811 (= (++!9429 (list!13969 (charsOf!3627 (_1!22035 (get!12273 lt!1238681)))) (_2!22035 (get!12273 lt!1238681))) lt!1238483))))

(declare-fun b!3603768 () Bool)

(declare-fun res!1456808 () Bool)

(assert (=> b!3603768 (=> (not res!1456808) (not e!2230087))))

(assert (=> b!3603768 (= res!1456808 (< (size!28887 (_2!22035 (get!12273 lt!1238681))) (size!28887 lt!1238483)))))

(declare-fun b!3603769 () Bool)

(declare-fun e!2230088 () Bool)

(assert (=> b!3603769 (= e!2230088 e!2230087)))

(declare-fun res!1456810 () Bool)

(assert (=> b!3603769 (=> (not res!1456810) (not e!2230087))))

(assert (=> b!3603769 (= res!1456810 (isDefined!6089 lt!1238681))))

(declare-fun b!3603770 () Bool)

(declare-fun res!1456812 () Bool)

(assert (=> b!3603770 (=> (not res!1456812) (not e!2230087))))

(assert (=> b!3603770 (= res!1456812 (= (list!13969 (charsOf!3627 (_1!22035 (get!12273 lt!1238681)))) (originalCharacters!6327 (_1!22035 (get!12273 lt!1238681)))))))

(declare-fun bm!260539 () Bool)

(assert (=> bm!260539 (= call!260544 (maxPrefixOneRule!1880 thiss!23823 (h!43327 rules!3307) lt!1238483))))

(declare-fun d!1061716 () Bool)

(assert (=> d!1061716 e!2230088))

(declare-fun res!1456809 () Bool)

(assert (=> d!1061716 (=> res!1456809 e!2230088)))

(assert (=> d!1061716 (= res!1456809 (isEmpty!22372 lt!1238681))))

(assert (=> d!1061716 (= lt!1238681 e!2230089)))

(declare-fun c!623627 () Bool)

(assert (=> d!1061716 (= c!623627 (and (is-Cons!37907 rules!3307) (is-Nil!37907 (t!292602 rules!3307))))))

(declare-fun lt!1238679 () Unit!53961)

(declare-fun lt!1238678 () Unit!53961)

(assert (=> d!1061716 (= lt!1238679 lt!1238678)))

(assert (=> d!1061716 (isPrefix!2976 lt!1238483 lt!1238483)))

(declare-fun lemmaIsPrefixRefl!1905 (List!38030 List!38030) Unit!53961)

(assert (=> d!1061716 (= lt!1238678 (lemmaIsPrefixRefl!1905 lt!1238483 lt!1238483))))

(declare-fun rulesValidInductive!1970 (LexerInterface!5202 List!38031) Bool)

(assert (=> d!1061716 (rulesValidInductive!1970 thiss!23823 rules!3307)))

(assert (=> d!1061716 (= (maxPrefix!2736 thiss!23823 rules!3307 lt!1238483) lt!1238681)))

(assert (= (and d!1061716 c!623627) b!3603764))

(assert (= (and d!1061716 (not c!623627)) b!3603766))

(assert (= (or b!3603764 b!3603766) bm!260539))

(assert (= (and d!1061716 (not res!1456809)) b!3603769))

(assert (= (and b!3603769 res!1456810) b!3603770))

(assert (= (and b!3603770 res!1456812) b!3603768))

(assert (= (and b!3603768 res!1456808) b!3603767))

(assert (= (and b!3603767 res!1456811) b!3603762))

(assert (= (and b!3603762 res!1456813) b!3603765))

(assert (= (and b!3603765 res!1456807) b!3603763))

(declare-fun m!4100197 () Bool)

(assert (=> b!3603767 m!4100197))

(declare-fun m!4100199 () Bool)

(assert (=> b!3603767 m!4100199))

(assert (=> b!3603767 m!4100199))

(declare-fun m!4100201 () Bool)

(assert (=> b!3603767 m!4100201))

(assert (=> b!3603767 m!4100201))

(declare-fun m!4100203 () Bool)

(assert (=> b!3603767 m!4100203))

(assert (=> b!3603762 m!4100197))

(declare-fun m!4100205 () Bool)

(assert (=> b!3603762 m!4100205))

(assert (=> b!3603762 m!4100205))

(declare-fun m!4100207 () Bool)

(assert (=> b!3603762 m!4100207))

(declare-fun m!4100209 () Bool)

(assert (=> bm!260539 m!4100209))

(assert (=> b!3603765 m!4100197))

(assert (=> b!3603765 m!4100199))

(assert (=> b!3603765 m!4100199))

(assert (=> b!3603765 m!4100201))

(assert (=> b!3603765 m!4100201))

(declare-fun m!4100211 () Bool)

(assert (=> b!3603765 m!4100211))

(assert (=> b!3603768 m!4100197))

(declare-fun m!4100213 () Bool)

(assert (=> b!3603768 m!4100213))

(declare-fun m!4100215 () Bool)

(assert (=> b!3603768 m!4100215))

(declare-fun m!4100217 () Bool)

(assert (=> d!1061716 m!4100217))

(declare-fun m!4100219 () Bool)

(assert (=> d!1061716 m!4100219))

(declare-fun m!4100221 () Bool)

(assert (=> d!1061716 m!4100221))

(declare-fun m!4100223 () Bool)

(assert (=> d!1061716 m!4100223))

(declare-fun m!4100225 () Bool)

(assert (=> b!3603766 m!4100225))

(declare-fun m!4100227 () Bool)

(assert (=> b!3603769 m!4100227))

(assert (=> b!3603770 m!4100197))

(assert (=> b!3603770 m!4100199))

(assert (=> b!3603770 m!4100199))

(assert (=> b!3603770 m!4100201))

(assert (=> b!3603763 m!4100197))

(declare-fun m!4100229 () Bool)

(assert (=> b!3603763 m!4100229))

(assert (=> b!3603381 d!1061716))

(declare-fun d!1061736 () Bool)

(assert (=> d!1061736 (= (list!13969 (charsOf!3627 token!511)) (list!13971 (c!623569 (charsOf!3627 token!511))))))

(declare-fun bs!570640 () Bool)

(assert (= bs!570640 d!1061736))

(declare-fun m!4100231 () Bool)

(assert (=> bs!570640 m!4100231))

(assert (=> b!3603381 d!1061736))

(declare-fun d!1061738 () Bool)

(declare-fun lt!1238682 () BalanceConc!22702)

(assert (=> d!1061738 (= (list!13969 lt!1238682) (originalCharacters!6327 token!511))))

(assert (=> d!1061738 (= lt!1238682 (dynLambda!16374 (toChars!7756 (transformation!5613 (rule!8353 token!511))) (value!180432 token!511)))))

(assert (=> d!1061738 (= (charsOf!3627 token!511) lt!1238682)))

(declare-fun b_lambda!106627 () Bool)

(assert (=> (not b_lambda!106627) (not d!1061738)))

(assert (=> d!1061738 t!292607))

(declare-fun b_and!262195 () Bool)

(assert (= b_and!262147 (and (=> t!292607 result!251498) b_and!262195)))

(assert (=> d!1061738 t!292609))

(declare-fun b_and!262197 () Bool)

(assert (= b_and!262149 (and (=> t!292609 result!251502) b_and!262197)))

(assert (=> d!1061738 t!292611))

(declare-fun b_and!262199 () Bool)

(assert (= b_and!262151 (and (=> t!292611 result!251504) b_and!262199)))

(assert (=> d!1061738 t!292613))

(declare-fun b_and!262201 () Bool)

(assert (= b_and!262153 (and (=> t!292613 result!251506) b_and!262201)))

(declare-fun m!4100233 () Bool)

(assert (=> d!1061738 m!4100233))

(assert (=> d!1061738 m!4099961))

(assert (=> b!3603381 d!1061738))

(declare-fun d!1061740 () Bool)

(assert (=> d!1061740 (= (inv!51265 (tag!6309 rule!403)) (= (mod (str.len (value!180431 (tag!6309 rule!403))) 2) 0))))

(assert (=> b!3603402 d!1061740))

(declare-fun d!1061742 () Bool)

(declare-fun res!1456814 () Bool)

(declare-fun e!2230090 () Bool)

(assert (=> d!1061742 (=> (not res!1456814) (not e!2230090))))

(assert (=> d!1061742 (= res!1456814 (semiInverseModEq!2386 (toChars!7756 (transformation!5613 rule!403)) (toValue!7897 (transformation!5613 rule!403))))))

(assert (=> d!1061742 (= (inv!51268 (transformation!5613 rule!403)) e!2230090)))

(declare-fun b!3603771 () Bool)

(assert (=> b!3603771 (= e!2230090 (equivClasses!2285 (toChars!7756 (transformation!5613 rule!403)) (toValue!7897 (transformation!5613 rule!403))))))

(assert (= (and d!1061742 res!1456814) b!3603771))

(declare-fun m!4100235 () Bool)

(assert (=> d!1061742 m!4100235))

(declare-fun m!4100237 () Bool)

(assert (=> b!3603771 m!4100237))

(assert (=> b!3603402 d!1061742))

(declare-fun d!1061744 () Bool)

(declare-fun res!1456817 () Bool)

(declare-fun e!2230093 () Bool)

(assert (=> d!1061744 (=> (not res!1456817) (not e!2230093))))

(declare-fun rulesValid!2144 (LexerInterface!5202 List!38031) Bool)

(assert (=> d!1061744 (= res!1456817 (rulesValid!2144 thiss!23823 rules!3307))))

(assert (=> d!1061744 (= (rulesInvariant!4599 thiss!23823 rules!3307) e!2230093)))

(declare-fun b!3603774 () Bool)

(declare-datatypes ((List!38035 0))(
  ( (Nil!37911) (Cons!37911 (h!43331 String!42551) (t!292726 List!38035)) )
))
(declare-fun noDuplicateTag!2140 (LexerInterface!5202 List!38031 List!38035) Bool)

(assert (=> b!3603774 (= e!2230093 (noDuplicateTag!2140 thiss!23823 rules!3307 Nil!37911))))

(assert (= (and d!1061744 res!1456817) b!3603774))

(declare-fun m!4100239 () Bool)

(assert (=> d!1061744 m!4100239))

(declare-fun m!4100241 () Bool)

(assert (=> b!3603774 m!4100241))

(assert (=> b!3603380 d!1061744))

(declare-fun d!1061746 () Bool)

(declare-fun lt!1238683 () Bool)

(assert (=> d!1061746 (= lt!1238683 (set.member lt!1238485 (content!5414 (usedCharacters!827 (regex!5613 anOtherTypeRule!33)))))))

(declare-fun e!2230094 () Bool)

(assert (=> d!1061746 (= lt!1238683 e!2230094)))

(declare-fun res!1456819 () Bool)

(assert (=> d!1061746 (=> (not res!1456819) (not e!2230094))))

(assert (=> d!1061746 (= res!1456819 (is-Cons!37906 (usedCharacters!827 (regex!5613 anOtherTypeRule!33))))))

(assert (=> d!1061746 (= (contains!7290 (usedCharacters!827 (regex!5613 anOtherTypeRule!33)) lt!1238485) lt!1238683)))

(declare-fun b!3603775 () Bool)

(declare-fun e!2230095 () Bool)

(assert (=> b!3603775 (= e!2230094 e!2230095)))

(declare-fun res!1456818 () Bool)

(assert (=> b!3603775 (=> res!1456818 e!2230095)))

(assert (=> b!3603775 (= res!1456818 (= (h!43326 (usedCharacters!827 (regex!5613 anOtherTypeRule!33))) lt!1238485))))

(declare-fun b!3603776 () Bool)

(assert (=> b!3603776 (= e!2230095 (contains!7290 (t!292601 (usedCharacters!827 (regex!5613 anOtherTypeRule!33))) lt!1238485))))

(assert (= (and d!1061746 res!1456819) b!3603775))

(assert (= (and b!3603775 (not res!1456818)) b!3603776))

(assert (=> d!1061746 m!4099687))

(declare-fun m!4100243 () Bool)

(assert (=> d!1061746 m!4100243))

(declare-fun m!4100245 () Bool)

(assert (=> d!1061746 m!4100245))

(declare-fun m!4100247 () Bool)

(assert (=> b!3603776 m!4100247))

(assert (=> b!3603395 d!1061746))

(declare-fun bm!260540 () Bool)

(declare-fun call!260545 () List!38030)

(declare-fun c!623631 () Bool)

(assert (=> bm!260540 (= call!260545 (usedCharacters!827 (ite c!623631 (regTwo!21257 (regex!5613 anOtherTypeRule!33)) (regOne!21256 (regex!5613 anOtherTypeRule!33)))))))

(declare-fun d!1061748 () Bool)

(declare-fun c!623629 () Bool)

(assert (=> d!1061748 (= c!623629 (or (is-EmptyExpr!10372 (regex!5613 anOtherTypeRule!33)) (is-EmptyLang!10372 (regex!5613 anOtherTypeRule!33))))))

(declare-fun e!2230098 () List!38030)

(assert (=> d!1061748 (= (usedCharacters!827 (regex!5613 anOtherTypeRule!33)) e!2230098)))

(declare-fun b!3603777 () Bool)

(declare-fun e!2230097 () List!38030)

(declare-fun call!260547 () List!38030)

(assert (=> b!3603777 (= e!2230097 call!260547)))

(declare-fun b!3603778 () Bool)

(declare-fun e!2230099 () List!38030)

(assert (=> b!3603778 (= e!2230098 e!2230099)))

(declare-fun c!623630 () Bool)

(assert (=> b!3603778 (= c!623630 (is-ElementMatch!10372 (regex!5613 anOtherTypeRule!33)))))

(declare-fun bm!260541 () Bool)

(declare-fun call!260548 () List!38030)

(declare-fun call!260546 () List!38030)

(assert (=> bm!260541 (= call!260548 call!260546)))

(declare-fun b!3603779 () Bool)

(assert (=> b!3603779 (= e!2230099 (Cons!37906 (c!623568 (regex!5613 anOtherTypeRule!33)) Nil!37906))))

(declare-fun b!3603780 () Bool)

(declare-fun e!2230096 () List!38030)

(assert (=> b!3603780 (= e!2230096 call!260546)))

(declare-fun b!3603781 () Bool)

(assert (=> b!3603781 (= e!2230098 Nil!37906)))

(declare-fun b!3603782 () Bool)

(assert (=> b!3603782 (= e!2230097 call!260547)))

(declare-fun bm!260542 () Bool)

(declare-fun c!623628 () Bool)

(assert (=> bm!260542 (= call!260546 (usedCharacters!827 (ite c!623628 (reg!10701 (regex!5613 anOtherTypeRule!33)) (ite c!623631 (regOne!21257 (regex!5613 anOtherTypeRule!33)) (regTwo!21256 (regex!5613 anOtherTypeRule!33))))))))

(declare-fun b!3603783 () Bool)

(assert (=> b!3603783 (= e!2230096 e!2230097)))

(assert (=> b!3603783 (= c!623631 (is-Union!10372 (regex!5613 anOtherTypeRule!33)))))

(declare-fun bm!260543 () Bool)

(assert (=> bm!260543 (= call!260547 (++!9429 (ite c!623631 call!260548 call!260545) (ite c!623631 call!260545 call!260548)))))

(declare-fun b!3603784 () Bool)

(assert (=> b!3603784 (= c!623628 (is-Star!10372 (regex!5613 anOtherTypeRule!33)))))

(assert (=> b!3603784 (= e!2230099 e!2230096)))

(assert (= (and d!1061748 c!623629) b!3603781))

(assert (= (and d!1061748 (not c!623629)) b!3603778))

(assert (= (and b!3603778 c!623630) b!3603779))

(assert (= (and b!3603778 (not c!623630)) b!3603784))

(assert (= (and b!3603784 c!623628) b!3603780))

(assert (= (and b!3603784 (not c!623628)) b!3603783))

(assert (= (and b!3603783 c!623631) b!3603777))

(assert (= (and b!3603783 (not c!623631)) b!3603782))

(assert (= (or b!3603777 b!3603782) bm!260541))

(assert (= (or b!3603777 b!3603782) bm!260540))

(assert (= (or b!3603777 b!3603782) bm!260543))

(assert (= (or b!3603780 bm!260541) bm!260542))

(declare-fun m!4100249 () Bool)

(assert (=> bm!260540 m!4100249))

(declare-fun m!4100251 () Bool)

(assert (=> bm!260542 m!4100251))

(declare-fun m!4100253 () Bool)

(assert (=> bm!260543 m!4100253))

(assert (=> b!3603395 d!1061748))

(declare-fun d!1061750 () Bool)

(declare-fun lt!1238686 () Bool)

(declare-fun content!5415 (List!38031) (Set Rule!11026))

(assert (=> d!1061750 (= lt!1238686 (set.member anOtherTypeRule!33 (content!5415 rules!3307)))))

(declare-fun e!2230105 () Bool)

(assert (=> d!1061750 (= lt!1238686 e!2230105)))

(declare-fun res!1456824 () Bool)

(assert (=> d!1061750 (=> (not res!1456824) (not e!2230105))))

(assert (=> d!1061750 (= res!1456824 (is-Cons!37907 rules!3307))))

(assert (=> d!1061750 (= (contains!7289 rules!3307 anOtherTypeRule!33) lt!1238686)))

(declare-fun b!3603789 () Bool)

(declare-fun e!2230104 () Bool)

(assert (=> b!3603789 (= e!2230105 e!2230104)))

(declare-fun res!1456825 () Bool)

(assert (=> b!3603789 (=> res!1456825 e!2230104)))

(assert (=> b!3603789 (= res!1456825 (= (h!43327 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3603790 () Bool)

(assert (=> b!3603790 (= e!2230104 (contains!7289 (t!292602 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1061750 res!1456824) b!3603789))

(assert (= (and b!3603789 (not res!1456825)) b!3603790))

(declare-fun m!4100255 () Bool)

(assert (=> d!1061750 m!4100255))

(declare-fun m!4100257 () Bool)

(assert (=> d!1061750 m!4100257))

(declare-fun m!4100259 () Bool)

(assert (=> b!3603790 m!4100259))

(assert (=> b!3603394 d!1061750))

(declare-fun b!3603801 () Bool)

(declare-fun e!2230113 () Bool)

(assert (=> b!3603801 (= e!2230113 (isPrefix!2976 (tail!5586 lt!1238490) (tail!5586 (++!9429 lt!1238490 (_2!22035 lt!1238496)))))))

(declare-fun b!3603800 () Bool)

(declare-fun res!1456837 () Bool)

(assert (=> b!3603800 (=> (not res!1456837) (not e!2230113))))

(assert (=> b!3603800 (= res!1456837 (= (head!7561 lt!1238490) (head!7561 (++!9429 lt!1238490 (_2!22035 lt!1238496)))))))

(declare-fun b!3603802 () Bool)

(declare-fun e!2230112 () Bool)

(assert (=> b!3603802 (= e!2230112 (>= (size!28887 (++!9429 lt!1238490 (_2!22035 lt!1238496))) (size!28887 lt!1238490)))))

(declare-fun d!1061752 () Bool)

(assert (=> d!1061752 e!2230112))

(declare-fun res!1456834 () Bool)

(assert (=> d!1061752 (=> res!1456834 e!2230112)))

(declare-fun lt!1238689 () Bool)

(assert (=> d!1061752 (= res!1456834 (not lt!1238689))))

(declare-fun e!2230114 () Bool)

(assert (=> d!1061752 (= lt!1238689 e!2230114)))

(declare-fun res!1456835 () Bool)

(assert (=> d!1061752 (=> res!1456835 e!2230114)))

(assert (=> d!1061752 (= res!1456835 (is-Nil!37906 lt!1238490))))

(assert (=> d!1061752 (= (isPrefix!2976 lt!1238490 (++!9429 lt!1238490 (_2!22035 lt!1238496))) lt!1238689)))

(declare-fun b!3603799 () Bool)

(assert (=> b!3603799 (= e!2230114 e!2230113)))

(declare-fun res!1456836 () Bool)

(assert (=> b!3603799 (=> (not res!1456836) (not e!2230113))))

(assert (=> b!3603799 (= res!1456836 (not (is-Nil!37906 (++!9429 lt!1238490 (_2!22035 lt!1238496)))))))

(assert (= (and d!1061752 (not res!1456835)) b!3603799))

(assert (= (and b!3603799 res!1456836) b!3603800))

(assert (= (and b!3603800 res!1456837) b!3603801))

(assert (= (and d!1061752 (not res!1456834)) b!3603802))

(assert (=> b!3603801 m!4100027))

(assert (=> b!3603801 m!4099775))

(declare-fun m!4100261 () Bool)

(assert (=> b!3603801 m!4100261))

(assert (=> b!3603801 m!4100027))

(assert (=> b!3603801 m!4100261))

(declare-fun m!4100263 () Bool)

(assert (=> b!3603801 m!4100263))

(assert (=> b!3603800 m!4099761))

(assert (=> b!3603800 m!4099775))

(declare-fun m!4100265 () Bool)

(assert (=> b!3603800 m!4100265))

(assert (=> b!3603802 m!4099775))

(declare-fun m!4100267 () Bool)

(assert (=> b!3603802 m!4100267))

(assert (=> b!3603802 m!4099733))

(assert (=> b!3603377 d!1061752))

(declare-fun b!3603973 () Bool)

(declare-fun e!2230212 () Unit!53961)

(declare-fun Unit!53972 () Unit!53961)

(assert (=> b!3603973 (= e!2230212 Unit!53972)))

(declare-fun b!3603970 () Bool)

(declare-fun res!1456929 () Bool)

(declare-fun e!2230211 () Bool)

(assert (=> b!3603970 (=> (not res!1456929) (not e!2230211))))

(declare-fun lt!1238775 () Token!10592)

(assert (=> b!3603970 (= res!1456929 (matchR!4941 (regex!5613 (get!12274 (getRuleFromTag!1219 thiss!23823 rules!3307 (tag!6309 (rule!8353 lt!1238775))))) (list!13969 (charsOf!3627 lt!1238775))))))

(declare-fun b!3603972 () Bool)

(declare-fun Unit!53973 () Unit!53961)

(assert (=> b!3603972 (= e!2230212 Unit!53973)))

(declare-fun lt!1238765 () List!38030)

(assert (=> b!3603972 (= lt!1238765 (++!9429 lt!1238483 suffix!1395))))

(declare-fun lt!1238776 () Unit!53961)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!475 (LexerInterface!5202 Rule!11026 List!38031 List!38030) Unit!53961)

(assert (=> b!3603972 (= lt!1238776 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!475 thiss!23823 (rule!8353 lt!1238775) rules!3307 lt!1238765))))

(assert (=> b!3603972 (isEmpty!22372 (maxPrefixOneRule!1880 thiss!23823 (rule!8353 lt!1238775) lt!1238765))))

(declare-fun lt!1238769 () Unit!53961)

(assert (=> b!3603972 (= lt!1238769 lt!1238776)))

(declare-fun lt!1238773 () List!38030)

(assert (=> b!3603972 (= lt!1238773 (list!13969 (charsOf!3627 lt!1238775)))))

(declare-fun lt!1238761 () Unit!53961)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!463 (LexerInterface!5202 Rule!11026 List!38030 List!38030) Unit!53961)

(assert (=> b!3603972 (= lt!1238761 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!463 thiss!23823 (rule!8353 lt!1238775) lt!1238773 (++!9429 lt!1238483 suffix!1395)))))

(assert (=> b!3603972 (not (matchR!4941 (regex!5613 (rule!8353 lt!1238775)) lt!1238773))))

(declare-fun lt!1238760 () Unit!53961)

(assert (=> b!3603972 (= lt!1238760 lt!1238761)))

(assert (=> b!3603972 false))

(declare-fun b!3603971 () Bool)

(assert (=> b!3603971 (= e!2230211 (= (rule!8353 lt!1238775) (get!12274 (getRuleFromTag!1219 thiss!23823 rules!3307 (tag!6309 (rule!8353 lt!1238775))))))))

(declare-fun d!1061754 () Bool)

(assert (=> d!1061754 (isDefined!6089 (maxPrefix!2736 thiss!23823 rules!3307 (++!9429 lt!1238483 suffix!1395)))))

(declare-fun lt!1238767 () Unit!53961)

(assert (=> d!1061754 (= lt!1238767 e!2230212)))

(declare-fun c!623670 () Bool)

(assert (=> d!1061754 (= c!623670 (isEmpty!22372 (maxPrefix!2736 thiss!23823 rules!3307 (++!9429 lt!1238483 suffix!1395))))))

(declare-fun lt!1238764 () Unit!53961)

(declare-fun lt!1238774 () Unit!53961)

(assert (=> d!1061754 (= lt!1238764 lt!1238774)))

(assert (=> d!1061754 e!2230211))

(declare-fun res!1456930 () Bool)

(assert (=> d!1061754 (=> (not res!1456930) (not e!2230211))))

(assert (=> d!1061754 (= res!1456930 (isDefined!6088 (getRuleFromTag!1219 thiss!23823 rules!3307 (tag!6309 (rule!8353 lt!1238775)))))))

(assert (=> d!1061754 (= lt!1238774 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1219 thiss!23823 rules!3307 lt!1238483 lt!1238775))))

(declare-fun lt!1238772 () Unit!53961)

(declare-fun lt!1238766 () Unit!53961)

(assert (=> d!1061754 (= lt!1238772 lt!1238766)))

(declare-fun lt!1238770 () List!38030)

(assert (=> d!1061754 (isPrefix!2976 lt!1238770 (++!9429 lt!1238483 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!439 (List!38030 List!38030 List!38030) Unit!53961)

(assert (=> d!1061754 (= lt!1238766 (lemmaPrefixStaysPrefixWhenAddingToSuffix!439 lt!1238770 lt!1238483 suffix!1395))))

(assert (=> d!1061754 (= lt!1238770 (list!13969 (charsOf!3627 lt!1238775)))))

(declare-fun lt!1238763 () Unit!53961)

(declare-fun lt!1238768 () Unit!53961)

(assert (=> d!1061754 (= lt!1238763 lt!1238768)))

(declare-fun lt!1238762 () List!38030)

(declare-fun lt!1238771 () List!38030)

(assert (=> d!1061754 (isPrefix!2976 lt!1238762 (++!9429 lt!1238762 lt!1238771))))

(assert (=> d!1061754 (= lt!1238768 (lemmaConcatTwoListThenFirstIsPrefix!1897 lt!1238762 lt!1238771))))

(assert (=> d!1061754 (= lt!1238771 (_2!22035 (get!12273 (maxPrefix!2736 thiss!23823 rules!3307 lt!1238483))))))

(assert (=> d!1061754 (= lt!1238762 (list!13969 (charsOf!3627 lt!1238775)))))

(declare-datatypes ((List!38036 0))(
  ( (Nil!37912) (Cons!37912 (h!43332 Token!10592) (t!292727 List!38036)) )
))
(declare-fun head!7563 (List!38036) Token!10592)

(declare-datatypes ((IArray!23097 0))(
  ( (IArray!23098 (innerList!11606 List!38036)) )
))
(declare-datatypes ((Conc!11546 0))(
  ( (Node!11546 (left!29627 Conc!11546) (right!29957 Conc!11546) (csize!23322 Int) (cheight!11757 Int)) (Leaf!17964 (xs!14748 IArray!23097) (csize!23323 Int)) (Empty!11546) )
))
(declare-datatypes ((BalanceConc!22706 0))(
  ( (BalanceConc!22707 (c!623706 Conc!11546)) )
))
(declare-fun list!13972 (BalanceConc!22706) List!38036)

(declare-datatypes ((tuple2!37810 0))(
  ( (tuple2!37811 (_1!22039 BalanceConc!22706) (_2!22039 BalanceConc!22702)) )
))
(declare-fun lex!2471 (LexerInterface!5202 List!38031 BalanceConc!22702) tuple2!37810)

(assert (=> d!1061754 (= lt!1238775 (head!7563 (list!13972 (_1!22039 (lex!2471 thiss!23823 rules!3307 (seqFromList!4166 lt!1238483))))))))

(assert (=> d!1061754 (not (isEmpty!22369 rules!3307))))

(assert (=> d!1061754 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!882 thiss!23823 rules!3307 lt!1238483 suffix!1395) lt!1238767)))

(assert (= (and d!1061754 res!1456930) b!3603970))

(assert (= (and b!3603970 res!1456929) b!3603971))

(assert (= (and d!1061754 c!623670) b!3603972))

(assert (= (and d!1061754 (not c!623670)) b!3603973))

(declare-fun m!4100397 () Bool)

(assert (=> b!3603970 m!4100397))

(declare-fun m!4100399 () Bool)

(assert (=> b!3603970 m!4100399))

(declare-fun m!4100401 () Bool)

(assert (=> b!3603970 m!4100401))

(assert (=> b!3603970 m!4100401))

(declare-fun m!4100403 () Bool)

(assert (=> b!3603970 m!4100403))

(assert (=> b!3603970 m!4100399))

(assert (=> b!3603970 m!4100397))

(declare-fun m!4100405 () Bool)

(assert (=> b!3603970 m!4100405))

(declare-fun m!4100407 () Bool)

(assert (=> b!3603972 m!4100407))

(declare-fun m!4100409 () Bool)

(assert (=> b!3603972 m!4100409))

(declare-fun m!4100411 () Bool)

(assert (=> b!3603972 m!4100411))

(declare-fun m!4100413 () Bool)

(assert (=> b!3603972 m!4100413))

(assert (=> b!3603972 m!4100399))

(assert (=> b!3603972 m!4100401))

(assert (=> b!3603972 m!4099787))

(assert (=> b!3603972 m!4100407))

(assert (=> b!3603972 m!4100399))

(assert (=> b!3603972 m!4099787))

(declare-fun m!4100415 () Bool)

(assert (=> b!3603972 m!4100415))

(assert (=> b!3603971 m!4100397))

(assert (=> b!3603971 m!4100397))

(assert (=> b!3603971 m!4100405))

(declare-fun m!4100417 () Bool)

(assert (=> d!1061754 m!4100417))

(assert (=> d!1061754 m!4100399))

(assert (=> d!1061754 m!4100401))

(declare-fun m!4100419 () Bool)

(assert (=> d!1061754 m!4100419))

(declare-fun m!4100421 () Bool)

(assert (=> d!1061754 m!4100421))

(assert (=> d!1061754 m!4099797))

(declare-fun m!4100423 () Bool)

(assert (=> d!1061754 m!4100423))

(assert (=> d!1061754 m!4100399))

(declare-fun m!4100425 () Bool)

(assert (=> d!1061754 m!4100425))

(declare-fun m!4100427 () Bool)

(assert (=> d!1061754 m!4100427))

(assert (=> d!1061754 m!4099797))

(declare-fun m!4100429 () Bool)

(assert (=> d!1061754 m!4100429))

(assert (=> d!1061754 m!4100397))

(declare-fun m!4100431 () Bool)

(assert (=> d!1061754 m!4100431))

(assert (=> d!1061754 m!4099787))

(assert (=> d!1061754 m!4100425))

(assert (=> d!1061754 m!4100397))

(assert (=> d!1061754 m!4099787))

(declare-fun m!4100433 () Bool)

(assert (=> d!1061754 m!4100433))

(declare-fun m!4100435 () Bool)

(assert (=> d!1061754 m!4100435))

(declare-fun m!4100437 () Bool)

(assert (=> d!1061754 m!4100437))

(assert (=> d!1061754 m!4100417))

(declare-fun m!4100439 () Bool)

(assert (=> d!1061754 m!4100439))

(assert (=> d!1061754 m!4100425))

(declare-fun m!4100441 () Bool)

(assert (=> d!1061754 m!4100441))

(assert (=> d!1061754 m!4099787))

(declare-fun m!4100443 () Bool)

(assert (=> d!1061754 m!4100443))

(declare-fun m!4100445 () Bool)

(assert (=> d!1061754 m!4100445))

(assert (=> d!1061754 m!4099727))

(assert (=> d!1061754 m!4100435))

(assert (=> d!1061754 m!4100419))

(assert (=> b!3603377 d!1061754))

(declare-fun d!1061796 () Bool)

(assert (=> d!1061796 (isPrefix!2976 lt!1238490 (++!9429 lt!1238490 (_2!22035 lt!1238496)))))

(declare-fun lt!1238789 () Unit!53961)

(declare-fun choose!21026 (List!38030 List!38030) Unit!53961)

(assert (=> d!1061796 (= lt!1238789 (choose!21026 lt!1238490 (_2!22035 lt!1238496)))))

(assert (=> d!1061796 (= (lemmaConcatTwoListThenFirstIsPrefix!1897 lt!1238490 (_2!22035 lt!1238496)) lt!1238789)))

(declare-fun bs!570644 () Bool)

(assert (= bs!570644 d!1061796))

(assert (=> bs!570644 m!4099775))

(assert (=> bs!570644 m!4099775))

(assert (=> bs!570644 m!4099777))

(declare-fun m!4100447 () Bool)

(assert (=> bs!570644 m!4100447))

(assert (=> b!3603377 d!1061796))

(declare-fun d!1061798 () Bool)

(declare-fun e!2230224 () Bool)

(assert (=> d!1061798 e!2230224))

(declare-fun res!1456956 () Bool)

(assert (=> d!1061798 (=> (not res!1456956) (not e!2230224))))

(assert (=> d!1061798 (= res!1456956 (isDefined!6088 (getRuleFromTag!1219 thiss!23823 rules!3307 (tag!6309 (rule!8353 (_1!22035 lt!1238496))))))))

(declare-fun lt!1238797 () Unit!53961)

(declare-fun choose!21027 (LexerInterface!5202 List!38031 List!38030 Token!10592) Unit!53961)

(assert (=> d!1061798 (= lt!1238797 (choose!21027 thiss!23823 rules!3307 lt!1238494 (_1!22035 lt!1238496)))))

(assert (=> d!1061798 (rulesInvariant!4599 thiss!23823 rules!3307)))

(assert (=> d!1061798 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1219 thiss!23823 rules!3307 lt!1238494 (_1!22035 lt!1238496)) lt!1238797)))

(declare-fun b!3604005 () Bool)

(declare-fun res!1456957 () Bool)

(assert (=> b!3604005 (=> (not res!1456957) (not e!2230224))))

(assert (=> b!3604005 (= res!1456957 (matchR!4941 (regex!5613 (get!12274 (getRuleFromTag!1219 thiss!23823 rules!3307 (tag!6309 (rule!8353 (_1!22035 lt!1238496)))))) (list!13969 (charsOf!3627 (_1!22035 lt!1238496)))))))

(declare-fun b!3604006 () Bool)

(assert (=> b!3604006 (= e!2230224 (= (rule!8353 (_1!22035 lt!1238496)) (get!12274 (getRuleFromTag!1219 thiss!23823 rules!3307 (tag!6309 (rule!8353 (_1!22035 lt!1238496)))))))))

(assert (= (and d!1061798 res!1456956) b!3604005))

(assert (= (and b!3604005 res!1456957) b!3604006))

(assert (=> d!1061798 m!4099765))

(assert (=> d!1061798 m!4099765))

(declare-fun m!4100485 () Bool)

(assert (=> d!1061798 m!4100485))

(declare-fun m!4100487 () Bool)

(assert (=> d!1061798 m!4100487))

(assert (=> d!1061798 m!4099725))

(assert (=> b!3604005 m!4099699))

(assert (=> b!3604005 m!4099701))

(assert (=> b!3604005 m!4099765))

(assert (=> b!3604005 m!4099765))

(declare-fun m!4100489 () Bool)

(assert (=> b!3604005 m!4100489))

(assert (=> b!3604005 m!4099701))

(declare-fun m!4100491 () Bool)

(assert (=> b!3604005 m!4100491))

(assert (=> b!3604005 m!4099699))

(assert (=> b!3604006 m!4099765))

(assert (=> b!3604006 m!4099765))

(assert (=> b!3604006 m!4100489))

(assert (=> b!3603377 d!1061798))

(declare-fun b!3604007 () Bool)

(declare-fun res!1456964 () Bool)

(declare-fun e!2230225 () Bool)

(assert (=> b!3604007 (=> (not res!1456964) (not e!2230225))))

(declare-fun lt!1238804 () Option!7857)

(assert (=> b!3604007 (= res!1456964 (= (value!180432 (_1!22035 (get!12273 lt!1238804))) (apply!9119 (transformation!5613 (rule!8353 (_1!22035 (get!12273 lt!1238804)))) (seqFromList!4166 (originalCharacters!6327 (_1!22035 (get!12273 lt!1238804)))))))))

(declare-fun b!3604008 () Bool)

(assert (=> b!3604008 (= e!2230225 (contains!7289 rules!3307 (rule!8353 (_1!22035 (get!12273 lt!1238804)))))))

(declare-fun b!3604009 () Bool)

(declare-fun e!2230227 () Option!7857)

(declare-fun call!260568 () Option!7857)

(assert (=> b!3604009 (= e!2230227 call!260568)))

(declare-fun b!3604010 () Bool)

(declare-fun res!1456958 () Bool)

(assert (=> b!3604010 (=> (not res!1456958) (not e!2230225))))

(assert (=> b!3604010 (= res!1456958 (matchR!4941 (regex!5613 (rule!8353 (_1!22035 (get!12273 lt!1238804)))) (list!13969 (charsOf!3627 (_1!22035 (get!12273 lt!1238804))))))))

(declare-fun b!3604011 () Bool)

(declare-fun lt!1238800 () Option!7857)

(declare-fun lt!1238803 () Option!7857)

(assert (=> b!3604011 (= e!2230227 (ite (and (is-None!7856 lt!1238800) (is-None!7856 lt!1238803)) None!7856 (ite (is-None!7856 lt!1238803) lt!1238800 (ite (is-None!7856 lt!1238800) lt!1238803 (ite (>= (size!28886 (_1!22035 (v!37578 lt!1238800))) (size!28886 (_1!22035 (v!37578 lt!1238803)))) lt!1238800 lt!1238803)))))))

(assert (=> b!3604011 (= lt!1238800 call!260568)))

(assert (=> b!3604011 (= lt!1238803 (maxPrefix!2736 thiss!23823 (t!292602 rules!3307) lt!1238494))))

(declare-fun b!3604012 () Bool)

(declare-fun res!1456962 () Bool)

(assert (=> b!3604012 (=> (not res!1456962) (not e!2230225))))

(assert (=> b!3604012 (= res!1456962 (= (++!9429 (list!13969 (charsOf!3627 (_1!22035 (get!12273 lt!1238804)))) (_2!22035 (get!12273 lt!1238804))) lt!1238494))))

(declare-fun b!3604013 () Bool)

(declare-fun res!1456959 () Bool)

(assert (=> b!3604013 (=> (not res!1456959) (not e!2230225))))

(assert (=> b!3604013 (= res!1456959 (< (size!28887 (_2!22035 (get!12273 lt!1238804))) (size!28887 lt!1238494)))))

(declare-fun b!3604014 () Bool)

(declare-fun e!2230226 () Bool)

(assert (=> b!3604014 (= e!2230226 e!2230225)))

(declare-fun res!1456961 () Bool)

(assert (=> b!3604014 (=> (not res!1456961) (not e!2230225))))

(assert (=> b!3604014 (= res!1456961 (isDefined!6089 lt!1238804))))

(declare-fun b!3604015 () Bool)

(declare-fun res!1456963 () Bool)

(assert (=> b!3604015 (=> (not res!1456963) (not e!2230225))))

(assert (=> b!3604015 (= res!1456963 (= (list!13969 (charsOf!3627 (_1!22035 (get!12273 lt!1238804)))) (originalCharacters!6327 (_1!22035 (get!12273 lt!1238804)))))))

(declare-fun bm!260563 () Bool)

(assert (=> bm!260563 (= call!260568 (maxPrefixOneRule!1880 thiss!23823 (h!43327 rules!3307) lt!1238494))))

(declare-fun d!1061804 () Bool)

(assert (=> d!1061804 e!2230226))

(declare-fun res!1456960 () Bool)

(assert (=> d!1061804 (=> res!1456960 e!2230226)))

(assert (=> d!1061804 (= res!1456960 (isEmpty!22372 lt!1238804))))

(assert (=> d!1061804 (= lt!1238804 e!2230227)))

(declare-fun c!623674 () Bool)

(assert (=> d!1061804 (= c!623674 (and (is-Cons!37907 rules!3307) (is-Nil!37907 (t!292602 rules!3307))))))

(declare-fun lt!1238802 () Unit!53961)

(declare-fun lt!1238801 () Unit!53961)

(assert (=> d!1061804 (= lt!1238802 lt!1238801)))

(assert (=> d!1061804 (isPrefix!2976 lt!1238494 lt!1238494)))

(assert (=> d!1061804 (= lt!1238801 (lemmaIsPrefixRefl!1905 lt!1238494 lt!1238494))))

(assert (=> d!1061804 (rulesValidInductive!1970 thiss!23823 rules!3307)))

(assert (=> d!1061804 (= (maxPrefix!2736 thiss!23823 rules!3307 lt!1238494) lt!1238804)))

(assert (= (and d!1061804 c!623674) b!3604009))

(assert (= (and d!1061804 (not c!623674)) b!3604011))

(assert (= (or b!3604009 b!3604011) bm!260563))

(assert (= (and d!1061804 (not res!1456960)) b!3604014))

(assert (= (and b!3604014 res!1456961) b!3604015))

(assert (= (and b!3604015 res!1456963) b!3604013))

(assert (= (and b!3604013 res!1456959) b!3604012))

(assert (= (and b!3604012 res!1456962) b!3604007))

(assert (= (and b!3604007 res!1456964) b!3604010))

(assert (= (and b!3604010 res!1456958) b!3604008))

(declare-fun m!4100509 () Bool)

(assert (=> b!3604012 m!4100509))

(declare-fun m!4100511 () Bool)

(assert (=> b!3604012 m!4100511))

(assert (=> b!3604012 m!4100511))

(declare-fun m!4100513 () Bool)

(assert (=> b!3604012 m!4100513))

(assert (=> b!3604012 m!4100513))

(declare-fun m!4100521 () Bool)

(assert (=> b!3604012 m!4100521))

(assert (=> b!3604007 m!4100509))

(declare-fun m!4100523 () Bool)

(assert (=> b!3604007 m!4100523))

(assert (=> b!3604007 m!4100523))

(declare-fun m!4100527 () Bool)

(assert (=> b!3604007 m!4100527))

(declare-fun m!4100531 () Bool)

(assert (=> bm!260563 m!4100531))

(assert (=> b!3604010 m!4100509))

(assert (=> b!3604010 m!4100511))

(assert (=> b!3604010 m!4100511))

(assert (=> b!3604010 m!4100513))

(assert (=> b!3604010 m!4100513))

(declare-fun m!4100533 () Bool)

(assert (=> b!3604010 m!4100533))

(assert (=> b!3604013 m!4100509))

(declare-fun m!4100535 () Bool)

(assert (=> b!3604013 m!4100535))

(assert (=> b!3604013 m!4100073))

(declare-fun m!4100537 () Bool)

(assert (=> d!1061804 m!4100537))

(declare-fun m!4100539 () Bool)

(assert (=> d!1061804 m!4100539))

(declare-fun m!4100541 () Bool)

(assert (=> d!1061804 m!4100541))

(assert (=> d!1061804 m!4100223))

(declare-fun m!4100543 () Bool)

(assert (=> b!3604011 m!4100543))

(declare-fun m!4100545 () Bool)

(assert (=> b!3604014 m!4100545))

(assert (=> b!3604015 m!4100509))

(assert (=> b!3604015 m!4100511))

(assert (=> b!3604015 m!4100511))

(assert (=> b!3604015 m!4100513))

(assert (=> b!3604008 m!4100509))

(declare-fun m!4100547 () Bool)

(assert (=> b!3604008 m!4100547))

(assert (=> b!3603377 d!1061804))

(assert (=> b!3603377 d!1061700))

(declare-fun e!2230248 () Bool)

(declare-fun b!3604045 () Bool)

(declare-fun lt!1238812 () List!38030)

(assert (=> b!3604045 (= e!2230248 (or (not (= (_2!22035 lt!1238496) Nil!37906)) (= lt!1238812 lt!1238490)))))

(declare-fun b!3604043 () Bool)

(declare-fun e!2230247 () List!38030)

(assert (=> b!3604043 (= e!2230247 (Cons!37906 (h!43326 lt!1238490) (++!9429 (t!292601 lt!1238490) (_2!22035 lt!1238496))))))

(declare-fun b!3604044 () Bool)

(declare-fun res!1456987 () Bool)

(assert (=> b!3604044 (=> (not res!1456987) (not e!2230248))))

(assert (=> b!3604044 (= res!1456987 (= (size!28887 lt!1238812) (+ (size!28887 lt!1238490) (size!28887 (_2!22035 lt!1238496)))))))

(declare-fun b!3604042 () Bool)

(assert (=> b!3604042 (= e!2230247 (_2!22035 lt!1238496))))

(declare-fun d!1061822 () Bool)

(assert (=> d!1061822 e!2230248))

(declare-fun res!1456986 () Bool)

(assert (=> d!1061822 (=> (not res!1456986) (not e!2230248))))

(assert (=> d!1061822 (= res!1456986 (= (content!5414 lt!1238812) (set.union (content!5414 lt!1238490) (content!5414 (_2!22035 lt!1238496)))))))

(assert (=> d!1061822 (= lt!1238812 e!2230247)))

(declare-fun c!623677 () Bool)

(assert (=> d!1061822 (= c!623677 (is-Nil!37906 lt!1238490))))

(assert (=> d!1061822 (= (++!9429 lt!1238490 (_2!22035 lt!1238496)) lt!1238812)))

(assert (= (and d!1061822 c!623677) b!3604042))

(assert (= (and d!1061822 (not c!623677)) b!3604043))

(assert (= (and d!1061822 res!1456986) b!3604044))

(assert (= (and b!3604044 res!1456987) b!3604045))

(declare-fun m!4100559 () Bool)

(assert (=> b!3604043 m!4100559))

(declare-fun m!4100561 () Bool)

(assert (=> b!3604044 m!4100561))

(assert (=> b!3604044 m!4099733))

(declare-fun m!4100563 () Bool)

(assert (=> b!3604044 m!4100563))

(declare-fun m!4100565 () Bool)

(assert (=> d!1061822 m!4100565))

(declare-fun m!4100567 () Bool)

(assert (=> d!1061822 m!4100567))

(declare-fun m!4100569 () Bool)

(assert (=> d!1061822 m!4100569))

(assert (=> b!3603377 d!1061822))

(declare-fun b!3604074 () Bool)

(declare-fun e!2230269 () Option!7856)

(declare-fun e!2230266 () Option!7856)

(assert (=> b!3604074 (= e!2230269 e!2230266)))

(declare-fun c!623686 () Bool)

(assert (=> b!3604074 (= c!623686 (and (is-Cons!37907 rules!3307) (not (= (tag!6309 (h!43327 rules!3307)) (tag!6309 (rule!8353 (_1!22035 lt!1238496)))))))))

(declare-fun b!3604075 () Bool)

(declare-fun lt!1238828 () Unit!53961)

(declare-fun lt!1238826 () Unit!53961)

(assert (=> b!3604075 (= lt!1238828 lt!1238826)))

(assert (=> b!3604075 (rulesInvariant!4599 thiss!23823 (t!292602 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!519 (LexerInterface!5202 Rule!11026 List!38031) Unit!53961)

(assert (=> b!3604075 (= lt!1238826 (lemmaInvariantOnRulesThenOnTail!519 thiss!23823 (h!43327 rules!3307) (t!292602 rules!3307)))))

(assert (=> b!3604075 (= e!2230266 (getRuleFromTag!1219 thiss!23823 (t!292602 rules!3307) (tag!6309 (rule!8353 (_1!22035 lt!1238496)))))))

(declare-fun b!3604076 () Bool)

(assert (=> b!3604076 (= e!2230266 None!7855)))

(declare-fun d!1061830 () Bool)

(declare-fun e!2230268 () Bool)

(assert (=> d!1061830 e!2230268))

(declare-fun res!1457003 () Bool)

(assert (=> d!1061830 (=> res!1457003 e!2230268)))

(declare-fun lt!1238827 () Option!7856)

(declare-fun isEmpty!22374 (Option!7856) Bool)

(assert (=> d!1061830 (= res!1457003 (isEmpty!22374 lt!1238827))))

(assert (=> d!1061830 (= lt!1238827 e!2230269)))

(declare-fun c!623685 () Bool)

(assert (=> d!1061830 (= c!623685 (and (is-Cons!37907 rules!3307) (= (tag!6309 (h!43327 rules!3307)) (tag!6309 (rule!8353 (_1!22035 lt!1238496))))))))

(assert (=> d!1061830 (rulesInvariant!4599 thiss!23823 rules!3307)))

(assert (=> d!1061830 (= (getRuleFromTag!1219 thiss!23823 rules!3307 (tag!6309 (rule!8353 (_1!22035 lt!1238496)))) lt!1238827)))

(declare-fun b!3604077 () Bool)

(declare-fun e!2230267 () Bool)

(assert (=> b!3604077 (= e!2230267 (= (tag!6309 (get!12274 lt!1238827)) (tag!6309 (rule!8353 (_1!22035 lt!1238496)))))))

(declare-fun b!3604078 () Bool)

(assert (=> b!3604078 (= e!2230268 e!2230267)))

(declare-fun res!1457002 () Bool)

(assert (=> b!3604078 (=> (not res!1457002) (not e!2230267))))

(assert (=> b!3604078 (= res!1457002 (contains!7289 rules!3307 (get!12274 lt!1238827)))))

(declare-fun b!3604079 () Bool)

(assert (=> b!3604079 (= e!2230269 (Some!7855 (h!43327 rules!3307)))))

(assert (= (and d!1061830 c!623685) b!3604079))

(assert (= (and d!1061830 (not c!623685)) b!3604074))

(assert (= (and b!3604074 c!623686) b!3604075))

(assert (= (and b!3604074 (not c!623686)) b!3604076))

(assert (= (and d!1061830 (not res!1457003)) b!3604078))

(assert (= (and b!3604078 res!1457002) b!3604077))

(declare-fun m!4100589 () Bool)

(assert (=> b!3604075 m!4100589))

(declare-fun m!4100591 () Bool)

(assert (=> b!3604075 m!4100591))

(declare-fun m!4100593 () Bool)

(assert (=> b!3604075 m!4100593))

(declare-fun m!4100595 () Bool)

(assert (=> d!1061830 m!4100595))

(assert (=> d!1061830 m!4099725))

(declare-fun m!4100597 () Bool)

(assert (=> b!3604077 m!4100597))

(assert (=> b!3604078 m!4100597))

(assert (=> b!3604078 m!4100597))

(declare-fun m!4100599 () Bool)

(assert (=> b!3604078 m!4100599))

(assert (=> b!3603377 d!1061830))

(declare-fun b!3604082 () Bool)

(declare-fun e!2230271 () Bool)

(assert (=> b!3604082 (= e!2230271 (isPrefix!2976 (tail!5586 lt!1238490) (tail!5586 lt!1238494)))))

(declare-fun b!3604081 () Bool)

(declare-fun res!1457007 () Bool)

(assert (=> b!3604081 (=> (not res!1457007) (not e!2230271))))

(assert (=> b!3604081 (= res!1457007 (= (head!7561 lt!1238490) (head!7561 lt!1238494)))))

(declare-fun b!3604083 () Bool)

(declare-fun e!2230270 () Bool)

(assert (=> b!3604083 (= e!2230270 (>= (size!28887 lt!1238494) (size!28887 lt!1238490)))))

(declare-fun d!1061840 () Bool)

(assert (=> d!1061840 e!2230270))

(declare-fun res!1457004 () Bool)

(assert (=> d!1061840 (=> res!1457004 e!2230270)))

(declare-fun lt!1238829 () Bool)

(assert (=> d!1061840 (= res!1457004 (not lt!1238829))))

(declare-fun e!2230272 () Bool)

(assert (=> d!1061840 (= lt!1238829 e!2230272)))

(declare-fun res!1457005 () Bool)

(assert (=> d!1061840 (=> res!1457005 e!2230272)))

(assert (=> d!1061840 (= res!1457005 (is-Nil!37906 lt!1238490))))

(assert (=> d!1061840 (= (isPrefix!2976 lt!1238490 lt!1238494) lt!1238829)))

(declare-fun b!3604080 () Bool)

(assert (=> b!3604080 (= e!2230272 e!2230271)))

(declare-fun res!1457006 () Bool)

(assert (=> b!3604080 (=> (not res!1457006) (not e!2230271))))

(assert (=> b!3604080 (= res!1457006 (not (is-Nil!37906 lt!1238494)))))

(assert (= (and d!1061840 (not res!1457005)) b!3604080))

(assert (= (and b!3604080 res!1457006) b!3604081))

(assert (= (and b!3604081 res!1457007) b!3604082))

(assert (= (and d!1061840 (not res!1457004)) b!3604083))

(assert (=> b!3604082 m!4100027))

(assert (=> b!3604082 m!4100109))

(assert (=> b!3604082 m!4100027))

(assert (=> b!3604082 m!4100109))

(declare-fun m!4100601 () Bool)

(assert (=> b!3604082 m!4100601))

(assert (=> b!3604081 m!4099761))

(declare-fun m!4100603 () Bool)

(assert (=> b!3604081 m!4100603))

(assert (=> b!3604083 m!4100073))

(assert (=> b!3604083 m!4099733))

(assert (=> b!3603377 d!1061840))

(declare-fun d!1061842 () Bool)

(assert (=> d!1061842 (= (list!13969 lt!1238486) (list!13971 (c!623569 lt!1238486)))))

(declare-fun bs!570649 () Bool)

(assert (= bs!570649 d!1061842))

(declare-fun m!4100605 () Bool)

(assert (=> bs!570649 m!4100605))

(assert (=> b!3603377 d!1061842))

(declare-fun d!1061844 () Bool)

(assert (=> d!1061844 (= (get!12273 lt!1238503) (v!37578 lt!1238503))))

(assert (=> b!3603377 d!1061844))

(declare-fun d!1061846 () Bool)

(assert (=> d!1061846 (= (isDefined!6088 lt!1238479) (not (isEmpty!22374 lt!1238479)))))

(declare-fun bs!570650 () Bool)

(assert (= bs!570650 d!1061846))

(declare-fun m!4100607 () Bool)

(assert (=> bs!570650 m!4100607))

(assert (=> b!3603377 d!1061846))

(declare-fun d!1061848 () Bool)

(assert (=> d!1061848 (isPrefix!2976 lt!1238483 (++!9429 lt!1238483 suffix!1395))))

(declare-fun lt!1238830 () Unit!53961)

(assert (=> d!1061848 (= lt!1238830 (choose!21026 lt!1238483 suffix!1395))))

(assert (=> d!1061848 (= (lemmaConcatTwoListThenFirstIsPrefix!1897 lt!1238483 suffix!1395) lt!1238830)))

(declare-fun bs!570651 () Bool)

(assert (= bs!570651 d!1061848))

(assert (=> bs!570651 m!4099787))

(assert (=> bs!570651 m!4099787))

(declare-fun m!4100609 () Bool)

(assert (=> bs!570651 m!4100609))

(declare-fun m!4100611 () Bool)

(assert (=> bs!570651 m!4100611))

(assert (=> b!3603377 d!1061848))

(declare-fun e!2230274 () Bool)

(declare-fun b!3604087 () Bool)

(declare-fun lt!1238831 () List!38030)

(assert (=> b!3604087 (= e!2230274 (or (not (= suffix!1395 Nil!37906)) (= lt!1238831 lt!1238483)))))

(declare-fun b!3604085 () Bool)

(declare-fun e!2230273 () List!38030)

(assert (=> b!3604085 (= e!2230273 (Cons!37906 (h!43326 lt!1238483) (++!9429 (t!292601 lt!1238483) suffix!1395)))))

(declare-fun b!3604086 () Bool)

(declare-fun res!1457009 () Bool)

(assert (=> b!3604086 (=> (not res!1457009) (not e!2230274))))

(assert (=> b!3604086 (= res!1457009 (= (size!28887 lt!1238831) (+ (size!28887 lt!1238483) (size!28887 suffix!1395))))))

(declare-fun b!3604084 () Bool)

(assert (=> b!3604084 (= e!2230273 suffix!1395)))

(declare-fun d!1061850 () Bool)

(assert (=> d!1061850 e!2230274))

(declare-fun res!1457008 () Bool)

(assert (=> d!1061850 (=> (not res!1457008) (not e!2230274))))

(assert (=> d!1061850 (= res!1457008 (= (content!5414 lt!1238831) (set.union (content!5414 lt!1238483) (content!5414 suffix!1395))))))

(assert (=> d!1061850 (= lt!1238831 e!2230273)))

(declare-fun c!623687 () Bool)

(assert (=> d!1061850 (= c!623687 (is-Nil!37906 lt!1238483))))

(assert (=> d!1061850 (= (++!9429 lt!1238483 suffix!1395) lt!1238831)))

(assert (= (and d!1061850 c!623687) b!3604084))

(assert (= (and d!1061850 (not c!623687)) b!3604085))

(assert (= (and d!1061850 res!1457008) b!3604086))

(assert (= (and b!3604086 res!1457009) b!3604087))

(declare-fun m!4100613 () Bool)

(assert (=> b!3604085 m!4100613))

(declare-fun m!4100615 () Bool)

(assert (=> b!3604086 m!4100615))

(assert (=> b!3604086 m!4100215))

(declare-fun m!4100617 () Bool)

(assert (=> b!3604086 m!4100617))

(declare-fun m!4100619 () Bool)

(assert (=> d!1061850 m!4100619))

(assert (=> d!1061850 m!4100045))

(declare-fun m!4100621 () Bool)

(assert (=> d!1061850 m!4100621))

(assert (=> b!3603377 d!1061850))

(declare-fun b!3604090 () Bool)

(declare-fun e!2230276 () Bool)

(assert (=> b!3604090 (= e!2230276 (isPrefix!2976 (tail!5586 lt!1238483) (tail!5586 lt!1238494)))))

(declare-fun b!3604089 () Bool)

(declare-fun res!1457013 () Bool)

(assert (=> b!3604089 (=> (not res!1457013) (not e!2230276))))

(assert (=> b!3604089 (= res!1457013 (= (head!7561 lt!1238483) (head!7561 lt!1238494)))))

(declare-fun b!3604091 () Bool)

(declare-fun e!2230275 () Bool)

(assert (=> b!3604091 (= e!2230275 (>= (size!28887 lt!1238494) (size!28887 lt!1238483)))))

(declare-fun d!1061852 () Bool)

(assert (=> d!1061852 e!2230275))

(declare-fun res!1457010 () Bool)

(assert (=> d!1061852 (=> res!1457010 e!2230275)))

(declare-fun lt!1238832 () Bool)

(assert (=> d!1061852 (= res!1457010 (not lt!1238832))))

(declare-fun e!2230277 () Bool)

(assert (=> d!1061852 (= lt!1238832 e!2230277)))

(declare-fun res!1457011 () Bool)

(assert (=> d!1061852 (=> res!1457011 e!2230277)))

(assert (=> d!1061852 (= res!1457011 (is-Nil!37906 lt!1238483))))

(assert (=> d!1061852 (= (isPrefix!2976 lt!1238483 lt!1238494) lt!1238832)))

(declare-fun b!3604088 () Bool)

(assert (=> b!3604088 (= e!2230277 e!2230276)))

(declare-fun res!1457012 () Bool)

(assert (=> b!3604088 (=> (not res!1457012) (not e!2230276))))

(assert (=> b!3604088 (= res!1457012 (not (is-Nil!37906 lt!1238494)))))

(assert (= (and d!1061852 (not res!1457011)) b!3604088))

(assert (= (and b!3604088 res!1457012) b!3604089))

(assert (= (and b!3604089 res!1457013) b!3604090))

(assert (= (and d!1061852 (not res!1457010)) b!3604091))

(assert (=> b!3604090 m!4100145))

(assert (=> b!3604090 m!4100109))

(assert (=> b!3604090 m!4100145))

(assert (=> b!3604090 m!4100109))

(declare-fun m!4100623 () Bool)

(assert (=> b!3604090 m!4100623))

(assert (=> b!3604089 m!4100149))

(assert (=> b!3604089 m!4100603))

(assert (=> b!3604091 m!4100073))

(assert (=> b!3604091 m!4100215))

(assert (=> b!3603377 d!1061852))

(declare-fun d!1061854 () Bool)

(declare-fun lt!1238833 () Bool)

(assert (=> d!1061854 (= lt!1238833 (set.member rule!403 (content!5415 rules!3307)))))

(declare-fun e!2230279 () Bool)

(assert (=> d!1061854 (= lt!1238833 e!2230279)))

(declare-fun res!1457014 () Bool)

(assert (=> d!1061854 (=> (not res!1457014) (not e!2230279))))

(assert (=> d!1061854 (= res!1457014 (is-Cons!37907 rules!3307))))

(assert (=> d!1061854 (= (contains!7289 rules!3307 rule!403) lt!1238833)))

(declare-fun b!3604092 () Bool)

(declare-fun e!2230278 () Bool)

(assert (=> b!3604092 (= e!2230279 e!2230278)))

(declare-fun res!1457015 () Bool)

(assert (=> b!3604092 (=> res!1457015 e!2230278)))

(assert (=> b!3604092 (= res!1457015 (= (h!43327 rules!3307) rule!403))))

(declare-fun b!3604093 () Bool)

(assert (=> b!3604093 (= e!2230278 (contains!7289 (t!292602 rules!3307) rule!403))))

(assert (= (and d!1061854 res!1457014) b!3604092))

(assert (= (and b!3604092 (not res!1457015)) b!3604093))

(assert (=> d!1061854 m!4100255))

(declare-fun m!4100625 () Bool)

(assert (=> d!1061854 m!4100625))

(declare-fun m!4100627 () Bool)

(assert (=> b!3604093 m!4100627))

(assert (=> b!3603375 d!1061854))

(declare-fun d!1061856 () Bool)

(declare-fun lt!1238834 () Bool)

(assert (=> d!1061856 (= lt!1238834 (set.member lt!1238497 (content!5414 lt!1238489)))))

(declare-fun e!2230280 () Bool)

(assert (=> d!1061856 (= lt!1238834 e!2230280)))

(declare-fun res!1457017 () Bool)

(assert (=> d!1061856 (=> (not res!1457017) (not e!2230280))))

(assert (=> d!1061856 (= res!1457017 (is-Cons!37906 lt!1238489))))

(assert (=> d!1061856 (= (contains!7290 lt!1238489 lt!1238497) lt!1238834)))

(declare-fun b!3604094 () Bool)

(declare-fun e!2230281 () Bool)

(assert (=> b!3604094 (= e!2230280 e!2230281)))

(declare-fun res!1457016 () Bool)

(assert (=> b!3604094 (=> res!1457016 e!2230281)))

(assert (=> b!3604094 (= res!1457016 (= (h!43326 lt!1238489) lt!1238497))))

(declare-fun b!3604095 () Bool)

(assert (=> b!3604095 (= e!2230281 (contains!7290 (t!292601 lt!1238489) lt!1238497))))

(assert (= (and d!1061856 res!1457017) b!3604094))

(assert (= (and b!3604094 (not res!1457016)) b!3604095))

(assert (=> d!1061856 m!4100011))

(declare-fun m!4100629 () Bool)

(assert (=> d!1061856 m!4100629))

(declare-fun m!4100631 () Bool)

(assert (=> b!3604095 m!4100631))

(assert (=> b!3603396 d!1061856))

(declare-fun d!1061858 () Bool)

(assert (=> d!1061858 (= (head!7561 lt!1238490) (h!43326 lt!1238490))))

(assert (=> b!3603396 d!1061858))

(declare-fun b!3604106 () Bool)

(declare-fun e!2230284 () Bool)

(assert (=> b!3604106 (= e!2230284 tp_is_empty!17827)))

(declare-fun b!3604107 () Bool)

(declare-fun tp!1102100 () Bool)

(declare-fun tp!1102098 () Bool)

(assert (=> b!3604107 (= e!2230284 (and tp!1102100 tp!1102098))))

(declare-fun b!3604108 () Bool)

(declare-fun tp!1102101 () Bool)

(assert (=> b!3604108 (= e!2230284 tp!1102101)))

(assert (=> b!3603385 (= tp!1102029 e!2230284)))

(declare-fun b!3604109 () Bool)

(declare-fun tp!1102099 () Bool)

(declare-fun tp!1102102 () Bool)

(assert (=> b!3604109 (= e!2230284 (and tp!1102099 tp!1102102))))

(assert (= (and b!3603385 (is-ElementMatch!10372 (regex!5613 (rule!8353 token!511)))) b!3604106))

(assert (= (and b!3603385 (is-Concat!16216 (regex!5613 (rule!8353 token!511)))) b!3604107))

(assert (= (and b!3603385 (is-Star!10372 (regex!5613 (rule!8353 token!511)))) b!3604108))

(assert (= (and b!3603385 (is-Union!10372 (regex!5613 (rule!8353 token!511)))) b!3604109))

(declare-fun b!3604110 () Bool)

(declare-fun e!2230285 () Bool)

(assert (=> b!3604110 (= e!2230285 tp_is_empty!17827)))

(declare-fun b!3604111 () Bool)

(declare-fun tp!1102105 () Bool)

(declare-fun tp!1102103 () Bool)

(assert (=> b!3604111 (= e!2230285 (and tp!1102105 tp!1102103))))

(declare-fun b!3604112 () Bool)

(declare-fun tp!1102106 () Bool)

(assert (=> b!3604112 (= e!2230285 tp!1102106)))

(assert (=> b!3603406 (= tp!1102031 e!2230285)))

(declare-fun b!3604113 () Bool)

(declare-fun tp!1102104 () Bool)

(declare-fun tp!1102107 () Bool)

(assert (=> b!3604113 (= e!2230285 (and tp!1102104 tp!1102107))))

(assert (= (and b!3603406 (is-ElementMatch!10372 (regex!5613 anOtherTypeRule!33))) b!3604110))

(assert (= (and b!3603406 (is-Concat!16216 (regex!5613 anOtherTypeRule!33))) b!3604111))

(assert (= (and b!3603406 (is-Star!10372 (regex!5613 anOtherTypeRule!33))) b!3604112))

(assert (= (and b!3603406 (is-Union!10372 (regex!5613 anOtherTypeRule!33))) b!3604113))

(declare-fun b!3604118 () Bool)

(declare-fun e!2230288 () Bool)

(declare-fun tp!1102110 () Bool)

(assert (=> b!3604118 (= e!2230288 (and tp_is_empty!17827 tp!1102110))))

(assert (=> b!3603404 (= tp!1102023 e!2230288)))

(assert (= (and b!3603404 (is-Cons!37906 (t!292601 suffix!1395))) b!3604118))

(declare-fun b!3604119 () Bool)

(declare-fun e!2230289 () Bool)

(declare-fun tp!1102111 () Bool)

(assert (=> b!3604119 (= e!2230289 (and tp_is_empty!17827 tp!1102111))))

(assert (=> b!3603388 (= tp!1102027 e!2230289)))

(assert (= (and b!3603388 (is-Cons!37906 (originalCharacters!6327 token!511))) b!3604119))

(declare-fun b!3604120 () Bool)

(declare-fun e!2230290 () Bool)

(assert (=> b!3604120 (= e!2230290 tp_is_empty!17827)))

(declare-fun b!3604121 () Bool)

(declare-fun tp!1102114 () Bool)

(declare-fun tp!1102112 () Bool)

(assert (=> b!3604121 (= e!2230290 (and tp!1102114 tp!1102112))))

(declare-fun b!3604122 () Bool)

(declare-fun tp!1102115 () Bool)

(assert (=> b!3604122 (= e!2230290 tp!1102115)))

(assert (=> b!3603387 (= tp!1102032 e!2230290)))

(declare-fun b!3604123 () Bool)

(declare-fun tp!1102113 () Bool)

(declare-fun tp!1102116 () Bool)

(assert (=> b!3604123 (= e!2230290 (and tp!1102113 tp!1102116))))

(assert (= (and b!3603387 (is-ElementMatch!10372 (regex!5613 (h!43327 rules!3307)))) b!3604120))

(assert (= (and b!3603387 (is-Concat!16216 (regex!5613 (h!43327 rules!3307)))) b!3604121))

(assert (= (and b!3603387 (is-Star!10372 (regex!5613 (h!43327 rules!3307)))) b!3604122))

(assert (= (and b!3603387 (is-Union!10372 (regex!5613 (h!43327 rules!3307)))) b!3604123))

(declare-fun b!3604134 () Bool)

(declare-fun b_free!93329 () Bool)

(declare-fun b_next!94033 () Bool)

(assert (=> b!3604134 (= b_free!93329 (not b_next!94033))))

(declare-fun t!292695 () Bool)

(declare-fun tb!206425 () Bool)

(assert (=> (and b!3604134 (= (toValue!7897 (transformation!5613 (h!43327 (t!292602 rules!3307)))) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292695) tb!206425))

(declare-fun result!251600 () Bool)

(assert (= result!251600 result!251526))

(assert (=> d!1061644 t!292695))

(declare-fun t!292697 () Bool)

(declare-fun tb!206427 () Bool)

(assert (=> (and b!3604134 (= (toValue!7897 (transformation!5613 (h!43327 (t!292602 rules!3307)))) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292697) tb!206427))

(declare-fun result!251602 () Bool)

(assert (= result!251602 result!251544))

(assert (=> d!1061688 t!292697))

(assert (=> d!1061650 t!292695))

(declare-fun tb!206429 () Bool)

(declare-fun t!292699 () Bool)

(assert (=> (and b!3604134 (= (toValue!7897 (transformation!5613 (h!43327 (t!292602 rules!3307)))) (toValue!7897 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292699) tb!206429))

(declare-fun result!251604 () Bool)

(assert (= result!251604 result!251536))

(assert (=> d!1061644 t!292699))

(assert (=> d!1061636 t!292695))

(declare-fun b_and!262211 () Bool)

(declare-fun tp!1102126 () Bool)

(assert (=> b!3604134 (= tp!1102126 (and (=> t!292699 result!251604) (=> t!292695 result!251600) (=> t!292697 result!251602) b_and!262211))))

(declare-fun b_free!93331 () Bool)

(declare-fun b_next!94035 () Bool)

(assert (=> b!3604134 (= b_free!93331 (not b_next!94035))))

(declare-fun tb!206431 () Bool)

(declare-fun t!292701 () Bool)

(assert (=> (and b!3604134 (= (toChars!7756 (transformation!5613 (h!43327 (t!292602 rules!3307)))) (toChars!7756 (transformation!5613 (rule!8353 token!511)))) t!292701) tb!206431))

(declare-fun result!251606 () Bool)

(assert (= result!251606 result!251498))

(assert (=> b!3603544 t!292701))

(declare-fun t!292703 () Bool)

(declare-fun tb!206433 () Bool)

(assert (=> (and b!3604134 (= (toChars!7756 (transformation!5613 (h!43327 (t!292602 rules!3307)))) (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292703) tb!206433))

(declare-fun result!251608 () Bool)

(assert (= result!251608 result!251518))

(assert (=> d!1061636 t!292703))

(declare-fun t!292705 () Bool)

(declare-fun tb!206435 () Bool)

(assert (=> (and b!3604134 (= (toChars!7756 (transformation!5613 (h!43327 (t!292602 rules!3307)))) (toChars!7756 (transformation!5613 (rule!8353 (_1!22035 lt!1238496))))) t!292705) tb!206435))

(declare-fun result!251610 () Bool)

(assert (= result!251610 result!251552))

(assert (=> d!1061700 t!292705))

(assert (=> d!1061738 t!292701))

(declare-fun b_and!262213 () Bool)

(declare-fun tp!1102125 () Bool)

(assert (=> b!3604134 (= tp!1102125 (and (=> t!292701 result!251606) (=> t!292703 result!251608) (=> t!292705 result!251610) b_and!262213))))

(declare-fun e!2230300 () Bool)

(assert (=> b!3604134 (= e!2230300 (and tp!1102126 tp!1102125))))

(declare-fun b!3604133 () Bool)

(declare-fun e!2230299 () Bool)

(declare-fun tp!1102127 () Bool)

(assert (=> b!3604133 (= e!2230299 (and tp!1102127 (inv!51265 (tag!6309 (h!43327 (t!292602 rules!3307)))) (inv!51268 (transformation!5613 (h!43327 (t!292602 rules!3307)))) e!2230300))))

(declare-fun b!3604132 () Bool)

(declare-fun e!2230301 () Bool)

(declare-fun tp!1102128 () Bool)

(assert (=> b!3604132 (= e!2230301 (and e!2230299 tp!1102128))))

(assert (=> b!3603408 (= tp!1102026 e!2230301)))

(assert (= b!3604133 b!3604134))

(assert (= b!3604132 b!3604133))

(assert (= (and b!3603408 (is-Cons!37907 (t!292602 rules!3307))) b!3604132))

(declare-fun m!4100633 () Bool)

(assert (=> b!3604133 m!4100633))

(declare-fun m!4100635 () Bool)

(assert (=> b!3604133 m!4100635))

(declare-fun b!3604135 () Bool)

(declare-fun e!2230303 () Bool)

(assert (=> b!3604135 (= e!2230303 tp_is_empty!17827)))

(declare-fun b!3604136 () Bool)

(declare-fun tp!1102131 () Bool)

(declare-fun tp!1102129 () Bool)

(assert (=> b!3604136 (= e!2230303 (and tp!1102131 tp!1102129))))

(declare-fun b!3604137 () Bool)

(declare-fun tp!1102132 () Bool)

(assert (=> b!3604137 (= e!2230303 tp!1102132)))

(assert (=> b!3603402 (= tp!1102033 e!2230303)))

(declare-fun b!3604138 () Bool)

(declare-fun tp!1102130 () Bool)

(declare-fun tp!1102133 () Bool)

(assert (=> b!3604138 (= e!2230303 (and tp!1102130 tp!1102133))))

(assert (= (and b!3603402 (is-ElementMatch!10372 (regex!5613 rule!403))) b!3604135))

(assert (= (and b!3603402 (is-Concat!16216 (regex!5613 rule!403))) b!3604136))

(assert (= (and b!3603402 (is-Star!10372 (regex!5613 rule!403))) b!3604137))

(assert (= (and b!3603402 (is-Union!10372 (regex!5613 rule!403))) b!3604138))

(declare-fun b_lambda!106631 () Bool)

(assert (= b_lambda!106627 (or (and b!3603389 b_free!93307 (= (toChars!7756 (transformation!5613 rule!403)) (toChars!7756 (transformation!5613 (rule!8353 token!511))))) (and b!3603410 b_free!93303) (and b!3603405 b_free!93311 (= (toChars!7756 (transformation!5613 (h!43327 rules!3307))) (toChars!7756 (transformation!5613 (rule!8353 token!511))))) (and b!3604134 b_free!93331 (= (toChars!7756 (transformation!5613 (h!43327 (t!292602 rules!3307)))) (toChars!7756 (transformation!5613 (rule!8353 token!511))))) (and b!3603390 b_free!93299 (= (toChars!7756 (transformation!5613 anOtherTypeRule!33)) (toChars!7756 (transformation!5613 (rule!8353 token!511))))) b_lambda!106631)))

(declare-fun b_lambda!106633 () Bool)

(assert (= b_lambda!106599 (or (and b!3603389 b_free!93307 (= (toChars!7756 (transformation!5613 rule!403)) (toChars!7756 (transformation!5613 (rule!8353 token!511))))) (and b!3603410 b_free!93303) (and b!3603405 b_free!93311 (= (toChars!7756 (transformation!5613 (h!43327 rules!3307))) (toChars!7756 (transformation!5613 (rule!8353 token!511))))) (and b!3604134 b_free!93331 (= (toChars!7756 (transformation!5613 (h!43327 (t!292602 rules!3307)))) (toChars!7756 (transformation!5613 (rule!8353 token!511))))) (and b!3603390 b_free!93299 (= (toChars!7756 (transformation!5613 anOtherTypeRule!33)) (toChars!7756 (transformation!5613 (rule!8353 token!511))))) b_lambda!106633)))

(push 1)

(assert (not b!3604090))

(assert (not d!1061712))

(assert (not b!3603686))

(assert (not b!3603720))

(assert (not b!3603694))

(assert (not b_next!94013))

(assert (not b!3603672))

(assert (not b_lambda!106631))

(assert (not b!3603636))

(assert (not b_lambda!106611))

(assert (not b!3603704))

(assert (not d!1061698))

(assert (not b!3604123))

(assert (not b!3604091))

(assert (not d!1061690))

(assert (not b!3604121))

(assert (not bm!260540))

(assert (not bm!260530))

(assert (not b_lambda!106605))

(assert (not d!1061658))

(assert (not b!3604132))

(assert (not d!1061706))

(assert (not d!1061796))

(assert (not b!3603571))

(assert (not d!1061654))

(assert (not d!1061850))

(assert (not d!1061696))

(assert (not b!3603767))

(assert (not b!3603671))

(assert (not b_next!94009))

(assert (not b!3604012))

(assert (not b!3604015))

(assert (not b!3603721))

(assert (not b!3603646))

(assert (not b!3603765))

(assert (not d!1061634))

(assert (not bm!260536))

(assert (not b!3603711))

(assert (not b_lambda!106609))

(assert (not b!3603641))

(assert (not d!1061746))

(assert (not d!1061804))

(assert (not d!1061854))

(assert (not b_lambda!106603))

(assert (not d!1061644))

(assert (not tb!206369))

(assert b_and!262211)

(assert (not b!3603776))

(assert (not d!1061798))

(assert (not b_next!94001))

(assert (not d!1061822))

(assert (not d!1061738))

(assert (not b!3604133))

(assert (not d!1061714))

(assert (not d!1061754))

(assert (not bm!260563))

(assert (not b_next!94007))

(assert (not b!3603577))

(assert (not b!3603710))

(assert (not b!3603770))

(assert (not d!1061848))

(assert (not b!3604119))

(assert (not d!1061736))

(assert (not b!3603970))

(assert (not b!3604136))

(assert (not b!3603530))

(assert b_and!262199)

(assert (not b!3604108))

(assert (not b!3603691))

(assert (not b!3603642))

(assert (not b!3604007))

(assert (not d!1061632))

(assert (not b!3604006))

(assert (not b!3604122))

(assert (not b!3604014))

(assert (not b!3603766))

(assert (not b!3603800))

(assert tp_is_empty!17827)

(assert (not b!3604095))

(assert (not b!3604089))

(assert (not d!1061646))

(assert (not d!1061708))

(assert (not tb!206337))

(assert (not tb!206385))

(assert (not b!3603774))

(assert b_and!262195)

(assert b_and!262141)

(assert (not b_lambda!106633))

(assert (not b!3603769))

(assert (not b!3604118))

(assert (not b!3603768))

(assert (not b!3604077))

(assert (not b!3604112))

(assert (not b!3604082))

(assert (not b!3603667))

(assert (not b!3603718))

(assert (not bm!260542))

(assert (not bm!260539))

(assert (not d!1061678))

(assert (not b!3603762))

(assert (not b!3603665))

(assert (not b!3603539))

(assert (not b!3603790))

(assert (not bm!260531))

(assert (not b!3603670))

(assert (not b!3603570))

(assert (not b_next!94015))

(assert (not b!3604075))

(assert (not b!3604044))

(assert (not b!3604107))

(assert (not b!3604013))

(assert (not b!3603697))

(assert b_and!262139)

(assert (not b_next!94005))

(assert (not b!3604137))

(assert (not d!1061742))

(assert (not b!3603550))

(assert (not b!3603545))

(assert (not b!3604011))

(assert (not b!3604138))

(assert (not d!1061744))

(assert (not b_next!94011))

(assert b_and!262145)

(assert (not b!3603771))

(assert (not d!1061680))

(assert (not b!3603538))

(assert (not d!1061750))

(assert (not b!3603668))

(assert (not b!3604008))

(assert (not b!3603684))

(assert (not d!1061846))

(assert (not d!1061830))

(assert b_and!262201)

(assert (not bm!260543))

(assert (not b!3604111))

(assert (not b!3603679))

(assert (not b!3603544))

(assert b_and!262213)

(assert (not d!1061636))

(assert b_and!262143)

(assert (not b!3604086))

(assert (not tb!206361))

(assert (not b_lambda!106615))

(assert (not b!3603696))

(assert (not b_next!94003))

(assert (not b!3603666))

(assert (not b!3603801))

(assert (not tb!206353))

(assert (not b!3603715))

(assert (not b!3603632))

(assert (not d!1061716))

(assert (not d!1061842))

(assert (not b_next!94035))

(assert (not bm!260535))

(assert (not d!1061674))

(assert (not b!3604113))

(assert (not d!1061662))

(assert (not b!3603673))

(assert (not d!1061684))

(assert b_and!262197)

(assert (not b!3603602))

(assert (not d!1061692))

(assert (not d!1061648))

(assert (not b!3604078))

(assert (not b!3603972))

(assert (not b!3604081))

(assert (not b!3603802))

(assert (not b!3603971))

(assert (not bm!260534))

(assert (not b!3603687))

(assert (not b_next!94033))

(assert (not d!1061700))

(assert (not d!1061676))

(assert (not b!3603631))

(assert (not b_lambda!106613))

(assert (not b!3604043))

(assert (not d!1061672))

(assert (not b!3603558))

(assert (not b!3603532))

(assert (not b!3604109))

(assert (not tb!206377))

(assert (not b!3603531))

(assert (not b!3604010))

(assert (not b!3604085))

(assert (not b!3603639))

(assert (not d!1061856))

(assert (not bm!260528))

(assert (not b!3604005))

(assert (not b_lambda!106607))

(assert (not b!3603763))

(assert (not b!3603729))

(assert (not b!3604093))

(assert (not d!1061682))

(assert (not b!3604083))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!94013))

(assert (not b_next!94009))

(assert (not b_next!94007))

(assert b_and!262199)

(assert (not b_next!94005))

(assert b_and!262201)

(assert (not b_next!94035))

(assert b_and!262197)

(assert (not b_next!94033))

(assert (not b_next!94001))

(assert b_and!262211)

(assert b_and!262195)

(assert b_and!262141)

(assert (not b_next!94015))

(assert b_and!262139)

(assert (not b_next!94011))

(assert b_and!262145)

(assert b_and!262213)

(assert (not b_next!94003))

(assert b_and!262143)

(check-sat)

(pop 1)

