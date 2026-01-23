; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!57898 () Bool)

(assert start!57898)

(declare-fun b!606712 () Bool)

(declare-fun b_free!17253 () Bool)

(declare-fun b_next!17269 () Bool)

(assert (=> b!606712 (= b_free!17253 (not b_next!17269))))

(declare-fun tp!188351 () Bool)

(declare-fun b_and!60079 () Bool)

(assert (=> b!606712 (= tp!188351 b_and!60079)))

(declare-fun b_free!17255 () Bool)

(declare-fun b_next!17271 () Bool)

(assert (=> b!606712 (= b_free!17255 (not b_next!17271))))

(declare-fun tp!188350 () Bool)

(declare-fun b_and!60081 () Bool)

(assert (=> b!606712 (= tp!188350 b_and!60081)))

(declare-fun b!606699 () Bool)

(declare-fun b_free!17257 () Bool)

(declare-fun b_next!17273 () Bool)

(assert (=> b!606699 (= b_free!17257 (not b_next!17273))))

(declare-fun tp!188354 () Bool)

(declare-fun b_and!60083 () Bool)

(assert (=> b!606699 (= tp!188354 b_and!60083)))

(declare-fun b_free!17259 () Bool)

(declare-fun b_next!17275 () Bool)

(assert (=> b!606699 (= b_free!17259 (not b_next!17275))))

(declare-fun tp!188348 () Bool)

(declare-fun b_and!60085 () Bool)

(assert (=> b!606699 (= tp!188348 b_and!60085)))

(declare-fun b!606698 () Bool)

(declare-fun res!262807 () Bool)

(declare-fun e!367632 () Bool)

(assert (=> b!606698 (=> (not res!262807) (not e!367632))))

(declare-datatypes ((C!4006 0))(
  ( (C!4007 (val!2229 Int)) )
))
(declare-datatypes ((Regex!1542 0))(
  ( (ElementMatch!1542 (c!112481 C!4006)) (Concat!2774 (regOne!3596 Regex!1542) (regTwo!3596 Regex!1542)) (EmptyExpr!1542) (Star!1542 (reg!1871 Regex!1542)) (EmptyLang!1542) (Union!1542 (regOne!3597 Regex!1542) (regTwo!3597 Regex!1542)) )
))
(declare-datatypes ((List!6065 0))(
  ( (Nil!6055) (Cons!6055 (h!11456 C!4006) (t!80594 List!6065)) )
))
(declare-datatypes ((IArray!3851 0))(
  ( (IArray!3852 (innerList!1983 List!6065)) )
))
(declare-datatypes ((Conc!1925 0))(
  ( (Node!1925 (left!4862 Conc!1925) (right!5192 Conc!1925) (csize!4080 Int) (cheight!2136 Int)) (Leaf!3037 (xs!4562 IArray!3851) (csize!4081 Int)) (Empty!1925) )
))
(declare-datatypes ((BalanceConc!3858 0))(
  ( (BalanceConc!3859 (c!112482 Conc!1925)) )
))
(declare-datatypes ((List!6066 0))(
  ( (Nil!6056) (Cons!6056 (h!11457 (_ BitVec 16)) (t!80595 List!6066)) )
))
(declare-datatypes ((TokenValue!1232 0))(
  ( (FloatLiteralValue!2464 (text!9069 List!6066)) (TokenValueExt!1231 (__x!4362 Int)) (Broken!6160 (value!39270 List!6066)) (Object!1241) (End!1232) (Def!1232) (Underscore!1232) (Match!1232) (Else!1232) (Error!1232) (Case!1232) (If!1232) (Extends!1232) (Abstract!1232) (Class!1232) (Val!1232) (DelimiterValue!2464 (del!1292 List!6066)) (KeywordValue!1238 (value!39271 List!6066)) (CommentValue!2464 (value!39272 List!6066)) (WhitespaceValue!2464 (value!39273 List!6066)) (IndentationValue!1232 (value!39274 List!6066)) (String!7905) (Int32!1232) (Broken!6161 (value!39275 List!6066)) (Boolean!1233) (Unit!11054) (OperatorValue!1235 (op!1292 List!6066)) (IdentifierValue!2464 (value!39276 List!6066)) (IdentifierValue!2465 (value!39277 List!6066)) (WhitespaceValue!2465 (value!39278 List!6066)) (True!2464) (False!2464) (Broken!6162 (value!39279 List!6066)) (Broken!6163 (value!39280 List!6066)) (True!2465) (RightBrace!1232) (RightBracket!1232) (Colon!1232) (Null!1232) (Comma!1232) (LeftBracket!1232) (False!2465) (LeftBrace!1232) (ImaginaryLiteralValue!1232 (text!9070 List!6066)) (StringLiteralValue!3696 (value!39281 List!6066)) (EOFValue!1232 (value!39282 List!6066)) (IdentValue!1232 (value!39283 List!6066)) (DelimiterValue!2465 (value!39284 List!6066)) (DedentValue!1232 (value!39285 List!6066)) (NewLineValue!1232 (value!39286 List!6066)) (IntegerValue!3696 (value!39287 (_ BitVec 32)) (text!9071 List!6066)) (IntegerValue!3697 (value!39288 Int) (text!9072 List!6066)) (Times!1232) (Or!1232) (Equal!1232) (Minus!1232) (Broken!6164 (value!39289 List!6066)) (And!1232) (Div!1232) (LessEqual!1232) (Mod!1232) (Concat!2775) (Not!1232) (Plus!1232) (SpaceValue!1232 (value!39290 List!6066)) (IntegerValue!3698 (value!39291 Int) (text!9073 List!6066)) (StringLiteralValue!3697 (text!9074 List!6066)) (FloatLiteralValue!2465 (text!9075 List!6066)) (BytesLiteralValue!1232 (value!39292 List!6066)) (CommentValue!2465 (value!39293 List!6066)) (StringLiteralValue!3698 (value!39294 List!6066)) (ErrorTokenValue!1232 (msg!1293 List!6066)) )
))
(declare-datatypes ((String!7906 0))(
  ( (String!7907 (value!39295 String)) )
))
(declare-datatypes ((TokenValueInjection!2232 0))(
  ( (TokenValueInjection!2233 (toValue!2115 Int) (toChars!1974 Int)) )
))
(declare-datatypes ((Rule!2216 0))(
  ( (Rule!2217 (regex!1208 Regex!1542) (tag!1470 String!7906) (isSeparator!1208 Bool) (transformation!1208 TokenValueInjection!2232)) )
))
(declare-datatypes ((Token!2152 0))(
  ( (Token!2153 (value!39296 TokenValue!1232) (rule!1990 Rule!2216) (size!4766 Int) (originalCharacters!1247 List!6065)) )
))
(declare-datatypes ((tuple2!6934 0))(
  ( (tuple2!6935 (_1!3731 Token!2152) (_2!3731 List!6065)) )
))
(declare-datatypes ((Option!1559 0))(
  ( (None!1558) (Some!1558 (v!16461 tuple2!6934)) )
))
(declare-fun lt!258930 () Option!1559)

(declare-fun size!4767 (List!6065) Int)

(assert (=> b!606698 (= res!262807 (= (size!4766 (_1!3731 (v!16461 lt!258930))) (size!4767 (originalCharacters!1247 (_1!3731 (v!16461 lt!258930))))))))

(declare-fun e!367643 () Bool)

(assert (=> b!606699 (= e!367643 (and tp!188354 tp!188348))))

(declare-fun b!606700 () Bool)

(declare-fun res!262810 () Bool)

(declare-fun e!367637 () Bool)

(assert (=> b!606700 (=> (not res!262810) (not e!367637))))

(declare-datatypes ((List!6067 0))(
  ( (Nil!6057) (Cons!6057 (h!11458 Rule!2216) (t!80596 List!6067)) )
))
(declare-fun rules!3103 () List!6067)

(declare-fun isEmpty!4371 (List!6067) Bool)

(assert (=> b!606700 (= res!262810 (not (isEmpty!4371 rules!3103)))))

(declare-fun b!606701 () Bool)

(declare-fun e!367641 () Bool)

(declare-fun get!2327 (Option!1559) tuple2!6934)

(assert (=> b!606701 (= e!367641 (= (_1!3731 (get!2327 lt!258930)) (_1!3731 (v!16461 lt!258930))))))

(declare-fun b!606702 () Bool)

(declare-fun res!262811 () Bool)

(assert (=> b!606702 (=> (not res!262811) (not e!367637))))

(declare-datatypes ((LexerInterface!1094 0))(
  ( (LexerInterfaceExt!1091 (__x!4363 Int)) (Lexer!1092) )
))
(declare-fun thiss!22590 () LexerInterface!1094)

(declare-fun rulesInvariant!1057 (LexerInterface!1094 List!6067) Bool)

(assert (=> b!606702 (= res!262811 (rulesInvariant!1057 thiss!22590 rules!3103))))

(declare-fun tp!188352 () Bool)

(declare-fun b!606703 () Bool)

(declare-fun token!491 () Token!2152)

(declare-fun e!367634 () Bool)

(declare-fun e!367650 () Bool)

(declare-fun inv!21 (TokenValue!1232) Bool)

(assert (=> b!606703 (= e!367650 (and (inv!21 (value!39296 token!491)) e!367634 tp!188352))))

(declare-fun b!606704 () Bool)

(declare-fun tp!188356 () Bool)

(declare-fun inv!7701 (String!7906) Bool)

(declare-fun inv!7704 (TokenValueInjection!2232) Bool)

(assert (=> b!606704 (= e!367634 (and tp!188356 (inv!7701 (tag!1470 (rule!1990 token!491))) (inv!7704 (transformation!1208 (rule!1990 token!491))) e!367643))))

(declare-fun b!606705 () Bool)

(declare-fun e!367642 () Bool)

(declare-fun e!367644 () Bool)

(assert (=> b!606705 (= e!367642 e!367644)))

(declare-fun res!262801 () Bool)

(assert (=> b!606705 (=> (not res!262801) (not e!367644))))

(declare-fun lt!258941 () Option!1559)

(declare-fun isDefined!1370 (Option!1559) Bool)

(assert (=> b!606705 (= res!262801 (isDefined!1370 lt!258941))))

(declare-fun lt!258955 () List!6065)

(declare-fun maxPrefix!792 (LexerInterface!1094 List!6067 List!6065) Option!1559)

(assert (=> b!606705 (= lt!258941 (maxPrefix!792 thiss!22590 rules!3103 lt!258955))))

(declare-fun input!2705 () List!6065)

(declare-fun suffix!1342 () List!6065)

(declare-fun ++!1696 (List!6065 List!6065) List!6065)

(assert (=> b!606705 (= lt!258955 (++!1696 input!2705 suffix!1342))))

(declare-fun b!606706 () Bool)

(assert (=> b!606706 (= e!367637 e!367642)))

(declare-fun res!262806 () Bool)

(assert (=> b!606706 (=> (not res!262806) (not e!367642))))

(declare-fun lt!258938 () List!6065)

(assert (=> b!606706 (= res!262806 (= lt!258938 input!2705))))

(declare-fun list!2547 (BalanceConc!3858) List!6065)

(declare-fun charsOf!837 (Token!2152) BalanceConc!3858)

(assert (=> b!606706 (= lt!258938 (list!2547 (charsOf!837 token!491)))))

(declare-fun b!606707 () Bool)

(declare-fun e!367633 () Bool)

(declare-fun tp_is_empty!3439 () Bool)

(declare-fun tp!188353 () Bool)

(assert (=> b!606707 (= e!367633 (and tp_is_empty!3439 tp!188353))))

(declare-fun res!262808 () Bool)

(assert (=> start!57898 (=> (not res!262808) (not e!367637))))

(assert (=> start!57898 (= res!262808 (is-Lexer!1092 thiss!22590))))

(assert (=> start!57898 e!367637))

(assert (=> start!57898 e!367633))

(declare-fun e!367653 () Bool)

(assert (=> start!57898 e!367653))

(declare-fun inv!7705 (Token!2152) Bool)

(assert (=> start!57898 (and (inv!7705 token!491) e!367650)))

(assert (=> start!57898 true))

(declare-fun e!367652 () Bool)

(assert (=> start!57898 e!367652))

(declare-fun b!606708 () Bool)

(declare-fun e!367654 () Bool)

(declare-fun tp!188355 () Bool)

(assert (=> b!606708 (= e!367653 (and e!367654 tp!188355))))

(declare-fun b!606709 () Bool)

(declare-fun e!367645 () Bool)

(assert (=> b!606709 (= e!367645 (isDefined!1370 lt!258930))))

(declare-fun b!606710 () Bool)

(declare-fun e!367651 () Bool)

(declare-fun e!367639 () Bool)

(assert (=> b!606710 (= e!367651 e!367639)))

(declare-fun res!262809 () Bool)

(assert (=> b!606710 (=> (not res!262809) (not e!367639))))

(assert (=> b!606710 (= res!262809 (is-Some!1558 lt!258930))))

(assert (=> b!606710 (= lt!258930 (maxPrefix!792 thiss!22590 rules!3103 input!2705))))

(declare-fun lt!258947 () Int)

(declare-fun b!606711 () Bool)

(declare-fun lt!258940 () tuple2!6934)

(declare-fun lt!258935 () TokenValue!1232)

(declare-fun lt!258956 () List!6065)

(declare-fun lt!258932 () List!6065)

(assert (=> b!606711 (= e!367632 (and (= (size!4766 (_1!3731 (v!16461 lt!258930))) lt!258947) (= (originalCharacters!1247 (_1!3731 (v!16461 lt!258930))) lt!258932) (= lt!258940 (tuple2!6935 (Token!2153 lt!258935 (rule!1990 (_1!3731 (v!16461 lt!258930))) lt!258947 lt!258932) lt!258956))))))

(declare-fun e!367636 () Bool)

(assert (=> b!606712 (= e!367636 (and tp!188351 tp!188350))))

(declare-fun b!606713 () Bool)

(declare-fun res!262805 () Bool)

(declare-fun e!367648 () Bool)

(assert (=> b!606713 (=> (not res!262805) (not e!367648))))

(assert (=> b!606713 (= res!262805 (= (size!4766 token!491) (size!4767 (originalCharacters!1247 token!491))))))

(declare-fun b!606714 () Bool)

(declare-datatypes ((Unit!11055 0))(
  ( (Unit!11056) )
))
(declare-fun e!367638 () Unit!11055)

(declare-fun Unit!11057 () Unit!11055)

(assert (=> b!606714 (= e!367638 Unit!11057)))

(assert (=> b!606714 false))

(declare-fun b!606715 () Bool)

(assert (=> b!606715 (= e!367644 e!367651)))

(declare-fun res!262797 () Bool)

(assert (=> b!606715 (=> (not res!262797) (not e!367651))))

(declare-fun lt!258954 () tuple2!6934)

(assert (=> b!606715 (= res!262797 (and (= (_1!3731 lt!258954) token!491) (= (_2!3731 lt!258954) suffix!1342)))))

(assert (=> b!606715 (= lt!258954 (get!2327 lt!258941))))

(declare-fun b!606716 () Bool)

(declare-fun e!367635 () Bool)

(declare-fun e!367655 () Bool)

(assert (=> b!606716 (= e!367635 (not e!367655))))

(declare-fun res!262798 () Bool)

(assert (=> b!606716 (=> res!262798 e!367655)))

(declare-fun lt!258957 () List!6065)

(declare-fun isPrefix!836 (List!6065 List!6065) Bool)

(assert (=> b!606716 (= res!262798 (not (isPrefix!836 input!2705 lt!258957)))))

(assert (=> b!606716 (isPrefix!836 lt!258938 lt!258957)))

(declare-fun lt!258949 () Unit!11055)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!681 (List!6065 List!6065) Unit!11055)

(assert (=> b!606716 (= lt!258949 (lemmaConcatTwoListThenFirstIsPrefix!681 lt!258938 suffix!1342))))

(assert (=> b!606716 (isPrefix!836 input!2705 lt!258955)))

(declare-fun lt!258943 () Unit!11055)

(assert (=> b!606716 (= lt!258943 (lemmaConcatTwoListThenFirstIsPrefix!681 input!2705 suffix!1342))))

(assert (=> b!606716 e!367632))

(declare-fun res!262795 () Bool)

(assert (=> b!606716 (=> (not res!262795) (not e!367632))))

(assert (=> b!606716 (= res!262795 (= (value!39296 (_1!3731 (v!16461 lt!258930))) lt!258935))))

(declare-fun apply!1461 (TokenValueInjection!2232 BalanceConc!3858) TokenValue!1232)

(declare-fun seqFromList!1384 (List!6065) BalanceConc!3858)

(assert (=> b!606716 (= lt!258935 (apply!1461 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))) (seqFromList!1384 lt!258932)))))

(declare-fun lt!258934 () Unit!11055)

(declare-fun lemmaInv!316 (TokenValueInjection!2232) Unit!11055)

(assert (=> b!606716 (= lt!258934 (lemmaInv!316 (transformation!1208 (rule!1990 token!491))))))

(declare-fun lt!258931 () Unit!11055)

(assert (=> b!606716 (= lt!258931 (lemmaInv!316 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930))))))))

(declare-fun ruleValid!406 (LexerInterface!1094 Rule!2216) Bool)

(assert (=> b!606716 (ruleValid!406 thiss!22590 (rule!1990 token!491))))

(declare-fun lt!258933 () Unit!11055)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!253 (LexerInterface!1094 Rule!2216 List!6067) Unit!11055)

(assert (=> b!606716 (= lt!258933 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!253 thiss!22590 (rule!1990 token!491) rules!3103))))

(assert (=> b!606716 (ruleValid!406 thiss!22590 (rule!1990 (_1!3731 (v!16461 lt!258930))))))

(declare-fun lt!258939 () Unit!11055)

(assert (=> b!606716 (= lt!258939 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!253 thiss!22590 (rule!1990 (_1!3731 (v!16461 lt!258930))) rules!3103))))

(assert (=> b!606716 (isPrefix!836 input!2705 input!2705)))

