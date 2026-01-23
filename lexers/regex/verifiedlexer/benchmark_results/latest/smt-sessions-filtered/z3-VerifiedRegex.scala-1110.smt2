; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57660 () Bool)

(assert start!57660)

(declare-fun b!605121 () Bool)

(declare-fun b_free!17229 () Bool)

(declare-fun b_next!17245 () Bool)

(assert (=> b!605121 (= b_free!17229 (not b_next!17245))))

(declare-fun tp!188083 () Bool)

(declare-fun b_and!59847 () Bool)

(assert (=> b!605121 (= tp!188083 b_and!59847)))

(declare-fun b_free!17231 () Bool)

(declare-fun b_next!17247 () Bool)

(assert (=> b!605121 (= b_free!17231 (not b_next!17247))))

(declare-fun tp!188084 () Bool)

(declare-fun b_and!59849 () Bool)

(assert (=> b!605121 (= tp!188084 b_and!59849)))

(declare-fun b!605099 () Bool)

(declare-fun b_free!17233 () Bool)

(declare-fun b_next!17249 () Bool)

(assert (=> b!605099 (= b_free!17233 (not b_next!17249))))

(declare-fun tp!188080 () Bool)

(declare-fun b_and!59851 () Bool)

(assert (=> b!605099 (= tp!188080 b_and!59851)))

(declare-fun b_free!17235 () Bool)

(declare-fun b_next!17251 () Bool)

(assert (=> b!605099 (= b_free!17235 (not b_next!17251))))

(declare-fun tp!188076 () Bool)

(declare-fun b_and!59853 () Bool)

(assert (=> b!605099 (= tp!188076 b_and!59853)))

(declare-datatypes ((C!4004 0))(
  ( (C!4005 (val!2228 Int)) )
))
(declare-datatypes ((Regex!1541 0))(
  ( (ElementMatch!1541 (c!112179 C!4004)) (Concat!2772 (regOne!3594 Regex!1541) (regTwo!3594 Regex!1541)) (EmptyExpr!1541) (Star!1541 (reg!1870 Regex!1541)) (EmptyLang!1541) (Union!1541 (regOne!3595 Regex!1541) (regTwo!3595 Regex!1541)) )
))
(declare-datatypes ((String!7898 0))(
  ( (String!7899 (value!39240 String)) )
))
(declare-datatypes ((List!6060 0))(
  ( (Nil!6050) (Cons!6050 (h!11451 (_ BitVec 16)) (t!80331 List!6060)) )
))
(declare-datatypes ((TokenValue!1231 0))(
  ( (FloatLiteralValue!2462 (text!9062 List!6060)) (TokenValueExt!1230 (__x!4360 Int)) (Broken!6155 (value!39241 List!6060)) (Object!1240) (End!1231) (Def!1231) (Underscore!1231) (Match!1231) (Else!1231) (Error!1231) (Case!1231) (If!1231) (Extends!1231) (Abstract!1231) (Class!1231) (Val!1231) (DelimiterValue!2462 (del!1291 List!6060)) (KeywordValue!1237 (value!39242 List!6060)) (CommentValue!2462 (value!39243 List!6060)) (WhitespaceValue!2462 (value!39244 List!6060)) (IndentationValue!1231 (value!39245 List!6060)) (String!7900) (Int32!1231) (Broken!6156 (value!39246 List!6060)) (Boolean!1232) (Unit!11029) (OperatorValue!1234 (op!1291 List!6060)) (IdentifierValue!2462 (value!39247 List!6060)) (IdentifierValue!2463 (value!39248 List!6060)) (WhitespaceValue!2463 (value!39249 List!6060)) (True!2462) (False!2462) (Broken!6157 (value!39250 List!6060)) (Broken!6158 (value!39251 List!6060)) (True!2463) (RightBrace!1231) (RightBracket!1231) (Colon!1231) (Null!1231) (Comma!1231) (LeftBracket!1231) (False!2463) (LeftBrace!1231) (ImaginaryLiteralValue!1231 (text!9063 List!6060)) (StringLiteralValue!3693 (value!39252 List!6060)) (EOFValue!1231 (value!39253 List!6060)) (IdentValue!1231 (value!39254 List!6060)) (DelimiterValue!2463 (value!39255 List!6060)) (DedentValue!1231 (value!39256 List!6060)) (NewLineValue!1231 (value!39257 List!6060)) (IntegerValue!3693 (value!39258 (_ BitVec 32)) (text!9064 List!6060)) (IntegerValue!3694 (value!39259 Int) (text!9065 List!6060)) (Times!1231) (Or!1231) (Equal!1231) (Minus!1231) (Broken!6159 (value!39260 List!6060)) (And!1231) (Div!1231) (LessEqual!1231) (Mod!1231) (Concat!2773) (Not!1231) (Plus!1231) (SpaceValue!1231 (value!39261 List!6060)) (IntegerValue!3695 (value!39262 Int) (text!9066 List!6060)) (StringLiteralValue!3694 (text!9067 List!6060)) (FloatLiteralValue!2463 (text!9068 List!6060)) (BytesLiteralValue!1231 (value!39263 List!6060)) (CommentValue!2463 (value!39264 List!6060)) (StringLiteralValue!3695 (value!39265 List!6060)) (ErrorTokenValue!1231 (msg!1292 List!6060)) )
))
(declare-datatypes ((List!6061 0))(
  ( (Nil!6051) (Cons!6051 (h!11452 C!4004) (t!80332 List!6061)) )
))
(declare-datatypes ((IArray!3849 0))(
  ( (IArray!3850 (innerList!1982 List!6061)) )
))
(declare-datatypes ((Conc!1924 0))(
  ( (Node!1924 (left!4856 Conc!1924) (right!5186 Conc!1924) (csize!4078 Int) (cheight!2135 Int)) (Leaf!3035 (xs!4561 IArray!3849) (csize!4079 Int)) (Empty!1924) )
))
(declare-datatypes ((BalanceConc!3856 0))(
  ( (BalanceConc!3857 (c!112180 Conc!1924)) )
))
(declare-datatypes ((TokenValueInjection!2230 0))(
  ( (TokenValueInjection!2231 (toValue!2110 Int) (toChars!1969 Int)) )
))
(declare-datatypes ((Rule!2214 0))(
  ( (Rule!2215 (regex!1207 Regex!1541) (tag!1469 String!7898) (isSeparator!1207 Bool) (transformation!1207 TokenValueInjection!2230)) )
))
(declare-datatypes ((Token!2150 0))(
  ( (Token!2151 (value!39266 TokenValue!1231) (rule!1987 Rule!2214) (size!4760 Int) (originalCharacters!1246 List!6061)) )
))
(declare-fun token!491 () Token!2150)

(declare-fun e!366713 () Bool)

(declare-fun e!366704 () Bool)

(declare-fun tp!188077 () Bool)

(declare-fun b!605097 () Bool)

(declare-fun inv!7686 (String!7898) Bool)

(declare-fun inv!7689 (TokenValueInjection!2230) Bool)

(assert (=> b!605097 (= e!366713 (and tp!188077 (inv!7686 (tag!1469 (rule!1987 token!491))) (inv!7689 (transformation!1207 (rule!1987 token!491))) e!366704))))

(declare-fun b!605098 () Bool)

(declare-fun res!262062 () Bool)

(declare-fun e!366694 () Bool)

(assert (=> b!605098 (=> (not res!262062) (not e!366694))))

(declare-fun size!4761 (List!6061) Int)

(assert (=> b!605098 (= res!262062 (= (size!4760 token!491) (size!4761 (originalCharacters!1246 token!491))))))

(assert (=> b!605099 (= e!366704 (and tp!188080 tp!188076))))

(declare-fun b!605100 () Bool)

(declare-fun res!262070 () Bool)

(declare-fun e!366709 () Bool)

(assert (=> b!605100 (=> (not res!262070) (not e!366709))))

(declare-datatypes ((LexerInterface!1093 0))(
  ( (LexerInterfaceExt!1090 (__x!4361 Int)) (Lexer!1091) )
))
(declare-fun thiss!22590 () LexerInterface!1093)

(declare-datatypes ((List!6062 0))(
  ( (Nil!6052) (Cons!6052 (h!11453 Rule!2214) (t!80333 List!6062)) )
))
(declare-fun rules!3103 () List!6062)

(declare-fun rulesInvariant!1056 (LexerInterface!1093 List!6062) Bool)

(assert (=> b!605100 (= res!262070 (rulesInvariant!1056 thiss!22590 rules!3103))))

(declare-fun b!605101 () Bool)

(declare-fun e!366699 () Bool)

(declare-fun e!366695 () Bool)

(assert (=> b!605101 (= e!366699 e!366695)))

(declare-fun res!262066 () Bool)

(assert (=> b!605101 (=> (not res!262066) (not e!366695))))

(declare-datatypes ((tuple2!6928 0))(
  ( (tuple2!6929 (_1!3728 Token!2150) (_2!3728 List!6061)) )
))
(declare-datatypes ((Option!1558 0))(
  ( (None!1557) (Some!1557 (v!16458 tuple2!6928)) )
))
(declare-fun lt!258179 () Option!1558)

(declare-fun isDefined!1369 (Option!1558) Bool)

(assert (=> b!605101 (= res!262066 (isDefined!1369 lt!258179))))

(declare-fun lt!258195 () List!6061)

(declare-fun maxPrefix!791 (LexerInterface!1093 List!6062 List!6061) Option!1558)

(assert (=> b!605101 (= lt!258179 (maxPrefix!791 thiss!22590 rules!3103 lt!258195))))

(declare-fun input!2705 () List!6061)

(declare-fun suffix!1342 () List!6061)

(declare-fun ++!1695 (List!6061 List!6061) List!6061)

(assert (=> b!605101 (= lt!258195 (++!1695 input!2705 suffix!1342))))

(declare-fun tp!188078 () Bool)

(declare-fun b!605102 () Bool)

(declare-fun e!366700 () Bool)

(declare-fun inv!21 (TokenValue!1231) Bool)

(assert (=> b!605102 (= e!366700 (and (inv!21 (value!39266 token!491)) e!366713 tp!188078))))

(declare-fun res!262058 () Bool)

(assert (=> start!57660 (=> (not res!262058) (not e!366709))))

(get-info :version)

(assert (=> start!57660 (= res!262058 ((_ is Lexer!1091) thiss!22590))))

(assert (=> start!57660 e!366709))

(declare-fun e!366715 () Bool)

(assert (=> start!57660 e!366715))

(declare-fun e!366702 () Bool)

(assert (=> start!57660 e!366702))

(declare-fun inv!7690 (Token!2150) Bool)

(assert (=> start!57660 (and (inv!7690 token!491) e!366700)))

(assert (=> start!57660 true))

(declare-fun e!366698 () Bool)

(assert (=> start!57660 e!366698))

(declare-fun b!605103 () Bool)

(declare-fun e!366697 () Bool)

(declare-fun e!366711 () Bool)

(assert (=> b!605103 (= e!366697 e!366711)))

(declare-fun res!262065 () Bool)

(assert (=> b!605103 (=> res!262065 e!366711)))

(declare-fun lt!258180 () Int)

(declare-fun lt!258192 () Int)

(assert (=> b!605103 (= res!262065 (>= lt!258180 lt!258192))))

(declare-fun lt!258178 () TokenValue!1231)

(declare-fun lt!258196 () List!6061)

(declare-fun maxPrefixOneRule!454 (LexerInterface!1093 Rule!2214 List!6061) Option!1558)

(assert (=> b!605103 (= (maxPrefixOneRule!454 thiss!22590 (rule!1987 token!491) lt!258195) (Some!1557 (tuple2!6929 (Token!2151 lt!258178 (rule!1987 token!491) lt!258192 lt!258196) suffix!1342)))))

(declare-datatypes ((Unit!11030 0))(
  ( (Unit!11031) )
))
(declare-fun lt!258197 () Unit!11030)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!160 (LexerInterface!1093 List!6062 List!6061 List!6061 List!6061 Rule!2214) Unit!11030)

(assert (=> b!605103 (= lt!258197 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!160 thiss!22590 rules!3103 lt!258196 lt!258195 suffix!1342 (rule!1987 token!491)))))

(declare-fun lt!258194 () List!6061)

(declare-fun lt!258174 () Option!1558)

(declare-fun lt!258173 () TokenValue!1231)

(assert (=> b!605103 (= (maxPrefixOneRule!454 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174))) input!2705) (Some!1557 (tuple2!6929 (Token!2151 lt!258173 (rule!1987 (_1!3728 (v!16458 lt!258174))) lt!258180 lt!258194) (_2!3728 (v!16458 lt!258174)))))))

(declare-fun lt!258182 () Unit!11030)

(assert (=> b!605103 (= lt!258182 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!160 thiss!22590 rules!3103 lt!258194 input!2705 (_2!3728 (v!16458 lt!258174)) (rule!1987 (_1!3728 (v!16458 lt!258174)))))))

(assert (=> b!605103 e!366694))

(declare-fun res!262056 () Bool)

(assert (=> b!605103 (=> (not res!262056) (not e!366694))))

(assert (=> b!605103 (= res!262056 (= (value!39266 token!491) lt!258178))))

(declare-fun apply!1460 (TokenValueInjection!2230 BalanceConc!3856) TokenValue!1231)

(declare-fun seqFromList!1383 (List!6061) BalanceConc!3856)

(assert (=> b!605103 (= lt!258178 (apply!1460 (transformation!1207 (rule!1987 token!491)) (seqFromList!1383 lt!258196)))))

(declare-fun lt!258189 () List!6061)

(assert (=> b!605103 (= suffix!1342 lt!258189)))

(declare-fun lt!258171 () Unit!11030)

(declare-fun lemmaSamePrefixThenSameSuffix!548 (List!6061 List!6061 List!6061 List!6061 List!6061) Unit!11030)

(assert (=> b!605103 (= lt!258171 (lemmaSamePrefixThenSameSuffix!548 lt!258196 suffix!1342 lt!258196 lt!258189 lt!258195))))

(declare-fun getSuffix!352 (List!6061 List!6061) List!6061)

(assert (=> b!605103 (= lt!258189 (getSuffix!352 lt!258195 lt!258196))))

(declare-fun b!605104 () Bool)

(declare-fun e!366707 () Bool)

(assert (=> b!605104 (= e!366707 (not e!366697))))

(declare-fun res!262064 () Bool)

(assert (=> b!605104 (=> res!262064 e!366697)))

(declare-fun lt!258169 () List!6061)

(declare-fun isPrefix!835 (List!6061 List!6061) Bool)

(assert (=> b!605104 (= res!262064 (not (isPrefix!835 input!2705 lt!258169)))))

(assert (=> b!605104 (isPrefix!835 lt!258196 lt!258169)))

(declare-fun lt!258177 () Unit!11030)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!680 (List!6061 List!6061) Unit!11030)

(assert (=> b!605104 (= lt!258177 (lemmaConcatTwoListThenFirstIsPrefix!680 lt!258196 suffix!1342))))

(assert (=> b!605104 (isPrefix!835 input!2705 lt!258195)))

(declare-fun lt!258184 () Unit!11030)

(assert (=> b!605104 (= lt!258184 (lemmaConcatTwoListThenFirstIsPrefix!680 input!2705 suffix!1342))))

(declare-fun e!366701 () Bool)

(assert (=> b!605104 e!366701))

(declare-fun res!262068 () Bool)

(assert (=> b!605104 (=> (not res!262068) (not e!366701))))

(assert (=> b!605104 (= res!262068 (= (value!39266 (_1!3728 (v!16458 lt!258174))) lt!258173))))

(assert (=> b!605104 (= lt!258173 (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (seqFromList!1383 lt!258194)))))

(declare-fun lt!258191 () Unit!11030)

(declare-fun lemmaInv!315 (TokenValueInjection!2230) Unit!11030)

(assert (=> b!605104 (= lt!258191 (lemmaInv!315 (transformation!1207 (rule!1987 token!491))))))

(declare-fun lt!258181 () Unit!11030)

(assert (=> b!605104 (= lt!258181 (lemmaInv!315 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun ruleValid!405 (LexerInterface!1093 Rule!2214) Bool)

(assert (=> b!605104 (ruleValid!405 thiss!22590 (rule!1987 token!491))))

(declare-fun lt!258186 () Unit!11030)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!252 (LexerInterface!1093 Rule!2214 List!6062) Unit!11030)

(assert (=> b!605104 (= lt!258186 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!252 thiss!22590 (rule!1987 token!491) rules!3103))))

(assert (=> b!605104 (ruleValid!405 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174))))))

(declare-fun lt!258198 () Unit!11030)

(assert (=> b!605104 (= lt!258198 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!252 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174))) rules!3103))))

(assert (=> b!605104 (isPrefix!835 input!2705 input!2705)))

(declare-fun lt!258190 () Unit!11030)

(declare-fun lemmaIsPrefixRefl!571 (List!6061 List!6061) Unit!11030)

(assert (=> b!605104 (= lt!258190 (lemmaIsPrefixRefl!571 input!2705 input!2705))))

(declare-fun lt!258175 () List!6061)

(assert (=> b!605104 (= (_2!3728 (v!16458 lt!258174)) lt!258175)))

(declare-fun lt!258176 () Unit!11030)

(assert (=> b!605104 (= lt!258176 (lemmaSamePrefixThenSameSuffix!548 lt!258194 (_2!3728 (v!16458 lt!258174)) lt!258194 lt!258175 input!2705))))

(assert (=> b!605104 (= lt!258175 (getSuffix!352 input!2705 lt!258194))))

(assert (=> b!605104 (isPrefix!835 lt!258194 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174))))))

(declare-fun lt!258187 () Unit!11030)

(assert (=> b!605104 (= lt!258187 (lemmaConcatTwoListThenFirstIsPrefix!680 lt!258194 (_2!3728 (v!16458 lt!258174))))))

(declare-fun lt!258188 () Unit!11030)

(declare-fun lemmaCharactersSize!266 (Token!2150) Unit!11030)

(assert (=> b!605104 (= lt!258188 (lemmaCharactersSize!266 token!491))))

(declare-fun lt!258185 () Unit!11030)

(assert (=> b!605104 (= lt!258185 (lemmaCharactersSize!266 (_1!3728 (v!16458 lt!258174))))))

(declare-fun lt!258193 () Unit!11030)

(declare-fun e!366712 () Unit!11030)

(assert (=> b!605104 (= lt!258193 e!366712)))

(declare-fun c!112178 () Bool)

(assert (=> b!605104 (= c!112178 (> lt!258180 lt!258192))))

(assert (=> b!605104 (= lt!258192 (size!4761 lt!258196))))

(assert (=> b!605104 (= lt!258180 (size!4761 lt!258194))))

(declare-fun list!2542 (BalanceConc!3856) List!6061)

(declare-fun charsOf!836 (Token!2150) BalanceConc!3856)

(assert (=> b!605104 (= lt!258194 (list!2542 (charsOf!836 (_1!3728 (v!16458 lt!258174)))))))

(declare-fun lt!258183 () tuple2!6928)

(assert (=> b!605104 (= lt!258174 (Some!1557 lt!258183))))

(assert (=> b!605104 (= lt!258183 (tuple2!6929 (_1!3728 (v!16458 lt!258174)) (_2!3728 (v!16458 lt!258174))))))

(declare-fun lt!258172 () Unit!11030)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!280 (List!6061 List!6061 List!6061 List!6061) Unit!11030)

(assert (=> b!605104 (= lt!258172 (lemmaConcatSameAndSameSizesThenSameLists!280 lt!258196 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!605105 () Bool)

(declare-fun e!366708 () Bool)

(assert (=> b!605105 (= e!366708 e!366707)))

(declare-fun res!262063 () Bool)

(assert (=> b!605105 (=> (not res!262063) (not e!366707))))

(assert (=> b!605105 (= res!262063 (= lt!258169 lt!258195))))

(assert (=> b!605105 (= lt!258169 (++!1695 lt!258196 suffix!1342))))

(declare-fun b!605106 () Bool)

(declare-fun Unit!11032 () Unit!11030)

(assert (=> b!605106 (= e!366712 Unit!11032)))

(declare-fun b!605107 () Bool)

(declare-fun tp_is_empty!3437 () Bool)

(declare-fun tp!188075 () Bool)

(assert (=> b!605107 (= e!366715 (and tp_is_empty!3437 tp!188075))))

(declare-fun b!605108 () Bool)

(declare-fun e!366706 () Bool)

(declare-fun e!366710 () Bool)

(declare-fun tp!188079 () Bool)

(assert (=> b!605108 (= e!366706 (and tp!188079 (inv!7686 (tag!1469 (h!11453 rules!3103))) (inv!7689 (transformation!1207 (h!11453 rules!3103))) e!366710))))

(declare-fun b!605109 () Bool)

(assert (=> b!605109 (= e!366709 e!366699)))

(declare-fun res!262057 () Bool)

(assert (=> b!605109 (=> (not res!262057) (not e!366699))))

(assert (=> b!605109 (= res!262057 (= lt!258196 input!2705))))

(assert (=> b!605109 (= lt!258196 (list!2542 (charsOf!836 token!491)))))

(declare-fun b!605110 () Bool)

(declare-fun res!262069 () Bool)

(assert (=> b!605110 (=> (not res!262069) (not e!366709))))

(declare-fun isEmpty!4367 (List!6061) Bool)

(assert (=> b!605110 (= res!262069 (not (isEmpty!4367 input!2705)))))

(declare-fun b!605111 () Bool)

(declare-fun e!366703 () Bool)

(assert (=> b!605111 (= e!366703 e!366708)))

(declare-fun res!262067 () Bool)

(assert (=> b!605111 (=> (not res!262067) (not e!366708))))

(assert (=> b!605111 (= res!262067 ((_ is Some!1557) lt!258174))))

(assert (=> b!605111 (= lt!258174 (maxPrefix!791 thiss!22590 rules!3103 input!2705))))

(declare-fun b!605112 () Bool)

(declare-fun tp!188082 () Bool)

(assert (=> b!605112 (= e!366698 (and tp_is_empty!3437 tp!188082))))

(declare-fun b!605113 () Bool)

(assert (=> b!605113 (= e!366711 (isDefined!1369 lt!258174))))

(declare-fun b!605114 () Bool)

(assert (=> b!605114 (= e!366694 (and (= (size!4760 token!491) lt!258192) (= (originalCharacters!1246 token!491) lt!258196) (= (tuple2!6929 token!491 suffix!1342) (tuple2!6929 (Token!2151 lt!258178 (rule!1987 token!491) lt!258192 lt!258196) lt!258189))))))

(declare-fun b!605115 () Bool)

(declare-fun res!262059 () Bool)

(assert (=> b!605115 (=> (not res!262059) (not e!366701))))

(assert (=> b!605115 (= res!262059 (= (size!4760 (_1!3728 (v!16458 lt!258174))) (size!4761 (originalCharacters!1246 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun b!605116 () Bool)

(declare-fun res!262060 () Bool)

(assert (=> b!605116 (=> (not res!262060) (not e!366709))))

(declare-fun isEmpty!4368 (List!6062) Bool)

(assert (=> b!605116 (= res!262060 (not (isEmpty!4368 rules!3103)))))

(declare-fun b!605117 () Bool)

(assert (=> b!605117 (= e!366701 (and (= (size!4760 (_1!3728 (v!16458 lt!258174))) lt!258180) (= (originalCharacters!1246 (_1!3728 (v!16458 lt!258174))) lt!258194) (= lt!258183 (tuple2!6929 (Token!2151 lt!258173 (rule!1987 (_1!3728 (v!16458 lt!258174))) lt!258180 lt!258194) lt!258175))))))

(declare-fun b!605118 () Bool)

(declare-fun Unit!11033 () Unit!11030)

(assert (=> b!605118 (= e!366712 Unit!11033)))

(assert (=> b!605118 false))

(declare-fun b!605119 () Bool)

(declare-fun tp!188081 () Bool)

(assert (=> b!605119 (= e!366702 (and e!366706 tp!188081))))

(declare-fun b!605120 () Bool)

(assert (=> b!605120 (= e!366695 e!366703)))

(declare-fun res!262061 () Bool)

(assert (=> b!605120 (=> (not res!262061) (not e!366703))))

(declare-fun lt!258170 () tuple2!6928)

(assert (=> b!605120 (= res!262061 (and (= (_1!3728 lt!258170) token!491) (= (_2!3728 lt!258170) suffix!1342)))))

(declare-fun get!2325 (Option!1558) tuple2!6928)

(assert (=> b!605120 (= lt!258170 (get!2325 lt!258179))))

(assert (=> b!605121 (= e!366710 (and tp!188083 tp!188084))))

(assert (= (and start!57660 res!262058) b!605116))

(assert (= (and b!605116 res!262060) b!605100))

(assert (= (and b!605100 res!262070) b!605110))

(assert (= (and b!605110 res!262069) b!605109))

(assert (= (and b!605109 res!262057) b!605101))

(assert (= (and b!605101 res!262066) b!605120))

(assert (= (and b!605120 res!262061) b!605111))

(assert (= (and b!605111 res!262067) b!605105))

(assert (= (and b!605105 res!262063) b!605104))

(assert (= (and b!605104 c!112178) b!605118))

(assert (= (and b!605104 (not c!112178)) b!605106))

(assert (= (and b!605104 res!262068) b!605115))

(assert (= (and b!605115 res!262059) b!605117))

(assert (= (and b!605104 (not res!262064)) b!605103))

(assert (= (and b!605103 res!262056) b!605098))

(assert (= (and b!605098 res!262062) b!605114))

(assert (= (and b!605103 (not res!262065)) b!605113))

(assert (= (and start!57660 ((_ is Cons!6051) suffix!1342)) b!605107))

(assert (= b!605108 b!605121))

(assert (= b!605119 b!605108))

(assert (= (and start!57660 ((_ is Cons!6052) rules!3103)) b!605119))

(assert (= b!605097 b!605099))

(assert (= b!605102 b!605097))

(assert (= start!57660 b!605102))

(assert (= (and start!57660 ((_ is Cons!6051) input!2705)) b!605112))

(declare-fun m!870871 () Bool)

(assert (=> b!605100 m!870871))

(declare-fun m!870873 () Bool)

(assert (=> b!605113 m!870873))

(declare-fun m!870875 () Bool)

(assert (=> b!605110 m!870875))

(declare-fun m!870877 () Bool)

(assert (=> b!605116 m!870877))

(declare-fun m!870879 () Bool)

(assert (=> b!605108 m!870879))

(declare-fun m!870881 () Bool)

(assert (=> b!605108 m!870881))

(declare-fun m!870883 () Bool)

(assert (=> b!605097 m!870883))

(declare-fun m!870885 () Bool)

(assert (=> b!605097 m!870885))

(declare-fun m!870887 () Bool)

(assert (=> b!605115 m!870887))

(declare-fun m!870889 () Bool)

(assert (=> b!605111 m!870889))

(declare-fun m!870891 () Bool)

(assert (=> b!605102 m!870891))

(declare-fun m!870893 () Bool)

(assert (=> b!605109 m!870893))

(assert (=> b!605109 m!870893))

(declare-fun m!870895 () Bool)

(assert (=> b!605109 m!870895))

(declare-fun m!870897 () Bool)

(assert (=> b!605120 m!870897))

(declare-fun m!870899 () Bool)

(assert (=> b!605105 m!870899))

(declare-fun m!870901 () Bool)

(assert (=> b!605101 m!870901))

(declare-fun m!870903 () Bool)

(assert (=> b!605101 m!870903))

(declare-fun m!870905 () Bool)

(assert (=> b!605101 m!870905))

(declare-fun m!870907 () Bool)

(assert (=> b!605103 m!870907))

(assert (=> b!605103 m!870907))

(declare-fun m!870909 () Bool)

(assert (=> b!605103 m!870909))

(declare-fun m!870911 () Bool)

(assert (=> b!605103 m!870911))

(declare-fun m!870913 () Bool)

(assert (=> b!605103 m!870913))

(declare-fun m!870915 () Bool)

(assert (=> b!605103 m!870915))

(declare-fun m!870917 () Bool)

(assert (=> b!605103 m!870917))

(declare-fun m!870919 () Bool)

(assert (=> b!605103 m!870919))

(declare-fun m!870921 () Bool)

(assert (=> b!605103 m!870921))

(declare-fun m!870923 () Bool)

(assert (=> start!57660 m!870923))

(declare-fun m!870925 () Bool)

(assert (=> b!605104 m!870925))

(declare-fun m!870927 () Bool)

(assert (=> b!605104 m!870927))

(declare-fun m!870929 () Bool)

(assert (=> b!605104 m!870929))

(declare-fun m!870931 () Bool)

(assert (=> b!605104 m!870931))

(assert (=> b!605104 m!870927))

(declare-fun m!870933 () Bool)

(assert (=> b!605104 m!870933))

(declare-fun m!870935 () Bool)

(assert (=> b!605104 m!870935))

(declare-fun m!870937 () Bool)

(assert (=> b!605104 m!870937))

(declare-fun m!870939 () Bool)

(assert (=> b!605104 m!870939))

(declare-fun m!870941 () Bool)

(assert (=> b!605104 m!870941))

(declare-fun m!870943 () Bool)

(assert (=> b!605104 m!870943))

(declare-fun m!870945 () Bool)

(assert (=> b!605104 m!870945))

(declare-fun m!870947 () Bool)

(assert (=> b!605104 m!870947))

(declare-fun m!870949 () Bool)

(assert (=> b!605104 m!870949))

(declare-fun m!870951 () Bool)

(assert (=> b!605104 m!870951))

(declare-fun m!870953 () Bool)

(assert (=> b!605104 m!870953))

(declare-fun m!870955 () Bool)

(assert (=> b!605104 m!870955))

(declare-fun m!870957 () Bool)

(assert (=> b!605104 m!870957))

(declare-fun m!870959 () Bool)

(assert (=> b!605104 m!870959))

(assert (=> b!605104 m!870943))

(assert (=> b!605104 m!870929))

(declare-fun m!870961 () Bool)

(assert (=> b!605104 m!870961))

(declare-fun m!870963 () Bool)

(assert (=> b!605104 m!870963))

(declare-fun m!870965 () Bool)

(assert (=> b!605104 m!870965))

(declare-fun m!870967 () Bool)

(assert (=> b!605104 m!870967))

(declare-fun m!870969 () Bool)

(assert (=> b!605104 m!870969))

(declare-fun m!870971 () Bool)

(assert (=> b!605104 m!870971))

(declare-fun m!870973 () Bool)

(assert (=> b!605104 m!870973))

(declare-fun m!870975 () Bool)

(assert (=> b!605104 m!870975))

(declare-fun m!870977 () Bool)

(assert (=> b!605104 m!870977))

(declare-fun m!870979 () Bool)

(assert (=> b!605098 m!870979))

(check-sat (not b!605113) b_and!59849 b_and!59851 (not b!605104) (not b!605103) (not b_next!17251) (not b!605119) b_and!59847 tp_is_empty!3437 (not b!605116) (not b!605097) (not b!605101) (not b!605115) (not start!57660) b_and!59853 (not b!605120) (not b!605098) (not b_next!17247) (not b!605112) (not b!605109) (not b_next!17249) (not b!605108) (not b!605107) (not b!605105) (not b!605100) (not b!605102) (not b!605110) (not b_next!17245) (not b!605111))
(check-sat b_and!59853 (not b_next!17247) (not b_next!17249) b_and!59849 b_and!59851 (not b_next!17245) (not b_next!17251) b_and!59847)
(get-model)

(declare-fun d!213067 () Bool)

(declare-fun isEmpty!4370 (Option!1558) Bool)

(assert (=> d!213067 (= (isDefined!1369 lt!258174) (not (isEmpty!4370 lt!258174)))))

(declare-fun bs!71218 () Bool)

(assert (= bs!71218 d!213067))

(declare-fun m!870981 () Bool)

(assert (=> bs!71218 m!870981))

(assert (=> b!605113 d!213067))

(declare-fun b!605132 () Bool)

(declare-fun res!262077 () Bool)

(declare-fun e!366723 () Bool)

(assert (=> b!605132 (=> res!262077 e!366723)))

(assert (=> b!605132 (= res!262077 (not ((_ is IntegerValue!3695) (value!39266 token!491))))))

(declare-fun e!366722 () Bool)

(assert (=> b!605132 (= e!366722 e!366723)))

(declare-fun b!605134 () Bool)

(declare-fun e!366724 () Bool)

(declare-fun inv!16 (TokenValue!1231) Bool)

(assert (=> b!605134 (= e!366724 (inv!16 (value!39266 token!491)))))

(declare-fun b!605135 () Bool)

(assert (=> b!605135 (= e!366724 e!366722)))

(declare-fun c!112186 () Bool)

(assert (=> b!605135 (= c!112186 ((_ is IntegerValue!3694) (value!39266 token!491)))))

(declare-fun b!605136 () Bool)

(declare-fun inv!17 (TokenValue!1231) Bool)

(assert (=> b!605136 (= e!366722 (inv!17 (value!39266 token!491)))))

(declare-fun d!213069 () Bool)

(declare-fun c!112185 () Bool)

(assert (=> d!213069 (= c!112185 ((_ is IntegerValue!3693) (value!39266 token!491)))))

(assert (=> d!213069 (= (inv!21 (value!39266 token!491)) e!366724)))

(declare-fun b!605133 () Bool)

(declare-fun inv!15 (TokenValue!1231) Bool)

(assert (=> b!605133 (= e!366723 (inv!15 (value!39266 token!491)))))

(assert (= (and d!213069 c!112185) b!605134))

(assert (= (and d!213069 (not c!112185)) b!605135))

(assert (= (and b!605135 c!112186) b!605136))

(assert (= (and b!605135 (not c!112186)) b!605132))

(assert (= (and b!605132 (not res!262077)) b!605133))

(declare-fun m!870983 () Bool)

(assert (=> b!605134 m!870983))

(declare-fun m!870985 () Bool)

(assert (=> b!605136 m!870985))

(declare-fun m!870987 () Bool)

(assert (=> b!605133 m!870987))

(assert (=> b!605102 d!213069))

(declare-fun d!213071 () Bool)

(assert (=> d!213071 (= (isDefined!1369 lt!258179) (not (isEmpty!4370 lt!258179)))))

(declare-fun bs!71219 () Bool)

(assert (= bs!71219 d!213071))

(declare-fun m!870989 () Bool)

(assert (=> bs!71219 m!870989))

(assert (=> b!605101 d!213071))

(declare-fun b!605198 () Bool)

(declare-fun res!262129 () Bool)

(declare-fun e!366748 () Bool)

(assert (=> b!605198 (=> (not res!262129) (not e!366748))))

(declare-fun lt!258229 () Option!1558)

(declare-fun matchR!644 (Regex!1541 List!6061) Bool)

(assert (=> b!605198 (= res!262129 (matchR!644 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229))))))))

(declare-fun b!605199 () Bool)

(declare-fun contains!1421 (List!6062 Rule!2214) Bool)

(assert (=> b!605199 (= e!366748 (contains!1421 rules!3103 (rule!1987 (_1!3728 (get!2325 lt!258229)))))))

(declare-fun b!605200 () Bool)

(declare-fun res!262125 () Bool)

(assert (=> b!605200 (=> (not res!262125) (not e!366748))))

(assert (=> b!605200 (= res!262125 (< (size!4761 (_2!3728 (get!2325 lt!258229))) (size!4761 lt!258195)))))

(declare-fun b!605202 () Bool)

(declare-fun res!262128 () Bool)

(assert (=> b!605202 (=> (not res!262128) (not e!366748))))

(assert (=> b!605202 (= res!262128 (= (value!39266 (_1!3728 (get!2325 lt!258229))) (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258229)))))))))

(declare-fun b!605203 () Bool)

(declare-fun e!366750 () Option!1558)

(declare-fun call!40677 () Option!1558)

(assert (=> b!605203 (= e!366750 call!40677)))

(declare-fun b!605204 () Bool)

(declare-fun e!366749 () Bool)

(assert (=> b!605204 (= e!366749 e!366748)))

(declare-fun res!262131 () Bool)

(assert (=> b!605204 (=> (not res!262131) (not e!366748))))

(assert (=> b!605204 (= res!262131 (isDefined!1369 lt!258229))))

(declare-fun bm!40672 () Bool)

(assert (=> bm!40672 (= call!40677 (maxPrefixOneRule!454 thiss!22590 (h!11453 rules!3103) lt!258195))))

(declare-fun b!605201 () Bool)

(declare-fun res!262127 () Bool)

(assert (=> b!605201 (=> (not res!262127) (not e!366748))))

(assert (=> b!605201 (= res!262127 (= (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229)))) (originalCharacters!1246 (_1!3728 (get!2325 lt!258229)))))))

(declare-fun d!213073 () Bool)

(assert (=> d!213073 e!366749))

(declare-fun res!262130 () Bool)

(assert (=> d!213073 (=> res!262130 e!366749)))

(assert (=> d!213073 (= res!262130 (isEmpty!4370 lt!258229))))

(assert (=> d!213073 (= lt!258229 e!366750)))

(declare-fun c!112196 () Bool)

(assert (=> d!213073 (= c!112196 (and ((_ is Cons!6052) rules!3103) ((_ is Nil!6052) (t!80333 rules!3103))))))

(declare-fun lt!258230 () Unit!11030)

(declare-fun lt!258228 () Unit!11030)

(assert (=> d!213073 (= lt!258230 lt!258228)))

(assert (=> d!213073 (isPrefix!835 lt!258195 lt!258195)))

(assert (=> d!213073 (= lt!258228 (lemmaIsPrefixRefl!571 lt!258195 lt!258195))))

(declare-fun rulesValidInductive!452 (LexerInterface!1093 List!6062) Bool)

(assert (=> d!213073 (rulesValidInductive!452 thiss!22590 rules!3103)))

(assert (=> d!213073 (= (maxPrefix!791 thiss!22590 rules!3103 lt!258195) lt!258229)))

(declare-fun b!605205 () Bool)

(declare-fun lt!258232 () Option!1558)

(declare-fun lt!258231 () Option!1558)

(assert (=> b!605205 (= e!366750 (ite (and ((_ is None!1557) lt!258232) ((_ is None!1557) lt!258231)) None!1557 (ite ((_ is None!1557) lt!258231) lt!258232 (ite ((_ is None!1557) lt!258232) lt!258231 (ite (>= (size!4760 (_1!3728 (v!16458 lt!258232))) (size!4760 (_1!3728 (v!16458 lt!258231)))) lt!258232 lt!258231)))))))

(assert (=> b!605205 (= lt!258232 call!40677)))

(assert (=> b!605205 (= lt!258231 (maxPrefix!791 thiss!22590 (t!80333 rules!3103) lt!258195))))

(declare-fun b!605206 () Bool)

(declare-fun res!262126 () Bool)

(assert (=> b!605206 (=> (not res!262126) (not e!366748))))

(assert (=> b!605206 (= res!262126 (= (++!1695 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229)))) (_2!3728 (get!2325 lt!258229))) lt!258195))))

(assert (= (and d!213073 c!112196) b!605203))

(assert (= (and d!213073 (not c!112196)) b!605205))

(assert (= (or b!605203 b!605205) bm!40672))

(assert (= (and d!213073 (not res!262130)) b!605204))

(assert (= (and b!605204 res!262131) b!605201))

(assert (= (and b!605201 res!262127) b!605200))

(assert (= (and b!605200 res!262125) b!605206))

(assert (= (and b!605206 res!262126) b!605202))

(assert (= (and b!605202 res!262128) b!605198))

(assert (= (and b!605198 res!262129) b!605199))

(declare-fun m!871051 () Bool)

(assert (=> b!605201 m!871051))

(declare-fun m!871053 () Bool)

(assert (=> b!605201 m!871053))

(assert (=> b!605201 m!871053))

(declare-fun m!871055 () Bool)

(assert (=> b!605201 m!871055))

(declare-fun m!871057 () Bool)

(assert (=> b!605205 m!871057))

(assert (=> b!605206 m!871051))

(assert (=> b!605206 m!871053))

(assert (=> b!605206 m!871053))

(assert (=> b!605206 m!871055))

(assert (=> b!605206 m!871055))

(declare-fun m!871059 () Bool)

(assert (=> b!605206 m!871059))

(assert (=> b!605199 m!871051))

(declare-fun m!871061 () Bool)

(assert (=> b!605199 m!871061))

(assert (=> b!605200 m!871051))

(declare-fun m!871063 () Bool)

(assert (=> b!605200 m!871063))

(declare-fun m!871065 () Bool)

(assert (=> b!605200 m!871065))

(assert (=> b!605202 m!871051))

(declare-fun m!871067 () Bool)

(assert (=> b!605202 m!871067))

(assert (=> b!605202 m!871067))

(declare-fun m!871069 () Bool)

(assert (=> b!605202 m!871069))

(assert (=> b!605198 m!871051))

(assert (=> b!605198 m!871053))

(assert (=> b!605198 m!871053))

(assert (=> b!605198 m!871055))

(assert (=> b!605198 m!871055))

(declare-fun m!871079 () Bool)

(assert (=> b!605198 m!871079))

(declare-fun m!871083 () Bool)

(assert (=> bm!40672 m!871083))

(declare-fun m!871085 () Bool)

(assert (=> b!605204 m!871085))

(declare-fun m!871087 () Bool)

(assert (=> d!213073 m!871087))

(declare-fun m!871089 () Bool)

(assert (=> d!213073 m!871089))

(declare-fun m!871091 () Bool)

(assert (=> d!213073 m!871091))

(declare-fun m!871093 () Bool)

(assert (=> d!213073 m!871093))

(assert (=> b!605101 d!213073))

(declare-fun b!605234 () Bool)

(declare-fun e!366766 () List!6061)

(assert (=> b!605234 (= e!366766 suffix!1342)))

(declare-fun d!213091 () Bool)

(declare-fun e!366765 () Bool)

(assert (=> d!213091 e!366765))

(declare-fun res!262137 () Bool)

(assert (=> d!213091 (=> (not res!262137) (not e!366765))))

(declare-fun lt!258251 () List!6061)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1098 (List!6061) (InoxSet C!4004))

(assert (=> d!213091 (= res!262137 (= (content!1098 lt!258251) ((_ map or) (content!1098 input!2705) (content!1098 suffix!1342))))))

(assert (=> d!213091 (= lt!258251 e!366766)))

(declare-fun c!112206 () Bool)

(assert (=> d!213091 (= c!112206 ((_ is Nil!6051) input!2705))))

(assert (=> d!213091 (= (++!1695 input!2705 suffix!1342) lt!258251)))

(declare-fun b!605235 () Bool)

(assert (=> b!605235 (= e!366766 (Cons!6051 (h!11452 input!2705) (++!1695 (t!80332 input!2705) suffix!1342)))))

(declare-fun b!605237 () Bool)

(assert (=> b!605237 (= e!366765 (or (not (= suffix!1342 Nil!6051)) (= lt!258251 input!2705)))))

(declare-fun b!605236 () Bool)

(declare-fun res!262136 () Bool)

(assert (=> b!605236 (=> (not res!262136) (not e!366765))))

(assert (=> b!605236 (= res!262136 (= (size!4761 lt!258251) (+ (size!4761 input!2705) (size!4761 suffix!1342))))))

(assert (= (and d!213091 c!112206) b!605234))

(assert (= (and d!213091 (not c!112206)) b!605235))

(assert (= (and d!213091 res!262137) b!605236))

(assert (= (and b!605236 res!262136) b!605237))

(declare-fun m!871111 () Bool)

(assert (=> d!213091 m!871111))

(declare-fun m!871113 () Bool)

(assert (=> d!213091 m!871113))

(declare-fun m!871115 () Bool)

(assert (=> d!213091 m!871115))

(declare-fun m!871117 () Bool)

(assert (=> b!605235 m!871117))

(declare-fun m!871119 () Bool)

(assert (=> b!605236 m!871119))

(declare-fun m!871121 () Bool)

(assert (=> b!605236 m!871121))

(declare-fun m!871123 () Bool)

(assert (=> b!605236 m!871123))

(assert (=> b!605101 d!213091))

(declare-fun b!605238 () Bool)

(declare-fun res!262142 () Bool)

(declare-fun e!366767 () Bool)

(assert (=> b!605238 (=> (not res!262142) (not e!366767))))

(declare-fun lt!258255 () Option!1558)

(assert (=> b!605238 (= res!262142 (matchR!644 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255))))))))

(declare-fun b!605239 () Bool)

(assert (=> b!605239 (= e!366767 (contains!1421 rules!3103 (rule!1987 (_1!3728 (get!2325 lt!258255)))))))

(declare-fun b!605240 () Bool)

(declare-fun res!262138 () Bool)

(assert (=> b!605240 (=> (not res!262138) (not e!366767))))

(assert (=> b!605240 (= res!262138 (< (size!4761 (_2!3728 (get!2325 lt!258255))) (size!4761 input!2705)))))

(declare-fun b!605242 () Bool)

(declare-fun res!262141 () Bool)

(assert (=> b!605242 (=> (not res!262141) (not e!366767))))

(assert (=> b!605242 (= res!262141 (= (value!39266 (_1!3728 (get!2325 lt!258255))) (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258255)))))))))

(declare-fun b!605243 () Bool)

(declare-fun e!366769 () Option!1558)

(declare-fun call!40678 () Option!1558)

(assert (=> b!605243 (= e!366769 call!40678)))

(declare-fun b!605244 () Bool)

(declare-fun e!366768 () Bool)

(assert (=> b!605244 (= e!366768 e!366767)))

(declare-fun res!262144 () Bool)

(assert (=> b!605244 (=> (not res!262144) (not e!366767))))

(assert (=> b!605244 (= res!262144 (isDefined!1369 lt!258255))))

(declare-fun bm!40673 () Bool)

(assert (=> bm!40673 (= call!40678 (maxPrefixOneRule!454 thiss!22590 (h!11453 rules!3103) input!2705))))

(declare-fun b!605241 () Bool)

(declare-fun res!262140 () Bool)

(assert (=> b!605241 (=> (not res!262140) (not e!366767))))

(assert (=> b!605241 (= res!262140 (= (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255)))) (originalCharacters!1246 (_1!3728 (get!2325 lt!258255)))))))

(declare-fun d!213103 () Bool)

(assert (=> d!213103 e!366768))

(declare-fun res!262143 () Bool)

(assert (=> d!213103 (=> res!262143 e!366768)))

(assert (=> d!213103 (= res!262143 (isEmpty!4370 lt!258255))))

(assert (=> d!213103 (= lt!258255 e!366769)))

(declare-fun c!112207 () Bool)

(assert (=> d!213103 (= c!112207 (and ((_ is Cons!6052) rules!3103) ((_ is Nil!6052) (t!80333 rules!3103))))))

(declare-fun lt!258256 () Unit!11030)

(declare-fun lt!258254 () Unit!11030)

(assert (=> d!213103 (= lt!258256 lt!258254)))

(assert (=> d!213103 (isPrefix!835 input!2705 input!2705)))

(assert (=> d!213103 (= lt!258254 (lemmaIsPrefixRefl!571 input!2705 input!2705))))

(assert (=> d!213103 (rulesValidInductive!452 thiss!22590 rules!3103)))

(assert (=> d!213103 (= (maxPrefix!791 thiss!22590 rules!3103 input!2705) lt!258255)))

(declare-fun b!605245 () Bool)

(declare-fun lt!258259 () Option!1558)

(declare-fun lt!258257 () Option!1558)

(assert (=> b!605245 (= e!366769 (ite (and ((_ is None!1557) lt!258259) ((_ is None!1557) lt!258257)) None!1557 (ite ((_ is None!1557) lt!258257) lt!258259 (ite ((_ is None!1557) lt!258259) lt!258257 (ite (>= (size!4760 (_1!3728 (v!16458 lt!258259))) (size!4760 (_1!3728 (v!16458 lt!258257)))) lt!258259 lt!258257)))))))

(assert (=> b!605245 (= lt!258259 call!40678)))

(assert (=> b!605245 (= lt!258257 (maxPrefix!791 thiss!22590 (t!80333 rules!3103) input!2705))))

(declare-fun b!605246 () Bool)

(declare-fun res!262139 () Bool)

(assert (=> b!605246 (=> (not res!262139) (not e!366767))))

(assert (=> b!605246 (= res!262139 (= (++!1695 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255)))) (_2!3728 (get!2325 lt!258255))) input!2705))))

(assert (= (and d!213103 c!112207) b!605243))

(assert (= (and d!213103 (not c!112207)) b!605245))

(assert (= (or b!605243 b!605245) bm!40673))

(assert (= (and d!213103 (not res!262143)) b!605244))

(assert (= (and b!605244 res!262144) b!605241))

(assert (= (and b!605241 res!262140) b!605240))

(assert (= (and b!605240 res!262138) b!605246))

(assert (= (and b!605246 res!262139) b!605242))

(assert (= (and b!605242 res!262141) b!605238))

(assert (= (and b!605238 res!262142) b!605239))

(declare-fun m!871131 () Bool)

(assert (=> b!605241 m!871131))

(declare-fun m!871133 () Bool)

(assert (=> b!605241 m!871133))

(assert (=> b!605241 m!871133))

(declare-fun m!871135 () Bool)

(assert (=> b!605241 m!871135))

(declare-fun m!871137 () Bool)

(assert (=> b!605245 m!871137))

(assert (=> b!605246 m!871131))

(assert (=> b!605246 m!871133))

(assert (=> b!605246 m!871133))

(assert (=> b!605246 m!871135))

(assert (=> b!605246 m!871135))

(declare-fun m!871139 () Bool)

(assert (=> b!605246 m!871139))

(assert (=> b!605239 m!871131))

(declare-fun m!871141 () Bool)

(assert (=> b!605239 m!871141))

(assert (=> b!605240 m!871131))

(declare-fun m!871143 () Bool)

(assert (=> b!605240 m!871143))

(assert (=> b!605240 m!871121))

(assert (=> b!605242 m!871131))

(declare-fun m!871145 () Bool)

(assert (=> b!605242 m!871145))

(assert (=> b!605242 m!871145))

(declare-fun m!871147 () Bool)

(assert (=> b!605242 m!871147))

(assert (=> b!605238 m!871131))

(assert (=> b!605238 m!871133))

(assert (=> b!605238 m!871133))

(assert (=> b!605238 m!871135))

(assert (=> b!605238 m!871135))

(declare-fun m!871153 () Bool)

(assert (=> b!605238 m!871153))

(declare-fun m!871155 () Bool)

(assert (=> bm!40673 m!871155))

(declare-fun m!871157 () Bool)

(assert (=> b!605244 m!871157))

(declare-fun m!871159 () Bool)

(assert (=> d!213103 m!871159))

(assert (=> d!213103 m!870947))

(assert (=> d!213103 m!870973))

(assert (=> d!213103 m!871093))

(assert (=> b!605111 d!213103))

(declare-fun d!213111 () Bool)

(declare-fun res!262166 () Bool)

(declare-fun e!366786 () Bool)

(assert (=> d!213111 (=> (not res!262166) (not e!366786))))

(declare-fun rulesValid!446 (LexerInterface!1093 List!6062) Bool)

(assert (=> d!213111 (= res!262166 (rulesValid!446 thiss!22590 rules!3103))))

(assert (=> d!213111 (= (rulesInvariant!1056 thiss!22590 rules!3103) e!366786)))

(declare-fun b!605268 () Bool)

(declare-datatypes ((List!6063 0))(
  ( (Nil!6053) (Cons!6053 (h!11454 String!7898) (t!80382 List!6063)) )
))
(declare-fun noDuplicateTag!446 (LexerInterface!1093 List!6062 List!6063) Bool)

(assert (=> b!605268 (= e!366786 (noDuplicateTag!446 thiss!22590 rules!3103 Nil!6053))))

(assert (= (and d!213111 res!262166) b!605268))

(declare-fun m!871175 () Bool)

(assert (=> d!213111 m!871175))

(declare-fun m!871177 () Bool)

(assert (=> b!605268 m!871177))

(assert (=> b!605100 d!213111))

(declare-fun b!605271 () Bool)

(declare-fun e!366789 () List!6061)

(assert (=> b!605271 (= e!366789 suffix!1342)))

(declare-fun d!213117 () Bool)

(declare-fun e!366788 () Bool)

(assert (=> d!213117 e!366788))

(declare-fun res!262170 () Bool)

(assert (=> d!213117 (=> (not res!262170) (not e!366788))))

(declare-fun lt!258267 () List!6061)

(assert (=> d!213117 (= res!262170 (= (content!1098 lt!258267) ((_ map or) (content!1098 lt!258196) (content!1098 suffix!1342))))))

(assert (=> d!213117 (= lt!258267 e!366789)))

(declare-fun c!112208 () Bool)

(assert (=> d!213117 (= c!112208 ((_ is Nil!6051) lt!258196))))

(assert (=> d!213117 (= (++!1695 lt!258196 suffix!1342) lt!258267)))

(declare-fun b!605272 () Bool)

(assert (=> b!605272 (= e!366789 (Cons!6051 (h!11452 lt!258196) (++!1695 (t!80332 lt!258196) suffix!1342)))))

(declare-fun b!605274 () Bool)

(assert (=> b!605274 (= e!366788 (or (not (= suffix!1342 Nil!6051)) (= lt!258267 lt!258196)))))

(declare-fun b!605273 () Bool)

(declare-fun res!262169 () Bool)

(assert (=> b!605273 (=> (not res!262169) (not e!366788))))

(assert (=> b!605273 (= res!262169 (= (size!4761 lt!258267) (+ (size!4761 lt!258196) (size!4761 suffix!1342))))))

(assert (= (and d!213117 c!112208) b!605271))

(assert (= (and d!213117 (not c!112208)) b!605272))

(assert (= (and d!213117 res!262170) b!605273))

(assert (= (and b!605273 res!262169) b!605274))

(declare-fun m!871191 () Bool)

(assert (=> d!213117 m!871191))

(declare-fun m!871193 () Bool)

(assert (=> d!213117 m!871193))

(assert (=> d!213117 m!871115))

(declare-fun m!871199 () Bool)

(assert (=> b!605272 m!871199))

(declare-fun m!871201 () Bool)

(assert (=> b!605273 m!871201))

(assert (=> b!605273 m!870925))

(assert (=> b!605273 m!871123))

(assert (=> b!605105 d!213117))

(declare-fun d!213123 () Bool)

(declare-fun lt!258275 () Int)

(assert (=> d!213123 (>= lt!258275 0)))

(declare-fun e!366806 () Int)

(assert (=> d!213123 (= lt!258275 e!366806)))

(declare-fun c!112212 () Bool)

(assert (=> d!213123 (= c!112212 ((_ is Nil!6051) (originalCharacters!1246 (_1!3728 (v!16458 lt!258174)))))))

(assert (=> d!213123 (= (size!4761 (originalCharacters!1246 (_1!3728 (v!16458 lt!258174)))) lt!258275)))

(declare-fun b!605298 () Bool)

(assert (=> b!605298 (= e!366806 0)))

(declare-fun b!605299 () Bool)

(assert (=> b!605299 (= e!366806 (+ 1 (size!4761 (t!80332 (originalCharacters!1246 (_1!3728 (v!16458 lt!258174)))))))))

(assert (= (and d!213123 c!112212) b!605298))

(assert (= (and d!213123 (not c!112212)) b!605299))

(declare-fun m!871221 () Bool)

(assert (=> b!605299 m!871221))

(assert (=> b!605115 d!213123))

(declare-fun d!213137 () Bool)

(assert (=> d!213137 (isPrefix!835 lt!258196 (++!1695 lt!258196 suffix!1342))))

(declare-fun lt!258286 () Unit!11030)

(declare-fun choose!4433 (List!6061 List!6061) Unit!11030)

(assert (=> d!213137 (= lt!258286 (choose!4433 lt!258196 suffix!1342))))

(assert (=> d!213137 (= (lemmaConcatTwoListThenFirstIsPrefix!680 lt!258196 suffix!1342) lt!258286)))

(declare-fun bs!71234 () Bool)

(assert (= bs!71234 d!213137))

(assert (=> bs!71234 m!870899))

(assert (=> bs!71234 m!870899))

(declare-fun m!871263 () Bool)

(assert (=> bs!71234 m!871263))

(declare-fun m!871265 () Bool)

(assert (=> bs!71234 m!871265))

(assert (=> b!605104 d!213137))

(declare-fun d!213157 () Bool)

(declare-fun res!262196 () Bool)

(declare-fun e!366817 () Bool)

(assert (=> d!213157 (=> (not res!262196) (not e!366817))))

(declare-fun validRegex!536 (Regex!1541) Bool)

(assert (=> d!213157 (= res!262196 (validRegex!536 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(assert (=> d!213157 (= (ruleValid!405 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174)))) e!366817)))

(declare-fun b!605314 () Bool)

(declare-fun res!262197 () Bool)

(assert (=> b!605314 (=> (not res!262197) (not e!366817))))

(declare-fun nullable!441 (Regex!1541) Bool)

(assert (=> b!605314 (= res!262197 (not (nullable!441 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))))

(declare-fun b!605315 () Bool)

(assert (=> b!605315 (= e!366817 (not (= (tag!1469 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (String!7899 ""))))))

(assert (= (and d!213157 res!262196) b!605314))

(assert (= (and b!605314 res!262197) b!605315))

(declare-fun m!871271 () Bool)

(assert (=> d!213157 m!871271))

(declare-fun m!871273 () Bool)

(assert (=> b!605314 m!871273))

(assert (=> b!605104 d!213157))

(declare-fun b!605326 () Bool)

(declare-fun e!366824 () Bool)

(declare-fun tail!811 (List!6061) List!6061)

(assert (=> b!605326 (= e!366824 (isPrefix!835 (tail!811 input!2705) (tail!811 input!2705)))))

(declare-fun b!605324 () Bool)

(declare-fun e!366826 () Bool)

(assert (=> b!605324 (= e!366826 e!366824)))

(declare-fun res!262206 () Bool)

(assert (=> b!605324 (=> (not res!262206) (not e!366824))))

(assert (=> b!605324 (= res!262206 (not ((_ is Nil!6051) input!2705)))))

(declare-fun d!213161 () Bool)

(declare-fun e!366825 () Bool)

(assert (=> d!213161 e!366825))

(declare-fun res!262208 () Bool)

(assert (=> d!213161 (=> res!262208 e!366825)))

(declare-fun lt!258289 () Bool)

(assert (=> d!213161 (= res!262208 (not lt!258289))))

(assert (=> d!213161 (= lt!258289 e!366826)))

(declare-fun res!262209 () Bool)

(assert (=> d!213161 (=> res!262209 e!366826)))

(assert (=> d!213161 (= res!262209 ((_ is Nil!6051) input!2705))))

(assert (=> d!213161 (= (isPrefix!835 input!2705 input!2705) lt!258289)))

(declare-fun b!605327 () Bool)

(assert (=> b!605327 (= e!366825 (>= (size!4761 input!2705) (size!4761 input!2705)))))

(declare-fun b!605325 () Bool)

(declare-fun res!262207 () Bool)

(assert (=> b!605325 (=> (not res!262207) (not e!366824))))

(declare-fun head!1282 (List!6061) C!4004)

(assert (=> b!605325 (= res!262207 (= (head!1282 input!2705) (head!1282 input!2705)))))

(assert (= (and d!213161 (not res!262209)) b!605324))

(assert (= (and b!605324 res!262206) b!605325))

(assert (= (and b!605325 res!262207) b!605326))

(assert (= (and d!213161 (not res!262208)) b!605327))

(declare-fun m!871275 () Bool)

(assert (=> b!605326 m!871275))

(assert (=> b!605326 m!871275))

(assert (=> b!605326 m!871275))

(assert (=> b!605326 m!871275))

(declare-fun m!871277 () Bool)

(assert (=> b!605326 m!871277))

(assert (=> b!605327 m!871121))

(assert (=> b!605327 m!871121))

(declare-fun m!871279 () Bool)

(assert (=> b!605325 m!871279))

(assert (=> b!605325 m!871279))

(assert (=> b!605104 d!213161))

(declare-fun b!605328 () Bool)

(declare-fun e!366828 () List!6061)

(assert (=> b!605328 (= e!366828 (_2!3728 (v!16458 lt!258174)))))

(declare-fun d!213163 () Bool)

(declare-fun e!366827 () Bool)

(assert (=> d!213163 e!366827))

(declare-fun res!262211 () Bool)

(assert (=> d!213163 (=> (not res!262211) (not e!366827))))

(declare-fun lt!258290 () List!6061)

(assert (=> d!213163 (= res!262211 (= (content!1098 lt!258290) ((_ map or) (content!1098 lt!258194) (content!1098 (_2!3728 (v!16458 lt!258174))))))))

(assert (=> d!213163 (= lt!258290 e!366828)))

(declare-fun c!112215 () Bool)

(assert (=> d!213163 (= c!112215 ((_ is Nil!6051) lt!258194))))

(assert (=> d!213163 (= (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174))) lt!258290)))

(declare-fun b!605329 () Bool)

(assert (=> b!605329 (= e!366828 (Cons!6051 (h!11452 lt!258194) (++!1695 (t!80332 lt!258194) (_2!3728 (v!16458 lt!258174)))))))

(declare-fun b!605331 () Bool)

(assert (=> b!605331 (= e!366827 (or (not (= (_2!3728 (v!16458 lt!258174)) Nil!6051)) (= lt!258290 lt!258194)))))

(declare-fun b!605330 () Bool)

(declare-fun res!262210 () Bool)

(assert (=> b!605330 (=> (not res!262210) (not e!366827))))

(assert (=> b!605330 (= res!262210 (= (size!4761 lt!258290) (+ (size!4761 lt!258194) (size!4761 (_2!3728 (v!16458 lt!258174))))))))

(assert (= (and d!213163 c!112215) b!605328))

(assert (= (and d!213163 (not c!112215)) b!605329))

(assert (= (and d!213163 res!262211) b!605330))

(assert (= (and b!605330 res!262210) b!605331))

(declare-fun m!871281 () Bool)

(assert (=> d!213163 m!871281))

(declare-fun m!871283 () Bool)

(assert (=> d!213163 m!871283))

(declare-fun m!871285 () Bool)

(assert (=> d!213163 m!871285))

(declare-fun m!871287 () Bool)

(assert (=> b!605329 m!871287))

(declare-fun m!871289 () Bool)

(assert (=> b!605330 m!871289))

(assert (=> b!605330 m!870939))

(declare-fun m!871291 () Bool)

(assert (=> b!605330 m!871291))

(assert (=> b!605104 d!213163))

(declare-fun d!213165 () Bool)

(declare-fun res!262212 () Bool)

(declare-fun e!366829 () Bool)

(assert (=> d!213165 (=> (not res!262212) (not e!366829))))

(assert (=> d!213165 (= res!262212 (validRegex!536 (regex!1207 (rule!1987 token!491))))))

(assert (=> d!213165 (= (ruleValid!405 thiss!22590 (rule!1987 token!491)) e!366829)))

(declare-fun b!605332 () Bool)

(declare-fun res!262213 () Bool)

(assert (=> b!605332 (=> (not res!262213) (not e!366829))))

(assert (=> b!605332 (= res!262213 (not (nullable!441 (regex!1207 (rule!1987 token!491)))))))

(declare-fun b!605333 () Bool)

(assert (=> b!605333 (= e!366829 (not (= (tag!1469 (rule!1987 token!491)) (String!7899 ""))))))

(assert (= (and d!213165 res!262212) b!605332))

(assert (= (and b!605332 res!262213) b!605333))

(declare-fun m!871293 () Bool)

(assert (=> d!213165 m!871293))

(declare-fun m!871295 () Bool)

(assert (=> b!605332 m!871295))

(assert (=> b!605104 d!213165))

(declare-fun d!213167 () Bool)

(declare-fun list!2544 (Conc!1924) List!6061)

(assert (=> d!213167 (= (list!2542 (charsOf!836 (_1!3728 (v!16458 lt!258174)))) (list!2544 (c!112180 (charsOf!836 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun bs!71235 () Bool)

(assert (= bs!71235 d!213167))

(declare-fun m!871297 () Bool)

(assert (=> bs!71235 m!871297))

(assert (=> b!605104 d!213167))

(declare-fun b!605336 () Bool)

(declare-fun e!366830 () Bool)

(assert (=> b!605336 (= e!366830 (isPrefix!835 (tail!811 lt!258196) (tail!811 lt!258169)))))

(declare-fun b!605334 () Bool)

(declare-fun e!366832 () Bool)

(assert (=> b!605334 (= e!366832 e!366830)))

(declare-fun res!262214 () Bool)

(assert (=> b!605334 (=> (not res!262214) (not e!366830))))

(assert (=> b!605334 (= res!262214 (not ((_ is Nil!6051) lt!258169)))))

(declare-fun d!213169 () Bool)

(declare-fun e!366831 () Bool)

(assert (=> d!213169 e!366831))

(declare-fun res!262216 () Bool)

(assert (=> d!213169 (=> res!262216 e!366831)))

(declare-fun lt!258291 () Bool)

(assert (=> d!213169 (= res!262216 (not lt!258291))))

(assert (=> d!213169 (= lt!258291 e!366832)))

(declare-fun res!262217 () Bool)

(assert (=> d!213169 (=> res!262217 e!366832)))

(assert (=> d!213169 (= res!262217 ((_ is Nil!6051) lt!258196))))

(assert (=> d!213169 (= (isPrefix!835 lt!258196 lt!258169) lt!258291)))

(declare-fun b!605337 () Bool)

(assert (=> b!605337 (= e!366831 (>= (size!4761 lt!258169) (size!4761 lt!258196)))))

(declare-fun b!605335 () Bool)

(declare-fun res!262215 () Bool)

(assert (=> b!605335 (=> (not res!262215) (not e!366830))))

(assert (=> b!605335 (= res!262215 (= (head!1282 lt!258196) (head!1282 lt!258169)))))

(assert (= (and d!213169 (not res!262217)) b!605334))

(assert (= (and b!605334 res!262214) b!605335))

(assert (= (and b!605335 res!262215) b!605336))

(assert (= (and d!213169 (not res!262216)) b!605337))

(declare-fun m!871299 () Bool)

(assert (=> b!605336 m!871299))

(declare-fun m!871301 () Bool)

(assert (=> b!605336 m!871301))

(assert (=> b!605336 m!871299))

(assert (=> b!605336 m!871301))

(declare-fun m!871303 () Bool)

(assert (=> b!605336 m!871303))

(declare-fun m!871305 () Bool)

(assert (=> b!605337 m!871305))

(assert (=> b!605337 m!870925))

(declare-fun m!871307 () Bool)

(assert (=> b!605335 m!871307))

(declare-fun m!871309 () Bool)

(assert (=> b!605335 m!871309))

(assert (=> b!605104 d!213169))

(declare-fun d!213171 () Bool)

(declare-fun e!366835 () Bool)

(assert (=> d!213171 e!366835))

(declare-fun res!262220 () Bool)

(assert (=> d!213171 (=> (not res!262220) (not e!366835))))

(declare-fun semiInverseModEq!483 (Int Int) Bool)

(assert (=> d!213171 (= res!262220 (semiInverseModEq!483 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))))))

(declare-fun Unit!11038 () Unit!11030)

(assert (=> d!213171 (= (lemmaInv!315 (transformation!1207 (rule!1987 token!491))) Unit!11038)))

(declare-fun b!605340 () Bool)

(declare-fun equivClasses!466 (Int Int) Bool)

(assert (=> b!605340 (= e!366835 (equivClasses!466 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))))))

(assert (= (and d!213171 res!262220) b!605340))

(declare-fun m!871311 () Bool)

(assert (=> d!213171 m!871311))

(declare-fun m!871313 () Bool)

(assert (=> b!605340 m!871313))

(assert (=> b!605104 d!213171))

(declare-fun d!213173 () Bool)

(assert (=> d!213173 (isPrefix!835 lt!258194 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174))))))

(declare-fun lt!258292 () Unit!11030)

(assert (=> d!213173 (= lt!258292 (choose!4433 lt!258194 (_2!3728 (v!16458 lt!258174))))))

(assert (=> d!213173 (= (lemmaConcatTwoListThenFirstIsPrefix!680 lt!258194 (_2!3728 (v!16458 lt!258174))) lt!258292)))

(declare-fun bs!71236 () Bool)

(assert (= bs!71236 d!213173))

(assert (=> bs!71236 m!870929))

(assert (=> bs!71236 m!870929))

(assert (=> bs!71236 m!870961))

(declare-fun m!871315 () Bool)

(assert (=> bs!71236 m!871315))

(assert (=> b!605104 d!213173))

(declare-fun d!213175 () Bool)

(assert (=> d!213175 (= (_2!3728 (v!16458 lt!258174)) lt!258175)))

(declare-fun lt!258295 () Unit!11030)

(declare-fun choose!4434 (List!6061 List!6061 List!6061 List!6061 List!6061) Unit!11030)

(assert (=> d!213175 (= lt!258295 (choose!4434 lt!258194 (_2!3728 (v!16458 lt!258174)) lt!258194 lt!258175 input!2705))))

(assert (=> d!213175 (isPrefix!835 lt!258194 input!2705)))

(assert (=> d!213175 (= (lemmaSamePrefixThenSameSuffix!548 lt!258194 (_2!3728 (v!16458 lt!258174)) lt!258194 lt!258175 input!2705) lt!258295)))

(declare-fun bs!71237 () Bool)

(assert (= bs!71237 d!213175))

(declare-fun m!871317 () Bool)

(assert (=> bs!71237 m!871317))

(declare-fun m!871319 () Bool)

(assert (=> bs!71237 m!871319))

(assert (=> b!605104 d!213175))

(declare-fun d!213177 () Bool)

(declare-fun lt!258298 () BalanceConc!3856)

(assert (=> d!213177 (= (list!2542 lt!258298) (originalCharacters!1246 (_1!3728 (v!16458 lt!258174))))))

(declare-fun dynLambda!3509 (Int TokenValue!1231) BalanceConc!3856)

(assert (=> d!213177 (= lt!258298 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174)))))))

(assert (=> d!213177 (= (charsOf!836 (_1!3728 (v!16458 lt!258174))) lt!258298)))

(declare-fun b_lambda!23947 () Bool)

(assert (=> (not b_lambda!23947) (not d!213177)))

(declare-fun t!80347 () Bool)

(declare-fun tb!52815 () Bool)

(assert (=> (and b!605121 (= (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80347) tb!52815))

(declare-fun b!605345 () Bool)

(declare-fun e!366838 () Bool)

(declare-fun tp!188090 () Bool)

(declare-fun inv!7693 (Conc!1924) Bool)

(assert (=> b!605345 (= e!366838 (and (inv!7693 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174)))))) tp!188090))))

(declare-fun result!59434 () Bool)

(declare-fun inv!7694 (BalanceConc!3856) Bool)

(assert (=> tb!52815 (= result!59434 (and (inv!7694 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174))))) e!366838))))

(assert (= tb!52815 b!605345))

(declare-fun m!871321 () Bool)

(assert (=> b!605345 m!871321))

(declare-fun m!871323 () Bool)

(assert (=> tb!52815 m!871323))

(assert (=> d!213177 t!80347))

(declare-fun b_and!59867 () Bool)

(assert (= b_and!59849 (and (=> t!80347 result!59434) b_and!59867)))

(declare-fun tb!52817 () Bool)

(declare-fun t!80349 () Bool)

(assert (=> (and b!605099 (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80349) tb!52817))

(declare-fun result!59438 () Bool)

(assert (= result!59438 result!59434))

(assert (=> d!213177 t!80349))

(declare-fun b_and!59869 () Bool)

(assert (= b_and!59853 (and (=> t!80349 result!59438) b_and!59869)))

(declare-fun m!871325 () Bool)

(assert (=> d!213177 m!871325))

(declare-fun m!871327 () Bool)

(assert (=> d!213177 m!871327))

(assert (=> b!605104 d!213177))

(declare-fun d!213179 () Bool)

(declare-fun fromListB!610 (List!6061) BalanceConc!3856)

(assert (=> d!213179 (= (seqFromList!1383 lt!258194) (fromListB!610 lt!258194))))

(declare-fun bs!71238 () Bool)

(assert (= bs!71238 d!213179))

(declare-fun m!871329 () Bool)

(assert (=> bs!71238 m!871329))

(assert (=> b!605104 d!213179))

(declare-fun d!213181 () Bool)

(declare-fun e!366839 () Bool)

(assert (=> d!213181 e!366839))

(declare-fun res!262221 () Bool)

(assert (=> d!213181 (=> (not res!262221) (not e!366839))))

(assert (=> d!213181 (= res!262221 (semiInverseModEq!483 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))))

(declare-fun Unit!11039 () Unit!11030)

(assert (=> d!213181 (= (lemmaInv!315 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) Unit!11039)))

(declare-fun b!605346 () Bool)

(assert (=> b!605346 (= e!366839 (equivClasses!466 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))))

(assert (= (and d!213181 res!262221) b!605346))

(declare-fun m!871331 () Bool)

(assert (=> d!213181 m!871331))

(declare-fun m!871333 () Bool)

(assert (=> b!605346 m!871333))

(assert (=> b!605104 d!213181))

(declare-fun d!213183 () Bool)

(declare-fun lt!258299 () Int)

(assert (=> d!213183 (>= lt!258299 0)))

(declare-fun e!366840 () Int)

(assert (=> d!213183 (= lt!258299 e!366840)))

(declare-fun c!112216 () Bool)

(assert (=> d!213183 (= c!112216 ((_ is Nil!6051) lt!258194))))

(assert (=> d!213183 (= (size!4761 lt!258194) lt!258299)))

(declare-fun b!605347 () Bool)

(assert (=> b!605347 (= e!366840 0)))

(declare-fun b!605348 () Bool)

(assert (=> b!605348 (= e!366840 (+ 1 (size!4761 (t!80332 lt!258194))))))

(assert (= (and d!213183 c!112216) b!605347))

(assert (= (and d!213183 (not c!112216)) b!605348))

(declare-fun m!871335 () Bool)

(assert (=> b!605348 m!871335))

(assert (=> b!605104 d!213183))

(declare-fun d!213185 () Bool)

(assert (=> d!213185 (ruleValid!405 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174))))))

(declare-fun lt!258312 () Unit!11030)

(declare-fun choose!4436 (LexerInterface!1093 Rule!2214 List!6062) Unit!11030)

(assert (=> d!213185 (= lt!258312 (choose!4436 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174))) rules!3103))))

(assert (=> d!213185 (contains!1421 rules!3103 (rule!1987 (_1!3728 (v!16458 lt!258174))))))

(assert (=> d!213185 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!252 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174))) rules!3103) lt!258312)))

(declare-fun bs!71239 () Bool)

(assert (= bs!71239 d!213185))

(assert (=> bs!71239 m!870963))

(declare-fun m!871337 () Bool)

(assert (=> bs!71239 m!871337))

(declare-fun m!871339 () Bool)

(assert (=> bs!71239 m!871339))

(assert (=> b!605104 d!213185))

(declare-fun d!213187 () Bool)

(assert (=> d!213187 (ruleValid!405 thiss!22590 (rule!1987 token!491))))

(declare-fun lt!258313 () Unit!11030)

(assert (=> d!213187 (= lt!258313 (choose!4436 thiss!22590 (rule!1987 token!491) rules!3103))))

(assert (=> d!213187 (contains!1421 rules!3103 (rule!1987 token!491))))

(assert (=> d!213187 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!252 thiss!22590 (rule!1987 token!491) rules!3103) lt!258313)))

(declare-fun bs!71240 () Bool)

(assert (= bs!71240 d!213187))

(assert (=> bs!71240 m!870955))

(declare-fun m!871341 () Bool)

(assert (=> bs!71240 m!871341))

(declare-fun m!871343 () Bool)

(assert (=> bs!71240 m!871343))

(assert (=> b!605104 d!213187))

(declare-fun d!213189 () Bool)

(assert (=> d!213189 (isPrefix!835 input!2705 (++!1695 input!2705 suffix!1342))))

(declare-fun lt!258314 () Unit!11030)

(assert (=> d!213189 (= lt!258314 (choose!4433 input!2705 suffix!1342))))

(assert (=> d!213189 (= (lemmaConcatTwoListThenFirstIsPrefix!680 input!2705 suffix!1342) lt!258314)))

(declare-fun bs!71241 () Bool)

(assert (= bs!71241 d!213189))

(assert (=> bs!71241 m!870905))

(assert (=> bs!71241 m!870905))

(declare-fun m!871345 () Bool)

(assert (=> bs!71241 m!871345))

(declare-fun m!871347 () Bool)

(assert (=> bs!71241 m!871347))

(assert (=> b!605104 d!213189))

(declare-fun d!213191 () Bool)

(assert (=> d!213191 (= (size!4760 (_1!3728 (v!16458 lt!258174))) (size!4761 (originalCharacters!1246 (_1!3728 (v!16458 lt!258174)))))))

(declare-fun Unit!11040 () Unit!11030)

(assert (=> d!213191 (= (lemmaCharactersSize!266 (_1!3728 (v!16458 lt!258174))) Unit!11040)))

(declare-fun bs!71242 () Bool)

(assert (= bs!71242 d!213191))

(assert (=> bs!71242 m!870887))

(assert (=> b!605104 d!213191))

(declare-fun b!605369 () Bool)

(declare-fun e!366849 () Bool)

(assert (=> b!605369 (= e!366849 (isPrefix!835 (tail!811 input!2705) (tail!811 lt!258169)))))

(declare-fun b!605367 () Bool)

(declare-fun e!366851 () Bool)

(assert (=> b!605367 (= e!366851 e!366849)))

(declare-fun res!262236 () Bool)

(assert (=> b!605367 (=> (not res!262236) (not e!366849))))

(assert (=> b!605367 (= res!262236 (not ((_ is Nil!6051) lt!258169)))))

(declare-fun d!213193 () Bool)

(declare-fun e!366850 () Bool)

(assert (=> d!213193 e!366850))

(declare-fun res!262238 () Bool)

(assert (=> d!213193 (=> res!262238 e!366850)))

(declare-fun lt!258315 () Bool)

(assert (=> d!213193 (= res!262238 (not lt!258315))))

(assert (=> d!213193 (= lt!258315 e!366851)))

(declare-fun res!262239 () Bool)

(assert (=> d!213193 (=> res!262239 e!366851)))

(assert (=> d!213193 (= res!262239 ((_ is Nil!6051) input!2705))))

(assert (=> d!213193 (= (isPrefix!835 input!2705 lt!258169) lt!258315)))

(declare-fun b!605370 () Bool)

(assert (=> b!605370 (= e!366850 (>= (size!4761 lt!258169) (size!4761 input!2705)))))

(declare-fun b!605368 () Bool)

(declare-fun res!262237 () Bool)

(assert (=> b!605368 (=> (not res!262237) (not e!366849))))

(assert (=> b!605368 (= res!262237 (= (head!1282 input!2705) (head!1282 lt!258169)))))

(assert (= (and d!213193 (not res!262239)) b!605367))

(assert (= (and b!605367 res!262236) b!605368))

(assert (= (and b!605368 res!262237) b!605369))

(assert (= (and d!213193 (not res!262238)) b!605370))

(assert (=> b!605369 m!871275))

(assert (=> b!605369 m!871301))

(assert (=> b!605369 m!871275))

(assert (=> b!605369 m!871301))

(declare-fun m!871349 () Bool)

(assert (=> b!605369 m!871349))

(assert (=> b!605370 m!871305))

(assert (=> b!605370 m!871121))

(assert (=> b!605368 m!871279))

(assert (=> b!605368 m!871309))

(assert (=> b!605104 d!213193))

(declare-fun d!213195 () Bool)

(assert (=> d!213195 (and (= lt!258196 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!258323 () Unit!11030)

(declare-fun choose!4437 (List!6061 List!6061 List!6061 List!6061) Unit!11030)

(assert (=> d!213195 (= lt!258323 (choose!4437 lt!258196 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!213195 (= (++!1695 lt!258196 suffix!1342) (++!1695 input!2705 suffix!1342))))

(assert (=> d!213195 (= (lemmaConcatSameAndSameSizesThenSameLists!280 lt!258196 suffix!1342 input!2705 suffix!1342) lt!258323)))

(declare-fun bs!71243 () Bool)

(assert (= bs!71243 d!213195))

(declare-fun m!871393 () Bool)

(assert (=> bs!71243 m!871393))

(assert (=> bs!71243 m!870899))

(assert (=> bs!71243 m!870905))

(assert (=> b!605104 d!213195))

(declare-fun d!213199 () Bool)

(assert (=> d!213199 (isPrefix!835 input!2705 input!2705)))

(declare-fun lt!258326 () Unit!11030)

(declare-fun choose!4438 (List!6061 List!6061) Unit!11030)

(assert (=> d!213199 (= lt!258326 (choose!4438 input!2705 input!2705))))

(assert (=> d!213199 (= (lemmaIsPrefixRefl!571 input!2705 input!2705) lt!258326)))

(declare-fun bs!71244 () Bool)

(assert (= bs!71244 d!213199))

(assert (=> bs!71244 m!870947))

(declare-fun m!871395 () Bool)

(assert (=> bs!71244 m!871395))

(assert (=> b!605104 d!213199))

(declare-fun d!213201 () Bool)

(declare-fun dynLambda!3510 (Int BalanceConc!3856) TokenValue!1231)

(assert (=> d!213201 (= (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (seqFromList!1383 lt!258194)) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 lt!258194)))))

(declare-fun b_lambda!23949 () Bool)

(assert (=> (not b_lambda!23949) (not d!213201)))

(declare-fun t!80351 () Bool)

(declare-fun tb!52819 () Bool)

(assert (=> (and b!605121 (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80351) tb!52819))

(declare-fun result!59440 () Bool)

(assert (=> tb!52819 (= result!59440 (inv!21 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 lt!258194))))))

(declare-fun m!871397 () Bool)

(assert (=> tb!52819 m!871397))

(assert (=> d!213201 t!80351))

(declare-fun b_and!59871 () Bool)

(assert (= b_and!59847 (and (=> t!80351 result!59440) b_and!59871)))

(declare-fun tb!52821 () Bool)

(declare-fun t!80353 () Bool)

(assert (=> (and b!605099 (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80353) tb!52821))

(declare-fun result!59444 () Bool)

(assert (= result!59444 result!59440))

(assert (=> d!213201 t!80353))

(declare-fun b_and!59873 () Bool)

(assert (= b_and!59851 (and (=> t!80353 result!59444) b_and!59873)))

(assert (=> d!213201 m!870943))

(declare-fun m!871399 () Bool)

(assert (=> d!213201 m!871399))

(assert (=> b!605104 d!213201))

(declare-fun d!213203 () Bool)

(declare-fun lt!258332 () List!6061)

(assert (=> d!213203 (= (++!1695 lt!258194 lt!258332) input!2705)))

(declare-fun e!366861 () List!6061)

(assert (=> d!213203 (= lt!258332 e!366861)))

(declare-fun c!112222 () Bool)

(assert (=> d!213203 (= c!112222 ((_ is Cons!6051) lt!258194))))

(assert (=> d!213203 (>= (size!4761 input!2705) (size!4761 lt!258194))))

(assert (=> d!213203 (= (getSuffix!352 input!2705 lt!258194) lt!258332)))

(declare-fun b!605386 () Bool)

(assert (=> b!605386 (= e!366861 (getSuffix!352 (tail!811 input!2705) (t!80332 lt!258194)))))

(declare-fun b!605387 () Bool)

(assert (=> b!605387 (= e!366861 input!2705)))

(assert (= (and d!213203 c!112222) b!605386))

(assert (= (and d!213203 (not c!112222)) b!605387))

(declare-fun m!871405 () Bool)

(assert (=> d!213203 m!871405))

(assert (=> d!213203 m!871121))

(assert (=> d!213203 m!870939))

(assert (=> b!605386 m!871275))

(assert (=> b!605386 m!871275))

(declare-fun m!871407 () Bool)

(assert (=> b!605386 m!871407))

(assert (=> b!605104 d!213203))

(declare-fun d!213209 () Bool)

(assert (=> d!213209 (= (size!4760 token!491) (size!4761 (originalCharacters!1246 token!491)))))

(declare-fun Unit!11041 () Unit!11030)

(assert (=> d!213209 (= (lemmaCharactersSize!266 token!491) Unit!11041)))

(declare-fun bs!71247 () Bool)

(assert (= bs!71247 d!213209))

(assert (=> bs!71247 m!870979))

(assert (=> b!605104 d!213209))

(declare-fun b!605399 () Bool)

(declare-fun e!366866 () Bool)

(assert (=> b!605399 (= e!366866 (isPrefix!835 (tail!811 input!2705) (tail!811 lt!258195)))))

(declare-fun b!605397 () Bool)

(declare-fun e!366868 () Bool)

(assert (=> b!605397 (= e!366868 e!366866)))

(declare-fun res!262254 () Bool)

(assert (=> b!605397 (=> (not res!262254) (not e!366866))))

(assert (=> b!605397 (= res!262254 (not ((_ is Nil!6051) lt!258195)))))

(declare-fun d!213211 () Bool)

(declare-fun e!366867 () Bool)

(assert (=> d!213211 e!366867))

(declare-fun res!262256 () Bool)

(assert (=> d!213211 (=> res!262256 e!366867)))

(declare-fun lt!258339 () Bool)

(assert (=> d!213211 (= res!262256 (not lt!258339))))

(assert (=> d!213211 (= lt!258339 e!366868)))

(declare-fun res!262257 () Bool)

(assert (=> d!213211 (=> res!262257 e!366868)))

(assert (=> d!213211 (= res!262257 ((_ is Nil!6051) input!2705))))

(assert (=> d!213211 (= (isPrefix!835 input!2705 lt!258195) lt!258339)))

(declare-fun b!605400 () Bool)

(assert (=> b!605400 (= e!366867 (>= (size!4761 lt!258195) (size!4761 input!2705)))))

(declare-fun b!605398 () Bool)

(declare-fun res!262255 () Bool)

(assert (=> b!605398 (=> (not res!262255) (not e!366866))))

(assert (=> b!605398 (= res!262255 (= (head!1282 input!2705) (head!1282 lt!258195)))))

(assert (= (and d!213211 (not res!262257)) b!605397))

(assert (= (and b!605397 res!262254) b!605398))

(assert (= (and b!605398 res!262255) b!605399))

(assert (= (and d!213211 (not res!262256)) b!605400))

(assert (=> b!605399 m!871275))

(declare-fun m!871409 () Bool)

(assert (=> b!605399 m!871409))

(assert (=> b!605399 m!871275))

(assert (=> b!605399 m!871409))

(declare-fun m!871411 () Bool)

(assert (=> b!605399 m!871411))

(assert (=> b!605400 m!871065))

(assert (=> b!605400 m!871121))

(assert (=> b!605398 m!871279))

(declare-fun m!871413 () Bool)

(assert (=> b!605398 m!871413))

(assert (=> b!605104 d!213211))

(declare-fun b!605403 () Bool)

(declare-fun e!366869 () Bool)

(assert (=> b!605403 (= e!366869 (isPrefix!835 (tail!811 lt!258194) (tail!811 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174))))))))

(declare-fun b!605401 () Bool)

(declare-fun e!366871 () Bool)

(assert (=> b!605401 (= e!366871 e!366869)))

(declare-fun res!262258 () Bool)

(assert (=> b!605401 (=> (not res!262258) (not e!366869))))

(assert (=> b!605401 (= res!262258 (not ((_ is Nil!6051) (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174))))))))

(declare-fun d!213213 () Bool)

(declare-fun e!366870 () Bool)

(assert (=> d!213213 e!366870))

(declare-fun res!262260 () Bool)

(assert (=> d!213213 (=> res!262260 e!366870)))

(declare-fun lt!258340 () Bool)

(assert (=> d!213213 (= res!262260 (not lt!258340))))

(assert (=> d!213213 (= lt!258340 e!366871)))

(declare-fun res!262261 () Bool)

(assert (=> d!213213 (=> res!262261 e!366871)))

(assert (=> d!213213 (= res!262261 ((_ is Nil!6051) lt!258194))))

(assert (=> d!213213 (= (isPrefix!835 lt!258194 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174)))) lt!258340)))

(declare-fun b!605404 () Bool)

(assert (=> b!605404 (= e!366870 (>= (size!4761 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174)))) (size!4761 lt!258194)))))

(declare-fun b!605402 () Bool)

(declare-fun res!262259 () Bool)

(assert (=> b!605402 (=> (not res!262259) (not e!366869))))

(assert (=> b!605402 (= res!262259 (= (head!1282 lt!258194) (head!1282 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174))))))))

(assert (= (and d!213213 (not res!262261)) b!605401))

(assert (= (and b!605401 res!262258) b!605402))

(assert (= (and b!605402 res!262259) b!605403))

(assert (= (and d!213213 (not res!262260)) b!605404))

(declare-fun m!871429 () Bool)

(assert (=> b!605403 m!871429))

(assert (=> b!605403 m!870929))

(declare-fun m!871433 () Bool)

(assert (=> b!605403 m!871433))

(assert (=> b!605403 m!871429))

(assert (=> b!605403 m!871433))

(declare-fun m!871435 () Bool)

(assert (=> b!605403 m!871435))

(assert (=> b!605404 m!870929))

(declare-fun m!871437 () Bool)

(assert (=> b!605404 m!871437))

(assert (=> b!605404 m!870939))

(declare-fun m!871441 () Bool)

(assert (=> b!605402 m!871441))

(assert (=> b!605402 m!870929))

(declare-fun m!871445 () Bool)

(assert (=> b!605402 m!871445))

(assert (=> b!605104 d!213213))

(declare-fun d!213215 () Bool)

(declare-fun lt!258341 () Int)

(assert (=> d!213215 (>= lt!258341 0)))

(declare-fun e!366872 () Int)

(assert (=> d!213215 (= lt!258341 e!366872)))

(declare-fun c!112224 () Bool)

(assert (=> d!213215 (= c!112224 ((_ is Nil!6051) lt!258196))))

(assert (=> d!213215 (= (size!4761 lt!258196) lt!258341)))

(declare-fun b!605405 () Bool)

(assert (=> b!605405 (= e!366872 0)))

(declare-fun b!605406 () Bool)

(assert (=> b!605406 (= e!366872 (+ 1 (size!4761 (t!80332 lt!258196))))))

(assert (= (and d!213215 c!112224) b!605405))

(assert (= (and d!213215 (not c!112224)) b!605406))

(declare-fun m!871459 () Bool)

(assert (=> b!605406 m!871459))

(assert (=> b!605104 d!213215))

(declare-fun d!213217 () Bool)

(assert (=> d!213217 (= suffix!1342 lt!258189)))

(declare-fun lt!258342 () Unit!11030)

(assert (=> d!213217 (= lt!258342 (choose!4434 lt!258196 suffix!1342 lt!258196 lt!258189 lt!258195))))

(assert (=> d!213217 (isPrefix!835 lt!258196 lt!258195)))

(assert (=> d!213217 (= (lemmaSamePrefixThenSameSuffix!548 lt!258196 suffix!1342 lt!258196 lt!258189 lt!258195) lt!258342)))

(declare-fun bs!71249 () Bool)

(assert (= bs!71249 d!213217))

(declare-fun m!871471 () Bool)

(assert (=> bs!71249 m!871471))

(declare-fun m!871473 () Bool)

(assert (=> bs!71249 m!871473))

(assert (=> b!605103 d!213217))

(declare-fun d!213223 () Bool)

(declare-fun e!366927 () Bool)

(assert (=> d!213223 e!366927))

(declare-fun res!262300 () Bool)

(assert (=> d!213223 (=> res!262300 e!366927)))

(declare-fun lt!258360 () Option!1558)

(assert (=> d!213223 (= res!262300 (isEmpty!4370 lt!258360))))

(declare-fun e!366929 () Option!1558)

(assert (=> d!213223 (= lt!258360 e!366929)))

(declare-fun c!112235 () Bool)

(declare-datatypes ((tuple2!6932 0))(
  ( (tuple2!6933 (_1!3730 List!6061) (_2!3730 List!6061)) )
))
(declare-fun lt!258363 () tuple2!6932)

(assert (=> d!213223 (= c!112235 (isEmpty!4367 (_1!3730 lt!258363)))))

(declare-fun findLongestMatch!180 (Regex!1541 List!6061) tuple2!6932)

(assert (=> d!213223 (= lt!258363 (findLongestMatch!180 (regex!1207 (rule!1987 token!491)) lt!258195))))

(assert (=> d!213223 (ruleValid!405 thiss!22590 (rule!1987 token!491))))

(assert (=> d!213223 (= (maxPrefixOneRule!454 thiss!22590 (rule!1987 token!491) lt!258195) lt!258360)))

(declare-fun b!605501 () Bool)

(declare-fun res!262301 () Bool)

(declare-fun e!366926 () Bool)

(assert (=> b!605501 (=> (not res!262301) (not e!366926))))

(assert (=> b!605501 (= res!262301 (= (rule!1987 (_1!3728 (get!2325 lt!258360))) (rule!1987 token!491)))))

(declare-fun b!605502 () Bool)

(declare-fun e!366928 () Bool)

(declare-fun findLongestMatchInner!201 (Regex!1541 List!6061 Int List!6061 List!6061 Int) tuple2!6932)

(assert (=> b!605502 (= e!366928 (matchR!644 (regex!1207 (rule!1987 token!491)) (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))))))

(declare-fun b!605503 () Bool)

(assert (=> b!605503 (= e!366927 e!366926)))

(declare-fun res!262303 () Bool)

(assert (=> b!605503 (=> (not res!262303) (not e!366926))))

(assert (=> b!605503 (= res!262303 (matchR!644 (regex!1207 (rule!1987 token!491)) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360))))))))

(declare-fun b!605504 () Bool)

(declare-fun res!262299 () Bool)

(assert (=> b!605504 (=> (not res!262299) (not e!366926))))

(assert (=> b!605504 (= res!262299 (= (++!1695 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360)))) (_2!3728 (get!2325 lt!258360))) lt!258195))))

(declare-fun b!605505 () Bool)

(assert (=> b!605505 (= e!366926 (= (size!4760 (_1!3728 (get!2325 lt!258360))) (size!4761 (originalCharacters!1246 (_1!3728 (get!2325 lt!258360))))))))

(declare-fun b!605506 () Bool)

(assert (=> b!605506 (= e!366929 None!1557)))

(declare-fun b!605507 () Bool)

(declare-fun res!262302 () Bool)

(assert (=> b!605507 (=> (not res!262302) (not e!366926))))

(assert (=> b!605507 (= res!262302 (< (size!4761 (_2!3728 (get!2325 lt!258360))) (size!4761 lt!258195)))))

(declare-fun b!605508 () Bool)

(declare-fun res!262305 () Bool)

(assert (=> b!605508 (=> (not res!262305) (not e!366926))))

(assert (=> b!605508 (= res!262305 (= (value!39266 (_1!3728 (get!2325 lt!258360))) (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360)))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258360)))))))))

(declare-fun b!605509 () Bool)

(declare-fun size!4763 (BalanceConc!3856) Int)

(assert (=> b!605509 (= e!366929 (Some!1557 (tuple2!6929 (Token!2151 (apply!1460 (transformation!1207 (rule!1987 token!491)) (seqFromList!1383 (_1!3730 lt!258363))) (rule!1987 token!491) (size!4763 (seqFromList!1383 (_1!3730 lt!258363))) (_1!3730 lt!258363)) (_2!3730 lt!258363))))))

(declare-fun lt!258361 () Unit!11030)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!185 (Regex!1541 List!6061) Unit!11030)

(assert (=> b!605509 (= lt!258361 (longestMatchIsAcceptedByMatchOrIsEmpty!185 (regex!1207 (rule!1987 token!491)) lt!258195))))

(declare-fun res!262304 () Bool)

(assert (=> b!605509 (= res!262304 (isEmpty!4367 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))))))

(assert (=> b!605509 (=> res!262304 e!366928)))

(assert (=> b!605509 e!366928))

(declare-fun lt!258364 () Unit!11030)

(assert (=> b!605509 (= lt!258364 lt!258361)))

(declare-fun lt!258362 () Unit!11030)

(declare-fun lemmaSemiInverse!240 (TokenValueInjection!2230 BalanceConc!3856) Unit!11030)

(assert (=> b!605509 (= lt!258362 (lemmaSemiInverse!240 (transformation!1207 (rule!1987 token!491)) (seqFromList!1383 (_1!3730 lt!258363))))))

(assert (= (and d!213223 c!112235) b!605506))

(assert (= (and d!213223 (not c!112235)) b!605509))

(assert (= (and b!605509 (not res!262304)) b!605502))

(assert (= (and d!213223 (not res!262300)) b!605503))

(assert (= (and b!605503 res!262303) b!605504))

(assert (= (and b!605504 res!262299) b!605507))

(assert (= (and b!605507 res!262302) b!605501))

(assert (= (and b!605501 res!262301) b!605508))

(assert (= (and b!605508 res!262305) b!605505))

(declare-fun m!871537 () Bool)

(assert (=> b!605504 m!871537))

(declare-fun m!871539 () Bool)

(assert (=> b!605504 m!871539))

(assert (=> b!605504 m!871539))

(declare-fun m!871541 () Bool)

(assert (=> b!605504 m!871541))

(assert (=> b!605504 m!871541))

(declare-fun m!871543 () Bool)

(assert (=> b!605504 m!871543))

(assert (=> b!605508 m!871537))

(declare-fun m!871545 () Bool)

(assert (=> b!605508 m!871545))

(assert (=> b!605508 m!871545))

(declare-fun m!871547 () Bool)

(assert (=> b!605508 m!871547))

(assert (=> b!605505 m!871537))

(declare-fun m!871549 () Bool)

(assert (=> b!605505 m!871549))

(declare-fun m!871551 () Bool)

(assert (=> b!605509 m!871551))

(declare-fun m!871553 () Bool)

(assert (=> b!605509 m!871553))

(assert (=> b!605509 m!871551))

(declare-fun m!871555 () Bool)

(assert (=> b!605509 m!871555))

(assert (=> b!605509 m!871065))

(declare-fun m!871557 () Bool)

(assert (=> b!605509 m!871557))

(assert (=> b!605509 m!871065))

(assert (=> b!605509 m!871555))

(declare-fun m!871559 () Bool)

(assert (=> b!605509 m!871559))

(assert (=> b!605509 m!871551))

(declare-fun m!871561 () Bool)

(assert (=> b!605509 m!871561))

(assert (=> b!605509 m!871551))

(declare-fun m!871563 () Bool)

(assert (=> b!605509 m!871563))

(declare-fun m!871565 () Bool)

(assert (=> b!605509 m!871565))

(declare-fun m!871567 () Bool)

(assert (=> d!213223 m!871567))

(declare-fun m!871569 () Bool)

(assert (=> d!213223 m!871569))

(declare-fun m!871571 () Bool)

(assert (=> d!213223 m!871571))

(assert (=> d!213223 m!870955))

(assert (=> b!605507 m!871537))

(declare-fun m!871573 () Bool)

(assert (=> b!605507 m!871573))

(assert (=> b!605507 m!871065))

(assert (=> b!605502 m!871555))

(assert (=> b!605502 m!871065))

(assert (=> b!605502 m!871555))

(assert (=> b!605502 m!871065))

(assert (=> b!605502 m!871557))

(declare-fun m!871575 () Bool)

(assert (=> b!605502 m!871575))

(assert (=> b!605503 m!871537))

(assert (=> b!605503 m!871539))

(assert (=> b!605503 m!871539))

(assert (=> b!605503 m!871541))

(assert (=> b!605503 m!871541))

(declare-fun m!871577 () Bool)

(assert (=> b!605503 m!871577))

(assert (=> b!605501 m!871537))

(assert (=> b!605103 d!213223))

(declare-fun d!213253 () Bool)

(assert (=> d!213253 (= (maxPrefixOneRule!454 thiss!22590 (rule!1987 token!491) lt!258195) (Some!1557 (tuple2!6929 (Token!2151 (apply!1460 (transformation!1207 (rule!1987 token!491)) (seqFromList!1383 lt!258196)) (rule!1987 token!491) (size!4761 lt!258196) lt!258196) suffix!1342)))))

(declare-fun lt!258367 () Unit!11030)

(declare-fun choose!4439 (LexerInterface!1093 List!6062 List!6061 List!6061 List!6061 Rule!2214) Unit!11030)

(assert (=> d!213253 (= lt!258367 (choose!4439 thiss!22590 rules!3103 lt!258196 lt!258195 suffix!1342 (rule!1987 token!491)))))

(assert (=> d!213253 (not (isEmpty!4368 rules!3103))))

(assert (=> d!213253 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!160 thiss!22590 rules!3103 lt!258196 lt!258195 suffix!1342 (rule!1987 token!491)) lt!258367)))

(declare-fun bs!71252 () Bool)

(assert (= bs!71252 d!213253))

(assert (=> bs!71252 m!870907))

(assert (=> bs!71252 m!870909))

(assert (=> bs!71252 m!870921))

(assert (=> bs!71252 m!870907))

(assert (=> bs!71252 m!870925))

(declare-fun m!871579 () Bool)

(assert (=> bs!71252 m!871579))

(assert (=> bs!71252 m!870877))

(assert (=> b!605103 d!213253))

(declare-fun d!213255 () Bool)

(assert (=> d!213255 (= (maxPrefixOneRule!454 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174))) input!2705) (Some!1557 (tuple2!6929 (Token!2151 (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (seqFromList!1383 lt!258194)) (rule!1987 (_1!3728 (v!16458 lt!258174))) (size!4761 lt!258194) lt!258194) (_2!3728 (v!16458 lt!258174)))))))

(declare-fun lt!258368 () Unit!11030)

(assert (=> d!213255 (= lt!258368 (choose!4439 thiss!22590 rules!3103 lt!258194 input!2705 (_2!3728 (v!16458 lt!258174)) (rule!1987 (_1!3728 (v!16458 lt!258174)))))))

(assert (=> d!213255 (not (isEmpty!4368 rules!3103))))

(assert (=> d!213255 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!160 thiss!22590 rules!3103 lt!258194 input!2705 (_2!3728 (v!16458 lt!258174)) (rule!1987 (_1!3728 (v!16458 lt!258174)))) lt!258368)))

(declare-fun bs!71253 () Bool)

(assert (= bs!71253 d!213255))

(assert (=> bs!71253 m!870943))

(assert (=> bs!71253 m!870945))

(assert (=> bs!71253 m!870919))

(assert (=> bs!71253 m!870943))

(assert (=> bs!71253 m!870939))

(declare-fun m!871581 () Bool)

(assert (=> bs!71253 m!871581))

(assert (=> bs!71253 m!870877))

(assert (=> b!605103 d!213255))

(declare-fun d!213257 () Bool)

(assert (=> d!213257 (= (apply!1460 (transformation!1207 (rule!1987 token!491)) (seqFromList!1383 lt!258196)) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 lt!258196)))))

(declare-fun b_lambda!23961 () Bool)

(assert (=> (not b_lambda!23961) (not d!213257)))

(declare-fun tb!52835 () Bool)

(declare-fun t!80367 () Bool)

(assert (=> (and b!605121 (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))) t!80367) tb!52835))

(declare-fun result!59464 () Bool)

(assert (=> tb!52835 (= result!59464 (inv!21 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 lt!258196))))))

(declare-fun m!871583 () Bool)

(assert (=> tb!52835 m!871583))

(assert (=> d!213257 t!80367))

(declare-fun b_and!59887 () Bool)

(assert (= b_and!59871 (and (=> t!80367 result!59464) b_and!59887)))

(declare-fun t!80369 () Bool)

(declare-fun tb!52837 () Bool)

(assert (=> (and b!605099 (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))) t!80369) tb!52837))

(declare-fun result!59466 () Bool)

(assert (= result!59466 result!59464))

(assert (=> d!213257 t!80369))

(declare-fun b_and!59889 () Bool)

(assert (= b_and!59873 (and (=> t!80369 result!59466) b_and!59889)))

(assert (=> d!213257 m!870907))

(declare-fun m!871585 () Bool)

(assert (=> d!213257 m!871585))

(assert (=> b!605103 d!213257))

(declare-fun d!213259 () Bool)

(assert (=> d!213259 (= (seqFromList!1383 lt!258196) (fromListB!610 lt!258196))))

(declare-fun bs!71254 () Bool)

(assert (= bs!71254 d!213259))

(declare-fun m!871587 () Bool)

(assert (=> bs!71254 m!871587))

(assert (=> b!605103 d!213259))

(declare-fun d!213261 () Bool)

(declare-fun lt!258369 () List!6061)

(assert (=> d!213261 (= (++!1695 lt!258196 lt!258369) lt!258195)))

(declare-fun e!366931 () List!6061)

(assert (=> d!213261 (= lt!258369 e!366931)))

(declare-fun c!112236 () Bool)

(assert (=> d!213261 (= c!112236 ((_ is Cons!6051) lt!258196))))

(assert (=> d!213261 (>= (size!4761 lt!258195) (size!4761 lt!258196))))

(assert (=> d!213261 (= (getSuffix!352 lt!258195 lt!258196) lt!258369)))

(declare-fun b!605510 () Bool)

(assert (=> b!605510 (= e!366931 (getSuffix!352 (tail!811 lt!258195) (t!80332 lt!258196)))))

(declare-fun b!605511 () Bool)

(assert (=> b!605511 (= e!366931 lt!258195)))

(assert (= (and d!213261 c!112236) b!605510))

(assert (= (and d!213261 (not c!112236)) b!605511))

(declare-fun m!871589 () Bool)

(assert (=> d!213261 m!871589))

(assert (=> d!213261 m!871065))

(assert (=> d!213261 m!870925))

(assert (=> b!605510 m!871409))

(assert (=> b!605510 m!871409))

(declare-fun m!871591 () Bool)

(assert (=> b!605510 m!871591))

(assert (=> b!605103 d!213261))

(declare-fun d!213263 () Bool)

(declare-fun e!366933 () Bool)

(assert (=> d!213263 e!366933))

(declare-fun res!262307 () Bool)

(assert (=> d!213263 (=> res!262307 e!366933)))

(declare-fun lt!258370 () Option!1558)

(assert (=> d!213263 (= res!262307 (isEmpty!4370 lt!258370))))

(declare-fun e!366935 () Option!1558)

(assert (=> d!213263 (= lt!258370 e!366935)))

(declare-fun c!112237 () Bool)

(declare-fun lt!258373 () tuple2!6932)

(assert (=> d!213263 (= c!112237 (isEmpty!4367 (_1!3730 lt!258373)))))

(assert (=> d!213263 (= lt!258373 (findLongestMatch!180 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) input!2705))))

(assert (=> d!213263 (ruleValid!405 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174))))))

(assert (=> d!213263 (= (maxPrefixOneRule!454 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174))) input!2705) lt!258370)))

(declare-fun b!605512 () Bool)

(declare-fun res!262308 () Bool)

(declare-fun e!366932 () Bool)

(assert (=> b!605512 (=> (not res!262308) (not e!366932))))

(assert (=> b!605512 (= res!262308 (= (rule!1987 (_1!3728 (get!2325 lt!258370))) (rule!1987 (_1!3728 (v!16458 lt!258174)))))))

(declare-fun b!605513 () Bool)

(declare-fun e!366934 () Bool)

(assert (=> b!605513 (= e!366934 (matchR!644 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))))))

(declare-fun b!605514 () Bool)

(assert (=> b!605514 (= e!366933 e!366932)))

(declare-fun res!262310 () Bool)

(assert (=> b!605514 (=> (not res!262310) (not e!366932))))

(assert (=> b!605514 (= res!262310 (matchR!644 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370))))))))

(declare-fun b!605515 () Bool)

(declare-fun res!262306 () Bool)

(assert (=> b!605515 (=> (not res!262306) (not e!366932))))

(assert (=> b!605515 (= res!262306 (= (++!1695 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370)))) (_2!3728 (get!2325 lt!258370))) input!2705))))

(declare-fun b!605516 () Bool)

(assert (=> b!605516 (= e!366932 (= (size!4760 (_1!3728 (get!2325 lt!258370))) (size!4761 (originalCharacters!1246 (_1!3728 (get!2325 lt!258370))))))))

(declare-fun b!605517 () Bool)

(assert (=> b!605517 (= e!366935 None!1557)))

(declare-fun b!605518 () Bool)

(declare-fun res!262309 () Bool)

(assert (=> b!605518 (=> (not res!262309) (not e!366932))))

(assert (=> b!605518 (= res!262309 (< (size!4761 (_2!3728 (get!2325 lt!258370))) (size!4761 input!2705)))))

(declare-fun b!605519 () Bool)

(declare-fun res!262312 () Bool)

(assert (=> b!605519 (=> (not res!262312) (not e!366932))))

(assert (=> b!605519 (= res!262312 (= (value!39266 (_1!3728 (get!2325 lt!258370))) (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370)))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258370)))))))))

(declare-fun b!605520 () Bool)

(assert (=> b!605520 (= e!366935 (Some!1557 (tuple2!6929 (Token!2151 (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (seqFromList!1383 (_1!3730 lt!258373))) (rule!1987 (_1!3728 (v!16458 lt!258174))) (size!4763 (seqFromList!1383 (_1!3730 lt!258373))) (_1!3730 lt!258373)) (_2!3730 lt!258373))))))

(declare-fun lt!258371 () Unit!11030)

(assert (=> b!605520 (= lt!258371 (longestMatchIsAcceptedByMatchOrIsEmpty!185 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) input!2705))))

(declare-fun res!262311 () Bool)

(assert (=> b!605520 (= res!262311 (isEmpty!4367 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))))))

(assert (=> b!605520 (=> res!262311 e!366934)))

(assert (=> b!605520 e!366934))

(declare-fun lt!258374 () Unit!11030)

(assert (=> b!605520 (= lt!258374 lt!258371)))

(declare-fun lt!258372 () Unit!11030)

(assert (=> b!605520 (= lt!258372 (lemmaSemiInverse!240 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (seqFromList!1383 (_1!3730 lt!258373))))))

(assert (= (and d!213263 c!112237) b!605517))

(assert (= (and d!213263 (not c!112237)) b!605520))

(assert (= (and b!605520 (not res!262311)) b!605513))

(assert (= (and d!213263 (not res!262307)) b!605514))

(assert (= (and b!605514 res!262310) b!605515))

(assert (= (and b!605515 res!262306) b!605518))

(assert (= (and b!605518 res!262309) b!605512))

(assert (= (and b!605512 res!262308) b!605519))

(assert (= (and b!605519 res!262312) b!605516))

(declare-fun m!871593 () Bool)

(assert (=> b!605515 m!871593))

(declare-fun m!871595 () Bool)

(assert (=> b!605515 m!871595))

(assert (=> b!605515 m!871595))

(declare-fun m!871597 () Bool)

(assert (=> b!605515 m!871597))

(assert (=> b!605515 m!871597))

(declare-fun m!871599 () Bool)

(assert (=> b!605515 m!871599))

(assert (=> b!605519 m!871593))

(declare-fun m!871601 () Bool)

(assert (=> b!605519 m!871601))

(assert (=> b!605519 m!871601))

(declare-fun m!871603 () Bool)

(assert (=> b!605519 m!871603))

(assert (=> b!605516 m!871593))

(declare-fun m!871605 () Bool)

(assert (=> b!605516 m!871605))

(declare-fun m!871607 () Bool)

(assert (=> b!605520 m!871607))

(declare-fun m!871609 () Bool)

(assert (=> b!605520 m!871609))

(assert (=> b!605520 m!871607))

(assert (=> b!605520 m!871555))

(assert (=> b!605520 m!871121))

(declare-fun m!871611 () Bool)

(assert (=> b!605520 m!871611))

(assert (=> b!605520 m!871121))

(assert (=> b!605520 m!871555))

(declare-fun m!871613 () Bool)

(assert (=> b!605520 m!871613))

(assert (=> b!605520 m!871607))

(declare-fun m!871615 () Bool)

(assert (=> b!605520 m!871615))

(assert (=> b!605520 m!871607))

(declare-fun m!871617 () Bool)

(assert (=> b!605520 m!871617))

(declare-fun m!871619 () Bool)

(assert (=> b!605520 m!871619))

(declare-fun m!871621 () Bool)

(assert (=> d!213263 m!871621))

(declare-fun m!871623 () Bool)

(assert (=> d!213263 m!871623))

(declare-fun m!871625 () Bool)

(assert (=> d!213263 m!871625))

(assert (=> d!213263 m!870963))

(assert (=> b!605518 m!871593))

(declare-fun m!871627 () Bool)

(assert (=> b!605518 m!871627))

(assert (=> b!605518 m!871121))

(assert (=> b!605513 m!871555))

(assert (=> b!605513 m!871121))

(assert (=> b!605513 m!871555))

(assert (=> b!605513 m!871121))

(assert (=> b!605513 m!871611))

(declare-fun m!871629 () Bool)

(assert (=> b!605513 m!871629))

(assert (=> b!605514 m!871593))

(assert (=> b!605514 m!871595))

(assert (=> b!605514 m!871595))

(assert (=> b!605514 m!871597))

(assert (=> b!605514 m!871597))

(declare-fun m!871631 () Bool)

(assert (=> b!605514 m!871631))

(assert (=> b!605512 m!871593))

(assert (=> b!605103 d!213263))

(declare-fun d!213265 () Bool)

(assert (=> d!213265 (= (inv!7686 (tag!1469 (rule!1987 token!491))) (= (mod (str.len (value!39240 (tag!1469 (rule!1987 token!491)))) 2) 0))))

(assert (=> b!605097 d!213265))

(declare-fun d!213267 () Bool)

(declare-fun res!262315 () Bool)

(declare-fun e!366938 () Bool)

(assert (=> d!213267 (=> (not res!262315) (not e!366938))))

(assert (=> d!213267 (= res!262315 (semiInverseModEq!483 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))))))

(assert (=> d!213267 (= (inv!7689 (transformation!1207 (rule!1987 token!491))) e!366938)))

(declare-fun b!605523 () Bool)

(assert (=> b!605523 (= e!366938 (equivClasses!466 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))))))

(assert (= (and d!213267 res!262315) b!605523))

(assert (=> d!213267 m!871311))

(assert (=> b!605523 m!871313))

(assert (=> b!605097 d!213267))

(declare-fun d!213269 () Bool)

(assert (=> d!213269 (= (isEmpty!4368 rules!3103) ((_ is Nil!6052) rules!3103))))

(assert (=> b!605116 d!213269))

(declare-fun d!213271 () Bool)

(declare-fun res!262320 () Bool)

(declare-fun e!366941 () Bool)

(assert (=> d!213271 (=> (not res!262320) (not e!366941))))

(assert (=> d!213271 (= res!262320 (not (isEmpty!4367 (originalCharacters!1246 token!491))))))

(assert (=> d!213271 (= (inv!7690 token!491) e!366941)))

(declare-fun b!605528 () Bool)

(declare-fun res!262321 () Bool)

(assert (=> b!605528 (=> (not res!262321) (not e!366941))))

(assert (=> b!605528 (= res!262321 (= (originalCharacters!1246 token!491) (list!2542 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491)))))))

(declare-fun b!605529 () Bool)

(assert (=> b!605529 (= e!366941 (= (size!4760 token!491) (size!4761 (originalCharacters!1246 token!491))))))

(assert (= (and d!213271 res!262320) b!605528))

(assert (= (and b!605528 res!262321) b!605529))

(declare-fun b_lambda!23963 () Bool)

(assert (=> (not b_lambda!23963) (not b!605528)))

(declare-fun t!80371 () Bool)

(declare-fun tb!52839 () Bool)

(assert (=> (and b!605121 (= (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toChars!1969 (transformation!1207 (rule!1987 token!491)))) t!80371) tb!52839))

(declare-fun b!605530 () Bool)

(declare-fun e!366942 () Bool)

(declare-fun tp!188129 () Bool)

(assert (=> b!605530 (= e!366942 (and (inv!7693 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491)))) tp!188129))))

(declare-fun result!59468 () Bool)

(assert (=> tb!52839 (= result!59468 (and (inv!7694 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491))) e!366942))))

(assert (= tb!52839 b!605530))

(declare-fun m!871633 () Bool)

(assert (=> b!605530 m!871633))

(declare-fun m!871635 () Bool)

(assert (=> tb!52839 m!871635))

(assert (=> b!605528 t!80371))

(declare-fun b_and!59891 () Bool)

(assert (= b_and!59867 (and (=> t!80371 result!59468) b_and!59891)))

(declare-fun t!80373 () Bool)

(declare-fun tb!52841 () Bool)

(assert (=> (and b!605099 (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (rule!1987 token!491)))) t!80373) tb!52841))

(declare-fun result!59470 () Bool)

(assert (= result!59470 result!59468))

(assert (=> b!605528 t!80373))

(declare-fun b_and!59893 () Bool)

(assert (= b_and!59869 (and (=> t!80373 result!59470) b_and!59893)))

(declare-fun m!871637 () Bool)

(assert (=> d!213271 m!871637))

(declare-fun m!871639 () Bool)

(assert (=> b!605528 m!871639))

(assert (=> b!605528 m!871639))

(declare-fun m!871641 () Bool)

(assert (=> b!605528 m!871641))

(assert (=> b!605529 m!870979))

(assert (=> start!57660 d!213271))

(declare-fun d!213273 () Bool)

(assert (=> d!213273 (= (isEmpty!4367 input!2705) ((_ is Nil!6051) input!2705))))

(assert (=> b!605110 d!213273))

(declare-fun d!213275 () Bool)

(assert (=> d!213275 (= (get!2325 lt!258179) (v!16458 lt!258179))))

(assert (=> b!605120 d!213275))

(declare-fun d!213277 () Bool)

(assert (=> d!213277 (= (list!2542 (charsOf!836 token!491)) (list!2544 (c!112180 (charsOf!836 token!491))))))

(declare-fun bs!71255 () Bool)

(assert (= bs!71255 d!213277))

(declare-fun m!871643 () Bool)

(assert (=> bs!71255 m!871643))

(assert (=> b!605109 d!213277))

(declare-fun d!213279 () Bool)

(declare-fun lt!258375 () BalanceConc!3856)

(assert (=> d!213279 (= (list!2542 lt!258375) (originalCharacters!1246 token!491))))

(assert (=> d!213279 (= lt!258375 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491)))))

(assert (=> d!213279 (= (charsOf!836 token!491) lt!258375)))

(declare-fun b_lambda!23965 () Bool)

(assert (=> (not b_lambda!23965) (not d!213279)))

(assert (=> d!213279 t!80371))

(declare-fun b_and!59895 () Bool)

(assert (= b_and!59891 (and (=> t!80371 result!59468) b_and!59895)))

(assert (=> d!213279 t!80373))

(declare-fun b_and!59897 () Bool)

(assert (= b_and!59893 (and (=> t!80373 result!59470) b_and!59897)))

(declare-fun m!871645 () Bool)

(assert (=> d!213279 m!871645))

(assert (=> d!213279 m!871639))

(assert (=> b!605109 d!213279))

(declare-fun d!213281 () Bool)

(declare-fun lt!258376 () Int)

(assert (=> d!213281 (>= lt!258376 0)))

(declare-fun e!366943 () Int)

(assert (=> d!213281 (= lt!258376 e!366943)))

(declare-fun c!112238 () Bool)

(assert (=> d!213281 (= c!112238 ((_ is Nil!6051) (originalCharacters!1246 token!491)))))

(assert (=> d!213281 (= (size!4761 (originalCharacters!1246 token!491)) lt!258376)))

(declare-fun b!605531 () Bool)

(assert (=> b!605531 (= e!366943 0)))

(declare-fun b!605532 () Bool)

(assert (=> b!605532 (= e!366943 (+ 1 (size!4761 (t!80332 (originalCharacters!1246 token!491)))))))

(assert (= (and d!213281 c!112238) b!605531))

(assert (= (and d!213281 (not c!112238)) b!605532))

(declare-fun m!871647 () Bool)

(assert (=> b!605532 m!871647))

(assert (=> b!605098 d!213281))

(declare-fun d!213283 () Bool)

(assert (=> d!213283 (= (inv!7686 (tag!1469 (h!11453 rules!3103))) (= (mod (str.len (value!39240 (tag!1469 (h!11453 rules!3103)))) 2) 0))))

(assert (=> b!605108 d!213283))

(declare-fun d!213285 () Bool)

(declare-fun res!262322 () Bool)

(declare-fun e!366944 () Bool)

(assert (=> d!213285 (=> (not res!262322) (not e!366944))))

(assert (=> d!213285 (= res!262322 (semiInverseModEq!483 (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (h!11453 rules!3103)))))))

(assert (=> d!213285 (= (inv!7689 (transformation!1207 (h!11453 rules!3103))) e!366944)))

(declare-fun b!605533 () Bool)

(assert (=> b!605533 (= e!366944 (equivClasses!466 (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (h!11453 rules!3103)))))))

(assert (= (and d!213285 res!262322) b!605533))

(declare-fun m!871649 () Bool)

(assert (=> d!213285 m!871649))

(declare-fun m!871651 () Bool)

(assert (=> b!605533 m!871651))

(assert (=> b!605108 d!213285))

(declare-fun b!605546 () Bool)

(declare-fun e!366947 () Bool)

(declare-fun tp!188143 () Bool)

(assert (=> b!605546 (= e!366947 tp!188143)))

(declare-fun b!605547 () Bool)

(declare-fun tp!188141 () Bool)

(declare-fun tp!188140 () Bool)

(assert (=> b!605547 (= e!366947 (and tp!188141 tp!188140))))

(declare-fun b!605545 () Bool)

(declare-fun tp!188142 () Bool)

(declare-fun tp!188144 () Bool)

(assert (=> b!605545 (= e!366947 (and tp!188142 tp!188144))))

(declare-fun b!605544 () Bool)

(assert (=> b!605544 (= e!366947 tp_is_empty!3437)))

(assert (=> b!605097 (= tp!188077 e!366947)))

(assert (= (and b!605097 ((_ is ElementMatch!1541) (regex!1207 (rule!1987 token!491)))) b!605544))

(assert (= (and b!605097 ((_ is Concat!2772) (regex!1207 (rule!1987 token!491)))) b!605545))

(assert (= (and b!605097 ((_ is Star!1541) (regex!1207 (rule!1987 token!491)))) b!605546))

(assert (= (and b!605097 ((_ is Union!1541) (regex!1207 (rule!1987 token!491)))) b!605547))

(declare-fun b!605552 () Bool)

(declare-fun e!366950 () Bool)

(declare-fun tp!188147 () Bool)

(assert (=> b!605552 (= e!366950 (and tp_is_empty!3437 tp!188147))))

(assert (=> b!605102 (= tp!188078 e!366950)))

(assert (= (and b!605102 ((_ is Cons!6051) (originalCharacters!1246 token!491))) b!605552))

(declare-fun b!605553 () Bool)

(declare-fun e!366951 () Bool)

(declare-fun tp!188148 () Bool)

(assert (=> b!605553 (= e!366951 (and tp_is_empty!3437 tp!188148))))

(assert (=> b!605107 (= tp!188075 e!366951)))

(assert (= (and b!605107 ((_ is Cons!6051) (t!80332 suffix!1342))) b!605553))

(declare-fun b!605554 () Bool)

(declare-fun e!366952 () Bool)

(declare-fun tp!188149 () Bool)

(assert (=> b!605554 (= e!366952 (and tp_is_empty!3437 tp!188149))))

(assert (=> b!605112 (= tp!188082 e!366952)))

(assert (= (and b!605112 ((_ is Cons!6051) (t!80332 input!2705))) b!605554))

(declare-fun b!605565 () Bool)

(declare-fun b_free!17241 () Bool)

(declare-fun b_next!17257 () Bool)

(assert (=> b!605565 (= b_free!17241 (not b_next!17257))))

(declare-fun t!80375 () Bool)

(declare-fun tb!52843 () Bool)

(assert (=> (and b!605565 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80375) tb!52843))

(declare-fun result!59478 () Bool)

(assert (= result!59478 result!59440))

(assert (=> d!213201 t!80375))

(declare-fun tb!52845 () Bool)

(declare-fun t!80377 () Bool)

(assert (=> (and b!605565 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))) t!80377) tb!52845))

(declare-fun result!59480 () Bool)

(assert (= result!59480 result!59464))

(assert (=> d!213257 t!80377))

(declare-fun b_and!59899 () Bool)

(declare-fun tp!188159 () Bool)

(assert (=> b!605565 (= tp!188159 (and (=> t!80375 result!59478) (=> t!80377 result!59480) b_and!59899))))

(declare-fun b_free!17243 () Bool)

(declare-fun b_next!17259 () Bool)

(assert (=> b!605565 (= b_free!17243 (not b_next!17259))))

(declare-fun t!80379 () Bool)

(declare-fun tb!52847 () Bool)

(assert (=> (and b!605565 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80379) tb!52847))

(declare-fun result!59482 () Bool)

(assert (= result!59482 result!59434))

(assert (=> d!213177 t!80379))

(declare-fun t!80381 () Bool)

(declare-fun tb!52849 () Bool)

(assert (=> (and b!605565 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toChars!1969 (transformation!1207 (rule!1987 token!491)))) t!80381) tb!52849))

(declare-fun result!59484 () Bool)

(assert (= result!59484 result!59468))

(assert (=> b!605528 t!80381))

(assert (=> d!213279 t!80381))

(declare-fun tp!188160 () Bool)

(declare-fun b_and!59901 () Bool)

(assert (=> b!605565 (= tp!188160 (and (=> t!80379 result!59482) (=> t!80381 result!59484) b_and!59901))))

(declare-fun e!366962 () Bool)

(assert (=> b!605565 (= e!366962 (and tp!188159 tp!188160))))

(declare-fun b!605564 () Bool)

(declare-fun e!366963 () Bool)

(declare-fun tp!188161 () Bool)

(assert (=> b!605564 (= e!366963 (and tp!188161 (inv!7686 (tag!1469 (h!11453 (t!80333 rules!3103)))) (inv!7689 (transformation!1207 (h!11453 (t!80333 rules!3103)))) e!366962))))

(declare-fun b!605563 () Bool)

(declare-fun e!366961 () Bool)

(declare-fun tp!188158 () Bool)

(assert (=> b!605563 (= e!366961 (and e!366963 tp!188158))))

(assert (=> b!605119 (= tp!188081 e!366961)))

(assert (= b!605564 b!605565))

(assert (= b!605563 b!605564))

(assert (= (and b!605119 ((_ is Cons!6052) (t!80333 rules!3103))) b!605563))

(declare-fun m!871653 () Bool)

(assert (=> b!605564 m!871653))

(declare-fun m!871655 () Bool)

(assert (=> b!605564 m!871655))

(declare-fun b!605568 () Bool)

(declare-fun e!366965 () Bool)

(declare-fun tp!188165 () Bool)

(assert (=> b!605568 (= e!366965 tp!188165)))

(declare-fun b!605569 () Bool)

(declare-fun tp!188163 () Bool)

(declare-fun tp!188162 () Bool)

(assert (=> b!605569 (= e!366965 (and tp!188163 tp!188162))))

(declare-fun b!605567 () Bool)

(declare-fun tp!188164 () Bool)

(declare-fun tp!188166 () Bool)

(assert (=> b!605567 (= e!366965 (and tp!188164 tp!188166))))

(declare-fun b!605566 () Bool)

(assert (=> b!605566 (= e!366965 tp_is_empty!3437)))

(assert (=> b!605108 (= tp!188079 e!366965)))

(assert (= (and b!605108 ((_ is ElementMatch!1541) (regex!1207 (h!11453 rules!3103)))) b!605566))

(assert (= (and b!605108 ((_ is Concat!2772) (regex!1207 (h!11453 rules!3103)))) b!605567))

(assert (= (and b!605108 ((_ is Star!1541) (regex!1207 (h!11453 rules!3103)))) b!605568))

(assert (= (and b!605108 ((_ is Union!1541) (regex!1207 (h!11453 rules!3103)))) b!605569))

(declare-fun b_lambda!23967 () Bool)

(assert (= b_lambda!23963 (or (and b!605121 b_free!17231 (= (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toChars!1969 (transformation!1207 (rule!1987 token!491))))) (and b!605099 b_free!17235) (and b!605565 b_free!17243 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toChars!1969 (transformation!1207 (rule!1987 token!491))))) b_lambda!23967)))

(declare-fun b_lambda!23969 () Bool)

(assert (= b_lambda!23961 (or (and b!605121 b_free!17229 (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 token!491))))) (and b!605099 b_free!17233) (and b!605565 b_free!17241 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (rule!1987 token!491))))) b_lambda!23969)))

(declare-fun b_lambda!23971 () Bool)

(assert (= b_lambda!23965 (or (and b!605121 b_free!17231 (= (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toChars!1969 (transformation!1207 (rule!1987 token!491))))) (and b!605099 b_free!17235) (and b!605565 b_free!17243 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toChars!1969 (transformation!1207 (rule!1987 token!491))))) b_lambda!23971)))

(check-sat (not b!605402) tp_is_empty!3437 (not b!605513) (not b!605202) b_and!59895 (not b!605505) (not b!605348) (not b!605501) (not d!213271) (not tb!52839) (not b_next!17257) (not b!605239) (not b!605205) (not b!605201) (not d!213167) (not b!605244) (not b!605242) (not d!213279) (not b!605545) (not d!213203) (not b!605329) (not d!213285) b_and!59899 (not b!605386) (not b!605199) (not b!605204) (not b!605518) (not d!213185) (not bm!40672) (not d!213157) (not d!213091) (not b!605516) (not b_next!17247) (not d!213067) (not d!213209) (not b!605532) (not d!213073) (not b!605368) (not b_next!17249) (not d!213117) (not b!605530) (not b_lambda!23949) (not b!605547) (not d!213175) (not b!605507) (not b!605546) (not d!213137) (not d!213103) (not b!605198) (not b!605529) (not d!213217) (not d!213259) (not d!213111) (not d!213191) (not b!605502) (not b!605200) (not b!605241) (not b!605523) (not b!605503) (not b!605273) (not d!213173) (not b!605238) (not b!605345) b_and!59897 (not b_next!17259) (not b!605337) (not d!213267) (not b!605327) (not b!605567) (not b!605510) (not b!605326) (not d!213277) (not b_lambda!23967) (not b!605272) (not b!605404) (not d!213255) (not b!605245) (not b!605340) (not b!605235) (not b!605335) (not b!605553) (not b!605314) (not b!605512) (not d!213187) (not b_lambda!23969) (not b!605533) b_and!59901 (not b_lambda!23947) (not b!605370) (not b!605504) (not d!213181) (not b!605236) b_and!59889 (not b!605330) (not d!213253) (not b!605509) (not b!605325) (not d!213071) (not b!605569) (not b_next!17245) (not d!213189) (not b!605514) (not d!213199) (not b_next!17251) (not b!605520) (not b!605564) (not tb!52815) (not b!605398) (not b!605133) (not tb!52835) (not b!605240) (not d!213263) (not b!605336) (not b!605508) (not d!213163) (not b!605400) (not b!605332) (not b!605346) (not d!213171) (not b!605403) (not bm!40673) (not b!605369) (not d!213177) (not d!213223) (not b!605528) (not b_lambda!23971) (not b!605515) b_and!59887 (not b!605136) (not b!605406) (not b!605554) (not b!605519) (not b!605552) (not b!605299) (not b!605246) (not b!605268) (not b!605206) (not d!213261) (not b!605568) (not tb!52819) (not d!213179) (not b!605399) (not b!605134) (not b!605563) (not d!213195) (not d!213165))
(check-sat b_and!59895 (not b_next!17257) b_and!59899 (not b_next!17247) (not b_next!17249) (not b_next!17245) (not b_next!17251) b_and!59887 b_and!59897 (not b_next!17259) b_and!59901 b_and!59889)
(get-model)

(declare-fun b!605660 () Bool)

(declare-fun res!262358 () Bool)

(declare-fun e!367016 () Bool)

(assert (=> b!605660 (=> res!262358 e!367016)))

(assert (=> b!605660 (= res!262358 (not ((_ is IntegerValue!3695) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 lt!258196)))))))

(declare-fun e!367015 () Bool)

(assert (=> b!605660 (= e!367015 e!367016)))

(declare-fun b!605662 () Bool)

(declare-fun e!367017 () Bool)

(assert (=> b!605662 (= e!367017 (inv!16 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 lt!258196))))))

(declare-fun b!605663 () Bool)

(assert (=> b!605663 (= e!367017 e!367015)))

(declare-fun c!112267 () Bool)

(assert (=> b!605663 (= c!112267 ((_ is IntegerValue!3694) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 lt!258196))))))

(declare-fun b!605664 () Bool)

(assert (=> b!605664 (= e!367015 (inv!17 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 lt!258196))))))

(declare-fun d!213319 () Bool)

(declare-fun c!112266 () Bool)

(assert (=> d!213319 (= c!112266 ((_ is IntegerValue!3693) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 lt!258196))))))

(assert (=> d!213319 (= (inv!21 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 lt!258196))) e!367017)))

(declare-fun b!605661 () Bool)

(assert (=> b!605661 (= e!367016 (inv!15 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 lt!258196))))))

(assert (= (and d!213319 c!112266) b!605662))

(assert (= (and d!213319 (not c!112266)) b!605663))

(assert (= (and b!605663 c!112267) b!605664))

(assert (= (and b!605663 (not c!112267)) b!605660))

(assert (= (and b!605660 (not res!262358)) b!605661))

(declare-fun m!871719 () Bool)

(assert (=> b!605662 m!871719))

(declare-fun m!871721 () Bool)

(assert (=> b!605664 m!871721))

(declare-fun m!871723 () Bool)

(assert (=> b!605661 m!871723))

(assert (=> tb!52835 d!213319))

(declare-fun d!213321 () Bool)

(declare-fun charsToBigInt!0 (List!6060 Int) Int)

(assert (=> d!213321 (= (inv!15 (value!39266 token!491)) (= (charsToBigInt!0 (text!9066 (value!39266 token!491)) 0) (value!39262 (value!39266 token!491))))))

(declare-fun bs!71257 () Bool)

(assert (= bs!71257 d!213321))

(declare-fun m!871727 () Bool)

(assert (=> bs!71257 m!871727))

(assert (=> b!605133 d!213321))

(declare-fun d!213323 () Bool)

(assert (=> d!213323 (= (isDefined!1369 lt!258255) (not (isEmpty!4370 lt!258255)))))

(declare-fun bs!71258 () Bool)

(assert (= bs!71258 d!213323))

(assert (=> bs!71258 m!871159))

(assert (=> b!605244 d!213323))

(declare-fun b!605679 () Bool)

(declare-fun e!367027 () List!6061)

(assert (=> b!605679 (= e!367027 lt!258332)))

(declare-fun d!213325 () Bool)

(declare-fun e!367026 () Bool)

(assert (=> d!213325 e!367026))

(declare-fun res!262362 () Bool)

(assert (=> d!213325 (=> (not res!262362) (not e!367026))))

(declare-fun lt!258467 () List!6061)

(assert (=> d!213325 (= res!262362 (= (content!1098 lt!258467) ((_ map or) (content!1098 lt!258194) (content!1098 lt!258332))))))

(assert (=> d!213325 (= lt!258467 e!367027)))

(declare-fun c!112274 () Bool)

(assert (=> d!213325 (= c!112274 ((_ is Nil!6051) lt!258194))))

(assert (=> d!213325 (= (++!1695 lt!258194 lt!258332) lt!258467)))

(declare-fun b!605680 () Bool)

(assert (=> b!605680 (= e!367027 (Cons!6051 (h!11452 lt!258194) (++!1695 (t!80332 lt!258194) lt!258332)))))

(declare-fun b!605682 () Bool)

(assert (=> b!605682 (= e!367026 (or (not (= lt!258332 Nil!6051)) (= lt!258467 lt!258194)))))

(declare-fun b!605681 () Bool)

(declare-fun res!262361 () Bool)

(assert (=> b!605681 (=> (not res!262361) (not e!367026))))

(assert (=> b!605681 (= res!262361 (= (size!4761 lt!258467) (+ (size!4761 lt!258194) (size!4761 lt!258332))))))

(assert (= (and d!213325 c!112274) b!605679))

(assert (= (and d!213325 (not c!112274)) b!605680))

(assert (= (and d!213325 res!262362) b!605681))

(assert (= (and b!605681 res!262361) b!605682))

(declare-fun m!871763 () Bool)

(assert (=> d!213325 m!871763))

(assert (=> d!213325 m!871283))

(declare-fun m!871767 () Bool)

(assert (=> d!213325 m!871767))

(declare-fun m!871771 () Bool)

(assert (=> b!605680 m!871771))

(declare-fun m!871775 () Bool)

(assert (=> b!605681 m!871775))

(assert (=> b!605681 m!870939))

(declare-fun m!871779 () Bool)

(assert (=> b!605681 m!871779))

(assert (=> d!213203 d!213325))

(declare-fun d!213327 () Bool)

(declare-fun lt!258468 () Int)

(assert (=> d!213327 (>= lt!258468 0)))

(declare-fun e!367028 () Int)

(assert (=> d!213327 (= lt!258468 e!367028)))

(declare-fun c!112275 () Bool)

(assert (=> d!213327 (= c!112275 ((_ is Nil!6051) input!2705))))

(assert (=> d!213327 (= (size!4761 input!2705) lt!258468)))

(declare-fun b!605683 () Bool)

(assert (=> b!605683 (= e!367028 0)))

(declare-fun b!605684 () Bool)

(assert (=> b!605684 (= e!367028 (+ 1 (size!4761 (t!80332 input!2705))))))

(assert (= (and d!213327 c!112275) b!605683))

(assert (= (and d!213327 (not c!112275)) b!605684))

(declare-fun m!871781 () Bool)

(assert (=> b!605684 m!871781))

(assert (=> d!213203 d!213327))

(assert (=> d!213203 d!213183))

(declare-fun b!605687 () Bool)

(declare-fun e!367031 () List!6061)

(assert (=> b!605687 (= e!367031 lt!258369)))

(declare-fun d!213331 () Bool)

(declare-fun e!367030 () Bool)

(assert (=> d!213331 e!367030))

(declare-fun res!262364 () Bool)

(assert (=> d!213331 (=> (not res!262364) (not e!367030))))

(declare-fun lt!258470 () List!6061)

(assert (=> d!213331 (= res!262364 (= (content!1098 lt!258470) ((_ map or) (content!1098 lt!258196) (content!1098 lt!258369))))))

(assert (=> d!213331 (= lt!258470 e!367031)))

(declare-fun c!112277 () Bool)

(assert (=> d!213331 (= c!112277 ((_ is Nil!6051) lt!258196))))

(assert (=> d!213331 (= (++!1695 lt!258196 lt!258369) lt!258470)))

(declare-fun b!605688 () Bool)

(assert (=> b!605688 (= e!367031 (Cons!6051 (h!11452 lt!258196) (++!1695 (t!80332 lt!258196) lt!258369)))))

(declare-fun b!605690 () Bool)

(assert (=> b!605690 (= e!367030 (or (not (= lt!258369 Nil!6051)) (= lt!258470 lt!258196)))))

(declare-fun b!605689 () Bool)

(declare-fun res!262363 () Bool)

(assert (=> b!605689 (=> (not res!262363) (not e!367030))))

(assert (=> b!605689 (= res!262363 (= (size!4761 lt!258470) (+ (size!4761 lt!258196) (size!4761 lt!258369))))))

(assert (= (and d!213331 c!112277) b!605687))

(assert (= (and d!213331 (not c!112277)) b!605688))

(assert (= (and d!213331 res!262364) b!605689))

(assert (= (and b!605689 res!262363) b!605690))

(declare-fun m!871785 () Bool)

(assert (=> d!213331 m!871785))

(assert (=> d!213331 m!871193))

(declare-fun m!871787 () Bool)

(assert (=> d!213331 m!871787))

(declare-fun m!871789 () Bool)

(assert (=> b!605688 m!871789))

(declare-fun m!871791 () Bool)

(assert (=> b!605689 m!871791))

(assert (=> b!605689 m!870925))

(declare-fun m!871795 () Bool)

(assert (=> b!605689 m!871795))

(assert (=> d!213261 d!213331))

(declare-fun d!213337 () Bool)

(declare-fun lt!258472 () Int)

(assert (=> d!213337 (>= lt!258472 0)))

(declare-fun e!367033 () Int)

(assert (=> d!213337 (= lt!258472 e!367033)))

(declare-fun c!112279 () Bool)

(assert (=> d!213337 (= c!112279 ((_ is Nil!6051) lt!258195))))

(assert (=> d!213337 (= (size!4761 lt!258195) lt!258472)))

(declare-fun b!605693 () Bool)

(assert (=> b!605693 (= e!367033 0)))

(declare-fun b!605694 () Bool)

(assert (=> b!605694 (= e!367033 (+ 1 (size!4761 (t!80332 lt!258195))))))

(assert (= (and d!213337 c!112279) b!605693))

(assert (= (and d!213337 (not c!112279)) b!605694))

(declare-fun m!871797 () Bool)

(assert (=> b!605694 m!871797))

(assert (=> d!213261 d!213337))

(assert (=> d!213261 d!213215))

(declare-fun d!213339 () Bool)

(declare-fun c!112282 () Bool)

(assert (=> d!213339 (= c!112282 ((_ is Nil!6051) lt!258290))))

(declare-fun e!367036 () (InoxSet C!4004))

(assert (=> d!213339 (= (content!1098 lt!258290) e!367036)))

(declare-fun b!605699 () Bool)

(assert (=> b!605699 (= e!367036 ((as const (Array C!4004 Bool)) false))))

(declare-fun b!605700 () Bool)

(assert (=> b!605700 (= e!367036 ((_ map or) (store ((as const (Array C!4004 Bool)) false) (h!11452 lt!258290) true) (content!1098 (t!80332 lt!258290))))))

(assert (= (and d!213339 c!112282) b!605699))

(assert (= (and d!213339 (not c!112282)) b!605700))

(declare-fun m!871799 () Bool)

(assert (=> b!605700 m!871799))

(declare-fun m!871801 () Bool)

(assert (=> b!605700 m!871801))

(assert (=> d!213163 d!213339))

(declare-fun d!213341 () Bool)

(declare-fun c!112283 () Bool)

(assert (=> d!213341 (= c!112283 ((_ is Nil!6051) lt!258194))))

(declare-fun e!367037 () (InoxSet C!4004))

(assert (=> d!213341 (= (content!1098 lt!258194) e!367037)))

(declare-fun b!605701 () Bool)

(assert (=> b!605701 (= e!367037 ((as const (Array C!4004 Bool)) false))))

(declare-fun b!605702 () Bool)

(assert (=> b!605702 (= e!367037 ((_ map or) (store ((as const (Array C!4004 Bool)) false) (h!11452 lt!258194) true) (content!1098 (t!80332 lt!258194))))))

(assert (= (and d!213341 c!112283) b!605701))

(assert (= (and d!213341 (not c!112283)) b!605702))

(declare-fun m!871803 () Bool)

(assert (=> b!605702 m!871803))

(declare-fun m!871805 () Bool)

(assert (=> b!605702 m!871805))

(assert (=> d!213163 d!213341))

(declare-fun d!213343 () Bool)

(declare-fun c!112284 () Bool)

(assert (=> d!213343 (= c!112284 ((_ is Nil!6051) (_2!3728 (v!16458 lt!258174))))))

(declare-fun e!367038 () (InoxSet C!4004))

(assert (=> d!213343 (= (content!1098 (_2!3728 (v!16458 lt!258174))) e!367038)))

(declare-fun b!605703 () Bool)

(assert (=> b!605703 (= e!367038 ((as const (Array C!4004 Bool)) false))))

(declare-fun b!605704 () Bool)

(assert (=> b!605704 (= e!367038 ((_ map or) (store ((as const (Array C!4004 Bool)) false) (h!11452 (_2!3728 (v!16458 lt!258174))) true) (content!1098 (t!80332 (_2!3728 (v!16458 lt!258174))))))))

(assert (= (and d!213343 c!112284) b!605703))

(assert (= (and d!213343 (not c!112284)) b!605704))

(declare-fun m!871807 () Bool)

(assert (=> b!605704 m!871807))

(declare-fun m!871809 () Bool)

(assert (=> b!605704 m!871809))

(assert (=> d!213163 d!213343))

(declare-fun d!213345 () Bool)

(assert (=> d!213345 (= (isEmpty!4367 (originalCharacters!1246 token!491)) ((_ is Nil!6051) (originalCharacters!1246 token!491)))))

(assert (=> d!213271 d!213345))

(declare-fun d!213347 () Bool)

(assert (=> d!213347 true))

(declare-fun lt!258478 () Bool)

(assert (=> d!213347 (= lt!258478 (rulesValidInductive!452 thiss!22590 rules!3103))))

(declare-fun lambda!16120 () Int)

(declare-fun forall!1561 (List!6062 Int) Bool)

(assert (=> d!213347 (= lt!258478 (forall!1561 rules!3103 lambda!16120))))

(assert (=> d!213347 (= (rulesValid!446 thiss!22590 rules!3103) lt!258478)))

(declare-fun bs!71263 () Bool)

(assert (= bs!71263 d!213347))

(assert (=> bs!71263 m!871093))

(declare-fun m!871855 () Bool)

(assert (=> bs!71263 m!871855))

(assert (=> d!213111 d!213347))

(declare-fun b!605758 () Bool)

(declare-fun e!367073 () List!6061)

(assert (=> b!605758 (= e!367073 (_2!3728 (get!2325 lt!258360)))))

(declare-fun d!213371 () Bool)

(declare-fun e!367072 () Bool)

(assert (=> d!213371 e!367072))

(declare-fun res!262393 () Bool)

(assert (=> d!213371 (=> (not res!262393) (not e!367072))))

(declare-fun lt!258479 () List!6061)

(assert (=> d!213371 (= res!262393 (= (content!1098 lt!258479) ((_ map or) (content!1098 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360))))) (content!1098 (_2!3728 (get!2325 lt!258360))))))))

(assert (=> d!213371 (= lt!258479 e!367073)))

(declare-fun c!112295 () Bool)

(assert (=> d!213371 (= c!112295 ((_ is Nil!6051) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360))))))))

(assert (=> d!213371 (= (++!1695 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360)))) (_2!3728 (get!2325 lt!258360))) lt!258479)))

(declare-fun b!605759 () Bool)

(assert (=> b!605759 (= e!367073 (Cons!6051 (h!11452 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360))))) (++!1695 (t!80332 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360))))) (_2!3728 (get!2325 lt!258360)))))))

(declare-fun b!605761 () Bool)

(assert (=> b!605761 (= e!367072 (or (not (= (_2!3728 (get!2325 lt!258360)) Nil!6051)) (= lt!258479 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360)))))))))

(declare-fun b!605760 () Bool)

(declare-fun res!262392 () Bool)

(assert (=> b!605760 (=> (not res!262392) (not e!367072))))

(assert (=> b!605760 (= res!262392 (= (size!4761 lt!258479) (+ (size!4761 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360))))) (size!4761 (_2!3728 (get!2325 lt!258360))))))))

(assert (= (and d!213371 c!112295) b!605758))

(assert (= (and d!213371 (not c!112295)) b!605759))

(assert (= (and d!213371 res!262393) b!605760))

(assert (= (and b!605760 res!262392) b!605761))

(declare-fun m!871857 () Bool)

(assert (=> d!213371 m!871857))

(assert (=> d!213371 m!871541))

(declare-fun m!871859 () Bool)

(assert (=> d!213371 m!871859))

(declare-fun m!871861 () Bool)

(assert (=> d!213371 m!871861))

(declare-fun m!871863 () Bool)

(assert (=> b!605759 m!871863))

(declare-fun m!871865 () Bool)

(assert (=> b!605760 m!871865))

(assert (=> b!605760 m!871541))

(declare-fun m!871867 () Bool)

(assert (=> b!605760 m!871867))

(assert (=> b!605760 m!871573))

(assert (=> b!605504 d!213371))

(declare-fun d!213379 () Bool)

(assert (=> d!213379 (= (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360)))) (list!2544 (c!112180 (charsOf!836 (_1!3728 (get!2325 lt!258360))))))))

(declare-fun bs!71266 () Bool)

(assert (= bs!71266 d!213379))

(declare-fun m!871871 () Bool)

(assert (=> bs!71266 m!871871))

(assert (=> b!605504 d!213379))

(declare-fun d!213381 () Bool)

(declare-fun lt!258480 () BalanceConc!3856)

(assert (=> d!213381 (= (list!2542 lt!258480) (originalCharacters!1246 (_1!3728 (get!2325 lt!258360))))))

(assert (=> d!213381 (= lt!258480 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360))))) (value!39266 (_1!3728 (get!2325 lt!258360)))))))

(assert (=> d!213381 (= (charsOf!836 (_1!3728 (get!2325 lt!258360))) lt!258480)))

(declare-fun b_lambda!23979 () Bool)

(assert (=> (not b_lambda!23979) (not d!213381)))

(declare-fun tb!52869 () Bool)

(declare-fun t!80403 () Bool)

(assert (=> (and b!605121 (= (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360)))))) t!80403) tb!52869))

(declare-fun b!605762 () Bool)

(declare-fun e!367075 () Bool)

(declare-fun tp!188168 () Bool)

(assert (=> b!605762 (= e!367075 (and (inv!7693 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360))))) (value!39266 (_1!3728 (get!2325 lt!258360)))))) tp!188168))))

(declare-fun result!59504 () Bool)

(assert (=> tb!52869 (= result!59504 (and (inv!7694 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360))))) (value!39266 (_1!3728 (get!2325 lt!258360))))) e!367075))))

(assert (= tb!52869 b!605762))

(declare-fun m!871877 () Bool)

(assert (=> b!605762 m!871877))

(declare-fun m!871879 () Bool)

(assert (=> tb!52869 m!871879))

(assert (=> d!213381 t!80403))

(declare-fun b_and!59921 () Bool)

(assert (= b_and!59895 (and (=> t!80403 result!59504) b_and!59921)))

(declare-fun t!80405 () Bool)

(declare-fun tb!52871 () Bool)

(assert (=> (and b!605099 (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360)))))) t!80405) tb!52871))

(declare-fun result!59506 () Bool)

(assert (= result!59506 result!59504))

(assert (=> d!213381 t!80405))

(declare-fun b_and!59923 () Bool)

(assert (= b_and!59897 (and (=> t!80405 result!59506) b_and!59923)))

(declare-fun tb!52873 () Bool)

(declare-fun t!80407 () Bool)

(assert (=> (and b!605565 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360)))))) t!80407) tb!52873))

(declare-fun result!59508 () Bool)

(assert (= result!59508 result!59504))

(assert (=> d!213381 t!80407))

(declare-fun b_and!59925 () Bool)

(assert (= b_and!59901 (and (=> t!80407 result!59508) b_and!59925)))

(declare-fun m!871881 () Bool)

(assert (=> d!213381 m!871881))

(declare-fun m!871883 () Bool)

(assert (=> d!213381 m!871883))

(assert (=> b!605504 d!213381))

(declare-fun d!213387 () Bool)

(assert (=> d!213387 (= (get!2325 lt!258360) (v!16458 lt!258360))))

(assert (=> b!605504 d!213387))

(assert (=> b!605400 d!213337))

(assert (=> b!605400 d!213327))

(declare-fun d!213389 () Bool)

(assert (=> d!213389 true))

(declare-fun order!4841 () Int)

(declare-fun lambda!16126 () Int)

(declare-fun order!4839 () Int)

(declare-fun dynLambda!3514 (Int Int) Int)

(declare-fun dynLambda!3515 (Int Int) Int)

(assert (=> d!213389 (< (dynLambda!3514 order!4839 (toChars!1969 (transformation!1207 (h!11453 rules!3103)))) (dynLambda!3515 order!4841 lambda!16126))))

(assert (=> d!213389 true))

(declare-fun order!4843 () Int)

(declare-fun dynLambda!3516 (Int Int) Int)

(assert (=> d!213389 (< (dynLambda!3516 order!4843 (toValue!2110 (transformation!1207 (h!11453 rules!3103)))) (dynLambda!3515 order!4841 lambda!16126))))

(declare-fun Forall!306 (Int) Bool)

(assert (=> d!213389 (= (semiInverseModEq!483 (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (h!11453 rules!3103)))) (Forall!306 lambda!16126))))

(declare-fun bs!71269 () Bool)

(assert (= bs!71269 d!213389))

(declare-fun m!871887 () Bool)

(assert (=> bs!71269 m!871887))

(assert (=> d!213285 d!213389))

(declare-fun d!213393 () Bool)

(assert (=> d!213393 (= (inv!7686 (tag!1469 (h!11453 (t!80333 rules!3103)))) (= (mod (str.len (value!39240 (tag!1469 (h!11453 (t!80333 rules!3103))))) 2) 0))))

(assert (=> b!605564 d!213393))

(declare-fun d!213397 () Bool)

(declare-fun res!262400 () Bool)

(declare-fun e!367081 () Bool)

(assert (=> d!213397 (=> (not res!262400) (not e!367081))))

(assert (=> d!213397 (= res!262400 (semiInverseModEq!483 (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103))))))))

(assert (=> d!213397 (= (inv!7689 (transformation!1207 (h!11453 (t!80333 rules!3103)))) e!367081)))

(declare-fun b!605775 () Bool)

(assert (=> b!605775 (= e!367081 (equivClasses!466 (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103))))))))

(assert (= (and d!213397 res!262400) b!605775))

(declare-fun m!871889 () Bool)

(assert (=> d!213397 m!871889))

(declare-fun m!871891 () Bool)

(assert (=> b!605775 m!871891))

(assert (=> b!605564 d!213397))

(declare-fun d!213399 () Bool)

(declare-fun lt!258482 () List!6061)

(assert (=> d!213399 (= (++!1695 (t!80332 lt!258196) lt!258482) (tail!811 lt!258195))))

(declare-fun e!367082 () List!6061)

(assert (=> d!213399 (= lt!258482 e!367082)))

(declare-fun c!112296 () Bool)

(assert (=> d!213399 (= c!112296 ((_ is Cons!6051) (t!80332 lt!258196)))))

(assert (=> d!213399 (>= (size!4761 (tail!811 lt!258195)) (size!4761 (t!80332 lt!258196)))))

(assert (=> d!213399 (= (getSuffix!352 (tail!811 lt!258195) (t!80332 lt!258196)) lt!258482)))

(declare-fun b!605776 () Bool)

(assert (=> b!605776 (= e!367082 (getSuffix!352 (tail!811 (tail!811 lt!258195)) (t!80332 (t!80332 lt!258196))))))

(declare-fun b!605777 () Bool)

(assert (=> b!605777 (= e!367082 (tail!811 lt!258195))))

(assert (= (and d!213399 c!112296) b!605776))

(assert (= (and d!213399 (not c!112296)) b!605777))

(declare-fun m!871895 () Bool)

(assert (=> d!213399 m!871895))

(assert (=> d!213399 m!871409))

(declare-fun m!871897 () Bool)

(assert (=> d!213399 m!871897))

(assert (=> d!213399 m!871459))

(assert (=> b!605776 m!871409))

(declare-fun m!871899 () Bool)

(assert (=> b!605776 m!871899))

(assert (=> b!605776 m!871899))

(declare-fun m!871901 () Bool)

(assert (=> b!605776 m!871901))

(assert (=> b!605510 d!213399))

(declare-fun d!213403 () Bool)

(assert (=> d!213403 (= (tail!811 lt!258195) (t!80332 lt!258195))))

(assert (=> b!605510 d!213403))

(declare-fun b!605788 () Bool)

(declare-fun e!367087 () Bool)

(assert (=> b!605788 (= e!367087 (isPrefix!835 (tail!811 input!2705) (tail!811 (++!1695 input!2705 suffix!1342))))))

(declare-fun b!605786 () Bool)

(declare-fun e!367089 () Bool)

(assert (=> b!605786 (= e!367089 e!367087)))

(declare-fun res!262405 () Bool)

(assert (=> b!605786 (=> (not res!262405) (not e!367087))))

(assert (=> b!605786 (= res!262405 (not ((_ is Nil!6051) (++!1695 input!2705 suffix!1342))))))

(declare-fun d!213407 () Bool)

(declare-fun e!367088 () Bool)

(assert (=> d!213407 e!367088))

(declare-fun res!262407 () Bool)

(assert (=> d!213407 (=> res!262407 e!367088)))

(declare-fun lt!258485 () Bool)

(assert (=> d!213407 (= res!262407 (not lt!258485))))

(assert (=> d!213407 (= lt!258485 e!367089)))

(declare-fun res!262408 () Bool)

(assert (=> d!213407 (=> res!262408 e!367089)))

(assert (=> d!213407 (= res!262408 ((_ is Nil!6051) input!2705))))

(assert (=> d!213407 (= (isPrefix!835 input!2705 (++!1695 input!2705 suffix!1342)) lt!258485)))

(declare-fun b!605789 () Bool)

(assert (=> b!605789 (= e!367088 (>= (size!4761 (++!1695 input!2705 suffix!1342)) (size!4761 input!2705)))))

(declare-fun b!605787 () Bool)

(declare-fun res!262406 () Bool)

(assert (=> b!605787 (=> (not res!262406) (not e!367087))))

(assert (=> b!605787 (= res!262406 (= (head!1282 input!2705) (head!1282 (++!1695 input!2705 suffix!1342))))))

(assert (= (and d!213407 (not res!262408)) b!605786))

(assert (= (and b!605786 res!262405) b!605787))

(assert (= (and b!605787 res!262406) b!605788))

(assert (= (and d!213407 (not res!262407)) b!605789))

(assert (=> b!605788 m!871275))

(assert (=> b!605788 m!870905))

(declare-fun m!871929 () Bool)

(assert (=> b!605788 m!871929))

(assert (=> b!605788 m!871275))

(assert (=> b!605788 m!871929))

(declare-fun m!871933 () Bool)

(assert (=> b!605788 m!871933))

(assert (=> b!605789 m!870905))

(declare-fun m!871935 () Bool)

(assert (=> b!605789 m!871935))

(assert (=> b!605789 m!871121))

(assert (=> b!605787 m!871279))

(assert (=> b!605787 m!870905))

(declare-fun m!871937 () Bool)

(assert (=> b!605787 m!871937))

(assert (=> d!213189 d!213407))

(assert (=> d!213189 d!213091))

(declare-fun d!213413 () Bool)

(assert (=> d!213413 (isPrefix!835 input!2705 (++!1695 input!2705 suffix!1342))))

(assert (=> d!213413 true))

(declare-fun _$46!1002 () Unit!11030)

(assert (=> d!213413 (= (choose!4433 input!2705 suffix!1342) _$46!1002)))

(declare-fun bs!71271 () Bool)

(assert (= bs!71271 d!213413))

(assert (=> bs!71271 m!870905))

(assert (=> bs!71271 m!870905))

(assert (=> bs!71271 m!871345))

(assert (=> d!213189 d!213413))

(declare-fun d!213425 () Bool)

(declare-fun lt!258495 () Int)

(assert (=> d!213425 (>= lt!258495 0)))

(declare-fun e!367100 () Int)

(assert (=> d!213425 (= lt!258495 e!367100)))

(declare-fun c!112303 () Bool)

(assert (=> d!213425 (= c!112303 ((_ is Nil!6051) lt!258290))))

(assert (=> d!213425 (= (size!4761 lt!258290) lt!258495)))

(declare-fun b!605811 () Bool)

(assert (=> b!605811 (= e!367100 0)))

(declare-fun b!605812 () Bool)

(assert (=> b!605812 (= e!367100 (+ 1 (size!4761 (t!80332 lt!258290))))))

(assert (= (and d!213425 c!112303) b!605811))

(assert (= (and d!213425 (not c!112303)) b!605812))

(declare-fun m!871951 () Bool)

(assert (=> b!605812 m!871951))

(assert (=> b!605330 d!213425))

(assert (=> b!605330 d!213183))

(declare-fun d!213427 () Bool)

(declare-fun lt!258496 () Int)

(assert (=> d!213427 (>= lt!258496 0)))

(declare-fun e!367101 () Int)

(assert (=> d!213427 (= lt!258496 e!367101)))

(declare-fun c!112304 () Bool)

(assert (=> d!213427 (= c!112304 ((_ is Nil!6051) (_2!3728 (v!16458 lt!258174))))))

(assert (=> d!213427 (= (size!4761 (_2!3728 (v!16458 lt!258174))) lt!258496)))

(declare-fun b!605813 () Bool)

(assert (=> b!605813 (= e!367101 0)))

(declare-fun b!605814 () Bool)

(assert (=> b!605814 (= e!367101 (+ 1 (size!4761 (t!80332 (_2!3728 (v!16458 lt!258174))))))))

(assert (= (and d!213427 c!112304) b!605813))

(assert (= (and d!213427 (not c!112304)) b!605814))

(declare-fun m!871953 () Bool)

(assert (=> b!605814 m!871953))

(assert (=> b!605330 d!213427))

(assert (=> d!213255 d!213183))

(assert (=> d!213255 d!213263))

(assert (=> d!213255 d!213269))

(assert (=> d!213255 d!213201))

(assert (=> d!213255 d!213179))

(declare-fun d!213429 () Bool)

(assert (=> d!213429 (= (maxPrefixOneRule!454 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174))) input!2705) (Some!1557 (tuple2!6929 (Token!2151 (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (seqFromList!1383 lt!258194)) (rule!1987 (_1!3728 (v!16458 lt!258174))) (size!4761 lt!258194) lt!258194) (_2!3728 (v!16458 lt!258174)))))))

(assert (=> d!213429 true))

(declare-fun _$59!268 () Unit!11030)

(assert (=> d!213429 (= (choose!4439 thiss!22590 rules!3103 lt!258194 input!2705 (_2!3728 (v!16458 lt!258174)) (rule!1987 (_1!3728 (v!16458 lt!258174)))) _$59!268)))

(declare-fun bs!71274 () Bool)

(assert (= bs!71274 d!213429))

(assert (=> bs!71274 m!870919))

(assert (=> bs!71274 m!870943))

(assert (=> bs!71274 m!870943))

(assert (=> bs!71274 m!870945))

(assert (=> bs!71274 m!870939))

(assert (=> d!213255 d!213429))

(declare-fun d!213447 () Bool)

(assert (=> d!213447 (= (_2!3728 (v!16458 lt!258174)) lt!258175)))

(assert (=> d!213447 true))

(declare-fun _$63!757 () Unit!11030)

(assert (=> d!213447 (= (choose!4434 lt!258194 (_2!3728 (v!16458 lt!258174)) lt!258194 lt!258175 input!2705) _$63!757)))

(assert (=> d!213175 d!213447))

(declare-fun b!605857 () Bool)

(declare-fun e!367126 () Bool)

(assert (=> b!605857 (= e!367126 (isPrefix!835 (tail!811 lt!258194) (tail!811 input!2705)))))

(declare-fun b!605855 () Bool)

(declare-fun e!367128 () Bool)

(assert (=> b!605855 (= e!367128 e!367126)))

(declare-fun res!262438 () Bool)

(assert (=> b!605855 (=> (not res!262438) (not e!367126))))

(assert (=> b!605855 (= res!262438 (not ((_ is Nil!6051) input!2705)))))

(declare-fun d!213449 () Bool)

(declare-fun e!367127 () Bool)

(assert (=> d!213449 e!367127))

(declare-fun res!262440 () Bool)

(assert (=> d!213449 (=> res!262440 e!367127)))

(declare-fun lt!258532 () Bool)

(assert (=> d!213449 (= res!262440 (not lt!258532))))

(assert (=> d!213449 (= lt!258532 e!367128)))

(declare-fun res!262441 () Bool)

(assert (=> d!213449 (=> res!262441 e!367128)))

(assert (=> d!213449 (= res!262441 ((_ is Nil!6051) lt!258194))))

(assert (=> d!213449 (= (isPrefix!835 lt!258194 input!2705) lt!258532)))

(declare-fun b!605858 () Bool)

(assert (=> b!605858 (= e!367127 (>= (size!4761 input!2705) (size!4761 lt!258194)))))

(declare-fun b!605856 () Bool)

(declare-fun res!262439 () Bool)

(assert (=> b!605856 (=> (not res!262439) (not e!367126))))

(assert (=> b!605856 (= res!262439 (= (head!1282 lt!258194) (head!1282 input!2705)))))

(assert (= (and d!213449 (not res!262441)) b!605855))

(assert (= (and b!605855 res!262438) b!605856))

(assert (= (and b!605856 res!262439) b!605857))

(assert (= (and d!213449 (not res!262440)) b!605858))

(assert (=> b!605857 m!871429))

(assert (=> b!605857 m!871275))

(assert (=> b!605857 m!871429))

(assert (=> b!605857 m!871275))

(declare-fun m!872053 () Bool)

(assert (=> b!605857 m!872053))

(assert (=> b!605858 m!871121))

(assert (=> b!605858 m!870939))

(assert (=> b!605856 m!871441))

(assert (=> b!605856 m!871279))

(assert (=> d!213175 d!213449))

(declare-fun d!213453 () Bool)

(declare-fun lt!258541 () Int)

(assert (=> d!213453 (= lt!258541 (size!4761 (list!2542 (seqFromList!1383 (_1!3730 lt!258363)))))))

(declare-fun size!4764 (Conc!1924) Int)

(assert (=> d!213453 (= lt!258541 (size!4764 (c!112180 (seqFromList!1383 (_1!3730 lt!258363)))))))

(assert (=> d!213453 (= (size!4763 (seqFromList!1383 (_1!3730 lt!258363))) lt!258541)))

(declare-fun bs!71276 () Bool)

(assert (= bs!71276 d!213453))

(assert (=> bs!71276 m!871551))

(declare-fun m!872071 () Bool)

(assert (=> bs!71276 m!872071))

(assert (=> bs!71276 m!872071))

(declare-fun m!872073 () Bool)

(assert (=> bs!71276 m!872073))

(declare-fun m!872075 () Bool)

(assert (=> bs!71276 m!872075))

(assert (=> b!605509 d!213453))

(declare-fun d!213463 () Bool)

(declare-fun e!367138 () Bool)

(assert (=> d!213463 e!367138))

(declare-fun res!262455 () Bool)

(assert (=> d!213463 (=> res!262455 e!367138)))

(assert (=> d!213463 (= res!262455 (isEmpty!4367 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))))))

(declare-fun lt!258544 () Unit!11030)

(declare-fun choose!4440 (Regex!1541 List!6061) Unit!11030)

(assert (=> d!213463 (= lt!258544 (choose!4440 (regex!1207 (rule!1987 token!491)) lt!258195))))

(assert (=> d!213463 (validRegex!536 (regex!1207 (rule!1987 token!491)))))

(assert (=> d!213463 (= (longestMatchIsAcceptedByMatchOrIsEmpty!185 (regex!1207 (rule!1987 token!491)) lt!258195) lt!258544)))

(declare-fun b!605874 () Bool)

(assert (=> b!605874 (= e!367138 (matchR!644 (regex!1207 (rule!1987 token!491)) (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))))))

(assert (= (and d!213463 (not res!262455)) b!605874))

(assert (=> d!213463 m!871065))

(assert (=> d!213463 m!871555))

(assert (=> d!213463 m!871565))

(declare-fun m!872121 () Bool)

(assert (=> d!213463 m!872121))

(assert (=> d!213463 m!871293))

(assert (=> d!213463 m!871555))

(assert (=> d!213463 m!871065))

(assert (=> d!213463 m!871557))

(assert (=> b!605874 m!871555))

(assert (=> b!605874 m!871065))

(assert (=> b!605874 m!871555))

(assert (=> b!605874 m!871065))

(assert (=> b!605874 m!871557))

(assert (=> b!605874 m!871575))

(assert (=> b!605509 d!213463))

(declare-fun bs!71279 () Bool)

(declare-fun d!213469 () Bool)

(assert (= bs!71279 (and d!213469 d!213389)))

(declare-fun lambda!16130 () Int)

(assert (=> bs!71279 (= (and (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (h!11453 rules!3103)))) (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (h!11453 rules!3103))))) (= lambda!16130 lambda!16126))))

(declare-fun b!605882 () Bool)

(declare-fun e!367145 () Bool)

(assert (=> b!605882 (= e!367145 true)))

(assert (=> d!213469 e!367145))

(assert (= d!213469 b!605882))

(assert (=> b!605882 (< (dynLambda!3516 order!4843 (toValue!2110 (transformation!1207 (rule!1987 token!491)))) (dynLambda!3515 order!4841 lambda!16130))))

(assert (=> b!605882 (< (dynLambda!3514 order!4839 (toChars!1969 (transformation!1207 (rule!1987 token!491)))) (dynLambda!3515 order!4841 lambda!16130))))

(assert (=> d!213469 (= (list!2542 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 (_1!3730 lt!258363))))) (list!2542 (seqFromList!1383 (_1!3730 lt!258363))))))

(declare-fun lt!258550 () Unit!11030)

(declare-fun ForallOf!121 (Int BalanceConc!3856) Unit!11030)

(assert (=> d!213469 (= lt!258550 (ForallOf!121 lambda!16130 (seqFromList!1383 (_1!3730 lt!258363))))))

(assert (=> d!213469 (= (lemmaSemiInverse!240 (transformation!1207 (rule!1987 token!491)) (seqFromList!1383 (_1!3730 lt!258363))) lt!258550)))

(declare-fun b_lambda!23983 () Bool)

(assert (=> (not b_lambda!23983) (not d!213469)))

(declare-fun t!80415 () Bool)

(declare-fun tb!52881 () Bool)

(assert (=> (and b!605121 (= (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toChars!1969 (transformation!1207 (rule!1987 token!491)))) t!80415) tb!52881))

(declare-fun e!367146 () Bool)

(declare-fun b!605883 () Bool)

(declare-fun tp!188169 () Bool)

(assert (=> b!605883 (= e!367146 (and (inv!7693 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 (_1!3730 lt!258363)))))) tp!188169))))

(declare-fun result!59516 () Bool)

(assert (=> tb!52881 (= result!59516 (and (inv!7694 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 (_1!3730 lt!258363))))) e!367146))))

(assert (= tb!52881 b!605883))

(declare-fun m!872129 () Bool)

(assert (=> b!605883 m!872129))

(declare-fun m!872131 () Bool)

(assert (=> tb!52881 m!872131))

(assert (=> d!213469 t!80415))

(declare-fun b_and!59933 () Bool)

(assert (= b_and!59921 (and (=> t!80415 result!59516) b_and!59933)))

(declare-fun t!80417 () Bool)

(declare-fun tb!52883 () Bool)

(assert (=> (and b!605099 (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (rule!1987 token!491)))) t!80417) tb!52883))

(declare-fun result!59518 () Bool)

(assert (= result!59518 result!59516))

(assert (=> d!213469 t!80417))

(declare-fun b_and!59935 () Bool)

(assert (= b_and!59923 (and (=> t!80417 result!59518) b_and!59935)))

(declare-fun tb!52885 () Bool)

(declare-fun t!80419 () Bool)

(assert (=> (and b!605565 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toChars!1969 (transformation!1207 (rule!1987 token!491)))) t!80419) tb!52885))

(declare-fun result!59520 () Bool)

(assert (= result!59520 result!59516))

(assert (=> d!213469 t!80419))

(declare-fun b_and!59937 () Bool)

(assert (= b_and!59925 (and (=> t!80419 result!59520) b_and!59937)))

(declare-fun b_lambda!23985 () Bool)

(assert (=> (not b_lambda!23985) (not d!213469)))

(declare-fun t!80421 () Bool)

(declare-fun tb!52887 () Bool)

(assert (=> (and b!605121 (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))) t!80421) tb!52887))

(declare-fun result!59522 () Bool)

(assert (=> tb!52887 (= result!59522 (inv!21 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 (_1!3730 lt!258363)))))))

(declare-fun m!872133 () Bool)

(assert (=> tb!52887 m!872133))

(assert (=> d!213469 t!80421))

(declare-fun b_and!59939 () Bool)

(assert (= b_and!59887 (and (=> t!80421 result!59522) b_and!59939)))

(declare-fun t!80423 () Bool)

(declare-fun tb!52889 () Bool)

(assert (=> (and b!605099 (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))) t!80423) tb!52889))

(declare-fun result!59524 () Bool)

(assert (= result!59524 result!59522))

(assert (=> d!213469 t!80423))

(declare-fun b_and!59941 () Bool)

(assert (= b_and!59889 (and (=> t!80423 result!59524) b_and!59941)))

(declare-fun tb!52891 () Bool)

(declare-fun t!80425 () Bool)

(assert (=> (and b!605565 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))) t!80425) tb!52891))

(declare-fun result!59526 () Bool)

(assert (= result!59526 result!59522))

(assert (=> d!213469 t!80425))

(declare-fun b_and!59943 () Bool)

(assert (= b_and!59899 (and (=> t!80425 result!59526) b_and!59943)))

(assert (=> d!213469 m!871551))

(assert (=> d!213469 m!872071))

(declare-fun m!872135 () Bool)

(assert (=> d!213469 m!872135))

(declare-fun m!872137 () Bool)

(assert (=> d!213469 m!872137))

(assert (=> d!213469 m!872137))

(declare-fun m!872139 () Bool)

(assert (=> d!213469 m!872139))

(assert (=> d!213469 m!871551))

(declare-fun m!872141 () Bool)

(assert (=> d!213469 m!872141))

(assert (=> d!213469 m!871551))

(assert (=> d!213469 m!872135))

(assert (=> b!605509 d!213469))

(declare-fun bm!40742 () Bool)

(declare-fun call!40752 () Regex!1541)

(declare-fun call!40754 () C!4004)

(declare-fun derivativeStep!328 (Regex!1541 C!4004) Regex!1541)

(assert (=> bm!40742 (= call!40752 (derivativeStep!328 (regex!1207 (rule!1987 token!491)) call!40754))))

(declare-fun bm!40743 () Bool)

(declare-fun call!40753 () List!6061)

(assert (=> bm!40743 (= call!40753 (tail!811 lt!258195))))

(declare-fun d!213475 () Bool)

(declare-fun e!367249 () Bool)

(assert (=> d!213475 e!367249))

(declare-fun res!262510 () Bool)

(assert (=> d!213475 (=> (not res!262510) (not e!367249))))

(declare-fun lt!258658 () tuple2!6932)

(assert (=> d!213475 (= res!262510 (= (++!1695 (_1!3730 lt!258658) (_2!3730 lt!258658)) lt!258195))))

(declare-fun e!367250 () tuple2!6932)

(assert (=> d!213475 (= lt!258658 e!367250)))

(declare-fun c!112372 () Bool)

(declare-fun lostCause!193 (Regex!1541) Bool)

(assert (=> d!213475 (= c!112372 (lostCause!193 (regex!1207 (rule!1987 token!491))))))

(declare-fun lt!258671 () Unit!11030)

(declare-fun Unit!11045 () Unit!11030)

(assert (=> d!213475 (= lt!258671 Unit!11045)))

(assert (=> d!213475 (= (getSuffix!352 lt!258195 Nil!6051) lt!258195)))

(declare-fun lt!258656 () Unit!11030)

(declare-fun lt!258648 () Unit!11030)

(assert (=> d!213475 (= lt!258656 lt!258648)))

(declare-fun lt!258665 () List!6061)

(assert (=> d!213475 (= lt!258195 lt!258665)))

(assert (=> d!213475 (= lt!258648 (lemmaSamePrefixThenSameSuffix!548 Nil!6051 lt!258195 Nil!6051 lt!258665 lt!258195))))

(assert (=> d!213475 (= lt!258665 (getSuffix!352 lt!258195 Nil!6051))))

(declare-fun lt!258663 () Unit!11030)

(declare-fun lt!258652 () Unit!11030)

(assert (=> d!213475 (= lt!258663 lt!258652)))

(assert (=> d!213475 (isPrefix!835 Nil!6051 (++!1695 Nil!6051 lt!258195))))

(assert (=> d!213475 (= lt!258652 (lemmaConcatTwoListThenFirstIsPrefix!680 Nil!6051 lt!258195))))

(assert (=> d!213475 (validRegex!536 (regex!1207 (rule!1987 token!491)))))

(assert (=> d!213475 (= (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)) lt!258658)))

(declare-fun b!606046 () Bool)

(declare-fun e!367248 () Bool)

(assert (=> b!606046 (= e!367248 (>= (size!4761 (_1!3730 lt!258658)) (size!4761 Nil!6051)))))

(declare-fun b!606047 () Bool)

(declare-fun e!367252 () tuple2!6932)

(declare-fun call!40747 () tuple2!6932)

(assert (=> b!606047 (= e!367252 call!40747)))

(declare-fun b!606048 () Bool)

(declare-fun e!367254 () tuple2!6932)

(assert (=> b!606048 (= e!367254 (tuple2!6933 Nil!6051 lt!258195))))

(declare-fun b!606049 () Bool)

(declare-fun e!367251 () tuple2!6932)

(declare-fun lt!258674 () tuple2!6932)

(assert (=> b!606049 (= e!367251 lt!258674)))

(declare-fun bm!40744 () Bool)

(declare-fun call!40749 () Bool)

(assert (=> bm!40744 (= call!40749 (isPrefix!835 lt!258195 lt!258195))))

(declare-fun bm!40745 () Bool)

(declare-fun call!40751 () Bool)

(assert (=> bm!40745 (= call!40751 (nullable!441 (regex!1207 (rule!1987 token!491))))))

(declare-fun b!606050 () Bool)

(assert (=> b!606050 (= e!367254 (tuple2!6933 Nil!6051 Nil!6051))))

(declare-fun b!606051 () Bool)

(assert (=> b!606051 (= e!367250 (tuple2!6933 Nil!6051 lt!258195))))

(declare-fun b!606052 () Bool)

(assert (=> b!606052 (= e!367251 (tuple2!6933 Nil!6051 lt!258195))))

(declare-fun lt!258659 () List!6061)

(declare-fun bm!40746 () Bool)

(assert (=> bm!40746 (= call!40747 (findLongestMatchInner!201 call!40752 lt!258659 (+ (size!4761 Nil!6051) 1) call!40753 lt!258195 (size!4761 lt!258195)))))

(declare-fun bm!40747 () Bool)

(assert (=> bm!40747 (= call!40754 (head!1282 lt!258195))))

(declare-fun b!606053 () Bool)

(declare-fun c!112370 () Bool)

(assert (=> b!606053 (= c!112370 call!40751)))

(declare-fun lt!258668 () Unit!11030)

(declare-fun lt!258657 () Unit!11030)

(assert (=> b!606053 (= lt!258668 lt!258657)))

(assert (=> b!606053 (= lt!258195 Nil!6051)))

(declare-fun call!40750 () Unit!11030)

(assert (=> b!606053 (= lt!258657 call!40750)))

(declare-fun lt!258662 () Unit!11030)

(declare-fun lt!258649 () Unit!11030)

(assert (=> b!606053 (= lt!258662 lt!258649)))

(assert (=> b!606053 call!40749))

(declare-fun call!40748 () Unit!11030)

(assert (=> b!606053 (= lt!258649 call!40748)))

(declare-fun e!367253 () tuple2!6932)

(assert (=> b!606053 (= e!367253 e!367254)))

(declare-fun b!606054 () Bool)

(assert (=> b!606054 (= e!367252 e!367251)))

(assert (=> b!606054 (= lt!258674 call!40747)))

(declare-fun c!112375 () Bool)

(assert (=> b!606054 (= c!112375 (isEmpty!4367 (_1!3730 lt!258674)))))

(declare-fun b!606055 () Bool)

(assert (=> b!606055 (= e!367249 e!367248)))

(declare-fun res!262511 () Bool)

(assert (=> b!606055 (=> res!262511 e!367248)))

(assert (=> b!606055 (= res!262511 (isEmpty!4367 (_1!3730 lt!258658)))))

(declare-fun b!606056 () Bool)

(declare-fun e!367255 () Unit!11030)

(declare-fun Unit!11046 () Unit!11030)

(assert (=> b!606056 (= e!367255 Unit!11046)))

(declare-fun lt!258667 () Unit!11030)

(assert (=> b!606056 (= lt!258667 call!40748)))

(assert (=> b!606056 call!40749))

(declare-fun lt!258669 () Unit!11030)

(assert (=> b!606056 (= lt!258669 lt!258667)))

(declare-fun lt!258664 () Unit!11030)

(assert (=> b!606056 (= lt!258664 call!40750)))

(assert (=> b!606056 (= lt!258195 Nil!6051)))

(declare-fun lt!258655 () Unit!11030)

(assert (=> b!606056 (= lt!258655 lt!258664)))

(assert (=> b!606056 false))

(declare-fun b!606057 () Bool)

(declare-fun c!112374 () Bool)

(assert (=> b!606057 (= c!112374 call!40751)))

(declare-fun lt!258666 () Unit!11030)

(declare-fun lt!258654 () Unit!11030)

(assert (=> b!606057 (= lt!258666 lt!258654)))

(declare-fun lt!258653 () C!4004)

(declare-fun lt!258650 () List!6061)

(assert (=> b!606057 (= (++!1695 (++!1695 Nil!6051 (Cons!6051 lt!258653 Nil!6051)) lt!258650) lt!258195)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!61 (List!6061 C!4004 List!6061 List!6061) Unit!11030)

(assert (=> b!606057 (= lt!258654 (lemmaMoveElementToOtherListKeepsConcatEq!61 Nil!6051 lt!258653 lt!258650 lt!258195))))

(assert (=> b!606057 (= lt!258650 (tail!811 lt!258195))))

(assert (=> b!606057 (= lt!258653 (head!1282 lt!258195))))

(declare-fun lt!258651 () Unit!11030)

(declare-fun lt!258672 () Unit!11030)

(assert (=> b!606057 (= lt!258651 lt!258672)))

(assert (=> b!606057 (isPrefix!835 (++!1695 Nil!6051 (Cons!6051 (head!1282 (getSuffix!352 lt!258195 Nil!6051)) Nil!6051)) lt!258195)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!67 (List!6061 List!6061) Unit!11030)

(assert (=> b!606057 (= lt!258672 (lemmaAddHeadSuffixToPrefixStillPrefix!67 Nil!6051 lt!258195))))

(declare-fun lt!258661 () Unit!11030)

(declare-fun lt!258675 () Unit!11030)

(assert (=> b!606057 (= lt!258661 lt!258675)))

(assert (=> b!606057 (= lt!258675 (lemmaAddHeadSuffixToPrefixStillPrefix!67 Nil!6051 lt!258195))))

(assert (=> b!606057 (= lt!258659 (++!1695 Nil!6051 (Cons!6051 (head!1282 lt!258195) Nil!6051)))))

(declare-fun lt!258673 () Unit!11030)

(assert (=> b!606057 (= lt!258673 e!367255)))

(declare-fun c!112371 () Bool)

(assert (=> b!606057 (= c!112371 (= (size!4761 Nil!6051) (size!4761 lt!258195)))))

(declare-fun lt!258670 () Unit!11030)

(declare-fun lt!258660 () Unit!11030)

(assert (=> b!606057 (= lt!258670 lt!258660)))

(assert (=> b!606057 (<= (size!4761 Nil!6051) (size!4761 lt!258195))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!78 (List!6061 List!6061) Unit!11030)

(assert (=> b!606057 (= lt!258660 (lemmaIsPrefixThenSmallerEqSize!78 Nil!6051 lt!258195))))

(assert (=> b!606057 (= e!367253 e!367252)))

(declare-fun b!606058 () Bool)

(assert (=> b!606058 (= e!367250 e!367253)))

(declare-fun c!112373 () Bool)

(assert (=> b!606058 (= c!112373 (= (size!4761 Nil!6051) (size!4761 lt!258195)))))

(declare-fun bm!40748 () Bool)

(assert (=> bm!40748 (= call!40748 (lemmaIsPrefixRefl!571 lt!258195 lt!258195))))

(declare-fun b!606059 () Bool)

(declare-fun Unit!11047 () Unit!11030)

(assert (=> b!606059 (= e!367255 Unit!11047)))

(declare-fun bm!40749 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!78 (List!6061 List!6061 List!6061) Unit!11030)

(assert (=> bm!40749 (= call!40750 (lemmaIsPrefixSameLengthThenSameList!78 lt!258195 Nil!6051 lt!258195))))

(assert (= (and d!213475 c!112372) b!606051))

(assert (= (and d!213475 (not c!112372)) b!606058))

(assert (= (and b!606058 c!112373) b!606053))

(assert (= (and b!606058 (not c!112373)) b!606057))

(assert (= (and b!606053 c!112370) b!606050))

(assert (= (and b!606053 (not c!112370)) b!606048))

(assert (= (and b!606057 c!112371) b!606056))

(assert (= (and b!606057 (not c!112371)) b!606059))

(assert (= (and b!606057 c!112374) b!606054))

(assert (= (and b!606057 (not c!112374)) b!606047))

(assert (= (and b!606054 c!112375) b!606052))

(assert (= (and b!606054 (not c!112375)) b!606049))

(assert (= (or b!606054 b!606047) bm!40747))

(assert (= (or b!606054 b!606047) bm!40743))

(assert (= (or b!606054 b!606047) bm!40742))

(assert (= (or b!606054 b!606047) bm!40746))

(assert (= (or b!606053 b!606056) bm!40744))

(assert (= (or b!606053 b!606056) bm!40749))

(assert (= (or b!606053 b!606057) bm!40745))

(assert (= (or b!606053 b!606056) bm!40748))

(assert (= (and d!213475 res!262510) b!606055))

(assert (= (and b!606055 (not res!262511)) b!606046))

(assert (=> bm!40748 m!871091))

(declare-fun m!872423 () Bool)

(assert (=> b!606046 m!872423))

(assert (=> b!606046 m!871555))

(assert (=> bm!40744 m!871089))

(assert (=> d!213475 m!871293))

(declare-fun m!872425 () Bool)

(assert (=> d!213475 m!872425))

(declare-fun m!872427 () Bool)

(assert (=> d!213475 m!872427))

(declare-fun m!872429 () Bool)

(assert (=> d!213475 m!872429))

(declare-fun m!872431 () Bool)

(assert (=> d!213475 m!872431))

(declare-fun m!872433 () Bool)

(assert (=> d!213475 m!872433))

(assert (=> d!213475 m!872429))

(declare-fun m!872435 () Bool)

(assert (=> d!213475 m!872435))

(declare-fun m!872437 () Bool)

(assert (=> d!213475 m!872437))

(declare-fun m!872439 () Bool)

(assert (=> b!606055 m!872439))

(declare-fun m!872441 () Bool)

(assert (=> b!606057 m!872441))

(assert (=> b!606057 m!872437))

(declare-fun m!872443 () Bool)

(assert (=> b!606057 m!872443))

(assert (=> b!606057 m!871555))

(assert (=> b!606057 m!872437))

(declare-fun m!872445 () Bool)

(assert (=> b!606057 m!872445))

(declare-fun m!872447 () Bool)

(assert (=> b!606057 m!872447))

(assert (=> b!606057 m!871413))

(declare-fun m!872449 () Bool)

(assert (=> b!606057 m!872449))

(declare-fun m!872451 () Bool)

(assert (=> b!606057 m!872451))

(assert (=> b!606057 m!871409))

(declare-fun m!872453 () Bool)

(assert (=> b!606057 m!872453))

(assert (=> b!606057 m!871065))

(assert (=> b!606057 m!872441))

(declare-fun m!872455 () Bool)

(assert (=> b!606057 m!872455))

(assert (=> b!606057 m!872443))

(declare-fun m!872457 () Bool)

(assert (=> b!606057 m!872457))

(assert (=> bm!40745 m!871295))

(assert (=> bm!40747 m!871413))

(declare-fun m!872459 () Bool)

(assert (=> b!606054 m!872459))

(declare-fun m!872461 () Bool)

(assert (=> bm!40749 m!872461))

(assert (=> bm!40746 m!871065))

(declare-fun m!872463 () Bool)

(assert (=> bm!40746 m!872463))

(declare-fun m!872465 () Bool)

(assert (=> bm!40742 m!872465))

(assert (=> bm!40743 m!871409))

(assert (=> b!605509 d!213475))

(declare-fun d!213611 () Bool)

(assert (=> d!213611 (= (seqFromList!1383 (_1!3730 lt!258363)) (fromListB!610 (_1!3730 lt!258363)))))

(declare-fun bs!71311 () Bool)

(assert (= bs!71311 d!213611))

(declare-fun m!872467 () Bool)

(assert (=> bs!71311 m!872467))

(assert (=> b!605509 d!213611))

(assert (=> b!605509 d!213337))

(declare-fun d!213613 () Bool)

(assert (=> d!213613 (= (apply!1460 (transformation!1207 (rule!1987 token!491)) (seqFromList!1383 (_1!3730 lt!258363))) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 token!491))) (seqFromList!1383 (_1!3730 lt!258363))))))

(declare-fun b_lambda!24007 () Bool)

(assert (=> (not b_lambda!24007) (not d!213613)))

(assert (=> d!213613 t!80421))

(declare-fun b_and!60005 () Bool)

(assert (= b_and!59939 (and (=> t!80421 result!59522) b_and!60005)))

(assert (=> d!213613 t!80423))

(declare-fun b_and!60007 () Bool)

(assert (= b_and!59941 (and (=> t!80423 result!59524) b_and!60007)))

(assert (=> d!213613 t!80425))

(declare-fun b_and!60009 () Bool)

(assert (= b_and!59943 (and (=> t!80425 result!59526) b_and!60009)))

(assert (=> d!213613 m!871551))

(assert (=> d!213613 m!872135))

(assert (=> b!605509 d!213613))

(declare-fun d!213615 () Bool)

(declare-fun lt!258692 () Int)

(assert (=> d!213615 (>= lt!258692 0)))

(declare-fun e!367256 () Int)

(assert (=> d!213615 (= lt!258692 e!367256)))

(declare-fun c!112376 () Bool)

(assert (=> d!213615 (= c!112376 ((_ is Nil!6051) Nil!6051))))

(assert (=> d!213615 (= (size!4761 Nil!6051) lt!258692)))

(declare-fun b!606060 () Bool)

(assert (=> b!606060 (= e!367256 0)))

(declare-fun b!606061 () Bool)

(assert (=> b!606061 (= e!367256 (+ 1 (size!4761 (t!80332 Nil!6051))))))

(assert (= (and d!213615 c!112376) b!606060))

(assert (= (and d!213615 (not c!112376)) b!606061))

(declare-fun m!872469 () Bool)

(assert (=> b!606061 m!872469))

(assert (=> b!605509 d!213615))

(declare-fun d!213617 () Bool)

(assert (=> d!213617 (= (isEmpty!4367 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))) ((_ is Nil!6051) (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))))))

(assert (=> b!605509 d!213617))

(declare-fun d!213619 () Bool)

(declare-fun c!112377 () Bool)

(assert (=> d!213619 (= c!112377 ((_ is Nil!6051) lt!258267))))

(declare-fun e!367257 () (InoxSet C!4004))

(assert (=> d!213619 (= (content!1098 lt!258267) e!367257)))

(declare-fun b!606062 () Bool)

(assert (=> b!606062 (= e!367257 ((as const (Array C!4004 Bool)) false))))

(declare-fun b!606063 () Bool)

(assert (=> b!606063 (= e!367257 ((_ map or) (store ((as const (Array C!4004 Bool)) false) (h!11452 lt!258267) true) (content!1098 (t!80332 lt!258267))))))

(assert (= (and d!213619 c!112377) b!606062))

(assert (= (and d!213619 (not c!112377)) b!606063))

(declare-fun m!872471 () Bool)

(assert (=> b!606063 m!872471))

(declare-fun m!872473 () Bool)

(assert (=> b!606063 m!872473))

(assert (=> d!213117 d!213619))

(declare-fun d!213621 () Bool)

(declare-fun c!112378 () Bool)

(assert (=> d!213621 (= c!112378 ((_ is Nil!6051) lt!258196))))

(declare-fun e!367258 () (InoxSet C!4004))

(assert (=> d!213621 (= (content!1098 lt!258196) e!367258)))

(declare-fun b!606064 () Bool)

(assert (=> b!606064 (= e!367258 ((as const (Array C!4004 Bool)) false))))

(declare-fun b!606065 () Bool)

(assert (=> b!606065 (= e!367258 ((_ map or) (store ((as const (Array C!4004 Bool)) false) (h!11452 lt!258196) true) (content!1098 (t!80332 lt!258196))))))

(assert (= (and d!213621 c!112378) b!606064))

(assert (= (and d!213621 (not c!112378)) b!606065))

(declare-fun m!872475 () Bool)

(assert (=> b!606065 m!872475))

(declare-fun m!872477 () Bool)

(assert (=> b!606065 m!872477))

(assert (=> d!213117 d!213621))

(declare-fun d!213623 () Bool)

(declare-fun c!112379 () Bool)

(assert (=> d!213623 (= c!112379 ((_ is Nil!6051) suffix!1342))))

(declare-fun e!367259 () (InoxSet C!4004))

(assert (=> d!213623 (= (content!1098 suffix!1342) e!367259)))

(declare-fun b!606066 () Bool)

(assert (=> b!606066 (= e!367259 ((as const (Array C!4004 Bool)) false))))

(declare-fun b!606067 () Bool)

(assert (=> b!606067 (= e!367259 ((_ map or) (store ((as const (Array C!4004 Bool)) false) (h!11452 suffix!1342) true) (content!1098 (t!80332 suffix!1342))))))

(assert (= (and d!213623 c!112379) b!606066))

(assert (= (and d!213623 (not c!112379)) b!606067))

(declare-fun m!872487 () Bool)

(assert (=> b!606067 m!872487))

(declare-fun m!872491 () Bool)

(assert (=> b!606067 m!872491))

(assert (=> d!213117 d!213623))

(declare-fun d!213625 () Bool)

(declare-fun c!112385 () Bool)

(assert (=> d!213625 (= c!112385 ((_ is Node!1924) (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174)))))))))

(declare-fun e!367275 () Bool)

(assert (=> d!213625 (= (inv!7693 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174)))))) e!367275)))

(declare-fun b!606093 () Bool)

(declare-fun inv!7695 (Conc!1924) Bool)

(assert (=> b!606093 (= e!367275 (inv!7695 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174)))))))))

(declare-fun b!606094 () Bool)

(declare-fun e!367276 () Bool)

(assert (=> b!606094 (= e!367275 e!367276)))

(declare-fun res!262527 () Bool)

(assert (=> b!606094 (= res!262527 (not ((_ is Leaf!3035) (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174))))))))))

(assert (=> b!606094 (=> res!262527 e!367276)))

(declare-fun b!606095 () Bool)

(declare-fun inv!7696 (Conc!1924) Bool)

(assert (=> b!606095 (= e!367276 (inv!7696 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174)))))))))

(assert (= (and d!213625 c!112385) b!606093))

(assert (= (and d!213625 (not c!112385)) b!606094))

(assert (= (and b!606094 (not res!262527)) b!606095))

(declare-fun m!872517 () Bool)

(assert (=> b!606093 m!872517))

(declare-fun m!872519 () Bool)

(assert (=> b!606095 m!872519))

(assert (=> b!605345 d!213625))

(declare-fun d!213639 () Bool)

(assert (=> d!213639 (= (get!2325 lt!258229) (v!16458 lt!258229))))

(assert (=> b!605202 d!213639))

(declare-fun d!213641 () Bool)

(assert (=> d!213641 (= (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258229))))) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229))))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258229))))))))

(declare-fun b_lambda!24009 () Bool)

(assert (=> (not b_lambda!24009) (not d!213641)))

(declare-fun t!80476 () Bool)

(declare-fun tb!52941 () Bool)

(assert (=> (and b!605121 (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))))) t!80476) tb!52941))

(declare-fun result!59576 () Bool)

(assert (=> tb!52941 (= result!59576 (inv!21 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229))))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258229)))))))))

(declare-fun m!872533 () Bool)

(assert (=> tb!52941 m!872533))

(assert (=> d!213641 t!80476))

(declare-fun b_and!60011 () Bool)

(assert (= b_and!60005 (and (=> t!80476 result!59576) b_and!60011)))

(declare-fun t!80478 () Bool)

(declare-fun tb!52943 () Bool)

(assert (=> (and b!605099 (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))))) t!80478) tb!52943))

(declare-fun result!59578 () Bool)

(assert (= result!59578 result!59576))

(assert (=> d!213641 t!80478))

(declare-fun b_and!60013 () Bool)

(assert (= b_and!60007 (and (=> t!80478 result!59578) b_and!60013)))

(declare-fun t!80480 () Bool)

(declare-fun tb!52945 () Bool)

(assert (=> (and b!605565 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))))) t!80480) tb!52945))

(declare-fun result!59580 () Bool)

(assert (= result!59580 result!59576))

(assert (=> d!213641 t!80480))

(declare-fun b_and!60015 () Bool)

(assert (= b_and!60009 (and (=> t!80480 result!59580) b_and!60015)))

(assert (=> d!213641 m!871067))

(declare-fun m!872539 () Bool)

(assert (=> d!213641 m!872539))

(assert (=> b!605202 d!213641))

(declare-fun d!213647 () Bool)

(assert (=> d!213647 (= (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258229)))) (fromListB!610 (originalCharacters!1246 (_1!3728 (get!2325 lt!258229)))))))

(declare-fun bs!71315 () Bool)

(assert (= bs!71315 d!213647))

(declare-fun m!872543 () Bool)

(assert (=> bs!71315 m!872543))

(assert (=> b!605202 d!213647))

(declare-fun b!606171 () Bool)

(declare-fun res!262575 () Bool)

(declare-fun e!367319 () Bool)

(assert (=> b!606171 (=> (not res!262575) (not e!367319))))

(declare-fun call!40760 () Bool)

(assert (=> b!606171 (= res!262575 (not call!40760))))

(declare-fun b!606172 () Bool)

(declare-fun e!367318 () Bool)

(assert (=> b!606172 (= e!367318 (nullable!441 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun d!213651 () Bool)

(declare-fun e!367322 () Bool)

(assert (=> d!213651 e!367322))

(declare-fun c!112403 () Bool)

(assert (=> d!213651 (= c!112403 ((_ is EmptyExpr!1541) (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun lt!258726 () Bool)

(assert (=> d!213651 (= lt!258726 e!367318)))

(declare-fun c!112402 () Bool)

(assert (=> d!213651 (= c!112402 (isEmpty!4367 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))))))

(assert (=> d!213651 (validRegex!536 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))

(assert (=> d!213651 (= (matchR!644 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))) lt!258726)))

(declare-fun b!606173 () Bool)

(declare-fun e!367320 () Bool)

(declare-fun e!367321 () Bool)

(assert (=> b!606173 (= e!367320 e!367321)))

(declare-fun res!262578 () Bool)

(assert (=> b!606173 (=> res!262578 e!367321)))

(assert (=> b!606173 (= res!262578 call!40760)))

(declare-fun b!606174 () Bool)

(declare-fun e!367317 () Bool)

(assert (=> b!606174 (= e!367317 e!367320)))

(declare-fun res!262572 () Bool)

(assert (=> b!606174 (=> (not res!262572) (not e!367320))))

(assert (=> b!606174 (= res!262572 (not lt!258726))))

(declare-fun b!606175 () Bool)

(declare-fun res!262576 () Bool)

(assert (=> b!606175 (=> res!262576 e!367317)))

(assert (=> b!606175 (= res!262576 e!367319)))

(declare-fun res!262571 () Bool)

(assert (=> b!606175 (=> (not res!262571) (not e!367319))))

(assert (=> b!606175 (= res!262571 lt!258726)))

(declare-fun b!606176 () Bool)

(assert (=> b!606176 (= e!367322 (= lt!258726 call!40760))))

(declare-fun b!606177 () Bool)

(declare-fun res!262574 () Bool)

(assert (=> b!606177 (=> res!262574 e!367317)))

(assert (=> b!606177 (= res!262574 (not ((_ is ElementMatch!1541) (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))))

(declare-fun e!367323 () Bool)

(assert (=> b!606177 (= e!367323 e!367317)))

(declare-fun bm!40755 () Bool)

(assert (=> bm!40755 (= call!40760 (isEmpty!4367 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))))))

(declare-fun b!606178 () Bool)

(assert (=> b!606178 (= e!367319 (= (head!1282 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))) (c!112179 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))))

(declare-fun b!606179 () Bool)

(assert (=> b!606179 (= e!367321 (not (= (head!1282 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))) (c!112179 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))))

(declare-fun b!606180 () Bool)

(assert (=> b!606180 (= e!367318 (matchR!644 (derivativeStep!328 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (head!1282 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705))))) (tail!811 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705))))))))

(declare-fun b!606181 () Bool)

(declare-fun res!262573 () Bool)

(assert (=> b!606181 (=> res!262573 e!367321)))

(assert (=> b!606181 (= res!262573 (not (isEmpty!4367 (tail!811 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))))))))

(declare-fun b!606182 () Bool)

(assert (=> b!606182 (= e!367322 e!367323)))

(declare-fun c!112404 () Bool)

(assert (=> b!606182 (= c!112404 ((_ is EmptyLang!1541) (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun b!606183 () Bool)

(assert (=> b!606183 (= e!367323 (not lt!258726))))

(declare-fun b!606184 () Bool)

(declare-fun res!262577 () Bool)

(assert (=> b!606184 (=> (not res!262577) (not e!367319))))

(assert (=> b!606184 (= res!262577 (isEmpty!4367 (tail!811 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705))))))))

(assert (= (and d!213651 c!112402) b!606172))

(assert (= (and d!213651 (not c!112402)) b!606180))

(assert (= (and d!213651 c!112403) b!606176))

(assert (= (and d!213651 (not c!112403)) b!606182))

(assert (= (and b!606182 c!112404) b!606183))

(assert (= (and b!606182 (not c!112404)) b!606177))

(assert (= (and b!606177 (not res!262574)) b!606175))

(assert (= (and b!606175 res!262571) b!606171))

(assert (= (and b!606171 res!262575) b!606184))

(assert (= (and b!606184 res!262577) b!606178))

(assert (= (and b!606175 (not res!262576)) b!606174))

(assert (= (and b!606174 res!262572) b!606173))

(assert (= (and b!606173 (not res!262578)) b!606181))

(assert (= (and b!606181 (not res!262573)) b!606179))

(assert (= (or b!606176 b!606171 b!606173) bm!40755))

(declare-fun m!872631 () Bool)

(assert (=> b!606180 m!872631))

(assert (=> b!606180 m!872631))

(declare-fun m!872633 () Bool)

(assert (=> b!606180 m!872633))

(declare-fun m!872635 () Bool)

(assert (=> b!606180 m!872635))

(assert (=> b!606180 m!872633))

(assert (=> b!606180 m!872635))

(declare-fun m!872637 () Bool)

(assert (=> b!606180 m!872637))

(assert (=> b!606184 m!872635))

(assert (=> b!606184 m!872635))

(declare-fun m!872639 () Bool)

(assert (=> b!606184 m!872639))

(assert (=> b!606178 m!872631))

(assert (=> b!606179 m!872631))

(assert (=> b!606172 m!871273))

(assert (=> bm!40755 m!871619))

(assert (=> d!213651 m!871619))

(assert (=> d!213651 m!871271))

(assert (=> b!606181 m!872635))

(assert (=> b!606181 m!872635))

(assert (=> b!606181 m!872639))

(assert (=> b!605513 d!213651))

(declare-fun bm!40756 () Bool)

(declare-fun call!40766 () Regex!1541)

(declare-fun call!40768 () C!4004)

(assert (=> bm!40756 (= call!40766 (derivativeStep!328 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) call!40768))))

(declare-fun bm!40757 () Bool)

(declare-fun call!40767 () List!6061)

(assert (=> bm!40757 (= call!40767 (tail!811 input!2705))))

(declare-fun d!213695 () Bool)

(declare-fun e!367332 () Bool)

(assert (=> d!213695 e!367332))

(declare-fun res!262587 () Bool)

(assert (=> d!213695 (=> (not res!262587) (not e!367332))))

(declare-fun lt!258740 () tuple2!6932)

(assert (=> d!213695 (= res!262587 (= (++!1695 (_1!3730 lt!258740) (_2!3730 lt!258740)) input!2705))))

(declare-fun e!367333 () tuple2!6932)

(assert (=> d!213695 (= lt!258740 e!367333)))

(declare-fun c!112408 () Bool)

(assert (=> d!213695 (= c!112408 (lostCause!193 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun lt!258754 () Unit!11030)

(declare-fun Unit!11051 () Unit!11030)

(assert (=> d!213695 (= lt!258754 Unit!11051)))

(assert (=> d!213695 (= (getSuffix!352 input!2705 Nil!6051) input!2705)))

(declare-fun lt!258738 () Unit!11030)

(declare-fun lt!258730 () Unit!11030)

(assert (=> d!213695 (= lt!258738 lt!258730)))

(declare-fun lt!258747 () List!6061)

(assert (=> d!213695 (= input!2705 lt!258747)))

(assert (=> d!213695 (= lt!258730 (lemmaSamePrefixThenSameSuffix!548 Nil!6051 input!2705 Nil!6051 lt!258747 input!2705))))

(assert (=> d!213695 (= lt!258747 (getSuffix!352 input!2705 Nil!6051))))

(declare-fun lt!258745 () Unit!11030)

(declare-fun lt!258734 () Unit!11030)

(assert (=> d!213695 (= lt!258745 lt!258734)))

(assert (=> d!213695 (isPrefix!835 Nil!6051 (++!1695 Nil!6051 input!2705))))

(assert (=> d!213695 (= lt!258734 (lemmaConcatTwoListThenFirstIsPrefix!680 Nil!6051 input!2705))))

(assert (=> d!213695 (validRegex!536 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))

(assert (=> d!213695 (= (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)) lt!258740)))

(declare-fun b!606195 () Bool)

(declare-fun e!367331 () Bool)

(assert (=> b!606195 (= e!367331 (>= (size!4761 (_1!3730 lt!258740)) (size!4761 Nil!6051)))))

(declare-fun b!606196 () Bool)

(declare-fun e!367335 () tuple2!6932)

(declare-fun call!40761 () tuple2!6932)

(assert (=> b!606196 (= e!367335 call!40761)))

(declare-fun b!606197 () Bool)

(declare-fun e!367337 () tuple2!6932)

(assert (=> b!606197 (= e!367337 (tuple2!6933 Nil!6051 input!2705))))

(declare-fun b!606198 () Bool)

(declare-fun e!367334 () tuple2!6932)

(declare-fun lt!258757 () tuple2!6932)

(assert (=> b!606198 (= e!367334 lt!258757)))

(declare-fun bm!40758 () Bool)

(declare-fun call!40763 () Bool)

(assert (=> bm!40758 (= call!40763 (isPrefix!835 input!2705 input!2705))))

(declare-fun bm!40759 () Bool)

(declare-fun call!40765 () Bool)

(assert (=> bm!40759 (= call!40765 (nullable!441 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun b!606199 () Bool)

(assert (=> b!606199 (= e!367337 (tuple2!6933 Nil!6051 Nil!6051))))

(declare-fun b!606200 () Bool)

(assert (=> b!606200 (= e!367333 (tuple2!6933 Nil!6051 input!2705))))

(declare-fun b!606201 () Bool)

(assert (=> b!606201 (= e!367334 (tuple2!6933 Nil!6051 input!2705))))

(declare-fun bm!40760 () Bool)

(declare-fun lt!258741 () List!6061)

(assert (=> bm!40760 (= call!40761 (findLongestMatchInner!201 call!40766 lt!258741 (+ (size!4761 Nil!6051) 1) call!40767 input!2705 (size!4761 input!2705)))))

(declare-fun bm!40761 () Bool)

(assert (=> bm!40761 (= call!40768 (head!1282 input!2705))))

(declare-fun b!606202 () Bool)

(declare-fun c!112406 () Bool)

(assert (=> b!606202 (= c!112406 call!40765)))

(declare-fun lt!258751 () Unit!11030)

(declare-fun lt!258739 () Unit!11030)

(assert (=> b!606202 (= lt!258751 lt!258739)))

(assert (=> b!606202 (= input!2705 Nil!6051)))

(declare-fun call!40764 () Unit!11030)

(assert (=> b!606202 (= lt!258739 call!40764)))

(declare-fun lt!258744 () Unit!11030)

(declare-fun lt!258731 () Unit!11030)

(assert (=> b!606202 (= lt!258744 lt!258731)))

(assert (=> b!606202 call!40763))

(declare-fun call!40762 () Unit!11030)

(assert (=> b!606202 (= lt!258731 call!40762)))

(declare-fun e!367336 () tuple2!6932)

(assert (=> b!606202 (= e!367336 e!367337)))

(declare-fun b!606203 () Bool)

(assert (=> b!606203 (= e!367335 e!367334)))

(assert (=> b!606203 (= lt!258757 call!40761)))

(declare-fun c!112411 () Bool)

(assert (=> b!606203 (= c!112411 (isEmpty!4367 (_1!3730 lt!258757)))))

(declare-fun b!606204 () Bool)

(assert (=> b!606204 (= e!367332 e!367331)))

(declare-fun res!262588 () Bool)

(assert (=> b!606204 (=> res!262588 e!367331)))

(assert (=> b!606204 (= res!262588 (isEmpty!4367 (_1!3730 lt!258740)))))

(declare-fun b!606205 () Bool)

(declare-fun e!367338 () Unit!11030)

(declare-fun Unit!11052 () Unit!11030)

(assert (=> b!606205 (= e!367338 Unit!11052)))

(declare-fun lt!258749 () Unit!11030)

(assert (=> b!606205 (= lt!258749 call!40762)))

(assert (=> b!606205 call!40763))

(declare-fun lt!258752 () Unit!11030)

(assert (=> b!606205 (= lt!258752 lt!258749)))

(declare-fun lt!258746 () Unit!11030)

(assert (=> b!606205 (= lt!258746 call!40764)))

(assert (=> b!606205 (= input!2705 Nil!6051)))

(declare-fun lt!258737 () Unit!11030)

(assert (=> b!606205 (= lt!258737 lt!258746)))

(assert (=> b!606205 false))

(declare-fun b!606206 () Bool)

(declare-fun c!112410 () Bool)

(assert (=> b!606206 (= c!112410 call!40765)))

(declare-fun lt!258748 () Unit!11030)

(declare-fun lt!258736 () Unit!11030)

(assert (=> b!606206 (= lt!258748 lt!258736)))

(declare-fun lt!258735 () C!4004)

(declare-fun lt!258732 () List!6061)

(assert (=> b!606206 (= (++!1695 (++!1695 Nil!6051 (Cons!6051 lt!258735 Nil!6051)) lt!258732) input!2705)))

(assert (=> b!606206 (= lt!258736 (lemmaMoveElementToOtherListKeepsConcatEq!61 Nil!6051 lt!258735 lt!258732 input!2705))))

(assert (=> b!606206 (= lt!258732 (tail!811 input!2705))))

(assert (=> b!606206 (= lt!258735 (head!1282 input!2705))))

(declare-fun lt!258733 () Unit!11030)

(declare-fun lt!258755 () Unit!11030)

(assert (=> b!606206 (= lt!258733 lt!258755)))

(assert (=> b!606206 (isPrefix!835 (++!1695 Nil!6051 (Cons!6051 (head!1282 (getSuffix!352 input!2705 Nil!6051)) Nil!6051)) input!2705)))

(assert (=> b!606206 (= lt!258755 (lemmaAddHeadSuffixToPrefixStillPrefix!67 Nil!6051 input!2705))))

(declare-fun lt!258743 () Unit!11030)

(declare-fun lt!258758 () Unit!11030)

(assert (=> b!606206 (= lt!258743 lt!258758)))

(assert (=> b!606206 (= lt!258758 (lemmaAddHeadSuffixToPrefixStillPrefix!67 Nil!6051 input!2705))))

(assert (=> b!606206 (= lt!258741 (++!1695 Nil!6051 (Cons!6051 (head!1282 input!2705) Nil!6051)))))

(declare-fun lt!258756 () Unit!11030)

(assert (=> b!606206 (= lt!258756 e!367338)))

(declare-fun c!112407 () Bool)

(assert (=> b!606206 (= c!112407 (= (size!4761 Nil!6051) (size!4761 input!2705)))))

(declare-fun lt!258753 () Unit!11030)

(declare-fun lt!258742 () Unit!11030)

(assert (=> b!606206 (= lt!258753 lt!258742)))

(assert (=> b!606206 (<= (size!4761 Nil!6051) (size!4761 input!2705))))

(assert (=> b!606206 (= lt!258742 (lemmaIsPrefixThenSmallerEqSize!78 Nil!6051 input!2705))))

(assert (=> b!606206 (= e!367336 e!367335)))

(declare-fun b!606207 () Bool)

(assert (=> b!606207 (= e!367333 e!367336)))

(declare-fun c!112409 () Bool)

(assert (=> b!606207 (= c!112409 (= (size!4761 Nil!6051) (size!4761 input!2705)))))

(declare-fun bm!40762 () Bool)

(assert (=> bm!40762 (= call!40762 (lemmaIsPrefixRefl!571 input!2705 input!2705))))

(declare-fun b!606208 () Bool)

(declare-fun Unit!11053 () Unit!11030)

(assert (=> b!606208 (= e!367338 Unit!11053)))

(declare-fun bm!40763 () Bool)

(assert (=> bm!40763 (= call!40764 (lemmaIsPrefixSameLengthThenSameList!78 input!2705 Nil!6051 input!2705))))

(assert (= (and d!213695 c!112408) b!606200))

(assert (= (and d!213695 (not c!112408)) b!606207))

(assert (= (and b!606207 c!112409) b!606202))

(assert (= (and b!606207 (not c!112409)) b!606206))

(assert (= (and b!606202 c!112406) b!606199))

(assert (= (and b!606202 (not c!112406)) b!606197))

(assert (= (and b!606206 c!112407) b!606205))

(assert (= (and b!606206 (not c!112407)) b!606208))

(assert (= (and b!606206 c!112410) b!606203))

(assert (= (and b!606206 (not c!112410)) b!606196))

(assert (= (and b!606203 c!112411) b!606201))

(assert (= (and b!606203 (not c!112411)) b!606198))

(assert (= (or b!606203 b!606196) bm!40761))

(assert (= (or b!606203 b!606196) bm!40757))

(assert (= (or b!606203 b!606196) bm!40756))

(assert (= (or b!606203 b!606196) bm!40760))

(assert (= (or b!606202 b!606205) bm!40758))

(assert (= (or b!606202 b!606205) bm!40763))

(assert (= (or b!606202 b!606206) bm!40759))

(assert (= (or b!606202 b!606205) bm!40762))

(assert (= (and d!213695 res!262587) b!606204))

(assert (= (and b!606204 (not res!262588)) b!606195))

(assert (=> bm!40762 m!870973))

(declare-fun m!872649 () Bool)

(assert (=> b!606195 m!872649))

(assert (=> b!606195 m!871555))

(assert (=> bm!40758 m!870947))

(assert (=> d!213695 m!871271))

(declare-fun m!872651 () Bool)

(assert (=> d!213695 m!872651))

(declare-fun m!872653 () Bool)

(assert (=> d!213695 m!872653))

(declare-fun m!872655 () Bool)

(assert (=> d!213695 m!872655))

(declare-fun m!872657 () Bool)

(assert (=> d!213695 m!872657))

(declare-fun m!872659 () Bool)

(assert (=> d!213695 m!872659))

(assert (=> d!213695 m!872655))

(declare-fun m!872661 () Bool)

(assert (=> d!213695 m!872661))

(declare-fun m!872663 () Bool)

(assert (=> d!213695 m!872663))

(declare-fun m!872665 () Bool)

(assert (=> b!606204 m!872665))

(declare-fun m!872667 () Bool)

(assert (=> b!606206 m!872667))

(assert (=> b!606206 m!872663))

(declare-fun m!872669 () Bool)

(assert (=> b!606206 m!872669))

(assert (=> b!606206 m!871555))

(assert (=> b!606206 m!872663))

(declare-fun m!872671 () Bool)

(assert (=> b!606206 m!872671))

(declare-fun m!872673 () Bool)

(assert (=> b!606206 m!872673))

(assert (=> b!606206 m!871279))

(declare-fun m!872675 () Bool)

(assert (=> b!606206 m!872675))

(declare-fun m!872677 () Bool)

(assert (=> b!606206 m!872677))

(assert (=> b!606206 m!871275))

(declare-fun m!872679 () Bool)

(assert (=> b!606206 m!872679))

(assert (=> b!606206 m!871121))

(assert (=> b!606206 m!872667))

(declare-fun m!872681 () Bool)

(assert (=> b!606206 m!872681))

(assert (=> b!606206 m!872669))

(declare-fun m!872683 () Bool)

(assert (=> b!606206 m!872683))

(assert (=> bm!40759 m!871273))

(assert (=> bm!40761 m!871279))

(declare-fun m!872685 () Bool)

(assert (=> b!606203 m!872685))

(declare-fun m!872687 () Bool)

(assert (=> bm!40763 m!872687))

(assert (=> bm!40760 m!871121))

(declare-fun m!872689 () Bool)

(assert (=> bm!40760 m!872689))

(declare-fun m!872691 () Bool)

(assert (=> bm!40756 m!872691))

(assert (=> bm!40757 m!871275))

(assert (=> b!605513 d!213695))

(assert (=> b!605513 d!213615))

(assert (=> b!605513 d!213327))

(declare-fun d!213701 () Bool)

(declare-fun lt!258761 () Int)

(assert (=> d!213701 (>= lt!258761 0)))

(declare-fun e!367343 () Int)

(assert (=> d!213701 (= lt!258761 e!367343)))

(declare-fun c!112412 () Bool)

(assert (=> d!213701 (= c!112412 ((_ is Nil!6051) (t!80332 lt!258194)))))

(assert (=> d!213701 (= (size!4761 (t!80332 lt!258194)) lt!258761)))

(declare-fun b!606213 () Bool)

(assert (=> b!606213 (= e!367343 0)))

(declare-fun b!606214 () Bool)

(assert (=> b!606214 (= e!367343 (+ 1 (size!4761 (t!80332 (t!80332 lt!258194)))))))

(assert (= (and d!213701 c!112412) b!606213))

(assert (= (and d!213701 (not c!112412)) b!606214))

(declare-fun m!872693 () Bool)

(assert (=> b!606214 m!872693))

(assert (=> b!605348 d!213701))

(declare-fun d!213703 () Bool)

(assert (=> d!213703 (= (isEmpty!4370 lt!258255) (not ((_ is Some!1557) lt!258255)))))

(assert (=> d!213103 d!213703))

(assert (=> d!213103 d!213161))

(assert (=> d!213103 d!213199))

(declare-fun bs!71323 () Bool)

(declare-fun d!213705 () Bool)

(assert (= bs!71323 (and d!213705 d!213347)))

(declare-fun lambda!16146 () Int)

(assert (=> bs!71323 (= lambda!16146 lambda!16120)))

(assert (=> d!213705 true))

(declare-fun lt!258765 () Bool)

(assert (=> d!213705 (= lt!258765 (forall!1561 rules!3103 lambda!16146))))

(declare-fun e!367362 () Bool)

(assert (=> d!213705 (= lt!258765 e!367362)))

(declare-fun res!262600 () Bool)

(assert (=> d!213705 (=> res!262600 e!367362)))

(assert (=> d!213705 (= res!262600 (not ((_ is Cons!6052) rules!3103)))))

(assert (=> d!213705 (= (rulesValidInductive!452 thiss!22590 rules!3103) lt!258765)))

(declare-fun b!606246 () Bool)

(declare-fun e!367363 () Bool)

(assert (=> b!606246 (= e!367362 e!367363)))

(declare-fun res!262601 () Bool)

(assert (=> b!606246 (=> (not res!262601) (not e!367363))))

(assert (=> b!606246 (= res!262601 (ruleValid!405 thiss!22590 (h!11453 rules!3103)))))

(declare-fun b!606247 () Bool)

(assert (=> b!606247 (= e!367363 (rulesValidInductive!452 thiss!22590 (t!80333 rules!3103)))))

(assert (= (and d!213705 (not res!262600)) b!606246))

(assert (= (and b!606246 res!262601) b!606247))

(declare-fun m!872703 () Bool)

(assert (=> d!213705 m!872703))

(declare-fun m!872705 () Bool)

(assert (=> b!606246 m!872705))

(declare-fun m!872707 () Bool)

(assert (=> b!606247 m!872707))

(assert (=> d!213103 d!213705))

(declare-fun b!606248 () Bool)

(declare-fun res!262606 () Bool)

(declare-fun e!367364 () Bool)

(assert (=> b!606248 (=> (not res!262606) (not e!367364))))

(declare-fun lt!258767 () Option!1558)

(assert (=> b!606248 (= res!262606 (matchR!644 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258767)))) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258767))))))))

(declare-fun b!606249 () Bool)

(assert (=> b!606249 (= e!367364 (contains!1421 (t!80333 rules!3103) (rule!1987 (_1!3728 (get!2325 lt!258767)))))))

(declare-fun b!606250 () Bool)

(declare-fun res!262602 () Bool)

(assert (=> b!606250 (=> (not res!262602) (not e!367364))))

(assert (=> b!606250 (= res!262602 (< (size!4761 (_2!3728 (get!2325 lt!258767))) (size!4761 lt!258195)))))

(declare-fun b!606252 () Bool)

(declare-fun res!262605 () Bool)

(assert (=> b!606252 (=> (not res!262605) (not e!367364))))

(assert (=> b!606252 (= res!262605 (= (value!39266 (_1!3728 (get!2325 lt!258767))) (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258767)))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258767)))))))))

(declare-fun b!606253 () Bool)

(declare-fun e!367366 () Option!1558)

(declare-fun call!40769 () Option!1558)

(assert (=> b!606253 (= e!367366 call!40769)))

(declare-fun b!606254 () Bool)

(declare-fun e!367365 () Bool)

(assert (=> b!606254 (= e!367365 e!367364)))

(declare-fun res!262608 () Bool)

(assert (=> b!606254 (=> (not res!262608) (not e!367364))))

(assert (=> b!606254 (= res!262608 (isDefined!1369 lt!258767))))

(declare-fun bm!40764 () Bool)

(assert (=> bm!40764 (= call!40769 (maxPrefixOneRule!454 thiss!22590 (h!11453 (t!80333 rules!3103)) lt!258195))))

(declare-fun b!606251 () Bool)

(declare-fun res!262604 () Bool)

(assert (=> b!606251 (=> (not res!262604) (not e!367364))))

(assert (=> b!606251 (= res!262604 (= (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258767)))) (originalCharacters!1246 (_1!3728 (get!2325 lt!258767)))))))

(declare-fun d!213713 () Bool)

(assert (=> d!213713 e!367365))

(declare-fun res!262607 () Bool)

(assert (=> d!213713 (=> res!262607 e!367365)))

(assert (=> d!213713 (= res!262607 (isEmpty!4370 lt!258767))))

(assert (=> d!213713 (= lt!258767 e!367366)))

(declare-fun c!112415 () Bool)

(assert (=> d!213713 (= c!112415 (and ((_ is Cons!6052) (t!80333 rules!3103)) ((_ is Nil!6052) (t!80333 (t!80333 rules!3103)))))))

(declare-fun lt!258768 () Unit!11030)

(declare-fun lt!258766 () Unit!11030)

(assert (=> d!213713 (= lt!258768 lt!258766)))

(assert (=> d!213713 (isPrefix!835 lt!258195 lt!258195)))

(assert (=> d!213713 (= lt!258766 (lemmaIsPrefixRefl!571 lt!258195 lt!258195))))

(assert (=> d!213713 (rulesValidInductive!452 thiss!22590 (t!80333 rules!3103))))

(assert (=> d!213713 (= (maxPrefix!791 thiss!22590 (t!80333 rules!3103) lt!258195) lt!258767)))

(declare-fun b!606255 () Bool)

(declare-fun lt!258770 () Option!1558)

(declare-fun lt!258769 () Option!1558)

(assert (=> b!606255 (= e!367366 (ite (and ((_ is None!1557) lt!258770) ((_ is None!1557) lt!258769)) None!1557 (ite ((_ is None!1557) lt!258769) lt!258770 (ite ((_ is None!1557) lt!258770) lt!258769 (ite (>= (size!4760 (_1!3728 (v!16458 lt!258770))) (size!4760 (_1!3728 (v!16458 lt!258769)))) lt!258770 lt!258769)))))))

(assert (=> b!606255 (= lt!258770 call!40769)))

(assert (=> b!606255 (= lt!258769 (maxPrefix!791 thiss!22590 (t!80333 (t!80333 rules!3103)) lt!258195))))

(declare-fun b!606256 () Bool)

(declare-fun res!262603 () Bool)

(assert (=> b!606256 (=> (not res!262603) (not e!367364))))

(assert (=> b!606256 (= res!262603 (= (++!1695 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258767)))) (_2!3728 (get!2325 lt!258767))) lt!258195))))

(assert (= (and d!213713 c!112415) b!606253))

(assert (= (and d!213713 (not c!112415)) b!606255))

(assert (= (or b!606253 b!606255) bm!40764))

(assert (= (and d!213713 (not res!262607)) b!606254))

(assert (= (and b!606254 res!262608) b!606251))

(assert (= (and b!606251 res!262604) b!606250))

(assert (= (and b!606250 res!262602) b!606256))

(assert (= (and b!606256 res!262603) b!606252))

(assert (= (and b!606252 res!262605) b!606248))

(assert (= (and b!606248 res!262606) b!606249))

(declare-fun m!872713 () Bool)

(assert (=> b!606251 m!872713))

(declare-fun m!872715 () Bool)

(assert (=> b!606251 m!872715))

(assert (=> b!606251 m!872715))

(declare-fun m!872717 () Bool)

(assert (=> b!606251 m!872717))

(declare-fun m!872719 () Bool)

(assert (=> b!606255 m!872719))

(assert (=> b!606256 m!872713))

(assert (=> b!606256 m!872715))

(assert (=> b!606256 m!872715))

(assert (=> b!606256 m!872717))

(assert (=> b!606256 m!872717))

(declare-fun m!872721 () Bool)

(assert (=> b!606256 m!872721))

(assert (=> b!606249 m!872713))

(declare-fun m!872723 () Bool)

(assert (=> b!606249 m!872723))

(assert (=> b!606250 m!872713))

(declare-fun m!872725 () Bool)

(assert (=> b!606250 m!872725))

(assert (=> b!606250 m!871065))

(assert (=> b!606252 m!872713))

(declare-fun m!872727 () Bool)

(assert (=> b!606252 m!872727))

(assert (=> b!606252 m!872727))

(declare-fun m!872729 () Bool)

(assert (=> b!606252 m!872729))

(assert (=> b!606248 m!872713))

(assert (=> b!606248 m!872715))

(assert (=> b!606248 m!872715))

(assert (=> b!606248 m!872717))

(assert (=> b!606248 m!872717))

(declare-fun m!872731 () Bool)

(assert (=> b!606248 m!872731))

(declare-fun m!872733 () Bool)

(assert (=> bm!40764 m!872733))

(declare-fun m!872735 () Bool)

(assert (=> b!606254 m!872735))

(declare-fun m!872737 () Bool)

(assert (=> d!213713 m!872737))

(assert (=> d!213713 m!871089))

(assert (=> d!213713 m!871091))

(assert (=> d!213713 m!872707))

(assert (=> b!605205 d!213713))

(declare-fun d!213715 () Bool)

(declare-fun lt!258771 () List!6061)

(assert (=> d!213715 (= (++!1695 (t!80332 lt!258194) lt!258771) (tail!811 input!2705))))

(declare-fun e!367375 () List!6061)

(assert (=> d!213715 (= lt!258771 e!367375)))

(declare-fun c!112416 () Bool)

(assert (=> d!213715 (= c!112416 ((_ is Cons!6051) (t!80332 lt!258194)))))

(assert (=> d!213715 (>= (size!4761 (tail!811 input!2705)) (size!4761 (t!80332 lt!258194)))))

(assert (=> d!213715 (= (getSuffix!352 (tail!811 input!2705) (t!80332 lt!258194)) lt!258771)))

(declare-fun b!606276 () Bool)

(assert (=> b!606276 (= e!367375 (getSuffix!352 (tail!811 (tail!811 input!2705)) (t!80332 (t!80332 lt!258194))))))

(declare-fun b!606277 () Bool)

(assert (=> b!606277 (= e!367375 (tail!811 input!2705))))

(assert (= (and d!213715 c!112416) b!606276))

(assert (= (and d!213715 (not c!112416)) b!606277))

(declare-fun m!872745 () Bool)

(assert (=> d!213715 m!872745))

(assert (=> d!213715 m!871275))

(declare-fun m!872747 () Bool)

(assert (=> d!213715 m!872747))

(assert (=> d!213715 m!871335))

(assert (=> b!606276 m!871275))

(declare-fun m!872749 () Bool)

(assert (=> b!606276 m!872749))

(assert (=> b!606276 m!872749))

(declare-fun m!872751 () Bool)

(assert (=> b!606276 m!872751))

(assert (=> b!605386 d!213715))

(declare-fun d!213717 () Bool)

(assert (=> d!213717 (= (tail!811 input!2705) (t!80332 input!2705))))

(assert (=> b!605386 d!213717))

(declare-fun bm!40771 () Bool)

(declare-fun c!112421 () Bool)

(declare-fun c!112422 () Bool)

(declare-fun call!40776 () Bool)

(assert (=> bm!40771 (= call!40776 (validRegex!536 (ite c!112422 (reg!1870 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (ite c!112421 (regTwo!3595 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (regOne!3594 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))))))

(declare-fun b!606322 () Bool)

(declare-fun e!367399 () Bool)

(declare-fun e!367401 () Bool)

(assert (=> b!606322 (= e!367399 e!367401)))

(assert (=> b!606322 (= c!112422 ((_ is Star!1541) (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun b!606323 () Bool)

(declare-fun e!367402 () Bool)

(assert (=> b!606323 (= e!367401 e!367402)))

(assert (=> b!606323 (= c!112421 ((_ is Union!1541) (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun b!606324 () Bool)

(declare-fun e!367404 () Bool)

(assert (=> b!606324 (= e!367401 e!367404)))

(declare-fun res!262623 () Bool)

(assert (=> b!606324 (= res!262623 (not (nullable!441 (reg!1870 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))))

(assert (=> b!606324 (=> (not res!262623) (not e!367404))))

(declare-fun b!606325 () Bool)

(declare-fun e!367400 () Bool)

(declare-fun e!367405 () Bool)

(assert (=> b!606325 (= e!367400 e!367405)))

(declare-fun res!262621 () Bool)

(assert (=> b!606325 (=> (not res!262621) (not e!367405))))

(declare-fun call!40778 () Bool)

(assert (=> b!606325 (= res!262621 call!40778)))

(declare-fun bm!40772 () Bool)

(assert (=> bm!40772 (= call!40778 call!40776)))

(declare-fun bm!40773 () Bool)

(declare-fun call!40777 () Bool)

(assert (=> bm!40773 (= call!40777 (validRegex!536 (ite c!112421 (regOne!3595 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (regTwo!3594 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))))

(declare-fun b!606326 () Bool)

(declare-fun res!262619 () Bool)

(assert (=> b!606326 (=> res!262619 e!367400)))

(assert (=> b!606326 (= res!262619 (not ((_ is Concat!2772) (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))))

(assert (=> b!606326 (= e!367402 e!367400)))

(declare-fun b!606327 () Bool)

(assert (=> b!606327 (= e!367404 call!40776)))

(declare-fun b!606328 () Bool)

(declare-fun e!367403 () Bool)

(assert (=> b!606328 (= e!367403 call!40778)))

(declare-fun b!606329 () Bool)

(declare-fun res!262620 () Bool)

(assert (=> b!606329 (=> (not res!262620) (not e!367403))))

(assert (=> b!606329 (= res!262620 call!40777)))

(assert (=> b!606329 (= e!367402 e!367403)))

(declare-fun d!213719 () Bool)

(declare-fun res!262622 () Bool)

(assert (=> d!213719 (=> res!262622 e!367399)))

(assert (=> d!213719 (= res!262622 ((_ is ElementMatch!1541) (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(assert (=> d!213719 (= (validRegex!536 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) e!367399)))

(declare-fun b!606321 () Bool)

(assert (=> b!606321 (= e!367405 call!40777)))

(assert (= (and d!213719 (not res!262622)) b!606322))

(assert (= (and b!606322 c!112422) b!606324))

(assert (= (and b!606322 (not c!112422)) b!606323))

(assert (= (and b!606324 res!262623) b!606327))

(assert (= (and b!606323 c!112421) b!606329))

(assert (= (and b!606323 (not c!112421)) b!606326))

(assert (= (and b!606329 res!262620) b!606328))

(assert (= (and b!606326 (not res!262619)) b!606325))

(assert (= (and b!606325 res!262621) b!606321))

(assert (= (or b!606329 b!606321) bm!40773))

(assert (= (or b!606328 b!606325) bm!40772))

(assert (= (or b!606327 bm!40772) bm!40771))

(declare-fun m!872759 () Bool)

(assert (=> bm!40771 m!872759))

(declare-fun m!872761 () Bool)

(assert (=> b!606324 m!872761))

(declare-fun m!872763 () Bool)

(assert (=> bm!40773 m!872763))

(assert (=> d!213157 d!213719))

(declare-fun d!213721 () Bool)

(declare-fun lt!258772 () Int)

(assert (=> d!213721 (>= lt!258772 0)))

(declare-fun e!367406 () Int)

(assert (=> d!213721 (= lt!258772 e!367406)))

(declare-fun c!112423 () Bool)

(assert (=> d!213721 (= c!112423 ((_ is Nil!6051) (_2!3728 (get!2325 lt!258255))))))

(assert (=> d!213721 (= (size!4761 (_2!3728 (get!2325 lt!258255))) lt!258772)))

(declare-fun b!606330 () Bool)

(assert (=> b!606330 (= e!367406 0)))

(declare-fun b!606331 () Bool)

(assert (=> b!606331 (= e!367406 (+ 1 (size!4761 (t!80332 (_2!3728 (get!2325 lt!258255))))))))

(assert (= (and d!213721 c!112423) b!606330))

(assert (= (and d!213721 (not c!112423)) b!606331))

(declare-fun m!872765 () Bool)

(assert (=> b!606331 m!872765))

(assert (=> b!605240 d!213721))

(declare-fun d!213723 () Bool)

(assert (=> d!213723 (= (get!2325 lt!258255) (v!16458 lt!258255))))

(assert (=> b!605240 d!213723))

(assert (=> b!605240 d!213327))

(assert (=> d!213185 d!213157))

(declare-fun d!213725 () Bool)

(assert (=> d!213725 (ruleValid!405 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174))))))

(assert (=> d!213725 true))

(declare-fun _$65!888 () Unit!11030)

(assert (=> d!213725 (= (choose!4436 thiss!22590 (rule!1987 (_1!3728 (v!16458 lt!258174))) rules!3103) _$65!888)))

(declare-fun bs!71324 () Bool)

(assert (= bs!71324 d!213725))

(assert (=> bs!71324 m!870963))

(assert (=> d!213185 d!213725))

(declare-fun d!213727 () Bool)

(declare-fun lt!258775 () Bool)

(declare-fun content!1100 (List!6062) (InoxSet Rule!2214))

(assert (=> d!213727 (= lt!258775 (select (content!1100 rules!3103) (rule!1987 (_1!3728 (v!16458 lt!258174)))))))

(declare-fun e!367412 () Bool)

(assert (=> d!213727 (= lt!258775 e!367412)))

(declare-fun res!262628 () Bool)

(assert (=> d!213727 (=> (not res!262628) (not e!367412))))

(assert (=> d!213727 (= res!262628 ((_ is Cons!6052) rules!3103))))

(assert (=> d!213727 (= (contains!1421 rules!3103 (rule!1987 (_1!3728 (v!16458 lt!258174)))) lt!258775)))

(declare-fun b!606336 () Bool)

(declare-fun e!367411 () Bool)

(assert (=> b!606336 (= e!367412 e!367411)))

(declare-fun res!262629 () Bool)

(assert (=> b!606336 (=> res!262629 e!367411)))

(assert (=> b!606336 (= res!262629 (= (h!11453 rules!3103) (rule!1987 (_1!3728 (v!16458 lt!258174)))))))

(declare-fun b!606337 () Bool)

(assert (=> b!606337 (= e!367411 (contains!1421 (t!80333 rules!3103) (rule!1987 (_1!3728 (v!16458 lt!258174)))))))

(assert (= (and d!213727 res!262628) b!606336))

(assert (= (and b!606336 (not res!262629)) b!606337))

(declare-fun m!872767 () Bool)

(assert (=> d!213727 m!872767))

(declare-fun m!872769 () Bool)

(assert (=> d!213727 m!872769))

(declare-fun m!872771 () Bool)

(assert (=> b!606337 m!872771))

(assert (=> d!213185 d!213727))

(declare-fun b!606340 () Bool)

(declare-fun e!367413 () Bool)

(assert (=> b!606340 (= e!367413 (isPrefix!835 (tail!811 (tail!811 input!2705)) (tail!811 (tail!811 lt!258169))))))

(declare-fun b!606338 () Bool)

(declare-fun e!367415 () Bool)

(assert (=> b!606338 (= e!367415 e!367413)))

(declare-fun res!262630 () Bool)

(assert (=> b!606338 (=> (not res!262630) (not e!367413))))

(assert (=> b!606338 (= res!262630 (not ((_ is Nil!6051) (tail!811 lt!258169))))))

(declare-fun d!213729 () Bool)

(declare-fun e!367414 () Bool)

(assert (=> d!213729 e!367414))

(declare-fun res!262632 () Bool)

(assert (=> d!213729 (=> res!262632 e!367414)))

(declare-fun lt!258776 () Bool)

(assert (=> d!213729 (= res!262632 (not lt!258776))))

(assert (=> d!213729 (= lt!258776 e!367415)))

(declare-fun res!262633 () Bool)

(assert (=> d!213729 (=> res!262633 e!367415)))

(assert (=> d!213729 (= res!262633 ((_ is Nil!6051) (tail!811 input!2705)))))

(assert (=> d!213729 (= (isPrefix!835 (tail!811 input!2705) (tail!811 lt!258169)) lt!258776)))

(declare-fun b!606341 () Bool)

(assert (=> b!606341 (= e!367414 (>= (size!4761 (tail!811 lt!258169)) (size!4761 (tail!811 input!2705))))))

(declare-fun b!606339 () Bool)

(declare-fun res!262631 () Bool)

(assert (=> b!606339 (=> (not res!262631) (not e!367413))))

(assert (=> b!606339 (= res!262631 (= (head!1282 (tail!811 input!2705)) (head!1282 (tail!811 lt!258169))))))

(assert (= (and d!213729 (not res!262633)) b!606338))

(assert (= (and b!606338 res!262630) b!606339))

(assert (= (and b!606339 res!262631) b!606340))

(assert (= (and d!213729 (not res!262632)) b!606341))

(assert (=> b!606340 m!871275))

(assert (=> b!606340 m!872749))

(assert (=> b!606340 m!871301))

(declare-fun m!872773 () Bool)

(assert (=> b!606340 m!872773))

(assert (=> b!606340 m!872749))

(assert (=> b!606340 m!872773))

(declare-fun m!872775 () Bool)

(assert (=> b!606340 m!872775))

(assert (=> b!606341 m!871301))

(declare-fun m!872777 () Bool)

(assert (=> b!606341 m!872777))

(assert (=> b!606341 m!871275))

(assert (=> b!606341 m!872747))

(assert (=> b!606339 m!871275))

(declare-fun m!872779 () Bool)

(assert (=> b!606339 m!872779))

(assert (=> b!606339 m!871301))

(declare-fun m!872781 () Bool)

(assert (=> b!606339 m!872781))

(assert (=> b!605369 d!213729))

(assert (=> b!605369 d!213717))

(declare-fun d!213731 () Bool)

(assert (=> d!213731 (= (tail!811 lt!258169) (t!80332 lt!258169))))

(assert (=> b!605369 d!213731))

(declare-fun d!213733 () Bool)

(declare-fun lt!258777 () Int)

(assert (=> d!213733 (>= lt!258777 0)))

(declare-fun e!367416 () Int)

(assert (=> d!213733 (= lt!258777 e!367416)))

(declare-fun c!112424 () Bool)

(assert (=> d!213733 (= c!112424 ((_ is Nil!6051) lt!258169))))

(assert (=> d!213733 (= (size!4761 lt!258169) lt!258777)))

(declare-fun b!606342 () Bool)

(assert (=> b!606342 (= e!367416 0)))

(declare-fun b!606343 () Bool)

(assert (=> b!606343 (= e!367416 (+ 1 (size!4761 (t!80332 lt!258169))))))

(assert (= (and d!213733 c!112424) b!606342))

(assert (= (and d!213733 (not c!112424)) b!606343))

(declare-fun m!872783 () Bool)

(assert (=> b!606343 m!872783))

(assert (=> b!605337 d!213733))

(assert (=> b!605337 d!213215))

(assert (=> b!605327 d!213327))

(assert (=> d!213191 d!213123))

(declare-fun d!213735 () Bool)

(declare-fun isBalanced!531 (Conc!1924) Bool)

(assert (=> d!213735 (= (inv!7694 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174))))) (isBalanced!531 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174)))))))))

(declare-fun bs!71325 () Bool)

(assert (= bs!71325 d!213735))

(declare-fun m!872785 () Bool)

(assert (=> bs!71325 m!872785))

(assert (=> tb!52815 d!213735))

(assert (=> b!605529 d!213281))

(declare-fun bs!71326 () Bool)

(declare-fun d!213737 () Bool)

(assert (= bs!71326 (and d!213737 d!213389)))

(declare-fun lambda!16147 () Int)

(assert (=> bs!71326 (= (and (= (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (toChars!1969 (transformation!1207 (h!11453 rules!3103)))) (= (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (toValue!2110 (transformation!1207 (h!11453 rules!3103))))) (= lambda!16147 lambda!16126))))

(declare-fun bs!71327 () Bool)

(assert (= bs!71327 (and d!213737 d!213469)))

(assert (=> bs!71327 (= (and (= (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (toChars!1969 (transformation!1207 (rule!1987 token!491)))) (= (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (toValue!2110 (transformation!1207 (rule!1987 token!491))))) (= lambda!16147 lambda!16130))))

(assert (=> d!213737 true))

(assert (=> d!213737 (< (dynLambda!3514 order!4839 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) (dynLambda!3515 order!4841 lambda!16147))))

(assert (=> d!213737 true))

(assert (=> d!213737 (< (dynLambda!3516 order!4843 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) (dynLambda!3515 order!4841 lambda!16147))))

(assert (=> d!213737 (= (semiInverseModEq!483 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) (Forall!306 lambda!16147))))

(declare-fun bs!71328 () Bool)

(assert (= bs!71328 d!213737))

(declare-fun m!872787 () Bool)

(assert (=> bs!71328 m!872787))

(assert (=> d!213181 d!213737))

(declare-fun d!213739 () Bool)

(declare-fun charsToBigInt!1 (List!6060) Int)

(assert (=> d!213739 (= (inv!17 (value!39266 token!491)) (= (charsToBigInt!1 (text!9065 (value!39266 token!491))) (value!39259 (value!39266 token!491))))))

(declare-fun bs!71329 () Bool)

(assert (= bs!71329 d!213739))

(declare-fun m!872789 () Bool)

(assert (=> bs!71329 m!872789))

(assert (=> b!605136 d!213739))

(declare-fun b!606344 () Bool)

(declare-fun e!367418 () List!6061)

(assert (=> b!606344 (= e!367418 (_2!3728 (get!2325 lt!258255)))))

(declare-fun d!213741 () Bool)

(declare-fun e!367417 () Bool)

(assert (=> d!213741 e!367417))

(declare-fun res!262635 () Bool)

(assert (=> d!213741 (=> (not res!262635) (not e!367417))))

(declare-fun lt!258778 () List!6061)

(assert (=> d!213741 (= res!262635 (= (content!1098 lt!258778) ((_ map or) (content!1098 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255))))) (content!1098 (_2!3728 (get!2325 lt!258255))))))))

(assert (=> d!213741 (= lt!258778 e!367418)))

(declare-fun c!112425 () Bool)

(assert (=> d!213741 (= c!112425 ((_ is Nil!6051) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255))))))))

(assert (=> d!213741 (= (++!1695 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255)))) (_2!3728 (get!2325 lt!258255))) lt!258778)))

(declare-fun b!606345 () Bool)

(assert (=> b!606345 (= e!367418 (Cons!6051 (h!11452 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255))))) (++!1695 (t!80332 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255))))) (_2!3728 (get!2325 lt!258255)))))))

(declare-fun b!606347 () Bool)

(assert (=> b!606347 (= e!367417 (or (not (= (_2!3728 (get!2325 lt!258255)) Nil!6051)) (= lt!258778 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255)))))))))

(declare-fun b!606346 () Bool)

(declare-fun res!262634 () Bool)

(assert (=> b!606346 (=> (not res!262634) (not e!367417))))

(assert (=> b!606346 (= res!262634 (= (size!4761 lt!258778) (+ (size!4761 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255))))) (size!4761 (_2!3728 (get!2325 lt!258255))))))))

(assert (= (and d!213741 c!112425) b!606344))

(assert (= (and d!213741 (not c!112425)) b!606345))

(assert (= (and d!213741 res!262635) b!606346))

(assert (= (and b!606346 res!262634) b!606347))

(declare-fun m!872791 () Bool)

(assert (=> d!213741 m!872791))

(assert (=> d!213741 m!871135))

(declare-fun m!872793 () Bool)

(assert (=> d!213741 m!872793))

(declare-fun m!872795 () Bool)

(assert (=> d!213741 m!872795))

(declare-fun m!872797 () Bool)

(assert (=> b!606345 m!872797))

(declare-fun m!872799 () Bool)

(assert (=> b!606346 m!872799))

(assert (=> b!606346 m!871135))

(declare-fun m!872801 () Bool)

(assert (=> b!606346 m!872801))

(assert (=> b!606346 m!871143))

(assert (=> b!605246 d!213741))

(declare-fun d!213743 () Bool)

(assert (=> d!213743 (= (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255)))) (list!2544 (c!112180 (charsOf!836 (_1!3728 (get!2325 lt!258255))))))))

(declare-fun bs!71330 () Bool)

(assert (= bs!71330 d!213743))

(declare-fun m!872803 () Bool)

(assert (=> bs!71330 m!872803))

(assert (=> b!605246 d!213743))

(declare-fun d!213745 () Bool)

(declare-fun lt!258779 () BalanceConc!3856)

(assert (=> d!213745 (= (list!2542 lt!258779) (originalCharacters!1246 (_1!3728 (get!2325 lt!258255))))))

(assert (=> d!213745 (= lt!258779 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255))))) (value!39266 (_1!3728 (get!2325 lt!258255)))))))

(assert (=> d!213745 (= (charsOf!836 (_1!3728 (get!2325 lt!258255))) lt!258779)))

(declare-fun b_lambda!24021 () Bool)

(assert (=> (not b_lambda!24021) (not d!213745)))

(declare-fun tb!52979 () Bool)

(declare-fun t!80514 () Bool)

(assert (=> (and b!605121 (= (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))))) t!80514) tb!52979))

(declare-fun b!606348 () Bool)

(declare-fun e!367419 () Bool)

(declare-fun tp!188249 () Bool)

(assert (=> b!606348 (= e!367419 (and (inv!7693 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255))))) (value!39266 (_1!3728 (get!2325 lt!258255)))))) tp!188249))))

(declare-fun result!59616 () Bool)

(assert (=> tb!52979 (= result!59616 (and (inv!7694 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255))))) (value!39266 (_1!3728 (get!2325 lt!258255))))) e!367419))))

(assert (= tb!52979 b!606348))

(declare-fun m!872805 () Bool)

(assert (=> b!606348 m!872805))

(declare-fun m!872807 () Bool)

(assert (=> tb!52979 m!872807))

(assert (=> d!213745 t!80514))

(declare-fun b_and!60021 () Bool)

(assert (= b_and!59933 (and (=> t!80514 result!59616) b_and!60021)))

(declare-fun tb!52981 () Bool)

(declare-fun t!80516 () Bool)

(assert (=> (and b!605099 (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))))) t!80516) tb!52981))

(declare-fun result!59618 () Bool)

(assert (= result!59618 result!59616))

(assert (=> d!213745 t!80516))

(declare-fun b_and!60023 () Bool)

(assert (= b_and!59935 (and (=> t!80516 result!59618) b_and!60023)))

(declare-fun t!80518 () Bool)

(declare-fun tb!52983 () Bool)

(assert (=> (and b!605565 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))))) t!80518) tb!52983))

(declare-fun result!59620 () Bool)

(assert (= result!59620 result!59616))

(assert (=> d!213745 t!80518))

(declare-fun b_and!60025 () Bool)

(assert (= b_and!59937 (and (=> t!80518 result!59620) b_and!60025)))

(declare-fun m!872809 () Bool)

(assert (=> d!213745 m!872809))

(declare-fun m!872811 () Bool)

(assert (=> d!213745 m!872811))

(assert (=> b!605246 d!213745))

(assert (=> b!605246 d!213723))

(declare-fun b!606351 () Bool)

(declare-fun e!367420 () Bool)

(assert (=> b!606351 (= e!367420 (isPrefix!835 (tail!811 (tail!811 input!2705)) (tail!811 (tail!811 lt!258195))))))

(declare-fun b!606349 () Bool)

(declare-fun e!367422 () Bool)

(assert (=> b!606349 (= e!367422 e!367420)))

(declare-fun res!262636 () Bool)

(assert (=> b!606349 (=> (not res!262636) (not e!367420))))

(assert (=> b!606349 (= res!262636 (not ((_ is Nil!6051) (tail!811 lt!258195))))))

(declare-fun d!213747 () Bool)

(declare-fun e!367421 () Bool)

(assert (=> d!213747 e!367421))

(declare-fun res!262638 () Bool)

(assert (=> d!213747 (=> res!262638 e!367421)))

(declare-fun lt!258780 () Bool)

(assert (=> d!213747 (= res!262638 (not lt!258780))))

(assert (=> d!213747 (= lt!258780 e!367422)))

(declare-fun res!262639 () Bool)

(assert (=> d!213747 (=> res!262639 e!367422)))

(assert (=> d!213747 (= res!262639 ((_ is Nil!6051) (tail!811 input!2705)))))

(assert (=> d!213747 (= (isPrefix!835 (tail!811 input!2705) (tail!811 lt!258195)) lt!258780)))

(declare-fun b!606352 () Bool)

(assert (=> b!606352 (= e!367421 (>= (size!4761 (tail!811 lt!258195)) (size!4761 (tail!811 input!2705))))))

(declare-fun b!606350 () Bool)

(declare-fun res!262637 () Bool)

(assert (=> b!606350 (=> (not res!262637) (not e!367420))))

(assert (=> b!606350 (= res!262637 (= (head!1282 (tail!811 input!2705)) (head!1282 (tail!811 lt!258195))))))

(assert (= (and d!213747 (not res!262639)) b!606349))

(assert (= (and b!606349 res!262636) b!606350))

(assert (= (and b!606350 res!262637) b!606351))

(assert (= (and d!213747 (not res!262638)) b!606352))

(assert (=> b!606351 m!871275))

(assert (=> b!606351 m!872749))

(assert (=> b!606351 m!871409))

(assert (=> b!606351 m!871899))

(assert (=> b!606351 m!872749))

(assert (=> b!606351 m!871899))

(declare-fun m!872813 () Bool)

(assert (=> b!606351 m!872813))

(assert (=> b!606352 m!871409))

(assert (=> b!606352 m!871897))

(assert (=> b!606352 m!871275))

(assert (=> b!606352 m!872747))

(assert (=> b!606350 m!871275))

(assert (=> b!606350 m!872779))

(assert (=> b!606350 m!871409))

(declare-fun m!872815 () Bool)

(assert (=> b!606350 m!872815))

(assert (=> b!605399 d!213747))

(assert (=> b!605399 d!213717))

(assert (=> b!605399 d!213403))

(assert (=> d!213173 d!213213))

(assert (=> d!213173 d!213163))

(declare-fun d!213749 () Bool)

(assert (=> d!213749 (isPrefix!835 lt!258194 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174))))))

(assert (=> d!213749 true))

(declare-fun _$46!1004 () Unit!11030)

(assert (=> d!213749 (= (choose!4433 lt!258194 (_2!3728 (v!16458 lt!258174))) _$46!1004)))

(declare-fun bs!71331 () Bool)

(assert (= bs!71331 d!213749))

(assert (=> bs!71331 m!870929))

(assert (=> bs!71331 m!870929))

(assert (=> bs!71331 m!870961))

(assert (=> d!213173 d!213749))

(declare-fun b!606353 () Bool)

(declare-fun res!262644 () Bool)

(declare-fun e!367425 () Bool)

(assert (=> b!606353 (=> (not res!262644) (not e!367425))))

(declare-fun call!40779 () Bool)

(assert (=> b!606353 (= res!262644 (not call!40779))))

(declare-fun b!606354 () Bool)

(declare-fun e!367424 () Bool)

(assert (=> b!606354 (= e!367424 (nullable!441 (regex!1207 (rule!1987 token!491))))))

(declare-fun d!213751 () Bool)

(declare-fun e!367428 () Bool)

(assert (=> d!213751 e!367428))

(declare-fun c!112427 () Bool)

(assert (=> d!213751 (= c!112427 ((_ is EmptyExpr!1541) (regex!1207 (rule!1987 token!491))))))

(declare-fun lt!258781 () Bool)

(assert (=> d!213751 (= lt!258781 e!367424)))

(declare-fun c!112426 () Bool)

(assert (=> d!213751 (= c!112426 (isEmpty!4367 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360))))))))

(assert (=> d!213751 (validRegex!536 (regex!1207 (rule!1987 token!491)))))

(assert (=> d!213751 (= (matchR!644 (regex!1207 (rule!1987 token!491)) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360))))) lt!258781)))

(declare-fun b!606355 () Bool)

(declare-fun e!367426 () Bool)

(declare-fun e!367427 () Bool)

(assert (=> b!606355 (= e!367426 e!367427)))

(declare-fun res!262647 () Bool)

(assert (=> b!606355 (=> res!262647 e!367427)))

(assert (=> b!606355 (= res!262647 call!40779)))

(declare-fun b!606356 () Bool)

(declare-fun e!367423 () Bool)

(assert (=> b!606356 (= e!367423 e!367426)))

(declare-fun res!262641 () Bool)

(assert (=> b!606356 (=> (not res!262641) (not e!367426))))

(assert (=> b!606356 (= res!262641 (not lt!258781))))

(declare-fun b!606357 () Bool)

(declare-fun res!262645 () Bool)

(assert (=> b!606357 (=> res!262645 e!367423)))

(assert (=> b!606357 (= res!262645 e!367425)))

(declare-fun res!262640 () Bool)

(assert (=> b!606357 (=> (not res!262640) (not e!367425))))

(assert (=> b!606357 (= res!262640 lt!258781)))

(declare-fun b!606358 () Bool)

(assert (=> b!606358 (= e!367428 (= lt!258781 call!40779))))

(declare-fun b!606359 () Bool)

(declare-fun res!262643 () Bool)

(assert (=> b!606359 (=> res!262643 e!367423)))

(assert (=> b!606359 (= res!262643 (not ((_ is ElementMatch!1541) (regex!1207 (rule!1987 token!491)))))))

(declare-fun e!367429 () Bool)

(assert (=> b!606359 (= e!367429 e!367423)))

(declare-fun bm!40774 () Bool)

(assert (=> bm!40774 (= call!40779 (isEmpty!4367 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360))))))))

(declare-fun b!606360 () Bool)

(assert (=> b!606360 (= e!367425 (= (head!1282 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360))))) (c!112179 (regex!1207 (rule!1987 token!491)))))))

(declare-fun b!606361 () Bool)

(assert (=> b!606361 (= e!367427 (not (= (head!1282 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360))))) (c!112179 (regex!1207 (rule!1987 token!491))))))))

(declare-fun b!606362 () Bool)

(assert (=> b!606362 (= e!367424 (matchR!644 (derivativeStep!328 (regex!1207 (rule!1987 token!491)) (head!1282 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360)))))) (tail!811 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360)))))))))

(declare-fun b!606363 () Bool)

(declare-fun res!262642 () Bool)

(assert (=> b!606363 (=> res!262642 e!367427)))

(assert (=> b!606363 (= res!262642 (not (isEmpty!4367 (tail!811 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360))))))))))

(declare-fun b!606364 () Bool)

(assert (=> b!606364 (= e!367428 e!367429)))

(declare-fun c!112428 () Bool)

(assert (=> b!606364 (= c!112428 ((_ is EmptyLang!1541) (regex!1207 (rule!1987 token!491))))))

(declare-fun b!606365 () Bool)

(assert (=> b!606365 (= e!367429 (not lt!258781))))

(declare-fun b!606366 () Bool)

(declare-fun res!262646 () Bool)

(assert (=> b!606366 (=> (not res!262646) (not e!367425))))

(assert (=> b!606366 (= res!262646 (isEmpty!4367 (tail!811 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258360)))))))))

(assert (= (and d!213751 c!112426) b!606354))

(assert (= (and d!213751 (not c!112426)) b!606362))

(assert (= (and d!213751 c!112427) b!606358))

(assert (= (and d!213751 (not c!112427)) b!606364))

(assert (= (and b!606364 c!112428) b!606365))

(assert (= (and b!606364 (not c!112428)) b!606359))

(assert (= (and b!606359 (not res!262643)) b!606357))

(assert (= (and b!606357 res!262640) b!606353))

(assert (= (and b!606353 res!262644) b!606366))

(assert (= (and b!606366 res!262646) b!606360))

(assert (= (and b!606357 (not res!262645)) b!606356))

(assert (= (and b!606356 res!262641) b!606355))

(assert (= (and b!606355 (not res!262647)) b!606363))

(assert (= (and b!606363 (not res!262642)) b!606361))

(assert (= (or b!606358 b!606353 b!606355) bm!40774))

(assert (=> b!606362 m!871541))

(declare-fun m!872817 () Bool)

(assert (=> b!606362 m!872817))

(assert (=> b!606362 m!872817))

(declare-fun m!872819 () Bool)

(assert (=> b!606362 m!872819))

(assert (=> b!606362 m!871541))

(declare-fun m!872821 () Bool)

(assert (=> b!606362 m!872821))

(assert (=> b!606362 m!872819))

(assert (=> b!606362 m!872821))

(declare-fun m!872823 () Bool)

(assert (=> b!606362 m!872823))

(assert (=> b!606366 m!871541))

(assert (=> b!606366 m!872821))

(assert (=> b!606366 m!872821))

(declare-fun m!872825 () Bool)

(assert (=> b!606366 m!872825))

(assert (=> b!606360 m!871541))

(assert (=> b!606360 m!872817))

(assert (=> b!606361 m!871541))

(assert (=> b!606361 m!872817))

(assert (=> b!606354 m!871295))

(assert (=> bm!40774 m!871541))

(declare-fun m!872827 () Bool)

(assert (=> bm!40774 m!872827))

(assert (=> d!213751 m!871541))

(assert (=> d!213751 m!872827))

(assert (=> d!213751 m!871293))

(assert (=> b!606363 m!871541))

(assert (=> b!606363 m!872821))

(assert (=> b!606363 m!872821))

(assert (=> b!606363 m!872825))

(assert (=> b!605503 d!213751))

(assert (=> b!605503 d!213379))

(assert (=> b!605503 d!213381))

(assert (=> b!605503 d!213387))

(declare-fun d!213753 () Bool)

(declare-fun lt!258782 () Int)

(assert (=> d!213753 (>= lt!258782 0)))

(declare-fun e!367430 () Int)

(assert (=> d!213753 (= lt!258782 e!367430)))

(declare-fun c!112429 () Bool)

(assert (=> d!213753 (= c!112429 ((_ is Nil!6051) (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174)))))))

(assert (=> d!213753 (= (size!4761 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174)))) lt!258782)))

(declare-fun b!606367 () Bool)

(assert (=> b!606367 (= e!367430 0)))

(declare-fun b!606368 () Bool)

(assert (=> b!606368 (= e!367430 (+ 1 (size!4761 (t!80332 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174)))))))))

(assert (= (and d!213753 c!112429) b!606367))

(assert (= (and d!213753 (not c!112429)) b!606368))

(declare-fun m!872829 () Bool)

(assert (=> b!606368 m!872829))

(assert (=> b!605404 d!213753))

(assert (=> b!605404 d!213183))

(declare-fun c!112430 () Bool)

(declare-fun call!40780 () Bool)

(declare-fun bm!40775 () Bool)

(declare-fun c!112431 () Bool)

(assert (=> bm!40775 (= call!40780 (validRegex!536 (ite c!112431 (reg!1870 (regex!1207 (rule!1987 token!491))) (ite c!112430 (regTwo!3595 (regex!1207 (rule!1987 token!491))) (regOne!3594 (regex!1207 (rule!1987 token!491)))))))))

(declare-fun b!606370 () Bool)

(declare-fun e!367431 () Bool)

(declare-fun e!367433 () Bool)

(assert (=> b!606370 (= e!367431 e!367433)))

(assert (=> b!606370 (= c!112431 ((_ is Star!1541) (regex!1207 (rule!1987 token!491))))))

(declare-fun b!606371 () Bool)

(declare-fun e!367434 () Bool)

(assert (=> b!606371 (= e!367433 e!367434)))

(assert (=> b!606371 (= c!112430 ((_ is Union!1541) (regex!1207 (rule!1987 token!491))))))

(declare-fun b!606372 () Bool)

(declare-fun e!367436 () Bool)

(assert (=> b!606372 (= e!367433 e!367436)))

(declare-fun res!262652 () Bool)

(assert (=> b!606372 (= res!262652 (not (nullable!441 (reg!1870 (regex!1207 (rule!1987 token!491))))))))

(assert (=> b!606372 (=> (not res!262652) (not e!367436))))

(declare-fun b!606373 () Bool)

(declare-fun e!367432 () Bool)

(declare-fun e!367437 () Bool)

(assert (=> b!606373 (= e!367432 e!367437)))

(declare-fun res!262650 () Bool)

(assert (=> b!606373 (=> (not res!262650) (not e!367437))))

(declare-fun call!40782 () Bool)

(assert (=> b!606373 (= res!262650 call!40782)))

(declare-fun bm!40776 () Bool)

(assert (=> bm!40776 (= call!40782 call!40780)))

(declare-fun bm!40777 () Bool)

(declare-fun call!40781 () Bool)

(assert (=> bm!40777 (= call!40781 (validRegex!536 (ite c!112430 (regOne!3595 (regex!1207 (rule!1987 token!491))) (regTwo!3594 (regex!1207 (rule!1987 token!491))))))))

(declare-fun b!606374 () Bool)

(declare-fun res!262648 () Bool)

(assert (=> b!606374 (=> res!262648 e!367432)))

(assert (=> b!606374 (= res!262648 (not ((_ is Concat!2772) (regex!1207 (rule!1987 token!491)))))))

(assert (=> b!606374 (= e!367434 e!367432)))

(declare-fun b!606375 () Bool)

(assert (=> b!606375 (= e!367436 call!40780)))

(declare-fun b!606376 () Bool)

(declare-fun e!367435 () Bool)

(assert (=> b!606376 (= e!367435 call!40782)))

(declare-fun b!606377 () Bool)

(declare-fun res!262649 () Bool)

(assert (=> b!606377 (=> (not res!262649) (not e!367435))))

(assert (=> b!606377 (= res!262649 call!40781)))

(assert (=> b!606377 (= e!367434 e!367435)))

(declare-fun d!213755 () Bool)

(declare-fun res!262651 () Bool)

(assert (=> d!213755 (=> res!262651 e!367431)))

(assert (=> d!213755 (= res!262651 ((_ is ElementMatch!1541) (regex!1207 (rule!1987 token!491))))))

(assert (=> d!213755 (= (validRegex!536 (regex!1207 (rule!1987 token!491))) e!367431)))

(declare-fun b!606369 () Bool)

(assert (=> b!606369 (= e!367437 call!40781)))

(assert (= (and d!213755 (not res!262651)) b!606370))

(assert (= (and b!606370 c!112431) b!606372))

(assert (= (and b!606370 (not c!112431)) b!606371))

(assert (= (and b!606372 res!262652) b!606375))

(assert (= (and b!606371 c!112430) b!606377))

(assert (= (and b!606371 (not c!112430)) b!606374))

(assert (= (and b!606377 res!262649) b!606376))

(assert (= (and b!606374 (not res!262648)) b!606373))

(assert (= (and b!606373 res!262650) b!606369))

(assert (= (or b!606377 b!606369) bm!40777))

(assert (= (or b!606376 b!606373) bm!40776))

(assert (= (or b!606375 bm!40776) bm!40775))

(declare-fun m!872831 () Bool)

(assert (=> bm!40775 m!872831))

(declare-fun m!872833 () Bool)

(assert (=> b!606372 m!872833))

(declare-fun m!872835 () Bool)

(assert (=> bm!40777 m!872835))

(assert (=> d!213165 d!213755))

(declare-fun d!213757 () Bool)

(assert (=> d!213757 (= (list!2542 lt!258375) (list!2544 (c!112180 lt!258375)))))

(declare-fun bs!71332 () Bool)

(assert (= bs!71332 d!213757))

(declare-fun m!872837 () Bool)

(assert (=> bs!71332 m!872837))

(assert (=> d!213279 d!213757))

(declare-fun d!213759 () Bool)

(declare-fun lt!258783 () Int)

(assert (=> d!213759 (>= lt!258783 0)))

(declare-fun e!367438 () Int)

(assert (=> d!213759 (= lt!258783 e!367438)))

(declare-fun c!112432 () Bool)

(assert (=> d!213759 (= c!112432 ((_ is Nil!6051) (_2!3728 (get!2325 lt!258360))))))

(assert (=> d!213759 (= (size!4761 (_2!3728 (get!2325 lt!258360))) lt!258783)))

(declare-fun b!606378 () Bool)

(assert (=> b!606378 (= e!367438 0)))

(declare-fun b!606379 () Bool)

(assert (=> b!606379 (= e!367438 (+ 1 (size!4761 (t!80332 (_2!3728 (get!2325 lt!258360))))))))

(assert (= (and d!213759 c!112432) b!606378))

(assert (= (and d!213759 (not c!112432)) b!606379))

(declare-fun m!872839 () Bool)

(assert (=> b!606379 m!872839))

(assert (=> b!605507 d!213759))

(assert (=> b!605507 d!213387))

(assert (=> b!605507 d!213337))

(declare-fun d!213761 () Bool)

(declare-fun nullableFct!147 (Regex!1541) Bool)

(assert (=> d!213761 (= (nullable!441 (regex!1207 (rule!1987 token!491))) (nullableFct!147 (regex!1207 (rule!1987 token!491))))))

(declare-fun bs!71333 () Bool)

(assert (= bs!71333 d!213761))

(declare-fun m!872841 () Bool)

(assert (=> bs!71333 m!872841))

(assert (=> b!605332 d!213761))

(declare-fun d!213763 () Bool)

(declare-fun res!262657 () Bool)

(declare-fun e!367443 () Bool)

(assert (=> d!213763 (=> res!262657 e!367443)))

(assert (=> d!213763 (= res!262657 ((_ is Nil!6052) rules!3103))))

(assert (=> d!213763 (= (noDuplicateTag!446 thiss!22590 rules!3103 Nil!6053) e!367443)))

(declare-fun b!606384 () Bool)

(declare-fun e!367444 () Bool)

(assert (=> b!606384 (= e!367443 e!367444)))

(declare-fun res!262658 () Bool)

(assert (=> b!606384 (=> (not res!262658) (not e!367444))))

(declare-fun contains!1423 (List!6063 String!7898) Bool)

(assert (=> b!606384 (= res!262658 (not (contains!1423 Nil!6053 (tag!1469 (h!11453 rules!3103)))))))

(declare-fun b!606385 () Bool)

(assert (=> b!606385 (= e!367444 (noDuplicateTag!446 thiss!22590 (t!80333 rules!3103) (Cons!6053 (tag!1469 (h!11453 rules!3103)) Nil!6053)))))

(assert (= (and d!213763 (not res!262657)) b!606384))

(assert (= (and b!606384 res!262658) b!606385))

(declare-fun m!872843 () Bool)

(assert (=> b!606384 m!872843))

(declare-fun m!872845 () Bool)

(assert (=> b!606385 m!872845))

(assert (=> b!605268 d!213763))

(declare-fun d!213765 () Bool)

(assert (=> d!213765 (= (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229)))) (list!2544 (c!112180 (charsOf!836 (_1!3728 (get!2325 lt!258229))))))))

(declare-fun bs!71334 () Bool)

(assert (= bs!71334 d!213765))

(declare-fun m!872847 () Bool)

(assert (=> bs!71334 m!872847))

(assert (=> b!605201 d!213765))

(declare-fun d!213767 () Bool)

(declare-fun lt!258784 () BalanceConc!3856)

(assert (=> d!213767 (= (list!2542 lt!258784) (originalCharacters!1246 (_1!3728 (get!2325 lt!258229))))))

(assert (=> d!213767 (= lt!258784 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229))))) (value!39266 (_1!3728 (get!2325 lt!258229)))))))

(assert (=> d!213767 (= (charsOf!836 (_1!3728 (get!2325 lt!258229))) lt!258784)))

(declare-fun b_lambda!24023 () Bool)

(assert (=> (not b_lambda!24023) (not d!213767)))

(declare-fun t!80520 () Bool)

(declare-fun tb!52985 () Bool)

(assert (=> (and b!605121 (= (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))))) t!80520) tb!52985))

(declare-fun b!606386 () Bool)

(declare-fun e!367445 () Bool)

(declare-fun tp!188250 () Bool)

(assert (=> b!606386 (= e!367445 (and (inv!7693 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229))))) (value!39266 (_1!3728 (get!2325 lt!258229)))))) tp!188250))))

(declare-fun result!59622 () Bool)

(assert (=> tb!52985 (= result!59622 (and (inv!7694 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229))))) (value!39266 (_1!3728 (get!2325 lt!258229))))) e!367445))))

(assert (= tb!52985 b!606386))

(declare-fun m!872849 () Bool)

(assert (=> b!606386 m!872849))

(declare-fun m!872851 () Bool)

(assert (=> tb!52985 m!872851))

(assert (=> d!213767 t!80520))

(declare-fun b_and!60027 () Bool)

(assert (= b_and!60021 (and (=> t!80520 result!59622) b_and!60027)))

(declare-fun t!80522 () Bool)

(declare-fun tb!52987 () Bool)

(assert (=> (and b!605099 (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))))) t!80522) tb!52987))

(declare-fun result!59624 () Bool)

(assert (= result!59624 result!59622))

(assert (=> d!213767 t!80522))

(declare-fun b_and!60029 () Bool)

(assert (= b_and!60023 (and (=> t!80522 result!59624) b_and!60029)))

(declare-fun t!80524 () Bool)

(declare-fun tb!52989 () Bool)

(assert (=> (and b!605565 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))))) t!80524) tb!52989))

(declare-fun result!59626 () Bool)

(assert (= result!59626 result!59622))

(assert (=> d!213767 t!80524))

(declare-fun b_and!60031 () Bool)

(assert (= b_and!60025 (and (=> t!80524 result!59626) b_and!60031)))

(declare-fun m!872853 () Bool)

(assert (=> d!213767 m!872853))

(declare-fun m!872855 () Bool)

(assert (=> d!213767 m!872855))

(assert (=> b!605201 d!213767))

(assert (=> b!605201 d!213639))

(declare-fun d!213769 () Bool)

(assert (=> d!213769 (= (get!2325 lt!258370) (v!16458 lt!258370))))

(assert (=> b!605512 d!213769))

(declare-fun d!213771 () Bool)

(assert (=> d!213771 (= (nullable!441 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (nullableFct!147 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun bs!71335 () Bool)

(assert (= bs!71335 d!213771))

(declare-fun m!872857 () Bool)

(assert (=> bs!71335 m!872857))

(assert (=> b!605314 d!213771))

(assert (=> b!605508 d!213387))

(declare-fun d!213773 () Bool)

(assert (=> d!213773 (= (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360)))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258360))))) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360))))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258360))))))))

(declare-fun b_lambda!24025 () Bool)

(assert (=> (not b_lambda!24025) (not d!213773)))

(declare-fun t!80526 () Bool)

(declare-fun tb!52991 () Bool)

(assert (=> (and b!605121 (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360)))))) t!80526) tb!52991))

(declare-fun result!59628 () Bool)

(assert (=> tb!52991 (= result!59628 (inv!21 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360))))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258360)))))))))

(declare-fun m!872859 () Bool)

(assert (=> tb!52991 m!872859))

(assert (=> d!213773 t!80526))

(declare-fun b_and!60033 () Bool)

(assert (= b_and!60011 (and (=> t!80526 result!59628) b_and!60033)))

(declare-fun t!80528 () Bool)

(declare-fun tb!52993 () Bool)

(assert (=> (and b!605099 (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360)))))) t!80528) tb!52993))

(declare-fun result!59630 () Bool)

(assert (= result!59630 result!59628))

(assert (=> d!213773 t!80528))

(declare-fun b_and!60035 () Bool)

(assert (= b_and!60013 (and (=> t!80528 result!59630) b_and!60035)))

(declare-fun t!80530 () Bool)

(declare-fun tb!52995 () Bool)

(assert (=> (and b!605565 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360)))))) t!80530) tb!52995))

(declare-fun result!59632 () Bool)

(assert (= result!59632 result!59628))

(assert (=> d!213773 t!80530))

(declare-fun b_and!60037 () Bool)

(assert (= b_and!60015 (and (=> t!80530 result!59632) b_and!60037)))

(assert (=> d!213773 m!871545))

(declare-fun m!872861 () Bool)

(assert (=> d!213773 m!872861))

(assert (=> b!605508 d!213773))

(declare-fun d!213775 () Bool)

(assert (=> d!213775 (= (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258360)))) (fromListB!610 (originalCharacters!1246 (_1!3728 (get!2325 lt!258360)))))))

(declare-fun bs!71336 () Bool)

(assert (= bs!71336 d!213775))

(declare-fun m!872863 () Bool)

(assert (=> bs!71336 m!872863))

(assert (=> b!605508 d!213775))

(declare-fun b!606387 () Bool)

(declare-fun e!367448 () List!6061)

(assert (=> b!606387 (= e!367448 (_2!3728 (v!16458 lt!258174)))))

(declare-fun d!213777 () Bool)

(declare-fun e!367447 () Bool)

(assert (=> d!213777 e!367447))

(declare-fun res!262660 () Bool)

(assert (=> d!213777 (=> (not res!262660) (not e!367447))))

(declare-fun lt!258785 () List!6061)

(assert (=> d!213777 (= res!262660 (= (content!1098 lt!258785) ((_ map or) (content!1098 (t!80332 lt!258194)) (content!1098 (_2!3728 (v!16458 lt!258174))))))))

(assert (=> d!213777 (= lt!258785 e!367448)))

(declare-fun c!112433 () Bool)

(assert (=> d!213777 (= c!112433 ((_ is Nil!6051) (t!80332 lt!258194)))))

(assert (=> d!213777 (= (++!1695 (t!80332 lt!258194) (_2!3728 (v!16458 lt!258174))) lt!258785)))

(declare-fun b!606388 () Bool)

(assert (=> b!606388 (= e!367448 (Cons!6051 (h!11452 (t!80332 lt!258194)) (++!1695 (t!80332 (t!80332 lt!258194)) (_2!3728 (v!16458 lt!258174)))))))

(declare-fun b!606390 () Bool)

(assert (=> b!606390 (= e!367447 (or (not (= (_2!3728 (v!16458 lt!258174)) Nil!6051)) (= lt!258785 (t!80332 lt!258194))))))

(declare-fun b!606389 () Bool)

(declare-fun res!262659 () Bool)

(assert (=> b!606389 (=> (not res!262659) (not e!367447))))

(assert (=> b!606389 (= res!262659 (= (size!4761 lt!258785) (+ (size!4761 (t!80332 lt!258194)) (size!4761 (_2!3728 (v!16458 lt!258174))))))))

(assert (= (and d!213777 c!112433) b!606387))

(assert (= (and d!213777 (not c!112433)) b!606388))

(assert (= (and d!213777 res!262660) b!606389))

(assert (= (and b!606389 res!262659) b!606390))

(declare-fun m!872865 () Bool)

(assert (=> d!213777 m!872865))

(assert (=> d!213777 m!871805))

(assert (=> d!213777 m!871285))

(declare-fun m!872867 () Bool)

(assert (=> b!606388 m!872867))

(declare-fun m!872869 () Bool)

(assert (=> b!606389 m!872869))

(assert (=> b!606389 m!871335))

(assert (=> b!606389 m!871291))

(assert (=> b!605329 d!213777))

(declare-fun b!606393 () Bool)

(declare-fun e!367449 () Bool)

(assert (=> b!606393 (= e!367449 (isPrefix!835 (tail!811 (tail!811 lt!258196)) (tail!811 (tail!811 lt!258169))))))

(declare-fun b!606391 () Bool)

(declare-fun e!367451 () Bool)

(assert (=> b!606391 (= e!367451 e!367449)))

(declare-fun res!262661 () Bool)

(assert (=> b!606391 (=> (not res!262661) (not e!367449))))

(assert (=> b!606391 (= res!262661 (not ((_ is Nil!6051) (tail!811 lt!258169))))))

(declare-fun d!213779 () Bool)

(declare-fun e!367450 () Bool)

(assert (=> d!213779 e!367450))

(declare-fun res!262663 () Bool)

(assert (=> d!213779 (=> res!262663 e!367450)))

(declare-fun lt!258786 () Bool)

(assert (=> d!213779 (= res!262663 (not lt!258786))))

(assert (=> d!213779 (= lt!258786 e!367451)))

(declare-fun res!262664 () Bool)

(assert (=> d!213779 (=> res!262664 e!367451)))

(assert (=> d!213779 (= res!262664 ((_ is Nil!6051) (tail!811 lt!258196)))))

(assert (=> d!213779 (= (isPrefix!835 (tail!811 lt!258196) (tail!811 lt!258169)) lt!258786)))

(declare-fun b!606394 () Bool)

(assert (=> b!606394 (= e!367450 (>= (size!4761 (tail!811 lt!258169)) (size!4761 (tail!811 lt!258196))))))

(declare-fun b!606392 () Bool)

(declare-fun res!262662 () Bool)

(assert (=> b!606392 (=> (not res!262662) (not e!367449))))

(assert (=> b!606392 (= res!262662 (= (head!1282 (tail!811 lt!258196)) (head!1282 (tail!811 lt!258169))))))

(assert (= (and d!213779 (not res!262664)) b!606391))

(assert (= (and b!606391 res!262661) b!606392))

(assert (= (and b!606392 res!262662) b!606393))

(assert (= (and d!213779 (not res!262663)) b!606394))

(assert (=> b!606393 m!871299))

(declare-fun m!872871 () Bool)

(assert (=> b!606393 m!872871))

(assert (=> b!606393 m!871301))

(assert (=> b!606393 m!872773))

(assert (=> b!606393 m!872871))

(assert (=> b!606393 m!872773))

(declare-fun m!872873 () Bool)

(assert (=> b!606393 m!872873))

(assert (=> b!606394 m!871301))

(assert (=> b!606394 m!872777))

(assert (=> b!606394 m!871299))

(declare-fun m!872875 () Bool)

(assert (=> b!606394 m!872875))

(assert (=> b!606392 m!871299))

(declare-fun m!872877 () Bool)

(assert (=> b!606392 m!872877))

(assert (=> b!606392 m!871301))

(assert (=> b!606392 m!872781))

(assert (=> b!605336 d!213779))

(declare-fun d!213781 () Bool)

(assert (=> d!213781 (= (tail!811 lt!258196) (t!80332 lt!258196))))

(assert (=> b!605336 d!213781))

(assert (=> b!605336 d!213731))

(declare-fun d!213783 () Bool)

(assert (=> d!213783 (= (head!1282 input!2705) (h!11452 input!2705))))

(assert (=> b!605368 d!213783))

(declare-fun d!213785 () Bool)

(assert (=> d!213785 (= (head!1282 lt!258169) (h!11452 lt!258169))))

(assert (=> b!605368 d!213785))

(declare-fun d!213787 () Bool)

(declare-fun e!367454 () Bool)

(assert (=> d!213787 e!367454))

(declare-fun res!262667 () Bool)

(assert (=> d!213787 (=> (not res!262667) (not e!367454))))

(declare-fun lt!258789 () BalanceConc!3856)

(assert (=> d!213787 (= res!262667 (= (list!2542 lt!258789) lt!258194))))

(declare-fun fromList!282 (List!6061) Conc!1924)

(assert (=> d!213787 (= lt!258789 (BalanceConc!3857 (fromList!282 lt!258194)))))

(assert (=> d!213787 (= (fromListB!610 lt!258194) lt!258789)))

(declare-fun b!606397 () Bool)

(assert (=> b!606397 (= e!367454 (isBalanced!531 (fromList!282 lt!258194)))))

(assert (= (and d!213787 res!262667) b!606397))

(declare-fun m!872879 () Bool)

(assert (=> d!213787 m!872879))

(declare-fun m!872881 () Bool)

(assert (=> d!213787 m!872881))

(assert (=> b!606397 m!872881))

(assert (=> b!606397 m!872881))

(declare-fun m!872883 () Bool)

(assert (=> b!606397 m!872883))

(assert (=> d!213179 d!213787))

(declare-fun d!213789 () Bool)

(assert (=> d!213789 (= (isEmpty!4370 lt!258229) (not ((_ is Some!1557) lt!258229)))))

(assert (=> d!213073 d!213789))

(declare-fun b!606400 () Bool)

(declare-fun e!367455 () Bool)

(assert (=> b!606400 (= e!367455 (isPrefix!835 (tail!811 lt!258195) (tail!811 lt!258195)))))

(declare-fun b!606398 () Bool)

(declare-fun e!367457 () Bool)

(assert (=> b!606398 (= e!367457 e!367455)))

(declare-fun res!262668 () Bool)

(assert (=> b!606398 (=> (not res!262668) (not e!367455))))

(assert (=> b!606398 (= res!262668 (not ((_ is Nil!6051) lt!258195)))))

(declare-fun d!213791 () Bool)

(declare-fun e!367456 () Bool)

(assert (=> d!213791 e!367456))

(declare-fun res!262670 () Bool)

(assert (=> d!213791 (=> res!262670 e!367456)))

(declare-fun lt!258790 () Bool)

(assert (=> d!213791 (= res!262670 (not lt!258790))))

(assert (=> d!213791 (= lt!258790 e!367457)))

(declare-fun res!262671 () Bool)

(assert (=> d!213791 (=> res!262671 e!367457)))

(assert (=> d!213791 (= res!262671 ((_ is Nil!6051) lt!258195))))

(assert (=> d!213791 (= (isPrefix!835 lt!258195 lt!258195) lt!258790)))

(declare-fun b!606401 () Bool)

(assert (=> b!606401 (= e!367456 (>= (size!4761 lt!258195) (size!4761 lt!258195)))))

(declare-fun b!606399 () Bool)

(declare-fun res!262669 () Bool)

(assert (=> b!606399 (=> (not res!262669) (not e!367455))))

(assert (=> b!606399 (= res!262669 (= (head!1282 lt!258195) (head!1282 lt!258195)))))

(assert (= (and d!213791 (not res!262671)) b!606398))

(assert (= (and b!606398 res!262668) b!606399))

(assert (= (and b!606399 res!262669) b!606400))

(assert (= (and d!213791 (not res!262670)) b!606401))

(assert (=> b!606400 m!871409))

(assert (=> b!606400 m!871409))

(assert (=> b!606400 m!871409))

(assert (=> b!606400 m!871409))

(declare-fun m!872885 () Bool)

(assert (=> b!606400 m!872885))

(assert (=> b!606401 m!871065))

(assert (=> b!606401 m!871065))

(assert (=> b!606399 m!871413))

(assert (=> b!606399 m!871413))

(assert (=> d!213073 d!213791))

(declare-fun d!213793 () Bool)

(assert (=> d!213793 (isPrefix!835 lt!258195 lt!258195)))

(declare-fun lt!258791 () Unit!11030)

(assert (=> d!213793 (= lt!258791 (choose!4438 lt!258195 lt!258195))))

(assert (=> d!213793 (= (lemmaIsPrefixRefl!571 lt!258195 lt!258195) lt!258791)))

(declare-fun bs!71337 () Bool)

(assert (= bs!71337 d!213793))

(assert (=> bs!71337 m!871089))

(declare-fun m!872887 () Bool)

(assert (=> bs!71337 m!872887))

(assert (=> d!213073 d!213793))

(assert (=> d!213073 d!213705))

(declare-fun d!213795 () Bool)

(declare-fun lt!258792 () Bool)

(assert (=> d!213795 (= lt!258792 (select (content!1100 rules!3103) (rule!1987 (_1!3728 (get!2325 lt!258255)))))))

(declare-fun e!367459 () Bool)

(assert (=> d!213795 (= lt!258792 e!367459)))

(declare-fun res!262672 () Bool)

(assert (=> d!213795 (=> (not res!262672) (not e!367459))))

(assert (=> d!213795 (= res!262672 ((_ is Cons!6052) rules!3103))))

(assert (=> d!213795 (= (contains!1421 rules!3103 (rule!1987 (_1!3728 (get!2325 lt!258255)))) lt!258792)))

(declare-fun b!606402 () Bool)

(declare-fun e!367458 () Bool)

(assert (=> b!606402 (= e!367459 e!367458)))

(declare-fun res!262673 () Bool)

(assert (=> b!606402 (=> res!262673 e!367458)))

(assert (=> b!606402 (= res!262673 (= (h!11453 rules!3103) (rule!1987 (_1!3728 (get!2325 lt!258255)))))))

(declare-fun b!606403 () Bool)

(assert (=> b!606403 (= e!367458 (contains!1421 (t!80333 rules!3103) (rule!1987 (_1!3728 (get!2325 lt!258255)))))))

(assert (= (and d!213795 res!262672) b!606402))

(assert (= (and b!606402 (not res!262673)) b!606403))

(assert (=> d!213795 m!872767))

(declare-fun m!872889 () Bool)

(assert (=> d!213795 m!872889))

(declare-fun m!872891 () Bool)

(assert (=> b!606403 m!872891))

(assert (=> b!605239 d!213795))

(assert (=> b!605239 d!213723))

(declare-fun d!213797 () Bool)

(declare-fun e!367461 () Bool)

(assert (=> d!213797 e!367461))

(declare-fun res!262675 () Bool)

(assert (=> d!213797 (=> res!262675 e!367461)))

(declare-fun lt!258793 () Option!1558)

(assert (=> d!213797 (= res!262675 (isEmpty!4370 lt!258793))))

(declare-fun e!367463 () Option!1558)

(assert (=> d!213797 (= lt!258793 e!367463)))

(declare-fun c!112435 () Bool)

(declare-fun lt!258796 () tuple2!6932)

(assert (=> d!213797 (= c!112435 (isEmpty!4367 (_1!3730 lt!258796)))))

(assert (=> d!213797 (= lt!258796 (findLongestMatch!180 (regex!1207 (h!11453 rules!3103)) lt!258195))))

(assert (=> d!213797 (ruleValid!405 thiss!22590 (h!11453 rules!3103))))

(assert (=> d!213797 (= (maxPrefixOneRule!454 thiss!22590 (h!11453 rules!3103) lt!258195) lt!258793)))

(declare-fun b!606404 () Bool)

(declare-fun res!262676 () Bool)

(declare-fun e!367460 () Bool)

(assert (=> b!606404 (=> (not res!262676) (not e!367460))))

(assert (=> b!606404 (= res!262676 (= (rule!1987 (_1!3728 (get!2325 lt!258793))) (h!11453 rules!3103)))))

(declare-fun b!606405 () Bool)

(declare-fun e!367462 () Bool)

(assert (=> b!606405 (= e!367462 (matchR!644 (regex!1207 (h!11453 rules!3103)) (_1!3730 (findLongestMatchInner!201 (regex!1207 (h!11453 rules!3103)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))))))

(declare-fun b!606406 () Bool)

(assert (=> b!606406 (= e!367461 e!367460)))

(declare-fun res!262678 () Bool)

(assert (=> b!606406 (=> (not res!262678) (not e!367460))))

(assert (=> b!606406 (= res!262678 (matchR!644 (regex!1207 (h!11453 rules!3103)) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258793))))))))

(declare-fun b!606407 () Bool)

(declare-fun res!262674 () Bool)

(assert (=> b!606407 (=> (not res!262674) (not e!367460))))

(assert (=> b!606407 (= res!262674 (= (++!1695 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258793)))) (_2!3728 (get!2325 lt!258793))) lt!258195))))

(declare-fun b!606408 () Bool)

(assert (=> b!606408 (= e!367460 (= (size!4760 (_1!3728 (get!2325 lt!258793))) (size!4761 (originalCharacters!1246 (_1!3728 (get!2325 lt!258793))))))))

(declare-fun b!606409 () Bool)

(assert (=> b!606409 (= e!367463 None!1557)))

(declare-fun b!606410 () Bool)

(declare-fun res!262677 () Bool)

(assert (=> b!606410 (=> (not res!262677) (not e!367460))))

(assert (=> b!606410 (= res!262677 (< (size!4761 (_2!3728 (get!2325 lt!258793))) (size!4761 lt!258195)))))

(declare-fun b!606411 () Bool)

(declare-fun res!262680 () Bool)

(assert (=> b!606411 (=> (not res!262680) (not e!367460))))

(assert (=> b!606411 (= res!262680 (= (value!39266 (_1!3728 (get!2325 lt!258793))) (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258793)))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258793)))))))))

(declare-fun b!606412 () Bool)

(assert (=> b!606412 (= e!367463 (Some!1557 (tuple2!6929 (Token!2151 (apply!1460 (transformation!1207 (h!11453 rules!3103)) (seqFromList!1383 (_1!3730 lt!258796))) (h!11453 rules!3103) (size!4763 (seqFromList!1383 (_1!3730 lt!258796))) (_1!3730 lt!258796)) (_2!3730 lt!258796))))))

(declare-fun lt!258794 () Unit!11030)

(assert (=> b!606412 (= lt!258794 (longestMatchIsAcceptedByMatchOrIsEmpty!185 (regex!1207 (h!11453 rules!3103)) lt!258195))))

(declare-fun res!262679 () Bool)

(assert (=> b!606412 (= res!262679 (isEmpty!4367 (_1!3730 (findLongestMatchInner!201 (regex!1207 (h!11453 rules!3103)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))))))

(assert (=> b!606412 (=> res!262679 e!367462)))

(assert (=> b!606412 e!367462))

(declare-fun lt!258797 () Unit!11030)

(assert (=> b!606412 (= lt!258797 lt!258794)))

(declare-fun lt!258795 () Unit!11030)

(assert (=> b!606412 (= lt!258795 (lemmaSemiInverse!240 (transformation!1207 (h!11453 rules!3103)) (seqFromList!1383 (_1!3730 lt!258796))))))

(assert (= (and d!213797 c!112435) b!606409))

(assert (= (and d!213797 (not c!112435)) b!606412))

(assert (= (and b!606412 (not res!262679)) b!606405))

(assert (= (and d!213797 (not res!262675)) b!606406))

(assert (= (and b!606406 res!262678) b!606407))

(assert (= (and b!606407 res!262674) b!606410))

(assert (= (and b!606410 res!262677) b!606404))

(assert (= (and b!606404 res!262676) b!606411))

(assert (= (and b!606411 res!262680) b!606408))

(declare-fun m!872893 () Bool)

(assert (=> b!606407 m!872893))

(declare-fun m!872895 () Bool)

(assert (=> b!606407 m!872895))

(assert (=> b!606407 m!872895))

(declare-fun m!872897 () Bool)

(assert (=> b!606407 m!872897))

(assert (=> b!606407 m!872897))

(declare-fun m!872899 () Bool)

(assert (=> b!606407 m!872899))

(assert (=> b!606411 m!872893))

(declare-fun m!872901 () Bool)

(assert (=> b!606411 m!872901))

(assert (=> b!606411 m!872901))

(declare-fun m!872903 () Bool)

(assert (=> b!606411 m!872903))

(assert (=> b!606408 m!872893))

(declare-fun m!872905 () Bool)

(assert (=> b!606408 m!872905))

(declare-fun m!872907 () Bool)

(assert (=> b!606412 m!872907))

(declare-fun m!872909 () Bool)

(assert (=> b!606412 m!872909))

(assert (=> b!606412 m!872907))

(assert (=> b!606412 m!871555))

(assert (=> b!606412 m!871065))

(declare-fun m!872911 () Bool)

(assert (=> b!606412 m!872911))

(assert (=> b!606412 m!871065))

(assert (=> b!606412 m!871555))

(declare-fun m!872913 () Bool)

(assert (=> b!606412 m!872913))

(assert (=> b!606412 m!872907))

(declare-fun m!872915 () Bool)

(assert (=> b!606412 m!872915))

(assert (=> b!606412 m!872907))

(declare-fun m!872917 () Bool)

(assert (=> b!606412 m!872917))

(declare-fun m!872919 () Bool)

(assert (=> b!606412 m!872919))

(declare-fun m!872921 () Bool)

(assert (=> d!213797 m!872921))

(declare-fun m!872923 () Bool)

(assert (=> d!213797 m!872923))

(declare-fun m!872925 () Bool)

(assert (=> d!213797 m!872925))

(assert (=> d!213797 m!872705))

(assert (=> b!606410 m!872893))

(declare-fun m!872927 () Bool)

(assert (=> b!606410 m!872927))

(assert (=> b!606410 m!871065))

(assert (=> b!606405 m!871555))

(assert (=> b!606405 m!871065))

(assert (=> b!606405 m!871555))

(assert (=> b!606405 m!871065))

(assert (=> b!606405 m!872911))

(declare-fun m!872929 () Bool)

(assert (=> b!606405 m!872929))

(assert (=> b!606406 m!872893))

(assert (=> b!606406 m!872895))

(assert (=> b!606406 m!872895))

(assert (=> b!606406 m!872897))

(assert (=> b!606406 m!872897))

(declare-fun m!872931 () Bool)

(assert (=> b!606406 m!872931))

(assert (=> b!606404 m!872893))

(assert (=> bm!40672 d!213797))

(declare-fun b!606415 () Bool)

(declare-fun e!367464 () Bool)

(assert (=> b!606415 (= e!367464 (isPrefix!835 (tail!811 (tail!811 input!2705)) (tail!811 (tail!811 input!2705))))))

(declare-fun b!606413 () Bool)

(declare-fun e!367466 () Bool)

(assert (=> b!606413 (= e!367466 e!367464)))

(declare-fun res!262681 () Bool)

(assert (=> b!606413 (=> (not res!262681) (not e!367464))))

(assert (=> b!606413 (= res!262681 (not ((_ is Nil!6051) (tail!811 input!2705))))))

(declare-fun d!213799 () Bool)

(declare-fun e!367465 () Bool)

(assert (=> d!213799 e!367465))

(declare-fun res!262683 () Bool)

(assert (=> d!213799 (=> res!262683 e!367465)))

(declare-fun lt!258798 () Bool)

(assert (=> d!213799 (= res!262683 (not lt!258798))))

(assert (=> d!213799 (= lt!258798 e!367466)))

(declare-fun res!262684 () Bool)

(assert (=> d!213799 (=> res!262684 e!367466)))

(assert (=> d!213799 (= res!262684 ((_ is Nil!6051) (tail!811 input!2705)))))

(assert (=> d!213799 (= (isPrefix!835 (tail!811 input!2705) (tail!811 input!2705)) lt!258798)))

(declare-fun b!606416 () Bool)

(assert (=> b!606416 (= e!367465 (>= (size!4761 (tail!811 input!2705)) (size!4761 (tail!811 input!2705))))))

(declare-fun b!606414 () Bool)

(declare-fun res!262682 () Bool)

(assert (=> b!606414 (=> (not res!262682) (not e!367464))))

(assert (=> b!606414 (= res!262682 (= (head!1282 (tail!811 input!2705)) (head!1282 (tail!811 input!2705))))))

(assert (= (and d!213799 (not res!262684)) b!606413))

(assert (= (and b!606413 res!262681) b!606414))

(assert (= (and b!606414 res!262682) b!606415))

(assert (= (and d!213799 (not res!262683)) b!606416))

(assert (=> b!606415 m!871275))

(assert (=> b!606415 m!872749))

(assert (=> b!606415 m!871275))

(assert (=> b!606415 m!872749))

(assert (=> b!606415 m!872749))

(assert (=> b!606415 m!872749))

(declare-fun m!872933 () Bool)

(assert (=> b!606415 m!872933))

(assert (=> b!606416 m!871275))

(assert (=> b!606416 m!872747))

(assert (=> b!606416 m!871275))

(assert (=> b!606416 m!872747))

(assert (=> b!606414 m!871275))

(assert (=> b!606414 m!872779))

(assert (=> b!606414 m!871275))

(assert (=> b!606414 m!872779))

(assert (=> b!605326 d!213799))

(assert (=> b!605326 d!213717))

(assert (=> b!605516 d!213769))

(declare-fun d!213801 () Bool)

(declare-fun lt!258799 () Int)

(assert (=> d!213801 (>= lt!258799 0)))

(declare-fun e!367467 () Int)

(assert (=> d!213801 (= lt!258799 e!367467)))

(declare-fun c!112436 () Bool)

(assert (=> d!213801 (= c!112436 ((_ is Nil!6051) (originalCharacters!1246 (_1!3728 (get!2325 lt!258370)))))))

(assert (=> d!213801 (= (size!4761 (originalCharacters!1246 (_1!3728 (get!2325 lt!258370)))) lt!258799)))

(declare-fun b!606417 () Bool)

(assert (=> b!606417 (= e!367467 0)))

(declare-fun b!606418 () Bool)

(assert (=> b!606418 (= e!367467 (+ 1 (size!4761 (t!80332 (originalCharacters!1246 (_1!3728 (get!2325 lt!258370)))))))))

(assert (= (and d!213801 c!112436) b!606417))

(assert (= (and d!213801 (not c!112436)) b!606418))

(declare-fun m!872935 () Bool)

(assert (=> b!606418 m!872935))

(assert (=> b!605516 d!213801))

(declare-fun d!213803 () Bool)

(assert (=> d!213803 (= (isEmpty!4367 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))) ((_ is Nil!6051) (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))))))

(assert (=> b!605520 d!213803))

(declare-fun bs!71338 () Bool)

(declare-fun d!213805 () Bool)

(assert (= bs!71338 (and d!213805 d!213389)))

(declare-fun lambda!16148 () Int)

(assert (=> bs!71338 (= (and (= (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (toChars!1969 (transformation!1207 (h!11453 rules!3103)))) (= (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (toValue!2110 (transformation!1207 (h!11453 rules!3103))))) (= lambda!16148 lambda!16126))))

(declare-fun bs!71339 () Bool)

(assert (= bs!71339 (and d!213805 d!213469)))

(assert (=> bs!71339 (= (and (= (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (toChars!1969 (transformation!1207 (rule!1987 token!491)))) (= (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (toValue!2110 (transformation!1207 (rule!1987 token!491))))) (= lambda!16148 lambda!16130))))

(declare-fun bs!71340 () Bool)

(assert (= bs!71340 (and d!213805 d!213737)))

(assert (=> bs!71340 (= lambda!16148 lambda!16147)))

(declare-fun b!606419 () Bool)

(declare-fun e!367468 () Bool)

(assert (=> b!606419 (= e!367468 true)))

(assert (=> d!213805 e!367468))

(assert (= d!213805 b!606419))

(assert (=> b!606419 (< (dynLambda!3516 order!4843 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) (dynLambda!3515 order!4841 lambda!16148))))

(assert (=> b!606419 (< (dynLambda!3514 order!4839 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) (dynLambda!3515 order!4841 lambda!16148))))

(assert (=> d!213805 (= (list!2542 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 (_1!3730 lt!258373))))) (list!2542 (seqFromList!1383 (_1!3730 lt!258373))))))

(declare-fun lt!258800 () Unit!11030)

(assert (=> d!213805 (= lt!258800 (ForallOf!121 lambda!16148 (seqFromList!1383 (_1!3730 lt!258373))))))

(assert (=> d!213805 (= (lemmaSemiInverse!240 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (seqFromList!1383 (_1!3730 lt!258373))) lt!258800)))

(declare-fun b_lambda!24027 () Bool)

(assert (=> (not b_lambda!24027) (not d!213805)))

(declare-fun t!80532 () Bool)

(declare-fun tb!52997 () Bool)

(assert (=> (and b!605121 (= (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80532) tb!52997))

(declare-fun tp!188251 () Bool)

(declare-fun b!606420 () Bool)

(declare-fun e!367469 () Bool)

(assert (=> b!606420 (= e!367469 (and (inv!7693 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 (_1!3730 lt!258373)))))) tp!188251))))

(declare-fun result!59634 () Bool)

(assert (=> tb!52997 (= result!59634 (and (inv!7694 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 (_1!3730 lt!258373))))) e!367469))))

(assert (= tb!52997 b!606420))

(declare-fun m!872937 () Bool)

(assert (=> b!606420 m!872937))

(declare-fun m!872939 () Bool)

(assert (=> tb!52997 m!872939))

(assert (=> d!213805 t!80532))

(declare-fun b_and!60039 () Bool)

(assert (= b_and!60027 (and (=> t!80532 result!59634) b_and!60039)))

(declare-fun tb!52999 () Bool)

(declare-fun t!80534 () Bool)

(assert (=> (and b!605099 (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80534) tb!52999))

(declare-fun result!59636 () Bool)

(assert (= result!59636 result!59634))

(assert (=> d!213805 t!80534))

(declare-fun b_and!60041 () Bool)

(assert (= b_and!60029 (and (=> t!80534 result!59636) b_and!60041)))

(declare-fun t!80536 () Bool)

(declare-fun tb!53001 () Bool)

(assert (=> (and b!605565 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80536) tb!53001))

(declare-fun result!59638 () Bool)

(assert (= result!59638 result!59634))

(assert (=> d!213805 t!80536))

(declare-fun b_and!60043 () Bool)

(assert (= b_and!60031 (and (=> t!80536 result!59638) b_and!60043)))

(declare-fun b_lambda!24029 () Bool)

(assert (=> (not b_lambda!24029) (not d!213805)))

(declare-fun tb!53003 () Bool)

(declare-fun t!80538 () Bool)

(assert (=> (and b!605121 (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80538) tb!53003))

(declare-fun result!59640 () Bool)

(assert (=> tb!53003 (= result!59640 (inv!21 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 (_1!3730 lt!258373)))))))

(declare-fun m!872941 () Bool)

(assert (=> tb!53003 m!872941))

(assert (=> d!213805 t!80538))

(declare-fun b_and!60045 () Bool)

(assert (= b_and!60033 (and (=> t!80538 result!59640) b_and!60045)))

(declare-fun t!80540 () Bool)

(declare-fun tb!53005 () Bool)

(assert (=> (and b!605099 (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80540) tb!53005))

(declare-fun result!59642 () Bool)

(assert (= result!59642 result!59640))

(assert (=> d!213805 t!80540))

(declare-fun b_and!60047 () Bool)

(assert (= b_and!60035 (and (=> t!80540 result!59642) b_and!60047)))

(declare-fun t!80542 () Bool)

(declare-fun tb!53007 () Bool)

(assert (=> (and b!605565 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80542) tb!53007))

(declare-fun result!59644 () Bool)

(assert (= result!59644 result!59640))

(assert (=> d!213805 t!80542))

(declare-fun b_and!60049 () Bool)

(assert (= b_and!60037 (and (=> t!80542 result!59644) b_and!60049)))

(assert (=> d!213805 m!871607))

(declare-fun m!872943 () Bool)

(assert (=> d!213805 m!872943))

(declare-fun m!872945 () Bool)

(assert (=> d!213805 m!872945))

(declare-fun m!872947 () Bool)

(assert (=> d!213805 m!872947))

(assert (=> d!213805 m!872947))

(declare-fun m!872949 () Bool)

(assert (=> d!213805 m!872949))

(assert (=> d!213805 m!871607))

(declare-fun m!872951 () Bool)

(assert (=> d!213805 m!872951))

(assert (=> d!213805 m!871607))

(assert (=> d!213805 m!872945))

(assert (=> b!605520 d!213805))

(declare-fun d!213807 () Bool)

(assert (=> d!213807 (= (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (seqFromList!1383 (_1!3730 lt!258373))) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 (_1!3730 lt!258373))))))

(declare-fun b_lambda!24031 () Bool)

(assert (=> (not b_lambda!24031) (not d!213807)))

(assert (=> d!213807 t!80538))

(declare-fun b_and!60051 () Bool)

(assert (= b_and!60045 (and (=> t!80538 result!59640) b_and!60051)))

(assert (=> d!213807 t!80540))

(declare-fun b_and!60053 () Bool)

(assert (= b_and!60047 (and (=> t!80540 result!59642) b_and!60053)))

(assert (=> d!213807 t!80542))

(declare-fun b_and!60055 () Bool)

(assert (= b_and!60049 (and (=> t!80542 result!59644) b_and!60055)))

(assert (=> d!213807 m!871607))

(assert (=> d!213807 m!872945))

(assert (=> b!605520 d!213807))

(assert (=> b!605520 d!213327))

(declare-fun d!213809 () Bool)

(declare-fun lt!258801 () Int)

(assert (=> d!213809 (= lt!258801 (size!4761 (list!2542 (seqFromList!1383 (_1!3730 lt!258373)))))))

(assert (=> d!213809 (= lt!258801 (size!4764 (c!112180 (seqFromList!1383 (_1!3730 lt!258373)))))))

(assert (=> d!213809 (= (size!4763 (seqFromList!1383 (_1!3730 lt!258373))) lt!258801)))

(declare-fun bs!71341 () Bool)

(assert (= bs!71341 d!213809))

(assert (=> bs!71341 m!871607))

(assert (=> bs!71341 m!872943))

(assert (=> bs!71341 m!872943))

(declare-fun m!872953 () Bool)

(assert (=> bs!71341 m!872953))

(declare-fun m!872955 () Bool)

(assert (=> bs!71341 m!872955))

(assert (=> b!605520 d!213809))

(assert (=> b!605520 d!213695))

(assert (=> b!605520 d!213615))

(declare-fun d!213811 () Bool)

(assert (=> d!213811 (= (seqFromList!1383 (_1!3730 lt!258373)) (fromListB!610 (_1!3730 lt!258373)))))

(declare-fun bs!71342 () Bool)

(assert (= bs!71342 d!213811))

(declare-fun m!872957 () Bool)

(assert (=> bs!71342 m!872957))

(assert (=> b!605520 d!213811))

(declare-fun d!213813 () Bool)

(declare-fun e!367471 () Bool)

(assert (=> d!213813 e!367471))

(declare-fun res!262685 () Bool)

(assert (=> d!213813 (=> res!262685 e!367471)))

(assert (=> d!213813 (= res!262685 (isEmpty!4367 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))))))

(declare-fun lt!258802 () Unit!11030)

(assert (=> d!213813 (= lt!258802 (choose!4440 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) input!2705))))

(assert (=> d!213813 (validRegex!536 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))

(assert (=> d!213813 (= (longestMatchIsAcceptedByMatchOrIsEmpty!185 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) input!2705) lt!258802)))

(declare-fun b!606421 () Bool)

(assert (=> b!606421 (= e!367471 (matchR!644 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))))))

(assert (= (and d!213813 (not res!262685)) b!606421))

(assert (=> d!213813 m!871121))

(assert (=> d!213813 m!871555))

(assert (=> d!213813 m!871619))

(declare-fun m!872959 () Bool)

(assert (=> d!213813 m!872959))

(assert (=> d!213813 m!871271))

(assert (=> d!213813 m!871555))

(assert (=> d!213813 m!871121))

(assert (=> d!213813 m!871611))

(assert (=> b!606421 m!871555))

(assert (=> b!606421 m!871121))

(assert (=> b!606421 m!871555))

(assert (=> b!606421 m!871121))

(assert (=> b!606421 m!871611))

(assert (=> b!606421 m!871629))

(assert (=> b!605520 d!213813))

(declare-fun d!213815 () Bool)

(assert (=> d!213815 (= suffix!1342 lt!258189)))

(assert (=> d!213815 true))

(declare-fun _$63!759 () Unit!11030)

(assert (=> d!213815 (= (choose!4434 lt!258196 suffix!1342 lt!258196 lt!258189 lt!258195) _$63!759)))

(assert (=> d!213217 d!213815))

(declare-fun b!606424 () Bool)

(declare-fun e!367472 () Bool)

(assert (=> b!606424 (= e!367472 (isPrefix!835 (tail!811 lt!258196) (tail!811 lt!258195)))))

(declare-fun b!606422 () Bool)

(declare-fun e!367474 () Bool)

(assert (=> b!606422 (= e!367474 e!367472)))

(declare-fun res!262686 () Bool)

(assert (=> b!606422 (=> (not res!262686) (not e!367472))))

(assert (=> b!606422 (= res!262686 (not ((_ is Nil!6051) lt!258195)))))

(declare-fun d!213817 () Bool)

(declare-fun e!367473 () Bool)

(assert (=> d!213817 e!367473))

(declare-fun res!262688 () Bool)

(assert (=> d!213817 (=> res!262688 e!367473)))

(declare-fun lt!258803 () Bool)

(assert (=> d!213817 (= res!262688 (not lt!258803))))

(assert (=> d!213817 (= lt!258803 e!367474)))

(declare-fun res!262689 () Bool)

(assert (=> d!213817 (=> res!262689 e!367474)))

(assert (=> d!213817 (= res!262689 ((_ is Nil!6051) lt!258196))))

(assert (=> d!213817 (= (isPrefix!835 lt!258196 lt!258195) lt!258803)))

(declare-fun b!606425 () Bool)

(assert (=> b!606425 (= e!367473 (>= (size!4761 lt!258195) (size!4761 lt!258196)))))

(declare-fun b!606423 () Bool)

(declare-fun res!262687 () Bool)

(assert (=> b!606423 (=> (not res!262687) (not e!367472))))

(assert (=> b!606423 (= res!262687 (= (head!1282 lt!258196) (head!1282 lt!258195)))))

(assert (= (and d!213817 (not res!262689)) b!606422))

(assert (= (and b!606422 res!262686) b!606423))

(assert (= (and b!606423 res!262687) b!606424))

(assert (= (and d!213817 (not res!262688)) b!606425))

(assert (=> b!606424 m!871299))

(assert (=> b!606424 m!871409))

(assert (=> b!606424 m!871299))

(assert (=> b!606424 m!871409))

(declare-fun m!872961 () Bool)

(assert (=> b!606424 m!872961))

(assert (=> b!606425 m!871065))

(assert (=> b!606425 m!870925))

(assert (=> b!606423 m!871307))

(assert (=> b!606423 m!871413))

(assert (=> d!213217 d!213817))

(declare-fun d!213819 () Bool)

(declare-fun c!112437 () Bool)

(assert (=> d!213819 (= c!112437 ((_ is Nil!6051) lt!258251))))

(declare-fun e!367475 () (InoxSet C!4004))

(assert (=> d!213819 (= (content!1098 lt!258251) e!367475)))

(declare-fun b!606426 () Bool)

(assert (=> b!606426 (= e!367475 ((as const (Array C!4004 Bool)) false))))

(declare-fun b!606427 () Bool)

(assert (=> b!606427 (= e!367475 ((_ map or) (store ((as const (Array C!4004 Bool)) false) (h!11452 lt!258251) true) (content!1098 (t!80332 lt!258251))))))

(assert (= (and d!213819 c!112437) b!606426))

(assert (= (and d!213819 (not c!112437)) b!606427))

(declare-fun m!872963 () Bool)

(assert (=> b!606427 m!872963))

(declare-fun m!872965 () Bool)

(assert (=> b!606427 m!872965))

(assert (=> d!213091 d!213819))

(declare-fun d!213821 () Bool)

(declare-fun c!112438 () Bool)

(assert (=> d!213821 (= c!112438 ((_ is Nil!6051) input!2705))))

(declare-fun e!367476 () (InoxSet C!4004))

(assert (=> d!213821 (= (content!1098 input!2705) e!367476)))

(declare-fun b!606428 () Bool)

(assert (=> b!606428 (= e!367476 ((as const (Array C!4004 Bool)) false))))

(declare-fun b!606429 () Bool)

(assert (=> b!606429 (= e!367476 ((_ map or) (store ((as const (Array C!4004 Bool)) false) (h!11452 input!2705) true) (content!1098 (t!80332 input!2705))))))

(assert (= (and d!213821 c!112438) b!606428))

(assert (= (and d!213821 (not c!112438)) b!606429))

(declare-fun m!872967 () Bool)

(assert (=> b!606429 m!872967))

(declare-fun m!872969 () Bool)

(assert (=> b!606429 m!872969))

(assert (=> d!213091 d!213821))

(assert (=> d!213091 d!213623))

(declare-fun b!606430 () Bool)

(declare-fun res!262694 () Bool)

(declare-fun e!367477 () Bool)

(assert (=> b!606430 (=> (not res!262694) (not e!367477))))

(declare-fun lt!258805 () Option!1558)

(assert (=> b!606430 (= res!262694 (matchR!644 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258805)))) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258805))))))))

(declare-fun b!606431 () Bool)

(assert (=> b!606431 (= e!367477 (contains!1421 (t!80333 rules!3103) (rule!1987 (_1!3728 (get!2325 lt!258805)))))))

(declare-fun b!606432 () Bool)

(declare-fun res!262690 () Bool)

(assert (=> b!606432 (=> (not res!262690) (not e!367477))))

(assert (=> b!606432 (= res!262690 (< (size!4761 (_2!3728 (get!2325 lt!258805))) (size!4761 input!2705)))))

(declare-fun b!606434 () Bool)

(declare-fun res!262693 () Bool)

(assert (=> b!606434 (=> (not res!262693) (not e!367477))))

(assert (=> b!606434 (= res!262693 (= (value!39266 (_1!3728 (get!2325 lt!258805))) (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258805)))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258805)))))))))

(declare-fun b!606435 () Bool)

(declare-fun e!367479 () Option!1558)

(declare-fun call!40783 () Option!1558)

(assert (=> b!606435 (= e!367479 call!40783)))

(declare-fun b!606436 () Bool)

(declare-fun e!367478 () Bool)

(assert (=> b!606436 (= e!367478 e!367477)))

(declare-fun res!262696 () Bool)

(assert (=> b!606436 (=> (not res!262696) (not e!367477))))

(assert (=> b!606436 (= res!262696 (isDefined!1369 lt!258805))))

(declare-fun bm!40778 () Bool)

(assert (=> bm!40778 (= call!40783 (maxPrefixOneRule!454 thiss!22590 (h!11453 (t!80333 rules!3103)) input!2705))))

(declare-fun b!606433 () Bool)

(declare-fun res!262692 () Bool)

(assert (=> b!606433 (=> (not res!262692) (not e!367477))))

(assert (=> b!606433 (= res!262692 (= (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258805)))) (originalCharacters!1246 (_1!3728 (get!2325 lt!258805)))))))

(declare-fun d!213823 () Bool)

(assert (=> d!213823 e!367478))

(declare-fun res!262695 () Bool)

(assert (=> d!213823 (=> res!262695 e!367478)))

(assert (=> d!213823 (= res!262695 (isEmpty!4370 lt!258805))))

(assert (=> d!213823 (= lt!258805 e!367479)))

(declare-fun c!112439 () Bool)

(assert (=> d!213823 (= c!112439 (and ((_ is Cons!6052) (t!80333 rules!3103)) ((_ is Nil!6052) (t!80333 (t!80333 rules!3103)))))))

(declare-fun lt!258806 () Unit!11030)

(declare-fun lt!258804 () Unit!11030)

(assert (=> d!213823 (= lt!258806 lt!258804)))

(assert (=> d!213823 (isPrefix!835 input!2705 input!2705)))

(assert (=> d!213823 (= lt!258804 (lemmaIsPrefixRefl!571 input!2705 input!2705))))

(assert (=> d!213823 (rulesValidInductive!452 thiss!22590 (t!80333 rules!3103))))

(assert (=> d!213823 (= (maxPrefix!791 thiss!22590 (t!80333 rules!3103) input!2705) lt!258805)))

(declare-fun b!606437 () Bool)

(declare-fun lt!258808 () Option!1558)

(declare-fun lt!258807 () Option!1558)

(assert (=> b!606437 (= e!367479 (ite (and ((_ is None!1557) lt!258808) ((_ is None!1557) lt!258807)) None!1557 (ite ((_ is None!1557) lt!258807) lt!258808 (ite ((_ is None!1557) lt!258808) lt!258807 (ite (>= (size!4760 (_1!3728 (v!16458 lt!258808))) (size!4760 (_1!3728 (v!16458 lt!258807)))) lt!258808 lt!258807)))))))

(assert (=> b!606437 (= lt!258808 call!40783)))

(assert (=> b!606437 (= lt!258807 (maxPrefix!791 thiss!22590 (t!80333 (t!80333 rules!3103)) input!2705))))

(declare-fun b!606438 () Bool)

(declare-fun res!262691 () Bool)

(assert (=> b!606438 (=> (not res!262691) (not e!367477))))

(assert (=> b!606438 (= res!262691 (= (++!1695 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258805)))) (_2!3728 (get!2325 lt!258805))) input!2705))))

(assert (= (and d!213823 c!112439) b!606435))

(assert (= (and d!213823 (not c!112439)) b!606437))

(assert (= (or b!606435 b!606437) bm!40778))

(assert (= (and d!213823 (not res!262695)) b!606436))

(assert (= (and b!606436 res!262696) b!606433))

(assert (= (and b!606433 res!262692) b!606432))

(assert (= (and b!606432 res!262690) b!606438))

(assert (= (and b!606438 res!262691) b!606434))

(assert (= (and b!606434 res!262693) b!606430))

(assert (= (and b!606430 res!262694) b!606431))

(declare-fun m!872971 () Bool)

(assert (=> b!606433 m!872971))

(declare-fun m!872973 () Bool)

(assert (=> b!606433 m!872973))

(assert (=> b!606433 m!872973))

(declare-fun m!872975 () Bool)

(assert (=> b!606433 m!872975))

(declare-fun m!872977 () Bool)

(assert (=> b!606437 m!872977))

(assert (=> b!606438 m!872971))

(assert (=> b!606438 m!872973))

(assert (=> b!606438 m!872973))

(assert (=> b!606438 m!872975))

(assert (=> b!606438 m!872975))

(declare-fun m!872979 () Bool)

(assert (=> b!606438 m!872979))

(assert (=> b!606431 m!872971))

(declare-fun m!872981 () Bool)

(assert (=> b!606431 m!872981))

(assert (=> b!606432 m!872971))

(declare-fun m!872983 () Bool)

(assert (=> b!606432 m!872983))

(assert (=> b!606432 m!871121))

(assert (=> b!606434 m!872971))

(declare-fun m!872985 () Bool)

(assert (=> b!606434 m!872985))

(assert (=> b!606434 m!872985))

(declare-fun m!872987 () Bool)

(assert (=> b!606434 m!872987))

(assert (=> b!606430 m!872971))

(assert (=> b!606430 m!872973))

(assert (=> b!606430 m!872973))

(assert (=> b!606430 m!872975))

(assert (=> b!606430 m!872975))

(declare-fun m!872989 () Bool)

(assert (=> b!606430 m!872989))

(declare-fun m!872991 () Bool)

(assert (=> bm!40778 m!872991))

(declare-fun m!872993 () Bool)

(assert (=> b!606436 m!872993))

(declare-fun m!872995 () Bool)

(assert (=> d!213823 m!872995))

(assert (=> d!213823 m!870947))

(assert (=> d!213823 m!870973))

(assert (=> d!213823 m!872707))

(assert (=> b!605245 d!213823))

(declare-fun d!213825 () Bool)

(assert (=> d!213825 (= (list!2542 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491))) (list!2544 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491)))))))

(declare-fun bs!71343 () Bool)

(assert (= bs!71343 d!213825))

(declare-fun m!872997 () Bool)

(assert (=> bs!71343 m!872997))

(assert (=> b!605528 d!213825))

(declare-fun d!213827 () Bool)

(declare-fun lt!258809 () Int)

(assert (=> d!213827 (>= lt!258809 0)))

(declare-fun e!367480 () Int)

(assert (=> d!213827 (= lt!258809 e!367480)))

(declare-fun c!112440 () Bool)

(assert (=> d!213827 (= c!112440 ((_ is Nil!6051) (t!80332 (originalCharacters!1246 token!491))))))

(assert (=> d!213827 (= (size!4761 (t!80332 (originalCharacters!1246 token!491))) lt!258809)))

(declare-fun b!606439 () Bool)

(assert (=> b!606439 (= e!367480 0)))

(declare-fun b!606440 () Bool)

(assert (=> b!606440 (= e!367480 (+ 1 (size!4761 (t!80332 (t!80332 (originalCharacters!1246 token!491))))))))

(assert (= (and d!213827 c!112440) b!606439))

(assert (= (and d!213827 (not c!112440)) b!606440))

(declare-fun m!872999 () Bool)

(assert (=> b!606440 m!872999))

(assert (=> b!605532 d!213827))

(declare-fun b!606441 () Bool)

(declare-fun res!262701 () Bool)

(declare-fun e!367483 () Bool)

(assert (=> b!606441 (=> (not res!262701) (not e!367483))))

(declare-fun call!40784 () Bool)

(assert (=> b!606441 (= res!262701 (not call!40784))))

(declare-fun b!606442 () Bool)

(declare-fun e!367482 () Bool)

(assert (=> b!606442 (= e!367482 (nullable!441 (regex!1207 (rule!1987 token!491))))))

(declare-fun d!213829 () Bool)

(declare-fun e!367486 () Bool)

(assert (=> d!213829 e!367486))

(declare-fun c!112442 () Bool)

(assert (=> d!213829 (= c!112442 ((_ is EmptyExpr!1541) (regex!1207 (rule!1987 token!491))))))

(declare-fun lt!258810 () Bool)

(assert (=> d!213829 (= lt!258810 e!367482)))

(declare-fun c!112441 () Bool)

(assert (=> d!213829 (= c!112441 (isEmpty!4367 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))))))

(assert (=> d!213829 (validRegex!536 (regex!1207 (rule!1987 token!491)))))

(assert (=> d!213829 (= (matchR!644 (regex!1207 (rule!1987 token!491)) (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))) lt!258810)))

(declare-fun b!606443 () Bool)

(declare-fun e!367484 () Bool)

(declare-fun e!367485 () Bool)

(assert (=> b!606443 (= e!367484 e!367485)))

(declare-fun res!262704 () Bool)

(assert (=> b!606443 (=> res!262704 e!367485)))

(assert (=> b!606443 (= res!262704 call!40784)))

(declare-fun b!606444 () Bool)

(declare-fun e!367481 () Bool)

(assert (=> b!606444 (= e!367481 e!367484)))

(declare-fun res!262698 () Bool)

(assert (=> b!606444 (=> (not res!262698) (not e!367484))))

(assert (=> b!606444 (= res!262698 (not lt!258810))))

(declare-fun b!606445 () Bool)

(declare-fun res!262702 () Bool)

(assert (=> b!606445 (=> res!262702 e!367481)))

(assert (=> b!606445 (= res!262702 e!367483)))

(declare-fun res!262697 () Bool)

(assert (=> b!606445 (=> (not res!262697) (not e!367483))))

(assert (=> b!606445 (= res!262697 lt!258810)))

(declare-fun b!606446 () Bool)

(assert (=> b!606446 (= e!367486 (= lt!258810 call!40784))))

(declare-fun b!606447 () Bool)

(declare-fun res!262700 () Bool)

(assert (=> b!606447 (=> res!262700 e!367481)))

(assert (=> b!606447 (= res!262700 (not ((_ is ElementMatch!1541) (regex!1207 (rule!1987 token!491)))))))

(declare-fun e!367487 () Bool)

(assert (=> b!606447 (= e!367487 e!367481)))

(declare-fun bm!40779 () Bool)

(assert (=> bm!40779 (= call!40784 (isEmpty!4367 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))))))

(declare-fun b!606448 () Bool)

(assert (=> b!606448 (= e!367483 (= (head!1282 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))) (c!112179 (regex!1207 (rule!1987 token!491)))))))

(declare-fun b!606449 () Bool)

(assert (=> b!606449 (= e!367485 (not (= (head!1282 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))) (c!112179 (regex!1207 (rule!1987 token!491))))))))

(declare-fun b!606450 () Bool)

(assert (=> b!606450 (= e!367482 (matchR!644 (derivativeStep!328 (regex!1207 (rule!1987 token!491)) (head!1282 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195))))) (tail!811 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195))))))))

(declare-fun b!606451 () Bool)

(declare-fun res!262699 () Bool)

(assert (=> b!606451 (=> res!262699 e!367485)))

(assert (=> b!606451 (= res!262699 (not (isEmpty!4367 (tail!811 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195)))))))))

(declare-fun b!606452 () Bool)

(assert (=> b!606452 (= e!367486 e!367487)))

(declare-fun c!112443 () Bool)

(assert (=> b!606452 (= c!112443 ((_ is EmptyLang!1541) (regex!1207 (rule!1987 token!491))))))

(declare-fun b!606453 () Bool)

(assert (=> b!606453 (= e!367487 (not lt!258810))))

(declare-fun b!606454 () Bool)

(declare-fun res!262703 () Bool)

(assert (=> b!606454 (=> (not res!262703) (not e!367483))))

(assert (=> b!606454 (= res!262703 (isEmpty!4367 (tail!811 (_1!3730 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 (size!4761 Nil!6051) lt!258195 lt!258195 (size!4761 lt!258195))))))))

(assert (= (and d!213829 c!112441) b!606442))

(assert (= (and d!213829 (not c!112441)) b!606450))

(assert (= (and d!213829 c!112442) b!606446))

(assert (= (and d!213829 (not c!112442)) b!606452))

(assert (= (and b!606452 c!112443) b!606453))

(assert (= (and b!606452 (not c!112443)) b!606447))

(assert (= (and b!606447 (not res!262700)) b!606445))

(assert (= (and b!606445 res!262697) b!606441))

(assert (= (and b!606441 res!262701) b!606454))

(assert (= (and b!606454 res!262703) b!606448))

(assert (= (and b!606445 (not res!262702)) b!606444))

(assert (= (and b!606444 res!262698) b!606443))

(assert (= (and b!606443 (not res!262704)) b!606451))

(assert (= (and b!606451 (not res!262699)) b!606449))

(assert (= (or b!606446 b!606441 b!606443) bm!40779))

(declare-fun m!873001 () Bool)

(assert (=> b!606450 m!873001))

(assert (=> b!606450 m!873001))

(declare-fun m!873003 () Bool)

(assert (=> b!606450 m!873003))

(declare-fun m!873005 () Bool)

(assert (=> b!606450 m!873005))

(assert (=> b!606450 m!873003))

(assert (=> b!606450 m!873005))

(declare-fun m!873007 () Bool)

(assert (=> b!606450 m!873007))

(assert (=> b!606454 m!873005))

(assert (=> b!606454 m!873005))

(declare-fun m!873009 () Bool)

(assert (=> b!606454 m!873009))

(assert (=> b!606448 m!873001))

(assert (=> b!606449 m!873001))

(assert (=> b!606442 m!871295))

(assert (=> bm!40779 m!871565))

(assert (=> d!213829 m!871565))

(assert (=> d!213829 m!871293))

(assert (=> b!606451 m!873005))

(assert (=> b!606451 m!873005))

(assert (=> b!606451 m!873009))

(assert (=> b!605502 d!213829))

(assert (=> b!605502 d!213475))

(assert (=> b!605502 d!213615))

(assert (=> b!605502 d!213337))

(declare-fun d!213831 () Bool)

(declare-fun lt!258811 () Int)

(assert (=> d!213831 (>= lt!258811 0)))

(declare-fun e!367488 () Int)

(assert (=> d!213831 (= lt!258811 e!367488)))

(declare-fun c!112444 () Bool)

(assert (=> d!213831 (= c!112444 ((_ is Nil!6051) (t!80332 lt!258196)))))

(assert (=> d!213831 (= (size!4761 (t!80332 lt!258196)) lt!258811)))

(declare-fun b!606455 () Bool)

(assert (=> b!606455 (= e!367488 0)))

(declare-fun b!606456 () Bool)

(assert (=> b!606456 (= e!367488 (+ 1 (size!4761 (t!80332 (t!80332 lt!258196)))))))

(assert (= (and d!213831 c!112444) b!606455))

(assert (= (and d!213831 (not c!112444)) b!606456))

(declare-fun m!873011 () Bool)

(assert (=> b!606456 m!873011))

(assert (=> b!605406 d!213831))

(declare-fun d!213833 () Bool)

(assert (=> d!213833 true))

(declare-fun lambda!16151 () Int)

(declare-fun order!4845 () Int)

(declare-fun dynLambda!3518 (Int Int) Int)

(assert (=> d!213833 (< (dynLambda!3516 order!4843 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) (dynLambda!3518 order!4845 lambda!16151))))

(declare-fun Forall2!232 (Int) Bool)

(assert (=> d!213833 (= (equivClasses!466 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) (Forall2!232 lambda!16151))))

(declare-fun bs!71344 () Bool)

(assert (= bs!71344 d!213833))

(declare-fun m!873013 () Bool)

(assert (=> bs!71344 m!873013))

(assert (=> b!605346 d!213833))

(declare-fun d!213835 () Bool)

(declare-fun lt!258812 () Int)

(assert (=> d!213835 (>= lt!258812 0)))

(declare-fun e!367491 () Int)

(assert (=> d!213835 (= lt!258812 e!367491)))

(declare-fun c!112445 () Bool)

(assert (=> d!213835 (= c!112445 ((_ is Nil!6051) lt!258267))))

(assert (=> d!213835 (= (size!4761 lt!258267) lt!258812)))

(declare-fun b!606461 () Bool)

(assert (=> b!606461 (= e!367491 0)))

(declare-fun b!606462 () Bool)

(assert (=> b!606462 (= e!367491 (+ 1 (size!4761 (t!80332 lt!258267))))))

(assert (= (and d!213835 c!112445) b!606461))

(assert (= (and d!213835 (not c!112445)) b!606462))

(declare-fun m!873015 () Bool)

(assert (=> b!606462 m!873015))

(assert (=> b!605273 d!213835))

(assert (=> b!605273 d!213215))

(declare-fun d!213837 () Bool)

(declare-fun lt!258813 () Int)

(assert (=> d!213837 (>= lt!258813 0)))

(declare-fun e!367492 () Int)

(assert (=> d!213837 (= lt!258813 e!367492)))

(declare-fun c!112446 () Bool)

(assert (=> d!213837 (= c!112446 ((_ is Nil!6051) suffix!1342))))

(assert (=> d!213837 (= (size!4761 suffix!1342) lt!258813)))

(declare-fun b!606463 () Bool)

(assert (=> b!606463 (= e!367492 0)))

(declare-fun b!606464 () Bool)

(assert (=> b!606464 (= e!367492 (+ 1 (size!4761 (t!80332 suffix!1342))))))

(assert (= (and d!213837 c!112446) b!606463))

(assert (= (and d!213837 (not c!112446)) b!606464))

(declare-fun m!873017 () Bool)

(assert (=> b!606464 m!873017))

(assert (=> b!605273 d!213837))

(assert (=> b!605398 d!213783))

(declare-fun d!213839 () Bool)

(assert (=> d!213839 (= (head!1282 lt!258195) (h!11452 lt!258195))))

(assert (=> b!605398 d!213839))

(declare-fun b!606467 () Bool)

(declare-fun e!367493 () Bool)

(assert (=> b!606467 (= e!367493 (isPrefix!835 (tail!811 (tail!811 lt!258194)) (tail!811 (tail!811 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174)))))))))

(declare-fun b!606465 () Bool)

(declare-fun e!367495 () Bool)

(assert (=> b!606465 (= e!367495 e!367493)))

(declare-fun res!262707 () Bool)

(assert (=> b!606465 (=> (not res!262707) (not e!367493))))

(assert (=> b!606465 (= res!262707 (not ((_ is Nil!6051) (tail!811 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174)))))))))

(declare-fun d!213841 () Bool)

(declare-fun e!367494 () Bool)

(assert (=> d!213841 e!367494))

(declare-fun res!262709 () Bool)

(assert (=> d!213841 (=> res!262709 e!367494)))

(declare-fun lt!258814 () Bool)

(assert (=> d!213841 (= res!262709 (not lt!258814))))

(assert (=> d!213841 (= lt!258814 e!367495)))

(declare-fun res!262710 () Bool)

(assert (=> d!213841 (=> res!262710 e!367495)))

(assert (=> d!213841 (= res!262710 ((_ is Nil!6051) (tail!811 lt!258194)))))

(assert (=> d!213841 (= (isPrefix!835 (tail!811 lt!258194) (tail!811 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174))))) lt!258814)))

(declare-fun b!606468 () Bool)

(assert (=> b!606468 (= e!367494 (>= (size!4761 (tail!811 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174))))) (size!4761 (tail!811 lt!258194))))))

(declare-fun b!606466 () Bool)

(declare-fun res!262708 () Bool)

(assert (=> b!606466 (=> (not res!262708) (not e!367493))))

(assert (=> b!606466 (= res!262708 (= (head!1282 (tail!811 lt!258194)) (head!1282 (tail!811 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174)))))))))

(assert (= (and d!213841 (not res!262710)) b!606465))

(assert (= (and b!606465 res!262707) b!606466))

(assert (= (and b!606466 res!262708) b!606467))

(assert (= (and d!213841 (not res!262709)) b!606468))

(assert (=> b!606467 m!871429))

(declare-fun m!873019 () Bool)

(assert (=> b!606467 m!873019))

(assert (=> b!606467 m!871433))

(declare-fun m!873021 () Bool)

(assert (=> b!606467 m!873021))

(assert (=> b!606467 m!873019))

(assert (=> b!606467 m!873021))

(declare-fun m!873023 () Bool)

(assert (=> b!606467 m!873023))

(assert (=> b!606468 m!871433))

(declare-fun m!873025 () Bool)

(assert (=> b!606468 m!873025))

(assert (=> b!606468 m!871429))

(declare-fun m!873027 () Bool)

(assert (=> b!606468 m!873027))

(assert (=> b!606466 m!871429))

(declare-fun m!873029 () Bool)

(assert (=> b!606466 m!873029))

(assert (=> b!606466 m!871433))

(declare-fun m!873031 () Bool)

(assert (=> b!606466 m!873031))

(assert (=> b!605403 d!213841))

(declare-fun d!213843 () Bool)

(assert (=> d!213843 (= (tail!811 lt!258194) (t!80332 lt!258194))))

(assert (=> b!605403 d!213843))

(declare-fun d!213845 () Bool)

(assert (=> d!213845 (= (tail!811 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174)))) (t!80332 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174)))))))

(assert (=> b!605403 d!213845))

(declare-fun bs!71345 () Bool)

(declare-fun d!213847 () Bool)

(assert (= bs!71345 (and d!213847 d!213389)))

(declare-fun lambda!16152 () Int)

(assert (=> bs!71345 (= (and (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (h!11453 rules!3103)))) (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (h!11453 rules!3103))))) (= lambda!16152 lambda!16126))))

(declare-fun bs!71346 () Bool)

(assert (= bs!71346 (and d!213847 d!213469)))

(assert (=> bs!71346 (= lambda!16152 lambda!16130)))

(declare-fun bs!71347 () Bool)

(assert (= bs!71347 (and d!213847 d!213737)))

(assert (=> bs!71347 (= (and (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))) (= lambda!16152 lambda!16147))))

(declare-fun bs!71348 () Bool)

(assert (= bs!71348 (and d!213847 d!213805)))

(assert (=> bs!71348 (= (and (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))) (= lambda!16152 lambda!16148))))

(assert (=> d!213847 true))

(assert (=> d!213847 (< (dynLambda!3514 order!4839 (toChars!1969 (transformation!1207 (rule!1987 token!491)))) (dynLambda!3515 order!4841 lambda!16152))))

(assert (=> d!213847 true))

(assert (=> d!213847 (< (dynLambda!3516 order!4843 (toValue!2110 (transformation!1207 (rule!1987 token!491)))) (dynLambda!3515 order!4841 lambda!16152))))

(assert (=> d!213847 (= (semiInverseModEq!483 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))) (Forall!306 lambda!16152))))

(declare-fun bs!71349 () Bool)

(assert (= bs!71349 d!213847))

(declare-fun m!873033 () Bool)

(assert (=> bs!71349 m!873033))

(assert (=> d!213171 d!213847))

(declare-fun d!213849 () Bool)

(assert (=> d!213849 (= (inv!7694 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491))) (isBalanced!531 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491)))))))

(declare-fun bs!71350 () Bool)

(assert (= bs!71350 d!213849))

(declare-fun m!873035 () Bool)

(assert (=> bs!71350 m!873035))

(assert (=> tb!52839 d!213849))

(declare-fun d!213851 () Bool)

(assert (=> d!213851 (= (isEmpty!4370 lt!258179) (not ((_ is Some!1557) lt!258179)))))

(assert (=> d!213071 d!213851))

(declare-fun d!213853 () Bool)

(declare-fun lt!258815 () Int)

(assert (=> d!213853 (>= lt!258815 0)))

(declare-fun e!367496 () Int)

(assert (=> d!213853 (= lt!258815 e!367496)))

(declare-fun c!112447 () Bool)

(assert (=> d!213853 (= c!112447 ((_ is Nil!6051) (_2!3728 (get!2325 lt!258229))))))

(assert (=> d!213853 (= (size!4761 (_2!3728 (get!2325 lt!258229))) lt!258815)))

(declare-fun b!606469 () Bool)

(assert (=> b!606469 (= e!367496 0)))

(declare-fun b!606470 () Bool)

(assert (=> b!606470 (= e!367496 (+ 1 (size!4761 (t!80332 (_2!3728 (get!2325 lt!258229))))))))

(assert (= (and d!213853 c!112447) b!606469))

(assert (= (and d!213853 (not c!112447)) b!606470))

(declare-fun m!873037 () Bool)

(assert (=> b!606470 m!873037))

(assert (=> b!605200 d!213853))

(assert (=> b!605200 d!213639))

(assert (=> b!605200 d!213337))

(declare-fun bs!71351 () Bool)

(declare-fun d!213855 () Bool)

(assert (= bs!71351 (and d!213855 d!213833)))

(declare-fun lambda!16153 () Int)

(assert (=> bs!71351 (= (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) (= lambda!16153 lambda!16151))))

(assert (=> d!213855 true))

(assert (=> d!213855 (< (dynLambda!3516 order!4843 (toValue!2110 (transformation!1207 (h!11453 rules!3103)))) (dynLambda!3518 order!4845 lambda!16153))))

(assert (=> d!213855 (= (equivClasses!466 (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (h!11453 rules!3103)))) (Forall2!232 lambda!16153))))

(declare-fun bs!71352 () Bool)

(assert (= bs!71352 d!213855))

(declare-fun m!873039 () Bool)

(assert (=> bs!71352 m!873039))

(assert (=> b!605533 d!213855))

(assert (=> d!213253 d!213223))

(assert (=> d!213253 d!213259))

(assert (=> d!213253 d!213269))

(declare-fun d!213857 () Bool)

(assert (=> d!213857 (= (maxPrefixOneRule!454 thiss!22590 (rule!1987 token!491) lt!258195) (Some!1557 (tuple2!6929 (Token!2151 (apply!1460 (transformation!1207 (rule!1987 token!491)) (seqFromList!1383 lt!258196)) (rule!1987 token!491) (size!4761 lt!258196) lt!258196) suffix!1342)))))

(assert (=> d!213857 true))

(declare-fun _$59!273 () Unit!11030)

(assert (=> d!213857 (= (choose!4439 thiss!22590 rules!3103 lt!258196 lt!258195 suffix!1342 (rule!1987 token!491)) _$59!273)))

(declare-fun bs!71353 () Bool)

(assert (= bs!71353 d!213857))

(assert (=> bs!71353 m!870921))

(assert (=> bs!71353 m!870907))

(assert (=> bs!71353 m!870907))

(assert (=> bs!71353 m!870909))

(assert (=> bs!71353 m!870925))

(assert (=> d!213253 d!213857))

(assert (=> d!213253 d!213257))

(assert (=> d!213253 d!213215))

(assert (=> b!605325 d!213783))

(declare-fun b!606471 () Bool)

(declare-fun res!262715 () Bool)

(declare-fun e!367499 () Bool)

(assert (=> b!606471 (=> (not res!262715) (not e!367499))))

(declare-fun call!40785 () Bool)

(assert (=> b!606471 (= res!262715 (not call!40785))))

(declare-fun b!606472 () Bool)

(declare-fun e!367498 () Bool)

(assert (=> b!606472 (= e!367498 (nullable!441 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258255))))))))

(declare-fun d!213859 () Bool)

(declare-fun e!367502 () Bool)

(assert (=> d!213859 e!367502))

(declare-fun c!112449 () Bool)

(assert (=> d!213859 (= c!112449 ((_ is EmptyExpr!1541) (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258255))))))))

(declare-fun lt!258816 () Bool)

(assert (=> d!213859 (= lt!258816 e!367498)))

(declare-fun c!112448 () Bool)

(assert (=> d!213859 (= c!112448 (isEmpty!4367 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255))))))))

(assert (=> d!213859 (validRegex!536 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))))))

(assert (=> d!213859 (= (matchR!644 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255))))) lt!258816)))

(declare-fun b!606473 () Bool)

(declare-fun e!367500 () Bool)

(declare-fun e!367501 () Bool)

(assert (=> b!606473 (= e!367500 e!367501)))

(declare-fun res!262718 () Bool)

(assert (=> b!606473 (=> res!262718 e!367501)))

(assert (=> b!606473 (= res!262718 call!40785)))

(declare-fun b!606474 () Bool)

(declare-fun e!367497 () Bool)

(assert (=> b!606474 (= e!367497 e!367500)))

(declare-fun res!262712 () Bool)

(assert (=> b!606474 (=> (not res!262712) (not e!367500))))

(assert (=> b!606474 (= res!262712 (not lt!258816))))

(declare-fun b!606475 () Bool)

(declare-fun res!262716 () Bool)

(assert (=> b!606475 (=> res!262716 e!367497)))

(assert (=> b!606475 (= res!262716 e!367499)))

(declare-fun res!262711 () Bool)

(assert (=> b!606475 (=> (not res!262711) (not e!367499))))

(assert (=> b!606475 (= res!262711 lt!258816)))

(declare-fun b!606476 () Bool)

(assert (=> b!606476 (= e!367502 (= lt!258816 call!40785))))

(declare-fun b!606477 () Bool)

(declare-fun res!262714 () Bool)

(assert (=> b!606477 (=> res!262714 e!367497)))

(assert (=> b!606477 (= res!262714 (not ((_ is ElementMatch!1541) (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))))))))

(declare-fun e!367503 () Bool)

(assert (=> b!606477 (= e!367503 e!367497)))

(declare-fun bm!40780 () Bool)

(assert (=> bm!40780 (= call!40785 (isEmpty!4367 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255))))))))

(declare-fun b!606478 () Bool)

(assert (=> b!606478 (= e!367499 (= (head!1282 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255))))) (c!112179 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))))))))

(declare-fun b!606479 () Bool)

(assert (=> b!606479 (= e!367501 (not (= (head!1282 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255))))) (c!112179 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258255))))))))))

(declare-fun b!606480 () Bool)

(assert (=> b!606480 (= e!367498 (matchR!644 (derivativeStep!328 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))) (head!1282 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255)))))) (tail!811 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255)))))))))

(declare-fun b!606481 () Bool)

(declare-fun res!262713 () Bool)

(assert (=> b!606481 (=> res!262713 e!367501)))

(assert (=> b!606481 (= res!262713 (not (isEmpty!4367 (tail!811 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255))))))))))

(declare-fun b!606482 () Bool)

(assert (=> b!606482 (= e!367502 e!367503)))

(declare-fun c!112450 () Bool)

(assert (=> b!606482 (= c!112450 ((_ is EmptyLang!1541) (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258255))))))))

(declare-fun b!606483 () Bool)

(assert (=> b!606483 (= e!367503 (not lt!258816))))

(declare-fun b!606484 () Bool)

(declare-fun res!262717 () Bool)

(assert (=> b!606484 (=> (not res!262717) (not e!367499))))

(assert (=> b!606484 (= res!262717 (isEmpty!4367 (tail!811 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258255)))))))))

(assert (= (and d!213859 c!112448) b!606472))

(assert (= (and d!213859 (not c!112448)) b!606480))

(assert (= (and d!213859 c!112449) b!606476))

(assert (= (and d!213859 (not c!112449)) b!606482))

(assert (= (and b!606482 c!112450) b!606483))

(assert (= (and b!606482 (not c!112450)) b!606477))

(assert (= (and b!606477 (not res!262714)) b!606475))

(assert (= (and b!606475 res!262711) b!606471))

(assert (= (and b!606471 res!262715) b!606484))

(assert (= (and b!606484 res!262717) b!606478))

(assert (= (and b!606475 (not res!262716)) b!606474))

(assert (= (and b!606474 res!262712) b!606473))

(assert (= (and b!606473 (not res!262718)) b!606481))

(assert (= (and b!606481 (not res!262713)) b!606479))

(assert (= (or b!606476 b!606471 b!606473) bm!40780))

(assert (=> b!606480 m!871135))

(declare-fun m!873041 () Bool)

(assert (=> b!606480 m!873041))

(assert (=> b!606480 m!873041))

(declare-fun m!873043 () Bool)

(assert (=> b!606480 m!873043))

(assert (=> b!606480 m!871135))

(declare-fun m!873045 () Bool)

(assert (=> b!606480 m!873045))

(assert (=> b!606480 m!873043))

(assert (=> b!606480 m!873045))

(declare-fun m!873047 () Bool)

(assert (=> b!606480 m!873047))

(assert (=> b!606484 m!871135))

(assert (=> b!606484 m!873045))

(assert (=> b!606484 m!873045))

(declare-fun m!873049 () Bool)

(assert (=> b!606484 m!873049))

(assert (=> b!606478 m!871135))

(assert (=> b!606478 m!873041))

(assert (=> b!606479 m!871135))

(assert (=> b!606479 m!873041))

(declare-fun m!873051 () Bool)

(assert (=> b!606472 m!873051))

(assert (=> bm!40780 m!871135))

(declare-fun m!873053 () Bool)

(assert (=> bm!40780 m!873053))

(assert (=> d!213859 m!871135))

(assert (=> d!213859 m!873053))

(declare-fun m!873055 () Bool)

(assert (=> d!213859 m!873055))

(assert (=> b!606481 m!871135))

(assert (=> b!606481 m!873045))

(assert (=> b!606481 m!873045))

(assert (=> b!606481 m!873049))

(assert (=> b!605238 d!213859))

(assert (=> b!605238 d!213723))

(assert (=> b!605238 d!213743))

(assert (=> b!605238 d!213745))

(declare-fun b!606485 () Bool)

(declare-fun e!367505 () List!6061)

(assert (=> b!606485 (= e!367505 (_2!3728 (get!2325 lt!258370)))))

(declare-fun d!213861 () Bool)

(declare-fun e!367504 () Bool)

(assert (=> d!213861 e!367504))

(declare-fun res!262720 () Bool)

(assert (=> d!213861 (=> (not res!262720) (not e!367504))))

(declare-fun lt!258817 () List!6061)

(assert (=> d!213861 (= res!262720 (= (content!1098 lt!258817) ((_ map or) (content!1098 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370))))) (content!1098 (_2!3728 (get!2325 lt!258370))))))))

(assert (=> d!213861 (= lt!258817 e!367505)))

(declare-fun c!112451 () Bool)

(assert (=> d!213861 (= c!112451 ((_ is Nil!6051) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370))))))))

(assert (=> d!213861 (= (++!1695 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370)))) (_2!3728 (get!2325 lt!258370))) lt!258817)))

(declare-fun b!606486 () Bool)

(assert (=> b!606486 (= e!367505 (Cons!6051 (h!11452 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370))))) (++!1695 (t!80332 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370))))) (_2!3728 (get!2325 lt!258370)))))))

(declare-fun b!606488 () Bool)

(assert (=> b!606488 (= e!367504 (or (not (= (_2!3728 (get!2325 lt!258370)) Nil!6051)) (= lt!258817 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370)))))))))

(declare-fun b!606487 () Bool)

(declare-fun res!262719 () Bool)

(assert (=> b!606487 (=> (not res!262719) (not e!367504))))

(assert (=> b!606487 (= res!262719 (= (size!4761 lt!258817) (+ (size!4761 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370))))) (size!4761 (_2!3728 (get!2325 lt!258370))))))))

(assert (= (and d!213861 c!112451) b!606485))

(assert (= (and d!213861 (not c!112451)) b!606486))

(assert (= (and d!213861 res!262720) b!606487))

(assert (= (and b!606487 res!262719) b!606488))

(declare-fun m!873057 () Bool)

(assert (=> d!213861 m!873057))

(assert (=> d!213861 m!871597))

(declare-fun m!873059 () Bool)

(assert (=> d!213861 m!873059))

(declare-fun m!873061 () Bool)

(assert (=> d!213861 m!873061))

(declare-fun m!873063 () Bool)

(assert (=> b!606486 m!873063))

(declare-fun m!873065 () Bool)

(assert (=> b!606487 m!873065))

(assert (=> b!606487 m!871597))

(declare-fun m!873067 () Bool)

(assert (=> b!606487 m!873067))

(assert (=> b!606487 m!871627))

(assert (=> b!605515 d!213861))

(declare-fun d!213863 () Bool)

(assert (=> d!213863 (= (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370)))) (list!2544 (c!112180 (charsOf!836 (_1!3728 (get!2325 lt!258370))))))))

(declare-fun bs!71354 () Bool)

(assert (= bs!71354 d!213863))

(declare-fun m!873069 () Bool)

(assert (=> bs!71354 m!873069))

(assert (=> b!605515 d!213863))

(declare-fun d!213865 () Bool)

(declare-fun lt!258818 () BalanceConc!3856)

(assert (=> d!213865 (= (list!2542 lt!258818) (originalCharacters!1246 (_1!3728 (get!2325 lt!258370))))))

(assert (=> d!213865 (= lt!258818 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370))))) (value!39266 (_1!3728 (get!2325 lt!258370)))))))

(assert (=> d!213865 (= (charsOf!836 (_1!3728 (get!2325 lt!258370))) lt!258818)))

(declare-fun b_lambda!24033 () Bool)

(assert (=> (not b_lambda!24033) (not d!213865)))

(declare-fun t!80544 () Bool)

(declare-fun tb!53009 () Bool)

(assert (=> (and b!605121 (= (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370)))))) t!80544) tb!53009))

(declare-fun b!606489 () Bool)

(declare-fun e!367506 () Bool)

(declare-fun tp!188252 () Bool)

(assert (=> b!606489 (= e!367506 (and (inv!7693 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370))))) (value!39266 (_1!3728 (get!2325 lt!258370)))))) tp!188252))))

(declare-fun result!59646 () Bool)

(assert (=> tb!53009 (= result!59646 (and (inv!7694 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370))))) (value!39266 (_1!3728 (get!2325 lt!258370))))) e!367506))))

(assert (= tb!53009 b!606489))

(declare-fun m!873071 () Bool)

(assert (=> b!606489 m!873071))

(declare-fun m!873073 () Bool)

(assert (=> tb!53009 m!873073))

(assert (=> d!213865 t!80544))

(declare-fun b_and!60057 () Bool)

(assert (= b_and!60039 (and (=> t!80544 result!59646) b_and!60057)))

(declare-fun tb!53011 () Bool)

(declare-fun t!80546 () Bool)

(assert (=> (and b!605099 (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370)))))) t!80546) tb!53011))

(declare-fun result!59648 () Bool)

(assert (= result!59648 result!59646))

(assert (=> d!213865 t!80546))

(declare-fun b_and!60059 () Bool)

(assert (= b_and!60041 (and (=> t!80546 result!59648) b_and!60059)))

(declare-fun t!80548 () Bool)

(declare-fun tb!53013 () Bool)

(assert (=> (and b!605565 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370)))))) t!80548) tb!53013))

(declare-fun result!59650 () Bool)

(assert (= result!59650 result!59646))

(assert (=> d!213865 t!80548))

(declare-fun b_and!60061 () Bool)

(assert (= b_and!60043 (and (=> t!80548 result!59650) b_and!60061)))

(declare-fun m!873075 () Bool)

(assert (=> d!213865 m!873075))

(declare-fun m!873077 () Bool)

(assert (=> d!213865 m!873077))

(assert (=> b!605515 d!213865))

(assert (=> b!605515 d!213769))

(declare-fun d!213867 () Bool)

(declare-fun c!112452 () Bool)

(assert (=> d!213867 (= c!112452 ((_ is Node!1924) (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491)))))))

(declare-fun e!367507 () Bool)

(assert (=> d!213867 (= (inv!7693 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491)))) e!367507)))

(declare-fun b!606490 () Bool)

(assert (=> b!606490 (= e!367507 (inv!7695 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491)))))))

(declare-fun b!606491 () Bool)

(declare-fun e!367508 () Bool)

(assert (=> b!606491 (= e!367507 e!367508)))

(declare-fun res!262721 () Bool)

(assert (=> b!606491 (= res!262721 (not ((_ is Leaf!3035) (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491))))))))

(assert (=> b!606491 (=> res!262721 e!367508)))

(declare-fun b!606492 () Bool)

(assert (=> b!606492 (= e!367508 (inv!7696 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491)))))))

(assert (= (and d!213867 c!112452) b!606490))

(assert (= (and d!213867 (not c!112452)) b!606491))

(assert (= (and b!606491 (not res!262721)) b!606492))

(declare-fun m!873079 () Bool)

(assert (=> b!606490 m!873079))

(declare-fun m!873081 () Bool)

(assert (=> b!606492 m!873081))

(assert (=> b!605530 d!213867))

(declare-fun d!213869 () Bool)

(assert (=> d!213869 (= (head!1282 lt!258196) (h!11452 lt!258196))))

(assert (=> b!605335 d!213869))

(assert (=> b!605335 d!213785))

(declare-fun d!213871 () Bool)

(assert (=> d!213871 (= (isEmpty!4370 lt!258370) (not ((_ is Some!1557) lt!258370)))))

(assert (=> d!213263 d!213871))

(declare-fun d!213873 () Bool)

(assert (=> d!213873 (= (isEmpty!4367 (_1!3730 lt!258373)) ((_ is Nil!6051) (_1!3730 lt!258373)))))

(assert (=> d!213263 d!213873))

(declare-fun d!213875 () Bool)

(declare-fun lt!258836 () tuple2!6932)

(assert (=> d!213875 (= (++!1695 (_1!3730 lt!258836) (_2!3730 lt!258836)) input!2705)))

(declare-fun sizeTr!38 (List!6061 Int) Int)

(assert (=> d!213875 (= lt!258836 (findLongestMatchInner!201 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) Nil!6051 0 input!2705 input!2705 (sizeTr!38 input!2705 0)))))

(declare-fun lt!258840 () Unit!11030)

(declare-fun lt!258837 () Unit!11030)

(assert (=> d!213875 (= lt!258840 lt!258837)))

(declare-fun lt!258841 () List!6061)

(declare-fun lt!258842 () Int)

(assert (=> d!213875 (= (sizeTr!38 lt!258841 lt!258842) (+ (size!4761 lt!258841) lt!258842))))

(declare-fun lemmaSizeTrEqualsSize!38 (List!6061 Int) Unit!11030)

(assert (=> d!213875 (= lt!258837 (lemmaSizeTrEqualsSize!38 lt!258841 lt!258842))))

(assert (=> d!213875 (= lt!258842 0)))

(assert (=> d!213875 (= lt!258841 Nil!6051)))

(declare-fun lt!258835 () Unit!11030)

(declare-fun lt!258839 () Unit!11030)

(assert (=> d!213875 (= lt!258835 lt!258839)))

(declare-fun lt!258838 () Int)

(assert (=> d!213875 (= (sizeTr!38 input!2705 lt!258838) (+ (size!4761 input!2705) lt!258838))))

(assert (=> d!213875 (= lt!258839 (lemmaSizeTrEqualsSize!38 input!2705 lt!258838))))

(assert (=> d!213875 (= lt!258838 0)))

(assert (=> d!213875 (validRegex!536 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))

(assert (=> d!213875 (= (findLongestMatch!180 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) input!2705) lt!258836)))

(declare-fun bs!71355 () Bool)

(assert (= bs!71355 d!213875))

(declare-fun m!873083 () Bool)

(assert (=> bs!71355 m!873083))

(declare-fun m!873085 () Bool)

(assert (=> bs!71355 m!873085))

(declare-fun m!873087 () Bool)

(assert (=> bs!71355 m!873087))

(declare-fun m!873089 () Bool)

(assert (=> bs!71355 m!873089))

(assert (=> bs!71355 m!871121))

(declare-fun m!873091 () Bool)

(assert (=> bs!71355 m!873091))

(declare-fun m!873093 () Bool)

(assert (=> bs!71355 m!873093))

(declare-fun m!873095 () Bool)

(assert (=> bs!71355 m!873095))

(assert (=> bs!71355 m!871271))

(assert (=> bs!71355 m!873091))

(declare-fun m!873097 () Bool)

(assert (=> bs!71355 m!873097))

(assert (=> d!213263 d!213875))

(assert (=> d!213263 d!213157))

(declare-fun d!213877 () Bool)

(assert (=> d!213877 (= (isDefined!1369 lt!258229) (not (isEmpty!4370 lt!258229)))))

(declare-fun bs!71356 () Bool)

(assert (= bs!71356 d!213877))

(assert (=> bs!71356 m!871087))

(assert (=> b!605204 d!213877))

(declare-fun d!213879 () Bool)

(declare-fun e!367509 () Bool)

(assert (=> d!213879 e!367509))

(declare-fun res!262722 () Bool)

(assert (=> d!213879 (=> (not res!262722) (not e!367509))))

(declare-fun lt!258843 () BalanceConc!3856)

(assert (=> d!213879 (= res!262722 (= (list!2542 lt!258843) lt!258196))))

(assert (=> d!213879 (= lt!258843 (BalanceConc!3857 (fromList!282 lt!258196)))))

(assert (=> d!213879 (= (fromListB!610 lt!258196) lt!258843)))

(declare-fun b!606493 () Bool)

(assert (=> b!606493 (= e!367509 (isBalanced!531 (fromList!282 lt!258196)))))

(assert (= (and d!213879 res!262722) b!606493))

(declare-fun m!873099 () Bool)

(assert (=> d!213879 m!873099))

(declare-fun m!873101 () Bool)

(assert (=> d!213879 m!873101))

(assert (=> b!606493 m!873101))

(assert (=> b!606493 m!873101))

(declare-fun m!873103 () Bool)

(assert (=> b!606493 m!873103))

(assert (=> d!213259 d!213879))

(declare-fun b!606494 () Bool)

(declare-fun res!262723 () Bool)

(declare-fun e!367511 () Bool)

(assert (=> b!606494 (=> res!262723 e!367511)))

(assert (=> b!606494 (= res!262723 (not ((_ is IntegerValue!3695) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 lt!258194)))))))

(declare-fun e!367510 () Bool)

(assert (=> b!606494 (= e!367510 e!367511)))

(declare-fun b!606496 () Bool)

(declare-fun e!367512 () Bool)

(assert (=> b!606496 (= e!367512 (inv!16 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 lt!258194))))))

(declare-fun b!606497 () Bool)

(assert (=> b!606497 (= e!367512 e!367510)))

(declare-fun c!112454 () Bool)

(assert (=> b!606497 (= c!112454 ((_ is IntegerValue!3694) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 lt!258194))))))

(declare-fun b!606498 () Bool)

(assert (=> b!606498 (= e!367510 (inv!17 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 lt!258194))))))

(declare-fun d!213881 () Bool)

(declare-fun c!112453 () Bool)

(assert (=> d!213881 (= c!112453 ((_ is IntegerValue!3693) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 lt!258194))))))

(assert (=> d!213881 (= (inv!21 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 lt!258194))) e!367512)))

(declare-fun b!606495 () Bool)

(assert (=> b!606495 (= e!367511 (inv!15 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (seqFromList!1383 lt!258194))))))

(assert (= (and d!213881 c!112453) b!606496))

(assert (= (and d!213881 (not c!112453)) b!606497))

(assert (= (and b!606497 c!112454) b!606498))

(assert (= (and b!606497 (not c!112454)) b!606494))

(assert (= (and b!606494 (not res!262723)) b!606495))

(declare-fun m!873105 () Bool)

(assert (=> b!606496 m!873105))

(declare-fun m!873107 () Bool)

(assert (=> b!606498 m!873107))

(declare-fun m!873109 () Bool)

(assert (=> b!606495 m!873109))

(assert (=> tb!52819 d!213881))

(assert (=> b!605242 d!213723))

(declare-fun d!213883 () Bool)

(assert (=> d!213883 (= (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258255))))) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255))))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258255))))))))

(declare-fun b_lambda!24035 () Bool)

(assert (=> (not b_lambda!24035) (not d!213883)))

(declare-fun t!80550 () Bool)

(declare-fun tb!53015 () Bool)

(assert (=> (and b!605121 (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))))) t!80550) tb!53015))

(declare-fun result!59652 () Bool)

(assert (=> tb!53015 (= result!59652 (inv!21 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255))))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258255)))))))))

(declare-fun m!873111 () Bool)

(assert (=> tb!53015 m!873111))

(assert (=> d!213883 t!80550))

(declare-fun b_and!60063 () Bool)

(assert (= b_and!60051 (and (=> t!80550 result!59652) b_and!60063)))

(declare-fun tb!53017 () Bool)

(declare-fun t!80552 () Bool)

(assert (=> (and b!605099 (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))))) t!80552) tb!53017))

(declare-fun result!59654 () Bool)

(assert (= result!59654 result!59652))

(assert (=> d!213883 t!80552))

(declare-fun b_and!60065 () Bool)

(assert (= b_and!60053 (and (=> t!80552 result!59654) b_and!60065)))

(declare-fun t!80554 () Bool)

(declare-fun tb!53019 () Bool)

(assert (=> (and b!605565 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))))) t!80554) tb!53019))

(declare-fun result!59656 () Bool)

(assert (= result!59656 result!59652))

(assert (=> d!213883 t!80554))

(declare-fun b_and!60067 () Bool)

(assert (= b_and!60055 (and (=> t!80554 result!59656) b_and!60067)))

(assert (=> d!213883 m!871145))

(declare-fun m!873113 () Bool)

(assert (=> d!213883 m!873113))

(assert (=> b!605242 d!213883))

(declare-fun d!213885 () Bool)

(assert (=> d!213885 (= (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258255)))) (fromListB!610 (originalCharacters!1246 (_1!3728 (get!2325 lt!258255)))))))

(declare-fun bs!71357 () Bool)

(assert (= bs!71357 d!213885))

(declare-fun m!873115 () Bool)

(assert (=> bs!71357 m!873115))

(assert (=> b!605242 d!213885))

(declare-fun d!213887 () Bool)

(declare-fun lt!258844 () Int)

(assert (=> d!213887 (>= lt!258844 0)))

(declare-fun e!367514 () Int)

(assert (=> d!213887 (= lt!258844 e!367514)))

(declare-fun c!112455 () Bool)

(assert (=> d!213887 (= c!112455 ((_ is Nil!6051) (t!80332 (originalCharacters!1246 (_1!3728 (v!16458 lt!258174))))))))

(assert (=> d!213887 (= (size!4761 (t!80332 (originalCharacters!1246 (_1!3728 (v!16458 lt!258174))))) lt!258844)))

(declare-fun b!606499 () Bool)

(assert (=> b!606499 (= e!367514 0)))

(declare-fun b!606500 () Bool)

(assert (=> b!606500 (= e!367514 (+ 1 (size!4761 (t!80332 (t!80332 (originalCharacters!1246 (_1!3728 (v!16458 lt!258174))))))))))

(assert (= (and d!213887 c!112455) b!606499))

(assert (= (and d!213887 (not c!112455)) b!606500))

(declare-fun m!873117 () Bool)

(assert (=> b!606500 m!873117))

(assert (=> b!605299 d!213887))

(assert (=> b!605519 d!213769))

(declare-fun d!213889 () Bool)

(assert (=> d!213889 (= (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370)))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258370))))) (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370))))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258370))))))))

(declare-fun b_lambda!24037 () Bool)

(assert (=> (not b_lambda!24037) (not d!213889)))

(declare-fun t!80556 () Bool)

(declare-fun tb!53021 () Bool)

(assert (=> (and b!605121 (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370)))))) t!80556) tb!53021))

(declare-fun result!59658 () Bool)

(assert (=> tb!53021 (= result!59658 (inv!21 (dynLambda!3510 (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370))))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258370)))))))))

(declare-fun m!873119 () Bool)

(assert (=> tb!53021 m!873119))

(assert (=> d!213889 t!80556))

(declare-fun b_and!60069 () Bool)

(assert (= b_and!60063 (and (=> t!80556 result!59658) b_and!60069)))

(declare-fun t!80558 () Bool)

(declare-fun tb!53023 () Bool)

(assert (=> (and b!605099 (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370)))))) t!80558) tb!53023))

(declare-fun result!59660 () Bool)

(assert (= result!59660 result!59658))

(assert (=> d!213889 t!80558))

(declare-fun b_and!60071 () Bool)

(assert (= b_and!60065 (and (=> t!80558 result!59660) b_and!60071)))

(declare-fun t!80560 () Bool)

(declare-fun tb!53025 () Bool)

(assert (=> (and b!605565 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370)))))) t!80560) tb!53025))

(declare-fun result!59662 () Bool)

(assert (= result!59662 result!59658))

(assert (=> d!213889 t!80560))

(declare-fun b_and!60073 () Bool)

(assert (= b_and!60067 (and (=> t!80560 result!59662) b_and!60073)))

(assert (=> d!213889 m!871601))

(declare-fun m!873121 () Bool)

(assert (=> d!213889 m!873121))

(assert (=> b!605519 d!213889))

(declare-fun d!213891 () Bool)

(assert (=> d!213891 (= (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258370)))) (fromListB!610 (originalCharacters!1246 (_1!3728 (get!2325 lt!258370)))))))

(declare-fun bs!71358 () Bool)

(assert (= bs!71358 d!213891))

(declare-fun m!873123 () Bool)

(assert (=> bs!71358 m!873123))

(assert (=> b!605519 d!213891))

(declare-fun d!213893 () Bool)

(declare-fun e!367517 () Bool)

(assert (=> d!213893 e!367517))

(declare-fun res!262725 () Bool)

(assert (=> d!213893 (=> res!262725 e!367517)))

(declare-fun lt!258845 () Option!1558)

(assert (=> d!213893 (= res!262725 (isEmpty!4370 lt!258845))))

(declare-fun e!367519 () Option!1558)

(assert (=> d!213893 (= lt!258845 e!367519)))

(declare-fun c!112456 () Bool)

(declare-fun lt!258848 () tuple2!6932)

(assert (=> d!213893 (= c!112456 (isEmpty!4367 (_1!3730 lt!258848)))))

(assert (=> d!213893 (= lt!258848 (findLongestMatch!180 (regex!1207 (h!11453 rules!3103)) input!2705))))

(assert (=> d!213893 (ruleValid!405 thiss!22590 (h!11453 rules!3103))))

(assert (=> d!213893 (= (maxPrefixOneRule!454 thiss!22590 (h!11453 rules!3103) input!2705) lt!258845)))

(declare-fun b!606501 () Bool)

(declare-fun res!262726 () Bool)

(declare-fun e!367516 () Bool)

(assert (=> b!606501 (=> (not res!262726) (not e!367516))))

(assert (=> b!606501 (= res!262726 (= (rule!1987 (_1!3728 (get!2325 lt!258845))) (h!11453 rules!3103)))))

(declare-fun b!606502 () Bool)

(declare-fun e!367518 () Bool)

(assert (=> b!606502 (= e!367518 (matchR!644 (regex!1207 (h!11453 rules!3103)) (_1!3730 (findLongestMatchInner!201 (regex!1207 (h!11453 rules!3103)) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))))))

(declare-fun b!606503 () Bool)

(assert (=> b!606503 (= e!367517 e!367516)))

(declare-fun res!262728 () Bool)

(assert (=> b!606503 (=> (not res!262728) (not e!367516))))

(assert (=> b!606503 (= res!262728 (matchR!644 (regex!1207 (h!11453 rules!3103)) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258845))))))))

(declare-fun b!606504 () Bool)

(declare-fun res!262724 () Bool)

(assert (=> b!606504 (=> (not res!262724) (not e!367516))))

(assert (=> b!606504 (= res!262724 (= (++!1695 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258845)))) (_2!3728 (get!2325 lt!258845))) input!2705))))

(declare-fun b!606505 () Bool)

(assert (=> b!606505 (= e!367516 (= (size!4760 (_1!3728 (get!2325 lt!258845))) (size!4761 (originalCharacters!1246 (_1!3728 (get!2325 lt!258845))))))))

(declare-fun b!606506 () Bool)

(assert (=> b!606506 (= e!367519 None!1557)))

(declare-fun b!606507 () Bool)

(declare-fun res!262727 () Bool)

(assert (=> b!606507 (=> (not res!262727) (not e!367516))))

(assert (=> b!606507 (= res!262727 (< (size!4761 (_2!3728 (get!2325 lt!258845))) (size!4761 input!2705)))))

(declare-fun b!606508 () Bool)

(declare-fun res!262730 () Bool)

(assert (=> b!606508 (=> (not res!262730) (not e!367516))))

(assert (=> b!606508 (= res!262730 (= (value!39266 (_1!3728 (get!2325 lt!258845))) (apply!1460 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258845)))) (seqFromList!1383 (originalCharacters!1246 (_1!3728 (get!2325 lt!258845)))))))))

(declare-fun b!606509 () Bool)

(assert (=> b!606509 (= e!367519 (Some!1557 (tuple2!6929 (Token!2151 (apply!1460 (transformation!1207 (h!11453 rules!3103)) (seqFromList!1383 (_1!3730 lt!258848))) (h!11453 rules!3103) (size!4763 (seqFromList!1383 (_1!3730 lt!258848))) (_1!3730 lt!258848)) (_2!3730 lt!258848))))))

(declare-fun lt!258846 () Unit!11030)

(assert (=> b!606509 (= lt!258846 (longestMatchIsAcceptedByMatchOrIsEmpty!185 (regex!1207 (h!11453 rules!3103)) input!2705))))

(declare-fun res!262729 () Bool)

(assert (=> b!606509 (= res!262729 (isEmpty!4367 (_1!3730 (findLongestMatchInner!201 (regex!1207 (h!11453 rules!3103)) Nil!6051 (size!4761 Nil!6051) input!2705 input!2705 (size!4761 input!2705)))))))

(assert (=> b!606509 (=> res!262729 e!367518)))

(assert (=> b!606509 e!367518))

(declare-fun lt!258849 () Unit!11030)

(assert (=> b!606509 (= lt!258849 lt!258846)))

(declare-fun lt!258847 () Unit!11030)

(assert (=> b!606509 (= lt!258847 (lemmaSemiInverse!240 (transformation!1207 (h!11453 rules!3103)) (seqFromList!1383 (_1!3730 lt!258848))))))

(assert (= (and d!213893 c!112456) b!606506))

(assert (= (and d!213893 (not c!112456)) b!606509))

(assert (= (and b!606509 (not res!262729)) b!606502))

(assert (= (and d!213893 (not res!262725)) b!606503))

(assert (= (and b!606503 res!262728) b!606504))

(assert (= (and b!606504 res!262724) b!606507))

(assert (= (and b!606507 res!262727) b!606501))

(assert (= (and b!606501 res!262726) b!606508))

(assert (= (and b!606508 res!262730) b!606505))

(declare-fun m!873125 () Bool)

(assert (=> b!606504 m!873125))

(declare-fun m!873127 () Bool)

(assert (=> b!606504 m!873127))

(assert (=> b!606504 m!873127))

(declare-fun m!873129 () Bool)

(assert (=> b!606504 m!873129))

(assert (=> b!606504 m!873129))

(declare-fun m!873131 () Bool)

(assert (=> b!606504 m!873131))

(assert (=> b!606508 m!873125))

(declare-fun m!873133 () Bool)

(assert (=> b!606508 m!873133))

(assert (=> b!606508 m!873133))

(declare-fun m!873135 () Bool)

(assert (=> b!606508 m!873135))

(assert (=> b!606505 m!873125))

(declare-fun m!873137 () Bool)

(assert (=> b!606505 m!873137))

(declare-fun m!873139 () Bool)

(assert (=> b!606509 m!873139))

(declare-fun m!873141 () Bool)

(assert (=> b!606509 m!873141))

(assert (=> b!606509 m!873139))

(assert (=> b!606509 m!871555))

(assert (=> b!606509 m!871121))

(declare-fun m!873143 () Bool)

(assert (=> b!606509 m!873143))

(assert (=> b!606509 m!871121))

(assert (=> b!606509 m!871555))

(declare-fun m!873145 () Bool)

(assert (=> b!606509 m!873145))

(assert (=> b!606509 m!873139))

(declare-fun m!873147 () Bool)

(assert (=> b!606509 m!873147))

(assert (=> b!606509 m!873139))

(declare-fun m!873149 () Bool)

(assert (=> b!606509 m!873149))

(declare-fun m!873151 () Bool)

(assert (=> b!606509 m!873151))

(declare-fun m!873153 () Bool)

(assert (=> d!213893 m!873153))

(declare-fun m!873155 () Bool)

(assert (=> d!213893 m!873155))

(declare-fun m!873157 () Bool)

(assert (=> d!213893 m!873157))

(assert (=> d!213893 m!872705))

(assert (=> b!606507 m!873125))

(declare-fun m!873159 () Bool)

(assert (=> b!606507 m!873159))

(assert (=> b!606507 m!871121))

(assert (=> b!606502 m!871555))

(assert (=> b!606502 m!871121))

(assert (=> b!606502 m!871555))

(assert (=> b!606502 m!871121))

(assert (=> b!606502 m!873143))

(declare-fun m!873161 () Bool)

(assert (=> b!606502 m!873161))

(assert (=> b!606503 m!873125))

(assert (=> b!606503 m!873127))

(assert (=> b!606503 m!873127))

(assert (=> b!606503 m!873129))

(assert (=> b!606503 m!873129))

(declare-fun m!873163 () Bool)

(assert (=> b!606503 m!873163))

(assert (=> b!606501 m!873125))

(assert (=> bm!40673 d!213893))

(declare-fun d!213895 () Bool)

(assert (=> d!213895 (and (= lt!258196 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!213895 true))

(declare-fun _$50!292 () Unit!11030)

(assert (=> d!213895 (= (choose!4437 lt!258196 suffix!1342 input!2705 suffix!1342) _$50!292)))

(assert (=> d!213195 d!213895))

(assert (=> d!213195 d!213117))

(assert (=> d!213195 d!213091))

(declare-fun d!213897 () Bool)

(assert (=> d!213897 (= (head!1282 lt!258194) (h!11452 lt!258194))))

(assert (=> b!605402 d!213897))

(declare-fun d!213899 () Bool)

(assert (=> d!213899 (= (head!1282 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174)))) (h!11452 (++!1695 lt!258194 (_2!3728 (v!16458 lt!258174)))))))

(assert (=> b!605402 d!213899))

(assert (=> d!213267 d!213847))

(assert (=> d!213187 d!213165))

(declare-fun d!213901 () Bool)

(assert (=> d!213901 (ruleValid!405 thiss!22590 (rule!1987 token!491))))

(assert (=> d!213901 true))

(declare-fun _$65!889 () Unit!11030)

(assert (=> d!213901 (= (choose!4436 thiss!22590 (rule!1987 token!491) rules!3103) _$65!889)))

(declare-fun bs!71359 () Bool)

(assert (= bs!71359 d!213901))

(assert (=> bs!71359 m!870955))

(assert (=> d!213187 d!213901))

(declare-fun d!213903 () Bool)

(declare-fun lt!258850 () Bool)

(assert (=> d!213903 (= lt!258850 (select (content!1100 rules!3103) (rule!1987 token!491)))))

(declare-fun e!367521 () Bool)

(assert (=> d!213903 (= lt!258850 e!367521)))

(declare-fun res!262731 () Bool)

(assert (=> d!213903 (=> (not res!262731) (not e!367521))))

(assert (=> d!213903 (= res!262731 ((_ is Cons!6052) rules!3103))))

(assert (=> d!213903 (= (contains!1421 rules!3103 (rule!1987 token!491)) lt!258850)))

(declare-fun b!606510 () Bool)

(declare-fun e!367520 () Bool)

(assert (=> b!606510 (= e!367521 e!367520)))

(declare-fun res!262732 () Bool)

(assert (=> b!606510 (=> res!262732 e!367520)))

(assert (=> b!606510 (= res!262732 (= (h!11453 rules!3103) (rule!1987 token!491)))))

(declare-fun b!606511 () Bool)

(assert (=> b!606511 (= e!367520 (contains!1421 (t!80333 rules!3103) (rule!1987 token!491)))))

(assert (= (and d!213903 res!262731) b!606510))

(assert (= (and b!606510 (not res!262732)) b!606511))

(assert (=> d!213903 m!872767))

(declare-fun m!873165 () Bool)

(assert (=> d!213903 m!873165))

(declare-fun m!873167 () Bool)

(assert (=> b!606511 m!873167))

(assert (=> d!213187 d!213903))

(declare-fun d!213905 () Bool)

(assert (=> d!213905 (= (isEmpty!4370 lt!258174) (not ((_ is Some!1557) lt!258174)))))

(assert (=> d!213067 d!213905))

(declare-fun d!213907 () Bool)

(declare-fun charsToInt!0 (List!6060) (_ BitVec 32))

(assert (=> d!213907 (= (inv!16 (value!39266 token!491)) (= (charsToInt!0 (text!9064 (value!39266 token!491))) (value!39258 (value!39266 token!491))))))

(declare-fun bs!71360 () Bool)

(assert (= bs!71360 d!213907))

(declare-fun m!873169 () Bool)

(assert (=> bs!71360 m!873169))

(assert (=> b!605134 d!213907))

(declare-fun b!606521 () Bool)

(declare-fun e!367526 () List!6061)

(declare-fun e!367527 () List!6061)

(assert (=> b!606521 (= e!367526 e!367527)))

(declare-fun c!112462 () Bool)

(assert (=> b!606521 (= c!112462 ((_ is Leaf!3035) (c!112180 (charsOf!836 token!491))))))

(declare-fun b!606520 () Bool)

(assert (=> b!606520 (= e!367526 Nil!6051)))

(declare-fun b!606523 () Bool)

(assert (=> b!606523 (= e!367527 (++!1695 (list!2544 (left!4856 (c!112180 (charsOf!836 token!491)))) (list!2544 (right!5186 (c!112180 (charsOf!836 token!491))))))))

(declare-fun d!213909 () Bool)

(declare-fun c!112461 () Bool)

(assert (=> d!213909 (= c!112461 ((_ is Empty!1924) (c!112180 (charsOf!836 token!491))))))

(assert (=> d!213909 (= (list!2544 (c!112180 (charsOf!836 token!491))) e!367526)))

(declare-fun b!606522 () Bool)

(declare-fun list!2546 (IArray!3849) List!6061)

(assert (=> b!606522 (= e!367527 (list!2546 (xs!4561 (c!112180 (charsOf!836 token!491)))))))

(assert (= (and d!213909 c!112461) b!606520))

(assert (= (and d!213909 (not c!112461)) b!606521))

(assert (= (and b!606521 c!112462) b!606522))

(assert (= (and b!606521 (not c!112462)) b!606523))

(declare-fun m!873171 () Bool)

(assert (=> b!606523 m!873171))

(declare-fun m!873173 () Bool)

(assert (=> b!606523 m!873173))

(assert (=> b!606523 m!873171))

(assert (=> b!606523 m!873173))

(declare-fun m!873175 () Bool)

(assert (=> b!606523 m!873175))

(declare-fun m!873177 () Bool)

(assert (=> b!606522 m!873177))

(assert (=> d!213277 d!213909))

(assert (=> b!605501 d!213387))

(declare-fun d!213911 () Bool)

(assert (=> d!213911 (= (list!2542 lt!258298) (list!2544 (c!112180 lt!258298)))))

(declare-fun bs!71361 () Bool)

(assert (= bs!71361 d!213911))

(declare-fun m!873179 () Bool)

(assert (=> bs!71361 m!873179))

(assert (=> d!213177 d!213911))

(declare-fun b!606524 () Bool)

(declare-fun e!367529 () List!6061)

(assert (=> b!606524 (= e!367529 suffix!1342)))

(declare-fun d!213913 () Bool)

(declare-fun e!367528 () Bool)

(assert (=> d!213913 e!367528))

(declare-fun res!262734 () Bool)

(assert (=> d!213913 (=> (not res!262734) (not e!367528))))

(declare-fun lt!258851 () List!6061)

(assert (=> d!213913 (= res!262734 (= (content!1098 lt!258851) ((_ map or) (content!1098 (t!80332 lt!258196)) (content!1098 suffix!1342))))))

(assert (=> d!213913 (= lt!258851 e!367529)))

(declare-fun c!112463 () Bool)

(assert (=> d!213913 (= c!112463 ((_ is Nil!6051) (t!80332 lt!258196)))))

(assert (=> d!213913 (= (++!1695 (t!80332 lt!258196) suffix!1342) lt!258851)))

(declare-fun b!606525 () Bool)

(assert (=> b!606525 (= e!367529 (Cons!6051 (h!11452 (t!80332 lt!258196)) (++!1695 (t!80332 (t!80332 lt!258196)) suffix!1342)))))

(declare-fun b!606527 () Bool)

(assert (=> b!606527 (= e!367528 (or (not (= suffix!1342 Nil!6051)) (= lt!258851 (t!80332 lt!258196))))))

(declare-fun b!606526 () Bool)

(declare-fun res!262733 () Bool)

(assert (=> b!606526 (=> (not res!262733) (not e!367528))))

(assert (=> b!606526 (= res!262733 (= (size!4761 lt!258851) (+ (size!4761 (t!80332 lt!258196)) (size!4761 suffix!1342))))))

(assert (= (and d!213913 c!112463) b!606524))

(assert (= (and d!213913 (not c!112463)) b!606525))

(assert (= (and d!213913 res!262734) b!606526))

(assert (= (and b!606526 res!262733) b!606527))

(declare-fun m!873181 () Bool)

(assert (=> d!213913 m!873181))

(assert (=> d!213913 m!872477))

(assert (=> d!213913 m!871115))

(declare-fun m!873183 () Bool)

(assert (=> b!606525 m!873183))

(declare-fun m!873185 () Bool)

(assert (=> b!606526 m!873185))

(assert (=> b!606526 m!871459))

(assert (=> b!606526 m!871123))

(assert (=> b!605272 d!213913))

(assert (=> b!605505 d!213387))

(declare-fun d!213915 () Bool)

(declare-fun lt!258852 () Int)

(assert (=> d!213915 (>= lt!258852 0)))

(declare-fun e!367530 () Int)

(assert (=> d!213915 (= lt!258852 e!367530)))

(declare-fun c!112464 () Bool)

(assert (=> d!213915 (= c!112464 ((_ is Nil!6051) (originalCharacters!1246 (_1!3728 (get!2325 lt!258360)))))))

(assert (=> d!213915 (= (size!4761 (originalCharacters!1246 (_1!3728 (get!2325 lt!258360)))) lt!258852)))

(declare-fun b!606528 () Bool)

(assert (=> b!606528 (= e!367530 0)))

(declare-fun b!606529 () Bool)

(assert (=> b!606529 (= e!367530 (+ 1 (size!4761 (t!80332 (originalCharacters!1246 (_1!3728 (get!2325 lt!258360)))))))))

(assert (= (and d!213915 c!112464) b!606528))

(assert (= (and d!213915 (not c!112464)) b!606529))

(declare-fun m!873187 () Bool)

(assert (=> b!606529 m!873187))

(assert (=> b!605505 d!213915))

(declare-fun b!606530 () Bool)

(declare-fun res!262739 () Bool)

(declare-fun e!367533 () Bool)

(assert (=> b!606530 (=> (not res!262739) (not e!367533))))

(declare-fun call!40786 () Bool)

(assert (=> b!606530 (= res!262739 (not call!40786))))

(declare-fun b!606531 () Bool)

(declare-fun e!367532 () Bool)

(assert (=> b!606531 (= e!367532 (nullable!441 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258229))))))))

(declare-fun d!213917 () Bool)

(declare-fun e!367536 () Bool)

(assert (=> d!213917 e!367536))

(declare-fun c!112466 () Bool)

(assert (=> d!213917 (= c!112466 ((_ is EmptyExpr!1541) (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258229))))))))

(declare-fun lt!258853 () Bool)

(assert (=> d!213917 (= lt!258853 e!367532)))

(declare-fun c!112465 () Bool)

(assert (=> d!213917 (= c!112465 (isEmpty!4367 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229))))))))

(assert (=> d!213917 (validRegex!536 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))))))

(assert (=> d!213917 (= (matchR!644 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229))))) lt!258853)))

(declare-fun b!606532 () Bool)

(declare-fun e!367534 () Bool)

(declare-fun e!367535 () Bool)

(assert (=> b!606532 (= e!367534 e!367535)))

(declare-fun res!262742 () Bool)

(assert (=> b!606532 (=> res!262742 e!367535)))

(assert (=> b!606532 (= res!262742 call!40786)))

(declare-fun b!606533 () Bool)

(declare-fun e!367531 () Bool)

(assert (=> b!606533 (= e!367531 e!367534)))

(declare-fun res!262736 () Bool)

(assert (=> b!606533 (=> (not res!262736) (not e!367534))))

(assert (=> b!606533 (= res!262736 (not lt!258853))))

(declare-fun b!606534 () Bool)

(declare-fun res!262740 () Bool)

(assert (=> b!606534 (=> res!262740 e!367531)))

(assert (=> b!606534 (= res!262740 e!367533)))

(declare-fun res!262735 () Bool)

(assert (=> b!606534 (=> (not res!262735) (not e!367533))))

(assert (=> b!606534 (= res!262735 lt!258853)))

(declare-fun b!606535 () Bool)

(assert (=> b!606535 (= e!367536 (= lt!258853 call!40786))))

(declare-fun b!606536 () Bool)

(declare-fun res!262738 () Bool)

(assert (=> b!606536 (=> res!262738 e!367531)))

(assert (=> b!606536 (= res!262738 (not ((_ is ElementMatch!1541) (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))))))))

(declare-fun e!367537 () Bool)

(assert (=> b!606536 (= e!367537 e!367531)))

(declare-fun bm!40781 () Bool)

(assert (=> bm!40781 (= call!40786 (isEmpty!4367 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229))))))))

(declare-fun b!606537 () Bool)

(assert (=> b!606537 (= e!367533 (= (head!1282 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229))))) (c!112179 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))))))))

(declare-fun b!606538 () Bool)

(assert (=> b!606538 (= e!367535 (not (= (head!1282 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229))))) (c!112179 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258229))))))))))

(declare-fun b!606539 () Bool)

(assert (=> b!606539 (= e!367532 (matchR!644 (derivativeStep!328 (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))) (head!1282 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229)))))) (tail!811 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229)))))))))

(declare-fun b!606540 () Bool)

(declare-fun res!262737 () Bool)

(assert (=> b!606540 (=> res!262737 e!367535)))

(assert (=> b!606540 (= res!262737 (not (isEmpty!4367 (tail!811 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229))))))))))

(declare-fun b!606541 () Bool)

(assert (=> b!606541 (= e!367536 e!367537)))

(declare-fun c!112467 () Bool)

(assert (=> b!606541 (= c!112467 ((_ is EmptyLang!1541) (regex!1207 (rule!1987 (_1!3728 (get!2325 lt!258229))))))))

(declare-fun b!606542 () Bool)

(assert (=> b!606542 (= e!367537 (not lt!258853))))

(declare-fun b!606543 () Bool)

(declare-fun res!262741 () Bool)

(assert (=> b!606543 (=> (not res!262741) (not e!367533))))

(assert (=> b!606543 (= res!262741 (isEmpty!4367 (tail!811 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229)))))))))

(assert (= (and d!213917 c!112465) b!606531))

(assert (= (and d!213917 (not c!112465)) b!606539))

(assert (= (and d!213917 c!112466) b!606535))

(assert (= (and d!213917 (not c!112466)) b!606541))

(assert (= (and b!606541 c!112467) b!606542))

(assert (= (and b!606541 (not c!112467)) b!606536))

(assert (= (and b!606536 (not res!262738)) b!606534))

(assert (= (and b!606534 res!262735) b!606530))

(assert (= (and b!606530 res!262739) b!606543))

(assert (= (and b!606543 res!262741) b!606537))

(assert (= (and b!606534 (not res!262740)) b!606533))

(assert (= (and b!606533 res!262736) b!606532))

(assert (= (and b!606532 (not res!262742)) b!606540))

(assert (= (and b!606540 (not res!262737)) b!606538))

(assert (= (or b!606535 b!606530 b!606532) bm!40781))

(assert (=> b!606539 m!871055))

(declare-fun m!873189 () Bool)

(assert (=> b!606539 m!873189))

(assert (=> b!606539 m!873189))

(declare-fun m!873191 () Bool)

(assert (=> b!606539 m!873191))

(assert (=> b!606539 m!871055))

(declare-fun m!873193 () Bool)

(assert (=> b!606539 m!873193))

(assert (=> b!606539 m!873191))

(assert (=> b!606539 m!873193))

(declare-fun m!873195 () Bool)

(assert (=> b!606539 m!873195))

(assert (=> b!606543 m!871055))

(assert (=> b!606543 m!873193))

(assert (=> b!606543 m!873193))

(declare-fun m!873197 () Bool)

(assert (=> b!606543 m!873197))

(assert (=> b!606537 m!871055))

(assert (=> b!606537 m!873189))

(assert (=> b!606538 m!871055))

(assert (=> b!606538 m!873189))

(declare-fun m!873199 () Bool)

(assert (=> b!606531 m!873199))

(assert (=> bm!40781 m!871055))

(declare-fun m!873201 () Bool)

(assert (=> bm!40781 m!873201))

(assert (=> d!213917 m!871055))

(assert (=> d!213917 m!873201))

(declare-fun m!873203 () Bool)

(assert (=> d!213917 m!873203))

(assert (=> b!606540 m!871055))

(assert (=> b!606540 m!873193))

(assert (=> b!606540 m!873193))

(assert (=> b!606540 m!873197))

(assert (=> b!605198 d!213917))

(assert (=> b!605198 d!213639))

(assert (=> b!605198 d!213765))

(assert (=> b!605198 d!213767))

(declare-fun b!606544 () Bool)

(declare-fun e!367539 () List!6061)

(assert (=> b!606544 (= e!367539 suffix!1342)))

(declare-fun d!213919 () Bool)

(declare-fun e!367538 () Bool)

(assert (=> d!213919 e!367538))

(declare-fun res!262744 () Bool)

(assert (=> d!213919 (=> (not res!262744) (not e!367538))))

(declare-fun lt!258854 () List!6061)

(assert (=> d!213919 (= res!262744 (= (content!1098 lt!258854) ((_ map or) (content!1098 (t!80332 input!2705)) (content!1098 suffix!1342))))))

(assert (=> d!213919 (= lt!258854 e!367539)))

(declare-fun c!112468 () Bool)

(assert (=> d!213919 (= c!112468 ((_ is Nil!6051) (t!80332 input!2705)))))

(assert (=> d!213919 (= (++!1695 (t!80332 input!2705) suffix!1342) lt!258854)))

(declare-fun b!606545 () Bool)

(assert (=> b!606545 (= e!367539 (Cons!6051 (h!11452 (t!80332 input!2705)) (++!1695 (t!80332 (t!80332 input!2705)) suffix!1342)))))

(declare-fun b!606547 () Bool)

(assert (=> b!606547 (= e!367538 (or (not (= suffix!1342 Nil!6051)) (= lt!258854 (t!80332 input!2705))))))

(declare-fun b!606546 () Bool)

(declare-fun res!262743 () Bool)

(assert (=> b!606546 (=> (not res!262743) (not e!367538))))

(assert (=> b!606546 (= res!262743 (= (size!4761 lt!258854) (+ (size!4761 (t!80332 input!2705)) (size!4761 suffix!1342))))))

(assert (= (and d!213919 c!112468) b!606544))

(assert (= (and d!213919 (not c!112468)) b!606545))

(assert (= (and d!213919 res!262744) b!606546))

(assert (= (and b!606546 res!262743) b!606547))

(declare-fun m!873205 () Bool)

(assert (=> d!213919 m!873205))

(assert (=> d!213919 m!872969))

(assert (=> d!213919 m!871115))

(declare-fun m!873207 () Bool)

(assert (=> b!606545 m!873207))

(declare-fun m!873209 () Bool)

(assert (=> b!606546 m!873209))

(assert (=> b!606546 m!871781))

(assert (=> b!606546 m!871123))

(assert (=> b!605235 d!213919))

(declare-fun b!606550 () Bool)

(declare-fun e!367540 () Bool)

(assert (=> b!606550 (= e!367540 (isPrefix!835 (tail!811 lt!258196) (tail!811 (++!1695 lt!258196 suffix!1342))))))

(declare-fun b!606548 () Bool)

(declare-fun e!367542 () Bool)

(assert (=> b!606548 (= e!367542 e!367540)))

(declare-fun res!262745 () Bool)

(assert (=> b!606548 (=> (not res!262745) (not e!367540))))

(assert (=> b!606548 (= res!262745 (not ((_ is Nil!6051) (++!1695 lt!258196 suffix!1342))))))

(declare-fun d!213921 () Bool)

(declare-fun e!367541 () Bool)

(assert (=> d!213921 e!367541))

(declare-fun res!262747 () Bool)

(assert (=> d!213921 (=> res!262747 e!367541)))

(declare-fun lt!258855 () Bool)

(assert (=> d!213921 (= res!262747 (not lt!258855))))

(assert (=> d!213921 (= lt!258855 e!367542)))

(declare-fun res!262748 () Bool)

(assert (=> d!213921 (=> res!262748 e!367542)))

(assert (=> d!213921 (= res!262748 ((_ is Nil!6051) lt!258196))))

(assert (=> d!213921 (= (isPrefix!835 lt!258196 (++!1695 lt!258196 suffix!1342)) lt!258855)))

(declare-fun b!606551 () Bool)

(assert (=> b!606551 (= e!367541 (>= (size!4761 (++!1695 lt!258196 suffix!1342)) (size!4761 lt!258196)))))

(declare-fun b!606549 () Bool)

(declare-fun res!262746 () Bool)

(assert (=> b!606549 (=> (not res!262746) (not e!367540))))

(assert (=> b!606549 (= res!262746 (= (head!1282 lt!258196) (head!1282 (++!1695 lt!258196 suffix!1342))))))

(assert (= (and d!213921 (not res!262748)) b!606548))

(assert (= (and b!606548 res!262745) b!606549))

(assert (= (and b!606549 res!262746) b!606550))

(assert (= (and d!213921 (not res!262747)) b!606551))

(assert (=> b!606550 m!871299))

(assert (=> b!606550 m!870899))

(declare-fun m!873211 () Bool)

(assert (=> b!606550 m!873211))

(assert (=> b!606550 m!871299))

(assert (=> b!606550 m!873211))

(declare-fun m!873213 () Bool)

(assert (=> b!606550 m!873213))

(assert (=> b!606551 m!870899))

(declare-fun m!873215 () Bool)

(assert (=> b!606551 m!873215))

(assert (=> b!606551 m!870925))

(assert (=> b!606549 m!871307))

(assert (=> b!606549 m!870899))

(declare-fun m!873217 () Bool)

(assert (=> b!606549 m!873217))

(assert (=> d!213137 d!213921))

(assert (=> d!213137 d!213117))

(declare-fun d!213923 () Bool)

(assert (=> d!213923 (isPrefix!835 lt!258196 (++!1695 lt!258196 suffix!1342))))

(assert (=> d!213923 true))

(declare-fun _$46!1005 () Unit!11030)

(assert (=> d!213923 (= (choose!4433 lt!258196 suffix!1342) _$46!1005)))

(declare-fun bs!71362 () Bool)

(assert (= bs!71362 d!213923))

(assert (=> bs!71362 m!870899))

(assert (=> bs!71362 m!870899))

(assert (=> bs!71362 m!871263))

(assert (=> d!213137 d!213923))

(declare-fun d!213925 () Bool)

(declare-fun lt!258856 () Int)

(assert (=> d!213925 (>= lt!258856 0)))

(declare-fun e!367543 () Int)

(assert (=> d!213925 (= lt!258856 e!367543)))

(declare-fun c!112469 () Bool)

(assert (=> d!213925 (= c!112469 ((_ is Nil!6051) lt!258251))))

(assert (=> d!213925 (= (size!4761 lt!258251) lt!258856)))

(declare-fun b!606552 () Bool)

(assert (=> b!606552 (= e!367543 0)))

(declare-fun b!606553 () Bool)

(assert (=> b!606553 (= e!367543 (+ 1 (size!4761 (t!80332 lt!258251))))))

(assert (= (and d!213925 c!112469) b!606552))

(assert (= (and d!213925 (not c!112469)) b!606553))

(declare-fun m!873219 () Bool)

(assert (=> b!606553 m!873219))

(assert (=> b!605236 d!213925))

(assert (=> b!605236 d!213327))

(assert (=> b!605236 d!213837))

(declare-fun d!213927 () Bool)

(declare-fun lt!258857 () Bool)

(assert (=> d!213927 (= lt!258857 (select (content!1100 rules!3103) (rule!1987 (_1!3728 (get!2325 lt!258229)))))))

(declare-fun e!367545 () Bool)

(assert (=> d!213927 (= lt!258857 e!367545)))

(declare-fun res!262749 () Bool)

(assert (=> d!213927 (=> (not res!262749) (not e!367545))))

(assert (=> d!213927 (= res!262749 ((_ is Cons!6052) rules!3103))))

(assert (=> d!213927 (= (contains!1421 rules!3103 (rule!1987 (_1!3728 (get!2325 lt!258229)))) lt!258857)))

(declare-fun b!606554 () Bool)

(declare-fun e!367544 () Bool)

(assert (=> b!606554 (= e!367545 e!367544)))

(declare-fun res!262750 () Bool)

(assert (=> b!606554 (=> res!262750 e!367544)))

(assert (=> b!606554 (= res!262750 (= (h!11453 rules!3103) (rule!1987 (_1!3728 (get!2325 lt!258229)))))))

(declare-fun b!606555 () Bool)

(assert (=> b!606555 (= e!367544 (contains!1421 (t!80333 rules!3103) (rule!1987 (_1!3728 (get!2325 lt!258229)))))))

(assert (= (and d!213927 res!262749) b!606554))

(assert (= (and b!606554 (not res!262750)) b!606555))

(assert (=> d!213927 m!872767))

(declare-fun m!873221 () Bool)

(assert (=> d!213927 m!873221))

(declare-fun m!873223 () Bool)

(assert (=> b!606555 m!873223))

(assert (=> b!605199 d!213927))

(assert (=> b!605199 d!213639))

(declare-fun b!606556 () Bool)

(declare-fun res!262755 () Bool)

(declare-fun e!367548 () Bool)

(assert (=> b!606556 (=> (not res!262755) (not e!367548))))

(declare-fun call!40787 () Bool)

(assert (=> b!606556 (= res!262755 (not call!40787))))

(declare-fun b!606557 () Bool)

(declare-fun e!367547 () Bool)

(assert (=> b!606557 (= e!367547 (nullable!441 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun d!213929 () Bool)

(declare-fun e!367551 () Bool)

(assert (=> d!213929 e!367551))

(declare-fun c!112471 () Bool)

(assert (=> d!213929 (= c!112471 ((_ is EmptyExpr!1541) (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun lt!258858 () Bool)

(assert (=> d!213929 (= lt!258858 e!367547)))

(declare-fun c!112470 () Bool)

(assert (=> d!213929 (= c!112470 (isEmpty!4367 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370))))))))

(assert (=> d!213929 (validRegex!536 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))

(assert (=> d!213929 (= (matchR!644 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370))))) lt!258858)))

(declare-fun b!606558 () Bool)

(declare-fun e!367549 () Bool)

(declare-fun e!367550 () Bool)

(assert (=> b!606558 (= e!367549 e!367550)))

(declare-fun res!262758 () Bool)

(assert (=> b!606558 (=> res!262758 e!367550)))

(assert (=> b!606558 (= res!262758 call!40787)))

(declare-fun b!606559 () Bool)

(declare-fun e!367546 () Bool)

(assert (=> b!606559 (= e!367546 e!367549)))

(declare-fun res!262752 () Bool)

(assert (=> b!606559 (=> (not res!262752) (not e!367549))))

(assert (=> b!606559 (= res!262752 (not lt!258858))))

(declare-fun b!606560 () Bool)

(declare-fun res!262756 () Bool)

(assert (=> b!606560 (=> res!262756 e!367546)))

(assert (=> b!606560 (= res!262756 e!367548)))

(declare-fun res!262751 () Bool)

(assert (=> b!606560 (=> (not res!262751) (not e!367548))))

(assert (=> b!606560 (= res!262751 lt!258858)))

(declare-fun b!606561 () Bool)

(assert (=> b!606561 (= e!367551 (= lt!258858 call!40787))))

(declare-fun b!606562 () Bool)

(declare-fun res!262754 () Bool)

(assert (=> b!606562 (=> res!262754 e!367546)))

(assert (=> b!606562 (= res!262754 (not ((_ is ElementMatch!1541) (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))))

(declare-fun e!367552 () Bool)

(assert (=> b!606562 (= e!367552 e!367546)))

(declare-fun bm!40782 () Bool)

(assert (=> bm!40782 (= call!40787 (isEmpty!4367 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370))))))))

(declare-fun b!606563 () Bool)

(assert (=> b!606563 (= e!367548 (= (head!1282 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370))))) (c!112179 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))))))

(declare-fun b!606564 () Bool)

(assert (=> b!606564 (= e!367550 (not (= (head!1282 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370))))) (c!112179 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))))

(declare-fun b!606565 () Bool)

(assert (=> b!606565 (= e!367547 (matchR!644 (derivativeStep!328 (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))) (head!1282 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370)))))) (tail!811 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370)))))))))

(declare-fun b!606566 () Bool)

(declare-fun res!262753 () Bool)

(assert (=> b!606566 (=> res!262753 e!367550)))

(assert (=> b!606566 (= res!262753 (not (isEmpty!4367 (tail!811 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370))))))))))

(declare-fun b!606567 () Bool)

(assert (=> b!606567 (= e!367551 e!367552)))

(declare-fun c!112472 () Bool)

(assert (=> b!606567 (= c!112472 ((_ is EmptyLang!1541) (regex!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun b!606568 () Bool)

(assert (=> b!606568 (= e!367552 (not lt!258858))))

(declare-fun b!606569 () Bool)

(declare-fun res!262757 () Bool)

(assert (=> b!606569 (=> (not res!262757) (not e!367548))))

(assert (=> b!606569 (= res!262757 (isEmpty!4367 (tail!811 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258370)))))))))

(assert (= (and d!213929 c!112470) b!606557))

(assert (= (and d!213929 (not c!112470)) b!606565))

(assert (= (and d!213929 c!112471) b!606561))

(assert (= (and d!213929 (not c!112471)) b!606567))

(assert (= (and b!606567 c!112472) b!606568))

(assert (= (and b!606567 (not c!112472)) b!606562))

(assert (= (and b!606562 (not res!262754)) b!606560))

(assert (= (and b!606560 res!262751) b!606556))

(assert (= (and b!606556 res!262755) b!606569))

(assert (= (and b!606569 res!262757) b!606563))

(assert (= (and b!606560 (not res!262756)) b!606559))

(assert (= (and b!606559 res!262752) b!606558))

(assert (= (and b!606558 (not res!262758)) b!606566))

(assert (= (and b!606566 (not res!262753)) b!606564))

(assert (= (or b!606561 b!606556 b!606558) bm!40782))

(assert (=> b!606565 m!871597))

(declare-fun m!873225 () Bool)

(assert (=> b!606565 m!873225))

(assert (=> b!606565 m!873225))

(declare-fun m!873227 () Bool)

(assert (=> b!606565 m!873227))

(assert (=> b!606565 m!871597))

(declare-fun m!873229 () Bool)

(assert (=> b!606565 m!873229))

(assert (=> b!606565 m!873227))

(assert (=> b!606565 m!873229))

(declare-fun m!873231 () Bool)

(assert (=> b!606565 m!873231))

(assert (=> b!606569 m!871597))

(assert (=> b!606569 m!873229))

(assert (=> b!606569 m!873229))

(declare-fun m!873233 () Bool)

(assert (=> b!606569 m!873233))

(assert (=> b!606563 m!871597))

(assert (=> b!606563 m!873225))

(assert (=> b!606564 m!871597))

(assert (=> b!606564 m!873225))

(assert (=> b!606557 m!871273))

(assert (=> bm!40782 m!871597))

(declare-fun m!873235 () Bool)

(assert (=> bm!40782 m!873235))

(assert (=> d!213929 m!871597))

(assert (=> d!213929 m!873235))

(assert (=> d!213929 m!871271))

(assert (=> b!606566 m!871597))

(assert (=> b!606566 m!873229))

(assert (=> b!606566 m!873229))

(assert (=> b!606566 m!873233))

(assert (=> b!605514 d!213929))

(assert (=> b!605514 d!213863))

(assert (=> b!605514 d!213865))

(assert (=> b!605514 d!213769))

(assert (=> d!213209 d!213281))

(assert (=> b!605370 d!213733))

(assert (=> b!605370 d!213327))

(declare-fun b!606571 () Bool)

(declare-fun e!367553 () List!6061)

(declare-fun e!367554 () List!6061)

(assert (=> b!606571 (= e!367553 e!367554)))

(declare-fun c!112474 () Bool)

(assert (=> b!606571 (= c!112474 ((_ is Leaf!3035) (c!112180 (charsOf!836 (_1!3728 (v!16458 lt!258174))))))))

(declare-fun b!606570 () Bool)

(assert (=> b!606570 (= e!367553 Nil!6051)))

(declare-fun b!606573 () Bool)

(assert (=> b!606573 (= e!367554 (++!1695 (list!2544 (left!4856 (c!112180 (charsOf!836 (_1!3728 (v!16458 lt!258174)))))) (list!2544 (right!5186 (c!112180 (charsOf!836 (_1!3728 (v!16458 lt!258174))))))))))

(declare-fun d!213931 () Bool)

(declare-fun c!112473 () Bool)

(assert (=> d!213931 (= c!112473 ((_ is Empty!1924) (c!112180 (charsOf!836 (_1!3728 (v!16458 lt!258174))))))))

(assert (=> d!213931 (= (list!2544 (c!112180 (charsOf!836 (_1!3728 (v!16458 lt!258174))))) e!367553)))

(declare-fun b!606572 () Bool)

(assert (=> b!606572 (= e!367554 (list!2546 (xs!4561 (c!112180 (charsOf!836 (_1!3728 (v!16458 lt!258174)))))))))

(assert (= (and d!213931 c!112473) b!606570))

(assert (= (and d!213931 (not c!112473)) b!606571))

(assert (= (and b!606571 c!112474) b!606572))

(assert (= (and b!606571 (not c!112474)) b!606573))

(declare-fun m!873237 () Bool)

(assert (=> b!606573 m!873237))

(declare-fun m!873239 () Bool)

(assert (=> b!606573 m!873239))

(assert (=> b!606573 m!873237))

(assert (=> b!606573 m!873239))

(declare-fun m!873241 () Bool)

(assert (=> b!606573 m!873241))

(declare-fun m!873243 () Bool)

(assert (=> b!606572 m!873243))

(assert (=> d!213167 d!213931))

(declare-fun bs!71363 () Bool)

(declare-fun d!213933 () Bool)

(assert (= bs!71363 (and d!213933 d!213833)))

(declare-fun lambda!16154 () Int)

(assert (=> bs!71363 (= (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) (= lambda!16154 lambda!16151))))

(declare-fun bs!71364 () Bool)

(assert (= bs!71364 (and d!213933 d!213855)))

(assert (=> bs!71364 (= (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (h!11453 rules!3103)))) (= lambda!16154 lambda!16153))))

(assert (=> d!213933 true))

(assert (=> d!213933 (< (dynLambda!3516 order!4843 (toValue!2110 (transformation!1207 (rule!1987 token!491)))) (dynLambda!3518 order!4845 lambda!16154))))

(assert (=> d!213933 (= (equivClasses!466 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))) (Forall2!232 lambda!16154))))

(declare-fun bs!71365 () Bool)

(assert (= bs!71365 d!213933))

(declare-fun m!873245 () Bool)

(assert (=> bs!71365 m!873245))

(assert (=> b!605523 d!213933))

(assert (=> d!213199 d!213161))

(declare-fun d!213935 () Bool)

(assert (=> d!213935 (isPrefix!835 input!2705 input!2705)))

(assert (=> d!213935 true))

(declare-fun _$45!1330 () Unit!11030)

(assert (=> d!213935 (= (choose!4438 input!2705 input!2705) _$45!1330)))

(declare-fun bs!71366 () Bool)

(assert (= bs!71366 d!213935))

(assert (=> bs!71366 m!870947))

(assert (=> d!213199 d!213935))

(declare-fun d!213937 () Bool)

(assert (=> d!213937 (= (isEmpty!4370 lt!258360) (not ((_ is Some!1557) lt!258360)))))

(assert (=> d!213223 d!213937))

(declare-fun d!213939 () Bool)

(assert (=> d!213939 (= (isEmpty!4367 (_1!3730 lt!258363)) ((_ is Nil!6051) (_1!3730 lt!258363)))))

(assert (=> d!213223 d!213939))

(declare-fun d!213941 () Bool)

(declare-fun lt!258860 () tuple2!6932)

(assert (=> d!213941 (= (++!1695 (_1!3730 lt!258860) (_2!3730 lt!258860)) lt!258195)))

(assert (=> d!213941 (= lt!258860 (findLongestMatchInner!201 (regex!1207 (rule!1987 token!491)) Nil!6051 0 lt!258195 lt!258195 (sizeTr!38 lt!258195 0)))))

(declare-fun lt!258864 () Unit!11030)

(declare-fun lt!258861 () Unit!11030)

(assert (=> d!213941 (= lt!258864 lt!258861)))

(declare-fun lt!258865 () List!6061)

(declare-fun lt!258866 () Int)

(assert (=> d!213941 (= (sizeTr!38 lt!258865 lt!258866) (+ (size!4761 lt!258865) lt!258866))))

(assert (=> d!213941 (= lt!258861 (lemmaSizeTrEqualsSize!38 lt!258865 lt!258866))))

(assert (=> d!213941 (= lt!258866 0)))

(assert (=> d!213941 (= lt!258865 Nil!6051)))

(declare-fun lt!258859 () Unit!11030)

(declare-fun lt!258863 () Unit!11030)

(assert (=> d!213941 (= lt!258859 lt!258863)))

(declare-fun lt!258862 () Int)

(assert (=> d!213941 (= (sizeTr!38 lt!258195 lt!258862) (+ (size!4761 lt!258195) lt!258862))))

(assert (=> d!213941 (= lt!258863 (lemmaSizeTrEqualsSize!38 lt!258195 lt!258862))))

(assert (=> d!213941 (= lt!258862 0)))

(assert (=> d!213941 (validRegex!536 (regex!1207 (rule!1987 token!491)))))

(assert (=> d!213941 (= (findLongestMatch!180 (regex!1207 (rule!1987 token!491)) lt!258195) lt!258860)))

(declare-fun bs!71367 () Bool)

(assert (= bs!71367 d!213941))

(declare-fun m!873247 () Bool)

(assert (=> bs!71367 m!873247))

(declare-fun m!873249 () Bool)

(assert (=> bs!71367 m!873249))

(declare-fun m!873251 () Bool)

(assert (=> bs!71367 m!873251))

(declare-fun m!873253 () Bool)

(assert (=> bs!71367 m!873253))

(assert (=> bs!71367 m!871065))

(declare-fun m!873255 () Bool)

(assert (=> bs!71367 m!873255))

(declare-fun m!873257 () Bool)

(assert (=> bs!71367 m!873257))

(declare-fun m!873259 () Bool)

(assert (=> bs!71367 m!873259))

(assert (=> bs!71367 m!871293))

(assert (=> bs!71367 m!873255))

(declare-fun m!873261 () Bool)

(assert (=> bs!71367 m!873261))

(assert (=> d!213223 d!213941))

(assert (=> d!213223 d!213165))

(assert (=> b!605340 d!213933))

(declare-fun d!213943 () Bool)

(declare-fun lt!258867 () Int)

(assert (=> d!213943 (>= lt!258867 0)))

(declare-fun e!367555 () Int)

(assert (=> d!213943 (= lt!258867 e!367555)))

(declare-fun c!112475 () Bool)

(assert (=> d!213943 (= c!112475 ((_ is Nil!6051) (_2!3728 (get!2325 lt!258370))))))

(assert (=> d!213943 (= (size!4761 (_2!3728 (get!2325 lt!258370))) lt!258867)))

(declare-fun b!606574 () Bool)

(assert (=> b!606574 (= e!367555 0)))

(declare-fun b!606575 () Bool)

(assert (=> b!606575 (= e!367555 (+ 1 (size!4761 (t!80332 (_2!3728 (get!2325 lt!258370))))))))

(assert (= (and d!213943 c!112475) b!606574))

(assert (= (and d!213943 (not c!112475)) b!606575))

(declare-fun m!873263 () Bool)

(assert (=> b!606575 m!873263))

(assert (=> b!605518 d!213943))

(assert (=> b!605518 d!213769))

(assert (=> b!605518 d!213327))

(assert (=> b!605241 d!213743))

(assert (=> b!605241 d!213745))

(assert (=> b!605241 d!213723))

(declare-fun b!606576 () Bool)

(declare-fun e!367557 () List!6061)

(assert (=> b!606576 (= e!367557 (_2!3728 (get!2325 lt!258229)))))

(declare-fun d!213945 () Bool)

(declare-fun e!367556 () Bool)

(assert (=> d!213945 e!367556))

(declare-fun res!262760 () Bool)

(assert (=> d!213945 (=> (not res!262760) (not e!367556))))

(declare-fun lt!258868 () List!6061)

(assert (=> d!213945 (= res!262760 (= (content!1098 lt!258868) ((_ map or) (content!1098 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229))))) (content!1098 (_2!3728 (get!2325 lt!258229))))))))

(assert (=> d!213945 (= lt!258868 e!367557)))

(declare-fun c!112476 () Bool)

(assert (=> d!213945 (= c!112476 ((_ is Nil!6051) (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229))))))))

(assert (=> d!213945 (= (++!1695 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229)))) (_2!3728 (get!2325 lt!258229))) lt!258868)))

(declare-fun b!606577 () Bool)

(assert (=> b!606577 (= e!367557 (Cons!6051 (h!11452 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229))))) (++!1695 (t!80332 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229))))) (_2!3728 (get!2325 lt!258229)))))))

(declare-fun b!606579 () Bool)

(assert (=> b!606579 (= e!367556 (or (not (= (_2!3728 (get!2325 lt!258229)) Nil!6051)) (= lt!258868 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229)))))))))

(declare-fun b!606578 () Bool)

(declare-fun res!262759 () Bool)

(assert (=> b!606578 (=> (not res!262759) (not e!367556))))

(assert (=> b!606578 (= res!262759 (= (size!4761 lt!258868) (+ (size!4761 (list!2542 (charsOf!836 (_1!3728 (get!2325 lt!258229))))) (size!4761 (_2!3728 (get!2325 lt!258229))))))))

(assert (= (and d!213945 c!112476) b!606576))

(assert (= (and d!213945 (not c!112476)) b!606577))

(assert (= (and d!213945 res!262760) b!606578))

(assert (= (and b!606578 res!262759) b!606579))

(declare-fun m!873265 () Bool)

(assert (=> d!213945 m!873265))

(assert (=> d!213945 m!871055))

(declare-fun m!873267 () Bool)

(assert (=> d!213945 m!873267))

(declare-fun m!873269 () Bool)

(assert (=> d!213945 m!873269))

(declare-fun m!873271 () Bool)

(assert (=> b!606577 m!873271))

(declare-fun m!873273 () Bool)

(assert (=> b!606578 m!873273))

(assert (=> b!606578 m!871055))

(declare-fun m!873275 () Bool)

(assert (=> b!606578 m!873275))

(assert (=> b!606578 m!871063))

(assert (=> b!605206 d!213945))

(assert (=> b!605206 d!213765))

(assert (=> b!605206 d!213767))

(assert (=> b!605206 d!213639))

(declare-fun b!606580 () Bool)

(declare-fun e!367558 () Bool)

(declare-fun tp!188253 () Bool)

(assert (=> b!606580 (= e!367558 (and tp_is_empty!3437 tp!188253))))

(assert (=> b!605554 (= tp!188149 e!367558)))

(assert (= (and b!605554 ((_ is Cons!6051) (t!80332 (t!80332 input!2705)))) b!606580))

(declare-fun b!606583 () Bool)

(declare-fun e!367559 () Bool)

(declare-fun tp!188257 () Bool)

(assert (=> b!606583 (= e!367559 tp!188257)))

(declare-fun b!606584 () Bool)

(declare-fun tp!188255 () Bool)

(declare-fun tp!188254 () Bool)

(assert (=> b!606584 (= e!367559 (and tp!188255 tp!188254))))

(declare-fun b!606582 () Bool)

(declare-fun tp!188256 () Bool)

(declare-fun tp!188258 () Bool)

(assert (=> b!606582 (= e!367559 (and tp!188256 tp!188258))))

(declare-fun b!606581 () Bool)

(assert (=> b!606581 (= e!367559 tp_is_empty!3437)))

(assert (=> b!605567 (= tp!188164 e!367559)))

(assert (= (and b!605567 ((_ is ElementMatch!1541) (regOne!3594 (regex!1207 (h!11453 rules!3103))))) b!606581))

(assert (= (and b!605567 ((_ is Concat!2772) (regOne!3594 (regex!1207 (h!11453 rules!3103))))) b!606582))

(assert (= (and b!605567 ((_ is Star!1541) (regOne!3594 (regex!1207 (h!11453 rules!3103))))) b!606583))

(assert (= (and b!605567 ((_ is Union!1541) (regOne!3594 (regex!1207 (h!11453 rules!3103))))) b!606584))

(declare-fun b!606587 () Bool)

(declare-fun e!367560 () Bool)

(declare-fun tp!188262 () Bool)

(assert (=> b!606587 (= e!367560 tp!188262)))

(declare-fun b!606588 () Bool)

(declare-fun tp!188260 () Bool)

(declare-fun tp!188259 () Bool)

(assert (=> b!606588 (= e!367560 (and tp!188260 tp!188259))))

(declare-fun b!606586 () Bool)

(declare-fun tp!188261 () Bool)

(declare-fun tp!188263 () Bool)

(assert (=> b!606586 (= e!367560 (and tp!188261 tp!188263))))

(declare-fun b!606585 () Bool)

(assert (=> b!606585 (= e!367560 tp_is_empty!3437)))

(assert (=> b!605567 (= tp!188166 e!367560)))

(assert (= (and b!605567 ((_ is ElementMatch!1541) (regTwo!3594 (regex!1207 (h!11453 rules!3103))))) b!606585))

(assert (= (and b!605567 ((_ is Concat!2772) (regTwo!3594 (regex!1207 (h!11453 rules!3103))))) b!606586))

(assert (= (and b!605567 ((_ is Star!1541) (regTwo!3594 (regex!1207 (h!11453 rules!3103))))) b!606587))

(assert (= (and b!605567 ((_ is Union!1541) (regTwo!3594 (regex!1207 (h!11453 rules!3103))))) b!606588))

(declare-fun tp!188271 () Bool)

(declare-fun e!367566 () Bool)

(declare-fun b!606597 () Bool)

(declare-fun tp!188272 () Bool)

(assert (=> b!606597 (= e!367566 (and (inv!7693 (left!4856 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174))))))) tp!188272 (inv!7693 (right!5186 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174))))))) tp!188271))))

(declare-fun b!606599 () Bool)

(declare-fun e!367565 () Bool)

(declare-fun tp!188270 () Bool)

(assert (=> b!606599 (= e!367565 tp!188270)))

(declare-fun b!606598 () Bool)

(declare-fun inv!7699 (IArray!3849) Bool)

(assert (=> b!606598 (= e!367566 (and (inv!7699 (xs!4561 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174))))))) e!367565))))

(assert (=> b!605345 (= tp!188090 (and (inv!7693 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174)))))) e!367566))))

(assert (= (and b!605345 ((_ is Node!1924) (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174))))))) b!606597))

(assert (= b!606598 b!606599))

(assert (= (and b!605345 ((_ is Leaf!3035) (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))) (value!39266 (_1!3728 (v!16458 lt!258174))))))) b!606598))

(declare-fun m!873277 () Bool)

(assert (=> b!606597 m!873277))

(declare-fun m!873279 () Bool)

(assert (=> b!606597 m!873279))

(declare-fun m!873281 () Bool)

(assert (=> b!606598 m!873281))

(assert (=> b!605345 m!871321))

(declare-fun b!606602 () Bool)

(declare-fun e!367567 () Bool)

(declare-fun tp!188276 () Bool)

(assert (=> b!606602 (= e!367567 tp!188276)))

(declare-fun b!606603 () Bool)

(declare-fun tp!188274 () Bool)

(declare-fun tp!188273 () Bool)

(assert (=> b!606603 (= e!367567 (and tp!188274 tp!188273))))

(declare-fun b!606601 () Bool)

(declare-fun tp!188275 () Bool)

(declare-fun tp!188277 () Bool)

(assert (=> b!606601 (= e!367567 (and tp!188275 tp!188277))))

(declare-fun b!606600 () Bool)

(assert (=> b!606600 (= e!367567 tp_is_empty!3437)))

(assert (=> b!605568 (= tp!188165 e!367567)))

(assert (= (and b!605568 ((_ is ElementMatch!1541) (reg!1870 (regex!1207 (h!11453 rules!3103))))) b!606600))

(assert (= (and b!605568 ((_ is Concat!2772) (reg!1870 (regex!1207 (h!11453 rules!3103))))) b!606601))

(assert (= (and b!605568 ((_ is Star!1541) (reg!1870 (regex!1207 (h!11453 rules!3103))))) b!606602))

(assert (= (and b!605568 ((_ is Union!1541) (reg!1870 (regex!1207 (h!11453 rules!3103))))) b!606603))

(declare-fun b!606604 () Bool)

(declare-fun tp!188279 () Bool)

(declare-fun e!367569 () Bool)

(declare-fun tp!188280 () Bool)

(assert (=> b!606604 (= e!367569 (and (inv!7693 (left!4856 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491))))) tp!188280 (inv!7693 (right!5186 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491))))) tp!188279))))

(declare-fun b!606606 () Bool)

(declare-fun e!367568 () Bool)

(declare-fun tp!188278 () Bool)

(assert (=> b!606606 (= e!367568 tp!188278)))

(declare-fun b!606605 () Bool)

(assert (=> b!606605 (= e!367569 (and (inv!7699 (xs!4561 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491))))) e!367568))))

(assert (=> b!605530 (= tp!188129 (and (inv!7693 (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491)))) e!367569))))

(assert (= (and b!605530 ((_ is Node!1924) (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491))))) b!606604))

(assert (= b!606605 b!606606))

(assert (= (and b!605530 ((_ is Leaf!3035) (c!112180 (dynLambda!3509 (toChars!1969 (transformation!1207 (rule!1987 token!491))) (value!39266 token!491))))) b!606605))

(declare-fun m!873283 () Bool)

(assert (=> b!606604 m!873283))

(declare-fun m!873285 () Bool)

(assert (=> b!606604 m!873285))

(declare-fun m!873287 () Bool)

(assert (=> b!606605 m!873287))

(assert (=> b!605530 m!871633))

(declare-fun b!606609 () Bool)

(declare-fun b_free!17249 () Bool)

(declare-fun b_next!17265 () Bool)

(assert (=> b!606609 (= b_free!17249 (not b_next!17265))))

(declare-fun t!80563 () Bool)

(declare-fun tb!53027 () Bool)

(assert (=> (and b!606609 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))) t!80563) tb!53027))

(declare-fun result!59666 () Bool)

(assert (= result!59666 result!59464))

(assert (=> d!213257 t!80563))

(declare-fun t!80565 () Bool)

(declare-fun tb!53029 () Bool)

(assert (=> (and b!606609 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toValue!2110 (transformation!1207 (rule!1987 token!491)))) t!80565) tb!53029))

(declare-fun result!59668 () Bool)

(assert (= result!59668 result!59522))

(assert (=> d!213469 t!80565))

(declare-fun tb!53031 () Bool)

(declare-fun t!80567 () Bool)

(assert (=> (and b!606609 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))))) t!80567) tb!53031))

(declare-fun result!59670 () Bool)

(assert (= result!59670 result!59576))

(assert (=> d!213641 t!80567))

(declare-fun tb!53033 () Bool)

(declare-fun t!80569 () Bool)

(assert (=> (and b!606609 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80569) tb!53033))

(declare-fun result!59672 () Bool)

(assert (= result!59672 result!59640))

(assert (=> d!213807 t!80569))

(assert (=> d!213613 t!80565))

(assert (=> d!213805 t!80569))

(declare-fun tb!53035 () Bool)

(declare-fun t!80571 () Bool)

(assert (=> (and b!606609 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370)))))) t!80571) tb!53035))

(declare-fun result!59674 () Bool)

(assert (= result!59674 result!59658))

(assert (=> d!213889 t!80571))

(declare-fun t!80573 () Bool)

(declare-fun tb!53037 () Bool)

(assert (=> (and b!606609 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80573) tb!53037))

(declare-fun result!59676 () Bool)

(assert (= result!59676 result!59440))

(assert (=> d!213201 t!80573))

(declare-fun tb!53039 () Bool)

(declare-fun t!80575 () Bool)

(assert (=> (and b!606609 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360)))))) t!80575) tb!53039))

(declare-fun result!59678 () Bool)

(assert (= result!59678 result!59628))

(assert (=> d!213773 t!80575))

(declare-fun tb!53041 () Bool)

(declare-fun t!80577 () Bool)

(assert (=> (and b!606609 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))))) t!80577) tb!53041))

(declare-fun result!59680 () Bool)

(assert (= result!59680 result!59652))

(assert (=> d!213883 t!80577))

(declare-fun b_and!60075 () Bool)

(declare-fun tp!188282 () Bool)

(assert (=> b!606609 (= tp!188282 (and (=> t!80571 result!59674) (=> t!80569 result!59672) (=> t!80565 result!59668) (=> t!80567 result!59670) (=> t!80575 result!59678) (=> t!80573 result!59676) (=> t!80563 result!59666) (=> t!80577 result!59680) b_and!60075))))

(declare-fun b_free!17251 () Bool)

(declare-fun b_next!17267 () Bool)

(assert (=> b!606609 (= b_free!17251 (not b_next!17267))))

(declare-fun tb!53043 () Bool)

(declare-fun t!80579 () Bool)

(assert (=> (and b!606609 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258370)))))) t!80579) tb!53043))

(declare-fun result!59682 () Bool)

(assert (= result!59682 result!59646))

(assert (=> d!213865 t!80579))

(declare-fun tb!53045 () Bool)

(declare-fun t!80581 () Bool)

(assert (=> (and b!606609 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toChars!1969 (transformation!1207 (rule!1987 token!491)))) t!80581) tb!53045))

(declare-fun result!59684 () Bool)

(assert (= result!59684 result!59468))

(assert (=> b!605528 t!80581))

(declare-fun tb!53047 () Bool)

(declare-fun t!80583 () Bool)

(assert (=> (and b!606609 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80583) tb!53047))

(declare-fun result!59686 () Bool)

(assert (= result!59686 result!59634))

(assert (=> d!213805 t!80583))

(assert (=> d!213279 t!80581))

(declare-fun tb!53049 () Bool)

(declare-fun t!80585 () Bool)

(assert (=> (and b!606609 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258360)))))) t!80585) tb!53049))

(declare-fun result!59688 () Bool)

(assert (= result!59688 result!59504))

(assert (=> d!213381 t!80585))

(declare-fun t!80587 () Bool)

(declare-fun tb!53051 () Bool)

(assert (=> (and b!606609 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258255)))))) t!80587) tb!53051))

(declare-fun result!59690 () Bool)

(assert (= result!59690 result!59616))

(assert (=> d!213745 t!80587))

(declare-fun t!80589 () Bool)

(declare-fun tb!53053 () Bool)

(assert (=> (and b!606609 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toChars!1969 (transformation!1207 (rule!1987 token!491)))) t!80589) tb!53053))

(declare-fun result!59692 () Bool)

(assert (= result!59692 result!59516))

(assert (=> d!213469 t!80589))

(declare-fun tb!53055 () Bool)

(declare-fun t!80591 () Bool)

(assert (=> (and b!606609 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174)))))) t!80591) tb!53055))

(declare-fun result!59694 () Bool)

(assert (= result!59694 result!59434))

(assert (=> d!213177 t!80591))

(declare-fun t!80593 () Bool)

(declare-fun tb!53057 () Bool)

(assert (=> (and b!606609 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (get!2325 lt!258229)))))) t!80593) tb!53057))

(declare-fun result!59696 () Bool)

(assert (= result!59696 result!59622))

(assert (=> d!213767 t!80593))

(declare-fun b_and!60077 () Bool)

(declare-fun tp!188283 () Bool)

(assert (=> b!606609 (= tp!188283 (and (=> t!80581 result!59684) (=> t!80587 result!59690) (=> t!80593 result!59696) (=> t!80583 result!59686) (=> t!80591 result!59694) (=> t!80589 result!59692) (=> t!80585 result!59688) (=> t!80579 result!59682) b_and!60077))))

(declare-fun e!367571 () Bool)

(assert (=> b!606609 (= e!367571 (and tp!188282 tp!188283))))

(declare-fun b!606608 () Bool)

(declare-fun tp!188284 () Bool)

(declare-fun e!367572 () Bool)

(assert (=> b!606608 (= e!367572 (and tp!188284 (inv!7686 (tag!1469 (h!11453 (t!80333 (t!80333 rules!3103))))) (inv!7689 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) e!367571))))

(declare-fun b!606607 () Bool)

(declare-fun e!367570 () Bool)

(declare-fun tp!188281 () Bool)

(assert (=> b!606607 (= e!367570 (and e!367572 tp!188281))))

(assert (=> b!605563 (= tp!188158 e!367570)))

(assert (= b!606608 b!606609))

(assert (= b!606607 b!606608))

(assert (= (and b!605563 ((_ is Cons!6052) (t!80333 (t!80333 rules!3103)))) b!606607))

(declare-fun m!873289 () Bool)

(assert (=> b!606608 m!873289))

(declare-fun m!873291 () Bool)

(assert (=> b!606608 m!873291))

(declare-fun b!606612 () Bool)

(declare-fun e!367574 () Bool)

(declare-fun tp!188288 () Bool)

(assert (=> b!606612 (= e!367574 tp!188288)))

(declare-fun b!606613 () Bool)

(declare-fun tp!188286 () Bool)

(declare-fun tp!188285 () Bool)

(assert (=> b!606613 (= e!367574 (and tp!188286 tp!188285))))

(declare-fun b!606611 () Bool)

(declare-fun tp!188287 () Bool)

(declare-fun tp!188289 () Bool)

(assert (=> b!606611 (= e!367574 (and tp!188287 tp!188289))))

(declare-fun b!606610 () Bool)

(assert (=> b!606610 (= e!367574 tp_is_empty!3437)))

(assert (=> b!605569 (= tp!188163 e!367574)))

(assert (= (and b!605569 ((_ is ElementMatch!1541) (regOne!3595 (regex!1207 (h!11453 rules!3103))))) b!606610))

(assert (= (and b!605569 ((_ is Concat!2772) (regOne!3595 (regex!1207 (h!11453 rules!3103))))) b!606611))

(assert (= (and b!605569 ((_ is Star!1541) (regOne!3595 (regex!1207 (h!11453 rules!3103))))) b!606612))

(assert (= (and b!605569 ((_ is Union!1541) (regOne!3595 (regex!1207 (h!11453 rules!3103))))) b!606613))

(declare-fun b!606616 () Bool)

(declare-fun e!367575 () Bool)

(declare-fun tp!188293 () Bool)

(assert (=> b!606616 (= e!367575 tp!188293)))

(declare-fun b!606617 () Bool)

(declare-fun tp!188291 () Bool)

(declare-fun tp!188290 () Bool)

(assert (=> b!606617 (= e!367575 (and tp!188291 tp!188290))))

(declare-fun b!606615 () Bool)

(declare-fun tp!188292 () Bool)

(declare-fun tp!188294 () Bool)

(assert (=> b!606615 (= e!367575 (and tp!188292 tp!188294))))

(declare-fun b!606614 () Bool)

(assert (=> b!606614 (= e!367575 tp_is_empty!3437)))

(assert (=> b!605569 (= tp!188162 e!367575)))

(assert (= (and b!605569 ((_ is ElementMatch!1541) (regTwo!3595 (regex!1207 (h!11453 rules!3103))))) b!606614))

(assert (= (and b!605569 ((_ is Concat!2772) (regTwo!3595 (regex!1207 (h!11453 rules!3103))))) b!606615))

(assert (= (and b!605569 ((_ is Star!1541) (regTwo!3595 (regex!1207 (h!11453 rules!3103))))) b!606616))

(assert (= (and b!605569 ((_ is Union!1541) (regTwo!3595 (regex!1207 (h!11453 rules!3103))))) b!606617))

(declare-fun b!606618 () Bool)

(declare-fun e!367576 () Bool)

(declare-fun tp!188295 () Bool)

(assert (=> b!606618 (= e!367576 (and tp_is_empty!3437 tp!188295))))

(assert (=> b!605552 (= tp!188147 e!367576)))

(assert (= (and b!605552 ((_ is Cons!6051) (t!80332 (originalCharacters!1246 token!491)))) b!606618))

(declare-fun b!606621 () Bool)

(declare-fun e!367577 () Bool)

(declare-fun tp!188299 () Bool)

(assert (=> b!606621 (= e!367577 tp!188299)))

(declare-fun b!606622 () Bool)

(declare-fun tp!188297 () Bool)

(declare-fun tp!188296 () Bool)

(assert (=> b!606622 (= e!367577 (and tp!188297 tp!188296))))

(declare-fun b!606620 () Bool)

(declare-fun tp!188298 () Bool)

(declare-fun tp!188300 () Bool)

(assert (=> b!606620 (= e!367577 (and tp!188298 tp!188300))))

(declare-fun b!606619 () Bool)

(assert (=> b!606619 (= e!367577 tp_is_empty!3437)))

(assert (=> b!605546 (= tp!188143 e!367577)))

(assert (= (and b!605546 ((_ is ElementMatch!1541) (reg!1870 (regex!1207 (rule!1987 token!491))))) b!606619))

(assert (= (and b!605546 ((_ is Concat!2772) (reg!1870 (regex!1207 (rule!1987 token!491))))) b!606620))

(assert (= (and b!605546 ((_ is Star!1541) (reg!1870 (regex!1207 (rule!1987 token!491))))) b!606621))

(assert (= (and b!605546 ((_ is Union!1541) (reg!1870 (regex!1207 (rule!1987 token!491))))) b!606622))

(declare-fun b!606625 () Bool)

(declare-fun e!367578 () Bool)

(declare-fun tp!188304 () Bool)

(assert (=> b!606625 (= e!367578 tp!188304)))

(declare-fun b!606626 () Bool)

(declare-fun tp!188302 () Bool)

(declare-fun tp!188301 () Bool)

(assert (=> b!606626 (= e!367578 (and tp!188302 tp!188301))))

(declare-fun b!606624 () Bool)

(declare-fun tp!188303 () Bool)

(declare-fun tp!188305 () Bool)

(assert (=> b!606624 (= e!367578 (and tp!188303 tp!188305))))

(declare-fun b!606623 () Bool)

(assert (=> b!606623 (= e!367578 tp_is_empty!3437)))

(assert (=> b!605547 (= tp!188141 e!367578)))

(assert (= (and b!605547 ((_ is ElementMatch!1541) (regOne!3595 (regex!1207 (rule!1987 token!491))))) b!606623))

(assert (= (and b!605547 ((_ is Concat!2772) (regOne!3595 (regex!1207 (rule!1987 token!491))))) b!606624))

(assert (= (and b!605547 ((_ is Star!1541) (regOne!3595 (regex!1207 (rule!1987 token!491))))) b!606625))

(assert (= (and b!605547 ((_ is Union!1541) (regOne!3595 (regex!1207 (rule!1987 token!491))))) b!606626))

(declare-fun b!606629 () Bool)

(declare-fun e!367579 () Bool)

(declare-fun tp!188309 () Bool)

(assert (=> b!606629 (= e!367579 tp!188309)))

(declare-fun b!606630 () Bool)

(declare-fun tp!188307 () Bool)

(declare-fun tp!188306 () Bool)

(assert (=> b!606630 (= e!367579 (and tp!188307 tp!188306))))

(declare-fun b!606628 () Bool)

(declare-fun tp!188308 () Bool)

(declare-fun tp!188310 () Bool)

(assert (=> b!606628 (= e!367579 (and tp!188308 tp!188310))))

(declare-fun b!606627 () Bool)

(assert (=> b!606627 (= e!367579 tp_is_empty!3437)))

(assert (=> b!605547 (= tp!188140 e!367579)))

(assert (= (and b!605547 ((_ is ElementMatch!1541) (regTwo!3595 (regex!1207 (rule!1987 token!491))))) b!606627))

(assert (= (and b!605547 ((_ is Concat!2772) (regTwo!3595 (regex!1207 (rule!1987 token!491))))) b!606628))

(assert (= (and b!605547 ((_ is Star!1541) (regTwo!3595 (regex!1207 (rule!1987 token!491))))) b!606629))

(assert (= (and b!605547 ((_ is Union!1541) (regTwo!3595 (regex!1207 (rule!1987 token!491))))) b!606630))

(declare-fun b!606633 () Bool)

(declare-fun e!367580 () Bool)

(declare-fun tp!188314 () Bool)

(assert (=> b!606633 (= e!367580 tp!188314)))

(declare-fun b!606634 () Bool)

(declare-fun tp!188312 () Bool)

(declare-fun tp!188311 () Bool)

(assert (=> b!606634 (= e!367580 (and tp!188312 tp!188311))))

(declare-fun b!606632 () Bool)

(declare-fun tp!188313 () Bool)

(declare-fun tp!188315 () Bool)

(assert (=> b!606632 (= e!367580 (and tp!188313 tp!188315))))

(declare-fun b!606631 () Bool)

(assert (=> b!606631 (= e!367580 tp_is_empty!3437)))

(assert (=> b!605564 (= tp!188161 e!367580)))

(assert (= (and b!605564 ((_ is ElementMatch!1541) (regex!1207 (h!11453 (t!80333 rules!3103))))) b!606631))

(assert (= (and b!605564 ((_ is Concat!2772) (regex!1207 (h!11453 (t!80333 rules!3103))))) b!606632))

(assert (= (and b!605564 ((_ is Star!1541) (regex!1207 (h!11453 (t!80333 rules!3103))))) b!606633))

(assert (= (and b!605564 ((_ is Union!1541) (regex!1207 (h!11453 (t!80333 rules!3103))))) b!606634))

(declare-fun b!606637 () Bool)

(declare-fun e!367581 () Bool)

(declare-fun tp!188319 () Bool)

(assert (=> b!606637 (= e!367581 tp!188319)))

(declare-fun b!606638 () Bool)

(declare-fun tp!188317 () Bool)

(declare-fun tp!188316 () Bool)

(assert (=> b!606638 (= e!367581 (and tp!188317 tp!188316))))

(declare-fun b!606636 () Bool)

(declare-fun tp!188318 () Bool)

(declare-fun tp!188320 () Bool)

(assert (=> b!606636 (= e!367581 (and tp!188318 tp!188320))))

(declare-fun b!606635 () Bool)

(assert (=> b!606635 (= e!367581 tp_is_empty!3437)))

(assert (=> b!605545 (= tp!188142 e!367581)))

(assert (= (and b!605545 ((_ is ElementMatch!1541) (regOne!3594 (regex!1207 (rule!1987 token!491))))) b!606635))

(assert (= (and b!605545 ((_ is Concat!2772) (regOne!3594 (regex!1207 (rule!1987 token!491))))) b!606636))

(assert (= (and b!605545 ((_ is Star!1541) (regOne!3594 (regex!1207 (rule!1987 token!491))))) b!606637))

(assert (= (and b!605545 ((_ is Union!1541) (regOne!3594 (regex!1207 (rule!1987 token!491))))) b!606638))

(declare-fun b!606641 () Bool)

(declare-fun e!367582 () Bool)

(declare-fun tp!188324 () Bool)

(assert (=> b!606641 (= e!367582 tp!188324)))

(declare-fun b!606642 () Bool)

(declare-fun tp!188322 () Bool)

(declare-fun tp!188321 () Bool)

(assert (=> b!606642 (= e!367582 (and tp!188322 tp!188321))))

(declare-fun b!606640 () Bool)

(declare-fun tp!188323 () Bool)

(declare-fun tp!188325 () Bool)

(assert (=> b!606640 (= e!367582 (and tp!188323 tp!188325))))

(declare-fun b!606639 () Bool)

(assert (=> b!606639 (= e!367582 tp_is_empty!3437)))

(assert (=> b!605545 (= tp!188144 e!367582)))

(assert (= (and b!605545 ((_ is ElementMatch!1541) (regTwo!3594 (regex!1207 (rule!1987 token!491))))) b!606639))

(assert (= (and b!605545 ((_ is Concat!2772) (regTwo!3594 (regex!1207 (rule!1987 token!491))))) b!606640))

(assert (= (and b!605545 ((_ is Star!1541) (regTwo!3594 (regex!1207 (rule!1987 token!491))))) b!606641))

(assert (= (and b!605545 ((_ is Union!1541) (regTwo!3594 (regex!1207 (rule!1987 token!491))))) b!606642))

(declare-fun b!606643 () Bool)

(declare-fun e!367583 () Bool)

(declare-fun tp!188326 () Bool)

(assert (=> b!606643 (= e!367583 (and tp_is_empty!3437 tp!188326))))

(assert (=> b!605553 (= tp!188148 e!367583)))

(assert (= (and b!605553 ((_ is Cons!6051) (t!80332 (t!80332 suffix!1342)))) b!606643))

(declare-fun b_lambda!24039 () Bool)

(assert (= b_lambda!23983 (or (and b!605121 b_free!17231 (= (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toChars!1969 (transformation!1207 (rule!1987 token!491))))) (and b!605099 b_free!17235) (and b!605565 b_free!17243 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toChars!1969 (transformation!1207 (rule!1987 token!491))))) (and b!606609 b_free!17251 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toChars!1969 (transformation!1207 (rule!1987 token!491))))) b_lambda!24039)))

(declare-fun b_lambda!24041 () Bool)

(assert (= b_lambda!24007 (or (and b!605121 b_free!17229 (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 token!491))))) (and b!605099 b_free!17233) (and b!605565 b_free!17241 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (rule!1987 token!491))))) (and b!606609 b_free!17249 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toValue!2110 (transformation!1207 (rule!1987 token!491))))) b_lambda!24041)))

(declare-fun b_lambda!24043 () Bool)

(assert (= b_lambda!23947 (or (and b!605121 b_free!17231 (= (toChars!1969 (transformation!1207 (h!11453 rules!3103))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))) (and b!605099 b_free!17235 (= (toChars!1969 (transformation!1207 (rule!1987 token!491))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))) (and b!605565 b_free!17243 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))) (and b!606609 b_free!17251 (= (toChars!1969 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toChars!1969 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))) b_lambda!24043)))

(declare-fun b_lambda!24045 () Bool)

(assert (= b_lambda!23985 (or (and b!605121 b_free!17229 (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 token!491))))) (and b!605099 b_free!17233) (and b!605565 b_free!17241 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (rule!1987 token!491))))) (and b!606609 b_free!17249 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toValue!2110 (transformation!1207 (rule!1987 token!491))))) b_lambda!24045)))

(declare-fun b_lambda!24047 () Bool)

(assert (= b_lambda!23949 (or (and b!605121 b_free!17229 (= (toValue!2110 (transformation!1207 (h!11453 rules!3103))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))) (and b!605099 b_free!17233 (= (toValue!2110 (transformation!1207 (rule!1987 token!491))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))) (and b!605565 b_free!17241 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 rules!3103)))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))) (and b!606609 b_free!17249 (= (toValue!2110 (transformation!1207 (h!11453 (t!80333 (t!80333 rules!3103))))) (toValue!2110 (transformation!1207 (rule!1987 (_1!3728 (v!16458 lt!258174))))))) b_lambda!24047)))

(check-sat (not b_lambda!24021) tp_is_empty!3437 (not b!606529) (not b!606214) (not b!606643) (not b!606363) (not d!213727) (not d!213331) (not bm!40779) (not b!606404) (not b!606324) (not bm!40763) (not d!213875) (not d!213325) b_and!60077 (not b!606618) (not d!213715) (not b!606526) (not b!605684) (not b!606630) (not d!213793) (not b_next!17257) (not b!606598) (not b!606433) (not b!606622) (not b!606500) (not b_lambda!24033) (not b!606424) (not d!213903) (not b!606468) (not d!213761) (not b!606481) (not bm!40760) (not b!606575) (not b!606414) (not b!606250) (not b_lambda!24041) (not b!605688) (not b!606508) (not d!213647) (not d!213695) (not b!606405) (not d!213823) (not b!606546) (not b!606361) (not b!606489) (not b_lambda!24045) (not b!606248) (not b!606599) b_and!60061 (not d!213913) (not tb!52869) (not d!213611) (not b!606462) (not d!213797) (not b!606394) (not d!213859) (not b!606440) (not b!606624) (not d!213861) (not b!606466) (not b!606451) (not b!606511) (not d!213429) (not b!606057) (not d!213777) (not bm!40774) (not b!606415) (not d!213833) (not b!606545) (not b!606502) (not b!606522) (not d!213865) (not b!606492) (not d!213765) (not d!213713) (not b!606442) (not b!606399) (not b_lambda!23979) (not b!606538) (not b!606434) (not b!605700) (not b!606642) (not d!213371) (not bm!40781) (not b!605689) (not b!606249) (not b!606179) (not b!606456) b_and!60057 (not b!606450) (not tb!52991) (not b!605760) (not bm!40782) (not b!605702) (not b!606634) (not b!606454) (not d!213847) (not b!606504) (not b!606354) (not b!605814) (not b!606420) (not d!213397) (not tb!53009) (not bm!40742) (not b!606438) (not b!606418) (not b!606352) (not b!606602) (not d!213923) (not b_next!17247) (not b!606366) b_and!60075 (not tb!53015) (not b!606611) (not b!606479) (not b!606388) (not b!606251) (not d!213907) (not b!606580) (not b!606408) (not d!213901) (not b!605661) (not b!606425) (not b!605530) (not b!606180) (not b!606345) (not b!606523) (not b_next!17249) (not b!606246) (not b!606379) (not b!606178) (not d!213463) (not b!606331) (not b!606055) (not b!606184) (not d!213941) (not b!606054) (not d!213857) (not b!606564) (not b!606448) (not b!606372) (not d!213347) (not d!213705) (not tb!52881) (not b_next!17267) (not b!606638) (not bm!40755) (not b!606525) (not d!213933) (not b!606553) (not b!606254) (not d!213651) (not b!606633) (not d!213771) (not b!605680) (not b!605874) (not b!606385) (not b_lambda!24047) (not b!605664) (not b!606509) (not d!213811) (not b!606247) (not b!606368) (not b!606486) (not bm!40780) (not d!213379) (not d!213809) (not b!606340) (not b!606348) (not d!213911) (not d!213739) (not bm!40756) (not b!606487) (not d!213849) (not b!606343) (not bm!40778) (not b!606490) (not b!606503) (not b!605681) (not b!605787) (not b!606588) (not b_next!17259) (not b!606362) (not b_lambda!24009) (not tb!53021) (not d!213751) b_and!60069 (not b!606478) (not b!606401) (not d!213737) (not b!606256) (not b!605345) (not b!606421) (not b_lambda!24023) (not b!606540) (not d!213323) (not d!213749) (not bm!40773) (not b!606637) (not d!213813) (not d!213453) (not d!213389) (not tb!52887) (not b!606464) (not b!606430) (not d!213945) b_and!60059 (not b!606400) (not bm!40761) (not b!606572) (not d!213805) (not b!606346) (not b!606467) (not bm!40775) (not b!606601) (not b!606065) (not b!606608) (not b_lambda!23967) (not d!213399) (not b!606427) (not b!606550) (not b!606389) (not b!606543) (not d!213757) (not b!606416) (not b!605662) (not bm!40757) (not b!606495) (not bm!40745) (not b!606407) (not b!606626) (not b!606449) (not b!605704) (not b!605788) (not bm!40762) (not bm!40759) (not b!606531) (not b!606498) (not b!606203) (not b_lambda!24031) (not b!606093) (not b!606549) (not b!606341) (not b!605759) (not b!606255) (not b!606276) (not d!213863) (not d!213787) (not b_lambda!23969) (not b_lambda!24037) (not b!606621) (not b!605762) (not b!605776) (not d!213877) (not b!606095) (not b!606411) (not b_lambda!24027) (not d!213927) (not b!605789) (not d!213469) (not b!606629) (not b!606204) (not b!606640) (not b!606437) (not b!606493) (not d!213893) (not b!606067) (not b!606423) (not b!606583) (not d!213917) (not b!606555) (not b!606406) (not d!213381) (not b!606350) (not b!606577) (not b!606496) (not d!213735) (not b!606206) b_and!60073 (not b_lambda!24029) (not d!213885) (not b!606360) (not b!606617) (not b!606603) (not b_lambda!24035) (not tb!52985) (not b!606620) (not d!213475) (not tb!52941) (not b!605858) (not d!213935) (not b!606501) (not b_next!17245) (not b_lambda!24043) (not d!213767) (not b_next!17251) (not b!606616) (not b!606557) (not b!606606) (not b!606569) (not b!606507) (not b!606432) (not b!606061) (not bm!40748) (not d!213825) (not b!606393) (not b!606605) (not b!606472) (not d!213855) (not b!606046) (not b_next!17265) (not d!213891) (not b!606386) (not bm!40746) (not b!605812) (not b_lambda!24039) (not b!606436) (not b!606172) (not b!606597) (not b!606470) (not d!213829) (not b_lambda!24025) (not b!606566) (not d!213795) (not b!606392) (not b!606612) (not d!213725) (not d!213321) (not b!606586) (not b!606431) (not b!606604) (not b!606403) (not b!606484) (not b!606252) (not b!606582) (not b_lambda!23971) (not b!606607) (not b!606632) (not b!606339) (not b!605694) (not b!606397) (not b!606337) (not b!605883) (not bm!40749) (not b!606636) (not d!213929) (not d!213919) (not b!606563) (not b!606429) (not d!213879) (not b!606587) (not d!213745) (not b!606578) (not d!213741) (not b!606615) (not b!606551) (not bm!40777) (not bm!40764) (not tb!53003) (not bm!40771) (not b!606505) (not tb!52997) (not b!605857) (not b!606384) (not b!606539) (not b!606625) (not b!606063) (not b!606410) (not b!605856) (not bm!40747) (not b!606351) (not bm!40743) (not tb!52979) (not d!213775) (not b!606573) (not b!606628) b_and!60071 (not bm!40758) (not b!606584) (not b!605775) (not b!606537) (not b!606195) (not b!606412) (not b!606181) (not b!606641) (not d!213413) (not d!213743) (not b!606565) (not b!606480) (not b!606613) (not bm!40744))
(check-sat b_and!60077 (not b_next!17257) b_and!60061 b_and!60057 (not b_next!17249) (not b_next!17267) b_and!60059 b_and!60073 (not b_next!17245) (not b_next!17251) (not b_next!17265) b_and!60071 (not b_next!17247) b_and!60075 b_and!60069 (not b_next!17259))
