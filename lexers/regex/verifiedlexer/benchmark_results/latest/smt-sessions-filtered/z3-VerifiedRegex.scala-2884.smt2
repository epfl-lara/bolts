; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!168314 () Bool)

(assert start!168314)

(declare-fun b!1718854 () Bool)

(declare-fun b_free!46795 () Bool)

(declare-fun b_next!47499 () Bool)

(assert (=> b!1718854 (= b_free!46795 (not b_next!47499))))

(declare-fun tp!490910 () Bool)

(declare-fun b_and!125227 () Bool)

(assert (=> b!1718854 (= tp!490910 b_and!125227)))

(declare-fun b_free!46797 () Bool)

(declare-fun b_next!47501 () Bool)

(assert (=> b!1718854 (= b_free!46797 (not b_next!47501))))

(declare-fun tp!490917 () Bool)

(declare-fun b_and!125229 () Bool)

(assert (=> b!1718854 (= tp!490917 b_and!125229)))

(declare-fun b!1718876 () Bool)

(declare-fun b_free!46799 () Bool)

(declare-fun b_next!47503 () Bool)

(assert (=> b!1718876 (= b_free!46799 (not b_next!47503))))

(declare-fun tp!490916 () Bool)

(declare-fun b_and!125231 () Bool)

(assert (=> b!1718876 (= tp!490916 b_and!125231)))

(declare-fun b_free!46801 () Bool)

(declare-fun b_next!47505 () Bool)

(assert (=> b!1718876 (= b_free!46801 (not b_next!47505))))

(declare-fun tp!490915 () Bool)

(declare-fun b_and!125233 () Bool)

(assert (=> b!1718876 (= tp!490915 b_and!125233)))

(declare-fun b!1718869 () Bool)

(declare-fun b_free!46803 () Bool)

(declare-fun b_next!47507 () Bool)

(assert (=> b!1718869 (= b_free!46803 (not b_next!47507))))

(declare-fun tp!490909 () Bool)

(declare-fun b_and!125235 () Bool)

(assert (=> b!1718869 (= tp!490909 b_and!125235)))

(declare-fun b_free!46805 () Bool)

(declare-fun b_next!47509 () Bool)

(assert (=> b!1718869 (= b_free!46805 (not b_next!47509))))

(declare-fun tp!490919 () Bool)

(declare-fun b_and!125237 () Bool)

(assert (=> b!1718869 (= tp!490919 b_and!125237)))

(declare-fun b!1718892 () Bool)

(declare-fun e!1099403 () Bool)

(assert (=> b!1718892 (= e!1099403 true)))

(declare-fun b!1718891 () Bool)

(declare-fun e!1099402 () Bool)

(assert (=> b!1718891 (= e!1099402 e!1099403)))

(declare-fun b!1718890 () Bool)

(declare-fun e!1099401 () Bool)

(assert (=> b!1718890 (= e!1099401 e!1099402)))

(declare-fun b!1718856 () Bool)

(assert (=> b!1718856 e!1099401))

(assert (= b!1718891 b!1718892))

(assert (= b!1718890 b!1718891))

(assert (= b!1718856 b!1718890))

(declare-fun order!11421 () Int)

(declare-datatypes ((List!18870 0))(
  ( (Nil!18800) (Cons!18800 (h!24201 (_ BitVec 16)) (t!159209 List!18870)) )
))
(declare-datatypes ((TokenValue!3419 0))(
  ( (FloatLiteralValue!6838 (text!24378 List!18870)) (TokenValueExt!3418 (__x!12140 Int)) (Broken!17095 (value!104523 List!18870)) (Object!3488) (End!3419) (Def!3419) (Underscore!3419) (Match!3419) (Else!3419) (Error!3419) (Case!3419) (If!3419) (Extends!3419) (Abstract!3419) (Class!3419) (Val!3419) (DelimiterValue!6838 (del!3479 List!18870)) (KeywordValue!3425 (value!104524 List!18870)) (CommentValue!6838 (value!104525 List!18870)) (WhitespaceValue!6838 (value!104526 List!18870)) (IndentationValue!3419 (value!104527 List!18870)) (String!21426) (Int32!3419) (Broken!17096 (value!104528 List!18870)) (Boolean!3420) (Unit!32636) (OperatorValue!3422 (op!3479 List!18870)) (IdentifierValue!6838 (value!104529 List!18870)) (IdentifierValue!6839 (value!104530 List!18870)) (WhitespaceValue!6839 (value!104531 List!18870)) (True!6838) (False!6838) (Broken!17097 (value!104532 List!18870)) (Broken!17098 (value!104533 List!18870)) (True!6839) (RightBrace!3419) (RightBracket!3419) (Colon!3419) (Null!3419) (Comma!3419) (LeftBracket!3419) (False!6839) (LeftBrace!3419) (ImaginaryLiteralValue!3419 (text!24379 List!18870)) (StringLiteralValue!10257 (value!104534 List!18870)) (EOFValue!3419 (value!104535 List!18870)) (IdentValue!3419 (value!104536 List!18870)) (DelimiterValue!6839 (value!104537 List!18870)) (DedentValue!3419 (value!104538 List!18870)) (NewLineValue!3419 (value!104539 List!18870)) (IntegerValue!10257 (value!104540 (_ BitVec 32)) (text!24380 List!18870)) (IntegerValue!10258 (value!104541 Int) (text!24381 List!18870)) (Times!3419) (Or!3419) (Equal!3419) (Minus!3419) (Broken!17099 (value!104542 List!18870)) (And!3419) (Div!3419) (LessEqual!3419) (Mod!3419) (Concat!8076) (Not!3419) (Plus!3419) (SpaceValue!3419 (value!104543 List!18870)) (IntegerValue!10259 (value!104544 Int) (text!24382 List!18870)) (StringLiteralValue!10258 (text!24383 List!18870)) (FloatLiteralValue!6839 (text!24384 List!18870)) (BytesLiteralValue!3419 (value!104545 List!18870)) (CommentValue!6839 (value!104546 List!18870)) (StringLiteralValue!10259 (value!104547 List!18870)) (ErrorTokenValue!3419 (msg!3480 List!18870)) )
))
(declare-datatypes ((C!9488 0))(
  ( (C!9489 (val!5340 Int)) )
))
(declare-datatypes ((List!18871 0))(
  ( (Nil!18801) (Cons!18801 (h!24202 C!9488) (t!159210 List!18871)) )
))
(declare-datatypes ((String!21427 0))(
  ( (String!21428 (value!104548 String)) )
))
(declare-datatypes ((Regex!4657 0))(
  ( (ElementMatch!4657 (c!281354 C!9488)) (Concat!8077 (regOne!9826 Regex!4657) (regTwo!9826 Regex!4657)) (EmptyExpr!4657) (Star!4657 (reg!4986 Regex!4657)) (EmptyLang!4657) (Union!4657 (regOne!9827 Regex!4657) (regTwo!9827 Regex!4657)) )
))
(declare-datatypes ((IArray!12511 0))(
  ( (IArray!12512 (innerList!6313 List!18871)) )
))
(declare-datatypes ((Conc!6253 0))(
  ( (Node!6253 (left!14999 Conc!6253) (right!15329 Conc!6253) (csize!12736 Int) (cheight!6464 Int)) (Leaf!9138 (xs!9129 IArray!12511) (csize!12737 Int)) (Empty!6253) )
))
(declare-datatypes ((BalanceConc!12450 0))(
  ( (BalanceConc!12451 (c!281355 Conc!6253)) )
))
(declare-datatypes ((TokenValueInjection!6498 0))(
  ( (TokenValueInjection!6499 (toValue!4836 Int) (toChars!4695 Int)) )
))
(declare-datatypes ((Rule!6458 0))(
  ( (Rule!6459 (regex!3329 Regex!4657) (tag!3635 String!21427) (isSeparator!3329 Bool) (transformation!3329 TokenValueInjection!6498)) )
))
(declare-datatypes ((Token!6224 0))(
  ( (Token!6225 (value!104549 TokenValue!3419) (rule!5271 Rule!6458) (size!14940 Int) (originalCharacters!4143 List!18871)) )
))
(declare-datatypes ((tuple2!18498 0))(
  ( (tuple2!18499 (_1!10651 Token!6224) (_2!10651 List!18871)) )
))
(declare-fun lt!657161 () tuple2!18498)

(declare-fun lambda!69056 () Int)

(declare-fun order!11419 () Int)

(declare-fun dynLambda!8628 (Int Int) Int)

(declare-fun dynLambda!8629 (Int Int) Int)

(assert (=> b!1718892 (< (dynLambda!8628 order!11419 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) (dynLambda!8629 order!11421 lambda!69056))))

(declare-fun order!11423 () Int)

(declare-fun dynLambda!8630 (Int Int) Int)

(assert (=> b!1718892 (< (dynLambda!8630 order!11423 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) (dynLambda!8629 order!11421 lambda!69056))))

(declare-fun b!1718853 () Bool)

(declare-fun e!1099376 () Bool)

(declare-datatypes ((LexerInterface!2958 0))(
  ( (LexerInterfaceExt!2955 (__x!12141 Int)) (Lexer!2956) )
))
(declare-fun thiss!24550 () LexerInterface!2958)

(declare-fun ruleValid!828 (LexerInterface!2958 Rule!6458) Bool)

(assert (=> b!1718853 (= e!1099376 (ruleValid!828 thiss!24550 (rule!5271 (_1!10651 lt!657161))))))

(declare-fun e!1099379 () Bool)

(assert (=> b!1718854 (= e!1099379 (and tp!490910 tp!490917))))

(declare-fun b!1718855 () Bool)

(declare-fun res!770977 () Bool)

(declare-fun e!1099377 () Bool)

(assert (=> b!1718855 (=> (not res!770977) (not e!1099377))))

(declare-datatypes ((List!18872 0))(
  ( (Nil!18802) (Cons!18802 (h!24203 Rule!6458) (t!159211 List!18872)) )
))
(declare-fun rules!3447 () List!18872)

(declare-fun rule!422 () Rule!6458)

(declare-fun contains!3351 (List!18872 Rule!6458) Bool)

(assert (=> b!1718855 (= res!770977 (contains!3351 rules!3447 rule!422))))

(declare-fun e!1099387 () Bool)

(declare-fun e!1099382 () Bool)

(assert (=> b!1718856 (= e!1099387 e!1099382)))

(declare-fun res!770996 () Bool)

(assert (=> b!1718856 (=> res!770996 e!1099382)))

(declare-fun Forall!704 (Int) Bool)

(assert (=> b!1718856 (= res!770996 (not (Forall!704 lambda!69056)))))

(declare-datatypes ((Unit!32637 0))(
  ( (Unit!32638) )
))
(declare-fun lt!657163 () Unit!32637)

(declare-fun lemmaInv!536 (TokenValueInjection!6498) Unit!32637)

(assert (=> b!1718856 (= lt!657163 (lemmaInv!536 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))))

(declare-fun b!1718857 () Bool)

(declare-fun res!770986 () Bool)

(declare-fun e!1099373 () Bool)

(assert (=> b!1718857 (=> res!770986 e!1099373)))

(declare-fun lt!657178 () BalanceConc!12450)

(declare-fun dynLambda!8631 (Int TokenValue!3419) BalanceConc!12450)

(assert (=> b!1718857 (= res!770986 (not (= lt!657178 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161))))))))

(declare-fun b!1718858 () Bool)

(declare-fun e!1099388 () Bool)

(assert (=> b!1718858 (= e!1099388 e!1099376)))

(declare-fun res!770989 () Bool)

(assert (=> b!1718858 (=> res!770989 e!1099376)))

(declare-fun lt!657176 () List!18871)

(assert (=> b!1718858 (= res!770989 (not (= lt!657176 (_2!10651 lt!657161))))))

(assert (=> b!1718858 (= (_2!10651 lt!657161) lt!657176)))

(declare-fun lt!657164 () List!18871)

(declare-fun lt!657169 () List!18871)

(declare-fun lt!657168 () Unit!32637)

(declare-fun lemmaSamePrefixThenSameSuffix!714 (List!18871 List!18871 List!18871 List!18871 List!18871) Unit!32637)

(assert (=> b!1718858 (= lt!657168 (lemmaSamePrefixThenSameSuffix!714 lt!657169 (_2!10651 lt!657161) lt!657169 lt!657176 lt!657164))))

(declare-fun getSuffix!764 (List!18871 List!18871) List!18871)

(assert (=> b!1718858 (= lt!657176 (getSuffix!764 lt!657164 lt!657169))))

(declare-datatypes ((Option!3682 0))(
  ( (None!3681) (Some!3681 (v!25080 tuple2!18498)) )
))
(declare-fun maxPrefixOneRule!888 (LexerInterface!2958 Rule!6458 List!18871) Option!3682)

(declare-fun apply!5134 (TokenValueInjection!6498 BalanceConc!12450) TokenValue!3419)

(declare-fun seqFromList!2303 (List!18871) BalanceConc!12450)

(declare-fun size!14941 (List!18871) Int)

(assert (=> b!1718858 (= (maxPrefixOneRule!888 thiss!24550 (rule!5271 (_1!10651 lt!657161)) lt!657164) (Some!3681 (tuple2!18499 (Token!6225 (apply!5134 (transformation!3329 (rule!5271 (_1!10651 lt!657161))) (seqFromList!2303 lt!657169)) (rule!5271 (_1!10651 lt!657161)) (size!14941 lt!657169) lt!657169) (_2!10651 lt!657161))))))

(declare-fun lt!657172 () Unit!32637)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!287 (LexerInterface!2958 List!18872 List!18871 List!18871 List!18871 Rule!6458) Unit!32637)

(assert (=> b!1718858 (= lt!657172 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!287 thiss!24550 rules!3447 lt!657169 lt!657164 (_2!10651 lt!657161) (rule!5271 (_1!10651 lt!657161))))))

(declare-fun b!1718859 () Bool)

(declare-fun e!1099381 () Bool)

(declare-fun e!1099374 () Bool)

(assert (=> b!1718859 (= e!1099381 (not e!1099374))))

(declare-fun res!770987 () Bool)

(assert (=> b!1718859 (=> res!770987 e!1099374)))

(declare-fun lt!657162 () List!18871)

(declare-fun matchR!2131 (Regex!4657 List!18871) Bool)

(assert (=> b!1718859 (= res!770987 (not (matchR!2131 (regex!3329 rule!422) lt!657162)))))

(assert (=> b!1718859 (ruleValid!828 thiss!24550 rule!422)))

(declare-fun lt!657167 () Unit!32637)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!352 (LexerInterface!2958 Rule!6458 List!18872) Unit!32637)

(assert (=> b!1718859 (= lt!657167 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!352 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1718860 () Bool)

(declare-fun res!770981 () Bool)

(assert (=> b!1718860 (=> res!770981 e!1099374)))

(declare-fun suffix!1421 () List!18871)

(declare-fun prefixMatch!542 (Regex!4657 List!18871) Bool)

(declare-fun rulesRegex!687 (LexerInterface!2958 List!18872) Regex!4657)

(declare-fun ++!5154 (List!18871 List!18871) List!18871)

(declare-fun head!3878 (List!18871) C!9488)

(assert (=> b!1718860 (= res!770981 (prefixMatch!542 (rulesRegex!687 thiss!24550 rules!3447) (++!5154 lt!657162 (Cons!18801 (head!3878 suffix!1421) Nil!18801))))))

(declare-fun token!523 () Token!6224)

(declare-fun tp!490918 () Bool)

(declare-fun b!1718861 () Bool)

(declare-fun e!1099389 () Bool)

(declare-fun e!1099371 () Bool)

(declare-fun inv!21 (TokenValue!3419) Bool)

(assert (=> b!1718861 (= e!1099389 (and (inv!21 (value!104549 token!523)) e!1099371 tp!490918))))

(declare-fun e!1099372 () Bool)

(declare-fun e!1099386 () Bool)

(declare-fun b!1718862 () Bool)

(declare-fun tp!490911 () Bool)

(declare-fun inv!24268 (String!21427) Bool)

(declare-fun inv!24273 (TokenValueInjection!6498) Bool)

(assert (=> b!1718862 (= e!1099386 (and tp!490911 (inv!24268 (tag!3635 (h!24203 rules!3447))) (inv!24273 (transformation!3329 (h!24203 rules!3447))) e!1099372))))

(declare-fun b!1718863 () Bool)

(declare-fun res!770983 () Bool)

(assert (=> b!1718863 (=> res!770983 e!1099374)))

(declare-fun isEmpty!11821 (List!18871) Bool)

(assert (=> b!1718863 (= res!770983 (isEmpty!11821 suffix!1421))))

(declare-fun b!1718864 () Bool)

(declare-fun e!1099394 () Bool)

(declare-fun e!1099393 () Bool)

(assert (=> b!1718864 (= e!1099394 e!1099393)))

(declare-fun res!770992 () Bool)

(assert (=> b!1718864 (=> (not res!770992) (not e!1099393))))

(declare-fun lt!657177 () Rule!6458)

(declare-fun list!7594 (BalanceConc!12450) List!18871)

(declare-fun charsOf!1978 (Token!6224) BalanceConc!12450)

(assert (=> b!1718864 (= res!770992 (matchR!2131 (regex!3329 lt!657177) (list!7594 (charsOf!1978 (_1!10651 lt!657161)))))))

(declare-datatypes ((Option!3683 0))(
  ( (None!3682) (Some!3682 (v!25081 Rule!6458)) )
))
(declare-fun lt!657159 () Option!3683)

(declare-fun get!5564 (Option!3683) Rule!6458)

(assert (=> b!1718864 (= lt!657177 (get!5564 lt!657159))))

(declare-fun b!1718865 () Bool)

(declare-fun res!770991 () Bool)

(assert (=> b!1718865 (=> res!770991 e!1099387)))

(assert (=> b!1718865 (= res!770991 (not (matchR!2131 (regex!3329 (rule!5271 (_1!10651 lt!657161))) lt!657169)))))

(declare-fun b!1718866 () Bool)

(assert (=> b!1718866 (= e!1099393 (= (rule!5271 (_1!10651 lt!657161)) lt!657177))))

(declare-fun b!1718867 () Bool)

(declare-fun res!770982 () Bool)

(assert (=> b!1718867 (=> (not res!770982) (not e!1099377))))

(declare-fun isEmpty!11822 (List!18872) Bool)

(assert (=> b!1718867 (= res!770982 (not (isEmpty!11822 rules!3447)))))

(declare-fun b!1718868 () Bool)

(declare-fun e!1099391 () Bool)

(assert (=> b!1718868 (= e!1099377 e!1099391)))

(declare-fun res!770994 () Bool)

(assert (=> b!1718868 (=> (not res!770994) (not e!1099391))))

(declare-fun lt!657160 () Option!3682)

(declare-fun isDefined!3025 (Option!3682) Bool)

(assert (=> b!1718868 (= res!770994 (isDefined!3025 lt!657160))))

(declare-fun maxPrefix!1512 (LexerInterface!2958 List!18872 List!18871) Option!3682)

(assert (=> b!1718868 (= lt!657160 (maxPrefix!1512 thiss!24550 rules!3447 lt!657162))))

(assert (=> b!1718868 (= lt!657162 (list!7594 (charsOf!1978 token!523)))))

(assert (=> b!1718869 (= e!1099372 (and tp!490909 tp!490919))))

(declare-fun b!1718870 () Bool)

(declare-fun e!1099380 () Bool)

(declare-fun tp_is_empty!7557 () Bool)

(declare-fun tp!490914 () Bool)

(assert (=> b!1718870 (= e!1099380 (and tp_is_empty!7557 tp!490914))))

(declare-fun b!1718871 () Bool)

(declare-fun res!770978 () Bool)

(assert (=> b!1718871 (=> (not res!770978) (not e!1099381))))

(assert (=> b!1718871 (= res!770978 (= (rule!5271 token!523) rule!422))))

(declare-fun res!770979 () Bool)

(assert (=> start!168314 (=> (not res!770979) (not e!1099377))))

(get-info :version)

(assert (=> start!168314 (= res!770979 ((_ is Lexer!2956) thiss!24550))))

(assert (=> start!168314 e!1099377))

(assert (=> start!168314 e!1099380))

(declare-fun e!1099378 () Bool)

(assert (=> start!168314 e!1099378))

(assert (=> start!168314 true))

(declare-fun inv!24274 (Token!6224) Bool)

(assert (=> start!168314 (and (inv!24274 token!523) e!1099389)))

(declare-fun e!1099375 () Bool)

(assert (=> start!168314 e!1099375))

(declare-fun b!1718872 () Bool)

(declare-fun tp!490912 () Bool)

(assert (=> b!1718872 (= e!1099371 (and tp!490912 (inv!24268 (tag!3635 (rule!5271 token!523))) (inv!24273 (transformation!3329 (rule!5271 token!523))) e!1099379))))

(declare-fun b!1718873 () Bool)

(declare-fun tp!490913 () Bool)

(assert (=> b!1718873 (= e!1099375 (and e!1099386 tp!490913))))

(declare-fun b!1718874 () Bool)

(assert (=> b!1718874 (= e!1099391 e!1099381)))

(declare-fun res!770980 () Bool)

(assert (=> b!1718874 (=> (not res!770980) (not e!1099381))))

(declare-fun lt!657165 () tuple2!18498)

(assert (=> b!1718874 (= res!770980 (= (_1!10651 lt!657165) token!523))))

(declare-fun get!5565 (Option!3682) tuple2!18498)

(assert (=> b!1718874 (= lt!657165 (get!5565 lt!657160))))

(declare-fun b!1718875 () Bool)

(assert (=> b!1718875 (= e!1099382 e!1099373)))

(declare-fun res!770990 () Bool)

(assert (=> b!1718875 (=> res!770990 e!1099373)))

(declare-fun dynLambda!8632 (Int BalanceConc!12450) TokenValue!3419)

(assert (=> b!1718875 (= res!770990 (not (= (list!7594 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))) lt!657169)))))

(declare-fun lt!657174 () Unit!32637)

(declare-fun lemmaSemiInverse!475 (TokenValueInjection!6498 BalanceConc!12450) Unit!32637)

(assert (=> b!1718875 (= lt!657174 (lemmaSemiInverse!475 (transformation!3329 (rule!5271 (_1!10651 lt!657161))) lt!657178))))

(declare-fun e!1099383 () Bool)

(assert (=> b!1718876 (= e!1099383 (and tp!490916 tp!490915))))

(declare-fun b!1718877 () Bool)

(declare-fun res!770988 () Bool)

(assert (=> b!1718877 (=> (not res!770988) (not e!1099381))))

(assert (=> b!1718877 (= res!770988 (isEmpty!11821 (_2!10651 lt!657165)))))

(declare-fun b!1718878 () Bool)

(declare-fun res!770984 () Bool)

(assert (=> b!1718878 (=> (not res!770984) (not e!1099377))))

(declare-fun rulesInvariant!2627 (LexerInterface!2958 List!18872) Bool)

(assert (=> b!1718878 (= res!770984 (rulesInvariant!2627 thiss!24550 rules!3447))))

(declare-fun b!1718879 () Bool)

(assert (=> b!1718879 (= e!1099374 e!1099387)))

(declare-fun res!770985 () Bool)

(assert (=> b!1718879 (=> res!770985 e!1099387)))

(declare-fun isPrefix!1570 (List!18871 List!18871) Bool)

(assert (=> b!1718879 (= res!770985 (not (isPrefix!1570 lt!657169 lt!657164)))))

(assert (=> b!1718879 (isPrefix!1570 lt!657169 (++!5154 lt!657169 (_2!10651 lt!657161)))))

(declare-fun lt!657157 () Unit!32637)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1080 (List!18871 List!18871) Unit!32637)

(assert (=> b!1718879 (= lt!657157 (lemmaConcatTwoListThenFirstIsPrefix!1080 lt!657169 (_2!10651 lt!657161)))))

(assert (=> b!1718879 (= lt!657169 (list!7594 lt!657178))))

(assert (=> b!1718879 (= lt!657178 (charsOf!1978 (_1!10651 lt!657161)))))

(assert (=> b!1718879 e!1099394))

(declare-fun res!770995 () Bool)

(assert (=> b!1718879 (=> (not res!770995) (not e!1099394))))

(declare-fun isDefined!3026 (Option!3683) Bool)

(assert (=> b!1718879 (= res!770995 (isDefined!3026 lt!657159))))

(declare-fun getRuleFromTag!379 (LexerInterface!2958 List!18872 String!21427) Option!3683)

