; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49052 () Bool)

(assert start!49052)

(declare-fun b!533296 () Bool)

(declare-fun b_free!14473 () Bool)

(declare-fun b_next!14489 () Bool)

(assert (=> b!533296 (= b_free!14473 (not b_next!14489))))

(declare-fun tp!170188 () Bool)

(declare-fun b_and!52123 () Bool)

(assert (=> b!533296 (= tp!170188 b_and!52123)))

(declare-fun b_free!14475 () Bool)

(declare-fun b_next!14491 () Bool)

(assert (=> b!533296 (= b_free!14475 (not b_next!14491))))

(declare-fun tp!170190 () Bool)

(declare-fun b_and!52125 () Bool)

(assert (=> b!533296 (= tp!170190 b_and!52125)))

(declare-fun b!533303 () Bool)

(declare-fun b_free!14477 () Bool)

(declare-fun b_next!14493 () Bool)

(assert (=> b!533303 (= b_free!14477 (not b_next!14493))))

(declare-fun tp!170183 () Bool)

(declare-fun b_and!52127 () Bool)

(assert (=> b!533303 (= tp!170183 b_and!52127)))

(declare-fun b_free!14479 () Bool)

(declare-fun b_next!14495 () Bool)

(assert (=> b!533303 (= b_free!14479 (not b_next!14495))))

(declare-fun tp!170191 () Bool)

(declare-fun b_and!52129 () Bool)

(assert (=> b!533303 (= tp!170191 b_and!52129)))

(declare-fun b!533287 () Bool)

(declare-fun res!225314 () Bool)

(declare-fun e!321252 () Bool)

(assert (=> b!533287 (=> (not res!225314) (not e!321252))))

(declare-datatypes ((C!3460 0))(
  ( (C!3461 (val!1956 Int)) )
))
(declare-datatypes ((Regex!1269 0))(
  ( (ElementMatch!1269 (c!101686 C!3460)) (Concat!2228 (regOne!3050 Regex!1269) (regTwo!3050 Regex!1269)) (EmptyExpr!1269) (Star!1269 (reg!1598 Regex!1269)) (EmptyLang!1269) (Union!1269 (regOne!3051 Regex!1269) (regTwo!3051 Regex!1269)) )
))
(declare-datatypes ((String!6538 0))(
  ( (String!6539 (value!31488 String)) )
))
(declare-datatypes ((List!5133 0))(
  ( (Nil!5123) (Cons!5123 (h!10524 (_ BitVec 16)) (t!73918 List!5133)) )
))
(declare-datatypes ((TokenValue!959 0))(
  ( (FloatLiteralValue!1918 (text!7158 List!5133)) (TokenValueExt!958 (__x!3816 Int)) (Broken!4795 (value!31489 List!5133)) (Object!968) (End!959) (Def!959) (Underscore!959) (Match!959) (Else!959) (Error!959) (Case!959) (If!959) (Extends!959) (Abstract!959) (Class!959) (Val!959) (DelimiterValue!1918 (del!1019 List!5133)) (KeywordValue!965 (value!31490 List!5133)) (CommentValue!1918 (value!31491 List!5133)) (WhitespaceValue!1918 (value!31492 List!5133)) (IndentationValue!959 (value!31493 List!5133)) (String!6540) (Int32!959) (Broken!4796 (value!31494 List!5133)) (Boolean!960) (Unit!8934) (OperatorValue!962 (op!1019 List!5133)) (IdentifierValue!1918 (value!31495 List!5133)) (IdentifierValue!1919 (value!31496 List!5133)) (WhitespaceValue!1919 (value!31497 List!5133)) (True!1918) (False!1918) (Broken!4797 (value!31498 List!5133)) (Broken!4798 (value!31499 List!5133)) (True!1919) (RightBrace!959) (RightBracket!959) (Colon!959) (Null!959) (Comma!959) (LeftBracket!959) (False!1919) (LeftBrace!959) (ImaginaryLiteralValue!959 (text!7159 List!5133)) (StringLiteralValue!2877 (value!31500 List!5133)) (EOFValue!959 (value!31501 List!5133)) (IdentValue!959 (value!31502 List!5133)) (DelimiterValue!1919 (value!31503 List!5133)) (DedentValue!959 (value!31504 List!5133)) (NewLineValue!959 (value!31505 List!5133)) (IntegerValue!2877 (value!31506 (_ BitVec 32)) (text!7160 List!5133)) (IntegerValue!2878 (value!31507 Int) (text!7161 List!5133)) (Times!959) (Or!959) (Equal!959) (Minus!959) (Broken!4799 (value!31508 List!5133)) (And!959) (Div!959) (LessEqual!959) (Mod!959) (Concat!2229) (Not!959) (Plus!959) (SpaceValue!959 (value!31509 List!5133)) (IntegerValue!2879 (value!31510 Int) (text!7162 List!5133)) (StringLiteralValue!2878 (text!7163 List!5133)) (FloatLiteralValue!1919 (text!7164 List!5133)) (BytesLiteralValue!959 (value!31511 List!5133)) (CommentValue!1919 (value!31512 List!5133)) (StringLiteralValue!2879 (value!31513 List!5133)) (ErrorTokenValue!959 (msg!1020 List!5133)) )
))
(declare-datatypes ((List!5134 0))(
  ( (Nil!5124) (Cons!5124 (h!10525 C!3460) (t!73919 List!5134)) )
))
(declare-datatypes ((IArray!3305 0))(
  ( (IArray!3306 (innerList!1710 List!5134)) )
))
(declare-datatypes ((Conc!1652 0))(
  ( (Node!1652 (left!4316 Conc!1652) (right!4646 Conc!1652) (csize!3534 Int) (cheight!1863 Int)) (Leaf!2627 (xs!4289 IArray!3305) (csize!3535 Int)) (Empty!1652) )
))
(declare-datatypes ((BalanceConc!3312 0))(
  ( (BalanceConc!3313 (c!101687 Conc!1652)) )
))
(declare-datatypes ((TokenValueInjection!1686 0))(
  ( (TokenValueInjection!1687 (toValue!1782 Int) (toChars!1641 Int)) )
))
(declare-datatypes ((Rule!1670 0))(
  ( (Rule!1671 (regex!935 Regex!1269) (tag!1197 String!6538) (isSeparator!935 Bool) (transformation!935 TokenValueInjection!1686)) )
))
(declare-datatypes ((List!5135 0))(
  ( (Nil!5125) (Cons!5125 (h!10526 Rule!1670) (t!73920 List!5135)) )
))
(declare-fun rules!3103 () List!5135)