(declare-fun lt!258958 () Unit!11055)

(declare-fun lemmaIsPrefixRefl!572 (List!6065 List!6065) Unit!11055)

(assert (=> b!606716 (= lt!258958 (lemmaIsPrefixRefl!572 input!2705 input!2705))))

(assert (=> b!606716 (= (_2!3731 (v!16461 lt!258930)) lt!258956)))

(declare-fun lt!258946 () Unit!11055)

(declare-fun lemmaSamePrefixThenSameSuffix!549 (List!6065 List!6065 List!6065 List!6065 List!6065) Unit!11055)

(assert (=> b!606716 (= lt!258946 (lemmaSamePrefixThenSameSuffix!549 lt!258932 (_2!3731 (v!16461 lt!258930)) lt!258932 lt!258956 input!2705))))

(declare-fun getSuffix!353 (List!6065 List!6065) List!6065)

(assert (=> b!606716 (= lt!258956 (getSuffix!353 input!2705 lt!258932))))

(assert (=> b!606716 (isPrefix!836 lt!258932 (++!1696 lt!258932 (_2!3731 (v!16461 lt!258930))))))

(declare-fun lt!258937 () Unit!11055)

(assert (=> b!606716 (= lt!258937 (lemmaConcatTwoListThenFirstIsPrefix!681 lt!258932 (_2!3731 (v!16461 lt!258930))))))

(declare-fun lt!258945 () Unit!11055)

(declare-fun lemmaCharactersSize!267 (Token!2152) Unit!11055)

(assert (=> b!606716 (= lt!258945 (lemmaCharactersSize!267 token!491))))

(declare-fun lt!258942 () Unit!11055)

(assert (=> b!606716 (= lt!258942 (lemmaCharactersSize!267 (_1!3731 (v!16461 lt!258930))))))

(declare-fun lt!258929 () Unit!11055)

(assert (=> b!606716 (= lt!258929 e!367638)))

(declare-fun c!112480 () Bool)

(declare-fun lt!258953 () Int)

(assert (=> b!606716 (= c!112480 (> lt!258947 lt!258953))))

(assert (=> b!606716 (= lt!258953 (size!4767 lt!258938))))

(assert (=> b!606716 (= lt!258947 (size!4767 lt!258932))))

(assert (=> b!606716 (= lt!258932 (list!2547 (charsOf!837 (_1!3731 (v!16461 lt!258930)))))))

(assert (=> b!606716 (= lt!258930 (Some!1558 lt!258940))))

(assert (=> b!606716 (= lt!258940 (tuple2!6935 (_1!3731 (v!16461 lt!258930)) (_2!3731 (v!16461 lt!258930))))))

(declare-fun lt!258950 () Unit!11055)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!281 (List!6065 List!6065 List!6065 List!6065) Unit!11055)

(assert (=> b!606716 (= lt!258950 (lemmaConcatSameAndSameSizesThenSameLists!281 lt!258938 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!606717 () Bool)

(declare-fun tp!188349 () Bool)

(assert (=> b!606717 (= e!367652 (and tp_is_empty!3439 tp!188349))))

(declare-fun b!606718 () Bool)

(declare-fun e!367647 () Bool)

(assert (=> b!606718 (= e!367647 e!367645)))

(declare-fun res!262802 () Bool)

(assert (=> b!606718 (=> res!262802 e!367645)))

(assert (=> b!606718 (= res!262802 (>= lt!258947 lt!258953))))

(declare-fun b!606719 () Bool)

(declare-fun Unit!11058 () Unit!11055)

(assert (=> b!606719 (= e!367638 Unit!11058)))

(declare-fun b!606720 () Bool)

(declare-fun tp!188347 () Bool)

(assert (=> b!606720 (= e!367654 (and tp!188347 (inv!7701 (tag!1470 (h!11458 rules!3103))) (inv!7704 (transformation!1208 (h!11458 rules!3103))) e!367636))))

(declare-fun b!606721 () Bool)

(assert (=> b!606721 (= e!367655 e!367641)))

(declare-fun res!262804 () Bool)

(assert (=> b!606721 (=> res!262804 e!367641)))

(assert (=> b!606721 (= res!262804 (>= lt!258947 lt!258953))))

(assert (=> b!606721 e!367647))

(declare-fun res!262796 () Bool)

(assert (=> b!606721 (=> (not res!262796) (not e!367647))))

(declare-fun lt!258952 () TokenValue!1232)

(declare-fun maxPrefixOneRule!455 (LexerInterface!1094 Rule!2216 List!6065) Option!1559)

(assert (=> b!606721 (= res!262796 (= (maxPrefixOneRule!455 thiss!22590 (rule!1990 token!491) lt!258955) (Some!1558 (tuple2!6935 (Token!2153 lt!258952 (rule!1990 token!491) lt!258953 lt!258938) suffix!1342))))))

(declare-fun lt!258948 () Unit!11055)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!161 (LexerInterface!1094 List!6067 List!6065 List!6065 List!6065 Rule!2216) Unit!11055)

(assert (=> b!606721 (= lt!258948 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!161 thiss!22590 rules!3103 lt!258938 lt!258955 suffix!1342 (rule!1990 token!491)))))

(assert (=> b!606721 (= (maxPrefixOneRule!455 thiss!22590 (rule!1990 (_1!3731 (v!16461 lt!258930))) input!2705) (Some!1558 (tuple2!6935 (Token!2153 lt!258935 (rule!1990 (_1!3731 (v!16461 lt!258930))) lt!258947 lt!258932) (_2!3731 (v!16461 lt!258930)))))))

(declare-fun lt!258944 () Unit!11055)

(assert (=> b!606721 (= lt!258944 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!161 thiss!22590 rules!3103 lt!258932 input!2705 (_2!3731 (v!16461 lt!258930)) (rule!1990 (_1!3731 (v!16461 lt!258930)))))))

(assert (=> b!606721 e!367648))

(declare-fun res!262803 () Bool)

(assert (=> b!606721 (=> (not res!262803) (not e!367648))))

(assert (=> b!606721 (= res!262803 (= (value!39296 token!491) lt!258952))))

(assert (=> b!606721 (= lt!258952 (apply!1461 (transformation!1208 (rule!1990 token!491)) (seqFromList!1384 lt!258938)))))

(declare-fun lt!258936 () List!6065)

(assert (=> b!606721 (= suffix!1342 lt!258936)))

(declare-fun lt!258951 () Unit!11055)

(assert (=> b!606721 (= lt!258951 (lemmaSamePrefixThenSameSuffix!549 lt!258938 suffix!1342 lt!258938 lt!258936 lt!258955))))

(assert (=> b!606721 (= lt!258936 (getSuffix!353 lt!258955 lt!258938))))

(declare-fun b!606722 () Bool)

(declare-fun res!262799 () Bool)

(assert (=> b!606722 (=> (not res!262799) (not e!367637))))

(declare-fun isEmpty!4372 (List!6065) Bool)

(assert (=> b!606722 (= res!262799 (not (isEmpty!4372 input!2705)))))

(declare-fun b!606723 () Bool)

(assert (=> b!606723 (= e!367639 e!367635)))

(declare-fun res!262800 () Bool)

(assert (=> b!606723 (=> (not res!262800) (not e!367635))))

(assert (=> b!606723 (= res!262800 (= lt!258957 lt!258955))))

(assert (=> b!606723 (= lt!258957 (++!1696 lt!258938 suffix!1342))))

(declare-fun b!606724 () Bool)

(assert (=> b!606724 (= e!367648 (and (= (size!4766 token!491) lt!258953) (= (originalCharacters!1247 token!491) lt!258938) (= (tuple2!6935 token!491 suffix!1342) (tuple2!6935 (Token!2153 lt!258952 (rule!1990 token!491) lt!258953 lt!258938) lt!258936))))))

(assert (= (and start!57898 res!262808) b!606700))

(assert (= (and b!606700 res!262810) b!606702))

(assert (= (and b!606702 res!262811) b!606722))

(assert (= (and b!606722 res!262799) b!606706))

(assert (= (and b!606706 res!262806) b!606705))

(assert (= (and b!606705 res!262801) b!606715))

(assert (= (and b!606715 res!262797) b!606710))

(assert (= (and b!606710 res!262809) b!606723))

(assert (= (and b!606723 res!262800) b!606716))

(assert (= (and b!606716 c!112480) b!606714))

(assert (= (and b!606716 (not c!112480)) b!606719))

(assert (= (and b!606716 res!262795) b!606698))

(assert (= (and b!606698 res!262807) b!606711))

(assert (= (and b!606716 (not res!262798)) b!606721))

(assert (= (and b!606721 res!262803) b!606713))

(assert (= (and b!606713 res!262805) b!606724))

(assert (= (and b!606721 res!262796) b!606718))

(assert (= (and b!606718 (not res!262802)) b!606709))

(assert (= (and b!606721 (not res!262804)) b!606701))

(assert (= (and start!57898 (is-Cons!6055 suffix!1342)) b!606707))

(assert (= b!606720 b!606712))

(assert (= b!606708 b!606720))

(assert (= (and start!57898 (is-Cons!6057 rules!3103)) b!606708))

(assert (= b!606704 b!606699))

(assert (= b!606703 b!606704))

(assert (= start!57898 b!606703))

(assert (= (and start!57898 (is-Cons!6055 input!2705)) b!606717))

(declare-fun m!873293 () Bool)

(assert (=> b!606703 m!873293))

(declare-fun m!873295 () Bool)

(assert (=> b!606705 m!873295))

(declare-fun m!873297 () Bool)

(assert (=> b!606705 m!873297))

(declare-fun m!873299 () Bool)

(assert (=> b!606705 m!873299))

(declare-fun m!873301 () Bool)

(assert (=> b!606702 m!873301))

(declare-fun m!873303 () Bool)

(assert (=> b!606706 m!873303))

(assert (=> b!606706 m!873303))

(declare-fun m!873305 () Bool)

(assert (=> b!606706 m!873305))

(declare-fun m!873307 () Bool)

(assert (=> b!606704 m!873307))

(declare-fun m!873309 () Bool)

(assert (=> b!606704 m!873309))

(declare-fun m!873311 () Bool)

(assert (=> b!606720 m!873311))

(declare-fun m!873313 () Bool)

(assert (=> b!606720 m!873313))

(declare-fun m!873315 () Bool)

(assert (=> b!606700 m!873315))

(declare-fun m!873317 () Bool)

(assert (=> start!57898 m!873317))

(declare-fun m!873319 () Bool)

(assert (=> b!606698 m!873319))

(declare-fun m!873321 () Bool)

(assert (=> b!606723 m!873321))

(declare-fun m!873323 () Bool)

(assert (=> b!606721 m!873323))

(declare-fun m!873325 () Bool)

(assert (=> b!606721 m!873325))

(declare-fun m!873327 () Bool)

(assert (=> b!606721 m!873327))

(declare-fun m!873329 () Bool)

(assert (=> b!606721 m!873329))

(declare-fun m!873331 () Bool)

(assert (=> b!606721 m!873331))

(declare-fun m!873333 () Bool)

(assert (=> b!606721 m!873333))

(declare-fun m!873335 () Bool)

(assert (=> b!606721 m!873335))

(assert (=> b!606721 m!873329))

(declare-fun m!873337 () Bool)

(assert (=> b!606721 m!873337))

(declare-fun m!873339 () Bool)

(assert (=> b!606710 m!873339))

(declare-fun m!873341 () Bool)

(assert (=> b!606716 m!873341))

(declare-fun m!873343 () Bool)

(assert (=> b!606716 m!873343))

(declare-fun m!873345 () Bool)

(assert (=> b!606716 m!873345))

(assert (=> b!606716 m!873343))

(declare-fun m!873347 () Bool)

(assert (=> b!606716 m!873347))

(declare-fun m!873349 () Bool)

(assert (=> b!606716 m!873349))

(declare-fun m!873351 () Bool)

(assert (=> b!606716 m!873351))

(declare-fun m!873353 () Bool)

(assert (=> b!606716 m!873353))

(declare-fun m!873355 () Bool)

(assert (=> b!606716 m!873355))

(declare-fun m!873357 () Bool)

(assert (=> b!606716 m!873357))

(declare-fun m!873359 () Bool)

(assert (=> b!606716 m!873359))

(declare-fun m!873361 () Bool)

(assert (=> b!606716 m!873361))

(declare-fun m!873363 () Bool)

(assert (=> b!606716 m!873363))

(declare-fun m!873365 () Bool)

(assert (=> b!606716 m!873365))

(declare-fun m!873367 () Bool)

(assert (=> b!606716 m!873367))

(declare-fun m!873369 () Bool)

(assert (=> b!606716 m!873369))

(assert (=> b!606716 m!873353))

(declare-fun m!873371 () Bool)

(assert (=> b!606716 m!873371))

(declare-fun m!873373 () Bool)

(assert (=> b!606716 m!873373))

(declare-fun m!873375 () Bool)

(assert (=> b!606716 m!873375))

(declare-fun m!873377 () Bool)

(assert (=> b!606716 m!873377))

(declare-fun m!873379 () Bool)

(assert (=> b!606716 m!873379))

(declare-fun m!873381 () Bool)

(assert (=> b!606716 m!873381))

(declare-fun m!873383 () Bool)

(assert (=> b!606716 m!873383))

(declare-fun m!873385 () Bool)

(assert (=> b!606716 m!873385))

(declare-fun m!873387 () Bool)

(assert (=> b!606716 m!873387))

(declare-fun m!873389 () Bool)

(assert (=> b!606716 m!873389))

(declare-fun m!873391 () Bool)

(assert (=> b!606716 m!873391))

(assert (=> b!606716 m!873351))

(declare-fun m!873393 () Bool)

(assert (=> b!606716 m!873393))

(declare-fun m!873395 () Bool)

(assert (=> b!606709 m!873395))

(declare-fun m!873397 () Bool)

(assert (=> b!606715 m!873397))

(declare-fun m!873399 () Bool)

(assert (=> b!606713 m!873399))

(declare-fun m!873401 () Bool)

(assert (=> b!606701 m!873401))

(declare-fun m!873403 () Bool)

(assert (=> b!606722 m!873403))

(push 1)

(assert (not b!606707))

(assert (not b!606701))

(assert (not b!606723))

(assert (not b!606722))

(assert (not b!606706))

(assert (not b!606717))

(assert (not b!606715))

(assert tp_is_empty!3439)

(assert (not b!606702))

(assert (not b!606700))

(assert (not b!606713))

(assert (not b_next!17269))

(assert b_and!60081)

(assert (not b!606709))

(assert (not b_next!17275))

(assert (not start!57898))

(assert (not b!606716))

(assert (not b!606704))

(assert (not b!606721))

(assert (not b!606705))

(assert b_and!60085)

(assert b_and!60083)

(assert b_and!60079)

(assert (not b_next!17273))

(assert (not b!606710))

(assert (not b_next!17271))

(assert (not b!606703))

(assert (not b!606708))

(assert (not b!606698))

(assert (not b!606720))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17275))

(assert b_and!60085)

(assert (not b_next!17271))

(assert (not b_next!17269))

(assert b_and!60081)

(assert b_and!60083)

(assert b_and!60079)

(assert (not b_next!17273))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!213948 () Bool)

(declare-fun res!262873 () Bool)

(declare-fun e!367730 () Bool)

(assert (=> d!213948 (=> (not res!262873) (not e!367730))))

(declare-fun rulesValid!448 (LexerInterface!1094 List!6067) Bool)

(assert (=> d!213948 (= res!262873 (rulesValid!448 thiss!22590 rules!3103))))

(assert (=> d!213948 (= (rulesInvariant!1057 thiss!22590 rules!3103) e!367730)))

(declare-fun b!606808 () Bool)

(declare-datatypes ((List!6071 0))(
  ( (Nil!6061) (Cons!6061 (h!11462 String!7906) (t!80624 List!6071)) )
))
(declare-fun noDuplicateTag!448 (LexerInterface!1094 List!6067 List!6071) Bool)

(assert (=> b!606808 (= e!367730 (noDuplicateTag!448 thiss!22590 rules!3103 Nil!6061))))

(assert (= (and d!213948 res!262873) b!606808))

(declare-fun m!873517 () Bool)

(assert (=> d!213948 m!873517))

(declare-fun m!873519 () Bool)

(assert (=> b!606808 m!873519))

(assert (=> b!606702 d!213948))

(declare-fun d!213950 () Bool)

(declare-fun lt!259051 () Int)

(assert (=> d!213950 (>= lt!259051 0)))

(declare-fun e!367733 () Int)

(assert (=> d!213950 (= lt!259051 e!367733)))

(declare-fun c!112491 () Bool)

(assert (=> d!213950 (= c!112491 (is-Nil!6055 (originalCharacters!1247 token!491)))))

(assert (=> d!213950 (= (size!4767 (originalCharacters!1247 token!491)) lt!259051)))

(declare-fun b!606813 () Bool)

(assert (=> b!606813 (= e!367733 0)))

(declare-fun b!606814 () Bool)

(assert (=> b!606814 (= e!367733 (+ 1 (size!4767 (t!80594 (originalCharacters!1247 token!491)))))))

(assert (= (and d!213950 c!112491) b!606813))

(assert (= (and d!213950 (not c!112491)) b!606814))

(declare-fun m!873521 () Bool)

(assert (=> b!606814 m!873521))

(assert (=> b!606713 d!213950))

(declare-fun b!606825 () Bool)

(declare-fun e!367740 () Bool)

(declare-fun e!367741 () Bool)

(assert (=> b!606825 (= e!367740 e!367741)))

(declare-fun c!112496 () Bool)

(assert (=> b!606825 (= c!112496 (is-IntegerValue!3697 (value!39296 token!491)))))

(declare-fun d!213952 () Bool)

(declare-fun c!112497 () Bool)

(assert (=> d!213952 (= c!112497 (is-IntegerValue!3696 (value!39296 token!491)))))

(assert (=> d!213952 (= (inv!21 (value!39296 token!491)) e!367740)))

(declare-fun b!606826 () Bool)

