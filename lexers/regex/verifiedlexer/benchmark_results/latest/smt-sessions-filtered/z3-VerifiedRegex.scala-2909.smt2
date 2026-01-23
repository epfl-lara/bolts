; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170514 () Bool)

(assert start!170514)

(declare-fun b!1733745 () Bool)

(declare-fun b_free!47491 () Bool)

(declare-fun b_next!48195 () Bool)

(assert (=> b!1733745 (= b_free!47491 (not b_next!48195))))

(declare-fun tp!494213 () Bool)

(declare-fun b_and!128119 () Bool)

(assert (=> b!1733745 (= tp!494213 b_and!128119)))

(declare-fun b_free!47493 () Bool)

(declare-fun b_next!48197 () Bool)

(assert (=> b!1733745 (= b_free!47493 (not b_next!48197))))

(declare-fun tp!494216 () Bool)

(declare-fun b_and!128121 () Bool)

(assert (=> b!1733745 (= tp!494216 b_and!128121)))

(declare-fun b!1733737 () Bool)

(declare-fun b_free!47495 () Bool)

(declare-fun b_next!48199 () Bool)

(assert (=> b!1733737 (= b_free!47495 (not b_next!48199))))

(declare-fun tp!494208 () Bool)

(declare-fun b_and!128123 () Bool)

(assert (=> b!1733737 (= tp!494208 b_and!128123)))

(declare-fun b_free!47497 () Bool)

(declare-fun b_next!48201 () Bool)

(assert (=> b!1733737 (= b_free!47497 (not b_next!48201))))

(declare-fun tp!494205 () Bool)

(declare-fun b_and!128125 () Bool)

(assert (=> b!1733737 (= tp!494205 b_and!128125)))

(declare-fun b!1733744 () Bool)

(declare-fun b_free!47499 () Bool)

(declare-fun b_next!48203 () Bool)

(assert (=> b!1733744 (= b_free!47499 (not b_next!48203))))

(declare-fun tp!494215 () Bool)

(declare-fun b_and!128127 () Bool)

(assert (=> b!1733744 (= tp!494215 b_and!128127)))

(declare-fun b_free!47501 () Bool)

(declare-fun b_next!48205 () Bool)

(assert (=> b!1733744 (= b_free!47501 (not b_next!48205))))

(declare-fun tp!494207 () Bool)

(declare-fun b_and!128129 () Bool)

(assert (=> b!1733744 (= tp!494207 b_and!128129)))

(declare-fun b!1733760 () Bool)

(declare-fun e!1109355 () Bool)

(assert (=> b!1733760 (= e!1109355 true)))

(declare-fun b!1733759 () Bool)

(declare-fun e!1109354 () Bool)

(assert (=> b!1733759 (= e!1109354 e!1109355)))

(declare-fun b!1733758 () Bool)

(declare-fun e!1109353 () Bool)

(assert (=> b!1733758 (= e!1109353 e!1109354)))

(declare-fun b!1733727 () Bool)

(assert (=> b!1733727 e!1109353))

(assert (= b!1733759 b!1733760))

(assert (= b!1733758 b!1733759))

(assert (= b!1733727 b!1733758))

(declare-fun order!11767 () Int)

(declare-datatypes ((List!19091 0))(
  ( (Nil!19021) (Cons!19021 (h!24422 (_ BitVec 16)) (t!161050 List!19091)) )
))
(declare-datatypes ((TokenValue!3469 0))(
  ( (FloatLiteralValue!6938 (text!24728 List!19091)) (TokenValueExt!3468 (__x!12240 Int)) (Broken!17345 (value!105948 List!19091)) (Object!3538) (End!3469) (Def!3469) (Underscore!3469) (Match!3469) (Else!3469) (Error!3469) (Case!3469) (If!3469) (Extends!3469) (Abstract!3469) (Class!3469) (Val!3469) (DelimiterValue!6938 (del!3529 List!19091)) (KeywordValue!3475 (value!105949 List!19091)) (CommentValue!6938 (value!105950 List!19091)) (WhitespaceValue!6938 (value!105951 List!19091)) (IndentationValue!3469 (value!105952 List!19091)) (String!21676) (Int32!3469) (Broken!17346 (value!105953 List!19091)) (Boolean!3470) (Unit!32890) (OperatorValue!3472 (op!3529 List!19091)) (IdentifierValue!6938 (value!105954 List!19091)) (IdentifierValue!6939 (value!105955 List!19091)) (WhitespaceValue!6939 (value!105956 List!19091)) (True!6938) (False!6938) (Broken!17347 (value!105957 List!19091)) (Broken!17348 (value!105958 List!19091)) (True!6939) (RightBrace!3469) (RightBracket!3469) (Colon!3469) (Null!3469) (Comma!3469) (LeftBracket!3469) (False!6939) (LeftBrace!3469) (ImaginaryLiteralValue!3469 (text!24729 List!19091)) (StringLiteralValue!10407 (value!105959 List!19091)) (EOFValue!3469 (value!105960 List!19091)) (IdentValue!3469 (value!105961 List!19091)) (DelimiterValue!6939 (value!105962 List!19091)) (DedentValue!3469 (value!105963 List!19091)) (NewLineValue!3469 (value!105964 List!19091)) (IntegerValue!10407 (value!105965 (_ BitVec 32)) (text!24730 List!19091)) (IntegerValue!10408 (value!105966 Int) (text!24731 List!19091)) (Times!3469) (Or!3469) (Equal!3469) (Minus!3469) (Broken!17349 (value!105967 List!19091)) (And!3469) (Div!3469) (LessEqual!3469) (Mod!3469) (Concat!8176) (Not!3469) (Plus!3469) (SpaceValue!3469 (value!105968 List!19091)) (IntegerValue!10409 (value!105969 Int) (text!24732 List!19091)) (StringLiteralValue!10408 (text!24733 List!19091)) (FloatLiteralValue!6939 (text!24734 List!19091)) (BytesLiteralValue!3469 (value!105970 List!19091)) (CommentValue!6939 (value!105971 List!19091)) (StringLiteralValue!10409 (value!105972 List!19091)) (ErrorTokenValue!3469 (msg!3530 List!19091)) )
))
(declare-datatypes ((C!9588 0))(
  ( (C!9589 (val!5390 Int)) )
))
(declare-datatypes ((List!19092 0))(
  ( (Nil!19022) (Cons!19022 (h!24423 C!9588) (t!161051 List!19092)) )
))
(declare-datatypes ((Regex!4707 0))(
  ( (ElementMatch!4707 (c!283098 C!9588)) (Concat!8177 (regOne!9926 Regex!4707) (regTwo!9926 Regex!4707)) (EmptyExpr!4707) (Star!4707 (reg!5036 Regex!4707)) (EmptyLang!4707) (Union!4707 (regOne!9927 Regex!4707) (regTwo!9927 Regex!4707)) )
))
(declare-datatypes ((String!21677 0))(
  ( (String!21678 (value!105973 String)) )
))
(declare-datatypes ((IArray!12659 0))(
  ( (IArray!12660 (innerList!6387 List!19092)) )
))
(declare-datatypes ((Conc!6327 0))(
  ( (Node!6327 (left!15198 Conc!6327) (right!15528 Conc!6327) (csize!12884 Int) (cheight!6538 Int)) (Leaf!9237 (xs!9203 IArray!12659) (csize!12885 Int)) (Empty!6327) )
))
(declare-datatypes ((BalanceConc!12598 0))(
  ( (BalanceConc!12599 (c!283099 Conc!6327)) )
))
(declare-datatypes ((TokenValueInjection!6598 0))(
  ( (TokenValueInjection!6599 (toValue!4886 Int) (toChars!4745 Int)) )
))
(declare-datatypes ((Rule!6558 0))(
  ( (Rule!6559 (regex!3379 Regex!4707) (tag!3709 String!21677) (isSeparator!3379 Bool) (transformation!3379 TokenValueInjection!6598)) )
))
(declare-datatypes ((Token!6324 0))(
  ( (Token!6325 (value!105974 TokenValue!3469) (rule!5365 Rule!6558) (size!15114 Int) (originalCharacters!4193 List!19092)) )
))
(declare-datatypes ((tuple2!18694 0))(
  ( (tuple2!18695 (_1!10749 Token!6324) (_2!10749 List!19092)) )
))
(declare-fun lt!665914 () tuple2!18694)