(declare-fun isEmpty!3706 (List!5135) Bool)

(assert (=> b!533287 (= res!225314 (not (isEmpty!3706 rules!3103)))))

(declare-fun b!533288 () Bool)

(declare-fun e!321267 () Bool)

(declare-fun e!321261 () Bool)

(assert (=> b!533288 (= e!321267 e!321261)))

(declare-fun res!225313 () Bool)

(assert (=> b!533288 (=> (not res!225313) (not e!321261))))

(declare-datatypes ((Token!1606 0))(
  ( (Token!1607 (value!31514 TokenValue!959) (rule!1637 Rule!1670) (size!4140 Int) (originalCharacters!974 List!5134)) )
))
(declare-datatypes ((tuple2!6228 0))(
  ( (tuple2!6229 (_1!3378 Token!1606) (_2!3378 List!5134)) )
))
(declare-datatypes ((Option!1285 0))(
  ( (None!1284) (Some!1284 (v!16091 tuple2!6228)) )
))
(declare-fun lt!219599 () Option!1285)

(declare-fun isDefined!1097 (Option!1285) Bool)

(assert (=> b!533288 (= res!225313 (isDefined!1097 lt!219599))))

(declare-fun lt!219590 () List!5134)

(declare-datatypes ((LexerInterface!821 0))(
  ( (LexerInterfaceExt!818 (__x!3817 Int)) (Lexer!819) )
))
(declare-fun thiss!22590 () LexerInterface!821)

(declare-fun maxPrefix!519 (LexerInterface!821 List!5135 List!5134) Option!1285)

(assert (=> b!533288 (= lt!219599 (maxPrefix!519 thiss!22590 rules!3103 lt!219590))))

(declare-fun input!2705 () List!5134)

(declare-fun suffix!1342 () List!5134)

(declare-fun ++!1423 (List!5134 List!5134) List!5134)

(assert (=> b!533288 (= lt!219590 (++!1423 input!2705 suffix!1342))))

(declare-fun res!225317 () Bool)

(assert (=> start!49052 (=> (not res!225317) (not e!321252))))

