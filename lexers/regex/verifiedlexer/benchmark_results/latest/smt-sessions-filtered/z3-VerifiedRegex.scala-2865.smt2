; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!166926 () Bool)

(assert start!166926)

(declare-fun b!1708776 () Bool)

(declare-fun b_free!46259 () Bool)

(declare-fun b_next!46963 () Bool)

(assert (=> b!1708776 (= b_free!46259 (not b_next!46963))))

(declare-fun tp!488267 () Bool)

(declare-fun b_and!123625 () Bool)

(assert (=> b!1708776 (= tp!488267 b_and!123625)))

(declare-fun b_free!46261 () Bool)

(declare-fun b_next!46965 () Bool)

(assert (=> b!1708776 (= b_free!46261 (not b_next!46965))))

(declare-fun tp!488257 () Bool)

(declare-fun b_and!123627 () Bool)

(assert (=> b!1708776 (= tp!488257 b_and!123627)))

(declare-fun b!1708782 () Bool)

(declare-fun b_free!46263 () Bool)

(declare-fun b_next!46967 () Bool)

(assert (=> b!1708782 (= b_free!46263 (not b_next!46967))))

(declare-fun tp!488258 () Bool)

(declare-fun b_and!123629 () Bool)

(assert (=> b!1708782 (= tp!488258 b_and!123629)))

(declare-fun b_free!46265 () Bool)

(declare-fun b_next!46969 () Bool)

(assert (=> b!1708782 (= b_free!46265 (not b_next!46969))))

(declare-fun tp!488261 () Bool)

(declare-fun b_and!123631 () Bool)

(assert (=> b!1708782 (= tp!488261 b_and!123631)))

(declare-fun b!1708780 () Bool)

(declare-fun b_free!46267 () Bool)

(declare-fun b_next!46971 () Bool)

(assert (=> b!1708780 (= b_free!46267 (not b_next!46971))))

(declare-fun tp!488264 () Bool)

(declare-fun b_and!123633 () Bool)

(assert (=> b!1708780 (= tp!488264 b_and!123633)))

(declare-fun b_free!46269 () Bool)

(declare-fun b_next!46973 () Bool)

(assert (=> b!1708780 (= b_free!46269 (not b_next!46973))))

(declare-fun tp!488266 () Bool)

(declare-fun b_and!123635 () Bool)

(assert (=> b!1708780 (= tp!488266 b_and!123635)))

(declare-fun b!1708767 () Bool)

(declare-fun e!1092924 () Bool)

(assert (=> b!1708767 (= e!1092924 true)))

(declare-datatypes ((C!9412 0))(
  ( (C!9413 (val!5302 Int)) )
))
(declare-datatypes ((List!18711 0))(
  ( (Nil!18641) (Cons!18641 (h!24042 C!9412) (t!158138 List!18711)) )
))
(declare-fun lt!652917 () List!18711)

(declare-fun lt!652915 () List!18711)

(declare-fun isPrefix!1532 (List!18711 List!18711) Bool)

(assert (=> b!1708767 (isPrefix!1532 lt!652917 lt!652915)))

(declare-datatypes ((Unit!32474 0))(
  ( (Unit!32475) )
))
(declare-fun lt!652919 () Unit!32474)

(declare-fun suffix!1421 () List!18711)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1042 (List!18711 List!18711) Unit!32474)

(assert (=> b!1708767 (= lt!652919 (lemmaConcatTwoListThenFirstIsPrefix!1042 lt!652917 suffix!1421))))

(declare-fun ++!5112 (List!18711 List!18711) List!18711)

(assert (=> b!1708767 (= lt!652915 (++!5112 lt!652917 suffix!1421))))

(declare-fun b!1708768 () Bool)

(declare-fun res!765952 () Bool)

(declare-fun e!1092927 () Bool)

(assert (=> b!1708768 (=> (not res!765952) (not e!1092927))))