(declare-fun lambda!69440 () Int)

(declare-fun order!11769 () Int)

(declare-fun dynLambda!8902 (Int Int) Int)

(declare-fun dynLambda!8903 (Int Int) Int)

(assert (=> b!1733760 (< (dynLambda!8902 order!11767 (toValue!4886 (transformation!3379 (rule!5365 (_1!10749 lt!665914))))) (dynLambda!8903 order!11769 lambda!69440))))

(declare-fun order!11771 () Int)

(declare-fun dynLambda!8904 (Int Int) Int)

(assert (=> b!1733760 (< (dynLambda!8904 order!11771 (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914))))) (dynLambda!8903 order!11769 lambda!69440))))

(declare-fun b!1733715 () Bool)

(declare-fun rule!422 () Rule!6558)

(declare-fun e!1109319 () Bool)

(declare-fun tp!494210 () Bool)

(declare-fun e!1109335 () Bool)

(declare-fun inv!24612 (String!21677) Bool)

(declare-fun inv!24617 (TokenValueInjection!6598) Bool)

(assert (=> b!1733715 (= e!1109335 (and tp!494210 (inv!24612 (tag!3709 rule!422)) (inv!24617 (transformation!3379 rule!422)) e!1109319))))

(declare-fun b!1733716 () Bool)

(declare-fun e!1109320 () Bool)

(declare-fun e!1109324 () Bool)

(assert (=> b!1733716 (= e!1109320 e!1109324)))

(declare-fun res!778923 () Bool)

(assert (=> b!1733716 (=> res!778923 e!1109324)))

(declare-fun lt!665896 () List!19092)

(declare-fun lt!665887 () List!19092)

(declare-fun isPrefix!1620 (List!19092 List!19092) Bool)

(assert (=> b!1733716 (= res!778923 (not (isPrefix!1620 lt!665896 lt!665887)))))

(declare-fun ++!5204 (List!19092 List!19092) List!19092)

(assert (=> b!1733716 (isPrefix!1620 lt!665896 (++!5204 lt!665896 (_2!10749 lt!665914)))))

(declare-datatypes ((Unit!32891 0))(
  ( (Unit!32892) )
))
(declare-fun lt!665907 () Unit!32891)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1130 (List!19092 List!19092) Unit!32891)

(assert (=> b!1733716 (= lt!665907 (lemmaConcatTwoListThenFirstIsPrefix!1130 lt!665896 (_2!10749 lt!665914)))))

(declare-fun lt!665903 () BalanceConc!12598)

(declare-fun list!7692 (BalanceConc!12598) List!19092)

(assert (=> b!1733716 (= lt!665896 (list!7692 lt!665903))))

(declare-fun charsOf!2028 (Token!6324) BalanceConc!12598)

(assert (=> b!1733716 (= lt!665903 (charsOf!2028 (_1!10749 lt!665914)))))

(declare-fun e!1109343 () Bool)

(assert (=> b!1733716 e!1109343))

(declare-fun res!778910 () Bool)

(assert (=> b!1733716 (=> (not res!778910) (not e!1109343))))

(declare-datatypes ((Option!3782 0))(
  ( (None!3781) (Some!3781 (v!25204 Rule!6558)) )
))
(declare-fun lt!665883 () Option!3782)

(declare-fun isDefined!3125 (Option!3782) Bool)

(assert (=> b!1733716 (= res!778910 (isDefined!3125 lt!665883))))

(declare-datatypes ((LexerInterface!3008 0))(
  ( (LexerInterfaceExt!3005 (__x!12241 Int)) (Lexer!3006) )
))
(declare-fun thiss!24550 () LexerInterface!3008)

(declare-datatypes ((List!19093 0))(
  ( (Nil!19023) (Cons!19023 (h!24424 Rule!6558) (t!161052 List!19093)) )
))
(declare-fun rules!3447 () List!19093)

(declare-fun getRuleFromTag!429 (LexerInterface!3008 List!19093 String!21677) Option!3782)

(assert (=> b!1733716 (= lt!665883 (getRuleFromTag!429 thiss!24550 rules!3447 (tag!3709 (rule!5365 (_1!10749 lt!665914)))))))

(declare-fun lt!665902 () Unit!32891)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!429 (LexerInterface!3008 List!19093 List!19092 Token!6324) Unit!32891)

(assert (=> b!1733716 (= lt!665902 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!429 thiss!24550 rules!3447 lt!665887 (_1!10749 lt!665914)))))

(declare-datatypes ((Option!3783 0))(
  ( (None!3782) (Some!3782 (v!25205 tuple2!18694)) )
))
(declare-fun lt!665886 () Option!3783)

(declare-fun get!5689 (Option!3783) tuple2!18694)

(assert (=> b!1733716 (= lt!665914 (get!5689 lt!665886))))

(declare-fun suffix!1421 () List!19092)

(declare-fun lt!665898 () Unit!32891)

(declare-fun lt!665910 () List!19092)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!532 (LexerInterface!3008 List!19093 List!19092 List!19092) Unit!32891)