(get-info :version)

(assert (=> start!49052 (= res!225317 ((_ is Lexer!819) thiss!22590))))

(assert (=> start!49052 e!321252))

(declare-fun e!321253 () Bool)

(assert (=> start!49052 e!321253))

(declare-fun e!321260 () Bool)

(assert (=> start!49052 e!321260))

(declare-fun token!491 () Token!1606)

(declare-fun e!321259 () Bool)

(declare-fun inv!6432 (Token!1606) Bool)

(assert (=> start!49052 (and (inv!6432 token!491) e!321259)))

(assert (=> start!49052 true))

(declare-fun e!321256 () Bool)

(assert (=> start!49052 e!321256))

(declare-fun b!533289 () Bool)

(declare-fun e!321258 () Bool)

(declare-fun e!321264 () Bool)

(assert (=> b!533289 (= e!321258 e!321264)))

(declare-fun res!225308 () Bool)

(assert (=> b!533289 (=> (not res!225308) (not e!321264))))

(declare-fun lt!219594 () Option!1285)

(assert (=> b!533289 (= res!225308 ((_ is Some!1284) lt!219594))))

(assert (=> b!533289 (= lt!219594 (maxPrefix!519 thiss!22590 rules!3103 input!2705))))

(declare-fun b!533290 () Bool)

(declare-fun res!225318 () Bool)

(assert (=> b!533290 (=> (not res!225318) (not e!321264))))

(declare-fun lt!219593 () List!5134)

(assert (=> b!533290 (= res!225318 (= (++!1423 lt!219593 suffix!1342) lt!219590))))

(declare-fun b!533291 () Bool)

(declare-fun tp_is_empty!2893 () Bool)

(declare-fun tp!170192 () Bool)

(assert (=> b!533291 (= e!321256 (and tp_is_empty!2893 tp!170192))))

(declare-fun lt!219592 () Int)

(declare-fun lt!219591 () List!5134)

(declare-fun e!321255 () Bool)

(declare-fun b!533292 () Bool)

(assert (=> b!533292 (= e!321255 (and (= (size!4140 (_1!3378 (v!16091 lt!219594))) lt!219592) (= (originalCharacters!974 (_1!3378 (v!16091 lt!219594))) lt!219591)))))

(declare-fun b!533293 () Bool)

(declare-datatypes ((Unit!8935 0))(
  ( (Unit!8936) )
))
(declare-fun e!321266 () Unit!8935)

(declare-fun Unit!8937 () Unit!8935)

(assert (=> b!533293 (= e!321266 Unit!8937)))

(assert (=> b!533293 false))

(declare-fun b!533294 () Bool)

(declare-fun Unit!8938 () Unit!8935)

(assert (=> b!533294 (= e!321266 Unit!8938)))

(declare-fun b!533295 () Bool)

(declare-fun tp!170187 () Bool)

(assert (=> b!533295 (= e!321253 (and tp_is_empty!2893 tp!170187))))

(declare-fun e!321251 () Bool)

(assert (=> b!533296 (= e!321251 (and tp!170188 tp!170190))))

(declare-fun b!533297 () Bool)

(declare-fun e!321254 () Bool)

(declare-fun tp!170186 () Bool)

(declare-fun inv!6429 (String!6538) Bool)

(declare-fun inv!6433 (TokenValueInjection!1686) Bool)

(assert (=> b!533297 (= e!321254 (and tp!170186 (inv!6429 (tag!1197 (h!10526 rules!3103))) (inv!6433 (transformation!935 (h!10526 rules!3103))) e!321251))))

(declare-fun b!533298 () Bool)

(declare-fun size!4141 (List!5134) Int)

(assert (=> b!533298 (= e!321264 (not (>= (size!4141 input!2705) lt!219592)))))

(assert (=> b!533298 e!321255))

(declare-fun res!225311 () Bool)

(assert (=> b!533298 (=> (not res!225311) (not e!321255))))

(declare-fun apply!1210 (TokenValueInjection!1686 BalanceConc!3312) TokenValue!959)

(declare-fun seqFromList!1133 (List!5134) BalanceConc!3312)

(assert (=> b!533298 (= res!225311 (= (value!31514 (_1!3378 (v!16091 lt!219594))) (apply!1210 (transformation!935 (rule!1637 (_1!3378 (v!16091 lt!219594)))) (seqFromList!1133 lt!219591))))))