(assert (=> b!1718879 (= lt!657159 (getRuleFromTag!379 thiss!24550 rules!3447 (tag!3635 (rule!5271 (_1!10651 lt!657161)))))))

(declare-fun lt!657175 () Unit!32637)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!379 (LexerInterface!2958 List!18872 List!18871 Token!6224) Unit!32637)

(assert (=> b!1718879 (= lt!657175 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!379 thiss!24550 rules!3447 lt!657164 (_1!10651 lt!657161)))))

(declare-fun lt!657166 () Option!3682)

(assert (=> b!1718879 (= lt!657161 (get!5565 lt!657166))))

(declare-fun lt!657158 () Unit!32637)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!482 (LexerInterface!2958 List!18872 List!18871 List!18871) Unit!32637)

(assert (=> b!1718879 (= lt!657158 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!482 thiss!24550 rules!3447 lt!657162 suffix!1421))))

(assert (=> b!1718879 (= lt!657166 (maxPrefix!1512 thiss!24550 rules!3447 lt!657164))))

(assert (=> b!1718879 (isPrefix!1570 lt!657162 lt!657164)))

(declare-fun lt!657173 () Unit!32637)

(assert (=> b!1718879 (= lt!657173 (lemmaConcatTwoListThenFirstIsPrefix!1080 lt!657162 suffix!1421))))

(assert (=> b!1718879 (= lt!657164 (++!5154 lt!657162 suffix!1421))))

(declare-fun tp!490920 () Bool)

(declare-fun b!1718880 () Bool)

(assert (=> b!1718880 (= e!1099378 (and tp!490920 (inv!24268 (tag!3635 rule!422)) (inv!24273 (transformation!3329 rule!422)) e!1099383))))

(declare-fun b!1718881 () Bool)

(assert (=> b!1718881 (= e!1099373 e!1099388)))

(declare-fun res!770993 () Bool)

(assert (=> b!1718881 (=> res!770993 e!1099388)))

(declare-fun size!14942 (BalanceConc!12450) Int)

(assert (=> b!1718881 (= res!770993 (not (= lt!657166 (Some!3681 (tuple2!18499 (Token!6225 (apply!5134 (transformation!3329 (rule!5271 (_1!10651 lt!657161))) lt!657178) (rule!5271 (_1!10651 lt!657161)) (size!14942 lt!657178) lt!657169) (_2!10651 lt!657161))))))))

(declare-fun lt!657171 () Unit!32637)

(declare-fun lemmaCharactersSize!401 (Token!6224) Unit!32637)

(assert (=> b!1718881 (= lt!657171 (lemmaCharactersSize!401 (_1!10651 lt!657161)))))

(declare-fun lt!657170 () Unit!32637)

(declare-fun lemmaEqSameImage!254 (TokenValueInjection!6498 BalanceConc!12450 BalanceConc!12450) Unit!32637)

(assert (=> b!1718881 (= lt!657170 (lemmaEqSameImage!254 (transformation!3329 (rule!5271 (_1!10651 lt!657161))) lt!657178 (seqFromList!2303 (originalCharacters!4143 (_1!10651 lt!657161)))))))

(assert (= (and start!168314 res!770979) b!1718867))

(assert (= (and b!1718867 res!770982) b!1718878))

(assert (= (and b!1718878 res!770984) b!1718855))

(assert (= (and b!1718855 res!770977) b!1718868))

(assert (= (and b!1718868 res!770994) b!1718874))

(assert (= (and b!1718874 res!770980) b!1718877))

(assert (= (and b!1718877 res!770988) b!1718871))

(assert (= (and b!1718871 res!770978) b!1718859))

(assert (= (and b!1718859 (not res!770987)) b!1718863))

(assert (= (and b!1718863 (not res!770983)) b!1718860))

(assert (= (and b!1718860 (not res!770981)) b!1718879))

(assert (= (and b!1718879 res!770995) b!1718864))

(assert (= (and b!1718864 res!770992) b!1718866))

(assert (= (and b!1718879 (not res!770985)) b!1718865))

(assert (= (and b!1718865 (not res!770991)) b!1718856))

(assert (= (and b!1718856 (not res!770996)) b!1718875))

(assert (= (and b!1718875 (not res!770990)) b!1718857))

(assert (= (and b!1718857 (not res!770986)) b!1718881))

(assert (= (and b!1718881 (not res!770993)) b!1718858))

(assert (= (and b!1718858 (not res!770989)) b!1718853))

(assert (= (and start!168314 ((_ is Cons!18801) suffix!1421)) b!1718870))

(assert (= b!1718880 b!1718876))

(assert (= start!168314 b!1718880))

(assert (= b!1718872 b!1718854))

(assert (= b!1718861 b!1718872))

(assert (= start!168314 b!1718861))

(assert (= b!1718862 b!1718869))

(assert (= b!1718873 b!1718862))

(assert (= (and start!168314 ((_ is Cons!18802) rules!3447)) b!1718873))

(declare-fun b_lambda!54419 () Bool)

(assert (=> (not b_lambda!54419) (not b!1718857)))

(declare-fun t!159192 () Bool)

(declare-fun tb!101757 () Bool)

(assert (=> (and b!1718854 (= (toChars!4695 (transformation!3329 (rule!5271 token!523))) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159192) tb!101757))

(declare-fun b!1718897 () Bool)

(declare-fun e!1099406 () Bool)

(declare-fun tp!490923 () Bool)

(declare-fun inv!24275 (Conc!6253) Bool)

(assert (=> b!1718897 (= e!1099406 (and (inv!24275 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161))))) tp!490923))))

(declare-fun result!122296 () Bool)

(declare-fun inv!24276 (BalanceConc!12450) Bool)

(assert (=> tb!101757 (= result!122296 (and (inv!24276 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161)))) e!1099406))))

(assert (= tb!101757 b!1718897))

(declare-fun m!2123931 () Bool)

(assert (=> b!1718897 m!2123931))

(declare-fun m!2123933 () Bool)

(assert (=> tb!101757 m!2123933))

(assert (=> b!1718857 t!159192))

(declare-fun b_and!125239 () Bool)

(assert (= b_and!125229 (and (=> t!159192 result!122296) b_and!125239)))

(declare-fun tb!101759 () Bool)

(declare-fun t!159194 () Bool)

(assert (=> (and b!1718876 (= (toChars!4695 (transformation!3329 rule!422)) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159194) tb!101759))

(declare-fun result!122300 () Bool)

(assert (= result!122300 result!122296))

(assert (=> b!1718857 t!159194))

(declare-fun b_and!125241 () Bool)

(assert (= b_and!125233 (and (=> t!159194 result!122300) b_and!125241)))

(declare-fun tb!101761 () Bool)

(declare-fun t!159196 () Bool)

(assert (=> (and b!1718869 (= (toChars!4695 (transformation!3329 (h!24203 rules!3447))) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159196) tb!101761))

(declare-fun result!122302 () Bool)

(assert (= result!122302 result!122296))

(assert (=> b!1718857 t!159196))

(declare-fun b_and!125243 () Bool)

(assert (= b_and!125237 (and (=> t!159196 result!122302) b_and!125243)))

(declare-fun b_lambda!54421 () Bool)

(assert (=> (not b_lambda!54421) (not b!1718875)))

(declare-fun t!159198 () Bool)

(declare-fun tb!101763 () Bool)

(assert (=> (and b!1718854 (= (toChars!4695 (transformation!3329 (rule!5271 token!523))) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159198) tb!101763))

(declare-fun b!1718898 () Bool)

(declare-fun tp!490924 () Bool)

(declare-fun e!1099407 () Bool)

(assert (=> b!1718898 (= e!1099407 (and (inv!24275 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))) tp!490924))))

(declare-fun result!122304 () Bool)

(assert (=> tb!101763 (= result!122304 (and (inv!24276 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))) e!1099407))))

(assert (= tb!101763 b!1718898))

(declare-fun m!2123935 () Bool)

(assert (=> b!1718898 m!2123935))

(declare-fun m!2123937 () Bool)

(assert (=> tb!101763 m!2123937))

(assert (=> b!1718875 t!159198))

(declare-fun b_and!125245 () Bool)

(assert (= b_and!125239 (and (=> t!159198 result!122304) b_and!125245)))

(declare-fun tb!101765 () Bool)

(declare-fun t!159200 () Bool)

(assert (=> (and b!1718876 (= (toChars!4695 (transformation!3329 rule!422)) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159200) tb!101765))

(declare-fun result!122306 () Bool)

(assert (= result!122306 result!122304))

(assert (=> b!1718875 t!159200))

(declare-fun b_and!125247 () Bool)

(assert (= b_and!125241 (and (=> t!159200 result!122306) b_and!125247)))

(declare-fun tb!101767 () Bool)

(declare-fun t!159202 () Bool)

(assert (=> (and b!1718869 (= (toChars!4695 (transformation!3329 (h!24203 rules!3447))) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159202) tb!101767))

(declare-fun result!122308 () Bool)

(assert (= result!122308 result!122304))

(assert (=> b!1718875 t!159202))

(declare-fun b_and!125249 () Bool)

(assert (= b_and!125243 (and (=> t!159202 result!122308) b_and!125249)))

(declare-fun b_lambda!54423 () Bool)

(assert (=> (not b_lambda!54423) (not b!1718875)))

(declare-fun t!159204 () Bool)

(declare-fun tb!101769 () Bool)

(assert (=> (and b!1718854 (= (toValue!4836 (transformation!3329 (rule!5271 token!523))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159204) tb!101769))

(declare-fun result!122310 () Bool)

(assert (=> tb!101769 (= result!122310 (inv!21 (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))))

(declare-fun m!2123939 () Bool)

(assert (=> tb!101769 m!2123939))

(assert (=> b!1718875 t!159204))

(declare-fun b_and!125251 () Bool)

(assert (= b_and!125227 (and (=> t!159204 result!122310) b_and!125251)))

(declare-fun tb!101771 () Bool)

(declare-fun t!159206 () Bool)

(assert (=> (and b!1718876 (= (toValue!4836 (transformation!3329 rule!422)) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159206) tb!101771))

(declare-fun result!122314 () Bool)

(assert (= result!122314 result!122310))

(assert (=> b!1718875 t!159206))

(declare-fun b_and!125253 () Bool)

(assert (= b_and!125231 (and (=> t!159206 result!122314) b_and!125253)))

(declare-fun t!159208 () Bool)

(declare-fun tb!101773 () Bool)

(assert (=> (and b!1718869 (= (toValue!4836 (transformation!3329 (h!24203 rules!3447))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159208) tb!101773))

(declare-fun result!122316 () Bool)

(assert (= result!122316 result!122310))

(assert (=> b!1718875 t!159208))

(declare-fun b_and!125255 () Bool)

(assert (= b_and!125235 (and (=> t!159208 result!122316) b_and!125255)))

(declare-fun m!2123941 () Bool)

(assert (=> b!1718872 m!2123941))

(declare-fun m!2123943 () Bool)

(assert (=> b!1718872 m!2123943))

(declare-fun m!2123945 () Bool)

(assert (=> b!1718877 m!2123945))

(declare-fun m!2123947 () Bool)

(assert (=> b!1718868 m!2123947))

(declare-fun m!2123949 () Bool)

(assert (=> b!1718868 m!2123949))

(declare-fun m!2123951 () Bool)

(assert (=> b!1718868 m!2123951))

(assert (=> b!1718868 m!2123951))

(declare-fun m!2123953 () Bool)

(assert (=> b!1718868 m!2123953))

(declare-fun m!2123955 () Bool)

(assert (=> b!1718879 m!2123955))

(declare-fun m!2123957 () Bool)

(assert (=> b!1718879 m!2123957))

(declare-fun m!2123959 () Bool)

(assert (=> b!1718879 m!2123959))

(declare-fun m!2123961 () Bool)

(assert (=> b!1718879 m!2123961))

(declare-fun m!2123963 () Bool)

(assert (=> b!1718879 m!2123963))

(declare-fun m!2123965 () Bool)

(assert (=> b!1718879 m!2123965))

(declare-fun m!2123967 () Bool)

(assert (=> b!1718879 m!2123967))

(declare-fun m!2123969 () Bool)

(assert (=> b!1718879 m!2123969))

(declare-fun m!2123971 () Bool)

(assert (=> b!1718879 m!2123971))

(declare-fun m!2123973 () Bool)

(assert (=> b!1718879 m!2123973))

(declare-fun m!2123975 () Bool)

(assert (=> b!1718879 m!2123975))

(declare-fun m!2123977 () Bool)

(assert (=> b!1718879 m!2123977))

(assert (=> b!1718879 m!2123955))

(declare-fun m!2123979 () Bool)

(assert (=> b!1718879 m!2123979))

(declare-fun m!2123981 () Bool)

(assert (=> b!1718879 m!2123981))

(declare-fun m!2123983 () Bool)

(assert (=> b!1718879 m!2123983))

(declare-fun m!2123985 () Bool)

(assert (=> b!1718853 m!2123985))

(assert (=> b!1718864 m!2123975))

(assert (=> b!1718864 m!2123975))

(declare-fun m!2123987 () Bool)

(assert (=> b!1718864 m!2123987))

(assert (=> b!1718864 m!2123987))

(declare-fun m!2123989 () Bool)

(assert (=> b!1718864 m!2123989))

(declare-fun m!2123991 () Bool)

(assert (=> b!1718864 m!2123991))

(declare-fun m!2123993 () Bool)

(assert (=> b!1718867 m!2123993))

(declare-fun m!2123995 () Bool)

(assert (=> b!1718862 m!2123995))

(declare-fun m!2123997 () Bool)

(assert (=> b!1718862 m!2123997))

(declare-fun m!2123999 () Bool)

(assert (=> b!1718859 m!2123999))

(declare-fun m!2124001 () Bool)

(assert (=> b!1718859 m!2124001))

(declare-fun m!2124003 () Bool)

(assert (=> b!1718859 m!2124003))

(declare-fun m!2124005 () Bool)

(assert (=> b!1718878 m!2124005))

(declare-fun m!2124007 () Bool)

(assert (=> b!1718857 m!2124007))

(declare-fun m!2124009 () Bool)

(assert (=> start!168314 m!2124009))

(declare-fun m!2124011 () Bool)

(assert (=> b!1718865 m!2124011))

(declare-fun m!2124013 () Bool)

(assert (=> b!1718858 m!2124013))

(declare-fun m!2124015 () Bool)

(assert (=> b!1718858 m!2124015))

(declare-fun m!2124017 () Bool)

(assert (=> b!1718858 m!2124017))

(declare-fun m!2124019 () Bool)

(assert (=> b!1718858 m!2124019))

(assert (=> b!1718858 m!2124013))

(declare-fun m!2124021 () Bool)

(assert (=> b!1718858 m!2124021))

(declare-fun m!2124023 () Bool)

(assert (=> b!1718858 m!2124023))

(declare-fun m!2124025 () Bool)

(assert (=> b!1718858 m!2124025))

(declare-fun m!2124027 () Bool)

(assert (=> b!1718874 m!2124027))

(declare-fun m!2124029 () Bool)

(assert (=> b!1718856 m!2124029))

(declare-fun m!2124031 () Bool)

(assert (=> b!1718856 m!2124031))

(declare-fun m!2124033 () Bool)

(assert (=> b!1718875 m!2124033))

(assert (=> b!1718875 m!2124033))

(declare-fun m!2124035 () Bool)

(assert (=> b!1718875 m!2124035))

(assert (=> b!1718875 m!2124035))

(declare-fun m!2124037 () Bool)

(assert (=> b!1718875 m!2124037))

(declare-fun m!2124039 () Bool)

(assert (=> b!1718875 m!2124039))

(declare-fun m!2124041 () Bool)

(assert (=> b!1718881 m!2124041))

(declare-fun m!2124043 () Bool)

(assert (=> b!1718881 m!2124043))

(declare-fun m!2124045 () Bool)

(assert (=> b!1718881 m!2124045))

(assert (=> b!1718881 m!2124041))

(declare-fun m!2124047 () Bool)

(assert (=> b!1718881 m!2124047))

(declare-fun m!2124049 () Bool)

(assert (=> b!1718881 m!2124049))

(declare-fun m!2124051 () Bool)

(assert (=> b!1718855 m!2124051))

(declare-fun m!2124053 () Bool)

(assert (=> b!1718860 m!2124053))

(declare-fun m!2124055 () Bool)

(assert (=> b!1718860 m!2124055))

(declare-fun m!2124057 () Bool)

(assert (=> b!1718860 m!2124057))

(assert (=> b!1718860 m!2124053))

(assert (=> b!1718860 m!2124057))

(declare-fun m!2124059 () Bool)

(assert (=> b!1718860 m!2124059))

(declare-fun m!2124061 () Bool)

(assert (=> b!1718861 m!2124061))

(declare-fun m!2124063 () Bool)

(assert (=> b!1718880 m!2124063))

(declare-fun m!2124065 () Bool)

(assert (=> b!1718880 m!2124065))

(declare-fun m!2124067 () Bool)

(assert (=> b!1718863 m!2124067))

(check-sat (not b_lambda!54419) (not b!1718864) (not b!1718880) (not b!1718875) (not b_lambda!54423) b_and!125251 (not b!1718879) (not tb!101769) (not b!1718878) (not b!1718853) (not b!1718865) (not b!1718859) b_and!125255 b_and!125245 (not b!1718872) (not b!1718867) (not b!1718898) (not b_next!47499) (not b_next!47507) (not b_next!47509) (not b!1718862) (not b!1718855) (not b!1718858) (not b!1718873) b_and!125247 (not b!1718897) (not tb!101757) (not b_lambda!54421) (not b!1718881) b_and!125253 (not b!1718861) (not b!1718860) (not b!1718863) (not b_next!47503) b_and!125249 (not b!1718856) (not b!1718877) (not b!1718868) (not b!1718870) tp_is_empty!7557 (not b!1718874) (not tb!101763) (not b_next!47501) (not start!168314) (not b_next!47505))
(check-sat (not b_next!47499) b_and!125247 b_and!125251 b_and!125253 (not b_next!47501) (not b_next!47505) b_and!125255 b_and!125245 (not b_next!47507) (not b_next!47509) (not b_next!47503) b_and!125249)
(get-model)

(declare-fun d!527051 () Bool)

(declare-fun res!771001 () Bool)

(declare-fun e!1099413 () Bool)

(assert (=> d!527051 (=> (not res!771001) (not e!1099413))))

(assert (=> d!527051 (= res!771001 (not (isEmpty!11821 (originalCharacters!4143 token!523))))))

(assert (=> d!527051 (= (inv!24274 token!523) e!1099413)))

(declare-fun b!1718905 () Bool)

(declare-fun res!771002 () Bool)

(assert (=> b!1718905 (=> (not res!771002) (not e!1099413))))

(assert (=> b!1718905 (= res!771002 (= (originalCharacters!4143 token!523) (list!7594 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 token!523))) (value!104549 token!523)))))))

(declare-fun b!1718906 () Bool)

(assert (=> b!1718906 (= e!1099413 (= (size!14940 token!523) (size!14941 (originalCharacters!4143 token!523))))))

(assert (= (and d!527051 res!771001) b!1718905))

(assert (= (and b!1718905 res!771002) b!1718906))

(declare-fun b_lambda!54425 () Bool)

(assert (=> (not b_lambda!54425) (not b!1718905)))

(declare-fun t!159213 () Bool)

(declare-fun tb!101775 () Bool)

(assert (=> (and b!1718854 (= (toChars!4695 (transformation!3329 (rule!5271 token!523))) (toChars!4695 (transformation!3329 (rule!5271 token!523)))) t!159213) tb!101775))

(declare-fun b!1718907 () Bool)

(declare-fun e!1099414 () Bool)

(declare-fun tp!490925 () Bool)

(assert (=> b!1718907 (= e!1099414 (and (inv!24275 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 token!523))) (value!104549 token!523)))) tp!490925))))

(declare-fun result!122318 () Bool)

(assert (=> tb!101775 (= result!122318 (and (inv!24276 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 token!523))) (value!104549 token!523))) e!1099414))))

(assert (= tb!101775 b!1718907))

(declare-fun m!2124069 () Bool)

(assert (=> b!1718907 m!2124069))

(declare-fun m!2124071 () Bool)

(assert (=> tb!101775 m!2124071))

(assert (=> b!1718905 t!159213))

(declare-fun b_and!125257 () Bool)

(assert (= b_and!125245 (and (=> t!159213 result!122318) b_and!125257)))

(declare-fun tb!101777 () Bool)

(declare-fun t!159215 () Bool)

(assert (=> (and b!1718876 (= (toChars!4695 (transformation!3329 rule!422)) (toChars!4695 (transformation!3329 (rule!5271 token!523)))) t!159215) tb!101777))

(declare-fun result!122320 () Bool)

(assert (= result!122320 result!122318))

(assert (=> b!1718905 t!159215))

(declare-fun b_and!125259 () Bool)

(assert (= b_and!125247 (and (=> t!159215 result!122320) b_and!125259)))

(declare-fun tb!101779 () Bool)

(declare-fun t!159217 () Bool)

(assert (=> (and b!1718869 (= (toChars!4695 (transformation!3329 (h!24203 rules!3447))) (toChars!4695 (transformation!3329 (rule!5271 token!523)))) t!159217) tb!101779))

(declare-fun result!122322 () Bool)

(assert (= result!122322 result!122318))

(assert (=> b!1718905 t!159217))

(declare-fun b_and!125261 () Bool)

(assert (= b_and!125249 (and (=> t!159217 result!122322) b_and!125261)))

(declare-fun m!2124073 () Bool)

(assert (=> d!527051 m!2124073))

(declare-fun m!2124075 () Bool)

(assert (=> b!1718905 m!2124075))

(assert (=> b!1718905 m!2124075))

(declare-fun m!2124077 () Bool)

(assert (=> b!1718905 m!2124077))

(declare-fun m!2124079 () Bool)

(assert (=> b!1718906 m!2124079))

(assert (=> start!168314 d!527051))

(declare-fun d!527053 () Bool)

(assert (=> d!527053 (= (isEmpty!11822 rules!3447) ((_ is Nil!18802) rules!3447))))

(assert (=> b!1718867 d!527053))

(declare-fun b!1718970 () Bool)

(declare-fun e!1099458 () Bool)

(declare-fun e!1099457 () Bool)

(assert (=> b!1718970 (= e!1099458 e!1099457)))

(declare-fun res!771052 () Bool)

(assert (=> b!1718970 (=> (not res!771052) (not e!1099457))))

(declare-fun lt!657188 () Bool)

(assert (=> b!1718970 (= res!771052 (not lt!657188))))

(declare-fun b!1718971 () Bool)

(declare-fun e!1099461 () Bool)

(assert (=> b!1718971 (= e!1099461 (= (head!3878 lt!657169) (c!281354 (regex!3329 (rule!5271 (_1!10651 lt!657161))))))))

(declare-fun b!1718972 () Bool)

(declare-fun e!1099459 () Bool)

(declare-fun call!109681 () Bool)

(assert (=> b!1718972 (= e!1099459 (= lt!657188 call!109681))))

(declare-fun b!1718973 () Bool)

(declare-fun res!771053 () Bool)

(assert (=> b!1718973 (=> res!771053 e!1099458)))

(assert (=> b!1718973 (= res!771053 (not ((_ is ElementMatch!4657) (regex!3329 (rule!5271 (_1!10651 lt!657161))))))))

(declare-fun e!1099460 () Bool)

(assert (=> b!1718973 (= e!1099460 e!1099458)))

(declare-fun b!1718974 () Bool)

(assert (=> b!1718974 (= e!1099460 (not lt!657188))))

(declare-fun b!1718975 () Bool)

(declare-fun res!771048 () Bool)

(declare-fun e!1099456 () Bool)

(assert (=> b!1718975 (=> res!771048 e!1099456)))

(declare-fun tail!2567 (List!18871) List!18871)

(assert (=> b!1718975 (= res!771048 (not (isEmpty!11821 (tail!2567 lt!657169))))))

(declare-fun b!1718976 () Bool)

(declare-fun e!1099462 () Bool)

(declare-fun derivativeStep!1169 (Regex!4657 C!9488) Regex!4657)

(assert (=> b!1718976 (= e!1099462 (matchR!2131 (derivativeStep!1169 (regex!3329 (rule!5271 (_1!10651 lt!657161))) (head!3878 lt!657169)) (tail!2567 lt!657169)))))

(declare-fun b!1718977 () Bool)

(declare-fun res!771047 () Bool)

(assert (=> b!1718977 (=> (not res!771047) (not e!1099461))))