(assert (=> b!1733716 (= lt!665898 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!532 thiss!24550 rules!3447 lt!665910 suffix!1421))))

(declare-fun maxPrefix!1562 (LexerInterface!3008 List!19093 List!19092) Option!3783)

(assert (=> b!1733716 (= lt!665886 (maxPrefix!1562 thiss!24550 rules!3447 lt!665887))))

(assert (=> b!1733716 (isPrefix!1620 lt!665910 lt!665887)))

(declare-fun lt!665924 () Unit!32891)

(assert (=> b!1733716 (= lt!665924 (lemmaConcatTwoListThenFirstIsPrefix!1130 lt!665910 suffix!1421))))

(assert (=> b!1733716 (= lt!665887 (++!5204 lt!665910 suffix!1421))))

(declare-fun res!778919 () Bool)

(declare-fun e!1109325 () Bool)

(assert (=> start!170514 (=> (not res!778919) (not e!1109325))))

(get-info :version)

(assert (=> start!170514 (= res!778919 ((_ is Lexer!3006) thiss!24550))))

(assert (=> start!170514 e!1109325))

(declare-fun e!1109330 () Bool)

(assert (=> start!170514 e!1109330))

(assert (=> start!170514 e!1109335))

(assert (=> start!170514 true))

(declare-fun token!523 () Token!6324)

(declare-fun e!1109329 () Bool)

(declare-fun inv!24618 (Token!6324) Bool)

(assert (=> start!170514 (and (inv!24618 token!523) e!1109329)))

(declare-fun e!1109338 () Bool)

(assert (=> start!170514 e!1109338))

(declare-fun b!1733717 () Bool)

(declare-fun e!1109342 () Bool)

(declare-fun tp!494206 () Bool)

(assert (=> b!1733717 (= e!1109338 (and e!1109342 tp!494206))))

(declare-fun b!1733718 () Bool)

(declare-fun e!1109339 () Bool)

(declare-fun lt!665923 () Rule!6558)

(assert (=> b!1733718 (= e!1109339 (= (rule!5365 (_1!10749 lt!665914)) lt!665923))))

(declare-fun b!1733719 () Bool)

(declare-fun e!1109318 () Bool)

(declare-fun e!1109337 () Bool)

(assert (=> b!1733719 (= e!1109318 e!1109337)))

(declare-fun res!778915 () Bool)

(assert (=> b!1733719 (=> res!778915 e!1109337)))

(declare-fun lt!665897 () Int)

(declare-fun lt!665912 () TokenValue!3469)

(assert (=> b!1733719 (= res!778915 (not (= lt!665886 (Some!3782 (tuple2!18695 (Token!6325 lt!665912 (rule!5365 (_1!10749 lt!665914)) lt!665897 lt!665896) (_2!10749 lt!665914))))))))

(declare-fun size!15115 (BalanceConc!12598) Int)

(assert (=> b!1733719 (= lt!665897 (size!15115 lt!665903))))

(declare-fun apply!5184 (TokenValueInjection!6598 BalanceConc!12598) TokenValue!3469)

(assert (=> b!1733719 (= lt!665912 (apply!5184 (transformation!3379 (rule!5365 (_1!10749 lt!665914))) lt!665903))))

(declare-fun lt!665899 () Unit!32891)

(declare-fun lemmaCharactersSize!451 (Token!6324) Unit!32891)

(assert (=> b!1733719 (= lt!665899 (lemmaCharactersSize!451 (_1!10749 lt!665914)))))

(declare-fun lt!665917 () Unit!32891)

(declare-fun lemmaEqSameImage!304 (TokenValueInjection!6598 BalanceConc!12598 BalanceConc!12598) Unit!32891)

(declare-fun seqFromList!2353 (List!19092) BalanceConc!12598)

(assert (=> b!1733719 (= lt!665917 (lemmaEqSameImage!304 (transformation!3379 (rule!5365 (_1!10749 lt!665914))) lt!665903 (seqFromList!2353 (originalCharacters!4193 (_1!10749 lt!665914)))))))

(declare-fun b!1733720 () Bool)

(declare-fun e!1109328 () Bool)

(assert (=> b!1733720 (= e!1109328 e!1109318)))

(declare-fun res!778912 () Bool)

(assert (=> b!1733720 (=> res!778912 e!1109318)))

(declare-fun dynLambda!8905 (Int TokenValue!3469) BalanceConc!12598)

(declare-fun dynLambda!8906 (Int BalanceConc!12598) TokenValue!3469)

(assert (=> b!1733720 (= res!778912 (not (= (list!7692 (dynLambda!8905 (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914)))) (dynLambda!8906 (toValue!4886 (transformation!3379 (rule!5365 (_1!10749 lt!665914)))) lt!665903))) lt!665896)))))

(declare-fun lt!665890 () Unit!32891)

(declare-fun lemmaSemiInverse!525 (TokenValueInjection!6598 BalanceConc!12598) Unit!32891)

(assert (=> b!1733720 (= lt!665890 (lemmaSemiInverse!525 (transformation!3379 (rule!5365 (_1!10749 lt!665914))) lt!665903))))

(declare-fun b!1733721 () Bool)

(declare-fun e!1109333 () Bool)

(assert (=> b!1733721 (= e!1109337 e!1109333)))

(declare-fun res!778914 () Bool)

(assert (=> b!1733721 (=> res!778914 e!1109333)))

(declare-fun lt!665901 () Option!3783)

(declare-fun lt!665888 () List!19092)

(assert (=> b!1733721 (= res!778914 (or (not (= lt!665888 (_2!10749 lt!665914))) (not (= lt!665901 (Some!3782 (tuple2!18695 (_1!10749 lt!665914) lt!665888))))))))

(assert (=> b!1733721 (= (_2!10749 lt!665914) lt!665888)))

(declare-fun lt!665911 () Unit!32891)

(declare-fun lemmaSamePrefixThenSameSuffix!764 (List!19092 List!19092 List!19092 List!19092 List!19092) Unit!32891)

(assert (=> b!1733721 (= lt!665911 (lemmaSamePrefixThenSameSuffix!764 lt!665896 (_2!10749 lt!665914) lt!665896 lt!665888 lt!665887))))

(declare-fun getSuffix!814 (List!19092 List!19092) List!19092)

(assert (=> b!1733721 (= lt!665888 (getSuffix!814 lt!665887 lt!665896))))

(declare-fun lt!665922 () TokenValue!3469)

(declare-fun lt!665891 () Int)

(assert (=> b!1733721 (= lt!665901 (Some!3782 (tuple2!18695 (Token!6325 lt!665922 (rule!5365 (_1!10749 lt!665914)) lt!665891 lt!665896) (_2!10749 lt!665914))))))