(declare-fun inv!17 (TokenValue!1232) Bool)

(assert (=> b!606826 (= e!367741 (inv!17 (value!39296 token!491)))))

(declare-fun b!606827 () Bool)

(declare-fun e!367742 () Bool)

(declare-fun inv!15 (TokenValue!1232) Bool)

(assert (=> b!606827 (= e!367742 (inv!15 (value!39296 token!491)))))

(declare-fun b!606828 () Bool)

(declare-fun inv!16 (TokenValue!1232) Bool)

(assert (=> b!606828 (= e!367740 (inv!16 (value!39296 token!491)))))

(declare-fun b!606829 () Bool)

(declare-fun res!262876 () Bool)

(assert (=> b!606829 (=> res!262876 e!367742)))

(assert (=> b!606829 (= res!262876 (not (is-IntegerValue!3698 (value!39296 token!491))))))

(assert (=> b!606829 (= e!367741 e!367742)))

(assert (= (and d!213952 c!112497) b!606828))

(assert (= (and d!213952 (not c!112497)) b!606825))

(assert (= (and b!606825 c!112496) b!606826))

(assert (= (and b!606825 (not c!112496)) b!606829))

(assert (= (and b!606829 (not res!262876)) b!606827))

(declare-fun m!873523 () Bool)

(assert (=> b!606826 m!873523))

(declare-fun m!873525 () Bool)

(assert (=> b!606827 m!873525))

(declare-fun m!873527 () Bool)

(assert (=> b!606828 m!873527))

(assert (=> b!606703 d!213952))

(declare-fun d!213954 () Bool)

(assert (=> d!213954 (= (isEmpty!4372 input!2705) (is-Nil!6055 input!2705))))

(assert (=> b!606722 d!213954))

(declare-fun d!213956 () Bool)

(assert (=> d!213956 (= (get!2327 lt!258930) (v!16461 lt!258930))))

(assert (=> b!606701 d!213956))

(declare-fun d!213958 () Bool)

(declare-fun e!367747 () Bool)

(assert (=> d!213958 e!367747))

(declare-fun res!262881 () Bool)

(assert (=> d!213958 (=> (not res!262881) (not e!367747))))

(declare-fun lt!259054 () List!6065)

(declare-fun content!1101 (List!6065) (Set C!4006))

(assert (=> d!213958 (= res!262881 (= (content!1101 lt!259054) (set.union (content!1101 lt!258938) (content!1101 suffix!1342))))))

(declare-fun e!367748 () List!6065)

(assert (=> d!213958 (= lt!259054 e!367748)))

(declare-fun c!112500 () Bool)

(assert (=> d!213958 (= c!112500 (is-Nil!6055 lt!258938))))

(assert (=> d!213958 (= (++!1696 lt!258938 suffix!1342) lt!259054)))

(declare-fun b!606839 () Bool)

(assert (=> b!606839 (= e!367748 (Cons!6055 (h!11456 lt!258938) (++!1696 (t!80594 lt!258938) suffix!1342)))))

(declare-fun b!606840 () Bool)

(declare-fun res!262882 () Bool)

(assert (=> b!606840 (=> (not res!262882) (not e!367747))))

(assert (=> b!606840 (= res!262882 (= (size!4767 lt!259054) (+ (size!4767 lt!258938) (size!4767 suffix!1342))))))

(declare-fun b!606841 () Bool)

(assert (=> b!606841 (= e!367747 (or (not (= suffix!1342 Nil!6055)) (= lt!259054 lt!258938)))))

(declare-fun b!606838 () Bool)

(assert (=> b!606838 (= e!367748 suffix!1342)))

(assert (= (and d!213958 c!112500) b!606838))

(assert (= (and d!213958 (not c!112500)) b!606839))

(assert (= (and d!213958 res!262881) b!606840))

(assert (= (and b!606840 res!262882) b!606841))

(declare-fun m!873529 () Bool)

(assert (=> d!213958 m!873529))

(declare-fun m!873531 () Bool)

(assert (=> d!213958 m!873531))

(declare-fun m!873533 () Bool)

(assert (=> d!213958 m!873533))

(declare-fun m!873535 () Bool)

(assert (=> b!606839 m!873535))

(declare-fun m!873537 () Bool)

(assert (=> b!606840 m!873537))

(assert (=> b!606840 m!873359))

(declare-fun m!873539 () Bool)

(assert (=> b!606840 m!873539))

(assert (=> b!606723 d!213958))

(declare-fun b!606881 () Bool)

(declare-fun res!262903 () Bool)

(declare-fun e!367769 () Bool)

(assert (=> b!606881 (=> (not res!262903) (not e!367769))))

(declare-fun lt!259070 () Option!1559)

(assert (=> b!606881 (= res!262903 (= (value!39296 (_1!3731 (get!2327 lt!259070))) (apply!1461 (transformation!1208 (rule!1990 (_1!3731 (get!2327 lt!259070)))) (seqFromList!1384 (originalCharacters!1247 (_1!3731 (get!2327 lt!259070)))))))))

(declare-fun b!606882 () Bool)

(declare-fun res!262905 () Bool)

(assert (=> b!606882 (=> (not res!262905) (not e!367769))))

(assert (=> b!606882 (= res!262905 (< (size!4767 (_2!3731 (get!2327 lt!259070))) (size!4767 input!2705)))))

(declare-fun b!606883 () Bool)

(declare-fun res!262900 () Bool)

(assert (=> b!606883 (=> (not res!262900) (not e!367769))))

(assert (=> b!606883 (= res!262900 (= (++!1696 (list!2547 (charsOf!837 (_1!3731 (get!2327 lt!259070)))) (_2!3731 (get!2327 lt!259070))) input!2705))))

(declare-fun b!606884 () Bool)

(declare-fun res!262901 () Bool)

(assert (=> b!606884 (=> (not res!262901) (not e!367769))))

(declare-fun matchR!645 (Regex!1542 List!6065) Bool)

(assert (=> b!606884 (= res!262901 (matchR!645 (regex!1208 (rule!1990 (_1!3731 (get!2327 lt!259070)))) (list!2547 (charsOf!837 (_1!3731 (get!2327 lt!259070))))))))

(declare-fun b!606885 () Bool)

(declare-fun contains!1424 (List!6067 Rule!2216) Bool)

(assert (=> b!606885 (= e!367769 (contains!1424 rules!3103 (rule!1990 (_1!3731 (get!2327 lt!259070)))))))

(declare-fun d!213960 () Bool)

(declare-fun e!367768 () Bool)

(assert (=> d!213960 e!367768))

(declare-fun res!262906 () Bool)

(assert (=> d!213960 (=> res!262906 e!367768)))

(declare-fun isEmpty!4375 (Option!1559) Bool)

(assert (=> d!213960 (= res!262906 (isEmpty!4375 lt!259070))))

(declare-fun e!367767 () Option!1559)

(assert (=> d!213960 (= lt!259070 e!367767)))

(declare-fun c!112512 () Bool)

(assert (=> d!213960 (= c!112512 (and (is-Cons!6057 rules!3103) (is-Nil!6057 (t!80596 rules!3103))))))

(declare-fun lt!259068 () Unit!11055)

(declare-fun lt!259069 () Unit!11055)

(assert (=> d!213960 (= lt!259068 lt!259069)))

(assert (=> d!213960 (isPrefix!836 input!2705 input!2705)))

(assert (=> d!213960 (= lt!259069 (lemmaIsPrefixRefl!572 input!2705 input!2705))))

(declare-fun rulesValidInductive!453 (LexerInterface!1094 List!6067) Bool)

(assert (=> d!213960 (rulesValidInductive!453 thiss!22590 rules!3103)))

(assert (=> d!213960 (= (maxPrefix!792 thiss!22590 rules!3103 input!2705) lt!259070)))

(declare-fun b!606886 () Bool)

(declare-fun res!262904 () Bool)

(assert (=> b!606886 (=> (not res!262904) (not e!367769))))

(assert (=> b!606886 (= res!262904 (= (list!2547 (charsOf!837 (_1!3731 (get!2327 lt!259070)))) (originalCharacters!1247 (_1!3731 (get!2327 lt!259070)))))))

(declare-fun b!606887 () Bool)

(declare-fun call!40790 () Option!1559)

(assert (=> b!606887 (= e!367767 call!40790)))

(declare-fun b!606888 () Bool)

(declare-fun lt!259071 () Option!1559)

(declare-fun lt!259072 () Option!1559)

(assert (=> b!606888 (= e!367767 (ite (and (is-None!1558 lt!259071) (is-None!1558 lt!259072)) None!1558 (ite (is-None!1558 lt!259072) lt!259071 (ite (is-None!1558 lt!259071) lt!259072 (ite (>= (size!4766 (_1!3731 (v!16461 lt!259071))) (size!4766 (_1!3731 (v!16461 lt!259072)))) lt!259071 lt!259072)))))))

(assert (=> b!606888 (= lt!259071 call!40790)))

(assert (=> b!606888 (= lt!259072 (maxPrefix!792 thiss!22590 (t!80596 rules!3103) input!2705))))

(declare-fun bm!40785 () Bool)

(assert (=> bm!40785 (= call!40790 (maxPrefixOneRule!455 thiss!22590 (h!11458 rules!3103) input!2705))))

(declare-fun b!606889 () Bool)

(assert (=> b!606889 (= e!367768 e!367769)))

(declare-fun res!262902 () Bool)

(assert (=> b!606889 (=> (not res!262902) (not e!367769))))

(assert (=> b!606889 (= res!262902 (isDefined!1370 lt!259070))))

(assert (= (and d!213960 c!112512) b!606887))

(assert (= (and d!213960 (not c!112512)) b!606888))

(assert (= (or b!606887 b!606888) bm!40785))

(assert (= (and d!213960 (not res!262906)) b!606889))

(assert (= (and b!606889 res!262902) b!606886))

(assert (= (and b!606886 res!262904) b!606882))

(assert (= (and b!606882 res!262905) b!606883))

(assert (= (and b!606883 res!262900) b!606881))

(assert (= (and b!606881 res!262903) b!606884))

(assert (= (and b!606884 res!262901) b!606885))

(declare-fun m!873549 () Bool)

(assert (=> b!606883 m!873549))

(declare-fun m!873551 () Bool)

(assert (=> b!606883 m!873551))

(assert (=> b!606883 m!873551))

(declare-fun m!873553 () Bool)

(assert (=> b!606883 m!873553))

(assert (=> b!606883 m!873553))

(declare-fun m!873555 () Bool)

(assert (=> b!606883 m!873555))

(assert (=> b!606885 m!873549))

(declare-fun m!873557 () Bool)

(assert (=> b!606885 m!873557))

(assert (=> b!606884 m!873549))

(assert (=> b!606884 m!873551))

(assert (=> b!606884 m!873551))

(assert (=> b!606884 m!873553))

(assert (=> b!606884 m!873553))

(declare-fun m!873559 () Bool)

(assert (=> b!606884 m!873559))

(assert (=> b!606881 m!873549))

(declare-fun m!873561 () Bool)

(assert (=> b!606881 m!873561))

(assert (=> b!606881 m!873561))

(declare-fun m!873563 () Bool)

(assert (=> b!606881 m!873563))

(declare-fun m!873565 () Bool)

(assert (=> b!606888 m!873565))

(declare-fun m!873567 () Bool)

(assert (=> d!213960 m!873567))

(assert (=> d!213960 m!873373))

(assert (=> d!213960 m!873371))

(declare-fun m!873569 () Bool)

(assert (=> d!213960 m!873569))

(declare-fun m!873571 () Bool)

(assert (=> b!606889 m!873571))

(declare-fun m!873573 () Bool)

(assert (=> bm!40785 m!873573))

(assert (=> b!606886 m!873549))

(assert (=> b!606886 m!873551))

(assert (=> b!606886 m!873551))

(assert (=> b!606886 m!873553))

(assert (=> b!606882 m!873549))

(declare-fun m!873575 () Bool)

(assert (=> b!606882 m!873575))

(declare-fun m!873577 () Bool)

(assert (=> b!606882 m!873577))

(assert (=> b!606710 d!213960))

(declare-fun d!213968 () Bool)

(declare-fun lt!259075 () List!6065)

(assert (=> d!213968 (= (++!1696 lt!258938 lt!259075) lt!258955)))

(declare-fun e!367772 () List!6065)

(assert (=> d!213968 (= lt!259075 e!367772)))

(declare-fun c!112515 () Bool)

(assert (=> d!213968 (= c!112515 (is-Cons!6055 lt!258938))))

(assert (=> d!213968 (>= (size!4767 lt!258955) (size!4767 lt!258938))))

(assert (=> d!213968 (= (getSuffix!353 lt!258955 lt!258938) lt!259075)))

(declare-fun b!606894 () Bool)

(declare-fun tail!812 (List!6065) List!6065)

(assert (=> b!606894 (= e!367772 (getSuffix!353 (tail!812 lt!258955) (t!80594 lt!258938)))))

(declare-fun b!606895 () Bool)

(assert (=> b!606895 (= e!367772 lt!258955)))

(assert (= (and d!213968 c!112515) b!606894))

(assert (= (and d!213968 (not c!112515)) b!606895))

(declare-fun m!873579 () Bool)

(assert (=> d!213968 m!873579))

(declare-fun m!873581 () Bool)

(assert (=> d!213968 m!873581))

(assert (=> d!213968 m!873359))

(declare-fun m!873583 () Bool)

(assert (=> b!606894 m!873583))

(assert (=> b!606894 m!873583))

(declare-fun m!873585 () Bool)

(assert (=> b!606894 m!873585))

(assert (=> b!606721 d!213968))

(declare-fun d!213970 () Bool)

(assert (=> d!213970 (= (maxPrefixOneRule!455 thiss!22590 (rule!1990 token!491) lt!258955) (Some!1558 (tuple2!6935 (Token!2153 (apply!1461 (transformation!1208 (rule!1990 token!491)) (seqFromList!1384 lt!258938)) (rule!1990 token!491) (size!4767 lt!258938) lt!258938) suffix!1342)))))

(declare-fun lt!259078 () Unit!11055)

(declare-fun choose!4442 (LexerInterface!1094 List!6067 List!6065 List!6065 List!6065 Rule!2216) Unit!11055)

(assert (=> d!213970 (= lt!259078 (choose!4442 thiss!22590 rules!3103 lt!258938 lt!258955 suffix!1342 (rule!1990 token!491)))))

(assert (=> d!213970 (not (isEmpty!4371 rules!3103))))

(assert (=> d!213970 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!161 thiss!22590 rules!3103 lt!258938 lt!258955 suffix!1342 (rule!1990 token!491)) lt!259078)))

(declare-fun bs!71370 () Bool)

(assert (= bs!71370 d!213970))

(assert (=> bs!71370 m!873359))

(assert (=> bs!71370 m!873329))

(assert (=> bs!71370 m!873329))

(assert (=> bs!71370 m!873331))

(declare-fun m!873587 () Bool)

(assert (=> bs!71370 m!873587))

(assert (=> bs!71370 m!873327))

(assert (=> bs!71370 m!873315))

(assert (=> b!606721 d!213970))

(declare-fun b!606920 () Bool)

(declare-fun e!367784 () Option!1559)

(declare-datatypes ((tuple2!6938 0))(
  ( (tuple2!6939 (_1!3733 List!6065) (_2!3733 List!6065)) )
))
(declare-fun lt!259095 () tuple2!6938)

(declare-fun size!4770 (BalanceConc!3858) Int)

(assert (=> b!606920 (= e!367784 (Some!1558 (tuple2!6935 (Token!2153 (apply!1461 (transformation!1208 (rule!1990 token!491)) (seqFromList!1384 (_1!3733 lt!259095))) (rule!1990 token!491) (size!4770 (seqFromList!1384 (_1!3733 lt!259095))) (_1!3733 lt!259095)) (_2!3733 lt!259095))))))

(declare-fun lt!259096 () Unit!11055)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!186 (Regex!1542 List!6065) Unit!11055)

(assert (=> b!606920 (= lt!259096 (longestMatchIsAcceptedByMatchOrIsEmpty!186 (regex!1208 (rule!1990 token!491)) lt!258955))))

(declare-fun res!262925 () Bool)

(declare-fun findLongestMatchInner!202 (Regex!1542 List!6065 Int List!6065 List!6065 Int) tuple2!6938)

(assert (=> b!606920 (= res!262925 (isEmpty!4372 (_1!3733 (findLongestMatchInner!202 (regex!1208 (rule!1990 token!491)) Nil!6055 (size!4767 Nil!6055) lt!258955 lt!258955 (size!4767 lt!258955)))))))

(declare-fun e!367786 () Bool)

(assert (=> b!606920 (=> res!262925 e!367786)))

(assert (=> b!606920 e!367786))

(declare-fun lt!259099 () Unit!11055)

(assert (=> b!606920 (= lt!259099 lt!259096)))

(declare-fun lt!259097 () Unit!11055)

(declare-fun lemmaSemiInverse!241 (TokenValueInjection!2232 BalanceConc!3858) Unit!11055)

(assert (=> b!606920 (= lt!259097 (lemmaSemiInverse!241 (transformation!1208 (rule!1990 token!491)) (seqFromList!1384 (_1!3733 lt!259095))))))

(declare-fun b!606921 () Bool)

(declare-fun res!262927 () Bool)

(declare-fun e!367787 () Bool)

(assert (=> b!606921 (=> (not res!262927) (not e!367787))))

(declare-fun lt!259098 () Option!1559)

(assert (=> b!606921 (= res!262927 (= (rule!1990 (_1!3731 (get!2327 lt!259098))) (rule!1990 token!491)))))

(declare-fun b!606922 () Bool)

(declare-fun res!262921 () Bool)

(assert (=> b!606922 (=> (not res!262921) (not e!367787))))

(assert (=> b!606922 (= res!262921 (= (value!39296 (_1!3731 (get!2327 lt!259098))) (apply!1461 (transformation!1208 (rule!1990 (_1!3731 (get!2327 lt!259098)))) (seqFromList!1384 (originalCharacters!1247 (_1!3731 (get!2327 lt!259098)))))))))

