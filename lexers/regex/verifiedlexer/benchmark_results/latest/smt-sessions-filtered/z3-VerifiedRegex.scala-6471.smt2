; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!339426 () Bool)

(assert start!339426)

(declare-fun b!3636911 () Bool)

(declare-fun b_free!95249 () Bool)

(declare-fun b_next!95953 () Bool)

(assert (=> b!3636911 (= b_free!95249 (not b_next!95953))))

(declare-fun tp!1109884 () Bool)

(declare-fun b_and!267643 () Bool)

(assert (=> b!3636911 (= tp!1109884 b_and!267643)))

(declare-fun b_free!95251 () Bool)

(declare-fun b_next!95955 () Bool)

(assert (=> b!3636911 (= b_free!95251 (not b_next!95955))))

(declare-fun tp!1109887 () Bool)

(declare-fun b_and!267645 () Bool)

(assert (=> b!3636911 (= tp!1109887 b_and!267645)))

(declare-fun b!3636882 () Bool)

(declare-fun b_free!95253 () Bool)

(declare-fun b_next!95957 () Bool)

(assert (=> b!3636882 (= b_free!95253 (not b_next!95957))))

(declare-fun tp!1109886 () Bool)

(declare-fun b_and!267647 () Bool)

(assert (=> b!3636882 (= tp!1109886 b_and!267647)))

(declare-fun b_free!95255 () Bool)

(declare-fun b_next!95959 () Bool)

(assert (=> b!3636882 (= b_free!95255 (not b_next!95959))))

(declare-fun tp!1109888 () Bool)

(declare-fun b_and!267649 () Bool)

(assert (=> b!3636882 (= tp!1109888 b_and!267649)))

(declare-fun b!3636884 () Bool)

(declare-fun b_free!95257 () Bool)

(declare-fun b_next!95961 () Bool)

(assert (=> b!3636884 (= b_free!95257 (not b_next!95961))))

(declare-fun tp!1109898 () Bool)

(declare-fun b_and!267651 () Bool)

(assert (=> b!3636884 (= tp!1109898 b_and!267651)))

(declare-fun b_free!95259 () Bool)

(declare-fun b_next!95963 () Bool)

(assert (=> b!3636884 (= b_free!95259 (not b_next!95963))))

(declare-fun tp!1109892 () Bool)

(declare-fun b_and!267653 () Bool)

(assert (=> b!3636884 (= tp!1109892 b_and!267653)))

(declare-fun b!3636912 () Bool)

(declare-fun b_free!95261 () Bool)

(declare-fun b_next!95965 () Bool)

(assert (=> b!3636912 (= b_free!95261 (not b_next!95965))))

(declare-fun tp!1109897 () Bool)

(declare-fun b_and!267655 () Bool)

(assert (=> b!3636912 (= tp!1109897 b_and!267655)))

(declare-fun b_free!95263 () Bool)

(declare-fun b_next!95967 () Bool)

(assert (=> b!3636912 (= b_free!95263 (not b_next!95967))))

(declare-fun tp!1109896 () Bool)

(declare-fun b_and!267657 () Bool)

(assert (=> b!3636912 (= tp!1109896 b_and!267657)))

(declare-fun e!2251293 () Bool)

(assert (=> b!3636882 (= e!2251293 (and tp!1109886 tp!1109888))))

(declare-fun b!3636883 () Bool)

(declare-fun e!2251273 () Bool)

(declare-fun e!2251284 () Bool)

(assert (=> b!3636883 (= e!2251273 e!2251284)))

(declare-fun res!1473539 () Bool)

(assert (=> b!3636883 (=> res!1473539 e!2251284)))

(declare-datatypes ((C!21148 0))(
  ( (C!21149 (val!12622 Int)) )
))
(declare-datatypes ((List!38449 0))(
  ( (Nil!38325) (Cons!38325 (h!43745 C!21148) (t!295992 List!38449)) )
))
(declare-fun lt!1258569 () List!38449)

(declare-fun lt!1258580 () C!21148)

(declare-fun contains!7509 (List!38449 C!21148) Bool)

(assert (=> b!3636883 (= res!1473539 (contains!7509 lt!1258569 lt!1258580))))

(declare-fun suffix!1395 () List!38449)

(declare-fun head!7714 (List!38449) C!21148)

(assert (=> b!3636883 (= lt!1258580 (head!7714 suffix!1395))))

(declare-datatypes ((List!38450 0))(
  ( (Nil!38326) (Cons!38326 (h!43746 (_ BitVec 16)) (t!295993 List!38450)) )
))
(declare-datatypes ((TokenValue!5952 0))(
  ( (FloatLiteralValue!11904 (text!42109 List!38450)) (TokenValueExt!5951 (__x!24121 Int)) (Broken!29760 (value!183511 List!38450)) (Object!6075) (End!5952) (Def!5952) (Underscore!5952) (Match!5952) (Else!5952) (Error!5952) (Case!5952) (If!5952) (Extends!5952) (Abstract!5952) (Class!5952) (Val!5952) (DelimiterValue!11904 (del!6012 List!38450)) (KeywordValue!5958 (value!183512 List!38450)) (CommentValue!11904 (value!183513 List!38450)) (WhitespaceValue!11904 (value!183514 List!38450)) (IndentationValue!5952 (value!183515 List!38450)) (String!43093) (Int32!5952) (Broken!29761 (value!183516 List!38450)) (Boolean!5953) (Unit!55153) (OperatorValue!5955 (op!6012 List!38450)) (IdentifierValue!11904 (value!183517 List!38450)) (IdentifierValue!11905 (value!183518 List!38450)) (WhitespaceValue!11905 (value!183519 List!38450)) (True!11904) (False!11904) (Broken!29762 (value!183520 List!38450)) (Broken!29763 (value!183521 List!38450)) (True!11905) (RightBrace!5952) (RightBracket!5952) (Colon!5952) (Null!5952) (Comma!5952) (LeftBracket!5952) (False!11905) (LeftBrace!5952) (ImaginaryLiteralValue!5952 (text!42110 List!38450)) (StringLiteralValue!17856 (value!183522 List!38450)) (EOFValue!5952 (value!183523 List!38450)) (IdentValue!5952 (value!183524 List!38450)) (DelimiterValue!11905 (value!183525 List!38450)) (DedentValue!5952 (value!183526 List!38450)) (NewLineValue!5952 (value!183527 List!38450)) (IntegerValue!17856 (value!183528 (_ BitVec 32)) (text!42111 List!38450)) (IntegerValue!17857 (value!183529 Int) (text!42112 List!38450)) (Times!5952) (Or!5952) (Equal!5952) (Minus!5952) (Broken!29764 (value!183530 List!38450)) (And!5952) (Div!5952) (LessEqual!5952) (Mod!5952) (Concat!16433) (Not!5952) (Plus!5952) (SpaceValue!5952 (value!183531 List!38450)) (IntegerValue!17858 (value!183532 Int) (text!42113 List!38450)) (StringLiteralValue!17857 (text!42114 List!38450)) (FloatLiteralValue!11905 (text!42115 List!38450)) (BytesLiteralValue!5952 (value!183533 List!38450)) (CommentValue!11905 (value!183534 List!38450)) (StringLiteralValue!17858 (value!183535 List!38450)) (ErrorTokenValue!5952 (msg!6013 List!38450)) )
))
(declare-datatypes ((Regex!10481 0))(
  ( (ElementMatch!10481 (c!628962 C!21148)) (Concat!16434 (regOne!21474 Regex!10481) (regTwo!21474 Regex!10481)) (EmptyExpr!10481) (Star!10481 (reg!10810 Regex!10481)) (EmptyLang!10481) (Union!10481 (regOne!21475 Regex!10481) (regTwo!21475 Regex!10481)) )
))
(declare-datatypes ((String!43094 0))(
  ( (String!43095 (value!183536 String)) )
))
(declare-datatypes ((IArray!23403 0))(
  ( (IArray!23404 (innerList!11759 List!38449)) )
))
(declare-datatypes ((Conc!11699 0))(
  ( (Node!11699 (left!29922 Conc!11699) (right!30252 Conc!11699) (csize!23628 Int) (cheight!11910 Int)) (Leaf!18171 (xs!14901 IArray!23403) (csize!23629 Int)) (Empty!11699) )
))
(declare-datatypes ((BalanceConc!23012 0))(
  ( (BalanceConc!23013 (c!628963 Conc!11699)) )
))
(declare-datatypes ((TokenValueInjection!11332 0))(
  ( (TokenValueInjection!11333 (toValue!8014 Int) (toChars!7873 Int)) )
))
(declare-datatypes ((Rule!11244 0))(
  ( (Rule!11245 (regex!5722 Regex!10481) (tag!6464 String!43094) (isSeparator!5722 Bool) (transformation!5722 TokenValueInjection!11332)) )
))
(declare-fun rule!403 () Rule!11244)

(declare-fun usedCharacters!934 (Regex!10481) List!38449)

(assert (=> b!3636883 (= lt!1258569 (usedCharacters!934 (regex!5722 rule!403)))))

(declare-fun e!2251280 () Bool)

(assert (=> b!3636884 (= e!2251280 (and tp!1109898 tp!1109892))))

(declare-fun b!3636885 () Bool)

(declare-fun res!1473538 () Bool)

(declare-fun e!2251286 () Bool)

(assert (=> b!3636885 (=> res!1473538 e!2251286)))

(declare-fun lt!1258568 () List!38449)

(assert (=> b!3636885 (= res!1473538 (contains!7509 lt!1258569 (head!7714 lt!1258568)))))

(declare-fun b!3636886 () Bool)

(declare-fun res!1473540 () Bool)

(declare-fun e!2251276 () Bool)

(assert (=> b!3636886 (=> res!1473540 e!2251276)))

(declare-datatypes ((Token!10810 0))(
  ( (Token!10811 (value!183537 TokenValue!5952) (rule!8498 Rule!11244) (size!29247 Int) (originalCharacters!6436 List!38449)) )
))
(declare-datatypes ((tuple2!38192 0))(
  ( (tuple2!38193 (_1!22230 Token!10810) (_2!22230 List!38449)) )
))
(declare-fun lt!1258570 () tuple2!38192)

(declare-fun matchR!5050 (Regex!10481 List!38449) Bool)

(assert (=> b!3636886 (= res!1473540 (not (matchR!5050 (regex!5722 (rule!8498 (_1!22230 lt!1258570))) lt!1258568)))))

(declare-fun b!3636887 () Bool)

(declare-fun res!1473523 () Bool)

(assert (=> b!3636887 (=> res!1473523 e!2251284)))

(declare-fun anOtherTypeRule!33 () Rule!11244)

(assert (=> b!3636887 (= res!1473523 (not (contains!7509 (usedCharacters!934 (regex!5722 anOtherTypeRule!33)) lt!1258580)))))

(declare-fun b!3636888 () Bool)

(declare-fun res!1473532 () Bool)

(declare-fun e!2251292 () Bool)

(assert (=> b!3636888 (=> (not res!1473532) (not e!2251292))))

(declare-datatypes ((List!38451 0))(
  ( (Nil!38327) (Cons!38327 (h!43747 Rule!11244) (t!295994 List!38451)) )
))
(declare-fun rules!3307 () List!38451)

(declare-fun contains!7510 (List!38451 Rule!11244) Bool)

(assert (=> b!3636888 (= res!1473532 (contains!7510 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2251278 () Bool)

(declare-fun e!2251295 () Bool)

(declare-fun tp!1109891 () Bool)

(declare-fun b!3636889 () Bool)

(declare-fun inv!51752 (String!43094) Bool)

(declare-fun inv!51755 (TokenValueInjection!11332) Bool)

(assert (=> b!3636889 (= e!2251295 (and tp!1109891 (inv!51752 (tag!6464 rule!403)) (inv!51755 (transformation!5722 rule!403)) e!2251278))))

(declare-fun b!3636890 () Bool)

(declare-fun res!1473541 () Bool)

(assert (=> b!3636890 (=> (not res!1473541) (not e!2251292))))

(assert (=> b!3636890 (= res!1473541 (not (= (isSeparator!5722 anOtherTypeRule!33) (isSeparator!5722 rule!403))))))

(declare-fun tp!1109895 () Bool)

(declare-fun e!2251277 () Bool)

(declare-fun token!511 () Token!10810)

(declare-fun b!3636891 () Bool)

(assert (=> b!3636891 (= e!2251277 (and tp!1109895 (inv!51752 (tag!6464 (rule!8498 token!511))) (inv!51755 (transformation!5722 (rule!8498 token!511))) e!2251280))))

(declare-fun b!3636892 () Bool)

(declare-fun e!2251289 () Bool)

(assert (=> b!3636892 (= e!2251289 e!2251286)))

(declare-fun res!1473537 () Bool)

(assert (=> b!3636892 (=> res!1473537 e!2251286)))

(declare-fun lt!1258576 () List!38449)

(declare-datatypes ((Option!8072 0))(
  ( (None!8071) (Some!8071 (v!37887 tuple2!38192)) )
))
(declare-fun lt!1258581 () Option!8072)

(assert (=> b!3636892 (= res!1473537 (or (not (= lt!1258576 (_2!22230 lt!1258570))) (not (= lt!1258581 (Some!8071 (tuple2!38193 (_1!22230 lt!1258570) lt!1258576))))))))

(assert (=> b!3636892 (= (_2!22230 lt!1258570) lt!1258576)))

(declare-datatypes ((Unit!55154 0))(
  ( (Unit!55155) )
))
(declare-fun lt!1258582 () Unit!55154)

(declare-fun lt!1258578 () List!38449)

(declare-fun lemmaSamePrefixThenSameSuffix!1412 (List!38449 List!38449 List!38449 List!38449 List!38449) Unit!55154)

(assert (=> b!3636892 (= lt!1258582 (lemmaSamePrefixThenSameSuffix!1412 lt!1258568 (_2!22230 lt!1258570) lt!1258568 lt!1258576 lt!1258578))))

(declare-fun getSuffix!1638 (List!38449 List!38449) List!38449)

(assert (=> b!3636892 (= lt!1258576 (getSuffix!1638 lt!1258578 lt!1258568))))

(declare-fun lt!1258579 () Int)

(declare-fun lt!1258557 () TokenValue!5952)

(assert (=> b!3636892 (= lt!1258581 (Some!8071 (tuple2!38193 (Token!10811 lt!1258557 (rule!8498 (_1!22230 lt!1258570)) lt!1258579 lt!1258568) (_2!22230 lt!1258570))))))

(declare-datatypes ((LexerInterface!5311 0))(
  ( (LexerInterfaceExt!5308 (__x!24122 Int)) (Lexer!5309) )
))
(declare-fun thiss!23823 () LexerInterface!5311)

(declare-fun maxPrefixOneRule!1983 (LexerInterface!5311 Rule!11244 List!38449) Option!8072)

(assert (=> b!3636892 (= lt!1258581 (maxPrefixOneRule!1983 thiss!23823 (rule!8498 (_1!22230 lt!1258570)) lt!1258578))))

(declare-fun size!29248 (List!38449) Int)

(assert (=> b!3636892 (= lt!1258579 (size!29248 lt!1258568))))

(declare-fun apply!9224 (TokenValueInjection!11332 BalanceConc!23012) TokenValue!5952)

(declare-fun seqFromList!4271 (List!38449) BalanceConc!23012)

(assert (=> b!3636892 (= lt!1258557 (apply!9224 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))) (seqFromList!4271 lt!1258568)))))

(declare-fun lt!1258562 () Unit!55154)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1039 (LexerInterface!5311 List!38451 List!38449 List!38449 List!38449 Rule!11244) Unit!55154)

(assert (=> b!3636892 (= lt!1258562 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1039 thiss!23823 rules!3307 lt!1258568 lt!1258578 (_2!22230 lt!1258570) (rule!8498 (_1!22230 lt!1258570))))))

(declare-fun b!3636893 () Bool)

(assert (=> b!3636893 (= e!2251276 e!2251289)))

(declare-fun res!1473542 () Bool)

(assert (=> b!3636893 (=> res!1473542 e!2251289)))

(declare-fun lt!1258559 () Option!8072)

(declare-fun lt!1258563 () BalanceConc!23012)

(declare-fun size!29249 (BalanceConc!23012) Int)

(assert (=> b!3636893 (= res!1473542 (not (= lt!1258559 (Some!8071 (tuple2!38193 (Token!10811 (apply!9224 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))) lt!1258563) (rule!8498 (_1!22230 lt!1258570)) (size!29249 lt!1258563) lt!1258568) (_2!22230 lt!1258570))))))))

(declare-fun lt!1258575 () Unit!55154)

(declare-fun lemmaCharactersSize!767 (Token!10810) Unit!55154)

(assert (=> b!3636893 (= lt!1258575 (lemmaCharactersSize!767 (_1!22230 lt!1258570)))))

(declare-fun lt!1258566 () Unit!55154)

(declare-fun lemmaEqSameImage!905 (TokenValueInjection!11332 BalanceConc!23012 BalanceConc!23012) Unit!55154)

(assert (=> b!3636893 (= lt!1258566 (lemmaEqSameImage!905 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))) lt!1258563 (seqFromList!4271 (originalCharacters!6436 (_1!22230 lt!1258570)))))))

(declare-fun lt!1258572 () Unit!55154)

(declare-fun lemmaSemiInverse!1471 (TokenValueInjection!11332 BalanceConc!23012) Unit!55154)

(assert (=> b!3636893 (= lt!1258572 (lemmaSemiInverse!1471 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))) lt!1258563))))

(declare-fun b!3636894 () Bool)

(declare-fun res!1473531 () Bool)

(assert (=> b!3636894 (=> res!1473531 e!2251273)))

(declare-fun isEmpty!22684 (List!38449) Bool)

(assert (=> b!3636894 (= res!1473531 (isEmpty!22684 suffix!1395))))

(declare-fun b!3636895 () Bool)

(declare-fun res!1473536 () Bool)

(assert (=> b!3636895 (=> (not res!1473536) (not e!2251292))))

(declare-fun rulesInvariant!4708 (LexerInterface!5311 List!38451) Bool)

(assert (=> b!3636895 (= res!1473536 (rulesInvariant!4708 thiss!23823 rules!3307))))

(declare-fun b!3636896 () Bool)

(declare-fun e!2251291 () Bool)

(declare-fun tp_is_empty!18045 () Bool)

(declare-fun tp!1109885 () Bool)

(assert (=> b!3636896 (= e!2251291 (and tp_is_empty!18045 tp!1109885))))

(declare-fun b!3636897 () Bool)

(declare-fun e!2251294 () Bool)

(assert (=> b!3636897 (= e!2251294 (not e!2251273))))

(declare-fun res!1473529 () Bool)

(assert (=> b!3636897 (=> res!1473529 e!2251273)))

(declare-fun lt!1258577 () List!38449)

(assert (=> b!3636897 (= res!1473529 (not (matchR!5050 (regex!5722 rule!403) lt!1258577)))))

(declare-fun ruleValid!1986 (LexerInterface!5311 Rule!11244) Bool)

(assert (=> b!3636897 (ruleValid!1986 thiss!23823 rule!403)))

(declare-fun lt!1258574 () Unit!55154)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1140 (LexerInterface!5311 Rule!11244 List!38451) Unit!55154)

(assert (=> b!3636897 (= lt!1258574 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1140 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3636898 () Bool)

(declare-fun res!1473544 () Bool)

(assert (=> b!3636898 (=> (not res!1473544) (not e!2251294))))

(assert (=> b!3636898 (= res!1473544 (= (rule!8498 token!511) rule!403))))

(declare-fun b!3636899 () Bool)

(assert (=> b!3636899 (= e!2251284 e!2251276)))

(declare-fun res!1473528 () Bool)

(assert (=> b!3636899 (=> res!1473528 e!2251276)))

(declare-fun isPrefix!3085 (List!38449 List!38449) Bool)

(assert (=> b!3636899 (= res!1473528 (not (isPrefix!3085 lt!1258568 lt!1258578)))))

(declare-fun ++!9538 (List!38449 List!38449) List!38449)

(assert (=> b!3636899 (isPrefix!3085 lt!1258568 (++!9538 lt!1258568 (_2!22230 lt!1258570)))))

(declare-fun lt!1258558 () Unit!55154)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2004 (List!38449 List!38449) Unit!55154)

(assert (=> b!3636899 (= lt!1258558 (lemmaConcatTwoListThenFirstIsPrefix!2004 lt!1258568 (_2!22230 lt!1258570)))))

(declare-fun list!14180 (BalanceConc!23012) List!38449)

(assert (=> b!3636899 (= lt!1258568 (list!14180 lt!1258563))))

(declare-fun charsOf!3736 (Token!10810) BalanceConc!23012)

(assert (=> b!3636899 (= lt!1258563 (charsOf!3736 (_1!22230 lt!1258570)))))

(declare-fun e!2251290 () Bool)

(assert (=> b!3636899 e!2251290))

(declare-fun res!1473543 () Bool)

(assert (=> b!3636899 (=> (not res!1473543) (not e!2251290))))

(declare-datatypes ((Option!8073 0))(
  ( (None!8072) (Some!8072 (v!37888 Rule!11244)) )
))
(declare-fun lt!1258571 () Option!8073)

(declare-fun isDefined!6304 (Option!8073) Bool)

(assert (=> b!3636899 (= res!1473543 (isDefined!6304 lt!1258571))))

(declare-fun getRuleFromTag!1326 (LexerInterface!5311 List!38451 String!43094) Option!8073)

(assert (=> b!3636899 (= lt!1258571 (getRuleFromTag!1326 thiss!23823 rules!3307 (tag!6464 (rule!8498 (_1!22230 lt!1258570)))))))

(declare-fun lt!1258564 () Unit!55154)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1326 (LexerInterface!5311 List!38451 List!38449 Token!10810) Unit!55154)

(assert (=> b!3636899 (= lt!1258564 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1326 thiss!23823 rules!3307 lt!1258578 (_1!22230 lt!1258570)))))

(declare-fun get!12543 (Option!8072) tuple2!38192)

(assert (=> b!3636899 (= lt!1258570 (get!12543 lt!1258559))))

(declare-fun lt!1258573 () Unit!55154)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!989 (LexerInterface!5311 List!38451 List!38449 List!38449) Unit!55154)

(assert (=> b!3636899 (= lt!1258573 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!989 thiss!23823 rules!3307 lt!1258577 suffix!1395))))

(declare-fun maxPrefix!2845 (LexerInterface!5311 List!38451 List!38449) Option!8072)

(assert (=> b!3636899 (= lt!1258559 (maxPrefix!2845 thiss!23823 rules!3307 lt!1258578))))

(assert (=> b!3636899 (isPrefix!3085 lt!1258577 lt!1258578)))

(declare-fun lt!1258565 () Unit!55154)

(assert (=> b!3636899 (= lt!1258565 (lemmaConcatTwoListThenFirstIsPrefix!2004 lt!1258577 suffix!1395))))

(assert (=> b!3636899 (= lt!1258578 (++!9538 lt!1258577 suffix!1395))))

(declare-fun b!3636900 () Bool)

(declare-fun e!2251279 () Bool)

(declare-fun lt!1258561 () Rule!11244)

(assert (=> b!3636900 (= e!2251279 (= (rule!8498 (_1!22230 lt!1258570)) lt!1258561))))

(declare-fun b!3636901 () Bool)

(declare-fun res!1473524 () Bool)

(assert (=> b!3636901 (=> (not res!1473524) (not e!2251292))))

(assert (=> b!3636901 (= res!1473524 (contains!7510 rules!3307 rule!403))))

(declare-fun b!3636902 () Bool)

(assert (=> b!3636902 (= e!2251290 e!2251279)))

(declare-fun res!1473533 () Bool)

(assert (=> b!3636902 (=> (not res!1473533) (not e!2251279))))

(assert (=> b!3636902 (= res!1473533 (matchR!5050 (regex!5722 lt!1258561) (list!14180 (charsOf!3736 (_1!22230 lt!1258570)))))))

(declare-fun get!12544 (Option!8073) Rule!11244)

(assert (=> b!3636902 (= lt!1258561 (get!12544 lt!1258571))))

(declare-fun e!2251282 () Bool)

(declare-fun tp!1109894 () Bool)

(declare-fun b!3636903 () Bool)

(assert (=> b!3636903 (= e!2251282 (and tp!1109894 (inv!51752 (tag!6464 (h!43747 rules!3307))) (inv!51755 (transformation!5722 (h!43747 rules!3307))) e!2251293))))

(declare-fun b!3636904 () Bool)

(declare-fun res!1473526 () Bool)

(assert (=> b!3636904 (=> (not res!1473526) (not e!2251294))))

(declare-fun lt!1258567 () tuple2!38192)

(assert (=> b!3636904 (= res!1473526 (isEmpty!22684 (_2!22230 lt!1258567)))))

(declare-fun b!3636905 () Bool)

(declare-fun e!2251285 () Bool)

(declare-fun tp!1109893 () Bool)

(declare-fun inv!21 (TokenValue!5952) Bool)

(assert (=> b!3636905 (= e!2251285 (and (inv!21 (value!183537 token!511)) e!2251277 tp!1109893))))

(declare-fun b!3636906 () Bool)

(declare-fun validRegex!4797 (Regex!10481) Bool)

(assert (=> b!3636906 (= e!2251286 (validRegex!4797 (regex!5722 rule!403)))))

(declare-fun b!3636907 () Bool)

(declare-fun res!1473535 () Bool)

(assert (=> b!3636907 (=> (not res!1473535) (not e!2251292))))

(declare-fun isEmpty!22685 (List!38451) Bool)

(assert (=> b!3636907 (= res!1473535 (not (isEmpty!22685 rules!3307)))))

(declare-fun b!3636908 () Bool)

(declare-fun e!2251283 () Bool)

(assert (=> b!3636908 (= e!2251283 e!2251294)))

(declare-fun res!1473525 () Bool)

(assert (=> b!3636908 (=> (not res!1473525) (not e!2251294))))

(assert (=> b!3636908 (= res!1473525 (= (_1!22230 lt!1258567) token!511))))

(declare-fun lt!1258560 () Option!8072)

