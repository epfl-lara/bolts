; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77662 () Bool)

(assert start!77662)

(declare-fun b!860737 () Bool)

(declare-fun b_free!26265 () Bool)

(declare-fun b_next!26329 () Bool)

(assert (=> b!860737 (= b_free!26265 (not b_next!26329))))

(declare-fun tp!271764 () Bool)

(declare-fun b_and!76621 () Bool)

(assert (=> b!860737 (= tp!271764 b_and!76621)))

(declare-fun b_free!26267 () Bool)

(declare-fun b_next!26331 () Bool)

(assert (=> b!860737 (= b_free!26267 (not b_next!26331))))

(declare-fun tp!271766 () Bool)

(declare-fun b_and!76623 () Bool)

(assert (=> b!860737 (= tp!271766 b_and!76623)))

(declare-fun b!860720 () Bool)

(declare-fun b_free!26269 () Bool)

(declare-fun b_next!26333 () Bool)

(assert (=> b!860720 (= b_free!26269 (not b_next!26333))))

(declare-fun tp!271759 () Bool)

(declare-fun b_and!76625 () Bool)

(assert (=> b!860720 (= tp!271759 b_and!76625)))

(declare-fun b_free!26271 () Bool)

(declare-fun b_next!26335 () Bool)

(assert (=> b!860720 (= b_free!26271 (not b_next!26335))))

(declare-fun tp!271770 () Bool)

(declare-fun b_and!76627 () Bool)

(assert (=> b!860720 (= tp!271770 b_and!76627)))

(declare-fun b!860739 () Bool)

(declare-fun b_free!26273 () Bool)

(declare-fun b_next!26337 () Bool)

(assert (=> b!860739 (= b_free!26273 (not b_next!26337))))

(declare-fun tp!271760 () Bool)

(declare-fun b_and!76629 () Bool)

(assert (=> b!860739 (= tp!271760 b_and!76629)))

(declare-fun b_free!26275 () Bool)

(declare-fun b_next!26339 () Bool)

(assert (=> b!860739 (= b_free!26275 (not b_next!26339))))

(declare-fun tp!271769 () Bool)

(declare-fun b_and!76631 () Bool)

(assert (=> b!860739 (= tp!271769 b_and!76631)))

(declare-fun b!860719 () Bool)

(declare-fun res!392663 () Bool)

(declare-fun e!566643 () Bool)

(assert (=> b!860719 (=> (not res!392663) (not e!566643))))

(declare-datatypes ((LexerInterface!1548 0))(
  ( (LexerInterfaceExt!1545 (__x!7355 Int)) (Lexer!1546) )
))
(declare-fun thiss!20117 () LexerInterface!1548)