(declare-fun b!606923 () Bool)

(assert (=> b!606923 (= e!367787 (= (size!4766 (_1!3731 (get!2327 lt!259098))) (size!4767 (originalCharacters!1247 (_1!3731 (get!2327 lt!259098))))))))

(declare-fun b!606924 () Bool)

(declare-fun res!262922 () Bool)

(assert (=> b!606924 (=> (not res!262922) (not e!367787))))

(assert (=> b!606924 (= res!262922 (< (size!4767 (_2!3731 (get!2327 lt!259098))) (size!4767 lt!258955)))))

(declare-fun d!213972 () Bool)

(declare-fun e!367785 () Bool)

(assert (=> d!213972 e!367785))

(declare-fun res!262924 () Bool)

(assert (=> d!213972 (=> res!262924 e!367785)))

(assert (=> d!213972 (= res!262924 (isEmpty!4375 lt!259098))))

(assert (=> d!213972 (= lt!259098 e!367784)))

(declare-fun c!112521 () Bool)

(assert (=> d!213972 (= c!112521 (isEmpty!4372 (_1!3733 lt!259095)))))

(declare-fun findLongestMatch!181 (Regex!1542 List!6065) tuple2!6938)

(assert (=> d!213972 (= lt!259095 (findLongestMatch!181 (regex!1208 (rule!1990 token!491)) lt!258955))))

(assert (=> d!213972 (ruleValid!406 thiss!22590 (rule!1990 token!491))))

(assert (=> d!213972 (= (maxPrefixOneRule!455 thiss!22590 (rule!1990 token!491) lt!258955) lt!259098)))

(declare-fun b!606925 () Bool)

(assert (=> b!606925 (= e!367785 e!367787)))

(declare-fun res!262926 () Bool)

(assert (=> b!606925 (=> (not res!262926) (not e!367787))))

(assert (=> b!606925 (= res!262926 (matchR!645 (regex!1208 (rule!1990 token!491)) (list!2547 (charsOf!837 (_1!3731 (get!2327 lt!259098))))))))

(declare-fun b!606926 () Bool)

(assert (=> b!606926 (= e!367784 None!1558)))

(declare-fun b!606927 () Bool)

(declare-fun res!262923 () Bool)

(assert (=> b!606927 (=> (not res!262923) (not e!367787))))

(assert (=> b!606927 (= res!262923 (= (++!1696 (list!2547 (charsOf!837 (_1!3731 (get!2327 lt!259098)))) (_2!3731 (get!2327 lt!259098))) lt!258955))))

(declare-fun b!606928 () Bool)

(assert (=> b!606928 (= e!367786 (matchR!645 (regex!1208 (rule!1990 token!491)) (_1!3733 (findLongestMatchInner!202 (regex!1208 (rule!1990 token!491)) Nil!6055 (size!4767 Nil!6055) lt!258955 lt!258955 (size!4767 lt!258955)))))))

(assert (= (and d!213972 c!112521) b!606926))

(assert (= (and d!213972 (not c!112521)) b!606920))

(assert (= (and b!606920 (not res!262925)) b!606928))

(assert (= (and d!213972 (not res!262924)) b!606925))

(assert (= (and b!606925 res!262926) b!606927))

(assert (= (and b!606927 res!262923) b!606924))

(assert (= (and b!606924 res!262922) b!606921))

(assert (= (and b!606921 res!262927) b!606922))

(assert (= (and b!606922 res!262921) b!606923))

(declare-fun m!873599 () Bool)

(assert (=> b!606920 m!873599))

(assert (=> b!606920 m!873581))

(declare-fun m!873601 () Bool)

(assert (=> b!606920 m!873601))

(declare-fun m!873603 () Bool)

(assert (=> b!606920 m!873603))

(declare-fun m!873605 () Bool)

(assert (=> b!606920 m!873605))

(assert (=> b!606920 m!873599))

(declare-fun m!873607 () Bool)

(assert (=> b!606920 m!873607))

(assert (=> b!606920 m!873603))

(declare-fun m!873609 () Bool)

(assert (=> b!606920 m!873609))

(assert (=> b!606920 m!873581))

(declare-fun m!873611 () Bool)

(assert (=> b!606920 m!873611))

(assert (=> b!606920 m!873603))

(assert (=> b!606920 m!873603))

(declare-fun m!873613 () Bool)

(assert (=> b!606920 m!873613))

(declare-fun m!873615 () Bool)

(assert (=> b!606923 m!873615))

(declare-fun m!873617 () Bool)

(assert (=> b!606923 m!873617))

(assert (=> b!606924 m!873615))

(declare-fun m!873619 () Bool)

(assert (=> b!606924 m!873619))

(assert (=> b!606924 m!873581))

(assert (=> b!606928 m!873599))

(assert (=> b!606928 m!873581))

(assert (=> b!606928 m!873599))

(assert (=> b!606928 m!873581))

(assert (=> b!606928 m!873601))

(declare-fun m!873621 () Bool)

(assert (=> b!606928 m!873621))

(declare-fun m!873623 () Bool)

(assert (=> d!213972 m!873623))

(declare-fun m!873625 () Bool)

(assert (=> d!213972 m!873625))

(declare-fun m!873627 () Bool)

(assert (=> d!213972 m!873627))

(assert (=> d!213972 m!873349))

(assert (=> b!606927 m!873615))

(declare-fun m!873629 () Bool)

(assert (=> b!606927 m!873629))

(assert (=> b!606927 m!873629))

(declare-fun m!873631 () Bool)

(assert (=> b!606927 m!873631))

(assert (=> b!606927 m!873631))

(declare-fun m!873633 () Bool)

(assert (=> b!606927 m!873633))

(assert (=> b!606921 m!873615))

(assert (=> b!606925 m!873615))

(assert (=> b!606925 m!873629))

(assert (=> b!606925 m!873629))

(assert (=> b!606925 m!873631))

(assert (=> b!606925 m!873631))

(declare-fun m!873635 () Bool)

(assert (=> b!606925 m!873635))

(assert (=> b!606922 m!873615))

(declare-fun m!873637 () Bool)

(assert (=> b!606922 m!873637))

(assert (=> b!606922 m!873637))

(declare-fun m!873639 () Bool)

(assert (=> b!606922 m!873639))

(assert (=> b!606721 d!213972))

(declare-fun b!606929 () Bool)

(declare-fun e!367788 () Option!1559)

(declare-fun lt!259100 () tuple2!6938)

(assert (=> b!606929 (= e!367788 (Some!1558 (tuple2!6935 (Token!2153 (apply!1461 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))) (seqFromList!1384 (_1!3733 lt!259100))) (rule!1990 (_1!3731 (v!16461 lt!258930))) (size!4770 (seqFromList!1384 (_1!3733 lt!259100))) (_1!3733 lt!259100)) (_2!3733 lt!259100))))))

(declare-fun lt!259101 () Unit!11055)

(assert (=> b!606929 (= lt!259101 (longestMatchIsAcceptedByMatchOrIsEmpty!186 (regex!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))) input!2705))))

(declare-fun res!262932 () Bool)

(assert (=> b!606929 (= res!262932 (isEmpty!4372 (_1!3733 (findLongestMatchInner!202 (regex!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))) Nil!6055 (size!4767 Nil!6055) input!2705 input!2705 (size!4767 input!2705)))))))

(declare-fun e!367790 () Bool)

(assert (=> b!606929 (=> res!262932 e!367790)))

(assert (=> b!606929 e!367790))

(declare-fun lt!259104 () Unit!11055)

(assert (=> b!606929 (= lt!259104 lt!259101)))

(declare-fun lt!259102 () Unit!11055)

(assert (=> b!606929 (= lt!259102 (lemmaSemiInverse!241 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))) (seqFromList!1384 (_1!3733 lt!259100))))))

(declare-fun b!606930 () Bool)

(declare-fun res!262934 () Bool)

(declare-fun e!367791 () Bool)

(assert (=> b!606930 (=> (not res!262934) (not e!367791))))

(declare-fun lt!259103 () Option!1559)

(assert (=> b!606930 (= res!262934 (= (rule!1990 (_1!3731 (get!2327 lt!259103))) (rule!1990 (_1!3731 (v!16461 lt!258930)))))))

(declare-fun b!606931 () Bool)

(declare-fun res!262928 () Bool)

(assert (=> b!606931 (=> (not res!262928) (not e!367791))))

(assert (=> b!606931 (= res!262928 (= (value!39296 (_1!3731 (get!2327 lt!259103))) (apply!1461 (transformation!1208 (rule!1990 (_1!3731 (get!2327 lt!259103)))) (seqFromList!1384 (originalCharacters!1247 (_1!3731 (get!2327 lt!259103)))))))))

(declare-fun b!606932 () Bool)

(assert (=> b!606932 (= e!367791 (= (size!4766 (_1!3731 (get!2327 lt!259103))) (size!4767 (originalCharacters!1247 (_1!3731 (get!2327 lt!259103))))))))

(declare-fun b!606933 () Bool)

(declare-fun res!262929 () Bool)

(assert (=> b!606933 (=> (not res!262929) (not e!367791))))

(assert (=> b!606933 (= res!262929 (< (size!4767 (_2!3731 (get!2327 lt!259103))) (size!4767 input!2705)))))

(declare-fun d!213978 () Bool)

(declare-fun e!367789 () Bool)

(assert (=> d!213978 e!367789))

(declare-fun res!262931 () Bool)

(assert (=> d!213978 (=> res!262931 e!367789)))

(assert (=> d!213978 (= res!262931 (isEmpty!4375 lt!259103))))

(assert (=> d!213978 (= lt!259103 e!367788)))

(declare-fun c!112522 () Bool)

(assert (=> d!213978 (= c!112522 (isEmpty!4372 (_1!3733 lt!259100)))))

(assert (=> d!213978 (= lt!259100 (findLongestMatch!181 (regex!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))) input!2705))))

(assert (=> d!213978 (ruleValid!406 thiss!22590 (rule!1990 (_1!3731 (v!16461 lt!258930))))))

(assert (=> d!213978 (= (maxPrefixOneRule!455 thiss!22590 (rule!1990 (_1!3731 (v!16461 lt!258930))) input!2705) lt!259103)))

(declare-fun b!606934 () Bool)

(assert (=> b!606934 (= e!367789 e!367791)))

(declare-fun res!262933 () Bool)

(assert (=> b!606934 (=> (not res!262933) (not e!367791))))

(assert (=> b!606934 (= res!262933 (matchR!645 (regex!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))) (list!2547 (charsOf!837 (_1!3731 (get!2327 lt!259103))))))))

(declare-fun b!606935 () Bool)

(assert (=> b!606935 (= e!367788 None!1558)))

(declare-fun b!606936 () Bool)

(declare-fun res!262930 () Bool)

(assert (=> b!606936 (=> (not res!262930) (not e!367791))))

(assert (=> b!606936 (= res!262930 (= (++!1696 (list!2547 (charsOf!837 (_1!3731 (get!2327 lt!259103)))) (_2!3731 (get!2327 lt!259103))) input!2705))))

(declare-fun b!606937 () Bool)

(assert (=> b!606937 (= e!367790 (matchR!645 (regex!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))) (_1!3733 (findLongestMatchInner!202 (regex!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))) Nil!6055 (size!4767 Nil!6055) input!2705 input!2705 (size!4767 input!2705)))))))

(assert (= (and d!213978 c!112522) b!606935))

(assert (= (and d!213978 (not c!112522)) b!606929))

(assert (= (and b!606929 (not res!262932)) b!606937))

(assert (= (and d!213978 (not res!262931)) b!606934))

(assert (= (and b!606934 res!262933) b!606936))

(assert (= (and b!606936 res!262930) b!606933))

(assert (= (and b!606933 res!262929) b!606930))

(assert (= (and b!606930 res!262934) b!606931))

(assert (= (and b!606931 res!262928) b!606932))

(assert (=> b!606929 m!873599))

(assert (=> b!606929 m!873577))

(declare-fun m!873641 () Bool)

(assert (=> b!606929 m!873641))

(declare-fun m!873643 () Bool)

(assert (=> b!606929 m!873643))

(declare-fun m!873645 () Bool)

(assert (=> b!606929 m!873645))

(assert (=> b!606929 m!873599))

(declare-fun m!873647 () Bool)

(assert (=> b!606929 m!873647))

(assert (=> b!606929 m!873643))

(declare-fun m!873649 () Bool)

(assert (=> b!606929 m!873649))

(assert (=> b!606929 m!873577))

(declare-fun m!873651 () Bool)

(assert (=> b!606929 m!873651))

(assert (=> b!606929 m!873643))

(assert (=> b!606929 m!873643))

(declare-fun m!873653 () Bool)

(assert (=> b!606929 m!873653))

(declare-fun m!873655 () Bool)

(assert (=> b!606932 m!873655))

(declare-fun m!873657 () Bool)

(assert (=> b!606932 m!873657))

(assert (=> b!606933 m!873655))

(declare-fun m!873659 () Bool)

(assert (=> b!606933 m!873659))

(assert (=> b!606933 m!873577))

(assert (=> b!606937 m!873599))

(assert (=> b!606937 m!873577))

(assert (=> b!606937 m!873599))

(assert (=> b!606937 m!873577))

(assert (=> b!606937 m!873641))

(declare-fun m!873661 () Bool)

(assert (=> b!606937 m!873661))

(declare-fun m!873663 () Bool)

(assert (=> d!213978 m!873663))

(declare-fun m!873665 () Bool)

(assert (=> d!213978 m!873665))

(declare-fun m!873667 () Bool)

(assert (=> d!213978 m!873667))

(assert (=> d!213978 m!873375))

(assert (=> b!606936 m!873655))

(declare-fun m!873669 () Bool)

(assert (=> b!606936 m!873669))

(assert (=> b!606936 m!873669))

(declare-fun m!873671 () Bool)

(assert (=> b!606936 m!873671))

(assert (=> b!606936 m!873671))

(declare-fun m!873673 () Bool)

(assert (=> b!606936 m!873673))

(assert (=> b!606930 m!873655))

(assert (=> b!606934 m!873655))

(assert (=> b!606934 m!873669))

(assert (=> b!606934 m!873669))

(assert (=> b!606934 m!873671))

(assert (=> b!606934 m!873671))

(declare-fun m!873675 () Bool)

(assert (=> b!606934 m!873675))

(assert (=> b!606931 m!873655))

(declare-fun m!873677 () Bool)

(assert (=> b!606931 m!873677))

(assert (=> b!606931 m!873677))

(declare-fun m!873679 () Bool)

(assert (=> b!606931 m!873679))

(assert (=> b!606721 d!213978))

(declare-fun d!213980 () Bool)

(declare-fun dynLambda!3519 (Int BalanceConc!3858) TokenValue!1232)

(assert (=> d!213980 (= (apply!1461 (transformation!1208 (rule!1990 token!491)) (seqFromList!1384 lt!258938)) (dynLambda!3519 (toValue!2115 (transformation!1208 (rule!1990 token!491))) (seqFromList!1384 lt!258938)))))

(declare-fun b_lambda!24049 () Bool)

(assert (=> (not b_lambda!24049) (not d!213980)))

(declare-fun tb!53059 () Bool)

(declare-fun t!80601 () Bool)

(assert (=> (and b!606712 (= (toValue!2115 (transformation!1208 (h!11458 rules!3103))) (toValue!2115 (transformation!1208 (rule!1990 token!491)))) t!80601) tb!53059))

(declare-fun result!59698 () Bool)

(assert (=> tb!53059 (= result!59698 (inv!21 (dynLambda!3519 (toValue!2115 (transformation!1208 (rule!1990 token!491))) (seqFromList!1384 lt!258938))))))

(declare-fun m!873681 () Bool)

(assert (=> tb!53059 m!873681))

(assert (=> d!213980 t!80601))

(declare-fun b_and!60095 () Bool)

(assert (= b_and!60079 (and (=> t!80601 result!59698) b_and!60095)))

(declare-fun t!80603 () Bool)

(declare-fun tb!53061 () Bool)

(assert (=> (and b!606699 (= (toValue!2115 (transformation!1208 (rule!1990 token!491))) (toValue!2115 (transformation!1208 (rule!1990 token!491)))) t!80603) tb!53061))

(declare-fun result!59702 () Bool)

(assert (= result!59702 result!59698))

(assert (=> d!213980 t!80603))

(declare-fun b_and!60097 () Bool)

(assert (= b_and!60083 (and (=> t!80603 result!59702) b_and!60097)))

(assert (=> d!213980 m!873329))

(declare-fun m!873683 () Bool)

(assert (=> d!213980 m!873683))

(assert (=> b!606721 d!213980))

(declare-fun d!213982 () Bool)

(declare-fun fromListB!611 (List!6065) BalanceConc!3858)

(assert (=> d!213982 (= (seqFromList!1384 lt!258938) (fromListB!611 lt!258938))))

(declare-fun bs!71372 () Bool)

(assert (= bs!71372 d!213982))

(declare-fun m!873685 () Bool)

(assert (=> bs!71372 m!873685))

(assert (=> b!606721 d!213982))

(declare-fun d!213984 () Bool)

(assert (=> d!213984 (= (maxPrefixOneRule!455 thiss!22590 (rule!1990 (_1!3731 (v!16461 lt!258930))) input!2705) (Some!1558 (tuple2!6935 (Token!2153 (apply!1461 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))) (seqFromList!1384 lt!258932)) (rule!1990 (_1!3731 (v!16461 lt!258930))) (size!4767 lt!258932) lt!258932) (_2!3731 (v!16461 lt!258930)))))))

(declare-fun lt!259105 () Unit!11055)

(assert (=> d!213984 (= lt!259105 (choose!4442 thiss!22590 rules!3103 lt!258932 input!2705 (_2!3731 (v!16461 lt!258930)) (rule!1990 (_1!3731 (v!16461 lt!258930)))))))

(assert (=> d!213984 (not (isEmpty!4371 rules!3103))))