(assert (=> b!1718977 (= res!771047 (isEmpty!11821 (tail!2567 lt!657169)))))

(declare-fun b!1718978 () Bool)

(assert (=> b!1718978 (= e!1099457 e!1099456)))

(declare-fun res!771051 () Bool)

(assert (=> b!1718978 (=> res!771051 e!1099456)))

(assert (=> b!1718978 (= res!771051 call!109681)))

(declare-fun bm!109676 () Bool)

(assert (=> bm!109676 (= call!109681 (isEmpty!11821 lt!657169))))

(declare-fun b!1718980 () Bool)

(declare-fun nullable!1401 (Regex!4657) Bool)

(assert (=> b!1718980 (= e!1099462 (nullable!1401 (regex!3329 (rule!5271 (_1!10651 lt!657161)))))))

(declare-fun b!1718981 () Bool)

(assert (=> b!1718981 (= e!1099459 e!1099460)))

(declare-fun c!281365 () Bool)

(assert (=> b!1718981 (= c!281365 ((_ is EmptyLang!4657) (regex!3329 (rule!5271 (_1!10651 lt!657161)))))))

(declare-fun b!1718982 () Bool)

(declare-fun res!771049 () Bool)

(assert (=> b!1718982 (=> res!771049 e!1099458)))

(assert (=> b!1718982 (= res!771049 e!1099461)))

(declare-fun res!771054 () Bool)

(assert (=> b!1718982 (=> (not res!771054) (not e!1099461))))

(assert (=> b!1718982 (= res!771054 lt!657188)))

(declare-fun b!1718983 () Bool)

(assert (=> b!1718983 (= e!1099456 (not (= (head!3878 lt!657169) (c!281354 (regex!3329 (rule!5271 (_1!10651 lt!657161)))))))))

(declare-fun b!1718979 () Bool)

(declare-fun res!771050 () Bool)

(assert (=> b!1718979 (=> (not res!771050) (not e!1099461))))

(assert (=> b!1718979 (= res!771050 (not call!109681))))

(declare-fun d!527055 () Bool)

(assert (=> d!527055 e!1099459))

(declare-fun c!281367 () Bool)

(assert (=> d!527055 (= c!281367 ((_ is EmptyExpr!4657) (regex!3329 (rule!5271 (_1!10651 lt!657161)))))))

(assert (=> d!527055 (= lt!657188 e!1099462)))

(declare-fun c!281366 () Bool)

(assert (=> d!527055 (= c!281366 (isEmpty!11821 lt!657169))))

(declare-fun validRegex!1875 (Regex!4657) Bool)

(assert (=> d!527055 (validRegex!1875 (regex!3329 (rule!5271 (_1!10651 lt!657161))))))

(assert (=> d!527055 (= (matchR!2131 (regex!3329 (rule!5271 (_1!10651 lt!657161))) lt!657169) lt!657188)))

(assert (= (and d!527055 c!281366) b!1718980))

(assert (= (and d!527055 (not c!281366)) b!1718976))

(assert (= (and d!527055 c!281367) b!1718972))

(assert (= (and d!527055 (not c!281367)) b!1718981))

(assert (= (and b!1718981 c!281365) b!1718974))

(assert (= (and b!1718981 (not c!281365)) b!1718973))

(assert (= (and b!1718973 (not res!771053)) b!1718982))

(assert (= (and b!1718982 res!771054) b!1718979))

(assert (= (and b!1718979 res!771050) b!1718977))

(assert (= (and b!1718977 res!771047) b!1718971))

(assert (= (and b!1718982 (not res!771049)) b!1718970))

(assert (= (and b!1718970 res!771052) b!1718978))

(assert (= (and b!1718978 (not res!771051)) b!1718975))

(assert (= (and b!1718975 (not res!771048)) b!1718983))

(assert (= (or b!1718972 b!1718978 b!1718979) bm!109676))

(declare-fun m!2124115 () Bool)

(assert (=> b!1718976 m!2124115))

(assert (=> b!1718976 m!2124115))

(declare-fun m!2124117 () Bool)

(assert (=> b!1718976 m!2124117))

(declare-fun m!2124119 () Bool)

(assert (=> b!1718976 m!2124119))

(assert (=> b!1718976 m!2124117))

(assert (=> b!1718976 m!2124119))

(declare-fun m!2124121 () Bool)

(assert (=> b!1718976 m!2124121))

(assert (=> b!1718983 m!2124115))

(declare-fun m!2124123 () Bool)

(assert (=> d!527055 m!2124123))

(declare-fun m!2124125 () Bool)

(assert (=> d!527055 m!2124125))

(assert (=> b!1718971 m!2124115))

(assert (=> b!1718975 m!2124119))

(assert (=> b!1718975 m!2124119))

(declare-fun m!2124127 () Bool)

(assert (=> b!1718975 m!2124127))

(declare-fun m!2124129 () Bool)

(assert (=> b!1718980 m!2124129))

(assert (=> b!1718977 m!2124119))

(assert (=> b!1718977 m!2124119))

(assert (=> b!1718977 m!2124127))

(assert (=> bm!109676 m!2124123))

(assert (=> b!1718865 d!527055))

(declare-fun b!1718984 () Bool)

(declare-fun e!1099465 () Bool)

(declare-fun e!1099464 () Bool)

(assert (=> b!1718984 (= e!1099465 e!1099464)))

(declare-fun res!771060 () Bool)

(assert (=> b!1718984 (=> (not res!771060) (not e!1099464))))

(declare-fun lt!657189 () Bool)

(assert (=> b!1718984 (= res!771060 (not lt!657189))))

(declare-fun b!1718985 () Bool)

(declare-fun e!1099468 () Bool)

(assert (=> b!1718985 (= e!1099468 (= (head!3878 (list!7594 (charsOf!1978 (_1!10651 lt!657161)))) (c!281354 (regex!3329 lt!657177))))))

(declare-fun b!1718986 () Bool)

(declare-fun e!1099466 () Bool)

(declare-fun call!109682 () Bool)

(assert (=> b!1718986 (= e!1099466 (= lt!657189 call!109682))))

(declare-fun b!1718987 () Bool)

(declare-fun res!771061 () Bool)

(assert (=> b!1718987 (=> res!771061 e!1099465)))

(assert (=> b!1718987 (= res!771061 (not ((_ is ElementMatch!4657) (regex!3329 lt!657177))))))

(declare-fun e!1099467 () Bool)

(assert (=> b!1718987 (= e!1099467 e!1099465)))

(declare-fun b!1718988 () Bool)

(assert (=> b!1718988 (= e!1099467 (not lt!657189))))

(declare-fun b!1718989 () Bool)

(declare-fun res!771056 () Bool)

(declare-fun e!1099463 () Bool)

(assert (=> b!1718989 (=> res!771056 e!1099463)))

(assert (=> b!1718989 (= res!771056 (not (isEmpty!11821 (tail!2567 (list!7594 (charsOf!1978 (_1!10651 lt!657161)))))))))

(declare-fun b!1718990 () Bool)

(declare-fun e!1099469 () Bool)

(assert (=> b!1718990 (= e!1099469 (matchR!2131 (derivativeStep!1169 (regex!3329 lt!657177) (head!3878 (list!7594 (charsOf!1978 (_1!10651 lt!657161))))) (tail!2567 (list!7594 (charsOf!1978 (_1!10651 lt!657161))))))))

(declare-fun b!1718991 () Bool)

(declare-fun res!771055 () Bool)

(assert (=> b!1718991 (=> (not res!771055) (not e!1099468))))

(assert (=> b!1718991 (= res!771055 (isEmpty!11821 (tail!2567 (list!7594 (charsOf!1978 (_1!10651 lt!657161))))))))

(declare-fun b!1718992 () Bool)

(assert (=> b!1718992 (= e!1099464 e!1099463)))

(declare-fun res!771059 () Bool)

(assert (=> b!1718992 (=> res!771059 e!1099463)))

(assert (=> b!1718992 (= res!771059 call!109682)))

(declare-fun bm!109677 () Bool)

(assert (=> bm!109677 (= call!109682 (isEmpty!11821 (list!7594 (charsOf!1978 (_1!10651 lt!657161)))))))

(declare-fun b!1718994 () Bool)

(assert (=> b!1718994 (= e!1099469 (nullable!1401 (regex!3329 lt!657177)))))

(declare-fun b!1718995 () Bool)

(assert (=> b!1718995 (= e!1099466 e!1099467)))

(declare-fun c!281368 () Bool)

(assert (=> b!1718995 (= c!281368 ((_ is EmptyLang!4657) (regex!3329 lt!657177)))))

(declare-fun b!1718996 () Bool)

(declare-fun res!771057 () Bool)

(assert (=> b!1718996 (=> res!771057 e!1099465)))

(assert (=> b!1718996 (= res!771057 e!1099468)))

(declare-fun res!771062 () Bool)

(assert (=> b!1718996 (=> (not res!771062) (not e!1099468))))

(assert (=> b!1718996 (= res!771062 lt!657189)))

(declare-fun b!1718997 () Bool)

(assert (=> b!1718997 (= e!1099463 (not (= (head!3878 (list!7594 (charsOf!1978 (_1!10651 lt!657161)))) (c!281354 (regex!3329 lt!657177)))))))

(declare-fun b!1718993 () Bool)

(declare-fun res!771058 () Bool)

(assert (=> b!1718993 (=> (not res!771058) (not e!1099468))))

(assert (=> b!1718993 (= res!771058 (not call!109682))))

(declare-fun d!527073 () Bool)

(assert (=> d!527073 e!1099466))

(declare-fun c!281370 () Bool)

(assert (=> d!527073 (= c!281370 ((_ is EmptyExpr!4657) (regex!3329 lt!657177)))))

(assert (=> d!527073 (= lt!657189 e!1099469)))

(declare-fun c!281369 () Bool)

(assert (=> d!527073 (= c!281369 (isEmpty!11821 (list!7594 (charsOf!1978 (_1!10651 lt!657161)))))))

(assert (=> d!527073 (validRegex!1875 (regex!3329 lt!657177))))

(assert (=> d!527073 (= (matchR!2131 (regex!3329 lt!657177) (list!7594 (charsOf!1978 (_1!10651 lt!657161)))) lt!657189)))

(assert (= (and d!527073 c!281369) b!1718994))

(assert (= (and d!527073 (not c!281369)) b!1718990))

(assert (= (and d!527073 c!281370) b!1718986))

(assert (= (and d!527073 (not c!281370)) b!1718995))

(assert (= (and b!1718995 c!281368) b!1718988))

(assert (= (and b!1718995 (not c!281368)) b!1718987))

(assert (= (and b!1718987 (not res!771061)) b!1718996))

(assert (= (and b!1718996 res!771062) b!1718993))

(assert (= (and b!1718993 res!771058) b!1718991))

(assert (= (and b!1718991 res!771055) b!1718985))

(assert (= (and b!1718996 (not res!771057)) b!1718984))

(assert (= (and b!1718984 res!771060) b!1718992))

(assert (= (and b!1718992 (not res!771059)) b!1718989))

(assert (= (and b!1718989 (not res!771056)) b!1718997))

(assert (= (or b!1718986 b!1718992 b!1718993) bm!109677))

(assert (=> b!1718990 m!2123987))

(declare-fun m!2124131 () Bool)

(assert (=> b!1718990 m!2124131))

(assert (=> b!1718990 m!2124131))

(declare-fun m!2124133 () Bool)

(assert (=> b!1718990 m!2124133))

(assert (=> b!1718990 m!2123987))

(declare-fun m!2124135 () Bool)

(assert (=> b!1718990 m!2124135))

(assert (=> b!1718990 m!2124133))

(assert (=> b!1718990 m!2124135))

(declare-fun m!2124137 () Bool)

(assert (=> b!1718990 m!2124137))

(assert (=> b!1718997 m!2123987))

(assert (=> b!1718997 m!2124131))

(assert (=> d!527073 m!2123987))

(declare-fun m!2124139 () Bool)

(assert (=> d!527073 m!2124139))

(declare-fun m!2124141 () Bool)

(assert (=> d!527073 m!2124141))

(assert (=> b!1718985 m!2123987))

(assert (=> b!1718985 m!2124131))

(assert (=> b!1718989 m!2123987))

(assert (=> b!1718989 m!2124135))

(assert (=> b!1718989 m!2124135))

(declare-fun m!2124143 () Bool)

(assert (=> b!1718989 m!2124143))

(declare-fun m!2124145 () Bool)

(assert (=> b!1718994 m!2124145))

(assert (=> b!1718991 m!2123987))

(assert (=> b!1718991 m!2124135))

(assert (=> b!1718991 m!2124135))

(assert (=> b!1718991 m!2124143))

(assert (=> bm!109677 m!2123987))

(assert (=> bm!109677 m!2124139))

(assert (=> b!1718864 d!527073))

(declare-fun d!527075 () Bool)

(declare-fun list!7596 (Conc!6253) List!18871)

(assert (=> d!527075 (= (list!7594 (charsOf!1978 (_1!10651 lt!657161))) (list!7596 (c!281355 (charsOf!1978 (_1!10651 lt!657161)))))))

(declare-fun bs!402126 () Bool)

(assert (= bs!402126 d!527075))

(declare-fun m!2124147 () Bool)

(assert (=> bs!402126 m!2124147))

(assert (=> b!1718864 d!527075))

(declare-fun d!527077 () Bool)

(declare-fun lt!657192 () BalanceConc!12450)

(assert (=> d!527077 (= (list!7594 lt!657192) (originalCharacters!4143 (_1!10651 lt!657161)))))

(assert (=> d!527077 (= lt!657192 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161))))))

(assert (=> d!527077 (= (charsOf!1978 (_1!10651 lt!657161)) lt!657192)))

(declare-fun b_lambda!54427 () Bool)

(assert (=> (not b_lambda!54427) (not d!527077)))

(assert (=> d!527077 t!159192))

(declare-fun b_and!125263 () Bool)

(assert (= b_and!125257 (and (=> t!159192 result!122296) b_and!125263)))

(assert (=> d!527077 t!159194))

(declare-fun b_and!125265 () Bool)

(assert (= b_and!125259 (and (=> t!159194 result!122300) b_and!125265)))

(assert (=> d!527077 t!159196))

(declare-fun b_and!125267 () Bool)

(assert (= b_and!125261 (and (=> t!159196 result!122302) b_and!125267)))

(declare-fun m!2124149 () Bool)

(assert (=> d!527077 m!2124149))

(assert (=> d!527077 m!2124007))

(assert (=> b!1718864 d!527077))

(declare-fun d!527079 () Bool)

(assert (=> d!527079 (= (get!5564 lt!657159) (v!25081 lt!657159))))

(assert (=> b!1718864 d!527079))

(declare-fun d!527081 () Bool)

(declare-fun c!281375 () Bool)

(assert (=> d!527081 (= c!281375 ((_ is Node!6253) (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))))))

(declare-fun e!1099480 () Bool)

(assert (=> d!527081 (= (inv!24275 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))) e!1099480)))

(declare-fun b!1719022 () Bool)

(declare-fun inv!24279 (Conc!6253) Bool)

(assert (=> b!1719022 (= e!1099480 (inv!24279 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))))))

(declare-fun b!1719023 () Bool)

(declare-fun e!1099481 () Bool)

(assert (=> b!1719023 (= e!1099480 e!1099481)))

(declare-fun res!771079 () Bool)

(assert (=> b!1719023 (= res!771079 (not ((_ is Leaf!9138) (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))))))))

(assert (=> b!1719023 (=> res!771079 e!1099481)))

(declare-fun b!1719024 () Bool)

(declare-fun inv!24280 (Conc!6253) Bool)

(assert (=> b!1719024 (= e!1099481 (inv!24280 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))))))

(assert (= (and d!527081 c!281375) b!1719022))

(assert (= (and d!527081 (not c!281375)) b!1719023))

(assert (= (and b!1719023 (not res!771079)) b!1719024))

(declare-fun m!2124151 () Bool)

(assert (=> b!1719022 m!2124151))

(declare-fun m!2124153 () Bool)

(assert (=> b!1719024 m!2124153))

(assert (=> b!1718898 d!527081))

(declare-fun d!527083 () Bool)

(assert (=> d!527083 (= (isEmpty!11821 suffix!1421) ((_ is Nil!18801) suffix!1421))))

(assert (=> b!1718863 d!527083))

(declare-fun d!527085 () Bool)

(assert (=> d!527085 (= (inv!24268 (tag!3635 (rule!5271 token!523))) (= (mod (str.len (value!104548 (tag!3635 (rule!5271 token!523)))) 2) 0))))

(assert (=> b!1718872 d!527085))

(declare-fun d!527087 () Bool)

(declare-fun res!771089 () Bool)

(declare-fun e!1099487 () Bool)

(assert (=> d!527087 (=> (not res!771089) (not e!1099487))))

(declare-fun semiInverseModEq!1315 (Int Int) Bool)

(assert (=> d!527087 (= res!771089 (semiInverseModEq!1315 (toChars!4695 (transformation!3329 (rule!5271 token!523))) (toValue!4836 (transformation!3329 (rule!5271 token!523)))))))

(assert (=> d!527087 (= (inv!24273 (transformation!3329 (rule!5271 token!523))) e!1099487)))

(declare-fun b!1719036 () Bool)

(declare-fun equivClasses!1256 (Int Int) Bool)

(assert (=> b!1719036 (= e!1099487 (equivClasses!1256 (toChars!4695 (transformation!3329 (rule!5271 token!523))) (toValue!4836 (transformation!3329 (rule!5271 token!523)))))))

(assert (= (and d!527087 res!771089) b!1719036))

(declare-fun m!2124189 () Bool)

(assert (=> d!527087 m!2124189))

(declare-fun m!2124191 () Bool)

(assert (=> b!1719036 m!2124191))

(assert (=> b!1718872 d!527087))

(declare-fun b!1719047 () Bool)

(declare-fun e!1099495 () Bool)

(declare-fun inv!17 (TokenValue!3419) Bool)

(assert (=> b!1719047 (= e!1099495 (inv!17 (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))))

(declare-fun b!1719048 () Bool)

(declare-fun e!1099494 () Bool)

(assert (=> b!1719048 (= e!1099494 e!1099495)))

(declare-fun c!281381 () Bool)

(assert (=> b!1719048 (= c!281381 ((_ is IntegerValue!10258) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))))

(declare-fun b!1719049 () Bool)

(declare-fun res!771092 () Bool)

(declare-fun e!1099496 () Bool)

(assert (=> b!1719049 (=> res!771092 e!1099496)))

(assert (=> b!1719049 (= res!771092 (not ((_ is IntegerValue!10259) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))))))

(assert (=> b!1719049 (= e!1099495 e!1099496)))

(declare-fun d!527093 () Bool)

(declare-fun c!281382 () Bool)

(assert (=> d!527093 (= c!281382 ((_ is IntegerValue!10257) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))))

(assert (=> d!527093 (= (inv!21 (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)) e!1099494)))

(declare-fun b!1719050 () Bool)

(declare-fun inv!16 (TokenValue!3419) Bool)

(assert (=> b!1719050 (= e!1099494 (inv!16 (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))))

(declare-fun b!1719051 () Bool)

(declare-fun inv!15 (TokenValue!3419) Bool)

(assert (=> b!1719051 (= e!1099496 (inv!15 (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))))

(assert (= (and d!527093 c!281382) b!1719050))

(assert (= (and d!527093 (not c!281382)) b!1719048))

(assert (= (and b!1719048 c!281381) b!1719047))

(assert (= (and b!1719048 (not c!281381)) b!1719049))

(assert (= (and b!1719049 (not res!771092)) b!1719051))

(declare-fun m!2124193 () Bool)

(assert (=> b!1719047 m!2124193))

(declare-fun m!2124195 () Bool)

(assert (=> b!1719050 m!2124195))

(declare-fun m!2124197 () Bool)

(assert (=> b!1719051 m!2124197))

(assert (=> tb!101769 d!527093))

(declare-fun d!527095 () Bool)

(declare-fun isEmpty!11825 (Option!3682) Bool)

(assert (=> d!527095 (= (isDefined!3025 lt!657160) (not (isEmpty!11825 lt!657160)))))

(declare-fun bs!402128 () Bool)

(assert (= bs!402128 d!527095))

(declare-fun m!2124199 () Bool)

(assert (=> bs!402128 m!2124199))

(assert (=> b!1718868 d!527095))

(declare-fun d!527097 () Bool)

(declare-fun e!1099503 () Bool)

(assert (=> d!527097 e!1099503))

(declare-fun res!771113 () Bool)

(assert (=> d!527097 (=> res!771113 e!1099503)))

(declare-fun lt!657223 () Option!3682)

(assert (=> d!527097 (= res!771113 (isEmpty!11825 lt!657223))))

(declare-fun e!1099505 () Option!3682)

(assert (=> d!527097 (= lt!657223 e!1099505)))

(declare-fun c!281385 () Bool)

(assert (=> d!527097 (= c!281385 (and ((_ is Cons!18802) rules!3447) ((_ is Nil!18802) (t!159211 rules!3447))))))

(declare-fun lt!657221 () Unit!32637)

(declare-fun lt!657222 () Unit!32637)

(assert (=> d!527097 (= lt!657221 lt!657222)))

(assert (=> d!527097 (isPrefix!1570 lt!657162 lt!657162)))

(declare-fun lemmaIsPrefixRefl!1065 (List!18871 List!18871) Unit!32637)

(assert (=> d!527097 (= lt!657222 (lemmaIsPrefixRefl!1065 lt!657162 lt!657162))))

(declare-fun rulesValidInductive!1102 (LexerInterface!2958 List!18872) Bool)

(assert (=> d!527097 (rulesValidInductive!1102 thiss!24550 rules!3447)))

(assert (=> d!527097 (= (maxPrefix!1512 thiss!24550 rules!3447 lt!657162) lt!657223)))

(declare-fun b!1719070 () Bool)

(declare-fun res!771107 () Bool)

(declare-fun e!1099504 () Bool)

(assert (=> b!1719070 (=> (not res!771107) (not e!1099504))))

(assert (=> b!1719070 (= res!771107 (< (size!14941 (_2!10651 (get!5565 lt!657223))) (size!14941 lt!657162)))))

(declare-fun b!1719071 () Bool)

(declare-fun call!109688 () Option!3682)

(assert (=> b!1719071 (= e!1099505 call!109688)))

(declare-fun bm!109683 () Bool)

(assert (=> bm!109683 (= call!109688 (maxPrefixOneRule!888 thiss!24550 (h!24203 rules!3447) lt!657162))))

(declare-fun b!1719072 () Bool)

(declare-fun res!771109 () Bool)

(assert (=> b!1719072 (=> (not res!771109) (not e!1099504))))

(assert (=> b!1719072 (= res!771109 (= (value!104549 (_1!10651 (get!5565 lt!657223))) (apply!5134 (transformation!3329 (rule!5271 (_1!10651 (get!5565 lt!657223)))) (seqFromList!2303 (originalCharacters!4143 (_1!10651 (get!5565 lt!657223)))))))))

(declare-fun b!1719073 () Bool)

(declare-fun lt!657224 () Option!3682)

(declare-fun lt!657225 () Option!3682)

(assert (=> b!1719073 (= e!1099505 (ite (and ((_ is None!3681) lt!657224) ((_ is None!3681) lt!657225)) None!3681 (ite ((_ is None!3681) lt!657225) lt!657224 (ite ((_ is None!3681) lt!657224) lt!657225 (ite (>= (size!14940 (_1!10651 (v!25080 lt!657224))) (size!14940 (_1!10651 (v!25080 lt!657225)))) lt!657224 lt!657225)))))))

(assert (=> b!1719073 (= lt!657224 call!109688)))

(assert (=> b!1719073 (= lt!657225 (maxPrefix!1512 thiss!24550 (t!159211 rules!3447) lt!657162))))

(declare-fun b!1719074 () Bool)

(declare-fun res!771111 () Bool)

(assert (=> b!1719074 (=> (not res!771111) (not e!1099504))))

(assert (=> b!1719074 (= res!771111 (= (list!7594 (charsOf!1978 (_1!10651 (get!5565 lt!657223)))) (originalCharacters!4143 (_1!10651 (get!5565 lt!657223)))))))

(declare-fun b!1719075 () Bool)

(assert (=> b!1719075 (= e!1099504 (contains!3351 rules!3447 (rule!5271 (_1!10651 (get!5565 lt!657223)))))))

(declare-fun b!1719076 () Bool)

(declare-fun res!771110 () Bool)

(assert (=> b!1719076 (=> (not res!771110) (not e!1099504))))

(assert (=> b!1719076 (= res!771110 (= (++!5154 (list!7594 (charsOf!1978 (_1!10651 (get!5565 lt!657223)))) (_2!10651 (get!5565 lt!657223))) lt!657162))))

(declare-fun b!1719077 () Bool)

(declare-fun res!771108 () Bool)

(assert (=> b!1719077 (=> (not res!771108) (not e!1099504))))

(assert (=> b!1719077 (= res!771108 (matchR!2131 (regex!3329 (rule!5271 (_1!10651 (get!5565 lt!657223)))) (list!7594 (charsOf!1978 (_1!10651 (get!5565 lt!657223))))))))

(declare-fun b!1719078 () Bool)

(assert (=> b!1719078 (= e!1099503 e!1099504)))

(declare-fun res!771112 () Bool)

(assert (=> b!1719078 (=> (not res!771112) (not e!1099504))))

(assert (=> b!1719078 (= res!771112 (isDefined!3025 lt!657223))))

(assert (= (and d!527097 c!281385) b!1719071))

(assert (= (and d!527097 (not c!281385)) b!1719073))

(assert (= (or b!1719071 b!1719073) bm!109683))

(assert (= (and d!527097 (not res!771113)) b!1719078))

(assert (= (and b!1719078 res!771112) b!1719074))

(assert (= (and b!1719074 res!771111) b!1719070))

(assert (= (and b!1719070 res!771107) b!1719076))

(assert (= (and b!1719076 res!771110) b!1719072))

(assert (= (and b!1719072 res!771109) b!1719077))

(assert (= (and b!1719077 res!771108) b!1719075))

(declare-fun m!2124201 () Bool)

(assert (=> b!1719077 m!2124201))

(declare-fun m!2124203 () Bool)

(assert (=> b!1719077 m!2124203))

(assert (=> b!1719077 m!2124203))

(declare-fun m!2124205 () Bool)

(assert (=> b!1719077 m!2124205))

(assert (=> b!1719077 m!2124205))

(declare-fun m!2124207 () Bool)

(assert (=> b!1719077 m!2124207))

(declare-fun m!2124209 () Bool)

(assert (=> b!1719073 m!2124209))

(assert (=> b!1719074 m!2124201))

(assert (=> b!1719074 m!2124203))

(assert (=> b!1719074 m!2124203))

(assert (=> b!1719074 m!2124205))

(declare-fun m!2124211 () Bool)

(assert (=> d!527097 m!2124211))

(declare-fun m!2124213 () Bool)

(assert (=> d!527097 m!2124213))

(declare-fun m!2124215 () Bool)

(assert (=> d!527097 m!2124215))

(declare-fun m!2124217 () Bool)

(assert (=> d!527097 m!2124217))

(assert (=> b!1719075 m!2124201))

(declare-fun m!2124219 () Bool)

(assert (=> b!1719075 m!2124219))

(assert (=> b!1719076 m!2124201))

(assert (=> b!1719076 m!2124203))

(assert (=> b!1719076 m!2124203))

(assert (=> b!1719076 m!2124205))

(assert (=> b!1719076 m!2124205))

(declare-fun m!2124221 () Bool)

(assert (=> b!1719076 m!2124221))

(assert (=> b!1719072 m!2124201))

(declare-fun m!2124223 () Bool)

(assert (=> b!1719072 m!2124223))

(assert (=> b!1719072 m!2124223))

(declare-fun m!2124225 () Bool)

(assert (=> b!1719072 m!2124225))

(declare-fun m!2124227 () Bool)

(assert (=> b!1719078 m!2124227))

(assert (=> b!1719070 m!2124201))

(declare-fun m!2124229 () Bool)

(assert (=> b!1719070 m!2124229))

(declare-fun m!2124231 () Bool)

(assert (=> b!1719070 m!2124231))

(declare-fun m!2124233 () Bool)

(assert (=> bm!109683 m!2124233))

(assert (=> b!1718868 d!527097))

(declare-fun d!527099 () Bool)

(assert (=> d!527099 (= (list!7594 (charsOf!1978 token!523)) (list!7596 (c!281355 (charsOf!1978 token!523))))))

(declare-fun bs!402129 () Bool)

(assert (= bs!402129 d!527099))

(declare-fun m!2124235 () Bool)

(assert (=> bs!402129 m!2124235))

(assert (=> b!1718868 d!527099))

(declare-fun d!527101 () Bool)

(declare-fun lt!657226 () BalanceConc!12450)

(assert (=> d!527101 (= (list!7594 lt!657226) (originalCharacters!4143 token!523))))

(assert (=> d!527101 (= lt!657226 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 token!523))) (value!104549 token!523)))))

