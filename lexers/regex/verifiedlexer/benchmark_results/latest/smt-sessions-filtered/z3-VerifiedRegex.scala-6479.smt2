; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!340274 () Bool)

(assert start!340274)

(declare-fun b!3642635 () Bool)

(declare-fun b_free!95545 () Bool)

(declare-fun b_next!96249 () Bool)

(assert (=> b!3642635 (= b_free!95545 (not b_next!96249))))

(declare-fun tp!1111115 () Bool)

(declare-fun b_and!268659 () Bool)

(assert (=> b!3642635 (= tp!1111115 b_and!268659)))

(declare-fun b_free!95547 () Bool)

(declare-fun b_next!96251 () Bool)

(assert (=> b!3642635 (= b_free!95547 (not b_next!96251))))

(declare-fun tp!1111117 () Bool)

(declare-fun b_and!268661 () Bool)

(assert (=> b!3642635 (= tp!1111117 b_and!268661)))

(declare-fun b!3642618 () Bool)

(declare-fun b_free!95549 () Bool)

(declare-fun b_next!96253 () Bool)

(assert (=> b!3642618 (= b_free!95549 (not b_next!96253))))

(declare-fun tp!1111126 () Bool)

(declare-fun b_and!268663 () Bool)

(assert (=> b!3642618 (= tp!1111126 b_and!268663)))

(declare-fun b_free!95551 () Bool)

(declare-fun b_next!96255 () Bool)

(assert (=> b!3642618 (= b_free!95551 (not b_next!96255))))

(declare-fun tp!1111127 () Bool)

(declare-fun b_and!268665 () Bool)

(assert (=> b!3642618 (= tp!1111127 b_and!268665)))

(declare-fun b!3642608 () Bool)

(declare-fun b_free!95553 () Bool)

(declare-fun b_next!96257 () Bool)

(assert (=> b!3642608 (= b_free!95553 (not b_next!96257))))

(declare-fun tp!1111123 () Bool)

(declare-fun b_and!268667 () Bool)

(assert (=> b!3642608 (= tp!1111123 b_and!268667)))

(declare-fun b_free!95555 () Bool)

(declare-fun b_next!96259 () Bool)

(assert (=> b!3642608 (= b_free!95555 (not b_next!96259))))

(declare-fun tp!1111118 () Bool)

(declare-fun b_and!268669 () Bool)

(assert (=> b!3642608 (= tp!1111118 b_and!268669)))

(declare-fun b!3642634 () Bool)

(declare-fun b_free!95557 () Bool)

(declare-fun b_next!96261 () Bool)

(assert (=> b!3642634 (= b_free!95557 (not b_next!96261))))

(declare-fun tp!1111119 () Bool)

(declare-fun b_and!268671 () Bool)

(assert (=> b!3642634 (= tp!1111119 b_and!268671)))

(declare-fun b_free!95559 () Bool)

(declare-fun b_next!96263 () Bool)

(assert (=> b!3642634 (= b_free!95559 (not b_next!96263))))

(declare-fun tp!1111116 () Bool)

(declare-fun b_and!268673 () Bool)

(assert (=> b!3642634 (= tp!1111116 b_and!268673)))

(declare-fun b!3642606 () Bool)

(declare-fun res!1476713 () Bool)

(declare-fun e!2254957 () Bool)

(assert (=> b!3642606 (=> (not res!1476713) (not e!2254957))))

(declare-datatypes ((LexerInterface!5327 0))(
  ( (LexerInterfaceExt!5324 (__x!24153 Int)) (Lexer!5325) )
))
(declare-fun thiss!23823 () LexerInterface!5327)