(declare-fun maxPrefixOneRule!938 (LexerInterface!3008 Rule!6558 List!19092) Option!3783)

(assert (=> b!1733721 (= lt!665901 (maxPrefixOneRule!938 thiss!24550 (rule!5365 (_1!10749 lt!665914)) lt!665887))))

(declare-fun size!15116 (List!19092) Int)

(assert (=> b!1733721 (= lt!665891 (size!15116 lt!665896))))

(assert (=> b!1733721 (= lt!665922 (apply!5184 (transformation!3379 (rule!5365 (_1!10749 lt!665914))) (seqFromList!2353 lt!665896)))))

(declare-fun lt!665916 () Unit!32891)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!337 (LexerInterface!3008 List!19093 List!19092 List!19092 List!19092 Rule!6558) Unit!32891)

(assert (=> b!1733721 (= lt!665916 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!337 thiss!24550 rules!3447 lt!665896 lt!665887 (_2!10749 lt!665914) (rule!5365 (_1!10749 lt!665914))))))

(declare-fun b!1733722 () Bool)

(declare-fun res!778903 () Bool)

(assert (=> b!1733722 (=> (not res!778903) (not e!1109325))))

(declare-fun rulesInvariant!2677 (LexerInterface!3008 List!19093) Bool)

(assert (=> b!1733722 (= res!778903 (rulesInvariant!2677 thiss!24550 rules!3447))))

(declare-fun b!1733723 () Bool)

(declare-fun res!778907 () Bool)

(assert (=> b!1733723 (=> res!778907 e!1109318)))

(assert (=> b!1733723 (= res!778907 (not (= lt!665903 (dynLambda!8905 (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914)))) (value!105974 (_1!10749 lt!665914))))))))

(declare-fun b!1733724 () Bool)

(declare-fun res!778924 () Bool)

(declare-fun e!1109332 () Bool)

(assert (=> b!1733724 (=> res!778924 e!1109332)))

(declare-fun isEmpty!11969 (List!19092) Bool)

(assert (=> b!1733724 (= res!778924 (isEmpty!11969 suffix!1421))))

(declare-fun b!1733725 () Bool)

(declare-fun e!1109322 () Bool)

(declare-fun e!1109340 () Bool)

(assert (=> b!1733725 (= e!1109322 e!1109340)))

(declare-fun res!778920 () Bool)

(assert (=> b!1733725 (=> (not res!778920) (not e!1109340))))

(declare-fun lt!665885 () tuple2!18694)

(assert (=> b!1733725 (= res!778920 (= (_1!10749 lt!665885) token!523))))

(declare-fun lt!665918 () Option!3783)

(assert (=> b!1733725 (= lt!665885 (get!5689 lt!665918))))

(declare-fun b!1733726 () Bool)

(assert (=> b!1733726 (= e!1109325 e!1109322)))

(declare-fun res!778913 () Bool)

(assert (=> b!1733726 (=> (not res!778913) (not e!1109322))))

(declare-fun isDefined!3126 (Option!3783) Bool)

(assert (=> b!1733726 (= res!778913 (isDefined!3126 lt!665918))))

(assert (=> b!1733726 (= lt!665918 (maxPrefix!1562 thiss!24550 rules!3447 lt!665910))))

(declare-fun lt!665884 () BalanceConc!12598)

(assert (=> b!1733726 (= lt!665910 (list!7692 lt!665884))))

(assert (=> b!1733726 (= lt!665884 (charsOf!2028 token!523))))

(assert (=> b!1733727 (= e!1109324 e!1109328)))

(declare-fun res!778904 () Bool)

(assert (=> b!1733727 (=> res!778904 e!1109328)))

(declare-fun Forall!754 (Int) Bool)

(assert (=> b!1733727 (= res!778904 (not (Forall!754 lambda!69440)))))

(declare-fun lt!665915 () Unit!32891)

(declare-fun lemmaInv!586 (TokenValueInjection!6598) Unit!32891)

(assert (=> b!1733727 (= lt!665915 (lemmaInv!586 (transformation!3379 (rule!5365 (_1!10749 lt!665914)))))))

(declare-fun b!1733728 () Bool)

(declare-fun e!1109327 () Bool)

(declare-fun e!1109344 () Bool)

(assert (=> b!1733728 (= e!1109327 e!1109344)))

(declare-fun res!778922 () Bool)

(assert (=> b!1733728 (=> res!778922 e!1109344)))

(declare-fun lt!665919 () Int)

(assert (=> b!1733728 (= res!778922 (not (= lt!665897 lt!665919)))))

(declare-fun lt!665900 () Unit!32891)

(declare-fun e!1109334 () Unit!32891)

(assert (=> b!1733728 (= lt!665900 e!1109334)))

(declare-fun c!283096 () Bool)

(assert (=> b!1733728 (= c!283096 (< lt!665897 lt!665919))))

(declare-fun b!1733729 () Bool)

(declare-fun Unit!32893 () Unit!32891)

(assert (=> b!1733729 (= e!1109334 Unit!32893)))

(declare-fun b!1733730 () Bool)

(assert (=> b!1733730 (= e!1109344 true)))

(declare-fun lt!665909 () Int)

(assert (=> b!1733730 (= lt!665909 (size!15116 lt!665910))))

(declare-fun b!1733731 () Bool)

(declare-fun res!778917 () Bool)

(assert (=> b!1733731 (=> (not res!778917) (not e!1109325))))

(declare-fun isEmpty!11970 (List!19093) Bool)

(assert (=> b!1733731 (= res!778917 (not (isEmpty!11970 rules!3447)))))

(declare-fun b!1733732 () Bool)

(declare-fun res!778909 () Bool)

(assert (=> b!1733732 (=> (not res!778909) (not e!1109340))))

(assert (=> b!1733732 (= res!778909 (= (rule!5365 token!523) rule!422))))

(declare-fun b!1733733 () Bool)

(declare-fun tp!494212 () Bool)

(declare-fun e!1109326 () Bool)

(assert (=> b!1733733 (= e!1109342 (and tp!494212 (inv!24612 (tag!3709 (h!24424 rules!3447))) (inv!24617 (transformation!3379 (h!24424 rules!3447))) e!1109326))))

(declare-fun b!1733734 () Bool)

(declare-fun res!778918 () Bool)

(assert (=> b!1733734 (=> (not res!778918) (not e!1109340))))

(assert (=> b!1733734 (= res!778918 (isEmpty!11969 (_2!10749 lt!665885)))))

(declare-fun b!1733735 () Bool)

(assert (=> b!1733735 (= e!1109333 e!1109327)))