(assert (=> b!3636908 (= lt!1258567 (get!12543 lt!1258560))))

(declare-fun res!1473530 () Bool)

(assert (=> start!339426 (=> (not res!1473530) (not e!2251292))))

(get-info :version)

(assert (=> start!339426 (= res!1473530 ((_ is Lexer!5309) thiss!23823))))

(assert (=> start!339426 e!2251292))

(declare-fun e!2251272 () Bool)

(assert (=> start!339426 e!2251272))

(assert (=> start!339426 e!2251291))

(assert (=> start!339426 true))

(declare-fun inv!51756 (Token!10810) Bool)

(assert (=> start!339426 (and (inv!51756 token!511) e!2251285)))

(assert (=> start!339426 e!2251295))

(declare-fun e!2251275 () Bool)

(assert (=> start!339426 e!2251275))

(declare-fun b!3636909 () Bool)

(declare-fun tp!1109890 () Bool)

(assert (=> b!3636909 (= e!2251272 (and e!2251282 tp!1109890))))

(declare-fun b!3636910 () Bool)

(declare-fun res!1473534 () Bool)

(assert (=> b!3636910 (=> res!1473534 e!2251284)))

(declare-fun sepAndNonSepRulesDisjointChars!1890 (List!38451 List!38451) Bool)

(assert (=> b!3636910 (= res!1473534 (not (sepAndNonSepRulesDisjointChars!1890 rules!3307 rules!3307)))))

(declare-fun e!2251296 () Bool)

(assert (=> b!3636911 (= e!2251296 (and tp!1109884 tp!1109887))))

(assert (=> b!3636912 (= e!2251278 (and tp!1109897 tp!1109896))))

(declare-fun b!3636913 () Bool)

(declare-fun tp!1109889 () Bool)

(assert (=> b!3636913 (= e!2251275 (and tp!1109889 (inv!51752 (tag!6464 anOtherTypeRule!33)) (inv!51755 (transformation!5722 anOtherTypeRule!33)) e!2251296))))

(declare-fun b!3636914 () Bool)

(assert (=> b!3636914 (= e!2251292 e!2251283)))

(declare-fun res!1473527 () Bool)

(assert (=> b!3636914 (=> (not res!1473527) (not e!2251283))))

(declare-fun isDefined!6305 (Option!8072) Bool)

(assert (=> b!3636914 (= res!1473527 (isDefined!6305 lt!1258560))))

(assert (=> b!3636914 (= lt!1258560 (maxPrefix!2845 thiss!23823 rules!3307 lt!1258577))))

(assert (=> b!3636914 (= lt!1258577 (list!14180 (charsOf!3736 token!511)))))

(assert (= (and start!339426 res!1473530) b!3636907))

(assert (= (and b!3636907 res!1473535) b!3636895))

(assert (= (and b!3636895 res!1473536) b!3636901))

(assert (= (and b!3636901 res!1473524) b!3636888))

(assert (= (and b!3636888 res!1473532) b!3636890))

(assert (= (and b!3636890 res!1473541) b!3636914))

(assert (= (and b!3636914 res!1473527) b!3636908))

(assert (= (and b!3636908 res!1473525) b!3636904))

(assert (= (and b!3636904 res!1473526) b!3636898))

(assert (= (and b!3636898 res!1473544) b!3636897))

(assert (= (and b!3636897 (not res!1473529)) b!3636894))

(assert (= (and b!3636894 (not res!1473531)) b!3636883))

(assert (= (and b!3636883 (not res!1473539)) b!3636887))

(assert (= (and b!3636887 (not res!1473523)) b!3636910))

(assert (= (and b!3636910 (not res!1473534)) b!3636899))

(assert (= (and b!3636899 res!1473543) b!3636902))

(assert (= (and b!3636902 res!1473533) b!3636900))

(assert (= (and b!3636899 (not res!1473528)) b!3636886))

(assert (= (and b!3636886 (not res!1473540)) b!3636893))

(assert (= (and b!3636893 (not res!1473542)) b!3636892))

(assert (= (and b!3636892 (not res!1473537)) b!3636885))

(assert (= (and b!3636885 (not res!1473538)) b!3636906))

(assert (= b!3636903 b!3636882))

(assert (= b!3636909 b!3636903))

(assert (= (and start!339426 ((_ is Cons!38327) rules!3307)) b!3636909))

(assert (= (and start!339426 ((_ is Cons!38325) suffix!1395)) b!3636896))

(assert (= b!3636891 b!3636884))

(assert (= b!3636905 b!3636891))

(assert (= start!339426 b!3636905))

(assert (= b!3636889 b!3636912))

(assert (= start!339426 b!3636889))

(assert (= b!3636913 b!3636911))

(assert (= start!339426 b!3636913))

(declare-fun m!4139311 () Bool)

(assert (=> b!3636892 m!4139311))

(declare-fun m!4139313 () Bool)

(assert (=> b!3636892 m!4139313))

(declare-fun m!4139315 () Bool)

(assert (=> b!3636892 m!4139315))

(declare-fun m!4139317 () Bool)

(assert (=> b!3636892 m!4139317))

(declare-fun m!4139319 () Bool)

(assert (=> b!3636892 m!4139319))

(assert (=> b!3636892 m!4139317))

(declare-fun m!4139321 () Bool)

(assert (=> b!3636892 m!4139321))

(declare-fun m!4139323 () Bool)

(assert (=> b!3636892 m!4139323))

(declare-fun m!4139325 () Bool)

(assert (=> b!3636905 m!4139325))

(declare-fun m!4139327 () Bool)

(assert (=> b!3636910 m!4139327))

(declare-fun m!4139329 () Bool)

(assert (=> b!3636914 m!4139329))

(declare-fun m!4139331 () Bool)

(assert (=> b!3636914 m!4139331))

(declare-fun m!4139333 () Bool)

(assert (=> b!3636914 m!4139333))

(assert (=> b!3636914 m!4139333))

(declare-fun m!4139335 () Bool)

(assert (=> b!3636914 m!4139335))

(declare-fun m!4139337 () Bool)

(assert (=> b!3636907 m!4139337))

(declare-fun m!4139339 () Bool)

(assert (=> b!3636913 m!4139339))

(declare-fun m!4139341 () Bool)

(assert (=> b!3636913 m!4139341))

(declare-fun m!4139343 () Bool)

(assert (=> b!3636885 m!4139343))

(assert (=> b!3636885 m!4139343))

(declare-fun m!4139345 () Bool)

(assert (=> b!3636885 m!4139345))

(declare-fun m!4139347 () Bool)

(assert (=> b!3636889 m!4139347))

(declare-fun m!4139349 () Bool)

(assert (=> b!3636889 m!4139349))

(declare-fun m!4139351 () Bool)

(assert (=> b!3636908 m!4139351))

(declare-fun m!4139353 () Bool)

(assert (=> b!3636902 m!4139353))

(assert (=> b!3636902 m!4139353))

(declare-fun m!4139355 () Bool)

(assert (=> b!3636902 m!4139355))

(assert (=> b!3636902 m!4139355))

(declare-fun m!4139357 () Bool)

(assert (=> b!3636902 m!4139357))

(declare-fun m!4139359 () Bool)

(assert (=> b!3636902 m!4139359))

(declare-fun m!4139361 () Bool)

(assert (=> b!3636888 m!4139361))

(declare-fun m!4139363 () Bool)

(assert (=> b!3636899 m!4139363))

(declare-fun m!4139365 () Bool)

(assert (=> b!3636899 m!4139365))

(declare-fun m!4139367 () Bool)

(assert (=> b!3636899 m!4139367))

(declare-fun m!4139369 () Bool)

(assert (=> b!3636899 m!4139369))

(declare-fun m!4139371 () Bool)

(assert (=> b!3636899 m!4139371))

(declare-fun m!4139373 () Bool)

(assert (=> b!3636899 m!4139373))

(assert (=> b!3636899 m!4139353))

(declare-fun m!4139375 () Bool)

(assert (=> b!3636899 m!4139375))

(declare-fun m!4139377 () Bool)

(assert (=> b!3636899 m!4139377))

(declare-fun m!4139379 () Bool)

(assert (=> b!3636899 m!4139379))

(declare-fun m!4139381 () Bool)

(assert (=> b!3636899 m!4139381))

(assert (=> b!3636899 m!4139379))

(declare-fun m!4139383 () Bool)

(assert (=> b!3636899 m!4139383))

(declare-fun m!4139385 () Bool)

(assert (=> b!3636899 m!4139385))

(declare-fun m!4139387 () Bool)

(assert (=> b!3636899 m!4139387))

(declare-fun m!4139389 () Bool)

(assert (=> b!3636899 m!4139389))

(declare-fun m!4139391 () Bool)

(assert (=> b!3636883 m!4139391))

(declare-fun m!4139393 () Bool)

(assert (=> b!3636883 m!4139393))

(declare-fun m!4139395 () Bool)

(assert (=> b!3636883 m!4139395))

(declare-fun m!4139397 () Bool)

(assert (=> b!3636891 m!4139397))

(declare-fun m!4139399 () Bool)

(assert (=> b!3636891 m!4139399))

(declare-fun m!4139401 () Bool)

(assert (=> b!3636894 m!4139401))

(declare-fun m!4139403 () Bool)

(assert (=> b!3636887 m!4139403))

(assert (=> b!3636887 m!4139403))

(declare-fun m!4139405 () Bool)

(assert (=> b!3636887 m!4139405))

(declare-fun m!4139407 () Bool)

(assert (=> b!3636886 m!4139407))

(declare-fun m!4139409 () Bool)

(assert (=> b!3636903 m!4139409))

(declare-fun m!4139411 () Bool)

(assert (=> b!3636903 m!4139411))

(declare-fun m!4139413 () Bool)

(assert (=> b!3636906 m!4139413))

(declare-fun m!4139415 () Bool)

(assert (=> b!3636901 m!4139415))

(declare-fun m!4139417 () Bool)

(assert (=> b!3636904 m!4139417))

(declare-fun m!4139419 () Bool)

(assert (=> b!3636895 m!4139419))

(declare-fun m!4139421 () Bool)

(assert (=> b!3636893 m!4139421))

(declare-fun m!4139423 () Bool)

(assert (=> b!3636893 m!4139423))

(assert (=> b!3636893 m!4139421))

(declare-fun m!4139425 () Bool)

(assert (=> b!3636893 m!4139425))

(declare-fun m!4139427 () Bool)

(assert (=> b!3636893 m!4139427))

(declare-fun m!4139429 () Bool)

(assert (=> b!3636893 m!4139429))

(declare-fun m!4139431 () Bool)

(assert (=> b!3636893 m!4139431))

(declare-fun m!4139433 () Bool)

(assert (=> b!3636897 m!4139433))

(declare-fun m!4139435 () Bool)

(assert (=> b!3636897 m!4139435))

(declare-fun m!4139437 () Bool)

(assert (=> b!3636897 m!4139437))

(declare-fun m!4139439 () Bool)

(assert (=> start!339426 m!4139439))

(check-sat (not b!3636913) (not b!3636904) (not b_next!95959) (not b!3636906) b_and!267643 (not b!3636908) (not b!3636903) (not b!3636894) (not b_next!95961) (not b!3636914) (not b!3636907) (not b!3636902) (not b!3636896) b_and!267655 b_and!267647 (not b!3636893) (not b!3636891) (not b_next!95953) (not b!3636889) b_and!267645 (not b_next!95967) (not start!339426) (not b!3636901) (not b!3636885) (not b_next!95955) (not b_next!95957) (not b!3636910) b_and!267657 (not b!3636886) (not b!3636909) tp_is_empty!18045 b_and!267651 (not b_next!95963) (not b!3636883) (not b!3636899) (not b!3636892) (not b!3636897) b_and!267653 (not b!3636905) (not b!3636895) b_and!267649 (not b!3636887) (not b_next!95965) (not b!3636888))
(check-sat (not b_next!95953) (not b_next!95959) b_and!267643 b_and!267653 (not b_next!95961) b_and!267649 (not b_next!95965) b_and!267655 b_and!267647 b_and!267645 (not b_next!95967) (not b_next!95955) (not b_next!95957) b_and!267657 b_and!267651 (not b_next!95963))
(get-model)

(declare-fun d!1069522 () Bool)

(declare-fun res!1473558 () Bool)

(declare-fun e!2251299 () Bool)

(assert (=> d!1069522 (=> (not res!1473558) (not e!2251299))))

(declare-fun rulesValid!2191 (LexerInterface!5311 List!38451) Bool)

(assert (=> d!1069522 (= res!1473558 (rulesValid!2191 thiss!23823 rules!3307))))

(assert (=> d!1069522 (= (rulesInvariant!4708 thiss!23823 rules!3307) e!2251299)))

(declare-fun b!3636917 () Bool)

(declare-datatypes ((List!38452 0))(
  ( (Nil!38328) (Cons!38328 (h!43748 String!43094) (t!296115 List!38452)) )
))
(declare-fun noDuplicateTag!2187 (LexerInterface!5311 List!38451 List!38452) Bool)

(assert (=> b!3636917 (= e!2251299 (noDuplicateTag!2187 thiss!23823 rules!3307 Nil!38328))))

(assert (= (and d!1069522 res!1473558) b!3636917))

(declare-fun m!4139441 () Bool)

(assert (=> d!1069522 m!4139441))

(declare-fun m!4139443 () Bool)

(assert (=> b!3636917 m!4139443))

(assert (=> b!3636895 d!1069522))

(declare-fun d!1069526 () Bool)

(assert (=> d!1069526 (= (isEmpty!22684 suffix!1395) ((_ is Nil!38325) suffix!1395))))

(assert (=> b!3636894 d!1069526))

(declare-fun d!1069528 () Bool)

(declare-fun isEmpty!22688 (Option!8072) Bool)

(assert (=> d!1069528 (= (isDefined!6305 lt!1258560) (not (isEmpty!22688 lt!1258560)))))

(declare-fun bs!571828 () Bool)

(assert (= bs!571828 d!1069528))

(declare-fun m!4139445 () Bool)

(assert (=> bs!571828 m!4139445))

(assert (=> b!3636914 d!1069528))

(declare-fun b!3637040 () Bool)

(declare-fun res!1473623 () Bool)

(declare-fun e!2251368 () Bool)

(assert (=> b!3637040 (=> (not res!1473623) (not e!2251368))))

(declare-fun lt!1258625 () Option!8072)

(assert (=> b!3637040 (= res!1473623 (< (size!29248 (_2!22230 (get!12543 lt!1258625))) (size!29248 lt!1258577)))))

(declare-fun d!1069530 () Bool)

(declare-fun e!2251369 () Bool)

(assert (=> d!1069530 e!2251369))

(declare-fun res!1473627 () Bool)

(assert (=> d!1069530 (=> res!1473627 e!2251369)))

(assert (=> d!1069530 (= res!1473627 (isEmpty!22688 lt!1258625))))

(declare-fun e!2251370 () Option!8072)

(assert (=> d!1069530 (= lt!1258625 e!2251370)))

(declare-fun c!628991 () Bool)

(assert (=> d!1069530 (= c!628991 (and ((_ is Cons!38327) rules!3307) ((_ is Nil!38327) (t!295994 rules!3307))))))

(declare-fun lt!1258626 () Unit!55154)

(declare-fun lt!1258623 () Unit!55154)

(assert (=> d!1069530 (= lt!1258626 lt!1258623)))

(assert (=> d!1069530 (isPrefix!3085 lt!1258577 lt!1258577)))

(declare-fun lemmaIsPrefixRefl!1956 (List!38449 List!38449) Unit!55154)

(assert (=> d!1069530 (= lt!1258623 (lemmaIsPrefixRefl!1956 lt!1258577 lt!1258577))))

(declare-fun rulesValidInductive!2021 (LexerInterface!5311 List!38451) Bool)

(assert (=> d!1069530 (rulesValidInductive!2021 thiss!23823 rules!3307)))

(assert (=> d!1069530 (= (maxPrefix!2845 thiss!23823 rules!3307 lt!1258577) lt!1258625)))

(declare-fun b!3637041 () Bool)

(declare-fun call!262969 () Option!8072)

(assert (=> b!3637041 (= e!2251370 call!262969)))

(declare-fun b!3637042 () Bool)

(declare-fun lt!1258624 () Option!8072)

(declare-fun lt!1258627 () Option!8072)

(assert (=> b!3637042 (= e!2251370 (ite (and ((_ is None!8071) lt!1258624) ((_ is None!8071) lt!1258627)) None!8071 (ite ((_ is None!8071) lt!1258627) lt!1258624 (ite ((_ is None!8071) lt!1258624) lt!1258627 (ite (>= (size!29247 (_1!22230 (v!37887 lt!1258624))) (size!29247 (_1!22230 (v!37887 lt!1258627)))) lt!1258624 lt!1258627)))))))

(assert (=> b!3637042 (= lt!1258624 call!262969)))

(assert (=> b!3637042 (= lt!1258627 (maxPrefix!2845 thiss!23823 (t!295994 rules!3307) lt!1258577))))

(declare-fun b!3637043 () Bool)

(declare-fun res!1473625 () Bool)

(assert (=> b!3637043 (=> (not res!1473625) (not e!2251368))))

(assert (=> b!3637043 (= res!1473625 (= (value!183537 (_1!22230 (get!12543 lt!1258625))) (apply!9224 (transformation!5722 (rule!8498 (_1!22230 (get!12543 lt!1258625)))) (seqFromList!4271 (originalCharacters!6436 (_1!22230 (get!12543 lt!1258625)))))))))

(declare-fun bm!262964 () Bool)

(assert (=> bm!262964 (= call!262969 (maxPrefixOneRule!1983 thiss!23823 (h!43747 rules!3307) lt!1258577))))

(declare-fun b!3637044 () Bool)

(declare-fun res!1473622 () Bool)

(assert (=> b!3637044 (=> (not res!1473622) (not e!2251368))))

(assert (=> b!3637044 (= res!1473622 (matchR!5050 (regex!5722 (rule!8498 (_1!22230 (get!12543 lt!1258625)))) (list!14180 (charsOf!3736 (_1!22230 (get!12543 lt!1258625))))))))

(declare-fun b!3637045 () Bool)

(declare-fun res!1473628 () Bool)

(assert (=> b!3637045 (=> (not res!1473628) (not e!2251368))))

(assert (=> b!3637045 (= res!1473628 (= (++!9538 (list!14180 (charsOf!3736 (_1!22230 (get!12543 lt!1258625)))) (_2!22230 (get!12543 lt!1258625))) lt!1258577))))

(declare-fun b!3637046 () Bool)

(assert (=> b!3637046 (= e!2251368 (contains!7510 rules!3307 (rule!8498 (_1!22230 (get!12543 lt!1258625)))))))

(declare-fun b!3637047 () Bool)

(assert (=> b!3637047 (= e!2251369 e!2251368)))

(declare-fun res!1473624 () Bool)

(assert (=> b!3637047 (=> (not res!1473624) (not e!2251368))))

(assert (=> b!3637047 (= res!1473624 (isDefined!6305 lt!1258625))))

(declare-fun b!3637048 () Bool)

(declare-fun res!1473626 () Bool)

(assert (=> b!3637048 (=> (not res!1473626) (not e!2251368))))

(assert (=> b!3637048 (= res!1473626 (= (list!14180 (charsOf!3736 (_1!22230 (get!12543 lt!1258625)))) (originalCharacters!6436 (_1!22230 (get!12543 lt!1258625)))))))

(assert (= (and d!1069530 c!628991) b!3637041))

(assert (= (and d!1069530 (not c!628991)) b!3637042))

(assert (= (or b!3637041 b!3637042) bm!262964))

(assert (= (and d!1069530 (not res!1473627)) b!3637047))

(assert (= (and b!3637047 res!1473624) b!3637048))

(assert (= (and b!3637048 res!1473626) b!3637040))

(assert (= (and b!3637040 res!1473623) b!3637045))

(assert (= (and b!3637045 res!1473628) b!3637043))

(assert (= (and b!3637043 res!1473625) b!3637044))

(assert (= (and b!3637044 res!1473622) b!3637046))

(declare-fun m!4139527 () Bool)

(assert (=> bm!262964 m!4139527))

(declare-fun m!4139529 () Bool)

(assert (=> b!3637043 m!4139529))

(declare-fun m!4139531 () Bool)

(assert (=> b!3637043 m!4139531))

(assert (=> b!3637043 m!4139531))

(declare-fun m!4139533 () Bool)

(assert (=> b!3637043 m!4139533))

(assert (=> b!3637044 m!4139529))

(declare-fun m!4139535 () Bool)

(assert (=> b!3637044 m!4139535))

(assert (=> b!3637044 m!4139535))

(declare-fun m!4139537 () Bool)

(assert (=> b!3637044 m!4139537))

(assert (=> b!3637044 m!4139537))

(declare-fun m!4139539 () Bool)

(assert (=> b!3637044 m!4139539))

(declare-fun m!4139541 () Bool)

(assert (=> d!1069530 m!4139541))

(declare-fun m!4139543 () Bool)

(assert (=> d!1069530 m!4139543))

(declare-fun m!4139545 () Bool)

(assert (=> d!1069530 m!4139545))

(declare-fun m!4139547 () Bool)

(assert (=> d!1069530 m!4139547))

(assert (=> b!3637040 m!4139529))

(declare-fun m!4139549 () Bool)

(assert (=> b!3637040 m!4139549))

(declare-fun m!4139551 () Bool)

(assert (=> b!3637040 m!4139551))

(assert (=> b!3637046 m!4139529))

(declare-fun m!4139553 () Bool)

(assert (=> b!3637046 m!4139553))

(assert (=> b!3637045 m!4139529))

(assert (=> b!3637045 m!4139535))

(assert (=> b!3637045 m!4139535))

(assert (=> b!3637045 m!4139537))

(assert (=> b!3637045 m!4139537))

(declare-fun m!4139555 () Bool)

(assert (=> b!3637045 m!4139555))

(declare-fun m!4139557 () Bool)

(assert (=> b!3637047 m!4139557))

(assert (=> b!3637048 m!4139529))

(assert (=> b!3637048 m!4139535))

(assert (=> b!3637048 m!4139535))

(assert (=> b!3637048 m!4139537))

(declare-fun m!4139559 () Bool)

(assert (=> b!3637042 m!4139559))

(assert (=> b!3636914 d!1069530))

(declare-fun d!1069556 () Bool)

(declare-fun list!14181 (Conc!11699) List!38449)

(assert (=> d!1069556 (= (list!14180 (charsOf!3736 token!511)) (list!14181 (c!628963 (charsOf!3736 token!511))))))

(declare-fun bs!571831 () Bool)

(assert (= bs!571831 d!1069556))

(declare-fun m!4139575 () Bool)

(assert (=> bs!571831 m!4139575))

(assert (=> b!3636914 d!1069556))

(declare-fun d!1069560 () Bool)

(declare-fun lt!1258637 () BalanceConc!23012)

(assert (=> d!1069560 (= (list!14180 lt!1258637) (originalCharacters!6436 token!511))))

(declare-fun dynLambda!16651 (Int TokenValue!5952) BalanceConc!23012)

(assert (=> d!1069560 (= lt!1258637 (dynLambda!16651 (toChars!7873 (transformation!5722 (rule!8498 token!511))) (value!183537 token!511)))))

(assert (=> d!1069560 (= (charsOf!3736 token!511) lt!1258637)))

(declare-fun b_lambda!107769 () Bool)

(assert (=> (not b_lambda!107769) (not d!1069560)))

(declare-fun t!296004 () Bool)

(declare-fun tb!209309 () Bool)

(assert (=> (and b!3636911 (= (toChars!7873 (transformation!5722 anOtherTypeRule!33)) (toChars!7873 (transformation!5722 (rule!8498 token!511)))) t!296004) tb!209309))

(declare-fun b!3637087 () Bool)

(declare-fun e!2251394 () Bool)

(declare-fun tp!1109904 () Bool)

(declare-fun inv!51759 (Conc!11699) Bool)

(assert (=> b!3637087 (= e!2251394 (and (inv!51759 (c!628963 (dynLambda!16651 (toChars!7873 (transformation!5722 (rule!8498 token!511))) (value!183537 token!511)))) tp!1109904))))

(declare-fun result!254952 () Bool)

(declare-fun inv!51760 (BalanceConc!23012) Bool)

(assert (=> tb!209309 (= result!254952 (and (inv!51760 (dynLambda!16651 (toChars!7873 (transformation!5722 (rule!8498 token!511))) (value!183537 token!511))) e!2251394))))

(assert (= tb!209309 b!3637087))

(declare-fun m!4139601 () Bool)

(assert (=> b!3637087 m!4139601))

(declare-fun m!4139603 () Bool)

(assert (=> tb!209309 m!4139603))

(assert (=> d!1069560 t!296004))

(declare-fun b_and!267667 () Bool)

(assert (= b_and!267645 (and (=> t!296004 result!254952) b_and!267667)))

(declare-fun tb!209311 () Bool)

(declare-fun t!296006 () Bool)

(assert (=> (and b!3636882 (= (toChars!7873 (transformation!5722 (h!43747 rules!3307))) (toChars!7873 (transformation!5722 (rule!8498 token!511)))) t!296006) tb!209311))

(declare-fun result!254956 () Bool)

(assert (= result!254956 result!254952))

(assert (=> d!1069560 t!296006))

(declare-fun b_and!267669 () Bool)

(assert (= b_and!267649 (and (=> t!296006 result!254956) b_and!267669)))

(declare-fun t!296008 () Bool)

(declare-fun tb!209313 () Bool)

(assert (=> (and b!3636884 (= (toChars!7873 (transformation!5722 (rule!8498 token!511))) (toChars!7873 (transformation!5722 (rule!8498 token!511)))) t!296008) tb!209313))

(declare-fun result!254958 () Bool)

(assert (= result!254958 result!254952))

(assert (=> d!1069560 t!296008))

(declare-fun b_and!267671 () Bool)

(assert (= b_and!267653 (and (=> t!296008 result!254958) b_and!267671)))

(declare-fun t!296010 () Bool)

(declare-fun tb!209315 () Bool)