(declare-datatypes ((List!9322 0))(
  ( (Nil!9306) (Cons!9306 (h!14707 (_ BitVec 16)) (t!97588 List!9322)) )
))
(declare-datatypes ((TokenValue!1812 0))(
  ( (FloatLiteralValue!3624 (text!13129 List!9322)) (TokenValueExt!1811 (__x!7356 Int)) (Broken!9060 (value!56434 List!9322)) (Object!1827) (End!1812) (Def!1812) (Underscore!1812) (Match!1812) (Else!1812) (Error!1812) (Case!1812) (If!1812) (Extends!1812) (Abstract!1812) (Class!1812) (Val!1812) (DelimiterValue!3624 (del!1872 List!9322)) (KeywordValue!1818 (value!56435 List!9322)) (CommentValue!3624 (value!56436 List!9322)) (WhitespaceValue!3624 (value!56437 List!9322)) (IndentationValue!1812 (value!56438 List!9322)) (String!10957) (Int32!1812) (Broken!9061 (value!56439 List!9322)) (Boolean!1813) (Unit!13834) (OperatorValue!1815 (op!1872 List!9322)) (IdentifierValue!3624 (value!56440 List!9322)) (IdentifierValue!3625 (value!56441 List!9322)) (WhitespaceValue!3625 (value!56442 List!9322)) (True!3624) (False!3624) (Broken!9062 (value!56443 List!9322)) (Broken!9063 (value!56444 List!9322)) (True!3625) (RightBrace!1812) (RightBracket!1812) (Colon!1812) (Null!1812) (Comma!1812) (LeftBracket!1812) (False!3625) (LeftBrace!1812) (ImaginaryLiteralValue!1812 (text!13130 List!9322)) (StringLiteralValue!5436 (value!56445 List!9322)) (EOFValue!1812 (value!56446 List!9322)) (IdentValue!1812 (value!56447 List!9322)) (DelimiterValue!3625 (value!56448 List!9322)) (DedentValue!1812 (value!56449 List!9322)) (NewLineValue!1812 (value!56450 List!9322)) (IntegerValue!5436 (value!56451 (_ BitVec 32)) (text!13131 List!9322)) (IntegerValue!5437 (value!56452 Int) (text!13132 List!9322)) (Times!1812) (Or!1812) (Equal!1812) (Minus!1812) (Broken!9064 (value!56453 List!9322)) (And!1812) (Div!1812) (LessEqual!1812) (Mod!1812) (Concat!3991) (Not!1812) (Plus!1812) (SpaceValue!1812 (value!56454 List!9322)) (IntegerValue!5438 (value!56455 Int) (text!13133 List!9322)) (StringLiteralValue!5437 (text!13134 List!9322)) (FloatLiteralValue!3625 (text!13135 List!9322)) (BytesLiteralValue!1812 (value!56456 List!9322)) (CommentValue!3625 (value!56457 List!9322)) (StringLiteralValue!5438 (value!56458 List!9322)) (ErrorTokenValue!1812 (msg!1873 List!9322)) )
))
(declare-datatypes ((C!4928 0))(
  ( (C!4929 (val!2712 Int)) )
))
(declare-datatypes ((Regex!2179 0))(
  ( (ElementMatch!2179 (c!139297 C!4928)) (Concat!3992 (regOne!4870 Regex!2179) (regTwo!4870 Regex!2179)) (EmptyExpr!2179) (Star!2179 (reg!2508 Regex!2179)) (EmptyLang!2179) (Union!2179 (regOne!4871 Regex!2179) (regTwo!4871 Regex!2179)) )
))
(declare-datatypes ((String!10958 0))(
  ( (String!10959 (value!56459 String)) )
))
(declare-datatypes ((List!9323 0))(
  ( (Nil!9307) (Cons!9307 (h!14708 C!4928) (t!97589 List!9323)) )
))
(declare-datatypes ((IArray!6175 0))(
  ( (IArray!6176 (innerList!3145 List!9323)) )
))
(declare-datatypes ((Conc!3085 0))(
  ( (Node!3085 (left!6887 Conc!3085) (right!7217 Conc!3085) (csize!6400 Int) (cheight!3296 Int)) (Leaf!4546 (xs!5774 IArray!6175) (csize!6401 Int)) (Empty!3085) )
))
(declare-datatypes ((BalanceConc!6184 0))(
  ( (BalanceConc!6185 (c!139298 Conc!3085)) )
))
(declare-datatypes ((TokenValueInjection!3324 0))(
  ( (TokenValueInjection!3325 (toValue!2811 Int) (toChars!2670 Int)) )
))
(declare-datatypes ((Rule!3292 0))(
  ( (Rule!3293 (regex!1746 Regex!2179) (tag!2008 String!10958) (isSeparator!1746 Bool) (transformation!1746 TokenValueInjection!3324)) )
))
(declare-datatypes ((List!9324 0))(
  ( (Nil!9308) (Cons!9308 (h!14709 Rule!3292) (t!97590 List!9324)) )
))
(declare-fun rules!2621 () List!9324)

(declare-fun rulesInvariant!1424 (LexerInterface!1548 List!9324) Bool)

(assert (=> b!860719 (= res!392663 (rulesInvariant!1424 thiss!20117 rules!2621))))

(declare-fun e!566654 () Bool)

(assert (=> b!860720 (= e!566654 (and tp!271759 tp!271770))))

(declare-fun b!860721 () Bool)

(declare-fun res!392662 () Bool)

(declare-fun e!566641 () Bool)

(assert (=> b!860721 (=> res!392662 e!566641)))