(declare-fun lt!219598 () Unit!8935)

(declare-fun lemmaInv!83 (TokenValueInjection!1686) Unit!8935)

(assert (=> b!533298 (= lt!219598 (lemmaInv!83 (transformation!935 (rule!1637 token!491))))))

(declare-fun lt!219602 () Unit!8935)

(assert (=> b!533298 (= lt!219602 (lemmaInv!83 (transformation!935 (rule!1637 (_1!3378 (v!16091 lt!219594))))))))

(declare-fun ruleValid!155 (LexerInterface!821 Rule!1670) Bool)

(assert (=> b!533298 (ruleValid!155 thiss!22590 (rule!1637 token!491))))

(declare-fun lt!219597 () Unit!8935)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!14 (LexerInterface!821 Rule!1670 List!5135) Unit!8935)

(assert (=> b!533298 (= lt!219597 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!14 thiss!22590 (rule!1637 token!491) rules!3103))))

(assert (=> b!533298 (ruleValid!155 thiss!22590 (rule!1637 (_1!3378 (v!16091 lt!219594))))))

(declare-fun lt!219596 () Unit!8935)

(assert (=> b!533298 (= lt!219596 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!14 thiss!22590 (rule!1637 (_1!3378 (v!16091 lt!219594))) rules!3103))))

(declare-fun isPrefix!577 (List!5134 List!5134) Bool)

(assert (=> b!533298 (isPrefix!577 input!2705 input!2705)))

(declare-fun lt!219589 () Unit!8935)

(declare-fun lemmaIsPrefixRefl!317 (List!5134 List!5134) Unit!8935)

(assert (=> b!533298 (= lt!219589 (lemmaIsPrefixRefl!317 input!2705 input!2705))))

(declare-fun lt!219600 () List!5134)

(assert (=> b!533298 (= (_2!3378 (v!16091 lt!219594)) lt!219600)))

(declare-fun lt!219585 () Unit!8935)

(declare-fun lemmaSamePrefixThenSameSuffix!304 (List!5134 List!5134 List!5134 List!5134 List!5134) Unit!8935)

(assert (=> b!533298 (= lt!219585 (lemmaSamePrefixThenSameSuffix!304 lt!219591 (_2!3378 (v!16091 lt!219594)) lt!219591 lt!219600 input!2705))))

(declare-fun getSuffix!100 (List!5134 List!5134) List!5134)

(assert (=> b!533298 (= lt!219600 (getSuffix!100 input!2705 lt!219591))))

(assert (=> b!533298 (isPrefix!577 lt!219591 (++!1423 lt!219591 (_2!3378 (v!16091 lt!219594))))))

(declare-fun lt!219586 () Unit!8935)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!428 (List!5134 List!5134) Unit!8935)

(assert (=> b!533298 (= lt!219586 (lemmaConcatTwoListThenFirstIsPrefix!428 lt!219591 (_2!3378 (v!16091 lt!219594))))))

(declare-fun lt!219587 () Unit!8935)

(declare-fun lemmaCharactersSize!14 (Token!1606) Unit!8935)

(assert (=> b!533298 (= lt!219587 (lemmaCharactersSize!14 token!491))))

(declare-fun lt!219601 () Unit!8935)

(assert (=> b!533298 (= lt!219601 (lemmaCharactersSize!14 (_1!3378 (v!16091 lt!219594))))))

(declare-fun lt!219595 () Unit!8935)

(assert (=> b!533298 (= lt!219595 e!321266)))

(declare-fun c!101685 () Bool)

(assert (=> b!533298 (= c!101685 (> lt!219592 (size!4141 lt!219593)))))

(assert (=> b!533298 (= lt!219592 (size!4141 lt!219591))))

(declare-fun list!2131 (BalanceConc!3312) List!5134)

(declare-fun charsOf!564 (Token!1606) BalanceConc!3312)

(assert (=> b!533298 (= lt!219591 (list!2131 (charsOf!564 (_1!3378 (v!16091 lt!219594)))))))

(assert (=> b!533298 (= lt!219594 (Some!1284 (v!16091 lt!219594)))))

(declare-fun lt!219588 () Unit!8935)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!20 (List!5134 List!5134 List!5134 List!5134) Unit!8935)