(declare-datatypes ((List!38517 0))(
  ( (Nil!38393) (Cons!38393 (h!43813 (_ BitVec 16)) (t!296660 List!38517)) )
))
(declare-datatypes ((TokenValue!5968 0))(
  ( (FloatLiteralValue!11936 (text!42221 List!38517)) (TokenValueExt!5967 (__x!24154 Int)) (Broken!29840 (value!183967 List!38517)) (Object!6091) (End!5968) (Def!5968) (Underscore!5968) (Match!5968) (Else!5968) (Error!5968) (Case!5968) (If!5968) (Extends!5968) (Abstract!5968) (Class!5968) (Val!5968) (DelimiterValue!11936 (del!6028 List!38517)) (KeywordValue!5974 (value!183968 List!38517)) (CommentValue!11936 (value!183969 List!38517)) (WhitespaceValue!11936 (value!183970 List!38517)) (IndentationValue!5968 (value!183971 List!38517)) (String!43173) (Int32!5968) (Broken!29841 (value!183972 List!38517)) (Boolean!5969) (Unit!55253) (OperatorValue!5971 (op!6028 List!38517)) (IdentifierValue!11936 (value!183973 List!38517)) (IdentifierValue!11937 (value!183974 List!38517)) (WhitespaceValue!11937 (value!183975 List!38517)) (True!11936) (False!11936) (Broken!29842 (value!183976 List!38517)) (Broken!29843 (value!183977 List!38517)) (True!11937) (RightBrace!5968) (RightBracket!5968) (Colon!5968) (Null!5968) (Comma!5968) (LeftBracket!5968) (False!11937) (LeftBrace!5968) (ImaginaryLiteralValue!5968 (text!42222 List!38517)) (StringLiteralValue!17904 (value!183978 List!38517)) (EOFValue!5968 (value!183979 List!38517)) (IdentValue!5968 (value!183980 List!38517)) (DelimiterValue!11937 (value!183981 List!38517)) (DedentValue!5968 (value!183982 List!38517)) (NewLineValue!5968 (value!183983 List!38517)) (IntegerValue!17904 (value!183984 (_ BitVec 32)) (text!42223 List!38517)) (IntegerValue!17905 (value!183985 Int) (text!42224 List!38517)) (Times!5968) (Or!5968) (Equal!5968) (Minus!5968) (Broken!29844 (value!183986 List!38517)) (And!5968) (Div!5968) (LessEqual!5968) (Mod!5968) (Concat!16465) (Not!5968) (Plus!5968) (SpaceValue!5968 (value!183987 List!38517)) (IntegerValue!17906 (value!183988 Int) (text!42225 List!38517)) (StringLiteralValue!17905 (text!42226 List!38517)) (FloatLiteralValue!11937 (text!42227 List!38517)) (BytesLiteralValue!5968 (value!183989 List!38517)) (CommentValue!11937 (value!183990 List!38517)) (StringLiteralValue!17906 (value!183991 List!38517)) (ErrorTokenValue!5968 (msg!6029 List!38517)) )
))
(declare-datatypes ((C!21180 0))(
  ( (C!21181 (val!12638 Int)) )
))
(declare-datatypes ((Regex!10497 0))(
  ( (ElementMatch!10497 (c!629770 C!21180)) (Concat!16466 (regOne!21506 Regex!10497) (regTwo!21506 Regex!10497)) (EmptyExpr!10497) (Star!10497 (reg!10826 Regex!10497)) (EmptyLang!10497) (Union!10497 (regOne!21507 Regex!10497) (regTwo!21507 Regex!10497)) )
))
(declare-datatypes ((String!43174 0))(
  ( (String!43175 (value!183992 String)) )
))
(declare-datatypes ((List!38518 0))(
  ( (Nil!38394) (Cons!38394 (h!43814 C!21180) (t!296661 List!38518)) )
))
(declare-datatypes ((IArray!23455 0))(
  ( (IArray!23456 (innerList!11785 List!38518)) )
))
(declare-datatypes ((Conc!11725 0))(
  ( (Node!11725 (left!29976 Conc!11725) (right!30306 Conc!11725) (csize!23680 Int) (cheight!11936 Int)) (Leaf!18205 (xs!14927 IArray!23455) (csize!23681 Int)) (Empty!11725) )
))
(declare-datatypes ((BalanceConc!23064 0))(
  ( (BalanceConc!23065 (c!629771 Conc!11725)) )
))
(declare-datatypes ((TokenValueInjection!11364 0))(
  ( (TokenValueInjection!11365 (toValue!8030 Int) (toChars!7889 Int)) )
))
(declare-datatypes ((Rule!11276 0))(
  ( (Rule!11277 (regex!5738 Regex!10497) (tag!6490 String!43174) (isSeparator!5738 Bool) (transformation!5738 TokenValueInjection!11364)) )
))
(declare-datatypes ((List!38519 0))(
  ( (Nil!38395) (Cons!38395 (h!43815 Rule!11276) (t!296662 List!38519)) )
))
(declare-fun rules!3307 () List!38519)

(declare-fun rulesInvariant!4724 (LexerInterface!5327 List!38519) Bool)

(assert (=> b!3642606 (= res!1476713 (rulesInvariant!4724 thiss!23823 rules!3307))))

(declare-fun tp!1111120 () Bool)

(declare-fun b!3642607 () Bool)

(declare-datatypes ((Token!10842 0))(
  ( (Token!10843 (value!183993 TokenValue!5968) (rule!8524 Rule!11276) (size!29305 Int) (originalCharacters!6452 List!38518)) )
))
(declare-fun token!511 () Token!10842)

(declare-fun e!2254978 () Bool)

(declare-fun e!2254961 () Bool)

(declare-fun inv!51828 (String!43174) Bool)

(declare-fun inv!51831 (TokenValueInjection!11364) Bool)

(assert (=> b!3642607 (= e!2254961 (and tp!1111120 (inv!51828 (tag!6490 (rule!8524 token!511))) (inv!51831 (transformation!5738 (rule!8524 token!511))) e!2254978))))

(declare-fun e!2254968 () Bool)

(assert (=> b!3642608 (= e!2254968 (and tp!1111123 tp!1111118))))

(declare-fun b!3642609 () Bool)

(declare-fun res!1476697 () Bool)

(declare-fun e!2254976 () Bool)

(assert (=> b!3642609 (=> res!1476697 e!2254976)))

(declare-fun sepAndNonSepRulesDisjointChars!1906 (List!38519 List!38519) Bool)

(assert (=> b!3642609 (= res!1476697 (not (sepAndNonSepRulesDisjointChars!1906 rules!3307 rules!3307)))))

