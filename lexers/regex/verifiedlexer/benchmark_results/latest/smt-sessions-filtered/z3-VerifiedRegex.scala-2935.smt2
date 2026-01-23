; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!172542 () Bool)

(assert start!172542)

(declare-fun b!1749625 () Bool)

(declare-fun b_free!48211 () Bool)

(declare-fun b_next!48915 () Bool)

(assert (=> b!1749625 (= b_free!48211 (not b_next!48915))))

(declare-fun tp!497716 () Bool)

(declare-fun b_and!130687 () Bool)

(assert (=> b!1749625 (= tp!497716 b_and!130687)))

(declare-fun b_free!48213 () Bool)

(declare-fun b_next!48917 () Bool)

(assert (=> b!1749625 (= b_free!48213 (not b_next!48917))))

(declare-fun tp!497715 () Bool)

(declare-fun b_and!130689 () Bool)

(assert (=> b!1749625 (= tp!497715 b_and!130689)))

(declare-fun b!1749609 () Bool)

(declare-fun b_free!48215 () Bool)

(declare-fun b_next!48919 () Bool)

(assert (=> b!1749609 (= b_free!48215 (not b_next!48919))))

(declare-fun tp!497711 () Bool)

(declare-fun b_and!130691 () Bool)

(assert (=> b!1749609 (= tp!497711 b_and!130691)))

(declare-fun b_free!48217 () Bool)

(declare-fun b_next!48921 () Bool)

(assert (=> b!1749609 (= b_free!48217 (not b_next!48921))))

(declare-fun tp!497707 () Bool)

(declare-fun b_and!130693 () Bool)

(assert (=> b!1749609 (= tp!497707 b_and!130693)))

(declare-fun b!1749615 () Bool)

(declare-fun b_free!48219 () Bool)

(declare-fun b_next!48923 () Bool)

(assert (=> b!1749615 (= b_free!48219 (not b_next!48923))))

(declare-fun tp!497708 () Bool)

(declare-fun b_and!130695 () Bool)

(assert (=> b!1749615 (= tp!497708 b_and!130695)))

(declare-fun b_free!48221 () Bool)

(declare-fun b_next!48925 () Bool)

(assert (=> b!1749615 (= b_free!48221 (not b_next!48925))))

(declare-fun tp!497706 () Bool)

(declare-fun b_and!130697 () Bool)

(assert (=> b!1749615 (= tp!497706 b_and!130697)))

(declare-fun b!1749650 () Bool)

(declare-fun e!1119765 () Bool)

(assert (=> b!1749650 (= e!1119765 true)))

(declare-fun b!1749649 () Bool)

(declare-fun e!1119764 () Bool)

(assert (=> b!1749649 (= e!1119764 e!1119765)))

(declare-fun b!1749648 () Bool)

(declare-fun e!1119763 () Bool)

(assert (=> b!1749648 (= e!1119763 e!1119764)))

(declare-fun b!1749623 () Bool)

(assert (=> b!1749623 e!1119763))

(assert (= b!1749649 b!1749650))

(assert (= b!1749648 b!1749649))

(assert (= b!1749623 b!1749648))

(declare-datatypes ((List!19306 0))(
  ( (Nil!19236) (Cons!19236 (h!24637 (_ BitVec 16)) (t!162757 List!19306)) )
))
(declare-datatypes ((TokenValue!3521 0))(
  ( (FloatLiteralValue!7042 (text!25092 List!19306)) (TokenValueExt!3520 (__x!12344 Int)) (Broken!17605 (value!107430 List!19306)) (Object!3590) (End!3521) (Def!3521) (Underscore!3521) (Match!3521) (Else!3521) (Error!3521) (Case!3521) (If!3521) (Extends!3521) (Abstract!3521) (Class!3521) (Val!3521) (DelimiterValue!7042 (del!3581 List!19306)) (KeywordValue!3527 (value!107431 List!19306)) (CommentValue!7042 (value!107432 List!19306)) (WhitespaceValue!7042 (value!107433 List!19306)) (IndentationValue!3521 (value!107434 List!19306)) (String!21936) (Int32!3521) (Broken!17606 (value!107435 List!19306)) (Boolean!3522) (Unit!33318) (OperatorValue!3524 (op!3581 List!19306)) (IdentifierValue!7042 (value!107436 List!19306)) (IdentifierValue!7043 (value!107437 List!19306)) (WhitespaceValue!7043 (value!107438 List!19306)) (True!7042) (False!7042) (Broken!17607 (value!107439 List!19306)) (Broken!17608 (value!107440 List!19306)) (True!7043) (RightBrace!3521) (RightBracket!3521) (Colon!3521) (Null!3521) (Comma!3521) (LeftBracket!3521) (False!7043) (LeftBrace!3521) (ImaginaryLiteralValue!3521 (text!25093 List!19306)) (StringLiteralValue!10563 (value!107441 List!19306)) (EOFValue!3521 (value!107442 List!19306)) (IdentValue!3521 (value!107443 List!19306)) (DelimiterValue!7043 (value!107444 List!19306)) (DedentValue!3521 (value!107445 List!19306)) (NewLineValue!3521 (value!107446 List!19306)) (IntegerValue!10563 (value!107447 (_ BitVec 32)) (text!25094 List!19306)) (IntegerValue!10564 (value!107448 Int) (text!25095 List!19306)) (Times!3521) (Or!3521) (Equal!3521) (Minus!3521) (Broken!17609 (value!107449 List!19306)) (And!3521) (Div!3521) (LessEqual!3521) (Mod!3521) (Concat!8280) (Not!3521) (Plus!3521) (SpaceValue!3521 (value!107450 List!19306)) (IntegerValue!10565 (value!107451 Int) (text!25096 List!19306)) (StringLiteralValue!10564 (text!25097 List!19306)) (FloatLiteralValue!7043 (text!25098 List!19306)) (BytesLiteralValue!3521 (value!107452 List!19306)) (CommentValue!7043 (value!107453 List!19306)) (StringLiteralValue!10565 (value!107454 List!19306)) (ErrorTokenValue!3521 (msg!3582 List!19306)) )
))
(declare-datatypes ((C!9692 0))(
  ( (C!9693 (val!5442 Int)) )
))
(declare-datatypes ((List!19307 0))(
  ( (Nil!19237) (Cons!19237 (h!24638 C!9692) (t!162758 List!19307)) )
))
(declare-datatypes ((String!21937 0))(
  ( (String!21938 (value!107455 String)) )
))
(declare-datatypes ((Regex!4759 0))(
  ( (ElementMatch!4759 (c!285334 C!9692)) (Concat!8281 (regOne!10030 Regex!4759) (regTwo!10030 Regex!4759)) (EmptyExpr!4759) (Star!4759 (reg!5088 Regex!4759)) (EmptyLang!4759) (Union!4759 (regOne!10031 Regex!4759) (regTwo!10031 Regex!4759)) )
))
(declare-datatypes ((IArray!12803 0))(
  ( (IArray!12804 (innerList!6459 List!19307)) )
))
(declare-datatypes ((Conc!6399 0))(
  ( (Node!6399 (left!15388 Conc!6399) (right!15718 Conc!6399) (csize!13028 Int) (cheight!6610 Int)) (Leaf!9335 (xs!9275 IArray!12803) (csize!13029 Int)) (Empty!6399) )
))
(declare-datatypes ((BalanceConc!12742 0))(
  ( (BalanceConc!12743 (c!285335 Conc!6399)) )
))
(declare-datatypes ((TokenValueInjection!6702 0))(
  ( (TokenValueInjection!6703 (toValue!4946 Int) (toChars!4805 Int)) )
))
(declare-datatypes ((Rule!6662 0))(
  ( (Rule!6663 (regex!3431 Regex!4759) (tag!3781 String!21937) (isSeparator!3431 Bool) (transformation!3431 TokenValueInjection!6702)) )
))
(declare-datatypes ((Token!6428 0))(
  ( (Token!6429 (value!107456 TokenValue!3521) (rule!5439 Rule!6662) (size!15280 Int) (originalCharacters!4245 List!19307)) )
))
(declare-datatypes ((tuple2!18874 0))(
  ( (tuple2!18875 (_1!10839 Token!6428) (_2!10839 List!19307)) )
))
(declare-fun lt!675073 () tuple2!18874)