(assert (=> d!527101 (= (charsOf!1978 token!523) lt!657226)))

(declare-fun b_lambda!54429 () Bool)

(assert (=> (not b_lambda!54429) (not d!527101)))

(assert (=> d!527101 t!159213))

(declare-fun b_and!125269 () Bool)

(assert (= b_and!125263 (and (=> t!159213 result!122318) b_and!125269)))

(assert (=> d!527101 t!159215))

(declare-fun b_and!125271 () Bool)

(assert (= b_and!125265 (and (=> t!159215 result!122320) b_and!125271)))

(assert (=> d!527101 t!159217))

(declare-fun b_and!125273 () Bool)

(assert (= b_and!125267 (and (=> t!159217 result!122322) b_and!125273)))

(declare-fun m!2124237 () Bool)

(assert (=> d!527101 m!2124237))

(assert (=> d!527101 m!2124075))

(assert (=> b!1718868 d!527101))

(declare-fun d!527103 () Bool)

(assert (=> d!527103 (= (isEmpty!11821 (_2!10651 lt!657165)) ((_ is Nil!18801) (_2!10651 lt!657165)))))

(assert (=> b!1718877 d!527103))

(declare-fun d!527105 () Bool)

(declare-fun choose!10442 (Int) Bool)

(assert (=> d!527105 (= (Forall!704 lambda!69056) (choose!10442 lambda!69056))))

(declare-fun bs!402130 () Bool)

(assert (= bs!402130 d!527105))

(declare-fun m!2124239 () Bool)

(assert (=> bs!402130 m!2124239))

(assert (=> b!1718856 d!527105))

(declare-fun d!527107 () Bool)

(declare-fun e!1099508 () Bool)

(assert (=> d!527107 e!1099508))

(declare-fun res!771116 () Bool)

(assert (=> d!527107 (=> (not res!771116) (not e!1099508))))

(assert (=> d!527107 (= res!771116 (semiInverseModEq!1315 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))))))

(declare-fun Unit!32641 () Unit!32637)

(assert (=> d!527107 (= (lemmaInv!536 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) Unit!32641)))

(declare-fun b!1719081 () Bool)

(assert (=> b!1719081 (= e!1099508 (equivClasses!1256 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))))))

(assert (= (and d!527107 res!771116) b!1719081))

(declare-fun m!2124241 () Bool)

(assert (=> d!527107 m!2124241))

(declare-fun m!2124243 () Bool)

(assert (=> b!1719081 m!2124243))

(assert (=> b!1718856 d!527107))

(declare-fun d!527109 () Bool)

(declare-fun res!771119 () Bool)

(declare-fun e!1099511 () Bool)

(assert (=> d!527109 (=> (not res!771119) (not e!1099511))))

(declare-fun rulesValid!1241 (LexerInterface!2958 List!18872) Bool)

(assert (=> d!527109 (= res!771119 (rulesValid!1241 thiss!24550 rules!3447))))

(assert (=> d!527109 (= (rulesInvariant!2627 thiss!24550 rules!3447) e!1099511)))

(declare-fun b!1719084 () Bool)

(declare-datatypes ((List!18874 0))(
  ( (Nil!18804) (Cons!18804 (h!24205 String!21427) (t!159273 List!18874)) )
))
(declare-fun noDuplicateTag!1241 (LexerInterface!2958 List!18872 List!18874) Bool)

(assert (=> b!1719084 (= e!1099511 (noDuplicateTag!1241 thiss!24550 rules!3447 Nil!18804))))

(assert (= (and d!527109 res!771119) b!1719084))

(declare-fun m!2124245 () Bool)

(assert (=> d!527109 m!2124245))

(declare-fun m!2124247 () Bool)

(assert (=> b!1719084 m!2124247))

(assert (=> b!1718878 d!527109))

(declare-fun d!527111 () Bool)

(declare-fun lt!657229 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2680 (List!18872) (InoxSet Rule!6458))

(assert (=> d!527111 (= lt!657229 (select (content!2680 rules!3447) rule!422))))

(declare-fun e!1099517 () Bool)

(assert (=> d!527111 (= lt!657229 e!1099517)))

(declare-fun res!771124 () Bool)

(assert (=> d!527111 (=> (not res!771124) (not e!1099517))))

(assert (=> d!527111 (= res!771124 ((_ is Cons!18802) rules!3447))))

(assert (=> d!527111 (= (contains!3351 rules!3447 rule!422) lt!657229)))

(declare-fun b!1719089 () Bool)

(declare-fun e!1099516 () Bool)

(assert (=> b!1719089 (= e!1099517 e!1099516)))

(declare-fun res!771125 () Bool)

(assert (=> b!1719089 (=> res!771125 e!1099516)))

(assert (=> b!1719089 (= res!771125 (= (h!24203 rules!3447) rule!422))))

(declare-fun b!1719090 () Bool)

(assert (=> b!1719090 (= e!1099516 (contains!3351 (t!159211 rules!3447) rule!422))))

(assert (= (and d!527111 res!771124) b!1719089))

(assert (= (and b!1719089 (not res!771125)) b!1719090))

(declare-fun m!2124249 () Bool)

(assert (=> d!527111 m!2124249))

(declare-fun m!2124251 () Bool)

(assert (=> d!527111 m!2124251))

(declare-fun m!2124253 () Bool)

(assert (=> b!1719090 m!2124253))

(assert (=> b!1718855 d!527111))

(declare-fun d!527113 () Bool)

(declare-fun res!771130 () Bool)

(declare-fun e!1099520 () Bool)

(assert (=> d!527113 (=> (not res!771130) (not e!1099520))))

(assert (=> d!527113 (= res!771130 (validRegex!1875 (regex!3329 (rule!5271 (_1!10651 lt!657161)))))))

(assert (=> d!527113 (= (ruleValid!828 thiss!24550 (rule!5271 (_1!10651 lt!657161))) e!1099520)))

(declare-fun b!1719095 () Bool)

(declare-fun res!771131 () Bool)

(assert (=> b!1719095 (=> (not res!771131) (not e!1099520))))

(assert (=> b!1719095 (= res!771131 (not (nullable!1401 (regex!3329 (rule!5271 (_1!10651 lt!657161))))))))

(declare-fun b!1719096 () Bool)

(assert (=> b!1719096 (= e!1099520 (not (= (tag!3635 (rule!5271 (_1!10651 lt!657161))) (String!21428 ""))))))

(assert (= (and d!527113 res!771130) b!1719095))

(assert (= (and b!1719095 res!771131) b!1719096))

(assert (=> d!527113 m!2124125))

(assert (=> b!1719095 m!2124129))

(assert (=> b!1718853 d!527113))

(declare-fun d!527115 () Bool)

(declare-fun c!281386 () Bool)

(assert (=> d!527115 (= c!281386 ((_ is Node!6253) (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161))))))))

(declare-fun e!1099521 () Bool)

(assert (=> d!527115 (= (inv!24275 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161))))) e!1099521)))

(declare-fun b!1719097 () Bool)

(assert (=> b!1719097 (= e!1099521 (inv!24279 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161))))))))

(declare-fun b!1719098 () Bool)

(declare-fun e!1099522 () Bool)

(assert (=> b!1719098 (= e!1099521 e!1099522)))

(declare-fun res!771132 () Bool)

(assert (=> b!1719098 (= res!771132 (not ((_ is Leaf!9138) (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161)))))))))

(assert (=> b!1719098 (=> res!771132 e!1099522)))

(declare-fun b!1719099 () Bool)

(assert (=> b!1719099 (= e!1099522 (inv!24280 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161))))))))

(assert (= (and d!527115 c!281386) b!1719097))

(assert (= (and d!527115 (not c!281386)) b!1719098))

(assert (= (and b!1719098 (not res!771132)) b!1719099))

(declare-fun m!2124255 () Bool)

(assert (=> b!1719097 m!2124255))

(declare-fun m!2124257 () Bool)

(assert (=> b!1719099 m!2124257))

(assert (=> b!1718897 d!527115))

(declare-fun d!527117 () Bool)

(assert (=> d!527117 (= (list!7594 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))) (list!7596 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))))))

(declare-fun bs!402131 () Bool)

(assert (= bs!402131 d!527117))

(declare-fun m!2124259 () Bool)

(assert (=> bs!402131 m!2124259))

(assert (=> b!1718875 d!527117))

(declare-fun bs!402132 () Bool)

(declare-fun d!527119 () Bool)

(assert (= bs!402132 (and d!527119 b!1718856)))

(declare-fun lambda!69059 () Int)

(assert (=> bs!402132 (= lambda!69059 lambda!69056)))

(declare-fun b!1719104 () Bool)

(declare-fun e!1099525 () Bool)

(assert (=> b!1719104 (= e!1099525 true)))

(assert (=> d!527119 e!1099525))

(assert (= d!527119 b!1719104))

(assert (=> b!1719104 (< (dynLambda!8628 order!11419 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) (dynLambda!8629 order!11421 lambda!69059))))

(assert (=> b!1719104 (< (dynLambda!8630 order!11423 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) (dynLambda!8629 order!11421 lambda!69059))))

(assert (=> d!527119 (= (list!7594 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))) (list!7594 lt!657178))))

(declare-fun lt!657232 () Unit!32637)

(declare-fun ForallOf!257 (Int BalanceConc!12450) Unit!32637)

(assert (=> d!527119 (= lt!657232 (ForallOf!257 lambda!69059 lt!657178))))

(assert (=> d!527119 (= (lemmaSemiInverse!475 (transformation!3329 (rule!5271 (_1!10651 lt!657161))) lt!657178) lt!657232)))

(declare-fun b_lambda!54431 () Bool)

(assert (=> (not b_lambda!54431) (not d!527119)))

(assert (=> d!527119 t!159198))

(declare-fun b_and!125275 () Bool)

(assert (= b_and!125269 (and (=> t!159198 result!122304) b_and!125275)))

(assert (=> d!527119 t!159200))

(declare-fun b_and!125277 () Bool)

(assert (= b_and!125271 (and (=> t!159200 result!122306) b_and!125277)))

(assert (=> d!527119 t!159202))

(declare-fun b_and!125279 () Bool)

(assert (= b_and!125273 (and (=> t!159202 result!122308) b_and!125279)))

(declare-fun b_lambda!54433 () Bool)

(assert (=> (not b_lambda!54433) (not d!527119)))

(assert (=> d!527119 t!159204))

(declare-fun b_and!125281 () Bool)

(assert (= b_and!125251 (and (=> t!159204 result!122310) b_and!125281)))

(assert (=> d!527119 t!159206))

(declare-fun b_and!125283 () Bool)

(assert (= b_and!125253 (and (=> t!159206 result!122314) b_and!125283)))

(assert (=> d!527119 t!159208))

(declare-fun b_and!125285 () Bool)

(assert (= b_and!125255 (and (=> t!159208 result!122316) b_and!125285)))

(assert (=> d!527119 m!2124035))

(assert (=> d!527119 m!2124037))

(declare-fun m!2124261 () Bool)

(assert (=> d!527119 m!2124261))

(assert (=> d!527119 m!2124033))

(assert (=> d!527119 m!2124035))

(assert (=> d!527119 m!2124033))

(assert (=> d!527119 m!2123973))

(assert (=> b!1718875 d!527119))

(declare-fun d!527121 () Bool)

(assert (=> d!527121 (= (get!5565 lt!657160) (v!25080 lt!657160))))

(assert (=> b!1718874 d!527121))

(declare-fun b!1719105 () Bool)

(declare-fun e!1099527 () Bool)

(assert (=> b!1719105 (= e!1099527 (inv!17 (value!104549 token!523)))))

(declare-fun b!1719106 () Bool)

(declare-fun e!1099526 () Bool)

(assert (=> b!1719106 (= e!1099526 e!1099527)))

(declare-fun c!281388 () Bool)

(assert (=> b!1719106 (= c!281388 ((_ is IntegerValue!10258) (value!104549 token!523)))))

(declare-fun b!1719107 () Bool)

(declare-fun res!771133 () Bool)

(declare-fun e!1099528 () Bool)

(assert (=> b!1719107 (=> res!771133 e!1099528)))

(assert (=> b!1719107 (= res!771133 (not ((_ is IntegerValue!10259) (value!104549 token!523))))))

(assert (=> b!1719107 (= e!1099527 e!1099528)))

(declare-fun d!527123 () Bool)

(declare-fun c!281389 () Bool)

(assert (=> d!527123 (= c!281389 ((_ is IntegerValue!10257) (value!104549 token!523)))))

(assert (=> d!527123 (= (inv!21 (value!104549 token!523)) e!1099526)))

(declare-fun b!1719108 () Bool)

(assert (=> b!1719108 (= e!1099526 (inv!16 (value!104549 token!523)))))

(declare-fun b!1719109 () Bool)

(assert (=> b!1719109 (= e!1099528 (inv!15 (value!104549 token!523)))))

(assert (= (and d!527123 c!281389) b!1719108))

(assert (= (and d!527123 (not c!281389)) b!1719106))

(assert (= (and b!1719106 c!281388) b!1719105))

(assert (= (and b!1719106 (not c!281388)) b!1719107))

(assert (= (and b!1719107 (not res!771133)) b!1719109))

(declare-fun m!2124263 () Bool)

(assert (=> b!1719105 m!2124263))

(declare-fun m!2124265 () Bool)

(assert (=> b!1719108 m!2124265))

(declare-fun m!2124267 () Bool)

(assert (=> b!1719109 m!2124267))

(assert (=> b!1718861 d!527123))

(declare-fun d!527125 () Bool)

(assert (=> d!527125 (= (inv!24268 (tag!3635 (h!24203 rules!3447))) (= (mod (str.len (value!104548 (tag!3635 (h!24203 rules!3447)))) 2) 0))))

(assert (=> b!1718862 d!527125))

(declare-fun d!527127 () Bool)

(declare-fun res!771134 () Bool)

(declare-fun e!1099529 () Bool)

(assert (=> d!527127 (=> (not res!771134) (not e!1099529))))

(assert (=> d!527127 (= res!771134 (semiInverseModEq!1315 (toChars!4695 (transformation!3329 (h!24203 rules!3447))) (toValue!4836 (transformation!3329 (h!24203 rules!3447)))))))

(assert (=> d!527127 (= (inv!24273 (transformation!3329 (h!24203 rules!3447))) e!1099529)))

(declare-fun b!1719110 () Bool)

(assert (=> b!1719110 (= e!1099529 (equivClasses!1256 (toChars!4695 (transformation!3329 (h!24203 rules!3447))) (toValue!4836 (transformation!3329 (h!24203 rules!3447)))))))

(assert (= (and d!527127 res!771134) b!1719110))

(declare-fun m!2124269 () Bool)

(assert (=> d!527127 m!2124269))

(declare-fun m!2124271 () Bool)

(assert (=> b!1719110 m!2124271))

(assert (=> b!1718862 d!527127))

(declare-fun b!1719117 () Bool)

(declare-fun e!1099534 () Bool)

(assert (=> b!1719117 (= e!1099534 true)))

(declare-fun d!527129 () Bool)

(assert (=> d!527129 e!1099534))

(assert (= d!527129 b!1719117))

(declare-fun lambda!69062 () Int)

(declare-fun order!11425 () Int)

(declare-fun dynLambda!8633 (Int Int) Int)

(assert (=> b!1719117 (< (dynLambda!8628 order!11419 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) (dynLambda!8633 order!11425 lambda!69062))))

(assert (=> b!1719117 (< (dynLambda!8630 order!11423 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) (dynLambda!8633 order!11425 lambda!69062))))

(assert (=> d!527129 (= (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (seqFromList!2303 (originalCharacters!4143 (_1!10651 lt!657161)))))))

(declare-fun lt!657235 () Unit!32637)

(declare-fun Forall2of!70 (Int BalanceConc!12450 BalanceConc!12450) Unit!32637)

(assert (=> d!527129 (= lt!657235 (Forall2of!70 lambda!69062 lt!657178 (seqFromList!2303 (originalCharacters!4143 (_1!10651 lt!657161)))))))

(assert (=> d!527129 (= (list!7594 lt!657178) (list!7594 (seqFromList!2303 (originalCharacters!4143 (_1!10651 lt!657161)))))))

(assert (=> d!527129 (= (lemmaEqSameImage!254 (transformation!3329 (rule!5271 (_1!10651 lt!657161))) lt!657178 (seqFromList!2303 (originalCharacters!4143 (_1!10651 lt!657161)))) lt!657235)))

(declare-fun b_lambda!54435 () Bool)

(assert (=> (not b_lambda!54435) (not d!527129)))

(assert (=> d!527129 t!159204))

(declare-fun b_and!125287 () Bool)

(assert (= b_and!125281 (and (=> t!159204 result!122310) b_and!125287)))

(assert (=> d!527129 t!159206))

(declare-fun b_and!125289 () Bool)

(assert (= b_and!125283 (and (=> t!159206 result!122314) b_and!125289)))

(assert (=> d!527129 t!159208))

(declare-fun b_and!125291 () Bool)

(assert (= b_and!125285 (and (=> t!159208 result!122316) b_and!125291)))

(declare-fun b_lambda!54437 () Bool)

(assert (=> (not b_lambda!54437) (not d!527129)))

(declare-fun t!159219 () Bool)

(declare-fun tb!101781 () Bool)

(assert (=> (and b!1718854 (= (toValue!4836 (transformation!3329 (rule!5271 token!523))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159219) tb!101781))

(declare-fun result!122324 () Bool)

(assert (=> tb!101781 (= result!122324 (inv!21 (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (seqFromList!2303 (originalCharacters!4143 (_1!10651 lt!657161))))))))

(declare-fun m!2124273 () Bool)

(assert (=> tb!101781 m!2124273))

(assert (=> d!527129 t!159219))

(declare-fun b_and!125293 () Bool)

(assert (= b_and!125287 (and (=> t!159219 result!122324) b_and!125293)))

(declare-fun t!159221 () Bool)

(declare-fun tb!101783 () Bool)

(assert (=> (and b!1718876 (= (toValue!4836 (transformation!3329 rule!422)) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159221) tb!101783))

(declare-fun result!122326 () Bool)

(assert (= result!122326 result!122324))

(assert (=> d!527129 t!159221))

(declare-fun b_and!125295 () Bool)

(assert (= b_and!125289 (and (=> t!159221 result!122326) b_and!125295)))

(declare-fun tb!101785 () Bool)

(declare-fun t!159223 () Bool)

(assert (=> (and b!1718869 (= (toValue!4836 (transformation!3329 (h!24203 rules!3447))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159223) tb!101785))

(declare-fun result!122328 () Bool)

(assert (= result!122328 result!122324))

(assert (=> d!527129 t!159223))

(declare-fun b_and!125297 () Bool)

(assert (= b_and!125291 (and (=> t!159223 result!122328) b_and!125297)))

(assert (=> d!527129 m!2124041))

(declare-fun m!2124275 () Bool)

(assert (=> d!527129 m!2124275))

(assert (=> d!527129 m!2124041))

(declare-fun m!2124277 () Bool)

(assert (=> d!527129 m!2124277))

(assert (=> d!527129 m!2123973))

(assert (=> d!527129 m!2124041))

(declare-fun m!2124279 () Bool)

(assert (=> d!527129 m!2124279))

(assert (=> d!527129 m!2124033))

(assert (=> b!1718881 d!527129))

(declare-fun d!527131 () Bool)

(declare-fun lt!657238 () Int)

(assert (=> d!527131 (= lt!657238 (size!14941 (list!7594 lt!657178)))))

(declare-fun size!14943 (Conc!6253) Int)

(assert (=> d!527131 (= lt!657238 (size!14943 (c!281355 lt!657178)))))

(assert (=> d!527131 (= (size!14942 lt!657178) lt!657238)))

(declare-fun bs!402133 () Bool)

(assert (= bs!402133 d!527131))

(assert (=> bs!402133 m!2123973))

(assert (=> bs!402133 m!2123973))

(declare-fun m!2124281 () Bool)

(assert (=> bs!402133 m!2124281))

(declare-fun m!2124283 () Bool)

(assert (=> bs!402133 m!2124283))

(assert (=> b!1718881 d!527131))

(declare-fun d!527133 () Bool)

(declare-fun fromListB!1055 (List!18871) BalanceConc!12450)

(assert (=> d!527133 (= (seqFromList!2303 (originalCharacters!4143 (_1!10651 lt!657161))) (fromListB!1055 (originalCharacters!4143 (_1!10651 lt!657161))))))

(declare-fun bs!402134 () Bool)

(assert (= bs!402134 d!527133))

(declare-fun m!2124285 () Bool)

(assert (=> bs!402134 m!2124285))

(assert (=> b!1718881 d!527133))

(declare-fun d!527135 () Bool)

(assert (=> d!527135 (= (size!14940 (_1!10651 lt!657161)) (size!14941 (originalCharacters!4143 (_1!10651 lt!657161))))))

(declare-fun Unit!32643 () Unit!32637)

(assert (=> d!527135 (= (lemmaCharactersSize!401 (_1!10651 lt!657161)) Unit!32643)))

(declare-fun bs!402135 () Bool)

(assert (= bs!402135 d!527135))

(declare-fun m!2124287 () Bool)

(assert (=> bs!402135 m!2124287))

(assert (=> b!1718881 d!527135))

(declare-fun d!527137 () Bool)

(assert (=> d!527137 (= (apply!5134 (transformation!3329 (rule!5271 (_1!10651 lt!657161))) lt!657178) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))))

(declare-fun b_lambda!54439 () Bool)

(assert (=> (not b_lambda!54439) (not d!527137)))

(assert (=> d!527137 t!159204))

(declare-fun b_and!125299 () Bool)

(assert (= b_and!125293 (and (=> t!159204 result!122310) b_and!125299)))

(assert (=> d!527137 t!159206))

(declare-fun b_and!125301 () Bool)

(assert (= b_and!125295 (and (=> t!159206 result!122314) b_and!125301)))

(assert (=> d!527137 t!159208))

(declare-fun b_and!125303 () Bool)

(assert (= b_and!125297 (and (=> t!159208 result!122316) b_and!125303)))

(assert (=> d!527137 m!2124033))

(assert (=> b!1718881 d!527137))

(declare-fun d!527139 () Bool)

(declare-fun isBalanced!1955 (Conc!6253) Bool)

(assert (=> d!527139 (= (inv!24276 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))) (isBalanced!1955 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))))))