(assert (=> d!213984 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!161 thiss!22590 rules!3103 lt!258932 input!2705 (_2!3731 (v!16461 lt!258930)) (rule!1990 (_1!3731 (v!16461 lt!258930)))) lt!259105)))

(declare-fun bs!71373 () Bool)

(assert (= bs!71373 d!213984))

(assert (=> bs!71373 m!873369))

(assert (=> bs!71373 m!873343))

(assert (=> bs!71373 m!873343))

(assert (=> bs!71373 m!873347))

(declare-fun m!873687 () Bool)

(assert (=> bs!71373 m!873687))

(assert (=> bs!71373 m!873333))

(assert (=> bs!71373 m!873315))

(assert (=> b!606721 d!213984))

(declare-fun d!213986 () Bool)

(assert (=> d!213986 (= suffix!1342 lt!258936)))

(declare-fun lt!259108 () Unit!11055)

(declare-fun choose!4443 (List!6065 List!6065 List!6065 List!6065 List!6065) Unit!11055)

(assert (=> d!213986 (= lt!259108 (choose!4443 lt!258938 suffix!1342 lt!258938 lt!258936 lt!258955))))

(assert (=> d!213986 (isPrefix!836 lt!258938 lt!258955)))

(assert (=> d!213986 (= (lemmaSamePrefixThenSameSuffix!549 lt!258938 suffix!1342 lt!258938 lt!258936 lt!258955) lt!259108)))

(declare-fun bs!71374 () Bool)

(assert (= bs!71374 d!213986))

(declare-fun m!873689 () Bool)

(assert (=> bs!71374 m!873689))

(declare-fun m!873691 () Bool)

(assert (=> bs!71374 m!873691))

(assert (=> b!606721 d!213986))

(declare-fun d!213988 () Bool)

(assert (=> d!213988 (= (isEmpty!4371 rules!3103) (is-Nil!6057 rules!3103))))

(assert (=> b!606700 d!213988))

(declare-fun d!213990 () Bool)

(declare-fun lt!259109 () Int)

(assert (=> d!213990 (>= lt!259109 0)))

(declare-fun e!367795 () Int)

(assert (=> d!213990 (= lt!259109 e!367795)))

(declare-fun c!112523 () Bool)

(assert (=> d!213990 (= c!112523 (is-Nil!6055 (originalCharacters!1247 (_1!3731 (v!16461 lt!258930)))))))

(assert (=> d!213990 (= (size!4767 (originalCharacters!1247 (_1!3731 (v!16461 lt!258930)))) lt!259109)))

(declare-fun b!606940 () Bool)

(assert (=> b!606940 (= e!367795 0)))

(declare-fun b!606941 () Bool)

(assert (=> b!606941 (= e!367795 (+ 1 (size!4767 (t!80594 (originalCharacters!1247 (_1!3731 (v!16461 lt!258930)))))))))

(assert (= (and d!213990 c!112523) b!606940))

(assert (= (and d!213990 (not c!112523)) b!606941))

(declare-fun m!873693 () Bool)

(assert (=> b!606941 m!873693))

(assert (=> b!606698 d!213990))

(declare-fun d!213992 () Bool)

(assert (=> d!213992 (= (isDefined!1370 lt!258930) (not (isEmpty!4375 lt!258930)))))

(declare-fun bs!71375 () Bool)

(assert (= bs!71375 d!213992))

(declare-fun m!873695 () Bool)

(assert (=> bs!71375 m!873695))

(assert (=> b!606709 d!213992))

(declare-fun d!213994 () Bool)

(assert (=> d!213994 (= (inv!7701 (tag!1470 (h!11458 rules!3103))) (= (mod (str.len (value!39295 (tag!1470 (h!11458 rules!3103)))) 2) 0))))

(assert (=> b!606720 d!213994))

(declare-fun d!213996 () Bool)

(declare-fun res!262937 () Bool)

(declare-fun e!367798 () Bool)

(assert (=> d!213996 (=> (not res!262937) (not e!367798))))

(declare-fun semiInverseModEq!484 (Int Int) Bool)

(assert (=> d!213996 (= res!262937 (semiInverseModEq!484 (toChars!1974 (transformation!1208 (h!11458 rules!3103))) (toValue!2115 (transformation!1208 (h!11458 rules!3103)))))))

(assert (=> d!213996 (= (inv!7704 (transformation!1208 (h!11458 rules!3103))) e!367798)))

(declare-fun b!606944 () Bool)

(declare-fun equivClasses!467 (Int Int) Bool)

(assert (=> b!606944 (= e!367798 (equivClasses!467 (toChars!1974 (transformation!1208 (h!11458 rules!3103))) (toValue!2115 (transformation!1208 (h!11458 rules!3103)))))))

(assert (= (and d!213996 res!262937) b!606944))

(declare-fun m!873697 () Bool)

(assert (=> d!213996 m!873697))

(declare-fun m!873699 () Bool)

(assert (=> b!606944 m!873699))

(assert (=> b!606720 d!213996))

(declare-fun d!213998 () Bool)

(declare-fun list!2549 (Conc!1925) List!6065)

(assert (=> d!213998 (= (list!2547 (charsOf!837 token!491)) (list!2549 (c!112482 (charsOf!837 token!491))))))

(declare-fun bs!71376 () Bool)

(assert (= bs!71376 d!213998))

(declare-fun m!873701 () Bool)

(assert (=> bs!71376 m!873701))

(assert (=> b!606706 d!213998))

(declare-fun d!214000 () Bool)

(declare-fun lt!259112 () BalanceConc!3858)

(assert (=> d!214000 (= (list!2547 lt!259112) (originalCharacters!1247 token!491))))

(declare-fun dynLambda!3520 (Int TokenValue!1232) BalanceConc!3858)

(assert (=> d!214000 (= lt!259112 (dynLambda!3520 (toChars!1974 (transformation!1208 (rule!1990 token!491))) (value!39296 token!491)))))

(assert (=> d!214000 (= (charsOf!837 token!491) lt!259112)))

(declare-fun b_lambda!24051 () Bool)

(assert (=> (not b_lambda!24051) (not d!214000)))

(declare-fun tb!53063 () Bool)

(declare-fun t!80605 () Bool)

(assert (=> (and b!606712 (= (toChars!1974 (transformation!1208 (h!11458 rules!3103))) (toChars!1974 (transformation!1208 (rule!1990 token!491)))) t!80605) tb!53063))

(declare-fun b!606949 () Bool)

(declare-fun e!367801 () Bool)

(declare-fun tp!188389 () Bool)

(declare-fun inv!7708 (Conc!1925) Bool)

(assert (=> b!606949 (= e!367801 (and (inv!7708 (c!112482 (dynLambda!3520 (toChars!1974 (transformation!1208 (rule!1990 token!491))) (value!39296 token!491)))) tp!188389))))

(declare-fun result!59704 () Bool)

(declare-fun inv!7709 (BalanceConc!3858) Bool)

(assert (=> tb!53063 (= result!59704 (and (inv!7709 (dynLambda!3520 (toChars!1974 (transformation!1208 (rule!1990 token!491))) (value!39296 token!491))) e!367801))))

(assert (= tb!53063 b!606949))

(declare-fun m!873703 () Bool)

(assert (=> b!606949 m!873703))

(declare-fun m!873705 () Bool)

(assert (=> tb!53063 m!873705))

(assert (=> d!214000 t!80605))

(declare-fun b_and!60099 () Bool)

(assert (= b_and!60081 (and (=> t!80605 result!59704) b_and!60099)))

(declare-fun t!80607 () Bool)

(declare-fun tb!53065 () Bool)

(assert (=> (and b!606699 (= (toChars!1974 (transformation!1208 (rule!1990 token!491))) (toChars!1974 (transformation!1208 (rule!1990 token!491)))) t!80607) tb!53065))

(declare-fun result!59708 () Bool)

(assert (= result!59708 result!59704))

(assert (=> d!214000 t!80607))

(declare-fun b_and!60101 () Bool)

(assert (= b_and!60085 (and (=> t!80607 result!59708) b_and!60101)))

(declare-fun m!873707 () Bool)

(assert (=> d!214000 m!873707))

(declare-fun m!873709 () Bool)

(assert (=> d!214000 m!873709))

(assert (=> b!606706 d!214000))

(declare-fun d!214002 () Bool)

(declare-fun res!262942 () Bool)

(declare-fun e!367804 () Bool)

(assert (=> d!214002 (=> (not res!262942) (not e!367804))))

(assert (=> d!214002 (= res!262942 (not (isEmpty!4372 (originalCharacters!1247 token!491))))))

(assert (=> d!214002 (= (inv!7705 token!491) e!367804)))

(declare-fun b!606954 () Bool)

(declare-fun res!262943 () Bool)

(assert (=> b!606954 (=> (not res!262943) (not e!367804))))

(assert (=> b!606954 (= res!262943 (= (originalCharacters!1247 token!491) (list!2547 (dynLambda!3520 (toChars!1974 (transformation!1208 (rule!1990 token!491))) (value!39296 token!491)))))))

(declare-fun b!606955 () Bool)

(assert (=> b!606955 (= e!367804 (= (size!4766 token!491) (size!4767 (originalCharacters!1247 token!491))))))

(assert (= (and d!214002 res!262942) b!606954))

(assert (= (and b!606954 res!262943) b!606955))

(declare-fun b_lambda!24053 () Bool)

(assert (=> (not b_lambda!24053) (not b!606954)))

(assert (=> b!606954 t!80605))

(declare-fun b_and!60103 () Bool)

(assert (= b_and!60099 (and (=> t!80605 result!59704) b_and!60103)))

(assert (=> b!606954 t!80607))

(declare-fun b_and!60105 () Bool)

(assert (= b_and!60101 (and (=> t!80607 result!59708) b_and!60105)))

(declare-fun m!873711 () Bool)

(assert (=> d!214002 m!873711))

(assert (=> b!606954 m!873709))

(assert (=> b!606954 m!873709))

(declare-fun m!873713 () Bool)

(assert (=> b!606954 m!873713))

(assert (=> b!606955 m!873399))

(assert (=> start!57898 d!214002))

(declare-fun d!214004 () Bool)

(assert (=> d!214004 (= (isDefined!1370 lt!258941) (not (isEmpty!4375 lt!258941)))))

(declare-fun bs!71377 () Bool)

(assert (= bs!71377 d!214004))

(declare-fun m!873715 () Bool)

(assert (=> bs!71377 m!873715))

(assert (=> b!606705 d!214004))

(declare-fun b!606956 () Bool)

(declare-fun res!262947 () Bool)

(declare-fun e!367807 () Bool)

(assert (=> b!606956 (=> (not res!262947) (not e!367807))))

(declare-fun lt!259115 () Option!1559)

(assert (=> b!606956 (= res!262947 (= (value!39296 (_1!3731 (get!2327 lt!259115))) (apply!1461 (transformation!1208 (rule!1990 (_1!3731 (get!2327 lt!259115)))) (seqFromList!1384 (originalCharacters!1247 (_1!3731 (get!2327 lt!259115)))))))))

(declare-fun b!606957 () Bool)

(declare-fun res!262949 () Bool)

(assert (=> b!606957 (=> (not res!262949) (not e!367807))))

(assert (=> b!606957 (= res!262949 (< (size!4767 (_2!3731 (get!2327 lt!259115))) (size!4767 lt!258955)))))

(declare-fun b!606958 () Bool)

(declare-fun res!262944 () Bool)

(assert (=> b!606958 (=> (not res!262944) (not e!367807))))

(assert (=> b!606958 (= res!262944 (= (++!1696 (list!2547 (charsOf!837 (_1!3731 (get!2327 lt!259115)))) (_2!3731 (get!2327 lt!259115))) lt!258955))))

(declare-fun b!606959 () Bool)

(declare-fun res!262945 () Bool)

(assert (=> b!606959 (=> (not res!262945) (not e!367807))))

(assert (=> b!606959 (= res!262945 (matchR!645 (regex!1208 (rule!1990 (_1!3731 (get!2327 lt!259115)))) (list!2547 (charsOf!837 (_1!3731 (get!2327 lt!259115))))))))

(declare-fun b!606960 () Bool)

(assert (=> b!606960 (= e!367807 (contains!1424 rules!3103 (rule!1990 (_1!3731 (get!2327 lt!259115)))))))

(declare-fun d!214006 () Bool)

(declare-fun e!367806 () Bool)

(assert (=> d!214006 e!367806))

(declare-fun res!262950 () Bool)

(assert (=> d!214006 (=> res!262950 e!367806)))

(assert (=> d!214006 (= res!262950 (isEmpty!4375 lt!259115))))

(declare-fun e!367805 () Option!1559)

(assert (=> d!214006 (= lt!259115 e!367805)))

(declare-fun c!112524 () Bool)

(assert (=> d!214006 (= c!112524 (and (is-Cons!6057 rules!3103) (is-Nil!6057 (t!80596 rules!3103))))))

(declare-fun lt!259113 () Unit!11055)

(declare-fun lt!259114 () Unit!11055)

(assert (=> d!214006 (= lt!259113 lt!259114)))

(assert (=> d!214006 (isPrefix!836 lt!258955 lt!258955)))

(assert (=> d!214006 (= lt!259114 (lemmaIsPrefixRefl!572 lt!258955 lt!258955))))

(assert (=> d!214006 (rulesValidInductive!453 thiss!22590 rules!3103)))

(assert (=> d!214006 (= (maxPrefix!792 thiss!22590 rules!3103 lt!258955) lt!259115)))

(declare-fun b!606961 () Bool)

(declare-fun res!262948 () Bool)

(assert (=> b!606961 (=> (not res!262948) (not e!367807))))

(assert (=> b!606961 (= res!262948 (= (list!2547 (charsOf!837 (_1!3731 (get!2327 lt!259115)))) (originalCharacters!1247 (_1!3731 (get!2327 lt!259115)))))))

(declare-fun b!606962 () Bool)

(declare-fun call!40791 () Option!1559)

(assert (=> b!606962 (= e!367805 call!40791)))

(declare-fun b!606963 () Bool)

(declare-fun lt!259116 () Option!1559)

(declare-fun lt!259117 () Option!1559)

(assert (=> b!606963 (= e!367805 (ite (and (is-None!1558 lt!259116) (is-None!1558 lt!259117)) None!1558 (ite (is-None!1558 lt!259117) lt!259116 (ite (is-None!1558 lt!259116) lt!259117 (ite (>= (size!4766 (_1!3731 (v!16461 lt!259116))) (size!4766 (_1!3731 (v!16461 lt!259117)))) lt!259116 lt!259117)))))))

(assert (=> b!606963 (= lt!259116 call!40791)))

(assert (=> b!606963 (= lt!259117 (maxPrefix!792 thiss!22590 (t!80596 rules!3103) lt!258955))))

(declare-fun bm!40786 () Bool)

(assert (=> bm!40786 (= call!40791 (maxPrefixOneRule!455 thiss!22590 (h!11458 rules!3103) lt!258955))))

(declare-fun b!606964 () Bool)

(assert (=> b!606964 (= e!367806 e!367807)))

(declare-fun res!262946 () Bool)

(assert (=> b!606964 (=> (not res!262946) (not e!367807))))

(assert (=> b!606964 (= res!262946 (isDefined!1370 lt!259115))))

(assert (= (and d!214006 c!112524) b!606962))

(assert (= (and d!214006 (not c!112524)) b!606963))

(assert (= (or b!606962 b!606963) bm!40786))

(assert (= (and d!214006 (not res!262950)) b!606964))

(assert (= (and b!606964 res!262946) b!606961))

(assert (= (and b!606961 res!262948) b!606957))

(assert (= (and b!606957 res!262949) b!606958))

(assert (= (and b!606958 res!262944) b!606956))

(assert (= (and b!606956 res!262947) b!606959))

(assert (= (and b!606959 res!262945) b!606960))

(declare-fun m!873717 () Bool)

(assert (=> b!606958 m!873717))

(declare-fun m!873719 () Bool)

(assert (=> b!606958 m!873719))

(assert (=> b!606958 m!873719))

(declare-fun m!873721 () Bool)

(assert (=> b!606958 m!873721))

(assert (=> b!606958 m!873721))

(declare-fun m!873723 () Bool)

(assert (=> b!606958 m!873723))

(assert (=> b!606960 m!873717))

(declare-fun m!873725 () Bool)

(assert (=> b!606960 m!873725))

(assert (=> b!606959 m!873717))

(assert (=> b!606959 m!873719))

(assert (=> b!606959 m!873719))

(assert (=> b!606959 m!873721))

(assert (=> b!606959 m!873721))

(declare-fun m!873727 () Bool)

(assert (=> b!606959 m!873727))

(assert (=> b!606956 m!873717))

(declare-fun m!873729 () Bool)

(assert (=> b!606956 m!873729))

(assert (=> b!606956 m!873729))

(declare-fun m!873731 () Bool)

(assert (=> b!606956 m!873731))

(declare-fun m!873733 () Bool)

(assert (=> b!606963 m!873733))

(declare-fun m!873735 () Bool)

(assert (=> d!214006 m!873735))

(declare-fun m!873737 () Bool)

(assert (=> d!214006 m!873737))

(declare-fun m!873739 () Bool)

(assert (=> d!214006 m!873739))

(assert (=> d!214006 m!873569))

(declare-fun m!873741 () Bool)

(assert (=> b!606964 m!873741))

(declare-fun m!873743 () Bool)

(assert (=> bm!40786 m!873743))

(assert (=> b!606961 m!873717))

(assert (=> b!606961 m!873719))

(assert (=> b!606961 m!873719))

(assert (=> b!606961 m!873721))

(assert (=> b!606957 m!873717))

(declare-fun m!873745 () Bool)

(assert (=> b!606957 m!873745))

(assert (=> b!606957 m!873581))

(assert (=> b!606705 d!214006))

(declare-fun d!214008 () Bool)

(declare-fun e!367808 () Bool)

(assert (=> d!214008 e!367808))

(declare-fun res!262951 () Bool)