(declare-fun order!12071 () Int)

(declare-fun lambda!69836 () Int)

(declare-fun order!12073 () Int)

(declare-fun dynLambda!9156 (Int Int) Int)

(declare-fun dynLambda!9157 (Int Int) Int)

(assert (=> b!1749650 (< (dynLambda!9156 order!12071 (toValue!4946 (transformation!3431 (rule!5439 (_1!10839 lt!675073))))) (dynLambda!9157 order!12073 lambda!69836))))

(declare-fun order!12075 () Int)

(declare-fun dynLambda!9158 (Int Int) Int)

(assert (=> b!1749650 (< (dynLambda!9158 order!12075 (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073))))) (dynLambda!9157 order!12073 lambda!69836))))

(declare-fun e!1119751 () Bool)

(assert (=> b!1749609 (= e!1119751 (and tp!497711 tp!497707))))

(declare-fun b!1749610 () Bool)

(declare-fun e!1119732 () Bool)

(declare-fun e!1119738 () Bool)

(assert (=> b!1749610 (= e!1119732 e!1119738)))

(declare-fun res!786920 () Bool)

(assert (=> b!1749610 (=> res!786920 e!1119738)))

(declare-fun lt!675059 () Regex!4759)

(declare-fun lt!675050 () List!19307)

(declare-fun prefixMatch!644 (Regex!4759 List!19307) Bool)

(assert (=> b!1749610 (= res!786920 (prefixMatch!644 lt!675059 lt!675050))))

(declare-fun lt!675088 () List!19307)

(declare-fun suffix!1421 () List!19307)

(declare-fun ++!5256 (List!19307 List!19307) List!19307)

(declare-fun head!4028 (List!19307) C!9692)

(assert (=> b!1749610 (= lt!675050 (++!5256 lt!675088 (Cons!19237 (head!4028 suffix!1421) Nil!19237)))))

(declare-datatypes ((LexerInterface!3060 0))(
  ( (LexerInterfaceExt!3057 (__x!12345 Int)) (Lexer!3058) )
))
(declare-fun thiss!24550 () LexerInterface!3060)

(declare-datatypes ((List!19308 0))(
  ( (Nil!19238) (Cons!19238 (h!24639 Rule!6662) (t!162759 List!19308)) )
))
(declare-fun rules!3447 () List!19308)

(declare-fun rulesRegex!789 (LexerInterface!3060 List!19308) Regex!4759)

(assert (=> b!1749610 (= lt!675059 (rulesRegex!789 thiss!24550 rules!3447))))

(declare-fun b!1749611 () Bool)

(declare-fun res!786927 () Bool)

(assert (=> b!1749611 (=> res!786927 e!1119732)))

(declare-fun isEmpty!12123 (List!19307) Bool)

(assert (=> b!1749611 (= res!786927 (isEmpty!12123 suffix!1421))))

(declare-fun b!1749612 () Bool)

(declare-fun e!1119756 () Bool)

(declare-fun e!1119735 () Bool)

(declare-fun tp!497713 () Bool)

(assert (=> b!1749612 (= e!1119756 (and e!1119735 tp!497713))))

(declare-fun res!786934 () Bool)

(declare-fun e!1119755 () Bool)

(assert (=> start!172542 (=> (not res!786934) (not e!1119755))))

(get-info :version)

(assert (=> start!172542 (= res!786934 ((_ is Lexer!3058) thiss!24550))))

(assert (=> start!172542 e!1119755))

(declare-fun e!1119731 () Bool)

(assert (=> start!172542 e!1119731))

(declare-fun e!1119752 () Bool)

(assert (=> start!172542 e!1119752))

(assert (=> start!172542 true))

(declare-fun token!523 () Token!6428)

(declare-fun e!1119746 () Bool)

(declare-fun inv!24947 (Token!6428) Bool)

(assert (=> start!172542 (and (inv!24947 token!523) e!1119746)))

(assert (=> start!172542 e!1119756))

(declare-fun b!1749613 () Bool)

(declare-fun e!1119750 () Bool)

(declare-fun e!1119741 () Bool)

(assert (=> b!1749613 (= e!1119750 e!1119741)))

(declare-fun res!786935 () Bool)

(assert (=> b!1749613 (=> (not res!786935) (not e!1119741))))

(declare-fun lt!675068 () Rule!6662)

(declare-fun matchR!2233 (Regex!4759 List!19307) Bool)