(declare-fun bs!402136 () Bool)

(assert (= bs!402136 d!527139))

(declare-fun m!2124289 () Bool)

(assert (=> bs!402136 m!2124289))

(assert (=> tb!101763 d!527139))

(declare-fun d!527141 () Bool)

(declare-fun c!281394 () Bool)

(assert (=> d!527141 (= c!281394 (isEmpty!11821 (++!5154 lt!657162 (Cons!18801 (head!3878 suffix!1421) Nil!18801))))))

(declare-fun e!1099542 () Bool)

(assert (=> d!527141 (= (prefixMatch!542 (rulesRegex!687 thiss!24550 rules!3447) (++!5154 lt!657162 (Cons!18801 (head!3878 suffix!1421) Nil!18801))) e!1099542)))

(declare-fun b!1719130 () Bool)

(declare-fun lostCause!511 (Regex!4657) Bool)

(assert (=> b!1719130 (= e!1099542 (not (lostCause!511 (rulesRegex!687 thiss!24550 rules!3447))))))

(declare-fun b!1719131 () Bool)

(assert (=> b!1719131 (= e!1099542 (prefixMatch!542 (derivativeStep!1169 (rulesRegex!687 thiss!24550 rules!3447) (head!3878 (++!5154 lt!657162 (Cons!18801 (head!3878 suffix!1421) Nil!18801)))) (tail!2567 (++!5154 lt!657162 (Cons!18801 (head!3878 suffix!1421) Nil!18801)))))))

(assert (= (and d!527141 c!281394) b!1719130))

(assert (= (and d!527141 (not c!281394)) b!1719131))

(assert (=> d!527141 m!2124057))

(declare-fun m!2124291 () Bool)

(assert (=> d!527141 m!2124291))

(assert (=> b!1719130 m!2124053))

(declare-fun m!2124293 () Bool)

(assert (=> b!1719130 m!2124293))

(assert (=> b!1719131 m!2124057))

(declare-fun m!2124295 () Bool)

(assert (=> b!1719131 m!2124295))

(assert (=> b!1719131 m!2124053))

(assert (=> b!1719131 m!2124295))

(declare-fun m!2124297 () Bool)

(assert (=> b!1719131 m!2124297))

(assert (=> b!1719131 m!2124057))

(declare-fun m!2124299 () Bool)

(assert (=> b!1719131 m!2124299))

(assert (=> b!1719131 m!2124297))

(assert (=> b!1719131 m!2124299))

(declare-fun m!2124301 () Bool)

(assert (=> b!1719131 m!2124301))

(assert (=> b!1718860 d!527141))

(declare-fun d!527143 () Bool)

(declare-fun lt!657275 () Unit!32637)

(declare-fun lemma!325 (List!18872 LexerInterface!2958 List!18872) Unit!32637)

(assert (=> d!527143 (= lt!657275 (lemma!325 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69065 () Int)

(declare-datatypes ((List!18875 0))(
  ( (Nil!18805) (Cons!18805 (h!24206 Regex!4657) (t!159274 List!18875)) )
))
(declare-fun generalisedUnion!333 (List!18875) Regex!4657)

(declare-fun map!3869 (List!18872 Int) List!18875)

(assert (=> d!527143 (= (rulesRegex!687 thiss!24550 rules!3447) (generalisedUnion!333 (map!3869 rules!3447 lambda!69065)))))

(declare-fun bs!402137 () Bool)

(assert (= bs!402137 d!527143))

(declare-fun m!2124303 () Bool)

(assert (=> bs!402137 m!2124303))

(declare-fun m!2124305 () Bool)

(assert (=> bs!402137 m!2124305))

(assert (=> bs!402137 m!2124305))

(declare-fun m!2124307 () Bool)

(assert (=> bs!402137 m!2124307))

(assert (=> b!1718860 d!527143))

(declare-fun b!1719145 () Bool)

(declare-fun e!1099550 () List!18871)

(assert (=> b!1719145 (= e!1099550 (Cons!18801 (h!24202 lt!657162) (++!5154 (t!159210 lt!657162) (Cons!18801 (head!3878 suffix!1421) Nil!18801))))))

(declare-fun b!1719147 () Bool)

(declare-fun e!1099549 () Bool)

(declare-fun lt!657295 () List!18871)

(assert (=> b!1719147 (= e!1099549 (or (not (= (Cons!18801 (head!3878 suffix!1421) Nil!18801) Nil!18801)) (= lt!657295 lt!657162)))))

(declare-fun b!1719144 () Bool)

(assert (=> b!1719144 (= e!1099550 (Cons!18801 (head!3878 suffix!1421) Nil!18801))))

(declare-fun b!1719146 () Bool)

(declare-fun res!771148 () Bool)

(assert (=> b!1719146 (=> (not res!771148) (not e!1099549))))

(assert (=> b!1719146 (= res!771148 (= (size!14941 lt!657295) (+ (size!14941 lt!657162) (size!14941 (Cons!18801 (head!3878 suffix!1421) Nil!18801)))))))

(declare-fun d!527145 () Bool)

(assert (=> d!527145 e!1099549))

(declare-fun res!771147 () Bool)

(assert (=> d!527145 (=> (not res!771147) (not e!1099549))))

(declare-fun content!2681 (List!18871) (InoxSet C!9488))

(assert (=> d!527145 (= res!771147 (= (content!2681 lt!657295) ((_ map or) (content!2681 lt!657162) (content!2681 (Cons!18801 (head!3878 suffix!1421) Nil!18801)))))))

(assert (=> d!527145 (= lt!657295 e!1099550)))

(declare-fun c!281398 () Bool)

(assert (=> d!527145 (= c!281398 ((_ is Nil!18801) lt!657162))))

(assert (=> d!527145 (= (++!5154 lt!657162 (Cons!18801 (head!3878 suffix!1421) Nil!18801)) lt!657295)))

(assert (= (and d!527145 c!281398) b!1719144))

(assert (= (and d!527145 (not c!281398)) b!1719145))

(assert (= (and d!527145 res!771147) b!1719146))

(assert (= (and b!1719146 res!771148) b!1719147))

(declare-fun m!2124359 () Bool)

(assert (=> b!1719145 m!2124359))

(declare-fun m!2124361 () Bool)

(assert (=> b!1719146 m!2124361))

(assert (=> b!1719146 m!2124231))

(declare-fun m!2124365 () Bool)

(assert (=> b!1719146 m!2124365))

(declare-fun m!2124367 () Bool)

(assert (=> d!527145 m!2124367))

(declare-fun m!2124369 () Bool)

(assert (=> d!527145 m!2124369))

(declare-fun m!2124371 () Bool)

(assert (=> d!527145 m!2124371))

(assert (=> b!1718860 d!527145))

(declare-fun d!527151 () Bool)

(assert (=> d!527151 (= (head!3878 suffix!1421) (h!24202 suffix!1421))))

(assert (=> b!1718860 d!527151))

(declare-fun d!527153 () Bool)

(assert (=> d!527153 (= (inv!24268 (tag!3635 rule!422)) (= (mod (str.len (value!104548 (tag!3635 rule!422))) 2) 0))))

(assert (=> b!1718880 d!527153))

(declare-fun d!527155 () Bool)

(declare-fun res!771149 () Bool)

(declare-fun e!1099551 () Bool)

(assert (=> d!527155 (=> (not res!771149) (not e!1099551))))

(assert (=> d!527155 (= res!771149 (semiInverseModEq!1315 (toChars!4695 (transformation!3329 rule!422)) (toValue!4836 (transformation!3329 rule!422))))))

(assert (=> d!527155 (= (inv!24273 (transformation!3329 rule!422)) e!1099551)))

(declare-fun b!1719148 () Bool)

(assert (=> b!1719148 (= e!1099551 (equivClasses!1256 (toChars!4695 (transformation!3329 rule!422)) (toValue!4836 (transformation!3329 rule!422))))))

(assert (= (and d!527155 res!771149) b!1719148))

(declare-fun m!2124373 () Bool)

(assert (=> d!527155 m!2124373))

(declare-fun m!2124375 () Bool)

(assert (=> b!1719148 m!2124375))

(assert (=> b!1718880 d!527155))

(declare-fun b!1719149 () Bool)

(declare-fun e!1099554 () Bool)

(declare-fun e!1099553 () Bool)

(assert (=> b!1719149 (= e!1099554 e!1099553)))

(declare-fun res!771155 () Bool)

(assert (=> b!1719149 (=> (not res!771155) (not e!1099553))))

(declare-fun lt!657296 () Bool)

(assert (=> b!1719149 (= res!771155 (not lt!657296))))

(declare-fun b!1719150 () Bool)

(declare-fun e!1099557 () Bool)

(assert (=> b!1719150 (= e!1099557 (= (head!3878 lt!657162) (c!281354 (regex!3329 rule!422))))))

(declare-fun b!1719151 () Bool)

(declare-fun e!1099555 () Bool)

(declare-fun call!109689 () Bool)

(assert (=> b!1719151 (= e!1099555 (= lt!657296 call!109689))))

(declare-fun b!1719152 () Bool)

(declare-fun res!771156 () Bool)

(assert (=> b!1719152 (=> res!771156 e!1099554)))

(assert (=> b!1719152 (= res!771156 (not ((_ is ElementMatch!4657) (regex!3329 rule!422))))))

(declare-fun e!1099556 () Bool)

(assert (=> b!1719152 (= e!1099556 e!1099554)))

(declare-fun b!1719153 () Bool)

(assert (=> b!1719153 (= e!1099556 (not lt!657296))))

(declare-fun b!1719154 () Bool)

(declare-fun res!771151 () Bool)

(declare-fun e!1099552 () Bool)

(assert (=> b!1719154 (=> res!771151 e!1099552)))

(assert (=> b!1719154 (= res!771151 (not (isEmpty!11821 (tail!2567 lt!657162))))))

(declare-fun b!1719155 () Bool)

(declare-fun e!1099558 () Bool)

(assert (=> b!1719155 (= e!1099558 (matchR!2131 (derivativeStep!1169 (regex!3329 rule!422) (head!3878 lt!657162)) (tail!2567 lt!657162)))))

(declare-fun b!1719156 () Bool)

(declare-fun res!771150 () Bool)

(assert (=> b!1719156 (=> (not res!771150) (not e!1099557))))

(assert (=> b!1719156 (= res!771150 (isEmpty!11821 (tail!2567 lt!657162)))))

(declare-fun b!1719157 () Bool)

(assert (=> b!1719157 (= e!1099553 e!1099552)))

(declare-fun res!771154 () Bool)

(assert (=> b!1719157 (=> res!771154 e!1099552)))

(assert (=> b!1719157 (= res!771154 call!109689)))

(declare-fun bm!109684 () Bool)

(assert (=> bm!109684 (= call!109689 (isEmpty!11821 lt!657162))))

(declare-fun b!1719159 () Bool)

(assert (=> b!1719159 (= e!1099558 (nullable!1401 (regex!3329 rule!422)))))

(declare-fun b!1719160 () Bool)

(assert (=> b!1719160 (= e!1099555 e!1099556)))

(declare-fun c!281399 () Bool)

(assert (=> b!1719160 (= c!281399 ((_ is EmptyLang!4657) (regex!3329 rule!422)))))

(declare-fun b!1719161 () Bool)

(declare-fun res!771152 () Bool)

(assert (=> b!1719161 (=> res!771152 e!1099554)))

(assert (=> b!1719161 (= res!771152 e!1099557)))

(declare-fun res!771157 () Bool)

(assert (=> b!1719161 (=> (not res!771157) (not e!1099557))))

(assert (=> b!1719161 (= res!771157 lt!657296)))

(declare-fun b!1719162 () Bool)

(assert (=> b!1719162 (= e!1099552 (not (= (head!3878 lt!657162) (c!281354 (regex!3329 rule!422)))))))

(declare-fun b!1719158 () Bool)

(declare-fun res!771153 () Bool)

(assert (=> b!1719158 (=> (not res!771153) (not e!1099557))))

(assert (=> b!1719158 (= res!771153 (not call!109689))))

(declare-fun d!527157 () Bool)

(assert (=> d!527157 e!1099555))

(declare-fun c!281401 () Bool)

(assert (=> d!527157 (= c!281401 ((_ is EmptyExpr!4657) (regex!3329 rule!422)))))

(assert (=> d!527157 (= lt!657296 e!1099558)))

(declare-fun c!281400 () Bool)

(assert (=> d!527157 (= c!281400 (isEmpty!11821 lt!657162))))

(assert (=> d!527157 (validRegex!1875 (regex!3329 rule!422))))

(assert (=> d!527157 (= (matchR!2131 (regex!3329 rule!422) lt!657162) lt!657296)))

(assert (= (and d!527157 c!281400) b!1719159))

(assert (= (and d!527157 (not c!281400)) b!1719155))

(assert (= (and d!527157 c!281401) b!1719151))

(assert (= (and d!527157 (not c!281401)) b!1719160))

(assert (= (and b!1719160 c!281399) b!1719153))

(assert (= (and b!1719160 (not c!281399)) b!1719152))

(assert (= (and b!1719152 (not res!771156)) b!1719161))

(assert (= (and b!1719161 res!771157) b!1719158))

(assert (= (and b!1719158 res!771153) b!1719156))

(assert (= (and b!1719156 res!771150) b!1719150))

(assert (= (and b!1719161 (not res!771152)) b!1719149))

(assert (= (and b!1719149 res!771155) b!1719157))

(assert (= (and b!1719157 (not res!771154)) b!1719154))

(assert (= (and b!1719154 (not res!771151)) b!1719162))

(assert (= (or b!1719151 b!1719157 b!1719158) bm!109684))

(declare-fun m!2124377 () Bool)

(assert (=> b!1719155 m!2124377))

(assert (=> b!1719155 m!2124377))

(declare-fun m!2124379 () Bool)

(assert (=> b!1719155 m!2124379))

(declare-fun m!2124381 () Bool)

(assert (=> b!1719155 m!2124381))

(assert (=> b!1719155 m!2124379))

(assert (=> b!1719155 m!2124381))

(declare-fun m!2124383 () Bool)

(assert (=> b!1719155 m!2124383))

(assert (=> b!1719162 m!2124377))

(declare-fun m!2124385 () Bool)

(assert (=> d!527157 m!2124385))

(declare-fun m!2124387 () Bool)

(assert (=> d!527157 m!2124387))

(assert (=> b!1719150 m!2124377))

(assert (=> b!1719154 m!2124381))

(assert (=> b!1719154 m!2124381))

(declare-fun m!2124389 () Bool)

(assert (=> b!1719154 m!2124389))

(declare-fun m!2124391 () Bool)

(assert (=> b!1719159 m!2124391))

(assert (=> b!1719156 m!2124381))

(assert (=> b!1719156 m!2124381))

(assert (=> b!1719156 m!2124389))

(assert (=> bm!109684 m!2124385))

(assert (=> b!1718859 d!527157))

(declare-fun d!527159 () Bool)

(declare-fun res!771158 () Bool)

(declare-fun e!1099559 () Bool)

(assert (=> d!527159 (=> (not res!771158) (not e!1099559))))

(assert (=> d!527159 (= res!771158 (validRegex!1875 (regex!3329 rule!422)))))

(assert (=> d!527159 (= (ruleValid!828 thiss!24550 rule!422) e!1099559)))

(declare-fun b!1719163 () Bool)

(declare-fun res!771159 () Bool)

(assert (=> b!1719163 (=> (not res!771159) (not e!1099559))))

(assert (=> b!1719163 (= res!771159 (not (nullable!1401 (regex!3329 rule!422))))))

(declare-fun b!1719164 () Bool)

(assert (=> b!1719164 (= e!1099559 (not (= (tag!3635 rule!422) (String!21428 ""))))))

(assert (= (and d!527159 res!771158) b!1719163))

(assert (= (and b!1719163 res!771159) b!1719164))

(assert (=> d!527159 m!2124387))

(assert (=> b!1719163 m!2124391))

(assert (=> b!1718859 d!527159))

(declare-fun d!527161 () Bool)

(assert (=> d!527161 (ruleValid!828 thiss!24550 rule!422)))

(declare-fun lt!657299 () Unit!32637)

(declare-fun choose!10445 (LexerInterface!2958 Rule!6458 List!18872) Unit!32637)

(assert (=> d!527161 (= lt!657299 (choose!10445 thiss!24550 rule!422 rules!3447))))

(assert (=> d!527161 (contains!3351 rules!3447 rule!422)))

(assert (=> d!527161 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!352 thiss!24550 rule!422 rules!3447) lt!657299)))

(declare-fun bs!402139 () Bool)

(assert (= bs!402139 d!527161))

(assert (=> bs!402139 m!2124001))

(declare-fun m!2124393 () Bool)

(assert (=> bs!402139 m!2124393))

(assert (=> bs!402139 m!2124051))

(assert (=> b!1718859 d!527161))

(declare-fun d!527163 () Bool)

(assert (=> d!527163 (= (inv!24276 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161)))) (isBalanced!1955 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161))))))))

(declare-fun bs!402140 () Bool)

(assert (= bs!402140 d!527163))

(declare-fun m!2124395 () Bool)

(assert (=> bs!402140 m!2124395))

(assert (=> tb!101757 d!527163))

(declare-fun d!527165 () Bool)

(declare-fun e!1099560 () Bool)

(assert (=> d!527165 e!1099560))

(declare-fun res!771166 () Bool)

(assert (=> d!527165 (=> res!771166 e!1099560)))

(declare-fun lt!657302 () Option!3682)

(assert (=> d!527165 (= res!771166 (isEmpty!11825 lt!657302))))

(declare-fun e!1099562 () Option!3682)

(assert (=> d!527165 (= lt!657302 e!1099562)))

(declare-fun c!281402 () Bool)

(assert (=> d!527165 (= c!281402 (and ((_ is Cons!18802) rules!3447) ((_ is Nil!18802) (t!159211 rules!3447))))))

(declare-fun lt!657300 () Unit!32637)

(declare-fun lt!657301 () Unit!32637)

(assert (=> d!527165 (= lt!657300 lt!657301)))

(assert (=> d!527165 (isPrefix!1570 lt!657164 lt!657164)))

(assert (=> d!527165 (= lt!657301 (lemmaIsPrefixRefl!1065 lt!657164 lt!657164))))

(assert (=> d!527165 (rulesValidInductive!1102 thiss!24550 rules!3447)))

(assert (=> d!527165 (= (maxPrefix!1512 thiss!24550 rules!3447 lt!657164) lt!657302)))

(declare-fun b!1719165 () Bool)

(declare-fun res!771160 () Bool)

(declare-fun e!1099561 () Bool)

(assert (=> b!1719165 (=> (not res!771160) (not e!1099561))))

(assert (=> b!1719165 (= res!771160 (< (size!14941 (_2!10651 (get!5565 lt!657302))) (size!14941 lt!657164)))))

(declare-fun b!1719166 () Bool)

(declare-fun call!109690 () Option!3682)

(assert (=> b!1719166 (= e!1099562 call!109690)))

(declare-fun bm!109685 () Bool)

(assert (=> bm!109685 (= call!109690 (maxPrefixOneRule!888 thiss!24550 (h!24203 rules!3447) lt!657164))))

(declare-fun b!1719167 () Bool)

(declare-fun res!771162 () Bool)

(assert (=> b!1719167 (=> (not res!771162) (not e!1099561))))

(assert (=> b!1719167 (= res!771162 (= (value!104549 (_1!10651 (get!5565 lt!657302))) (apply!5134 (transformation!3329 (rule!5271 (_1!10651 (get!5565 lt!657302)))) (seqFromList!2303 (originalCharacters!4143 (_1!10651 (get!5565 lt!657302)))))))))

(declare-fun b!1719168 () Bool)

(declare-fun lt!657303 () Option!3682)

(declare-fun lt!657304 () Option!3682)

(assert (=> b!1719168 (= e!1099562 (ite (and ((_ is None!3681) lt!657303) ((_ is None!3681) lt!657304)) None!3681 (ite ((_ is None!3681) lt!657304) lt!657303 (ite ((_ is None!3681) lt!657303) lt!657304 (ite (>= (size!14940 (_1!10651 (v!25080 lt!657303))) (size!14940 (_1!10651 (v!25080 lt!657304)))) lt!657303 lt!657304)))))))

(assert (=> b!1719168 (= lt!657303 call!109690)))

(assert (=> b!1719168 (= lt!657304 (maxPrefix!1512 thiss!24550 (t!159211 rules!3447) lt!657164))))

(declare-fun b!1719169 () Bool)

(declare-fun res!771164 () Bool)

(assert (=> b!1719169 (=> (not res!771164) (not e!1099561))))

(assert (=> b!1719169 (= res!771164 (= (list!7594 (charsOf!1978 (_1!10651 (get!5565 lt!657302)))) (originalCharacters!4143 (_1!10651 (get!5565 lt!657302)))))))

(declare-fun b!1719170 () Bool)

(assert (=> b!1719170 (= e!1099561 (contains!3351 rules!3447 (rule!5271 (_1!10651 (get!5565 lt!657302)))))))

(declare-fun b!1719171 () Bool)

(declare-fun res!771163 () Bool)

(assert (=> b!1719171 (=> (not res!771163) (not e!1099561))))

(assert (=> b!1719171 (= res!771163 (= (++!5154 (list!7594 (charsOf!1978 (_1!10651 (get!5565 lt!657302)))) (_2!10651 (get!5565 lt!657302))) lt!657164))))

(declare-fun b!1719172 () Bool)

(declare-fun res!771161 () Bool)

(assert (=> b!1719172 (=> (not res!771161) (not e!1099561))))

(assert (=> b!1719172 (= res!771161 (matchR!2131 (regex!3329 (rule!5271 (_1!10651 (get!5565 lt!657302)))) (list!7594 (charsOf!1978 (_1!10651 (get!5565 lt!657302))))))))

(declare-fun b!1719173 () Bool)

(assert (=> b!1719173 (= e!1099560 e!1099561)))

(declare-fun res!771165 () Bool)

(assert (=> b!1719173 (=> (not res!771165) (not e!1099561))))