(declare-datatypes ((List!18712 0))(
  ( (Nil!18642) (Cons!18642 (h!24043 (_ BitVec 16)) (t!158139 List!18712)) )
))
(declare-datatypes ((TokenValue!3381 0))(
  ( (FloatLiteralValue!6762 (text!24112 List!18712)) (TokenValueExt!3380 (__x!12064 Int)) (Broken!16905 (value!103440 List!18712)) (Object!3450) (End!3381) (Def!3381) (Underscore!3381) (Match!3381) (Else!3381) (Error!3381) (Case!3381) (If!3381) (Extends!3381) (Abstract!3381) (Class!3381) (Val!3381) (DelimiterValue!6762 (del!3441 List!18712)) (KeywordValue!3387 (value!103441 List!18712)) (CommentValue!6762 (value!103442 List!18712)) (WhitespaceValue!6762 (value!103443 List!18712)) (IndentationValue!3381 (value!103444 List!18712)) (String!21236) (Int32!3381) (Broken!16906 (value!103445 List!18712)) (Boolean!3382) (Unit!32476) (OperatorValue!3384 (op!3441 List!18712)) (IdentifierValue!6762 (value!103446 List!18712)) (IdentifierValue!6763 (value!103447 List!18712)) (WhitespaceValue!6763 (value!103448 List!18712)) (True!6762) (False!6762) (Broken!16907 (value!103449 List!18712)) (Broken!16908 (value!103450 List!18712)) (True!6763) (RightBrace!3381) (RightBracket!3381) (Colon!3381) (Null!3381) (Comma!3381) (LeftBracket!3381) (False!6763) (LeftBrace!3381) (ImaginaryLiteralValue!3381 (text!24113 List!18712)) (StringLiteralValue!10143 (value!103451 List!18712)) (EOFValue!3381 (value!103452 List!18712)) (IdentValue!3381 (value!103453 List!18712)) (DelimiterValue!6763 (value!103454 List!18712)) (DedentValue!3381 (value!103455 List!18712)) (NewLineValue!3381 (value!103456 List!18712)) (IntegerValue!10143 (value!103457 (_ BitVec 32)) (text!24114 List!18712)) (IntegerValue!10144 (value!103458 Int) (text!24115 List!18712)) (Times!3381) (Or!3381) (Equal!3381) (Minus!3381) (Broken!16909 (value!103459 List!18712)) (And!3381) (Div!3381) (LessEqual!3381) (Mod!3381) (Concat!8000) (Not!3381) (Plus!3381) (SpaceValue!3381 (value!103460 List!18712)) (IntegerValue!10145 (value!103461 Int) (text!24116 List!18712)) (StringLiteralValue!10144 (text!24117 List!18712)) (FloatLiteralValue!6763 (text!24118 List!18712)) (BytesLiteralValue!3381 (value!103462 List!18712)) (CommentValue!6763 (value!103463 List!18712)) (StringLiteralValue!10145 (value!103464 List!18712)) (ErrorTokenValue!3381 (msg!3442 List!18712)) )
))
(declare-datatypes ((Regex!4619 0))(
  ( (ElementMatch!4619 (c!280020 C!9412)) (Concat!8001 (regOne!9750 Regex!4619) (regTwo!9750 Regex!4619)) (EmptyExpr!4619) (Star!4619 (reg!4948 Regex!4619)) (EmptyLang!4619) (Union!4619 (regOne!9751 Regex!4619) (regTwo!9751 Regex!4619)) )
))
(declare-datatypes ((String!21237 0))(
  ( (String!21238 (value!103465 String)) )
))
(declare-datatypes ((IArray!12407 0))(
  ( (IArray!12408 (innerList!6261 List!18711)) )
))
(declare-datatypes ((Conc!6201 0))(
  ( (Node!6201 (left!14872 Conc!6201) (right!15202 Conc!6201) (csize!12632 Int) (cheight!6412 Int)) (Leaf!9067 (xs!9077 IArray!12407) (csize!12633 Int)) (Empty!6201) )
))
(declare-datatypes ((BalanceConc!12346 0))(
  ( (BalanceConc!12347 (c!280021 Conc!6201)) )
))
(declare-datatypes ((TokenValueInjection!6422 0))(
  ( (TokenValueInjection!6423 (toValue!4790 Int) (toChars!4649 Int)) )
))
(declare-datatypes ((Rule!6382 0))(
  ( (Rule!6383 (regex!3291 Regex!4619) (tag!3587 String!21237) (isSeparator!3291 Bool) (transformation!3291 TokenValueInjection!6422)) )
))
(declare-datatypes ((Token!6148 0))(
  ( (Token!6149 (value!103466 TokenValue!3381) (rule!5225 Rule!6382) (size!14832 Int) (originalCharacters!4105 List!18711)) )
))
(declare-fun token!523 () Token!6148)

(declare-fun rule!422 () Rule!6382)

(assert (=> b!1708768 (= res!765952 (= (rule!5225 token!523) rule!422))))