(declare-fun list!7792 (BalanceConc!12742) List!19307)

(declare-fun charsOf!2080 (Token!6428) BalanceConc!12742)

(assert (=> b!1749613 (= res!786935 (matchR!2233 (regex!3431 lt!675068) (list!7792 (charsOf!2080 (_1!10839 lt!675073)))))))

(declare-datatypes ((Option!3886 0))(
  ( (None!3885) (Some!3885 (v!25328 Rule!6662)) )
))
(declare-fun lt!675062 () Option!3886)

(declare-fun get!5819 (Option!3886) Rule!6662)

(assert (=> b!1749613 (= lt!675068 (get!5819 lt!675062))))

(declare-fun b!1749614 () Bool)

(declare-datatypes ((Unit!33319 0))(
  ( (Unit!33320) )
))
(declare-fun e!1119745 () Unit!33319)

(declare-fun Unit!33321 () Unit!33319)

(assert (=> b!1749614 (= e!1119745 Unit!33321)))

(declare-fun e!1119749 () Bool)

(assert (=> b!1749615 (= e!1119749 (and tp!497708 tp!497706))))

(declare-fun b!1749616 () Bool)

(declare-fun res!786925 () Bool)

(declare-fun e!1119754 () Bool)

(assert (=> b!1749616 (=> (not res!786925) (not e!1119754))))

(declare-fun rule!422 () Rule!6662)

(assert (=> b!1749616 (= res!786925 (= (rule!5439 token!523) rule!422))))

(declare-fun b!1749617 () Bool)

(declare-fun e!1119747 () Bool)

(assert (=> b!1749617 (= e!1119738 e!1119747)))

(declare-fun res!786936 () Bool)

(assert (=> b!1749617 (=> res!786936 e!1119747)))

(declare-fun lt!675066 () List!19307)

(declare-fun lt!675067 () List!19307)

(declare-fun isPrefix!1672 (List!19307 List!19307) Bool)

(assert (=> b!1749617 (= res!786936 (not (isPrefix!1672 lt!675066 lt!675067)))))

(assert (=> b!1749617 (isPrefix!1672 lt!675066 (++!5256 lt!675066 (_2!10839 lt!675073)))))

(declare-fun lt!675079 () Unit!33319)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1182 (List!19307 List!19307) Unit!33319)

(assert (=> b!1749617 (= lt!675079 (lemmaConcatTwoListThenFirstIsPrefix!1182 lt!675066 (_2!10839 lt!675073)))))

(declare-fun lt!675071 () BalanceConc!12742)

(assert (=> b!1749617 (= lt!675066 (list!7792 lt!675071))))

(assert (=> b!1749617 (= lt!675071 (charsOf!2080 (_1!10839 lt!675073)))))

(assert (=> b!1749617 e!1119750))

(declare-fun res!786921 () Bool)

(assert (=> b!1749617 (=> (not res!786921) (not e!1119750))))

(declare-fun isDefined!3229 (Option!3886) Bool)

(assert (=> b!1749617 (= res!786921 (isDefined!3229 lt!675062))))

(declare-fun getRuleFromTag!481 (LexerInterface!3060 List!19308 String!21937) Option!3886)

(assert (=> b!1749617 (= lt!675062 (getRuleFromTag!481 thiss!24550 rules!3447 (tag!3781 (rule!5439 (_1!10839 lt!675073)))))))

(declare-fun lt!675084 () Unit!33319)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!481 (LexerInterface!3060 List!19308 List!19307 Token!6428) Unit!33319)

(assert (=> b!1749617 (= lt!675084 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!481 thiss!24550 rules!3447 lt!675067 (_1!10839 lt!675073)))))

(declare-datatypes ((Option!3887 0))(
  ( (None!3886) (Some!3886 (v!25329 tuple2!18874)) )
))
(declare-fun lt!675069 () Option!3887)

(declare-fun get!5820 (Option!3887) tuple2!18874)

(assert (=> b!1749617 (= lt!675073 (get!5820 lt!675069))))

(declare-fun lt!675060 () Unit!33319)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!584 (LexerInterface!3060 List!19308 List!19307 List!19307) Unit!33319)

(assert (=> b!1749617 (= lt!675060 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!584 thiss!24550 rules!3447 lt!675088 suffix!1421))))

(declare-fun maxPrefix!1614 (LexerInterface!3060 List!19308 List!19307) Option!3887)

(assert (=> b!1749617 (= lt!675069 (maxPrefix!1614 thiss!24550 rules!3447 lt!675067))))

(assert (=> b!1749617 (isPrefix!1672 lt!675088 lt!675067)))

(declare-fun lt!675077 () Unit!33319)

(assert (=> b!1749617 (= lt!675077 (lemmaConcatTwoListThenFirstIsPrefix!1182 lt!675088 suffix!1421))))

(assert (=> b!1749617 (= lt!675067 (++!5256 lt!675088 suffix!1421))))

(declare-fun b!1749618 () Bool)

(declare-fun e!1119739 () Bool)

(assert (=> b!1749618 (= e!1119755 e!1119739)))

(declare-fun res!786931 () Bool)

(assert (=> b!1749618 (=> (not res!786931) (not e!1119739))))

(declare-fun lt!675080 () Option!3887)

(declare-fun isDefined!3230 (Option!3887) Bool)

(assert (=> b!1749618 (= res!786931 (isDefined!3230 lt!675080))))

(assert (=> b!1749618 (= lt!675080 (maxPrefix!1614 thiss!24550 rules!3447 lt!675088))))

(declare-fun lt!675054 () BalanceConc!12742)

(assert (=> b!1749618 (= lt!675088 (list!7792 lt!675054))))

(assert (=> b!1749618 (= lt!675054 (charsOf!2080 token!523))))

(declare-fun b!1749619 () Bool)

(declare-fun res!786923 () Bool)

(assert (=> b!1749619 (=> (not res!786923) (not e!1119755))))

(declare-fun isEmpty!12124 (List!19308) Bool)

(assert (=> b!1749619 (= res!786923 (not (isEmpty!12124 rules!3447)))))

(declare-fun b!1749620 () Bool)

(assert (=> b!1749620 (= e!1119741 (= (rule!5439 (_1!10839 lt!675073)) lt!675068))))

(declare-fun b!1749621 () Bool)

(declare-fun e!1119748 () Bool)

(declare-fun tp!497714 () Bool)