(assert (=> b!1719173 (= res!771165 (isDefined!3025 lt!657302))))

(assert (= (and d!527165 c!281402) b!1719166))

(assert (= (and d!527165 (not c!281402)) b!1719168))

(assert (= (or b!1719166 b!1719168) bm!109685))

(assert (= (and d!527165 (not res!771166)) b!1719173))

(assert (= (and b!1719173 res!771165) b!1719169))

(assert (= (and b!1719169 res!771164) b!1719165))

(assert (= (and b!1719165 res!771160) b!1719171))

(assert (= (and b!1719171 res!771163) b!1719167))

(assert (= (and b!1719167 res!771162) b!1719172))

(assert (= (and b!1719172 res!771161) b!1719170))

(declare-fun m!2124397 () Bool)

(assert (=> b!1719172 m!2124397))

(declare-fun m!2124399 () Bool)

(assert (=> b!1719172 m!2124399))

(assert (=> b!1719172 m!2124399))

(declare-fun m!2124401 () Bool)

(assert (=> b!1719172 m!2124401))

(assert (=> b!1719172 m!2124401))

(declare-fun m!2124403 () Bool)

(assert (=> b!1719172 m!2124403))

(declare-fun m!2124405 () Bool)

(assert (=> b!1719168 m!2124405))

(assert (=> b!1719169 m!2124397))

(assert (=> b!1719169 m!2124399))

(assert (=> b!1719169 m!2124399))

(assert (=> b!1719169 m!2124401))

(declare-fun m!2124407 () Bool)

(assert (=> d!527165 m!2124407))

(declare-fun m!2124409 () Bool)

(assert (=> d!527165 m!2124409))

(declare-fun m!2124411 () Bool)

(assert (=> d!527165 m!2124411))

(assert (=> d!527165 m!2124217))

(assert (=> b!1719170 m!2124397))

(declare-fun m!2124413 () Bool)

(assert (=> b!1719170 m!2124413))

(assert (=> b!1719171 m!2124397))

(assert (=> b!1719171 m!2124399))

(assert (=> b!1719171 m!2124399))

(assert (=> b!1719171 m!2124401))

(assert (=> b!1719171 m!2124401))

(declare-fun m!2124415 () Bool)

(assert (=> b!1719171 m!2124415))

(assert (=> b!1719167 m!2124397))

(declare-fun m!2124417 () Bool)

(assert (=> b!1719167 m!2124417))

(assert (=> b!1719167 m!2124417))

(declare-fun m!2124419 () Bool)

(assert (=> b!1719167 m!2124419))

(declare-fun m!2124421 () Bool)

(assert (=> b!1719173 m!2124421))

(assert (=> b!1719165 m!2124397))

(declare-fun m!2124423 () Bool)

(assert (=> b!1719165 m!2124423))

(declare-fun m!2124425 () Bool)

(assert (=> b!1719165 m!2124425))

(declare-fun m!2124427 () Bool)

(assert (=> bm!109685 m!2124427))

(assert (=> b!1718879 d!527165))

(declare-fun d!527167 () Bool)

(declare-fun isEmpty!11826 (Option!3683) Bool)

(assert (=> d!527167 (= (isDefined!3026 lt!657159) (not (isEmpty!11826 lt!657159)))))

(declare-fun bs!402141 () Bool)

(assert (= bs!402141 d!527167))

(declare-fun m!2124429 () Bool)

(assert (=> bs!402141 m!2124429))

(assert (=> b!1718879 d!527167))

(declare-fun d!527169 () Bool)

(assert (=> d!527169 (isPrefix!1570 lt!657169 (++!5154 lt!657169 (_2!10651 lt!657161)))))

(declare-fun lt!657314 () Unit!32637)

(declare-fun choose!10446 (List!18871 List!18871) Unit!32637)

(assert (=> d!527169 (= lt!657314 (choose!10446 lt!657169 (_2!10651 lt!657161)))))

(assert (=> d!527169 (= (lemmaConcatTwoListThenFirstIsPrefix!1080 lt!657169 (_2!10651 lt!657161)) lt!657314)))

(declare-fun bs!402142 () Bool)

(assert (= bs!402142 d!527169))

(assert (=> bs!402142 m!2123955))

(assert (=> bs!402142 m!2123955))

(assert (=> bs!402142 m!2123979))

(declare-fun m!2124431 () Bool)

(assert (=> bs!402142 m!2124431))

(assert (=> b!1718879 d!527169))

(declare-fun b!1719202 () Bool)

(declare-fun e!1099581 () Bool)

(assert (=> b!1719202 (= e!1099581 (isPrefix!1570 (tail!2567 lt!657169) (tail!2567 (++!5154 lt!657169 (_2!10651 lt!657161)))))))

(declare-fun b!1719203 () Bool)

(declare-fun e!1099583 () Bool)

(assert (=> b!1719203 (= e!1099583 (>= (size!14941 (++!5154 lt!657169 (_2!10651 lt!657161))) (size!14941 lt!657169)))))

(declare-fun b!1719200 () Bool)

(declare-fun e!1099582 () Bool)

(assert (=> b!1719200 (= e!1099582 e!1099581)))

(declare-fun res!771181 () Bool)

(assert (=> b!1719200 (=> (not res!771181) (not e!1099581))))

(assert (=> b!1719200 (= res!771181 (not ((_ is Nil!18801) (++!5154 lt!657169 (_2!10651 lt!657161)))))))

(declare-fun b!1719201 () Bool)

(declare-fun res!771182 () Bool)

(assert (=> b!1719201 (=> (not res!771182) (not e!1099581))))

(assert (=> b!1719201 (= res!771182 (= (head!3878 lt!657169) (head!3878 (++!5154 lt!657169 (_2!10651 lt!657161)))))))

(declare-fun d!527171 () Bool)

(assert (=> d!527171 e!1099583))

(declare-fun res!771183 () Bool)

(assert (=> d!527171 (=> res!771183 e!1099583)))

(declare-fun lt!657322 () Bool)

(assert (=> d!527171 (= res!771183 (not lt!657322))))

(assert (=> d!527171 (= lt!657322 e!1099582)))

(declare-fun res!771184 () Bool)

(assert (=> d!527171 (=> res!771184 e!1099582)))

(assert (=> d!527171 (= res!771184 ((_ is Nil!18801) lt!657169))))

(assert (=> d!527171 (= (isPrefix!1570 lt!657169 (++!5154 lt!657169 (_2!10651 lt!657161))) lt!657322)))

(assert (= (and d!527171 (not res!771184)) b!1719200))

(assert (= (and b!1719200 res!771181) b!1719201))

(assert (= (and b!1719201 res!771182) b!1719202))

(assert (= (and d!527171 (not res!771183)) b!1719203))

(assert (=> b!1719202 m!2124119))

(assert (=> b!1719202 m!2123955))

(declare-fun m!2124447 () Bool)

(assert (=> b!1719202 m!2124447))

(assert (=> b!1719202 m!2124119))

(assert (=> b!1719202 m!2124447))

(declare-fun m!2124449 () Bool)

(assert (=> b!1719202 m!2124449))

(assert (=> b!1719203 m!2123955))

(declare-fun m!2124451 () Bool)

(assert (=> b!1719203 m!2124451))

(assert (=> b!1719203 m!2124025))

(assert (=> b!1719201 m!2124115))

(assert (=> b!1719201 m!2123955))

(declare-fun m!2124453 () Bool)

(assert (=> b!1719201 m!2124453))

(assert (=> b!1718879 d!527171))

(declare-fun b!1719232 () Bool)

(declare-fun e!1099603 () Option!3683)

(declare-fun e!1099600 () Option!3683)

(assert (=> b!1719232 (= e!1099603 e!1099600)))

(declare-fun c!281416 () Bool)

(assert (=> b!1719232 (= c!281416 (and ((_ is Cons!18802) rules!3447) (not (= (tag!3635 (h!24203 rules!3447)) (tag!3635 (rule!5271 (_1!10651 lt!657161)))))))))

(declare-fun d!527177 () Bool)

(declare-fun e!1099602 () Bool)

(assert (=> d!527177 e!1099602))

(declare-fun res!771199 () Bool)

(assert (=> d!527177 (=> res!771199 e!1099602)))

(declare-fun lt!657337 () Option!3683)

(assert (=> d!527177 (= res!771199 (isEmpty!11826 lt!657337))))

(assert (=> d!527177 (= lt!657337 e!1099603)))

(declare-fun c!281417 () Bool)

(assert (=> d!527177 (= c!281417 (and ((_ is Cons!18802) rules!3447) (= (tag!3635 (h!24203 rules!3447)) (tag!3635 (rule!5271 (_1!10651 lt!657161))))))))

(assert (=> d!527177 (rulesInvariant!2627 thiss!24550 rules!3447)))

(assert (=> d!527177 (= (getRuleFromTag!379 thiss!24550 rules!3447 (tag!3635 (rule!5271 (_1!10651 lt!657161)))) lt!657337)))

(declare-fun b!1719233 () Bool)

(declare-fun e!1099601 () Bool)

(assert (=> b!1719233 (= e!1099602 e!1099601)))

(declare-fun res!771200 () Bool)

(assert (=> b!1719233 (=> (not res!771200) (not e!1099601))))

(assert (=> b!1719233 (= res!771200 (contains!3351 rules!3447 (get!5564 lt!657337)))))

(declare-fun b!1719234 () Bool)

(assert (=> b!1719234 (= e!1099601 (= (tag!3635 (get!5564 lt!657337)) (tag!3635 (rule!5271 (_1!10651 lt!657161)))))))

(declare-fun b!1719235 () Bool)

(assert (=> b!1719235 (= e!1099603 (Some!3682 (h!24203 rules!3447)))))

(declare-fun b!1719236 () Bool)

(declare-fun lt!657335 () Unit!32637)

(declare-fun lt!657336 () Unit!32637)

(assert (=> b!1719236 (= lt!657335 lt!657336)))

(assert (=> b!1719236 (rulesInvariant!2627 thiss!24550 (t!159211 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!130 (LexerInterface!2958 Rule!6458 List!18872) Unit!32637)

(assert (=> b!1719236 (= lt!657336 (lemmaInvariantOnRulesThenOnTail!130 thiss!24550 (h!24203 rules!3447) (t!159211 rules!3447)))))

(assert (=> b!1719236 (= e!1099600 (getRuleFromTag!379 thiss!24550 (t!159211 rules!3447) (tag!3635 (rule!5271 (_1!10651 lt!657161)))))))

(declare-fun b!1719237 () Bool)

(assert (=> b!1719237 (= e!1099600 None!3682)))

(assert (= (and d!527177 c!281417) b!1719235))

(assert (= (and d!527177 (not c!281417)) b!1719232))

(assert (= (and b!1719232 c!281416) b!1719236))

(assert (= (and b!1719232 (not c!281416)) b!1719237))

(assert (= (and d!527177 (not res!771199)) b!1719233))

(assert (= (and b!1719233 res!771200) b!1719234))

(declare-fun m!2124471 () Bool)

(assert (=> d!527177 m!2124471))

(assert (=> d!527177 m!2124005))

(declare-fun m!2124473 () Bool)

(assert (=> b!1719233 m!2124473))

(assert (=> b!1719233 m!2124473))

(declare-fun m!2124475 () Bool)

(assert (=> b!1719233 m!2124475))

(assert (=> b!1719234 m!2124473))

(declare-fun m!2124477 () Bool)

(assert (=> b!1719236 m!2124477))

(declare-fun m!2124479 () Bool)

(assert (=> b!1719236 m!2124479))

(declare-fun m!2124481 () Bool)

(assert (=> b!1719236 m!2124481))

(assert (=> b!1718879 d!527177))

(declare-fun b!1719240 () Bool)

(declare-fun e!1099604 () Bool)

(assert (=> b!1719240 (= e!1099604 (isPrefix!1570 (tail!2567 lt!657169) (tail!2567 lt!657164)))))

(declare-fun b!1719241 () Bool)

(declare-fun e!1099606 () Bool)

(assert (=> b!1719241 (= e!1099606 (>= (size!14941 lt!657164) (size!14941 lt!657169)))))

(declare-fun b!1719238 () Bool)

(declare-fun e!1099605 () Bool)

(assert (=> b!1719238 (= e!1099605 e!1099604)))

(declare-fun res!771201 () Bool)

(assert (=> b!1719238 (=> (not res!771201) (not e!1099604))))

(assert (=> b!1719238 (= res!771201 (not ((_ is Nil!18801) lt!657164)))))

(declare-fun b!1719239 () Bool)

(declare-fun res!771202 () Bool)

(assert (=> b!1719239 (=> (not res!771202) (not e!1099604))))

(assert (=> b!1719239 (= res!771202 (= (head!3878 lt!657169) (head!3878 lt!657164)))))

(declare-fun d!527183 () Bool)

(assert (=> d!527183 e!1099606))

(declare-fun res!771203 () Bool)

(assert (=> d!527183 (=> res!771203 e!1099606)))

(declare-fun lt!657338 () Bool)

(assert (=> d!527183 (= res!771203 (not lt!657338))))

(assert (=> d!527183 (= lt!657338 e!1099605)))

(declare-fun res!771204 () Bool)

(assert (=> d!527183 (=> res!771204 e!1099605)))

(assert (=> d!527183 (= res!771204 ((_ is Nil!18801) lt!657169))))

(assert (=> d!527183 (= (isPrefix!1570 lt!657169 lt!657164) lt!657338)))

(assert (= (and d!527183 (not res!771204)) b!1719238))

(assert (= (and b!1719238 res!771201) b!1719239))

(assert (= (and b!1719239 res!771202) b!1719240))

(assert (= (and d!527183 (not res!771203)) b!1719241))

(assert (=> b!1719240 m!2124119))

(declare-fun m!2124483 () Bool)

(assert (=> b!1719240 m!2124483))

(assert (=> b!1719240 m!2124119))

(assert (=> b!1719240 m!2124483))

(declare-fun m!2124485 () Bool)

(assert (=> b!1719240 m!2124485))

(assert (=> b!1719241 m!2124425))

(assert (=> b!1719241 m!2124025))

(assert (=> b!1719239 m!2124115))

(declare-fun m!2124487 () Bool)

(assert (=> b!1719239 m!2124487))

(assert (=> b!1718879 d!527183))

(declare-fun d!527185 () Bool)

(assert (=> d!527185 (= (get!5565 lt!657166) (v!25080 lt!657166))))

(assert (=> b!1718879 d!527185))

(declare-fun d!527187 () Bool)

(assert (=> d!527187 (isPrefix!1570 lt!657162 (++!5154 lt!657162 suffix!1421))))

(declare-fun lt!657340 () Unit!32637)

(assert (=> d!527187 (= lt!657340 (choose!10446 lt!657162 suffix!1421))))

(assert (=> d!527187 (= (lemmaConcatTwoListThenFirstIsPrefix!1080 lt!657162 suffix!1421) lt!657340)))

(declare-fun bs!402144 () Bool)

(assert (= bs!402144 d!527187))

(assert (=> bs!402144 m!2123977))

(assert (=> bs!402144 m!2123977))

(declare-fun m!2124489 () Bool)

(assert (=> bs!402144 m!2124489))

(declare-fun m!2124491 () Bool)

(assert (=> bs!402144 m!2124491))

(assert (=> b!1718879 d!527187))

(declare-fun d!527189 () Bool)

(assert (=> d!527189 (= (list!7594 lt!657178) (list!7596 (c!281355 lt!657178)))))

(declare-fun bs!402145 () Bool)

(assert (= bs!402145 d!527189))

(declare-fun m!2124493 () Bool)

(assert (=> bs!402145 m!2124493))

(assert (=> b!1718879 d!527189))

(declare-fun d!527191 () Bool)

(declare-fun e!1099618 () Bool)

(assert (=> d!527191 e!1099618))

(declare-fun res!771220 () Bool)

(assert (=> d!527191 (=> (not res!771220) (not e!1099618))))

(assert (=> d!527191 (= res!771220 (isDefined!3026 (getRuleFromTag!379 thiss!24550 rules!3447 (tag!3635 (rule!5271 (_1!10651 lt!657161))))))))

(declare-fun lt!657345 () Unit!32637)

(declare-fun choose!10447 (LexerInterface!2958 List!18872 List!18871 Token!6224) Unit!32637)

(assert (=> d!527191 (= lt!657345 (choose!10447 thiss!24550 rules!3447 lt!657164 (_1!10651 lt!657161)))))

(assert (=> d!527191 (rulesInvariant!2627 thiss!24550 rules!3447)))

(assert (=> d!527191 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!379 thiss!24550 rules!3447 lt!657164 (_1!10651 lt!657161)) lt!657345)))

(declare-fun b!1719259 () Bool)

(declare-fun res!771221 () Bool)

(assert (=> b!1719259 (=> (not res!771221) (not e!1099618))))

(assert (=> b!1719259 (= res!771221 (matchR!2131 (regex!3329 (get!5564 (getRuleFromTag!379 thiss!24550 rules!3447 (tag!3635 (rule!5271 (_1!10651 lt!657161)))))) (list!7594 (charsOf!1978 (_1!10651 lt!657161)))))))

(declare-fun b!1719260 () Bool)

(assert (=> b!1719260 (= e!1099618 (= (rule!5271 (_1!10651 lt!657161)) (get!5564 (getRuleFromTag!379 thiss!24550 rules!3447 (tag!3635 (rule!5271 (_1!10651 lt!657161)))))))))

(assert (= (and d!527191 res!771220) b!1719259))

(assert (= (and b!1719259 res!771221) b!1719260))

(assert (=> d!527191 m!2123967))

(assert (=> d!527191 m!2123967))

(declare-fun m!2124531 () Bool)

(assert (=> d!527191 m!2124531))

(declare-fun m!2124533 () Bool)

(assert (=> d!527191 m!2124533))

(assert (=> d!527191 m!2124005))

(assert (=> b!1719259 m!2123975))

(assert (=> b!1719259 m!2123967))

(declare-fun m!2124535 () Bool)

(assert (=> b!1719259 m!2124535))

(assert (=> b!1719259 m!2123987))

(declare-fun m!2124537 () Bool)

(assert (=> b!1719259 m!2124537))

(assert (=> b!1719259 m!2123967))

(assert (=> b!1719259 m!2123975))

(assert (=> b!1719259 m!2123987))

(assert (=> b!1719260 m!2123967))

(assert (=> b!1719260 m!2123967))

(assert (=> b!1719260 m!2124535))

(assert (=> b!1718879 d!527191))

(declare-fun b!1719266 () Bool)

(declare-fun e!1099622 () List!18871)

(assert (=> b!1719266 (= e!1099622 (Cons!18801 (h!24202 lt!657162) (++!5154 (t!159210 lt!657162) suffix!1421)))))

(declare-fun lt!657346 () List!18871)

(declare-fun b!1719268 () Bool)

(declare-fun e!1099621 () Bool)

(assert (=> b!1719268 (= e!1099621 (or (not (= suffix!1421 Nil!18801)) (= lt!657346 lt!657162)))))

(declare-fun b!1719265 () Bool)

(assert (=> b!1719265 (= e!1099622 suffix!1421)))

(declare-fun b!1719267 () Bool)

(declare-fun res!771227 () Bool)

(assert (=> b!1719267 (=> (not res!771227) (not e!1099621))))

(assert (=> b!1719267 (= res!771227 (= (size!14941 lt!657346) (+ (size!14941 lt!657162) (size!14941 suffix!1421))))))

(declare-fun d!527209 () Bool)

(assert (=> d!527209 e!1099621))

(declare-fun res!771226 () Bool)

(assert (=> d!527209 (=> (not res!771226) (not e!1099621))))

(assert (=> d!527209 (= res!771226 (= (content!2681 lt!657346) ((_ map or) (content!2681 lt!657162) (content!2681 suffix!1421))))))

(assert (=> d!527209 (= lt!657346 e!1099622)))

(declare-fun c!281419 () Bool)

(assert (=> d!527209 (= c!281419 ((_ is Nil!18801) lt!657162))))

(assert (=> d!527209 (= (++!5154 lt!657162 suffix!1421) lt!657346)))

(assert (= (and d!527209 c!281419) b!1719265))

(assert (= (and d!527209 (not c!281419)) b!1719266))

(assert (= (and d!527209 res!771226) b!1719267))

(assert (= (and b!1719267 res!771227) b!1719268))

(declare-fun m!2124539 () Bool)

(assert (=> b!1719266 m!2124539))

(declare-fun m!2124541 () Bool)

(assert (=> b!1719267 m!2124541))

(assert (=> b!1719267 m!2124231))

(declare-fun m!2124543 () Bool)

(assert (=> b!1719267 m!2124543))

(declare-fun m!2124545 () Bool)

(assert (=> d!527209 m!2124545))

(assert (=> d!527209 m!2124369))

(declare-fun m!2124547 () Bool)

(assert (=> d!527209 m!2124547))

(assert (=> b!1718879 d!527209))

(assert (=> b!1718879 d!527077))

(declare-fun b!1719272 () Bool)

(declare-fun e!1099625 () List!18871)

(assert (=> b!1719272 (= e!1099625 (Cons!18801 (h!24202 lt!657169) (++!5154 (t!159210 lt!657169) (_2!10651 lt!657161))))))

(declare-fun lt!657347 () List!18871)

(declare-fun b!1719274 () Bool)

(declare-fun e!1099624 () Bool)

(assert (=> b!1719274 (= e!1099624 (or (not (= (_2!10651 lt!657161) Nil!18801)) (= lt!657347 lt!657169)))))

(declare-fun b!1719271 () Bool)

(assert (=> b!1719271 (= e!1099625 (_2!10651 lt!657161))))

(declare-fun b!1719273 () Bool)

(declare-fun res!771231 () Bool)

(assert (=> b!1719273 (=> (not res!771231) (not e!1099624))))

(assert (=> b!1719273 (= res!771231 (= (size!14941 lt!657347) (+ (size!14941 lt!657169) (size!14941 (_2!10651 lt!657161)))))))

(declare-fun d!527211 () Bool)

(assert (=> d!527211 e!1099624))

(declare-fun res!771230 () Bool)

(assert (=> d!527211 (=> (not res!771230) (not e!1099624))))

(assert (=> d!527211 (= res!771230 (= (content!2681 lt!657347) ((_ map or) (content!2681 lt!657169) (content!2681 (_2!10651 lt!657161)))))))

(assert (=> d!527211 (= lt!657347 e!1099625)))

(declare-fun c!281420 () Bool)

(assert (=> d!527211 (= c!281420 ((_ is Nil!18801) lt!657169))))

(assert (=> d!527211 (= (++!5154 lt!657169 (_2!10651 lt!657161)) lt!657347)))

(assert (= (and d!527211 c!281420) b!1719271))

(assert (= (and d!527211 (not c!281420)) b!1719272))

(assert (= (and d!527211 res!771230) b!1719273))

(assert (= (and b!1719273 res!771231) b!1719274))

(declare-fun m!2124549 () Bool)

(assert (=> b!1719272 m!2124549))

(declare-fun m!2124551 () Bool)

(assert (=> b!1719273 m!2124551))

(assert (=> b!1719273 m!2124025))

(declare-fun m!2124553 () Bool)

(assert (=> b!1719273 m!2124553))

(declare-fun m!2124555 () Bool)

(assert (=> d!527211 m!2124555))

(declare-fun m!2124557 () Bool)

(assert (=> d!527211 m!2124557))

(declare-fun m!2124559 () Bool)

(assert (=> d!527211 m!2124559))

(assert (=> b!1718879 d!527211))

(declare-fun d!527213 () Bool)

(assert (=> d!527213 (isDefined!3025 (maxPrefix!1512 thiss!24550 rules!3447 (++!5154 lt!657162 suffix!1421)))))

(declare-fun lt!657425 () Unit!32637)

(declare-fun e!1099706 () Unit!32637)

(assert (=> d!527213 (= lt!657425 e!1099706)))

(declare-fun c!281456 () Bool)

(assert (=> d!527213 (= c!281456 (isEmpty!11825 (maxPrefix!1512 thiss!24550 rules!3447 (++!5154 lt!657162 suffix!1421))))))

(declare-fun lt!657424 () Unit!32637)

(declare-fun lt!657434 () Unit!32637)

(assert (=> d!527213 (= lt!657424 lt!657434)))

(declare-fun e!1099707 () Bool)

(assert (=> d!527213 e!1099707))

(declare-fun res!771298 () Bool)

(assert (=> d!527213 (=> (not res!771298) (not e!1099707))))

(declare-fun lt!657422 () Token!6224)

(assert (=> d!527213 (= res!771298 (isDefined!3026 (getRuleFromTag!379 thiss!24550 rules!3447 (tag!3635 (rule!5271 lt!657422)))))))

(assert (=> d!527213 (= lt!657434 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!379 thiss!24550 rules!3447 lt!657162 lt!657422))))