(assert (=> d!214008 (=> (not res!262951) (not e!367808))))

(declare-fun lt!259118 () List!6065)

(assert (=> d!214008 (= res!262951 (= (content!1101 lt!259118) (set.union (content!1101 input!2705) (content!1101 suffix!1342))))))

(declare-fun e!367809 () List!6065)

(assert (=> d!214008 (= lt!259118 e!367809)))

(declare-fun c!112525 () Bool)

(assert (=> d!214008 (= c!112525 (is-Nil!6055 input!2705))))

(assert (=> d!214008 (= (++!1696 input!2705 suffix!1342) lt!259118)))

(declare-fun b!606966 () Bool)

(assert (=> b!606966 (= e!367809 (Cons!6055 (h!11456 input!2705) (++!1696 (t!80594 input!2705) suffix!1342)))))

(declare-fun b!606967 () Bool)

(declare-fun res!262952 () Bool)

(assert (=> b!606967 (=> (not res!262952) (not e!367808))))

(assert (=> b!606967 (= res!262952 (= (size!4767 lt!259118) (+ (size!4767 input!2705) (size!4767 suffix!1342))))))

(declare-fun b!606968 () Bool)

(assert (=> b!606968 (= e!367808 (or (not (= suffix!1342 Nil!6055)) (= lt!259118 input!2705)))))

(declare-fun b!606965 () Bool)

(assert (=> b!606965 (= e!367809 suffix!1342)))

(assert (= (and d!214008 c!112525) b!606965))

(assert (= (and d!214008 (not c!112525)) b!606966))

(assert (= (and d!214008 res!262951) b!606967))

(assert (= (and b!606967 res!262952) b!606968))

(declare-fun m!873747 () Bool)

(assert (=> d!214008 m!873747))

(declare-fun m!873749 () Bool)

(assert (=> d!214008 m!873749))

(assert (=> d!214008 m!873533))

(declare-fun m!873751 () Bool)

(assert (=> b!606966 m!873751))

(declare-fun m!873753 () Bool)

(assert (=> b!606967 m!873753))

(assert (=> b!606967 m!873577))

(assert (=> b!606967 m!873539))

(assert (=> b!606705 d!214008))

(declare-fun d!214010 () Bool)

(declare-fun lt!259119 () Int)

(assert (=> d!214010 (>= lt!259119 0)))

(declare-fun e!367810 () Int)

(assert (=> d!214010 (= lt!259119 e!367810)))

(declare-fun c!112526 () Bool)

(assert (=> d!214010 (= c!112526 (is-Nil!6055 lt!258932))))

(assert (=> d!214010 (= (size!4767 lt!258932) lt!259119)))

(declare-fun b!606969 () Bool)

(assert (=> b!606969 (= e!367810 0)))

(declare-fun b!606970 () Bool)

(assert (=> b!606970 (= e!367810 (+ 1 (size!4767 (t!80594 lt!258932))))))

(assert (= (and d!214010 c!112526) b!606969))

(assert (= (and d!214010 (not c!112526)) b!606970))

(declare-fun m!873755 () Bool)

(assert (=> b!606970 m!873755))

(assert (=> b!606716 d!214010))

(declare-fun d!214012 () Bool)

(assert (=> d!214012 (= (size!4766 (_1!3731 (v!16461 lt!258930))) (size!4767 (originalCharacters!1247 (_1!3731 (v!16461 lt!258930)))))))

(declare-fun Unit!11064 () Unit!11055)

(assert (=> d!214012 (= (lemmaCharactersSize!267 (_1!3731 (v!16461 lt!258930))) Unit!11064)))

(declare-fun bs!71378 () Bool)

(assert (= bs!71378 d!214012))

(assert (=> bs!71378 m!873319))

(assert (=> b!606716 d!214012))

(declare-fun b!606980 () Bool)

(declare-fun res!262964 () Bool)

(declare-fun e!367818 () Bool)

(assert (=> b!606980 (=> (not res!262964) (not e!367818))))

(declare-fun head!1283 (List!6065) C!4006)

(assert (=> b!606980 (= res!262964 (= (head!1283 input!2705) (head!1283 input!2705)))))

(declare-fun b!606979 () Bool)

(declare-fun e!367817 () Bool)

(assert (=> b!606979 (= e!367817 e!367818)))

(declare-fun res!262962 () Bool)

(assert (=> b!606979 (=> (not res!262962) (not e!367818))))

(assert (=> b!606979 (= res!262962 (not (is-Nil!6055 input!2705)))))

(declare-fun b!606981 () Bool)

(assert (=> b!606981 (= e!367818 (isPrefix!836 (tail!812 input!2705) (tail!812 input!2705)))))

(declare-fun b!606982 () Bool)

(declare-fun e!367819 () Bool)

(assert (=> b!606982 (= e!367819 (>= (size!4767 input!2705) (size!4767 input!2705)))))

(declare-fun d!214014 () Bool)

(assert (=> d!214014 e!367819))

(declare-fun res!262963 () Bool)

(assert (=> d!214014 (=> res!262963 e!367819)))

(declare-fun lt!259122 () Bool)

(assert (=> d!214014 (= res!262963 (not lt!259122))))

(assert (=> d!214014 (= lt!259122 e!367817)))

(declare-fun res!262961 () Bool)

(assert (=> d!214014 (=> res!262961 e!367817)))

(assert (=> d!214014 (= res!262961 (is-Nil!6055 input!2705))))

(assert (=> d!214014 (= (isPrefix!836 input!2705 input!2705) lt!259122)))

(assert (= (and d!214014 (not res!262961)) b!606979))

(assert (= (and b!606979 res!262962) b!606980))

(assert (= (and b!606980 res!262964) b!606981))

(assert (= (and d!214014 (not res!262963)) b!606982))

(declare-fun m!873757 () Bool)

(assert (=> b!606980 m!873757))

(assert (=> b!606980 m!873757))

(declare-fun m!873759 () Bool)

(assert (=> b!606981 m!873759))

(assert (=> b!606981 m!873759))

(assert (=> b!606981 m!873759))

(assert (=> b!606981 m!873759))

(declare-fun m!873761 () Bool)

(assert (=> b!606981 m!873761))

(assert (=> b!606982 m!873577))

(assert (=> b!606982 m!873577))

(assert (=> b!606716 d!214014))

(declare-fun d!214016 () Bool)

(declare-fun res!262969 () Bool)

(declare-fun e!367822 () Bool)

(assert (=> d!214016 (=> (not res!262969) (not e!367822))))

(declare-fun validRegex!537 (Regex!1542) Bool)

(assert (=> d!214016 (= res!262969 (validRegex!537 (regex!1208 (rule!1990 token!491))))))

(assert (=> d!214016 (= (ruleValid!406 thiss!22590 (rule!1990 token!491)) e!367822)))

(declare-fun b!606987 () Bool)

(declare-fun res!262970 () Bool)

(assert (=> b!606987 (=> (not res!262970) (not e!367822))))

(declare-fun nullable!442 (Regex!1542) Bool)

(assert (=> b!606987 (= res!262970 (not (nullable!442 (regex!1208 (rule!1990 token!491)))))))

(declare-fun b!606988 () Bool)

(assert (=> b!606988 (= e!367822 (not (= (tag!1470 (rule!1990 token!491)) (String!7907 ""))))))

(assert (= (and d!214016 res!262969) b!606987))

(assert (= (and b!606987 res!262970) b!606988))

(declare-fun m!873763 () Bool)

(assert (=> d!214016 m!873763))

(declare-fun m!873765 () Bool)

(assert (=> b!606987 m!873765))

(assert (=> b!606716 d!214016))

(declare-fun d!214018 () Bool)

(assert (=> d!214018 (and (= lt!258938 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!259125 () Unit!11055)

(declare-fun choose!4444 (List!6065 List!6065 List!6065 List!6065) Unit!11055)

(assert (=> d!214018 (= lt!259125 (choose!4444 lt!258938 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!214018 (= (++!1696 lt!258938 suffix!1342) (++!1696 input!2705 suffix!1342))))

(assert (=> d!214018 (= (lemmaConcatSameAndSameSizesThenSameLists!281 lt!258938 suffix!1342 input!2705 suffix!1342) lt!259125)))

(declare-fun bs!71379 () Bool)

(assert (= bs!71379 d!214018))

(declare-fun m!873767 () Bool)

(assert (=> bs!71379 m!873767))

(assert (=> bs!71379 m!873321))

(assert (=> bs!71379 m!873299))

(assert (=> b!606716 d!214018))

(declare-fun b!606990 () Bool)

(declare-fun res!262974 () Bool)

(declare-fun e!367824 () Bool)

(assert (=> b!606990 (=> (not res!262974) (not e!367824))))

(assert (=> b!606990 (= res!262974 (= (head!1283 input!2705) (head!1283 lt!258957)))))

(declare-fun b!606989 () Bool)

(declare-fun e!367823 () Bool)

(assert (=> b!606989 (= e!367823 e!367824)))

(declare-fun res!262972 () Bool)

(assert (=> b!606989 (=> (not res!262972) (not e!367824))))

(assert (=> b!606989 (= res!262972 (not (is-Nil!6055 lt!258957)))))

(declare-fun b!606991 () Bool)

(assert (=> b!606991 (= e!367824 (isPrefix!836 (tail!812 input!2705) (tail!812 lt!258957)))))

(declare-fun b!606992 () Bool)

(declare-fun e!367825 () Bool)

(assert (=> b!606992 (= e!367825 (>= (size!4767 lt!258957) (size!4767 input!2705)))))

(declare-fun d!214020 () Bool)

(assert (=> d!214020 e!367825))

(declare-fun res!262973 () Bool)

(assert (=> d!214020 (=> res!262973 e!367825)))

(declare-fun lt!259126 () Bool)

(assert (=> d!214020 (= res!262973 (not lt!259126))))

(assert (=> d!214020 (= lt!259126 e!367823)))

(declare-fun res!262971 () Bool)

(assert (=> d!214020 (=> res!262971 e!367823)))

(assert (=> d!214020 (= res!262971 (is-Nil!6055 input!2705))))

(assert (=> d!214020 (= (isPrefix!836 input!2705 lt!258957) lt!259126)))

(assert (= (and d!214020 (not res!262971)) b!606989))

(assert (= (and b!606989 res!262972) b!606990))

(assert (= (and b!606990 res!262974) b!606991))

(assert (= (and d!214020 (not res!262973)) b!606992))

(assert (=> b!606990 m!873757))

(declare-fun m!873769 () Bool)

(assert (=> b!606990 m!873769))

(assert (=> b!606991 m!873759))

(declare-fun m!873771 () Bool)

(assert (=> b!606991 m!873771))

(assert (=> b!606991 m!873759))

(assert (=> b!606991 m!873771))

(declare-fun m!873773 () Bool)

(assert (=> b!606991 m!873773))

(declare-fun m!873775 () Bool)

(assert (=> b!606992 m!873775))

(assert (=> b!606992 m!873577))

(assert (=> b!606716 d!214020))

(declare-fun d!214022 () Bool)

(declare-fun e!367828 () Bool)

(assert (=> d!214022 e!367828))

(declare-fun res!262977 () Bool)

(assert (=> d!214022 (=> (not res!262977) (not e!367828))))

(assert (=> d!214022 (= res!262977 (semiInverseModEq!484 (toChars!1974 (transformation!1208 (rule!1990 token!491))) (toValue!2115 (transformation!1208 (rule!1990 token!491)))))))

(declare-fun Unit!11065 () Unit!11055)

(assert (=> d!214022 (= (lemmaInv!316 (transformation!1208 (rule!1990 token!491))) Unit!11065)))

(declare-fun b!606995 () Bool)

(assert (=> b!606995 (= e!367828 (equivClasses!467 (toChars!1974 (transformation!1208 (rule!1990 token!491))) (toValue!2115 (transformation!1208 (rule!1990 token!491)))))))

(assert (= (and d!214022 res!262977) b!606995))

(declare-fun m!873777 () Bool)

(assert (=> d!214022 m!873777))

(declare-fun m!873779 () Bool)

(assert (=> b!606995 m!873779))

(assert (=> b!606716 d!214022))

(declare-fun d!214024 () Bool)

(assert (=> d!214024 (= (seqFromList!1384 lt!258932) (fromListB!611 lt!258932))))

(declare-fun bs!71380 () Bool)

(assert (= bs!71380 d!214024))

(declare-fun m!873781 () Bool)

(assert (=> bs!71380 m!873781))

(assert (=> b!606716 d!214024))

(declare-fun d!214026 () Bool)

(assert (=> d!214026 (= (size!4766 token!491) (size!4767 (originalCharacters!1247 token!491)))))

(declare-fun Unit!11066 () Unit!11055)

(assert (=> d!214026 (= (lemmaCharactersSize!267 token!491) Unit!11066)))

(declare-fun bs!71381 () Bool)

(assert (= bs!71381 d!214026))

(assert (=> bs!71381 m!873399))

(assert (=> b!606716 d!214026))

(declare-fun b!606997 () Bool)

(declare-fun res!262981 () Bool)

(declare-fun e!367830 () Bool)

(assert (=> b!606997 (=> (not res!262981) (not e!367830))))

(assert (=> b!606997 (= res!262981 (= (head!1283 lt!258938) (head!1283 lt!258957)))))

(declare-fun b!606996 () Bool)

(declare-fun e!367829 () Bool)

(assert (=> b!606996 (= e!367829 e!367830)))

(declare-fun res!262979 () Bool)

(assert (=> b!606996 (=> (not res!262979) (not e!367830))))

(assert (=> b!606996 (= res!262979 (not (is-Nil!6055 lt!258957)))))

(declare-fun b!606998 () Bool)

(assert (=> b!606998 (= e!367830 (isPrefix!836 (tail!812 lt!258938) (tail!812 lt!258957)))))

(declare-fun b!606999 () Bool)

(declare-fun e!367831 () Bool)

(assert (=> b!606999 (= e!367831 (>= (size!4767 lt!258957) (size!4767 lt!258938)))))

(declare-fun d!214028 () Bool)

(assert (=> d!214028 e!367831))

(declare-fun res!262980 () Bool)

(assert (=> d!214028 (=> res!262980 e!367831)))

(declare-fun lt!259127 () Bool)

(assert (=> d!214028 (= res!262980 (not lt!259127))))

(assert (=> d!214028 (= lt!259127 e!367829)))

(declare-fun res!262978 () Bool)

(assert (=> d!214028 (=> res!262978 e!367829)))

(assert (=> d!214028 (= res!262978 (is-Nil!6055 lt!258938))))

(assert (=> d!214028 (= (isPrefix!836 lt!258938 lt!258957) lt!259127)))

(assert (= (and d!214028 (not res!262978)) b!606996))

(assert (= (and b!606996 res!262979) b!606997))

(assert (= (and b!606997 res!262981) b!606998))

(assert (= (and d!214028 (not res!262980)) b!606999))

(declare-fun m!873783 () Bool)

(assert (=> b!606997 m!873783))

(assert (=> b!606997 m!873769))

(declare-fun m!873785 () Bool)

(assert (=> b!606998 m!873785))

(assert (=> b!606998 m!873771))

(assert (=> b!606998 m!873785))

(assert (=> b!606998 m!873771))

(declare-fun m!873787 () Bool)

(assert (=> b!606998 m!873787))

(assert (=> b!606999 m!873775))

(assert (=> b!606999 m!873359))

(assert (=> b!606716 d!214028))

(declare-fun d!214030 () Bool)

(declare-fun e!367832 () Bool)

(assert (=> d!214030 e!367832))

(declare-fun res!262982 () Bool)

(assert (=> d!214030 (=> (not res!262982) (not e!367832))))

(assert (=> d!214030 (= res!262982 (semiInverseModEq!484 (toChars!1974 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930))))) (toValue!2115 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))))))))

(declare-fun Unit!11067 () Unit!11055)

(assert (=> d!214030 (= (lemmaInv!316 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930))))) Unit!11067)))

(declare-fun b!607000 () Bool)

(assert (=> b!607000 (= e!367832 (equivClasses!467 (toChars!1974 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930))))) (toValue!2115 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))))))))

(assert (= (and d!214030 res!262982) b!607000))

(declare-fun m!873789 () Bool)

(assert (=> d!214030 m!873789))

(declare-fun m!873791 () Bool)

(assert (=> b!607000 m!873791))

(assert (=> b!606716 d!214030))

(declare-fun d!214032 () Bool)

(assert (=> d!214032 (ruleValid!406 thiss!22590 (rule!1990 (_1!3731 (v!16461 lt!258930))))))

(declare-fun lt!259130 () Unit!11055)

(declare-fun choose!4445 (LexerInterface!1094 Rule!2216 List!6067) Unit!11055)

(assert (=> d!214032 (= lt!259130 (choose!4445 thiss!22590 (rule!1990 (_1!3731 (v!16461 lt!258930))) rules!3103))))

(assert (=> d!214032 (contains!1424 rules!3103 (rule!1990 (_1!3731 (v!16461 lt!258930))))))

(assert (=> d!214032 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!253 thiss!22590 (rule!1990 (_1!3731 (v!16461 lt!258930))) rules!3103) lt!259130)))

(declare-fun bs!71382 () Bool)

(assert (= bs!71382 d!214032))

(assert (=> bs!71382 m!873375))

(declare-fun m!873793 () Bool)

(assert (=> bs!71382 m!873793))

(declare-fun m!873795 () Bool)

(assert (=> bs!71382 m!873795))

(assert (=> b!606716 d!214032))

(declare-fun d!214034 () Bool)

(assert (=> d!214034 (isPrefix!836 lt!258932 (++!1696 lt!258932 (_2!3731 (v!16461 lt!258930))))))

(declare-fun lt!259133 () Unit!11055)

(declare-fun choose!4446 (List!6065 List!6065) Unit!11055)

(assert (=> d!214034 (= lt!259133 (choose!4446 lt!258932 (_2!3731 (v!16461 lt!258930))))))

(assert (=> d!214034 (= (lemmaConcatTwoListThenFirstIsPrefix!681 lt!258932 (_2!3731 (v!16461 lt!258930))) lt!259133)))