(declare-fun res!778906 () Bool)

(assert (=> b!1733735 (=> res!778906 e!1109327)))

(declare-fun lt!665921 () Bool)

(assert (=> b!1733735 (= res!778906 lt!665921)))

(declare-fun lt!665894 () Unit!32891)

(declare-fun e!1109336 () Unit!32891)

(assert (=> b!1733735 (= lt!665894 e!1109336)))

(declare-fun c!283097 () Bool)

(assert (=> b!1733735 (= c!283097 lt!665921)))

(assert (=> b!1733735 (= lt!665921 (> lt!665897 lt!665919))))

(assert (=> b!1733735 (= lt!665919 (size!15115 lt!665884))))

(declare-fun lt!665893 () Regex!4707)

(declare-fun matchR!2181 (Regex!4707 List!19092) Bool)

(assert (=> b!1733735 (matchR!2181 lt!665893 lt!665910)))

(declare-fun lt!665913 () Unit!32891)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!128 (LexerInterface!3008 List!19093 List!19092 Token!6324 Rule!6558 List!19092) Unit!32891)

(assert (=> b!1733735 (= lt!665913 (lemmaMaxPrefixThenMatchesRulesRegex!128 thiss!24550 rules!3447 lt!665910 token!523 rule!422 Nil!19022))))

(declare-fun tp!494214 () Bool)

(declare-fun b!1733736 () Bool)

(declare-fun e!1109346 () Bool)

(declare-fun e!1109341 () Bool)

(assert (=> b!1733736 (= e!1109341 (and tp!494214 (inv!24612 (tag!3709 (rule!5365 token!523))) (inv!24617 (transformation!3379 (rule!5365 token!523))) e!1109346))))

(assert (=> b!1733737 (= e!1109346 (and tp!494208 tp!494205))))

(declare-fun b!1733738 () Bool)

(declare-fun res!778911 () Bool)

(assert (=> b!1733738 (=> res!778911 e!1109324)))

(assert (=> b!1733738 (= res!778911 (not (matchR!2181 (regex!3379 (rule!5365 (_1!10749 lt!665914))) lt!665896)))))

(declare-fun b!1733739 () Bool)

(assert (=> b!1733739 (= e!1109343 e!1109339)))

(declare-fun res!778916 () Bool)

(assert (=> b!1733739 (=> (not res!778916) (not e!1109339))))

(assert (=> b!1733739 (= res!778916 (matchR!2181 (regex!3379 lt!665923) (list!7692 (charsOf!2028 (_1!10749 lt!665914)))))))

(declare-fun get!5690 (Option!3782) Rule!6558)

(assert (=> b!1733739 (= lt!665923 (get!5690 lt!665883))))

(declare-fun b!1733740 () Bool)

(declare-fun res!778908 () Bool)

(assert (=> b!1733740 (=> (not res!778908) (not e!1109325))))

(declare-fun contains!3401 (List!19093 Rule!6558) Bool)

(assert (=> b!1733740 (= res!778908 (contains!3401 rules!3447 rule!422))))

(declare-fun b!1733741 () Bool)

(assert (=> b!1733741 (= e!1109340 (not e!1109332))))

(declare-fun res!778905 () Bool)

(assert (=> b!1733741 (=> res!778905 e!1109332)))

(assert (=> b!1733741 (= res!778905 (not (matchR!2181 (regex!3379 rule!422) lt!665910)))))

(declare-fun ruleValid!878 (LexerInterface!3008 Rule!6558) Bool)

(assert (=> b!1733741 (ruleValid!878 thiss!24550 rule!422)))

(declare-fun lt!665905 () Unit!32891)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!402 (LexerInterface!3008 Rule!6558 List!19093) Unit!32891)

(assert (=> b!1733741 (= lt!665905 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!402 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1733742 () Bool)

(declare-fun Unit!32894 () Unit!32891)

(assert (=> b!1733742 (= e!1109336 Unit!32894)))

(declare-fun lt!665920 () Unit!32891)

(assert (=> b!1733742 (= lt!665920 (lemmaMaxPrefixThenMatchesRulesRegex!128 thiss!24550 rules!3447 lt!665887 (_1!10749 lt!665914) (rule!5365 (_1!10749 lt!665914)) (_2!10749 lt!665914)))))

(assert (=> b!1733742 (matchR!2181 lt!665893 lt!665896)))

(declare-fun lt!665889 () List!19092)

(assert (=> b!1733742 (= lt!665889 (getSuffix!814 lt!665887 lt!665910))))

(declare-fun lt!665908 () Unit!32891)

(assert (=> b!1733742 (= lt!665908 (lemmaSamePrefixThenSameSuffix!764 lt!665910 suffix!1421 lt!665910 lt!665889 lt!665887))))

(assert (=> b!1733742 (= suffix!1421 lt!665889)))

(declare-fun lt!665895 () Unit!32891)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!215 (List!19092 List!19092) Unit!32891)

(assert (=> b!1733742 (= lt!665895 (lemmaAddHeadSuffixToPrefixStillPrefix!215 lt!665910 lt!665887))))

(declare-fun head!3952 (List!19092) C!9588)

(assert (=> b!1733742 (isPrefix!1620 (++!5204 lt!665910 (Cons!19022 (head!3952 lt!665889) Nil!19022)) lt!665887)))

(declare-fun lt!665904 () List!19092)

(declare-fun lt!665882 () Unit!32891)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!95 (List!19092 List!19092 List!19092) Unit!32891)

(assert (=> b!1733742 (= lt!665882 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!95 lt!665896 lt!665904 lt!665887))))

(assert (=> b!1733742 (isPrefix!1620 lt!665904 lt!665896)))

(declare-fun lt!665892 () Unit!32891)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!88 (Regex!4707 List!19092 List!19092) Unit!32891)

(assert (=> b!1733742 (= lt!665892 (lemmaNotPrefixMatchThenCannotMatchLonger!88 lt!665893 lt!665904 lt!665896))))

(assert (=> b!1733742 false))

(declare-fun b!1733743 () Bool)

(declare-fun Unit!32895 () Unit!32891)

(assert (=> b!1733743 (= e!1109334 Unit!32895)))

(declare-fun lt!665906 () Unit!32891)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!176 (LexerInterface!3008 List!19093 Rule!6558 List!19092 List!19092 List!19092 Rule!6558) Unit!32891)

(assert (=> b!1733743 (= lt!665906 (lemmaMaxPrefixOutputsMaxPrefix!176 thiss!24550 rules!3447 (rule!5365 (_1!10749 lt!665914)) lt!665896 lt!665887 lt!665910 rule!422))))

(assert (=> b!1733743 false))