(declare-fun inv!24942 (String!21937) Bool)

(declare-fun inv!24948 (TokenValueInjection!6702) Bool)

(assert (=> b!1749621 (= e!1119748 (and tp!497714 (inv!24942 (tag!3781 (rule!5439 token!523))) (inv!24948 (transformation!3431 (rule!5439 token!523))) e!1119751))))

(declare-fun b!1749622 () Bool)

(declare-fun e!1119743 () Bool)

(declare-fun lt!675078 () Int)

(declare-fun lt!675051 () Int)

(assert (=> b!1749622 (= e!1119743 (<= lt!675078 lt!675051))))

(declare-fun lt!675055 () Unit!33319)

(assert (=> b!1749622 (= lt!675055 e!1119745)))

(declare-fun c!285333 () Bool)

(assert (=> b!1749622 (= c!285333 (> lt!675078 lt!675051))))

(declare-fun size!15281 (BalanceConc!12742) Int)

(assert (=> b!1749622 (= lt!675051 (size!15281 lt!675054))))

(assert (=> b!1749622 (matchR!2233 lt!675059 lt!675088)))

(declare-fun lt!675076 () Unit!33319)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!162 (LexerInterface!3060 List!19308 List!19307 Token!6428 Rule!6662 List!19307) Unit!33319)

(assert (=> b!1749622 (= lt!675076 (lemmaMaxPrefixThenMatchesRulesRegex!162 thiss!24550 rules!3447 lt!675088 token!523 rule!422 Nil!19237))))

(declare-fun e!1119744 () Bool)

(assert (=> b!1749623 (= e!1119747 e!1119744)))

(declare-fun res!786922 () Bool)

(assert (=> b!1749623 (=> res!786922 e!1119744)))

(declare-fun Forall!800 (Int) Bool)

(assert (=> b!1749623 (= res!786922 (not (Forall!800 lambda!69836)))))

(declare-fun lt!675086 () Unit!33319)

(declare-fun lemmaInv!632 (TokenValueInjection!6702) Unit!33319)

(assert (=> b!1749623 (= lt!675086 (lemmaInv!632 (transformation!3431 (rule!5439 (_1!10839 lt!675073)))))))

(declare-fun b!1749624 () Bool)

(declare-fun e!1119737 () Bool)

(assert (=> b!1749624 (= e!1119737 e!1119743)))

(declare-fun res!786918 () Bool)

(assert (=> b!1749624 (=> res!786918 e!1119743)))

(declare-fun lt!675058 () List!19307)

(declare-fun lt!675070 () Option!3887)

(assert (=> b!1749624 (= res!786918 (or (not (= lt!675058 (_2!10839 lt!675073))) (not (= lt!675070 (Some!3886 (tuple2!18875 (_1!10839 lt!675073) lt!675058))))))))

(assert (=> b!1749624 (= (_2!10839 lt!675073) lt!675058)))

(declare-fun lt!675063 () Unit!33319)

(declare-fun lemmaSamePrefixThenSameSuffix!802 (List!19307 List!19307 List!19307 List!19307 List!19307) Unit!33319)

(assert (=> b!1749624 (= lt!675063 (lemmaSamePrefixThenSameSuffix!802 lt!675066 (_2!10839 lt!675073) lt!675066 lt!675058 lt!675067))))

(declare-fun getSuffix!852 (List!19307 List!19307) List!19307)

(assert (=> b!1749624 (= lt!675058 (getSuffix!852 lt!675067 lt!675066))))

(declare-fun lt!675074 () TokenValue!3521)

(declare-fun lt!675052 () Int)

(assert (=> b!1749624 (= lt!675070 (Some!3886 (tuple2!18875 (Token!6429 lt!675074 (rule!5439 (_1!10839 lt!675073)) lt!675052 lt!675066) (_2!10839 lt!675073))))))

(declare-fun maxPrefixOneRule!986 (LexerInterface!3060 Rule!6662 List!19307) Option!3887)

(assert (=> b!1749624 (= lt!675070 (maxPrefixOneRule!986 thiss!24550 (rule!5439 (_1!10839 lt!675073)) lt!675067))))

(declare-fun size!15282 (List!19307) Int)

(assert (=> b!1749624 (= lt!675052 (size!15282 lt!675066))))

(declare-fun apply!5232 (TokenValueInjection!6702 BalanceConc!12742) TokenValue!3521)

(declare-fun seqFromList!2401 (List!19307) BalanceConc!12742)

(assert (=> b!1749624 (= lt!675074 (apply!5232 (transformation!3431 (rule!5439 (_1!10839 lt!675073))) (seqFromList!2401 lt!675066)))))

(declare-fun lt!675082 () Unit!33319)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!375 (LexerInterface!3060 List!19308 List!19307 List!19307 List!19307 Rule!6662) Unit!33319)

(assert (=> b!1749624 (= lt!675082 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!375 thiss!24550 rules!3447 lt!675066 lt!675067 (_2!10839 lt!675073) (rule!5439 (_1!10839 lt!675073))))))

(declare-fun e!1119740 () Bool)

(assert (=> b!1749625 (= e!1119740 (and tp!497716 tp!497715))))

(declare-fun b!1749626 () Bool)

(declare-fun tp!497709 () Bool)

(assert (=> b!1749626 (= e!1119735 (and tp!497709 (inv!24942 (tag!3781 (h!24639 rules!3447))) (inv!24948 (transformation!3431 (h!24639 rules!3447))) e!1119740))))

(declare-fun b!1749627 () Bool)

(declare-fun e!1119742 () Bool)

(assert (=> b!1749627 (= e!1119742 e!1119737)))

(declare-fun res!786929 () Bool)

(assert (=> b!1749627 (=> res!786929 e!1119737)))

(declare-fun lt!675081 () TokenValue!3521)

(assert (=> b!1749627 (= res!786929 (not (= lt!675069 (Some!3886 (tuple2!18875 (Token!6429 lt!675081 (rule!5439 (_1!10839 lt!675073)) lt!675078 lt!675066) (_2!10839 lt!675073))))))))

(assert (=> b!1749627 (= lt!675078 (size!15281 lt!675071))))

(assert (=> b!1749627 (= lt!675081 (apply!5232 (transformation!3431 (rule!5439 (_1!10839 lt!675073))) lt!675071))))

(declare-fun lt!675072 () Unit!33319)