(declare-fun bs!71383 () Bool)

(assert (= bs!71383 d!214034))

(assert (=> bs!71383 m!873353))

(assert (=> bs!71383 m!873353))

(assert (=> bs!71383 m!873355))

(declare-fun m!873797 () Bool)

(assert (=> bs!71383 m!873797))

(assert (=> b!606716 d!214034))

(declare-fun d!214036 () Bool)

(declare-fun res!262983 () Bool)

(declare-fun e!367833 () Bool)

(assert (=> d!214036 (=> (not res!262983) (not e!367833))))

(assert (=> d!214036 (= res!262983 (validRegex!537 (regex!1208 (rule!1990 (_1!3731 (v!16461 lt!258930))))))))

(assert (=> d!214036 (= (ruleValid!406 thiss!22590 (rule!1990 (_1!3731 (v!16461 lt!258930)))) e!367833)))

(declare-fun b!607001 () Bool)

(declare-fun res!262984 () Bool)

(assert (=> b!607001 (=> (not res!262984) (not e!367833))))

(assert (=> b!607001 (= res!262984 (not (nullable!442 (regex!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))))))))

(declare-fun b!607002 () Bool)

(assert (=> b!607002 (= e!367833 (not (= (tag!1470 (rule!1990 (_1!3731 (v!16461 lt!258930)))) (String!7907 ""))))))

(assert (= (and d!214036 res!262983) b!607001))

(assert (= (and b!607001 res!262984) b!607002))

(declare-fun m!873799 () Bool)

(assert (=> d!214036 m!873799))

(declare-fun m!873801 () Bool)

(assert (=> b!607001 m!873801))

(assert (=> b!606716 d!214036))

(declare-fun b!607004 () Bool)

(declare-fun res!262988 () Bool)

(declare-fun e!367835 () Bool)

(assert (=> b!607004 (=> (not res!262988) (not e!367835))))

(assert (=> b!607004 (= res!262988 (= (head!1283 input!2705) (head!1283 lt!258955)))))

(declare-fun b!607003 () Bool)

(declare-fun e!367834 () Bool)

(assert (=> b!607003 (= e!367834 e!367835)))

(declare-fun res!262986 () Bool)

(assert (=> b!607003 (=> (not res!262986) (not e!367835))))

(assert (=> b!607003 (= res!262986 (not (is-Nil!6055 lt!258955)))))

(declare-fun b!607005 () Bool)

(assert (=> b!607005 (= e!367835 (isPrefix!836 (tail!812 input!2705) (tail!812 lt!258955)))))

(declare-fun b!607006 () Bool)

(declare-fun e!367836 () Bool)

(assert (=> b!607006 (= e!367836 (>= (size!4767 lt!258955) (size!4767 input!2705)))))

(declare-fun d!214038 () Bool)

(assert (=> d!214038 e!367836))

(declare-fun res!262987 () Bool)

(assert (=> d!214038 (=> res!262987 e!367836)))

(declare-fun lt!259134 () Bool)

(assert (=> d!214038 (= res!262987 (not lt!259134))))

(assert (=> d!214038 (= lt!259134 e!367834)))

(declare-fun res!262985 () Bool)

(assert (=> d!214038 (=> res!262985 e!367834)))

(assert (=> d!214038 (= res!262985 (is-Nil!6055 input!2705))))

(assert (=> d!214038 (= (isPrefix!836 input!2705 lt!258955) lt!259134)))

(assert (= (and d!214038 (not res!262985)) b!607003))

(assert (= (and b!607003 res!262986) b!607004))

(assert (= (and b!607004 res!262988) b!607005))

(assert (= (and d!214038 (not res!262987)) b!607006))

(assert (=> b!607004 m!873757))

(declare-fun m!873803 () Bool)

(assert (=> b!607004 m!873803))

(assert (=> b!607005 m!873759))

(assert (=> b!607005 m!873583))

(assert (=> b!607005 m!873759))

(assert (=> b!607005 m!873583))

(declare-fun m!873805 () Bool)

(assert (=> b!607005 m!873805))

(assert (=> b!607006 m!873581))

(assert (=> b!607006 m!873577))

(assert (=> b!606716 d!214038))

(declare-fun d!214040 () Bool)

(declare-fun lt!259135 () BalanceConc!3858)

(assert (=> d!214040 (= (list!2547 lt!259135) (originalCharacters!1247 (_1!3731 (v!16461 lt!258930))))))

(assert (=> d!214040 (= lt!259135 (dynLambda!3520 (toChars!1974 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930))))) (value!39296 (_1!3731 (v!16461 lt!258930)))))))

(assert (=> d!214040 (= (charsOf!837 (_1!3731 (v!16461 lt!258930))) lt!259135)))

(declare-fun b_lambda!24055 () Bool)

(assert (=> (not b_lambda!24055) (not d!214040)))

(declare-fun tb!53067 () Bool)

(declare-fun t!80609 () Bool)

(assert (=> (and b!606712 (= (toChars!1974 (transformation!1208 (h!11458 rules!3103))) (toChars!1974 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))))) t!80609) tb!53067))

(declare-fun b!607007 () Bool)

(declare-fun e!367837 () Bool)

(declare-fun tp!188390 () Bool)

(assert (=> b!607007 (= e!367837 (and (inv!7708 (c!112482 (dynLambda!3520 (toChars!1974 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930))))) (value!39296 (_1!3731 (v!16461 lt!258930)))))) tp!188390))))

(declare-fun result!59710 () Bool)

(assert (=> tb!53067 (= result!59710 (and (inv!7709 (dynLambda!3520 (toChars!1974 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930))))) (value!39296 (_1!3731 (v!16461 lt!258930))))) e!367837))))

(assert (= tb!53067 b!607007))

(declare-fun m!873807 () Bool)

(assert (=> b!607007 m!873807))

(declare-fun m!873809 () Bool)

(assert (=> tb!53067 m!873809))

(assert (=> d!214040 t!80609))

(declare-fun b_and!60107 () Bool)

(assert (= b_and!60103 (and (=> t!80609 result!59710) b_and!60107)))

(declare-fun tb!53069 () Bool)

(declare-fun t!80611 () Bool)

(assert (=> (and b!606699 (= (toChars!1974 (transformation!1208 (rule!1990 token!491))) (toChars!1974 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))))) t!80611) tb!53069))

(declare-fun result!59712 () Bool)

(assert (= result!59712 result!59710))

(assert (=> d!214040 t!80611))

(declare-fun b_and!60109 () Bool)

(assert (= b_and!60105 (and (=> t!80611 result!59712) b_and!60109)))

(declare-fun m!873811 () Bool)

(assert (=> d!214040 m!873811))

(declare-fun m!873813 () Bool)

(assert (=> d!214040 m!873813))

(assert (=> b!606716 d!214040))

(declare-fun d!214042 () Bool)

(assert (=> d!214042 (= (list!2547 (charsOf!837 (_1!3731 (v!16461 lt!258930)))) (list!2549 (c!112482 (charsOf!837 (_1!3731 (v!16461 lt!258930))))))))

(declare-fun bs!71384 () Bool)

(assert (= bs!71384 d!214042))

(declare-fun m!873815 () Bool)

(assert (=> bs!71384 m!873815))

(assert (=> b!606716 d!214042))

(declare-fun d!214044 () Bool)

(assert (=> d!214044 (ruleValid!406 thiss!22590 (rule!1990 token!491))))

(declare-fun lt!259136 () Unit!11055)

(assert (=> d!214044 (= lt!259136 (choose!4445 thiss!22590 (rule!1990 token!491) rules!3103))))

(assert (=> d!214044 (contains!1424 rules!3103 (rule!1990 token!491))))

(assert (=> d!214044 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!253 thiss!22590 (rule!1990 token!491) rules!3103) lt!259136)))

(declare-fun bs!71385 () Bool)

(assert (= bs!71385 d!214044))

(assert (=> bs!71385 m!873349))

(declare-fun m!873817 () Bool)

(assert (=> bs!71385 m!873817))

(declare-fun m!873819 () Bool)

(assert (=> bs!71385 m!873819))

(assert (=> b!606716 d!214044))

(declare-fun d!214046 () Bool)

(assert (=> d!214046 (isPrefix!836 input!2705 (++!1696 input!2705 suffix!1342))))

(declare-fun lt!259137 () Unit!11055)

(assert (=> d!214046 (= lt!259137 (choose!4446 input!2705 suffix!1342))))

(assert (=> d!214046 (= (lemmaConcatTwoListThenFirstIsPrefix!681 input!2705 suffix!1342) lt!259137)))

(declare-fun bs!71386 () Bool)

(assert (= bs!71386 d!214046))

(assert (=> bs!71386 m!873299))

(assert (=> bs!71386 m!873299))

(declare-fun m!873821 () Bool)

(assert (=> bs!71386 m!873821))

(declare-fun m!873823 () Bool)

(assert (=> bs!71386 m!873823))

(assert (=> b!606716 d!214046))

(declare-fun b!607009 () Bool)

(declare-fun res!262992 () Bool)

(declare-fun e!367839 () Bool)

(assert (=> b!607009 (=> (not res!262992) (not e!367839))))

(assert (=> b!607009 (= res!262992 (= (head!1283 lt!258932) (head!1283 (++!1696 lt!258932 (_2!3731 (v!16461 lt!258930))))))))

(declare-fun b!607008 () Bool)

(declare-fun e!367838 () Bool)

(assert (=> b!607008 (= e!367838 e!367839)))

(declare-fun res!262990 () Bool)

(assert (=> b!607008 (=> (not res!262990) (not e!367839))))

(assert (=> b!607008 (= res!262990 (not (is-Nil!6055 (++!1696 lt!258932 (_2!3731 (v!16461 lt!258930))))))))

(declare-fun b!607010 () Bool)

(assert (=> b!607010 (= e!367839 (isPrefix!836 (tail!812 lt!258932) (tail!812 (++!1696 lt!258932 (_2!3731 (v!16461 lt!258930))))))))

(declare-fun b!607011 () Bool)

(declare-fun e!367840 () Bool)

(assert (=> b!607011 (= e!367840 (>= (size!4767 (++!1696 lt!258932 (_2!3731 (v!16461 lt!258930)))) (size!4767 lt!258932)))))

(declare-fun d!214048 () Bool)

(assert (=> d!214048 e!367840))

(declare-fun res!262991 () Bool)

(assert (=> d!214048 (=> res!262991 e!367840)))

(declare-fun lt!259138 () Bool)

(assert (=> d!214048 (= res!262991 (not lt!259138))))

(assert (=> d!214048 (= lt!259138 e!367838)))

(declare-fun res!262989 () Bool)

(assert (=> d!214048 (=> res!262989 e!367838)))

(assert (=> d!214048 (= res!262989 (is-Nil!6055 lt!258932))))

(assert (=> d!214048 (= (isPrefix!836 lt!258932 (++!1696 lt!258932 (_2!3731 (v!16461 lt!258930)))) lt!259138)))

(assert (= (and d!214048 (not res!262989)) b!607008))

(assert (= (and b!607008 res!262990) b!607009))

(assert (= (and b!607009 res!262992) b!607010))

(assert (= (and d!214048 (not res!262991)) b!607011))

(declare-fun m!873825 () Bool)

(assert (=> b!607009 m!873825))

(assert (=> b!607009 m!873353))

(declare-fun m!873827 () Bool)

(assert (=> b!607009 m!873827))

(declare-fun m!873829 () Bool)

(assert (=> b!607010 m!873829))

(assert (=> b!607010 m!873353))

(declare-fun m!873831 () Bool)

(assert (=> b!607010 m!873831))

(assert (=> b!607010 m!873829))

(assert (=> b!607010 m!873831))

(declare-fun m!873833 () Bool)

(assert (=> b!607010 m!873833))

(assert (=> b!607011 m!873353))

(declare-fun m!873835 () Bool)

(assert (=> b!607011 m!873835))

(assert (=> b!607011 m!873369))

(assert (=> b!606716 d!214048))

(declare-fun d!214050 () Bool)

(assert (=> d!214050 (= (_2!3731 (v!16461 lt!258930)) lt!258956)))

(declare-fun lt!259139 () Unit!11055)

(assert (=> d!214050 (= lt!259139 (choose!4443 lt!258932 (_2!3731 (v!16461 lt!258930)) lt!258932 lt!258956 input!2705))))

(assert (=> d!214050 (isPrefix!836 lt!258932 input!2705)))

(assert (=> d!214050 (= (lemmaSamePrefixThenSameSuffix!549 lt!258932 (_2!3731 (v!16461 lt!258930)) lt!258932 lt!258956 input!2705) lt!259139)))

(declare-fun bs!71387 () Bool)

(assert (= bs!71387 d!214050))

(declare-fun m!873837 () Bool)

(assert (=> bs!71387 m!873837))

(declare-fun m!873839 () Bool)

(assert (=> bs!71387 m!873839))

(assert (=> b!606716 d!214050))

(declare-fun d!214052 () Bool)

(assert (=> d!214052 (isPrefix!836 input!2705 input!2705)))

(declare-fun lt!259142 () Unit!11055)

(declare-fun choose!4448 (List!6065 List!6065) Unit!11055)

(assert (=> d!214052 (= lt!259142 (choose!4448 input!2705 input!2705))))

(assert (=> d!214052 (= (lemmaIsPrefixRefl!572 input!2705 input!2705) lt!259142)))

(declare-fun bs!71388 () Bool)

(assert (= bs!71388 d!214052))

(assert (=> bs!71388 m!873373))

(declare-fun m!873841 () Bool)

(assert (=> bs!71388 m!873841))

(assert (=> b!606716 d!214052))

(declare-fun d!214054 () Bool)

(declare-fun e!367841 () Bool)

(assert (=> d!214054 e!367841))

(declare-fun res!262993 () Bool)

(assert (=> d!214054 (=> (not res!262993) (not e!367841))))

(declare-fun lt!259143 () List!6065)

(assert (=> d!214054 (= res!262993 (= (content!1101 lt!259143) (set.union (content!1101 lt!258932) (content!1101 (_2!3731 (v!16461 lt!258930))))))))

(declare-fun e!367842 () List!6065)

(assert (=> d!214054 (= lt!259143 e!367842)))

(declare-fun c!112527 () Bool)

(assert (=> d!214054 (= c!112527 (is-Nil!6055 lt!258932))))

(assert (=> d!214054 (= (++!1696 lt!258932 (_2!3731 (v!16461 lt!258930))) lt!259143)))

(declare-fun b!607013 () Bool)

(assert (=> b!607013 (= e!367842 (Cons!6055 (h!11456 lt!258932) (++!1696 (t!80594 lt!258932) (_2!3731 (v!16461 lt!258930)))))))

(declare-fun b!607014 () Bool)

(declare-fun res!262994 () Bool)

(assert (=> b!607014 (=> (not res!262994) (not e!367841))))

(assert (=> b!607014 (= res!262994 (= (size!4767 lt!259143) (+ (size!4767 lt!258932) (size!4767 (_2!3731 (v!16461 lt!258930))))))))

(declare-fun b!607015 () Bool)

(assert (=> b!607015 (= e!367841 (or (not (= (_2!3731 (v!16461 lt!258930)) Nil!6055)) (= lt!259143 lt!258932)))))

(declare-fun b!607012 () Bool)

(assert (=> b!607012 (= e!367842 (_2!3731 (v!16461 lt!258930)))))

(assert (= (and d!214054 c!112527) b!607012))

(assert (= (and d!214054 (not c!112527)) b!607013))

(assert (= (and d!214054 res!262993) b!607014))

(assert (= (and b!607014 res!262994) b!607015))

(declare-fun m!873843 () Bool)

(assert (=> d!214054 m!873843))

(declare-fun m!873845 () Bool)

(assert (=> d!214054 m!873845))

(declare-fun m!873847 () Bool)

(assert (=> d!214054 m!873847))

(declare-fun m!873849 () Bool)

(assert (=> b!607013 m!873849))

(declare-fun m!873851 () Bool)

(assert (=> b!607014 m!873851))

(assert (=> b!607014 m!873369))

(declare-fun m!873853 () Bool)

(assert (=> b!607014 m!873853))

(assert (=> b!606716 d!214054))

(declare-fun d!214056 () Bool)

(assert (=> d!214056 (= (apply!1461 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))) (seqFromList!1384 lt!258932)) (dynLambda!3519 (toValue!2115 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930))))) (seqFromList!1384 lt!258932)))))

(declare-fun b_lambda!24057 () Bool)

(assert (=> (not b_lambda!24057) (not d!214056)))

(declare-fun t!80613 () Bool)

(declare-fun tb!53071 () Bool)

(assert (=> (and b!606712 (= (toValue!2115 (transformation!1208 (h!11458 rules!3103))) (toValue!2115 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))))) t!80613) tb!53071))

(declare-fun result!59714 () Bool)

(assert (=> tb!53071 (= result!59714 (inv!21 (dynLambda!3519 (toValue!2115 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930))))) (seqFromList!1384 lt!258932))))))

(declare-fun m!873855 () Bool)

(assert (=> tb!53071 m!873855))

(assert (=> d!214056 t!80613))

(declare-fun b_and!60111 () Bool)

(assert (= b_and!60095 (and (=> t!80613 result!59714) b_and!60111)))

(declare-fun tb!53073 () Bool)

(declare-fun t!80615 () Bool)

(assert (=> (and b!606699 (= (toValue!2115 (transformation!1208 (rule!1990 token!491))) (toValue!2115 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))))) t!80615) tb!53073))

(declare-fun result!59716 () Bool)

(assert (= result!59716 result!59714))

(assert (=> d!214056 t!80615))

(declare-fun b_and!60113 () Bool)

(assert (= b_and!60097 (and (=> t!80615 result!59716) b_and!60113)))

(assert (=> d!214056 m!873343))

(declare-fun m!873857 () Bool)

(assert (=> d!214056 m!873857))

(assert (=> b!606716 d!214056))

(declare-fun d!214058 () Bool)