(declare-fun b!3642610 () Bool)

(declare-fun e!2254965 () Bool)

(assert (=> b!3642610 (= e!2254965 true)))

(declare-fun lt!1261572 () Bool)

(declare-fun lt!1261568 () List!38518)

(declare-fun lt!1261573 () C!21180)

(declare-fun contains!7541 (List!38518 C!21180) Bool)

(assert (=> b!3642610 (= lt!1261572 (contains!7541 lt!1261568 lt!1261573))))

(declare-fun e!2254955 () Bool)

(declare-fun b!3642611 () Bool)

(declare-fun tp!1111125 () Bool)

(declare-fun inv!21 (TokenValue!5968) Bool)

(assert (=> b!3642611 (= e!2254955 (and (inv!21 (value!183993 token!511)) e!2254961 tp!1111125))))

(declare-fun b!3642612 () Bool)

(declare-fun res!1476702 () Bool)

(declare-fun e!2254953 () Bool)

(assert (=> b!3642612 (=> (not res!1476702) (not e!2254953))))

(declare-datatypes ((tuple2!38264 0))(
  ( (tuple2!38265 (_1!22266 Token!10842) (_2!22266 List!38518)) )
))
(declare-fun lt!1261586 () tuple2!38264)

(declare-fun isEmpty!22736 (List!38518) Bool)

(assert (=> b!3642612 (= res!1476702 (isEmpty!22736 (_2!22266 lt!1261586)))))

(declare-fun b!3642613 () Bool)

(declare-fun res!1476709 () Bool)

(assert (=> b!3642613 (=> (not res!1476709) (not e!2254953))))

(declare-fun rule!403 () Rule!11276)

(assert (=> b!3642613 (= res!1476709 (= (rule!8524 token!511) rule!403))))

(declare-fun res!1476693 () Bool)

(assert (=> start!340274 (=> (not res!1476693) (not e!2254957))))

(get-info :version)

(assert (=> start!340274 (= res!1476693 ((_ is Lexer!5325) thiss!23823))))

(assert (=> start!340274 e!2254957))

(declare-fun e!2254963 () Bool)

(assert (=> start!340274 e!2254963))

(declare-fun e!2254974 () Bool)

(assert (=> start!340274 e!2254974))

(assert (=> start!340274 true))

(declare-fun inv!51832 (Token!10842) Bool)

(assert (=> start!340274 (and (inv!51832 token!511) e!2254955)))

(declare-fun e!2254972 () Bool)

(assert (=> start!340274 e!2254972))

(declare-fun e!2254971 () Bool)

(assert (=> start!340274 e!2254971))

(declare-fun b!3642614 () Bool)

(declare-fun res!1476706 () Bool)

(declare-fun e!2254973 () Bool)

(assert (=> b!3642614 (=> res!1476706 e!2254973)))

(declare-fun suffix!1395 () List!38518)

(assert (=> b!3642614 (= res!1476706 (isEmpty!22736 suffix!1395))))

(declare-fun b!3642615 () Bool)

(declare-fun e!2254959 () Bool)

(declare-fun lt!1261578 () tuple2!38264)

(declare-fun lt!1261589 () Rule!11276)

(assert (=> b!3642615 (= e!2254959 (= (rule!8524 (_1!22266 lt!1261578)) lt!1261589))))

(declare-fun b!3642616 () Bool)

(declare-fun res!1476707 () Bool)

(assert (=> b!3642616 (=> (not res!1476707) (not e!2254957))))

(declare-fun contains!7542 (List!38519 Rule!11276) Bool)

(assert (=> b!3642616 (= res!1476707 (contains!7542 rules!3307 rule!403))))

(declare-fun b!3642617 () Bool)

(declare-fun e!2254979 () Bool)

(declare-fun e!2254975 () Bool)

(assert (=> b!3642617 (= e!2254979 e!2254975)))

(declare-fun res!1476710 () Bool)

(assert (=> b!3642617 (=> res!1476710 e!2254975)))

(declare-fun lt!1261570 () List!38518)

(declare-fun lt!1261569 () BalanceConc!23064)

(declare-datatypes ((Option!8104 0))(
  ( (None!8103) (Some!8103 (v!37939 tuple2!38264)) )
))
(declare-fun lt!1261571 () Option!8104)

(declare-fun apply!9240 (TokenValueInjection!11364 BalanceConc!23064) TokenValue!5968)

(declare-fun size!29306 (BalanceConc!23064) Int)

(assert (=> b!3642617 (= res!1476710 (not (= lt!1261571 (Some!8103 (tuple2!38265 (Token!10843 (apply!9240 (transformation!5738 (rule!8524 (_1!22266 lt!1261578))) lt!1261569) (rule!8524 (_1!22266 lt!1261578)) (size!29306 lt!1261569) lt!1261570) (_2!22266 lt!1261578))))))))

(declare-datatypes ((Unit!55254 0))(
  ( (Unit!55255) )
))
(declare-fun lt!1261567 () Unit!55254)

(declare-fun lemmaCharactersSize!783 (Token!10842) Unit!55254)

(assert (=> b!3642617 (= lt!1261567 (lemmaCharactersSize!783 (_1!22266 lt!1261578)))))