(declare-fun b!1708769 () Bool)

(declare-fun res!765950 () Bool)

(declare-fun e!1092921 () Bool)

(assert (=> b!1708769 (=> (not res!765950) (not e!1092921))))

(declare-datatypes ((List!18713 0))(
  ( (Nil!18643) (Cons!18643 (h!24044 Rule!6382) (t!158140 List!18713)) )
))
(declare-fun rules!3447 () List!18713)

(declare-fun isEmpty!11705 (List!18713) Bool)

(assert (=> b!1708769 (= res!765950 (not (isEmpty!11705 rules!3447)))))

(declare-fun b!1708770 () Bool)

(declare-fun e!1092920 () Bool)

(declare-fun e!1092919 () Bool)

(declare-fun tp!488262 () Bool)

(declare-fun inv!24048 (String!21237) Bool)

(declare-fun inv!24051 (TokenValueInjection!6422) Bool)

(assert (=> b!1708770 (= e!1092919 (and tp!488262 (inv!24048 (tag!3587 rule!422)) (inv!24051 (transformation!3291 rule!422)) e!1092920))))

(declare-fun b!1708772 () Bool)

(declare-fun res!765946 () Bool)

(assert (=> b!1708772 (=> res!765946 e!1092924)))

(declare-datatypes ((LexerInterface!2920 0))(
  ( (LexerInterfaceExt!2917 (__x!12065 Int)) (Lexer!2918) )
))
(declare-fun thiss!24550 () LexerInterface!2920)

(declare-fun prefixMatch!504 (Regex!4619 List!18711) Bool)

(declare-fun rulesRegex!649 (LexerInterface!2920 List!18713) Regex!4619)

(declare-fun head!3824 (List!18711) C!9412)

(assert (=> b!1708772 (= res!765946 (prefixMatch!504 (rulesRegex!649 thiss!24550 rules!3447) (++!5112 lt!652917 (Cons!18641 (head!3824 suffix!1421) Nil!18641))))))

(declare-fun b!1708773 () Bool)

(declare-fun res!765954 () Bool)

(assert (=> b!1708773 (=> (not res!765954) (not e!1092927))))

(declare-datatypes ((tuple2!18366 0))(
  ( (tuple2!18367 (_1!10585 Token!6148) (_2!10585 List!18711)) )
))
(declare-fun lt!652918 () tuple2!18366)

(declare-fun isEmpty!11706 (List!18711) Bool)

(assert (=> b!1708773 (= res!765954 (isEmpty!11706 (_2!10585 lt!652918)))))

(declare-fun b!1708774 () Bool)

(declare-fun res!765948 () Bool)

(assert (=> b!1708774 (=> res!765948 e!1092924)))

(assert (=> b!1708774 (= res!765948 (isEmpty!11706 suffix!1421))))

(declare-fun b!1708775 () Bool)

(declare-fun e!1092929 () Bool)

(assert (=> b!1708775 (= e!1092921 e!1092929)))

(declare-fun res!765947 () Bool)

(assert (=> b!1708775 (=> (not res!765947) (not e!1092929))))

(declare-datatypes ((Option!3615 0))(
  ( (None!3614) (Some!3614 (v!24997 tuple2!18366)) )
))
(declare-fun lt!652916 () Option!3615)

(declare-fun isDefined!2960 (Option!3615) Bool)

(assert (=> b!1708775 (= res!765947 (isDefined!2960 lt!652916))))

(declare-fun maxPrefix!1474 (LexerInterface!2920 List!18713 List!18711) Option!3615)

(assert (=> b!1708775 (= lt!652916 (maxPrefix!1474 thiss!24550 rules!3447 lt!652917))))

(declare-fun list!7518 (BalanceConc!12346) List!18711)

(declare-fun charsOf!1940 (Token!6148) BalanceConc!12346)

(assert (=> b!1708775 (= lt!652917 (list!7518 (charsOf!1940 token!523)))))

(assert (=> b!1708776 (= e!1092920 (and tp!488267 tp!488257))))

(declare-fun b!1708777 () Bool)

(declare-fun e!1092928 () Bool)

(declare-fun e!1092917 () Bool)

(declare-fun tp!488263 () Bool)

(assert (=> b!1708777 (= e!1092928 (and e!1092917 tp!488263))))

(declare-fun b!1708778 () Bool)

(assert (=> b!1708778 (= e!1092929 e!1092927)))

(declare-fun res!765944 () Bool)