(assert (=> b!1733744 (= e!1109319 (and tp!494215 tp!494207))))

(assert (=> b!1733745 (= e!1109326 (and tp!494213 tp!494216))))

(declare-fun b!1733746 () Bool)

(declare-fun tp_is_empty!7657 () Bool)

(declare-fun tp!494209 () Bool)

(assert (=> b!1733746 (= e!1109330 (and tp_is_empty!7657 tp!494209))))

(declare-fun b!1733747 () Bool)

(declare-fun Unit!32896 () Unit!32891)

(assert (=> b!1733747 (= e!1109336 Unit!32896)))

(declare-fun b!1733748 () Bool)

(assert (=> b!1733748 (= e!1109332 e!1109320)))

(declare-fun res!778921 () Bool)

(assert (=> b!1733748 (=> res!778921 e!1109320)))

(declare-fun prefixMatch!592 (Regex!4707 List!19092) Bool)

(assert (=> b!1733748 (= res!778921 (prefixMatch!592 lt!665893 lt!665904))))

(assert (=> b!1733748 (= lt!665904 (++!5204 lt!665910 (Cons!19022 (head!3952 suffix!1421) Nil!19022)))))

(declare-fun rulesRegex!737 (LexerInterface!3008 List!19093) Regex!4707)

(assert (=> b!1733748 (= lt!665893 (rulesRegex!737 thiss!24550 rules!3447))))

(declare-fun b!1733749 () Bool)

(declare-fun tp!494211 () Bool)

(declare-fun inv!21 (TokenValue!3469) Bool)

(assert (=> b!1733749 (= e!1109329 (and (inv!21 (value!105974 token!523)) e!1109341 tp!494211))))

(assert (= (and start!170514 res!778919) b!1733731))

(assert (= (and b!1733731 res!778917) b!1733722))

(assert (= (and b!1733722 res!778903) b!1733740))

(assert (= (and b!1733740 res!778908) b!1733726))

(assert (= (and b!1733726 res!778913) b!1733725))

(assert (= (and b!1733725 res!778920) b!1733734))

(assert (= (and b!1733734 res!778918) b!1733732))

(assert (= (and b!1733732 res!778909) b!1733741))

(assert (= (and b!1733741 (not res!778905)) b!1733724))

(assert (= (and b!1733724 (not res!778924)) b!1733748))

(assert (= (and b!1733748 (not res!778921)) b!1733716))

(assert (= (and b!1733716 res!778910) b!1733739))

(assert (= (and b!1733739 res!778916) b!1733718))

(assert (= (and b!1733716 (not res!778923)) b!1733738))

(assert (= (and b!1733738 (not res!778911)) b!1733727))

(assert (= (and b!1733727 (not res!778904)) b!1733720))

(assert (= (and b!1733720 (not res!778912)) b!1733723))

(assert (= (and b!1733723 (not res!778907)) b!1733719))

(assert (= (and b!1733719 (not res!778915)) b!1733721))

(assert (= (and b!1733721 (not res!778914)) b!1733735))

(assert (= (and b!1733735 c!283097) b!1733742))

(assert (= (and b!1733735 (not c!283097)) b!1733747))

(assert (= (and b!1733735 (not res!778906)) b!1733728))

(assert (= (and b!1733728 c!283096) b!1733743))

(assert (= (and b!1733728 (not c!283096)) b!1733729))

(assert (= (and b!1733728 (not res!778922)) b!1733730))

(assert (= (and start!170514 ((_ is Cons!19022) suffix!1421)) b!1733746))

(assert (= b!1733715 b!1733744))

(assert (= start!170514 b!1733715))

(assert (= b!1733736 b!1733737))

(assert (= b!1733749 b!1733736))

(assert (= start!170514 b!1733749))

(assert (= b!1733733 b!1733745))

(assert (= b!1733717 b!1733733))

(assert (= (and start!170514 ((_ is Cons!19023) rules!3447)) b!1733717))

(declare-fun b_lambda!55391 () Bool)

(assert (=> (not b_lambda!55391) (not b!1733720)))

(declare-fun tb!103377 () Bool)

(declare-fun t!161033 () Bool)

(assert (=> (and b!1733745 (= (toChars!4745 (transformation!3379 (h!24424 rules!3447))) (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914))))) t!161033) tb!103377))

(declare-fun e!1109358 () Bool)

(declare-fun b!1733765 () Bool)

(declare-fun tp!494219 () Bool)

(declare-fun inv!24619 (Conc!6327) Bool)

(assert (=> b!1733765 (= e!1109358 (and (inv!24619 (c!283099 (dynLambda!8905 (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914)))) (dynLambda!8906 (toValue!4886 (transformation!3379 (rule!5365 (_1!10749 lt!665914)))) lt!665903)))) tp!494219))))

(declare-fun result!124308 () Bool)

(declare-fun inv!24620 (BalanceConc!12598) Bool)

(assert (=> tb!103377 (= result!124308 (and (inv!24620 (dynLambda!8905 (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914)))) (dynLambda!8906 (toValue!4886 (transformation!3379 (rule!5365 (_1!10749 lt!665914)))) lt!665903))) e!1109358))))

(assert (= tb!103377 b!1733765))

(declare-fun m!2142773 () Bool)

(assert (=> b!1733765 m!2142773))

(declare-fun m!2142775 () Bool)

(assert (=> tb!103377 m!2142775))

(assert (=> b!1733720 t!161033))

(declare-fun b_and!128131 () Bool)

(assert (= b_and!128121 (and (=> t!161033 result!124308) b_and!128131)))

(declare-fun t!161035 () Bool)

(declare-fun tb!103379 () Bool)

(assert (=> (and b!1733737 (= (toChars!4745 (transformation!3379 (rule!5365 token!523))) (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914))))) t!161035) tb!103379))

(declare-fun result!124312 () Bool)

(assert (= result!124312 result!124308))

(assert (=> b!1733720 t!161035))

(declare-fun b_and!128133 () Bool)

(assert (= b_and!128125 (and (=> t!161035 result!124312) b_and!128133)))

(declare-fun tb!103381 () Bool)

(declare-fun t!161037 () Bool)

(assert (=> (and b!1733744 (= (toChars!4745 (transformation!3379 rule!422)) (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914))))) t!161037) tb!103381))

(declare-fun result!124314 () Bool)

(assert (= result!124314 result!124308))

(assert (=> b!1733720 t!161037))

(declare-fun b_and!128135 () Bool)

(assert (= b_and!128129 (and (=> t!161037 result!124314) b_and!128135)))

(declare-fun b_lambda!55393 () Bool)

(assert (=> (not b_lambda!55393) (not b!1733720)))

(declare-fun t!161039 () Bool)