(declare-fun lt!1261563 () Unit!55254)

(declare-fun lemmaEqSameImage!921 (TokenValueInjection!11364 BalanceConc!23064 BalanceConc!23064) Unit!55254)

(declare-fun seqFromList!4287 (List!38518) BalanceConc!23064)

(assert (=> b!3642617 (= lt!1261563 (lemmaEqSameImage!921 (transformation!5738 (rule!8524 (_1!22266 lt!1261578))) lt!1261569 (seqFromList!4287 (originalCharacters!6452 (_1!22266 lt!1261578)))))))

(declare-fun lt!1261591 () Unit!55254)

(declare-fun lemmaSemiInverse!1487 (TokenValueInjection!11364 BalanceConc!23064) Unit!55254)

(assert (=> b!3642617 (= lt!1261591 (lemmaSemiInverse!1487 (transformation!5738 (rule!8524 (_1!22266 lt!1261578))) lt!1261569))))

(declare-fun e!2254980 () Bool)

(assert (=> b!3642618 (= e!2254980 (and tp!1111126 tp!1111127))))

(declare-fun b!3642619 () Bool)

(declare-fun res!1476694 () Bool)

(assert (=> b!3642619 (=> (not res!1476694) (not e!2254957))))

(declare-fun isEmpty!22737 (List!38519) Bool)

(assert (=> b!3642619 (= res!1476694 (not (isEmpty!22737 rules!3307)))))

(declare-fun b!3642620 () Bool)

(declare-fun e!2254954 () Unit!55254)

(declare-fun Unit!55256 () Unit!55254)

(assert (=> b!3642620 (= e!2254954 Unit!55256)))

(declare-fun b!3642621 () Bool)

(declare-fun e!2254969 () Bool)

(assert (=> b!3642621 (= e!2254969 e!2254965)))

(declare-fun res!1476696 () Bool)

(assert (=> b!3642621 (=> res!1476696 e!2254965)))

(assert (=> b!3642621 (= res!1476696 (or (isSeparator!5738 rule!403) (not (isSeparator!5738 (rule!8524 (_1!22266 lt!1261578))))))))

(declare-fun lt!1261566 () Unit!55254)

(assert (=> b!3642621 (= lt!1261566 e!2254954)))

(declare-fun c!629769 () Bool)

(declare-fun lt!1261592 () List!38518)

(assert (=> b!3642621 (= c!629769 (not (contains!7541 lt!1261592 lt!1261573)))))

(declare-fun head!7740 (List!38518) C!21180)

(assert (=> b!3642621 (= lt!1261573 (head!7740 lt!1261570))))

(declare-fun b!3642622 () Bool)

(declare-fun e!2254967 () Bool)

(assert (=> b!3642622 (= e!2254967 e!2254953)))

(declare-fun res!1476703 () Bool)

(assert (=> b!3642622 (=> (not res!1476703) (not e!2254953))))

(assert (=> b!3642622 (= res!1476703 (= (_1!22266 lt!1261586) token!511))))

(declare-fun lt!1261582 () Option!8104)

(declare-fun get!12583 (Option!8104) tuple2!38264)

(assert (=> b!3642622 (= lt!1261586 (get!12583 lt!1261582))))

(declare-fun b!3642623 () Bool)

(assert (=> b!3642623 (= e!2254976 e!2254979)))

(declare-fun res!1476700 () Bool)

(assert (=> b!3642623 (=> res!1476700 e!2254979)))

(declare-fun lt!1261565 () List!38518)

(declare-fun isPrefix!3101 (List!38518 List!38518) Bool)

(assert (=> b!3642623 (= res!1476700 (not (isPrefix!3101 lt!1261570 lt!1261565)))))

(declare-fun ++!9554 (List!38518 List!38518) List!38518)

(assert (=> b!3642623 (isPrefix!3101 lt!1261570 (++!9554 lt!1261570 (_2!22266 lt!1261578)))))

(declare-fun lt!1261584 () Unit!55254)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2020 (List!38518 List!38518) Unit!55254)

(assert (=> b!3642623 (= lt!1261584 (lemmaConcatTwoListThenFirstIsPrefix!2020 lt!1261570 (_2!22266 lt!1261578)))))

(declare-fun list!14216 (BalanceConc!23064) List!38518)

(assert (=> b!3642623 (= lt!1261570 (list!14216 lt!1261569))))

(declare-fun charsOf!3752 (Token!10842) BalanceConc!23064)

(assert (=> b!3642623 (= lt!1261569 (charsOf!3752 (_1!22266 lt!1261578)))))

(declare-fun e!2254977 () Bool)

(assert (=> b!3642623 e!2254977))

(declare-fun res!1476704 () Bool)

(assert (=> b!3642623 (=> (not res!1476704) (not e!2254977))))

(declare-datatypes ((Option!8105 0))(
  ( (None!8104) (Some!8104 (v!37940 Rule!11276)) )
))
(declare-fun lt!1261579 () Option!8105)

(declare-fun isDefined!6336 (Option!8105) Bool)

(assert (=> b!3642623 (= res!1476704 (isDefined!6336 lt!1261579))))