(declare-fun lemmaCharactersSize!491 (Token!6428) Unit!33319)

(assert (=> b!1749627 (= lt!675072 (lemmaCharactersSize!491 (_1!10839 lt!675073)))))

(declare-fun lt!675085 () Unit!33319)

(declare-fun lemmaEqSameImage!344 (TokenValueInjection!6702 BalanceConc!12742 BalanceConc!12742) Unit!33319)

(assert (=> b!1749627 (= lt!675085 (lemmaEqSameImage!344 (transformation!3431 (rule!5439 (_1!10839 lt!675073))) lt!675071 (seqFromList!2401 (originalCharacters!4245 (_1!10839 lt!675073)))))))

(declare-fun b!1749628 () Bool)

(declare-fun Unit!33322 () Unit!33319)

(assert (=> b!1749628 (= e!1119745 Unit!33322)))

(declare-fun lt!675065 () Unit!33319)

(assert (=> b!1749628 (= lt!675065 (lemmaMaxPrefixThenMatchesRulesRegex!162 thiss!24550 rules!3447 lt!675067 (_1!10839 lt!675073) (rule!5439 (_1!10839 lt!675073)) (_2!10839 lt!675073)))))

(assert (=> b!1749628 (matchR!2233 lt!675059 lt!675066)))

(declare-fun lt!675061 () List!19307)

(assert (=> b!1749628 (= lt!675061 (getSuffix!852 lt!675067 lt!675088))))

(declare-fun lt!675056 () Unit!33319)

(assert (=> b!1749628 (= lt!675056 (lemmaSamePrefixThenSameSuffix!802 lt!675088 suffix!1421 lt!675088 lt!675061 lt!675067))))

(assert (=> b!1749628 (= suffix!1421 lt!675061)))

(declare-fun lt!675064 () Unit!33319)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!247 (List!19307 List!19307) Unit!33319)

(assert (=> b!1749628 (= lt!675064 (lemmaAddHeadSuffixToPrefixStillPrefix!247 lt!675088 lt!675067))))

(assert (=> b!1749628 (isPrefix!1672 (++!5256 lt!675088 (Cons!19237 (head!4028 lt!675061) Nil!19237)) lt!675067)))

(declare-fun lt!675053 () Unit!33319)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!123 (List!19307 List!19307 List!19307) Unit!33319)

(assert (=> b!1749628 (= lt!675053 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!123 lt!675066 lt!675050 lt!675067))))

(assert (=> b!1749628 (isPrefix!1672 lt!675050 lt!675066)))

(declare-fun lt!675083 () Unit!33319)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!116 (Regex!4759 List!19307 List!19307) Unit!33319)

(assert (=> b!1749628 (= lt!675083 (lemmaNotPrefixMatchThenCannotMatchLonger!116 lt!675059 lt!675050 lt!675066))))

(assert (=> b!1749628 false))

(declare-fun b!1749629 () Bool)

(declare-fun tp!497705 () Bool)

(assert (=> b!1749629 (= e!1119752 (and tp!497705 (inv!24942 (tag!3781 rule!422)) (inv!24948 (transformation!3431 rule!422)) e!1119749))))

(declare-fun b!1749630 () Bool)

(declare-fun tp_is_empty!7761 () Bool)

(declare-fun tp!497710 () Bool)

(assert (=> b!1749630 (= e!1119731 (and tp_is_empty!7761 tp!497710))))

(declare-fun tp!497712 () Bool)

(declare-fun b!1749631 () Bool)

(declare-fun inv!21 (TokenValue!3521) Bool)

(assert (=> b!1749631 (= e!1119746 (and (inv!21 (value!107456 token!523)) e!1119748 tp!497712))))

(declare-fun b!1749632 () Bool)

(declare-fun res!786932 () Bool)

(assert (=> b!1749632 (=> (not res!786932) (not e!1119755))))

(declare-fun rulesInvariant!2729 (LexerInterface!3060 List!19308) Bool)

(assert (=> b!1749632 (= res!786932 (rulesInvariant!2729 thiss!24550 rules!3447))))

(declare-fun b!1749633 () Bool)

(assert (=> b!1749633 (= e!1119754 (not e!1119732))))

(declare-fun res!786930 () Bool)

(assert (=> b!1749633 (=> res!786930 e!1119732)))

(assert (=> b!1749633 (= res!786930 (not (matchR!2233 (regex!3431 rule!422) lt!675088)))))

(declare-fun ruleValid!930 (LexerInterface!3060 Rule!6662) Bool)

(assert (=> b!1749633 (ruleValid!930 thiss!24550 rule!422)))

(declare-fun lt!675057 () Unit!33319)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!454 (LexerInterface!3060 Rule!6662 List!19308) Unit!33319)

(assert (=> b!1749633 (= lt!675057 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!454 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1749634 () Bool)

(assert (=> b!1749634 (= e!1119739 e!1119754)))

(declare-fun res!786928 () Bool)

(assert (=> b!1749634 (=> (not res!786928) (not e!1119754))))

(declare-fun lt!675075 () tuple2!18874)

(assert (=> b!1749634 (= res!786928 (= (_1!10839 lt!675075) token!523))))

(assert (=> b!1749634 (= lt!675075 (get!5820 lt!675080))))

(declare-fun b!1749635 () Bool)

(declare-fun res!786926 () Bool)

(assert (=> b!1749635 (=> (not res!786926) (not e!1119755))))

(declare-fun contains!3457 (List!19308 Rule!6662) Bool)

(assert (=> b!1749635 (= res!786926 (contains!3457 rules!3447 rule!422))))

(declare-fun b!1749636 () Bool)

(declare-fun res!786924 () Bool)

(assert (=> b!1749636 (=> (not res!786924) (not e!1119754))))

(assert (=> b!1749636 (= res!786924 (isEmpty!12123 (_2!10839 lt!675075)))))

(declare-fun b!1749637 () Bool)

(declare-fun res!786919 () Bool)

(assert (=> b!1749637 (=> res!786919 e!1119742)))

(declare-fun dynLambda!9159 (Int TokenValue!3521) BalanceConc!12742)

(assert (=> b!1749637 (= res!786919 (not (= lt!675071 (dynLambda!9159 (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073)))) (value!107456 (_1!10839 lt!675073))))))))

(declare-fun b!1749638 () Bool)

(assert (=> b!1749638 (= e!1119744 e!1119742)))