(assert (=> b!1708778 (=> (not res!765944) (not e!1092927))))

(assert (=> b!1708778 (= res!765944 (= (_1!10585 lt!652918) token!523))))

(declare-fun get!5480 (Option!3615) tuple2!18366)

(assert (=> b!1708778 (= lt!652918 (get!5480 lt!652916))))

(declare-fun b!1708779 () Bool)

(declare-fun tp!488268 () Bool)

(declare-fun e!1092926 () Bool)

(assert (=> b!1708779 (= e!1092917 (and tp!488268 (inv!24048 (tag!3587 (h!24044 rules!3447))) (inv!24051 (transformation!3291 (h!24044 rules!3447))) e!1092926))))

(declare-fun e!1092932 () Bool)

(assert (=> b!1708780 (= e!1092932 (and tp!488264 tp!488266))))

(declare-fun res!765951 () Bool)

(assert (=> start!166926 (=> (not res!765951) (not e!1092921))))

(get-info :version)

(assert (=> start!166926 (= res!765951 ((_ is Lexer!2918) thiss!24550))))

(assert (=> start!166926 e!1092921))

(declare-fun e!1092918 () Bool)

(assert (=> start!166926 e!1092918))

(assert (=> start!166926 e!1092919))

(assert (=> start!166926 true))

(declare-fun e!1092930 () Bool)

(declare-fun inv!24052 (Token!6148) Bool)

(assert (=> start!166926 (and (inv!24052 token!523) e!1092930)))

(assert (=> start!166926 e!1092928))

(declare-fun b!1708771 () Bool)

(assert (=> b!1708771 (= e!1092927 (not e!1092924))))

(declare-fun res!765949 () Bool)

(assert (=> b!1708771 (=> res!765949 e!1092924)))

(declare-fun matchR!2093 (Regex!4619 List!18711) Bool)

(assert (=> b!1708771 (= res!765949 (not (matchR!2093 (regex!3291 rule!422) lt!652917)))))

(declare-fun ruleValid!790 (LexerInterface!2920 Rule!6382) Bool)

(assert (=> b!1708771 (ruleValid!790 thiss!24550 rule!422)))

(declare-fun lt!652920 () Unit!32474)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!314 (LexerInterface!2920 Rule!6382 List!18713) Unit!32474)