(declare-fun getRuleFromTag!1342 (LexerInterface!5327 List!38519 String!43174) Option!8105)

(assert (=> b!3642623 (= lt!1261579 (getRuleFromTag!1342 thiss!23823 rules!3307 (tag!6490 (rule!8524 (_1!22266 lt!1261578)))))))

(declare-fun lt!1261580 () Unit!55254)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1342 (LexerInterface!5327 List!38519 List!38518 Token!10842) Unit!55254)

(assert (=> b!3642623 (= lt!1261580 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1342 thiss!23823 rules!3307 lt!1261565 (_1!22266 lt!1261578)))))

(assert (=> b!3642623 (= lt!1261578 (get!12583 lt!1261571))))

(declare-fun lt!1261576 () Unit!55254)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1005 (LexerInterface!5327 List!38519 List!38518 List!38518) Unit!55254)

(assert (=> b!3642623 (= lt!1261576 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1005 thiss!23823 rules!3307 lt!1261568 suffix!1395))))

(declare-fun maxPrefix!2861 (LexerInterface!5327 List!38519 List!38518) Option!8104)

(assert (=> b!3642623 (= lt!1261571 (maxPrefix!2861 thiss!23823 rules!3307 lt!1261565))))

(assert (=> b!3642623 (isPrefix!3101 lt!1261568 lt!1261565)))

(declare-fun lt!1261574 () Unit!55254)

(assert (=> b!3642623 (= lt!1261574 (lemmaConcatTwoListThenFirstIsPrefix!2020 lt!1261568 suffix!1395))))

(assert (=> b!3642623 (= lt!1261565 (++!9554 lt!1261568 suffix!1395))))

(declare-fun b!3642624 () Bool)

(declare-fun res!1476708 () Bool)

(assert (=> b!3642624 (=> (not res!1476708) (not e!2254957))))

(declare-fun anOtherTypeRule!33 () Rule!11276)

(assert (=> b!3642624 (= res!1476708 (not (= (isSeparator!5738 anOtherTypeRule!33) (isSeparator!5738 rule!403))))))

(declare-fun b!3642625 () Bool)

(declare-fun tp_is_empty!18077 () Bool)

(declare-fun tp!1111122 () Bool)

(assert (=> b!3642625 (= e!2254974 (and tp_is_empty!18077 tp!1111122))))

(declare-fun tp!1111128 () Bool)

(declare-fun b!3642626 () Bool)

(assert (=> b!3642626 (= e!2254971 (and tp!1111128 (inv!51828 (tag!6490 anOtherTypeRule!33)) (inv!51831 (transformation!5738 anOtherTypeRule!33)) e!2254968))))

(declare-fun b!3642627 () Bool)

(declare-fun e!2254956 () Bool)

(declare-fun tp!1111121 () Bool)

(assert (=> b!3642627 (= e!2254956 (and tp!1111121 (inv!51828 (tag!6490 (h!43815 rules!3307))) (inv!51831 (transformation!5738 (h!43815 rules!3307))) e!2254980))))

(declare-fun b!3642628 () Bool)

(declare-fun res!1476701 () Bool)

(assert (=> b!3642628 (=> (not res!1476701) (not e!2254957))))