(declare-fun res!786933 () Bool)

(assert (=> b!1749638 (=> res!786933 e!1119742)))

(declare-fun dynLambda!9160 (Int BalanceConc!12742) TokenValue!3521)

(assert (=> b!1749638 (= res!786933 (not (= (list!7792 (dynLambda!9159 (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073)))) (dynLambda!9160 (toValue!4946 (transformation!3431 (rule!5439 (_1!10839 lt!675073)))) lt!675071))) lt!675066)))))

(declare-fun lt!675087 () Unit!33319)

(declare-fun lemmaSemiInverse!571 (TokenValueInjection!6702 BalanceConc!12742) Unit!33319)

(assert (=> b!1749638 (= lt!675087 (lemmaSemiInverse!571 (transformation!3431 (rule!5439 (_1!10839 lt!675073))) lt!675071))))

(declare-fun b!1749639 () Bool)

(declare-fun res!786917 () Bool)

(assert (=> b!1749639 (=> res!786917 e!1119747)))

(assert (=> b!1749639 (= res!786917 (not (matchR!2233 (regex!3431 (rule!5439 (_1!10839 lt!675073))) lt!675066)))))

(assert (= (and start!172542 res!786934) b!1749619))

(assert (= (and b!1749619 res!786923) b!1749632))

(assert (= (and b!1749632 res!786932) b!1749635))

(assert (= (and b!1749635 res!786926) b!1749618))

(assert (= (and b!1749618 res!786931) b!1749634))

(assert (= (and b!1749634 res!786928) b!1749636))

(assert (= (and b!1749636 res!786924) b!1749616))

(assert (= (and b!1749616 res!786925) b!1749633))

(assert (= (and b!1749633 (not res!786930)) b!1749611))

(assert (= (and b!1749611 (not res!786927)) b!1749610))

(assert (= (and b!1749610 (not res!786920)) b!1749617))

(assert (= (and b!1749617 res!786921) b!1749613))

(assert (= (and b!1749613 res!786935) b!1749620))

(assert (= (and b!1749617 (not res!786936)) b!1749639))

(assert (= (and b!1749639 (not res!786917)) b!1749623))

(assert (= (and b!1749623 (not res!786922)) b!1749638))

(assert (= (and b!1749638 (not res!786933)) b!1749637))

(assert (= (and b!1749637 (not res!786919)) b!1749627))

(assert (= (and b!1749627 (not res!786929)) b!1749624))

(assert (= (and b!1749624 (not res!786918)) b!1749622))

(assert (= (and b!1749622 c!285333) b!1749628))

(assert (= (and b!1749622 (not c!285333)) b!1749614))

(assert (= (and start!172542 ((_ is Cons!19237) suffix!1421)) b!1749630))

(assert (= b!1749629 b!1749615))

(assert (= start!172542 b!1749629))

(assert (= b!1749621 b!1749609))

(assert (= b!1749631 b!1749621))

(assert (= start!172542 b!1749631))

(assert (= b!1749626 b!1749625))

(assert (= b!1749612 b!1749626))

(assert (= (and start!172542 ((_ is Cons!19238) rules!3447)) b!1749612))

(declare-fun b_lambda!56215 () Bool)

(assert (=> (not b_lambda!56215) (not b!1749637)))

(declare-fun tb!104861 () Bool)

(declare-fun t!162740 () Bool)

(assert (=> (and b!1749625 (= (toChars!4805 (transformation!3431 (h!24639 rules!3447))) (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073))))) t!162740) tb!104861))

(declare-fun b!1749655 () Bool)

(declare-fun e!1119768 () Bool)

(declare-fun tp!497719 () Bool)

(declare-fun inv!24949 (Conc!6399) Bool)

(assert (=> b!1749655 (= e!1119768 (and (inv!24949 (c!285335 (dynLambda!9159 (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073)))) (value!107456 (_1!10839 lt!675073))))) tp!497719))))

(declare-fun result!126136 () Bool)

(declare-fun inv!24950 (BalanceConc!12742) Bool)

(assert (=> tb!104861 (= result!126136 (and (inv!24950 (dynLambda!9159 (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073)))) (value!107456 (_1!10839 lt!675073)))) e!1119768))))

(assert (= tb!104861 b!1749655))

(declare-fun m!2162773 () Bool)

(assert (=> b!1749655 m!2162773))

(declare-fun m!2162775 () Bool)

(assert (=> tb!104861 m!2162775))

(assert (=> b!1749637 t!162740))

(declare-fun b_and!130699 () Bool)

(assert (= b_and!130689 (and (=> t!162740 result!126136) b_and!130699)))

(declare-fun t!162742 () Bool)

(declare-fun tb!104863 () Bool)

(assert (=> (and b!1749609 (= (toChars!4805 (transformation!3431 (rule!5439 token!523))) (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073))))) t!162742) tb!104863))

(declare-fun result!126140 () Bool)

(assert (= result!126140 result!126136))

(assert (=> b!1749637 t!162742))

(declare-fun b_and!130701 () Bool)

(assert (= b_and!130693 (and (=> t!162742 result!126140) b_and!130701)))

(declare-fun tb!104865 () Bool)

(declare-fun t!162744 () Bool)

(assert (=> (and b!1749615 (= (toChars!4805 (transformation!3431 rule!422)) (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073))))) t!162744) tb!104865))

(declare-fun result!126142 () Bool)

(assert (= result!126142 result!126136))

(assert (=> b!1749637 t!162744))

(declare-fun b_and!130703 () Bool)

(assert (= b_and!130697 (and (=> t!162744 result!126142) b_and!130703)))

(declare-fun b_lambda!56217 () Bool)

(assert (=> (not b_lambda!56217) (not b!1749638)))

(declare-fun tb!104867 () Bool)

(declare-fun t!162746 () Bool)

(assert (=> (and b!1749625 (= (toChars!4805 (transformation!3431 (h!24639 rules!3447))) (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073))))) t!162746) tb!104867))

(declare-fun b!1749656 () Bool)

(declare-fun tp!497720 () Bool)

(declare-fun e!1119769 () Bool)

(assert (=> b!1749656 (= e!1119769 (and (inv!24949 (c!285335 (dynLambda!9159 (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073)))) (dynLambda!9160 (toValue!4946 (transformation!3431 (rule!5439 (_1!10839 lt!675073)))) lt!675071)))) tp!497720))))