(declare-datatypes ((Token!3158 0))(
  ( (Token!3159 (value!56460 TokenValue!1812) (rule!3169 Rule!3292) (size!7765 Int) (originalCharacters!2302 List!9323)) )
))
(declare-fun separatorToken!297 () Token!3158)

(declare-datatypes ((List!9325 0))(
  ( (Nil!9309) (Cons!9309 (h!14710 Token!3158) (t!97591 List!9325)) )
))
(declare-fun lt!325268 () List!9325)

(declare-fun l!5107 () List!9325)

(declare-fun withSeparatorTokenList!76 (LexerInterface!1548 List!9325 Token!3158) List!9325)

(declare-fun tail!1054 (List!9325) List!9325)

(assert (=> b!860721 (= res!392662 (not (= (t!97591 (t!97591 lt!325268)) (withSeparatorTokenList!76 thiss!20117 (tail!1054 l!5107) separatorToken!297))))))

(declare-fun b!860722 () Bool)

(declare-fun e!566646 () Bool)

(declare-fun e!566644 () Bool)

(declare-fun tp!271761 () Bool)

(assert (=> b!860722 (= e!566646 (and e!566644 tp!271761))))

(declare-fun b!860723 () Bool)

(declare-fun e!566657 () Bool)

(declare-fun tp!271758 () Bool)

(declare-fun inv!11830 (String!10958) Bool)

(declare-fun inv!11833 (TokenValueInjection!3324) Bool)

(assert (=> b!860723 (= e!566644 (and tp!271758 (inv!11830 (tag!2008 (h!14709 rules!2621))) (inv!11833 (transformation!1746 (h!14709 rules!2621))) e!566657))))

(declare-fun e!566656 () Bool)

(declare-fun e!566651 () Bool)

(declare-fun b!860724 () Bool)

(declare-fun tp!271767 () Bool)

(declare-fun inv!11834 (Token!3158) Bool)

(assert (=> b!860724 (= e!566656 (and (inv!11834 (h!14710 l!5107)) e!566651 tp!271767))))

(declare-fun b!860725 () Bool)

(declare-fun res!392664 () Bool)

(assert (=> b!860725 (=> res!392664 e!566641)))

(declare-fun rulesProduceIndividualToken!612 (LexerInterface!1548 List!9324 Token!3158) Bool)

(assert (=> b!860725 (= res!392664 (not (rulesProduceIndividualToken!612 thiss!20117 rules!2621 (h!14710 lt!325268))))))

(declare-fun b!860726 () Bool)

(declare-fun res!392670 () Bool)

(assert (=> b!860726 (=> res!392670 e!566641)))

(declare-fun head!1492 (List!9325) Token!3158)

(assert (=> b!860726 (= res!392670 (not (= (head!1492 l!5107) (h!14710 lt!325268))))))

(declare-fun b!860727 () Bool)

(assert (=> b!860727 (= e!566641 (rulesProduceIndividualToken!612 thiss!20117 rules!2621 (h!14710 (t!97591 lt!325268))))))

(declare-fun b!860728 () Bool)

(declare-fun res!392665 () Bool)

(assert (=> b!860728 (=> res!392665 e!566641)))

(assert (=> b!860728 (= res!392665 (not (= (h!14710 (t!97591 lt!325268)) separatorToken!297)))))

(declare-fun b!860729 () Bool)

(assert (=> b!860729 (= e!566643 (not e!566641))))

(declare-fun res!392668 () Bool)

(assert (=> b!860729 (=> res!392668 e!566641)))

(get-info :version)

(assert (=> b!860729 (= res!392668 (or (not ((_ is Cons!9309) lt!325268)) (not ((_ is Cons!9309) (t!97591 lt!325268)))))))

(declare-fun rulesProduceEachTokenIndividuallyList!436 (LexerInterface!1548 List!9324 List!9325) Bool)

(assert (=> b!860729 (rulesProduceEachTokenIndividuallyList!436 thiss!20117 rules!2621 lt!325268)))

(assert (=> b!860729 (= lt!325268 (withSeparatorTokenList!76 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13835 0))(
  ( (Unit!13836) )
))
(declare-fun lt!325269 () Unit!13835)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!76 (LexerInterface!1548 List!9324 List!9325 Token!3158) Unit!13835)