(declare-fun tb!103383 () Bool)

(assert (=> (and b!1733745 (= (toValue!4886 (transformation!3379 (h!24424 rules!3447))) (toValue!4886 (transformation!3379 (rule!5365 (_1!10749 lt!665914))))) t!161039) tb!103383))

(declare-fun result!124316 () Bool)

(assert (=> tb!103383 (= result!124316 (inv!21 (dynLambda!8906 (toValue!4886 (transformation!3379 (rule!5365 (_1!10749 lt!665914)))) lt!665903)))))

(declare-fun m!2142777 () Bool)

(assert (=> tb!103383 m!2142777))

(assert (=> b!1733720 t!161039))

(declare-fun b_and!128137 () Bool)

(assert (= b_and!128119 (and (=> t!161039 result!124316) b_and!128137)))

(declare-fun t!161041 () Bool)

(declare-fun tb!103385 () Bool)

(assert (=> (and b!1733737 (= (toValue!4886 (transformation!3379 (rule!5365 token!523))) (toValue!4886 (transformation!3379 (rule!5365 (_1!10749 lt!665914))))) t!161041) tb!103385))

(declare-fun result!124320 () Bool)

(assert (= result!124320 result!124316))

(assert (=> b!1733720 t!161041))

(declare-fun b_and!128139 () Bool)

(assert (= b_and!128123 (and (=> t!161041 result!124320) b_and!128139)))

(declare-fun t!161043 () Bool)

(declare-fun tb!103387 () Bool)

(assert (=> (and b!1733744 (= (toValue!4886 (transformation!3379 rule!422)) (toValue!4886 (transformation!3379 (rule!5365 (_1!10749 lt!665914))))) t!161043) tb!103387))

(declare-fun result!124322 () Bool)

(assert (= result!124322 result!124316))

(assert (=> b!1733720 t!161043))

(declare-fun b_and!128141 () Bool)

(assert (= b_and!128127 (and (=> t!161043 result!124322) b_and!128141)))

(declare-fun b_lambda!55395 () Bool)

(assert (=> (not b_lambda!55395) (not b!1733723)))

(declare-fun tb!103389 () Bool)

(declare-fun t!161045 () Bool)

(assert (=> (and b!1733745 (= (toChars!4745 (transformation!3379 (h!24424 rules!3447))) (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914))))) t!161045) tb!103389))

(declare-fun b!1733768 () Bool)

(declare-fun e!1109362 () Bool)

(declare-fun tp!494220 () Bool)

(assert (=> b!1733768 (= e!1109362 (and (inv!24619 (c!283099 (dynLambda!8905 (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914)))) (value!105974 (_1!10749 lt!665914))))) tp!494220))))

(declare-fun result!124324 () Bool)

(assert (=> tb!103389 (= result!124324 (and (inv!24620 (dynLambda!8905 (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914)))) (value!105974 (_1!10749 lt!665914)))) e!1109362))))

(assert (= tb!103389 b!1733768))

(declare-fun m!2142779 () Bool)

(assert (=> b!1733768 m!2142779))

(declare-fun m!2142781 () Bool)

(assert (=> tb!103389 m!2142781))

(assert (=> b!1733723 t!161045))

(declare-fun b_and!128143 () Bool)

(assert (= b_and!128131 (and (=> t!161045 result!124324) b_and!128143)))

(declare-fun t!161047 () Bool)

(declare-fun tb!103391 () Bool)

(assert (=> (and b!1733737 (= (toChars!4745 (transformation!3379 (rule!5365 token!523))) (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914))))) t!161047) tb!103391))

(declare-fun result!124326 () Bool)

(assert (= result!124326 result!124324))

(assert (=> b!1733723 t!161047))

(declare-fun b_and!128145 () Bool)

(assert (= b_and!128133 (and (=> t!161047 result!124326) b_and!128145)))

(declare-fun t!161049 () Bool)

(declare-fun tb!103393 () Bool)

(assert (=> (and b!1733744 (= (toChars!4745 (transformation!3379 rule!422)) (toChars!4745 (transformation!3379 (rule!5365 (_1!10749 lt!665914))))) t!161049) tb!103393))

(declare-fun result!124328 () Bool)

(assert (= result!124328 result!124324))

(assert (=> b!1733723 t!161049))

(declare-fun b_and!128147 () Bool)

(assert (= b_and!128135 (and (=> t!161049 result!124328) b_and!128147)))

(declare-fun m!2142783 () Bool)

(assert (=> b!1733748 m!2142783))

(declare-fun m!2142785 () Bool)

(assert (=> b!1733748 m!2142785))

(declare-fun m!2142787 () Bool)

(assert (=> b!1733748 m!2142787))

(declare-fun m!2142789 () Bool)

(assert (=> b!1733748 m!2142789))

(declare-fun m!2142791 () Bool)

(assert (=> b!1733742 m!2142791))

(declare-fun m!2142793 () Bool)

(assert (=> b!1733742 m!2142793))

(declare-fun m!2142795 () Bool)

(assert (=> b!1733742 m!2142795))

(declare-fun m!2142797 () Bool)

(assert (=> b!1733742 m!2142797))

(declare-fun m!2142799 () Bool)

(assert (=> b!1733742 m!2142799))

(assert (=> b!1733742 m!2142795))

(declare-fun m!2142801 () Bool)

(assert (=> b!1733742 m!2142801))

(declare-fun m!2142803 () Bool)

(assert (=> b!1733742 m!2142803))

(declare-fun m!2142805 () Bool)

(assert (=> b!1733742 m!2142805))

(declare-fun m!2142807 () Bool)

(assert (=> b!1733742 m!2142807))

(declare-fun m!2142809 () Bool)

(assert (=> b!1733742 m!2142809))

(declare-fun m!2142811 () Bool)

(assert (=> b!1733742 m!2142811))

(declare-fun m!2142813 () Bool)

(assert (=> b!1733727 m!2142813))

(declare-fun m!2142815 () Bool)

(assert (=> b!1733727 m!2142815))

(declare-fun m!2142817 () Bool)

(assert (=> b!1733738 m!2142817))

(declare-fun m!2142819 () Bool)

(assert (=> b!1733730 m!2142819))

(declare-fun m!2142821 () Bool)

(assert (=> b!1733739 m!2142821))

(assert (=> b!1733739 m!2142821))

(declare-fun m!2142823 () Bool)

(assert (=> b!1733739 m!2142823))

(assert (=> b!1733739 m!2142823))

(declare-fun m!2142825 () Bool)

(assert (=> b!1733739 m!2142825))

(declare-fun m!2142827 () Bool)

(assert (=> b!1733739 m!2142827))

(declare-fun m!2142829 () Bool)