(declare-fun result!126144 () Bool)

(assert (=> tb!104867 (= result!126144 (and (inv!24950 (dynLambda!9159 (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073)))) (dynLambda!9160 (toValue!4946 (transformation!3431 (rule!5439 (_1!10839 lt!675073)))) lt!675071))) e!1119769))))

(assert (= tb!104867 b!1749656))

(declare-fun m!2162777 () Bool)

(assert (=> b!1749656 m!2162777))

(declare-fun m!2162779 () Bool)

(assert (=> tb!104867 m!2162779))

(assert (=> b!1749638 t!162746))

(declare-fun b_and!130705 () Bool)

(assert (= b_and!130699 (and (=> t!162746 result!126144) b_and!130705)))

(declare-fun tb!104869 () Bool)

(declare-fun t!162748 () Bool)

(assert (=> (and b!1749609 (= (toChars!4805 (transformation!3431 (rule!5439 token!523))) (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073))))) t!162748) tb!104869))

(declare-fun result!126146 () Bool)

(assert (= result!126146 result!126144))

(assert (=> b!1749638 t!162748))

(declare-fun b_and!130707 () Bool)

(assert (= b_and!130701 (and (=> t!162748 result!126146) b_and!130707)))

(declare-fun t!162750 () Bool)

(declare-fun tb!104871 () Bool)

(assert (=> (and b!1749615 (= (toChars!4805 (transformation!3431 rule!422)) (toChars!4805 (transformation!3431 (rule!5439 (_1!10839 lt!675073))))) t!162750) tb!104871))

(declare-fun result!126148 () Bool)

(assert (= result!126148 result!126144))

(assert (=> b!1749638 t!162750))

(declare-fun b_and!130709 () Bool)

(assert (= b_and!130703 (and (=> t!162750 result!126148) b_and!130709)))

(declare-fun b_lambda!56219 () Bool)

(assert (=> (not b_lambda!56219) (not b!1749638)))

(declare-fun t!162752 () Bool)

(declare-fun tb!104873 () Bool)

(assert (=> (and b!1749625 (= (toValue!4946 (transformation!3431 (h!24639 rules!3447))) (toValue!4946 (transformation!3431 (rule!5439 (_1!10839 lt!675073))))) t!162752) tb!104873))

(declare-fun result!126150 () Bool)

(assert (=> tb!104873 (= result!126150 (inv!21 (dynLambda!9160 (toValue!4946 (transformation!3431 (rule!5439 (_1!10839 lt!675073)))) lt!675071)))))

(declare-fun m!2162781 () Bool)

(assert (=> tb!104873 m!2162781))

(assert (=> b!1749638 t!162752))

(declare-fun b_and!130711 () Bool)

(assert (= b_and!130687 (and (=> t!162752 result!126150) b_and!130711)))

(declare-fun t!162754 () Bool)

(declare-fun tb!104875 () Bool)

(assert (=> (and b!1749609 (= (toValue!4946 (transformation!3431 (rule!5439 token!523))) (toValue!4946 (transformation!3431 (rule!5439 (_1!10839 lt!675073))))) t!162754) tb!104875))

(declare-fun result!126154 () Bool)

(assert (= result!126154 result!126150))

(assert (=> b!1749638 t!162754))

(declare-fun b_and!130713 () Bool)

(assert (= b_and!130691 (and (=> t!162754 result!126154) b_and!130713)))

(declare-fun tb!104877 () Bool)

(declare-fun t!162756 () Bool)

(assert (=> (and b!1749615 (= (toValue!4946 (transformation!3431 rule!422)) (toValue!4946 (transformation!3431 (rule!5439 (_1!10839 lt!675073))))) t!162756) tb!104877))

(declare-fun result!126156 () Bool)

(assert (= result!126156 result!126150))

(assert (=> b!1749638 t!162756))

(declare-fun b_and!130715 () Bool)

(assert (= b_and!130695 (and (=> t!162756 result!126156) b_and!130715)))

(declare-fun m!2162783 () Bool)

(assert (=> b!1749635 m!2162783))

(declare-fun m!2162785 () Bool)

(assert (=> b!1749618 m!2162785))

(declare-fun m!2162787 () Bool)

(assert (=> b!1749618 m!2162787))

(declare-fun m!2162789 () Bool)

(assert (=> b!1749618 m!2162789))

(declare-fun m!2162791 () Bool)

(assert (=> b!1749618 m!2162791))

(declare-fun m!2162793 () Bool)

(assert (=> b!1749623 m!2162793))

(declare-fun m!2162795 () Bool)

(assert (=> b!1749623 m!2162795))

(declare-fun m!2162797 () Bool)

(assert (=> b!1749629 m!2162797))

(declare-fun m!2162799 () Bool)

(assert (=> b!1749629 m!2162799))

(declare-fun m!2162801 () Bool)

(assert (=> b!1749626 m!2162801))

(declare-fun m!2162803 () Bool)

(assert (=> b!1749626 m!2162803))

(declare-fun m!2162805 () Bool)

(assert (=> b!1749628 m!2162805))

(declare-fun m!2162807 () Bool)

(assert (=> b!1749628 m!2162807))

(declare-fun m!2162809 () Bool)

(assert (=> b!1749628 m!2162809))

(declare-fun m!2162811 () Bool)

(assert (=> b!1749628 m!2162811))

(declare-fun m!2162813 () Bool)

(assert (=> b!1749628 m!2162813))

(declare-fun m!2162815 () Bool)

(assert (=> b!1749628 m!2162815))

(assert (=> b!1749628 m!2162805))

(declare-fun m!2162817 () Bool)

(assert (=> b!1749628 m!2162817))

(declare-fun m!2162819 () Bool)

(assert (=> b!1749628 m!2162819))

(declare-fun m!2162821 () Bool)

(assert (=> b!1749628 m!2162821))

(declare-fun m!2162823 () Bool)

(assert (=> b!1749628 m!2162823))

(declare-fun m!2162825 () Bool)

(assert (=> b!1749628 m!2162825))

(declare-fun m!2162827 () Bool)

(assert (=> start!172542 m!2162827))

(declare-fun m!2162829 () Bool)

(assert (=> b!1749613 m!2162829))

(assert (=> b!1749613 m!2162829))

(declare-fun m!2162831 () Bool)

(assert (=> b!1749613 m!2162831))