(assert (=> b!533298 (= lt!219588 (lemmaConcatSameAndSameSizesThenSameLists!20 lt!219593 suffix!1342 input!2705 suffix!1342))))

(declare-fun e!321263 () Bool)

(declare-fun tp!170189 () Bool)

(declare-fun e!321257 () Bool)

(declare-fun b!533299 () Bool)

(assert (=> b!533299 (= e!321257 (and tp!170189 (inv!6429 (tag!1197 (rule!1637 token!491))) (inv!6433 (transformation!935 (rule!1637 token!491))) e!321263))))

(declare-fun b!533300 () Bool)

(declare-fun res!225316 () Bool)

(assert (=> b!533300 (=> (not res!225316) (not e!321255))))

(assert (=> b!533300 (= res!225316 (= (size!4140 (_1!3378 (v!16091 lt!219594))) (size!4141 (originalCharacters!974 (_1!3378 (v!16091 lt!219594))))))))

(declare-fun b!533301 () Bool)

(assert (=> b!533301 (= e!321252 e!321267)))

(declare-fun res!225312 () Bool)

(assert (=> b!533301 (=> (not res!225312) (not e!321267))))

(assert (=> b!533301 (= res!225312 (= lt!219593 input!2705))))

(assert (=> b!533301 (= lt!219593 (list!2131 (charsOf!564 token!491)))))

(declare-fun b!533302 () Bool)

(declare-fun res!225310 () Bool)

(assert (=> b!533302 (=> (not res!225310) (not e!321252))))

(declare-fun rulesInvariant!784 (LexerInterface!821 List!5135) Bool)

(assert (=> b!533302 (= res!225310 (rulesInvariant!784 thiss!22590 rules!3103))))

(assert (=> b!533303 (= e!321263 (and tp!170183 tp!170191))))

(declare-fun b!533304 () Bool)

(declare-fun tp!170185 () Bool)

(assert (=> b!533304 (= e!321260 (and e!321254 tp!170185))))

(declare-fun b!533305 () Bool)

(declare-fun res!225309 () Bool)

(assert (=> b!533305 (=> (not res!225309) (not e!321252))))

(declare-fun isEmpty!3707 (List!5134) Bool)

(assert (=> b!533305 (= res!225309 (not (isEmpty!3707 input!2705)))))

(declare-fun b!533306 () Bool)

(assert (=> b!533306 (= e!321261 e!321258)))

(declare-fun res!225315 () Bool)

(assert (=> b!533306 (=> (not res!225315) (not e!321258))))

(declare-fun lt!219603 () tuple2!6228)

(assert (=> b!533306 (= res!225315 (and (= (_1!3378 lt!219603) token!491) (= (_2!3378 lt!219603) suffix!1342)))))

(declare-fun get!1917 (Option!1285) tuple2!6228)

(assert (=> b!533306 (= lt!219603 (get!1917 lt!219599))))

(declare-fun b!533307 () Bool)

(declare-fun tp!170184 () Bool)

(declare-fun inv!21 (TokenValue!959) Bool)

(assert (=> b!533307 (= e!321259 (and (inv!21 (value!31514 token!491)) e!321257 tp!170184))))

(assert (= (and start!49052 res!225317) b!533287))

(assert (= (and b!533287 res!225314) b!533302))

(assert (= (and b!533302 res!225310) b!533305))

(assert (= (and b!533305 res!225309) b!533301))

(assert (= (and b!533301 res!225312) b!533288))

(assert (= (and b!533288 res!225313) b!533306))

(assert (= (and b!533306 res!225315) b!533289))

(assert (= (and b!533289 res!225308) b!533290))

(assert (= (and b!533290 res!225318) b!533298))

(assert (= (and b!533298 c!101685) b!533293))

(assert (= (and b!533298 (not c!101685)) b!533294))

(assert (= (and b!533298 res!225311) b!533300))

(assert (= (and b!533300 res!225316) b!533292))

(assert (= (and start!49052 ((_ is Cons!5124) suffix!1342)) b!533295))

(assert (= b!533297 b!533296))

(assert (= b!533304 b!533297))

(assert (= (and start!49052 ((_ is Cons!5125) rules!3103)) b!533304))

(assert (= b!533299 b!533303))

(assert (= b!533307 b!533299))

(assert (= start!49052 b!533307))

(assert (= (and start!49052 ((_ is Cons!5124) input!2705)) b!533291))