(assert (=> b!3642628 (= res!1476701 (contains!7542 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3642629 () Bool)

(declare-fun tp!1111124 () Bool)

(assert (=> b!3642629 (= e!2254963 (and e!2254956 tp!1111124))))

(declare-fun b!3642630 () Bool)

(assert (=> b!3642630 (= e!2254977 e!2254959)))

(declare-fun res!1476698 () Bool)

(assert (=> b!3642630 (=> (not res!1476698) (not e!2254959))))

(declare-fun matchR!5066 (Regex!10497 List!38518) Bool)

(assert (=> b!3642630 (= res!1476698 (matchR!5066 (regex!5738 lt!1261589) (list!14216 (charsOf!3752 (_1!22266 lt!1261578)))))))

(declare-fun get!12584 (Option!8105) Rule!11276)

(assert (=> b!3642630 (= lt!1261589 (get!12584 lt!1261579))))

(declare-fun b!3642631 () Bool)

(assert (=> b!3642631 (= e!2254975 e!2254969)))

(declare-fun res!1476705 () Bool)

(assert (=> b!3642631 (=> res!1476705 e!2254969)))

(declare-fun lt!1261590 () List!38518)

(declare-fun lt!1261583 () Option!8104)

(assert (=> b!3642631 (= res!1476705 (or (not (= lt!1261590 (_2!22266 lt!1261578))) (not (= lt!1261583 (Some!8103 (tuple2!38265 (_1!22266 lt!1261578) lt!1261590))))))))

(assert (=> b!3642631 (= (_2!22266 lt!1261578) lt!1261590)))

(declare-fun lt!1261585 () Unit!55254)

(declare-fun lemmaSamePrefixThenSameSuffix!1428 (List!38518 List!38518 List!38518 List!38518 List!38518) Unit!55254)

(assert (=> b!3642631 (= lt!1261585 (lemmaSamePrefixThenSameSuffix!1428 lt!1261570 (_2!22266 lt!1261578) lt!1261570 lt!1261590 lt!1261565))))

(declare-fun getSuffix!1654 (List!38518 List!38518) List!38518)

(assert (=> b!3642631 (= lt!1261590 (getSuffix!1654 lt!1261565 lt!1261570))))

(declare-fun lt!1261587 () TokenValue!5968)

(declare-fun lt!1261575 () Int)

(assert (=> b!3642631 (= lt!1261583 (Some!8103 (tuple2!38265 (Token!10843 lt!1261587 (rule!8524 (_1!22266 lt!1261578)) lt!1261575 lt!1261570) (_2!22266 lt!1261578))))))

(declare-fun maxPrefixOneRule!1999 (LexerInterface!5327 Rule!11276 List!38518) Option!8104)

(assert (=> b!3642631 (= lt!1261583 (maxPrefixOneRule!1999 thiss!23823 (rule!8524 (_1!22266 lt!1261578)) lt!1261565))))

(declare-fun size!29307 (List!38518) Int)

(assert (=> b!3642631 (= lt!1261575 (size!29307 lt!1261570))))

(assert (=> b!3642631 (= lt!1261587 (apply!9240 (transformation!5738 (rule!8524 (_1!22266 lt!1261578))) (seqFromList!4287 lt!1261570)))))

(declare-fun lt!1261564 () Unit!55254)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1055 (LexerInterface!5327 List!38519 List!38518 List!38518 List!38518 Rule!11276) Unit!55254)

(assert (=> b!3642631 (= lt!1261564 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1055 thiss!23823 rules!3307 lt!1261570 lt!1261565 (_2!22266 lt!1261578) (rule!8524 (_1!22266 lt!1261578))))))

(declare-fun b!3642632 () Bool)

(declare-fun res!1476692 () Bool)

(assert (=> b!3642632 (=> res!1476692 e!2254976)))

(declare-fun lt!1261577 () C!21180)

(declare-fun usedCharacters!950 (Regex!10497) List!38518)

(assert (=> b!3642632 (= res!1476692 (not (contains!7541 (usedCharacters!950 (regex!5738 anOtherTypeRule!33)) lt!1261577)))))

(declare-fun b!3642633 () Bool)

(declare-fun res!1476699 () Bool)

(assert (=> b!3642633 (=> res!1476699 e!2254979)))

(assert (=> b!3642633 (= res!1476699 (not (matchR!5066 (regex!5738 (rule!8524 (_1!22266 lt!1261578))) lt!1261570)))))

(declare-fun e!2254966 () Bool)

(assert (=> b!3642634 (= e!2254966 (and tp!1111119 tp!1111116))))

(assert (=> b!3642635 (= e!2254978 (and tp!1111115 tp!1111117))))

(declare-fun b!3642636 () Bool)

(assert (=> b!3642636 (= e!2254953 (not e!2254973))))

(declare-fun res!1476711 () Bool)

(assert (=> b!3642636 (=> res!1476711 e!2254973)))

(assert (=> b!3642636 (= res!1476711 (not (matchR!5066 (regex!5738 rule!403) lt!1261568)))))

(declare-fun ruleValid!2002 (LexerInterface!5327 Rule!11276) Bool)

(assert (=> b!3642636 (ruleValid!2002 thiss!23823 rule!403)))

(declare-fun lt!1261588 () Unit!55254)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1156 (LexerInterface!5327 Rule!11276 List!38519) Unit!55254)

(assert (=> b!3642636 (= lt!1261588 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1156 thiss!23823 rule!403 rules!3307))))

(declare-fun tp!1111114 () Bool)

(declare-fun b!3642637 () Bool)

(assert (=> b!3642637 (= e!2254972 (and tp!1111114 (inv!51828 (tag!6490 rule!403)) (inv!51831 (transformation!5738 rule!403)) e!2254966))))

(declare-fun b!3642638 () Bool)

(assert (=> b!3642638 (= e!2254973 e!2254976)))

(declare-fun res!1476712 () Bool)

(assert (=> b!3642638 (=> res!1476712 e!2254976)))

(assert (=> b!3642638 (= res!1476712 (contains!7541 lt!1261592 lt!1261577))))

(assert (=> b!3642638 (= lt!1261577 (head!7740 suffix!1395))))

(assert (=> b!3642638 (= lt!1261592 (usedCharacters!950 (regex!5738 rule!403)))))

(declare-fun b!3642639 () Bool)

(assert (=> b!3642639 (= e!2254957 e!2254967)))

(declare-fun res!1476695 () Bool)

(assert (=> b!3642639 (=> (not res!1476695) (not e!2254967))))

(declare-fun isDefined!6337 (Option!8104) Bool)

(assert (=> b!3642639 (= res!1476695 (isDefined!6337 lt!1261582))))

(assert (=> b!3642639 (= lt!1261582 (maxPrefix!2861 thiss!23823 rules!3307 lt!1261568))))

(assert (=> b!3642639 (= lt!1261568 (list!14216 (charsOf!3752 token!511)))))

(declare-fun b!3642640 () Bool)

(declare-fun Unit!55257 () Unit!55254)

(assert (=> b!3642640 (= e!2254954 Unit!55257)))