(assert (=> b!1749613 m!2162831))

(declare-fun m!2162833 () Bool)

(assert (=> b!1749613 m!2162833))

(declare-fun m!2162835 () Bool)

(assert (=> b!1749613 m!2162835))

(declare-fun m!2162837 () Bool)

(assert (=> b!1749622 m!2162837))

(declare-fun m!2162839 () Bool)

(assert (=> b!1749622 m!2162839))

(declare-fun m!2162841 () Bool)

(assert (=> b!1749622 m!2162841))

(declare-fun m!2162843 () Bool)

(assert (=> b!1749632 m!2162843))

(declare-fun m!2162845 () Bool)

(assert (=> b!1749621 m!2162845))

(declare-fun m!2162847 () Bool)

(assert (=> b!1749621 m!2162847))

(declare-fun m!2162849 () Bool)

(assert (=> b!1749624 m!2162849))

(declare-fun m!2162851 () Bool)

(assert (=> b!1749624 m!2162851))

(declare-fun m!2162853 () Bool)

(assert (=> b!1749624 m!2162853))

(declare-fun m!2162855 () Bool)

(assert (=> b!1749624 m!2162855))

(declare-fun m!2162857 () Bool)

(assert (=> b!1749624 m!2162857))

(declare-fun m!2162859 () Bool)

(assert (=> b!1749624 m!2162859))

(assert (=> b!1749624 m!2162849))

(declare-fun m!2162861 () Bool)

(assert (=> b!1749624 m!2162861))

(declare-fun m!2162863 () Bool)

(assert (=> b!1749617 m!2162863))

(declare-fun m!2162865 () Bool)

(assert (=> b!1749617 m!2162865))

(declare-fun m!2162867 () Bool)

(assert (=> b!1749617 m!2162867))

(assert (=> b!1749617 m!2162829))

(declare-fun m!2162869 () Bool)

(assert (=> b!1749617 m!2162869))

(declare-fun m!2162871 () Bool)

(assert (=> b!1749617 m!2162871))

(declare-fun m!2162873 () Bool)

(assert (=> b!1749617 m!2162873))

(declare-fun m!2162875 () Bool)

(assert (=> b!1749617 m!2162875))

(declare-fun m!2162877 () Bool)

(assert (=> b!1749617 m!2162877))

(declare-fun m!2162879 () Bool)

(assert (=> b!1749617 m!2162879))

(declare-fun m!2162881 () Bool)

(assert (=> b!1749617 m!2162881))

(declare-fun m!2162883 () Bool)

(assert (=> b!1749617 m!2162883))

(assert (=> b!1749617 m!2162871))

(declare-fun m!2162885 () Bool)

(assert (=> b!1749617 m!2162885))

(declare-fun m!2162887 () Bool)

(assert (=> b!1749617 m!2162887))

(declare-fun m!2162889 () Bool)

(assert (=> b!1749617 m!2162889))

(declare-fun m!2162891 () Bool)

(assert (=> b!1749610 m!2162891))

(declare-fun m!2162893 () Bool)

(assert (=> b!1749610 m!2162893))

(declare-fun m!2162895 () Bool)

(assert (=> b!1749610 m!2162895))

(declare-fun m!2162897 () Bool)

(assert (=> b!1749610 m!2162897))

(declare-fun m!2162899 () Bool)

(assert (=> b!1749631 m!2162899))

(declare-fun m!2162901 () Bool)

(assert (=> b!1749639 m!2162901))

(declare-fun m!2162903 () Bool)

(assert (=> b!1749637 m!2162903))

(declare-fun m!2162905 () Bool)

(assert (=> b!1749636 m!2162905))

(declare-fun m!2162907 () Bool)

(assert (=> b!1749638 m!2162907))

(assert (=> b!1749638 m!2162907))

(declare-fun m!2162909 () Bool)

(assert (=> b!1749638 m!2162909))

(assert (=> b!1749638 m!2162909))

(declare-fun m!2162911 () Bool)

(assert (=> b!1749638 m!2162911))

(declare-fun m!2162913 () Bool)

(assert (=> b!1749638 m!2162913))

(declare-fun m!2162915 () Bool)

(assert (=> b!1749619 m!2162915))

(declare-fun m!2162917 () Bool)

(assert (=> b!1749611 m!2162917))

(declare-fun m!2162919 () Bool)

(assert (=> b!1749627 m!2162919))

(declare-fun m!2162921 () Bool)

(assert (=> b!1749627 m!2162921))

(declare-fun m!2162923 () Bool)

(assert (=> b!1749627 m!2162923))

(declare-fun m!2162925 () Bool)

(assert (=> b!1749627 m!2162925))

(assert (=> b!1749627 m!2162923))

(declare-fun m!2162927 () Bool)

(assert (=> b!1749627 m!2162927))

(declare-fun m!2162929 () Bool)

(assert (=> b!1749634 m!2162929))

(declare-fun m!2162931 () Bool)

(assert (=> b!1749633 m!2162931))

(declare-fun m!2162933 () Bool)

(assert (=> b!1749633 m!2162933))

(declare-fun m!2162935 () Bool)

(assert (=> b!1749633 m!2162935))

(check-sat (not b!1749636) b_and!130707 (not b!1749655) (not b!1749622) (not b!1749619) (not b!1749639) (not b!1749629) (not b_next!48919) (not b!1749627) (not b!1749628) (not b!1749633) (not b!1749630) (not b!1749621) b_and!130711 (not tb!104873) b_and!130705 (not b_next!48915) (not b!1749618) (not b!1749638) (not start!172542) tp_is_empty!7761 (not b_lambda!56217) b_and!130709 b_and!130715 (not b!1749626) (not b!1749613) (not b!1749634) (not b!1749635) (not b_lambda!56219) (not b_lambda!56215) (not b_next!48925) (not b!1749611) (not b!1749623) (not b!1749632) (not b!1749617) (not b!1749624) (not b!1749610) (not tb!104861) b_and!130713 (not b_next!48921) (not b!1749656) (not b_next!48917) (not tb!104867) (not b!1749612) (not b_next!48923) (not b!1749631))
(check-sat (not b_next!48915) b_and!130709 b_and!130707 b_and!130715 (not b_next!48925) (not b_next!48919) (not b_next!48917) b_and!130711 (not b_next!48923) b_and!130705 b_and!130713 (not b_next!48921))