(declare-fun lt!657420 () Unit!32637)

(declare-fun lt!657431 () Unit!32637)

(assert (=> d!527213 (= lt!657420 lt!657431)))

(declare-fun lt!657427 () List!18871)

(assert (=> d!527213 (isPrefix!1570 lt!657427 (++!5154 lt!657162 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!251 (List!18871 List!18871 List!18871) Unit!32637)

(assert (=> d!527213 (= lt!657431 (lemmaPrefixStaysPrefixWhenAddingToSuffix!251 lt!657427 lt!657162 suffix!1421))))

(assert (=> d!527213 (= lt!657427 (list!7594 (charsOf!1978 lt!657422)))))

(declare-fun lt!657421 () Unit!32637)

(declare-fun lt!657435 () Unit!32637)

(assert (=> d!527213 (= lt!657421 lt!657435)))

(declare-fun lt!657436 () List!18871)

(declare-fun lt!657428 () List!18871)

(assert (=> d!527213 (isPrefix!1570 lt!657436 (++!5154 lt!657436 lt!657428))))

(assert (=> d!527213 (= lt!657435 (lemmaConcatTwoListThenFirstIsPrefix!1080 lt!657436 lt!657428))))

(assert (=> d!527213 (= lt!657428 (_2!10651 (get!5565 (maxPrefix!1512 thiss!24550 rules!3447 lt!657162))))))

(assert (=> d!527213 (= lt!657436 (list!7594 (charsOf!1978 lt!657422)))))

(declare-datatypes ((List!18876 0))(
  ( (Nil!18806) (Cons!18806 (h!24207 Token!6224) (t!159275 List!18876)) )
))
(declare-fun head!3880 (List!18876) Token!6224)

(declare-datatypes ((IArray!12515 0))(
  ( (IArray!12516 (innerList!6315 List!18876)) )
))
(declare-datatypes ((Conc!6255 0))(
  ( (Node!6255 (left!15001 Conc!6255) (right!15331 Conc!6255) (csize!12740 Int) (cheight!6466 Int)) (Leaf!9140 (xs!9131 IArray!12515) (csize!12741 Int)) (Empty!6255) )
))
(declare-datatypes ((BalanceConc!12454 0))(
  ( (BalanceConc!12455 (c!281473 Conc!6255)) )
))
(declare-fun list!7598 (BalanceConc!12454) List!18876)

(declare-datatypes ((tuple2!18502 0))(
  ( (tuple2!18503 (_1!10653 BalanceConc!12454) (_2!10653 BalanceConc!12450)) )
))
(declare-fun lex!1390 (LexerInterface!2958 List!18872 BalanceConc!12450) tuple2!18502)

(assert (=> d!527213 (= lt!657422 (head!3880 (list!7598 (_1!10653 (lex!1390 thiss!24550 rules!3447 (seqFromList!2303 lt!657162))))))))

(assert (=> d!527213 (not (isEmpty!11822 rules!3447))))

(assert (=> d!527213 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!482 thiss!24550 rules!3447 lt!657162 suffix!1421) lt!657425)))

(declare-fun b!1719420 () Bool)

(assert (=> b!1719420 (= e!1099707 (= (rule!5271 lt!657422) (get!5564 (getRuleFromTag!379 thiss!24550 rules!3447 (tag!3635 (rule!5271 lt!657422))))))))

(declare-fun b!1719422 () Bool)

(declare-fun Unit!32644 () Unit!32637)

(assert (=> b!1719422 (= e!1099706 Unit!32644)))

(declare-fun b!1719421 () Bool)

(declare-fun Unit!32645 () Unit!32637)

(assert (=> b!1719421 (= e!1099706 Unit!32645)))

(declare-fun lt!657429 () List!18871)

(assert (=> b!1719421 (= lt!657429 (++!5154 lt!657162 suffix!1421))))

(declare-fun lt!657430 () Unit!32637)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!259 (LexerInterface!2958 Rule!6458 List!18872 List!18871) Unit!32637)

(assert (=> b!1719421 (= lt!657430 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!259 thiss!24550 (rule!5271 lt!657422) rules!3447 lt!657429))))

(assert (=> b!1719421 (isEmpty!11825 (maxPrefixOneRule!888 thiss!24550 (rule!5271 lt!657422) lt!657429))))

(declare-fun lt!657432 () Unit!32637)

(assert (=> b!1719421 (= lt!657432 lt!657430)))

(declare-fun lt!657426 () List!18871)

(assert (=> b!1719421 (= lt!657426 (list!7594 (charsOf!1978 lt!657422)))))

(declare-fun lt!657423 () Unit!32637)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!255 (LexerInterface!2958 Rule!6458 List!18871 List!18871) Unit!32637)

(assert (=> b!1719421 (= lt!657423 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!255 thiss!24550 (rule!5271 lt!657422) lt!657426 (++!5154 lt!657162 suffix!1421)))))

(assert (=> b!1719421 (not (matchR!2131 (regex!3329 (rule!5271 lt!657422)) lt!657426))))

(declare-fun lt!657433 () Unit!32637)

(assert (=> b!1719421 (= lt!657433 lt!657423)))

(assert (=> b!1719421 false))

(declare-fun b!1719419 () Bool)

(declare-fun res!771297 () Bool)

(assert (=> b!1719419 (=> (not res!771297) (not e!1099707))))

(assert (=> b!1719419 (= res!771297 (matchR!2131 (regex!3329 (get!5564 (getRuleFromTag!379 thiss!24550 rules!3447 (tag!3635 (rule!5271 lt!657422))))) (list!7594 (charsOf!1978 lt!657422))))))

(assert (= (and d!527213 res!771298) b!1719419))

(assert (= (and b!1719419 res!771297) b!1719420))

(assert (= (and d!527213 c!281456) b!1719421))

(assert (= (and d!527213 (not c!281456)) b!1719422))

(declare-fun m!2124741 () Bool)

(assert (=> d!527213 m!2124741))

(declare-fun m!2124743 () Bool)

(assert (=> d!527213 m!2124743))

(declare-fun m!2124745 () Bool)

(assert (=> d!527213 m!2124745))

(declare-fun m!2124747 () Bool)

(assert (=> d!527213 m!2124747))

(declare-fun m!2124749 () Bool)

(assert (=> d!527213 m!2124749))

(declare-fun m!2124751 () Bool)

(assert (=> d!527213 m!2124751))

(declare-fun m!2124753 () Bool)

(assert (=> d!527213 m!2124753))

(assert (=> d!527213 m!2123977))

(assert (=> d!527213 m!2124745))

(declare-fun m!2124755 () Bool)

(assert (=> d!527213 m!2124755))

(assert (=> d!527213 m!2123993))

(assert (=> d!527213 m!2123949))

(assert (=> d!527213 m!2124751))

(declare-fun m!2124757 () Bool)

(assert (=> d!527213 m!2124757))

(declare-fun m!2124759 () Bool)

(assert (=> d!527213 m!2124759))

(assert (=> d!527213 m!2123977))

(assert (=> d!527213 m!2124741))

(assert (=> d!527213 m!2124749))

(declare-fun m!2124761 () Bool)

(assert (=> d!527213 m!2124761))

(declare-fun m!2124763 () Bool)

(assert (=> d!527213 m!2124763))

(declare-fun m!2124765 () Bool)

(assert (=> d!527213 m!2124765))

(assert (=> d!527213 m!2123949))

(declare-fun m!2124767 () Bool)

(assert (=> d!527213 m!2124767))

(declare-fun m!2124769 () Bool)

(assert (=> d!527213 m!2124769))

(assert (=> d!527213 m!2124741))

(declare-fun m!2124771 () Bool)

(assert (=> d!527213 m!2124771))

(assert (=> d!527213 m!2124763))

(assert (=> d!527213 m!2124755))

(declare-fun m!2124773 () Bool)

(assert (=> d!527213 m!2124773))

(assert (=> d!527213 m!2123977))

(declare-fun m!2124775 () Bool)

(assert (=> d!527213 m!2124775))

(assert (=> b!1719420 m!2124763))

(assert (=> b!1719420 m!2124763))

(declare-fun m!2124777 () Bool)

(assert (=> b!1719420 m!2124777))

(declare-fun m!2124779 () Bool)

(assert (=> b!1719421 m!2124779))

(declare-fun m!2124781 () Bool)

(assert (=> b!1719421 m!2124781))

(declare-fun m!2124783 () Bool)

(assert (=> b!1719421 m!2124783))

(assert (=> b!1719421 m!2124751))

(assert (=> b!1719421 m!2124753))

(assert (=> b!1719421 m!2123977))

(assert (=> b!1719421 m!2123977))

(declare-fun m!2124785 () Bool)

(assert (=> b!1719421 m!2124785))

(assert (=> b!1719421 m!2124783))

(declare-fun m!2124787 () Bool)

(assert (=> b!1719421 m!2124787))

(assert (=> b!1719421 m!2124751))

(assert (=> b!1719419 m!2124751))

(assert (=> b!1719419 m!2124753))

(assert (=> b!1719419 m!2124751))

(assert (=> b!1719419 m!2124763))

(assert (=> b!1719419 m!2124777))

(assert (=> b!1719419 m!2124753))

(declare-fun m!2124789 () Bool)

(assert (=> b!1719419 m!2124789))

(assert (=> b!1719419 m!2124763))

(assert (=> b!1718879 d!527213))

(declare-fun b!1719425 () Bool)

(declare-fun e!1099708 () Bool)

(assert (=> b!1719425 (= e!1099708 (isPrefix!1570 (tail!2567 lt!657162) (tail!2567 lt!657164)))))

(declare-fun b!1719426 () Bool)

(declare-fun e!1099710 () Bool)

(assert (=> b!1719426 (= e!1099710 (>= (size!14941 lt!657164) (size!14941 lt!657162)))))

(declare-fun b!1719423 () Bool)

(declare-fun e!1099709 () Bool)

(assert (=> b!1719423 (= e!1099709 e!1099708)))

(declare-fun res!771299 () Bool)

(assert (=> b!1719423 (=> (not res!771299) (not e!1099708))))

(assert (=> b!1719423 (= res!771299 (not ((_ is Nil!18801) lt!657164)))))

(declare-fun b!1719424 () Bool)

(declare-fun res!771300 () Bool)

(assert (=> b!1719424 (=> (not res!771300) (not e!1099708))))

(assert (=> b!1719424 (= res!771300 (= (head!3878 lt!657162) (head!3878 lt!657164)))))

(declare-fun d!527297 () Bool)

(assert (=> d!527297 e!1099710))

(declare-fun res!771301 () Bool)

(assert (=> d!527297 (=> res!771301 e!1099710)))

(declare-fun lt!657437 () Bool)

(assert (=> d!527297 (= res!771301 (not lt!657437))))

(assert (=> d!527297 (= lt!657437 e!1099709)))

(declare-fun res!771302 () Bool)

(assert (=> d!527297 (=> res!771302 e!1099709)))

(assert (=> d!527297 (= res!771302 ((_ is Nil!18801) lt!657162))))

(assert (=> d!527297 (= (isPrefix!1570 lt!657162 lt!657164) lt!657437)))

(assert (= (and d!527297 (not res!771302)) b!1719423))

(assert (= (and b!1719423 res!771299) b!1719424))

(assert (= (and b!1719424 res!771300) b!1719425))

(assert (= (and d!527297 (not res!771301)) b!1719426))

(assert (=> b!1719425 m!2124381))

(assert (=> b!1719425 m!2124483))

(assert (=> b!1719425 m!2124381))

(assert (=> b!1719425 m!2124483))

(declare-fun m!2124791 () Bool)

(assert (=> b!1719425 m!2124791))

(assert (=> b!1719426 m!2124425))

(assert (=> b!1719426 m!2124231))

(assert (=> b!1719424 m!2124377))

(assert (=> b!1719424 m!2124487))

(assert (=> b!1718879 d!527297))

(declare-fun d!527299 () Bool)

(declare-fun lt!657440 () Int)

(assert (=> d!527299 (>= lt!657440 0)))

(declare-fun e!1099713 () Int)

(assert (=> d!527299 (= lt!657440 e!1099713)))

(declare-fun c!281459 () Bool)

(assert (=> d!527299 (= c!281459 ((_ is Nil!18801) lt!657169))))

(assert (=> d!527299 (= (size!14941 lt!657169) lt!657440)))

(declare-fun b!1719431 () Bool)

(assert (=> b!1719431 (= e!1099713 0)))

(declare-fun b!1719432 () Bool)

(assert (=> b!1719432 (= e!1099713 (+ 1 (size!14941 (t!159210 lt!657169))))))

(assert (= (and d!527299 c!281459) b!1719431))

(assert (= (and d!527299 (not c!281459)) b!1719432))

(declare-fun m!2124793 () Bool)

(assert (=> b!1719432 m!2124793))

(assert (=> b!1718858 d!527299))

(declare-fun d!527301 () Bool)

(assert (=> d!527301 (= (_2!10651 lt!657161) lt!657176)))

(declare-fun lt!657443 () Unit!32637)

(declare-fun choose!10448 (List!18871 List!18871 List!18871 List!18871 List!18871) Unit!32637)

(assert (=> d!527301 (= lt!657443 (choose!10448 lt!657169 (_2!10651 lt!657161) lt!657169 lt!657176 lt!657164))))

(assert (=> d!527301 (isPrefix!1570 lt!657169 lt!657164)))

(assert (=> d!527301 (= (lemmaSamePrefixThenSameSuffix!714 lt!657169 (_2!10651 lt!657161) lt!657169 lt!657176 lt!657164) lt!657443)))

(declare-fun bs!402163 () Bool)

(assert (= bs!402163 d!527301))

(declare-fun m!2124795 () Bool)

(assert (=> bs!402163 m!2124795))

(assert (=> bs!402163 m!2123981))

(assert (=> b!1718858 d!527301))

(declare-fun d!527303 () Bool)

(assert (=> d!527303 (= (apply!5134 (transformation!3329 (rule!5271 (_1!10651 lt!657161))) (seqFromList!2303 lt!657169)) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (seqFromList!2303 lt!657169)))))

(declare-fun b_lambda!54459 () Bool)

(assert (=> (not b_lambda!54459) (not d!527303)))

(declare-fun tb!101805 () Bool)

(declare-fun t!159243 () Bool)

(assert (=> (and b!1718854 (= (toValue!4836 (transformation!3329 (rule!5271 token!523))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159243) tb!101805))

(declare-fun result!122348 () Bool)

(assert (=> tb!101805 (= result!122348 (inv!21 (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (seqFromList!2303 lt!657169))))))

(declare-fun m!2124797 () Bool)

(assert (=> tb!101805 m!2124797))

(assert (=> d!527303 t!159243))

(declare-fun b_and!125359 () Bool)

(assert (= b_and!125299 (and (=> t!159243 result!122348) b_and!125359)))

(declare-fun t!159245 () Bool)

(declare-fun tb!101807 () Bool)

(assert (=> (and b!1718876 (= (toValue!4836 (transformation!3329 rule!422)) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159245) tb!101807))

(declare-fun result!122350 () Bool)

(assert (= result!122350 result!122348))

(assert (=> d!527303 t!159245))

(declare-fun b_and!125361 () Bool)

(assert (= b_and!125301 (and (=> t!159245 result!122350) b_and!125361)))

(declare-fun tb!101809 () Bool)

(declare-fun t!159247 () Bool)

(assert (=> (and b!1718869 (= (toValue!4836 (transformation!3329 (h!24203 rules!3447))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159247) tb!101809))

(declare-fun result!122352 () Bool)

(assert (= result!122352 result!122348))

(assert (=> d!527303 t!159247))

(declare-fun b_and!125363 () Bool)

(assert (= b_and!125303 (and (=> t!159247 result!122352) b_and!125363)))

(assert (=> d!527303 m!2124013))

(declare-fun m!2124799 () Bool)

(assert (=> d!527303 m!2124799))

(assert (=> b!1718858 d!527303))

(declare-fun d!527305 () Bool)

(assert (=> d!527305 (= (seqFromList!2303 lt!657169) (fromListB!1055 lt!657169))))

(declare-fun bs!402164 () Bool)

(assert (= bs!402164 d!527305))

(declare-fun m!2124801 () Bool)

(assert (=> bs!402164 m!2124801))

(assert (=> b!1718858 d!527305))

(declare-fun b!1719545 () Bool)

(declare-fun res!771351 () Bool)

(declare-fun e!1099771 () Bool)

(assert (=> b!1719545 (=> (not res!771351) (not e!1099771))))

(declare-fun lt!657472 () Option!3682)

(assert (=> b!1719545 (= res!771351 (< (size!14941 (_2!10651 (get!5565 lt!657472))) (size!14941 lt!657164)))))

(declare-fun b!1719546 () Bool)

(declare-fun e!1099772 () Option!3682)

(declare-datatypes ((tuple2!18504 0))(
  ( (tuple2!18505 (_1!10654 List!18871) (_2!10654 List!18871)) )
))
(declare-fun lt!657470 () tuple2!18504)

(assert (=> b!1719546 (= e!1099772 (Some!3681 (tuple2!18499 (Token!6225 (apply!5134 (transformation!3329 (rule!5271 (_1!10651 lt!657161))) (seqFromList!2303 (_1!10654 lt!657470))) (rule!5271 (_1!10651 lt!657161)) (size!14942 (seqFromList!2303 (_1!10654 lt!657470))) (_1!10654 lt!657470)) (_2!10654 lt!657470))))))

(declare-fun lt!657471 () Unit!32637)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!376 (Regex!4657 List!18871) Unit!32637)

(assert (=> b!1719546 (= lt!657471 (longestMatchIsAcceptedByMatchOrIsEmpty!376 (regex!3329 (rule!5271 (_1!10651 lt!657161))) lt!657164))))

(declare-fun res!771348 () Bool)

(declare-fun findLongestMatchInner!392 (Regex!4657 List!18871 Int List!18871 List!18871 Int) tuple2!18504)

(assert (=> b!1719546 (= res!771348 (isEmpty!11821 (_1!10654 (findLongestMatchInner!392 (regex!3329 (rule!5271 (_1!10651 lt!657161))) Nil!18801 (size!14941 Nil!18801) lt!657164 lt!657164 (size!14941 lt!657164)))))))

(declare-fun e!1099774 () Bool)

(assert (=> b!1719546 (=> res!771348 e!1099774)))

(assert (=> b!1719546 e!1099774))

(declare-fun lt!657473 () Unit!32637)

(assert (=> b!1719546 (= lt!657473 lt!657471)))

(declare-fun lt!657474 () Unit!32637)

(assert (=> b!1719546 (= lt!657474 (lemmaSemiInverse!475 (transformation!3329 (rule!5271 (_1!10651 lt!657161))) (seqFromList!2303 (_1!10654 lt!657470))))))

(declare-fun b!1719547 () Bool)

(declare-fun res!771347 () Bool)

(assert (=> b!1719547 (=> (not res!771347) (not e!1099771))))

(assert (=> b!1719547 (= res!771347 (= (rule!5271 (_1!10651 (get!5565 lt!657472))) (rule!5271 (_1!10651 lt!657161))))))

(declare-fun b!1719548 () Bool)

(declare-fun res!771350 () Bool)

(assert (=> b!1719548 (=> (not res!771350) (not e!1099771))))

(assert (=> b!1719548 (= res!771350 (= (++!5154 (list!7594 (charsOf!1978 (_1!10651 (get!5565 lt!657472)))) (_2!10651 (get!5565 lt!657472))) lt!657164))))

(declare-fun b!1719549 () Bool)

(assert (=> b!1719549 (= e!1099772 None!3681)))

(declare-fun d!527307 () Bool)

(declare-fun e!1099773 () Bool)

(assert (=> d!527307 e!1099773))

(declare-fun res!771349 () Bool)

(assert (=> d!527307 (=> res!771349 e!1099773)))

(assert (=> d!527307 (= res!771349 (isEmpty!11825 lt!657472))))

(assert (=> d!527307 (= lt!657472 e!1099772)))

(declare-fun c!281468 () Bool)

(assert (=> d!527307 (= c!281468 (isEmpty!11821 (_1!10654 lt!657470)))))

(declare-fun findLongestMatch!319 (Regex!4657 List!18871) tuple2!18504)

(assert (=> d!527307 (= lt!657470 (findLongestMatch!319 (regex!3329 (rule!5271 (_1!10651 lt!657161))) lt!657164))))

(assert (=> d!527307 (ruleValid!828 thiss!24550 (rule!5271 (_1!10651 lt!657161)))))

(assert (=> d!527307 (= (maxPrefixOneRule!888 thiss!24550 (rule!5271 (_1!10651 lt!657161)) lt!657164) lt!657472)))

(declare-fun b!1719550 () Bool)

(assert (=> b!1719550 (= e!1099773 e!1099771)))

(declare-fun res!771346 () Bool)

(assert (=> b!1719550 (=> (not res!771346) (not e!1099771))))

(assert (=> b!1719550 (= res!771346 (matchR!2131 (regex!3329 (rule!5271 (_1!10651 lt!657161))) (list!7594 (charsOf!1978 (_1!10651 (get!5565 lt!657472))))))))

(declare-fun b!1719551 () Bool)

(assert (=> b!1719551 (= e!1099771 (= (size!14940 (_1!10651 (get!5565 lt!657472))) (size!14941 (originalCharacters!4143 (_1!10651 (get!5565 lt!657472))))))))

(declare-fun b!1719552 () Bool)

(declare-fun res!771352 () Bool)

(assert (=> b!1719552 (=> (not res!771352) (not e!1099771))))

(assert (=> b!1719552 (= res!771352 (= (value!104549 (_1!10651 (get!5565 lt!657472))) (apply!5134 (transformation!3329 (rule!5271 (_1!10651 (get!5565 lt!657472)))) (seqFromList!2303 (originalCharacters!4143 (_1!10651 (get!5565 lt!657472)))))))))

(declare-fun b!1719553 () Bool)

(assert (=> b!1719553 (= e!1099774 (matchR!2131 (regex!3329 (rule!5271 (_1!10651 lt!657161))) (_1!10654 (findLongestMatchInner!392 (regex!3329 (rule!5271 (_1!10651 lt!657161))) Nil!18801 (size!14941 Nil!18801) lt!657164 lt!657164 (size!14941 lt!657164)))))))

(assert (= (and d!527307 c!281468) b!1719549))

(assert (= (and d!527307 (not c!281468)) b!1719546))

(assert (= (and b!1719546 (not res!771348)) b!1719553))

(assert (= (and d!527307 (not res!771349)) b!1719550))

(assert (= (and b!1719550 res!771346) b!1719548))

(assert (= (and b!1719548 res!771350) b!1719545))

(assert (= (and b!1719545 res!771351) b!1719547))

(assert (= (and b!1719547 res!771347) b!1719552))

(assert (= (and b!1719552 res!771352) b!1719551))

(declare-fun m!2124869 () Bool)

(assert (=> d!527307 m!2124869))

(declare-fun m!2124871 () Bool)

(assert (=> d!527307 m!2124871))

(declare-fun m!2124873 () Bool)

(assert (=> d!527307 m!2124873))

(assert (=> d!527307 m!2123985))

(declare-fun m!2124875 () Bool)

(assert (=> b!1719550 m!2124875))

(declare-fun m!2124877 () Bool)

(assert (=> b!1719550 m!2124877))

(assert (=> b!1719550 m!2124877))

(declare-fun m!2124879 () Bool)

(assert (=> b!1719550 m!2124879))

(assert (=> b!1719550 m!2124879))

(declare-fun m!2124881 () Bool)

(assert (=> b!1719550 m!2124881))

(assert (=> b!1719545 m!2124875))

(declare-fun m!2124883 () Bool)

(assert (=> b!1719545 m!2124883))

(assert (=> b!1719545 m!2124425))

(declare-fun m!2124885 () Bool)

(assert (=> b!1719546 m!2124885))

(declare-fun m!2124887 () Bool)

(assert (=> b!1719546 m!2124887))

(declare-fun m!2124889 () Bool)

(assert (=> b!1719546 m!2124889))

(assert (=> b!1719546 m!2124887))

(declare-fun m!2124891 () Bool)

(assert (=> b!1719546 m!2124891))

(assert (=> b!1719546 m!2124885))

(assert (=> b!1719546 m!2124425))

(declare-fun m!2124893 () Bool)

(assert (=> b!1719546 m!2124893))

(assert (=> b!1719546 m!2124887))

(declare-fun m!2124895 () Bool)

(assert (=> b!1719546 m!2124895))

(assert (=> b!1719546 m!2124425))

(assert (=> b!1719546 m!2124887))

(declare-fun m!2124897 () Bool)

(assert (=> b!1719546 m!2124897))

(declare-fun m!2124899 () Bool)

(assert (=> b!1719546 m!2124899))

(assert (=> b!1719548 m!2124875))

(assert (=> b!1719548 m!2124877))

(assert (=> b!1719548 m!2124877))

(assert (=> b!1719548 m!2124879))

(assert (=> b!1719548 m!2124879))

(declare-fun m!2124901 () Bool)

(assert (=> b!1719548 m!2124901))

(assert (=> b!1719552 m!2124875))

(declare-fun m!2124903 () Bool)

(assert (=> b!1719552 m!2124903))

(assert (=> b!1719552 m!2124903))

(declare-fun m!2124905 () Bool)

(assert (=> b!1719552 m!2124905))

(assert (=> b!1719547 m!2124875))

(assert (=> b!1719551 m!2124875))

(declare-fun m!2124907 () Bool)

(assert (=> b!1719551 m!2124907))

(assert (=> b!1719553 m!2124885))

(assert (=> b!1719553 m!2124425))

(assert (=> b!1719553 m!2124885))

(assert (=> b!1719553 m!2124425))

(assert (=> b!1719553 m!2124893))

(declare-fun m!2124909 () Bool)

(assert (=> b!1719553 m!2124909))

(assert (=> b!1718858 d!527307))

(declare-fun d!527311 () Bool)

(assert (=> d!527311 (= (maxPrefixOneRule!888 thiss!24550 (rule!5271 (_1!10651 lt!657161)) lt!657164) (Some!3681 (tuple2!18499 (Token!6225 (apply!5134 (transformation!3329 (rule!5271 (_1!10651 lt!657161))) (seqFromList!2303 lt!657169)) (rule!5271 (_1!10651 lt!657161)) (size!14941 lt!657169) lt!657169) (_2!10651 lt!657161))))))

(declare-fun lt!657477 () Unit!32637)

(declare-fun choose!10449 (LexerInterface!2958 List!18872 List!18871 List!18871 List!18871 Rule!6458) Unit!32637)

(assert (=> d!527311 (= lt!657477 (choose!10449 thiss!24550 rules!3447 lt!657169 lt!657164 (_2!10651 lt!657161) (rule!5271 (_1!10651 lt!657161))))))

(assert (=> d!527311 (not (isEmpty!11822 rules!3447))))

(assert (=> d!527311 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!287 thiss!24550 rules!3447 lt!657169 lt!657164 (_2!10651 lt!657161) (rule!5271 (_1!10651 lt!657161))) lt!657477)))

(declare-fun bs!402165 () Bool)

(assert (= bs!402165 d!527311))

(declare-fun m!2124911 () Bool)

(assert (=> bs!402165 m!2124911))

(assert (=> bs!402165 m!2124013))

(assert (=> bs!402165 m!2123993))

(assert (=> bs!402165 m!2124019))

(assert (=> bs!402165 m!2124025))

(assert (=> bs!402165 m!2124013))

(assert (=> bs!402165 m!2124021))

(assert (=> b!1718858 d!527311))

(declare-fun d!527313 () Bool)

(declare-fun lt!657480 () List!18871)

(assert (=> d!527313 (= (++!5154 lt!657169 lt!657480) lt!657164)))

(declare-fun e!1099777 () List!18871)

(assert (=> d!527313 (= lt!657480 e!1099777)))

(declare-fun c!281471 () Bool)

(assert (=> d!527313 (= c!281471 ((_ is Cons!18801) lt!657169))))

(assert (=> d!527313 (>= (size!14941 lt!657164) (size!14941 lt!657169))))

(assert (=> d!527313 (= (getSuffix!764 lt!657164 lt!657169) lt!657480)))

(declare-fun b!1719558 () Bool)

(assert (=> b!1719558 (= e!1099777 (getSuffix!764 (tail!2567 lt!657164) (t!159210 lt!657169)))))

(declare-fun b!1719559 () Bool)

(assert (=> b!1719559 (= e!1099777 lt!657164)))

(assert (= (and d!527313 c!281471) b!1719558))

(assert (= (and d!527313 (not c!281471)) b!1719559))

(declare-fun m!2124913 () Bool)

(assert (=> d!527313 m!2124913))

(assert (=> d!527313 m!2124425))

(assert (=> d!527313 m!2124025))

(assert (=> b!1719558 m!2124483))

(assert (=> b!1719558 m!2124483))

(declare-fun m!2124915 () Bool)

(assert (=> b!1719558 m!2124915))

(assert (=> b!1718858 d!527313))

(declare-fun b!1719564 () Bool)

(declare-fun e!1099780 () Bool)

(declare-fun tp!490982 () Bool)

(assert (=> b!1719564 (= e!1099780 (and tp_is_empty!7557 tp!490982))))

(assert (=> b!1718861 (= tp!490918 e!1099780)))

(assert (= (and b!1718861 ((_ is Cons!18801) (originalCharacters!4143 token!523))) b!1719564))

(declare-fun b!1719576 () Bool)

(declare-fun e!1099783 () Bool)

(declare-fun tp!490994 () Bool)

(declare-fun tp!490993 () Bool)

(assert (=> b!1719576 (= e!1099783 (and tp!490994 tp!490993))))

(declare-fun b!1719577 () Bool)

(declare-fun tp!490997 () Bool)

(assert (=> b!1719577 (= e!1099783 tp!490997)))

(assert (=> b!1718872 (= tp!490912 e!1099783)))

(declare-fun b!1719575 () Bool)

(assert (=> b!1719575 (= e!1099783 tp_is_empty!7557)))

(declare-fun b!1719578 () Bool)

(declare-fun tp!490995 () Bool)

(declare-fun tp!490996 () Bool)

(assert (=> b!1719578 (= e!1099783 (and tp!490995 tp!490996))))

(assert (= (and b!1718872 ((_ is ElementMatch!4657) (regex!3329 (rule!5271 token!523)))) b!1719575))

(assert (= (and b!1718872 ((_ is Concat!8077) (regex!3329 (rule!5271 token!523)))) b!1719576))

(assert (= (and b!1718872 ((_ is Star!4657) (regex!3329 (rule!5271 token!523)))) b!1719577))

(assert (= (and b!1718872 ((_ is Union!4657) (regex!3329 (rule!5271 token!523)))) b!1719578))

(declare-fun b!1719580 () Bool)

(declare-fun e!1099784 () Bool)

(declare-fun tp!490999 () Bool)

(declare-fun tp!490998 () Bool)

(assert (=> b!1719580 (= e!1099784 (and tp!490999 tp!490998))))

(declare-fun b!1719581 () Bool)

(declare-fun tp!491002 () Bool)

(assert (=> b!1719581 (= e!1099784 tp!491002)))

(assert (=> b!1718862 (= tp!490911 e!1099784)))

(declare-fun b!1719579 () Bool)

(assert (=> b!1719579 (= e!1099784 tp_is_empty!7557)))

(declare-fun b!1719582 () Bool)

(declare-fun tp!491000 () Bool)

(declare-fun tp!491001 () Bool)

(assert (=> b!1719582 (= e!1099784 (and tp!491000 tp!491001))))

(assert (= (and b!1718862 ((_ is ElementMatch!4657) (regex!3329 (h!24203 rules!3447)))) b!1719579))

(assert (= (and b!1718862 ((_ is Concat!8077) (regex!3329 (h!24203 rules!3447)))) b!1719580))

(assert (= (and b!1718862 ((_ is Star!4657) (regex!3329 (h!24203 rules!3447)))) b!1719581))

(assert (= (and b!1718862 ((_ is Union!4657) (regex!3329 (h!24203 rules!3447)))) b!1719582))

(declare-fun tp!491009 () Bool)

(declare-fun e!1099790 () Bool)

(declare-fun b!1719591 () Bool)

(declare-fun tp!491011 () Bool)

(assert (=> b!1719591 (= e!1099790 (and (inv!24275 (left!14999 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161)))))) tp!491009 (inv!24275 (right!15329 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161)))))) tp!491011))))