(declare-fun lt!259144 () Int)

(assert (=> d!214058 (>= lt!259144 0)))

(declare-fun e!367844 () Int)

(assert (=> d!214058 (= lt!259144 e!367844)))

(declare-fun c!112528 () Bool)

(assert (=> d!214058 (= c!112528 (is-Nil!6055 lt!258938))))

(assert (=> d!214058 (= (size!4767 lt!258938) lt!259144)))

(declare-fun b!607016 () Bool)

(assert (=> b!607016 (= e!367844 0)))

(declare-fun b!607017 () Bool)

(assert (=> b!607017 (= e!367844 (+ 1 (size!4767 (t!80594 lt!258938))))))

(assert (= (and d!214058 c!112528) b!607016))

(assert (= (and d!214058 (not c!112528)) b!607017))

(declare-fun m!873859 () Bool)

(assert (=> b!607017 m!873859))

(assert (=> b!606716 d!214058))

(declare-fun d!214060 () Bool)

(declare-fun lt!259145 () List!6065)

(assert (=> d!214060 (= (++!1696 lt!258932 lt!259145) input!2705)))

(declare-fun e!367845 () List!6065)

(assert (=> d!214060 (= lt!259145 e!367845)))

(declare-fun c!112529 () Bool)

(assert (=> d!214060 (= c!112529 (is-Cons!6055 lt!258932))))

(assert (=> d!214060 (>= (size!4767 input!2705) (size!4767 lt!258932))))

(assert (=> d!214060 (= (getSuffix!353 input!2705 lt!258932) lt!259145)))

(declare-fun b!607018 () Bool)

(assert (=> b!607018 (= e!367845 (getSuffix!353 (tail!812 input!2705) (t!80594 lt!258932)))))

(declare-fun b!607019 () Bool)

(assert (=> b!607019 (= e!367845 input!2705)))

(assert (= (and d!214060 c!112529) b!607018))

(assert (= (and d!214060 (not c!112529)) b!607019))

(declare-fun m!873861 () Bool)

(assert (=> d!214060 m!873861))

(assert (=> d!214060 m!873577))

(assert (=> d!214060 m!873369))

(assert (=> b!607018 m!873759))

(assert (=> b!607018 m!873759))

(declare-fun m!873863 () Bool)

(assert (=> b!607018 m!873863))

(assert (=> b!606716 d!214060))

(declare-fun d!214062 () Bool)

(assert (=> d!214062 (isPrefix!836 lt!258938 (++!1696 lt!258938 suffix!1342))))

(declare-fun lt!259146 () Unit!11055)

(assert (=> d!214062 (= lt!259146 (choose!4446 lt!258938 suffix!1342))))

(assert (=> d!214062 (= (lemmaConcatTwoListThenFirstIsPrefix!681 lt!258938 suffix!1342) lt!259146)))

(declare-fun bs!71389 () Bool)

(assert (= bs!71389 d!214062))

(assert (=> bs!71389 m!873321))

(assert (=> bs!71389 m!873321))

(declare-fun m!873865 () Bool)

(assert (=> bs!71389 m!873865))

(declare-fun m!873867 () Bool)

(assert (=> bs!71389 m!873867))

(assert (=> b!606716 d!214062))

(declare-fun d!214064 () Bool)

(assert (=> d!214064 (= (inv!7701 (tag!1470 (rule!1990 token!491))) (= (mod (str.len (value!39295 (tag!1470 (rule!1990 token!491)))) 2) 0))))

(assert (=> b!606704 d!214064))

(declare-fun d!214066 () Bool)

(declare-fun res!262995 () Bool)

(declare-fun e!367846 () Bool)

(assert (=> d!214066 (=> (not res!262995) (not e!367846))))

(assert (=> d!214066 (= res!262995 (semiInverseModEq!484 (toChars!1974 (transformation!1208 (rule!1990 token!491))) (toValue!2115 (transformation!1208 (rule!1990 token!491)))))))

(assert (=> d!214066 (= (inv!7704 (transformation!1208 (rule!1990 token!491))) e!367846)))

(declare-fun b!607020 () Bool)

(assert (=> b!607020 (= e!367846 (equivClasses!467 (toChars!1974 (transformation!1208 (rule!1990 token!491))) (toValue!2115 (transformation!1208 (rule!1990 token!491)))))))

(assert (= (and d!214066 res!262995) b!607020))

(assert (=> d!214066 m!873777))

(assert (=> b!607020 m!873779))

(assert (=> b!606704 d!214066))

(declare-fun d!214068 () Bool)

(assert (=> d!214068 (= (get!2327 lt!258941) (v!16461 lt!258941))))

(assert (=> b!606715 d!214068))

(declare-fun b!607031 () Bool)

(declare-fun b_free!17269 () Bool)

(declare-fun b_next!17285 () Bool)

(assert (=> b!607031 (= b_free!17269 (not b_next!17285))))

(declare-fun t!80617 () Bool)

(declare-fun tb!53075 () Bool)

(assert (=> (and b!607031 (= (toValue!2115 (transformation!1208 (h!11458 (t!80596 rules!3103)))) (toValue!2115 (transformation!1208 (rule!1990 token!491)))) t!80617) tb!53075))

(declare-fun result!59720 () Bool)

(assert (= result!59720 result!59698))

(assert (=> d!213980 t!80617))

(declare-fun t!80619 () Bool)

(declare-fun tb!53077 () Bool)

(assert (=> (and b!607031 (= (toValue!2115 (transformation!1208 (h!11458 (t!80596 rules!3103)))) (toValue!2115 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))))) t!80619) tb!53077))

(declare-fun result!59722 () Bool)

(assert (= result!59722 result!59714))

(assert (=> d!214056 t!80619))

(declare-fun tp!188399 () Bool)

(declare-fun b_and!60115 () Bool)

(assert (=> b!607031 (= tp!188399 (and (=> t!80617 result!59720) (=> t!80619 result!59722) b_and!60115))))

(declare-fun b_free!17271 () Bool)

(declare-fun b_next!17287 () Bool)

(assert (=> b!607031 (= b_free!17271 (not b_next!17287))))

(declare-fun tb!53079 () Bool)

(declare-fun t!80621 () Bool)

(assert (=> (and b!607031 (= (toChars!1974 (transformation!1208 (h!11458 (t!80596 rules!3103)))) (toChars!1974 (transformation!1208 (rule!1990 token!491)))) t!80621) tb!53079))

(declare-fun result!59724 () Bool)

(assert (= result!59724 result!59704))

(assert (=> d!214000 t!80621))

(assert (=> b!606954 t!80621))

(declare-fun t!80623 () Bool)

(declare-fun tb!53081 () Bool)

(assert (=> (and b!607031 (= (toChars!1974 (transformation!1208 (h!11458 (t!80596 rules!3103)))) (toChars!1974 (transformation!1208 (rule!1990 (_1!3731 (v!16461 lt!258930)))))) t!80623) tb!53081))

(declare-fun result!59726 () Bool)

(assert (= result!59726 result!59710))

(assert (=> d!214040 t!80623))

(declare-fun tp!188402 () Bool)

(declare-fun b_and!60117 () Bool)

(assert (=> b!607031 (= tp!188402 (and (=> t!80621 result!59724) (=> t!80623 result!59726) b_and!60117))))

(declare-fun e!367858 () Bool)

(assert (=> b!607031 (= e!367858 (and tp!188399 tp!188402))))

(declare-fun e!367855 () Bool)

(declare-fun tp!188400 () Bool)

(declare-fun b!607030 () Bool)

(assert (=> b!607030 (= e!367855 (and tp!188400 (inv!7701 (tag!1470 (h!11458 (t!80596 rules!3103)))) (inv!7704 (transformation!1208 (h!11458 (t!80596 rules!3103)))) e!367858))))

(declare-fun b!607029 () Bool)

(declare-fun e!367856 () Bool)

(declare-fun tp!188401 () Bool)

(assert (=> b!607029 (= e!367856 (and e!367855 tp!188401))))

(assert (=> b!606708 (= tp!188355 e!367856)))

(assert (= b!607030 b!607031))

(assert (= b!607029 b!607030))

(assert (= (and b!606708 (is-Cons!6057 (t!80596 rules!3103))) b!607029))

(declare-fun m!873869 () Bool)

(assert (=> b!607030 m!873869))

(declare-fun m!873871 () Bool)

(assert (=> b!607030 m!873871))

(declare-fun b!607040 () Bool)

(declare-fun e!367865 () Bool)

(declare-fun tp!188405 () Bool)

(assert (=> b!607040 (= e!367865 (and tp_is_empty!3439 tp!188405))))

(assert (=> b!606703 (= tp!188352 e!367865)))

(assert (= (and b!606703 (is-Cons!6055 (originalCharacters!1247 token!491))) b!607040))

(declare-fun b!607043 () Bool)

(declare-fun e!367866 () Bool)

(declare-fun tp!188406 () Bool)

(assert (=> b!607043 (= e!367866 (and tp_is_empty!3439 tp!188406))))

(assert (=> b!606717 (= tp!188349 e!367866)))

(assert (= (and b!606717 (is-Cons!6055 (t!80594 input!2705))) b!607043))

(declare-fun b!607044 () Bool)

(declare-fun e!367867 () Bool)

(declare-fun tp!188407 () Bool)

(assert (=> b!607044 (= e!367867 (and tp_is_empty!3439 tp!188407))))

(assert (=> b!606707 (= tp!188353 e!367867)))

(assert (= (and b!606707 (is-Cons!6055 (t!80594 suffix!1342))) b!607044))

(declare-fun b!607057 () Bool)

(declare-fun e!367870 () Bool)

(declare-fun tp!188420 () Bool)

(assert (=> b!607057 (= e!367870 tp!188420)))

(assert (=> b!606704 (= tp!188356 e!367870)))

(declare-fun b!607055 () Bool)

(assert (=> b!607055 (= e!367870 tp_is_empty!3439)))

(declare-fun b!607056 () Bool)

(declare-fun tp!188422 () Bool)

(declare-fun tp!188419 () Bool)

(assert (=> b!607056 (= e!367870 (and tp!188422 tp!188419))))

(declare-fun b!607058 () Bool)

(declare-fun tp!188418 () Bool)

(declare-fun tp!188421 () Bool)

(assert (=> b!607058 (= e!367870 (and tp!188418 tp!188421))))

(assert (= (and b!606704 (is-ElementMatch!1542 (regex!1208 (rule!1990 token!491)))) b!607055))

(assert (= (and b!606704 (is-Concat!2774 (regex!1208 (rule!1990 token!491)))) b!607056))

(assert (= (and b!606704 (is-Star!1542 (regex!1208 (rule!1990 token!491)))) b!607057))

(assert (= (and b!606704 (is-Union!1542 (regex!1208 (rule!1990 token!491)))) b!607058))

(declare-fun b!607061 () Bool)

(declare-fun e!367871 () Bool)

(declare-fun tp!188425 () Bool)

(assert (=> b!607061 (= e!367871 tp!188425)))

(assert (=> b!606720 (= tp!188347 e!367871)))

(declare-fun b!607059 () Bool)

(assert (=> b!607059 (= e!367871 tp_is_empty!3439)))

(declare-fun b!607060 () Bool)

(declare-fun tp!188427 () Bool)

(declare-fun tp!188424 () Bool)

(assert (=> b!607060 (= e!367871 (and tp!188427 tp!188424))))

(declare-fun b!607062 () Bool)

(declare-fun tp!188423 () Bool)

(declare-fun tp!188426 () Bool)

(assert (=> b!607062 (= e!367871 (and tp!188423 tp!188426))))

(assert (= (and b!606720 (is-ElementMatch!1542 (regex!1208 (h!11458 rules!3103)))) b!607059))

(assert (= (and b!606720 (is-Concat!2774 (regex!1208 (h!11458 rules!3103)))) b!607060))

(assert (= (and b!606720 (is-Star!1542 (regex!1208 (h!11458 rules!3103)))) b!607061))

(assert (= (and b!606720 (is-Union!1542 (regex!1208 (h!11458 rules!3103)))) b!607062))

(declare-fun b_lambda!24059 () Bool)

(assert (= b_lambda!24049 (or (and b!606712 b_free!17253 (= (toValue!2115 (transformation!1208 (h!11458 rules!3103))) (toValue!2115 (transformation!1208 (rule!1990 token!491))))) (and b!606699 b_free!17257) (and b!607031 b_free!17269 (= (toValue!2115 (transformation!1208 (h!11458 (t!80596 rules!3103)))) (toValue!2115 (transformation!1208 (rule!1990 token!491))))) b_lambda!24059)))

(declare-fun b_lambda!24061 () Bool)

(assert (= b_lambda!24053 (or (and b!606712 b_free!17255 (= (toChars!1974 (transformation!1208 (h!11458 rules!3103))) (toChars!1974 (transformation!1208 (rule!1990 token!491))))) (and b!606699 b_free!17259) (and b!607031 b_free!17271 (= (toChars!1974 (transformation!1208 (h!11458 (t!80596 rules!3103)))) (toChars!1974 (transformation!1208 (rule!1990 token!491))))) b_lambda!24061)))

(declare-fun b_lambda!24063 () Bool)

(assert (= b_lambda!24051 (or (and b!606712 b_free!17255 (= (toChars!1974 (transformation!1208 (h!11458 rules!3103))) (toChars!1974 (transformation!1208 (rule!1990 token!491))))) (and b!606699 b_free!17259) (and b!607031 b_free!17271 (= (toChars!1974 (transformation!1208 (h!11458 (t!80596 rules!3103)))) (toChars!1974 (transformation!1208 (rule!1990 token!491))))) b_lambda!24063)))

(push 1)

(assert (not b!607001))

(assert (not b!606882))

(assert (not d!214066))

(assert (not b!606920))

(assert (not b!607018))

(assert (not b!606928))

(assert (not b!606982))

(assert (not d!214006))

(assert (not b!606828))

(assert (not bm!40785))

(assert (not d!214004))

(assert (not b!606967))

(assert (not b!606990))

(assert (not d!213948))

(assert (not b!607009))

(assert (not d!214052))

(assert (not d!214046))

(assert (not b!606961))

(assert (not b!606980))

(assert (not tb!53059))

(assert (not b!606826))

(assert b_and!60117)

(assert (not b!606998))

(assert b_and!60109)

(assert (not d!214022))

(assert (not b_lambda!24055))

(assert (not b!606991))

(assert (not b!606957))

(assert (not b!606923))

(assert (not b!607010))

(assert (not d!213986))

(assert (not b_next!17269))

(assert (not b!607044))

(assert (not b!606885))

(assert (not d!213968))

(assert (not b!606933))

(assert (not d!213972))

(assert (not b!607011))

(assert (not b!606889))

(assert (not d!214040))

(assert (not b!607057))

(assert (not d!213970))

(assert (not b_lambda!24061))

(assert b_and!60113)

(assert (not b!606925))

(assert b_and!60111)

(assert (not b!606932))

(assert (not d!213982))

(assert (not b_next!17275))

(assert (not b!606981))

(assert (not b!606931))

(assert (not d!214044))

(assert (not d!214000))

(assert (not d!214030))

(assert (not d!214054))

(assert (not tb!53063))

(assert (not b!606944))

(assert (not b!606954))

(assert (not b!607006))

(assert (not d!214050))

(assert (not d!214062))

(assert (not d!214026))

(assert (not b!606808))

(assert (not d!214016))

(assert (not b!607043))

(assert (not d!213996))

(assert (not b!606924))

(assert (not b!606922))

(assert (not b!606927))

(assert (not b!606955))

(assert (not b!607007))

(assert (not b!606999))

(assert (not b!606956))

(assert (not b!606894))

(assert (not b!607029))

(assert (not b!606958))

(assert (not b_lambda!24063))

(assert (not b!606963))

(assert (not b!607060))

(assert (not b_next!17273))

(assert (not b_lambda!24059))

(assert (not b!606964))

(assert (not b!607056))

(assert (not b!606884))

(assert b_and!60107)

(assert (not b_next!17287))

(assert (not b!606814))

(assert (not b!607020))

(assert (not b_next!17271))

(assert (not b!606921))

(assert (not b!607004))

(assert (not d!214032))

(assert (not b!606960))

(assert (not b!606995))

(assert (not bm!40786))

(assert (not b!607005))

(assert (not b!606970))

(assert (not d!213960))

(assert (not b!606941))

(assert (not d!214034))

(assert (not b!606987))

(assert (not b!606992))

(assert (not b!607000))

(assert (not tb!53071))

(assert (not d!214024))

(assert (not b!606949))

(assert (not b!606930))

(assert (not b!606929))

(assert (not b!607017))

(assert (not b!607040))

(assert (not d!214008))

(assert (not d!214018))

(assert (not b!606883))

(assert (not b!607013))

(assert (not d!214060))

(assert (not d!213998))

(assert (not b_lambda!24057))

(assert (not d!213992))

(assert b_and!60115)

(assert (not d!213978))

(assert (not b!606966))

(assert (not b!606936))

(assert (not b!606827))

(assert (not b_next!17285))

(assert (not d!214042))

(assert (not d!214012))

(assert (not b!607062))

(assert (not d!214002))

(assert (not b!606840))

(assert (not tb!53067))

(assert (not b!607061))

(assert (not b!607030))

(assert (not b!607058))

(assert (not b!606886))

(assert (not b!606959))

(assert (not d!213984))

(assert (not b!606937))

(assert (not b!606839))

(assert (not d!214036))

(assert (not b!606934))

(assert (not b!606997))

(assert (not b!606881))

(assert (not d!213958))

(assert (not b!606888))

(assert tp_is_empty!3439)

(assert (not b!607014))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17269))

(assert (not b_next!17275))

(assert (not b_next!17273))

(assert (not b_next!17271))

(assert b_and!60115)

(assert (not b_next!17285))

(assert b_and!60109)

(assert b_and!60117)

(assert b_and!60113)

(assert b_and!60111)

(assert b_and!60107)

(assert (not b_next!17287))

(check-sat)

(pop 1)