(assert (=> b!1708771 (= lt!652920 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!314 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1708781 () Bool)

(declare-fun e!1092916 () Bool)

(declare-fun tp!488260 () Bool)

(assert (=> b!1708781 (= e!1092916 (and tp!488260 (inv!24048 (tag!3587 (rule!5225 token!523))) (inv!24051 (transformation!3291 (rule!5225 token!523))) e!1092932))))

(assert (=> b!1708782 (= e!1092926 (and tp!488258 tp!488261))))

(declare-fun b!1708783 () Bool)

(declare-fun tp_is_empty!7481 () Bool)

(declare-fun tp!488265 () Bool)

(assert (=> b!1708783 (= e!1092918 (and tp_is_empty!7481 tp!488265))))

(declare-fun b!1708784 () Bool)

(declare-fun res!765953 () Bool)

(assert (=> b!1708784 (=> (not res!765953) (not e!1092921))))

(declare-fun rulesInvariant!2589 (LexerInterface!2920 List!18713) Bool)

(assert (=> b!1708784 (= res!765953 (rulesInvariant!2589 thiss!24550 rules!3447))))

(declare-fun tp!488259 () Bool)

(declare-fun b!1708785 () Bool)

(declare-fun inv!21 (TokenValue!3381) Bool)

(assert (=> b!1708785 (= e!1092930 (and (inv!21 (value!103466 token!523)) e!1092916 tp!488259))))

(declare-fun b!1708786 () Bool)

(declare-fun res!765945 () Bool)

(assert (=> b!1708786 (=> (not res!765945) (not e!1092921))))

(declare-fun contains!3309 (List!18713 Rule!6382) Bool)

(assert (=> b!1708786 (= res!765945 (contains!3309 rules!3447 rule!422))))

(assert (= (and start!166926 res!765951) b!1708769))

(assert (= (and b!1708769 res!765950) b!1708784))

(assert (= (and b!1708784 res!765953) b!1708786))

(assert (= (and b!1708786 res!765945) b!1708775))

(assert (= (and b!1708775 res!765947) b!1708778))

(assert (= (and b!1708778 res!765944) b!1708773))

(assert (= (and b!1708773 res!765954) b!1708768))

(assert (= (and b!1708768 res!765952) b!1708771))

(assert (= (and b!1708771 (not res!765949)) b!1708774))

(assert (= (and b!1708774 (not res!765948)) b!1708772))

(assert (= (and b!1708772 (not res!765946)) b!1708767))

(assert (= (and start!166926 ((_ is Cons!18641) suffix!1421)) b!1708783))

(assert (= b!1708770 b!1708776))

(assert (= start!166926 b!1708770))

(assert (= b!1708781 b!1708780))

(assert (= b!1708785 b!1708781))

(assert (= start!166926 b!1708785))

(assert (= b!1708779 b!1708782))

(assert (= b!1708777 b!1708779))

(assert (= (and start!166926 ((_ is Cons!18643) rules!3447)) b!1708777))

(declare-fun m!2111869 () Bool)

(assert (=> b!1708785 m!2111869))

(declare-fun m!2111871 () Bool)

(assert (=> b!1708767 m!2111871))

(declare-fun m!2111873 () Bool)

(assert (=> b!1708767 m!2111873))

(declare-fun m!2111875 () Bool)

(assert (=> b!1708767 m!2111875))

(declare-fun m!2111877 () Bool)

(assert (=> b!1708771 m!2111877))

(declare-fun m!2111879 () Bool)

(assert (=> b!1708771 m!2111879))

(declare-fun m!2111881 () Bool)

(assert (=> b!1708771 m!2111881))

(declare-fun m!2111883 () Bool)

(assert (=> b!1708772 m!2111883))

(declare-fun m!2111885 () Bool)

(assert (=> b!1708772 m!2111885))

(declare-fun m!2111887 () Bool)

(assert (=> b!1708772 m!2111887))

(assert (=> b!1708772 m!2111883))

(assert (=> b!1708772 m!2111887))

(declare-fun m!2111889 () Bool)

(assert (=> b!1708772 m!2111889))

(declare-fun m!2111891 () Bool)

(assert (=> b!1708770 m!2111891))

(declare-fun m!2111893 () Bool)

(assert (=> b!1708770 m!2111893))

(declare-fun m!2111895 () Bool)

(assert (=> b!1708778 m!2111895))

(declare-fun m!2111897 () Bool)

(assert (=> b!1708775 m!2111897))

(declare-fun m!2111899 () Bool)

(assert (=> b!1708775 m!2111899))

(declare-fun m!2111901 () Bool)

(assert (=> b!1708775 m!2111901))

(assert (=> b!1708775 m!2111901))

(declare-fun m!2111903 () Bool)

(assert (=> b!1708775 m!2111903))

(declare-fun m!2111905 () Bool)

(assert (=> b!1708773 m!2111905))

(declare-fun m!2111907 () Bool)

(assert (=> start!166926 m!2111907))

(declare-fun m!2111909 () Bool)

(assert (=> b!1708786 m!2111909))

(declare-fun m!2111911 () Bool)

(assert (=> b!1708779 m!2111911))

(declare-fun m!2111913 () Bool)

(assert (=> b!1708779 m!2111913))

(declare-fun m!2111915 () Bool)

(assert (=> b!1708774 m!2111915))

(declare-fun m!2111917 () Bool)

(assert (=> b!1708769 m!2111917))

(declare-fun m!2111919 () Bool)

(assert (=> b!1708781 m!2111919))

(declare-fun m!2111921 () Bool)

(assert (=> b!1708781 m!2111921))

(declare-fun m!2111923 () Bool)

(assert (=> b!1708784 m!2111923))

(check-sat (not b_next!46973) b_and!123633 (not b!1708777) b_and!123625 b_and!123629 (not b!1708772) (not b_next!46969) tp_is_empty!7481 (not b!1708771) (not b!1708786) (not b!1708783) b_and!123631 (not b_next!46965) (not b!1708785) b_and!123635 (not start!166926) (not b!1708775) (not b_next!46971) b_and!123627 (not b!1708767) (not b!1708770) (not b_next!46967) (not b!1708773) (not b_next!46963) (not b!1708781) (not b!1708778) (not b!1708769) (not b!1708779) (not b!1708774) (not b!1708784))
(check-sat b_and!123631 (not b_next!46973) b_and!123633 (not b_next!46971) b_and!123627 b_and!123625 b_and!123629 (not b_next!46967) (not b_next!46963) (not b_next!46969) (not b_next!46965) b_and!123635)