(declare-fun b!1719593 () Bool)

(declare-fun e!1099789 () Bool)

(declare-fun tp!491010 () Bool)

(assert (=> b!1719593 (= e!1099789 tp!491010)))

(declare-fun b!1719592 () Bool)

(declare-fun inv!24281 (IArray!12511) Bool)

(assert (=> b!1719592 (= e!1099790 (and (inv!24281 (xs!9129 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161)))))) e!1099789))))

(assert (=> b!1718897 (= tp!490923 (and (inv!24275 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161))))) e!1099790))))

(assert (= (and b!1718897 ((_ is Node!6253) (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161)))))) b!1719591))

(assert (= b!1719592 b!1719593))

(assert (= (and b!1718897 ((_ is Leaf!9138) (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (value!104549 (_1!10651 lt!657161)))))) b!1719592))

(declare-fun m!2124917 () Bool)

(assert (=> b!1719591 m!2124917))

(declare-fun m!2124919 () Bool)

(assert (=> b!1719591 m!2124919))

(declare-fun m!2124921 () Bool)

(assert (=> b!1719592 m!2124921))

(assert (=> b!1718897 m!2123931))

(declare-fun b!1719595 () Bool)

(declare-fun e!1099791 () Bool)

(declare-fun tp!491013 () Bool)

(declare-fun tp!491012 () Bool)

(assert (=> b!1719595 (= e!1099791 (and tp!491013 tp!491012))))

(declare-fun b!1719596 () Bool)

(declare-fun tp!491016 () Bool)

(assert (=> b!1719596 (= e!1099791 tp!491016)))

(assert (=> b!1718880 (= tp!490920 e!1099791)))

(declare-fun b!1719594 () Bool)

(assert (=> b!1719594 (= e!1099791 tp_is_empty!7557)))

(declare-fun b!1719597 () Bool)

(declare-fun tp!491014 () Bool)

(declare-fun tp!491015 () Bool)

(assert (=> b!1719597 (= e!1099791 (and tp!491014 tp!491015))))

(assert (= (and b!1718880 ((_ is ElementMatch!4657) (regex!3329 rule!422))) b!1719594))

(assert (= (and b!1718880 ((_ is Concat!8077) (regex!3329 rule!422))) b!1719595))

(assert (= (and b!1718880 ((_ is Star!4657) (regex!3329 rule!422))) b!1719596))

(assert (= (and b!1718880 ((_ is Union!4657) (regex!3329 rule!422))) b!1719597))

(declare-fun b!1719598 () Bool)

(declare-fun e!1099792 () Bool)

(declare-fun tp!491017 () Bool)

(assert (=> b!1719598 (= e!1099792 (and tp_is_empty!7557 tp!491017))))

(assert (=> b!1718870 (= tp!490914 e!1099792)))

(assert (= (and b!1718870 ((_ is Cons!18801) (t!159210 suffix!1421))) b!1719598))

(declare-fun b!1719599 () Bool)

(declare-fun tp!491020 () Bool)

(declare-fun e!1099794 () Bool)

(declare-fun tp!491018 () Bool)

(assert (=> b!1719599 (= e!1099794 (and (inv!24275 (left!14999 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))))) tp!491018 (inv!24275 (right!15329 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))))) tp!491020))))

(declare-fun b!1719601 () Bool)

(declare-fun e!1099793 () Bool)

(declare-fun tp!491019 () Bool)

(assert (=> b!1719601 (= e!1099793 tp!491019)))

(declare-fun b!1719600 () Bool)

(assert (=> b!1719600 (= e!1099794 (and (inv!24281 (xs!9129 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))))) e!1099793))))

(assert (=> b!1718898 (= tp!490924 (and (inv!24275 (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178)))) e!1099794))))

(assert (= (and b!1718898 ((_ is Node!6253) (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))))) b!1719599))

(assert (= b!1719600 b!1719601))

(assert (= (and b!1718898 ((_ is Leaf!9138) (c!281355 (dynLambda!8631 (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) (dynLambda!8632 (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))) lt!657178))))) b!1719600))

(declare-fun m!2124923 () Bool)

(assert (=> b!1719599 m!2124923))

(declare-fun m!2124925 () Bool)

(assert (=> b!1719599 m!2124925))

(declare-fun m!2124927 () Bool)

(assert (=> b!1719600 m!2124927))

(assert (=> b!1718898 m!2123935))

(declare-fun b!1719612 () Bool)

(declare-fun b_free!46811 () Bool)

(declare-fun b_next!47515 () Bool)

(assert (=> b!1719612 (= b_free!46811 (not b_next!47515))))

(declare-fun t!159261 () Bool)

(declare-fun tb!101823 () Bool)

(assert (=> (and b!1719612 (= (toValue!4836 (transformation!3329 (h!24203 (t!159211 rules!3447)))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159261) tb!101823))

(declare-fun result!122382 () Bool)

(assert (= result!122382 result!122310))

(assert (=> d!527119 t!159261))

(declare-fun tb!101825 () Bool)

(declare-fun t!159263 () Bool)

(assert (=> (and b!1719612 (= (toValue!4836 (transformation!3329 (h!24203 (t!159211 rules!3447)))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159263) tb!101825))

(declare-fun result!122384 () Bool)

(assert (= result!122384 result!122324))

(assert (=> d!527129 t!159263))

(assert (=> b!1718875 t!159261))

(assert (=> d!527129 t!159261))

(assert (=> d!527137 t!159261))

(declare-fun t!159265 () Bool)

(declare-fun tb!101827 () Bool)

(assert (=> (and b!1719612 (= (toValue!4836 (transformation!3329 (h!24203 (t!159211 rules!3447)))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159265) tb!101827))

(declare-fun result!122386 () Bool)

(assert (= result!122386 result!122348))

(assert (=> d!527303 t!159265))

(declare-fun b_and!125369 () Bool)

(declare-fun tp!491029 () Bool)

(assert (=> b!1719612 (= tp!491029 (and (=> t!159265 result!122386) (=> t!159261 result!122382) (=> t!159263 result!122384) b_and!125369))))

(declare-fun b_free!46813 () Bool)

(declare-fun b_next!47517 () Bool)

(assert (=> b!1719612 (= b_free!46813 (not b_next!47517))))

(declare-fun t!159267 () Bool)

(declare-fun tb!101829 () Bool)

(assert (=> (and b!1719612 (= (toChars!4695 (transformation!3329 (h!24203 (t!159211 rules!3447)))) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159267) tb!101829))

(declare-fun result!122388 () Bool)

(assert (= result!122388 result!122304))

(assert (=> b!1718875 t!159267))

(declare-fun t!159269 () Bool)

(declare-fun tb!101831 () Bool)

(assert (=> (and b!1719612 (= (toChars!4695 (transformation!3329 (h!24203 (t!159211 rules!3447)))) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161))))) t!159269) tb!101831))

(declare-fun result!122390 () Bool)

(assert (= result!122390 result!122296))

(assert (=> d!527077 t!159269))

(assert (=> b!1718857 t!159269))

(declare-fun tb!101833 () Bool)

(declare-fun t!159271 () Bool)

(assert (=> (and b!1719612 (= (toChars!4695 (transformation!3329 (h!24203 (t!159211 rules!3447)))) (toChars!4695 (transformation!3329 (rule!5271 token!523)))) t!159271) tb!101833))

(declare-fun result!122392 () Bool)

(assert (= result!122392 result!122318))

(assert (=> b!1718905 t!159271))

(assert (=> d!527101 t!159271))

(assert (=> d!527119 t!159267))

(declare-fun tp!491032 () Bool)

(declare-fun b_and!125371 () Bool)

(assert (=> b!1719612 (= tp!491032 (and (=> t!159269 result!122390) (=> t!159267 result!122388) (=> t!159271 result!122392) b_and!125371))))

(declare-fun e!1099806 () Bool)

(assert (=> b!1719612 (= e!1099806 (and tp!491029 tp!491032))))

(declare-fun tp!491031 () Bool)

(declare-fun b!1719611 () Bool)

(declare-fun e!1099805 () Bool)

(assert (=> b!1719611 (= e!1099805 (and tp!491031 (inv!24268 (tag!3635 (h!24203 (t!159211 rules!3447)))) (inv!24273 (transformation!3329 (h!24203 (t!159211 rules!3447)))) e!1099806))))

(declare-fun b!1719610 () Bool)

(declare-fun e!1099803 () Bool)

(declare-fun tp!491030 () Bool)

(assert (=> b!1719610 (= e!1099803 (and e!1099805 tp!491030))))

(assert (=> b!1718873 (= tp!490913 e!1099803)))

(assert (= b!1719611 b!1719612))

(assert (= b!1719610 b!1719611))

(assert (= (and b!1718873 ((_ is Cons!18802) (t!159211 rules!3447))) b!1719610))

(declare-fun m!2124929 () Bool)

(assert (=> b!1719611 m!2124929))

(declare-fun m!2124931 () Bool)

(assert (=> b!1719611 m!2124931))

(declare-fun b_lambda!54471 () Bool)

(assert (= b_lambda!54421 (or (and b!1718854 b_free!46797 (= (toChars!4695 (transformation!3329 (rule!5271 token!523))) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))) (and b!1718876 b_free!46801 (= (toChars!4695 (transformation!3329 rule!422)) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))) (and b!1718869 b_free!46805 (= (toChars!4695 (transformation!3329 (h!24203 rules!3447))) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))) (and b!1719612 b_free!46813 (= (toChars!4695 (transformation!3329 (h!24203 (t!159211 rules!3447)))) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))) b_lambda!54471)))

(declare-fun b_lambda!54473 () Bool)

(assert (= b_lambda!54419 (or (and b!1718854 b_free!46797 (= (toChars!4695 (transformation!3329 (rule!5271 token!523))) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))) (and b!1718876 b_free!46801 (= (toChars!4695 (transformation!3329 rule!422)) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))) (and b!1718869 b_free!46805 (= (toChars!4695 (transformation!3329 (h!24203 rules!3447))) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))) (and b!1719612 b_free!46813 (= (toChars!4695 (transformation!3329 (h!24203 (t!159211 rules!3447)))) (toChars!4695 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))) b_lambda!54473)))

(declare-fun b_lambda!54475 () Bool)

(assert (= b_lambda!54423 (or (and b!1718854 b_free!46795 (= (toValue!4836 (transformation!3329 (rule!5271 token!523))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))) (and b!1718876 b_free!46799 (= (toValue!4836 (transformation!3329 rule!422)) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))) (and b!1718869 b_free!46803 (= (toValue!4836 (transformation!3329 (h!24203 rules!3447))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))) (and b!1719612 b_free!46811 (= (toValue!4836 (transformation!3329 (h!24203 (t!159211 rules!3447)))) (toValue!4836 (transformation!3329 (rule!5271 (_1!10651 lt!657161)))))) b_lambda!54475)))

(declare-fun b_lambda!54477 () Bool)

(assert (= b_lambda!54425 (or (and b!1718854 b_free!46797) (and b!1718876 b_free!46801 (= (toChars!4695 (transformation!3329 rule!422)) (toChars!4695 (transformation!3329 (rule!5271 token!523))))) (and b!1718869 b_free!46805 (= (toChars!4695 (transformation!3329 (h!24203 rules!3447))) (toChars!4695 (transformation!3329 (rule!5271 token!523))))) (and b!1719612 b_free!46813 (= (toChars!4695 (transformation!3329 (h!24203 (t!159211 rules!3447)))) (toChars!4695 (transformation!3329 (rule!5271 token!523))))) b_lambda!54477)))

(declare-fun b_lambda!54479 () Bool)

(assert (= b_lambda!54429 (or (and b!1718854 b_free!46797) (and b!1718876 b_free!46801 (= (toChars!4695 (transformation!3329 rule!422)) (toChars!4695 (transformation!3329 (rule!5271 token!523))))) (and b!1718869 b_free!46805 (= (toChars!4695 (transformation!3329 (h!24203 rules!3447))) (toChars!4695 (transformation!3329 (rule!5271 token!523))))) (and b!1719612 b_free!46813 (= (toChars!4695 (transformation!3329 (h!24203 (t!159211 rules!3447)))) (toChars!4695 (transformation!3329 (rule!5271 token!523))))) b_lambda!54479)))

(check-sat (not b!1719168) (not b!1719099) (not b!1718907) (not d!527155) (not b!1719154) (not b!1719582) (not b!1719595) (not b!1718990) (not b!1719150) (not d!527161) (not b_lambda!54439) (not b!1719073) (not d!527087) (not b!1719550) b_and!125275 (not b_lambda!54431) (not d!527307) (not b!1719169) (not d!527077) (not d!527105) (not b!1718971) (not d!527141) (not b!1719146) (not b!1718898) (not b_next!47499) (not b_next!47515) (not b!1719170) (not b!1719421) (not b!1719155) (not b_lambda!54475) (not b!1719432) (not b!1719266) (not b!1719558) (not b!1719259) (not b!1719577) (not b!1719163) (not b!1719593) (not b!1718985) (not b!1719201) (not d!527099) (not b!1719236) (not b!1719241) (not b!1719424) (not d!527055) (not bm!109685) (not b!1719419) (not b_lambda!54477) (not d!527109) (not b!1719075) (not b!1719074) (not b!1719081) (not b_next!47507) (not b_next!47509) (not b!1719610) (not b!1719148) b_and!125363 (not b!1719159) (not b!1719173) (not b!1718997) (not b!1719108) b_and!125371 (not d!527169) (not d!527073) (not b!1719024) (not d!527189) (not b!1719097) (not b!1719580) (not d!527313) (not d!527177) (not d!527101) (not b!1719077) (not b!1719036) (not d!527301) (not tb!101775) (not b!1719600) (not b!1719234) (not b!1719202) (not d!527305) (not b!1719596) (not b!1718897) (not d!527095) (not d!527211) (not b!1719260) (not b!1719084) (not b!1718980) (not d!527051) (not b!1719564) (not b!1719109) (not b!1719553) (not d!527159) (not b!1719576) (not b!1718977) (not b!1718991) (not d!527133) (not b!1718989) (not b!1719548) (not b!1718976) (not b!1719420) (not d!527135) (not b_lambda!54471) (not d!527209) (not b!1719545) (not b_lambda!54437) (not b!1719165) (not b!1719105) (not b!1719047) (not d!527107) (not b!1719070) b_and!125359 (not b!1719547) (not b!1719599) (not b!1719095) (not b!1719131) (not b!1718905) (not b!1719578) (not bm!109683) (not b!1719611) (not b!1719172) (not d!527113) (not b!1719078) (not b!1719601) (not b!1719171) (not b!1718975) (not bm!109684) (not b!1719050) (not b_lambda!54435) (not b!1719203) (not d!527119) (not d!527097) (not bm!109676) (not b!1719130) (not d!527127) b_and!125279 (not tb!101781) (not d!527163) (not d!527111) (not b!1719110) (not b!1719551) b_and!125361 (not b!1719546) (not b_next!47503) (not b!1719240) (not b!1719267) (not b!1719022) (not bm!109677) (not b!1718906) (not b_lambda!54479) (not b!1719145) (not d!527187) (not d!527191) (not b!1719272) (not d!527117) (not b_lambda!54433) (not d!527129) (not b!1719592) (not b!1719426) (not d!527139) (not b!1718994) b_and!125369 (not d!527165) (not b!1719425) tp_is_empty!7557 (not tb!101805) (not d!527167) (not b!1719090) (not b_lambda!54459) (not b_lambda!54427) (not b!1719156) (not d!527075) (not b!1719598) (not b_next!47517) (not b!1719233) (not b!1719076) (not b!1719051) (not b!1719273) (not b!1718983) (not d!527213) (not b!1719167) (not b!1719072) (not b!1719597) (not b_next!47501) (not b!1719552) (not d!527311) (not b!1719162) (not d!527145) b_and!125277 (not d!527143) (not b!1719239) (not d!527131) (not b_next!47505) (not b_lambda!54473) (not b!1719591) (not b!1719581) (not d!527157))
(check-sat b_and!125275 b_and!125363 b_and!125371 b_and!125359 (not b_next!47503) b_and!125369 (not b_next!47517) (not b_next!47501) b_and!125277 (not b_next!47505) (not b_next!47499) (not b_next!47515) (not b_next!47507) (not b_next!47509) b_and!125279 b_and!125361)