(assert (=> b!1733736 m!2142829))

(declare-fun m!2142831 () Bool)

(assert (=> b!1733736 m!2142831))

(declare-fun m!2142833 () Bool)

(assert (=> b!1733722 m!2142833))

(declare-fun m!2142835 () Bool)

(assert (=> b!1733723 m!2142835))

(declare-fun m!2142837 () Bool)

(assert (=> b!1733741 m!2142837))

(declare-fun m!2142839 () Bool)

(assert (=> b!1733741 m!2142839))

(declare-fun m!2142841 () Bool)

(assert (=> b!1733741 m!2142841))

(declare-fun m!2142843 () Bool)

(assert (=> b!1733716 m!2142843))

(declare-fun m!2142845 () Bool)

(assert (=> b!1733716 m!2142845))

(declare-fun m!2142847 () Bool)

(assert (=> b!1733716 m!2142847))

(declare-fun m!2142849 () Bool)

(assert (=> b!1733716 m!2142849))

(declare-fun m!2142851 () Bool)

(assert (=> b!1733716 m!2142851))

(declare-fun m!2142853 () Bool)

(assert (=> b!1733716 m!2142853))

(declare-fun m!2142855 () Bool)

(assert (=> b!1733716 m!2142855))

(declare-fun m!2142857 () Bool)

(assert (=> b!1733716 m!2142857))

(declare-fun m!2142859 () Bool)

(assert (=> b!1733716 m!2142859))

(assert (=> b!1733716 m!2142843))

(declare-fun m!2142861 () Bool)

(assert (=> b!1733716 m!2142861))

(assert (=> b!1733716 m!2142821))

(declare-fun m!2142863 () Bool)

(assert (=> b!1733716 m!2142863))

(declare-fun m!2142865 () Bool)

(assert (=> b!1733716 m!2142865))

(declare-fun m!2142867 () Bool)

(assert (=> b!1733716 m!2142867))

(declare-fun m!2142869 () Bool)

(assert (=> b!1733716 m!2142869))

(declare-fun m!2142871 () Bool)

(assert (=> b!1733740 m!2142871))

(declare-fun m!2142873 () Bool)

(assert (=> b!1733731 m!2142873))

(declare-fun m!2142875 () Bool)

(assert (=> b!1733733 m!2142875))

(declare-fun m!2142877 () Bool)

(assert (=> b!1733733 m!2142877))

(declare-fun m!2142879 () Bool)

(assert (=> b!1733743 m!2142879))

(declare-fun m!2142881 () Bool)

(assert (=> b!1733734 m!2142881))

(declare-fun m!2142883 () Bool)

(assert (=> b!1733721 m!2142883))

(declare-fun m!2142885 () Bool)

(assert (=> b!1733721 m!2142885))

(declare-fun m!2142887 () Bool)

(assert (=> b!1733721 m!2142887))

(declare-fun m!2142889 () Bool)

(assert (=> b!1733721 m!2142889))

(assert (=> b!1733721 m!2142885))

(declare-fun m!2142891 () Bool)

(assert (=> b!1733721 m!2142891))

(declare-fun m!2142893 () Bool)

(assert (=> b!1733721 m!2142893))

(declare-fun m!2142895 () Bool)

(assert (=> b!1733721 m!2142895))

(declare-fun m!2142897 () Bool)

(assert (=> b!1733749 m!2142897))

(declare-fun m!2142899 () Bool)

(assert (=> b!1733720 m!2142899))

(assert (=> b!1733720 m!2142899))

(declare-fun m!2142901 () Bool)

(assert (=> b!1733720 m!2142901))

(assert (=> b!1733720 m!2142901))

(declare-fun m!2142903 () Bool)

(assert (=> b!1733720 m!2142903))

(declare-fun m!2142905 () Bool)

(assert (=> b!1733720 m!2142905))

(declare-fun m!2142907 () Bool)

(assert (=> b!1733719 m!2142907))

(declare-fun m!2142909 () Bool)

(assert (=> b!1733719 m!2142909))

(declare-fun m!2142911 () Bool)

(assert (=> b!1733719 m!2142911))

(declare-fun m!2142913 () Bool)

(assert (=> b!1733719 m!2142913))

(assert (=> b!1733719 m!2142911))

(declare-fun m!2142915 () Bool)

(assert (=> b!1733719 m!2142915))

(declare-fun m!2142917 () Bool)

(assert (=> b!1733715 m!2142917))

(declare-fun m!2142919 () Bool)

(assert (=> b!1733715 m!2142919))

(declare-fun m!2142921 () Bool)

(assert (=> b!1733724 m!2142921))

(declare-fun m!2142923 () Bool)

(assert (=> b!1733735 m!2142923))

(declare-fun m!2142925 () Bool)

(assert (=> b!1733735 m!2142925))

(declare-fun m!2142927 () Bool)

(assert (=> b!1733735 m!2142927))

(declare-fun m!2142929 () Bool)

(assert (=> b!1733725 m!2142929))

(declare-fun m!2142931 () Bool)

(assert (=> b!1733726 m!2142931))

(declare-fun m!2142933 () Bool)

(assert (=> b!1733726 m!2142933))

(declare-fun m!2142935 () Bool)

(assert (=> b!1733726 m!2142935))

(declare-fun m!2142937 () Bool)

(assert (=> b!1733726 m!2142937))

(declare-fun m!2142939 () Bool)

(assert (=> start!170514 m!2142939))

(check-sat (not b!1733768) (not tb!103377) (not b!1733731) (not b!1733724) (not b_next!48203) (not b!1733748) (not b_next!48195) b_and!128145 (not tb!103389) (not b!1733719) (not b_next!48197) (not b!1733733) b_and!128147 (not b_lambda!55395) (not b!1733743) (not b_next!48201) (not b!1733730) (not tb!103383) (not b!1733736) (not b!1733717) (not b!1733741) (not b!1733715) (not b_next!48205) (not b!1733720) (not b_lambda!55393) tp_is_empty!7657 (not b!1733742) (not b!1733749) (not b!1733716) b_and!128137 (not b!1733738) (not b!1733735) (not b!1733739) (not start!170514) (not b!1733746) b_and!128139 (not b!1733722) (not b_lambda!55391) (not b!1733765) (not b!1733740) (not b!1733721) (not b!1733725) (not b!1733734) b_and!128143 (not b!1733726) (not b_next!48199) b_and!128141 (not b!1733727))
(check-sat (not b_next!48201) (not b_next!48203) (not b_next!48205) (not b_next!48195) b_and!128145 b_and!128137 b_and!128139 (not b_next!48197) b_and!128147 b_and!128143 (not b_next!48199) b_and!128141)