(assert (=> (and b!3636912 (= (toChars!7873 (transformation!5722 rule!403)) (toChars!7873 (transformation!5722 (rule!8498 token!511)))) t!296010) tb!209315))

(declare-fun result!254960 () Bool)

(assert (= result!254960 result!254952))

(assert (=> d!1069560 t!296010))

(declare-fun b_and!267673 () Bool)

(assert (= b_and!267657 (and (=> t!296010 result!254960) b_and!267673)))

(declare-fun m!4139615 () Bool)

(assert (=> d!1069560 m!4139615))

(declare-fun m!4139617 () Bool)

(assert (=> d!1069560 m!4139617))

(assert (=> b!3636914 d!1069560))

(declare-fun d!1069570 () Bool)

(assert (=> d!1069570 (= (size!29247 (_1!22230 lt!1258570)) (size!29248 (originalCharacters!6436 (_1!22230 lt!1258570))))))

(declare-fun Unit!55156 () Unit!55154)

(assert (=> d!1069570 (= (lemmaCharactersSize!767 (_1!22230 lt!1258570)) Unit!55156)))

(declare-fun bs!571834 () Bool)

(assert (= bs!571834 d!1069570))

(declare-fun m!4139625 () Bool)

(assert (=> bs!571834 m!4139625))

(assert (=> b!3636893 d!1069570))

(declare-fun b!3637134 () Bool)

(declare-fun e!2251429 () Bool)

(assert (=> b!3637134 (= e!2251429 true)))

(declare-fun d!1069576 () Bool)

(assert (=> d!1069576 e!2251429))

(assert (= d!1069576 b!3637134))

(declare-fun order!21027 () Int)

(declare-fun order!21029 () Int)

(declare-fun lambda!124346 () Int)

(declare-fun dynLambda!16652 (Int Int) Int)

(declare-fun dynLambda!16653 (Int Int) Int)

(assert (=> b!3637134 (< (dynLambda!16652 order!21027 (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) (dynLambda!16653 order!21029 lambda!124346))))

(declare-fun order!21031 () Int)

(declare-fun dynLambda!16654 (Int Int) Int)

(assert (=> b!3637134 (< (dynLambda!16654 order!21031 (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) (dynLambda!16653 order!21029 lambda!124346))))

(declare-fun dynLambda!16655 (Int BalanceConc!23012) TokenValue!5952)

(assert (=> d!1069576 (= (dynLambda!16655 (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) lt!1258563) (dynLambda!16655 (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) (seqFromList!4271 (originalCharacters!6436 (_1!22230 lt!1258570)))))))

(declare-fun lt!1258706 () Unit!55154)

(declare-fun Forall2of!349 (Int BalanceConc!23012 BalanceConc!23012) Unit!55154)

(assert (=> d!1069576 (= lt!1258706 (Forall2of!349 lambda!124346 lt!1258563 (seqFromList!4271 (originalCharacters!6436 (_1!22230 lt!1258570)))))))

(assert (=> d!1069576 (= (list!14180 lt!1258563) (list!14180 (seqFromList!4271 (originalCharacters!6436 (_1!22230 lt!1258570)))))))

(assert (=> d!1069576 (= (lemmaEqSameImage!905 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))) lt!1258563 (seqFromList!4271 (originalCharacters!6436 (_1!22230 lt!1258570)))) lt!1258706)))

(declare-fun b_lambda!107773 () Bool)

(assert (=> (not b_lambda!107773) (not d!1069576)))

(declare-fun t!296020 () Bool)

(declare-fun tb!209325 () Bool)