(declare-fun lt!1261581 () Unit!55254)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!686 (Regex!10497 List!38518 C!21180) Unit!55254)

(assert (=> b!3642640 (= lt!1261581 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!686 (regex!5738 rule!403) lt!1261568 lt!1261573))))

(assert (=> b!3642640 false))

(assert (= (and start!340274 res!1476693) b!3642619))

(assert (= (and b!3642619 res!1476694) b!3642606))

(assert (= (and b!3642606 res!1476713) b!3642616))

(assert (= (and b!3642616 res!1476707) b!3642628))

(assert (= (and b!3642628 res!1476701) b!3642624))

(assert (= (and b!3642624 res!1476708) b!3642639))

(assert (= (and b!3642639 res!1476695) b!3642622))

(assert (= (and b!3642622 res!1476703) b!3642612))

(assert (= (and b!3642612 res!1476702) b!3642613))

(assert (= (and b!3642613 res!1476709) b!3642636))

(assert (= (and b!3642636 (not res!1476711)) b!3642614))

(assert (= (and b!3642614 (not res!1476706)) b!3642638))

(assert (= (and b!3642638 (not res!1476712)) b!3642632))

(assert (= (and b!3642632 (not res!1476692)) b!3642609))

(assert (= (and b!3642609 (not res!1476697)) b!3642623))

(assert (= (and b!3642623 res!1476704) b!3642630))

(assert (= (and b!3642630 res!1476698) b!3642615))

(assert (= (and b!3642623 (not res!1476700)) b!3642633))

(assert (= (and b!3642633 (not res!1476699)) b!3642617))

(assert (= (and b!3642617 (not res!1476710)) b!3642631))

(assert (= (and b!3642631 (not res!1476705)) b!3642621))

(assert (= (and b!3642621 c!629769) b!3642640))

(assert (= (and b!3642621 (not c!629769)) b!3642620))

(assert (= (and b!3642621 (not res!1476696)) b!3642610))

(assert (= b!3642627 b!3642618))

(assert (= b!3642629 b!3642627))

(assert (= (and start!340274 ((_ is Cons!38395) rules!3307)) b!3642629))

(assert (= (and start!340274 ((_ is Cons!38394) suffix!1395)) b!3642625))

(assert (= b!3642607 b!3642635))

(assert (= b!3642611 b!3642607))

(assert (= start!340274 b!3642611))

(assert (= b!3642637 b!3642634))

(assert (= start!340274 b!3642637))

(assert (= b!3642626 b!3642608))

(assert (= start!340274 b!3642626))

(declare-fun m!4145861 () Bool)

(assert (=> b!3642612 m!4145861))

(declare-fun m!4145863 () Bool)

(assert (=> b!3642638 m!4145863))

(declare-fun m!4145865 () Bool)

(assert (=> b!3642638 m!4145865))

(declare-fun m!4145867 () Bool)

(assert (=> b!3642638 m!4145867))

(declare-fun m!4145869 () Bool)

(assert (=> b!3642609 m!4145869))

(declare-fun m!4145871 () Bool)

(assert (=> b!3642630 m!4145871))

(assert (=> b!3642630 m!4145871))

(declare-fun m!4145873 () Bool)

(assert (=> b!3642630 m!4145873))

(assert (=> b!3642630 m!4145873))

(declare-fun m!4145875 () Bool)

(assert (=> b!3642630 m!4145875))

(declare-fun m!4145877 () Bool)

(assert (=> b!3642630 m!4145877))

(declare-fun m!4145879 () Bool)

(assert (=> b!3642628 m!4145879))

(declare-fun m!4145881 () Bool)

(assert (=> b!3642623 m!4145881))

(declare-fun m!4145883 () Bool)

(assert (=> b!3642623 m!4145883))

(declare-fun m!4145885 () Bool)

(assert (=> b!3642623 m!4145885))

(declare-fun m!4145887 () Bool)

(assert (=> b!3642623 m!4145887))

(declare-fun m!4145889 () Bool)

(assert (=> b!3642623 m!4145889))

(declare-fun m!4145891 () Bool)

(assert (=> b!3642623 m!4145891))

(declare-fun m!4145893 () Bool)

(assert (=> b!3642623 m!4145893))

(declare-fun m!4145895 () Bool)

(assert (=> b!3642623 m!4145895))

(declare-fun m!4145897 () Bool)

(assert (=> b!3642623 m!4145897))

(assert (=> b!3642623 m!4145871))

(declare-fun m!4145899 () Bool)

(assert (=> b!3642623 m!4145899))

(declare-fun m!4145901 () Bool)

(assert (=> b!3642623 m!4145901))

(declare-fun m!4145903 () Bool)

(assert (=> b!3642623 m!4145903))

(declare-fun m!4145905 () Bool)

(assert (=> b!3642623 m!4145905))

(assert (=> b!3642623 m!4145887))

(declare-fun m!4145907 () Bool)

(assert (=> b!3642623 m!4145907))

(declare-fun m!4145909 () Bool)

(assert (=> b!3642627 m!4145909))

(declare-fun m!4145911 () Bool)

(assert (=> b!3642627 m!4145911))