(assert (=> b!860729 (= lt!325269 (withSeparatorTokenListPreservesRulesProduceTokens!76 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!860730 () Bool)

(declare-fun res!392660 () Bool)

(assert (=> b!860730 (=> (not res!392660) (not e!566643))))

(declare-fun isEmpty!5523 (List!9324) Bool)

(assert (=> b!860730 (= res!392660 (not (isEmpty!5523 rules!2621)))))

(declare-fun b!860731 () Bool)

(declare-fun res!392669 () Bool)

(assert (=> b!860731 (=> (not res!392669) (not e!566643))))

(assert (=> b!860731 (= res!392669 (rulesProduceIndividualToken!612 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!860732 () Bool)

(declare-fun res!392667 () Bool)

(assert (=> b!860732 (=> (not res!392667) (not e!566643))))

(assert (=> b!860732 (= res!392667 (isSeparator!1746 (rule!3169 separatorToken!297)))))

(declare-fun e!566647 () Bool)

(declare-fun tp!271762 () Bool)

(declare-fun b!860733 () Bool)

(declare-fun e!566655 () Bool)

(declare-fun inv!21 (TokenValue!1812) Bool)

(assert (=> b!860733 (= e!566647 (and (inv!21 (value!56460 separatorToken!297)) e!566655 tp!271762))))

(declare-fun e!566649 () Bool)

(declare-fun b!860734 () Bool)

(declare-fun tp!271763 () Bool)

(assert (=> b!860734 (= e!566655 (and tp!271763 (inv!11830 (tag!2008 (rule!3169 separatorToken!297))) (inv!11833 (transformation!1746 (rule!3169 separatorToken!297))) e!566649))))

(declare-fun b!860735 () Bool)

(declare-fun e!566648 () Bool)

(declare-fun tp!271768 () Bool)

(assert (=> b!860735 (= e!566651 (and (inv!21 (value!56460 (h!14710 l!5107))) e!566648 tp!271768))))

(declare-fun tp!271765 () Bool)

(declare-fun b!860736 () Bool)

(assert (=> b!860736 (= e!566648 (and tp!271765 (inv!11830 (tag!2008 (rule!3169 (h!14710 l!5107)))) (inv!11833 (transformation!1746 (rule!3169 (h!14710 l!5107)))) e!566654))))

(assert (=> b!860737 (= e!566657 (and tp!271764 tp!271766))))

(declare-fun res!392661 () Bool)

(assert (=> start!77662 (=> (not res!392661) (not e!566643))))

(assert (=> start!77662 (= res!392661 ((_ is Lexer!1546) thiss!20117))))

(assert (=> start!77662 e!566643))

(assert (=> start!77662 true))

(assert (=> start!77662 e!566646))

(assert (=> start!77662 e!566656))

(assert (=> start!77662 (and (inv!11834 separatorToken!297) e!566647)))

(declare-fun b!860738 () Bool)

(declare-fun res!392666 () Bool)

(assert (=> b!860738 (=> (not res!392666) (not e!566643))))

(assert (=> b!860738 (= res!392666 (rulesProduceEachTokenIndividuallyList!436 thiss!20117 rules!2621 l!5107))))

(assert (=> b!860739 (= e!566649 (and tp!271760 tp!271769))))

(declare-fun b!860740 () Bool)

(declare-fun res!392671 () Bool)

(assert (=> b!860740 (=> (not res!392671) (not e!566643))))

(declare-fun sepAndNonSepRulesDisjointChars!546 (List!9324 List!9324) Bool)

(assert (=> b!860740 (= res!392671 (sepAndNonSepRulesDisjointChars!546 rules!2621 rules!2621))))

(declare-fun b!860741 () Bool)

(declare-fun res!392659 () Bool)

(assert (=> b!860741 (=> (not res!392659) (not e!566643))))

(declare-fun lambda!25856 () Int)

(declare-fun forall!2209 (List!9325 Int) Bool)

(assert (=> b!860741 (= res!392659 (forall!2209 l!5107 lambda!25856))))

(assert (= (and start!77662 res!392661) b!860730))

(assert (= (and b!860730 res!392660) b!860719))

(assert (= (and b!860719 res!392663) b!860738))

(assert (= (and b!860738 res!392666) b!860731))

(assert (= (and b!860731 res!392669) b!860732))

(assert (= (and b!860732 res!392667) b!860741))

(assert (= (and b!860741 res!392659) b!860740))

(assert (= (and b!860740 res!392671) b!860729))

(assert (= (and b!860729 (not res!392668)) b!860721))

(assert (= (and b!860721 (not res!392662)) b!860726))

(assert (= (and b!860726 (not res!392670)) b!860728))

(assert (= (and b!860728 (not res!392665)) b!860725))

(assert (= (and b!860725 (not res!392664)) b!860727))

(assert (= b!860723 b!860737))

(assert (= b!860722 b!860723))

(assert (= (and start!77662 ((_ is Cons!9308) rules!2621)) b!860722))

(assert (= b!860736 b!860720))

(assert (= b!860735 b!860736))

(assert (= b!860724 b!860735))

(assert (= (and start!77662 ((_ is Cons!9309) l!5107)) b!860724))

(assert (= b!860734 b!860739))

(assert (= b!860733 b!860734))

(assert (= start!77662 b!860733))

(declare-fun m!1104381 () Bool)

(assert (=> b!860724 m!1104381))

(declare-fun m!1104383 () Bool)

(assert (=> b!860726 m!1104383))

(declare-fun m!1104385 () Bool)

(assert (=> b!860736 m!1104385))

(declare-fun m!1104387 () Bool)

(assert (=> b!860736 m!1104387))

(declare-fun m!1104389 () Bool)

(assert (=> b!860723 m!1104389))

(declare-fun m!1104391 () Bool)

(assert (=> b!860723 m!1104391))

(declare-fun m!1104393 () Bool)

(assert (=> b!860738 m!1104393))

(declare-fun m!1104395 () Bool)

(assert (=> b!860719 m!1104395))

(declare-fun m!1104397 () Bool)

(assert (=> b!860729 m!1104397))

(declare-fun m!1104399 () Bool)

(assert (=> b!860729 m!1104399))

(declare-fun m!1104401 () Bool)

(assert (=> b!860729 m!1104401))

(declare-fun m!1104403 () Bool)

(assert (=> b!860741 m!1104403))

(declare-fun m!1104405 () Bool)

(assert (=> b!860721 m!1104405))

(assert (=> b!860721 m!1104405))

(declare-fun m!1104407 () Bool)

(assert (=> b!860721 m!1104407))

(declare-fun m!1104409 () Bool)

(assert (=> b!860725 m!1104409))

(declare-fun m!1104411 () Bool)

(assert (=> b!860733 m!1104411))

(declare-fun m!1104413 () Bool)

(assert (=> b!860730 m!1104413))

(declare-fun m!1104415 () Bool)

(assert (=> b!860740 m!1104415))

(declare-fun m!1104417 () Bool)

(assert (=> b!860734 m!1104417))

(declare-fun m!1104419 () Bool)

(assert (=> b!860734 m!1104419))

(declare-fun m!1104421 () Bool)

(assert (=> b!860727 m!1104421))

(declare-fun m!1104423 () Bool)

(assert (=> start!77662 m!1104423))

(declare-fun m!1104425 () Bool)

(assert (=> b!860735 m!1104425))

(declare-fun m!1104427 () Bool)

(assert (=> b!860731 m!1104427))

(check-sat (not b!860727) (not b_next!26337) b_and!76629 (not b!860722) (not b_next!26331) (not b!860741) (not b!860731) (not b_next!26333) (not b!860735) (not b!860733) (not b_next!26335) b_and!76621 b_and!76631 (not b!860740) (not b_next!26339) (not b_next!26329) b_and!76625 (not b!860734) (not b!860723) b_and!76627 (not start!77662) (not b!860726) (not b!860729) (not b!860736) b_and!76623 (not b!860738) (not b!860724) (not b!860721) (not b!860725) (not b!860719) (not b!860730))
(check-sat (not b_next!26335) (not b_next!26339) (not b_next!26337) b_and!76627 b_and!76623 b_and!76629 (not b_next!26331) (not b_next!26333) b_and!76621 b_and!76631 (not b_next!26329) b_and!76625)