(assert (=> (and b!3636911 (= (toValue!8014 (transformation!5722 anOtherTypeRule!33)) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296020) tb!209325))

(declare-fun result!254972 () Bool)

(assert (=> tb!209325 (= result!254972 (inv!21 (dynLambda!16655 (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) lt!1258563)))))

(declare-fun m!4139709 () Bool)

(assert (=> tb!209325 m!4139709))

(assert (=> d!1069576 t!296020))

(declare-fun b_and!267683 () Bool)

(assert (= b_and!267643 (and (=> t!296020 result!254972) b_and!267683)))

(declare-fun tb!209327 () Bool)

(declare-fun t!296022 () Bool)

(assert (=> (and b!3636882 (= (toValue!8014 (transformation!5722 (h!43747 rules!3307))) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296022) tb!209327))

(declare-fun result!254976 () Bool)

(assert (= result!254976 result!254972))

(assert (=> d!1069576 t!296022))

(declare-fun b_and!267685 () Bool)

(assert (= b_and!267647 (and (=> t!296022 result!254976) b_and!267685)))

(declare-fun t!296024 () Bool)

(declare-fun tb!209329 () Bool)

(assert (=> (and b!3636884 (= (toValue!8014 (transformation!5722 (rule!8498 token!511))) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296024) tb!209329))

(declare-fun result!254978 () Bool)

(assert (= result!254978 result!254972))

(assert (=> d!1069576 t!296024))

(declare-fun b_and!267687 () Bool)

(assert (= b_and!267651 (and (=> t!296024 result!254978) b_and!267687)))

(declare-fun t!296026 () Bool)

(declare-fun tb!209331 () Bool)

(assert (=> (and b!3636912 (= (toValue!8014 (transformation!5722 rule!403)) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296026) tb!209331))

(declare-fun result!254980 () Bool)

(assert (= result!254980 result!254972))

(assert (=> d!1069576 t!296026))

(declare-fun b_and!267689 () Bool)

(assert (= b_and!267655 (and (=> t!296026 result!254980) b_and!267689)))

(declare-fun b_lambda!107775 () Bool)

(assert (=> (not b_lambda!107775) (not d!1069576)))

(declare-fun t!296028 () Bool)

(declare-fun tb!209333 () Bool)

(assert (=> (and b!3636911 (= (toValue!8014 (transformation!5722 anOtherTypeRule!33)) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296028) tb!209333))

(declare-fun result!254982 () Bool)

(assert (=> tb!209333 (= result!254982 (inv!21 (dynLambda!16655 (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) (seqFromList!4271 (originalCharacters!6436 (_1!22230 lt!1258570))))))))

(declare-fun m!4139711 () Bool)

(assert (=> tb!209333 m!4139711))

(assert (=> d!1069576 t!296028))

(declare-fun b_and!267691 () Bool)

(assert (= b_and!267683 (and (=> t!296028 result!254982) b_and!267691)))

(declare-fun tb!209335 () Bool)

(declare-fun t!296030 () Bool)

(assert (=> (and b!3636882 (= (toValue!8014 (transformation!5722 (h!43747 rules!3307))) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296030) tb!209335))

(declare-fun result!254984 () Bool)

(assert (= result!254984 result!254982))

(assert (=> d!1069576 t!296030))

(declare-fun b_and!267693 () Bool)

(assert (= b_and!267685 (and (=> t!296030 result!254984) b_and!267693)))

(declare-fun tb!209337 () Bool)

(declare-fun t!296032 () Bool)

(assert (=> (and b!3636884 (= (toValue!8014 (transformation!5722 (rule!8498 token!511))) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296032) tb!209337))

(declare-fun result!254986 () Bool)

(assert (= result!254986 result!254982))

(assert (=> d!1069576 t!296032))

(declare-fun b_and!267695 () Bool)

(assert (= b_and!267687 (and (=> t!296032 result!254986) b_and!267695)))

(declare-fun t!296034 () Bool)

(declare-fun tb!209339 () Bool)

(assert (=> (and b!3636912 (= (toValue!8014 (transformation!5722 rule!403)) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296034) tb!209339))

(declare-fun result!254988 () Bool)

(assert (= result!254988 result!254982))

(assert (=> d!1069576 t!296034))

(declare-fun b_and!267697 () Bool)

(assert (= b_and!267689 (and (=> t!296034 result!254988) b_and!267697)))

(assert (=> d!1069576 m!4139421))

(declare-fun m!4139713 () Bool)

(assert (=> d!1069576 m!4139713))

(assert (=> d!1069576 m!4139367))

(assert (=> d!1069576 m!4139421))

(declare-fun m!4139715 () Bool)

(assert (=> d!1069576 m!4139715))

(declare-fun m!4139717 () Bool)

(assert (=> d!1069576 m!4139717))

(assert (=> d!1069576 m!4139421))

(declare-fun m!4139719 () Bool)

(assert (=> d!1069576 m!4139719))

(assert (=> b!3636893 d!1069576))

(declare-fun d!1069604 () Bool)

(declare-fun lt!1258709 () Int)

(assert (=> d!1069604 (= lt!1258709 (size!29248 (list!14180 lt!1258563)))))

(declare-fun size!29250 (Conc!11699) Int)

(assert (=> d!1069604 (= lt!1258709 (size!29250 (c!628963 lt!1258563)))))

(assert (=> d!1069604 (= (size!29249 lt!1258563) lt!1258709)))

(declare-fun bs!571836 () Bool)

(assert (= bs!571836 d!1069604))

(assert (=> bs!571836 m!4139367))

(assert (=> bs!571836 m!4139367))

(declare-fun m!4139721 () Bool)

(assert (=> bs!571836 m!4139721))

(declare-fun m!4139723 () Bool)

(assert (=> bs!571836 m!4139723))

(assert (=> b!3636893 d!1069604))

(declare-fun b!3637141 () Bool)

(declare-fun e!2251436 () Bool)

(assert (=> b!3637141 (= e!2251436 true)))

(declare-fun d!1069606 () Bool)

(assert (=> d!1069606 e!2251436))

(assert (= d!1069606 b!3637141))

(declare-fun lambda!124349 () Int)

(declare-fun order!21033 () Int)

(declare-fun dynLambda!16656 (Int Int) Int)

(assert (=> b!3637141 (< (dynLambda!16652 order!21027 (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) (dynLambda!16656 order!21033 lambda!124349))))

(assert (=> b!3637141 (< (dynLambda!16654 order!21031 (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) (dynLambda!16656 order!21033 lambda!124349))))

(assert (=> d!1069606 (= (list!14180 (dynLambda!16651 (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) (dynLambda!16655 (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) lt!1258563))) (list!14180 lt!1258563))))

(declare-fun lt!1258712 () Unit!55154)

(declare-fun ForallOf!691 (Int BalanceConc!23012) Unit!55154)

(assert (=> d!1069606 (= lt!1258712 (ForallOf!691 lambda!124349 lt!1258563))))

(assert (=> d!1069606 (= (lemmaSemiInverse!1471 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))) lt!1258563) lt!1258712)))

(declare-fun b_lambda!107777 () Bool)

(assert (=> (not b_lambda!107777) (not d!1069606)))

(declare-fun tb!209341 () Bool)

(declare-fun t!296036 () Bool)

(assert (=> (and b!3636911 (= (toChars!7873 (transformation!5722 anOtherTypeRule!33)) (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296036) tb!209341))

(declare-fun tp!1109905 () Bool)

(declare-fun b!3637142 () Bool)

(declare-fun e!2251437 () Bool)

(assert (=> b!3637142 (= e!2251437 (and (inv!51759 (c!628963 (dynLambda!16651 (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) (dynLambda!16655 (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) lt!1258563)))) tp!1109905))))

(declare-fun result!254990 () Bool)

(assert (=> tb!209341 (= result!254990 (and (inv!51760 (dynLambda!16651 (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) (dynLambda!16655 (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) lt!1258563))) e!2251437))))

(assert (= tb!209341 b!3637142))

(declare-fun m!4139725 () Bool)

(assert (=> b!3637142 m!4139725))

(declare-fun m!4139727 () Bool)

(assert (=> tb!209341 m!4139727))

(assert (=> d!1069606 t!296036))

(declare-fun b_and!267699 () Bool)

(assert (= b_and!267667 (and (=> t!296036 result!254990) b_and!267699)))

(declare-fun t!296038 () Bool)

(declare-fun tb!209343 () Bool)

(assert (=> (and b!3636882 (= (toChars!7873 (transformation!5722 (h!43747 rules!3307))) (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296038) tb!209343))

(declare-fun result!254992 () Bool)

(assert (= result!254992 result!254990))

(assert (=> d!1069606 t!296038))

(declare-fun b_and!267701 () Bool)

(assert (= b_and!267669 (and (=> t!296038 result!254992) b_and!267701)))

(declare-fun t!296040 () Bool)

(declare-fun tb!209345 () Bool)

(assert (=> (and b!3636884 (= (toChars!7873 (transformation!5722 (rule!8498 token!511))) (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296040) tb!209345))

(declare-fun result!254994 () Bool)

(assert (= result!254994 result!254990))

(assert (=> d!1069606 t!296040))

(declare-fun b_and!267703 () Bool)

(assert (= b_and!267671 (and (=> t!296040 result!254994) b_and!267703)))

(declare-fun tb!209347 () Bool)

(declare-fun t!296042 () Bool)

(assert (=> (and b!3636912 (= (toChars!7873 (transformation!5722 rule!403)) (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296042) tb!209347))

(declare-fun result!254996 () Bool)

(assert (= result!254996 result!254990))

(assert (=> d!1069606 t!296042))

(declare-fun b_and!267705 () Bool)

(assert (= b_and!267673 (and (=> t!296042 result!254996) b_and!267705)))

(declare-fun b_lambda!107779 () Bool)

(assert (=> (not b_lambda!107779) (not d!1069606)))

(assert (=> d!1069606 t!296020))

(declare-fun b_and!267707 () Bool)

(assert (= b_and!267691 (and (=> t!296020 result!254972) b_and!267707)))

(assert (=> d!1069606 t!296022))

(declare-fun b_and!267709 () Bool)

(assert (= b_and!267693 (and (=> t!296022 result!254976) b_and!267709)))

(assert (=> d!1069606 t!296024))

(declare-fun b_and!267711 () Bool)

(assert (= b_and!267695 (and (=> t!296024 result!254978) b_and!267711)))

(assert (=> d!1069606 t!296026))

(declare-fun b_and!267713 () Bool)

(assert (= b_and!267697 (and (=> t!296026 result!254980) b_and!267713)))

(declare-fun m!4139729 () Bool)

(assert (=> d!1069606 m!4139729))

(declare-fun m!4139731 () Bool)

(assert (=> d!1069606 m!4139731))

(assert (=> d!1069606 m!4139717))

(assert (=> d!1069606 m!4139729))

(assert (=> d!1069606 m!4139717))

(assert (=> d!1069606 m!4139367))

(declare-fun m!4139733 () Bool)

(assert (=> d!1069606 m!4139733))

(assert (=> b!3636893 d!1069606))

(declare-fun d!1069608 () Bool)

(assert (=> d!1069608 (= (apply!9224 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))) lt!1258563) (dynLambda!16655 (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) lt!1258563))))

(declare-fun b_lambda!107781 () Bool)

(assert (=> (not b_lambda!107781) (not d!1069608)))

(assert (=> d!1069608 t!296020))

(declare-fun b_and!267715 () Bool)

(assert (= b_and!267707 (and (=> t!296020 result!254972) b_and!267715)))

(assert (=> d!1069608 t!296022))

(declare-fun b_and!267717 () Bool)

(assert (= b_and!267709 (and (=> t!296022 result!254976) b_and!267717)))

(assert (=> d!1069608 t!296024))

(declare-fun b_and!267719 () Bool)

(assert (= b_and!267711 (and (=> t!296024 result!254978) b_and!267719)))

(assert (=> d!1069608 t!296026))

(declare-fun b_and!267721 () Bool)

(assert (= b_and!267713 (and (=> t!296026 result!254980) b_and!267721)))

(assert (=> d!1069608 m!4139717))

(assert (=> b!3636893 d!1069608))

(declare-fun d!1069610 () Bool)

(declare-fun fromListB!1970 (List!38449) BalanceConc!23012)

(assert (=> d!1069610 (= (seqFromList!4271 (originalCharacters!6436 (_1!22230 lt!1258570))) (fromListB!1970 (originalCharacters!6436 (_1!22230 lt!1258570))))))

(declare-fun bs!571837 () Bool)

(assert (= bs!571837 d!1069610))

(declare-fun m!4139735 () Bool)

(assert (=> bs!571837 m!4139735))

(assert (=> b!3636893 d!1069610))

(declare-fun d!1069612 () Bool)

(assert (=> d!1069612 (= (apply!9224 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))) (seqFromList!4271 lt!1258568)) (dynLambda!16655 (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) (seqFromList!4271 lt!1258568)))))

(declare-fun b_lambda!107783 () Bool)

(assert (=> (not b_lambda!107783) (not d!1069612)))

(declare-fun t!296044 () Bool)

(declare-fun tb!209349 () Bool)

(assert (=> (and b!3636911 (= (toValue!8014 (transformation!5722 anOtherTypeRule!33)) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296044) tb!209349))

(declare-fun result!254998 () Bool)

(assert (=> tb!209349 (= result!254998 (inv!21 (dynLambda!16655 (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) (seqFromList!4271 lt!1258568))))))

(declare-fun m!4139737 () Bool)

(assert (=> tb!209349 m!4139737))

(assert (=> d!1069612 t!296044))

(declare-fun b_and!267723 () Bool)

(assert (= b_and!267715 (and (=> t!296044 result!254998) b_and!267723)))

(declare-fun t!296046 () Bool)

(declare-fun tb!209351 () Bool)

(assert (=> (and b!3636882 (= (toValue!8014 (transformation!5722 (h!43747 rules!3307))) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296046) tb!209351))

(declare-fun result!255000 () Bool)

(assert (= result!255000 result!254998))

(assert (=> d!1069612 t!296046))

(declare-fun b_and!267725 () Bool)

(assert (= b_and!267717 (and (=> t!296046 result!255000) b_and!267725)))

(declare-fun t!296048 () Bool)

(declare-fun tb!209353 () Bool)

(assert (=> (and b!3636884 (= (toValue!8014 (transformation!5722 (rule!8498 token!511))) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296048) tb!209353))

(declare-fun result!255002 () Bool)

(assert (= result!255002 result!254998))

(assert (=> d!1069612 t!296048))

(declare-fun b_and!267727 () Bool)

(assert (= b_and!267719 (and (=> t!296048 result!255002) b_and!267727)))

(declare-fun t!296050 () Bool)

(declare-fun tb!209355 () Bool)

(assert (=> (and b!3636912 (= (toValue!8014 (transformation!5722 rule!403)) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296050) tb!209355))

(declare-fun result!255004 () Bool)

(assert (= result!255004 result!254998))

(assert (=> d!1069612 t!296050))

(declare-fun b_and!267729 () Bool)

(assert (= b_and!267721 (and (=> t!296050 result!255004) b_and!267729)))

(assert (=> d!1069612 m!4139317))

(declare-fun m!4139739 () Bool)

(assert (=> d!1069612 m!4139739))

(assert (=> b!3636892 d!1069612))

(declare-fun d!1069614 () Bool)

(assert (=> d!1069614 (= (seqFromList!4271 lt!1258568) (fromListB!1970 lt!1258568))))

(declare-fun bs!571838 () Bool)

(assert (= bs!571838 d!1069614))

(declare-fun m!4139741 () Bool)

(assert (=> bs!571838 m!4139741))

(assert (=> b!3636892 d!1069614))

(declare-fun d!1069616 () Bool)

(declare-fun lt!1258715 () Int)

(assert (=> d!1069616 (>= lt!1258715 0)))

(declare-fun e!2251441 () Int)

(assert (=> d!1069616 (= lt!1258715 e!2251441)))

(declare-fun c!629004 () Bool)

(assert (=> d!1069616 (= c!629004 ((_ is Nil!38325) lt!1258568))))

(assert (=> d!1069616 (= (size!29248 lt!1258568) lt!1258715)))

(declare-fun b!3637147 () Bool)

(assert (=> b!3637147 (= e!2251441 0)))

(declare-fun b!3637148 () Bool)

(assert (=> b!3637148 (= e!2251441 (+ 1 (size!29248 (t!295992 lt!1258568))))))

(assert (= (and d!1069616 c!629004) b!3637147))

(assert (= (and d!1069616 (not c!629004)) b!3637148))

(declare-fun m!4139743 () Bool)

(assert (=> b!3637148 m!4139743))

(assert (=> b!3636892 d!1069616))

(declare-fun d!1069618 () Bool)

(declare-fun lt!1258718 () List!38449)

(assert (=> d!1069618 (= (++!9538 lt!1258568 lt!1258718) lt!1258578)))

(declare-fun e!2251444 () List!38449)

(assert (=> d!1069618 (= lt!1258718 e!2251444)))

(declare-fun c!629007 () Bool)

(assert (=> d!1069618 (= c!629007 ((_ is Cons!38325) lt!1258568))))

(assert (=> d!1069618 (>= (size!29248 lt!1258578) (size!29248 lt!1258568))))

(assert (=> d!1069618 (= (getSuffix!1638 lt!1258578 lt!1258568) lt!1258718)))

(declare-fun b!3637153 () Bool)

(declare-fun tail!5633 (List!38449) List!38449)

(assert (=> b!3637153 (= e!2251444 (getSuffix!1638 (tail!5633 lt!1258578) (t!295992 lt!1258568)))))

(declare-fun b!3637154 () Bool)

(assert (=> b!3637154 (= e!2251444 lt!1258578)))

(assert (= (and d!1069618 c!629007) b!3637153))

(assert (= (and d!1069618 (not c!629007)) b!3637154))

(declare-fun m!4139745 () Bool)

(assert (=> d!1069618 m!4139745))

(declare-fun m!4139747 () Bool)

(assert (=> d!1069618 m!4139747))

(assert (=> d!1069618 m!4139319))

(declare-fun m!4139749 () Bool)

(assert (=> b!3637153 m!4139749))

(assert (=> b!3637153 m!4139749))

(declare-fun m!4139751 () Bool)

(assert (=> b!3637153 m!4139751))

(assert (=> b!3636892 d!1069618))

(declare-fun d!1069620 () Bool)

(assert (=> d!1069620 (= (_2!22230 lt!1258570) lt!1258576)))

(declare-fun lt!1258721 () Unit!55154)

(declare-fun choose!21368 (List!38449 List!38449 List!38449 List!38449 List!38449) Unit!55154)

(assert (=> d!1069620 (= lt!1258721 (choose!21368 lt!1258568 (_2!22230 lt!1258570) lt!1258568 lt!1258576 lt!1258578))))

(assert (=> d!1069620 (isPrefix!3085 lt!1258568 lt!1258578)))

(assert (=> d!1069620 (= (lemmaSamePrefixThenSameSuffix!1412 lt!1258568 (_2!22230 lt!1258570) lt!1258568 lt!1258576 lt!1258578) lt!1258721)))

(declare-fun bs!571839 () Bool)

(assert (= bs!571839 d!1069620))

(declare-fun m!4139753 () Bool)

(assert (=> bs!571839 m!4139753))

(assert (=> bs!571839 m!4139387))

(assert (=> b!3636892 d!1069620))

(declare-fun b!3637173 () Bool)

(declare-fun res!1473703 () Bool)

(declare-fun e!2251456 () Bool)

(assert (=> b!3637173 (=> (not res!1473703) (not e!2251456))))

(declare-fun lt!1258736 () Option!8072)

(assert (=> b!3637173 (= res!1473703 (= (++!9538 (list!14180 (charsOf!3736 (_1!22230 (get!12543 lt!1258736)))) (_2!22230 (get!12543 lt!1258736))) lt!1258578))))

(declare-fun b!3637174 () Bool)

(declare-fun res!1473704 () Bool)

(assert (=> b!3637174 (=> (not res!1473704) (not e!2251456))))

(assert (=> b!3637174 (= res!1473704 (< (size!29248 (_2!22230 (get!12543 lt!1258736))) (size!29248 lt!1258578)))))

(declare-fun b!3637175 () Bool)

(declare-fun e!2251453 () Option!8072)

(declare-datatypes ((tuple2!38196 0))(
  ( (tuple2!38197 (_1!22232 List!38449) (_2!22232 List!38449)) )
))
(declare-fun lt!1258735 () tuple2!38196)

(assert (=> b!3637175 (= e!2251453 (Some!8071 (tuple2!38193 (Token!10811 (apply!9224 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))) (seqFromList!4271 (_1!22232 lt!1258735))) (rule!8498 (_1!22230 lt!1258570)) (size!29249 (seqFromList!4271 (_1!22232 lt!1258735))) (_1!22232 lt!1258735)) (_2!22232 lt!1258735))))))

(declare-fun lt!1258734 () Unit!55154)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1003 (Regex!10481 List!38449) Unit!55154)

(assert (=> b!3637175 (= lt!1258734 (longestMatchIsAcceptedByMatchOrIsEmpty!1003 (regex!5722 (rule!8498 (_1!22230 lt!1258570))) lt!1258578))))

(declare-fun res!1473701 () Bool)

(declare-fun findLongestMatchInner!1030 (Regex!10481 List!38449 Int List!38449 List!38449 Int) tuple2!38196)

(assert (=> b!3637175 (= res!1473701 (isEmpty!22684 (_1!22232 (findLongestMatchInner!1030 (regex!5722 (rule!8498 (_1!22230 lt!1258570))) Nil!38325 (size!29248 Nil!38325) lt!1258578 lt!1258578 (size!29248 lt!1258578)))))))

(declare-fun e!2251454 () Bool)

(assert (=> b!3637175 (=> res!1473701 e!2251454)))

(assert (=> b!3637175 e!2251454))

(declare-fun lt!1258733 () Unit!55154)

(assert (=> b!3637175 (= lt!1258733 lt!1258734)))

(declare-fun lt!1258732 () Unit!55154)

(assert (=> b!3637175 (= lt!1258732 (lemmaSemiInverse!1471 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))) (seqFromList!4271 (_1!22232 lt!1258735))))))

(declare-fun b!3637177 () Bool)

(assert (=> b!3637177 (= e!2251453 None!8071)))

(declare-fun b!3637178 () Bool)

(assert (=> b!3637178 (= e!2251454 (matchR!5050 (regex!5722 (rule!8498 (_1!22230 lt!1258570))) (_1!22232 (findLongestMatchInner!1030 (regex!5722 (rule!8498 (_1!22230 lt!1258570))) Nil!38325 (size!29248 Nil!38325) lt!1258578 lt!1258578 (size!29248 lt!1258578)))))))

(declare-fun b!3637179 () Bool)

(declare-fun res!1473700 () Bool)

(assert (=> b!3637179 (=> (not res!1473700) (not e!2251456))))

(assert (=> b!3637179 (= res!1473700 (= (value!183537 (_1!22230 (get!12543 lt!1258736))) (apply!9224 (transformation!5722 (rule!8498 (_1!22230 (get!12543 lt!1258736)))) (seqFromList!4271 (originalCharacters!6436 (_1!22230 (get!12543 lt!1258736)))))))))

(declare-fun d!1069622 () Bool)

(declare-fun e!2251455 () Bool)

(assert (=> d!1069622 e!2251455))

(declare-fun res!1473705 () Bool)

(assert (=> d!1069622 (=> res!1473705 e!2251455)))

(assert (=> d!1069622 (= res!1473705 (isEmpty!22688 lt!1258736))))

(assert (=> d!1069622 (= lt!1258736 e!2251453)))

(declare-fun c!629010 () Bool)

(assert (=> d!1069622 (= c!629010 (isEmpty!22684 (_1!22232 lt!1258735)))))

(declare-fun findLongestMatch!945 (Regex!10481 List!38449) tuple2!38196)

(assert (=> d!1069622 (= lt!1258735 (findLongestMatch!945 (regex!5722 (rule!8498 (_1!22230 lt!1258570))) lt!1258578))))

(assert (=> d!1069622 (ruleValid!1986 thiss!23823 (rule!8498 (_1!22230 lt!1258570)))))

(assert (=> d!1069622 (= (maxPrefixOneRule!1983 thiss!23823 (rule!8498 (_1!22230 lt!1258570)) lt!1258578) lt!1258736)))

(declare-fun b!3637176 () Bool)

(assert (=> b!3637176 (= e!2251455 e!2251456)))

(declare-fun res!1473702 () Bool)

(assert (=> b!3637176 (=> (not res!1473702) (not e!2251456))))

(assert (=> b!3637176 (= res!1473702 (matchR!5050 (regex!5722 (rule!8498 (_1!22230 lt!1258570))) (list!14180 (charsOf!3736 (_1!22230 (get!12543 lt!1258736))))))))

(declare-fun b!3637180 () Bool)

(assert (=> b!3637180 (= e!2251456 (= (size!29247 (_1!22230 (get!12543 lt!1258736))) (size!29248 (originalCharacters!6436 (_1!22230 (get!12543 lt!1258736))))))))

(declare-fun b!3637181 () Bool)

(declare-fun res!1473699 () Bool)

(assert (=> b!3637181 (=> (not res!1473699) (not e!2251456))))

(assert (=> b!3637181 (= res!1473699 (= (rule!8498 (_1!22230 (get!12543 lt!1258736))) (rule!8498 (_1!22230 lt!1258570))))))

(assert (= (and d!1069622 c!629010) b!3637177))

(assert (= (and d!1069622 (not c!629010)) b!3637175))

(assert (= (and b!3637175 (not res!1473701)) b!3637178))

(assert (= (and d!1069622 (not res!1473705)) b!3637176))

(assert (= (and b!3637176 res!1473702) b!3637173))

(assert (= (and b!3637173 res!1473703) b!3637174))

(assert (= (and b!3637174 res!1473704) b!3637181))

(assert (= (and b!3637181 res!1473699) b!3637179))

(assert (= (and b!3637179 res!1473700) b!3637180))

(declare-fun m!4139755 () Bool)

(assert (=> b!3637175 m!4139755))

(declare-fun m!4139757 () Bool)

(assert (=> b!3637175 m!4139757))

(declare-fun m!4139759 () Bool)

(assert (=> b!3637175 m!4139759))

(assert (=> b!3637175 m!4139757))

(declare-fun m!4139761 () Bool)

(assert (=> b!3637175 m!4139761))

(assert (=> b!3637175 m!4139757))

(declare-fun m!4139763 () Bool)

(assert (=> b!3637175 m!4139763))

(declare-fun m!4139765 () Bool)

(assert (=> b!3637175 m!4139765))

(assert (=> b!3637175 m!4139747))

(declare-fun m!4139767 () Bool)

(assert (=> b!3637175 m!4139767))

(assert (=> b!3637175 m!4139747))

(declare-fun m!4139769 () Bool)

(assert (=> b!3637175 m!4139769))

(assert (=> b!3637175 m!4139757))

(assert (=> b!3637175 m!4139765))

(assert (=> b!3637178 m!4139765))

(assert (=> b!3637178 m!4139747))

(assert (=> b!3637178 m!4139765))

(assert (=> b!3637178 m!4139747))

(assert (=> b!3637178 m!4139767))

(declare-fun m!4139771 () Bool)

(assert (=> b!3637178 m!4139771))

(declare-fun m!4139773 () Bool)

(assert (=> b!3637173 m!4139773))

(declare-fun m!4139775 () Bool)

(assert (=> b!3637173 m!4139775))

(assert (=> b!3637173 m!4139775))

(declare-fun m!4139777 () Bool)

(assert (=> b!3637173 m!4139777))

(assert (=> b!3637173 m!4139777))

(declare-fun m!4139779 () Bool)

(assert (=> b!3637173 m!4139779))

(assert (=> b!3637174 m!4139773))

(declare-fun m!4139781 () Bool)

(assert (=> b!3637174 m!4139781))

(assert (=> b!3637174 m!4139747))

(assert (=> b!3637181 m!4139773))

(declare-fun m!4139783 () Bool)

(assert (=> d!1069622 m!4139783))

(declare-fun m!4139785 () Bool)

(assert (=> d!1069622 m!4139785))

(declare-fun m!4139787 () Bool)

(assert (=> d!1069622 m!4139787))

(declare-fun m!4139789 () Bool)

(assert (=> d!1069622 m!4139789))

(assert (=> b!3637180 m!4139773))

(declare-fun m!4139791 () Bool)

(assert (=> b!3637180 m!4139791))

(assert (=> b!3637176 m!4139773))

(assert (=> b!3637176 m!4139775))

(assert (=> b!3637176 m!4139775))

(assert (=> b!3637176 m!4139777))

(assert (=> b!3637176 m!4139777))

(declare-fun m!4139793 () Bool)

(assert (=> b!3637176 m!4139793))

(assert (=> b!3637179 m!4139773))

(declare-fun m!4139795 () Bool)

(assert (=> b!3637179 m!4139795))

(assert (=> b!3637179 m!4139795))

(declare-fun m!4139797 () Bool)

(assert (=> b!3637179 m!4139797))

(assert (=> b!3636892 d!1069622))

(declare-fun d!1069624 () Bool)

(assert (=> d!1069624 (= (maxPrefixOneRule!1983 thiss!23823 (rule!8498 (_1!22230 lt!1258570)) lt!1258578) (Some!8071 (tuple2!38193 (Token!10811 (apply!9224 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))) (seqFromList!4271 lt!1258568)) (rule!8498 (_1!22230 lt!1258570)) (size!29248 lt!1258568) lt!1258568) (_2!22230 lt!1258570))))))

(declare-fun lt!1258739 () Unit!55154)

(declare-fun choose!21369 (LexerInterface!5311 List!38451 List!38449 List!38449 List!38449 Rule!11244) Unit!55154)

(assert (=> d!1069624 (= lt!1258739 (choose!21369 thiss!23823 rules!3307 lt!1258568 lt!1258578 (_2!22230 lt!1258570) (rule!8498 (_1!22230 lt!1258570))))))

(assert (=> d!1069624 (not (isEmpty!22685 rules!3307))))

(assert (=> d!1069624 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1039 thiss!23823 rules!3307 lt!1258568 lt!1258578 (_2!22230 lt!1258570) (rule!8498 (_1!22230 lt!1258570))) lt!1258739)))

(declare-fun bs!571840 () Bool)

(assert (= bs!571840 d!1069624))

(declare-fun m!4139799 () Bool)

(assert (=> bs!571840 m!4139799))

(assert (=> bs!571840 m!4139313))

(assert (=> bs!571840 m!4139319))

(assert (=> bs!571840 m!4139317))

(assert (=> bs!571840 m!4139337))

(assert (=> bs!571840 m!4139317))

(assert (=> bs!571840 m!4139321))

(assert (=> b!3636892 d!1069624))

(declare-fun d!1069626 () Bool)

(assert (=> d!1069626 (= (inv!51752 (tag!6464 anOtherTypeRule!33)) (= (mod (str.len (value!183536 (tag!6464 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3636913 d!1069626))

(declare-fun d!1069628 () Bool)

(declare-fun res!1473708 () Bool)

(declare-fun e!2251459 () Bool)

(assert (=> d!1069628 (=> (not res!1473708) (not e!2251459))))

(declare-fun semiInverseModEq!2435 (Int Int) Bool)

(assert (=> d!1069628 (= res!1473708 (semiInverseModEq!2435 (toChars!7873 (transformation!5722 anOtherTypeRule!33)) (toValue!8014 (transformation!5722 anOtherTypeRule!33))))))

(assert (=> d!1069628 (= (inv!51755 (transformation!5722 anOtherTypeRule!33)) e!2251459)))

(declare-fun b!3637184 () Bool)

(declare-fun equivClasses!2334 (Int Int) Bool)

(assert (=> b!3637184 (= e!2251459 (equivClasses!2334 (toChars!7873 (transformation!5722 anOtherTypeRule!33)) (toValue!8014 (transformation!5722 anOtherTypeRule!33))))))

(assert (= (and d!1069628 res!1473708) b!3637184))

(declare-fun m!4139801 () Bool)

(assert (=> d!1069628 m!4139801))

(declare-fun m!4139803 () Bool)

(assert (=> b!3637184 m!4139803))

(assert (=> b!3636913 d!1069628))

(declare-fun d!1069630 () Bool)

(assert (=> d!1069630 (= (inv!51752 (tag!6464 (rule!8498 token!511))) (= (mod (str.len (value!183536 (tag!6464 (rule!8498 token!511)))) 2) 0))))

(assert (=> b!3636891 d!1069630))

(declare-fun d!1069632 () Bool)

(declare-fun res!1473709 () Bool)

(declare-fun e!2251460 () Bool)

(assert (=> d!1069632 (=> (not res!1473709) (not e!2251460))))

(assert (=> d!1069632 (= res!1473709 (semiInverseModEq!2435 (toChars!7873 (transformation!5722 (rule!8498 token!511))) (toValue!8014 (transformation!5722 (rule!8498 token!511)))))))

(assert (=> d!1069632 (= (inv!51755 (transformation!5722 (rule!8498 token!511))) e!2251460)))

(declare-fun b!3637185 () Bool)

(assert (=> b!3637185 (= e!2251460 (equivClasses!2334 (toChars!7873 (transformation!5722 (rule!8498 token!511))) (toValue!8014 (transformation!5722 (rule!8498 token!511)))))))

(assert (= (and d!1069632 res!1473709) b!3637185))

(declare-fun m!4139805 () Bool)

(assert (=> d!1069632 m!4139805))

(declare-fun m!4139807 () Bool)

(assert (=> b!3637185 m!4139807))

(assert (=> b!3636891 d!1069632))

(declare-fun d!1069634 () Bool)

(declare-fun res!1473714 () Bool)

(declare-fun e!2251465 () Bool)

(assert (=> d!1069634 (=> res!1473714 e!2251465)))

(assert (=> d!1069634 (= res!1473714 (not ((_ is Cons!38327) rules!3307)))))

(assert (=> d!1069634 (= (sepAndNonSepRulesDisjointChars!1890 rules!3307 rules!3307) e!2251465)))

(declare-fun b!3637190 () Bool)

(declare-fun e!2251466 () Bool)

(assert (=> b!3637190 (= e!2251465 e!2251466)))

(declare-fun res!1473715 () Bool)

(assert (=> b!3637190 (=> (not res!1473715) (not e!2251466))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!858 (Rule!11244 List!38451) Bool)

(assert (=> b!3637190 (= res!1473715 (ruleDisjointCharsFromAllFromOtherType!858 (h!43747 rules!3307) rules!3307))))

(declare-fun b!3637191 () Bool)

(assert (=> b!3637191 (= e!2251466 (sepAndNonSepRulesDisjointChars!1890 rules!3307 (t!295994 rules!3307)))))

(assert (= (and d!1069634 (not res!1473714)) b!3637190))

(assert (= (and b!3637190 res!1473715) b!3637191))

(declare-fun m!4139809 () Bool)

(assert (=> b!3637190 m!4139809))

(declare-fun m!4139811 () Bool)

(assert (=> b!3637191 m!4139811))

(assert (=> b!3636910 d!1069634))

(declare-fun d!1069636 () Bool)

(assert (=> d!1069636 (= (inv!51752 (tag!6464 rule!403)) (= (mod (str.len (value!183536 (tag!6464 rule!403))) 2) 0))))

(assert (=> b!3636889 d!1069636))

(declare-fun d!1069638 () Bool)

(declare-fun res!1473716 () Bool)

(declare-fun e!2251467 () Bool)

(assert (=> d!1069638 (=> (not res!1473716) (not e!2251467))))

(assert (=> d!1069638 (= res!1473716 (semiInverseModEq!2435 (toChars!7873 (transformation!5722 rule!403)) (toValue!8014 (transformation!5722 rule!403))))))

(assert (=> d!1069638 (= (inv!51755 (transformation!5722 rule!403)) e!2251467)))

(declare-fun b!3637192 () Bool)

(assert (=> b!3637192 (= e!2251467 (equivClasses!2334 (toChars!7873 (transformation!5722 rule!403)) (toValue!8014 (transformation!5722 rule!403))))))

(assert (= (and d!1069638 res!1473716) b!3637192))

(declare-fun m!4139813 () Bool)

(assert (=> d!1069638 m!4139813))

(declare-fun m!4139815 () Bool)

(assert (=> b!3637192 m!4139815))

(assert (=> b!3636889 d!1069638))

(declare-fun d!1069640 () Bool)

(declare-fun lt!1258742 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5510 (List!38451) (InoxSet Rule!11244))

(assert (=> d!1069640 (= lt!1258742 (select (content!5510 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2251472 () Bool)

(assert (=> d!1069640 (= lt!1258742 e!2251472)))

(declare-fun res!1473721 () Bool)

(assert (=> d!1069640 (=> (not res!1473721) (not e!2251472))))

(assert (=> d!1069640 (= res!1473721 ((_ is Cons!38327) rules!3307))))

(assert (=> d!1069640 (= (contains!7510 rules!3307 anOtherTypeRule!33) lt!1258742)))

(declare-fun b!3637197 () Bool)

(declare-fun e!2251473 () Bool)

(assert (=> b!3637197 (= e!2251472 e!2251473)))

(declare-fun res!1473722 () Bool)

(assert (=> b!3637197 (=> res!1473722 e!2251473)))

(assert (=> b!3637197 (= res!1473722 (= (h!43747 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3637198 () Bool)

(assert (=> b!3637198 (= e!2251473 (contains!7510 (t!295994 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1069640 res!1473721) b!3637197))

(assert (= (and b!3637197 (not res!1473722)) b!3637198))

(declare-fun m!4139817 () Bool)

(assert (=> d!1069640 m!4139817))

(declare-fun m!4139819 () Bool)

(assert (=> d!1069640 m!4139819))

(declare-fun m!4139821 () Bool)

(assert (=> b!3637198 m!4139821))

(assert (=> b!3636888 d!1069640))

(declare-fun d!1069642 () Bool)

(assert (=> d!1069642 (= (get!12543 lt!1258560) (v!37887 lt!1258560))))

(assert (=> b!3636908 d!1069642))

(declare-fun d!1069644 () Bool)

(declare-fun lt!1258745 () Bool)

(declare-fun content!5511 (List!38449) (InoxSet C!21148))

(assert (=> d!1069644 (= lt!1258745 (select (content!5511 (usedCharacters!934 (regex!5722 anOtherTypeRule!33))) lt!1258580))))

(declare-fun e!2251480 () Bool)

(assert (=> d!1069644 (= lt!1258745 e!2251480)))

(declare-fun res!1473729 () Bool)

(assert (=> d!1069644 (=> (not res!1473729) (not e!2251480))))

(assert (=> d!1069644 (= res!1473729 ((_ is Cons!38325) (usedCharacters!934 (regex!5722 anOtherTypeRule!33))))))

(assert (=> d!1069644 (= (contains!7509 (usedCharacters!934 (regex!5722 anOtherTypeRule!33)) lt!1258580) lt!1258745)))

(declare-fun b!3637205 () Bool)

(declare-fun e!2251481 () Bool)

(assert (=> b!3637205 (= e!2251480 e!2251481)))

(declare-fun res!1473730 () Bool)

(assert (=> b!3637205 (=> res!1473730 e!2251481)))

(assert (=> b!3637205 (= res!1473730 (= (h!43745 (usedCharacters!934 (regex!5722 anOtherTypeRule!33))) lt!1258580))))

(declare-fun b!3637206 () Bool)

(assert (=> b!3637206 (= e!2251481 (contains!7509 (t!295992 (usedCharacters!934 (regex!5722 anOtherTypeRule!33))) lt!1258580))))

(assert (= (and d!1069644 res!1473729) b!3637205))

(assert (= (and b!3637205 (not res!1473730)) b!3637206))

(assert (=> d!1069644 m!4139403))

(declare-fun m!4139823 () Bool)

(assert (=> d!1069644 m!4139823))

(declare-fun m!4139825 () Bool)

(assert (=> d!1069644 m!4139825))

(declare-fun m!4139827 () Bool)

(assert (=> b!3637206 m!4139827))

(assert (=> b!3636887 d!1069644))

(declare-fun b!3637228 () Bool)

(declare-fun e!2251496 () List!38449)

(declare-fun e!2251497 () List!38449)

(assert (=> b!3637228 (= e!2251496 e!2251497)))

(declare-fun c!629022 () Bool)

(assert (=> b!3637228 (= c!629022 ((_ is Union!10481) (regex!5722 anOtherTypeRule!33)))))

(declare-fun c!629019 () Bool)

(declare-fun bm!262973 () Bool)

(declare-fun call!262978 () List!38449)

(assert (=> bm!262973 (= call!262978 (usedCharacters!934 (ite c!629019 (reg!10810 (regex!5722 anOtherTypeRule!33)) (ite c!629022 (regOne!21475 (regex!5722 anOtherTypeRule!33)) (regTwo!21474 (regex!5722 anOtherTypeRule!33))))))))

(declare-fun b!3637229 () Bool)

(declare-fun call!262979 () List!38449)

(assert (=> b!3637229 (= e!2251497 call!262979)))

(declare-fun call!262980 () List!38449)

(declare-fun call!262981 () List!38449)

(declare-fun bm!262974 () Bool)

(assert (=> bm!262974 (= call!262979 (++!9538 (ite c!629022 call!262980 call!262981) (ite c!629022 call!262981 call!262980)))))

(declare-fun b!3637230 () Bool)

(assert (=> b!3637230 (= e!2251496 call!262978)))

(declare-fun d!1069646 () Bool)

(declare-fun c!629021 () Bool)

(assert (=> d!1069646 (= c!629021 (or ((_ is EmptyExpr!10481) (regex!5722 anOtherTypeRule!33)) ((_ is EmptyLang!10481) (regex!5722 anOtherTypeRule!33))))))

(declare-fun e!2251494 () List!38449)

(assert (=> d!1069646 (= (usedCharacters!934 (regex!5722 anOtherTypeRule!33)) e!2251494)))

(declare-fun b!3637231 () Bool)

(declare-fun e!2251495 () List!38449)

(assert (=> b!3637231 (= e!2251495 (Cons!38325 (c!628962 (regex!5722 anOtherTypeRule!33)) Nil!38325))))

(declare-fun bm!262975 () Bool)

(assert (=> bm!262975 (= call!262981 (usedCharacters!934 (ite c!629022 (regTwo!21475 (regex!5722 anOtherTypeRule!33)) (regOne!21474 (regex!5722 anOtherTypeRule!33)))))))

(declare-fun b!3637232 () Bool)

(assert (=> b!3637232 (= e!2251494 e!2251495)))

(declare-fun c!629020 () Bool)

(assert (=> b!3637232 (= c!629020 ((_ is ElementMatch!10481) (regex!5722 anOtherTypeRule!33)))))

(declare-fun bm!262976 () Bool)

(assert (=> bm!262976 (= call!262980 call!262978)))

(declare-fun b!3637233 () Bool)

(assert (=> b!3637233 (= e!2251497 call!262979)))

(declare-fun b!3637234 () Bool)

(assert (=> b!3637234 (= e!2251494 Nil!38325)))

(declare-fun b!3637235 () Bool)

(assert (=> b!3637235 (= c!629019 ((_ is Star!10481) (regex!5722 anOtherTypeRule!33)))))

(assert (=> b!3637235 (= e!2251495 e!2251496)))

(assert (= (and d!1069646 c!629021) b!3637234))

(assert (= (and d!1069646 (not c!629021)) b!3637232))

(assert (= (and b!3637232 c!629020) b!3637231))

(assert (= (and b!3637232 (not c!629020)) b!3637235))

(assert (= (and b!3637235 c!629019) b!3637230))

(assert (= (and b!3637235 (not c!629019)) b!3637228))

(assert (= (and b!3637228 c!629022) b!3637229))

(assert (= (and b!3637228 (not c!629022)) b!3637233))

(assert (= (or b!3637229 b!3637233) bm!262976))

(assert (= (or b!3637229 b!3637233) bm!262975))

(assert (= (or b!3637229 b!3637233) bm!262974))

(assert (= (or b!3637230 bm!262976) bm!262973))

(declare-fun m!4139837 () Bool)

(assert (=> bm!262973 m!4139837))

(declare-fun m!4139839 () Bool)

(assert (=> bm!262974 m!4139839))

(declare-fun m!4139841 () Bool)

(assert (=> bm!262975 m!4139841))

(assert (=> b!3636887 d!1069646))

(declare-fun b!3637280 () Bool)

(declare-fun res!1473755 () Bool)

(declare-fun e!2251525 () Bool)

(assert (=> b!3637280 (=> res!1473755 e!2251525)))

(assert (=> b!3637280 (= res!1473755 (not (isEmpty!22684 (tail!5633 lt!1258568))))))

(declare-fun b!3637281 () Bool)

(declare-fun e!2251528 () Bool)

(declare-fun e!2251524 () Bool)

(assert (=> b!3637281 (= e!2251528 e!2251524)))

(declare-fun c!629035 () Bool)

(assert (=> b!3637281 (= c!629035 ((_ is EmptyLang!10481) (regex!5722 (rule!8498 (_1!22230 lt!1258570)))))))

(declare-fun b!3637282 () Bool)

(declare-fun e!2251523 () Bool)

(assert (=> b!3637282 (= e!2251523 (= (head!7714 lt!1258568) (c!628962 (regex!5722 (rule!8498 (_1!22230 lt!1258570))))))))

(declare-fun b!3637283 () Bool)

(declare-fun e!2251522 () Bool)

(declare-fun derivativeStep!3183 (Regex!10481 C!21148) Regex!10481)

(assert (=> b!3637283 (= e!2251522 (matchR!5050 (derivativeStep!3183 (regex!5722 (rule!8498 (_1!22230 lt!1258570))) (head!7714 lt!1258568)) (tail!5633 lt!1258568)))))

(declare-fun d!1069650 () Bool)

(assert (=> d!1069650 e!2251528))

(declare-fun c!629034 () Bool)

(assert (=> d!1069650 (= c!629034 ((_ is EmptyExpr!10481) (regex!5722 (rule!8498 (_1!22230 lt!1258570)))))))

(declare-fun lt!1258756 () Bool)

(assert (=> d!1069650 (= lt!1258756 e!2251522)))

(declare-fun c!629036 () Bool)

(assert (=> d!1069650 (= c!629036 (isEmpty!22684 lt!1258568))))

(assert (=> d!1069650 (validRegex!4797 (regex!5722 (rule!8498 (_1!22230 lt!1258570))))))

(assert (=> d!1069650 (= (matchR!5050 (regex!5722 (rule!8498 (_1!22230 lt!1258570))) lt!1258568) lt!1258756)))

(declare-fun b!3637284 () Bool)

(declare-fun e!2251526 () Bool)

(declare-fun e!2251527 () Bool)

(assert (=> b!3637284 (= e!2251526 e!2251527)))

(declare-fun res!1473753 () Bool)

(assert (=> b!3637284 (=> (not res!1473753) (not e!2251527))))

(assert (=> b!3637284 (= res!1473753 (not lt!1258756))))

(declare-fun b!3637285 () Bool)

(assert (=> b!3637285 (= e!2251524 (not lt!1258756))))

(declare-fun b!3637286 () Bool)

(assert (=> b!3637286 (= e!2251527 e!2251525)))

(declare-fun res!1473756 () Bool)

(assert (=> b!3637286 (=> res!1473756 e!2251525)))

(declare-fun call!262988 () Bool)

(assert (=> b!3637286 (= res!1473756 call!262988)))

(declare-fun b!3637287 () Bool)

(declare-fun res!1473751 () Bool)

(assert (=> b!3637287 (=> (not res!1473751) (not e!2251523))))

(assert (=> b!3637287 (= res!1473751 (not call!262988))))

(declare-fun b!3637288 () Bool)

(declare-fun nullable!3635 (Regex!10481) Bool)

(assert (=> b!3637288 (= e!2251522 (nullable!3635 (regex!5722 (rule!8498 (_1!22230 lt!1258570)))))))

(declare-fun b!3637289 () Bool)

(declare-fun res!1473754 () Bool)

(assert (=> b!3637289 (=> res!1473754 e!2251526)))

(assert (=> b!3637289 (= res!1473754 e!2251523)))

(declare-fun res!1473750 () Bool)

(assert (=> b!3637289 (=> (not res!1473750) (not e!2251523))))

(assert (=> b!3637289 (= res!1473750 lt!1258756)))

(declare-fun b!3637290 () Bool)

(assert (=> b!3637290 (= e!2251528 (= lt!1258756 call!262988))))

(declare-fun bm!262983 () Bool)

(assert (=> bm!262983 (= call!262988 (isEmpty!22684 lt!1258568))))

(declare-fun b!3637291 () Bool)

(assert (=> b!3637291 (= e!2251525 (not (= (head!7714 lt!1258568) (c!628962 (regex!5722 (rule!8498 (_1!22230 lt!1258570)))))))))

(declare-fun b!3637292 () Bool)

(declare-fun res!1473749 () Bool)

(assert (=> b!3637292 (=> (not res!1473749) (not e!2251523))))

(assert (=> b!3637292 (= res!1473749 (isEmpty!22684 (tail!5633 lt!1258568)))))

(declare-fun b!3637293 () Bool)

(declare-fun res!1473752 () Bool)

(assert (=> b!3637293 (=> res!1473752 e!2251526)))

(assert (=> b!3637293 (= res!1473752 (not ((_ is ElementMatch!10481) (regex!5722 (rule!8498 (_1!22230 lt!1258570))))))))

(assert (=> b!3637293 (= e!2251524 e!2251526)))

(assert (= (and d!1069650 c!629036) b!3637288))

(assert (= (and d!1069650 (not c!629036)) b!3637283))

(assert (= (and d!1069650 c!629034) b!3637290))

(assert (= (and d!1069650 (not c!629034)) b!3637281))

(assert (= (and b!3637281 c!629035) b!3637285))

(assert (= (and b!3637281 (not c!629035)) b!3637293))

(assert (= (and b!3637293 (not res!1473752)) b!3637289))

(assert (= (and b!3637289 res!1473750) b!3637287))

(assert (= (and b!3637287 res!1473751) b!3637292))

(assert (= (and b!3637292 res!1473749) b!3637282))

(assert (= (and b!3637289 (not res!1473754)) b!3637284))

(assert (= (and b!3637284 res!1473753) b!3637286))

(assert (= (and b!3637286 (not res!1473756)) b!3637280))

(assert (= (and b!3637280 (not res!1473755)) b!3637291))

(assert (= (or b!3637290 b!3637286 b!3637287) bm!262983))

(declare-fun m!4139875 () Bool)

(assert (=> d!1069650 m!4139875))

(declare-fun m!4139877 () Bool)

(assert (=> d!1069650 m!4139877))

(assert (=> bm!262983 m!4139875))

(assert (=> b!3637291 m!4139343))

(assert (=> b!3637282 m!4139343))

(declare-fun m!4139883 () Bool)

(assert (=> b!3637292 m!4139883))

(assert (=> b!3637292 m!4139883))

(declare-fun m!4139885 () Bool)

(assert (=> b!3637292 m!4139885))

(declare-fun m!4139887 () Bool)

(assert (=> b!3637288 m!4139887))

(assert (=> b!3637280 m!4139883))

(assert (=> b!3637280 m!4139883))

(assert (=> b!3637280 m!4139885))

(assert (=> b!3637283 m!4139343))

(assert (=> b!3637283 m!4139343))

(declare-fun m!4139889 () Bool)

(assert (=> b!3637283 m!4139889))

(assert (=> b!3637283 m!4139883))

(assert (=> b!3637283 m!4139889))

(assert (=> b!3637283 m!4139883))

(declare-fun m!4139891 () Bool)

(assert (=> b!3637283 m!4139891))

(assert (=> b!3636886 d!1069650))

(declare-fun d!1069670 () Bool)

(declare-fun res!1473767 () Bool)

(declare-fun e!2251541 () Bool)

(assert (=> d!1069670 (=> (not res!1473767) (not e!2251541))))

(assert (=> d!1069670 (= res!1473767 (not (isEmpty!22684 (originalCharacters!6436 token!511))))))

(assert (=> d!1069670 (= (inv!51756 token!511) e!2251541)))

(declare-fun b!3637312 () Bool)

(declare-fun res!1473768 () Bool)

(assert (=> b!3637312 (=> (not res!1473768) (not e!2251541))))

(assert (=> b!3637312 (= res!1473768 (= (originalCharacters!6436 token!511) (list!14180 (dynLambda!16651 (toChars!7873 (transformation!5722 (rule!8498 token!511))) (value!183537 token!511)))))))

(declare-fun b!3637313 () Bool)

(assert (=> b!3637313 (= e!2251541 (= (size!29247 token!511) (size!29248 (originalCharacters!6436 token!511))))))

(assert (= (and d!1069670 res!1473767) b!3637312))

(assert (= (and b!3637312 res!1473768) b!3637313))

(declare-fun b_lambda!107793 () Bool)

(assert (=> (not b_lambda!107793) (not b!3637312)))

(assert (=> b!3637312 t!296004))

(declare-fun b_and!267763 () Bool)

(assert (= b_and!267699 (and (=> t!296004 result!254952) b_and!267763)))

(assert (=> b!3637312 t!296006))

(declare-fun b_and!267765 () Bool)

(assert (= b_and!267701 (and (=> t!296006 result!254956) b_and!267765)))

(assert (=> b!3637312 t!296008))

(declare-fun b_and!267767 () Bool)

(assert (= b_and!267703 (and (=> t!296008 result!254958) b_and!267767)))

(assert (=> b!3637312 t!296010))

(declare-fun b_and!267769 () Bool)

(assert (= b_and!267705 (and (=> t!296010 result!254960) b_and!267769)))

(declare-fun m!4139897 () Bool)

(assert (=> d!1069670 m!4139897))

(assert (=> b!3637312 m!4139617))

(assert (=> b!3637312 m!4139617))

(declare-fun m!4139899 () Bool)

(assert (=> b!3637312 m!4139899))

(declare-fun m!4139901 () Bool)

(assert (=> b!3637313 m!4139901))

(assert (=> start!339426 d!1069670))

(declare-fun d!1069674 () Bool)

(assert (=> d!1069674 (= (isEmpty!22685 rules!3307) ((_ is Nil!38327) rules!3307))))

(assert (=> b!3636907 d!1069674))

(declare-fun b!3637352 () Bool)

(declare-fun e!2251574 () Bool)

(declare-fun e!2251570 () Bool)

(assert (=> b!3637352 (= e!2251574 e!2251570)))

(declare-fun c!629049 () Bool)

(assert (=> b!3637352 (= c!629049 ((_ is Union!10481) (regex!5722 rule!403)))))

(declare-fun b!3637353 () Bool)

(declare-fun e!2251572 () Bool)

(assert (=> b!3637353 (= e!2251574 e!2251572)))

(declare-fun res!1473793 () Bool)

(assert (=> b!3637353 (= res!1473793 (not (nullable!3635 (reg!10810 (regex!5722 rule!403)))))))

(assert (=> b!3637353 (=> (not res!1473793) (not e!2251572))))

(declare-fun d!1069678 () Bool)

(declare-fun res!1473794 () Bool)

(declare-fun e!2251568 () Bool)

(assert (=> d!1069678 (=> res!1473794 e!2251568)))

(assert (=> d!1069678 (= res!1473794 ((_ is ElementMatch!10481) (regex!5722 rule!403)))))

(assert (=> d!1069678 (= (validRegex!4797 (regex!5722 rule!403)) e!2251568)))

(declare-fun bm!262991 () Bool)

(declare-fun call!262996 () Bool)

(declare-fun call!262998 () Bool)

(assert (=> bm!262991 (= call!262996 call!262998)))

(declare-fun b!3637354 () Bool)

(declare-fun res!1473796 () Bool)

(declare-fun e!2251573 () Bool)

(assert (=> b!3637354 (=> (not res!1473796) (not e!2251573))))

(declare-fun call!262997 () Bool)

(assert (=> b!3637354 (= res!1473796 call!262997)))

(assert (=> b!3637354 (= e!2251570 e!2251573)))

(declare-fun b!3637355 () Bool)

(declare-fun e!2251571 () Bool)

(declare-fun e!2251569 () Bool)

(assert (=> b!3637355 (= e!2251571 e!2251569)))

(declare-fun res!1473795 () Bool)

(assert (=> b!3637355 (=> (not res!1473795) (not e!2251569))))

(assert (=> b!3637355 (= res!1473795 call!262996)))

(declare-fun b!3637356 () Bool)

(assert (=> b!3637356 (= e!2251568 e!2251574)))

(declare-fun c!629048 () Bool)

(assert (=> b!3637356 (= c!629048 ((_ is Star!10481) (regex!5722 rule!403)))))

(declare-fun b!3637357 () Bool)

(declare-fun res!1473797 () Bool)

(assert (=> b!3637357 (=> res!1473797 e!2251571)))

(assert (=> b!3637357 (= res!1473797 (not ((_ is Concat!16434) (regex!5722 rule!403))))))

(assert (=> b!3637357 (= e!2251570 e!2251571)))

(declare-fun bm!262992 () Bool)

(assert (=> bm!262992 (= call!262997 (validRegex!4797 (ite c!629049 (regOne!21475 (regex!5722 rule!403)) (regTwo!21474 (regex!5722 rule!403)))))))

(declare-fun b!3637358 () Bool)

(assert (=> b!3637358 (= e!2251573 call!262996)))

(declare-fun b!3637359 () Bool)

(assert (=> b!3637359 (= e!2251569 call!262997)))

(declare-fun b!3637360 () Bool)

(assert (=> b!3637360 (= e!2251572 call!262998)))

(declare-fun bm!262993 () Bool)

(assert (=> bm!262993 (= call!262998 (validRegex!4797 (ite c!629048 (reg!10810 (regex!5722 rule!403)) (ite c!629049 (regTwo!21475 (regex!5722 rule!403)) (regOne!21474 (regex!5722 rule!403))))))))

(assert (= (and d!1069678 (not res!1473794)) b!3637356))

(assert (= (and b!3637356 c!629048) b!3637353))

(assert (= (and b!3637356 (not c!629048)) b!3637352))

(assert (= (and b!3637353 res!1473793) b!3637360))

(assert (= (and b!3637352 c!629049) b!3637354))

(assert (= (and b!3637352 (not c!629049)) b!3637357))

(assert (= (and b!3637354 res!1473796) b!3637358))

(assert (= (and b!3637357 (not res!1473797)) b!3637355))

(assert (= (and b!3637355 res!1473795) b!3637359))

(assert (= (or b!3637354 b!3637359) bm!262992))

(assert (= (or b!3637358 b!3637355) bm!262991))

(assert (= (or b!3637360 bm!262991) bm!262993))

(declare-fun m!4139935 () Bool)

(assert (=> b!3637353 m!4139935))

(declare-fun m!4139939 () Bool)

(assert (=> bm!262992 m!4139939))

(declare-fun m!4139941 () Bool)

(assert (=> bm!262993 m!4139941))

(assert (=> b!3636906 d!1069678))

(declare-fun d!1069684 () Bool)

(declare-fun lt!1258763 () Bool)

(assert (=> d!1069684 (= lt!1258763 (select (content!5511 lt!1258569) (head!7714 lt!1258568)))))

(declare-fun e!2251575 () Bool)

(assert (=> d!1069684 (= lt!1258763 e!2251575)))

(declare-fun res!1473798 () Bool)

(assert (=> d!1069684 (=> (not res!1473798) (not e!2251575))))

(assert (=> d!1069684 (= res!1473798 ((_ is Cons!38325) lt!1258569))))

(assert (=> d!1069684 (= (contains!7509 lt!1258569 (head!7714 lt!1258568)) lt!1258763)))

(declare-fun b!3637361 () Bool)

(declare-fun e!2251576 () Bool)

(assert (=> b!3637361 (= e!2251575 e!2251576)))

(declare-fun res!1473799 () Bool)

(assert (=> b!3637361 (=> res!1473799 e!2251576)))

(assert (=> b!3637361 (= res!1473799 (= (h!43745 lt!1258569) (head!7714 lt!1258568)))))

(declare-fun b!3637362 () Bool)

(assert (=> b!3637362 (= e!2251576 (contains!7509 (t!295992 lt!1258569) (head!7714 lt!1258568)))))

(assert (= (and d!1069684 res!1473798) b!3637361))

(assert (= (and b!3637361 (not res!1473799)) b!3637362))

(declare-fun m!4139951 () Bool)

(assert (=> d!1069684 m!4139951))

(assert (=> d!1069684 m!4139343))

(declare-fun m!4139953 () Bool)

(assert (=> d!1069684 m!4139953))

(assert (=> b!3637362 m!4139343))

(declare-fun m!4139957 () Bool)

(assert (=> b!3637362 m!4139957))

(assert (=> b!3636885 d!1069684))

(declare-fun d!1069688 () Bool)

(assert (=> d!1069688 (= (head!7714 lt!1258568) (h!43745 lt!1258568))))

(assert (=> b!3636885 d!1069688))

(declare-fun b!3637374 () Bool)

(declare-fun e!2251585 () Bool)

(declare-fun inv!16 (TokenValue!5952) Bool)

(assert (=> b!3637374 (= e!2251585 (inv!16 (value!183537 token!511)))))

(declare-fun b!3637375 () Bool)

(declare-fun e!2251586 () Bool)

(declare-fun inv!17 (TokenValue!5952) Bool)

(assert (=> b!3637375 (= e!2251586 (inv!17 (value!183537 token!511)))))

(declare-fun b!3637376 () Bool)

(assert (=> b!3637376 (= e!2251585 e!2251586)))

(declare-fun c!629055 () Bool)

(assert (=> b!3637376 (= c!629055 ((_ is IntegerValue!17857) (value!183537 token!511)))))

(declare-fun b!3637377 () Bool)

(declare-fun res!1473802 () Bool)

(declare-fun e!2251584 () Bool)

(assert (=> b!3637377 (=> res!1473802 e!2251584)))

(assert (=> b!3637377 (= res!1473802 (not ((_ is IntegerValue!17858) (value!183537 token!511))))))

(assert (=> b!3637377 (= e!2251586 e!2251584)))

(declare-fun b!3637378 () Bool)

(declare-fun inv!15 (TokenValue!5952) Bool)

(assert (=> b!3637378 (= e!2251584 (inv!15 (value!183537 token!511)))))

(declare-fun d!1069692 () Bool)

(declare-fun c!629054 () Bool)

(assert (=> d!1069692 (= c!629054 ((_ is IntegerValue!17856) (value!183537 token!511)))))

(assert (=> d!1069692 (= (inv!21 (value!183537 token!511)) e!2251585)))

(assert (= (and d!1069692 c!629054) b!3637374))

(assert (= (and d!1069692 (not c!629054)) b!3637376))

(assert (= (and b!3637376 c!629055) b!3637375))

(assert (= (and b!3637376 (not c!629055)) b!3637377))

(assert (= (and b!3637377 (not res!1473802)) b!3637378))

(declare-fun m!4139971 () Bool)

(assert (=> b!3637374 m!4139971))

(declare-fun m!4139973 () Bool)

(assert (=> b!3637375 m!4139973))

(declare-fun m!4139975 () Bool)

(assert (=> b!3637378 m!4139975))

(assert (=> b!3636905 d!1069692))

(declare-fun d!1069702 () Bool)

(assert (=> d!1069702 (= (isEmpty!22684 (_2!22230 lt!1258567)) ((_ is Nil!38325) (_2!22230 lt!1258567)))))

(assert (=> b!3636904 d!1069702))

(declare-fun d!1069704 () Bool)

(declare-fun lt!1258768 () Bool)

(assert (=> d!1069704 (= lt!1258768 (select (content!5511 lt!1258569) lt!1258580))))

(declare-fun e!2251587 () Bool)

(assert (=> d!1069704 (= lt!1258768 e!2251587)))

(declare-fun res!1473803 () Bool)

(assert (=> d!1069704 (=> (not res!1473803) (not e!2251587))))

(assert (=> d!1069704 (= res!1473803 ((_ is Cons!38325) lt!1258569))))

(assert (=> d!1069704 (= (contains!7509 lt!1258569 lt!1258580) lt!1258768)))

(declare-fun b!3637379 () Bool)

(declare-fun e!2251588 () Bool)

(assert (=> b!3637379 (= e!2251587 e!2251588)))

(declare-fun res!1473804 () Bool)

(assert (=> b!3637379 (=> res!1473804 e!2251588)))

(assert (=> b!3637379 (= res!1473804 (= (h!43745 lt!1258569) lt!1258580))))

(declare-fun b!3637380 () Bool)

(assert (=> b!3637380 (= e!2251588 (contains!7509 (t!295992 lt!1258569) lt!1258580))))

(assert (= (and d!1069704 res!1473803) b!3637379))

(assert (= (and b!3637379 (not res!1473804)) b!3637380))

(assert (=> d!1069704 m!4139951))

(declare-fun m!4139977 () Bool)

(assert (=> d!1069704 m!4139977))

(declare-fun m!4139979 () Bool)

(assert (=> b!3637380 m!4139979))

(assert (=> b!3636883 d!1069704))

(declare-fun d!1069706 () Bool)

(assert (=> d!1069706 (= (head!7714 suffix!1395) (h!43745 suffix!1395))))

(assert (=> b!3636883 d!1069706))

(declare-fun b!3637381 () Bool)

(declare-fun e!2251591 () List!38449)

(declare-fun e!2251592 () List!38449)

(assert (=> b!3637381 (= e!2251591 e!2251592)))

(declare-fun c!629059 () Bool)

(assert (=> b!3637381 (= c!629059 ((_ is Union!10481) (regex!5722 rule!403)))))

(declare-fun c!629056 () Bool)

(declare-fun bm!262994 () Bool)

(declare-fun call!262999 () List!38449)

(assert (=> bm!262994 (= call!262999 (usedCharacters!934 (ite c!629056 (reg!10810 (regex!5722 rule!403)) (ite c!629059 (regOne!21475 (regex!5722 rule!403)) (regTwo!21474 (regex!5722 rule!403))))))))

(declare-fun b!3637382 () Bool)

(declare-fun call!263000 () List!38449)

(assert (=> b!3637382 (= e!2251592 call!263000)))

(declare-fun call!263001 () List!38449)

(declare-fun bm!262995 () Bool)

(declare-fun call!263002 () List!38449)

(assert (=> bm!262995 (= call!263000 (++!9538 (ite c!629059 call!263001 call!263002) (ite c!629059 call!263002 call!263001)))))

(declare-fun b!3637383 () Bool)

(assert (=> b!3637383 (= e!2251591 call!262999)))

(declare-fun d!1069708 () Bool)

(declare-fun c!629058 () Bool)

(assert (=> d!1069708 (= c!629058 (or ((_ is EmptyExpr!10481) (regex!5722 rule!403)) ((_ is EmptyLang!10481) (regex!5722 rule!403))))))

(declare-fun e!2251589 () List!38449)

(assert (=> d!1069708 (= (usedCharacters!934 (regex!5722 rule!403)) e!2251589)))

(declare-fun b!3637384 () Bool)

(declare-fun e!2251590 () List!38449)

(assert (=> b!3637384 (= e!2251590 (Cons!38325 (c!628962 (regex!5722 rule!403)) Nil!38325))))

(declare-fun bm!262996 () Bool)

(assert (=> bm!262996 (= call!263002 (usedCharacters!934 (ite c!629059 (regTwo!21475 (regex!5722 rule!403)) (regOne!21474 (regex!5722 rule!403)))))))

(declare-fun b!3637385 () Bool)

(assert (=> b!3637385 (= e!2251589 e!2251590)))

(declare-fun c!629057 () Bool)

(assert (=> b!3637385 (= c!629057 ((_ is ElementMatch!10481) (regex!5722 rule!403)))))

(declare-fun bm!262997 () Bool)

(assert (=> bm!262997 (= call!263001 call!262999)))

(declare-fun b!3637386 () Bool)

(assert (=> b!3637386 (= e!2251592 call!263000)))

(declare-fun b!3637387 () Bool)

(assert (=> b!3637387 (= e!2251589 Nil!38325)))

(declare-fun b!3637388 () Bool)

(assert (=> b!3637388 (= c!629056 ((_ is Star!10481) (regex!5722 rule!403)))))

(assert (=> b!3637388 (= e!2251590 e!2251591)))

(assert (= (and d!1069708 c!629058) b!3637387))

(assert (= (and d!1069708 (not c!629058)) b!3637385))

(assert (= (and b!3637385 c!629057) b!3637384))

(assert (= (and b!3637385 (not c!629057)) b!3637388))

(assert (= (and b!3637388 c!629056) b!3637383))

(assert (= (and b!3637388 (not c!629056)) b!3637381))

(assert (= (and b!3637381 c!629059) b!3637382))

(assert (= (and b!3637381 (not c!629059)) b!3637386))

(assert (= (or b!3637382 b!3637386) bm!262997))

(assert (= (or b!3637382 b!3637386) bm!262996))

(assert (= (or b!3637382 b!3637386) bm!262995))

(assert (= (or b!3637383 bm!262997) bm!262994))

(declare-fun m!4139981 () Bool)

(assert (=> bm!262994 m!4139981))

(declare-fun m!4139983 () Bool)

(assert (=> bm!262995 m!4139983))

(declare-fun m!4139985 () Bool)

(assert (=> bm!262996 m!4139985))

(assert (=> b!3636883 d!1069708))

(declare-fun d!1069710 () Bool)

(assert (=> d!1069710 (= (inv!51752 (tag!6464 (h!43747 rules!3307))) (= (mod (str.len (value!183536 (tag!6464 (h!43747 rules!3307)))) 2) 0))))

(assert (=> b!3636903 d!1069710))

(declare-fun d!1069712 () Bool)

(declare-fun res!1473805 () Bool)

(declare-fun e!2251593 () Bool)

(assert (=> d!1069712 (=> (not res!1473805) (not e!2251593))))

(assert (=> d!1069712 (= res!1473805 (semiInverseModEq!2435 (toChars!7873 (transformation!5722 (h!43747 rules!3307))) (toValue!8014 (transformation!5722 (h!43747 rules!3307)))))))

(assert (=> d!1069712 (= (inv!51755 (transformation!5722 (h!43747 rules!3307))) e!2251593)))

(declare-fun b!3637389 () Bool)

(assert (=> b!3637389 (= e!2251593 (equivClasses!2334 (toChars!7873 (transformation!5722 (h!43747 rules!3307))) (toValue!8014 (transformation!5722 (h!43747 rules!3307)))))))

(assert (= (and d!1069712 res!1473805) b!3637389))

(declare-fun m!4139987 () Bool)

(assert (=> d!1069712 m!4139987))

(declare-fun m!4139989 () Bool)

(assert (=> b!3637389 m!4139989))

(assert (=> b!3636903 d!1069712))

(declare-fun b!3637390 () Bool)

(declare-fun res!1473812 () Bool)

(declare-fun e!2251597 () Bool)

(assert (=> b!3637390 (=> res!1473812 e!2251597)))

(assert (=> b!3637390 (= res!1473812 (not (isEmpty!22684 (tail!5633 (list!14180 (charsOf!3736 (_1!22230 lt!1258570)))))))))

(declare-fun b!3637391 () Bool)

(declare-fun e!2251600 () Bool)

(declare-fun e!2251596 () Bool)

(assert (=> b!3637391 (= e!2251600 e!2251596)))

(declare-fun c!629061 () Bool)

(assert (=> b!3637391 (= c!629061 ((_ is EmptyLang!10481) (regex!5722 lt!1258561)))))

(declare-fun b!3637392 () Bool)

(declare-fun e!2251595 () Bool)

(assert (=> b!3637392 (= e!2251595 (= (head!7714 (list!14180 (charsOf!3736 (_1!22230 lt!1258570)))) (c!628962 (regex!5722 lt!1258561))))))

(declare-fun b!3637393 () Bool)

(declare-fun e!2251594 () Bool)

(assert (=> b!3637393 (= e!2251594 (matchR!5050 (derivativeStep!3183 (regex!5722 lt!1258561) (head!7714 (list!14180 (charsOf!3736 (_1!22230 lt!1258570))))) (tail!5633 (list!14180 (charsOf!3736 (_1!22230 lt!1258570))))))))

(declare-fun d!1069714 () Bool)

(assert (=> d!1069714 e!2251600))

(declare-fun c!629060 () Bool)

(assert (=> d!1069714 (= c!629060 ((_ is EmptyExpr!10481) (regex!5722 lt!1258561)))))

(declare-fun lt!1258769 () Bool)

(assert (=> d!1069714 (= lt!1258769 e!2251594)))

(declare-fun c!629062 () Bool)

(assert (=> d!1069714 (= c!629062 (isEmpty!22684 (list!14180 (charsOf!3736 (_1!22230 lt!1258570)))))))

(assert (=> d!1069714 (validRegex!4797 (regex!5722 lt!1258561))))

(assert (=> d!1069714 (= (matchR!5050 (regex!5722 lt!1258561) (list!14180 (charsOf!3736 (_1!22230 lt!1258570)))) lt!1258769)))

(declare-fun b!3637394 () Bool)

(declare-fun e!2251598 () Bool)

(declare-fun e!2251599 () Bool)

(assert (=> b!3637394 (= e!2251598 e!2251599)))

(declare-fun res!1473810 () Bool)

(assert (=> b!3637394 (=> (not res!1473810) (not e!2251599))))

(assert (=> b!3637394 (= res!1473810 (not lt!1258769))))

(declare-fun b!3637395 () Bool)

(assert (=> b!3637395 (= e!2251596 (not lt!1258769))))

(declare-fun b!3637396 () Bool)

(assert (=> b!3637396 (= e!2251599 e!2251597)))

(declare-fun res!1473813 () Bool)

(assert (=> b!3637396 (=> res!1473813 e!2251597)))

(declare-fun call!263003 () Bool)

(assert (=> b!3637396 (= res!1473813 call!263003)))

(declare-fun b!3637397 () Bool)

(declare-fun res!1473808 () Bool)

(assert (=> b!3637397 (=> (not res!1473808) (not e!2251595))))

(assert (=> b!3637397 (= res!1473808 (not call!263003))))

(declare-fun b!3637398 () Bool)

(assert (=> b!3637398 (= e!2251594 (nullable!3635 (regex!5722 lt!1258561)))))

(declare-fun b!3637399 () Bool)

(declare-fun res!1473811 () Bool)

(assert (=> b!3637399 (=> res!1473811 e!2251598)))

(assert (=> b!3637399 (= res!1473811 e!2251595)))

(declare-fun res!1473807 () Bool)

(assert (=> b!3637399 (=> (not res!1473807) (not e!2251595))))

(assert (=> b!3637399 (= res!1473807 lt!1258769)))

(declare-fun b!3637400 () Bool)

(assert (=> b!3637400 (= e!2251600 (= lt!1258769 call!263003))))

(declare-fun bm!262998 () Bool)

(assert (=> bm!262998 (= call!263003 (isEmpty!22684 (list!14180 (charsOf!3736 (_1!22230 lt!1258570)))))))

(declare-fun b!3637401 () Bool)

(assert (=> b!3637401 (= e!2251597 (not (= (head!7714 (list!14180 (charsOf!3736 (_1!22230 lt!1258570)))) (c!628962 (regex!5722 lt!1258561)))))))

(declare-fun b!3637402 () Bool)

(declare-fun res!1473806 () Bool)

(assert (=> b!3637402 (=> (not res!1473806) (not e!2251595))))

(assert (=> b!3637402 (= res!1473806 (isEmpty!22684 (tail!5633 (list!14180 (charsOf!3736 (_1!22230 lt!1258570))))))))

(declare-fun b!3637403 () Bool)

(declare-fun res!1473809 () Bool)

(assert (=> b!3637403 (=> res!1473809 e!2251598)))

(assert (=> b!3637403 (= res!1473809 (not ((_ is ElementMatch!10481) (regex!5722 lt!1258561))))))

(assert (=> b!3637403 (= e!2251596 e!2251598)))

(assert (= (and d!1069714 c!629062) b!3637398))

(assert (= (and d!1069714 (not c!629062)) b!3637393))

(assert (= (and d!1069714 c!629060) b!3637400))

(assert (= (and d!1069714 (not c!629060)) b!3637391))

(assert (= (and b!3637391 c!629061) b!3637395))

(assert (= (and b!3637391 (not c!629061)) b!3637403))

(assert (= (and b!3637403 (not res!1473809)) b!3637399))

(assert (= (and b!3637399 res!1473807) b!3637397))

(assert (= (and b!3637397 res!1473808) b!3637402))

(assert (= (and b!3637402 res!1473806) b!3637392))

(assert (= (and b!3637399 (not res!1473811)) b!3637394))

(assert (= (and b!3637394 res!1473810) b!3637396))

(assert (= (and b!3637396 (not res!1473813)) b!3637390))

(assert (= (and b!3637390 (not res!1473812)) b!3637401))

(assert (= (or b!3637400 b!3637396 b!3637397) bm!262998))

(assert (=> d!1069714 m!4139355))

(declare-fun m!4139991 () Bool)

(assert (=> d!1069714 m!4139991))

(declare-fun m!4139993 () Bool)

(assert (=> d!1069714 m!4139993))

(assert (=> bm!262998 m!4139355))

(assert (=> bm!262998 m!4139991))

(assert (=> b!3637401 m!4139355))

(declare-fun m!4139995 () Bool)

(assert (=> b!3637401 m!4139995))

(assert (=> b!3637392 m!4139355))

(assert (=> b!3637392 m!4139995))

(assert (=> b!3637402 m!4139355))

(declare-fun m!4139997 () Bool)

(assert (=> b!3637402 m!4139997))

(assert (=> b!3637402 m!4139997))

(declare-fun m!4139999 () Bool)

(assert (=> b!3637402 m!4139999))

(declare-fun m!4140001 () Bool)

(assert (=> b!3637398 m!4140001))

(assert (=> b!3637390 m!4139355))

(assert (=> b!3637390 m!4139997))

(assert (=> b!3637390 m!4139997))

(assert (=> b!3637390 m!4139999))

(assert (=> b!3637393 m!4139355))

(assert (=> b!3637393 m!4139995))

(assert (=> b!3637393 m!4139995))

(declare-fun m!4140003 () Bool)

(assert (=> b!3637393 m!4140003))

(assert (=> b!3637393 m!4139355))

(assert (=> b!3637393 m!4139997))

(assert (=> b!3637393 m!4140003))

(assert (=> b!3637393 m!4139997))

(declare-fun m!4140005 () Bool)

(assert (=> b!3637393 m!4140005))

(assert (=> b!3636902 d!1069714))

(declare-fun d!1069716 () Bool)

(assert (=> d!1069716 (= (list!14180 (charsOf!3736 (_1!22230 lt!1258570))) (list!14181 (c!628963 (charsOf!3736 (_1!22230 lt!1258570)))))))

(declare-fun bs!571847 () Bool)

(assert (= bs!571847 d!1069716))

(declare-fun m!4140007 () Bool)

(assert (=> bs!571847 m!4140007))

(assert (=> b!3636902 d!1069716))

(declare-fun d!1069718 () Bool)

(declare-fun lt!1258770 () BalanceConc!23012)

(assert (=> d!1069718 (= (list!14180 lt!1258770) (originalCharacters!6436 (_1!22230 lt!1258570)))))

(assert (=> d!1069718 (= lt!1258770 (dynLambda!16651 (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) (value!183537 (_1!22230 lt!1258570))))))

(assert (=> d!1069718 (= (charsOf!3736 (_1!22230 lt!1258570)) lt!1258770)))

(declare-fun b_lambda!107797 () Bool)

(assert (=> (not b_lambda!107797) (not d!1069718)))

(declare-fun tb!209381 () Bool)

(declare-fun t!296076 () Bool)

(assert (=> (and b!3636911 (= (toChars!7873 (transformation!5722 anOtherTypeRule!33)) (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296076) tb!209381))

(declare-fun b!3637404 () Bool)

(declare-fun e!2251601 () Bool)

(declare-fun tp!1109908 () Bool)

(assert (=> b!3637404 (= e!2251601 (and (inv!51759 (c!628963 (dynLambda!16651 (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) (value!183537 (_1!22230 lt!1258570))))) tp!1109908))))

(declare-fun result!255030 () Bool)

(assert (=> tb!209381 (= result!255030 (and (inv!51760 (dynLambda!16651 (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570)))) (value!183537 (_1!22230 lt!1258570)))) e!2251601))))

(assert (= tb!209381 b!3637404))

(declare-fun m!4140009 () Bool)

(assert (=> b!3637404 m!4140009))

(declare-fun m!4140011 () Bool)

(assert (=> tb!209381 m!4140011))

(assert (=> d!1069718 t!296076))

(declare-fun b_and!267779 () Bool)

(assert (= b_and!267763 (and (=> t!296076 result!255030) b_and!267779)))

(declare-fun tb!209383 () Bool)

(declare-fun t!296078 () Bool)

(assert (=> (and b!3636882 (= (toChars!7873 (transformation!5722 (h!43747 rules!3307))) (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296078) tb!209383))

(declare-fun result!255032 () Bool)

(assert (= result!255032 result!255030))

(assert (=> d!1069718 t!296078))

(declare-fun b_and!267781 () Bool)

(assert (= b_and!267765 (and (=> t!296078 result!255032) b_and!267781)))

(declare-fun t!296080 () Bool)

(declare-fun tb!209385 () Bool)

(assert (=> (and b!3636884 (= (toChars!7873 (transformation!5722 (rule!8498 token!511))) (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296080) tb!209385))

(declare-fun result!255034 () Bool)

(assert (= result!255034 result!255030))

(assert (=> d!1069718 t!296080))

(declare-fun b_and!267783 () Bool)

(assert (= b_and!267767 (and (=> t!296080 result!255034) b_and!267783)))

(declare-fun t!296082 () Bool)

(declare-fun tb!209387 () Bool)

(assert (=> (and b!3636912 (= (toChars!7873 (transformation!5722 rule!403)) (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296082) tb!209387))

(declare-fun result!255036 () Bool)

(assert (= result!255036 result!255030))

(assert (=> d!1069718 t!296082))

(declare-fun b_and!267785 () Bool)

(assert (= b_and!267769 (and (=> t!296082 result!255036) b_and!267785)))

(declare-fun m!4140013 () Bool)

(assert (=> d!1069718 m!4140013))

(declare-fun m!4140015 () Bool)

(assert (=> d!1069718 m!4140015))

(assert (=> b!3636902 d!1069718))

(declare-fun d!1069720 () Bool)

(assert (=> d!1069720 (= (get!12544 lt!1258571) (v!37888 lt!1258571))))

(assert (=> b!3636902 d!1069720))

(declare-fun d!1069722 () Bool)

(declare-fun lt!1258771 () Bool)

(assert (=> d!1069722 (= lt!1258771 (select (content!5510 rules!3307) rule!403))))

(declare-fun e!2251602 () Bool)

(assert (=> d!1069722 (= lt!1258771 e!2251602)))

(declare-fun res!1473814 () Bool)

(assert (=> d!1069722 (=> (not res!1473814) (not e!2251602))))

(assert (=> d!1069722 (= res!1473814 ((_ is Cons!38327) rules!3307))))

(assert (=> d!1069722 (= (contains!7510 rules!3307 rule!403) lt!1258771)))

(declare-fun b!3637405 () Bool)

(declare-fun e!2251603 () Bool)

(assert (=> b!3637405 (= e!2251602 e!2251603)))

(declare-fun res!1473815 () Bool)

(assert (=> b!3637405 (=> res!1473815 e!2251603)))

(assert (=> b!3637405 (= res!1473815 (= (h!43747 rules!3307) rule!403))))

(declare-fun b!3637406 () Bool)

(assert (=> b!3637406 (= e!2251603 (contains!7510 (t!295994 rules!3307) rule!403))))

(assert (= (and d!1069722 res!1473814) b!3637405))

(assert (= (and b!3637405 (not res!1473815)) b!3637406))

(assert (=> d!1069722 m!4139817))

(declare-fun m!4140017 () Bool)

(assert (=> d!1069722 m!4140017))

(declare-fun m!4140019 () Bool)

(assert (=> b!3637406 m!4140019))

(assert (=> b!3636901 d!1069722))

(declare-fun d!1069724 () Bool)

(declare-fun isEmpty!22689 (Option!8073) Bool)

(assert (=> d!1069724 (= (isDefined!6304 lt!1258571) (not (isEmpty!22689 lt!1258571)))))

(declare-fun bs!571848 () Bool)

(assert (= bs!571848 d!1069724))

(declare-fun m!4140021 () Bool)

(assert (=> bs!571848 m!4140021))

(assert (=> b!3636899 d!1069724))

(declare-fun b!3637407 () Bool)

(declare-fun res!1473817 () Bool)

(declare-fun e!2251604 () Bool)

(assert (=> b!3637407 (=> (not res!1473817) (not e!2251604))))

(declare-fun lt!1258774 () Option!8072)

(assert (=> b!3637407 (= res!1473817 (< (size!29248 (_2!22230 (get!12543 lt!1258774))) (size!29248 lt!1258578)))))

(declare-fun d!1069726 () Bool)

(declare-fun e!2251605 () Bool)

(assert (=> d!1069726 e!2251605))

(declare-fun res!1473821 () Bool)

(assert (=> d!1069726 (=> res!1473821 e!2251605)))

(assert (=> d!1069726 (= res!1473821 (isEmpty!22688 lt!1258774))))

(declare-fun e!2251606 () Option!8072)

(assert (=> d!1069726 (= lt!1258774 e!2251606)))

(declare-fun c!629063 () Bool)

(assert (=> d!1069726 (= c!629063 (and ((_ is Cons!38327) rules!3307) ((_ is Nil!38327) (t!295994 rules!3307))))))

(declare-fun lt!1258775 () Unit!55154)

(declare-fun lt!1258772 () Unit!55154)

(assert (=> d!1069726 (= lt!1258775 lt!1258772)))

(assert (=> d!1069726 (isPrefix!3085 lt!1258578 lt!1258578)))

(assert (=> d!1069726 (= lt!1258772 (lemmaIsPrefixRefl!1956 lt!1258578 lt!1258578))))

(assert (=> d!1069726 (rulesValidInductive!2021 thiss!23823 rules!3307)))

(assert (=> d!1069726 (= (maxPrefix!2845 thiss!23823 rules!3307 lt!1258578) lt!1258774)))

(declare-fun b!3637408 () Bool)

(declare-fun call!263004 () Option!8072)

(assert (=> b!3637408 (= e!2251606 call!263004)))

(declare-fun b!3637409 () Bool)

(declare-fun lt!1258773 () Option!8072)

(declare-fun lt!1258776 () Option!8072)

(assert (=> b!3637409 (= e!2251606 (ite (and ((_ is None!8071) lt!1258773) ((_ is None!8071) lt!1258776)) None!8071 (ite ((_ is None!8071) lt!1258776) lt!1258773 (ite ((_ is None!8071) lt!1258773) lt!1258776 (ite (>= (size!29247 (_1!22230 (v!37887 lt!1258773))) (size!29247 (_1!22230 (v!37887 lt!1258776)))) lt!1258773 lt!1258776)))))))

(assert (=> b!3637409 (= lt!1258773 call!263004)))

(assert (=> b!3637409 (= lt!1258776 (maxPrefix!2845 thiss!23823 (t!295994 rules!3307) lt!1258578))))

(declare-fun b!3637410 () Bool)

(declare-fun res!1473819 () Bool)

(assert (=> b!3637410 (=> (not res!1473819) (not e!2251604))))

(assert (=> b!3637410 (= res!1473819 (= (value!183537 (_1!22230 (get!12543 lt!1258774))) (apply!9224 (transformation!5722 (rule!8498 (_1!22230 (get!12543 lt!1258774)))) (seqFromList!4271 (originalCharacters!6436 (_1!22230 (get!12543 lt!1258774)))))))))

(declare-fun bm!262999 () Bool)

(assert (=> bm!262999 (= call!263004 (maxPrefixOneRule!1983 thiss!23823 (h!43747 rules!3307) lt!1258578))))

(declare-fun b!3637411 () Bool)

(declare-fun res!1473816 () Bool)

(assert (=> b!3637411 (=> (not res!1473816) (not e!2251604))))

(assert (=> b!3637411 (= res!1473816 (matchR!5050 (regex!5722 (rule!8498 (_1!22230 (get!12543 lt!1258774)))) (list!14180 (charsOf!3736 (_1!22230 (get!12543 lt!1258774))))))))

(declare-fun b!3637412 () Bool)

(declare-fun res!1473822 () Bool)

(assert (=> b!3637412 (=> (not res!1473822) (not e!2251604))))

(assert (=> b!3637412 (= res!1473822 (= (++!9538 (list!14180 (charsOf!3736 (_1!22230 (get!12543 lt!1258774)))) (_2!22230 (get!12543 lt!1258774))) lt!1258578))))

(declare-fun b!3637413 () Bool)

(assert (=> b!3637413 (= e!2251604 (contains!7510 rules!3307 (rule!8498 (_1!22230 (get!12543 lt!1258774)))))))

(declare-fun b!3637414 () Bool)

(assert (=> b!3637414 (= e!2251605 e!2251604)))

(declare-fun res!1473818 () Bool)

(assert (=> b!3637414 (=> (not res!1473818) (not e!2251604))))

(assert (=> b!3637414 (= res!1473818 (isDefined!6305 lt!1258774))))

(declare-fun b!3637415 () Bool)

(declare-fun res!1473820 () Bool)

(assert (=> b!3637415 (=> (not res!1473820) (not e!2251604))))

(assert (=> b!3637415 (= res!1473820 (= (list!14180 (charsOf!3736 (_1!22230 (get!12543 lt!1258774)))) (originalCharacters!6436 (_1!22230 (get!12543 lt!1258774)))))))

(assert (= (and d!1069726 c!629063) b!3637408))

(assert (= (and d!1069726 (not c!629063)) b!3637409))

(assert (= (or b!3637408 b!3637409) bm!262999))

(assert (= (and d!1069726 (not res!1473821)) b!3637414))

(assert (= (and b!3637414 res!1473818) b!3637415))

(assert (= (and b!3637415 res!1473820) b!3637407))

(assert (= (and b!3637407 res!1473817) b!3637412))

(assert (= (and b!3637412 res!1473822) b!3637410))

(assert (= (and b!3637410 res!1473819) b!3637411))

(assert (= (and b!3637411 res!1473816) b!3637413))

(declare-fun m!4140023 () Bool)

(assert (=> bm!262999 m!4140023))

(declare-fun m!4140025 () Bool)

(assert (=> b!3637410 m!4140025))

(declare-fun m!4140027 () Bool)

(assert (=> b!3637410 m!4140027))

(assert (=> b!3637410 m!4140027))

(declare-fun m!4140029 () Bool)

(assert (=> b!3637410 m!4140029))

(assert (=> b!3637411 m!4140025))

(declare-fun m!4140031 () Bool)

(assert (=> b!3637411 m!4140031))

(assert (=> b!3637411 m!4140031))

(declare-fun m!4140033 () Bool)

(assert (=> b!3637411 m!4140033))

(assert (=> b!3637411 m!4140033))

(declare-fun m!4140035 () Bool)

(assert (=> b!3637411 m!4140035))

(declare-fun m!4140037 () Bool)

(assert (=> d!1069726 m!4140037))

(declare-fun m!4140039 () Bool)

(assert (=> d!1069726 m!4140039))

(declare-fun m!4140041 () Bool)

(assert (=> d!1069726 m!4140041))

(assert (=> d!1069726 m!4139547))

(assert (=> b!3637407 m!4140025))

(declare-fun m!4140043 () Bool)

(assert (=> b!3637407 m!4140043))

(assert (=> b!3637407 m!4139747))

(assert (=> b!3637413 m!4140025))

(declare-fun m!4140045 () Bool)

(assert (=> b!3637413 m!4140045))

(assert (=> b!3637412 m!4140025))

(assert (=> b!3637412 m!4140031))

(assert (=> b!3637412 m!4140031))

(assert (=> b!3637412 m!4140033))

(assert (=> b!3637412 m!4140033))

(declare-fun m!4140047 () Bool)

(assert (=> b!3637412 m!4140047))

(declare-fun m!4140049 () Bool)

(assert (=> b!3637414 m!4140049))

(assert (=> b!3637415 m!4140025))

(assert (=> b!3637415 m!4140031))

(assert (=> b!3637415 m!4140031))

(assert (=> b!3637415 m!4140033))

(declare-fun m!4140051 () Bool)

(assert (=> b!3637409 m!4140051))

(assert (=> b!3636899 d!1069726))

(assert (=> b!3636899 d!1069718))

(declare-fun d!1069728 () Bool)

(assert (=> d!1069728 (= (list!14180 lt!1258563) (list!14181 (c!628963 lt!1258563)))))

(declare-fun bs!571849 () Bool)

(assert (= bs!571849 d!1069728))

(declare-fun m!4140053 () Bool)

(assert (=> bs!571849 m!4140053))

(assert (=> b!3636899 d!1069728))

(declare-fun b!3637434 () Bool)

(declare-fun lt!1258791 () Unit!55154)

(declare-fun lt!1258789 () Unit!55154)

(assert (=> b!3637434 (= lt!1258791 lt!1258789)))

(assert (=> b!3637434 (rulesInvariant!4708 thiss!23823 (t!295994 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!565 (LexerInterface!5311 Rule!11244 List!38451) Unit!55154)

(assert (=> b!3637434 (= lt!1258789 (lemmaInvariantOnRulesThenOnTail!565 thiss!23823 (h!43747 rules!3307) (t!295994 rules!3307)))))

(declare-fun e!2251622 () Option!8073)

(assert (=> b!3637434 (= e!2251622 (getRuleFromTag!1326 thiss!23823 (t!295994 rules!3307) (tag!6464 (rule!8498 (_1!22230 lt!1258570)))))))

(declare-fun d!1069730 () Bool)

(declare-fun e!2251620 () Bool)

(assert (=> d!1069730 e!2251620))

(declare-fun res!1473827 () Bool)

(assert (=> d!1069730 (=> res!1473827 e!2251620)))

(declare-fun lt!1258790 () Option!8073)

(assert (=> d!1069730 (= res!1473827 (isEmpty!22689 lt!1258790))))

(declare-fun e!2251619 () Option!8073)

(assert (=> d!1069730 (= lt!1258790 e!2251619)))

(declare-fun c!629071 () Bool)

(assert (=> d!1069730 (= c!629071 (and ((_ is Cons!38327) rules!3307) (= (tag!6464 (h!43747 rules!3307)) (tag!6464 (rule!8498 (_1!22230 lt!1258570))))))))

(assert (=> d!1069730 (rulesInvariant!4708 thiss!23823 rules!3307)))

(assert (=> d!1069730 (= (getRuleFromTag!1326 thiss!23823 rules!3307 (tag!6464 (rule!8498 (_1!22230 lt!1258570)))) lt!1258790)))

(declare-fun b!3637435 () Bool)

(assert (=> b!3637435 (= e!2251619 e!2251622)))

(declare-fun c!629072 () Bool)

(assert (=> b!3637435 (= c!629072 (and ((_ is Cons!38327) rules!3307) (not (= (tag!6464 (h!43747 rules!3307)) (tag!6464 (rule!8498 (_1!22230 lt!1258570)))))))))

(declare-fun b!3637436 () Bool)

(assert (=> b!3637436 (= e!2251622 None!8072)))

(declare-fun b!3637437 () Bool)

(assert (=> b!3637437 (= e!2251619 (Some!8072 (h!43747 rules!3307)))))

(declare-fun b!3637438 () Bool)

(declare-fun e!2251621 () Bool)

(assert (=> b!3637438 (= e!2251620 e!2251621)))

(declare-fun res!1473828 () Bool)

(assert (=> b!3637438 (=> (not res!1473828) (not e!2251621))))

(assert (=> b!3637438 (= res!1473828 (contains!7510 rules!3307 (get!12544 lt!1258790)))))

(declare-fun b!3637439 () Bool)

(assert (=> b!3637439 (= e!2251621 (= (tag!6464 (get!12544 lt!1258790)) (tag!6464 (rule!8498 (_1!22230 lt!1258570)))))))

(assert (= (and d!1069730 c!629071) b!3637437))

(assert (= (and d!1069730 (not c!629071)) b!3637435))

(assert (= (and b!3637435 c!629072) b!3637434))

(assert (= (and b!3637435 (not c!629072)) b!3637436))

(assert (= (and d!1069730 (not res!1473827)) b!3637438))

(assert (= (and b!3637438 res!1473828) b!3637439))

(declare-fun m!4140063 () Bool)

(assert (=> b!3637434 m!4140063))

(declare-fun m!4140065 () Bool)

(assert (=> b!3637434 m!4140065))

(declare-fun m!4140067 () Bool)

(assert (=> b!3637434 m!4140067))

(declare-fun m!4140069 () Bool)

(assert (=> d!1069730 m!4140069))

(assert (=> d!1069730 m!4139419))

(declare-fun m!4140071 () Bool)

(assert (=> b!3637438 m!4140071))

(assert (=> b!3637438 m!4140071))

(declare-fun m!4140073 () Bool)

(assert (=> b!3637438 m!4140073))

(assert (=> b!3637439 m!4140071))

(assert (=> b!3636899 d!1069730))

(declare-fun d!1069738 () Bool)

(assert (=> d!1069738 (= (get!12543 lt!1258559) (v!37887 lt!1258559))))

(assert (=> b!3636899 d!1069738))

(declare-fun b!3637449 () Bool)

(declare-fun res!1473839 () Bool)

(declare-fun e!2251630 () Bool)

(assert (=> b!3637449 (=> (not res!1473839) (not e!2251630))))

(assert (=> b!3637449 (= res!1473839 (= (head!7714 lt!1258568) (head!7714 lt!1258578)))))

(declare-fun d!1069740 () Bool)

(declare-fun e!2251629 () Bool)

(assert (=> d!1069740 e!2251629))

(declare-fun res!1473837 () Bool)

(assert (=> d!1069740 (=> res!1473837 e!2251629)))

(declare-fun lt!1258794 () Bool)

(assert (=> d!1069740 (= res!1473837 (not lt!1258794))))

(declare-fun e!2251631 () Bool)

(assert (=> d!1069740 (= lt!1258794 e!2251631)))

(declare-fun res!1473840 () Bool)

(assert (=> d!1069740 (=> res!1473840 e!2251631)))

(assert (=> d!1069740 (= res!1473840 ((_ is Nil!38325) lt!1258568))))

(assert (=> d!1069740 (= (isPrefix!3085 lt!1258568 lt!1258578) lt!1258794)))

(declare-fun b!3637451 () Bool)

(assert (=> b!3637451 (= e!2251629 (>= (size!29248 lt!1258578) (size!29248 lt!1258568)))))

(declare-fun b!3637450 () Bool)

(assert (=> b!3637450 (= e!2251630 (isPrefix!3085 (tail!5633 lt!1258568) (tail!5633 lt!1258578)))))

(declare-fun b!3637448 () Bool)

(assert (=> b!3637448 (= e!2251631 e!2251630)))

(declare-fun res!1473838 () Bool)

(assert (=> b!3637448 (=> (not res!1473838) (not e!2251630))))

(assert (=> b!3637448 (= res!1473838 (not ((_ is Nil!38325) lt!1258578)))))

(assert (= (and d!1069740 (not res!1473840)) b!3637448))

(assert (= (and b!3637448 res!1473838) b!3637449))

(assert (= (and b!3637449 res!1473839) b!3637450))

(assert (= (and d!1069740 (not res!1473837)) b!3637451))

(assert (=> b!3637449 m!4139343))

(declare-fun m!4140075 () Bool)

(assert (=> b!3637449 m!4140075))

(assert (=> b!3637451 m!4139747))

(assert (=> b!3637451 m!4139319))

(assert (=> b!3637450 m!4139883))

(assert (=> b!3637450 m!4139749))

(assert (=> b!3637450 m!4139883))

(assert (=> b!3637450 m!4139749))

(declare-fun m!4140077 () Bool)

(assert (=> b!3637450 m!4140077))

(assert (=> b!3636899 d!1069740))

(declare-fun b!3637453 () Bool)

(declare-fun res!1473843 () Bool)

(declare-fun e!2251633 () Bool)

(assert (=> b!3637453 (=> (not res!1473843) (not e!2251633))))

(assert (=> b!3637453 (= res!1473843 (= (head!7714 lt!1258568) (head!7714 (++!9538 lt!1258568 (_2!22230 lt!1258570)))))))

(declare-fun d!1069742 () Bool)

(declare-fun e!2251632 () Bool)

(assert (=> d!1069742 e!2251632))

(declare-fun res!1473841 () Bool)

(assert (=> d!1069742 (=> res!1473841 e!2251632)))

(declare-fun lt!1258795 () Bool)

(assert (=> d!1069742 (= res!1473841 (not lt!1258795))))

(declare-fun e!2251634 () Bool)

(assert (=> d!1069742 (= lt!1258795 e!2251634)))

(declare-fun res!1473844 () Bool)

(assert (=> d!1069742 (=> res!1473844 e!2251634)))

(assert (=> d!1069742 (= res!1473844 ((_ is Nil!38325) lt!1258568))))

(assert (=> d!1069742 (= (isPrefix!3085 lt!1258568 (++!9538 lt!1258568 (_2!22230 lt!1258570))) lt!1258795)))

(declare-fun b!3637455 () Bool)

(assert (=> b!3637455 (= e!2251632 (>= (size!29248 (++!9538 lt!1258568 (_2!22230 lt!1258570))) (size!29248 lt!1258568)))))

(declare-fun b!3637454 () Bool)

(assert (=> b!3637454 (= e!2251633 (isPrefix!3085 (tail!5633 lt!1258568) (tail!5633 (++!9538 lt!1258568 (_2!22230 lt!1258570)))))))

(declare-fun b!3637452 () Bool)

(assert (=> b!3637452 (= e!2251634 e!2251633)))

(declare-fun res!1473842 () Bool)

(assert (=> b!3637452 (=> (not res!1473842) (not e!2251633))))

(assert (=> b!3637452 (= res!1473842 (not ((_ is Nil!38325) (++!9538 lt!1258568 (_2!22230 lt!1258570)))))))

(assert (= (and d!1069742 (not res!1473844)) b!3637452))

(assert (= (and b!3637452 res!1473842) b!3637453))

(assert (= (and b!3637453 res!1473843) b!3637454))

(assert (= (and d!1069742 (not res!1473841)) b!3637455))

(assert (=> b!3637453 m!4139343))

(assert (=> b!3637453 m!4139379))

(declare-fun m!4140079 () Bool)

(assert (=> b!3637453 m!4140079))

(assert (=> b!3637455 m!4139379))

(declare-fun m!4140081 () Bool)

(assert (=> b!3637455 m!4140081))

(assert (=> b!3637455 m!4139319))

(assert (=> b!3637454 m!4139883))

(assert (=> b!3637454 m!4139379))

(declare-fun m!4140083 () Bool)

(assert (=> b!3637454 m!4140083))

(assert (=> b!3637454 m!4139883))

(assert (=> b!3637454 m!4140083))

(declare-fun m!4140085 () Bool)

(assert (=> b!3637454 m!4140085))

(assert (=> b!3636899 d!1069742))

(declare-fun d!1069744 () Bool)

(declare-fun e!2251639 () Bool)

(assert (=> d!1069744 e!2251639))

(declare-fun res!1473850 () Bool)

(assert (=> d!1069744 (=> (not res!1473850) (not e!2251639))))

(declare-fun lt!1258798 () List!38449)

(assert (=> d!1069744 (= res!1473850 (= (content!5511 lt!1258798) ((_ map or) (content!5511 lt!1258577) (content!5511 suffix!1395))))))

(declare-fun e!2251640 () List!38449)

(assert (=> d!1069744 (= lt!1258798 e!2251640)))

(declare-fun c!629075 () Bool)

(assert (=> d!1069744 (= c!629075 ((_ is Nil!38325) lt!1258577))))

(assert (=> d!1069744 (= (++!9538 lt!1258577 suffix!1395) lt!1258798)))

(declare-fun b!3637465 () Bool)

(assert (=> b!3637465 (= e!2251640 (Cons!38325 (h!43745 lt!1258577) (++!9538 (t!295992 lt!1258577) suffix!1395)))))

(declare-fun b!3637467 () Bool)

(assert (=> b!3637467 (= e!2251639 (or (not (= suffix!1395 Nil!38325)) (= lt!1258798 lt!1258577)))))

(declare-fun b!3637466 () Bool)

(declare-fun res!1473849 () Bool)

(assert (=> b!3637466 (=> (not res!1473849) (not e!2251639))))

(assert (=> b!3637466 (= res!1473849 (= (size!29248 lt!1258798) (+ (size!29248 lt!1258577) (size!29248 suffix!1395))))))

(declare-fun b!3637464 () Bool)

(assert (=> b!3637464 (= e!2251640 suffix!1395)))

(assert (= (and d!1069744 c!629075) b!3637464))

(assert (= (and d!1069744 (not c!629075)) b!3637465))

(assert (= (and d!1069744 res!1473850) b!3637466))

(assert (= (and b!3637466 res!1473849) b!3637467))

(declare-fun m!4140087 () Bool)

(assert (=> d!1069744 m!4140087))

(declare-fun m!4140089 () Bool)

(assert (=> d!1069744 m!4140089))

(declare-fun m!4140091 () Bool)

(assert (=> d!1069744 m!4140091))

(declare-fun m!4140093 () Bool)

(assert (=> b!3637465 m!4140093))

(declare-fun m!4140095 () Bool)

(assert (=> b!3637466 m!4140095))

(assert (=> b!3637466 m!4139551))

(declare-fun m!4140097 () Bool)

(assert (=> b!3637466 m!4140097))

(assert (=> b!3636899 d!1069744))

(declare-fun b!3637469 () Bool)

(declare-fun res!1473853 () Bool)

(declare-fun e!2251642 () Bool)

(assert (=> b!3637469 (=> (not res!1473853) (not e!2251642))))

(assert (=> b!3637469 (= res!1473853 (= (head!7714 lt!1258577) (head!7714 lt!1258578)))))

(declare-fun d!1069746 () Bool)

(declare-fun e!2251641 () Bool)

(assert (=> d!1069746 e!2251641))

(declare-fun res!1473851 () Bool)

(assert (=> d!1069746 (=> res!1473851 e!2251641)))

(declare-fun lt!1258799 () Bool)

(assert (=> d!1069746 (= res!1473851 (not lt!1258799))))

(declare-fun e!2251643 () Bool)

(assert (=> d!1069746 (= lt!1258799 e!2251643)))

(declare-fun res!1473854 () Bool)

(assert (=> d!1069746 (=> res!1473854 e!2251643)))

(assert (=> d!1069746 (= res!1473854 ((_ is Nil!38325) lt!1258577))))

(assert (=> d!1069746 (= (isPrefix!3085 lt!1258577 lt!1258578) lt!1258799)))

(declare-fun b!3637471 () Bool)

(assert (=> b!3637471 (= e!2251641 (>= (size!29248 lt!1258578) (size!29248 lt!1258577)))))

(declare-fun b!3637470 () Bool)

(assert (=> b!3637470 (= e!2251642 (isPrefix!3085 (tail!5633 lt!1258577) (tail!5633 lt!1258578)))))

(declare-fun b!3637468 () Bool)

(assert (=> b!3637468 (= e!2251643 e!2251642)))

(declare-fun res!1473852 () Bool)

(assert (=> b!3637468 (=> (not res!1473852) (not e!2251642))))

(assert (=> b!3637468 (= res!1473852 (not ((_ is Nil!38325) lt!1258578)))))

(assert (= (and d!1069746 (not res!1473854)) b!3637468))

(assert (= (and b!3637468 res!1473852) b!3637469))

(assert (= (and b!3637469 res!1473853) b!3637470))

(assert (= (and d!1069746 (not res!1473851)) b!3637471))

(declare-fun m!4140099 () Bool)

(assert (=> b!3637469 m!4140099))

(assert (=> b!3637469 m!4140075))

(assert (=> b!3637471 m!4139747))

(assert (=> b!3637471 m!4139551))

(declare-fun m!4140101 () Bool)

(assert (=> b!3637470 m!4140101))

(assert (=> b!3637470 m!4139749))

(assert (=> b!3637470 m!4140101))

(assert (=> b!3637470 m!4139749))

(declare-fun m!4140103 () Bool)

(assert (=> b!3637470 m!4140103))

(assert (=> b!3636899 d!1069746))

(declare-fun d!1069748 () Bool)

(assert (=> d!1069748 (isPrefix!3085 lt!1258577 (++!9538 lt!1258577 suffix!1395))))

(declare-fun lt!1258802 () Unit!55154)

(declare-fun choose!21371 (List!38449 List!38449) Unit!55154)

(assert (=> d!1069748 (= lt!1258802 (choose!21371 lt!1258577 suffix!1395))))

(assert (=> d!1069748 (= (lemmaConcatTwoListThenFirstIsPrefix!2004 lt!1258577 suffix!1395) lt!1258802)))

(declare-fun bs!571851 () Bool)

(assert (= bs!571851 d!1069748))

(assert (=> bs!571851 m!4139381))

(assert (=> bs!571851 m!4139381))

(declare-fun m!4140105 () Bool)

(assert (=> bs!571851 m!4140105))

(declare-fun m!4140107 () Bool)

(assert (=> bs!571851 m!4140107))

(assert (=> b!3636899 d!1069748))

(declare-fun lt!1258868 () Token!10810)

(declare-fun e!2251726 () Bool)

(declare-fun b!3637639 () Bool)

(assert (=> b!3637639 (= e!2251726 (= (rule!8498 lt!1258868) (get!12544 (getRuleFromTag!1326 thiss!23823 rules!3307 (tag!6464 (rule!8498 lt!1258868))))))))

(declare-fun b!3637638 () Bool)

(declare-fun res!1473932 () Bool)

(assert (=> b!3637638 (=> (not res!1473932) (not e!2251726))))

(assert (=> b!3637638 (= res!1473932 (matchR!5050 (regex!5722 (get!12544 (getRuleFromTag!1326 thiss!23823 rules!3307 (tag!6464 (rule!8498 lt!1258868))))) (list!14180 (charsOf!3736 lt!1258868))))))

(declare-fun b!3637641 () Bool)

(declare-fun e!2251727 () Unit!55154)

(declare-fun Unit!55160 () Unit!55154)

(assert (=> b!3637641 (= e!2251727 Unit!55160)))

(declare-fun b!3637640 () Bool)

(declare-fun Unit!55161 () Unit!55154)

(assert (=> b!3637640 (= e!2251727 Unit!55161)))

(declare-fun lt!1258874 () List!38449)

(assert (=> b!3637640 (= lt!1258874 (++!9538 lt!1258577 suffix!1395))))

(declare-fun lt!1258871 () Unit!55154)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!522 (LexerInterface!5311 Rule!11244 List!38451 List!38449) Unit!55154)

(assert (=> b!3637640 (= lt!1258871 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!522 thiss!23823 (rule!8498 lt!1258868) rules!3307 lt!1258874))))

(assert (=> b!3637640 (isEmpty!22688 (maxPrefixOneRule!1983 thiss!23823 (rule!8498 lt!1258868) lt!1258874))))

(declare-fun lt!1258866 () Unit!55154)

(assert (=> b!3637640 (= lt!1258866 lt!1258871)))

(declare-fun lt!1258863 () List!38449)

(assert (=> b!3637640 (= lt!1258863 (list!14180 (charsOf!3736 lt!1258868)))))

(declare-fun lt!1258870 () Unit!55154)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!510 (LexerInterface!5311 Rule!11244 List!38449 List!38449) Unit!55154)

(assert (=> b!3637640 (= lt!1258870 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!510 thiss!23823 (rule!8498 lt!1258868) lt!1258863 (++!9538 lt!1258577 suffix!1395)))))

(assert (=> b!3637640 (not (matchR!5050 (regex!5722 (rule!8498 lt!1258868)) lt!1258863))))

(declare-fun lt!1258879 () Unit!55154)

(assert (=> b!3637640 (= lt!1258879 lt!1258870)))

(assert (=> b!3637640 false))

(declare-fun d!1069750 () Bool)

(assert (=> d!1069750 (isDefined!6305 (maxPrefix!2845 thiss!23823 rules!3307 (++!9538 lt!1258577 suffix!1395)))))

(declare-fun lt!1258875 () Unit!55154)

(assert (=> d!1069750 (= lt!1258875 e!2251727)))

(declare-fun c!629099 () Bool)

(assert (=> d!1069750 (= c!629099 (isEmpty!22688 (maxPrefix!2845 thiss!23823 rules!3307 (++!9538 lt!1258577 suffix!1395))))))

(declare-fun lt!1258877 () Unit!55154)

(declare-fun lt!1258873 () Unit!55154)

(assert (=> d!1069750 (= lt!1258877 lt!1258873)))

(assert (=> d!1069750 e!2251726))

(declare-fun res!1473933 () Bool)

(assert (=> d!1069750 (=> (not res!1473933) (not e!2251726))))

(assert (=> d!1069750 (= res!1473933 (isDefined!6304 (getRuleFromTag!1326 thiss!23823 rules!3307 (tag!6464 (rule!8498 lt!1258868)))))))

(assert (=> d!1069750 (= lt!1258873 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1326 thiss!23823 rules!3307 lt!1258577 lt!1258868))))

(declare-fun lt!1258867 () Unit!55154)

(declare-fun lt!1258864 () Unit!55154)

(assert (=> d!1069750 (= lt!1258867 lt!1258864)))

(declare-fun lt!1258869 () List!38449)

(assert (=> d!1069750 (isPrefix!3085 lt!1258869 (++!9538 lt!1258577 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!486 (List!38449 List!38449 List!38449) Unit!55154)

(assert (=> d!1069750 (= lt!1258864 (lemmaPrefixStaysPrefixWhenAddingToSuffix!486 lt!1258869 lt!1258577 suffix!1395))))

(assert (=> d!1069750 (= lt!1258869 (list!14180 (charsOf!3736 lt!1258868)))))

(declare-fun lt!1258865 () Unit!55154)

(declare-fun lt!1258876 () Unit!55154)

(assert (=> d!1069750 (= lt!1258865 lt!1258876)))

(declare-fun lt!1258872 () List!38449)

(declare-fun lt!1258878 () List!38449)

(assert (=> d!1069750 (isPrefix!3085 lt!1258872 (++!9538 lt!1258872 lt!1258878))))

(assert (=> d!1069750 (= lt!1258876 (lemmaConcatTwoListThenFirstIsPrefix!2004 lt!1258872 lt!1258878))))

(assert (=> d!1069750 (= lt!1258878 (_2!22230 (get!12543 (maxPrefix!2845 thiss!23823 rules!3307 lt!1258577))))))

(assert (=> d!1069750 (= lt!1258872 (list!14180 (charsOf!3736 lt!1258868)))))

(declare-datatypes ((List!38455 0))(
  ( (Nil!38331) (Cons!38331 (h!43751 Token!10810) (t!296118 List!38455)) )
))
(declare-fun head!7716 (List!38455) Token!10810)

(declare-datatypes ((IArray!23407 0))(
  ( (IArray!23408 (innerList!11761 List!38455)) )
))
(declare-datatypes ((Conc!11701 0))(
  ( (Node!11701 (left!29928 Conc!11701) (right!30258 Conc!11701) (csize!23632 Int) (cheight!11912 Int)) (Leaf!18173 (xs!14903 IArray!23407) (csize!23633 Int)) (Empty!11701) )
))
(declare-datatypes ((BalanceConc!23016 0))(
  ( (BalanceConc!23017 (c!629105 Conc!11701)) )
))
(declare-fun list!14184 (BalanceConc!23016) List!38455)

(declare-datatypes ((tuple2!38198 0))(
  ( (tuple2!38199 (_1!22233 BalanceConc!23016) (_2!22233 BalanceConc!23012)) )
))
(declare-fun lex!2518 (LexerInterface!5311 List!38451 BalanceConc!23012) tuple2!38198)

(assert (=> d!1069750 (= lt!1258868 (head!7716 (list!14184 (_1!22233 (lex!2518 thiss!23823 rules!3307 (seqFromList!4271 lt!1258577))))))))

(assert (=> d!1069750 (not (isEmpty!22685 rules!3307))))

(assert (=> d!1069750 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!989 thiss!23823 rules!3307 lt!1258577 suffix!1395) lt!1258875)))

(assert (= (and d!1069750 res!1473933) b!3637638))

(assert (= (and b!3637638 res!1473932) b!3637639))

(assert (= (and d!1069750 c!629099) b!3637640))

(assert (= (and d!1069750 (not c!629099)) b!3637641))

(declare-fun m!4140209 () Bool)

(assert (=> b!3637639 m!4140209))

(assert (=> b!3637639 m!4140209))

(declare-fun m!4140211 () Bool)

(assert (=> b!3637639 m!4140211))

(declare-fun m!4140213 () Bool)

(assert (=> b!3637638 m!4140213))

(declare-fun m!4140215 () Bool)

(assert (=> b!3637638 m!4140215))

(declare-fun m!4140217 () Bool)

(assert (=> b!3637638 m!4140217))

(assert (=> b!3637638 m!4140213))

(assert (=> b!3637638 m!4140209))

(assert (=> b!3637638 m!4140209))

(assert (=> b!3637638 m!4140211))

(assert (=> b!3637638 m!4140217))

(assert (=> b!3637640 m!4140217))

(assert (=> b!3637640 m!4139381))

(declare-fun m!4140219 () Bool)

(assert (=> b!3637640 m!4140219))

(declare-fun m!4140221 () Bool)

(assert (=> b!3637640 m!4140221))

(declare-fun m!4140223 () Bool)

(assert (=> b!3637640 m!4140223))

(declare-fun m!4140225 () Bool)

(assert (=> b!3637640 m!4140225))

(assert (=> b!3637640 m!4140217))

(assert (=> b!3637640 m!4140213))

(assert (=> b!3637640 m!4139381))

(declare-fun m!4140227 () Bool)

(assert (=> b!3637640 m!4140227))

(assert (=> b!3637640 m!4140219))

(assert (=> d!1069750 m!4139331))

(declare-fun m!4140229 () Bool)

(assert (=> d!1069750 m!4140229))

(assert (=> d!1069750 m!4140217))

(assert (=> d!1069750 m!4139381))

(declare-fun m!4140231 () Bool)

(assert (=> d!1069750 m!4140231))

(declare-fun m!4140233 () Bool)

(assert (=> d!1069750 m!4140233))

(assert (=> d!1069750 m!4139381))

(declare-fun m!4140235 () Bool)

(assert (=> d!1069750 m!4140235))

(declare-fun m!4140237 () Bool)

(assert (=> d!1069750 m!4140237))

(declare-fun m!4140239 () Bool)

(assert (=> d!1069750 m!4140239))

(declare-fun m!4140241 () Bool)

(assert (=> d!1069750 m!4140241))

(declare-fun m!4140243 () Bool)

(assert (=> d!1069750 m!4140243))

(assert (=> d!1069750 m!4139331))

(assert (=> d!1069750 m!4140239))

(declare-fun m!4140245 () Bool)

(assert (=> d!1069750 m!4140245))

(assert (=> d!1069750 m!4139381))

(declare-fun m!4140247 () Bool)

(assert (=> d!1069750 m!4140247))

(declare-fun m!4140249 () Bool)

(assert (=> d!1069750 m!4140249))

(declare-fun m!4140251 () Bool)

(assert (=> d!1069750 m!4140251))

(assert (=> d!1069750 m!4140249))

(assert (=> d!1069750 m!4140241))

(assert (=> d!1069750 m!4140217))

(assert (=> d!1069750 m!4140213))

(assert (=> d!1069750 m!4140247))

(declare-fun m!4140253 () Bool)

(assert (=> d!1069750 m!4140253))

(assert (=> d!1069750 m!4140209))

(declare-fun m!4140255 () Bool)

(assert (=> d!1069750 m!4140255))

(assert (=> d!1069750 m!4140209))

(assert (=> d!1069750 m!4140247))

(declare-fun m!4140257 () Bool)

(assert (=> d!1069750 m!4140257))

(assert (=> d!1069750 m!4139337))

(assert (=> b!3636899 d!1069750))

(declare-fun d!1069770 () Bool)

(declare-fun e!2251730 () Bool)

(assert (=> d!1069770 e!2251730))

(declare-fun res!1473938 () Bool)

(assert (=> d!1069770 (=> (not res!1473938) (not e!2251730))))

(assert (=> d!1069770 (= res!1473938 (isDefined!6304 (getRuleFromTag!1326 thiss!23823 rules!3307 (tag!6464 (rule!8498 (_1!22230 lt!1258570))))))))

(declare-fun lt!1258882 () Unit!55154)

(declare-fun choose!21374 (LexerInterface!5311 List!38451 List!38449 Token!10810) Unit!55154)

(assert (=> d!1069770 (= lt!1258882 (choose!21374 thiss!23823 rules!3307 lt!1258578 (_1!22230 lt!1258570)))))

(assert (=> d!1069770 (rulesInvariant!4708 thiss!23823 rules!3307)))

(assert (=> d!1069770 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1326 thiss!23823 rules!3307 lt!1258578 (_1!22230 lt!1258570)) lt!1258882)))

(declare-fun b!3637646 () Bool)

(declare-fun res!1473939 () Bool)

(assert (=> b!3637646 (=> (not res!1473939) (not e!2251730))))

(assert (=> b!3637646 (= res!1473939 (matchR!5050 (regex!5722 (get!12544 (getRuleFromTag!1326 thiss!23823 rules!3307 (tag!6464 (rule!8498 (_1!22230 lt!1258570)))))) (list!14180 (charsOf!3736 (_1!22230 lt!1258570)))))))

(declare-fun b!3637647 () Bool)

(assert (=> b!3637647 (= e!2251730 (= (rule!8498 (_1!22230 lt!1258570)) (get!12544 (getRuleFromTag!1326 thiss!23823 rules!3307 (tag!6464 (rule!8498 (_1!22230 lt!1258570)))))))))

(assert (= (and d!1069770 res!1473938) b!3637646))

(assert (= (and b!3637646 res!1473939) b!3637647))

(assert (=> d!1069770 m!4139363))

(assert (=> d!1069770 m!4139363))

(declare-fun m!4140259 () Bool)

(assert (=> d!1069770 m!4140259))

(declare-fun m!4140261 () Bool)

(assert (=> d!1069770 m!4140261))

(assert (=> d!1069770 m!4139419))

(assert (=> b!3637646 m!4139353))

(assert (=> b!3637646 m!4139355))

(assert (=> b!3637646 m!4139355))

(declare-fun m!4140263 () Bool)

(assert (=> b!3637646 m!4140263))

(assert (=> b!3637646 m!4139363))

(assert (=> b!3637646 m!4139363))

(declare-fun m!4140265 () Bool)

(assert (=> b!3637646 m!4140265))

(assert (=> b!3637646 m!4139353))

(assert (=> b!3637647 m!4139363))

(assert (=> b!3637647 m!4139363))

(assert (=> b!3637647 m!4140265))

(assert (=> b!3636899 d!1069770))

(declare-fun d!1069772 () Bool)

(declare-fun e!2251731 () Bool)

(assert (=> d!1069772 e!2251731))

(declare-fun res!1473941 () Bool)

(assert (=> d!1069772 (=> (not res!1473941) (not e!2251731))))

(declare-fun lt!1258883 () List!38449)

(assert (=> d!1069772 (= res!1473941 (= (content!5511 lt!1258883) ((_ map or) (content!5511 lt!1258568) (content!5511 (_2!22230 lt!1258570)))))))

(declare-fun e!2251732 () List!38449)

(assert (=> d!1069772 (= lt!1258883 e!2251732)))

(declare-fun c!629100 () Bool)

(assert (=> d!1069772 (= c!629100 ((_ is Nil!38325) lt!1258568))))

(assert (=> d!1069772 (= (++!9538 lt!1258568 (_2!22230 lt!1258570)) lt!1258883)))

(declare-fun b!3637649 () Bool)

(assert (=> b!3637649 (= e!2251732 (Cons!38325 (h!43745 lt!1258568) (++!9538 (t!295992 lt!1258568) (_2!22230 lt!1258570))))))

(declare-fun b!3637651 () Bool)

(assert (=> b!3637651 (= e!2251731 (or (not (= (_2!22230 lt!1258570) Nil!38325)) (= lt!1258883 lt!1258568)))))

(declare-fun b!3637650 () Bool)

(declare-fun res!1473940 () Bool)

(assert (=> b!3637650 (=> (not res!1473940) (not e!2251731))))

(assert (=> b!3637650 (= res!1473940 (= (size!29248 lt!1258883) (+ (size!29248 lt!1258568) (size!29248 (_2!22230 lt!1258570)))))))

(declare-fun b!3637648 () Bool)

(assert (=> b!3637648 (= e!2251732 (_2!22230 lt!1258570))))

(assert (= (and d!1069772 c!629100) b!3637648))

(assert (= (and d!1069772 (not c!629100)) b!3637649))

(assert (= (and d!1069772 res!1473941) b!3637650))

(assert (= (and b!3637650 res!1473940) b!3637651))

(declare-fun m!4140267 () Bool)

(assert (=> d!1069772 m!4140267))

(declare-fun m!4140269 () Bool)

(assert (=> d!1069772 m!4140269))

(declare-fun m!4140271 () Bool)

(assert (=> d!1069772 m!4140271))

(declare-fun m!4140273 () Bool)

(assert (=> b!3637649 m!4140273))

(declare-fun m!4140275 () Bool)

(assert (=> b!3637650 m!4140275))

(assert (=> b!3637650 m!4139319))

(declare-fun m!4140277 () Bool)

(assert (=> b!3637650 m!4140277))

(assert (=> b!3636899 d!1069772))

(declare-fun d!1069774 () Bool)

(assert (=> d!1069774 (isPrefix!3085 lt!1258568 (++!9538 lt!1258568 (_2!22230 lt!1258570)))))

(declare-fun lt!1258884 () Unit!55154)

(assert (=> d!1069774 (= lt!1258884 (choose!21371 lt!1258568 (_2!22230 lt!1258570)))))

(assert (=> d!1069774 (= (lemmaConcatTwoListThenFirstIsPrefix!2004 lt!1258568 (_2!22230 lt!1258570)) lt!1258884)))

(declare-fun bs!571854 () Bool)

(assert (= bs!571854 d!1069774))

(assert (=> bs!571854 m!4139379))

(assert (=> bs!571854 m!4139379))

(assert (=> bs!571854 m!4139383))

(declare-fun m!4140279 () Bool)

(assert (=> bs!571854 m!4140279))

(assert (=> b!3636899 d!1069774))

(declare-fun b!3637652 () Bool)

(declare-fun res!1473948 () Bool)

(declare-fun e!2251736 () Bool)

(assert (=> b!3637652 (=> res!1473948 e!2251736)))

(assert (=> b!3637652 (= res!1473948 (not (isEmpty!22684 (tail!5633 lt!1258577))))))

(declare-fun b!3637653 () Bool)

(declare-fun e!2251739 () Bool)

(declare-fun e!2251735 () Bool)

(assert (=> b!3637653 (= e!2251739 e!2251735)))

(declare-fun c!629102 () Bool)

(assert (=> b!3637653 (= c!629102 ((_ is EmptyLang!10481) (regex!5722 rule!403)))))

(declare-fun b!3637654 () Bool)

(declare-fun e!2251734 () Bool)

(assert (=> b!3637654 (= e!2251734 (= (head!7714 lt!1258577) (c!628962 (regex!5722 rule!403))))))

(declare-fun b!3637655 () Bool)

(declare-fun e!2251733 () Bool)

(assert (=> b!3637655 (= e!2251733 (matchR!5050 (derivativeStep!3183 (regex!5722 rule!403) (head!7714 lt!1258577)) (tail!5633 lt!1258577)))))

(declare-fun d!1069776 () Bool)

(assert (=> d!1069776 e!2251739))

(declare-fun c!629101 () Bool)

(assert (=> d!1069776 (= c!629101 ((_ is EmptyExpr!10481) (regex!5722 rule!403)))))

(declare-fun lt!1258885 () Bool)

(assert (=> d!1069776 (= lt!1258885 e!2251733)))

(declare-fun c!629103 () Bool)

(assert (=> d!1069776 (= c!629103 (isEmpty!22684 lt!1258577))))

(assert (=> d!1069776 (validRegex!4797 (regex!5722 rule!403))))

(assert (=> d!1069776 (= (matchR!5050 (regex!5722 rule!403) lt!1258577) lt!1258885)))

(declare-fun b!3637656 () Bool)

(declare-fun e!2251737 () Bool)

(declare-fun e!2251738 () Bool)

(assert (=> b!3637656 (= e!2251737 e!2251738)))

(declare-fun res!1473946 () Bool)

(assert (=> b!3637656 (=> (not res!1473946) (not e!2251738))))

(assert (=> b!3637656 (= res!1473946 (not lt!1258885))))

(declare-fun b!3637657 () Bool)

(assert (=> b!3637657 (= e!2251735 (not lt!1258885))))

(declare-fun b!3637658 () Bool)

(assert (=> b!3637658 (= e!2251738 e!2251736)))

(declare-fun res!1473949 () Bool)

(assert (=> b!3637658 (=> res!1473949 e!2251736)))

(declare-fun call!263010 () Bool)

(assert (=> b!3637658 (= res!1473949 call!263010)))

(declare-fun b!3637659 () Bool)

(declare-fun res!1473944 () Bool)

(assert (=> b!3637659 (=> (not res!1473944) (not e!2251734))))

(assert (=> b!3637659 (= res!1473944 (not call!263010))))

(declare-fun b!3637660 () Bool)

(assert (=> b!3637660 (= e!2251733 (nullable!3635 (regex!5722 rule!403)))))

(declare-fun b!3637661 () Bool)

(declare-fun res!1473947 () Bool)

(assert (=> b!3637661 (=> res!1473947 e!2251737)))

(assert (=> b!3637661 (= res!1473947 e!2251734)))

(declare-fun res!1473943 () Bool)

(assert (=> b!3637661 (=> (not res!1473943) (not e!2251734))))

(assert (=> b!3637661 (= res!1473943 lt!1258885)))

(declare-fun b!3637662 () Bool)

(assert (=> b!3637662 (= e!2251739 (= lt!1258885 call!263010))))

(declare-fun bm!263005 () Bool)

(assert (=> bm!263005 (= call!263010 (isEmpty!22684 lt!1258577))))

(declare-fun b!3637663 () Bool)

(assert (=> b!3637663 (= e!2251736 (not (= (head!7714 lt!1258577) (c!628962 (regex!5722 rule!403)))))))

(declare-fun b!3637664 () Bool)

(declare-fun res!1473942 () Bool)

(assert (=> b!3637664 (=> (not res!1473942) (not e!2251734))))

(assert (=> b!3637664 (= res!1473942 (isEmpty!22684 (tail!5633 lt!1258577)))))

(declare-fun b!3637665 () Bool)

(declare-fun res!1473945 () Bool)

(assert (=> b!3637665 (=> res!1473945 e!2251737)))

(assert (=> b!3637665 (= res!1473945 (not ((_ is ElementMatch!10481) (regex!5722 rule!403))))))

(assert (=> b!3637665 (= e!2251735 e!2251737)))

(assert (= (and d!1069776 c!629103) b!3637660))

(assert (= (and d!1069776 (not c!629103)) b!3637655))

(assert (= (and d!1069776 c!629101) b!3637662))

(assert (= (and d!1069776 (not c!629101)) b!3637653))

(assert (= (and b!3637653 c!629102) b!3637657))

(assert (= (and b!3637653 (not c!629102)) b!3637665))

(assert (= (and b!3637665 (not res!1473945)) b!3637661))

(assert (= (and b!3637661 res!1473943) b!3637659))

(assert (= (and b!3637659 res!1473944) b!3637664))

(assert (= (and b!3637664 res!1473942) b!3637654))

(assert (= (and b!3637661 (not res!1473947)) b!3637656))

(assert (= (and b!3637656 res!1473946) b!3637658))

(assert (= (and b!3637658 (not res!1473949)) b!3637652))

(assert (= (and b!3637652 (not res!1473948)) b!3637663))

(assert (= (or b!3637662 b!3637658 b!3637659) bm!263005))

(declare-fun m!4140281 () Bool)

(assert (=> d!1069776 m!4140281))

(assert (=> d!1069776 m!4139413))

(assert (=> bm!263005 m!4140281))

(assert (=> b!3637663 m!4140099))

(assert (=> b!3637654 m!4140099))

(assert (=> b!3637664 m!4140101))

(assert (=> b!3637664 m!4140101))

(declare-fun m!4140283 () Bool)

(assert (=> b!3637664 m!4140283))

(declare-fun m!4140285 () Bool)

(assert (=> b!3637660 m!4140285))

(assert (=> b!3637652 m!4140101))

(assert (=> b!3637652 m!4140101))

(assert (=> b!3637652 m!4140283))

(assert (=> b!3637655 m!4140099))

(assert (=> b!3637655 m!4140099))

(declare-fun m!4140287 () Bool)

(assert (=> b!3637655 m!4140287))

(assert (=> b!3637655 m!4140101))

(assert (=> b!3637655 m!4140287))

(assert (=> b!3637655 m!4140101))

(declare-fun m!4140289 () Bool)

(assert (=> b!3637655 m!4140289))

(assert (=> b!3636897 d!1069776))

(declare-fun d!1069778 () Bool)

(declare-fun res!1473954 () Bool)

(declare-fun e!2251742 () Bool)

(assert (=> d!1069778 (=> (not res!1473954) (not e!2251742))))

(assert (=> d!1069778 (= res!1473954 (validRegex!4797 (regex!5722 rule!403)))))

(assert (=> d!1069778 (= (ruleValid!1986 thiss!23823 rule!403) e!2251742)))

(declare-fun b!3637670 () Bool)

(declare-fun res!1473955 () Bool)

(assert (=> b!3637670 (=> (not res!1473955) (not e!2251742))))

(assert (=> b!3637670 (= res!1473955 (not (nullable!3635 (regex!5722 rule!403))))))

(declare-fun b!3637671 () Bool)

(assert (=> b!3637671 (= e!2251742 (not (= (tag!6464 rule!403) (String!43095 ""))))))

(assert (= (and d!1069778 res!1473954) b!3637670))

(assert (= (and b!3637670 res!1473955) b!3637671))

(assert (=> d!1069778 m!4139413))

(assert (=> b!3637670 m!4140285))

(assert (=> b!3636897 d!1069778))

(declare-fun d!1069780 () Bool)

(assert (=> d!1069780 (ruleValid!1986 thiss!23823 rule!403)))

(declare-fun lt!1258888 () Unit!55154)

(declare-fun choose!21375 (LexerInterface!5311 Rule!11244 List!38451) Unit!55154)

(assert (=> d!1069780 (= lt!1258888 (choose!21375 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1069780 (contains!7510 rules!3307 rule!403)))

(assert (=> d!1069780 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1140 thiss!23823 rule!403 rules!3307) lt!1258888)))

(declare-fun bs!571855 () Bool)

(assert (= bs!571855 d!1069780))

(assert (=> bs!571855 m!4139435))

(declare-fun m!4140291 () Bool)

(assert (=> bs!571855 m!4140291))

(assert (=> bs!571855 m!4139415))

(assert (=> b!3636897 d!1069780))

(declare-fun b!3637676 () Bool)

(declare-fun e!2251745 () Bool)

(declare-fun tp!1109957 () Bool)

(assert (=> b!3637676 (= e!2251745 (and tp_is_empty!18045 tp!1109957))))

(assert (=> b!3636905 (= tp!1109893 e!2251745)))

(assert (= (and b!3636905 ((_ is Cons!38325) (originalCharacters!6436 token!511))) b!3637676))

(declare-fun b!3637688 () Bool)

(declare-fun e!2251748 () Bool)

(declare-fun tp!1109970 () Bool)

(declare-fun tp!1109972 () Bool)

(assert (=> b!3637688 (= e!2251748 (and tp!1109970 tp!1109972))))

(declare-fun b!3637690 () Bool)

(declare-fun tp!1109968 () Bool)

(declare-fun tp!1109969 () Bool)

(assert (=> b!3637690 (= e!2251748 (and tp!1109968 tp!1109969))))

(declare-fun b!3637689 () Bool)

(declare-fun tp!1109971 () Bool)

(assert (=> b!3637689 (= e!2251748 tp!1109971)))

(declare-fun b!3637687 () Bool)

(assert (=> b!3637687 (= e!2251748 tp_is_empty!18045)))

(assert (=> b!3636889 (= tp!1109891 e!2251748)))

(assert (= (and b!3636889 ((_ is ElementMatch!10481) (regex!5722 rule!403))) b!3637687))

(assert (= (and b!3636889 ((_ is Concat!16434) (regex!5722 rule!403))) b!3637688))

(assert (= (and b!3636889 ((_ is Star!10481) (regex!5722 rule!403))) b!3637689))

(assert (= (and b!3636889 ((_ is Union!10481) (regex!5722 rule!403))) b!3637690))

(declare-fun b!3637701 () Bool)

(declare-fun b_free!95269 () Bool)

(declare-fun b_next!95973 () Bool)

(assert (=> b!3637701 (= b_free!95269 (not b_next!95973))))

(declare-fun t!296104 () Bool)

(declare-fun tb!209409 () Bool)

(assert (=> (and b!3637701 (= (toValue!8014 (transformation!5722 (h!43747 (t!295994 rules!3307)))) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296104) tb!209409))

(declare-fun result!255070 () Bool)

(assert (= result!255070 result!254972))

(assert (=> d!1069576 t!296104))

(declare-fun tb!209411 () Bool)

(declare-fun t!296106 () Bool)

(assert (=> (and b!3637701 (= (toValue!8014 (transformation!5722 (h!43747 (t!295994 rules!3307)))) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296106) tb!209411))

(declare-fun result!255072 () Bool)

(assert (= result!255072 result!254998))

(assert (=> d!1069612 t!296106))

(assert (=> d!1069606 t!296104))

(assert (=> d!1069608 t!296104))

(declare-fun tb!209413 () Bool)

(declare-fun t!296108 () Bool)

(assert (=> (and b!3637701 (= (toValue!8014 (transformation!5722 (h!43747 (t!295994 rules!3307)))) (toValue!8014 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296108) tb!209413))

(declare-fun result!255074 () Bool)

(assert (= result!255074 result!254982))

(assert (=> d!1069576 t!296108))

(declare-fun b_and!267807 () Bool)

(declare-fun tp!1109981 () Bool)

(assert (=> b!3637701 (= tp!1109981 (and (=> t!296104 result!255070) (=> t!296108 result!255074) (=> t!296106 result!255072) b_and!267807))))

(declare-fun b_free!95271 () Bool)

(declare-fun b_next!95975 () Bool)

(assert (=> b!3637701 (= b_free!95271 (not b_next!95975))))

(declare-fun tb!209415 () Bool)

(declare-fun t!296110 () Bool)

(assert (=> (and b!3637701 (= (toChars!7873 (transformation!5722 (h!43747 (t!295994 rules!3307)))) (toChars!7873 (transformation!5722 (rule!8498 token!511)))) t!296110) tb!209415))

(declare-fun result!255076 () Bool)

(assert (= result!255076 result!254952))

(assert (=> d!1069560 t!296110))

(declare-fun t!296112 () Bool)

(declare-fun tb!209417 () Bool)

(assert (=> (and b!3637701 (= (toChars!7873 (transformation!5722 (h!43747 (t!295994 rules!3307)))) (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296112) tb!209417))

(declare-fun result!255078 () Bool)

(assert (= result!255078 result!254990))

(assert (=> d!1069606 t!296112))

(assert (=> b!3637312 t!296110))

(declare-fun tb!209419 () Bool)

(declare-fun t!296114 () Bool)

(assert (=> (and b!3637701 (= (toChars!7873 (transformation!5722 (h!43747 (t!295994 rules!3307)))) (toChars!7873 (transformation!5722 (rule!8498 (_1!22230 lt!1258570))))) t!296114) tb!209419))

(declare-fun result!255080 () Bool)

(assert (= result!255080 result!255030))

(assert (=> d!1069718 t!296114))

(declare-fun b_and!267809 () Bool)

(declare-fun tp!1109983 () Bool)

(assert (=> b!3637701 (= tp!1109983 (and (=> t!296110 result!255076) (=> t!296112 result!255078) (=> t!296114 result!255080) b_and!267809))))

(declare-fun e!2251758 () Bool)

(assert (=> b!3637701 (= e!2251758 (and tp!1109981 tp!1109983))))

(declare-fun e!2251757 () Bool)

(declare-fun tp!1109982 () Bool)

(declare-fun b!3637700 () Bool)

(assert (=> b!3637700 (= e!2251757 (and tp!1109982 (inv!51752 (tag!6464 (h!43747 (t!295994 rules!3307)))) (inv!51755 (transformation!5722 (h!43747 (t!295994 rules!3307)))) e!2251758))))

(declare-fun b!3637699 () Bool)

(declare-fun e!2251760 () Bool)

(declare-fun tp!1109984 () Bool)

(assert (=> b!3637699 (= e!2251760 (and e!2251757 tp!1109984))))

(assert (=> b!3636909 (= tp!1109890 e!2251760)))

(assert (= b!3637700 b!3637701))

(assert (= b!3637699 b!3637700))

(assert (= (and b!3636909 ((_ is Cons!38327) (t!295994 rules!3307))) b!3637699))

(declare-fun m!4140293 () Bool)

(assert (=> b!3637700 m!4140293))

(declare-fun m!4140295 () Bool)

(assert (=> b!3637700 m!4140295))

(declare-fun b!3637703 () Bool)

(declare-fun e!2251761 () Bool)

(declare-fun tp!1109987 () Bool)

(declare-fun tp!1109989 () Bool)

(assert (=> b!3637703 (= e!2251761 (and tp!1109987 tp!1109989))))

(declare-fun b!3637705 () Bool)

(declare-fun tp!1109985 () Bool)

(declare-fun tp!1109986 () Bool)

(assert (=> b!3637705 (= e!2251761 (and tp!1109985 tp!1109986))))

(declare-fun b!3637704 () Bool)

(declare-fun tp!1109988 () Bool)

(assert (=> b!3637704 (= e!2251761 tp!1109988)))

(declare-fun b!3637702 () Bool)

(assert (=> b!3637702 (= e!2251761 tp_is_empty!18045)))

(assert (=> b!3636903 (= tp!1109894 e!2251761)))

(assert (= (and b!3636903 ((_ is ElementMatch!10481) (regex!5722 (h!43747 rules!3307)))) b!3637702))

(assert (= (and b!3636903 ((_ is Concat!16434) (regex!5722 (h!43747 rules!3307)))) b!3637703))

(assert (= (and b!3636903 ((_ is Star!10481) (regex!5722 (h!43747 rules!3307)))) b!3637704))

(assert (= (and b!3636903 ((_ is Union!10481) (regex!5722 (h!43747 rules!3307)))) b!3637705))

(declare-fun b!3637707 () Bool)

(declare-fun e!2251762 () Bool)

(declare-fun tp!1109992 () Bool)

(declare-fun tp!1109994 () Bool)

(assert (=> b!3637707 (= e!2251762 (and tp!1109992 tp!1109994))))

(declare-fun b!3637709 () Bool)

(declare-fun tp!1109990 () Bool)

(declare-fun tp!1109991 () Bool)

(assert (=> b!3637709 (= e!2251762 (and tp!1109990 tp!1109991))))

(declare-fun b!3637708 () Bool)

(declare-fun tp!1109993 () Bool)

(assert (=> b!3637708 (= e!2251762 tp!1109993)))

(declare-fun b!3637706 () Bool)

(assert (=> b!3637706 (= e!2251762 tp_is_empty!18045)))

(assert (=> b!3636913 (= tp!1109889 e!2251762)))

(assert (= (and b!3636913 ((_ is ElementMatch!10481) (regex!5722 anOtherTypeRule!33))) b!3637706))

(assert (= (and b!3636913 ((_ is Concat!16434) (regex!5722 anOtherTypeRule!33))) b!3637707))

(assert (= (and b!3636913 ((_ is Star!10481) (regex!5722 anOtherTypeRule!33))) b!3637708))

(assert (= (and b!3636913 ((_ is Union!10481) (regex!5722 anOtherTypeRule!33))) b!3637709))

(declare-fun b!3637710 () Bool)

(declare-fun e!2251763 () Bool)

(declare-fun tp!1109995 () Bool)

(assert (=> b!3637710 (= e!2251763 (and tp_is_empty!18045 tp!1109995))))

(assert (=> b!3636896 (= tp!1109885 e!2251763)))

(assert (= (and b!3636896 ((_ is Cons!38325) (t!295992 suffix!1395))) b!3637710))

(declare-fun b!3637712 () Bool)

(declare-fun e!2251764 () Bool)

(declare-fun tp!1109998 () Bool)

(declare-fun tp!1110000 () Bool)

(assert (=> b!3637712 (= e!2251764 (and tp!1109998 tp!1110000))))

(declare-fun b!3637714 () Bool)

(declare-fun tp!1109996 () Bool)

(declare-fun tp!1109997 () Bool)

(assert (=> b!3637714 (= e!2251764 (and tp!1109996 tp!1109997))))

(declare-fun b!3637713 () Bool)

(declare-fun tp!1109999 () Bool)

(assert (=> b!3637713 (= e!2251764 tp!1109999)))

(declare-fun b!3637711 () Bool)

(assert (=> b!3637711 (= e!2251764 tp_is_empty!18045)))

(assert (=> b!3636891 (= tp!1109895 e!2251764)))

(assert (= (and b!3636891 ((_ is ElementMatch!10481) (regex!5722 (rule!8498 token!511)))) b!3637711))

(assert (= (and b!3636891 ((_ is Concat!16434) (regex!5722 (rule!8498 token!511)))) b!3637712))

(assert (= (and b!3636891 ((_ is Star!10481) (regex!5722 (rule!8498 token!511)))) b!3637713))

(assert (= (and b!3636891 ((_ is Union!10481) (regex!5722 (rule!8498 token!511)))) b!3637714))

(declare-fun b_lambda!107807 () Bool)

(assert (= b_lambda!107769 (or (and b!3636912 b_free!95263 (= (toChars!7873 (transformation!5722 rule!403)) (toChars!7873 (transformation!5722 (rule!8498 token!511))))) (and b!3636882 b_free!95255 (= (toChars!7873 (transformation!5722 (h!43747 rules!3307))) (toChars!7873 (transformation!5722 (rule!8498 token!511))))) (and b!3637701 b_free!95271 (= (toChars!7873 (transformation!5722 (h!43747 (t!295994 rules!3307)))) (toChars!7873 (transformation!5722 (rule!8498 token!511))))) (and b!3636911 b_free!95251 (= (toChars!7873 (transformation!5722 anOtherTypeRule!33)) (toChars!7873 (transformation!5722 (rule!8498 token!511))))) (and b!3636884 b_free!95259) b_lambda!107807)))

(declare-fun b_lambda!107809 () Bool)

(assert (= b_lambda!107793 (or (and b!3636912 b_free!95263 (= (toChars!7873 (transformation!5722 rule!403)) (toChars!7873 (transformation!5722 (rule!8498 token!511))))) (and b!3636882 b_free!95255 (= (toChars!7873 (transformation!5722 (h!43747 rules!3307))) (toChars!7873 (transformation!5722 (rule!8498 token!511))))) (and b!3637701 b_free!95271 (= (toChars!7873 (transformation!5722 (h!43747 (t!295994 rules!3307)))) (toChars!7873 (transformation!5722 (rule!8498 token!511))))) (and b!3636911 b_free!95251 (= (toChars!7873 (transformation!5722 anOtherTypeRule!33)) (toChars!7873 (transformation!5722 (rule!8498 token!511))))) (and b!3636884 b_free!95259) b_lambda!107809)))

(check-sat (not b!3637649) (not b!3637438) (not b!3637660) (not tb!209341) (not bm!262983) (not bm!262994) (not b!3637664) (not b!3637655) (not b!3637375) (not d!1069718) (not d!1069528) (not d!1069556) (not b!3637639) (not d!1069730) (not d!1069606) (not b_next!95953) (not d!1069650) (not b!3637040) (not b!3637434) (not b!3637192) (not d!1069628) (not b!3637638) (not d!1069684) (not b!3637708) (not d!1069714) (not b!3637291) (not d!1069748) (not b!3637470) (not b!3637688) (not b!3637650) (not b!3637453) (not b!3637198) (not b!3637046) b_and!267807 (not tb!209325) (not b!3637175) (not b!3637471) (not d!1069614) (not tb!209381) (not b!3637439) (not b_lambda!107773) (not b!3637393) (not b!3637048) (not d!1069744) (not d!1069716) (not b!3637709) (not d!1069618) (not b!3637451) (not b!3637401) (not b_next!95959) (not b!3637280) (not b!3637292) (not b!3637652) (not b!3637712) (not b!3637148) (not d!1069644) (not b!3637206) (not bm!262964) (not b!3637411) (not d!1069622) (not b!3637288) (not b_lambda!107777) (not bm!262973) (not b!3637689) (not b!3637640) (not b_next!95975) (not b!3637703) (not d!1069772) (not b!3637087) (not b!3637699) (not b!3637181) (not b_next!95967) (not tb!209349) (not b!3637185) (not b!3637180) (not b!3637043) (not d!1069570) (not tb!209333) b_and!267783 (not b!3637409) (not b!3637676) (not d!1069776) (not b!3637714) (not b_lambda!107781) (not b_lambda!107783) (not b!3637466) (not d!1069632) (not b!3637389) (not b!3637690) (not bm!262992) (not d!1069704) (not b!3637415) b_and!267781 (not b_next!95955) (not b_next!95957) (not bm!262974) (not b_lambda!107775) (not b_lambda!107797) (not tb!209309) tp_is_empty!18045 (not d!1069728) (not bm!262999) (not b!3637469) (not b_lambda!107809) (not b!3637174) (not d!1069560) (not d!1069724) (not b!3637374) (not b!3637704) (not b!3637454) (not d!1069722) (not b!3637044) (not b_lambda!107807) (not b!3637705) (not d!1069604) (not b_next!95963) (not b!3637398) (not b!3637283) (not d!1069610) (not b!3637663) (not b!3637378) (not b!3637710) (not b!3637410) (not b!3637700) (not b!3637713) (not b!3637047) (not d!1069624) (not bm!262998) (not b!3637142) (not b!3637353) (not bm!262975) (not d!1069750) (not b_next!95973) (not d!1069530) b_and!267723 (not bm!262995) (not bm!262996) (not b!3637654) (not bm!262993) (not b!3637404) (not b!3637312) (not b!3637646) (not b_next!95961) (not b!3637413) (not b!3637406) (not d!1069640) (not b!3637045) (not d!1069726) (not b!3637402) b_and!267809 (not b!3637449) (not b!3637407) (not d!1069522) (not d!1069780) (not b!3637190) (not d!1069620) (not bm!263005) (not b_lambda!107779) (not b!3637191) b_and!267779 b_and!267785 (not b!3637178) (not b!3637042) (not b!3637450) (not b!3637313) (not b!3637412) (not b!3637392) (not b!3637465) (not b_next!95965) b_and!267727 (not b!3637362) b_and!267725 (not d!1069712) (not b!3637176) (not d!1069778) (not d!1069638) (not b!3637179) (not b!3637184) (not b!3637670) (not b!3637282) (not d!1069576) (not b!3637647) (not b!3637380) (not b!3636917) (not b!3637455) (not b!3637173) (not d!1069774) (not b!3637153) (not b!3637414) (not b!3637390) (not d!1069670) (not d!1069770) b_and!267729 (not b!3637707))
(check-sat (not b_next!95953) b_and!267807 (not b_next!95959) b_and!267783 (not b_next!95963) (not b_next!95961) b_and!267809 b_and!267725 b_and!267729 (not b_next!95975) (not b_next!95967) b_and!267781 (not b_next!95955) (not b_next!95957) (not b_next!95973) b_and!267723 b_and!267779 b_and!267785 (not b_next!95965) b_and!267727)
