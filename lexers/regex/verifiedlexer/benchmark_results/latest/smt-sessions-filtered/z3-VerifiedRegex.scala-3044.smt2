; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182434 () Bool)

(assert start!182434)

(declare-fun b!1835904 () Bool)

(declare-fun b_free!51435 () Bool)

(declare-fun b_next!52139 () Bool)

(assert (=> b!1835904 (= b_free!51435 (not b_next!52139))))

(declare-fun tp!519421 () Bool)

(declare-fun b_and!143313 () Bool)

(assert (=> b!1835904 (= tp!519421 b_and!143313)))

(declare-fun b_free!51437 () Bool)

(declare-fun b_next!52141 () Bool)

(assert (=> b!1835904 (= b_free!51437 (not b_next!52141))))

(declare-fun tp!519427 () Bool)

(declare-fun b_and!143315 () Bool)

(assert (=> b!1835904 (= tp!519427 b_and!143315)))

(declare-fun b!1835914 () Bool)

(declare-fun b_free!51439 () Bool)

(declare-fun b_next!52143 () Bool)

(assert (=> b!1835914 (= b_free!51439 (not b_next!52143))))

(declare-fun tp!519416 () Bool)

(declare-fun b_and!143317 () Bool)

(assert (=> b!1835914 (= tp!519416 b_and!143317)))

(declare-fun b_free!51441 () Bool)

(declare-fun b_next!52145 () Bool)

(assert (=> b!1835914 (= b_free!51441 (not b_next!52145))))

(declare-fun tp!519428 () Bool)

(declare-fun b_and!143319 () Bool)

(assert (=> b!1835914 (= tp!519428 b_and!143319)))

(declare-fun b!1835918 () Bool)

(declare-fun b_free!51443 () Bool)

(declare-fun b_next!52147 () Bool)

(assert (=> b!1835918 (= b_free!51443 (not b_next!52147))))

(declare-fun tp!519422 () Bool)

(declare-fun b_and!143321 () Bool)

(assert (=> b!1835918 (= tp!519422 b_and!143321)))

(declare-fun b_free!51445 () Bool)

(declare-fun b_next!52149 () Bool)

(assert (=> b!1835918 (= b_free!51445 (not b_next!52149))))

(declare-fun tp!519423 () Bool)

(declare-fun b_and!143323 () Bool)

(assert (=> b!1835918 (= tp!519423 b_and!143323)))

(declare-fun b!1835916 () Bool)

(declare-fun b_free!51447 () Bool)

(declare-fun b_next!52151 () Bool)

(assert (=> b!1835916 (= b_free!51447 (not b_next!52151))))

(declare-fun tp!519431 () Bool)

(declare-fun b_and!143325 () Bool)

(assert (=> b!1835916 (= tp!519431 b_and!143325)))

(declare-fun b_free!51449 () Bool)

(declare-fun b_next!52153 () Bool)

(assert (=> b!1835916 (= b_free!51449 (not b_next!52153))))

(declare-fun tp!519430 () Bool)

(declare-fun b_and!143327 () Bool)

(assert (=> b!1835916 (= tp!519430 b_and!143327)))

(declare-fun b!1835892 () Bool)

(declare-fun res!825401 () Bool)

(declare-fun e!1173261 () Bool)

(assert (=> b!1835892 (=> (not res!825401) (not e!1173261))))

(declare-fun e!1173274 () Bool)

(assert (=> b!1835892 (= res!825401 e!1173274)))

(declare-fun res!825404 () Bool)

(assert (=> b!1835892 (=> (not res!825404) (not e!1173274))))

(declare-datatypes ((C!10128 0))(
  ( (C!10129 (val!5660 Int)) )
))
(declare-datatypes ((List!20253 0))(
  ( (Nil!20183) (Cons!20183 (h!25584 C!10128) (t!171378 List!20253)) )
))
(declare-fun lt!712625 () List!20253)

(declare-fun input!3681 () List!20253)

(declare-fun suffix!1698 () List!20253)

(declare-fun ++!5473 (List!20253 List!20253) List!20253)

(assert (=> b!1835892 (= res!825404 (= input!3681 (++!5473 lt!712625 suffix!1698)))))

(declare-datatypes ((Regex!4977 0))(
  ( (ElementMatch!4977 (c!299472 C!10128)) (Concat!8716 (regOne!10466 Regex!4977) (regTwo!10466 Regex!4977)) (EmptyExpr!4977) (Star!4977 (reg!5306 Regex!4977)) (EmptyLang!4977) (Union!4977 (regOne!10467 Regex!4977) (regTwo!10467 Regex!4977)) )
))
(declare-datatypes ((List!20254 0))(
  ( (Nil!20184) (Cons!20184 (h!25585 (_ BitVec 16)) (t!171379 List!20254)) )
))
(declare-datatypes ((TokenValue!3739 0))(
  ( (FloatLiteralValue!7478 (text!26618 List!20254)) (TokenValueExt!3738 (__x!12780 Int)) (Broken!18695 (value!113637 List!20254)) (Object!3808) (End!3739) (Def!3739) (Underscore!3739) (Match!3739) (Else!3739) (Error!3739) (Case!3739) (If!3739) (Extends!3739) (Abstract!3739) (Class!3739) (Val!3739) (DelimiterValue!7478 (del!3799 List!20254)) (KeywordValue!3745 (value!113638 List!20254)) (CommentValue!7478 (value!113639 List!20254)) (WhitespaceValue!7478 (value!113640 List!20254)) (IndentationValue!3739 (value!113641 List!20254)) (String!23026) (Int32!3739) (Broken!18696 (value!113642 List!20254)) (Boolean!3740) (Unit!34878) (OperatorValue!3742 (op!3799 List!20254)) (IdentifierValue!7478 (value!113643 List!20254)) (IdentifierValue!7479 (value!113644 List!20254)) (WhitespaceValue!7479 (value!113645 List!20254)) (True!7478) (False!7478) (Broken!18697 (value!113646 List!20254)) (Broken!18698 (value!113647 List!20254)) (True!7479) (RightBrace!3739) (RightBracket!3739) (Colon!3739) (Null!3739) (Comma!3739) (LeftBracket!3739) (False!7479) (LeftBrace!3739) (ImaginaryLiteralValue!3739 (text!26619 List!20254)) (StringLiteralValue!11217 (value!113648 List!20254)) (EOFValue!3739 (value!113649 List!20254)) (IdentValue!3739 (value!113650 List!20254)) (DelimiterValue!7479 (value!113651 List!20254)) (DedentValue!3739 (value!113652 List!20254)) (NewLineValue!3739 (value!113653 List!20254)) (IntegerValue!11217 (value!113654 (_ BitVec 32)) (text!26620 List!20254)) (IntegerValue!11218 (value!113655 Int) (text!26621 List!20254)) (Times!3739) (Or!3739) (Equal!3739) (Minus!3739) (Broken!18699 (value!113656 List!20254)) (And!3739) (Div!3739) (LessEqual!3739) (Mod!3739) (Concat!8717) (Not!3739) (Plus!3739) (SpaceValue!3739 (value!113657 List!20254)) (IntegerValue!11219 (value!113658 Int) (text!26622 List!20254)) (StringLiteralValue!11218 (text!26623 List!20254)) (FloatLiteralValue!7479 (text!26624 List!20254)) (BytesLiteralValue!3739 (value!113659 List!20254)) (CommentValue!7479 (value!113660 List!20254)) (StringLiteralValue!11219 (value!113661 List!20254)) (ErrorTokenValue!3739 (msg!3800 List!20254)) )
))
(declare-datatypes ((IArray!13367 0))(
  ( (IArray!13368 (innerList!6741 List!20253)) )
))
(declare-datatypes ((Conc!6681 0))(
  ( (Node!6681 (left!16127 Conc!6681) (right!16457 Conc!6681) (csize!13592 Int) (cheight!6892 Int)) (Leaf!9726 (xs!9557 IArray!13367) (csize!13593 Int)) (Empty!6681) )
))
(declare-datatypes ((BalanceConc!13306 0))(
  ( (BalanceConc!13307 (c!299473 Conc!6681)) )
))
(declare-datatypes ((TokenValueInjection!7138 0))(
  ( (TokenValueInjection!7139 (toValue!5200 Int) (toChars!5059 Int)) )
))
(declare-datatypes ((String!23027 0))(
  ( (String!23028 (value!113662 String)) )
))
(declare-datatypes ((Rule!7098 0))(
  ( (Rule!7099 (regex!3649 Regex!4977) (tag!4063 String!23027) (isSeparator!3649 Bool) (transformation!3649 TokenValueInjection!7138)) )
))
(declare-datatypes ((Token!6852 0))(
  ( (Token!6853 (value!113663 TokenValue!3739) (rule!5839 Rule!7098) (size!16013 Int) (originalCharacters!4457 List!20253)) )
))
(declare-fun token!567 () Token!6852)

(declare-fun list!8203 (BalanceConc!13306) List!20253)

(declare-fun charsOf!2292 (Token!6852) BalanceConc!13306)

(assert (=> b!1835892 (= lt!712625 (list!8203 (charsOf!2292 token!567)))))

(declare-fun b!1835893 () Bool)

(declare-fun e!1173254 () Bool)

(declare-fun e!1173268 () Bool)

(declare-fun tp!519429 () Bool)

(assert (=> b!1835893 (= e!1173254 (and e!1173268 tp!519429))))

(declare-fun b!1835894 () Bool)

(declare-fun res!825407 () Bool)

(assert (=> b!1835894 (=> (not res!825407) (not e!1173261))))

(declare-datatypes ((List!20255 0))(
  ( (Nil!20185) (Cons!20185 (h!25586 Rule!7098) (t!171380 List!20255)) )
))
(declare-fun rules!4610 () List!20255)

(declare-fun rule!580 () Rule!7098)

(declare-fun contains!3730 (List!20255 Rule!7098) Bool)

(assert (=> b!1835894 (= res!825407 (contains!3730 rules!4610 rule!580))))

(declare-fun b!1835895 () Bool)

(declare-fun e!1173260 () Bool)

(declare-fun tp_is_empty!8189 () Bool)

(declare-fun tp!519425 () Bool)

(assert (=> b!1835895 (= e!1173260 (and tp_is_empty!8189 tp!519425))))

(declare-fun b!1835896 () Bool)

(declare-fun res!825398 () Bool)

(assert (=> b!1835896 (=> (not res!825398) (not e!1173261))))

(declare-datatypes ((LexerInterface!3278 0))(
  ( (LexerInterfaceExt!3275 (__x!12781 Int)) (Lexer!3276) )
))
(declare-fun thiss!28318 () LexerInterface!3278)

(declare-fun rulesInvariant!2947 (LexerInterface!3278 List!20255) Bool)

(assert (=> b!1835896 (= res!825398 (rulesInvariant!2947 thiss!28318 rules!4610))))

(declare-fun b!1835897 () Bool)

(declare-fun e!1173269 () Bool)

(assert (=> b!1835897 (= e!1173261 (not e!1173269))))

(declare-fun res!825406 () Bool)

(assert (=> b!1835897 (=> res!825406 e!1173269)))

(declare-datatypes ((tuple2!19634 0))(
  ( (tuple2!19635 (_1!11219 Token!6852) (_2!11219 List!20253)) )
))
(declare-datatypes ((Option!4229 0))(
  ( (None!4228) (Some!4228 (v!25811 tuple2!19634)) )
))
(declare-fun lt!712626 () Option!4229)

(assert (=> b!1835897 (= res!825406 (not (= lt!712626 (Some!4228 (tuple2!19635 token!567 suffix!1698)))))))

(declare-fun lt!712622 () Int)

(declare-fun lt!712628 () List!20253)

(declare-fun lt!712627 () TokenValue!3739)

(assert (=> b!1835897 (= lt!712626 (Some!4228 (tuple2!19635 (Token!6853 lt!712627 rule!580 lt!712622 lt!712628) suffix!1698)))))

(declare-fun maxPrefixOneRule!1187 (LexerInterface!3278 Rule!7098 List!20253) Option!4229)

(assert (=> b!1835897 (= lt!712626 (maxPrefixOneRule!1187 thiss!28318 rule!580 input!3681))))

(declare-fun size!16014 (List!20253) Int)

(assert (=> b!1835897 (= lt!712622 (size!16014 lt!712628))))

(declare-fun apply!5437 (TokenValueInjection!7138 BalanceConc!13306) TokenValue!3739)

(declare-fun seqFromList!2606 (List!20253) BalanceConc!13306)

(assert (=> b!1835897 (= lt!712627 (apply!5437 (transformation!3649 rule!580) (seqFromList!2606 lt!712628)))))

(declare-datatypes ((Unit!34879 0))(
  ( (Unit!34880) )
))
(declare-fun lt!712623 () Unit!34879)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!557 (LexerInterface!3278 List!20255 List!20253 List!20253 List!20253 Rule!7098) Unit!34879)

(assert (=> b!1835897 (= lt!712623 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!557 thiss!28318 rules!4610 lt!712628 input!3681 suffix!1698 rule!580))))

(assert (=> b!1835897 (= lt!712628 (list!8203 (charsOf!2292 token!567)))))

(declare-fun b!1835898 () Bool)

(declare-fun res!825402 () Bool)

(declare-fun e!1173272 () Bool)

(assert (=> b!1835898 (=> res!825402 e!1173272)))

(declare-fun rs!808 () List!20255)

(declare-fun rulesValid!1396 (LexerInterface!3278 List!20255) Bool)

(assert (=> b!1835898 (= res!825402 (not (rulesValid!1396 thiss!28318 rs!808)))))

(declare-fun b!1835899 () Bool)

(declare-fun res!825409 () Bool)

(assert (=> b!1835899 (=> res!825409 e!1173272)))

(assert (=> b!1835899 (= res!825409 (not (contains!3730 rs!808 rule!580)))))

(declare-fun b!1835900 () Bool)

(declare-fun res!825403 () Bool)

(assert (=> b!1835900 (=> res!825403 e!1173269)))

(declare-fun matchR!2440 (Regex!4977 List!20253) Bool)

(assert (=> b!1835900 (= res!825403 (not (matchR!2440 (regex!3649 rule!580) lt!712628)))))

(declare-fun b!1835902 () Bool)

(assert (=> b!1835902 (= e!1173269 e!1173272)))

(declare-fun res!825400 () Bool)

(assert (=> b!1835902 (=> res!825400 e!1173272)))

(declare-fun lambda!72208 () Int)

(declare-fun rulesRegex!969 (LexerInterface!3278 List!20255) Regex!4977)

(declare-datatypes ((List!20256 0))(
  ( (Nil!20186) (Cons!20186 (h!25587 Regex!4977) (t!171381 List!20256)) )
))
(declare-fun generalisedUnion!492 (List!20256) Regex!4977)

(declare-fun map!4192 (List!20255 Int) List!20256)

(assert (=> b!1835902 (= res!825400 (not (= (rulesRegex!969 thiss!28318 rules!4610) (generalisedUnion!492 (map!4192 rules!4610 lambda!72208)))))))

(declare-fun lt!712621 () Unit!34879)

(declare-fun lemma!552 (List!20253 Rule!7098 List!20255 List!20253 LexerInterface!3278 Token!6852 List!20255) Unit!34879)

(assert (=> b!1835902 (= lt!712621 (lemma!552 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610))))

(declare-fun b!1835903 () Bool)

(declare-fun res!825408 () Bool)

(assert (=> b!1835903 (=> (not res!825408) (not e!1173261))))

(assert (=> b!1835903 (= res!825408 (= (rule!5839 token!567) rule!580))))

(declare-fun e!1173258 () Bool)

(assert (=> b!1835904 (= e!1173258 (and tp!519421 tp!519427))))

(declare-fun b!1835905 () Bool)

(assert (=> b!1835905 (= e!1173274 (not (not (matchR!2440 (regex!3649 rule!580) lt!712625))))))

(declare-fun ruleValid!1139 (LexerInterface!3278 Rule!7098) Bool)

(assert (=> b!1835905 (ruleValid!1139 thiss!28318 rule!580)))

(declare-fun lt!712624 () Unit!34879)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!658 (LexerInterface!3278 Rule!7098 List!20255) Unit!34879)

(assert (=> b!1835905 (= lt!712624 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!658 thiss!28318 rule!580 rules!4610))))

(declare-fun b!1835906 () Bool)

(declare-fun e!1173262 () Bool)

(declare-fun tp!519420 () Bool)

(declare-fun e!1173265 () Bool)

(declare-fun inv!21 (TokenValue!3739) Bool)

(assert (=> b!1835906 (= e!1173265 (and (inv!21 (value!113663 token!567)) e!1173262 tp!519420))))

(declare-fun b!1835907 () Bool)

(declare-fun e!1173264 () Bool)

(declare-fun tp!519426 () Bool)

(assert (=> b!1835907 (= e!1173264 (and tp_is_empty!8189 tp!519426))))

(declare-fun e!1173273 () Bool)

(declare-fun b!1835908 () Bool)

(declare-fun tp!519424 () Bool)

(declare-fun inv!26256 (String!23027) Bool)

(declare-fun inv!26259 (TokenValueInjection!7138) Bool)

(assert (=> b!1835908 (= e!1173273 (and tp!519424 (inv!26256 (tag!4063 rule!580)) (inv!26259 (transformation!3649 rule!580)) e!1173258))))

(declare-fun e!1173271 () Bool)

(declare-fun b!1835909 () Bool)

(declare-fun tp!519419 () Bool)

(assert (=> b!1835909 (= e!1173262 (and tp!519419 (inv!26256 (tag!4063 (rule!5839 token!567))) (inv!26259 (transformation!3649 (rule!5839 token!567))) e!1173271))))

(declare-fun b!1835910 () Bool)

(declare-fun res!825397 () Bool)

(assert (=> b!1835910 (=> (not res!825397) (not e!1173261))))

(declare-fun maxPrefix!1826 (LexerInterface!3278 List!20255 List!20253) Option!4229)

(assert (=> b!1835910 (= res!825397 (= (maxPrefix!1826 thiss!28318 rules!4610 input!3681) (Some!4228 (tuple2!19635 token!567 suffix!1698))))))

(declare-fun e!1173263 () Bool)

(declare-fun tp!519417 () Bool)

(declare-fun b!1835911 () Bool)

(assert (=> b!1835911 (= e!1173268 (and tp!519417 (inv!26256 (tag!4063 (h!25586 rs!808))) (inv!26259 (transformation!3649 (h!25586 rs!808))) e!1173263))))

(declare-fun b!1835912 () Bool)

(declare-fun res!825405 () Bool)

(assert (=> b!1835912 (=> (not res!825405) (not e!1173261))))

(declare-fun isEmpty!12745 (List!20255) Bool)

(assert (=> b!1835912 (= res!825405 (not (isEmpty!12745 rules!4610)))))

(declare-fun b!1835913 () Bool)

(declare-fun contains!3731 (List!20256 Regex!4977) Bool)

(assert (=> b!1835913 (= e!1173272 (contains!3731 (map!4192 rs!808 lambda!72208) (regex!3649 rule!580)))))

(assert (=> b!1835914 (= e!1173271 (and tp!519416 tp!519428))))

(declare-fun res!825410 () Bool)

(assert (=> start!182434 (=> (not res!825410) (not e!1173261))))

(get-info :version)

(assert (=> start!182434 (= res!825410 ((_ is Lexer!3276) thiss!28318))))

(assert (=> start!182434 e!1173261))

(assert (=> start!182434 e!1173273))

(declare-fun inv!26260 (Token!6852) Bool)

(assert (=> start!182434 (and (inv!26260 token!567) e!1173265)))

(assert (=> start!182434 true))

(assert (=> start!182434 e!1173264))

(assert (=> start!182434 e!1173260))

(declare-fun e!1173267 () Bool)

(assert (=> start!182434 e!1173267))

(assert (=> start!182434 e!1173254))

(declare-fun b!1835901 () Bool)

(declare-fun res!825399 () Bool)

(assert (=> b!1835901 (=> res!825399 e!1173272)))

(assert (=> b!1835901 (= res!825399 (and ((_ is Cons!20185) rs!808) (not (= (h!25586 rs!808) rule!580))))))

(declare-fun e!1173259 () Bool)

(declare-fun e!1173270 () Bool)

(declare-fun tp!519432 () Bool)

(declare-fun b!1835915 () Bool)

(assert (=> b!1835915 (= e!1173270 (and tp!519432 (inv!26256 (tag!4063 (h!25586 rules!4610))) (inv!26259 (transformation!3649 (h!25586 rules!4610))) e!1173259))))

(assert (=> b!1835916 (= e!1173263 (and tp!519431 tp!519430))))

(declare-fun b!1835917 () Bool)

(declare-fun tp!519418 () Bool)

(assert (=> b!1835917 (= e!1173267 (and e!1173270 tp!519418))))

(assert (=> b!1835918 (= e!1173259 (and tp!519422 tp!519423))))

(assert (= (and start!182434 res!825410) b!1835912))

(assert (= (and b!1835912 res!825405) b!1835896))

(assert (= (and b!1835896 res!825398) b!1835894))

(assert (= (and b!1835894 res!825407) b!1835910))

(assert (= (and b!1835910 res!825397) b!1835903))

(assert (= (and b!1835903 res!825408) b!1835892))

(assert (= (and b!1835892 res!825404) b!1835905))

(assert (= (and b!1835892 res!825401) b!1835897))

(assert (= (and b!1835897 (not res!825406)) b!1835900))

(assert (= (and b!1835900 (not res!825403)) b!1835902))

(assert (= (and b!1835902 (not res!825400)) b!1835898))

(assert (= (and b!1835898 (not res!825402)) b!1835899))

(assert (= (and b!1835899 (not res!825409)) b!1835901))

(assert (= (and b!1835901 (not res!825399)) b!1835913))

(assert (= b!1835908 b!1835904))

(assert (= start!182434 b!1835908))

(assert (= b!1835909 b!1835914))

(assert (= b!1835906 b!1835909))

(assert (= start!182434 b!1835906))

(assert (= (and start!182434 ((_ is Cons!20183) suffix!1698)) b!1835907))

(assert (= (and start!182434 ((_ is Cons!20183) input!3681)) b!1835895))

(assert (= b!1835915 b!1835918))

(assert (= b!1835917 b!1835915))

(assert (= (and start!182434 ((_ is Cons!20185) rules!4610)) b!1835917))

(assert (= b!1835911 b!1835916))

(assert (= b!1835893 b!1835911))

(assert (= (and start!182434 ((_ is Cons!20185) rs!808)) b!1835893))

(declare-fun m!2263665 () Bool)

(assert (=> b!1835899 m!2263665))

(declare-fun m!2263667 () Bool)

(assert (=> b!1835915 m!2263667))

(declare-fun m!2263669 () Bool)

(assert (=> b!1835915 m!2263669))

(declare-fun m!2263671 () Bool)

(assert (=> b!1835892 m!2263671))

(declare-fun m!2263673 () Bool)

(assert (=> b!1835892 m!2263673))

(assert (=> b!1835892 m!2263673))

(declare-fun m!2263675 () Bool)

(assert (=> b!1835892 m!2263675))

(declare-fun m!2263677 () Bool)

(assert (=> b!1835912 m!2263677))

(declare-fun m!2263679 () Bool)

(assert (=> b!1835900 m!2263679))

(declare-fun m!2263681 () Bool)

(assert (=> b!1835911 m!2263681))

(declare-fun m!2263683 () Bool)

(assert (=> b!1835911 m!2263683))

(declare-fun m!2263685 () Bool)

(assert (=> b!1835909 m!2263685))

(declare-fun m!2263687 () Bool)

(assert (=> b!1835909 m!2263687))

(declare-fun m!2263689 () Bool)

(assert (=> b!1835898 m!2263689))

(declare-fun m!2263691 () Bool)

(assert (=> b!1835896 m!2263691))

(declare-fun m!2263693 () Bool)

(assert (=> b!1835902 m!2263693))

(declare-fun m!2263695 () Bool)

(assert (=> b!1835902 m!2263695))

(assert (=> b!1835902 m!2263695))

(declare-fun m!2263697 () Bool)

(assert (=> b!1835902 m!2263697))

(declare-fun m!2263699 () Bool)

(assert (=> b!1835902 m!2263699))

(declare-fun m!2263701 () Bool)

(assert (=> b!1835897 m!2263701))

(declare-fun m!2263703 () Bool)

(assert (=> b!1835897 m!2263703))

(assert (=> b!1835897 m!2263673))

(assert (=> b!1835897 m!2263675))

(declare-fun m!2263705 () Bool)

(assert (=> b!1835897 m!2263705))

(declare-fun m!2263707 () Bool)

(assert (=> b!1835897 m!2263707))

(declare-fun m!2263709 () Bool)

(assert (=> b!1835897 m!2263709))

(assert (=> b!1835897 m!2263707))

(assert (=> b!1835897 m!2263673))

(declare-fun m!2263711 () Bool)

(assert (=> b!1835913 m!2263711))

(assert (=> b!1835913 m!2263711))

(declare-fun m!2263713 () Bool)

(assert (=> b!1835913 m!2263713))

(declare-fun m!2263715 () Bool)

(assert (=> start!182434 m!2263715))

(declare-fun m!2263717 () Bool)

(assert (=> b!1835910 m!2263717))

(declare-fun m!2263719 () Bool)

(assert (=> b!1835908 m!2263719))

(declare-fun m!2263721 () Bool)

(assert (=> b!1835908 m!2263721))

(declare-fun m!2263723 () Bool)

(assert (=> b!1835905 m!2263723))

(declare-fun m!2263725 () Bool)

(assert (=> b!1835905 m!2263725))

(declare-fun m!2263727 () Bool)

(assert (=> b!1835905 m!2263727))

(declare-fun m!2263729 () Bool)

(assert (=> b!1835894 m!2263729))

(declare-fun m!2263731 () Bool)

(assert (=> b!1835906 m!2263731))

(check-sat (not b!1835894) (not b_next!52141) (not start!182434) (not b!1835912) (not b!1835899) (not b_next!52149) b_and!143319 b_and!143315 (not b_next!52151) b_and!143327 (not b!1835892) (not b!1835911) (not b!1835905) (not b!1835900) (not b_next!52147) (not b!1835915) (not b_next!52145) b_and!143323 (not b!1835902) (not b_next!52143) (not b!1835907) (not b!1835896) (not b!1835917) b_and!143313 b_and!143317 (not b!1835913) b_and!143325 tp_is_empty!8189 (not b!1835897) (not b!1835910) b_and!143321 (not b!1835908) (not b_next!52153) (not b!1835893) (not b!1835909) (not b_next!52139) (not b!1835898) (not b!1835906) (not b!1835895))
(check-sat (not b_next!52147) (not b_next!52145) (not b_next!52141) (not b_next!52149) b_and!143319 b_and!143325 (not b_next!52139) b_and!143315 (not b_next!52151) b_and!143327 b_and!143323 (not b_next!52143) b_and!143313 b_and!143317 b_and!143321 (not b_next!52153))
(get-model)

(declare-fun b!1835929 () Bool)

(declare-fun e!1173282 () Bool)

(declare-fun inv!16 (TokenValue!3739) Bool)

(assert (=> b!1835929 (= e!1173282 (inv!16 (value!113663 token!567)))))

(declare-fun b!1835930 () Bool)

(declare-fun e!1173283 () Bool)

(assert (=> b!1835930 (= e!1173282 e!1173283)))

(declare-fun c!299478 () Bool)

(assert (=> b!1835930 (= c!299478 ((_ is IntegerValue!11218) (value!113663 token!567)))))

(declare-fun b!1835931 () Bool)

(declare-fun inv!17 (TokenValue!3739) Bool)

(assert (=> b!1835931 (= e!1173283 (inv!17 (value!113663 token!567)))))

(declare-fun b!1835932 () Bool)

(declare-fun e!1173281 () Bool)

(declare-fun inv!15 (TokenValue!3739) Bool)

(assert (=> b!1835932 (= e!1173281 (inv!15 (value!113663 token!567)))))

(declare-fun b!1835933 () Bool)

(declare-fun res!825415 () Bool)

(assert (=> b!1835933 (=> res!825415 e!1173281)))

(assert (=> b!1835933 (= res!825415 (not ((_ is IntegerValue!11219) (value!113663 token!567))))))

(assert (=> b!1835933 (= e!1173283 e!1173281)))

(declare-fun d!561319 () Bool)

(declare-fun c!299479 () Bool)

(assert (=> d!561319 (= c!299479 ((_ is IntegerValue!11217) (value!113663 token!567)))))

(assert (=> d!561319 (= (inv!21 (value!113663 token!567)) e!1173282)))

(assert (= (and d!561319 c!299479) b!1835929))

(assert (= (and d!561319 (not c!299479)) b!1835930))

(assert (= (and b!1835930 c!299478) b!1835931))

(assert (= (and b!1835930 (not c!299478)) b!1835933))

(assert (= (and b!1835933 (not res!825415)) b!1835932))

(declare-fun m!2263733 () Bool)

(assert (=> b!1835929 m!2263733))

(declare-fun m!2263735 () Bool)

(assert (=> b!1835931 m!2263735))

(declare-fun m!2263737 () Bool)

(assert (=> b!1835932 m!2263737))

(assert (=> b!1835906 d!561319))

(declare-fun d!561321 () Bool)

(declare-fun res!825420 () Bool)

(declare-fun e!1173286 () Bool)

(assert (=> d!561321 (=> (not res!825420) (not e!1173286))))

(declare-fun isEmpty!12748 (List!20253) Bool)

(assert (=> d!561321 (= res!825420 (not (isEmpty!12748 (originalCharacters!4457 token!567))))))

(assert (=> d!561321 (= (inv!26260 token!567) e!1173286)))

(declare-fun b!1835938 () Bool)

(declare-fun res!825421 () Bool)

(assert (=> b!1835938 (=> (not res!825421) (not e!1173286))))

(declare-fun dynLambda!10057 (Int TokenValue!3739) BalanceConc!13306)

(assert (=> b!1835938 (= res!825421 (= (originalCharacters!4457 token!567) (list!8203 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567)))))))

(declare-fun b!1835939 () Bool)

(assert (=> b!1835939 (= e!1173286 (= (size!16013 token!567) (size!16014 (originalCharacters!4457 token!567))))))

(assert (= (and d!561321 res!825420) b!1835938))

(assert (= (and b!1835938 res!825421) b!1835939))

(declare-fun b_lambda!60889 () Bool)

(assert (=> (not b_lambda!60889) (not b!1835938)))

(declare-fun tb!112505 () Bool)

(declare-fun t!171383 () Bool)

(assert (=> (and b!1835904 (= (toChars!5059 (transformation!3649 rule!580)) (toChars!5059 (transformation!3649 (rule!5839 token!567)))) t!171383) tb!112505))

(declare-fun b!1835944 () Bool)

(declare-fun e!1173289 () Bool)

(declare-fun tp!519435 () Bool)

(declare-fun inv!26263 (Conc!6681) Bool)

(assert (=> b!1835944 (= e!1173289 (and (inv!26263 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567)))) tp!519435))))

(declare-fun result!135268 () Bool)

(declare-fun inv!26264 (BalanceConc!13306) Bool)

(assert (=> tb!112505 (= result!135268 (and (inv!26264 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567))) e!1173289))))

(assert (= tb!112505 b!1835944))

(declare-fun m!2263739 () Bool)

(assert (=> b!1835944 m!2263739))

(declare-fun m!2263741 () Bool)

(assert (=> tb!112505 m!2263741))

(assert (=> b!1835938 t!171383))

(declare-fun b_and!143329 () Bool)

(assert (= b_and!143315 (and (=> t!171383 result!135268) b_and!143329)))

(declare-fun t!171385 () Bool)

(declare-fun tb!112507 () Bool)

(assert (=> (and b!1835914 (= (toChars!5059 (transformation!3649 (rule!5839 token!567))) (toChars!5059 (transformation!3649 (rule!5839 token!567)))) t!171385) tb!112507))

(declare-fun result!135272 () Bool)

(assert (= result!135272 result!135268))

(assert (=> b!1835938 t!171385))

(declare-fun b_and!143331 () Bool)

(assert (= b_and!143319 (and (=> t!171385 result!135272) b_and!143331)))

(declare-fun t!171387 () Bool)

(declare-fun tb!112509 () Bool)

(assert (=> (and b!1835918 (= (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toChars!5059 (transformation!3649 (rule!5839 token!567)))) t!171387) tb!112509))

(declare-fun result!135274 () Bool)

(assert (= result!135274 result!135268))

(assert (=> b!1835938 t!171387))

(declare-fun b_and!143333 () Bool)

(assert (= b_and!143323 (and (=> t!171387 result!135274) b_and!143333)))

(declare-fun t!171389 () Bool)

(declare-fun tb!112511 () Bool)

(assert (=> (and b!1835916 (= (toChars!5059 (transformation!3649 (h!25586 rs!808))) (toChars!5059 (transformation!3649 (rule!5839 token!567)))) t!171389) tb!112511))

(declare-fun result!135276 () Bool)

(assert (= result!135276 result!135268))

(assert (=> b!1835938 t!171389))

(declare-fun b_and!143335 () Bool)

(assert (= b_and!143327 (and (=> t!171389 result!135276) b_and!143335)))

(declare-fun m!2263743 () Bool)

(assert (=> d!561321 m!2263743))

(declare-fun m!2263745 () Bool)

(assert (=> b!1835938 m!2263745))

(assert (=> b!1835938 m!2263745))

(declare-fun m!2263747 () Bool)

(assert (=> b!1835938 m!2263747))

(declare-fun m!2263749 () Bool)

(assert (=> b!1835939 m!2263749))

(assert (=> start!182434 d!561321))

(declare-fun d!561323 () Bool)

(declare-fun list!8205 (Conc!6681) List!20253)

(assert (=> d!561323 (= (list!8203 (charsOf!2292 token!567)) (list!8205 (c!299473 (charsOf!2292 token!567))))))

(declare-fun bs!408288 () Bool)

(assert (= bs!408288 d!561323))

(declare-fun m!2263751 () Bool)

(assert (=> bs!408288 m!2263751))

(assert (=> b!1835897 d!561323))

(declare-fun b!1836027 () Bool)

(declare-fun res!825474 () Bool)

(declare-fun e!1173335 () Bool)

(assert (=> b!1836027 (=> (not res!825474) (not e!1173335))))

(declare-fun lt!712672 () Option!4229)

(declare-fun get!6231 (Option!4229) tuple2!19634)

(assert (=> b!1836027 (= res!825474 (= (rule!5839 (_1!11219 (get!6231 lt!712672))) rule!580))))

(declare-fun b!1836028 () Bool)

(declare-fun res!825477 () Bool)

(assert (=> b!1836028 (=> (not res!825477) (not e!1173335))))

(assert (=> b!1836028 (= res!825477 (= (value!113663 (_1!11219 (get!6231 lt!712672))) (apply!5437 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))) (seqFromList!2606 (originalCharacters!4457 (_1!11219 (get!6231 lt!712672)))))))))

(declare-fun b!1836029 () Bool)

(assert (=> b!1836029 (= e!1173335 (= (size!16013 (_1!11219 (get!6231 lt!712672))) (size!16014 (originalCharacters!4457 (_1!11219 (get!6231 lt!712672))))))))

(declare-fun b!1836030 () Bool)

(declare-fun res!825473 () Bool)

(assert (=> b!1836030 (=> (not res!825473) (not e!1173335))))

(assert (=> b!1836030 (= res!825473 (= (++!5473 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672)))) (_2!11219 (get!6231 lt!712672))) input!3681))))

(declare-fun b!1836031 () Bool)

(declare-fun e!1173336 () Bool)

(assert (=> b!1836031 (= e!1173336 e!1173335)))

(declare-fun res!825475 () Bool)

(assert (=> b!1836031 (=> (not res!825475) (not e!1173335))))

(assert (=> b!1836031 (= res!825475 (matchR!2440 (regex!3649 rule!580) (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))))))

(declare-fun d!561325 () Bool)

(assert (=> d!561325 e!1173336))

(declare-fun res!825471 () Bool)

(assert (=> d!561325 (=> res!825471 e!1173336)))

(declare-fun isEmpty!12749 (Option!4229) Bool)

(assert (=> d!561325 (= res!825471 (isEmpty!12749 lt!712672))))

(declare-fun e!1173334 () Option!4229)

(assert (=> d!561325 (= lt!712672 e!1173334)))

(declare-fun c!299494 () Bool)

(declare-datatypes ((tuple2!19638 0))(
  ( (tuple2!19639 (_1!11221 List!20253) (_2!11221 List!20253)) )
))
(declare-fun lt!712670 () tuple2!19638)

(assert (=> d!561325 (= c!299494 (isEmpty!12748 (_1!11221 lt!712670)))))

(declare-fun findLongestMatch!452 (Regex!4977 List!20253) tuple2!19638)

(assert (=> d!561325 (= lt!712670 (findLongestMatch!452 (regex!3649 rule!580) input!3681))))

(assert (=> d!561325 (ruleValid!1139 thiss!28318 rule!580)))

(assert (=> d!561325 (= (maxPrefixOneRule!1187 thiss!28318 rule!580 input!3681) lt!712672)))

(declare-fun b!1836032 () Bool)

(assert (=> b!1836032 (= e!1173334 None!4228)))

(declare-fun b!1836033 () Bool)

(declare-fun size!16018 (BalanceConc!13306) Int)

(assert (=> b!1836033 (= e!1173334 (Some!4228 (tuple2!19635 (Token!6853 (apply!5437 (transformation!3649 rule!580) (seqFromList!2606 (_1!11221 lt!712670))) rule!580 (size!16018 (seqFromList!2606 (_1!11221 lt!712670))) (_1!11221 lt!712670)) (_2!11221 lt!712670))))))

(declare-fun lt!712669 () Unit!34879)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!509 (Regex!4977 List!20253) Unit!34879)

(assert (=> b!1836033 (= lt!712669 (longestMatchIsAcceptedByMatchOrIsEmpty!509 (regex!3649 rule!580) input!3681))))

(declare-fun res!825476 () Bool)

(declare-fun findLongestMatchInner!525 (Regex!4977 List!20253 Int List!20253 List!20253 Int) tuple2!19638)

(assert (=> b!1836033 (= res!825476 (isEmpty!12748 (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))))))

(declare-fun e!1173337 () Bool)

(assert (=> b!1836033 (=> res!825476 e!1173337)))

(assert (=> b!1836033 e!1173337))

(declare-fun lt!712671 () Unit!34879)

(assert (=> b!1836033 (= lt!712671 lt!712669)))

(declare-fun lt!712673 () Unit!34879)

(declare-fun lemmaSemiInverse!739 (TokenValueInjection!7138 BalanceConc!13306) Unit!34879)

(assert (=> b!1836033 (= lt!712673 (lemmaSemiInverse!739 (transformation!3649 rule!580) (seqFromList!2606 (_1!11221 lt!712670))))))

(declare-fun b!1836034 () Bool)

(declare-fun res!825472 () Bool)

(assert (=> b!1836034 (=> (not res!825472) (not e!1173335))))

(assert (=> b!1836034 (= res!825472 (< (size!16014 (_2!11219 (get!6231 lt!712672))) (size!16014 input!3681)))))

(declare-fun b!1836035 () Bool)

(assert (=> b!1836035 (= e!1173337 (matchR!2440 (regex!3649 rule!580) (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))))))

(assert (= (and d!561325 c!299494) b!1836032))

(assert (= (and d!561325 (not c!299494)) b!1836033))

(assert (= (and b!1836033 (not res!825476)) b!1836035))

(assert (= (and d!561325 (not res!825471)) b!1836031))

(assert (= (and b!1836031 res!825475) b!1836030))

(assert (= (and b!1836030 res!825473) b!1836034))

(assert (= (and b!1836034 res!825472) b!1836027))

(assert (= (and b!1836027 res!825474) b!1836028))

(assert (= (and b!1836028 res!825477) b!1836029))

(declare-fun m!2263843 () Bool)

(assert (=> b!1836031 m!2263843))

(declare-fun m!2263845 () Bool)

(assert (=> b!1836031 m!2263845))

(assert (=> b!1836031 m!2263845))

(declare-fun m!2263847 () Bool)

(assert (=> b!1836031 m!2263847))

(assert (=> b!1836031 m!2263847))

(declare-fun m!2263849 () Bool)

(assert (=> b!1836031 m!2263849))

(declare-fun m!2263851 () Bool)

(assert (=> b!1836033 m!2263851))

(declare-fun m!2263853 () Bool)

(assert (=> b!1836033 m!2263853))

(declare-fun m!2263855 () Bool)

(assert (=> b!1836033 m!2263855))

(assert (=> b!1836033 m!2263851))

(declare-fun m!2263857 () Bool)

(assert (=> b!1836033 m!2263857))

(assert (=> b!1836033 m!2263851))

(declare-fun m!2263859 () Bool)

(assert (=> b!1836033 m!2263859))

(declare-fun m!2263861 () Bool)

(assert (=> b!1836033 m!2263861))

(declare-fun m!2263863 () Bool)

(assert (=> b!1836033 m!2263863))

(assert (=> b!1836033 m!2263851))

(declare-fun m!2263865 () Bool)

(assert (=> b!1836033 m!2263865))

(assert (=> b!1836033 m!2263861))

(assert (=> b!1836033 m!2263863))

(declare-fun m!2263867 () Bool)

(assert (=> b!1836033 m!2263867))

(assert (=> b!1836027 m!2263843))

(assert (=> b!1836034 m!2263843))

(declare-fun m!2263869 () Bool)

(assert (=> b!1836034 m!2263869))

(assert (=> b!1836034 m!2263863))

(assert (=> b!1836030 m!2263843))

(assert (=> b!1836030 m!2263845))

(assert (=> b!1836030 m!2263845))

(assert (=> b!1836030 m!2263847))

(assert (=> b!1836030 m!2263847))

(declare-fun m!2263871 () Bool)

(assert (=> b!1836030 m!2263871))

(assert (=> b!1836028 m!2263843))

(declare-fun m!2263873 () Bool)

(assert (=> b!1836028 m!2263873))

(assert (=> b!1836028 m!2263873))

(declare-fun m!2263875 () Bool)

(assert (=> b!1836028 m!2263875))

(assert (=> b!1836029 m!2263843))

(declare-fun m!2263877 () Bool)

(assert (=> b!1836029 m!2263877))

(declare-fun m!2263879 () Bool)

(assert (=> d!561325 m!2263879))

(declare-fun m!2263881 () Bool)

(assert (=> d!561325 m!2263881))

(declare-fun m!2263883 () Bool)

(assert (=> d!561325 m!2263883))

(assert (=> d!561325 m!2263725))

(assert (=> b!1836035 m!2263861))

(assert (=> b!1836035 m!2263863))

(assert (=> b!1836035 m!2263861))

(assert (=> b!1836035 m!2263863))

(assert (=> b!1836035 m!2263867))

(declare-fun m!2263885 () Bool)

(assert (=> b!1836035 m!2263885))

(assert (=> b!1835897 d!561325))

(declare-fun d!561345 () Bool)

(declare-fun dynLambda!10058 (Int BalanceConc!13306) TokenValue!3739)

(assert (=> d!561345 (= (apply!5437 (transformation!3649 rule!580) (seqFromList!2606 lt!712628)) (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 lt!712628)))))

(declare-fun b_lambda!60897 () Bool)

(assert (=> (not b_lambda!60897) (not d!561345)))

(declare-fun t!171407 () Bool)

(declare-fun tb!112529 () Bool)

(assert (=> (and b!1835904 (= (toValue!5200 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 rule!580))) t!171407) tb!112529))

(declare-fun result!135298 () Bool)

(assert (=> tb!112529 (= result!135298 (inv!21 (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 lt!712628))))))

(declare-fun m!2263889 () Bool)

(assert (=> tb!112529 m!2263889))

(assert (=> d!561345 t!171407))

(declare-fun b_and!143353 () Bool)

(assert (= b_and!143313 (and (=> t!171407 result!135298) b_and!143353)))

(declare-fun t!171409 () Bool)

(declare-fun tb!112531 () Bool)

(assert (=> (and b!1835914 (= (toValue!5200 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 rule!580))) t!171409) tb!112531))

(declare-fun result!135302 () Bool)

(assert (= result!135302 result!135298))

(assert (=> d!561345 t!171409))

(declare-fun b_and!143355 () Bool)

(assert (= b_and!143317 (and (=> t!171409 result!135302) b_and!143355)))

(declare-fun t!171411 () Bool)

(declare-fun tb!112533 () Bool)

(assert (=> (and b!1835918 (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 rule!580))) t!171411) tb!112533))

(declare-fun result!135304 () Bool)

(assert (= result!135304 result!135298))

(assert (=> d!561345 t!171411))

(declare-fun b_and!143357 () Bool)

(assert (= b_and!143321 (and (=> t!171411 result!135304) b_and!143357)))

(declare-fun tb!112535 () Bool)

(declare-fun t!171413 () Bool)

(assert (=> (and b!1835916 (= (toValue!5200 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 rule!580))) t!171413) tb!112535))

(declare-fun result!135306 () Bool)

(assert (= result!135306 result!135298))

(assert (=> d!561345 t!171413))

(declare-fun b_and!143359 () Bool)

(assert (= b_and!143325 (and (=> t!171413 result!135306) b_and!143359)))

(assert (=> d!561345 m!2263707))

(declare-fun m!2263891 () Bool)

(assert (=> d!561345 m!2263891))

(assert (=> b!1835897 d!561345))

(declare-fun d!561349 () Bool)

(declare-fun lt!712679 () Int)

(assert (=> d!561349 (>= lt!712679 0)))

(declare-fun e!1173343 () Int)

(assert (=> d!561349 (= lt!712679 e!1173343)))

(declare-fun c!299497 () Bool)

(assert (=> d!561349 (= c!299497 ((_ is Nil!20183) lt!712628))))

(assert (=> d!561349 (= (size!16014 lt!712628) lt!712679)))

(declare-fun b!1836042 () Bool)

(assert (=> b!1836042 (= e!1173343 0)))

(declare-fun b!1836043 () Bool)

(assert (=> b!1836043 (= e!1173343 (+ 1 (size!16014 (t!171378 lt!712628))))))

(assert (= (and d!561349 c!299497) b!1836042))

(assert (= (and d!561349 (not c!299497)) b!1836043))

(declare-fun m!2263895 () Bool)

(assert (=> b!1836043 m!2263895))

(assert (=> b!1835897 d!561349))

(declare-fun d!561353 () Bool)

(declare-fun fromListB!1196 (List!20253) BalanceConc!13306)

(assert (=> d!561353 (= (seqFromList!2606 lt!712628) (fromListB!1196 lt!712628))))

(declare-fun bs!408292 () Bool)

(assert (= bs!408292 d!561353))

(declare-fun m!2263897 () Bool)

(assert (=> bs!408292 m!2263897))

(assert (=> b!1835897 d!561353))

(declare-fun d!561355 () Bool)

(assert (=> d!561355 (= (maxPrefixOneRule!1187 thiss!28318 rule!580 input!3681) (Some!4228 (tuple2!19635 (Token!6853 (apply!5437 (transformation!3649 rule!580) (seqFromList!2606 lt!712628)) rule!580 (size!16014 lt!712628) lt!712628) suffix!1698)))))

(declare-fun lt!712692 () Unit!34879)

(declare-fun choose!11554 (LexerInterface!3278 List!20255 List!20253 List!20253 List!20253 Rule!7098) Unit!34879)

(assert (=> d!561355 (= lt!712692 (choose!11554 thiss!28318 rules!4610 lt!712628 input!3681 suffix!1698 rule!580))))

(assert (=> d!561355 (not (isEmpty!12745 rules!4610))))

(assert (=> d!561355 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!557 thiss!28318 rules!4610 lt!712628 input!3681 suffix!1698 rule!580) lt!712692)))

(declare-fun bs!408296 () Bool)

(assert (= bs!408296 d!561355))

(assert (=> bs!408296 m!2263707))

(assert (=> bs!408296 m!2263709))

(assert (=> bs!408296 m!2263677))

(declare-fun m!2263935 () Bool)

(assert (=> bs!408296 m!2263935))

(assert (=> bs!408296 m!2263705))

(assert (=> bs!408296 m!2263703))

(assert (=> bs!408296 m!2263707))

(assert (=> b!1835897 d!561355))

(declare-fun d!561367 () Bool)

(declare-fun lt!712695 () BalanceConc!13306)

(assert (=> d!561367 (= (list!8203 lt!712695) (originalCharacters!4457 token!567))))

(assert (=> d!561367 (= lt!712695 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567)))))

(assert (=> d!561367 (= (charsOf!2292 token!567) lt!712695)))

(declare-fun b_lambda!60899 () Bool)

(assert (=> (not b_lambda!60899) (not d!561367)))

(assert (=> d!561367 t!171383))

(declare-fun b_and!143361 () Bool)

(assert (= b_and!143329 (and (=> t!171383 result!135268) b_and!143361)))

(assert (=> d!561367 t!171385))

(declare-fun b_and!143363 () Bool)

(assert (= b_and!143331 (and (=> t!171385 result!135272) b_and!143363)))

(assert (=> d!561367 t!171387))

(declare-fun b_and!143365 () Bool)

(assert (= b_and!143333 (and (=> t!171387 result!135274) b_and!143365)))

(assert (=> d!561367 t!171389))

(declare-fun b_and!143367 () Bool)

(assert (= b_and!143335 (and (=> t!171389 result!135276) b_and!143367)))

(declare-fun m!2263937 () Bool)

(assert (=> d!561367 m!2263937))

(assert (=> d!561367 m!2263745))

(assert (=> b!1835897 d!561367))

(declare-fun d!561369 () Bool)

(declare-fun res!825518 () Bool)

(declare-fun e!1173377 () Bool)

(assert (=> d!561369 (=> (not res!825518) (not e!1173377))))

(assert (=> d!561369 (= res!825518 (rulesValid!1396 thiss!28318 rules!4610))))

(assert (=> d!561369 (= (rulesInvariant!2947 thiss!28318 rules!4610) e!1173377)))

(declare-fun b!1836108 () Bool)

(declare-datatypes ((List!20257 0))(
  ( (Nil!20187) (Cons!20187 (h!25588 String!23027) (t!171430 List!20257)) )
))
(declare-fun noDuplicateTag!1393 (LexerInterface!3278 List!20255 List!20257) Bool)

(assert (=> b!1836108 (= e!1173377 (noDuplicateTag!1393 thiss!28318 rules!4610 Nil!20187))))

(assert (= (and d!561369 res!825518) b!1836108))

(declare-fun m!2263939 () Bool)

(assert (=> d!561369 m!2263939))

(declare-fun m!2263941 () Bool)

(assert (=> b!1836108 m!2263941))

(assert (=> b!1835896 d!561369))

(declare-fun b!1836119 () Bool)

(declare-fun res!825524 () Bool)

(declare-fun e!1173382 () Bool)

(assert (=> b!1836119 (=> (not res!825524) (not e!1173382))))

(declare-fun lt!712698 () List!20253)

(assert (=> b!1836119 (= res!825524 (= (size!16014 lt!712698) (+ (size!16014 lt!712625) (size!16014 suffix!1698))))))

(declare-fun b!1836117 () Bool)

(declare-fun e!1173383 () List!20253)

(assert (=> b!1836117 (= e!1173383 suffix!1698)))

(declare-fun d!561371 () Bool)

(assert (=> d!561371 e!1173382))

(declare-fun res!825523 () Bool)

(assert (=> d!561371 (=> (not res!825523) (not e!1173382))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3002 (List!20253) (InoxSet C!10128))

(assert (=> d!561371 (= res!825523 (= (content!3002 lt!712698) ((_ map or) (content!3002 lt!712625) (content!3002 suffix!1698))))))

(assert (=> d!561371 (= lt!712698 e!1173383)))

(declare-fun c!299512 () Bool)

(assert (=> d!561371 (= c!299512 ((_ is Nil!20183) lt!712625))))

(assert (=> d!561371 (= (++!5473 lt!712625 suffix!1698) lt!712698)))

(declare-fun b!1836118 () Bool)

(assert (=> b!1836118 (= e!1173383 (Cons!20183 (h!25584 lt!712625) (++!5473 (t!171378 lt!712625) suffix!1698)))))

(declare-fun b!1836120 () Bool)

(assert (=> b!1836120 (= e!1173382 (or (not (= suffix!1698 Nil!20183)) (= lt!712698 lt!712625)))))

(assert (= (and d!561371 c!299512) b!1836117))

(assert (= (and d!561371 (not c!299512)) b!1836118))

(assert (= (and d!561371 res!825523) b!1836119))

(assert (= (and b!1836119 res!825524) b!1836120))

(declare-fun m!2263943 () Bool)

(assert (=> b!1836119 m!2263943))

(declare-fun m!2263945 () Bool)

(assert (=> b!1836119 m!2263945))

(declare-fun m!2263947 () Bool)

(assert (=> b!1836119 m!2263947))

(declare-fun m!2263949 () Bool)

(assert (=> d!561371 m!2263949))

(declare-fun m!2263951 () Bool)

(assert (=> d!561371 m!2263951))

(declare-fun m!2263953 () Bool)

(assert (=> d!561371 m!2263953))

(declare-fun m!2263955 () Bool)

(assert (=> b!1836118 m!2263955))

(assert (=> b!1835892 d!561371))

(assert (=> b!1835892 d!561323))

(assert (=> b!1835892 d!561367))

(declare-fun b!1836149 () Bool)

(declare-fun e!1173402 () Bool)

(declare-fun e!1173400 () Bool)

(assert (=> b!1836149 (= e!1173402 e!1173400)))

(declare-fun res!825545 () Bool)

(assert (=> b!1836149 (=> res!825545 e!1173400)))

(declare-fun call!114949 () Bool)

(assert (=> b!1836149 (= res!825545 call!114949)))

(declare-fun b!1836150 () Bool)

(declare-fun res!825541 () Bool)

(declare-fun e!1173403 () Bool)

(assert (=> b!1836150 (=> (not res!825541) (not e!1173403))))

(assert (=> b!1836150 (= res!825541 (not call!114949))))

(declare-fun b!1836151 () Bool)

(declare-fun res!825543 () Bool)

(assert (=> b!1836151 (=> (not res!825543) (not e!1173403))))

(declare-fun tail!2754 (List!20253) List!20253)

(assert (=> b!1836151 (= res!825543 (isEmpty!12748 (tail!2754 lt!712625)))))

(declare-fun b!1836152 () Bool)

(declare-fun e!1173398 () Bool)

(declare-fun lt!712701 () Bool)

(assert (=> b!1836152 (= e!1173398 (= lt!712701 call!114949))))

(declare-fun b!1836153 () Bool)

(declare-fun res!825544 () Bool)

(declare-fun e!1173399 () Bool)

(assert (=> b!1836153 (=> res!825544 e!1173399)))

(assert (=> b!1836153 (= res!825544 (not ((_ is ElementMatch!4977) (regex!3649 rule!580))))))

(declare-fun e!1173401 () Bool)

(assert (=> b!1836153 (= e!1173401 e!1173399)))

(declare-fun b!1836154 () Bool)

(declare-fun head!4295 (List!20253) C!10128)

(assert (=> b!1836154 (= e!1173403 (= (head!4295 lt!712625) (c!299472 (regex!3649 rule!580))))))

(declare-fun b!1836155 () Bool)

(declare-fun e!1173404 () Bool)

(declare-fun derivativeStep!1317 (Regex!4977 C!10128) Regex!4977)

(assert (=> b!1836155 (= e!1173404 (matchR!2440 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712625)) (tail!2754 lt!712625)))))

(declare-fun b!1836157 () Bool)

(declare-fun nullable!1553 (Regex!4977) Bool)

(assert (=> b!1836157 (= e!1173404 (nullable!1553 (regex!3649 rule!580)))))

(declare-fun b!1836158 () Bool)

(assert (=> b!1836158 (= e!1173399 e!1173402)))

(declare-fun res!825547 () Bool)

(assert (=> b!1836158 (=> (not res!825547) (not e!1173402))))

(assert (=> b!1836158 (= res!825547 (not lt!712701))))

(declare-fun b!1836159 () Bool)

(assert (=> b!1836159 (= e!1173398 e!1173401)))

(declare-fun c!299521 () Bool)

(assert (=> b!1836159 (= c!299521 ((_ is EmptyLang!4977) (regex!3649 rule!580)))))

(declare-fun b!1836160 () Bool)

(declare-fun res!825548 () Bool)

(assert (=> b!1836160 (=> res!825548 e!1173399)))

(assert (=> b!1836160 (= res!825548 e!1173403)))

(declare-fun res!825542 () Bool)

(assert (=> b!1836160 (=> (not res!825542) (not e!1173403))))

(assert (=> b!1836160 (= res!825542 lt!712701)))

(declare-fun bm!114944 () Bool)

(assert (=> bm!114944 (= call!114949 (isEmpty!12748 lt!712625))))

(declare-fun b!1836156 () Bool)

(assert (=> b!1836156 (= e!1173401 (not lt!712701))))

(declare-fun d!561373 () Bool)

(assert (=> d!561373 e!1173398))

(declare-fun c!299519 () Bool)

(assert (=> d!561373 (= c!299519 ((_ is EmptyExpr!4977) (regex!3649 rule!580)))))

(assert (=> d!561373 (= lt!712701 e!1173404)))

(declare-fun c!299520 () Bool)

(assert (=> d!561373 (= c!299520 (isEmpty!12748 lt!712625))))

(declare-fun validRegex!2035 (Regex!4977) Bool)

(assert (=> d!561373 (validRegex!2035 (regex!3649 rule!580))))

(assert (=> d!561373 (= (matchR!2440 (regex!3649 rule!580) lt!712625) lt!712701)))

(declare-fun b!1836161 () Bool)

(assert (=> b!1836161 (= e!1173400 (not (= (head!4295 lt!712625) (c!299472 (regex!3649 rule!580)))))))

(declare-fun b!1836162 () Bool)

(declare-fun res!825546 () Bool)

(assert (=> b!1836162 (=> res!825546 e!1173400)))

(assert (=> b!1836162 (= res!825546 (not (isEmpty!12748 (tail!2754 lt!712625))))))

(assert (= (and d!561373 c!299520) b!1836157))

(assert (= (and d!561373 (not c!299520)) b!1836155))

(assert (= (and d!561373 c!299519) b!1836152))

(assert (= (and d!561373 (not c!299519)) b!1836159))

(assert (= (and b!1836159 c!299521) b!1836156))

(assert (= (and b!1836159 (not c!299521)) b!1836153))

(assert (= (and b!1836153 (not res!825544)) b!1836160))

(assert (= (and b!1836160 res!825542) b!1836150))

(assert (= (and b!1836150 res!825541) b!1836151))

(assert (= (and b!1836151 res!825543) b!1836154))

(assert (= (and b!1836160 (not res!825548)) b!1836158))

(assert (= (and b!1836158 res!825547) b!1836149))

(assert (= (and b!1836149 (not res!825545)) b!1836162))

(assert (= (and b!1836162 (not res!825546)) b!1836161))

(assert (= (or b!1836152 b!1836149 b!1836150) bm!114944))

(declare-fun m!2263957 () Bool)

(assert (=> b!1836155 m!2263957))

(assert (=> b!1836155 m!2263957))

(declare-fun m!2263959 () Bool)

(assert (=> b!1836155 m!2263959))

(declare-fun m!2263961 () Bool)

(assert (=> b!1836155 m!2263961))

(assert (=> b!1836155 m!2263959))

(assert (=> b!1836155 m!2263961))

(declare-fun m!2263963 () Bool)

(assert (=> b!1836155 m!2263963))

(assert (=> b!1836161 m!2263957))

(assert (=> b!1836151 m!2263961))

(assert (=> b!1836151 m!2263961))

(declare-fun m!2263965 () Bool)

(assert (=> b!1836151 m!2263965))

(declare-fun m!2263967 () Bool)

(assert (=> bm!114944 m!2263967))

(assert (=> b!1836162 m!2263961))

(assert (=> b!1836162 m!2263961))

(assert (=> b!1836162 m!2263965))

(assert (=> b!1836154 m!2263957))

(assert (=> d!561373 m!2263967))

(declare-fun m!2263969 () Bool)

(assert (=> d!561373 m!2263969))

(declare-fun m!2263971 () Bool)

(assert (=> b!1836157 m!2263971))

(assert (=> b!1835905 d!561373))

(declare-fun d!561375 () Bool)

(declare-fun res!825553 () Bool)

(declare-fun e!1173407 () Bool)

(assert (=> d!561375 (=> (not res!825553) (not e!1173407))))

(assert (=> d!561375 (= res!825553 (validRegex!2035 (regex!3649 rule!580)))))

(assert (=> d!561375 (= (ruleValid!1139 thiss!28318 rule!580) e!1173407)))

(declare-fun b!1836167 () Bool)

(declare-fun res!825554 () Bool)

(assert (=> b!1836167 (=> (not res!825554) (not e!1173407))))

(assert (=> b!1836167 (= res!825554 (not (nullable!1553 (regex!3649 rule!580))))))

(declare-fun b!1836168 () Bool)

(assert (=> b!1836168 (= e!1173407 (not (= (tag!4063 rule!580) (String!23028 ""))))))

(assert (= (and d!561375 res!825553) b!1836167))

(assert (= (and b!1836167 res!825554) b!1836168))

(assert (=> d!561375 m!2263969))

(assert (=> b!1836167 m!2263971))

(assert (=> b!1835905 d!561375))

(declare-fun d!561377 () Bool)

(assert (=> d!561377 (ruleValid!1139 thiss!28318 rule!580)))

(declare-fun lt!712704 () Unit!34879)

(declare-fun choose!11556 (LexerInterface!3278 Rule!7098 List!20255) Unit!34879)

(assert (=> d!561377 (= lt!712704 (choose!11556 thiss!28318 rule!580 rules!4610))))

(assert (=> d!561377 (contains!3730 rules!4610 rule!580)))

(assert (=> d!561377 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!658 thiss!28318 rule!580 rules!4610) lt!712704)))

(declare-fun bs!408297 () Bool)

(assert (= bs!408297 d!561377))

(assert (=> bs!408297 m!2263725))

(declare-fun m!2263973 () Bool)

(assert (=> bs!408297 m!2263973))

(assert (=> bs!408297 m!2263729))

(assert (=> b!1835905 d!561377))

(declare-fun d!561379 () Bool)

(declare-fun lt!712707 () Bool)

(declare-fun content!3004 (List!20255) (InoxSet Rule!7098))

(assert (=> d!561379 (= lt!712707 (select (content!3004 rules!4610) rule!580))))

(declare-fun e!1173413 () Bool)

(assert (=> d!561379 (= lt!712707 e!1173413)))

(declare-fun res!825560 () Bool)

(assert (=> d!561379 (=> (not res!825560) (not e!1173413))))

(assert (=> d!561379 (= res!825560 ((_ is Cons!20185) rules!4610))))

(assert (=> d!561379 (= (contains!3730 rules!4610 rule!580) lt!712707)))

(declare-fun b!1836173 () Bool)

(declare-fun e!1173412 () Bool)

(assert (=> b!1836173 (= e!1173413 e!1173412)))

(declare-fun res!825559 () Bool)

(assert (=> b!1836173 (=> res!825559 e!1173412)))

(assert (=> b!1836173 (= res!825559 (= (h!25586 rules!4610) rule!580))))

(declare-fun b!1836174 () Bool)

(assert (=> b!1836174 (= e!1173412 (contains!3730 (t!171380 rules!4610) rule!580))))

(assert (= (and d!561379 res!825560) b!1836173))

(assert (= (and b!1836173 (not res!825559)) b!1836174))

(declare-fun m!2263975 () Bool)

(assert (=> d!561379 m!2263975))

(declare-fun m!2263977 () Bool)

(assert (=> d!561379 m!2263977))

(declare-fun m!2263979 () Bool)

(assert (=> b!1836174 m!2263979))

(assert (=> b!1835894 d!561379))

(declare-fun d!561381 () Bool)

(assert (=> d!561381 (= (inv!26256 (tag!4063 (h!25586 rules!4610))) (= (mod (str.len (value!113662 (tag!4063 (h!25586 rules!4610)))) 2) 0))))

(assert (=> b!1835915 d!561381))

(declare-fun d!561383 () Bool)

(declare-fun res!825563 () Bool)

(declare-fun e!1173416 () Bool)

(assert (=> d!561383 (=> (not res!825563) (not e!1173416))))

(declare-fun semiInverseModEq!1470 (Int Int) Bool)

(assert (=> d!561383 (= res!825563 (semiInverseModEq!1470 (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 (h!25586 rules!4610)))))))

(assert (=> d!561383 (= (inv!26259 (transformation!3649 (h!25586 rules!4610))) e!1173416)))

(declare-fun b!1836177 () Bool)

(declare-fun equivClasses!1411 (Int Int) Bool)

(assert (=> b!1836177 (= e!1173416 (equivClasses!1411 (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 (h!25586 rules!4610)))))))

(assert (= (and d!561383 res!825563) b!1836177))

(declare-fun m!2263981 () Bool)

(assert (=> d!561383 m!2263981))

(declare-fun m!2263983 () Bool)

(assert (=> b!1836177 m!2263983))

(assert (=> b!1835915 d!561383))

(declare-fun d!561385 () Bool)

(assert (=> d!561385 (= (inv!26256 (tag!4063 (h!25586 rs!808))) (= (mod (str.len (value!113662 (tag!4063 (h!25586 rs!808)))) 2) 0))))

(assert (=> b!1835911 d!561385))

(declare-fun d!561387 () Bool)

(declare-fun res!825564 () Bool)

(declare-fun e!1173417 () Bool)

(assert (=> d!561387 (=> (not res!825564) (not e!1173417))))

(assert (=> d!561387 (= res!825564 (semiInverseModEq!1470 (toChars!5059 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 (h!25586 rs!808)))))))

(assert (=> d!561387 (= (inv!26259 (transformation!3649 (h!25586 rs!808))) e!1173417)))

(declare-fun b!1836178 () Bool)

(assert (=> b!1836178 (= e!1173417 (equivClasses!1411 (toChars!5059 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 (h!25586 rs!808)))))))

(assert (= (and d!561387 res!825564) b!1836178))

(declare-fun m!2263985 () Bool)

(assert (=> d!561387 m!2263985))

(declare-fun m!2263987 () Bool)

(assert (=> b!1836178 m!2263987))

(assert (=> b!1835911 d!561387))

(declare-fun b!1836179 () Bool)

(declare-fun e!1173422 () Bool)

(declare-fun e!1173420 () Bool)

(assert (=> b!1836179 (= e!1173422 e!1173420)))

(declare-fun res!825569 () Bool)

(assert (=> b!1836179 (=> res!825569 e!1173420)))

(declare-fun call!114950 () Bool)

(assert (=> b!1836179 (= res!825569 call!114950)))

(declare-fun b!1836180 () Bool)

(declare-fun res!825565 () Bool)

(declare-fun e!1173423 () Bool)

(assert (=> b!1836180 (=> (not res!825565) (not e!1173423))))

(assert (=> b!1836180 (= res!825565 (not call!114950))))

(declare-fun b!1836181 () Bool)

(declare-fun res!825567 () Bool)

(assert (=> b!1836181 (=> (not res!825567) (not e!1173423))))

(assert (=> b!1836181 (= res!825567 (isEmpty!12748 (tail!2754 lt!712628)))))

(declare-fun b!1836182 () Bool)

(declare-fun e!1173418 () Bool)

(declare-fun lt!712708 () Bool)

(assert (=> b!1836182 (= e!1173418 (= lt!712708 call!114950))))

(declare-fun b!1836183 () Bool)

(declare-fun res!825568 () Bool)

(declare-fun e!1173419 () Bool)

(assert (=> b!1836183 (=> res!825568 e!1173419)))

(assert (=> b!1836183 (= res!825568 (not ((_ is ElementMatch!4977) (regex!3649 rule!580))))))

(declare-fun e!1173421 () Bool)

(assert (=> b!1836183 (= e!1173421 e!1173419)))

(declare-fun b!1836184 () Bool)

(assert (=> b!1836184 (= e!1173423 (= (head!4295 lt!712628) (c!299472 (regex!3649 rule!580))))))

(declare-fun b!1836185 () Bool)

(declare-fun e!1173424 () Bool)

(assert (=> b!1836185 (= e!1173424 (matchR!2440 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712628)) (tail!2754 lt!712628)))))

(declare-fun b!1836187 () Bool)

(assert (=> b!1836187 (= e!1173424 (nullable!1553 (regex!3649 rule!580)))))

(declare-fun b!1836188 () Bool)

(assert (=> b!1836188 (= e!1173419 e!1173422)))

(declare-fun res!825571 () Bool)

(assert (=> b!1836188 (=> (not res!825571) (not e!1173422))))

(assert (=> b!1836188 (= res!825571 (not lt!712708))))

(declare-fun b!1836189 () Bool)

(assert (=> b!1836189 (= e!1173418 e!1173421)))

(declare-fun c!299524 () Bool)

(assert (=> b!1836189 (= c!299524 ((_ is EmptyLang!4977) (regex!3649 rule!580)))))

(declare-fun b!1836190 () Bool)

(declare-fun res!825572 () Bool)

(assert (=> b!1836190 (=> res!825572 e!1173419)))

(assert (=> b!1836190 (= res!825572 e!1173423)))

(declare-fun res!825566 () Bool)

(assert (=> b!1836190 (=> (not res!825566) (not e!1173423))))

(assert (=> b!1836190 (= res!825566 lt!712708)))

(declare-fun bm!114945 () Bool)

(assert (=> bm!114945 (= call!114950 (isEmpty!12748 lt!712628))))

(declare-fun b!1836186 () Bool)

(assert (=> b!1836186 (= e!1173421 (not lt!712708))))

(declare-fun d!561389 () Bool)

(assert (=> d!561389 e!1173418))

(declare-fun c!299522 () Bool)

(assert (=> d!561389 (= c!299522 ((_ is EmptyExpr!4977) (regex!3649 rule!580)))))

(assert (=> d!561389 (= lt!712708 e!1173424)))

(declare-fun c!299523 () Bool)

(assert (=> d!561389 (= c!299523 (isEmpty!12748 lt!712628))))

(assert (=> d!561389 (validRegex!2035 (regex!3649 rule!580))))

(assert (=> d!561389 (= (matchR!2440 (regex!3649 rule!580) lt!712628) lt!712708)))

(declare-fun b!1836191 () Bool)

(assert (=> b!1836191 (= e!1173420 (not (= (head!4295 lt!712628) (c!299472 (regex!3649 rule!580)))))))

(declare-fun b!1836192 () Bool)

(declare-fun res!825570 () Bool)

(assert (=> b!1836192 (=> res!825570 e!1173420)))

(assert (=> b!1836192 (= res!825570 (not (isEmpty!12748 (tail!2754 lt!712628))))))

(assert (= (and d!561389 c!299523) b!1836187))

(assert (= (and d!561389 (not c!299523)) b!1836185))

(assert (= (and d!561389 c!299522) b!1836182))

(assert (= (and d!561389 (not c!299522)) b!1836189))

(assert (= (and b!1836189 c!299524) b!1836186))

(assert (= (and b!1836189 (not c!299524)) b!1836183))

(assert (= (and b!1836183 (not res!825568)) b!1836190))

(assert (= (and b!1836190 res!825566) b!1836180))

(assert (= (and b!1836180 res!825565) b!1836181))

(assert (= (and b!1836181 res!825567) b!1836184))

(assert (= (and b!1836190 (not res!825572)) b!1836188))

(assert (= (and b!1836188 res!825571) b!1836179))

(assert (= (and b!1836179 (not res!825569)) b!1836192))

(assert (= (and b!1836192 (not res!825570)) b!1836191))

(assert (= (or b!1836182 b!1836179 b!1836180) bm!114945))

(declare-fun m!2263989 () Bool)

(assert (=> b!1836185 m!2263989))

(assert (=> b!1836185 m!2263989))

(declare-fun m!2263991 () Bool)

(assert (=> b!1836185 m!2263991))

(declare-fun m!2263993 () Bool)

(assert (=> b!1836185 m!2263993))

(assert (=> b!1836185 m!2263991))

(assert (=> b!1836185 m!2263993))

(declare-fun m!2263995 () Bool)

(assert (=> b!1836185 m!2263995))

(assert (=> b!1836191 m!2263989))

(assert (=> b!1836181 m!2263993))

(assert (=> b!1836181 m!2263993))

(declare-fun m!2263997 () Bool)

(assert (=> b!1836181 m!2263997))

(declare-fun m!2263999 () Bool)

(assert (=> bm!114945 m!2263999))

(assert (=> b!1836192 m!2263993))

(assert (=> b!1836192 m!2263993))

(assert (=> b!1836192 m!2263997))

(assert (=> b!1836184 m!2263989))

(assert (=> d!561389 m!2263999))

(assert (=> d!561389 m!2263969))

(assert (=> b!1836187 m!2263971))

(assert (=> b!1835900 d!561389))

(declare-fun d!561391 () Bool)

(declare-fun lt!712711 () Bool)

(declare-fun content!3005 (List!20256) (InoxSet Regex!4977))

(assert (=> d!561391 (= lt!712711 (select (content!3005 (map!4192 rs!808 lambda!72208)) (regex!3649 rule!580)))))

(declare-fun e!1173430 () Bool)

(assert (=> d!561391 (= lt!712711 e!1173430)))

(declare-fun res!825578 () Bool)

(assert (=> d!561391 (=> (not res!825578) (not e!1173430))))

(assert (=> d!561391 (= res!825578 ((_ is Cons!20186) (map!4192 rs!808 lambda!72208)))))

(assert (=> d!561391 (= (contains!3731 (map!4192 rs!808 lambda!72208) (regex!3649 rule!580)) lt!712711)))

(declare-fun b!1836197 () Bool)

(declare-fun e!1173429 () Bool)

(assert (=> b!1836197 (= e!1173430 e!1173429)))

(declare-fun res!825577 () Bool)

(assert (=> b!1836197 (=> res!825577 e!1173429)))

(assert (=> b!1836197 (= res!825577 (= (h!25587 (map!4192 rs!808 lambda!72208)) (regex!3649 rule!580)))))

(declare-fun b!1836198 () Bool)

(assert (=> b!1836198 (= e!1173429 (contains!3731 (t!171381 (map!4192 rs!808 lambda!72208)) (regex!3649 rule!580)))))

(assert (= (and d!561391 res!825578) b!1836197))

(assert (= (and b!1836197 (not res!825577)) b!1836198))

(assert (=> d!561391 m!2263711))

(declare-fun m!2264001 () Bool)

(assert (=> d!561391 m!2264001))

(declare-fun m!2264003 () Bool)

(assert (=> d!561391 m!2264003))

(declare-fun m!2264005 () Bool)

(assert (=> b!1836198 m!2264005))

(assert (=> b!1835913 d!561391))

(declare-fun d!561393 () Bool)

(declare-fun lt!712714 () List!20256)

(declare-fun size!16019 (List!20256) Int)

(declare-fun size!16020 (List!20255) Int)

(assert (=> d!561393 (= (size!16019 lt!712714) (size!16020 rs!808))))

(declare-fun e!1173433 () List!20256)

(assert (=> d!561393 (= lt!712714 e!1173433)))

(declare-fun c!299527 () Bool)

(assert (=> d!561393 (= c!299527 ((_ is Nil!20185) rs!808))))

(assert (=> d!561393 (= (map!4192 rs!808 lambda!72208) lt!712714)))

(declare-fun b!1836203 () Bool)

(assert (=> b!1836203 (= e!1173433 Nil!20186)))

(declare-fun b!1836204 () Bool)

(declare-fun $colon$colon!468 (List!20256 Regex!4977) List!20256)

(declare-fun dynLambda!10059 (Int Rule!7098) Regex!4977)

(assert (=> b!1836204 (= e!1173433 ($colon$colon!468 (map!4192 (t!171380 rs!808) lambda!72208) (dynLambda!10059 lambda!72208 (h!25586 rs!808))))))

(assert (= (and d!561393 c!299527) b!1836203))

(assert (= (and d!561393 (not c!299527)) b!1836204))

(declare-fun b_lambda!60901 () Bool)

(assert (=> (not b_lambda!60901) (not b!1836204)))

(declare-fun m!2264007 () Bool)

(assert (=> d!561393 m!2264007))

(declare-fun m!2264009 () Bool)

(assert (=> d!561393 m!2264009))

(declare-fun m!2264011 () Bool)

(assert (=> b!1836204 m!2264011))

(declare-fun m!2264013 () Bool)

(assert (=> b!1836204 m!2264013))

(assert (=> b!1836204 m!2264011))

(assert (=> b!1836204 m!2264013))

(declare-fun m!2264015 () Bool)

(assert (=> b!1836204 m!2264015))

(assert (=> b!1835913 d!561393))

(declare-fun bs!408298 () Bool)

(declare-fun d!561395 () Bool)

(assert (= bs!408298 (and d!561395 b!1835902)))

(declare-fun lambda!72214 () Int)

(assert (=> bs!408298 (= lambda!72214 lambda!72208)))

(declare-fun lt!712717 () Unit!34879)

(declare-fun lemma!554 (List!20255 LexerInterface!3278 List!20255) Unit!34879)

(assert (=> d!561395 (= lt!712717 (lemma!554 rules!4610 thiss!28318 rules!4610))))

(assert (=> d!561395 (= (rulesRegex!969 thiss!28318 rules!4610) (generalisedUnion!492 (map!4192 rules!4610 lambda!72214)))))

(declare-fun bs!408299 () Bool)

(assert (= bs!408299 d!561395))

(declare-fun m!2264017 () Bool)

(assert (=> bs!408299 m!2264017))

(declare-fun m!2264019 () Bool)

(assert (=> bs!408299 m!2264019))

(assert (=> bs!408299 m!2264019))

(declare-fun m!2264021 () Bool)

(assert (=> bs!408299 m!2264021))

(assert (=> b!1835902 d!561395))

(declare-fun b!1836307 () Bool)

(declare-fun e!1173499 () Bool)

(declare-fun e!1173500 () Bool)

(assert (=> b!1836307 (= e!1173499 e!1173500)))

(declare-fun c!299561 () Bool)

(declare-fun isEmpty!12751 (List!20256) Bool)

(assert (=> b!1836307 (= c!299561 (isEmpty!12751 (map!4192 rules!4610 lambda!72208)))))

(declare-fun b!1836308 () Bool)

(declare-fun e!1173501 () Bool)

(assert (=> b!1836308 (= e!1173501 (isEmpty!12751 (t!171381 (map!4192 rules!4610 lambda!72208))))))

(declare-fun b!1836309 () Bool)

(declare-fun e!1173503 () Regex!4977)

(assert (=> b!1836309 (= e!1173503 EmptyLang!4977)))

(declare-fun b!1836310 () Bool)

(declare-fun e!1173502 () Bool)

(declare-fun lt!712756 () Regex!4977)

(declare-fun head!4296 (List!20256) Regex!4977)

(assert (=> b!1836310 (= e!1173502 (= lt!712756 (head!4296 (map!4192 rules!4610 lambda!72208))))))

(declare-fun b!1836311 () Bool)

(declare-fun e!1173504 () Regex!4977)

(assert (=> b!1836311 (= e!1173504 e!1173503)))

(declare-fun c!299560 () Bool)

(assert (=> b!1836311 (= c!299560 ((_ is Cons!20186) (map!4192 rules!4610 lambda!72208)))))

(declare-fun b!1836312 () Bool)

(declare-fun isEmptyLang!135 (Regex!4977) Bool)

(assert (=> b!1836312 (= e!1173500 (isEmptyLang!135 lt!712756))))

(declare-fun b!1836313 () Bool)

(assert (=> b!1836313 (= e!1173504 (h!25587 (map!4192 rules!4610 lambda!72208)))))

(declare-fun b!1836315 () Bool)

(assert (=> b!1836315 (= e!1173503 (Union!4977 (h!25587 (map!4192 rules!4610 lambda!72208)) (generalisedUnion!492 (t!171381 (map!4192 rules!4610 lambda!72208)))))))

(declare-fun b!1836316 () Bool)

(assert (=> b!1836316 (= e!1173500 e!1173502)))

(declare-fun c!299563 () Bool)

(declare-fun tail!2755 (List!20256) List!20256)

(assert (=> b!1836316 (= c!299563 (isEmpty!12751 (tail!2755 (map!4192 rules!4610 lambda!72208))))))

(declare-fun d!561397 () Bool)

(assert (=> d!561397 e!1173499))

(declare-fun res!825615 () Bool)

(assert (=> d!561397 (=> (not res!825615) (not e!1173499))))

(assert (=> d!561397 (= res!825615 (validRegex!2035 lt!712756))))

(assert (=> d!561397 (= lt!712756 e!1173504)))

(declare-fun c!299562 () Bool)

(assert (=> d!561397 (= c!299562 e!1173501)))

(declare-fun res!825616 () Bool)

(assert (=> d!561397 (=> (not res!825616) (not e!1173501))))

(assert (=> d!561397 (= res!825616 ((_ is Cons!20186) (map!4192 rules!4610 lambda!72208)))))

(declare-fun lambda!72229 () Int)

(declare-fun forall!4352 (List!20256 Int) Bool)

(assert (=> d!561397 (forall!4352 (map!4192 rules!4610 lambda!72208) lambda!72229)))

(assert (=> d!561397 (= (generalisedUnion!492 (map!4192 rules!4610 lambda!72208)) lt!712756)))

(declare-fun b!1836314 () Bool)

(declare-fun isUnion!135 (Regex!4977) Bool)

(assert (=> b!1836314 (= e!1173502 (isUnion!135 lt!712756))))

(assert (= (and d!561397 res!825616) b!1836308))

(assert (= (and d!561397 c!299562) b!1836313))

(assert (= (and d!561397 (not c!299562)) b!1836311))

(assert (= (and b!1836311 c!299560) b!1836315))

(assert (= (and b!1836311 (not c!299560)) b!1836309))

(assert (= (and d!561397 res!825615) b!1836307))

(assert (= (and b!1836307 c!299561) b!1836312))

(assert (= (and b!1836307 (not c!299561)) b!1836316))

(assert (= (and b!1836316 c!299563) b!1836310))

(assert (= (and b!1836316 (not c!299563)) b!1836314))

(declare-fun m!2264115 () Bool)

(assert (=> b!1836312 m!2264115))

(assert (=> b!1836307 m!2263695))

(declare-fun m!2264117 () Bool)

(assert (=> b!1836307 m!2264117))

(assert (=> b!1836310 m!2263695))

(declare-fun m!2264119 () Bool)

(assert (=> b!1836310 m!2264119))

(declare-fun m!2264121 () Bool)

(assert (=> b!1836314 m!2264121))

(assert (=> b!1836316 m!2263695))

(declare-fun m!2264123 () Bool)

(assert (=> b!1836316 m!2264123))

(assert (=> b!1836316 m!2264123))

(declare-fun m!2264125 () Bool)

(assert (=> b!1836316 m!2264125))

(declare-fun m!2264127 () Bool)

(assert (=> d!561397 m!2264127))

(assert (=> d!561397 m!2263695))

(declare-fun m!2264129 () Bool)

(assert (=> d!561397 m!2264129))

(declare-fun m!2264131 () Bool)

(assert (=> b!1836315 m!2264131))

(declare-fun m!2264133 () Bool)

(assert (=> b!1836308 m!2264133))

(assert (=> b!1835902 d!561397))

(declare-fun d!561435 () Bool)

(declare-fun lt!712757 () List!20256)

(assert (=> d!561435 (= (size!16019 lt!712757) (size!16020 rules!4610))))

(declare-fun e!1173509 () List!20256)

(assert (=> d!561435 (= lt!712757 e!1173509)))

(declare-fun c!299564 () Bool)

(assert (=> d!561435 (= c!299564 ((_ is Nil!20185) rules!4610))))

(assert (=> d!561435 (= (map!4192 rules!4610 lambda!72208) lt!712757)))

(declare-fun b!1836331 () Bool)

(assert (=> b!1836331 (= e!1173509 Nil!20186)))

(declare-fun b!1836332 () Bool)

(assert (=> b!1836332 (= e!1173509 ($colon$colon!468 (map!4192 (t!171380 rules!4610) lambda!72208) (dynLambda!10059 lambda!72208 (h!25586 rules!4610))))))

(assert (= (and d!561435 c!299564) b!1836331))

(assert (= (and d!561435 (not c!299564)) b!1836332))

(declare-fun b_lambda!60907 () Bool)

(assert (=> (not b_lambda!60907) (not b!1836332)))

(declare-fun m!2264135 () Bool)

(assert (=> d!561435 m!2264135))

(declare-fun m!2264137 () Bool)

(assert (=> d!561435 m!2264137))

(declare-fun m!2264139 () Bool)

(assert (=> b!1836332 m!2264139))

(declare-fun m!2264141 () Bool)

(assert (=> b!1836332 m!2264141))

(assert (=> b!1836332 m!2264139))

(assert (=> b!1836332 m!2264141))

(declare-fun m!2264143 () Bool)

(assert (=> b!1836332 m!2264143))

(assert (=> b!1835902 d!561435))

(declare-fun bs!408306 () Bool)

(declare-fun d!561437 () Bool)

(assert (= bs!408306 (and d!561437 b!1835902)))

(declare-fun lambda!72234 () Int)

(assert (=> bs!408306 (= lambda!72234 lambda!72208)))

(declare-fun bs!408307 () Bool)

(assert (= bs!408307 (and d!561437 d!561395)))

(assert (=> bs!408307 (= lambda!72234 lambda!72214)))

(declare-fun bs!408308 () Bool)

(assert (= bs!408308 (and d!561437 d!561397)))

(declare-fun lambda!72235 () Int)

(assert (=> bs!408308 (= lambda!72235 lambda!72229)))

(assert (=> d!561437 (forall!4352 (map!4192 rules!4610 lambda!72234) lambda!72235)))

(declare-fun lt!712773 () Unit!34879)

(declare-fun e!1173542 () Unit!34879)

(assert (=> d!561437 (= lt!712773 e!1173542)))

(declare-fun c!299568 () Bool)

(assert (=> d!561437 (= c!299568 ((_ is Nil!20185) rules!4610))))

(assert (=> d!561437 (rulesValid!1396 thiss!28318 rules!4610)))

(declare-fun lt!712774 () Unit!34879)

(declare-fun lt!712777 () Unit!34879)

(assert (=> d!561437 (= lt!712774 lt!712777)))

(declare-fun lt!712775 () List!20253)

(assert (=> d!561437 (= (maxPrefixOneRule!1187 thiss!28318 rule!580 input!3681) (Some!4228 (tuple2!19635 (Token!6853 (apply!5437 (transformation!3649 rule!580) (seqFromList!2606 lt!712775)) rule!580 (size!16014 lt!712775) lt!712775) suffix!1698)))))

(assert (=> d!561437 (= lt!712777 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!557 thiss!28318 rules!4610 lt!712775 input!3681 suffix!1698 rule!580))))

(assert (=> d!561437 (= lt!712775 (list!8203 (charsOf!2292 token!567)))))

(assert (=> d!561437 (= (lemma!552 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610) lt!712773)))

(declare-fun b!1836393 () Bool)

(declare-fun Unit!34883 () Unit!34879)

(assert (=> b!1836393 (= e!1173542 Unit!34883)))

(declare-fun b!1836394 () Bool)

(declare-fun Unit!34884 () Unit!34879)

(assert (=> b!1836394 (= e!1173542 Unit!34884)))

(declare-fun lt!712776 () Unit!34879)

(assert (=> b!1836394 (= lt!712776 (lemma!552 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!171380 rules!4610)))))

(assert (= (and d!561437 c!299568) b!1836393))

(assert (= (and d!561437 (not c!299568)) b!1836394))

(declare-fun m!2264185 () Bool)

(assert (=> d!561437 m!2264185))

(assert (=> d!561437 m!2263673))

(declare-fun m!2264187 () Bool)

(assert (=> d!561437 m!2264187))

(assert (=> d!561437 m!2263705))

(assert (=> d!561437 m!2264187))

(declare-fun m!2264189 () Bool)

(assert (=> d!561437 m!2264189))

(assert (=> d!561437 m!2263939))

(declare-fun m!2264191 () Bool)

(assert (=> d!561437 m!2264191))

(assert (=> d!561437 m!2264185))

(declare-fun m!2264193 () Bool)

(assert (=> d!561437 m!2264193))

(declare-fun m!2264195 () Bool)

(assert (=> d!561437 m!2264195))

(assert (=> d!561437 m!2263673))

(assert (=> d!561437 m!2263675))

(declare-fun m!2264197 () Bool)

(assert (=> b!1836394 m!2264197))

(assert (=> b!1835902 d!561437))

(declare-fun d!561443 () Bool)

(assert (=> d!561443 (= (isEmpty!12745 rules!4610) ((_ is Nil!20185) rules!4610))))

(assert (=> b!1835912 d!561443))

(declare-fun d!561445 () Bool)

(assert (=> d!561445 (= (inv!26256 (tag!4063 (rule!5839 token!567))) (= (mod (str.len (value!113662 (tag!4063 (rule!5839 token!567)))) 2) 0))))

(assert (=> b!1835909 d!561445))

(declare-fun d!561447 () Bool)

(declare-fun res!825638 () Bool)

(declare-fun e!1173543 () Bool)

(assert (=> d!561447 (=> (not res!825638) (not e!1173543))))

(assert (=> d!561447 (= res!825638 (semiInverseModEq!1470 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 (rule!5839 token!567)))))))

(assert (=> d!561447 (= (inv!26259 (transformation!3649 (rule!5839 token!567))) e!1173543)))

(declare-fun b!1836395 () Bool)

(assert (=> b!1836395 (= e!1173543 (equivClasses!1411 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 (rule!5839 token!567)))))))

(assert (= (and d!561447 res!825638) b!1836395))

(declare-fun m!2264199 () Bool)

(assert (=> d!561447 m!2264199))

(declare-fun m!2264201 () Bool)

(assert (=> b!1836395 m!2264201))

(assert (=> b!1835909 d!561447))

(declare-fun d!561449 () Bool)

(assert (=> d!561449 true))

(declare-fun lt!712780 () Bool)

(declare-fun rulesValidInductive!1264 (LexerInterface!3278 List!20255) Bool)

(assert (=> d!561449 (= lt!712780 (rulesValidInductive!1264 thiss!28318 rs!808))))

(declare-fun lambda!72238 () Int)

(declare-fun forall!4353 (List!20255 Int) Bool)

(assert (=> d!561449 (= lt!712780 (forall!4353 rs!808 lambda!72238))))

(assert (=> d!561449 (= (rulesValid!1396 thiss!28318 rs!808) lt!712780)))

(declare-fun bs!408309 () Bool)

(assert (= bs!408309 d!561449))

(declare-fun m!2264203 () Bool)

(assert (=> bs!408309 m!2264203))

(declare-fun m!2264205 () Bool)

(assert (=> bs!408309 m!2264205))

(assert (=> b!1835898 d!561449))

(declare-fun d!561451 () Bool)

(assert (=> d!561451 (= (inv!26256 (tag!4063 rule!580)) (= (mod (str.len (value!113662 (tag!4063 rule!580))) 2) 0))))

(assert (=> b!1835908 d!561451))

(declare-fun d!561453 () Bool)

(declare-fun res!825639 () Bool)

(declare-fun e!1173544 () Bool)

(assert (=> d!561453 (=> (not res!825639) (not e!1173544))))

(assert (=> d!561453 (= res!825639 (semiInverseModEq!1470 (toChars!5059 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 rule!580))))))

(assert (=> d!561453 (= (inv!26259 (transformation!3649 rule!580)) e!1173544)))

(declare-fun b!1836398 () Bool)

(assert (=> b!1836398 (= e!1173544 (equivClasses!1411 (toChars!5059 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 rule!580))))))

(assert (= (and d!561453 res!825639) b!1836398))

(declare-fun m!2264207 () Bool)

(assert (=> d!561453 m!2264207))

(declare-fun m!2264209 () Bool)

(assert (=> b!1836398 m!2264209))

(assert (=> b!1835908 d!561453))

(declare-fun b!1836417 () Bool)

(declare-fun res!825657 () Bool)

(declare-fun e!1173553 () Bool)

(assert (=> b!1836417 (=> (not res!825657) (not e!1173553))))

(declare-fun lt!712794 () Option!4229)

(assert (=> b!1836417 (= res!825657 (< (size!16014 (_2!11219 (get!6231 lt!712794))) (size!16014 input!3681)))))

(declare-fun call!114956 () Option!4229)

(declare-fun bm!114951 () Bool)

(assert (=> bm!114951 (= call!114956 (maxPrefixOneRule!1187 thiss!28318 (h!25586 rules!4610) input!3681))))

(declare-fun d!561455 () Bool)

(declare-fun e!1173551 () Bool)

(assert (=> d!561455 e!1173551))

(declare-fun res!825655 () Bool)

(assert (=> d!561455 (=> res!825655 e!1173551)))

(assert (=> d!561455 (= res!825655 (isEmpty!12749 lt!712794))))

(declare-fun e!1173552 () Option!4229)

(assert (=> d!561455 (= lt!712794 e!1173552)))

(declare-fun c!299571 () Bool)

(assert (=> d!561455 (= c!299571 (and ((_ is Cons!20185) rules!4610) ((_ is Nil!20185) (t!171380 rules!4610))))))

(declare-fun lt!712792 () Unit!34879)

(declare-fun lt!712795 () Unit!34879)

(assert (=> d!561455 (= lt!712792 lt!712795)))

(declare-fun isPrefix!1845 (List!20253 List!20253) Bool)

(assert (=> d!561455 (isPrefix!1845 input!3681 input!3681)))

(declare-fun lemmaIsPrefixRefl!1222 (List!20253 List!20253) Unit!34879)

(assert (=> d!561455 (= lt!712795 (lemmaIsPrefixRefl!1222 input!3681 input!3681))))

(assert (=> d!561455 (rulesValidInductive!1264 thiss!28318 rules!4610)))

(assert (=> d!561455 (= (maxPrefix!1826 thiss!28318 rules!4610 input!3681) lt!712794)))

(declare-fun b!1836418 () Bool)

(declare-fun res!825659 () Bool)

(assert (=> b!1836418 (=> (not res!825659) (not e!1173553))))

(assert (=> b!1836418 (= res!825659 (= (value!113663 (_1!11219 (get!6231 lt!712794))) (apply!5437 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))) (seqFromList!2606 (originalCharacters!4457 (_1!11219 (get!6231 lt!712794)))))))))

(declare-fun b!1836419 () Bool)

(declare-fun lt!712793 () Option!4229)

(declare-fun lt!712791 () Option!4229)

(assert (=> b!1836419 (= e!1173552 (ite (and ((_ is None!4228) lt!712793) ((_ is None!4228) lt!712791)) None!4228 (ite ((_ is None!4228) lt!712791) lt!712793 (ite ((_ is None!4228) lt!712793) lt!712791 (ite (>= (size!16013 (_1!11219 (v!25811 lt!712793))) (size!16013 (_1!11219 (v!25811 lt!712791)))) lt!712793 lt!712791)))))))

(assert (=> b!1836419 (= lt!712793 call!114956)))

(assert (=> b!1836419 (= lt!712791 (maxPrefix!1826 thiss!28318 (t!171380 rules!4610) input!3681))))

(declare-fun b!1836420 () Bool)

(declare-fun res!825660 () Bool)

(assert (=> b!1836420 (=> (not res!825660) (not e!1173553))))

(assert (=> b!1836420 (= res!825660 (matchR!2440 (regex!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))) (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))))))

(declare-fun b!1836421 () Bool)

(assert (=> b!1836421 (= e!1173552 call!114956)))

(declare-fun b!1836422 () Bool)

(declare-fun res!825656 () Bool)

(assert (=> b!1836422 (=> (not res!825656) (not e!1173553))))

(assert (=> b!1836422 (= res!825656 (= (++!5473 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794)))) (_2!11219 (get!6231 lt!712794))) input!3681))))

(declare-fun b!1836423 () Bool)

(declare-fun res!825658 () Bool)

(assert (=> b!1836423 (=> (not res!825658) (not e!1173553))))

(assert (=> b!1836423 (= res!825658 (= (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794)))) (originalCharacters!4457 (_1!11219 (get!6231 lt!712794)))))))

(declare-fun b!1836424 () Bool)

(assert (=> b!1836424 (= e!1173553 (contains!3730 rules!4610 (rule!5839 (_1!11219 (get!6231 lt!712794)))))))

(declare-fun b!1836425 () Bool)

(assert (=> b!1836425 (= e!1173551 e!1173553)))

(declare-fun res!825654 () Bool)

(assert (=> b!1836425 (=> (not res!825654) (not e!1173553))))

(declare-fun isDefined!3532 (Option!4229) Bool)

(assert (=> b!1836425 (= res!825654 (isDefined!3532 lt!712794))))

(assert (= (and d!561455 c!299571) b!1836421))

(assert (= (and d!561455 (not c!299571)) b!1836419))

(assert (= (or b!1836421 b!1836419) bm!114951))

(assert (= (and d!561455 (not res!825655)) b!1836425))

(assert (= (and b!1836425 res!825654) b!1836423))

(assert (= (and b!1836423 res!825658) b!1836417))

(assert (= (and b!1836417 res!825657) b!1836422))

(assert (= (and b!1836422 res!825656) b!1836418))

(assert (= (and b!1836418 res!825659) b!1836420))

(assert (= (and b!1836420 res!825660) b!1836424))

(declare-fun m!2264211 () Bool)

(assert (=> b!1836425 m!2264211))

(declare-fun m!2264213 () Bool)

(assert (=> b!1836423 m!2264213))

(declare-fun m!2264215 () Bool)

(assert (=> b!1836423 m!2264215))

(assert (=> b!1836423 m!2264215))

(declare-fun m!2264217 () Bool)

(assert (=> b!1836423 m!2264217))

(assert (=> b!1836417 m!2264213))

(declare-fun m!2264219 () Bool)

(assert (=> b!1836417 m!2264219))

(assert (=> b!1836417 m!2263863))

(assert (=> b!1836422 m!2264213))

(assert (=> b!1836422 m!2264215))

(assert (=> b!1836422 m!2264215))

(assert (=> b!1836422 m!2264217))

(assert (=> b!1836422 m!2264217))

(declare-fun m!2264221 () Bool)

(assert (=> b!1836422 m!2264221))

(assert (=> b!1836420 m!2264213))

(assert (=> b!1836420 m!2264215))

(assert (=> b!1836420 m!2264215))

(assert (=> b!1836420 m!2264217))

(assert (=> b!1836420 m!2264217))

(declare-fun m!2264223 () Bool)

(assert (=> b!1836420 m!2264223))

(assert (=> b!1836424 m!2264213))

(declare-fun m!2264225 () Bool)

(assert (=> b!1836424 m!2264225))

(declare-fun m!2264227 () Bool)

(assert (=> bm!114951 m!2264227))

(declare-fun m!2264229 () Bool)

(assert (=> d!561455 m!2264229))

(declare-fun m!2264231 () Bool)

(assert (=> d!561455 m!2264231))

(declare-fun m!2264233 () Bool)

(assert (=> d!561455 m!2264233))

(declare-fun m!2264235 () Bool)

(assert (=> d!561455 m!2264235))

(assert (=> b!1836418 m!2264213))

(declare-fun m!2264237 () Bool)

(assert (=> b!1836418 m!2264237))

(assert (=> b!1836418 m!2264237))

(declare-fun m!2264239 () Bool)

(assert (=> b!1836418 m!2264239))

(declare-fun m!2264241 () Bool)

(assert (=> b!1836419 m!2264241))

(assert (=> b!1835910 d!561455))

(declare-fun d!561457 () Bool)

(declare-fun lt!712796 () Bool)

(assert (=> d!561457 (= lt!712796 (select (content!3004 rs!808) rule!580))))

(declare-fun e!1173555 () Bool)

(assert (=> d!561457 (= lt!712796 e!1173555)))

(declare-fun res!825662 () Bool)

(assert (=> d!561457 (=> (not res!825662) (not e!1173555))))

(assert (=> d!561457 (= res!825662 ((_ is Cons!20185) rs!808))))

(assert (=> d!561457 (= (contains!3730 rs!808 rule!580) lt!712796)))

(declare-fun b!1836426 () Bool)

(declare-fun e!1173554 () Bool)

(assert (=> b!1836426 (= e!1173555 e!1173554)))

(declare-fun res!825661 () Bool)

(assert (=> b!1836426 (=> res!825661 e!1173554)))

(assert (=> b!1836426 (= res!825661 (= (h!25586 rs!808) rule!580))))

(declare-fun b!1836427 () Bool)

(assert (=> b!1836427 (= e!1173554 (contains!3730 (t!171380 rs!808) rule!580))))

(assert (= (and d!561457 res!825662) b!1836426))

(assert (= (and b!1836426 (not res!825661)) b!1836427))

(declare-fun m!2264243 () Bool)

(assert (=> d!561457 m!2264243))

(declare-fun m!2264245 () Bool)

(assert (=> d!561457 m!2264245))

(declare-fun m!2264247 () Bool)

(assert (=> b!1836427 m!2264247))

(assert (=> b!1835899 d!561457))

(declare-fun b!1836438 () Bool)

(declare-fun b_free!51459 () Bool)

(declare-fun b_next!52163 () Bool)

(assert (=> b!1836438 (= b_free!51459 (not b_next!52163))))

(declare-fun tb!112545 () Bool)

(declare-fun t!171423 () Bool)

(assert (=> (and b!1836438 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toValue!5200 (transformation!3649 rule!580))) t!171423) tb!112545))

(declare-fun result!135324 () Bool)

(assert (= result!135324 result!135298))

(assert (=> d!561345 t!171423))

(declare-fun b_and!143385 () Bool)

(declare-fun tp!519501 () Bool)

(assert (=> b!1836438 (= tp!519501 (and (=> t!171423 result!135324) b_and!143385))))

(declare-fun b_free!51461 () Bool)

(declare-fun b_next!52165 () Bool)

(assert (=> b!1836438 (= b_free!51461 (not b_next!52165))))

(declare-fun t!171425 () Bool)

(declare-fun tb!112547 () Bool)

(assert (=> (and b!1836438 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toChars!5059 (transformation!3649 (rule!5839 token!567)))) t!171425) tb!112547))

(declare-fun result!135326 () Bool)

(assert (= result!135326 result!135268))

(assert (=> b!1835938 t!171425))

(assert (=> d!561367 t!171425))

(declare-fun tp!519500 () Bool)

(declare-fun b_and!143387 () Bool)

(assert (=> b!1836438 (= tp!519500 (and (=> t!171425 result!135326) b_and!143387))))

(declare-fun e!1173566 () Bool)

(assert (=> b!1836438 (= e!1173566 (and tp!519501 tp!519500))))

(declare-fun e!1173565 () Bool)

(declare-fun b!1836437 () Bool)

(declare-fun tp!519499 () Bool)

(assert (=> b!1836437 (= e!1173565 (and tp!519499 (inv!26256 (tag!4063 (h!25586 (t!171380 rules!4610)))) (inv!26259 (transformation!3649 (h!25586 (t!171380 rules!4610)))) e!1173566))))

(declare-fun b!1836436 () Bool)

(declare-fun e!1173564 () Bool)

(declare-fun tp!519498 () Bool)

(assert (=> b!1836436 (= e!1173564 (and e!1173565 tp!519498))))

(assert (=> b!1835917 (= tp!519418 e!1173564)))

(assert (= b!1836437 b!1836438))

(assert (= b!1836436 b!1836437))

(assert (= (and b!1835917 ((_ is Cons!20185) (t!171380 rules!4610))) b!1836436))

(declare-fun m!2264249 () Bool)

(assert (=> b!1836437 m!2264249))

(declare-fun m!2264251 () Bool)

(assert (=> b!1836437 m!2264251))

(declare-fun b!1836443 () Bool)

(declare-fun e!1173570 () Bool)

(declare-fun tp!519504 () Bool)

(assert (=> b!1836443 (= e!1173570 (and tp_is_empty!8189 tp!519504))))

(assert (=> b!1835906 (= tp!519420 e!1173570)))

(assert (= (and b!1835906 ((_ is Cons!20183) (originalCharacters!4457 token!567))) b!1836443))

(declare-fun b!1836455 () Bool)

(declare-fun e!1173573 () Bool)

(declare-fun tp!519517 () Bool)

(declare-fun tp!519519 () Bool)

(assert (=> b!1836455 (= e!1173573 (and tp!519517 tp!519519))))

(assert (=> b!1835911 (= tp!519417 e!1173573)))

(declare-fun b!1836457 () Bool)

(declare-fun tp!519515 () Bool)

(declare-fun tp!519516 () Bool)

(assert (=> b!1836457 (= e!1173573 (and tp!519515 tp!519516))))

(declare-fun b!1836456 () Bool)

(declare-fun tp!519518 () Bool)

(assert (=> b!1836456 (= e!1173573 tp!519518)))

(declare-fun b!1836454 () Bool)

(assert (=> b!1836454 (= e!1173573 tp_is_empty!8189)))

(assert (= (and b!1835911 ((_ is ElementMatch!4977) (regex!3649 (h!25586 rs!808)))) b!1836454))

(assert (= (and b!1835911 ((_ is Concat!8716) (regex!3649 (h!25586 rs!808)))) b!1836455))

(assert (= (and b!1835911 ((_ is Star!4977) (regex!3649 (h!25586 rs!808)))) b!1836456))

(assert (= (and b!1835911 ((_ is Union!4977) (regex!3649 (h!25586 rs!808)))) b!1836457))

(declare-fun b!1836458 () Bool)

(declare-fun e!1173574 () Bool)

(declare-fun tp!519520 () Bool)

(assert (=> b!1836458 (= e!1173574 (and tp_is_empty!8189 tp!519520))))

(assert (=> b!1835895 (= tp!519425 e!1173574)))

(assert (= (and b!1835895 ((_ is Cons!20183) (t!171378 input!3681))) b!1836458))

(declare-fun b!1836459 () Bool)

(declare-fun e!1173575 () Bool)

(declare-fun tp!519521 () Bool)

(assert (=> b!1836459 (= e!1173575 (and tp_is_empty!8189 tp!519521))))

(assert (=> b!1835907 (= tp!519426 e!1173575)))

(assert (= (and b!1835907 ((_ is Cons!20183) (t!171378 suffix!1698))) b!1836459))

(declare-fun b!1836461 () Bool)

(declare-fun e!1173576 () Bool)

(declare-fun tp!519524 () Bool)

(declare-fun tp!519526 () Bool)

(assert (=> b!1836461 (= e!1173576 (and tp!519524 tp!519526))))

(assert (=> b!1835909 (= tp!519419 e!1173576)))

(declare-fun b!1836463 () Bool)

(declare-fun tp!519522 () Bool)

(declare-fun tp!519523 () Bool)

(assert (=> b!1836463 (= e!1173576 (and tp!519522 tp!519523))))

(declare-fun b!1836462 () Bool)

(declare-fun tp!519525 () Bool)

(assert (=> b!1836462 (= e!1173576 tp!519525)))

(declare-fun b!1836460 () Bool)

(assert (=> b!1836460 (= e!1173576 tp_is_empty!8189)))

(assert (= (and b!1835909 ((_ is ElementMatch!4977) (regex!3649 (rule!5839 token!567)))) b!1836460))

(assert (= (and b!1835909 ((_ is Concat!8716) (regex!3649 (rule!5839 token!567)))) b!1836461))

(assert (= (and b!1835909 ((_ is Star!4977) (regex!3649 (rule!5839 token!567)))) b!1836462))

(assert (= (and b!1835909 ((_ is Union!4977) (regex!3649 (rule!5839 token!567)))) b!1836463))

(declare-fun b!1836466 () Bool)

(declare-fun b_free!51463 () Bool)

(declare-fun b_next!52167 () Bool)

(assert (=> b!1836466 (= b_free!51463 (not b_next!52167))))

(declare-fun tb!112549 () Bool)

(declare-fun t!171427 () Bool)

(assert (=> (and b!1836466 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toValue!5200 (transformation!3649 rule!580))) t!171427) tb!112549))

(declare-fun result!135332 () Bool)

(assert (= result!135332 result!135298))

(assert (=> d!561345 t!171427))

(declare-fun tp!519530 () Bool)

(declare-fun b_and!143389 () Bool)

(assert (=> b!1836466 (= tp!519530 (and (=> t!171427 result!135332) b_and!143389))))

(declare-fun b_free!51465 () Bool)

(declare-fun b_next!52169 () Bool)

(assert (=> b!1836466 (= b_free!51465 (not b_next!52169))))

(declare-fun tb!112551 () Bool)

(declare-fun t!171429 () Bool)

(assert (=> (and b!1836466 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toChars!5059 (transformation!3649 (rule!5839 token!567)))) t!171429) tb!112551))

(declare-fun result!135334 () Bool)

(assert (= result!135334 result!135268))

(assert (=> b!1835938 t!171429))

(assert (=> d!561367 t!171429))

(declare-fun b_and!143391 () Bool)

(declare-fun tp!519529 () Bool)

(assert (=> b!1836466 (= tp!519529 (and (=> t!171429 result!135334) b_and!143391))))

(declare-fun e!1173579 () Bool)

(assert (=> b!1836466 (= e!1173579 (and tp!519530 tp!519529))))

(declare-fun b!1836465 () Bool)

(declare-fun e!1173578 () Bool)

(declare-fun tp!519528 () Bool)

(assert (=> b!1836465 (= e!1173578 (and tp!519528 (inv!26256 (tag!4063 (h!25586 (t!171380 rs!808)))) (inv!26259 (transformation!3649 (h!25586 (t!171380 rs!808)))) e!1173579))))

(declare-fun b!1836464 () Bool)

(declare-fun e!1173577 () Bool)

(declare-fun tp!519527 () Bool)

(assert (=> b!1836464 (= e!1173577 (and e!1173578 tp!519527))))

(assert (=> b!1835893 (= tp!519429 e!1173577)))

(assert (= b!1836465 b!1836466))

(assert (= b!1836464 b!1836465))

(assert (= (and b!1835893 ((_ is Cons!20185) (t!171380 rs!808))) b!1836464))

(declare-fun m!2264253 () Bool)

(assert (=> b!1836465 m!2264253))

(declare-fun m!2264255 () Bool)

(assert (=> b!1836465 m!2264255))

(declare-fun b!1836468 () Bool)

(declare-fun e!1173581 () Bool)

(declare-fun tp!519533 () Bool)

(declare-fun tp!519535 () Bool)

(assert (=> b!1836468 (= e!1173581 (and tp!519533 tp!519535))))

(assert (=> b!1835908 (= tp!519424 e!1173581)))

(declare-fun b!1836470 () Bool)

(declare-fun tp!519531 () Bool)

(declare-fun tp!519532 () Bool)

(assert (=> b!1836470 (= e!1173581 (and tp!519531 tp!519532))))

(declare-fun b!1836469 () Bool)

(declare-fun tp!519534 () Bool)

(assert (=> b!1836469 (= e!1173581 tp!519534)))

(declare-fun b!1836467 () Bool)

(assert (=> b!1836467 (= e!1173581 tp_is_empty!8189)))

(assert (= (and b!1835908 ((_ is ElementMatch!4977) (regex!3649 rule!580))) b!1836467))

(assert (= (and b!1835908 ((_ is Concat!8716) (regex!3649 rule!580))) b!1836468))

(assert (= (and b!1835908 ((_ is Star!4977) (regex!3649 rule!580))) b!1836469))

(assert (= (and b!1835908 ((_ is Union!4977) (regex!3649 rule!580))) b!1836470))

(declare-fun b!1836472 () Bool)

(declare-fun e!1173582 () Bool)

(declare-fun tp!519538 () Bool)

(declare-fun tp!519540 () Bool)

(assert (=> b!1836472 (= e!1173582 (and tp!519538 tp!519540))))

(assert (=> b!1835915 (= tp!519432 e!1173582)))

(declare-fun b!1836474 () Bool)

(declare-fun tp!519536 () Bool)

(declare-fun tp!519537 () Bool)

(assert (=> b!1836474 (= e!1173582 (and tp!519536 tp!519537))))

(declare-fun b!1836473 () Bool)

(declare-fun tp!519539 () Bool)

(assert (=> b!1836473 (= e!1173582 tp!519539)))

(declare-fun b!1836471 () Bool)

(assert (=> b!1836471 (= e!1173582 tp_is_empty!8189)))

(assert (= (and b!1835915 ((_ is ElementMatch!4977) (regex!3649 (h!25586 rules!4610)))) b!1836471))

(assert (= (and b!1835915 ((_ is Concat!8716) (regex!3649 (h!25586 rules!4610)))) b!1836472))

(assert (= (and b!1835915 ((_ is Star!4977) (regex!3649 (h!25586 rules!4610)))) b!1836473))

(assert (= (and b!1835915 ((_ is Union!4977) (regex!3649 (h!25586 rules!4610)))) b!1836474))

(declare-fun b_lambda!60919 () Bool)

(assert (= b_lambda!60897 (or (and b!1835914 b_free!51439 (= (toValue!5200 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1835916 b_free!51447 (= (toValue!5200 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1835918 b_free!51443 (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1836438 b_free!51459 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1836466 b_free!51463 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1835904 b_free!51435) b_lambda!60919)))

(declare-fun b_lambda!60921 () Bool)

(assert (= b_lambda!60899 (or (and b!1835916 b_free!51449 (= (toChars!5059 (transformation!3649 (h!25586 rs!808))) (toChars!5059 (transformation!3649 (rule!5839 token!567))))) (and b!1836438 b_free!51461 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toChars!5059 (transformation!3649 (rule!5839 token!567))))) (and b!1835918 b_free!51445 (= (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toChars!5059 (transformation!3649 (rule!5839 token!567))))) (and b!1835914 b_free!51441) (and b!1836466 b_free!51465 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toChars!5059 (transformation!3649 (rule!5839 token!567))))) (and b!1835904 b_free!51437 (= (toChars!5059 (transformation!3649 rule!580)) (toChars!5059 (transformation!3649 (rule!5839 token!567))))) b_lambda!60921)))

(declare-fun b_lambda!60923 () Bool)

(assert (= b_lambda!60901 (or b!1835902 b_lambda!60923)))

(declare-fun bs!408310 () Bool)

(declare-fun d!561459 () Bool)

(assert (= bs!408310 (and d!561459 b!1835902)))

(assert (=> bs!408310 (= (dynLambda!10059 lambda!72208 (h!25586 rs!808)) (regex!3649 (h!25586 rs!808)))))

(assert (=> b!1836204 d!561459))

(declare-fun b_lambda!60925 () Bool)

(assert (= b_lambda!60907 (or b!1835902 b_lambda!60925)))

(declare-fun bs!408311 () Bool)

(declare-fun d!561461 () Bool)

(assert (= bs!408311 (and d!561461 b!1835902)))

(assert (=> bs!408311 (= (dynLambda!10059 lambda!72208 (h!25586 rules!4610)) (regex!3649 (h!25586 rules!4610)))))

(assert (=> b!1836332 d!561461))

(declare-fun b_lambda!60927 () Bool)

(assert (= b_lambda!60889 (or (and b!1835916 b_free!51449 (= (toChars!5059 (transformation!3649 (h!25586 rs!808))) (toChars!5059 (transformation!3649 (rule!5839 token!567))))) (and b!1836438 b_free!51461 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toChars!5059 (transformation!3649 (rule!5839 token!567))))) (and b!1835918 b_free!51445 (= (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toChars!5059 (transformation!3649 (rule!5839 token!567))))) (and b!1835914 b_free!51441) (and b!1836466 b_free!51465 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toChars!5059 (transformation!3649 (rule!5839 token!567))))) (and b!1835904 b_free!51437 (= (toChars!5059 (transformation!3649 rule!580)) (toChars!5059 (transformation!3649 (rule!5839 token!567))))) b_lambda!60927)))

(check-sat (not b!1836459) (not d!561367) (not b!1836033) (not b!1836177) (not b!1836174) (not d!561379) (not b!1836443) (not b_next!52147) (not b!1836457) b_and!143365 (not b!1836314) (not b!1836464) (not b!1836308) (not d!561397) (not b!1835944) (not b!1836332) (not b!1836417) (not b_next!52169) (not b!1836034) (not b!1836119) (not b!1836437) (not b!1836423) (not d!561455) (not bm!114951) (not b!1836465) (not b_next!52145) (not d!561391) (not b!1836462) (not b!1836184) (not b_next!52141) (not d!561371) (not b!1836419) b_and!143391 (not b!1836470) (not b!1836030) (not b_next!52167) (not b!1835938) (not b!1836035) (not b_next!52143) (not b!1836028) (not d!561323) (not b!1836155) (not b!1836436) (not b!1836178) b_and!143359 (not b!1836029) (not b!1835932) (not b!1835931) (not d!561355) (not b!1836472) (not b_lambda!60925) (not d!561453) (not b!1836187) (not b!1836395) (not b_lambda!60921) (not b!1836420) (not d!561377) (not d!561373) (not bm!114945) (not d!561325) (not bm!114944) (not b_lambda!60923) (not b!1836424) b_and!143353 (not d!561435) (not b!1836315) (not d!561383) (not b!1836473) (not b!1836027) b_and!143361 (not b!1836162) (not b!1836463) (not d!561353) (not b!1836456) (not b!1836161) (not b_next!52149) b_and!143385 (not b!1836398) (not b!1836312) (not b!1836191) b_and!143355 (not b!1836118) tp_is_empty!8189 b_and!143367 (not b!1836043) (not b!1836151) (not b_lambda!60927) (not d!561437) (not b_lambda!60919) (not d!561387) b_and!143357 (not b!1836422) (not d!561447) (not b!1836468) (not b_next!52153) (not b!1836316) (not b!1836474) (not b!1836192) (not b!1836425) (not d!561393) (not b_next!52165) (not b!1836167) (not b!1836157) (not b_next!52139) (not b!1835939) (not b!1836198) (not b!1836204) (not d!561369) (not b!1836108) b_and!143387 (not d!561395) (not b!1836418) (not b!1836427) (not tb!112529) (not b!1836307) b_and!143363 (not d!561449) (not b!1836185) (not b_next!52151) (not d!561457) (not b!1836455) (not b!1836310) (not b!1836469) (not b!1836154) (not d!561375) (not d!561389) (not b_next!52163) (not b!1836461) (not b!1836181) (not b!1835929) (not b!1836031) b_and!143389 (not tb!112505) (not b!1836394) (not b!1836458) (not d!561321))
(check-sat (not b_next!52147) b_and!143365 (not b_next!52169) (not b_next!52145) (not b_next!52141) b_and!143391 b_and!143359 b_and!143353 b_and!143361 b_and!143355 b_and!143367 b_and!143357 (not b_next!52153) (not b_next!52165) (not b_next!52139) b_and!143387 (not b_next!52163) b_and!143389 (not b_next!52167) (not b_next!52143) (not b_next!52149) b_and!143385 b_and!143363 (not b_next!52151))
(get-model)

(declare-fun d!561487 () Bool)

(assert (=> d!561487 (= (isEmpty!12748 (tail!2754 lt!712625)) ((_ is Nil!20183) (tail!2754 lt!712625)))))

(assert (=> b!1836151 d!561487))

(declare-fun d!561489 () Bool)

(assert (=> d!561489 (= (tail!2754 lt!712625) (t!171378 lt!712625))))

(assert (=> b!1836151 d!561489))

(declare-fun d!561491 () Bool)

(assert (=> d!561491 (= (isEmpty!12751 (t!171381 (map!4192 rules!4610 lambda!72208))) ((_ is Nil!20186) (t!171381 (map!4192 rules!4610 lambda!72208))))))

(assert (=> b!1836308 d!561491))

(declare-fun d!561493 () Bool)

(assert (=> d!561493 (= (get!6231 lt!712672) (v!25811 lt!712672))))

(assert (=> b!1836029 d!561493))

(declare-fun d!561495 () Bool)

(declare-fun lt!712798 () Int)

(assert (=> d!561495 (>= lt!712798 0)))

(declare-fun e!1173584 () Int)

(assert (=> d!561495 (= lt!712798 e!1173584)))

(declare-fun c!299572 () Bool)

(assert (=> d!561495 (= c!299572 ((_ is Nil!20183) (originalCharacters!4457 (_1!11219 (get!6231 lt!712672)))))))

(assert (=> d!561495 (= (size!16014 (originalCharacters!4457 (_1!11219 (get!6231 lt!712672)))) lt!712798)))

(declare-fun b!1836480 () Bool)

(assert (=> b!1836480 (= e!1173584 0)))

(declare-fun b!1836481 () Bool)

(assert (=> b!1836481 (= e!1173584 (+ 1 (size!16014 (t!171378 (originalCharacters!4457 (_1!11219 (get!6231 lt!712672)))))))))

(assert (= (and d!561495 c!299572) b!1836480))

(assert (= (and d!561495 (not c!299572)) b!1836481))

(declare-fun m!2264271 () Bool)

(assert (=> b!1836481 m!2264271))

(assert (=> b!1836029 d!561495))

(declare-fun d!561497 () Bool)

(declare-fun e!1173587 () Bool)

(assert (=> d!561497 e!1173587))

(declare-fun res!825665 () Bool)

(assert (=> d!561497 (=> (not res!825665) (not e!1173587))))

(declare-fun lt!712801 () BalanceConc!13306)

(assert (=> d!561497 (= res!825665 (= (list!8203 lt!712801) lt!712628))))

(declare-fun fromList!457 (List!20253) Conc!6681)

(assert (=> d!561497 (= lt!712801 (BalanceConc!13307 (fromList!457 lt!712628)))))

(assert (=> d!561497 (= (fromListB!1196 lt!712628) lt!712801)))

(declare-fun b!1836484 () Bool)

(declare-fun isBalanced!2071 (Conc!6681) Bool)

(assert (=> b!1836484 (= e!1173587 (isBalanced!2071 (fromList!457 lt!712628)))))

(assert (= (and d!561497 res!825665) b!1836484))

(declare-fun m!2264273 () Bool)

(assert (=> d!561497 m!2264273))

(declare-fun m!2264275 () Bool)

(assert (=> d!561497 m!2264275))

(assert (=> b!1836484 m!2264275))

(assert (=> b!1836484 m!2264275))

(declare-fun m!2264277 () Bool)

(assert (=> b!1836484 m!2264277))

(assert (=> d!561353 d!561497))

(declare-fun b!1836485 () Bool)

(declare-fun e!1173592 () Bool)

(declare-fun e!1173590 () Bool)

(assert (=> b!1836485 (= e!1173592 e!1173590)))

(declare-fun res!825670 () Bool)

(assert (=> b!1836485 (=> res!825670 e!1173590)))

(declare-fun call!114957 () Bool)

(assert (=> b!1836485 (= res!825670 call!114957)))

(declare-fun b!1836486 () Bool)

(declare-fun res!825666 () Bool)

(declare-fun e!1173593 () Bool)

(assert (=> b!1836486 (=> (not res!825666) (not e!1173593))))

(assert (=> b!1836486 (= res!825666 (not call!114957))))

(declare-fun b!1836487 () Bool)

(declare-fun res!825668 () Bool)

(assert (=> b!1836487 (=> (not res!825668) (not e!1173593))))

(assert (=> b!1836487 (= res!825668 (isEmpty!12748 (tail!2754 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672)))))))))

(declare-fun b!1836488 () Bool)

(declare-fun e!1173588 () Bool)

(declare-fun lt!712802 () Bool)

(assert (=> b!1836488 (= e!1173588 (= lt!712802 call!114957))))

(declare-fun b!1836489 () Bool)

(declare-fun res!825669 () Bool)

(declare-fun e!1173589 () Bool)

(assert (=> b!1836489 (=> res!825669 e!1173589)))

(assert (=> b!1836489 (= res!825669 (not ((_ is ElementMatch!4977) (regex!3649 rule!580))))))

(declare-fun e!1173591 () Bool)

(assert (=> b!1836489 (= e!1173591 e!1173589)))

(declare-fun b!1836490 () Bool)

(assert (=> b!1836490 (= e!1173593 (= (head!4295 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))) (c!299472 (regex!3649 rule!580))))))

(declare-fun b!1836491 () Bool)

(declare-fun e!1173594 () Bool)

(assert (=> b!1836491 (= e!1173594 (matchR!2440 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672)))))) (tail!2754 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672)))))))))

(declare-fun b!1836493 () Bool)

(assert (=> b!1836493 (= e!1173594 (nullable!1553 (regex!3649 rule!580)))))

(declare-fun b!1836494 () Bool)

(assert (=> b!1836494 (= e!1173589 e!1173592)))

(declare-fun res!825672 () Bool)

(assert (=> b!1836494 (=> (not res!825672) (not e!1173592))))

(assert (=> b!1836494 (= res!825672 (not lt!712802))))

(declare-fun b!1836495 () Bool)

(assert (=> b!1836495 (= e!1173588 e!1173591)))

(declare-fun c!299576 () Bool)

(assert (=> b!1836495 (= c!299576 ((_ is EmptyLang!4977) (regex!3649 rule!580)))))

(declare-fun b!1836496 () Bool)

(declare-fun res!825673 () Bool)

(assert (=> b!1836496 (=> res!825673 e!1173589)))

(assert (=> b!1836496 (= res!825673 e!1173593)))

(declare-fun res!825667 () Bool)

(assert (=> b!1836496 (=> (not res!825667) (not e!1173593))))

(assert (=> b!1836496 (= res!825667 lt!712802)))

(declare-fun bm!114952 () Bool)

(assert (=> bm!114952 (= call!114957 (isEmpty!12748 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))))))

(declare-fun b!1836492 () Bool)

(assert (=> b!1836492 (= e!1173591 (not lt!712802))))

(declare-fun d!561499 () Bool)

(assert (=> d!561499 e!1173588))

(declare-fun c!299574 () Bool)

(assert (=> d!561499 (= c!299574 ((_ is EmptyExpr!4977) (regex!3649 rule!580)))))

(assert (=> d!561499 (= lt!712802 e!1173594)))

(declare-fun c!299575 () Bool)

(assert (=> d!561499 (= c!299575 (isEmpty!12748 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))))))

(assert (=> d!561499 (validRegex!2035 (regex!3649 rule!580))))

(assert (=> d!561499 (= (matchR!2440 (regex!3649 rule!580) (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))) lt!712802)))

(declare-fun b!1836497 () Bool)

(assert (=> b!1836497 (= e!1173590 (not (= (head!4295 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))) (c!299472 (regex!3649 rule!580)))))))

(declare-fun b!1836498 () Bool)

(declare-fun res!825671 () Bool)

(assert (=> b!1836498 (=> res!825671 e!1173590)))

(assert (=> b!1836498 (= res!825671 (not (isEmpty!12748 (tail!2754 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))))))))

(assert (= (and d!561499 c!299575) b!1836493))

(assert (= (and d!561499 (not c!299575)) b!1836491))

(assert (= (and d!561499 c!299574) b!1836488))

(assert (= (and d!561499 (not c!299574)) b!1836495))

(assert (= (and b!1836495 c!299576) b!1836492))

(assert (= (and b!1836495 (not c!299576)) b!1836489))

(assert (= (and b!1836489 (not res!825669)) b!1836496))

(assert (= (and b!1836496 res!825667) b!1836486))

(assert (= (and b!1836486 res!825666) b!1836487))

(assert (= (and b!1836487 res!825668) b!1836490))

(assert (= (and b!1836496 (not res!825673)) b!1836494))

(assert (= (and b!1836494 res!825672) b!1836485))

(assert (= (and b!1836485 (not res!825670)) b!1836498))

(assert (= (and b!1836498 (not res!825671)) b!1836497))

(assert (= (or b!1836488 b!1836485 b!1836486) bm!114952))

(assert (=> b!1836491 m!2263847))

(declare-fun m!2264279 () Bool)

(assert (=> b!1836491 m!2264279))

(assert (=> b!1836491 m!2264279))

(declare-fun m!2264281 () Bool)

(assert (=> b!1836491 m!2264281))

(assert (=> b!1836491 m!2263847))

(declare-fun m!2264283 () Bool)

(assert (=> b!1836491 m!2264283))

(assert (=> b!1836491 m!2264281))

(assert (=> b!1836491 m!2264283))

(declare-fun m!2264285 () Bool)

(assert (=> b!1836491 m!2264285))

(assert (=> b!1836497 m!2263847))

(assert (=> b!1836497 m!2264279))

(assert (=> b!1836487 m!2263847))

(assert (=> b!1836487 m!2264283))

(assert (=> b!1836487 m!2264283))

(declare-fun m!2264287 () Bool)

(assert (=> b!1836487 m!2264287))

(assert (=> bm!114952 m!2263847))

(declare-fun m!2264289 () Bool)

(assert (=> bm!114952 m!2264289))

(assert (=> b!1836498 m!2263847))

(assert (=> b!1836498 m!2264283))

(assert (=> b!1836498 m!2264283))

(assert (=> b!1836498 m!2264287))

(assert (=> b!1836490 m!2263847))

(assert (=> b!1836490 m!2264279))

(assert (=> d!561499 m!2263847))

(assert (=> d!561499 m!2264289))

(assert (=> d!561499 m!2263969))

(assert (=> b!1836493 m!2263971))

(assert (=> b!1836031 d!561499))

(declare-fun d!561501 () Bool)

(assert (=> d!561501 (= (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672)))) (list!8205 (c!299473 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))))))

(declare-fun bs!408315 () Bool)

(assert (= bs!408315 d!561501))

(declare-fun m!2264291 () Bool)

(assert (=> bs!408315 m!2264291))

(assert (=> b!1836031 d!561501))

(declare-fun d!561503 () Bool)

(declare-fun lt!712803 () BalanceConc!13306)

(assert (=> d!561503 (= (list!8203 lt!712803) (originalCharacters!4457 (_1!11219 (get!6231 lt!712672))))))

(assert (=> d!561503 (= lt!712803 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672))))) (value!113663 (_1!11219 (get!6231 lt!712672)))))))

(assert (=> d!561503 (= (charsOf!2292 (_1!11219 (get!6231 lt!712672))) lt!712803)))

(declare-fun b_lambda!60931 () Bool)

(assert (=> (not b_lambda!60931) (not d!561503)))

(declare-fun tb!112565 () Bool)

(declare-fun t!171445 () Bool)

(assert (=> (and b!1835904 (= (toChars!5059 (transformation!3649 rule!580)) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171445) tb!112565))

(declare-fun b!1836499 () Bool)

(declare-fun e!1173595 () Bool)

(declare-fun tp!519542 () Bool)

(assert (=> b!1836499 (= e!1173595 (and (inv!26263 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672))))) (value!113663 (_1!11219 (get!6231 lt!712672)))))) tp!519542))))

(declare-fun result!135348 () Bool)

(assert (=> tb!112565 (= result!135348 (and (inv!26264 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672))))) (value!113663 (_1!11219 (get!6231 lt!712672))))) e!1173595))))

(assert (= tb!112565 b!1836499))

(declare-fun m!2264293 () Bool)

(assert (=> b!1836499 m!2264293))

(declare-fun m!2264295 () Bool)

(assert (=> tb!112565 m!2264295))

(assert (=> d!561503 t!171445))

(declare-fun b_and!143405 () Bool)

(assert (= b_and!143361 (and (=> t!171445 result!135348) b_and!143405)))

(declare-fun t!171447 () Bool)

(declare-fun tb!112567 () Bool)

(assert (=> (and b!1835914 (= (toChars!5059 (transformation!3649 (rule!5839 token!567))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171447) tb!112567))

(declare-fun result!135350 () Bool)

(assert (= result!135350 result!135348))

(assert (=> d!561503 t!171447))

(declare-fun b_and!143407 () Bool)

(assert (= b_and!143363 (and (=> t!171447 result!135350) b_and!143407)))

(declare-fun tb!112569 () Bool)

(declare-fun t!171449 () Bool)

(assert (=> (and b!1836466 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171449) tb!112569))

(declare-fun result!135352 () Bool)

(assert (= result!135352 result!135348))

(assert (=> d!561503 t!171449))

(declare-fun b_and!143409 () Bool)

(assert (= b_and!143391 (and (=> t!171449 result!135352) b_and!143409)))

(declare-fun t!171451 () Bool)

(declare-fun tb!112571 () Bool)

(assert (=> (and b!1836438 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171451) tb!112571))

(declare-fun result!135354 () Bool)

(assert (= result!135354 result!135348))

(assert (=> d!561503 t!171451))

(declare-fun b_and!143411 () Bool)

(assert (= b_and!143387 (and (=> t!171451 result!135354) b_and!143411)))

(declare-fun t!171453 () Bool)

(declare-fun tb!112573 () Bool)

(assert (=> (and b!1835916 (= (toChars!5059 (transformation!3649 (h!25586 rs!808))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171453) tb!112573))

(declare-fun result!135356 () Bool)

(assert (= result!135356 result!135348))

(assert (=> d!561503 t!171453))

(declare-fun b_and!143413 () Bool)

(assert (= b_and!143367 (and (=> t!171453 result!135356) b_and!143413)))

(declare-fun t!171455 () Bool)

(declare-fun tb!112575 () Bool)

(assert (=> (and b!1835918 (= (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171455) tb!112575))

(declare-fun result!135358 () Bool)

(assert (= result!135358 result!135348))

(assert (=> d!561503 t!171455))

(declare-fun b_and!143415 () Bool)

(assert (= b_and!143365 (and (=> t!171455 result!135358) b_and!143415)))

(declare-fun m!2264297 () Bool)

(assert (=> d!561503 m!2264297))

(declare-fun m!2264299 () Bool)

(assert (=> d!561503 m!2264299))

(assert (=> b!1836031 d!561503))

(assert (=> b!1836031 d!561493))

(declare-fun d!561505 () Bool)

(declare-fun lt!712806 () Int)

(assert (=> d!561505 (>= lt!712806 0)))

(declare-fun e!1173598 () Int)

(assert (=> d!561505 (= lt!712806 e!1173598)))

(declare-fun c!299579 () Bool)

(assert (=> d!561505 (= c!299579 ((_ is Nil!20186) lt!712757))))

(assert (=> d!561505 (= (size!16019 lt!712757) lt!712806)))

(declare-fun b!1836504 () Bool)

(assert (=> b!1836504 (= e!1173598 0)))

(declare-fun b!1836505 () Bool)

(assert (=> b!1836505 (= e!1173598 (+ 1 (size!16019 (t!171381 lt!712757))))))

(assert (= (and d!561505 c!299579) b!1836504))

(assert (= (and d!561505 (not c!299579)) b!1836505))

(declare-fun m!2264301 () Bool)

(assert (=> b!1836505 m!2264301))

(assert (=> d!561435 d!561505))

(declare-fun d!561507 () Bool)

(declare-fun lt!712809 () Int)

(assert (=> d!561507 (>= lt!712809 0)))

(declare-fun e!1173601 () Int)

(assert (=> d!561507 (= lt!712809 e!1173601)))

(declare-fun c!299582 () Bool)

(assert (=> d!561507 (= c!299582 ((_ is Nil!20185) rules!4610))))

(assert (=> d!561507 (= (size!16020 rules!4610) lt!712809)))

(declare-fun b!1836510 () Bool)

(assert (=> b!1836510 (= e!1173601 0)))

(declare-fun b!1836511 () Bool)

(assert (=> b!1836511 (= e!1173601 (+ 1 (size!16020 (t!171380 rules!4610))))))

(assert (= (and d!561507 c!299582) b!1836510))

(assert (= (and d!561507 (not c!299582)) b!1836511))

(declare-fun m!2264303 () Bool)

(assert (=> b!1836511 m!2264303))

(assert (=> d!561435 d!561507))

(declare-fun d!561509 () Bool)

(assert (=> d!561509 true))

(declare-fun lambda!72244 () Int)

(declare-fun order!13061 () Int)

(declare-fun order!13059 () Int)

(declare-fun dynLambda!10063 (Int Int) Int)

(declare-fun dynLambda!10064 (Int Int) Int)

(assert (=> d!561509 (< (dynLambda!10063 order!13059 (toValue!5200 (transformation!3649 (rule!5839 token!567)))) (dynLambda!10064 order!13061 lambda!72244))))

(declare-fun Forall2!576 (Int) Bool)

(assert (=> d!561509 (= (equivClasses!1411 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 (rule!5839 token!567)))) (Forall2!576 lambda!72244))))

(declare-fun bs!408316 () Bool)

(assert (= bs!408316 d!561509))

(declare-fun m!2264305 () Bool)

(assert (=> bs!408316 m!2264305))

(assert (=> b!1836395 d!561509))

(declare-fun d!561511 () Bool)

(declare-fun lt!712810 () Int)

(assert (=> d!561511 (>= lt!712810 0)))

(declare-fun e!1173604 () Int)

(assert (=> d!561511 (= lt!712810 e!1173604)))

(declare-fun c!299583 () Bool)

(assert (=> d!561511 (= c!299583 ((_ is Nil!20183) (t!171378 lt!712628)))))

(assert (=> d!561511 (= (size!16014 (t!171378 lt!712628)) lt!712810)))

(declare-fun b!1836516 () Bool)

(assert (=> b!1836516 (= e!1173604 0)))

(declare-fun b!1836517 () Bool)

(assert (=> b!1836517 (= e!1173604 (+ 1 (size!16014 (t!171378 (t!171378 lt!712628)))))))

(assert (= (and d!561511 c!299583) b!1836516))

(assert (= (and d!561511 (not c!299583)) b!1836517))

(declare-fun m!2264307 () Bool)

(assert (=> b!1836517 m!2264307))

(assert (=> b!1836043 d!561511))

(assert (=> b!1836027 d!561493))

(declare-fun d!561513 () Bool)

(declare-fun res!825680 () Bool)

(declare-fun e!1173609 () Bool)

(assert (=> d!561513 (=> res!825680 e!1173609)))

(assert (=> d!561513 (= res!825680 ((_ is Nil!20185) rules!4610))))

(assert (=> d!561513 (= (noDuplicateTag!1393 thiss!28318 rules!4610 Nil!20187) e!1173609)))

(declare-fun b!1836522 () Bool)

(declare-fun e!1173610 () Bool)

(assert (=> b!1836522 (= e!1173609 e!1173610)))

(declare-fun res!825681 () Bool)

(assert (=> b!1836522 (=> (not res!825681) (not e!1173610))))

(declare-fun contains!3732 (List!20257 String!23027) Bool)

(assert (=> b!1836522 (= res!825681 (not (contains!3732 Nil!20187 (tag!4063 (h!25586 rules!4610)))))))

(declare-fun b!1836523 () Bool)

(assert (=> b!1836523 (= e!1173610 (noDuplicateTag!1393 thiss!28318 (t!171380 rules!4610) (Cons!20187 (tag!4063 (h!25586 rules!4610)) Nil!20187)))))

(assert (= (and d!561513 (not res!825680)) b!1836522))

(assert (= (and b!1836522 res!825681) b!1836523))

(declare-fun m!2264309 () Bool)

(assert (=> b!1836522 m!2264309))

(declare-fun m!2264311 () Bool)

(assert (=> b!1836523 m!2264311))

(assert (=> b!1836108 d!561513))

(declare-fun b!1836526 () Bool)

(declare-fun res!825683 () Bool)

(declare-fun e!1173611 () Bool)

(assert (=> b!1836526 (=> (not res!825683) (not e!1173611))))

(declare-fun lt!712811 () List!20253)

(assert (=> b!1836526 (= res!825683 (= (size!16014 lt!712811) (+ (size!16014 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))) (size!16014 (_2!11219 (get!6231 lt!712794))))))))

(declare-fun b!1836524 () Bool)

(declare-fun e!1173612 () List!20253)

(assert (=> b!1836524 (= e!1173612 (_2!11219 (get!6231 lt!712794)))))

(declare-fun d!561515 () Bool)

(assert (=> d!561515 e!1173611))

(declare-fun res!825682 () Bool)

(assert (=> d!561515 (=> (not res!825682) (not e!1173611))))

(assert (=> d!561515 (= res!825682 (= (content!3002 lt!712811) ((_ map or) (content!3002 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))) (content!3002 (_2!11219 (get!6231 lt!712794))))))))

(assert (=> d!561515 (= lt!712811 e!1173612)))

(declare-fun c!299584 () Bool)

(assert (=> d!561515 (= c!299584 ((_ is Nil!20183) (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))))))

(assert (=> d!561515 (= (++!5473 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794)))) (_2!11219 (get!6231 lt!712794))) lt!712811)))

(declare-fun b!1836525 () Bool)

(assert (=> b!1836525 (= e!1173612 (Cons!20183 (h!25584 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))) (++!5473 (t!171378 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))) (_2!11219 (get!6231 lt!712794)))))))

(declare-fun b!1836527 () Bool)

(assert (=> b!1836527 (= e!1173611 (or (not (= (_2!11219 (get!6231 lt!712794)) Nil!20183)) (= lt!712811 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794)))))))))

(assert (= (and d!561515 c!299584) b!1836524))

(assert (= (and d!561515 (not c!299584)) b!1836525))

(assert (= (and d!561515 res!825682) b!1836526))

(assert (= (and b!1836526 res!825683) b!1836527))

(declare-fun m!2264313 () Bool)

(assert (=> b!1836526 m!2264313))

(assert (=> b!1836526 m!2264217))

(declare-fun m!2264315 () Bool)

(assert (=> b!1836526 m!2264315))

(assert (=> b!1836526 m!2264219))

(declare-fun m!2264317 () Bool)

(assert (=> d!561515 m!2264317))

(assert (=> d!561515 m!2264217))

(declare-fun m!2264319 () Bool)

(assert (=> d!561515 m!2264319))

(declare-fun m!2264321 () Bool)

(assert (=> d!561515 m!2264321))

(declare-fun m!2264323 () Bool)

(assert (=> b!1836525 m!2264323))

(assert (=> b!1836422 d!561515))

(declare-fun d!561517 () Bool)

(assert (=> d!561517 (= (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794)))) (list!8205 (c!299473 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))))))

(declare-fun bs!408317 () Bool)

(assert (= bs!408317 d!561517))

(declare-fun m!2264325 () Bool)

(assert (=> bs!408317 m!2264325))

(assert (=> b!1836422 d!561517))

(declare-fun d!561519 () Bool)

(declare-fun lt!712812 () BalanceConc!13306)

(assert (=> d!561519 (= (list!8203 lt!712812) (originalCharacters!4457 (_1!11219 (get!6231 lt!712794))))))

(assert (=> d!561519 (= lt!712812 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794))))) (value!113663 (_1!11219 (get!6231 lt!712794)))))))

(assert (=> d!561519 (= (charsOf!2292 (_1!11219 (get!6231 lt!712794))) lt!712812)))

(declare-fun b_lambda!60933 () Bool)

(assert (=> (not b_lambda!60933) (not d!561519)))

(declare-fun t!171457 () Bool)

(declare-fun tb!112577 () Bool)

(assert (=> (and b!1835916 (= (toChars!5059 (transformation!3649 (h!25586 rs!808))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171457) tb!112577))

(declare-fun b!1836528 () Bool)

(declare-fun e!1173613 () Bool)

(declare-fun tp!519543 () Bool)

(assert (=> b!1836528 (= e!1173613 (and (inv!26263 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794))))) (value!113663 (_1!11219 (get!6231 lt!712794)))))) tp!519543))))

(declare-fun result!135360 () Bool)

(assert (=> tb!112577 (= result!135360 (and (inv!26264 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794))))) (value!113663 (_1!11219 (get!6231 lt!712794))))) e!1173613))))

(assert (= tb!112577 b!1836528))

(declare-fun m!2264327 () Bool)

(assert (=> b!1836528 m!2264327))

(declare-fun m!2264329 () Bool)

(assert (=> tb!112577 m!2264329))

(assert (=> d!561519 t!171457))

(declare-fun b_and!143417 () Bool)

(assert (= b_and!143413 (and (=> t!171457 result!135360) b_and!143417)))

(declare-fun tb!112579 () Bool)

(declare-fun t!171459 () Bool)

(assert (=> (and b!1836438 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171459) tb!112579))

(declare-fun result!135362 () Bool)

(assert (= result!135362 result!135360))

(assert (=> d!561519 t!171459))

(declare-fun b_and!143419 () Bool)

(assert (= b_and!143411 (and (=> t!171459 result!135362) b_and!143419)))

(declare-fun t!171461 () Bool)

(declare-fun tb!112581 () Bool)

(assert (=> (and b!1835904 (= (toChars!5059 (transformation!3649 rule!580)) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171461) tb!112581))

(declare-fun result!135364 () Bool)

(assert (= result!135364 result!135360))

(assert (=> d!561519 t!171461))

(declare-fun b_and!143421 () Bool)

(assert (= b_and!143405 (and (=> t!171461 result!135364) b_and!143421)))

(declare-fun t!171463 () Bool)

(declare-fun tb!112583 () Bool)

(assert (=> (and b!1835914 (= (toChars!5059 (transformation!3649 (rule!5839 token!567))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171463) tb!112583))

(declare-fun result!135366 () Bool)

(assert (= result!135366 result!135360))

(assert (=> d!561519 t!171463))

(declare-fun b_and!143423 () Bool)

(assert (= b_and!143407 (and (=> t!171463 result!135366) b_and!143423)))

(declare-fun t!171465 () Bool)

(declare-fun tb!112585 () Bool)

(assert (=> (and b!1836466 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171465) tb!112585))

(declare-fun result!135368 () Bool)

(assert (= result!135368 result!135360))

(assert (=> d!561519 t!171465))

(declare-fun b_and!143425 () Bool)

(assert (= b_and!143409 (and (=> t!171465 result!135368) b_and!143425)))

(declare-fun t!171467 () Bool)

(declare-fun tb!112587 () Bool)

(assert (=> (and b!1835918 (= (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171467) tb!112587))

(declare-fun result!135370 () Bool)

(assert (= result!135370 result!135360))

(assert (=> d!561519 t!171467))

(declare-fun b_and!143427 () Bool)

(assert (= b_and!143415 (and (=> t!171467 result!135370) b_and!143427)))

(declare-fun m!2264331 () Bool)

(assert (=> d!561519 m!2264331))

(declare-fun m!2264333 () Bool)

(assert (=> d!561519 m!2264333))

(assert (=> b!1836422 d!561519))

(declare-fun d!561521 () Bool)

(assert (=> d!561521 (= (get!6231 lt!712794) (v!25811 lt!712794))))

(assert (=> b!1836422 d!561521))

(declare-fun d!561523 () Bool)

(assert (=> d!561523 (= (isEmpty!12749 lt!712672) (not ((_ is Some!4228) lt!712672)))))

(assert (=> d!561325 d!561523))

(declare-fun d!561525 () Bool)

(assert (=> d!561525 (= (isEmpty!12748 (_1!11221 lt!712670)) ((_ is Nil!20183) (_1!11221 lt!712670)))))

(assert (=> d!561325 d!561525))

(declare-fun d!561527 () Bool)

(declare-fun lt!712832 () tuple2!19638)

(assert (=> d!561527 (= (++!5473 (_1!11221 lt!712832) (_2!11221 lt!712832)) input!3681)))

(declare-fun sizeTr!73 (List!20253 Int) Int)

(assert (=> d!561527 (= lt!712832 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 0 input!3681 input!3681 (sizeTr!73 input!3681 0)))))

(declare-fun lt!712829 () Unit!34879)

(declare-fun lt!712835 () Unit!34879)

(assert (=> d!561527 (= lt!712829 lt!712835)))

(declare-fun lt!712836 () List!20253)

(declare-fun lt!712831 () Int)

(assert (=> d!561527 (= (sizeTr!73 lt!712836 lt!712831) (+ (size!16014 lt!712836) lt!712831))))

(declare-fun lemmaSizeTrEqualsSize!73 (List!20253 Int) Unit!34879)

(assert (=> d!561527 (= lt!712835 (lemmaSizeTrEqualsSize!73 lt!712836 lt!712831))))

(assert (=> d!561527 (= lt!712831 0)))

(assert (=> d!561527 (= lt!712836 Nil!20183)))

(declare-fun lt!712834 () Unit!34879)

(declare-fun lt!712830 () Unit!34879)

(assert (=> d!561527 (= lt!712834 lt!712830)))

(declare-fun lt!712833 () Int)

(assert (=> d!561527 (= (sizeTr!73 input!3681 lt!712833) (+ (size!16014 input!3681) lt!712833))))

(assert (=> d!561527 (= lt!712830 (lemmaSizeTrEqualsSize!73 input!3681 lt!712833))))

(assert (=> d!561527 (= lt!712833 0)))

(assert (=> d!561527 (validRegex!2035 (regex!3649 rule!580))))

(assert (=> d!561527 (= (findLongestMatch!452 (regex!3649 rule!580) input!3681) lt!712832)))

(declare-fun bs!408318 () Bool)

(assert (= bs!408318 d!561527))

(declare-fun m!2264335 () Bool)

(assert (=> bs!408318 m!2264335))

(assert (=> bs!408318 m!2263863))

(declare-fun m!2264337 () Bool)

(assert (=> bs!408318 m!2264337))

(declare-fun m!2264339 () Bool)

(assert (=> bs!408318 m!2264339))

(declare-fun m!2264341 () Bool)

(assert (=> bs!408318 m!2264341))

(assert (=> bs!408318 m!2263969))

(declare-fun m!2264343 () Bool)

(assert (=> bs!408318 m!2264343))

(assert (=> bs!408318 m!2264339))

(declare-fun m!2264345 () Bool)

(assert (=> bs!408318 m!2264345))

(declare-fun m!2264347 () Bool)

(assert (=> bs!408318 m!2264347))

(declare-fun m!2264349 () Bool)

(assert (=> bs!408318 m!2264349))

(assert (=> d!561325 d!561527))

(assert (=> d!561325 d!561375))

(declare-fun d!561529 () Bool)

(assert (=> d!561529 (= (isEmpty!12748 (originalCharacters!4457 token!567)) ((_ is Nil!20183) (originalCharacters!4457 token!567)))))

(assert (=> d!561321 d!561529))

(assert (=> d!561437 d!561323))

(declare-fun d!561531 () Bool)

(declare-fun res!825688 () Bool)

(declare-fun e!1173618 () Bool)

(assert (=> d!561531 (=> res!825688 e!1173618)))

(assert (=> d!561531 (= res!825688 ((_ is Nil!20186) (map!4192 rules!4610 lambda!72234)))))

(assert (=> d!561531 (= (forall!4352 (map!4192 rules!4610 lambda!72234) lambda!72235) e!1173618)))

(declare-fun b!1836533 () Bool)

(declare-fun e!1173619 () Bool)

(assert (=> b!1836533 (= e!1173618 e!1173619)))

(declare-fun res!825689 () Bool)

(assert (=> b!1836533 (=> (not res!825689) (not e!1173619))))

(declare-fun dynLambda!10065 (Int Regex!4977) Bool)

(assert (=> b!1836533 (= res!825689 (dynLambda!10065 lambda!72235 (h!25587 (map!4192 rules!4610 lambda!72234))))))

(declare-fun b!1836534 () Bool)

(assert (=> b!1836534 (= e!1173619 (forall!4352 (t!171381 (map!4192 rules!4610 lambda!72234)) lambda!72235))))

(assert (= (and d!561531 (not res!825688)) b!1836533))

(assert (= (and b!1836533 res!825689) b!1836534))

(declare-fun b_lambda!60935 () Bool)

(assert (=> (not b_lambda!60935) (not b!1836533)))

(declare-fun m!2264351 () Bool)

(assert (=> b!1836533 m!2264351))

(declare-fun m!2264353 () Bool)

(assert (=> b!1836534 m!2264353))

(assert (=> d!561437 d!561531))

(declare-fun d!561533 () Bool)

(declare-fun lt!712837 () List!20256)

(assert (=> d!561533 (= (size!16019 lt!712837) (size!16020 rules!4610))))

(declare-fun e!1173620 () List!20256)

(assert (=> d!561533 (= lt!712837 e!1173620)))

(declare-fun c!299585 () Bool)

(assert (=> d!561533 (= c!299585 ((_ is Nil!20185) rules!4610))))

(assert (=> d!561533 (= (map!4192 rules!4610 lambda!72234) lt!712837)))

(declare-fun b!1836535 () Bool)

(assert (=> b!1836535 (= e!1173620 Nil!20186)))

(declare-fun b!1836536 () Bool)

(assert (=> b!1836536 (= e!1173620 ($colon$colon!468 (map!4192 (t!171380 rules!4610) lambda!72234) (dynLambda!10059 lambda!72234 (h!25586 rules!4610))))))

(assert (= (and d!561533 c!299585) b!1836535))

(assert (= (and d!561533 (not c!299585)) b!1836536))

(declare-fun b_lambda!60937 () Bool)

(assert (=> (not b_lambda!60937) (not b!1836536)))

(declare-fun m!2264355 () Bool)

(assert (=> d!561533 m!2264355))

(assert (=> d!561533 m!2264137))

(declare-fun m!2264357 () Bool)

(assert (=> b!1836536 m!2264357))

(declare-fun m!2264359 () Bool)

(assert (=> b!1836536 m!2264359))

(assert (=> b!1836536 m!2264357))

(assert (=> b!1836536 m!2264359))

(declare-fun m!2264361 () Bool)

(assert (=> b!1836536 m!2264361))

(assert (=> d!561437 d!561533))

(assert (=> d!561437 d!561325))

(declare-fun d!561535 () Bool)

(assert (=> d!561535 (= (seqFromList!2606 lt!712775) (fromListB!1196 lt!712775))))

(declare-fun bs!408319 () Bool)

(assert (= bs!408319 d!561535))

(declare-fun m!2264363 () Bool)

(assert (=> bs!408319 m!2264363))

(assert (=> d!561437 d!561535))

(declare-fun bs!408320 () Bool)

(declare-fun d!561537 () Bool)

(assert (= bs!408320 (and d!561537 d!561449)))

(declare-fun lambda!72245 () Int)

(assert (=> bs!408320 (= lambda!72245 lambda!72238)))

(assert (=> d!561537 true))

(declare-fun lt!712838 () Bool)

(assert (=> d!561537 (= lt!712838 (rulesValidInductive!1264 thiss!28318 rules!4610))))

(assert (=> d!561537 (= lt!712838 (forall!4353 rules!4610 lambda!72245))))

(assert (=> d!561537 (= (rulesValid!1396 thiss!28318 rules!4610) lt!712838)))

(declare-fun bs!408321 () Bool)

(assert (= bs!408321 d!561537))

(assert (=> bs!408321 m!2264235))

(declare-fun m!2264365 () Bool)

(assert (=> bs!408321 m!2264365))

(assert (=> d!561437 d!561537))

(declare-fun d!561539 () Bool)

(assert (=> d!561539 (= (apply!5437 (transformation!3649 rule!580) (seqFromList!2606 lt!712775)) (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 lt!712775)))))

(declare-fun b_lambda!60939 () Bool)

(assert (=> (not b_lambda!60939) (not d!561539)))

(declare-fun tb!112589 () Bool)

(declare-fun t!171469 () Bool)

(assert (=> (and b!1836438 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toValue!5200 (transformation!3649 rule!580))) t!171469) tb!112589))

(declare-fun result!135372 () Bool)

(assert (=> tb!112589 (= result!135372 (inv!21 (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 lt!712775))))))

(declare-fun m!2264367 () Bool)

(assert (=> tb!112589 m!2264367))

(assert (=> d!561539 t!171469))

(declare-fun b_and!143429 () Bool)

(assert (= b_and!143385 (and (=> t!171469 result!135372) b_and!143429)))

(declare-fun t!171471 () Bool)

(declare-fun tb!112591 () Bool)

(assert (=> (and b!1836466 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toValue!5200 (transformation!3649 rule!580))) t!171471) tb!112591))

(declare-fun result!135374 () Bool)

(assert (= result!135374 result!135372))

(assert (=> d!561539 t!171471))

(declare-fun b_and!143431 () Bool)

(assert (= b_and!143389 (and (=> t!171471 result!135374) b_and!143431)))

(declare-fun t!171473 () Bool)

(declare-fun tb!112593 () Bool)

(assert (=> (and b!1835904 (= (toValue!5200 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 rule!580))) t!171473) tb!112593))

(declare-fun result!135376 () Bool)

(assert (= result!135376 result!135372))

(assert (=> d!561539 t!171473))

(declare-fun b_and!143433 () Bool)

(assert (= b_and!143353 (and (=> t!171473 result!135376) b_and!143433)))

(declare-fun tb!112595 () Bool)

(declare-fun t!171475 () Bool)

(assert (=> (and b!1835918 (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 rule!580))) t!171475) tb!112595))

(declare-fun result!135378 () Bool)

(assert (= result!135378 result!135372))

(assert (=> d!561539 t!171475))

(declare-fun b_and!143435 () Bool)

(assert (= b_and!143357 (and (=> t!171475 result!135378) b_and!143435)))

(declare-fun t!171477 () Bool)

(declare-fun tb!112597 () Bool)

(assert (=> (and b!1835916 (= (toValue!5200 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 rule!580))) t!171477) tb!112597))

(declare-fun result!135380 () Bool)

(assert (= result!135380 result!135372))

(assert (=> d!561539 t!171477))

(declare-fun b_and!143437 () Bool)

(assert (= b_and!143359 (and (=> t!171477 result!135380) b_and!143437)))

(declare-fun tb!112599 () Bool)

(declare-fun t!171479 () Bool)

(assert (=> (and b!1835914 (= (toValue!5200 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 rule!580))) t!171479) tb!112599))

(declare-fun result!135382 () Bool)

(assert (= result!135382 result!135372))

(assert (=> d!561539 t!171479))

(declare-fun b_and!143439 () Bool)

(assert (= b_and!143355 (and (=> t!171479 result!135382) b_and!143439)))

(assert (=> d!561539 m!2264187))

(declare-fun m!2264369 () Bool)

(assert (=> d!561539 m!2264369))

(assert (=> d!561437 d!561539))

(declare-fun d!561541 () Bool)

(declare-fun lt!712839 () Int)

(assert (=> d!561541 (>= lt!712839 0)))

(declare-fun e!1173622 () Int)

(assert (=> d!561541 (= lt!712839 e!1173622)))

(declare-fun c!299586 () Bool)

(assert (=> d!561541 (= c!299586 ((_ is Nil!20183) lt!712775))))

(assert (=> d!561541 (= (size!16014 lt!712775) lt!712839)))

(declare-fun b!1836537 () Bool)

(assert (=> b!1836537 (= e!1173622 0)))

(declare-fun b!1836538 () Bool)

(assert (=> b!1836538 (= e!1173622 (+ 1 (size!16014 (t!171378 lt!712775))))))

(assert (= (and d!561541 c!299586) b!1836537))

(assert (= (and d!561541 (not c!299586)) b!1836538))

(declare-fun m!2264371 () Bool)

(assert (=> b!1836538 m!2264371))

(assert (=> d!561437 d!561541))

(declare-fun d!561543 () Bool)

(assert (=> d!561543 (= (maxPrefixOneRule!1187 thiss!28318 rule!580 input!3681) (Some!4228 (tuple2!19635 (Token!6853 (apply!5437 (transformation!3649 rule!580) (seqFromList!2606 lt!712775)) rule!580 (size!16014 lt!712775) lt!712775) suffix!1698)))))

(declare-fun lt!712840 () Unit!34879)

(assert (=> d!561543 (= lt!712840 (choose!11554 thiss!28318 rules!4610 lt!712775 input!3681 suffix!1698 rule!580))))

(assert (=> d!561543 (not (isEmpty!12745 rules!4610))))

(assert (=> d!561543 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!557 thiss!28318 rules!4610 lt!712775 input!3681 suffix!1698 rule!580) lt!712840)))

(declare-fun bs!408322 () Bool)

(assert (= bs!408322 d!561543))

(assert (=> bs!408322 m!2264187))

(assert (=> bs!408322 m!2264189))

(assert (=> bs!408322 m!2263677))

(declare-fun m!2264373 () Bool)

(assert (=> bs!408322 m!2264373))

(assert (=> bs!408322 m!2263705))

(assert (=> bs!408322 m!2264195))

(assert (=> bs!408322 m!2264187))

(assert (=> d!561437 d!561543))

(assert (=> d!561437 d!561367))

(declare-fun d!561545 () Bool)

(declare-fun lt!712841 () Bool)

(assert (=> d!561545 (= lt!712841 (select (content!3004 rules!4610) (rule!5839 (_1!11219 (get!6231 lt!712794)))))))

(declare-fun e!1173624 () Bool)

(assert (=> d!561545 (= lt!712841 e!1173624)))

(declare-fun res!825691 () Bool)

(assert (=> d!561545 (=> (not res!825691) (not e!1173624))))

(assert (=> d!561545 (= res!825691 ((_ is Cons!20185) rules!4610))))

(assert (=> d!561545 (= (contains!3730 rules!4610 (rule!5839 (_1!11219 (get!6231 lt!712794)))) lt!712841)))

(declare-fun b!1836539 () Bool)

(declare-fun e!1173623 () Bool)

(assert (=> b!1836539 (= e!1173624 e!1173623)))

(declare-fun res!825690 () Bool)

(assert (=> b!1836539 (=> res!825690 e!1173623)))

(assert (=> b!1836539 (= res!825690 (= (h!25586 rules!4610) (rule!5839 (_1!11219 (get!6231 lt!712794)))))))

(declare-fun b!1836540 () Bool)

(assert (=> b!1836540 (= e!1173623 (contains!3730 (t!171380 rules!4610) (rule!5839 (_1!11219 (get!6231 lt!712794)))))))

(assert (= (and d!561545 res!825691) b!1836539))

(assert (= (and b!1836539 (not res!825690)) b!1836540))

(assert (=> d!561545 m!2263975))

(declare-fun m!2264375 () Bool)

(assert (=> d!561545 m!2264375))

(declare-fun m!2264377 () Bool)

(assert (=> b!1836540 m!2264377))

(assert (=> b!1836424 d!561545))

(assert (=> b!1836424 d!561521))

(declare-fun d!561547 () Bool)

(assert (=> d!561547 true))

(declare-fun order!13065 () Int)

(declare-fun order!13063 () Int)

(declare-fun lambda!72248 () Int)

(declare-fun dynLambda!10067 (Int Int) Int)

(declare-fun dynLambda!10068 (Int Int) Int)

(assert (=> d!561547 (< (dynLambda!10067 order!13063 (toChars!5059 (transformation!3649 (h!25586 rs!808)))) (dynLambda!10068 order!13065 lambda!72248))))

(assert (=> d!561547 true))

(assert (=> d!561547 (< (dynLambda!10063 order!13059 (toValue!5200 (transformation!3649 (h!25586 rs!808)))) (dynLambda!10068 order!13065 lambda!72248))))

(declare-fun Forall!938 (Int) Bool)

(assert (=> d!561547 (= (semiInverseModEq!1470 (toChars!5059 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 (h!25586 rs!808)))) (Forall!938 lambda!72248))))

(declare-fun bs!408323 () Bool)

(assert (= bs!408323 d!561547))

(declare-fun m!2264379 () Bool)

(assert (=> bs!408323 m!2264379))

(assert (=> d!561387 d!561547))

(declare-fun d!561549 () Bool)

(assert (=> d!561549 (= (list!8203 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567))) (list!8205 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567)))))))

(declare-fun bs!408324 () Bool)

(assert (= bs!408324 d!561549))

(declare-fun m!2264381 () Bool)

(assert (=> bs!408324 m!2264381))

(assert (=> b!1835938 d!561549))

(declare-fun b!1836545 () Bool)

(declare-fun e!1173629 () Bool)

(declare-fun e!1173627 () Bool)

(assert (=> b!1836545 (= e!1173629 e!1173627)))

(declare-fun res!825696 () Bool)

(assert (=> b!1836545 (=> res!825696 e!1173627)))

(declare-fun call!114958 () Bool)

(assert (=> b!1836545 (= res!825696 call!114958)))

(declare-fun b!1836546 () Bool)

(declare-fun res!825692 () Bool)

(declare-fun e!1173630 () Bool)

(assert (=> b!1836546 (=> (not res!825692) (not e!1173630))))

(assert (=> b!1836546 (= res!825692 (not call!114958))))

(declare-fun b!1836547 () Bool)

(declare-fun res!825694 () Bool)

(assert (=> b!1836547 (=> (not res!825694) (not e!1173630))))

(assert (=> b!1836547 (= res!825694 (isEmpty!12748 (tail!2754 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794)))))))))

(declare-fun b!1836548 () Bool)

(declare-fun e!1173625 () Bool)

(declare-fun lt!712842 () Bool)

(assert (=> b!1836548 (= e!1173625 (= lt!712842 call!114958))))

(declare-fun b!1836549 () Bool)

(declare-fun res!825695 () Bool)

(declare-fun e!1173626 () Bool)

(assert (=> b!1836549 (=> res!825695 e!1173626)))

(assert (=> b!1836549 (= res!825695 (not ((_ is ElementMatch!4977) (regex!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))))))

(declare-fun e!1173628 () Bool)

(assert (=> b!1836549 (= e!1173628 e!1173626)))

(declare-fun b!1836550 () Bool)

(assert (=> b!1836550 (= e!1173630 (= (head!4295 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))) (c!299472 (regex!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))))))

(declare-fun b!1836551 () Bool)

(declare-fun e!1173631 () Bool)

(assert (=> b!1836551 (= e!1173631 (matchR!2440 (derivativeStep!1317 (regex!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))) (head!4295 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794)))))) (tail!2754 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794)))))))))

(declare-fun b!1836553 () Bool)

(assert (=> b!1836553 (= e!1173631 (nullable!1553 (regex!3649 (rule!5839 (_1!11219 (get!6231 lt!712794))))))))

(declare-fun b!1836554 () Bool)

(assert (=> b!1836554 (= e!1173626 e!1173629)))

(declare-fun res!825698 () Bool)

(assert (=> b!1836554 (=> (not res!825698) (not e!1173629))))

(assert (=> b!1836554 (= res!825698 (not lt!712842))))

(declare-fun b!1836555 () Bool)

(assert (=> b!1836555 (= e!1173625 e!1173628)))

(declare-fun c!299589 () Bool)

(assert (=> b!1836555 (= c!299589 ((_ is EmptyLang!4977) (regex!3649 (rule!5839 (_1!11219 (get!6231 lt!712794))))))))

(declare-fun b!1836556 () Bool)

(declare-fun res!825699 () Bool)

(assert (=> b!1836556 (=> res!825699 e!1173626)))

(assert (=> b!1836556 (= res!825699 e!1173630)))

(declare-fun res!825693 () Bool)

(assert (=> b!1836556 (=> (not res!825693) (not e!1173630))))

(assert (=> b!1836556 (= res!825693 lt!712842)))

(declare-fun bm!114953 () Bool)

(assert (=> bm!114953 (= call!114958 (isEmpty!12748 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))))))

(declare-fun b!1836552 () Bool)

(assert (=> b!1836552 (= e!1173628 (not lt!712842))))

(declare-fun d!561551 () Bool)

(assert (=> d!561551 e!1173625))

(declare-fun c!299587 () Bool)

(assert (=> d!561551 (= c!299587 ((_ is EmptyExpr!4977) (regex!3649 (rule!5839 (_1!11219 (get!6231 lt!712794))))))))

(assert (=> d!561551 (= lt!712842 e!1173631)))

(declare-fun c!299588 () Bool)

(assert (=> d!561551 (= c!299588 (isEmpty!12748 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))))))

(assert (=> d!561551 (validRegex!2035 (regex!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))))

(assert (=> d!561551 (= (matchR!2440 (regex!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))) (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))) lt!712842)))

(declare-fun b!1836557 () Bool)

(assert (=> b!1836557 (= e!1173627 (not (= (head!4295 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))) (c!299472 (regex!3649 (rule!5839 (_1!11219 (get!6231 lt!712794))))))))))

(declare-fun b!1836558 () Bool)

(declare-fun res!825697 () Bool)

(assert (=> b!1836558 (=> res!825697 e!1173627)))

(assert (=> b!1836558 (= res!825697 (not (isEmpty!12748 (tail!2754 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712794))))))))))

(assert (= (and d!561551 c!299588) b!1836553))

(assert (= (and d!561551 (not c!299588)) b!1836551))

(assert (= (and d!561551 c!299587) b!1836548))

(assert (= (and d!561551 (not c!299587)) b!1836555))

(assert (= (and b!1836555 c!299589) b!1836552))

(assert (= (and b!1836555 (not c!299589)) b!1836549))

(assert (= (and b!1836549 (not res!825695)) b!1836556))

(assert (= (and b!1836556 res!825693) b!1836546))

(assert (= (and b!1836546 res!825692) b!1836547))

(assert (= (and b!1836547 res!825694) b!1836550))

(assert (= (and b!1836556 (not res!825699)) b!1836554))

(assert (= (and b!1836554 res!825698) b!1836545))

(assert (= (and b!1836545 (not res!825696)) b!1836558))

(assert (= (and b!1836558 (not res!825697)) b!1836557))

(assert (= (or b!1836548 b!1836545 b!1836546) bm!114953))

(assert (=> b!1836551 m!2264217))

(declare-fun m!2264383 () Bool)

(assert (=> b!1836551 m!2264383))

(assert (=> b!1836551 m!2264383))

(declare-fun m!2264385 () Bool)

(assert (=> b!1836551 m!2264385))

(assert (=> b!1836551 m!2264217))

(declare-fun m!2264387 () Bool)

(assert (=> b!1836551 m!2264387))

(assert (=> b!1836551 m!2264385))

(assert (=> b!1836551 m!2264387))

(declare-fun m!2264389 () Bool)

(assert (=> b!1836551 m!2264389))

(assert (=> b!1836557 m!2264217))

(assert (=> b!1836557 m!2264383))

(assert (=> b!1836547 m!2264217))

(assert (=> b!1836547 m!2264387))

(assert (=> b!1836547 m!2264387))

(declare-fun m!2264391 () Bool)

(assert (=> b!1836547 m!2264391))

(assert (=> bm!114953 m!2264217))

(declare-fun m!2264393 () Bool)

(assert (=> bm!114953 m!2264393))

(assert (=> b!1836558 m!2264217))

(assert (=> b!1836558 m!2264387))

(assert (=> b!1836558 m!2264387))

(assert (=> b!1836558 m!2264391))

(assert (=> b!1836550 m!2264217))

(assert (=> b!1836550 m!2264383))

(assert (=> d!561551 m!2264217))

(assert (=> d!561551 m!2264393))

(declare-fun m!2264395 () Bool)

(assert (=> d!561551 m!2264395))

(declare-fun m!2264397 () Bool)

(assert (=> b!1836553 m!2264397))

(assert (=> b!1836420 d!561551))

(assert (=> b!1836420 d!561521))

(assert (=> b!1836420 d!561517))

(assert (=> b!1836420 d!561519))

(declare-fun d!561553 () Bool)

(assert (=> d!561553 (= (isEmpty!12748 (tail!2754 lt!712628)) ((_ is Nil!20183) (tail!2754 lt!712628)))))

(assert (=> b!1836192 d!561553))

(declare-fun d!561555 () Bool)

(assert (=> d!561555 (= (tail!2754 lt!712628) (t!171378 lt!712628))))

(assert (=> b!1836192 d!561555))

(assert (=> d!561355 d!561325))

(assert (=> d!561355 d!561345))

(assert (=> d!561355 d!561353))

(declare-fun d!561557 () Bool)

(assert (=> d!561557 (= (maxPrefixOneRule!1187 thiss!28318 rule!580 input!3681) (Some!4228 (tuple2!19635 (Token!6853 (apply!5437 (transformation!3649 rule!580) (seqFromList!2606 lt!712628)) rule!580 (size!16014 lt!712628) lt!712628) suffix!1698)))))

(assert (=> d!561557 true))

(declare-fun _$59!320 () Unit!34879)

(assert (=> d!561557 (= (choose!11554 thiss!28318 rules!4610 lt!712628 input!3681 suffix!1698 rule!580) _$59!320)))

(declare-fun bs!408325 () Bool)

(assert (= bs!408325 d!561557))

(assert (=> bs!408325 m!2263705))

(assert (=> bs!408325 m!2263707))

(assert (=> bs!408325 m!2263707))

(assert (=> bs!408325 m!2263709))

(assert (=> bs!408325 m!2263703))

(assert (=> d!561355 d!561557))

(assert (=> d!561355 d!561443))

(assert (=> d!561355 d!561349))

(declare-fun d!561559 () Bool)

(declare-fun c!299604 () Bool)

(assert (=> d!561559 (= c!299604 ((_ is Nil!20185) rs!808))))

(declare-fun e!1173650 () (InoxSet Rule!7098))

(assert (=> d!561559 (= (content!3004 rs!808) e!1173650)))

(declare-fun b!1836591 () Bool)

(assert (=> b!1836591 (= e!1173650 ((as const (Array Rule!7098 Bool)) false))))

(declare-fun b!1836592 () Bool)

(assert (=> b!1836592 (= e!1173650 ((_ map or) (store ((as const (Array Rule!7098 Bool)) false) (h!25586 rs!808) true) (content!3004 (t!171380 rs!808))))))

(assert (= (and d!561559 c!299604) b!1836591))

(assert (= (and d!561559 (not c!299604)) b!1836592))

(declare-fun m!2264399 () Bool)

(assert (=> b!1836592 m!2264399))

(declare-fun m!2264401 () Bool)

(assert (=> b!1836592 m!2264401))

(assert (=> d!561457 d!561559))

(declare-fun bs!408326 () Bool)

(declare-fun d!561561 () Bool)

(assert (= bs!408326 (and d!561561 b!1835902)))

(declare-fun lambda!72249 () Int)

(assert (=> bs!408326 (= lambda!72249 lambda!72208)))

(declare-fun bs!408327 () Bool)

(assert (= bs!408327 (and d!561561 d!561395)))

(assert (=> bs!408327 (= lambda!72249 lambda!72214)))

(declare-fun bs!408328 () Bool)

(assert (= bs!408328 (and d!561561 d!561437)))

(assert (=> bs!408328 (= lambda!72249 lambda!72234)))

(declare-fun bs!408329 () Bool)

(assert (= bs!408329 (and d!561561 d!561397)))

(declare-fun lambda!72250 () Int)

(assert (=> bs!408329 (= lambda!72250 lambda!72229)))

(assert (=> bs!408328 (= lambda!72250 lambda!72235)))

(assert (=> d!561561 (forall!4352 (map!4192 (t!171380 rules!4610) lambda!72249) lambda!72250)))

(declare-fun lt!712899 () Unit!34879)

(declare-fun e!1173651 () Unit!34879)

(assert (=> d!561561 (= lt!712899 e!1173651)))

(declare-fun c!299605 () Bool)

(assert (=> d!561561 (= c!299605 ((_ is Nil!20185) (t!171380 rules!4610)))))

(assert (=> d!561561 (rulesValid!1396 thiss!28318 (t!171380 rules!4610))))

(declare-fun lt!712900 () Unit!34879)

(declare-fun lt!712903 () Unit!34879)

(assert (=> d!561561 (= lt!712900 lt!712903)))

(declare-fun lt!712901 () List!20253)

(assert (=> d!561561 (= (maxPrefixOneRule!1187 thiss!28318 rule!580 input!3681) (Some!4228 (tuple2!19635 (Token!6853 (apply!5437 (transformation!3649 rule!580) (seqFromList!2606 lt!712901)) rule!580 (size!16014 lt!712901) lt!712901) suffix!1698)))))

(assert (=> d!561561 (= lt!712903 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!557 thiss!28318 rules!4610 lt!712901 input!3681 suffix!1698 rule!580))))

(assert (=> d!561561 (= lt!712901 (list!8203 (charsOf!2292 token!567)))))

(assert (=> d!561561 (= (lemma!552 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!171380 rules!4610)) lt!712899)))

(declare-fun b!1836593 () Bool)

(declare-fun Unit!34888 () Unit!34879)

(assert (=> b!1836593 (= e!1173651 Unit!34888)))

(declare-fun b!1836594 () Bool)

(declare-fun Unit!34889 () Unit!34879)

(assert (=> b!1836594 (= e!1173651 Unit!34889)))

(declare-fun lt!712902 () Unit!34879)

(assert (=> b!1836594 (= lt!712902 (lemma!552 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!171380 (t!171380 rules!4610))))))

(assert (= (and d!561561 c!299605) b!1836593))

(assert (= (and d!561561 (not c!299605)) b!1836594))

(declare-fun m!2264403 () Bool)

(assert (=> d!561561 m!2264403))

(assert (=> d!561561 m!2263673))

(declare-fun m!2264405 () Bool)

(assert (=> d!561561 m!2264405))

(assert (=> d!561561 m!2263705))

(assert (=> d!561561 m!2264405))

(declare-fun m!2264407 () Bool)

(assert (=> d!561561 m!2264407))

(declare-fun m!2264409 () Bool)

(assert (=> d!561561 m!2264409))

(declare-fun m!2264411 () Bool)

(assert (=> d!561561 m!2264411))

(assert (=> d!561561 m!2264403))

(declare-fun m!2264413 () Bool)

(assert (=> d!561561 m!2264413))

(declare-fun m!2264415 () Bool)

(assert (=> d!561561 m!2264415))

(assert (=> d!561561 m!2263673))

(assert (=> d!561561 m!2263675))

(declare-fun m!2264417 () Bool)

(assert (=> b!1836594 m!2264417))

(assert (=> b!1836394 d!561561))

(declare-fun b!1836597 () Bool)

(declare-fun res!825705 () Bool)

(declare-fun e!1173652 () Bool)

(assert (=> b!1836597 (=> (not res!825705) (not e!1173652))))

(declare-fun lt!712904 () List!20253)

(assert (=> b!1836597 (= res!825705 (= (size!16014 lt!712904) (+ (size!16014 (t!171378 lt!712625)) (size!16014 suffix!1698))))))

(declare-fun b!1836595 () Bool)

(declare-fun e!1173653 () List!20253)

(assert (=> b!1836595 (= e!1173653 suffix!1698)))

(declare-fun d!561563 () Bool)

(assert (=> d!561563 e!1173652))

(declare-fun res!825704 () Bool)

(assert (=> d!561563 (=> (not res!825704) (not e!1173652))))

(assert (=> d!561563 (= res!825704 (= (content!3002 lt!712904) ((_ map or) (content!3002 (t!171378 lt!712625)) (content!3002 suffix!1698))))))

(assert (=> d!561563 (= lt!712904 e!1173653)))

(declare-fun c!299606 () Bool)

(assert (=> d!561563 (= c!299606 ((_ is Nil!20183) (t!171378 lt!712625)))))

(assert (=> d!561563 (= (++!5473 (t!171378 lt!712625) suffix!1698) lt!712904)))

(declare-fun b!1836596 () Bool)

(assert (=> b!1836596 (= e!1173653 (Cons!20183 (h!25584 (t!171378 lt!712625)) (++!5473 (t!171378 (t!171378 lt!712625)) suffix!1698)))))

(declare-fun b!1836598 () Bool)

(assert (=> b!1836598 (= e!1173652 (or (not (= suffix!1698 Nil!20183)) (= lt!712904 (t!171378 lt!712625))))))

(assert (= (and d!561563 c!299606) b!1836595))

(assert (= (and d!561563 (not c!299606)) b!1836596))

(assert (= (and d!561563 res!825704) b!1836597))

(assert (= (and b!1836597 res!825705) b!1836598))

(declare-fun m!2264419 () Bool)

(assert (=> b!1836597 m!2264419))

(declare-fun m!2264421 () Bool)

(assert (=> b!1836597 m!2264421))

(assert (=> b!1836597 m!2263947))

(declare-fun m!2264423 () Bool)

(assert (=> d!561563 m!2264423))

(declare-fun m!2264425 () Bool)

(assert (=> d!561563 m!2264425))

(assert (=> d!561563 m!2263953))

(declare-fun m!2264427 () Bool)

(assert (=> b!1836596 m!2264427))

(assert (=> b!1836118 d!561563))

(assert (=> b!1836418 d!561521))

(declare-fun d!561565 () Bool)

(assert (=> d!561565 (= (apply!5437 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))) (seqFromList!2606 (originalCharacters!4457 (_1!11219 (get!6231 lt!712794))))) (dynLambda!10058 (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794))))) (seqFromList!2606 (originalCharacters!4457 (_1!11219 (get!6231 lt!712794))))))))

(declare-fun b_lambda!60941 () Bool)

(assert (=> (not b_lambda!60941) (not d!561565)))

(declare-fun tb!112601 () Bool)

(declare-fun t!171481 () Bool)

(assert (=> (and b!1835914 (= (toValue!5200 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171481) tb!112601))

(declare-fun result!135384 () Bool)

(assert (=> tb!112601 (= result!135384 (inv!21 (dynLambda!10058 (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794))))) (seqFromList!2606 (originalCharacters!4457 (_1!11219 (get!6231 lt!712794)))))))))

(declare-fun m!2264429 () Bool)

(assert (=> tb!112601 m!2264429))

(assert (=> d!561565 t!171481))

(declare-fun b_and!143441 () Bool)

(assert (= b_and!143439 (and (=> t!171481 result!135384) b_and!143441)))

(declare-fun tb!112603 () Bool)

(declare-fun t!171483 () Bool)

(assert (=> (and b!1835918 (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171483) tb!112603))

(declare-fun result!135386 () Bool)

(assert (= result!135386 result!135384))

(assert (=> d!561565 t!171483))

(declare-fun b_and!143443 () Bool)

(assert (= b_and!143435 (and (=> t!171483 result!135386) b_and!143443)))

(declare-fun t!171485 () Bool)

(declare-fun tb!112605 () Bool)

(assert (=> (and b!1836438 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171485) tb!112605))

(declare-fun result!135388 () Bool)

(assert (= result!135388 result!135384))

(assert (=> d!561565 t!171485))

(declare-fun b_and!143445 () Bool)

(assert (= b_and!143429 (and (=> t!171485 result!135388) b_and!143445)))

(declare-fun tb!112607 () Bool)

(declare-fun t!171487 () Bool)

(assert (=> (and b!1835904 (= (toValue!5200 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171487) tb!112607))

(declare-fun result!135390 () Bool)

(assert (= result!135390 result!135384))

(assert (=> d!561565 t!171487))

(declare-fun b_and!143447 () Bool)

(assert (= b_and!143433 (and (=> t!171487 result!135390) b_and!143447)))

(declare-fun t!171489 () Bool)

(declare-fun tb!112609 () Bool)

(assert (=> (and b!1835916 (= (toValue!5200 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171489) tb!112609))

(declare-fun result!135392 () Bool)

(assert (= result!135392 result!135384))

(assert (=> d!561565 t!171489))

(declare-fun b_and!143449 () Bool)

(assert (= b_and!143437 (and (=> t!171489 result!135392) b_and!143449)))

(declare-fun t!171491 () Bool)

(declare-fun tb!112611 () Bool)

(assert (=> (and b!1836466 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171491) tb!112611))

(declare-fun result!135394 () Bool)

(assert (= result!135394 result!135384))

(assert (=> d!561565 t!171491))

(declare-fun b_and!143451 () Bool)

(assert (= b_and!143431 (and (=> t!171491 result!135394) b_and!143451)))

(assert (=> d!561565 m!2264237))

(declare-fun m!2264431 () Bool)

(assert (=> d!561565 m!2264431))

(assert (=> b!1836418 d!561565))

(declare-fun d!561567 () Bool)

(assert (=> d!561567 (= (seqFromList!2606 (originalCharacters!4457 (_1!11219 (get!6231 lt!712794)))) (fromListB!1196 (originalCharacters!4457 (_1!11219 (get!6231 lt!712794)))))))

(declare-fun bs!408330 () Bool)

(assert (= bs!408330 d!561567))

(declare-fun m!2264433 () Bool)

(assert (=> bs!408330 m!2264433))

(assert (=> b!1836418 d!561567))

(declare-fun d!561569 () Bool)

(assert (=> d!561569 (= (isEmpty!12748 lt!712628) ((_ is Nil!20183) lt!712628))))

(assert (=> bm!114945 d!561569))

(declare-fun d!561571 () Bool)

(assert (=> d!561571 (= (isEmpty!12748 lt!712625) ((_ is Nil!20183) lt!712625))))

(assert (=> bm!114944 d!561571))

(declare-fun d!561573 () Bool)

(assert (=> d!561573 (= (inv!26256 (tag!4063 (h!25586 (t!171380 rs!808)))) (= (mod (str.len (value!113662 (tag!4063 (h!25586 (t!171380 rs!808))))) 2) 0))))

(assert (=> b!1836465 d!561573))

(declare-fun d!561575 () Bool)

(declare-fun res!825708 () Bool)

(declare-fun e!1173663 () Bool)

(assert (=> d!561575 (=> (not res!825708) (not e!1173663))))

(assert (=> d!561575 (= res!825708 (semiInverseModEq!1470 (toChars!5059 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toValue!5200 (transformation!3649 (h!25586 (t!171380 rs!808))))))))

(assert (=> d!561575 (= (inv!26259 (transformation!3649 (h!25586 (t!171380 rs!808)))) e!1173663)))

(declare-fun b!1836613 () Bool)

(assert (=> b!1836613 (= e!1173663 (equivClasses!1411 (toChars!5059 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toValue!5200 (transformation!3649 (h!25586 (t!171380 rs!808))))))))

(assert (= (and d!561575 res!825708) b!1836613))

(declare-fun m!2264435 () Bool)

(assert (=> d!561575 m!2264435))

(declare-fun m!2264437 () Bool)

(assert (=> b!1836613 m!2264437))

(assert (=> b!1836465 d!561575))

(declare-fun d!561577 () Bool)

(declare-fun charsToBigInt!0 (List!20254 Int) Int)

(assert (=> d!561577 (= (inv!15 (value!113663 token!567)) (= (charsToBigInt!0 (text!26622 (value!113663 token!567)) 0) (value!113658 (value!113663 token!567))))))

(declare-fun bs!408331 () Bool)

(assert (= bs!408331 d!561577))

(declare-fun m!2264475 () Bool)

(assert (=> bs!408331 m!2264475))

(assert (=> b!1835932 d!561577))

(assert (=> d!561373 d!561571))

(declare-fun bm!114984 () Bool)

(declare-fun call!114989 () Bool)

(declare-fun call!114991 () Bool)

(assert (=> bm!114984 (= call!114989 call!114991)))

(declare-fun bm!114985 () Bool)

(declare-fun call!114990 () Bool)

(declare-fun c!299621 () Bool)

(assert (=> bm!114985 (= call!114990 (validRegex!2035 (ite c!299621 (regTwo!10467 (regex!3649 rule!580)) (regOne!10466 (regex!3649 rule!580)))))))

(declare-fun b!1836636 () Bool)

(declare-fun e!1173681 () Bool)

(assert (=> b!1836636 (= e!1173681 call!114989)))

(declare-fun b!1836637 () Bool)

(declare-fun e!1173685 () Bool)

(declare-fun e!1173684 () Bool)

(assert (=> b!1836637 (= e!1173685 e!1173684)))

(assert (=> b!1836637 (= c!299621 ((_ is Union!4977) (regex!3649 rule!580)))))

(declare-fun b!1836638 () Bool)

(declare-fun e!1173680 () Bool)

(assert (=> b!1836638 (= e!1173680 call!114991)))

(declare-fun b!1836639 () Bool)

(declare-fun e!1173683 () Bool)

(assert (=> b!1836639 (= e!1173683 e!1173685)))

(declare-fun c!299620 () Bool)

(assert (=> b!1836639 (= c!299620 ((_ is Star!4977) (regex!3649 rule!580)))))

(declare-fun b!1836640 () Bool)

(declare-fun e!1173686 () Bool)

(assert (=> b!1836640 (= e!1173686 call!114990)))

(declare-fun b!1836641 () Bool)

(assert (=> b!1836641 (= e!1173685 e!1173680)))

(declare-fun res!825719 () Bool)

(assert (=> b!1836641 (= res!825719 (not (nullable!1553 (reg!5306 (regex!3649 rule!580)))))))

(assert (=> b!1836641 (=> (not res!825719) (not e!1173680))))

(declare-fun b!1836642 () Bool)

(declare-fun res!825721 () Bool)

(declare-fun e!1173682 () Bool)

(assert (=> b!1836642 (=> res!825721 e!1173682)))

(assert (=> b!1836642 (= res!825721 (not ((_ is Concat!8716) (regex!3649 rule!580))))))

(assert (=> b!1836642 (= e!1173684 e!1173682)))

(declare-fun b!1836643 () Bool)

(assert (=> b!1836643 (= e!1173682 e!1173681)))

(declare-fun res!825720 () Bool)

(assert (=> b!1836643 (=> (not res!825720) (not e!1173681))))

(assert (=> b!1836643 (= res!825720 call!114990)))

(declare-fun bm!114986 () Bool)

(assert (=> bm!114986 (= call!114991 (validRegex!2035 (ite c!299620 (reg!5306 (regex!3649 rule!580)) (ite c!299621 (regOne!10467 (regex!3649 rule!580)) (regTwo!10466 (regex!3649 rule!580))))))))

(declare-fun d!561579 () Bool)

(declare-fun res!825722 () Bool)

(assert (=> d!561579 (=> res!825722 e!1173683)))

(assert (=> d!561579 (= res!825722 ((_ is ElementMatch!4977) (regex!3649 rule!580)))))

(assert (=> d!561579 (= (validRegex!2035 (regex!3649 rule!580)) e!1173683)))

(declare-fun b!1836644 () Bool)

(declare-fun res!825723 () Bool)

(assert (=> b!1836644 (=> (not res!825723) (not e!1173686))))

(assert (=> b!1836644 (= res!825723 call!114989)))

(assert (=> b!1836644 (= e!1173684 e!1173686)))

(assert (= (and d!561579 (not res!825722)) b!1836639))

(assert (= (and b!1836639 c!299620) b!1836641))

(assert (= (and b!1836639 (not c!299620)) b!1836637))

(assert (= (and b!1836641 res!825719) b!1836638))

(assert (= (and b!1836637 c!299621) b!1836644))

(assert (= (and b!1836637 (not c!299621)) b!1836642))

(assert (= (and b!1836644 res!825723) b!1836640))

(assert (= (and b!1836642 (not res!825721)) b!1836643))

(assert (= (and b!1836643 res!825720) b!1836636))

(assert (= (or b!1836640 b!1836643) bm!114985))

(assert (= (or b!1836644 b!1836636) bm!114984))

(assert (= (or b!1836638 bm!114984) bm!114986))

(declare-fun m!2264493 () Bool)

(assert (=> bm!114985 m!2264493))

(declare-fun m!2264495 () Bool)

(assert (=> b!1836641 m!2264495))

(declare-fun m!2264497 () Bool)

(assert (=> bm!114986 m!2264497))

(assert (=> d!561373 d!561579))

(assert (=> b!1836162 d!561487))

(assert (=> b!1836162 d!561489))

(declare-fun bm!114987 () Bool)

(declare-fun call!114992 () Bool)

(declare-fun call!114994 () Bool)

(assert (=> bm!114987 (= call!114992 call!114994)))

(declare-fun bm!114988 () Bool)

(declare-fun call!114993 () Bool)

(declare-fun c!299623 () Bool)

(assert (=> bm!114988 (= call!114993 (validRegex!2035 (ite c!299623 (regTwo!10467 lt!712756) (regOne!10466 lt!712756))))))

(declare-fun b!1836649 () Bool)

(declare-fun e!1173690 () Bool)

(assert (=> b!1836649 (= e!1173690 call!114992)))

(declare-fun b!1836650 () Bool)

(declare-fun e!1173694 () Bool)

(declare-fun e!1173693 () Bool)

(assert (=> b!1836650 (= e!1173694 e!1173693)))

(assert (=> b!1836650 (= c!299623 ((_ is Union!4977) lt!712756))))

(declare-fun b!1836651 () Bool)

(declare-fun e!1173689 () Bool)

(assert (=> b!1836651 (= e!1173689 call!114994)))

(declare-fun b!1836652 () Bool)

(declare-fun e!1173692 () Bool)

(assert (=> b!1836652 (= e!1173692 e!1173694)))

(declare-fun c!299622 () Bool)

(assert (=> b!1836652 (= c!299622 ((_ is Star!4977) lt!712756))))

(declare-fun b!1836653 () Bool)

(declare-fun e!1173695 () Bool)

(assert (=> b!1836653 (= e!1173695 call!114993)))

(declare-fun b!1836654 () Bool)

(assert (=> b!1836654 (= e!1173694 e!1173689)))

(declare-fun res!825724 () Bool)

(assert (=> b!1836654 (= res!825724 (not (nullable!1553 (reg!5306 lt!712756))))))

(assert (=> b!1836654 (=> (not res!825724) (not e!1173689))))

(declare-fun b!1836655 () Bool)

(declare-fun res!825726 () Bool)

(declare-fun e!1173691 () Bool)

(assert (=> b!1836655 (=> res!825726 e!1173691)))

(assert (=> b!1836655 (= res!825726 (not ((_ is Concat!8716) lt!712756)))))

(assert (=> b!1836655 (= e!1173693 e!1173691)))

(declare-fun b!1836656 () Bool)

(assert (=> b!1836656 (= e!1173691 e!1173690)))

(declare-fun res!825725 () Bool)

(assert (=> b!1836656 (=> (not res!825725) (not e!1173690))))

(assert (=> b!1836656 (= res!825725 call!114993)))

(declare-fun bm!114989 () Bool)

(assert (=> bm!114989 (= call!114994 (validRegex!2035 (ite c!299622 (reg!5306 lt!712756) (ite c!299623 (regOne!10467 lt!712756) (regTwo!10466 lt!712756)))))))

(declare-fun d!561589 () Bool)

(declare-fun res!825727 () Bool)

(assert (=> d!561589 (=> res!825727 e!1173692)))

(assert (=> d!561589 (= res!825727 ((_ is ElementMatch!4977) lt!712756))))

(assert (=> d!561589 (= (validRegex!2035 lt!712756) e!1173692)))

(declare-fun b!1836657 () Bool)

(declare-fun res!825728 () Bool)

(assert (=> b!1836657 (=> (not res!825728) (not e!1173695))))

(assert (=> b!1836657 (= res!825728 call!114992)))

(assert (=> b!1836657 (= e!1173693 e!1173695)))

(assert (= (and d!561589 (not res!825727)) b!1836652))

(assert (= (and b!1836652 c!299622) b!1836654))

(assert (= (and b!1836652 (not c!299622)) b!1836650))

(assert (= (and b!1836654 res!825724) b!1836651))

(assert (= (and b!1836650 c!299623) b!1836657))

(assert (= (and b!1836650 (not c!299623)) b!1836655))

(assert (= (and b!1836657 res!825728) b!1836653))

(assert (= (and b!1836655 (not res!825726)) b!1836656))

(assert (= (and b!1836656 res!825725) b!1836649))

(assert (= (or b!1836653 b!1836656) bm!114988))

(assert (= (or b!1836657 b!1836649) bm!114987))

(assert (= (or b!1836651 bm!114987) bm!114989))

(declare-fun m!2264499 () Bool)

(assert (=> bm!114988 m!2264499))

(declare-fun m!2264501 () Bool)

(assert (=> b!1836654 m!2264501))

(declare-fun m!2264503 () Bool)

(assert (=> bm!114989 m!2264503))

(assert (=> d!561397 d!561589))

(declare-fun d!561591 () Bool)

(declare-fun res!825729 () Bool)

(declare-fun e!1173697 () Bool)

(assert (=> d!561591 (=> res!825729 e!1173697)))

(assert (=> d!561591 (= res!825729 ((_ is Nil!20186) (map!4192 rules!4610 lambda!72208)))))

(assert (=> d!561591 (= (forall!4352 (map!4192 rules!4610 lambda!72208) lambda!72229) e!1173697)))

(declare-fun b!1836659 () Bool)

(declare-fun e!1173698 () Bool)

(assert (=> b!1836659 (= e!1173697 e!1173698)))

(declare-fun res!825730 () Bool)

(assert (=> b!1836659 (=> (not res!825730) (not e!1173698))))

(assert (=> b!1836659 (= res!825730 (dynLambda!10065 lambda!72229 (h!25587 (map!4192 rules!4610 lambda!72208))))))

(declare-fun b!1836660 () Bool)

(assert (=> b!1836660 (= e!1173698 (forall!4352 (t!171381 (map!4192 rules!4610 lambda!72208)) lambda!72229))))

(assert (= (and d!561591 (not res!825729)) b!1836659))

(assert (= (and b!1836659 res!825730) b!1836660))

(declare-fun b_lambda!60945 () Bool)

(assert (=> (not b_lambda!60945) (not b!1836659)))

(declare-fun m!2264505 () Bool)

(assert (=> b!1836659 m!2264505))

(declare-fun m!2264507 () Bool)

(assert (=> b!1836660 m!2264507))

(assert (=> d!561397 d!561591))

(declare-fun bs!408333 () Bool)

(declare-fun d!561593 () Bool)

(assert (= bs!408333 (and d!561593 d!561449)))

(declare-fun lambda!72256 () Int)

(assert (=> bs!408333 (= lambda!72256 lambda!72238)))

(declare-fun bs!408334 () Bool)

(assert (= bs!408334 (and d!561593 d!561537)))

(assert (=> bs!408334 (= lambda!72256 lambda!72245)))

(assert (=> d!561593 true))

(declare-fun lt!712942 () Bool)

(assert (=> d!561593 (= lt!712942 (forall!4353 rs!808 lambda!72256))))

(declare-fun e!1173706 () Bool)

(assert (=> d!561593 (= lt!712942 e!1173706)))

(declare-fun res!825735 () Bool)

(assert (=> d!561593 (=> res!825735 e!1173706)))

(assert (=> d!561593 (= res!825735 (not ((_ is Cons!20185) rs!808)))))

(assert (=> d!561593 (= (rulesValidInductive!1264 thiss!28318 rs!808) lt!712942)))

(declare-fun b!1836666 () Bool)

(declare-fun e!1173705 () Bool)

(assert (=> b!1836666 (= e!1173706 e!1173705)))

(declare-fun res!825736 () Bool)

(assert (=> b!1836666 (=> (not res!825736) (not e!1173705))))

(assert (=> b!1836666 (= res!825736 (ruleValid!1139 thiss!28318 (h!25586 rs!808)))))

(declare-fun b!1836667 () Bool)

(assert (=> b!1836667 (= e!1173705 (rulesValidInductive!1264 thiss!28318 (t!171380 rs!808)))))

(assert (= (and d!561593 (not res!825735)) b!1836666))

(assert (= (and b!1836666 res!825736) b!1836667))

(declare-fun m!2264529 () Bool)

(assert (=> d!561593 m!2264529))

(declare-fun m!2264531 () Bool)

(assert (=> b!1836666 m!2264531))

(declare-fun m!2264533 () Bool)

(assert (=> b!1836667 m!2264533))

(assert (=> d!561449 d!561593))

(declare-fun d!561599 () Bool)

(declare-fun res!825741 () Bool)

(declare-fun e!1173711 () Bool)

(assert (=> d!561599 (=> res!825741 e!1173711)))

(assert (=> d!561599 (= res!825741 ((_ is Nil!20185) rs!808))))

(assert (=> d!561599 (= (forall!4353 rs!808 lambda!72238) e!1173711)))

(declare-fun b!1836672 () Bool)

(declare-fun e!1173712 () Bool)

(assert (=> b!1836672 (= e!1173711 e!1173712)))

(declare-fun res!825742 () Bool)

(assert (=> b!1836672 (=> (not res!825742) (not e!1173712))))

(declare-fun dynLambda!10069 (Int Rule!7098) Bool)

(assert (=> b!1836672 (= res!825742 (dynLambda!10069 lambda!72238 (h!25586 rs!808)))))

(declare-fun b!1836673 () Bool)

(assert (=> b!1836673 (= e!1173712 (forall!4353 (t!171380 rs!808) lambda!72238))))

(assert (= (and d!561599 (not res!825741)) b!1836672))

(assert (= (and b!1836672 res!825742) b!1836673))

(declare-fun b_lambda!60949 () Bool)

(assert (=> (not b_lambda!60949) (not b!1836672)))

(declare-fun m!2264535 () Bool)

(assert (=> b!1836672 m!2264535))

(declare-fun m!2264537 () Bool)

(assert (=> b!1836673 m!2264537))

(assert (=> d!561449 d!561599))

(declare-fun d!561601 () Bool)

(assert (=> d!561601 (= (inv!26256 (tag!4063 (h!25586 (t!171380 rules!4610)))) (= (mod (str.len (value!113662 (tag!4063 (h!25586 (t!171380 rules!4610))))) 2) 0))))

(assert (=> b!1836437 d!561601))

(declare-fun d!561603 () Bool)

(declare-fun res!825743 () Bool)

(declare-fun e!1173713 () Bool)

(assert (=> d!561603 (=> (not res!825743) (not e!1173713))))

(assert (=> d!561603 (= res!825743 (semiInverseModEq!1470 (toChars!5059 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toValue!5200 (transformation!3649 (h!25586 (t!171380 rules!4610))))))))

(assert (=> d!561603 (= (inv!26259 (transformation!3649 (h!25586 (t!171380 rules!4610)))) e!1173713)))

(declare-fun b!1836674 () Bool)

(assert (=> b!1836674 (= e!1173713 (equivClasses!1411 (toChars!5059 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toValue!5200 (transformation!3649 (h!25586 (t!171380 rules!4610))))))))

(assert (= (and d!561603 res!825743) b!1836674))

(declare-fun m!2264539 () Bool)

(assert (=> d!561603 m!2264539))

(declare-fun m!2264541 () Bool)

(assert (=> b!1836674 m!2264541))

(assert (=> b!1836437 d!561603))

(declare-fun d!561605 () Bool)

(assert (=> d!561605 (= (isEmpty!12751 (tail!2755 (map!4192 rules!4610 lambda!72208))) ((_ is Nil!20186) (tail!2755 (map!4192 rules!4610 lambda!72208))))))

(assert (=> b!1836316 d!561605))

(declare-fun d!561607 () Bool)

(assert (=> d!561607 (= (tail!2755 (map!4192 rules!4610 lambda!72208)) (t!171381 (map!4192 rules!4610 lambda!72208)))))

(assert (=> b!1836316 d!561607))

(declare-fun d!561609 () Bool)

(assert (=> d!561609 (= (head!4295 lt!712628) (h!25584 lt!712628))))

(assert (=> b!1836184 d!561609))

(declare-fun d!561611 () Bool)

(declare-fun c!299626 () Bool)

(assert (=> d!561611 (= c!299626 ((_ is Nil!20186) (map!4192 rs!808 lambda!72208)))))

(declare-fun e!1173716 () (InoxSet Regex!4977))

(assert (=> d!561611 (= (content!3005 (map!4192 rs!808 lambda!72208)) e!1173716)))

(declare-fun b!1836679 () Bool)

(assert (=> b!1836679 (= e!1173716 ((as const (Array Regex!4977 Bool)) false))))

(declare-fun b!1836680 () Bool)

(assert (=> b!1836680 (= e!1173716 ((_ map or) (store ((as const (Array Regex!4977 Bool)) false) (h!25587 (map!4192 rs!808 lambda!72208)) true) (content!3005 (t!171381 (map!4192 rs!808 lambda!72208)))))))

(assert (= (and d!561611 c!299626) b!1836679))

(assert (= (and d!561611 (not c!299626)) b!1836680))

(declare-fun m!2264543 () Bool)

(assert (=> b!1836680 m!2264543))

(declare-fun m!2264545 () Bool)

(assert (=> b!1836680 m!2264545))

(assert (=> d!561391 d!561611))

(assert (=> d!561369 d!561537))

(declare-fun b!1836681 () Bool)

(declare-fun e!1173721 () Bool)

(declare-fun e!1173719 () Bool)

(assert (=> b!1836681 (= e!1173721 e!1173719)))

(declare-fun res!825748 () Bool)

(assert (=> b!1836681 (=> res!825748 e!1173719)))

(declare-fun call!114995 () Bool)

(assert (=> b!1836681 (= res!825748 call!114995)))

(declare-fun b!1836682 () Bool)

(declare-fun res!825744 () Bool)

(declare-fun e!1173722 () Bool)

(assert (=> b!1836682 (=> (not res!825744) (not e!1173722))))

(assert (=> b!1836682 (= res!825744 (not call!114995))))

(declare-fun b!1836683 () Bool)

(declare-fun res!825746 () Bool)

(assert (=> b!1836683 (=> (not res!825746) (not e!1173722))))

(assert (=> b!1836683 (= res!825746 (isEmpty!12748 (tail!2754 (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681))))))))

(declare-fun b!1836684 () Bool)

(declare-fun e!1173717 () Bool)

(declare-fun lt!712944 () Bool)

(assert (=> b!1836684 (= e!1173717 (= lt!712944 call!114995))))

(declare-fun b!1836685 () Bool)

(declare-fun res!825747 () Bool)

(declare-fun e!1173718 () Bool)

(assert (=> b!1836685 (=> res!825747 e!1173718)))

(assert (=> b!1836685 (= res!825747 (not ((_ is ElementMatch!4977) (regex!3649 rule!580))))))

(declare-fun e!1173720 () Bool)

(assert (=> b!1836685 (= e!1173720 e!1173718)))

(declare-fun b!1836686 () Bool)

(assert (=> b!1836686 (= e!1173722 (= (head!4295 (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))) (c!299472 (regex!3649 rule!580))))))

(declare-fun b!1836687 () Bool)

(declare-fun e!1173723 () Bool)

(assert (=> b!1836687 (= e!1173723 (matchR!2440 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681))))) (tail!2754 (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681))))))))

(declare-fun b!1836689 () Bool)

(assert (=> b!1836689 (= e!1173723 (nullable!1553 (regex!3649 rule!580)))))

(declare-fun b!1836690 () Bool)

(assert (=> b!1836690 (= e!1173718 e!1173721)))

(declare-fun res!825750 () Bool)

(assert (=> b!1836690 (=> (not res!825750) (not e!1173721))))

(assert (=> b!1836690 (= res!825750 (not lt!712944))))

(declare-fun b!1836691 () Bool)

(assert (=> b!1836691 (= e!1173717 e!1173720)))

(declare-fun c!299629 () Bool)

(assert (=> b!1836691 (= c!299629 ((_ is EmptyLang!4977) (regex!3649 rule!580)))))

(declare-fun b!1836692 () Bool)

(declare-fun res!825751 () Bool)

(assert (=> b!1836692 (=> res!825751 e!1173718)))

(assert (=> b!1836692 (= res!825751 e!1173722)))

(declare-fun res!825745 () Bool)

(assert (=> b!1836692 (=> (not res!825745) (not e!1173722))))

(assert (=> b!1836692 (= res!825745 lt!712944)))

(declare-fun bm!114990 () Bool)

(assert (=> bm!114990 (= call!114995 (isEmpty!12748 (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))))))

(declare-fun b!1836688 () Bool)

(assert (=> b!1836688 (= e!1173720 (not lt!712944))))

(declare-fun d!561613 () Bool)

(assert (=> d!561613 e!1173717))

(declare-fun c!299627 () Bool)

(assert (=> d!561613 (= c!299627 ((_ is EmptyExpr!4977) (regex!3649 rule!580)))))

(assert (=> d!561613 (= lt!712944 e!1173723)))

(declare-fun c!299628 () Bool)

(assert (=> d!561613 (= c!299628 (isEmpty!12748 (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))))))

(assert (=> d!561613 (validRegex!2035 (regex!3649 rule!580))))

(assert (=> d!561613 (= (matchR!2440 (regex!3649 rule!580) (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))) lt!712944)))

(declare-fun b!1836693 () Bool)

(assert (=> b!1836693 (= e!1173719 (not (= (head!4295 (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))) (c!299472 (regex!3649 rule!580)))))))

(declare-fun b!1836694 () Bool)

(declare-fun res!825749 () Bool)

(assert (=> b!1836694 (=> res!825749 e!1173719)))

(assert (=> b!1836694 (= res!825749 (not (isEmpty!12748 (tail!2754 (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))))))))

(assert (= (and d!561613 c!299628) b!1836689))

(assert (= (and d!561613 (not c!299628)) b!1836687))

(assert (= (and d!561613 c!299627) b!1836684))

(assert (= (and d!561613 (not c!299627)) b!1836691))

(assert (= (and b!1836691 c!299629) b!1836688))

(assert (= (and b!1836691 (not c!299629)) b!1836685))

(assert (= (and b!1836685 (not res!825747)) b!1836692))

(assert (= (and b!1836692 res!825745) b!1836682))

(assert (= (and b!1836682 res!825744) b!1836683))

(assert (= (and b!1836683 res!825746) b!1836686))

(assert (= (and b!1836692 (not res!825751)) b!1836690))

(assert (= (and b!1836690 res!825750) b!1836681))

(assert (= (and b!1836681 (not res!825748)) b!1836694))

(assert (= (and b!1836694 (not res!825749)) b!1836693))

(assert (= (or b!1836684 b!1836681 b!1836682) bm!114990))

(declare-fun m!2264547 () Bool)

(assert (=> b!1836687 m!2264547))

(assert (=> b!1836687 m!2264547))

(declare-fun m!2264549 () Bool)

(assert (=> b!1836687 m!2264549))

(declare-fun m!2264551 () Bool)

(assert (=> b!1836687 m!2264551))

(assert (=> b!1836687 m!2264549))

(assert (=> b!1836687 m!2264551))

(declare-fun m!2264553 () Bool)

(assert (=> b!1836687 m!2264553))

(assert (=> b!1836693 m!2264547))

(assert (=> b!1836683 m!2264551))

(assert (=> b!1836683 m!2264551))

(declare-fun m!2264555 () Bool)

(assert (=> b!1836683 m!2264555))

(assert (=> bm!114990 m!2263865))

(assert (=> b!1836694 m!2264551))

(assert (=> b!1836694 m!2264551))

(assert (=> b!1836694 m!2264555))

(assert (=> b!1836686 m!2264547))

(assert (=> d!561613 m!2263865))

(assert (=> d!561613 m!2263969))

(assert (=> b!1836689 m!2263971))

(assert (=> b!1836035 d!561613))

(declare-fun b!1836904 () Bool)

(declare-fun e!1173847 () tuple2!19638)

(assert (=> b!1836904 (= e!1173847 (tuple2!19639 Nil!20183 input!3681))))

(declare-fun b!1836905 () Bool)

(declare-fun e!1173852 () tuple2!19638)

(assert (=> b!1836905 (= e!1173852 (tuple2!19639 Nil!20183 input!3681))))

(declare-fun bm!115023 () Bool)

(declare-fun call!115034 () Unit!34879)

(assert (=> bm!115023 (= call!115034 (lemmaIsPrefixRefl!1222 input!3681 input!3681))))

(declare-fun bm!115024 () Bool)

(declare-fun call!115030 () List!20253)

(assert (=> bm!115024 (= call!115030 (tail!2754 input!3681))))

(declare-fun b!1836906 () Bool)

(declare-fun e!1173848 () tuple2!19638)

(assert (=> b!1836906 (= e!1173848 e!1173852)))

(declare-fun lt!713059 () tuple2!19638)

(declare-fun call!115029 () tuple2!19638)

(assert (=> b!1836906 (= lt!713059 call!115029)))

(declare-fun c!299698 () Bool)

(assert (=> b!1836906 (= c!299698 (isEmpty!12748 (_1!11221 lt!713059)))))

(declare-fun b!1836907 () Bool)

(declare-fun e!1173849 () Unit!34879)

(declare-fun Unit!34892 () Unit!34879)

(assert (=> b!1836907 (= e!1173849 Unit!34892)))

(declare-fun bm!115025 () Bool)

(declare-fun call!115035 () C!10128)

(assert (=> bm!115025 (= call!115035 (head!4295 input!3681))))

(declare-fun d!561615 () Bool)

(declare-fun e!1173853 () Bool)

(assert (=> d!561615 e!1173853))

(declare-fun res!825826 () Bool)

(assert (=> d!561615 (=> (not res!825826) (not e!1173853))))

(declare-fun lt!713054 () tuple2!19638)

(assert (=> d!561615 (= res!825826 (= (++!5473 (_1!11221 lt!713054) (_2!11221 lt!713054)) input!3681))))

(assert (=> d!561615 (= lt!713054 e!1173847)))

(declare-fun c!299701 () Bool)

(declare-fun lostCause!625 (Regex!4977) Bool)

(assert (=> d!561615 (= c!299701 (lostCause!625 (regex!3649 rule!580)))))

(declare-fun lt!713073 () Unit!34879)

(declare-fun Unit!34893 () Unit!34879)

(assert (=> d!561615 (= lt!713073 Unit!34893)))

(declare-fun getSuffix!974 (List!20253 List!20253) List!20253)

(assert (=> d!561615 (= (getSuffix!974 input!3681 Nil!20183) input!3681)))

(declare-fun lt!713065 () Unit!34879)

(declare-fun lt!713061 () Unit!34879)

(assert (=> d!561615 (= lt!713065 lt!713061)))

(declare-fun lt!713067 () List!20253)

(assert (=> d!561615 (= input!3681 lt!713067)))

(declare-fun lemmaSamePrefixThenSameSuffix!918 (List!20253 List!20253 List!20253 List!20253 List!20253) Unit!34879)

(assert (=> d!561615 (= lt!713061 (lemmaSamePrefixThenSameSuffix!918 Nil!20183 input!3681 Nil!20183 lt!713067 input!3681))))

(assert (=> d!561615 (= lt!713067 (getSuffix!974 input!3681 Nil!20183))))

(declare-fun lt!713060 () Unit!34879)

(declare-fun lt!713077 () Unit!34879)

(assert (=> d!561615 (= lt!713060 lt!713077)))

(assert (=> d!561615 (isPrefix!1845 Nil!20183 (++!5473 Nil!20183 input!3681))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1316 (List!20253 List!20253) Unit!34879)

(assert (=> d!561615 (= lt!713077 (lemmaConcatTwoListThenFirstIsPrefix!1316 Nil!20183 input!3681))))

(assert (=> d!561615 (validRegex!2035 (regex!3649 rule!580))))

(assert (=> d!561615 (= (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)) lt!713054)))

(declare-fun b!1836908 () Bool)

(declare-fun c!299697 () Bool)

(declare-fun call!115031 () Bool)

(assert (=> b!1836908 (= c!299697 call!115031)))

(declare-fun lt!713071 () Unit!34879)

(declare-fun lt!713079 () Unit!34879)

(assert (=> b!1836908 (= lt!713071 lt!713079)))

(declare-fun lt!713058 () C!10128)

(declare-fun lt!713070 () List!20253)

(assert (=> b!1836908 (= (++!5473 (++!5473 Nil!20183 (Cons!20183 lt!713058 Nil!20183)) lt!713070) input!3681)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!471 (List!20253 C!10128 List!20253 List!20253) Unit!34879)

(assert (=> b!1836908 (= lt!713079 (lemmaMoveElementToOtherListKeepsConcatEq!471 Nil!20183 lt!713058 lt!713070 input!3681))))

(assert (=> b!1836908 (= lt!713070 (tail!2754 input!3681))))

(assert (=> b!1836908 (= lt!713058 (head!4295 input!3681))))

(declare-fun lt!713063 () Unit!34879)

(declare-fun lt!713075 () Unit!34879)

(assert (=> b!1836908 (= lt!713063 lt!713075)))

(assert (=> b!1836908 (isPrefix!1845 (++!5473 Nil!20183 (Cons!20183 (head!4295 (getSuffix!974 input!3681 Nil!20183)) Nil!20183)) input!3681)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!343 (List!20253 List!20253) Unit!34879)

(assert (=> b!1836908 (= lt!713075 (lemmaAddHeadSuffixToPrefixStillPrefix!343 Nil!20183 input!3681))))

(declare-fun lt!713078 () Unit!34879)

(declare-fun lt!713066 () Unit!34879)

(assert (=> b!1836908 (= lt!713078 lt!713066)))

(assert (=> b!1836908 (= lt!713066 (lemmaAddHeadSuffixToPrefixStillPrefix!343 Nil!20183 input!3681))))

(declare-fun lt!713053 () List!20253)

(assert (=> b!1836908 (= lt!713053 (++!5473 Nil!20183 (Cons!20183 (head!4295 input!3681) Nil!20183)))))

(declare-fun lt!713062 () Unit!34879)

(assert (=> b!1836908 (= lt!713062 e!1173849)))

(declare-fun c!299700 () Bool)

(assert (=> b!1836908 (= c!299700 (= (size!16014 Nil!20183) (size!16014 input!3681)))))

(declare-fun lt!713072 () Unit!34879)

(declare-fun lt!713080 () Unit!34879)

(assert (=> b!1836908 (= lt!713072 lt!713080)))

(assert (=> b!1836908 (<= (size!16014 Nil!20183) (size!16014 input!3681))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!146 (List!20253 List!20253) Unit!34879)

(assert (=> b!1836908 (= lt!713080 (lemmaIsPrefixThenSmallerEqSize!146 Nil!20183 input!3681))))

(declare-fun e!1173850 () tuple2!19638)

(assert (=> b!1836908 (= e!1173850 e!1173848)))

(declare-fun b!1836909 () Bool)

(declare-fun e!1173854 () Bool)

(assert (=> b!1836909 (= e!1173853 e!1173854)))

(declare-fun res!825827 () Bool)

(assert (=> b!1836909 (=> res!825827 e!1173854)))

(assert (=> b!1836909 (= res!825827 (isEmpty!12748 (_1!11221 lt!713054)))))

(declare-fun b!1836910 () Bool)

(assert (=> b!1836910 (= e!1173852 lt!713059)))

(declare-fun bm!115026 () Bool)

(declare-fun call!115032 () Unit!34879)

(declare-fun lemmaIsPrefixSameLengthThenSameList!303 (List!20253 List!20253 List!20253) Unit!34879)

(assert (=> bm!115026 (= call!115032 (lemmaIsPrefixSameLengthThenSameList!303 input!3681 Nil!20183 input!3681))))

(declare-fun bm!115027 () Bool)

(assert (=> bm!115027 (= call!115031 (nullable!1553 (regex!3649 rule!580)))))

(declare-fun b!1836911 () Bool)

(assert (=> b!1836911 (= e!1173847 e!1173850)))

(declare-fun c!299699 () Bool)

(assert (=> b!1836911 (= c!299699 (= (size!16014 Nil!20183) (size!16014 input!3681)))))

(declare-fun b!1836912 () Bool)

(declare-fun e!1173851 () tuple2!19638)

(assert (=> b!1836912 (= e!1173851 (tuple2!19639 Nil!20183 Nil!20183))))

(declare-fun b!1836913 () Bool)

(declare-fun c!299696 () Bool)

(assert (=> b!1836913 (= c!299696 call!115031)))

(declare-fun lt!713064 () Unit!34879)

(declare-fun lt!713074 () Unit!34879)

(assert (=> b!1836913 (= lt!713064 lt!713074)))

(assert (=> b!1836913 (= input!3681 Nil!20183)))

(assert (=> b!1836913 (= lt!713074 call!115032)))

(declare-fun lt!713055 () Unit!34879)

(declare-fun lt!713068 () Unit!34879)

(assert (=> b!1836913 (= lt!713055 lt!713068)))

(declare-fun call!115028 () Bool)

(assert (=> b!1836913 call!115028))

(assert (=> b!1836913 (= lt!713068 call!115034)))

(assert (=> b!1836913 (= e!1173850 e!1173851)))

(declare-fun b!1836914 () Bool)

(assert (=> b!1836914 (= e!1173848 call!115029)))

(declare-fun b!1836915 () Bool)

(assert (=> b!1836915 (= e!1173851 (tuple2!19639 Nil!20183 input!3681))))

(declare-fun call!115033 () Regex!4977)

(declare-fun bm!115028 () Bool)

(assert (=> bm!115028 (= call!115029 (findLongestMatchInner!525 call!115033 lt!713053 (+ (size!16014 Nil!20183) 1) call!115030 input!3681 (size!16014 input!3681)))))

(declare-fun b!1836916 () Bool)

(declare-fun Unit!34894 () Unit!34879)

(assert (=> b!1836916 (= e!1173849 Unit!34894)))

(declare-fun lt!713056 () Unit!34879)

(assert (=> b!1836916 (= lt!713056 call!115034)))

(assert (=> b!1836916 call!115028))

(declare-fun lt!713069 () Unit!34879)

(assert (=> b!1836916 (= lt!713069 lt!713056)))

(declare-fun lt!713057 () Unit!34879)

(assert (=> b!1836916 (= lt!713057 call!115032)))

(assert (=> b!1836916 (= input!3681 Nil!20183)))

(declare-fun lt!713076 () Unit!34879)

(assert (=> b!1836916 (= lt!713076 lt!713057)))

(assert (=> b!1836916 false))

(declare-fun b!1836917 () Bool)

(assert (=> b!1836917 (= e!1173854 (>= (size!16014 (_1!11221 lt!713054)) (size!16014 Nil!20183)))))

(declare-fun bm!115029 () Bool)

(assert (=> bm!115029 (= call!115033 (derivativeStep!1317 (regex!3649 rule!580) call!115035))))

(declare-fun bm!115030 () Bool)

(assert (=> bm!115030 (= call!115028 (isPrefix!1845 input!3681 input!3681))))

(assert (= (and d!561615 c!299701) b!1836904))

(assert (= (and d!561615 (not c!299701)) b!1836911))

(assert (= (and b!1836911 c!299699) b!1836913))

(assert (= (and b!1836911 (not c!299699)) b!1836908))

(assert (= (and b!1836913 c!299696) b!1836912))

(assert (= (and b!1836913 (not c!299696)) b!1836915))

(assert (= (and b!1836908 c!299700) b!1836916))

(assert (= (and b!1836908 (not c!299700)) b!1836907))

(assert (= (and b!1836908 c!299697) b!1836906))

(assert (= (and b!1836908 (not c!299697)) b!1836914))

(assert (= (and b!1836906 c!299698) b!1836905))

(assert (= (and b!1836906 (not c!299698)) b!1836910))

(assert (= (or b!1836906 b!1836914) bm!115024))

(assert (= (or b!1836906 b!1836914) bm!115025))

(assert (= (or b!1836906 b!1836914) bm!115029))

(assert (= (or b!1836906 b!1836914) bm!115028))

(assert (= (or b!1836913 b!1836916) bm!115023))

(assert (= (or b!1836913 b!1836916) bm!115026))

(assert (= (or b!1836913 b!1836908) bm!115027))

(assert (= (or b!1836913 b!1836916) bm!115030))

(assert (= (and d!561615 res!825826) b!1836909))

(assert (= (and b!1836909 (not res!825827)) b!1836917))

(declare-fun m!2264793 () Bool)

(assert (=> bm!115025 m!2264793))

(assert (=> bm!115023 m!2264233))

(declare-fun m!2264795 () Bool)

(assert (=> bm!115024 m!2264795))

(assert (=> bm!115030 m!2264231))

(declare-fun m!2264797 () Bool)

(assert (=> bm!115026 m!2264797))

(assert (=> bm!115027 m!2263971))

(declare-fun m!2264799 () Bool)

(assert (=> bm!115029 m!2264799))

(declare-fun m!2264801 () Bool)

(assert (=> b!1836909 m!2264801))

(declare-fun m!2264803 () Bool)

(assert (=> b!1836906 m!2264803))

(assert (=> bm!115028 m!2263863))

(declare-fun m!2264805 () Bool)

(assert (=> bm!115028 m!2264805))

(declare-fun m!2264807 () Bool)

(assert (=> b!1836917 m!2264807))

(assert (=> b!1836917 m!2263861))

(declare-fun m!2264809 () Bool)

(assert (=> d!561615 m!2264809))

(declare-fun m!2264811 () Bool)

(assert (=> d!561615 m!2264811))

(declare-fun m!2264813 () Bool)

(assert (=> d!561615 m!2264813))

(assert (=> d!561615 m!2263969))

(declare-fun m!2264815 () Bool)

(assert (=> d!561615 m!2264815))

(declare-fun m!2264817 () Bool)

(assert (=> d!561615 m!2264817))

(declare-fun m!2264819 () Bool)

(assert (=> d!561615 m!2264819))

(declare-fun m!2264821 () Bool)

(assert (=> d!561615 m!2264821))

(assert (=> d!561615 m!2264811))

(assert (=> b!1836908 m!2264793))

(declare-fun m!2264823 () Bool)

(assert (=> b!1836908 m!2264823))

(declare-fun m!2264825 () Bool)

(assert (=> b!1836908 m!2264825))

(assert (=> b!1836908 m!2264795))

(declare-fun m!2264827 () Bool)

(assert (=> b!1836908 m!2264827))

(declare-fun m!2264829 () Bool)

(assert (=> b!1836908 m!2264829))

(assert (=> b!1836908 m!2263863))

(assert (=> b!1836908 m!2264823))

(declare-fun m!2264831 () Bool)

(assert (=> b!1836908 m!2264831))

(assert (=> b!1836908 m!2263861))

(declare-fun m!2264833 () Bool)

(assert (=> b!1836908 m!2264833))

(assert (=> b!1836908 m!2264821))

(declare-fun m!2264835 () Bool)

(assert (=> b!1836908 m!2264835))

(assert (=> b!1836908 m!2264821))

(assert (=> b!1836908 m!2264831))

(declare-fun m!2264837 () Bool)

(assert (=> b!1836908 m!2264837))

(declare-fun m!2264839 () Bool)

(assert (=> b!1836908 m!2264839))

(assert (=> b!1836035 d!561615))

(declare-fun d!561723 () Bool)

(declare-fun lt!713082 () Int)

(assert (=> d!561723 (>= lt!713082 0)))

(declare-fun e!1173859 () Int)

(assert (=> d!561723 (= lt!713082 e!1173859)))

(declare-fun c!299705 () Bool)

(assert (=> d!561723 (= c!299705 ((_ is Nil!20183) Nil!20183))))

(assert (=> d!561723 (= (size!16014 Nil!20183) lt!713082)))

(declare-fun b!1836925 () Bool)

(assert (=> b!1836925 (= e!1173859 0)))

(declare-fun b!1836926 () Bool)

(assert (=> b!1836926 (= e!1173859 (+ 1 (size!16014 (t!171378 Nil!20183))))))

(assert (= (and d!561723 c!299705) b!1836925))

(assert (= (and d!561723 (not c!299705)) b!1836926))

(declare-fun m!2264841 () Bool)

(assert (=> b!1836926 m!2264841))

(assert (=> b!1836035 d!561723))

(declare-fun d!561725 () Bool)

(declare-fun lt!713083 () Int)

(assert (=> d!561725 (>= lt!713083 0)))

(declare-fun e!1173860 () Int)

(assert (=> d!561725 (= lt!713083 e!1173860)))

(declare-fun c!299706 () Bool)

(assert (=> d!561725 (= c!299706 ((_ is Nil!20183) input!3681))))

(assert (=> d!561725 (= (size!16014 input!3681) lt!713083)))

(declare-fun b!1836929 () Bool)

(assert (=> b!1836929 (= e!1173860 0)))

(declare-fun b!1836930 () Bool)

(assert (=> b!1836930 (= e!1173860 (+ 1 (size!16014 (t!171378 input!3681))))))

(assert (= (and d!561725 c!299706) b!1836929))

(assert (= (and d!561725 (not c!299706)) b!1836930))

(declare-fun m!2264843 () Bool)

(assert (=> b!1836930 m!2264843))

(assert (=> b!1836035 d!561725))

(declare-fun d!561727 () Bool)

(declare-fun nullableFct!346 (Regex!4977) Bool)

(assert (=> d!561727 (= (nullable!1553 (regex!3649 rule!580)) (nullableFct!346 (regex!3649 rule!580)))))

(declare-fun bs!408372 () Bool)

(assert (= bs!408372 d!561727))

(declare-fun m!2264845 () Bool)

(assert (=> bs!408372 m!2264845))

(assert (=> b!1836167 d!561727))

(assert (=> b!1836157 d!561727))

(declare-fun d!561729 () Bool)

(assert (=> d!561729 (= (isUnion!135 lt!712756) ((_ is Union!4977) lt!712756))))

(assert (=> b!1836314 d!561729))

(declare-fun d!561731 () Bool)

(assert (=> d!561731 (= (head!4296 (map!4192 rules!4610 lambda!72208)) (h!25587 (map!4192 rules!4610 lambda!72208)))))

(assert (=> b!1836310 d!561731))

(declare-fun bs!408373 () Bool)

(declare-fun d!561733 () Bool)

(assert (= bs!408373 (and d!561733 d!561547)))

(declare-fun lambda!72276 () Int)

(assert (=> bs!408373 (= (and (= (toChars!5059 (transformation!3649 rule!580)) (toChars!5059 (transformation!3649 (h!25586 rs!808)))) (= (toValue!5200 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 (h!25586 rs!808))))) (= lambda!72276 lambda!72248))))

(assert (=> d!561733 true))

(assert (=> d!561733 (< (dynLambda!10067 order!13063 (toChars!5059 (transformation!3649 rule!580))) (dynLambda!10068 order!13065 lambda!72276))))

(assert (=> d!561733 true))

(assert (=> d!561733 (< (dynLambda!10063 order!13059 (toValue!5200 (transformation!3649 rule!580))) (dynLambda!10068 order!13065 lambda!72276))))

(assert (=> d!561733 (= (semiInverseModEq!1470 (toChars!5059 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 rule!580))) (Forall!938 lambda!72276))))

(declare-fun bs!408374 () Bool)

(assert (= bs!408374 d!561733))

(declare-fun m!2264859 () Bool)

(assert (=> bs!408374 m!2264859))

(assert (=> d!561453 d!561733))

(declare-fun d!561741 () Bool)

(declare-fun c!299715 () Bool)

(assert (=> d!561741 (= c!299715 ((_ is Nil!20183) lt!712698))))

(declare-fun e!1173871 () (InoxSet C!10128))

(assert (=> d!561741 (= (content!3002 lt!712698) e!1173871)))

(declare-fun b!1836947 () Bool)

(assert (=> b!1836947 (= e!1173871 ((as const (Array C!10128 Bool)) false))))

(declare-fun b!1836948 () Bool)

(assert (=> b!1836948 (= e!1173871 ((_ map or) (store ((as const (Array C!10128 Bool)) false) (h!25584 lt!712698) true) (content!3002 (t!171378 lt!712698))))))

(assert (= (and d!561741 c!299715) b!1836947))

(assert (= (and d!561741 (not c!299715)) b!1836948))

(declare-fun m!2264861 () Bool)

(assert (=> b!1836948 m!2264861))

(declare-fun m!2264863 () Bool)

(assert (=> b!1836948 m!2264863))

(assert (=> d!561371 d!561741))

(declare-fun d!561743 () Bool)

(declare-fun c!299717 () Bool)

(assert (=> d!561743 (= c!299717 ((_ is Nil!20183) lt!712625))))

(declare-fun e!1173872 () (InoxSet C!10128))

(assert (=> d!561743 (= (content!3002 lt!712625) e!1173872)))

(declare-fun b!1836949 () Bool)

(assert (=> b!1836949 (= e!1173872 ((as const (Array C!10128 Bool)) false))))

(declare-fun b!1836950 () Bool)

(assert (=> b!1836950 (= e!1173872 ((_ map or) (store ((as const (Array C!10128 Bool)) false) (h!25584 lt!712625) true) (content!3002 (t!171378 lt!712625))))))

(assert (= (and d!561743 c!299717) b!1836949))

(assert (= (and d!561743 (not c!299717)) b!1836950))

(declare-fun m!2264865 () Bool)

(assert (=> b!1836950 m!2264865))

(assert (=> b!1836950 m!2264425))

(assert (=> d!561371 d!561743))

(declare-fun d!561745 () Bool)

(declare-fun c!299718 () Bool)

(assert (=> d!561745 (= c!299718 ((_ is Nil!20183) suffix!1698))))

(declare-fun e!1173873 () (InoxSet C!10128))

(assert (=> d!561745 (= (content!3002 suffix!1698) e!1173873)))

(declare-fun b!1836951 () Bool)

(assert (=> b!1836951 (= e!1173873 ((as const (Array C!10128 Bool)) false))))

(declare-fun b!1836952 () Bool)

(assert (=> b!1836952 (= e!1173873 ((_ map or) (store ((as const (Array C!10128 Bool)) false) (h!25584 suffix!1698) true) (content!3002 (t!171378 suffix!1698))))))

(assert (= (and d!561745 c!299718) b!1836951))

(assert (= (and d!561745 (not c!299718)) b!1836952))

(declare-fun m!2264867 () Bool)

(assert (=> b!1836952 m!2264867))

(declare-fun m!2264869 () Bool)

(assert (=> b!1836952 m!2264869))

(assert (=> d!561371 d!561745))

(declare-fun b!1836955 () Bool)

(declare-fun e!1173880 () Bool)

(declare-fun e!1173876 () Bool)

(assert (=> b!1836955 (= e!1173880 e!1173876)))

(declare-fun res!825837 () Bool)

(assert (=> b!1836955 (=> res!825837 e!1173876)))

(declare-fun call!115036 () Bool)

(assert (=> b!1836955 (= res!825837 call!115036)))

(declare-fun b!1836956 () Bool)

(declare-fun res!825831 () Bool)

(declare-fun e!1173881 () Bool)

(assert (=> b!1836956 (=> (not res!825831) (not e!1173881))))

(assert (=> b!1836956 (= res!825831 (not call!115036))))

(declare-fun b!1836957 () Bool)

(declare-fun res!825833 () Bool)

(assert (=> b!1836957 (=> (not res!825833) (not e!1173881))))

(assert (=> b!1836957 (= res!825833 (isEmpty!12748 (tail!2754 (tail!2754 lt!712625))))))

(declare-fun b!1836958 () Bool)

(declare-fun e!1173874 () Bool)

(declare-fun lt!713087 () Bool)

(assert (=> b!1836958 (= e!1173874 (= lt!713087 call!115036))))

(declare-fun b!1836959 () Bool)

(declare-fun res!825836 () Bool)

(declare-fun e!1173875 () Bool)

(assert (=> b!1836959 (=> res!825836 e!1173875)))

(assert (=> b!1836959 (= res!825836 (not ((_ is ElementMatch!4977) (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712625)))))))

(declare-fun e!1173877 () Bool)

(assert (=> b!1836959 (= e!1173877 e!1173875)))

(declare-fun b!1836960 () Bool)

(assert (=> b!1836960 (= e!1173881 (= (head!4295 (tail!2754 lt!712625)) (c!299472 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712625)))))))

(declare-fun b!1836961 () Bool)

(declare-fun e!1173882 () Bool)

(assert (=> b!1836961 (= e!1173882 (matchR!2440 (derivativeStep!1317 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712625)) (head!4295 (tail!2754 lt!712625))) (tail!2754 (tail!2754 lt!712625))))))

(declare-fun b!1836963 () Bool)

(assert (=> b!1836963 (= e!1173882 (nullable!1553 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712625))))))

(declare-fun b!1836964 () Bool)

(assert (=> b!1836964 (= e!1173875 e!1173880)))

(declare-fun res!825839 () Bool)

(assert (=> b!1836964 (=> (not res!825839) (not e!1173880))))

(assert (=> b!1836964 (= res!825839 (not lt!713087))))

(declare-fun b!1836965 () Bool)

(assert (=> b!1836965 (= e!1173874 e!1173877)))

(declare-fun c!299721 () Bool)

(assert (=> b!1836965 (= c!299721 ((_ is EmptyLang!4977) (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712625))))))

(declare-fun b!1836966 () Bool)

(declare-fun res!825840 () Bool)

(assert (=> b!1836966 (=> res!825840 e!1173875)))

(assert (=> b!1836966 (= res!825840 e!1173881)))

(declare-fun res!825832 () Bool)

(assert (=> b!1836966 (=> (not res!825832) (not e!1173881))))

(assert (=> b!1836966 (= res!825832 lt!713087)))

(declare-fun bm!115031 () Bool)

(assert (=> bm!115031 (= call!115036 (isEmpty!12748 (tail!2754 lt!712625)))))

(declare-fun b!1836962 () Bool)

(assert (=> b!1836962 (= e!1173877 (not lt!713087))))

(declare-fun d!561747 () Bool)

(assert (=> d!561747 e!1173874))

(declare-fun c!299719 () Bool)

(assert (=> d!561747 (= c!299719 ((_ is EmptyExpr!4977) (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712625))))))

(assert (=> d!561747 (= lt!713087 e!1173882)))

(declare-fun c!299720 () Bool)

(assert (=> d!561747 (= c!299720 (isEmpty!12748 (tail!2754 lt!712625)))))

(assert (=> d!561747 (validRegex!2035 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712625)))))

(assert (=> d!561747 (= (matchR!2440 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712625)) (tail!2754 lt!712625)) lt!713087)))

(declare-fun b!1836967 () Bool)

(assert (=> b!1836967 (= e!1173876 (not (= (head!4295 (tail!2754 lt!712625)) (c!299472 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712625))))))))

(declare-fun b!1836968 () Bool)

(declare-fun res!825838 () Bool)

(assert (=> b!1836968 (=> res!825838 e!1173876)))

(assert (=> b!1836968 (= res!825838 (not (isEmpty!12748 (tail!2754 (tail!2754 lt!712625)))))))

(assert (= (and d!561747 c!299720) b!1836963))

(assert (= (and d!561747 (not c!299720)) b!1836961))

(assert (= (and d!561747 c!299719) b!1836958))

(assert (= (and d!561747 (not c!299719)) b!1836965))

(assert (= (and b!1836965 c!299721) b!1836962))

(assert (= (and b!1836965 (not c!299721)) b!1836959))

(assert (= (and b!1836959 (not res!825836)) b!1836966))

(assert (= (and b!1836966 res!825832) b!1836956))

(assert (= (and b!1836956 res!825831) b!1836957))

(assert (= (and b!1836957 res!825833) b!1836960))

(assert (= (and b!1836966 (not res!825840)) b!1836964))

(assert (= (and b!1836964 res!825839) b!1836955))

(assert (= (and b!1836955 (not res!825837)) b!1836968))

(assert (= (and b!1836968 (not res!825838)) b!1836967))

(assert (= (or b!1836958 b!1836955 b!1836956) bm!115031))

(assert (=> b!1836961 m!2263961))

(declare-fun m!2264873 () Bool)

(assert (=> b!1836961 m!2264873))

(assert (=> b!1836961 m!2263959))

(assert (=> b!1836961 m!2264873))

(declare-fun m!2264879 () Bool)

(assert (=> b!1836961 m!2264879))

(assert (=> b!1836961 m!2263961))

(declare-fun m!2264881 () Bool)

(assert (=> b!1836961 m!2264881))

(assert (=> b!1836961 m!2264879))

(assert (=> b!1836961 m!2264881))

(declare-fun m!2264883 () Bool)

(assert (=> b!1836961 m!2264883))

(assert (=> b!1836967 m!2263961))

(assert (=> b!1836967 m!2264873))

(assert (=> b!1836957 m!2263961))

(assert (=> b!1836957 m!2264881))

(assert (=> b!1836957 m!2264881))

(declare-fun m!2264885 () Bool)

(assert (=> b!1836957 m!2264885))

(assert (=> bm!115031 m!2263961))

(assert (=> bm!115031 m!2263965))

(assert (=> b!1836968 m!2263961))

(assert (=> b!1836968 m!2264881))

(assert (=> b!1836968 m!2264881))

(assert (=> b!1836968 m!2264885))

(assert (=> b!1836960 m!2263961))

(assert (=> b!1836960 m!2264873))

(assert (=> d!561747 m!2263961))

(assert (=> d!561747 m!2263965))

(assert (=> d!561747 m!2263959))

(declare-fun m!2264887 () Bool)

(assert (=> d!561747 m!2264887))

(assert (=> b!1836963 m!2263959))

(declare-fun m!2264889 () Bool)

(assert (=> b!1836963 m!2264889))

(assert (=> b!1836155 d!561747))

(declare-fun b!1837012 () Bool)

(declare-fun c!299738 () Bool)

(assert (=> b!1837012 (= c!299738 ((_ is Union!4977) (regex!3649 rule!580)))))

(declare-fun e!1173910 () Regex!4977)

(declare-fun e!1173909 () Regex!4977)

(assert (=> b!1837012 (= e!1173910 e!1173909)))

(declare-fun b!1837013 () Bool)

(declare-fun e!1173908 () Regex!4977)

(assert (=> b!1837013 (= e!1173908 e!1173910)))

(declare-fun c!299737 () Bool)

(assert (=> b!1837013 (= c!299737 ((_ is ElementMatch!4977) (regex!3649 rule!580)))))

(declare-fun bm!115040 () Bool)

(declare-fun call!115047 () Regex!4977)

(assert (=> bm!115040 (= call!115047 (derivativeStep!1317 (ite c!299738 (regOne!10467 (regex!3649 rule!580)) (regOne!10466 (regex!3649 rule!580))) (head!4295 lt!712625)))))

(declare-fun b!1837014 () Bool)

(declare-fun call!115045 () Regex!4977)

(assert (=> b!1837014 (= e!1173909 (Union!4977 call!115047 call!115045))))

(declare-fun d!561751 () Bool)

(declare-fun lt!713097 () Regex!4977)

(assert (=> d!561751 (validRegex!2035 lt!713097)))

(assert (=> d!561751 (= lt!713097 e!1173908)))

(declare-fun c!299741 () Bool)

(assert (=> d!561751 (= c!299741 (or ((_ is EmptyExpr!4977) (regex!3649 rule!580)) ((_ is EmptyLang!4977) (regex!3649 rule!580))))))

(assert (=> d!561751 (validRegex!2035 (regex!3649 rule!580))))

(assert (=> d!561751 (= (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712625)) lt!713097)))

(declare-fun bm!115041 () Bool)

(declare-fun call!115046 () Regex!4977)

(assert (=> bm!115041 (= call!115046 call!115045)))

(declare-fun b!1837015 () Bool)

(declare-fun e!1173907 () Regex!4977)

(assert (=> b!1837015 (= e!1173907 (Concat!8716 call!115046 (regex!3649 rule!580)))))

(declare-fun b!1837016 () Bool)

(assert (=> b!1837016 (= e!1173910 (ite (= (head!4295 lt!712625) (c!299472 (regex!3649 rule!580))) EmptyExpr!4977 EmptyLang!4977))))

(declare-fun b!1837017 () Bool)

(declare-fun e!1173906 () Regex!4977)

(declare-fun call!115048 () Regex!4977)

(assert (=> b!1837017 (= e!1173906 (Union!4977 (Concat!8716 call!115048 (regTwo!10466 (regex!3649 rule!580))) EmptyLang!4977))))

(declare-fun b!1837018 () Bool)

(assert (=> b!1837018 (= e!1173906 (Union!4977 (Concat!8716 call!115047 (regTwo!10466 (regex!3649 rule!580))) call!115048))))

(declare-fun b!1837019 () Bool)

(assert (=> b!1837019 (= e!1173909 e!1173907)))

(declare-fun c!299739 () Bool)

(assert (=> b!1837019 (= c!299739 ((_ is Star!4977) (regex!3649 rule!580)))))

(declare-fun bm!115042 () Bool)

(assert (=> bm!115042 (= call!115048 call!115046)))

(declare-fun bm!115043 () Bool)

(declare-fun c!299740 () Bool)

(assert (=> bm!115043 (= call!115045 (derivativeStep!1317 (ite c!299738 (regTwo!10467 (regex!3649 rule!580)) (ite c!299739 (reg!5306 (regex!3649 rule!580)) (ite c!299740 (regTwo!10466 (regex!3649 rule!580)) (regOne!10466 (regex!3649 rule!580))))) (head!4295 lt!712625)))))

(declare-fun b!1837020 () Bool)

(assert (=> b!1837020 (= c!299740 (nullable!1553 (regOne!10466 (regex!3649 rule!580))))))

(assert (=> b!1837020 (= e!1173907 e!1173906)))

(declare-fun b!1837021 () Bool)

(assert (=> b!1837021 (= e!1173908 EmptyLang!4977)))

(assert (= (and d!561751 c!299741) b!1837021))

(assert (= (and d!561751 (not c!299741)) b!1837013))

(assert (= (and b!1837013 c!299737) b!1837016))

(assert (= (and b!1837013 (not c!299737)) b!1837012))

(assert (= (and b!1837012 c!299738) b!1837014))

(assert (= (and b!1837012 (not c!299738)) b!1837019))

(assert (= (and b!1837019 c!299739) b!1837015))

(assert (= (and b!1837019 (not c!299739)) b!1837020))

(assert (= (and b!1837020 c!299740) b!1837018))

(assert (= (and b!1837020 (not c!299740)) b!1837017))

(assert (= (or b!1837018 b!1837017) bm!115042))

(assert (= (or b!1837015 bm!115042) bm!115041))

(assert (= (or b!1837014 bm!115041) bm!115043))

(assert (= (or b!1837014 b!1837018) bm!115040))

(assert (=> bm!115040 m!2263957))

(declare-fun m!2264949 () Bool)

(assert (=> bm!115040 m!2264949))

(declare-fun m!2264951 () Bool)

(assert (=> d!561751 m!2264951))

(assert (=> d!561751 m!2263969))

(assert (=> bm!115043 m!2263957))

(declare-fun m!2264953 () Bool)

(assert (=> bm!115043 m!2264953))

(declare-fun m!2264955 () Bool)

(assert (=> b!1837020 m!2264955))

(assert (=> b!1836155 d!561751))

(declare-fun d!561765 () Bool)

(assert (=> d!561765 (= (head!4295 lt!712625) (h!25584 lt!712625))))

(assert (=> b!1836155 d!561765))

(assert (=> b!1836155 d!561489))

(declare-fun d!561767 () Bool)

(assert (=> d!561767 (= (isEmptyLang!135 lt!712756) ((_ is EmptyLang!4977) lt!712756))))

(assert (=> b!1836312 d!561767))

(assert (=> b!1836033 d!561615))

(assert (=> b!1836033 d!561723))

(declare-fun d!561769 () Bool)

(assert (=> d!561769 (= (isEmpty!12748 (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))) ((_ is Nil!20183) (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))))))

(assert (=> b!1836033 d!561769))

(assert (=> b!1836033 d!561725))

(declare-fun d!561771 () Bool)

(assert (=> d!561771 (= (seqFromList!2606 (_1!11221 lt!712670)) (fromListB!1196 (_1!11221 lt!712670)))))

(declare-fun bs!408377 () Bool)

(assert (= bs!408377 d!561771))

(declare-fun m!2264957 () Bool)

(assert (=> bs!408377 m!2264957))

(assert (=> b!1836033 d!561771))

(declare-fun d!561773 () Bool)

(assert (=> d!561773 (= (apply!5437 (transformation!3649 rule!580) (seqFromList!2606 (_1!11221 lt!712670))) (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 (_1!11221 lt!712670))))))

(declare-fun b_lambda!60969 () Bool)

(assert (=> (not b_lambda!60969) (not d!561773)))

(declare-fun t!171555 () Bool)

(declare-fun tb!112673 () Bool)

(assert (=> (and b!1835914 (= (toValue!5200 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 rule!580))) t!171555) tb!112673))

(declare-fun result!135456 () Bool)

(assert (=> tb!112673 (= result!135456 (inv!21 (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 (_1!11221 lt!712670)))))))

(declare-fun m!2264959 () Bool)

(assert (=> tb!112673 m!2264959))

(assert (=> d!561773 t!171555))

(declare-fun b_and!143525 () Bool)

(assert (= b_and!143441 (and (=> t!171555 result!135456) b_and!143525)))

(declare-fun t!171557 () Bool)

(declare-fun tb!112675 () Bool)

(assert (=> (and b!1835916 (= (toValue!5200 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 rule!580))) t!171557) tb!112675))

(declare-fun result!135458 () Bool)

(assert (= result!135458 result!135456))

(assert (=> d!561773 t!171557))

(declare-fun b_and!143527 () Bool)

(assert (= b_and!143449 (and (=> t!171557 result!135458) b_and!143527)))

(declare-fun t!171559 () Bool)

(declare-fun tb!112677 () Bool)

(assert (=> (and b!1836438 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toValue!5200 (transformation!3649 rule!580))) t!171559) tb!112677))

(declare-fun result!135460 () Bool)

(assert (= result!135460 result!135456))

(assert (=> d!561773 t!171559))

(declare-fun b_and!143529 () Bool)

(assert (= b_and!143445 (and (=> t!171559 result!135460) b_and!143529)))

(declare-fun tb!112679 () Bool)

(declare-fun t!171561 () Bool)

(assert (=> (and b!1835918 (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 rule!580))) t!171561) tb!112679))

(declare-fun result!135462 () Bool)

(assert (= result!135462 result!135456))

(assert (=> d!561773 t!171561))

(declare-fun b_and!143531 () Bool)

(assert (= b_and!143443 (and (=> t!171561 result!135462) b_and!143531)))

(declare-fun t!171563 () Bool)

(declare-fun tb!112681 () Bool)

(assert (=> (and b!1835904 (= (toValue!5200 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 rule!580))) t!171563) tb!112681))

(declare-fun result!135464 () Bool)

(assert (= result!135464 result!135456))

(assert (=> d!561773 t!171563))

(declare-fun b_and!143533 () Bool)

(assert (= b_and!143447 (and (=> t!171563 result!135464) b_and!143533)))

(declare-fun tb!112683 () Bool)

(declare-fun t!171565 () Bool)

(assert (=> (and b!1836466 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toValue!5200 (transformation!3649 rule!580))) t!171565) tb!112683))

(declare-fun result!135466 () Bool)

(assert (= result!135466 result!135456))

(assert (=> d!561773 t!171565))

(declare-fun b_and!143535 () Bool)

(assert (= b_and!143451 (and (=> t!171565 result!135466) b_and!143535)))

(assert (=> d!561773 m!2263851))

(declare-fun m!2264961 () Bool)

(assert (=> d!561773 m!2264961))

(assert (=> b!1836033 d!561773))

(declare-fun d!561775 () Bool)

(declare-fun e!1173942 () Bool)

(assert (=> d!561775 e!1173942))

(declare-fun res!825879 () Bool)

(assert (=> d!561775 (=> res!825879 e!1173942)))

(assert (=> d!561775 (= res!825879 (isEmpty!12748 (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))))))

(declare-fun lt!713101 () Unit!34879)

(declare-fun choose!11559 (Regex!4977 List!20253) Unit!34879)

(assert (=> d!561775 (= lt!713101 (choose!11559 (regex!3649 rule!580) input!3681))))

(assert (=> d!561775 (validRegex!2035 (regex!3649 rule!580))))

(assert (=> d!561775 (= (longestMatchIsAcceptedByMatchOrIsEmpty!509 (regex!3649 rule!580) input!3681) lt!713101)))

(declare-fun b!1837065 () Bool)

(assert (=> b!1837065 (= e!1173942 (matchR!2440 (regex!3649 rule!580) (_1!11221 (findLongestMatchInner!525 (regex!3649 rule!580) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))))))

(assert (= (and d!561775 (not res!825879)) b!1837065))

(declare-fun m!2264985 () Bool)

(assert (=> d!561775 m!2264985))

(assert (=> d!561775 m!2263861))

(assert (=> d!561775 m!2263863))

(assert (=> d!561775 m!2263865))

(assert (=> d!561775 m!2263969))

(assert (=> d!561775 m!2263861))

(assert (=> d!561775 m!2263863))

(assert (=> d!561775 m!2263867))

(assert (=> b!1837065 m!2263861))

(assert (=> b!1837065 m!2263863))

(assert (=> b!1837065 m!2263861))

(assert (=> b!1837065 m!2263863))

(assert (=> b!1837065 m!2263867))

(assert (=> b!1837065 m!2263885))

(assert (=> b!1836033 d!561775))

(declare-fun bs!408383 () Bool)

(declare-fun d!561781 () Bool)

(assert (= bs!408383 (and d!561781 d!561547)))

(declare-fun lambda!72280 () Int)

(assert (=> bs!408383 (= (and (= (toChars!5059 (transformation!3649 rule!580)) (toChars!5059 (transformation!3649 (h!25586 rs!808)))) (= (toValue!5200 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 (h!25586 rs!808))))) (= lambda!72280 lambda!72248))))

(declare-fun bs!408384 () Bool)

(assert (= bs!408384 (and d!561781 d!561733)))

(assert (=> bs!408384 (= lambda!72280 lambda!72276)))

(declare-fun b!1837070 () Bool)

(declare-fun e!1173945 () Bool)

(assert (=> b!1837070 (= e!1173945 true)))

(assert (=> d!561781 e!1173945))

(assert (= d!561781 b!1837070))

(assert (=> b!1837070 (< (dynLambda!10063 order!13059 (toValue!5200 (transformation!3649 rule!580))) (dynLambda!10068 order!13065 lambda!72280))))

(assert (=> b!1837070 (< (dynLambda!10067 order!13063 (toChars!5059 (transformation!3649 rule!580))) (dynLambda!10068 order!13065 lambda!72280))))

(assert (=> d!561781 (= (list!8203 (dynLambda!10057 (toChars!5059 (transformation!3649 rule!580)) (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 (_1!11221 lt!712670))))) (list!8203 (seqFromList!2606 (_1!11221 lt!712670))))))

(declare-fun lt!713104 () Unit!34879)

(declare-fun ForallOf!369 (Int BalanceConc!13306) Unit!34879)

(assert (=> d!561781 (= lt!713104 (ForallOf!369 lambda!72280 (seqFromList!2606 (_1!11221 lt!712670))))))

(assert (=> d!561781 (= (lemmaSemiInverse!739 (transformation!3649 rule!580) (seqFromList!2606 (_1!11221 lt!712670))) lt!713104)))

(declare-fun b_lambda!60971 () Bool)

(assert (=> (not b_lambda!60971) (not d!561781)))

(declare-fun tb!112685 () Bool)

(declare-fun t!171567 () Bool)

(assert (=> (and b!1835916 (= (toChars!5059 (transformation!3649 (h!25586 rs!808))) (toChars!5059 (transformation!3649 rule!580))) t!171567) tb!112685))

(declare-fun e!1173949 () Bool)

(declare-fun tp!519546 () Bool)

(declare-fun b!1837075 () Bool)

(assert (=> b!1837075 (= e!1173949 (and (inv!26263 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 rule!580)) (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 (_1!11221 lt!712670)))))) tp!519546))))

(declare-fun result!135468 () Bool)

(assert (=> tb!112685 (= result!135468 (and (inv!26264 (dynLambda!10057 (toChars!5059 (transformation!3649 rule!580)) (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 (_1!11221 lt!712670))))) e!1173949))))

(assert (= tb!112685 b!1837075))

(declare-fun m!2264997 () Bool)

(assert (=> b!1837075 m!2264997))

(declare-fun m!2264999 () Bool)

(assert (=> tb!112685 m!2264999))

(assert (=> d!561781 t!171567))

(declare-fun b_and!143537 () Bool)

(assert (= b_and!143417 (and (=> t!171567 result!135468) b_and!143537)))

(declare-fun t!171569 () Bool)

(declare-fun tb!112687 () Bool)

(assert (=> (and b!1835904 (= (toChars!5059 (transformation!3649 rule!580)) (toChars!5059 (transformation!3649 rule!580))) t!171569) tb!112687))

(declare-fun result!135470 () Bool)

(assert (= result!135470 result!135468))

(assert (=> d!561781 t!171569))

(declare-fun b_and!143539 () Bool)

(assert (= b_and!143421 (and (=> t!171569 result!135470) b_and!143539)))

(declare-fun t!171571 () Bool)

(declare-fun tb!112689 () Bool)

(assert (=> (and b!1836438 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toChars!5059 (transformation!3649 rule!580))) t!171571) tb!112689))

(declare-fun result!135472 () Bool)

(assert (= result!135472 result!135468))

(assert (=> d!561781 t!171571))

(declare-fun b_and!143541 () Bool)

(assert (= b_and!143419 (and (=> t!171571 result!135472) b_and!143541)))

(declare-fun t!171573 () Bool)

(declare-fun tb!112691 () Bool)

(assert (=> (and b!1835914 (= (toChars!5059 (transformation!3649 (rule!5839 token!567))) (toChars!5059 (transformation!3649 rule!580))) t!171573) tb!112691))

(declare-fun result!135474 () Bool)

(assert (= result!135474 result!135468))

(assert (=> d!561781 t!171573))

(declare-fun b_and!143543 () Bool)

(assert (= b_and!143423 (and (=> t!171573 result!135474) b_and!143543)))

(declare-fun tb!112693 () Bool)

(declare-fun t!171575 () Bool)

(assert (=> (and b!1835918 (= (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toChars!5059 (transformation!3649 rule!580))) t!171575) tb!112693))

(declare-fun result!135476 () Bool)

(assert (= result!135476 result!135468))

(assert (=> d!561781 t!171575))

(declare-fun b_and!143545 () Bool)

(assert (= b_and!143427 (and (=> t!171575 result!135476) b_and!143545)))

(declare-fun tb!112695 () Bool)

(declare-fun t!171577 () Bool)

(assert (=> (and b!1836466 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toChars!5059 (transformation!3649 rule!580))) t!171577) tb!112695))

(declare-fun result!135478 () Bool)

(assert (= result!135478 result!135468))

(assert (=> d!561781 t!171577))

(declare-fun b_and!143547 () Bool)

(assert (= b_and!143425 (and (=> t!171577 result!135478) b_and!143547)))

(declare-fun b_lambda!60973 () Bool)

(assert (=> (not b_lambda!60973) (not d!561781)))

(assert (=> d!561781 t!171563))

(declare-fun b_and!143549 () Bool)

(assert (= b_and!143533 (and (=> t!171563 result!135464) b_and!143549)))

(assert (=> d!561781 t!171561))

(declare-fun b_and!143551 () Bool)

(assert (= b_and!143531 (and (=> t!171561 result!135462) b_and!143551)))

(assert (=> d!561781 t!171559))

(declare-fun b_and!143553 () Bool)

(assert (= b_and!143529 (and (=> t!171559 result!135460) b_and!143553)))

(assert (=> d!561781 t!171555))

(declare-fun b_and!143555 () Bool)

(assert (= b_and!143525 (and (=> t!171555 result!135456) b_and!143555)))

(assert (=> d!561781 t!171565))

(declare-fun b_and!143557 () Bool)

(assert (= b_and!143535 (and (=> t!171565 result!135466) b_and!143557)))

(assert (=> d!561781 t!171557))

(declare-fun b_and!143559 () Bool)

(assert (= b_and!143527 (and (=> t!171557 result!135458) b_and!143559)))

(declare-fun m!2265003 () Bool)

(assert (=> d!561781 m!2265003))

(declare-fun m!2265005 () Bool)

(assert (=> d!561781 m!2265005))

(assert (=> d!561781 m!2264961))

(assert (=> d!561781 m!2265003))

(assert (=> d!561781 m!2263851))

(assert (=> d!561781 m!2264961))

(assert (=> d!561781 m!2263851))

(declare-fun m!2265007 () Bool)

(assert (=> d!561781 m!2265007))

(assert (=> d!561781 m!2263851))

(declare-fun m!2265011 () Bool)

(assert (=> d!561781 m!2265011))

(assert (=> b!1836033 d!561781))

(declare-fun d!561795 () Bool)

(declare-fun lt!713112 () Int)

(assert (=> d!561795 (= lt!713112 (size!16014 (list!8203 (seqFromList!2606 (_1!11221 lt!712670)))))))

(declare-fun size!16022 (Conc!6681) Int)

(assert (=> d!561795 (= lt!713112 (size!16022 (c!299473 (seqFromList!2606 (_1!11221 lt!712670)))))))

(assert (=> d!561795 (= (size!16018 (seqFromList!2606 (_1!11221 lt!712670))) lt!713112)))

(declare-fun bs!408387 () Bool)

(assert (= bs!408387 d!561795))

(assert (=> bs!408387 m!2263851))

(assert (=> bs!408387 m!2265007))

(assert (=> bs!408387 m!2265007))

(declare-fun m!2265027 () Bool)

(assert (=> bs!408387 m!2265027))

(declare-fun m!2265029 () Bool)

(assert (=> bs!408387 m!2265029))

(assert (=> b!1836033 d!561795))

(declare-fun d!561799 () Bool)

(declare-fun c!299762 () Bool)

(assert (=> d!561799 (= c!299762 ((_ is Nil!20185) rules!4610))))

(declare-fun e!1173963 () (InoxSet Rule!7098))

(assert (=> d!561799 (= (content!3004 rules!4610) e!1173963)))

(declare-fun b!1837102 () Bool)

(assert (=> b!1837102 (= e!1173963 ((as const (Array Rule!7098 Bool)) false))))

(declare-fun b!1837103 () Bool)

(assert (=> b!1837103 (= e!1173963 ((_ map or) (store ((as const (Array Rule!7098 Bool)) false) (h!25586 rules!4610) true) (content!3004 (t!171380 rules!4610))))))

(assert (= (and d!561799 c!299762) b!1837102))

(assert (= (and d!561799 (not c!299762)) b!1837103))

(declare-fun m!2265033 () Bool)

(assert (=> b!1837103 m!2265033))

(declare-fun m!2265035 () Bool)

(assert (=> b!1837103 m!2265035))

(assert (=> d!561379 d!561799))

(declare-fun d!561801 () Bool)

(assert (=> d!561801 (= (isDefined!3532 lt!712794) (not (isEmpty!12749 lt!712794)))))

(declare-fun bs!408388 () Bool)

(assert (= bs!408388 d!561801))

(assert (=> bs!408388 m!2264229))

(assert (=> b!1836425 d!561801))

(declare-fun d!561805 () Bool)

(declare-fun lt!713113 () Int)

(assert (=> d!561805 (>= lt!713113 0)))

(declare-fun e!1173964 () Int)

(assert (=> d!561805 (= lt!713113 e!1173964)))

(declare-fun c!299763 () Bool)

(assert (=> d!561805 (= c!299763 ((_ is Nil!20186) lt!712714))))

(assert (=> d!561805 (= (size!16019 lt!712714) lt!713113)))

(declare-fun b!1837104 () Bool)

(assert (=> b!1837104 (= e!1173964 0)))

(declare-fun b!1837105 () Bool)

(assert (=> b!1837105 (= e!1173964 (+ 1 (size!16019 (t!171381 lt!712714))))))

(assert (= (and d!561805 c!299763) b!1837104))

(assert (= (and d!561805 (not c!299763)) b!1837105))

(declare-fun m!2265041 () Bool)

(assert (=> b!1837105 m!2265041))

(assert (=> d!561393 d!561805))

(declare-fun d!561807 () Bool)

(declare-fun lt!713114 () Int)

(assert (=> d!561807 (>= lt!713114 0)))

(declare-fun e!1173967 () Int)

(assert (=> d!561807 (= lt!713114 e!1173967)))

(declare-fun c!299766 () Bool)

(assert (=> d!561807 (= c!299766 ((_ is Nil!20185) rs!808))))

(assert (=> d!561807 (= (size!16020 rs!808) lt!713114)))

(declare-fun b!1837110 () Bool)

(assert (=> b!1837110 (= e!1173967 0)))

(declare-fun b!1837111 () Bool)

(assert (=> b!1837111 (= e!1173967 (+ 1 (size!16020 (t!171380 rs!808))))))

(assert (= (and d!561807 c!299766) b!1837110))

(assert (= (and d!561807 (not c!299766)) b!1837111))

(declare-fun m!2265043 () Bool)

(assert (=> b!1837111 m!2265043))

(assert (=> d!561393 d!561807))

(declare-fun d!561809 () Bool)

(assert (=> d!561809 (= (inv!26264 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567))) (isBalanced!2071 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567)))))))

(declare-fun bs!408389 () Bool)

(assert (= bs!408389 d!561809))

(declare-fun m!2265047 () Bool)

(assert (=> bs!408389 m!2265047))

(assert (=> tb!112505 d!561809))

(declare-fun b!1837120 () Bool)

(declare-fun res!825893 () Bool)

(declare-fun e!1173971 () Bool)

(assert (=> b!1837120 (=> (not res!825893) (not e!1173971))))

(declare-fun lt!713116 () List!20253)

(assert (=> b!1837120 (= res!825893 (= (size!16014 lt!713116) (+ (size!16014 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))) (size!16014 (_2!11219 (get!6231 lt!712672))))))))

(declare-fun b!1837118 () Bool)

(declare-fun e!1173972 () List!20253)

(assert (=> b!1837118 (= e!1173972 (_2!11219 (get!6231 lt!712672)))))

(declare-fun d!561813 () Bool)

(assert (=> d!561813 e!1173971))

(declare-fun res!825892 () Bool)

(assert (=> d!561813 (=> (not res!825892) (not e!1173971))))

(assert (=> d!561813 (= res!825892 (= (content!3002 lt!713116) ((_ map or) (content!3002 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))) (content!3002 (_2!11219 (get!6231 lt!712672))))))))

(assert (=> d!561813 (= lt!713116 e!1173972)))

(declare-fun c!299769 () Bool)

(assert (=> d!561813 (= c!299769 ((_ is Nil!20183) (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))))))

(assert (=> d!561813 (= (++!5473 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672)))) (_2!11219 (get!6231 lt!712672))) lt!713116)))

(declare-fun b!1837119 () Bool)

(assert (=> b!1837119 (= e!1173972 (Cons!20183 (h!25584 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))) (++!5473 (t!171378 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672))))) (_2!11219 (get!6231 lt!712672)))))))

(declare-fun b!1837121 () Bool)

(assert (=> b!1837121 (= e!1173971 (or (not (= (_2!11219 (get!6231 lt!712672)) Nil!20183)) (= lt!713116 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!712672)))))))))

(assert (= (and d!561813 c!299769) b!1837118))

(assert (= (and d!561813 (not c!299769)) b!1837119))

(assert (= (and d!561813 res!825892) b!1837120))

(assert (= (and b!1837120 res!825893) b!1837121))

(declare-fun m!2265061 () Bool)

(assert (=> b!1837120 m!2265061))

(assert (=> b!1837120 m!2263847))

(declare-fun m!2265065 () Bool)

(assert (=> b!1837120 m!2265065))

(assert (=> b!1837120 m!2263869))

(declare-fun m!2265071 () Bool)

(assert (=> d!561813 m!2265071))

(assert (=> d!561813 m!2263847))

(declare-fun m!2265073 () Bool)

(assert (=> d!561813 m!2265073))

(declare-fun m!2265075 () Bool)

(assert (=> d!561813 m!2265075))

(declare-fun m!2265077 () Bool)

(assert (=> b!1837119 m!2265077))

(assert (=> b!1836030 d!561813))

(assert (=> b!1836030 d!561501))

(assert (=> b!1836030 d!561503))

(assert (=> b!1836030 d!561493))

(declare-fun d!561821 () Bool)

(assert (=> d!561821 (= ($colon$colon!468 (map!4192 (t!171380 rs!808) lambda!72208) (dynLambda!10059 lambda!72208 (h!25586 rs!808))) (Cons!20186 (dynLambda!10059 lambda!72208 (h!25586 rs!808)) (map!4192 (t!171380 rs!808) lambda!72208)))))

(assert (=> b!1836204 d!561821))

(declare-fun d!561825 () Bool)

(declare-fun lt!713118 () List!20256)

(assert (=> d!561825 (= (size!16019 lt!713118) (size!16020 (t!171380 rs!808)))))

(declare-fun e!1173975 () List!20256)

(assert (=> d!561825 (= lt!713118 e!1173975)))

(declare-fun c!299770 () Bool)

(assert (=> d!561825 (= c!299770 ((_ is Nil!20185) (t!171380 rs!808)))))

(assert (=> d!561825 (= (map!4192 (t!171380 rs!808) lambda!72208) lt!713118)))

(declare-fun b!1837124 () Bool)

(assert (=> b!1837124 (= e!1173975 Nil!20186)))

(declare-fun b!1837125 () Bool)

(assert (=> b!1837125 (= e!1173975 ($colon$colon!468 (map!4192 (t!171380 (t!171380 rs!808)) lambda!72208) (dynLambda!10059 lambda!72208 (h!25586 (t!171380 rs!808)))))))

(assert (= (and d!561825 c!299770) b!1837124))

(assert (= (and d!561825 (not c!299770)) b!1837125))

(declare-fun b_lambda!60975 () Bool)

(assert (=> (not b_lambda!60975) (not b!1837125)))

(declare-fun m!2265079 () Bool)

(assert (=> d!561825 m!2265079))

(assert (=> d!561825 m!2265043))

(declare-fun m!2265081 () Bool)

(assert (=> b!1837125 m!2265081))

(declare-fun m!2265083 () Bool)

(assert (=> b!1837125 m!2265083))

(assert (=> b!1837125 m!2265081))

(assert (=> b!1837125 m!2265083))

(declare-fun m!2265085 () Bool)

(assert (=> b!1837125 m!2265085))

(assert (=> b!1836204 d!561825))

(declare-fun d!561827 () Bool)

(declare-fun c!299774 () Bool)

(assert (=> d!561827 (= c!299774 ((_ is Node!6681) (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567)))))))

(declare-fun e!1173987 () Bool)

(assert (=> d!561827 (= (inv!26263 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567)))) e!1173987)))

(declare-fun b!1837140 () Bool)

(declare-fun inv!26265 (Conc!6681) Bool)

(assert (=> b!1837140 (= e!1173987 (inv!26265 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567)))))))

(declare-fun b!1837141 () Bool)

(declare-fun e!1173988 () Bool)

(assert (=> b!1837141 (= e!1173987 e!1173988)))

(declare-fun res!825904 () Bool)

(assert (=> b!1837141 (= res!825904 (not ((_ is Leaf!9726) (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567))))))))

(assert (=> b!1837141 (=> res!825904 e!1173988)))

(declare-fun b!1837142 () Bool)

(declare-fun inv!26266 (Conc!6681) Bool)

(assert (=> b!1837142 (= e!1173988 (inv!26266 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567)))))))

(assert (= (and d!561827 c!299774) b!1837140))

(assert (= (and d!561827 (not c!299774)) b!1837141))

(assert (= (and b!1837141 (not res!825904)) b!1837142))

(declare-fun m!2265095 () Bool)

(assert (=> b!1837140 m!2265095))

(declare-fun m!2265097 () Bool)

(assert (=> b!1837142 m!2265097))

(assert (=> b!1835944 d!561827))

(declare-fun bs!408395 () Bool)

(declare-fun d!561835 () Bool)

(assert (= bs!408395 (and d!561835 d!561509)))

(declare-fun lambda!72283 () Int)

(assert (=> bs!408395 (= (= (toValue!5200 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 (rule!5839 token!567)))) (= lambda!72283 lambda!72244))))

(assert (=> d!561835 true))

(assert (=> d!561835 (< (dynLambda!10063 order!13059 (toValue!5200 (transformation!3649 (h!25586 rs!808)))) (dynLambda!10064 order!13061 lambda!72283))))

(assert (=> d!561835 (= (equivClasses!1411 (toChars!5059 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 (h!25586 rs!808)))) (Forall2!576 lambda!72283))))

(declare-fun bs!408396 () Bool)

(assert (= bs!408396 d!561835))

(declare-fun m!2265105 () Bool)

(assert (=> bs!408396 m!2265105))

(assert (=> b!1836178 d!561835))

(assert (=> b!1836028 d!561493))

(declare-fun d!561841 () Bool)

(assert (=> d!561841 (= (apply!5437 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))) (seqFromList!2606 (originalCharacters!4457 (_1!11219 (get!6231 lt!712672))))) (dynLambda!10058 (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672))))) (seqFromList!2606 (originalCharacters!4457 (_1!11219 (get!6231 lt!712672))))))))

(declare-fun b_lambda!60977 () Bool)

(assert (=> (not b_lambda!60977) (not d!561841)))

(declare-fun t!171580 () Bool)

(declare-fun tb!112697 () Bool)

(assert (=> (and b!1835904 (= (toValue!5200 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171580) tb!112697))

(declare-fun result!135480 () Bool)

(assert (=> tb!112697 (= result!135480 (inv!21 (dynLambda!10058 (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672))))) (seqFromList!2606 (originalCharacters!4457 (_1!11219 (get!6231 lt!712672)))))))))

(declare-fun m!2265107 () Bool)

(assert (=> tb!112697 m!2265107))

(assert (=> d!561841 t!171580))

(declare-fun b_and!143561 () Bool)

(assert (= b_and!143549 (and (=> t!171580 result!135480) b_and!143561)))

(declare-fun tb!112699 () Bool)

(declare-fun t!171582 () Bool)

(assert (=> (and b!1836466 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171582) tb!112699))

(declare-fun result!135482 () Bool)

(assert (= result!135482 result!135480))

(assert (=> d!561841 t!171582))

(declare-fun b_and!143563 () Bool)

(assert (= b_and!143557 (and (=> t!171582 result!135482) b_and!143563)))

(declare-fun t!171584 () Bool)

(declare-fun tb!112701 () Bool)

(assert (=> (and b!1835914 (= (toValue!5200 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171584) tb!112701))

(declare-fun result!135484 () Bool)

(assert (= result!135484 result!135480))

(assert (=> d!561841 t!171584))

(declare-fun b_and!143565 () Bool)

(assert (= b_and!143555 (and (=> t!171584 result!135484) b_and!143565)))

(declare-fun t!171586 () Bool)

(declare-fun tb!112703 () Bool)

(assert (=> (and b!1835918 (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171586) tb!112703))

(declare-fun result!135486 () Bool)

(assert (= result!135486 result!135480))

(assert (=> d!561841 t!171586))

(declare-fun b_and!143567 () Bool)

(assert (= b_and!143551 (and (=> t!171586 result!135486) b_and!143567)))

(declare-fun tb!112705 () Bool)

(declare-fun t!171588 () Bool)

(assert (=> (and b!1836438 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171588) tb!112705))

(declare-fun result!135488 () Bool)

(assert (= result!135488 result!135480))

(assert (=> d!561841 t!171588))

(declare-fun b_and!143569 () Bool)

(assert (= b_and!143553 (and (=> t!171588 result!135488) b_and!143569)))

(declare-fun tb!112707 () Bool)

(declare-fun t!171590 () Bool)

(assert (=> (and b!1835916 (= (toValue!5200 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171590) tb!112707))

(declare-fun result!135490 () Bool)

(assert (= result!135490 result!135480))

(assert (=> d!561841 t!171590))

(declare-fun b_and!143571 () Bool)

(assert (= b_and!143559 (and (=> t!171590 result!135490) b_and!143571)))

(assert (=> d!561841 m!2263873))

(declare-fun m!2265113 () Bool)

(assert (=> d!561841 m!2265113))

(assert (=> b!1836028 d!561841))

(declare-fun d!561849 () Bool)

(assert (=> d!561849 (= (seqFromList!2606 (originalCharacters!4457 (_1!11219 (get!6231 lt!712672)))) (fromListB!1196 (originalCharacters!4457 (_1!11219 (get!6231 lt!712672)))))))

(declare-fun bs!408399 () Bool)

(assert (= bs!408399 d!561849))

(declare-fun m!2265115 () Bool)

(assert (=> bs!408399 m!2265115))

(assert (=> b!1836028 d!561849))

(assert (=> b!1836423 d!561517))

(assert (=> b!1836423 d!561519))

(assert (=> b!1836423 d!561521))

(declare-fun bs!408400 () Bool)

(declare-fun d!561851 () Bool)

(assert (= bs!408400 (and d!561851 d!561547)))

(declare-fun lambda!72284 () Int)

(assert (=> bs!408400 (= (and (= (toChars!5059 (transformation!3649 (rule!5839 token!567))) (toChars!5059 (transformation!3649 (h!25586 rs!808)))) (= (toValue!5200 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 (h!25586 rs!808))))) (= lambda!72284 lambda!72248))))

(declare-fun bs!408401 () Bool)

(assert (= bs!408401 (and d!561851 d!561733)))

(assert (=> bs!408401 (= (and (= (toChars!5059 (transformation!3649 (rule!5839 token!567))) (toChars!5059 (transformation!3649 rule!580))) (= (toValue!5200 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 rule!580)))) (= lambda!72284 lambda!72276))))

(declare-fun bs!408402 () Bool)

(assert (= bs!408402 (and d!561851 d!561781)))

(assert (=> bs!408402 (= (and (= (toChars!5059 (transformation!3649 (rule!5839 token!567))) (toChars!5059 (transformation!3649 rule!580))) (= (toValue!5200 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 rule!580)))) (= lambda!72284 lambda!72280))))

(assert (=> d!561851 true))

(assert (=> d!561851 (< (dynLambda!10067 order!13063 (toChars!5059 (transformation!3649 (rule!5839 token!567)))) (dynLambda!10068 order!13065 lambda!72284))))

(assert (=> d!561851 true))

(assert (=> d!561851 (< (dynLambda!10063 order!13059 (toValue!5200 (transformation!3649 (rule!5839 token!567)))) (dynLambda!10068 order!13065 lambda!72284))))

(assert (=> d!561851 (= (semiInverseModEq!1470 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 (rule!5839 token!567)))) (Forall!938 lambda!72284))))

(declare-fun bs!408403 () Bool)

(assert (= bs!408403 d!561851))

(declare-fun m!2265119 () Bool)

(assert (=> bs!408403 m!2265119))

(assert (=> d!561447 d!561851))

(declare-fun d!561853 () Bool)

(assert (=> d!561853 (= (isEmpty!12751 (map!4192 rules!4610 lambda!72208)) ((_ is Nil!20186) (map!4192 rules!4610 lambda!72208)))))

(assert (=> b!1836307 d!561853))

(declare-fun b!1837147 () Bool)

(declare-fun res!825910 () Bool)

(declare-fun e!1173996 () Bool)

(assert (=> b!1837147 (=> (not res!825910) (not e!1173996))))

(declare-fun lt!713124 () Option!4229)

(assert (=> b!1837147 (= res!825910 (< (size!16014 (_2!11219 (get!6231 lt!713124))) (size!16014 input!3681)))))

(declare-fun bm!115059 () Bool)

(declare-fun call!115064 () Option!4229)

(assert (=> bm!115059 (= call!115064 (maxPrefixOneRule!1187 thiss!28318 (h!25586 (t!171380 rules!4610)) input!3681))))

(declare-fun d!561855 () Bool)

(declare-fun e!1173994 () Bool)

(assert (=> d!561855 e!1173994))

(declare-fun res!825908 () Bool)

(assert (=> d!561855 (=> res!825908 e!1173994)))

(assert (=> d!561855 (= res!825908 (isEmpty!12749 lt!713124))))

(declare-fun e!1173995 () Option!4229)

(assert (=> d!561855 (= lt!713124 e!1173995)))

(declare-fun c!299776 () Bool)

(assert (=> d!561855 (= c!299776 (and ((_ is Cons!20185) (t!171380 rules!4610)) ((_ is Nil!20185) (t!171380 (t!171380 rules!4610)))))))

(declare-fun lt!713122 () Unit!34879)

(declare-fun lt!713125 () Unit!34879)

(assert (=> d!561855 (= lt!713122 lt!713125)))

(assert (=> d!561855 (isPrefix!1845 input!3681 input!3681)))

(assert (=> d!561855 (= lt!713125 (lemmaIsPrefixRefl!1222 input!3681 input!3681))))

(assert (=> d!561855 (rulesValidInductive!1264 thiss!28318 (t!171380 rules!4610))))

(assert (=> d!561855 (= (maxPrefix!1826 thiss!28318 (t!171380 rules!4610) input!3681) lt!713124)))

(declare-fun b!1837148 () Bool)

(declare-fun res!825912 () Bool)

(assert (=> b!1837148 (=> (not res!825912) (not e!1173996))))

(assert (=> b!1837148 (= res!825912 (= (value!113663 (_1!11219 (get!6231 lt!713124))) (apply!5437 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!713124)))) (seqFromList!2606 (originalCharacters!4457 (_1!11219 (get!6231 lt!713124)))))))))

(declare-fun b!1837149 () Bool)

(declare-fun lt!713123 () Option!4229)

(declare-fun lt!713121 () Option!4229)

(assert (=> b!1837149 (= e!1173995 (ite (and ((_ is None!4228) lt!713123) ((_ is None!4228) lt!713121)) None!4228 (ite ((_ is None!4228) lt!713121) lt!713123 (ite ((_ is None!4228) lt!713123) lt!713121 (ite (>= (size!16013 (_1!11219 (v!25811 lt!713123))) (size!16013 (_1!11219 (v!25811 lt!713121)))) lt!713123 lt!713121)))))))

(assert (=> b!1837149 (= lt!713123 call!115064)))

(assert (=> b!1837149 (= lt!713121 (maxPrefix!1826 thiss!28318 (t!171380 (t!171380 rules!4610)) input!3681))))

(declare-fun b!1837150 () Bool)

(declare-fun res!825913 () Bool)

(assert (=> b!1837150 (=> (not res!825913) (not e!1173996))))

(assert (=> b!1837150 (= res!825913 (matchR!2440 (regex!3649 (rule!5839 (_1!11219 (get!6231 lt!713124)))) (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!713124))))))))

(declare-fun b!1837151 () Bool)

(assert (=> b!1837151 (= e!1173995 call!115064)))

(declare-fun b!1837152 () Bool)

(declare-fun res!825909 () Bool)

(assert (=> b!1837152 (=> (not res!825909) (not e!1173996))))

(assert (=> b!1837152 (= res!825909 (= (++!5473 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!713124)))) (_2!11219 (get!6231 lt!713124))) input!3681))))

(declare-fun b!1837153 () Bool)

(declare-fun res!825911 () Bool)

(assert (=> b!1837153 (=> (not res!825911) (not e!1173996))))

(assert (=> b!1837153 (= res!825911 (= (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!713124)))) (originalCharacters!4457 (_1!11219 (get!6231 lt!713124)))))))

(declare-fun b!1837154 () Bool)

(assert (=> b!1837154 (= e!1173996 (contains!3730 (t!171380 rules!4610) (rule!5839 (_1!11219 (get!6231 lt!713124)))))))

(declare-fun b!1837155 () Bool)

(assert (=> b!1837155 (= e!1173994 e!1173996)))

(declare-fun res!825907 () Bool)

(assert (=> b!1837155 (=> (not res!825907) (not e!1173996))))

(assert (=> b!1837155 (= res!825907 (isDefined!3532 lt!713124))))

(assert (= (and d!561855 c!299776) b!1837151))

(assert (= (and d!561855 (not c!299776)) b!1837149))

(assert (= (or b!1837151 b!1837149) bm!115059))

(assert (= (and d!561855 (not res!825908)) b!1837155))

(assert (= (and b!1837155 res!825907) b!1837153))

(assert (= (and b!1837153 res!825911) b!1837147))

(assert (= (and b!1837147 res!825910) b!1837152))

(assert (= (and b!1837152 res!825909) b!1837148))

(assert (= (and b!1837148 res!825912) b!1837150))

(assert (= (and b!1837150 res!825913) b!1837154))

(declare-fun m!2265141 () Bool)

(assert (=> b!1837155 m!2265141))

(declare-fun m!2265145 () Bool)

(assert (=> b!1837153 m!2265145))

(declare-fun m!2265147 () Bool)

(assert (=> b!1837153 m!2265147))

(assert (=> b!1837153 m!2265147))

(declare-fun m!2265149 () Bool)

(assert (=> b!1837153 m!2265149))

(assert (=> b!1837147 m!2265145))

(declare-fun m!2265151 () Bool)

(assert (=> b!1837147 m!2265151))

(assert (=> b!1837147 m!2263863))

(assert (=> b!1837152 m!2265145))

(assert (=> b!1837152 m!2265147))

(assert (=> b!1837152 m!2265147))

(assert (=> b!1837152 m!2265149))

(assert (=> b!1837152 m!2265149))

(declare-fun m!2265153 () Bool)

(assert (=> b!1837152 m!2265153))

(assert (=> b!1837150 m!2265145))

(assert (=> b!1837150 m!2265147))

(assert (=> b!1837150 m!2265147))

(assert (=> b!1837150 m!2265149))

(assert (=> b!1837150 m!2265149))

(declare-fun m!2265155 () Bool)

(assert (=> b!1837150 m!2265155))

(assert (=> b!1837154 m!2265145))

(declare-fun m!2265157 () Bool)

(assert (=> b!1837154 m!2265157))

(declare-fun m!2265159 () Bool)

(assert (=> bm!115059 m!2265159))

(declare-fun m!2265161 () Bool)

(assert (=> d!561855 m!2265161))

(assert (=> d!561855 m!2264231))

(assert (=> d!561855 m!2264233))

(declare-fun m!2265163 () Bool)

(assert (=> d!561855 m!2265163))

(assert (=> b!1837148 m!2265145))

(declare-fun m!2265165 () Bool)

(assert (=> b!1837148 m!2265165))

(assert (=> b!1837148 m!2265165))

(declare-fun m!2265167 () Bool)

(assert (=> b!1837148 m!2265167))

(declare-fun m!2265169 () Bool)

(assert (=> b!1837149 m!2265169))

(assert (=> b!1836419 d!561855))

(assert (=> b!1836191 d!561609))

(declare-fun bs!408406 () Bool)

(declare-fun d!561875 () Bool)

(assert (= bs!408406 (and d!561875 d!561547)))

(declare-fun lambda!72285 () Int)

(assert (=> bs!408406 (= (and (= (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toChars!5059 (transformation!3649 (h!25586 rs!808)))) (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 (h!25586 rs!808))))) (= lambda!72285 lambda!72248))))

(declare-fun bs!408407 () Bool)

(assert (= bs!408407 (and d!561875 d!561733)))

(assert (=> bs!408407 (= (and (= (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toChars!5059 (transformation!3649 rule!580))) (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 rule!580)))) (= lambda!72285 lambda!72276))))

(declare-fun bs!408408 () Bool)

(assert (= bs!408408 (and d!561875 d!561781)))

(assert (=> bs!408408 (= (and (= (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toChars!5059 (transformation!3649 rule!580))) (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 rule!580)))) (= lambda!72285 lambda!72280))))

(declare-fun bs!408409 () Bool)

(assert (= bs!408409 (and d!561875 d!561851)))

(assert (=> bs!408409 (= (and (= (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toChars!5059 (transformation!3649 (rule!5839 token!567)))) (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 (rule!5839 token!567))))) (= lambda!72285 lambda!72284))))

(assert (=> d!561875 true))

(assert (=> d!561875 (< (dynLambda!10067 order!13063 (toChars!5059 (transformation!3649 (h!25586 rules!4610)))) (dynLambda!10068 order!13065 lambda!72285))))

(assert (=> d!561875 true))

(assert (=> d!561875 (< (dynLambda!10063 order!13059 (toValue!5200 (transformation!3649 (h!25586 rules!4610)))) (dynLambda!10068 order!13065 lambda!72285))))

(assert (=> d!561875 (= (semiInverseModEq!1470 (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 (h!25586 rules!4610)))) (Forall!938 lambda!72285))))

(declare-fun bs!408411 () Bool)

(assert (= bs!408411 d!561875))

(declare-fun m!2265173 () Bool)

(assert (=> bs!408411 m!2265173))

(assert (=> d!561383 d!561875))

(declare-fun d!561879 () Bool)

(declare-fun lt!713130 () Int)

(assert (=> d!561879 (>= lt!713130 0)))

(declare-fun e!1174009 () Int)

(assert (=> d!561879 (= lt!713130 e!1174009)))

(declare-fun c!299784 () Bool)

(assert (=> d!561879 (= c!299784 ((_ is Nil!20183) (originalCharacters!4457 token!567)))))

(assert (=> d!561879 (= (size!16014 (originalCharacters!4457 token!567)) lt!713130)))

(declare-fun b!1837176 () Bool)

(assert (=> b!1837176 (= e!1174009 0)))

(declare-fun b!1837177 () Bool)

(assert (=> b!1837177 (= e!1174009 (+ 1 (size!16014 (t!171378 (originalCharacters!4457 token!567)))))))

(assert (= (and d!561879 c!299784) b!1837176))

(assert (= (and d!561879 (not c!299784)) b!1837177))

(declare-fun m!2265175 () Bool)

(assert (=> b!1837177 m!2265175))

(assert (=> b!1835939 d!561879))

(declare-fun b!1837178 () Bool)

(declare-fun res!825923 () Bool)

(declare-fun e!1174011 () Bool)

(assert (=> b!1837178 (=> (not res!825923) (not e!1174011))))

(declare-fun lt!713134 () Option!4229)

(assert (=> b!1837178 (= res!825923 (= (rule!5839 (_1!11219 (get!6231 lt!713134))) (h!25586 rules!4610)))))

(declare-fun b!1837179 () Bool)

(declare-fun res!825926 () Bool)

(assert (=> b!1837179 (=> (not res!825926) (not e!1174011))))

(assert (=> b!1837179 (= res!825926 (= (value!113663 (_1!11219 (get!6231 lt!713134))) (apply!5437 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!713134)))) (seqFromList!2606 (originalCharacters!4457 (_1!11219 (get!6231 lt!713134)))))))))

(declare-fun b!1837180 () Bool)

(assert (=> b!1837180 (= e!1174011 (= (size!16013 (_1!11219 (get!6231 lt!713134))) (size!16014 (originalCharacters!4457 (_1!11219 (get!6231 lt!713134))))))))

(declare-fun b!1837181 () Bool)

(declare-fun res!825922 () Bool)

(assert (=> b!1837181 (=> (not res!825922) (not e!1174011))))

(assert (=> b!1837181 (= res!825922 (= (++!5473 (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!713134)))) (_2!11219 (get!6231 lt!713134))) input!3681))))

(declare-fun b!1837182 () Bool)

(declare-fun e!1174012 () Bool)

(assert (=> b!1837182 (= e!1174012 e!1174011)))

(declare-fun res!825924 () Bool)

(assert (=> b!1837182 (=> (not res!825924) (not e!1174011))))

(assert (=> b!1837182 (= res!825924 (matchR!2440 (regex!3649 (h!25586 rules!4610)) (list!8203 (charsOf!2292 (_1!11219 (get!6231 lt!713134))))))))

(declare-fun d!561881 () Bool)

(assert (=> d!561881 e!1174012))

(declare-fun res!825920 () Bool)

(assert (=> d!561881 (=> res!825920 e!1174012)))

(assert (=> d!561881 (= res!825920 (isEmpty!12749 lt!713134))))

(declare-fun e!1174010 () Option!4229)

(assert (=> d!561881 (= lt!713134 e!1174010)))

(declare-fun c!299785 () Bool)

(declare-fun lt!713132 () tuple2!19638)

(assert (=> d!561881 (= c!299785 (isEmpty!12748 (_1!11221 lt!713132)))))

(assert (=> d!561881 (= lt!713132 (findLongestMatch!452 (regex!3649 (h!25586 rules!4610)) input!3681))))

(assert (=> d!561881 (ruleValid!1139 thiss!28318 (h!25586 rules!4610))))

(assert (=> d!561881 (= (maxPrefixOneRule!1187 thiss!28318 (h!25586 rules!4610) input!3681) lt!713134)))

(declare-fun b!1837183 () Bool)

(assert (=> b!1837183 (= e!1174010 None!4228)))

(declare-fun b!1837184 () Bool)

(assert (=> b!1837184 (= e!1174010 (Some!4228 (tuple2!19635 (Token!6853 (apply!5437 (transformation!3649 (h!25586 rules!4610)) (seqFromList!2606 (_1!11221 lt!713132))) (h!25586 rules!4610) (size!16018 (seqFromList!2606 (_1!11221 lt!713132))) (_1!11221 lt!713132)) (_2!11221 lt!713132))))))

(declare-fun lt!713131 () Unit!34879)

(assert (=> b!1837184 (= lt!713131 (longestMatchIsAcceptedByMatchOrIsEmpty!509 (regex!3649 (h!25586 rules!4610)) input!3681))))

(declare-fun res!825925 () Bool)

(assert (=> b!1837184 (= res!825925 (isEmpty!12748 (_1!11221 (findLongestMatchInner!525 (regex!3649 (h!25586 rules!4610)) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))))))

(declare-fun e!1174013 () Bool)

(assert (=> b!1837184 (=> res!825925 e!1174013)))

(assert (=> b!1837184 e!1174013))

(declare-fun lt!713133 () Unit!34879)

(assert (=> b!1837184 (= lt!713133 lt!713131)))

(declare-fun lt!713135 () Unit!34879)

(assert (=> b!1837184 (= lt!713135 (lemmaSemiInverse!739 (transformation!3649 (h!25586 rules!4610)) (seqFromList!2606 (_1!11221 lt!713132))))))

(declare-fun b!1837185 () Bool)

(declare-fun res!825921 () Bool)

(assert (=> b!1837185 (=> (not res!825921) (not e!1174011))))

(assert (=> b!1837185 (= res!825921 (< (size!16014 (_2!11219 (get!6231 lt!713134))) (size!16014 input!3681)))))

(declare-fun b!1837186 () Bool)

(assert (=> b!1837186 (= e!1174013 (matchR!2440 (regex!3649 (h!25586 rules!4610)) (_1!11221 (findLongestMatchInner!525 (regex!3649 (h!25586 rules!4610)) Nil!20183 (size!16014 Nil!20183) input!3681 input!3681 (size!16014 input!3681)))))))

(assert (= (and d!561881 c!299785) b!1837183))

(assert (= (and d!561881 (not c!299785)) b!1837184))

(assert (= (and b!1837184 (not res!825925)) b!1837186))

(assert (= (and d!561881 (not res!825920)) b!1837182))

(assert (= (and b!1837182 res!825924) b!1837181))

(assert (= (and b!1837181 res!825922) b!1837185))

(assert (= (and b!1837185 res!825921) b!1837178))

(assert (= (and b!1837178 res!825923) b!1837179))

(assert (= (and b!1837179 res!825926) b!1837180))

(declare-fun m!2265195 () Bool)

(assert (=> b!1837182 m!2265195))

(declare-fun m!2265197 () Bool)

(assert (=> b!1837182 m!2265197))

(assert (=> b!1837182 m!2265197))

(declare-fun m!2265199 () Bool)

(assert (=> b!1837182 m!2265199))

(assert (=> b!1837182 m!2265199))

(declare-fun m!2265201 () Bool)

(assert (=> b!1837182 m!2265201))

(declare-fun m!2265203 () Bool)

(assert (=> b!1837184 m!2265203))

(declare-fun m!2265205 () Bool)

(assert (=> b!1837184 m!2265205))

(declare-fun m!2265207 () Bool)

(assert (=> b!1837184 m!2265207))

(assert (=> b!1837184 m!2265203))

(declare-fun m!2265209 () Bool)

(assert (=> b!1837184 m!2265209))

(assert (=> b!1837184 m!2265203))

(declare-fun m!2265211 () Bool)

(assert (=> b!1837184 m!2265211))

(assert (=> b!1837184 m!2263861))

(assert (=> b!1837184 m!2263863))

(assert (=> b!1837184 m!2265203))

(declare-fun m!2265213 () Bool)

(assert (=> b!1837184 m!2265213))

(assert (=> b!1837184 m!2263861))

(assert (=> b!1837184 m!2263863))

(declare-fun m!2265215 () Bool)

(assert (=> b!1837184 m!2265215))

(assert (=> b!1837178 m!2265195))

(assert (=> b!1837185 m!2265195))

(declare-fun m!2265217 () Bool)

(assert (=> b!1837185 m!2265217))

(assert (=> b!1837185 m!2263863))

(assert (=> b!1837181 m!2265195))

(assert (=> b!1837181 m!2265197))

(assert (=> b!1837181 m!2265197))

(assert (=> b!1837181 m!2265199))

(assert (=> b!1837181 m!2265199))

(declare-fun m!2265219 () Bool)

(assert (=> b!1837181 m!2265219))

(assert (=> b!1837179 m!2265195))

(declare-fun m!2265221 () Bool)

(assert (=> b!1837179 m!2265221))

(assert (=> b!1837179 m!2265221))

(declare-fun m!2265223 () Bool)

(assert (=> b!1837179 m!2265223))

(assert (=> b!1837180 m!2265195))

(declare-fun m!2265225 () Bool)

(assert (=> b!1837180 m!2265225))

(declare-fun m!2265227 () Bool)

(assert (=> d!561881 m!2265227))

(declare-fun m!2265229 () Bool)

(assert (=> d!561881 m!2265229))

(declare-fun m!2265231 () Bool)

(assert (=> d!561881 m!2265231))

(declare-fun m!2265233 () Bool)

(assert (=> d!561881 m!2265233))

(assert (=> b!1837186 m!2263861))

(assert (=> b!1837186 m!2263863))

(assert (=> b!1837186 m!2263861))

(assert (=> b!1837186 m!2263863))

(assert (=> b!1837186 m!2265215))

(declare-fun m!2265235 () Bool)

(assert (=> b!1837186 m!2265235))

(assert (=> bm!114951 d!561881))

(declare-fun d!561889 () Bool)

(declare-fun lt!713136 () Bool)

(assert (=> d!561889 (= lt!713136 (select (content!3005 (t!171381 (map!4192 rs!808 lambda!72208))) (regex!3649 rule!580)))))

(declare-fun e!1174015 () Bool)

(assert (=> d!561889 (= lt!713136 e!1174015)))

(declare-fun res!825928 () Bool)

(assert (=> d!561889 (=> (not res!825928) (not e!1174015))))

(assert (=> d!561889 (= res!825928 ((_ is Cons!20186) (t!171381 (map!4192 rs!808 lambda!72208))))))

(assert (=> d!561889 (= (contains!3731 (t!171381 (map!4192 rs!808 lambda!72208)) (regex!3649 rule!580)) lt!713136)))

(declare-fun b!1837187 () Bool)

(declare-fun e!1174014 () Bool)

(assert (=> b!1837187 (= e!1174015 e!1174014)))

(declare-fun res!825927 () Bool)

(assert (=> b!1837187 (=> res!825927 e!1174014)))

(assert (=> b!1837187 (= res!825927 (= (h!25587 (t!171381 (map!4192 rs!808 lambda!72208))) (regex!3649 rule!580)))))

(declare-fun b!1837188 () Bool)

(assert (=> b!1837188 (= e!1174014 (contains!3731 (t!171381 (t!171381 (map!4192 rs!808 lambda!72208))) (regex!3649 rule!580)))))

(assert (= (and d!561889 res!825928) b!1837187))

(assert (= (and b!1837187 (not res!825927)) b!1837188))

(assert (=> d!561889 m!2264545))

(declare-fun m!2265237 () Bool)

(assert (=> d!561889 m!2265237))

(declare-fun m!2265239 () Bool)

(assert (=> b!1837188 m!2265239))

(assert (=> b!1836198 d!561889))

(declare-fun d!561891 () Bool)

(declare-fun lt!713137 () Int)

(assert (=> d!561891 (>= lt!713137 0)))

(declare-fun e!1174016 () Int)

(assert (=> d!561891 (= lt!713137 e!1174016)))

(declare-fun c!299786 () Bool)

(assert (=> d!561891 (= c!299786 ((_ is Nil!20183) lt!712698))))

(assert (=> d!561891 (= (size!16014 lt!712698) lt!713137)))

(declare-fun b!1837189 () Bool)

(assert (=> b!1837189 (= e!1174016 0)))

(declare-fun b!1837190 () Bool)

(assert (=> b!1837190 (= e!1174016 (+ 1 (size!16014 (t!171378 lt!712698))))))

(assert (= (and d!561891 c!299786) b!1837189))

(assert (= (and d!561891 (not c!299786)) b!1837190))

(declare-fun m!2265241 () Bool)

(assert (=> b!1837190 m!2265241))

(assert (=> b!1836119 d!561891))

(declare-fun d!561893 () Bool)

(declare-fun lt!713138 () Int)

(assert (=> d!561893 (>= lt!713138 0)))

(declare-fun e!1174017 () Int)

(assert (=> d!561893 (= lt!713138 e!1174017)))

(declare-fun c!299787 () Bool)

(assert (=> d!561893 (= c!299787 ((_ is Nil!20183) lt!712625))))

(assert (=> d!561893 (= (size!16014 lt!712625) lt!713138)))

(declare-fun b!1837191 () Bool)

(assert (=> b!1837191 (= e!1174017 0)))

(declare-fun b!1837192 () Bool)

(assert (=> b!1837192 (= e!1174017 (+ 1 (size!16014 (t!171378 lt!712625))))))

(assert (= (and d!561893 c!299787) b!1837191))

(assert (= (and d!561893 (not c!299787)) b!1837192))

(assert (=> b!1837192 m!2264421))

(assert (=> b!1836119 d!561893))

(declare-fun d!561895 () Bool)

(declare-fun lt!713139 () Int)

(assert (=> d!561895 (>= lt!713139 0)))

(declare-fun e!1174018 () Int)

(assert (=> d!561895 (= lt!713139 e!1174018)))

(declare-fun c!299788 () Bool)

(assert (=> d!561895 (= c!299788 ((_ is Nil!20183) suffix!1698))))

(assert (=> d!561895 (= (size!16014 suffix!1698) lt!713139)))

(declare-fun b!1837193 () Bool)

(assert (=> b!1837193 (= e!1174018 0)))

(declare-fun b!1837194 () Bool)

(assert (=> b!1837194 (= e!1174018 (+ 1 (size!16014 (t!171378 suffix!1698))))))

(assert (= (and d!561895 c!299788) b!1837193))

(assert (= (and d!561895 (not c!299788)) b!1837194))

(declare-fun m!2265243 () Bool)

(assert (=> b!1837194 m!2265243))

(assert (=> b!1836119 d!561895))

(declare-fun d!561897 () Bool)

(declare-fun charsToBigInt!1 (List!20254) Int)

(assert (=> d!561897 (= (inv!17 (value!113663 token!567)) (= (charsToBigInt!1 (text!26621 (value!113663 token!567))) (value!113655 (value!113663 token!567))))))

(declare-fun bs!408416 () Bool)

(assert (= bs!408416 d!561897))

(declare-fun m!2265245 () Bool)

(assert (=> bs!408416 m!2265245))

(assert (=> b!1835931 d!561897))

(assert (=> b!1836187 d!561727))

(declare-fun bs!408417 () Bool)

(declare-fun d!561899 () Bool)

(assert (= bs!408417 (and d!561899 b!1835902)))

(declare-fun lambda!72291 () Int)

(assert (=> bs!408417 (= lambda!72291 lambda!72208)))

(declare-fun bs!408418 () Bool)

(assert (= bs!408418 (and d!561899 d!561395)))

(assert (=> bs!408418 (= lambda!72291 lambda!72214)))

(declare-fun bs!408419 () Bool)

(assert (= bs!408419 (and d!561899 d!561437)))

(assert (=> bs!408419 (= lambda!72291 lambda!72234)))

(declare-fun bs!408420 () Bool)

(assert (= bs!408420 (and d!561899 d!561561)))

(assert (=> bs!408420 (= lambda!72291 lambda!72249)))

(declare-fun bs!408421 () Bool)

(assert (= bs!408421 (and d!561899 d!561397)))

(declare-fun lambda!72292 () Int)

(assert (=> bs!408421 (= lambda!72292 lambda!72229)))

(assert (=> bs!408419 (= lambda!72292 lambda!72235)))

(assert (=> bs!408420 (= lambda!72292 lambda!72250)))

(assert (=> d!561899 (forall!4352 (map!4192 rules!4610 lambda!72291) lambda!72292)))

(declare-fun lt!713160 () Unit!34879)

(declare-fun e!1174021 () Unit!34879)

(assert (=> d!561899 (= lt!713160 e!1174021)))

(declare-fun c!299791 () Bool)

(assert (=> d!561899 (= c!299791 ((_ is Nil!20185) rules!4610))))

(assert (=> d!561899 (rulesValidInductive!1264 thiss!28318 rules!4610)))

(assert (=> d!561899 (= (lemma!554 rules!4610 thiss!28318 rules!4610) lt!713160)))

(declare-fun b!1837199 () Bool)

(declare-fun Unit!34897 () Unit!34879)

(assert (=> b!1837199 (= e!1174021 Unit!34897)))

(declare-fun b!1837200 () Bool)

(declare-fun Unit!34898 () Unit!34879)

(assert (=> b!1837200 (= e!1174021 Unit!34898)))

(declare-fun lt!713161 () Unit!34879)

(assert (=> b!1837200 (= lt!713161 (lemma!554 rules!4610 thiss!28318 (t!171380 rules!4610)))))

(assert (= (and d!561899 c!299791) b!1837199))

(assert (= (and d!561899 (not c!299791)) b!1837200))

(declare-fun m!2265247 () Bool)

(assert (=> d!561899 m!2265247))

(assert (=> d!561899 m!2265247))

(declare-fun m!2265249 () Bool)

(assert (=> d!561899 m!2265249))

(assert (=> d!561899 m!2264235))

(declare-fun m!2265251 () Bool)

(assert (=> b!1837200 m!2265251))

(assert (=> d!561395 d!561899))

(declare-fun bs!408423 () Bool)

(declare-fun d!561901 () Bool)

(assert (= bs!408423 (and d!561901 d!561397)))

(declare-fun lambda!72293 () Int)

(assert (=> bs!408423 (= lambda!72293 lambda!72229)))

(declare-fun bs!408424 () Bool)

(assert (= bs!408424 (and d!561901 d!561437)))

(assert (=> bs!408424 (= lambda!72293 lambda!72235)))

(declare-fun bs!408425 () Bool)

(assert (= bs!408425 (and d!561901 d!561561)))

(assert (=> bs!408425 (= lambda!72293 lambda!72250)))

(declare-fun bs!408426 () Bool)

(assert (= bs!408426 (and d!561901 d!561899)))

(assert (=> bs!408426 (= lambda!72293 lambda!72292)))

(declare-fun b!1837201 () Bool)

(declare-fun e!1174022 () Bool)

(declare-fun e!1174023 () Bool)

(assert (=> b!1837201 (= e!1174022 e!1174023)))

(declare-fun c!299793 () Bool)

(assert (=> b!1837201 (= c!299793 (isEmpty!12751 (map!4192 rules!4610 lambda!72214)))))

(declare-fun b!1837202 () Bool)

(declare-fun e!1174024 () Bool)

(assert (=> b!1837202 (= e!1174024 (isEmpty!12751 (t!171381 (map!4192 rules!4610 lambda!72214))))))

(declare-fun b!1837203 () Bool)

(declare-fun e!1174026 () Regex!4977)

(assert (=> b!1837203 (= e!1174026 EmptyLang!4977)))

(declare-fun lt!713170 () Regex!4977)

(declare-fun b!1837204 () Bool)

(declare-fun e!1174025 () Bool)

(assert (=> b!1837204 (= e!1174025 (= lt!713170 (head!4296 (map!4192 rules!4610 lambda!72214))))))

(declare-fun b!1837205 () Bool)

(declare-fun e!1174027 () Regex!4977)

(assert (=> b!1837205 (= e!1174027 e!1174026)))

(declare-fun c!299792 () Bool)

(assert (=> b!1837205 (= c!299792 ((_ is Cons!20186) (map!4192 rules!4610 lambda!72214)))))

(declare-fun b!1837206 () Bool)

(assert (=> b!1837206 (= e!1174023 (isEmptyLang!135 lt!713170))))

(declare-fun b!1837207 () Bool)

(assert (=> b!1837207 (= e!1174027 (h!25587 (map!4192 rules!4610 lambda!72214)))))

(declare-fun b!1837209 () Bool)

(assert (=> b!1837209 (= e!1174026 (Union!4977 (h!25587 (map!4192 rules!4610 lambda!72214)) (generalisedUnion!492 (t!171381 (map!4192 rules!4610 lambda!72214)))))))

(declare-fun b!1837210 () Bool)

(assert (=> b!1837210 (= e!1174023 e!1174025)))

(declare-fun c!299795 () Bool)

(assert (=> b!1837210 (= c!299795 (isEmpty!12751 (tail!2755 (map!4192 rules!4610 lambda!72214))))))

(assert (=> d!561901 e!1174022))

(declare-fun res!825929 () Bool)

(assert (=> d!561901 (=> (not res!825929) (not e!1174022))))

(assert (=> d!561901 (= res!825929 (validRegex!2035 lt!713170))))

(assert (=> d!561901 (= lt!713170 e!1174027)))

(declare-fun c!299794 () Bool)

(assert (=> d!561901 (= c!299794 e!1174024)))

(declare-fun res!825930 () Bool)

(assert (=> d!561901 (=> (not res!825930) (not e!1174024))))

(assert (=> d!561901 (= res!825930 ((_ is Cons!20186) (map!4192 rules!4610 lambda!72214)))))

(assert (=> d!561901 (forall!4352 (map!4192 rules!4610 lambda!72214) lambda!72293)))

(assert (=> d!561901 (= (generalisedUnion!492 (map!4192 rules!4610 lambda!72214)) lt!713170)))

(declare-fun b!1837208 () Bool)

(assert (=> b!1837208 (= e!1174025 (isUnion!135 lt!713170))))

(assert (= (and d!561901 res!825930) b!1837202))

(assert (= (and d!561901 c!299794) b!1837207))

(assert (= (and d!561901 (not c!299794)) b!1837205))

(assert (= (and b!1837205 c!299792) b!1837209))

(assert (= (and b!1837205 (not c!299792)) b!1837203))

(assert (= (and d!561901 res!825929) b!1837201))

(assert (= (and b!1837201 c!299793) b!1837206))

(assert (= (and b!1837201 (not c!299793)) b!1837210))

(assert (= (and b!1837210 c!299795) b!1837204))

(assert (= (and b!1837210 (not c!299795)) b!1837208))

(declare-fun m!2265275 () Bool)

(assert (=> b!1837206 m!2265275))

(assert (=> b!1837201 m!2264019))

(declare-fun m!2265277 () Bool)

(assert (=> b!1837201 m!2265277))

(assert (=> b!1837204 m!2264019))

(declare-fun m!2265279 () Bool)

(assert (=> b!1837204 m!2265279))

(declare-fun m!2265281 () Bool)

(assert (=> b!1837208 m!2265281))

(assert (=> b!1837210 m!2264019))

(declare-fun m!2265283 () Bool)

(assert (=> b!1837210 m!2265283))

(assert (=> b!1837210 m!2265283))

(declare-fun m!2265285 () Bool)

(assert (=> b!1837210 m!2265285))

(declare-fun m!2265287 () Bool)

(assert (=> d!561901 m!2265287))

(assert (=> d!561901 m!2264019))

(declare-fun m!2265289 () Bool)

(assert (=> d!561901 m!2265289))

(declare-fun m!2265291 () Bool)

(assert (=> b!1837209 m!2265291))

(declare-fun m!2265295 () Bool)

(assert (=> b!1837202 m!2265295))

(assert (=> d!561395 d!561901))

(declare-fun d!561907 () Bool)

(declare-fun lt!713171 () List!20256)

(assert (=> d!561907 (= (size!16019 lt!713171) (size!16020 rules!4610))))

(declare-fun e!1174037 () List!20256)

(assert (=> d!561907 (= lt!713171 e!1174037)))

(declare-fun c!299798 () Bool)

(assert (=> d!561907 (= c!299798 ((_ is Nil!20185) rules!4610))))

(assert (=> d!561907 (= (map!4192 rules!4610 lambda!72214) lt!713171)))

(declare-fun b!1837222 () Bool)

(assert (=> b!1837222 (= e!1174037 Nil!20186)))

(declare-fun b!1837223 () Bool)

(assert (=> b!1837223 (= e!1174037 ($colon$colon!468 (map!4192 (t!171380 rules!4610) lambda!72214) (dynLambda!10059 lambda!72214 (h!25586 rules!4610))))))

(assert (= (and d!561907 c!299798) b!1837222))

(assert (= (and d!561907 (not c!299798)) b!1837223))

(declare-fun b_lambda!60983 () Bool)

(assert (=> (not b_lambda!60983) (not b!1837223)))

(declare-fun m!2265299 () Bool)

(assert (=> d!561907 m!2265299))

(assert (=> d!561907 m!2264137))

(declare-fun m!2265301 () Bool)

(assert (=> b!1837223 m!2265301))

(declare-fun m!2265303 () Bool)

(assert (=> b!1837223 m!2265303))

(assert (=> b!1837223 m!2265301))

(assert (=> b!1837223 m!2265303))

(declare-fun m!2265305 () Bool)

(assert (=> b!1837223 m!2265305))

(assert (=> d!561395 d!561907))

(assert (=> b!1836161 d!561765))

(declare-fun d!561911 () Bool)

(assert (=> d!561911 (= (isEmpty!12749 lt!712794) (not ((_ is Some!4228) lt!712794)))))

(assert (=> d!561455 d!561911))

(declare-fun b!1837252 () Bool)

(declare-fun e!1174054 () Bool)

(declare-fun e!1174052 () Bool)

(assert (=> b!1837252 (= e!1174054 e!1174052)))

(declare-fun res!825946 () Bool)

(assert (=> b!1837252 (=> (not res!825946) (not e!1174052))))

(assert (=> b!1837252 (= res!825946 (not ((_ is Nil!20183) input!3681)))))

(declare-fun b!1837255 () Bool)

(declare-fun e!1174053 () Bool)

(assert (=> b!1837255 (= e!1174053 (>= (size!16014 input!3681) (size!16014 input!3681)))))

(declare-fun b!1837254 () Bool)

(assert (=> b!1837254 (= e!1174052 (isPrefix!1845 (tail!2754 input!3681) (tail!2754 input!3681)))))

(declare-fun d!561913 () Bool)

(assert (=> d!561913 e!1174053))

(declare-fun res!825949 () Bool)

(assert (=> d!561913 (=> res!825949 e!1174053)))

(declare-fun lt!713176 () Bool)

(assert (=> d!561913 (= res!825949 (not lt!713176))))

(assert (=> d!561913 (= lt!713176 e!1174054)))

(declare-fun res!825947 () Bool)

(assert (=> d!561913 (=> res!825947 e!1174054)))

(assert (=> d!561913 (= res!825947 ((_ is Nil!20183) input!3681))))

(assert (=> d!561913 (= (isPrefix!1845 input!3681 input!3681) lt!713176)))

(declare-fun b!1837253 () Bool)

(declare-fun res!825948 () Bool)

(assert (=> b!1837253 (=> (not res!825948) (not e!1174052))))

(assert (=> b!1837253 (= res!825948 (= (head!4295 input!3681) (head!4295 input!3681)))))

(assert (= (and d!561913 (not res!825947)) b!1837252))

(assert (= (and b!1837252 res!825946) b!1837253))

(assert (= (and b!1837253 res!825948) b!1837254))

(assert (= (and d!561913 (not res!825949)) b!1837255))

(assert (=> b!1837255 m!2263863))

(assert (=> b!1837255 m!2263863))

(assert (=> b!1837254 m!2264795))

(assert (=> b!1837254 m!2264795))

(assert (=> b!1837254 m!2264795))

(assert (=> b!1837254 m!2264795))

(declare-fun m!2265319 () Bool)

(assert (=> b!1837254 m!2265319))

(assert (=> b!1837253 m!2264793))

(assert (=> b!1837253 m!2264793))

(assert (=> d!561455 d!561913))

(declare-fun d!561923 () Bool)

(assert (=> d!561923 (isPrefix!1845 input!3681 input!3681)))

(declare-fun lt!713179 () Unit!34879)

(declare-fun choose!11560 (List!20253 List!20253) Unit!34879)

(assert (=> d!561923 (= lt!713179 (choose!11560 input!3681 input!3681))))

(assert (=> d!561923 (= (lemmaIsPrefixRefl!1222 input!3681 input!3681) lt!713179)))

(declare-fun bs!408431 () Bool)

(assert (= bs!408431 d!561923))

(assert (=> bs!408431 m!2264231))

(declare-fun m!2265327 () Bool)

(assert (=> bs!408431 m!2265327))

(assert (=> d!561455 d!561923))

(declare-fun bs!408432 () Bool)

(declare-fun d!561925 () Bool)

(assert (= bs!408432 (and d!561925 d!561449)))

(declare-fun lambda!72295 () Int)

(assert (=> bs!408432 (= lambda!72295 lambda!72238)))

(declare-fun bs!408433 () Bool)

(assert (= bs!408433 (and d!561925 d!561537)))

(assert (=> bs!408433 (= lambda!72295 lambda!72245)))

(declare-fun bs!408434 () Bool)

(assert (= bs!408434 (and d!561925 d!561593)))

(assert (=> bs!408434 (= lambda!72295 lambda!72256)))

(assert (=> d!561925 true))

(declare-fun lt!713180 () Bool)

(assert (=> d!561925 (= lt!713180 (forall!4353 rules!4610 lambda!72295))))

(declare-fun e!1174065 () Bool)

(assert (=> d!561925 (= lt!713180 e!1174065)))

(declare-fun res!825950 () Bool)

(assert (=> d!561925 (=> res!825950 e!1174065)))

(assert (=> d!561925 (= res!825950 (not ((_ is Cons!20185) rules!4610)))))

(assert (=> d!561925 (= (rulesValidInductive!1264 thiss!28318 rules!4610) lt!713180)))

(declare-fun b!1837274 () Bool)

(declare-fun e!1174064 () Bool)

(assert (=> b!1837274 (= e!1174065 e!1174064)))

(declare-fun res!825951 () Bool)

(assert (=> b!1837274 (=> (not res!825951) (not e!1174064))))

(assert (=> b!1837274 (= res!825951 (ruleValid!1139 thiss!28318 (h!25586 rules!4610)))))

(declare-fun b!1837275 () Bool)

(assert (=> b!1837275 (= e!1174064 (rulesValidInductive!1264 thiss!28318 (t!171380 rules!4610)))))

(assert (= (and d!561925 (not res!825950)) b!1837274))

(assert (= (and b!1837274 res!825951) b!1837275))

(declare-fun m!2265329 () Bool)

(assert (=> d!561925 m!2265329))

(assert (=> b!1837274 m!2265233))

(assert (=> b!1837275 m!2265163))

(assert (=> d!561455 d!561925))

(declare-fun d!561927 () Bool)

(declare-fun lt!713181 () Int)

(assert (=> d!561927 (>= lt!713181 0)))

(declare-fun e!1174070 () Int)

(assert (=> d!561927 (= lt!713181 e!1174070)))

(declare-fun c!299801 () Bool)

(assert (=> d!561927 (= c!299801 ((_ is Nil!20183) (_2!11219 (get!6231 lt!712794))))))

(assert (=> d!561927 (= (size!16014 (_2!11219 (get!6231 lt!712794))) lt!713181)))

(declare-fun b!1837279 () Bool)

(assert (=> b!1837279 (= e!1174070 0)))

(declare-fun b!1837280 () Bool)

(assert (=> b!1837280 (= e!1174070 (+ 1 (size!16014 (t!171378 (_2!11219 (get!6231 lt!712794))))))))

(assert (= (and d!561927 c!299801) b!1837279))

(assert (= (and d!561927 (not c!299801)) b!1837280))

(declare-fun m!2265335 () Bool)

(assert (=> b!1837280 m!2265335))

(assert (=> b!1836417 d!561927))

(assert (=> b!1836417 d!561521))

(assert (=> b!1836417 d!561725))

(declare-fun d!561929 () Bool)

(declare-fun charsToInt!0 (List!20254) (_ BitVec 32))

(assert (=> d!561929 (= (inv!16 (value!113663 token!567)) (= (charsToInt!0 (text!26620 (value!113663 token!567))) (value!113654 (value!113663 token!567))))))

(declare-fun bs!408435 () Bool)

(assert (= bs!408435 d!561929))

(declare-fun m!2265337 () Bool)

(assert (=> bs!408435 m!2265337))

(assert (=> b!1835929 d!561929))

(declare-fun bs!408436 () Bool)

(declare-fun d!561931 () Bool)

(assert (= bs!408436 (and d!561931 d!561509)))

(declare-fun lambda!72296 () Int)

(assert (=> bs!408436 (= (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 (rule!5839 token!567)))) (= lambda!72296 lambda!72244))))

(declare-fun bs!408437 () Bool)

(assert (= bs!408437 (and d!561931 d!561835)))

(assert (=> bs!408437 (= (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 (h!25586 rs!808)))) (= lambda!72296 lambda!72283))))

(assert (=> d!561931 true))

(assert (=> d!561931 (< (dynLambda!10063 order!13059 (toValue!5200 (transformation!3649 (h!25586 rules!4610)))) (dynLambda!10064 order!13061 lambda!72296))))

(assert (=> d!561931 (= (equivClasses!1411 (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 (h!25586 rules!4610)))) (Forall2!576 lambda!72296))))

(declare-fun bs!408438 () Bool)

(assert (= bs!408438 d!561931))

(declare-fun m!2265343 () Bool)

(assert (=> bs!408438 m!2265343))

(assert (=> b!1836177 d!561931))

(declare-fun b!1837297 () Bool)

(declare-fun e!1174076 () Bool)

(assert (=> b!1837297 (= e!1174076 (inv!16 (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 lt!712628))))))

(declare-fun b!1837298 () Bool)

(declare-fun e!1174077 () Bool)

(assert (=> b!1837298 (= e!1174076 e!1174077)))

(declare-fun c!299802 () Bool)

(assert (=> b!1837298 (= c!299802 ((_ is IntegerValue!11218) (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 lt!712628))))))

(declare-fun b!1837299 () Bool)

(assert (=> b!1837299 (= e!1174077 (inv!17 (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 lt!712628))))))

(declare-fun b!1837300 () Bool)

(declare-fun e!1174075 () Bool)

(assert (=> b!1837300 (= e!1174075 (inv!15 (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 lt!712628))))))

(declare-fun b!1837301 () Bool)

(declare-fun res!825952 () Bool)

(assert (=> b!1837301 (=> res!825952 e!1174075)))

(assert (=> b!1837301 (= res!825952 (not ((_ is IntegerValue!11219) (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 lt!712628)))))))

(assert (=> b!1837301 (= e!1174077 e!1174075)))

(declare-fun d!561933 () Bool)

(declare-fun c!299803 () Bool)

(assert (=> d!561933 (= c!299803 ((_ is IntegerValue!11217) (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 lt!712628))))))

(assert (=> d!561933 (= (inv!21 (dynLambda!10058 (toValue!5200 (transformation!3649 rule!580)) (seqFromList!2606 lt!712628))) e!1174076)))

(assert (= (and d!561933 c!299803) b!1837297))

(assert (= (and d!561933 (not c!299803)) b!1837298))

(assert (= (and b!1837298 c!299802) b!1837299))

(assert (= (and b!1837298 (not c!299802)) b!1837301))

(assert (= (and b!1837301 (not res!825952)) b!1837300))

(declare-fun m!2265345 () Bool)

(assert (=> b!1837297 m!2265345))

(declare-fun m!2265347 () Bool)

(assert (=> b!1837299 m!2265347))

(declare-fun m!2265349 () Bool)

(assert (=> b!1837300 m!2265349))

(assert (=> tb!112529 d!561933))

(assert (=> d!561375 d!561579))

(declare-fun b!1837312 () Bool)

(declare-fun e!1174086 () Bool)

(declare-fun e!1174083 () Bool)

(assert (=> b!1837312 (= e!1174086 e!1174083)))

(declare-fun res!825957 () Bool)

(assert (=> b!1837312 (=> res!825957 e!1174083)))

(declare-fun call!115068 () Bool)

(assert (=> b!1837312 (= res!825957 call!115068)))

(declare-fun b!1837313 () Bool)

(declare-fun res!825953 () Bool)

(declare-fun e!1174087 () Bool)

(assert (=> b!1837313 (=> (not res!825953) (not e!1174087))))

(assert (=> b!1837313 (= res!825953 (not call!115068))))

(declare-fun b!1837314 () Bool)

(declare-fun res!825955 () Bool)

(assert (=> b!1837314 (=> (not res!825955) (not e!1174087))))

(assert (=> b!1837314 (= res!825955 (isEmpty!12748 (tail!2754 (tail!2754 lt!712628))))))

(declare-fun b!1837315 () Bool)

(declare-fun e!1174081 () Bool)

(declare-fun lt!713182 () Bool)

(assert (=> b!1837315 (= e!1174081 (= lt!713182 call!115068))))

(declare-fun b!1837316 () Bool)

(declare-fun res!825956 () Bool)

(declare-fun e!1174082 () Bool)

(assert (=> b!1837316 (=> res!825956 e!1174082)))

(assert (=> b!1837316 (= res!825956 (not ((_ is ElementMatch!4977) (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712628)))))))

(declare-fun e!1174084 () Bool)

(assert (=> b!1837316 (= e!1174084 e!1174082)))

(declare-fun b!1837317 () Bool)

(assert (=> b!1837317 (= e!1174087 (= (head!4295 (tail!2754 lt!712628)) (c!299472 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712628)))))))

(declare-fun b!1837318 () Bool)

(declare-fun e!1174088 () Bool)

(assert (=> b!1837318 (= e!1174088 (matchR!2440 (derivativeStep!1317 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712628)) (head!4295 (tail!2754 lt!712628))) (tail!2754 (tail!2754 lt!712628))))))

(declare-fun b!1837320 () Bool)

(assert (=> b!1837320 (= e!1174088 (nullable!1553 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712628))))))

(declare-fun b!1837321 () Bool)

(assert (=> b!1837321 (= e!1174082 e!1174086)))

(declare-fun res!825959 () Bool)

(assert (=> b!1837321 (=> (not res!825959) (not e!1174086))))

(assert (=> b!1837321 (= res!825959 (not lt!713182))))

(declare-fun b!1837322 () Bool)

(assert (=> b!1837322 (= e!1174081 e!1174084)))

(declare-fun c!299806 () Bool)

(assert (=> b!1837322 (= c!299806 ((_ is EmptyLang!4977) (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712628))))))

(declare-fun b!1837323 () Bool)

(declare-fun res!825960 () Bool)

(assert (=> b!1837323 (=> res!825960 e!1174082)))

(assert (=> b!1837323 (= res!825960 e!1174087)))

(declare-fun res!825954 () Bool)

(assert (=> b!1837323 (=> (not res!825954) (not e!1174087))))

(assert (=> b!1837323 (= res!825954 lt!713182)))

(declare-fun bm!115063 () Bool)

(assert (=> bm!115063 (= call!115068 (isEmpty!12748 (tail!2754 lt!712628)))))

(declare-fun b!1837319 () Bool)

(assert (=> b!1837319 (= e!1174084 (not lt!713182))))

(declare-fun d!561935 () Bool)

(assert (=> d!561935 e!1174081))

(declare-fun c!299804 () Bool)

(assert (=> d!561935 (= c!299804 ((_ is EmptyExpr!4977) (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712628))))))

(assert (=> d!561935 (= lt!713182 e!1174088)))

(declare-fun c!299805 () Bool)

(assert (=> d!561935 (= c!299805 (isEmpty!12748 (tail!2754 lt!712628)))))

(assert (=> d!561935 (validRegex!2035 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712628)))))

(assert (=> d!561935 (= (matchR!2440 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712628)) (tail!2754 lt!712628)) lt!713182)))

(declare-fun b!1837324 () Bool)

(assert (=> b!1837324 (= e!1174083 (not (= (head!4295 (tail!2754 lt!712628)) (c!299472 (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712628))))))))

(declare-fun b!1837325 () Bool)

(declare-fun res!825958 () Bool)

(assert (=> b!1837325 (=> res!825958 e!1174083)))

(assert (=> b!1837325 (= res!825958 (not (isEmpty!12748 (tail!2754 (tail!2754 lt!712628)))))))

(assert (= (and d!561935 c!299805) b!1837320))

(assert (= (and d!561935 (not c!299805)) b!1837318))

(assert (= (and d!561935 c!299804) b!1837315))

(assert (= (and d!561935 (not c!299804)) b!1837322))

(assert (= (and b!1837322 c!299806) b!1837319))

(assert (= (and b!1837322 (not c!299806)) b!1837316))

(assert (= (and b!1837316 (not res!825956)) b!1837323))

(assert (= (and b!1837323 res!825954) b!1837313))

(assert (= (and b!1837313 res!825953) b!1837314))

(assert (= (and b!1837314 res!825955) b!1837317))

(assert (= (and b!1837323 (not res!825960)) b!1837321))

(assert (= (and b!1837321 res!825959) b!1837312))

(assert (= (and b!1837312 (not res!825957)) b!1837325))

(assert (= (and b!1837325 (not res!825958)) b!1837324))

(assert (= (or b!1837315 b!1837312 b!1837313) bm!115063))

(assert (=> b!1837318 m!2263993))

(declare-fun m!2265351 () Bool)

(assert (=> b!1837318 m!2265351))

(assert (=> b!1837318 m!2263991))

(assert (=> b!1837318 m!2265351))

(declare-fun m!2265353 () Bool)

(assert (=> b!1837318 m!2265353))

(assert (=> b!1837318 m!2263993))

(declare-fun m!2265355 () Bool)

(assert (=> b!1837318 m!2265355))

(assert (=> b!1837318 m!2265353))

(assert (=> b!1837318 m!2265355))

(declare-fun m!2265357 () Bool)

(assert (=> b!1837318 m!2265357))

(assert (=> b!1837324 m!2263993))

(assert (=> b!1837324 m!2265351))

(assert (=> b!1837314 m!2263993))

(assert (=> b!1837314 m!2265355))

(assert (=> b!1837314 m!2265355))

(declare-fun m!2265359 () Bool)

(assert (=> b!1837314 m!2265359))

(assert (=> bm!115063 m!2263993))

(assert (=> bm!115063 m!2263997))

(assert (=> b!1837325 m!2263993))

(assert (=> b!1837325 m!2265355))

(assert (=> b!1837325 m!2265355))

(assert (=> b!1837325 m!2265359))

(assert (=> b!1837317 m!2263993))

(assert (=> b!1837317 m!2265351))

(assert (=> d!561935 m!2263993))

(assert (=> d!561935 m!2263997))

(assert (=> d!561935 m!2263991))

(declare-fun m!2265361 () Bool)

(assert (=> d!561935 m!2265361))

(assert (=> b!1837320 m!2263991))

(declare-fun m!2265363 () Bool)

(assert (=> b!1837320 m!2265363))

(assert (=> b!1836185 d!561935))

(declare-fun b!1837355 () Bool)

(declare-fun c!299808 () Bool)

(assert (=> b!1837355 (= c!299808 ((_ is Union!4977) (regex!3649 rule!580)))))

(declare-fun e!1174101 () Regex!4977)

(declare-fun e!1174100 () Regex!4977)

(assert (=> b!1837355 (= e!1174101 e!1174100)))

(declare-fun b!1837356 () Bool)

(declare-fun e!1174099 () Regex!4977)

(assert (=> b!1837356 (= e!1174099 e!1174101)))

(declare-fun c!299807 () Bool)

(assert (=> b!1837356 (= c!299807 ((_ is ElementMatch!4977) (regex!3649 rule!580)))))

(declare-fun call!115071 () Regex!4977)

(declare-fun bm!115064 () Bool)

(assert (=> bm!115064 (= call!115071 (derivativeStep!1317 (ite c!299808 (regOne!10467 (regex!3649 rule!580)) (regOne!10466 (regex!3649 rule!580))) (head!4295 lt!712628)))))

(declare-fun b!1837357 () Bool)

(declare-fun call!115069 () Regex!4977)

(assert (=> b!1837357 (= e!1174100 (Union!4977 call!115071 call!115069))))

(declare-fun d!561937 () Bool)

(declare-fun lt!713183 () Regex!4977)

(assert (=> d!561937 (validRegex!2035 lt!713183)))

(assert (=> d!561937 (= lt!713183 e!1174099)))

(declare-fun c!299811 () Bool)

(assert (=> d!561937 (= c!299811 (or ((_ is EmptyExpr!4977) (regex!3649 rule!580)) ((_ is EmptyLang!4977) (regex!3649 rule!580))))))

(assert (=> d!561937 (validRegex!2035 (regex!3649 rule!580))))

(assert (=> d!561937 (= (derivativeStep!1317 (regex!3649 rule!580) (head!4295 lt!712628)) lt!713183)))

(declare-fun bm!115065 () Bool)

(declare-fun call!115070 () Regex!4977)

(assert (=> bm!115065 (= call!115070 call!115069)))

(declare-fun b!1837358 () Bool)

(declare-fun e!1174098 () Regex!4977)

(assert (=> b!1837358 (= e!1174098 (Concat!8716 call!115070 (regex!3649 rule!580)))))

(declare-fun b!1837359 () Bool)

(assert (=> b!1837359 (= e!1174101 (ite (= (head!4295 lt!712628) (c!299472 (regex!3649 rule!580))) EmptyExpr!4977 EmptyLang!4977))))

(declare-fun b!1837360 () Bool)

(declare-fun e!1174097 () Regex!4977)

(declare-fun call!115072 () Regex!4977)

(assert (=> b!1837360 (= e!1174097 (Union!4977 (Concat!8716 call!115072 (regTwo!10466 (regex!3649 rule!580))) EmptyLang!4977))))

(declare-fun b!1837361 () Bool)

(assert (=> b!1837361 (= e!1174097 (Union!4977 (Concat!8716 call!115071 (regTwo!10466 (regex!3649 rule!580))) call!115072))))

(declare-fun b!1837362 () Bool)

(assert (=> b!1837362 (= e!1174100 e!1174098)))

(declare-fun c!299809 () Bool)

(assert (=> b!1837362 (= c!299809 ((_ is Star!4977) (regex!3649 rule!580)))))

(declare-fun bm!115066 () Bool)

(assert (=> bm!115066 (= call!115072 call!115070)))

(declare-fun c!299810 () Bool)

(declare-fun bm!115067 () Bool)

(assert (=> bm!115067 (= call!115069 (derivativeStep!1317 (ite c!299808 (regTwo!10467 (regex!3649 rule!580)) (ite c!299809 (reg!5306 (regex!3649 rule!580)) (ite c!299810 (regTwo!10466 (regex!3649 rule!580)) (regOne!10466 (regex!3649 rule!580))))) (head!4295 lt!712628)))))

(declare-fun b!1837363 () Bool)

(assert (=> b!1837363 (= c!299810 (nullable!1553 (regOne!10466 (regex!3649 rule!580))))))

(assert (=> b!1837363 (= e!1174098 e!1174097)))

(declare-fun b!1837364 () Bool)

(assert (=> b!1837364 (= e!1174099 EmptyLang!4977)))

(assert (= (and d!561937 c!299811) b!1837364))

(assert (= (and d!561937 (not c!299811)) b!1837356))

(assert (= (and b!1837356 c!299807) b!1837359))

(assert (= (and b!1837356 (not c!299807)) b!1837355))

(assert (= (and b!1837355 c!299808) b!1837357))

(assert (= (and b!1837355 (not c!299808)) b!1837362))

(assert (= (and b!1837362 c!299809) b!1837358))

(assert (= (and b!1837362 (not c!299809)) b!1837363))

(assert (= (and b!1837363 c!299810) b!1837361))

(assert (= (and b!1837363 (not c!299810)) b!1837360))

(assert (= (or b!1837361 b!1837360) bm!115066))

(assert (= (or b!1837358 bm!115066) bm!115065))

(assert (= (or b!1837357 bm!115065) bm!115067))

(assert (= (or b!1837357 b!1837361) bm!115064))

(assert (=> bm!115064 m!2263989))

(declare-fun m!2265365 () Bool)

(assert (=> bm!115064 m!2265365))

(declare-fun m!2265367 () Bool)

(assert (=> d!561937 m!2265367))

(assert (=> d!561937 m!2263969))

(assert (=> bm!115067 m!2263989))

(declare-fun m!2265369 () Bool)

(assert (=> bm!115067 m!2265369))

(assert (=> b!1837363 m!2264955))

(assert (=> b!1836185 d!561937))

(assert (=> b!1836185 d!561609))

(assert (=> b!1836185 d!561555))

(assert (=> d!561377 d!561375))

(declare-fun d!561939 () Bool)

(assert (=> d!561939 (ruleValid!1139 thiss!28318 rule!580)))

(assert (=> d!561939 true))

(declare-fun _$65!1001 () Unit!34879)

(assert (=> d!561939 (= (choose!11556 thiss!28318 rule!580 rules!4610) _$65!1001)))

(declare-fun bs!408444 () Bool)

(assert (= bs!408444 d!561939))

(assert (=> bs!408444 m!2263725))

(assert (=> d!561377 d!561939))

(assert (=> d!561377 d!561379))

(assert (=> b!1836181 d!561553))

(assert (=> b!1836181 d!561555))

(declare-fun d!561951 () Bool)

(declare-fun lt!713184 () Int)

(assert (=> d!561951 (>= lt!713184 0)))

(declare-fun e!1174106 () Int)

(assert (=> d!561951 (= lt!713184 e!1174106)))

(declare-fun c!299812 () Bool)

(assert (=> d!561951 (= c!299812 ((_ is Nil!20183) (_2!11219 (get!6231 lt!712672))))))

(assert (=> d!561951 (= (size!16014 (_2!11219 (get!6231 lt!712672))) lt!713184)))

(declare-fun b!1837381 () Bool)

(assert (=> b!1837381 (= e!1174106 0)))

(declare-fun b!1837382 () Bool)

(assert (=> b!1837382 (= e!1174106 (+ 1 (size!16014 (t!171378 (_2!11219 (get!6231 lt!712672))))))))

(assert (= (and d!561951 c!299812) b!1837381))

(assert (= (and d!561951 (not c!299812)) b!1837382))

(declare-fun m!2265375 () Bool)

(assert (=> b!1837382 m!2265375))

(assert (=> b!1836034 d!561951))

(assert (=> b!1836034 d!561493))

(assert (=> b!1836034 d!561725))

(declare-fun bs!408447 () Bool)

(declare-fun d!561957 () Bool)

(assert (= bs!408447 (and d!561957 d!561509)))

(declare-fun lambda!72297 () Int)

(assert (=> bs!408447 (= (= (toValue!5200 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 (rule!5839 token!567)))) (= lambda!72297 lambda!72244))))

(declare-fun bs!408448 () Bool)

(assert (= bs!408448 (and d!561957 d!561835)))

(assert (=> bs!408448 (= (= (toValue!5200 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 (h!25586 rs!808)))) (= lambda!72297 lambda!72283))))

(declare-fun bs!408449 () Bool)

(assert (= bs!408449 (and d!561957 d!561931)))

(assert (=> bs!408449 (= (= (toValue!5200 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 (h!25586 rules!4610)))) (= lambda!72297 lambda!72296))))

(assert (=> d!561957 true))

(assert (=> d!561957 (< (dynLambda!10063 order!13059 (toValue!5200 (transformation!3649 rule!580))) (dynLambda!10064 order!13061 lambda!72297))))

(assert (=> d!561957 (= (equivClasses!1411 (toChars!5059 (transformation!3649 rule!580)) (toValue!5200 (transformation!3649 rule!580))) (Forall2!576 lambda!72297))))

(declare-fun bs!408450 () Bool)

(assert (= bs!408450 d!561957))

(declare-fun m!2265377 () Bool)

(assert (=> bs!408450 m!2265377))

(assert (=> b!1836398 d!561957))

(declare-fun d!561959 () Bool)

(assert (=> d!561959 (= (list!8203 lt!712695) (list!8205 (c!299473 lt!712695)))))

(declare-fun bs!408451 () Bool)

(assert (= bs!408451 d!561959))

(declare-fun m!2265379 () Bool)

(assert (=> bs!408451 m!2265379))

(assert (=> d!561367 d!561959))

(declare-fun d!561961 () Bool)

(assert (=> d!561961 (= ($colon$colon!468 (map!4192 (t!171380 rules!4610) lambda!72208) (dynLambda!10059 lambda!72208 (h!25586 rules!4610))) (Cons!20186 (dynLambda!10059 lambda!72208 (h!25586 rules!4610)) (map!4192 (t!171380 rules!4610) lambda!72208)))))

(assert (=> b!1836332 d!561961))

(declare-fun d!561963 () Bool)

(declare-fun lt!713185 () List!20256)

(assert (=> d!561963 (= (size!16019 lt!713185) (size!16020 (t!171380 rules!4610)))))

(declare-fun e!1174107 () List!20256)

(assert (=> d!561963 (= lt!713185 e!1174107)))

(declare-fun c!299813 () Bool)

(assert (=> d!561963 (= c!299813 ((_ is Nil!20185) (t!171380 rules!4610)))))

(assert (=> d!561963 (= (map!4192 (t!171380 rules!4610) lambda!72208) lt!713185)))

(declare-fun b!1837383 () Bool)

(assert (=> b!1837383 (= e!1174107 Nil!20186)))

(declare-fun b!1837384 () Bool)

(assert (=> b!1837384 (= e!1174107 ($colon$colon!468 (map!4192 (t!171380 (t!171380 rules!4610)) lambda!72208) (dynLambda!10059 lambda!72208 (h!25586 (t!171380 rules!4610)))))))

(assert (= (and d!561963 c!299813) b!1837383))

(assert (= (and d!561963 (not c!299813)) b!1837384))

(declare-fun b_lambda!61009 () Bool)

(assert (=> (not b_lambda!61009) (not b!1837384)))

(declare-fun m!2265381 () Bool)

(assert (=> d!561963 m!2265381))

(assert (=> d!561963 m!2264303))

(declare-fun m!2265383 () Bool)

(assert (=> b!1837384 m!2265383))

(declare-fun m!2265385 () Bool)

(assert (=> b!1837384 m!2265385))

(assert (=> b!1837384 m!2265383))

(assert (=> b!1837384 m!2265385))

(declare-fun m!2265387 () Bool)

(assert (=> b!1837384 m!2265387))

(assert (=> b!1836332 d!561963))

(declare-fun b!1837396 () Bool)

(declare-fun e!1174113 () List!20253)

(assert (=> b!1837396 (= e!1174113 (++!5473 (list!8205 (left!16127 (c!299473 (charsOf!2292 token!567)))) (list!8205 (right!16457 (c!299473 (charsOf!2292 token!567))))))))

(declare-fun b!1837393 () Bool)

(declare-fun e!1174112 () List!20253)

(assert (=> b!1837393 (= e!1174112 Nil!20183)))

(declare-fun b!1837394 () Bool)

(assert (=> b!1837394 (= e!1174112 e!1174113)))

(declare-fun c!299819 () Bool)

(assert (=> b!1837394 (= c!299819 ((_ is Leaf!9726) (c!299473 (charsOf!2292 token!567))))))

(declare-fun b!1837395 () Bool)

(declare-fun list!8207 (IArray!13367) List!20253)

(assert (=> b!1837395 (= e!1174113 (list!8207 (xs!9557 (c!299473 (charsOf!2292 token!567)))))))

(declare-fun d!561965 () Bool)

(declare-fun c!299818 () Bool)

(assert (=> d!561965 (= c!299818 ((_ is Empty!6681) (c!299473 (charsOf!2292 token!567))))))

(assert (=> d!561965 (= (list!8205 (c!299473 (charsOf!2292 token!567))) e!1174112)))

(assert (= (and d!561965 c!299818) b!1837393))

(assert (= (and d!561965 (not c!299818)) b!1837394))

(assert (= (and b!1837394 c!299819) b!1837395))

(assert (= (and b!1837394 (not c!299819)) b!1837396))

(declare-fun m!2265389 () Bool)

(assert (=> b!1837396 m!2265389))

(declare-fun m!2265391 () Bool)

(assert (=> b!1837396 m!2265391))

(assert (=> b!1837396 m!2265389))

(assert (=> b!1837396 m!2265391))

(declare-fun m!2265393 () Bool)

(assert (=> b!1837396 m!2265393))

(declare-fun m!2265395 () Bool)

(assert (=> b!1837395 m!2265395))

(assert (=> d!561323 d!561965))

(declare-fun bs!408452 () Bool)

(declare-fun d!561967 () Bool)

(assert (= bs!408452 (and d!561967 d!561437)))

(declare-fun lambda!72298 () Int)

(assert (=> bs!408452 (= lambda!72298 lambda!72235)))

(declare-fun bs!408453 () Bool)

(assert (= bs!408453 (and d!561967 d!561901)))

(assert (=> bs!408453 (= lambda!72298 lambda!72293)))

(declare-fun bs!408454 () Bool)

(assert (= bs!408454 (and d!561967 d!561899)))

(assert (=> bs!408454 (= lambda!72298 lambda!72292)))

(declare-fun bs!408455 () Bool)

(assert (= bs!408455 (and d!561967 d!561561)))

(assert (=> bs!408455 (= lambda!72298 lambda!72250)))

(declare-fun bs!408456 () Bool)

(assert (= bs!408456 (and d!561967 d!561397)))

(assert (=> bs!408456 (= lambda!72298 lambda!72229)))

(declare-fun b!1837397 () Bool)

(declare-fun e!1174114 () Bool)

(declare-fun e!1174115 () Bool)

(assert (=> b!1837397 (= e!1174114 e!1174115)))

(declare-fun c!299821 () Bool)

(assert (=> b!1837397 (= c!299821 (isEmpty!12751 (t!171381 (map!4192 rules!4610 lambda!72208))))))

(declare-fun b!1837398 () Bool)

(declare-fun e!1174116 () Bool)

(assert (=> b!1837398 (= e!1174116 (isEmpty!12751 (t!171381 (t!171381 (map!4192 rules!4610 lambda!72208)))))))

(declare-fun b!1837399 () Bool)

(declare-fun e!1174118 () Regex!4977)

(assert (=> b!1837399 (= e!1174118 EmptyLang!4977)))

(declare-fun b!1837400 () Bool)

(declare-fun e!1174117 () Bool)

(declare-fun lt!713186 () Regex!4977)

(assert (=> b!1837400 (= e!1174117 (= lt!713186 (head!4296 (t!171381 (map!4192 rules!4610 lambda!72208)))))))

(declare-fun b!1837401 () Bool)

(declare-fun e!1174119 () Regex!4977)

(assert (=> b!1837401 (= e!1174119 e!1174118)))

(declare-fun c!299820 () Bool)

(assert (=> b!1837401 (= c!299820 ((_ is Cons!20186) (t!171381 (map!4192 rules!4610 lambda!72208))))))

(declare-fun b!1837402 () Bool)

(assert (=> b!1837402 (= e!1174115 (isEmptyLang!135 lt!713186))))

(declare-fun b!1837403 () Bool)

(assert (=> b!1837403 (= e!1174119 (h!25587 (t!171381 (map!4192 rules!4610 lambda!72208))))))

(declare-fun b!1837405 () Bool)

(assert (=> b!1837405 (= e!1174118 (Union!4977 (h!25587 (t!171381 (map!4192 rules!4610 lambda!72208))) (generalisedUnion!492 (t!171381 (t!171381 (map!4192 rules!4610 lambda!72208))))))))

(declare-fun b!1837406 () Bool)

(assert (=> b!1837406 (= e!1174115 e!1174117)))

(declare-fun c!299823 () Bool)

(assert (=> b!1837406 (= c!299823 (isEmpty!12751 (tail!2755 (t!171381 (map!4192 rules!4610 lambda!72208)))))))

(assert (=> d!561967 e!1174114))

(declare-fun res!825961 () Bool)

(assert (=> d!561967 (=> (not res!825961) (not e!1174114))))

(assert (=> d!561967 (= res!825961 (validRegex!2035 lt!713186))))

(assert (=> d!561967 (= lt!713186 e!1174119)))

(declare-fun c!299822 () Bool)

(assert (=> d!561967 (= c!299822 e!1174116)))

(declare-fun res!825962 () Bool)

(assert (=> d!561967 (=> (not res!825962) (not e!1174116))))

(assert (=> d!561967 (= res!825962 ((_ is Cons!20186) (t!171381 (map!4192 rules!4610 lambda!72208))))))

(assert (=> d!561967 (forall!4352 (t!171381 (map!4192 rules!4610 lambda!72208)) lambda!72298)))

(assert (=> d!561967 (= (generalisedUnion!492 (t!171381 (map!4192 rules!4610 lambda!72208))) lt!713186)))

(declare-fun b!1837404 () Bool)

(assert (=> b!1837404 (= e!1174117 (isUnion!135 lt!713186))))

(assert (= (and d!561967 res!825962) b!1837398))

(assert (= (and d!561967 c!299822) b!1837403))

(assert (= (and d!561967 (not c!299822)) b!1837401))

(assert (= (and b!1837401 c!299820) b!1837405))

(assert (= (and b!1837401 (not c!299820)) b!1837399))

(assert (= (and d!561967 res!825961) b!1837397))

(assert (= (and b!1837397 c!299821) b!1837402))

(assert (= (and b!1837397 (not c!299821)) b!1837406))

(assert (= (and b!1837406 c!299823) b!1837400))

(assert (= (and b!1837406 (not c!299823)) b!1837404))

(declare-fun m!2265397 () Bool)

(assert (=> b!1837402 m!2265397))

(assert (=> b!1837397 m!2264133))

(declare-fun m!2265399 () Bool)

(assert (=> b!1837400 m!2265399))

(declare-fun m!2265401 () Bool)

(assert (=> b!1837404 m!2265401))

(declare-fun m!2265403 () Bool)

(assert (=> b!1837406 m!2265403))

(assert (=> b!1837406 m!2265403))

(declare-fun m!2265405 () Bool)

(assert (=> b!1837406 m!2265405))

(declare-fun m!2265407 () Bool)

(assert (=> d!561967 m!2265407))

(declare-fun m!2265409 () Bool)

(assert (=> d!561967 m!2265409))

(declare-fun m!2265411 () Bool)

(assert (=> b!1837405 m!2265411))

(declare-fun m!2265413 () Bool)

(assert (=> b!1837398 m!2265413))

(assert (=> b!1836315 d!561967))

(declare-fun d!561969 () Bool)

(declare-fun lt!713187 () Bool)

(assert (=> d!561969 (= lt!713187 (select (content!3004 (t!171380 rs!808)) rule!580))))

(declare-fun e!1174121 () Bool)

(assert (=> d!561969 (= lt!713187 e!1174121)))

(declare-fun res!825964 () Bool)

(assert (=> d!561969 (=> (not res!825964) (not e!1174121))))

(assert (=> d!561969 (= res!825964 ((_ is Cons!20185) (t!171380 rs!808)))))

(assert (=> d!561969 (= (contains!3730 (t!171380 rs!808) rule!580) lt!713187)))

(declare-fun b!1837407 () Bool)

(declare-fun e!1174120 () Bool)

(assert (=> b!1837407 (= e!1174121 e!1174120)))

(declare-fun res!825963 () Bool)

(assert (=> b!1837407 (=> res!825963 e!1174120)))

(assert (=> b!1837407 (= res!825963 (= (h!25586 (t!171380 rs!808)) rule!580))))

(declare-fun b!1837408 () Bool)

(assert (=> b!1837408 (= e!1174120 (contains!3730 (t!171380 (t!171380 rs!808)) rule!580))))

(assert (= (and d!561969 res!825964) b!1837407))

(assert (= (and b!1837407 (not res!825963)) b!1837408))

(assert (=> d!561969 m!2264401))

(declare-fun m!2265415 () Bool)

(assert (=> d!561969 m!2265415))

(declare-fun m!2265417 () Bool)

(assert (=> b!1837408 m!2265417))

(assert (=> b!1836427 d!561969))

(assert (=> b!1836154 d!561765))

(assert (=> d!561389 d!561569))

(assert (=> d!561389 d!561579))

(declare-fun d!561971 () Bool)

(declare-fun lt!713188 () Bool)

(assert (=> d!561971 (= lt!713188 (select (content!3004 (t!171380 rules!4610)) rule!580))))

(declare-fun e!1174123 () Bool)

(assert (=> d!561971 (= lt!713188 e!1174123)))

(declare-fun res!825966 () Bool)

(assert (=> d!561971 (=> (not res!825966) (not e!1174123))))

(assert (=> d!561971 (= res!825966 ((_ is Cons!20185) (t!171380 rules!4610)))))

(assert (=> d!561971 (= (contains!3730 (t!171380 rules!4610) rule!580) lt!713188)))

(declare-fun b!1837409 () Bool)

(declare-fun e!1174122 () Bool)

(assert (=> b!1837409 (= e!1174123 e!1174122)))

(declare-fun res!825965 () Bool)

(assert (=> b!1837409 (=> res!825965 e!1174122)))

(assert (=> b!1837409 (= res!825965 (= (h!25586 (t!171380 rules!4610)) rule!580))))

(declare-fun b!1837410 () Bool)

(assert (=> b!1837410 (= e!1174122 (contains!3730 (t!171380 (t!171380 rules!4610)) rule!580))))

(assert (= (and d!561971 res!825966) b!1837409))

(assert (= (and b!1837409 (not res!825965)) b!1837410))

(assert (=> d!561971 m!2265035))

(declare-fun m!2265419 () Bool)

(assert (=> d!561971 m!2265419))

(declare-fun m!2265421 () Bool)

(assert (=> b!1837410 m!2265421))

(assert (=> b!1836174 d!561971))

(declare-fun b!1837412 () Bool)

(declare-fun e!1174124 () Bool)

(declare-fun tp!519679 () Bool)

(declare-fun tp!519681 () Bool)

(assert (=> b!1837412 (= e!1174124 (and tp!519679 tp!519681))))

(assert (=> b!1836465 (= tp!519528 e!1174124)))

(declare-fun b!1837414 () Bool)

(declare-fun tp!519677 () Bool)

(declare-fun tp!519678 () Bool)

(assert (=> b!1837414 (= e!1174124 (and tp!519677 tp!519678))))

(declare-fun b!1837413 () Bool)

(declare-fun tp!519680 () Bool)

(assert (=> b!1837413 (= e!1174124 tp!519680)))

(declare-fun b!1837411 () Bool)

(assert (=> b!1837411 (= e!1174124 tp_is_empty!8189)))

(assert (= (and b!1836465 ((_ is ElementMatch!4977) (regex!3649 (h!25586 (t!171380 rs!808))))) b!1837411))

(assert (= (and b!1836465 ((_ is Concat!8716) (regex!3649 (h!25586 (t!171380 rs!808))))) b!1837412))

(assert (= (and b!1836465 ((_ is Star!4977) (regex!3649 (h!25586 (t!171380 rs!808))))) b!1837413))

(assert (= (and b!1836465 ((_ is Union!4977) (regex!3649 (h!25586 (t!171380 rs!808))))) b!1837414))

(declare-fun b!1837415 () Bool)

(declare-fun e!1174125 () Bool)

(declare-fun tp!519682 () Bool)

(assert (=> b!1837415 (= e!1174125 (and tp_is_empty!8189 tp!519682))))

(assert (=> b!1836443 (= tp!519504 e!1174125)))

(assert (= (and b!1836443 ((_ is Cons!20183) (t!171378 (originalCharacters!4457 token!567)))) b!1837415))

(declare-fun b!1837417 () Bool)

(declare-fun e!1174126 () Bool)

(declare-fun tp!519685 () Bool)

(declare-fun tp!519687 () Bool)

(assert (=> b!1837417 (= e!1174126 (and tp!519685 tp!519687))))

(assert (=> b!1836463 (= tp!519522 e!1174126)))

(declare-fun b!1837419 () Bool)

(declare-fun tp!519683 () Bool)

(declare-fun tp!519684 () Bool)

(assert (=> b!1837419 (= e!1174126 (and tp!519683 tp!519684))))

(declare-fun b!1837418 () Bool)

(declare-fun tp!519686 () Bool)

(assert (=> b!1837418 (= e!1174126 tp!519686)))

(declare-fun b!1837416 () Bool)

(assert (=> b!1837416 (= e!1174126 tp_is_empty!8189)))

(assert (= (and b!1836463 ((_ is ElementMatch!4977) (regOne!10467 (regex!3649 (rule!5839 token!567))))) b!1837416))

(assert (= (and b!1836463 ((_ is Concat!8716) (regOne!10467 (regex!3649 (rule!5839 token!567))))) b!1837417))

(assert (= (and b!1836463 ((_ is Star!4977) (regOne!10467 (regex!3649 (rule!5839 token!567))))) b!1837418))

(assert (= (and b!1836463 ((_ is Union!4977) (regOne!10467 (regex!3649 (rule!5839 token!567))))) b!1837419))

(declare-fun b!1837421 () Bool)

(declare-fun e!1174127 () Bool)

(declare-fun tp!519690 () Bool)

(declare-fun tp!519692 () Bool)

(assert (=> b!1837421 (= e!1174127 (and tp!519690 tp!519692))))

(assert (=> b!1836463 (= tp!519523 e!1174127)))

(declare-fun b!1837423 () Bool)

(declare-fun tp!519688 () Bool)

(declare-fun tp!519689 () Bool)

(assert (=> b!1837423 (= e!1174127 (and tp!519688 tp!519689))))

(declare-fun b!1837422 () Bool)

(declare-fun tp!519691 () Bool)

(assert (=> b!1837422 (= e!1174127 tp!519691)))

(declare-fun b!1837420 () Bool)

(assert (=> b!1837420 (= e!1174127 tp_is_empty!8189)))

(assert (= (and b!1836463 ((_ is ElementMatch!4977) (regTwo!10467 (regex!3649 (rule!5839 token!567))))) b!1837420))

(assert (= (and b!1836463 ((_ is Concat!8716) (regTwo!10467 (regex!3649 (rule!5839 token!567))))) b!1837421))

(assert (= (and b!1836463 ((_ is Star!4977) (regTwo!10467 (regex!3649 (rule!5839 token!567))))) b!1837422))

(assert (= (and b!1836463 ((_ is Union!4977) (regTwo!10467 (regex!3649 (rule!5839 token!567))))) b!1837423))

(declare-fun b!1837424 () Bool)

(declare-fun e!1174128 () Bool)

(declare-fun tp!519693 () Bool)

(assert (=> b!1837424 (= e!1174128 (and tp_is_empty!8189 tp!519693))))

(assert (=> b!1836459 (= tp!519521 e!1174128)))

(assert (= (and b!1836459 ((_ is Cons!20183) (t!171378 (t!171378 suffix!1698)))) b!1837424))

(declare-fun b!1837426 () Bool)

(declare-fun e!1174129 () Bool)

(declare-fun tp!519696 () Bool)

(declare-fun tp!519698 () Bool)

(assert (=> b!1837426 (= e!1174129 (and tp!519696 tp!519698))))

(assert (=> b!1836437 (= tp!519499 e!1174129)))

(declare-fun b!1837428 () Bool)

(declare-fun tp!519694 () Bool)

(declare-fun tp!519695 () Bool)

(assert (=> b!1837428 (= e!1174129 (and tp!519694 tp!519695))))

(declare-fun b!1837427 () Bool)

(declare-fun tp!519697 () Bool)

(assert (=> b!1837427 (= e!1174129 tp!519697)))

(declare-fun b!1837425 () Bool)

(assert (=> b!1837425 (= e!1174129 tp_is_empty!8189)))

(assert (= (and b!1836437 ((_ is ElementMatch!4977) (regex!3649 (h!25586 (t!171380 rules!4610))))) b!1837425))

(assert (= (and b!1836437 ((_ is Concat!8716) (regex!3649 (h!25586 (t!171380 rules!4610))))) b!1837426))

(assert (= (and b!1836437 ((_ is Star!4977) (regex!3649 (h!25586 (t!171380 rules!4610))))) b!1837427))

(assert (= (and b!1836437 ((_ is Union!4977) (regex!3649 (h!25586 (t!171380 rules!4610))))) b!1837428))

(declare-fun tp!519707 () Bool)

(declare-fun tp!519705 () Bool)

(declare-fun e!1174135 () Bool)

(declare-fun b!1837437 () Bool)

(assert (=> b!1837437 (= e!1174135 (and (inv!26263 (left!16127 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567))))) tp!519707 (inv!26263 (right!16457 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567))))) tp!519705))))

(declare-fun b!1837439 () Bool)

(declare-fun e!1174134 () Bool)

(declare-fun tp!519706 () Bool)

(assert (=> b!1837439 (= e!1174134 tp!519706)))

(declare-fun b!1837438 () Bool)

(declare-fun inv!26269 (IArray!13367) Bool)

(assert (=> b!1837438 (= e!1174135 (and (inv!26269 (xs!9557 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567))))) e!1174134))))

(assert (=> b!1835944 (= tp!519435 (and (inv!26263 (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567)))) e!1174135))))

(assert (= (and b!1835944 ((_ is Node!6681) (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567))))) b!1837437))

(assert (= b!1837438 b!1837439))

(assert (= (and b!1835944 ((_ is Leaf!9726) (c!299473 (dynLambda!10057 (toChars!5059 (transformation!3649 (rule!5839 token!567))) (value!113663 token!567))))) b!1837438))

(declare-fun m!2265423 () Bool)

(assert (=> b!1837437 m!2265423))

(declare-fun m!2265425 () Bool)

(assert (=> b!1837437 m!2265425))

(declare-fun m!2265427 () Bool)

(assert (=> b!1837438 m!2265427))

(assert (=> b!1835944 m!2263739))

(declare-fun b!1837440 () Bool)

(declare-fun e!1174136 () Bool)

(declare-fun tp!519708 () Bool)

(assert (=> b!1837440 (= e!1174136 (and tp_is_empty!8189 tp!519708))))

(assert (=> b!1836458 (= tp!519520 e!1174136)))

(assert (= (and b!1836458 ((_ is Cons!20183) (t!171378 (t!171378 input!3681)))) b!1837440))

(declare-fun b!1837442 () Bool)

(declare-fun e!1174137 () Bool)

(declare-fun tp!519711 () Bool)

(declare-fun tp!519713 () Bool)

(assert (=> b!1837442 (= e!1174137 (and tp!519711 tp!519713))))

(assert (=> b!1836461 (= tp!519524 e!1174137)))

(declare-fun b!1837444 () Bool)

(declare-fun tp!519709 () Bool)

(declare-fun tp!519710 () Bool)

(assert (=> b!1837444 (= e!1174137 (and tp!519709 tp!519710))))

(declare-fun b!1837443 () Bool)

(declare-fun tp!519712 () Bool)

(assert (=> b!1837443 (= e!1174137 tp!519712)))

(declare-fun b!1837441 () Bool)

(assert (=> b!1837441 (= e!1174137 tp_is_empty!8189)))

(assert (= (and b!1836461 ((_ is ElementMatch!4977) (regOne!10466 (regex!3649 (rule!5839 token!567))))) b!1837441))

(assert (= (and b!1836461 ((_ is Concat!8716) (regOne!10466 (regex!3649 (rule!5839 token!567))))) b!1837442))

(assert (= (and b!1836461 ((_ is Star!4977) (regOne!10466 (regex!3649 (rule!5839 token!567))))) b!1837443))

(assert (= (and b!1836461 ((_ is Union!4977) (regOne!10466 (regex!3649 (rule!5839 token!567))))) b!1837444))

(declare-fun b!1837446 () Bool)

(declare-fun e!1174138 () Bool)

(declare-fun tp!519716 () Bool)

(declare-fun tp!519718 () Bool)

(assert (=> b!1837446 (= e!1174138 (and tp!519716 tp!519718))))

(assert (=> b!1836461 (= tp!519526 e!1174138)))

(declare-fun b!1837448 () Bool)

(declare-fun tp!519714 () Bool)

(declare-fun tp!519715 () Bool)

(assert (=> b!1837448 (= e!1174138 (and tp!519714 tp!519715))))

(declare-fun b!1837447 () Bool)

(declare-fun tp!519717 () Bool)

(assert (=> b!1837447 (= e!1174138 tp!519717)))

(declare-fun b!1837445 () Bool)

(assert (=> b!1837445 (= e!1174138 tp_is_empty!8189)))

(assert (= (and b!1836461 ((_ is ElementMatch!4977) (regTwo!10466 (regex!3649 (rule!5839 token!567))))) b!1837445))

(assert (= (and b!1836461 ((_ is Concat!8716) (regTwo!10466 (regex!3649 (rule!5839 token!567))))) b!1837446))

(assert (= (and b!1836461 ((_ is Star!4977) (regTwo!10466 (regex!3649 (rule!5839 token!567))))) b!1837447))

(assert (= (and b!1836461 ((_ is Union!4977) (regTwo!10466 (regex!3649 (rule!5839 token!567))))) b!1837448))

(declare-fun b!1837451 () Bool)

(declare-fun b_free!51475 () Bool)

(declare-fun b_next!52179 () Bool)

(assert (=> b!1837451 (= b_free!51475 (not b_next!52179))))

(declare-fun tb!112757 () Bool)

(declare-fun t!171641 () Bool)

(assert (=> (and b!1837451 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toValue!5200 (transformation!3649 rule!580))) t!171641) tb!112757))

(declare-fun result!135544 () Bool)

(assert (= result!135544 result!135456))

(assert (=> d!561781 t!171641))

(declare-fun tb!112759 () Bool)

(declare-fun t!171643 () Bool)

(assert (=> (and b!1837451 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toValue!5200 (transformation!3649 rule!580))) t!171643) tb!112759))

(declare-fun result!135546 () Bool)

(assert (= result!135546 result!135298))

(assert (=> d!561345 t!171643))

(assert (=> d!561773 t!171641))

(declare-fun tb!112761 () Bool)

(declare-fun t!171645 () Bool)

(assert (=> (and b!1837451 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171645) tb!112761))

(declare-fun result!135548 () Bool)

(assert (= result!135548 result!135480))

(assert (=> d!561841 t!171645))

(declare-fun t!171647 () Bool)

(declare-fun tb!112763 () Bool)

(assert (=> (and b!1837451 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171647) tb!112763))

(declare-fun result!135550 () Bool)

(assert (= result!135550 result!135384))

(assert (=> d!561565 t!171647))

(declare-fun t!171649 () Bool)

(declare-fun tb!112765 () Bool)

(assert (=> (and b!1837451 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toValue!5200 (transformation!3649 rule!580))) t!171649) tb!112765))

(declare-fun result!135552 () Bool)

(assert (= result!135552 result!135372))

(assert (=> d!561539 t!171649))

(declare-fun tp!519722 () Bool)

(declare-fun b_and!143593 () Bool)

(assert (=> b!1837451 (= tp!519722 (and (=> t!171641 result!135544) (=> t!171647 result!135550) (=> t!171645 result!135548) (=> t!171643 result!135546) (=> t!171649 result!135552) b_and!143593))))

(declare-fun b_free!51477 () Bool)

(declare-fun b_next!52181 () Bool)

(assert (=> b!1837451 (= b_free!51477 (not b_next!52181))))

(declare-fun t!171651 () Bool)

(declare-fun tb!112767 () Bool)

(assert (=> (and b!1837451 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toChars!5059 (transformation!3649 rule!580))) t!171651) tb!112767))

(declare-fun result!135554 () Bool)

(assert (= result!135554 result!135468))

(assert (=> d!561781 t!171651))

(declare-fun tb!112769 () Bool)

(declare-fun t!171653 () Bool)

(assert (=> (and b!1837451 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171653) tb!112769))

(declare-fun result!135556 () Bool)

(assert (= result!135556 result!135360))

(assert (=> d!561519 t!171653))

(declare-fun t!171655 () Bool)

(declare-fun tb!112771 () Bool)

(assert (=> (and b!1837451 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toChars!5059 (transformation!3649 (rule!5839 token!567)))) t!171655) tb!112771))

(declare-fun result!135558 () Bool)

(assert (= result!135558 result!135268))

(assert (=> d!561367 t!171655))

(assert (=> b!1835938 t!171655))

(declare-fun t!171657 () Bool)

(declare-fun tb!112773 () Bool)

(assert (=> (and b!1837451 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171657) tb!112773))

(declare-fun result!135560 () Bool)

(assert (= result!135560 result!135348))

(assert (=> d!561503 t!171657))

(declare-fun b_and!143595 () Bool)

(declare-fun tp!519721 () Bool)

(assert (=> b!1837451 (= tp!519721 (and (=> t!171651 result!135554) (=> t!171657 result!135560) (=> t!171655 result!135558) (=> t!171653 result!135556) b_and!143595))))

(declare-fun e!1174141 () Bool)

(assert (=> b!1837451 (= e!1174141 (and tp!519722 tp!519721))))

(declare-fun tp!519720 () Bool)

(declare-fun e!1174140 () Bool)

(declare-fun b!1837450 () Bool)

(assert (=> b!1837450 (= e!1174140 (and tp!519720 (inv!26256 (tag!4063 (h!25586 (t!171380 (t!171380 rs!808))))) (inv!26259 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) e!1174141))))

(declare-fun b!1837449 () Bool)

(declare-fun e!1174139 () Bool)

(declare-fun tp!519719 () Bool)

(assert (=> b!1837449 (= e!1174139 (and e!1174140 tp!519719))))

(assert (=> b!1836464 (= tp!519527 e!1174139)))

(assert (= b!1837450 b!1837451))

(assert (= b!1837449 b!1837450))

(assert (= (and b!1836464 ((_ is Cons!20185) (t!171380 (t!171380 rs!808)))) b!1837449))

(declare-fun m!2265429 () Bool)

(assert (=> b!1837450 m!2265429))

(declare-fun m!2265431 () Bool)

(assert (=> b!1837450 m!2265431))

(declare-fun b!1837453 () Bool)

(declare-fun e!1174143 () Bool)

(declare-fun tp!519725 () Bool)

(declare-fun tp!519727 () Bool)

(assert (=> b!1837453 (= e!1174143 (and tp!519725 tp!519727))))

(assert (=> b!1836462 (= tp!519525 e!1174143)))

(declare-fun b!1837455 () Bool)

(declare-fun tp!519723 () Bool)

(declare-fun tp!519724 () Bool)

(assert (=> b!1837455 (= e!1174143 (and tp!519723 tp!519724))))

(declare-fun b!1837454 () Bool)

(declare-fun tp!519726 () Bool)

(assert (=> b!1837454 (= e!1174143 tp!519726)))

(declare-fun b!1837452 () Bool)

(assert (=> b!1837452 (= e!1174143 tp_is_empty!8189)))

(assert (= (and b!1836462 ((_ is ElementMatch!4977) (reg!5306 (regex!3649 (rule!5839 token!567))))) b!1837452))

(assert (= (and b!1836462 ((_ is Concat!8716) (reg!5306 (regex!3649 (rule!5839 token!567))))) b!1837453))

(assert (= (and b!1836462 ((_ is Star!4977) (reg!5306 (regex!3649 (rule!5839 token!567))))) b!1837454))

(assert (= (and b!1836462 ((_ is Union!4977) (reg!5306 (regex!3649 (rule!5839 token!567))))) b!1837455))

(declare-fun b!1837457 () Bool)

(declare-fun e!1174144 () Bool)

(declare-fun tp!519730 () Bool)

(declare-fun tp!519732 () Bool)

(assert (=> b!1837457 (= e!1174144 (and tp!519730 tp!519732))))

(assert (=> b!1836473 (= tp!519539 e!1174144)))

(declare-fun b!1837459 () Bool)

(declare-fun tp!519728 () Bool)

(declare-fun tp!519729 () Bool)

(assert (=> b!1837459 (= e!1174144 (and tp!519728 tp!519729))))

(declare-fun b!1837458 () Bool)

(declare-fun tp!519731 () Bool)

(assert (=> b!1837458 (= e!1174144 tp!519731)))

(declare-fun b!1837456 () Bool)

(assert (=> b!1837456 (= e!1174144 tp_is_empty!8189)))

(assert (= (and b!1836473 ((_ is ElementMatch!4977) (reg!5306 (regex!3649 (h!25586 rules!4610))))) b!1837456))

(assert (= (and b!1836473 ((_ is Concat!8716) (reg!5306 (regex!3649 (h!25586 rules!4610))))) b!1837457))

(assert (= (and b!1836473 ((_ is Star!4977) (reg!5306 (regex!3649 (h!25586 rules!4610))))) b!1837458))

(assert (= (and b!1836473 ((_ is Union!4977) (reg!5306 (regex!3649 (h!25586 rules!4610))))) b!1837459))

(declare-fun b!1837461 () Bool)

(declare-fun e!1174145 () Bool)

(declare-fun tp!519735 () Bool)

(declare-fun tp!519737 () Bool)

(assert (=> b!1837461 (= e!1174145 (and tp!519735 tp!519737))))

(assert (=> b!1836469 (= tp!519534 e!1174145)))

(declare-fun b!1837463 () Bool)

(declare-fun tp!519733 () Bool)

(declare-fun tp!519734 () Bool)

(assert (=> b!1837463 (= e!1174145 (and tp!519733 tp!519734))))

(declare-fun b!1837462 () Bool)

(declare-fun tp!519736 () Bool)

(assert (=> b!1837462 (= e!1174145 tp!519736)))

(declare-fun b!1837460 () Bool)

(assert (=> b!1837460 (= e!1174145 tp_is_empty!8189)))

(assert (= (and b!1836469 ((_ is ElementMatch!4977) (reg!5306 (regex!3649 rule!580)))) b!1837460))

(assert (= (and b!1836469 ((_ is Concat!8716) (reg!5306 (regex!3649 rule!580)))) b!1837461))

(assert (= (and b!1836469 ((_ is Star!4977) (reg!5306 (regex!3649 rule!580)))) b!1837462))

(assert (= (and b!1836469 ((_ is Union!4977) (reg!5306 (regex!3649 rule!580)))) b!1837463))

(declare-fun b!1837465 () Bool)

(declare-fun e!1174146 () Bool)

(declare-fun tp!519740 () Bool)

(declare-fun tp!519742 () Bool)

(assert (=> b!1837465 (= e!1174146 (and tp!519740 tp!519742))))

(assert (=> b!1836474 (= tp!519536 e!1174146)))

(declare-fun b!1837467 () Bool)

(declare-fun tp!519738 () Bool)

(declare-fun tp!519739 () Bool)

(assert (=> b!1837467 (= e!1174146 (and tp!519738 tp!519739))))

(declare-fun b!1837466 () Bool)

(declare-fun tp!519741 () Bool)

(assert (=> b!1837466 (= e!1174146 tp!519741)))

(declare-fun b!1837464 () Bool)

(assert (=> b!1837464 (= e!1174146 tp_is_empty!8189)))

(assert (= (and b!1836474 ((_ is ElementMatch!4977) (regOne!10467 (regex!3649 (h!25586 rules!4610))))) b!1837464))

(assert (= (and b!1836474 ((_ is Concat!8716) (regOne!10467 (regex!3649 (h!25586 rules!4610))))) b!1837465))

(assert (= (and b!1836474 ((_ is Star!4977) (regOne!10467 (regex!3649 (h!25586 rules!4610))))) b!1837466))

(assert (= (and b!1836474 ((_ is Union!4977) (regOne!10467 (regex!3649 (h!25586 rules!4610))))) b!1837467))

(declare-fun b!1837469 () Bool)

(declare-fun e!1174147 () Bool)

(declare-fun tp!519745 () Bool)

(declare-fun tp!519747 () Bool)

(assert (=> b!1837469 (= e!1174147 (and tp!519745 tp!519747))))

(assert (=> b!1836474 (= tp!519537 e!1174147)))

(declare-fun b!1837471 () Bool)

(declare-fun tp!519743 () Bool)

(declare-fun tp!519744 () Bool)

(assert (=> b!1837471 (= e!1174147 (and tp!519743 tp!519744))))

(declare-fun b!1837470 () Bool)

(declare-fun tp!519746 () Bool)

(assert (=> b!1837470 (= e!1174147 tp!519746)))

(declare-fun b!1837468 () Bool)

(assert (=> b!1837468 (= e!1174147 tp_is_empty!8189)))

(assert (= (and b!1836474 ((_ is ElementMatch!4977) (regTwo!10467 (regex!3649 (h!25586 rules!4610))))) b!1837468))

(assert (= (and b!1836474 ((_ is Concat!8716) (regTwo!10467 (regex!3649 (h!25586 rules!4610))))) b!1837469))

(assert (= (and b!1836474 ((_ is Star!4977) (regTwo!10467 (regex!3649 (h!25586 rules!4610))))) b!1837470))

(assert (= (and b!1836474 ((_ is Union!4977) (regTwo!10467 (regex!3649 (h!25586 rules!4610))))) b!1837471))

(declare-fun b!1837473 () Bool)

(declare-fun e!1174148 () Bool)

(declare-fun tp!519750 () Bool)

(declare-fun tp!519752 () Bool)

(assert (=> b!1837473 (= e!1174148 (and tp!519750 tp!519752))))

(assert (=> b!1836470 (= tp!519531 e!1174148)))

(declare-fun b!1837475 () Bool)

(declare-fun tp!519748 () Bool)

(declare-fun tp!519749 () Bool)

(assert (=> b!1837475 (= e!1174148 (and tp!519748 tp!519749))))

(declare-fun b!1837474 () Bool)

(declare-fun tp!519751 () Bool)

(assert (=> b!1837474 (= e!1174148 tp!519751)))

(declare-fun b!1837472 () Bool)

(assert (=> b!1837472 (= e!1174148 tp_is_empty!8189)))

(assert (= (and b!1836470 ((_ is ElementMatch!4977) (regOne!10467 (regex!3649 rule!580)))) b!1837472))

(assert (= (and b!1836470 ((_ is Concat!8716) (regOne!10467 (regex!3649 rule!580)))) b!1837473))

(assert (= (and b!1836470 ((_ is Star!4977) (regOne!10467 (regex!3649 rule!580)))) b!1837474))

(assert (= (and b!1836470 ((_ is Union!4977) (regOne!10467 (regex!3649 rule!580)))) b!1837475))

(declare-fun b!1837477 () Bool)

(declare-fun e!1174149 () Bool)

(declare-fun tp!519755 () Bool)

(declare-fun tp!519757 () Bool)

(assert (=> b!1837477 (= e!1174149 (and tp!519755 tp!519757))))

(assert (=> b!1836470 (= tp!519532 e!1174149)))

(declare-fun b!1837479 () Bool)

(declare-fun tp!519753 () Bool)

(declare-fun tp!519754 () Bool)

(assert (=> b!1837479 (= e!1174149 (and tp!519753 tp!519754))))

(declare-fun b!1837478 () Bool)

(declare-fun tp!519756 () Bool)

(assert (=> b!1837478 (= e!1174149 tp!519756)))

(declare-fun b!1837476 () Bool)

(assert (=> b!1837476 (= e!1174149 tp_is_empty!8189)))

(assert (= (and b!1836470 ((_ is ElementMatch!4977) (regTwo!10467 (regex!3649 rule!580)))) b!1837476))

(assert (= (and b!1836470 ((_ is Concat!8716) (regTwo!10467 (regex!3649 rule!580)))) b!1837477))

(assert (= (and b!1836470 ((_ is Star!4977) (regTwo!10467 (regex!3649 rule!580)))) b!1837478))

(assert (= (and b!1836470 ((_ is Union!4977) (regTwo!10467 (regex!3649 rule!580)))) b!1837479))

(declare-fun b!1837482 () Bool)

(declare-fun b_free!51479 () Bool)

(declare-fun b_next!52183 () Bool)

(assert (=> b!1837482 (= b_free!51479 (not b_next!52183))))

(declare-fun t!171659 () Bool)

(declare-fun tb!112775 () Bool)

(assert (=> (and b!1837482 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toValue!5200 (transformation!3649 rule!580))) t!171659) tb!112775))

(declare-fun result!135562 () Bool)

(assert (= result!135562 result!135456))

(assert (=> d!561781 t!171659))

(declare-fun t!171661 () Bool)

(declare-fun tb!112777 () Bool)

(assert (=> (and b!1837482 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toValue!5200 (transformation!3649 rule!580))) t!171661) tb!112777))

(declare-fun result!135564 () Bool)

(assert (= result!135564 result!135298))

(assert (=> d!561345 t!171661))

(assert (=> d!561773 t!171659))

(declare-fun t!171663 () Bool)

(declare-fun tb!112779 () Bool)

(assert (=> (and b!1837482 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171663) tb!112779))

(declare-fun result!135566 () Bool)

(assert (= result!135566 result!135480))

(assert (=> d!561841 t!171663))

(declare-fun tb!112781 () Bool)

(declare-fun t!171665 () Bool)

(assert (=> (and b!1837482 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toValue!5200 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171665) tb!112781))

(declare-fun result!135568 () Bool)

(assert (= result!135568 result!135384))

(assert (=> d!561565 t!171665))

(declare-fun t!171667 () Bool)

(declare-fun tb!112783 () Bool)

(assert (=> (and b!1837482 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toValue!5200 (transformation!3649 rule!580))) t!171667) tb!112783))

(declare-fun result!135570 () Bool)

(assert (= result!135570 result!135372))

(assert (=> d!561539 t!171667))

(declare-fun b_and!143597 () Bool)

(declare-fun tp!519761 () Bool)

(assert (=> b!1837482 (= tp!519761 (and (=> t!171659 result!135562) (=> t!171665 result!135568) (=> t!171667 result!135570) (=> t!171661 result!135564) (=> t!171663 result!135566) b_and!143597))))

(declare-fun b_free!51481 () Bool)

(declare-fun b_next!52185 () Bool)

(assert (=> b!1837482 (= b_free!51481 (not b_next!52185))))

(declare-fun tb!112785 () Bool)

(declare-fun t!171669 () Bool)

(assert (=> (and b!1837482 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toChars!5059 (transformation!3649 rule!580))) t!171669) tb!112785))

(declare-fun result!135572 () Bool)

(assert (= result!135572 result!135468))

(assert (=> d!561781 t!171669))

(declare-fun t!171671 () Bool)

(declare-fun tb!112787 () Bool)

(assert (=> (and b!1837482 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712794)))))) t!171671) tb!112787))

(declare-fun result!135574 () Bool)

(assert (= result!135574 result!135360))

(assert (=> d!561519 t!171671))

(declare-fun tb!112789 () Bool)

(declare-fun t!171673 () Bool)

(assert (=> (and b!1837482 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toChars!5059 (transformation!3649 (rule!5839 token!567)))) t!171673) tb!112789))

(declare-fun result!135576 () Bool)

(assert (= result!135576 result!135268))

(assert (=> d!561367 t!171673))

(assert (=> b!1835938 t!171673))

(declare-fun t!171675 () Bool)

(declare-fun tb!112791 () Bool)

(assert (=> (and b!1837482 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toChars!5059 (transformation!3649 (rule!5839 (_1!11219 (get!6231 lt!712672)))))) t!171675) tb!112791))

(declare-fun result!135578 () Bool)

(assert (= result!135578 result!135348))

(assert (=> d!561503 t!171675))

(declare-fun tp!519760 () Bool)

(declare-fun b_and!143599 () Bool)

(assert (=> b!1837482 (= tp!519760 (and (=> t!171669 result!135572) (=> t!171675 result!135578) (=> t!171673 result!135576) (=> t!171671 result!135574) b_and!143599))))

(declare-fun e!1174152 () Bool)

(assert (=> b!1837482 (= e!1174152 (and tp!519761 tp!519760))))

(declare-fun b!1837481 () Bool)

(declare-fun tp!519759 () Bool)

(declare-fun e!1174151 () Bool)

(assert (=> b!1837481 (= e!1174151 (and tp!519759 (inv!26256 (tag!4063 (h!25586 (t!171380 (t!171380 rules!4610))))) (inv!26259 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) e!1174152))))

(declare-fun b!1837480 () Bool)

(declare-fun e!1174150 () Bool)

(declare-fun tp!519758 () Bool)

(assert (=> b!1837480 (= e!1174150 (and e!1174151 tp!519758))))

(assert (=> b!1836436 (= tp!519498 e!1174150)))

(assert (= b!1837481 b!1837482))

(assert (= b!1837480 b!1837481))

(assert (= (and b!1836436 ((_ is Cons!20185) (t!171380 (t!171380 rules!4610)))) b!1837480))

(declare-fun m!2265433 () Bool)

(assert (=> b!1837481 m!2265433))

(declare-fun m!2265435 () Bool)

(assert (=> b!1837481 m!2265435))

(declare-fun b!1837484 () Bool)

(declare-fun e!1174154 () Bool)

(declare-fun tp!519764 () Bool)

(declare-fun tp!519766 () Bool)

(assert (=> b!1837484 (= e!1174154 (and tp!519764 tp!519766))))

(assert (=> b!1836455 (= tp!519517 e!1174154)))

(declare-fun b!1837486 () Bool)

(declare-fun tp!519762 () Bool)

(declare-fun tp!519763 () Bool)

(assert (=> b!1837486 (= e!1174154 (and tp!519762 tp!519763))))

(declare-fun b!1837485 () Bool)

(declare-fun tp!519765 () Bool)

(assert (=> b!1837485 (= e!1174154 tp!519765)))

(declare-fun b!1837483 () Bool)

(assert (=> b!1837483 (= e!1174154 tp_is_empty!8189)))

(assert (= (and b!1836455 ((_ is ElementMatch!4977) (regOne!10466 (regex!3649 (h!25586 rs!808))))) b!1837483))

(assert (= (and b!1836455 ((_ is Concat!8716) (regOne!10466 (regex!3649 (h!25586 rs!808))))) b!1837484))

(assert (= (and b!1836455 ((_ is Star!4977) (regOne!10466 (regex!3649 (h!25586 rs!808))))) b!1837485))

(assert (= (and b!1836455 ((_ is Union!4977) (regOne!10466 (regex!3649 (h!25586 rs!808))))) b!1837486))

(declare-fun b!1837488 () Bool)

(declare-fun e!1174155 () Bool)

(declare-fun tp!519769 () Bool)

(declare-fun tp!519771 () Bool)

(assert (=> b!1837488 (= e!1174155 (and tp!519769 tp!519771))))

(assert (=> b!1836455 (= tp!519519 e!1174155)))

(declare-fun b!1837490 () Bool)

(declare-fun tp!519767 () Bool)

(declare-fun tp!519768 () Bool)

(assert (=> b!1837490 (= e!1174155 (and tp!519767 tp!519768))))

(declare-fun b!1837489 () Bool)

(declare-fun tp!519770 () Bool)

(assert (=> b!1837489 (= e!1174155 tp!519770)))

(declare-fun b!1837487 () Bool)

(assert (=> b!1837487 (= e!1174155 tp_is_empty!8189)))

(assert (= (and b!1836455 ((_ is ElementMatch!4977) (regTwo!10466 (regex!3649 (h!25586 rs!808))))) b!1837487))

(assert (= (and b!1836455 ((_ is Concat!8716) (regTwo!10466 (regex!3649 (h!25586 rs!808))))) b!1837488))

(assert (= (and b!1836455 ((_ is Star!4977) (regTwo!10466 (regex!3649 (h!25586 rs!808))))) b!1837489))

(assert (= (and b!1836455 ((_ is Union!4977) (regTwo!10466 (regex!3649 (h!25586 rs!808))))) b!1837490))

(declare-fun b!1837492 () Bool)

(declare-fun e!1174156 () Bool)

(declare-fun tp!519774 () Bool)

(declare-fun tp!519776 () Bool)

(assert (=> b!1837492 (= e!1174156 (and tp!519774 tp!519776))))

(assert (=> b!1836456 (= tp!519518 e!1174156)))

(declare-fun b!1837494 () Bool)

(declare-fun tp!519772 () Bool)

(declare-fun tp!519773 () Bool)

(assert (=> b!1837494 (= e!1174156 (and tp!519772 tp!519773))))

(declare-fun b!1837493 () Bool)

(declare-fun tp!519775 () Bool)

(assert (=> b!1837493 (= e!1174156 tp!519775)))

(declare-fun b!1837491 () Bool)

(assert (=> b!1837491 (= e!1174156 tp_is_empty!8189)))

(assert (= (and b!1836456 ((_ is ElementMatch!4977) (reg!5306 (regex!3649 (h!25586 rs!808))))) b!1837491))

(assert (= (and b!1836456 ((_ is Concat!8716) (reg!5306 (regex!3649 (h!25586 rs!808))))) b!1837492))

(assert (= (and b!1836456 ((_ is Star!4977) (reg!5306 (regex!3649 (h!25586 rs!808))))) b!1837493))

(assert (= (and b!1836456 ((_ is Union!4977) (reg!5306 (regex!3649 (h!25586 rs!808))))) b!1837494))

(declare-fun b!1837496 () Bool)

(declare-fun e!1174157 () Bool)

(declare-fun tp!519779 () Bool)

(declare-fun tp!519781 () Bool)

(assert (=> b!1837496 (= e!1174157 (and tp!519779 tp!519781))))

(assert (=> b!1836472 (= tp!519538 e!1174157)))

(declare-fun b!1837498 () Bool)

(declare-fun tp!519777 () Bool)

(declare-fun tp!519778 () Bool)

(assert (=> b!1837498 (= e!1174157 (and tp!519777 tp!519778))))

(declare-fun b!1837497 () Bool)

(declare-fun tp!519780 () Bool)

(assert (=> b!1837497 (= e!1174157 tp!519780)))

(declare-fun b!1837495 () Bool)

(assert (=> b!1837495 (= e!1174157 tp_is_empty!8189)))

(assert (= (and b!1836472 ((_ is ElementMatch!4977) (regOne!10466 (regex!3649 (h!25586 rules!4610))))) b!1837495))

(assert (= (and b!1836472 ((_ is Concat!8716) (regOne!10466 (regex!3649 (h!25586 rules!4610))))) b!1837496))

(assert (= (and b!1836472 ((_ is Star!4977) (regOne!10466 (regex!3649 (h!25586 rules!4610))))) b!1837497))

(assert (= (and b!1836472 ((_ is Union!4977) (regOne!10466 (regex!3649 (h!25586 rules!4610))))) b!1837498))

(declare-fun b!1837500 () Bool)

(declare-fun e!1174158 () Bool)

(declare-fun tp!519784 () Bool)

(declare-fun tp!519786 () Bool)

(assert (=> b!1837500 (= e!1174158 (and tp!519784 tp!519786))))

(assert (=> b!1836472 (= tp!519540 e!1174158)))

(declare-fun b!1837502 () Bool)

(declare-fun tp!519782 () Bool)

(declare-fun tp!519783 () Bool)

(assert (=> b!1837502 (= e!1174158 (and tp!519782 tp!519783))))

(declare-fun b!1837501 () Bool)

(declare-fun tp!519785 () Bool)

(assert (=> b!1837501 (= e!1174158 tp!519785)))

(declare-fun b!1837499 () Bool)

(assert (=> b!1837499 (= e!1174158 tp_is_empty!8189)))

(assert (= (and b!1836472 ((_ is ElementMatch!4977) (regTwo!10466 (regex!3649 (h!25586 rules!4610))))) b!1837499))

(assert (= (and b!1836472 ((_ is Concat!8716) (regTwo!10466 (regex!3649 (h!25586 rules!4610))))) b!1837500))

(assert (= (and b!1836472 ((_ is Star!4977) (regTwo!10466 (regex!3649 (h!25586 rules!4610))))) b!1837501))

(assert (= (and b!1836472 ((_ is Union!4977) (regTwo!10466 (regex!3649 (h!25586 rules!4610))))) b!1837502))

(declare-fun b!1837504 () Bool)

(declare-fun e!1174159 () Bool)

(declare-fun tp!519789 () Bool)

(declare-fun tp!519791 () Bool)

(assert (=> b!1837504 (= e!1174159 (and tp!519789 tp!519791))))

(assert (=> b!1836457 (= tp!519515 e!1174159)))

(declare-fun b!1837506 () Bool)

(declare-fun tp!519787 () Bool)

(declare-fun tp!519788 () Bool)

(assert (=> b!1837506 (= e!1174159 (and tp!519787 tp!519788))))

(declare-fun b!1837505 () Bool)

(declare-fun tp!519790 () Bool)

(assert (=> b!1837505 (= e!1174159 tp!519790)))

(declare-fun b!1837503 () Bool)

(assert (=> b!1837503 (= e!1174159 tp_is_empty!8189)))

(assert (= (and b!1836457 ((_ is ElementMatch!4977) (regOne!10467 (regex!3649 (h!25586 rs!808))))) b!1837503))

(assert (= (and b!1836457 ((_ is Concat!8716) (regOne!10467 (regex!3649 (h!25586 rs!808))))) b!1837504))

(assert (= (and b!1836457 ((_ is Star!4977) (regOne!10467 (regex!3649 (h!25586 rs!808))))) b!1837505))

(assert (= (and b!1836457 ((_ is Union!4977) (regOne!10467 (regex!3649 (h!25586 rs!808))))) b!1837506))

(declare-fun b!1837508 () Bool)

(declare-fun e!1174160 () Bool)

(declare-fun tp!519794 () Bool)

(declare-fun tp!519796 () Bool)

(assert (=> b!1837508 (= e!1174160 (and tp!519794 tp!519796))))

(assert (=> b!1836457 (= tp!519516 e!1174160)))

(declare-fun b!1837510 () Bool)

(declare-fun tp!519792 () Bool)

(declare-fun tp!519793 () Bool)

(assert (=> b!1837510 (= e!1174160 (and tp!519792 tp!519793))))

(declare-fun b!1837509 () Bool)

(declare-fun tp!519795 () Bool)

(assert (=> b!1837509 (= e!1174160 tp!519795)))

(declare-fun b!1837507 () Bool)

(assert (=> b!1837507 (= e!1174160 tp_is_empty!8189)))

(assert (= (and b!1836457 ((_ is ElementMatch!4977) (regTwo!10467 (regex!3649 (h!25586 rs!808))))) b!1837507))

(assert (= (and b!1836457 ((_ is Concat!8716) (regTwo!10467 (regex!3649 (h!25586 rs!808))))) b!1837508))

(assert (= (and b!1836457 ((_ is Star!4977) (regTwo!10467 (regex!3649 (h!25586 rs!808))))) b!1837509))

(assert (= (and b!1836457 ((_ is Union!4977) (regTwo!10467 (regex!3649 (h!25586 rs!808))))) b!1837510))

(declare-fun b!1837512 () Bool)

(declare-fun e!1174161 () Bool)

(declare-fun tp!519799 () Bool)

(declare-fun tp!519801 () Bool)

(assert (=> b!1837512 (= e!1174161 (and tp!519799 tp!519801))))

(assert (=> b!1836468 (= tp!519533 e!1174161)))

(declare-fun b!1837514 () Bool)

(declare-fun tp!519797 () Bool)

(declare-fun tp!519798 () Bool)

(assert (=> b!1837514 (= e!1174161 (and tp!519797 tp!519798))))

(declare-fun b!1837513 () Bool)

(declare-fun tp!519800 () Bool)

(assert (=> b!1837513 (= e!1174161 tp!519800)))

(declare-fun b!1837511 () Bool)

(assert (=> b!1837511 (= e!1174161 tp_is_empty!8189)))

(assert (= (and b!1836468 ((_ is ElementMatch!4977) (regOne!10466 (regex!3649 rule!580)))) b!1837511))

(assert (= (and b!1836468 ((_ is Concat!8716) (regOne!10466 (regex!3649 rule!580)))) b!1837512))

(assert (= (and b!1836468 ((_ is Star!4977) (regOne!10466 (regex!3649 rule!580)))) b!1837513))

(assert (= (and b!1836468 ((_ is Union!4977) (regOne!10466 (regex!3649 rule!580)))) b!1837514))

(declare-fun b!1837516 () Bool)

(declare-fun e!1174162 () Bool)

(declare-fun tp!519804 () Bool)

(declare-fun tp!519806 () Bool)

(assert (=> b!1837516 (= e!1174162 (and tp!519804 tp!519806))))

(assert (=> b!1836468 (= tp!519535 e!1174162)))

(declare-fun b!1837518 () Bool)

(declare-fun tp!519802 () Bool)

(declare-fun tp!519803 () Bool)

(assert (=> b!1837518 (= e!1174162 (and tp!519802 tp!519803))))

(declare-fun b!1837517 () Bool)

(declare-fun tp!519805 () Bool)

(assert (=> b!1837517 (= e!1174162 tp!519805)))

(declare-fun b!1837515 () Bool)

(assert (=> b!1837515 (= e!1174162 tp_is_empty!8189)))

(assert (= (and b!1836468 ((_ is ElementMatch!4977) (regTwo!10466 (regex!3649 rule!580)))) b!1837515))

(assert (= (and b!1836468 ((_ is Concat!8716) (regTwo!10466 (regex!3649 rule!580)))) b!1837516))

(assert (= (and b!1836468 ((_ is Star!4977) (regTwo!10466 (regex!3649 rule!580)))) b!1837517))

(assert (= (and b!1836468 ((_ is Union!4977) (regTwo!10466 (regex!3649 rule!580)))) b!1837518))

(declare-fun b_lambda!61011 () Bool)

(assert (= b_lambda!60937 (or d!561437 b_lambda!61011)))

(declare-fun bs!408457 () Bool)

(declare-fun d!561973 () Bool)

(assert (= bs!408457 (and d!561973 d!561437)))

(assert (=> bs!408457 (= (dynLambda!10059 lambda!72234 (h!25586 rules!4610)) (regex!3649 (h!25586 rules!4610)))))

(assert (=> b!1836536 d!561973))

(declare-fun b_lambda!61013 () Bool)

(assert (= b_lambda!60939 (or (and b!1835914 b_free!51439 (= (toValue!5200 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1835916 b_free!51447 (= (toValue!5200 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1835918 b_free!51443 (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1836438 b_free!51459 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1837451 b_free!51475 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1837482 b_free!51479 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1836466 b_free!51463 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1835904 b_free!51435) b_lambda!61013)))

(declare-fun b_lambda!61015 () Bool)

(assert (= b_lambda!60971 (or (and b!1835914 b_free!51441 (= (toChars!5059 (transformation!3649 (rule!5839 token!567))) (toChars!5059 (transformation!3649 rule!580)))) (and b!1835918 b_free!51445 (= (toChars!5059 (transformation!3649 (h!25586 rules!4610))) (toChars!5059 (transformation!3649 rule!580)))) (and b!1835904 b_free!51437) (and b!1837451 b_free!51477 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toChars!5059 (transformation!3649 rule!580)))) (and b!1836466 b_free!51465 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toChars!5059 (transformation!3649 rule!580)))) (and b!1836438 b_free!51461 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toChars!5059 (transformation!3649 rule!580)))) (and b!1835916 b_free!51449 (= (toChars!5059 (transformation!3649 (h!25586 rs!808))) (toChars!5059 (transformation!3649 rule!580)))) (and b!1837482 b_free!51481 (= (toChars!5059 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toChars!5059 (transformation!3649 rule!580)))) b_lambda!61015)))

(declare-fun b_lambda!61017 () Bool)

(assert (= b_lambda!60983 (or d!561395 b_lambda!61017)))

(declare-fun bs!408458 () Bool)

(declare-fun d!561975 () Bool)

(assert (= bs!408458 (and d!561975 d!561395)))

(assert (=> bs!408458 (= (dynLambda!10059 lambda!72214 (h!25586 rules!4610)) (regex!3649 (h!25586 rules!4610)))))

(assert (=> b!1837223 d!561975))

(declare-fun b_lambda!61019 () Bool)

(assert (= b_lambda!61009 (or b!1835902 b_lambda!61019)))

(declare-fun bs!408459 () Bool)

(declare-fun d!561977 () Bool)

(assert (= bs!408459 (and d!561977 b!1835902)))

(assert (=> bs!408459 (= (dynLambda!10059 lambda!72208 (h!25586 (t!171380 rules!4610))) (regex!3649 (h!25586 (t!171380 rules!4610))))))

(assert (=> b!1837384 d!561977))

(declare-fun b_lambda!61021 () Bool)

(assert (= b_lambda!60969 (or (and b!1835914 b_free!51439 (= (toValue!5200 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1835916 b_free!51447 (= (toValue!5200 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1835918 b_free!51443 (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1836438 b_free!51459 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1837451 b_free!51475 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1837482 b_free!51479 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1836466 b_free!51463 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1835904 b_free!51435) b_lambda!61021)))

(declare-fun b_lambda!61023 () Bool)

(assert (= b_lambda!60935 (or d!561437 b_lambda!61023)))

(declare-fun bs!408460 () Bool)

(declare-fun d!561979 () Bool)

(assert (= bs!408460 (and d!561979 d!561437)))

(assert (=> bs!408460 (= (dynLambda!10065 lambda!72235 (h!25587 (map!4192 rules!4610 lambda!72234))) (validRegex!2035 (h!25587 (map!4192 rules!4610 lambda!72234))))))

(declare-fun m!2265437 () Bool)

(assert (=> bs!408460 m!2265437))

(assert (=> b!1836533 d!561979))

(declare-fun b_lambda!61025 () Bool)

(assert (= b_lambda!60949 (or d!561449 b_lambda!61025)))

(declare-fun bs!408461 () Bool)

(declare-fun d!561981 () Bool)

(assert (= bs!408461 (and d!561981 d!561449)))

(assert (=> bs!408461 (= (dynLambda!10069 lambda!72238 (h!25586 rs!808)) (ruleValid!1139 thiss!28318 (h!25586 rs!808)))))

(assert (=> bs!408461 m!2264531))

(assert (=> b!1836672 d!561981))

(declare-fun b_lambda!61027 () Bool)

(assert (= b_lambda!60973 (or (and b!1835914 b_free!51439 (= (toValue!5200 (transformation!3649 (rule!5839 token!567))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1835916 b_free!51447 (= (toValue!5200 (transformation!3649 (h!25586 rs!808))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1835918 b_free!51443 (= (toValue!5200 (transformation!3649 (h!25586 rules!4610))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1836438 b_free!51459 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rules!4610)))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1837451 b_free!51475 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rs!808))))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1837482 b_free!51479 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 (t!171380 rules!4610))))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1836466 b_free!51463 (= (toValue!5200 (transformation!3649 (h!25586 (t!171380 rs!808)))) (toValue!5200 (transformation!3649 rule!580)))) (and b!1835904 b_free!51435) b_lambda!61027)))

(declare-fun b_lambda!61029 () Bool)

(assert (= b_lambda!60975 (or b!1835902 b_lambda!61029)))

(declare-fun bs!408462 () Bool)

(declare-fun d!561983 () Bool)

(assert (= bs!408462 (and d!561983 b!1835902)))

(assert (=> bs!408462 (= (dynLambda!10059 lambda!72208 (h!25586 (t!171380 rs!808))) (regex!3649 (h!25586 (t!171380 rs!808))))))

(assert (=> b!1837125 d!561983))

(declare-fun b_lambda!61031 () Bool)

(assert (= b_lambda!60945 (or d!561397 b_lambda!61031)))

(declare-fun bs!408463 () Bool)

(declare-fun d!561985 () Bool)

(assert (= bs!408463 (and d!561985 d!561397)))

(assert (=> bs!408463 (= (dynLambda!10065 lambda!72229 (h!25587 (map!4192 rules!4610 lambda!72208))) (validRegex!2035 (h!25587 (map!4192 rules!4610 lambda!72208))))))

(declare-fun m!2265439 () Bool)

(assert (=> bs!408463 m!2265439))

(assert (=> b!1836659 d!561985))

(check-sat (not b!1837480) (not b!1837498) (not d!561593) (not b!1837485) (not b!1837440) (not bm!115031) (not b!1837508) (not b!1836592) b_and!143537 (not b!1837423) (not b!1837253) (not d!561775) (not b!1836666) (not b!1837397) (not d!561509) (not d!561547) (not b!1837406) (not b!1836674) (not b!1836540) (not b!1837209) (not b!1836917) (not b!1837254) (not b!1836908) (not b!1837426) (not b!1837142) (not b!1836525) (not bm!115024) (not b!1836498) (not b!1837424) (not b!1836686) (not d!561613) (not b_next!52147) (not b!1837501) (not bm!115063) (not b!1836558) (not b!1837481) (not b!1837447) (not d!561969) (not b_lambda!61021) (not b!1837201) (not b!1837152) (not b!1835944) (not b!1837314) (not b!1837453) (not b!1836948) (not b_next!52169) (not bm!114986) (not b!1837475) (not d!561957) (not b!1837111) (not b!1836522) (not b!1836493) (not b_lambda!60977) (not b!1836667) (not d!561959) (not d!561557) (not b_next!52145) (not d!561567) (not b!1837422) (not b!1837125) (not b!1837437) (not d!561751) (not b!1836547) (not d!561561) (not b!1837396) (not d!561899) (not b_next!52141) (not bm!115059) (not d!561517) (not b!1837363) (not b!1837513) (not b!1837446) (not b!1837510) (not tb!112697) (not bm!115029) (not tb!112589) b_and!143541 (not b!1836597) (not b!1837489) (not d!561931) (not b!1837382) (not b_next!52181) (not bm!115040) (not b_next!52185) (not b!1836950) (not bm!115026) (not bm!114989) (not b!1837486) (not bm!114990) (not b!1837467) (not b!1837504) (not b_next!52167) (not b!1837120) (not b_next!52143) (not b!1836511) (not b!1837210) (not b!1837184) (not b!1837208) (not b!1836523) (not b!1836534) (not b!1837443) b_and!143595 (not b!1837075) (not b!1837471) (not d!561939) (not b!1837497) (not b!1836693) (not b!1837223) (not b_lambda!61027) (not d!561835) (not b!1836613) (not b!1836484) (not b!1837444) (not b!1836694) (not b!1836689) (not b!1837275) (not d!561901) b_and!143597 (not b!1836490) (not b!1837299) (not b!1836680) (not b!1837119) b_and!143543 (not b!1836968) (not b!1837412) (not b_lambda!61023) (not b!1837155) (not d!561727) (not d!561781) (not b_lambda!60925) (not b!1836660) (not b!1837442) (not b_lambda!61025) (not b!1836491) (not b!1836926) (not b!1837465) (not b!1837154) (not bm!115064) (not b_lambda!60921) (not b!1836487) b_and!143545 (not b!1837400) (not b!1836960) (not b!1836952) (not bm!115028) (not bm!114985) (not b!1837457) (not b!1837512) (not b!1837410) (not d!561543) (not b!1837463) (not b!1837413) (not b!1837488) (not b_lambda!60923) (not b!1837458) b_and!143539 (not b!1836536) (not b!1837402) (not b!1837405) (not b_lambda!61015) (not b!1836550) (not b!1837428) (not d!561733) (not b!1837459) b_and!143561 (not d!561809) (not b!1836481) (not b!1837181) (not tb!112601) (not bm!115067) (not b!1836526) (not b!1837297) (not b_next!52183) (not b_lambda!61011) (not d!561519) (not b!1837415) (not b!1837517) (not b!1837449) (not b!1836683) (not bm!115030) (not b!1836499) (not b_next!52149) (not b!1836594) (not b!1837185) (not b!1837462) (not b!1837103) (not b!1836505) (not d!561929) (not b_lambda!61013) (not bs!408461) (not b!1837493) (not bm!115043) (not b!1836538) (not d!561515) (not b!1837318) b_and!143547 (not b!1837020) (not b!1837395) (not b!1837274) (not b!1837500) (not b!1837140) (not bm!114953) (not b!1836930) (not b!1837438) (not b!1837105) (not d!561963) (not d!561881) (not b!1837454) (not b!1837065) (not b!1837182) (not b_lambda!61031) b_and!143565 (not d!561897) (not b!1837190) tp_is_empty!8189 (not b!1837479) (not d!561855) (not b!1837484) (not b!1837148) (not d!561801) (not b!1837473) (not d!561875) (not d!561537) (not b_lambda!60919) (not b_lambda!60941) (not b!1837502) (not b_lambda!60927) (not b!1837149) (not bs!408463) (not b_lambda!61029) (not d!561747) (not bm!115027) (not b!1837496) (not b_next!52179) b_and!143563 (not b!1837470) (not d!561545) (not bs!408460) (not b!1837180) (not b!1837204) (not d!561849) (not b!1837178) (not b!1837414) (not d!561923) (not tb!112577) (not b_next!52153) (not b!1837450) (not d!561907) (not b!1837492) (not d!561603) (not b!1837421) (not b!1836687) (not d!561549) (not b!1837404) (not d!561971) (not b!1837518) (not d!561771) (not b_next!52165) (not b!1837514) (not b!1837398) (not b!1836909) (not b!1836654) (not b!1837505) b_and!143593 (not b_next!52139) (not b!1837300) (not b!1836957) (not b!1837439) b_and!143567 (not b!1837150) (not b!1836967) (not d!561937) (not b!1837506) (not d!561795) (not b!1837494) (not tb!112565) (not b!1837188) (not b!1837509) (not b!1837324) (not b_lambda!60931) (not bm!115025) (not tb!112673) (not b_lambda!61019) (not b!1837317) (not b!1836596) (not b!1837477) (not b!1837147) (not b!1837194) (not b!1836961) (not b!1837469) (not tb!112685) (not b!1836497) (not d!561925) (not b!1837419) (not b!1836553) (not b!1837179) (not d!561535) (not b!1837255) (not bm!114952) (not d!561967) (not d!561499) (not b!1837177) (not b!1837192) (not d!561889) (not b!1837320) (not b!1836963) (not b_next!52151) (not b!1837461) (not b!1837325) (not bm!115023) (not b!1837516) (not b!1837186) (not b_next!52163) (not b!1837206) (not d!561501) (not d!561497) (not d!561551) (not d!561825) (not b!1837202) (not d!561615) (not b!1837466) (not b!1837417) (not d!561533) (not d!561851) (not d!561575) (not b!1837384) (not d!561503) (not bm!114988) (not b!1836551) (not b_lambda!61017) (not b!1836557) b_and!143599 (not b!1837478) (not d!561935) (not b!1836673) (not d!561813) (not d!561527) (not b!1837474) (not b!1837490) (not b!1836528) (not b!1837455) (not b!1836906) (not b!1836517) (not b!1837200) (not b!1837408) (not b!1837153) (not b_lambda!60933) (not d!561577) (not b!1837418) (not b!1836641) (not b!1837427) (not b!1837280) b_and!143571 (not d!561563) b_and!143569 (not b!1837448))
(check-sat b_and!143537 (not b_next!52147) (not b_next!52169) (not b_next!52145) (not b_next!52141) b_and!143595 b_and!143597 b_and!143543 b_and!143545 (not b_next!52183) (not b_next!52149) b_and!143547 b_and!143565 (not b_next!52153) (not b_next!52165) (not b_next!52151) (not b_next!52163) b_and!143599 b_and!143571 b_and!143569 (not b_next!52181) b_and!143541 (not b_next!52185) (not b_next!52167) (not b_next!52143) b_and!143539 b_and!143561 (not b_next!52179) b_and!143563 b_and!143593 (not b_next!52139) b_and!143567)