(declare-fun m!778621 () Bool)

(assert (=> start!49052 m!778621))

(declare-fun m!778623 () Bool)

(assert (=> b!533299 m!778623))

(declare-fun m!778625 () Bool)

(assert (=> b!533299 m!778625))

(declare-fun m!778627 () Bool)

(assert (=> b!533307 m!778627))

(declare-fun m!778629 () Bool)

(assert (=> b!533298 m!778629))

(declare-fun m!778631 () Bool)

(assert (=> b!533298 m!778631))

(declare-fun m!778633 () Bool)

(assert (=> b!533298 m!778633))

(declare-fun m!778635 () Bool)

(assert (=> b!533298 m!778635))

(declare-fun m!778637 () Bool)

(assert (=> b!533298 m!778637))

(declare-fun m!778639 () Bool)

(assert (=> b!533298 m!778639))

(declare-fun m!778641 () Bool)

(assert (=> b!533298 m!778641))

(declare-fun m!778643 () Bool)

(assert (=> b!533298 m!778643))

(declare-fun m!778645 () Bool)

(assert (=> b!533298 m!778645))

(declare-fun m!778647 () Bool)

(assert (=> b!533298 m!778647))

(assert (=> b!533298 m!778645))

(declare-fun m!778649 () Bool)

(assert (=> b!533298 m!778649))

(declare-fun m!778651 () Bool)

(assert (=> b!533298 m!778651))

(declare-fun m!778653 () Bool)

(assert (=> b!533298 m!778653))

(declare-fun m!778655 () Bool)

(assert (=> b!533298 m!778655))

(declare-fun m!778657 () Bool)

(assert (=> b!533298 m!778657))

(declare-fun m!778659 () Bool)

(assert (=> b!533298 m!778659))

(declare-fun m!778661 () Bool)

(assert (=> b!533298 m!778661))

(declare-fun m!778663 () Bool)

(assert (=> b!533298 m!778663))

(declare-fun m!778665 () Bool)

(assert (=> b!533298 m!778665))

(declare-fun m!778667 () Bool)

(assert (=> b!533298 m!778667))

(assert (=> b!533298 m!778639))

(declare-fun m!778669 () Bool)

(assert (=> b!533298 m!778669))

(declare-fun m!778671 () Bool)

(assert (=> b!533298 m!778671))

(assert (=> b!533298 m!778657))

(declare-fun m!778673 () Bool)

(assert (=> b!533298 m!778673))

(declare-fun m!778675 () Bool)

(assert (=> b!533288 m!778675))

(declare-fun m!778677 () Bool)

(assert (=> b!533288 m!778677))

(declare-fun m!778679 () Bool)

(assert (=> b!533288 m!778679))

(declare-fun m!778681 () Bool)

(assert (=> b!533300 m!778681))

(declare-fun m!778683 () Bool)

(assert (=> b!533290 m!778683))

(declare-fun m!778685 () Bool)

(assert (=> b!533289 m!778685))

(declare-fun m!778687 () Bool)

(assert (=> b!533297 m!778687))

(declare-fun m!778689 () Bool)

(assert (=> b!533297 m!778689))

(declare-fun m!778691 () Bool)

(assert (=> b!533287 m!778691))

(declare-fun m!778693 () Bool)

(assert (=> b!533302 m!778693))

(declare-fun m!778695 () Bool)

(assert (=> b!533306 m!778695))

(declare-fun m!778697 () Bool)

(assert (=> b!533301 m!778697))

(assert (=> b!533301 m!778697))

(declare-fun m!778699 () Bool)

(assert (=> b!533301 m!778699))

(declare-fun m!778701 () Bool)

(assert (=> b!533305 m!778701))

(check-sat b_and!52125 (not b_next!14491) (not b!533289) (not b_next!14495) b_and!52129 (not start!49052) (not b!533304) (not b!533307) (not b!533295) (not b_next!14493) (not b_next!14489) (not b!533287) (not b!533300) b_and!52123 (not b!533290) (not b!533302) (not b!533288) (not b!533301) b_and!52127 (not b!533306) tp_is_empty!2893 (not b!533305) (not b!533298) (not b!533297) (not b!533291) (not b!533299))
(check-sat b_and!52125 (not b_next!14491) (not b_next!14489) b_and!52123 b_and!52127 (not b_next!14495) b_and!52129 (not b_next!14493))