(declare-fun m!4145913 () Bool)

(assert (=> b!3642614 m!4145913))

(declare-fun m!4145915 () Bool)

(assert (=> b!3642639 m!4145915))

(declare-fun m!4145917 () Bool)

(assert (=> b!3642639 m!4145917))

(declare-fun m!4145919 () Bool)

(assert (=> b!3642639 m!4145919))

(assert (=> b!3642639 m!4145919))

(declare-fun m!4145921 () Bool)

(assert (=> b!3642639 m!4145921))

(declare-fun m!4145923 () Bool)

(assert (=> b!3642622 m!4145923))

(declare-fun m!4145925 () Bool)

(assert (=> b!3642626 m!4145925))

(declare-fun m!4145927 () Bool)

(assert (=> b!3642626 m!4145927))

(declare-fun m!4145929 () Bool)

(assert (=> b!3642632 m!4145929))

(assert (=> b!3642632 m!4145929))

(declare-fun m!4145931 () Bool)

(assert (=> b!3642632 m!4145931))

(declare-fun m!4145933 () Bool)

(assert (=> b!3642619 m!4145933))

(declare-fun m!4145935 () Bool)

(assert (=> b!3642637 m!4145935))

(declare-fun m!4145937 () Bool)

(assert (=> b!3642637 m!4145937))

(declare-fun m!4145939 () Bool)

(assert (=> b!3642621 m!4145939))

(declare-fun m!4145941 () Bool)

(assert (=> b!3642621 m!4145941))

(declare-fun m!4145943 () Bool)

(assert (=> b!3642616 m!4145943))

(declare-fun m!4145945 () Bool)

(assert (=> b!3642607 m!4145945))

(declare-fun m!4145947 () Bool)

(assert (=> b!3642607 m!4145947))

(declare-fun m!4145949 () Bool)

(assert (=> b!3642606 m!4145949))

(declare-fun m!4145951 () Bool)

(assert (=> b!3642640 m!4145951))

(declare-fun m!4145953 () Bool)

(assert (=> b!3642631 m!4145953))

(declare-fun m!4145955 () Bool)

(assert (=> b!3642631 m!4145955))

(declare-fun m!4145957 () Bool)

(assert (=> b!3642631 m!4145957))

(declare-fun m!4145959 () Bool)

(assert (=> b!3642631 m!4145959))

(assert (=> b!3642631 m!4145955))

(declare-fun m!4145961 () Bool)

(assert (=> b!3642631 m!4145961))

(declare-fun m!4145963 () Bool)

(assert (=> b!3642631 m!4145963))

(declare-fun m!4145965 () Bool)

(assert (=> b!3642631 m!4145965))

(declare-fun m!4145967 () Bool)

(assert (=> start!340274 m!4145967))

(declare-fun m!4145969 () Bool)

(assert (=> b!3642636 m!4145969))

(declare-fun m!4145971 () Bool)

(assert (=> b!3642636 m!4145971))

(declare-fun m!4145973 () Bool)

(assert (=> b!3642636 m!4145973))

(declare-fun m!4145975 () Bool)

(assert (=> b!3642633 m!4145975))

(declare-fun m!4145977 () Bool)

(assert (=> b!3642611 m!4145977))

(declare-fun m!4145979 () Bool)

(assert (=> b!3642617 m!4145979))

(declare-fun m!4145981 () Bool)

(assert (=> b!3642617 m!4145981))

(declare-fun m!4145983 () Bool)

(assert (=> b!3642617 m!4145983))

(declare-fun m!4145985 () Bool)

(assert (=> b!3642617 m!4145985))

(declare-fun m!4145987 () Bool)

(assert (=> b!3642617 m!4145987))

(assert (=> b!3642617 m!4145985))

(declare-fun m!4145989 () Bool)

(assert (=> b!3642617 m!4145989))

(declare-fun m!4145991 () Bool)

(assert (=> b!3642610 m!4145991))

(check-sat (not start!340274) b_and!268671 b_and!268665 (not b!3642612) b_and!268659 (not b!3642637) (not b_next!96253) (not b!3642622) (not b!3642610) (not b!3642606) b_and!268667 b_and!268663 (not b!3642628) (not b!3642607) (not b!3642630) (not b!3642636) (not b_next!96263) (not b_next!96251) b_and!268673 (not b!3642617) (not b!3642627) (not b!3642614) (not b!3642640) (not b!3642632) (not b_next!96259) (not b!3642611) (not b!3642616) (not b!3642609) (not b!3642631) (not b!3642633) (not b_next!96261) (not b!3642626) (not b!3642623) (not b!3642619) (not b!3642621) (not b!3642638) b_and!268669 b_and!268661 (not b_next!96257) (not b!3642629) (not b_next!96255) (not b!3642639) (not b_next!96249) tp_is_empty!18077 (not b!3642625))
(check-sat b_and!268671 b_and!268665 (not b_next!96259) (not b_next!96261) b_and!268659 (not b_next!96253) b_and!268669 b_and!268667 b_and!268663 (not b_next!96263) (not b_next!96251) b_and!268673 b_and!268661 (not b_next!96257) (not b_next!96255) (not b_next!96249))
