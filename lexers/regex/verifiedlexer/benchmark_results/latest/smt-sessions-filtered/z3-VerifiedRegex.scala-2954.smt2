; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!174642 () Bool)

(assert start!174642)

(declare-fun b!1763907 () Bool)

(declare-fun b_free!48767 () Bool)

(declare-fun b_next!49471 () Bool)

(assert (=> b!1763907 (= b_free!48767 (not b_next!49471))))

(declare-fun tp!500823 () Bool)

(declare-fun b_and!133383 () Bool)

(assert (=> b!1763907 (= tp!500823 b_and!133383)))

(declare-fun b_free!48769 () Bool)

(declare-fun b_next!49473 () Bool)

(assert (=> b!1763907 (= b_free!48769 (not b_next!49473))))

(declare-fun tp!500819 () Bool)

(declare-fun b_and!133385 () Bool)

(assert (=> b!1763907 (= tp!500819 b_and!133385)))

(declare-fun b!1763900 () Bool)

(declare-fun b_free!48771 () Bool)

(declare-fun b_next!49475 () Bool)

(assert (=> b!1763900 (= b_free!48771 (not b_next!49475))))

(declare-fun tp!500817 () Bool)

(declare-fun b_and!133387 () Bool)

(assert (=> b!1763900 (= tp!500817 b_and!133387)))

(declare-fun b_free!48773 () Bool)

(declare-fun b_next!49477 () Bool)

(assert (=> b!1763900 (= b_free!48773 (not b_next!49477))))

(declare-fun tp!500826 () Bool)

(declare-fun b_and!133389 () Bool)

(assert (=> b!1763900 (= tp!500826 b_and!133389)))

(declare-fun b!1763919 () Bool)

(declare-fun b_free!48775 () Bool)

(declare-fun b_next!49479 () Bool)

(assert (=> b!1763919 (= b_free!48775 (not b_next!49479))))

(declare-fun tp!500824 () Bool)

(declare-fun b_and!133391 () Bool)

(assert (=> b!1763919 (= tp!500824 b_and!133391)))

(declare-fun b_free!48777 () Bool)

(declare-fun b_next!49481 () Bool)

(assert (=> b!1763919 (= b_free!48777 (not b_next!49481))))

(declare-fun tp!500818 () Bool)

(declare-fun b_and!133393 () Bool)

(assert (=> b!1763919 (= tp!500818 b_and!133393)))

(declare-fun b!1763938 () Bool)

(declare-fun e!1128789 () Bool)

(assert (=> b!1763938 (= e!1128789 true)))

(declare-fun b!1763937 () Bool)

(declare-fun e!1128788 () Bool)

(assert (=> b!1763937 (= e!1128788 e!1128789)))

(declare-fun b!1763936 () Bool)

(declare-fun e!1128787 () Bool)

(assert (=> b!1763936 (= e!1128787 e!1128788)))

(declare-fun b!1763908 () Bool)

(assert (=> b!1763908 e!1128787))

(assert (= b!1763937 b!1763938))

(assert (= b!1763936 b!1763937))

(assert (= b!1763908 b!1763936))

(declare-datatypes ((List!19481 0))(
  ( (Nil!19411) (Cons!19411 (h!24812 (_ BitVec 16)) (t!164502 List!19481)) )
))
(declare-datatypes ((TokenValue!3559 0))(
  ( (FloatLiteralValue!7118 (text!25358 List!19481)) (TokenValueExt!3558 (__x!12420 Int)) (Broken!17795 (value!108513 List!19481)) (Object!3628) (End!3559) (Def!3559) (Underscore!3559) (Match!3559) (Else!3559) (Error!3559) (Case!3559) (If!3559) (Extends!3559) (Abstract!3559) (Class!3559) (Val!3559) (DelimiterValue!7118 (del!3619 List!19481)) (KeywordValue!3565 (value!108514 List!19481)) (CommentValue!7118 (value!108515 List!19481)) (WhitespaceValue!7118 (value!108516 List!19481)) (IndentationValue!3559 (value!108517 List!19481)) (String!22126) (Int32!3559) (Broken!17796 (value!108518 List!19481)) (Boolean!3560) (Unit!33598) (OperatorValue!3562 (op!3619 List!19481)) (IdentifierValue!7118 (value!108519 List!19481)) (IdentifierValue!7119 (value!108520 List!19481)) (WhitespaceValue!7119 (value!108521 List!19481)) (True!7118) (False!7118) (Broken!17797 (value!108522 List!19481)) (Broken!17798 (value!108523 List!19481)) (True!7119) (RightBrace!3559) (RightBracket!3559) (Colon!3559) (Null!3559) (Comma!3559) (LeftBracket!3559) (False!7119) (LeftBrace!3559) (ImaginaryLiteralValue!3559 (text!25359 List!19481)) (StringLiteralValue!10677 (value!108524 List!19481)) (EOFValue!3559 (value!108525 List!19481)) (IdentValue!3559 (value!108526 List!19481)) (DelimiterValue!7119 (value!108527 List!19481)) (DedentValue!3559 (value!108528 List!19481)) (NewLineValue!3559 (value!108529 List!19481)) (IntegerValue!10677 (value!108530 (_ BitVec 32)) (text!25360 List!19481)) (IntegerValue!10678 (value!108531 Int) (text!25361 List!19481)) (Times!3559) (Or!3559) (Equal!3559) (Minus!3559) (Broken!17799 (value!108532 List!19481)) (And!3559) (Div!3559) (LessEqual!3559) (Mod!3559) (Concat!8356) (Not!3559) (Plus!3559) (SpaceValue!3559 (value!108533 List!19481)) (IntegerValue!10679 (value!108534 Int) (text!25362 List!19481)) (StringLiteralValue!10678 (text!25363 List!19481)) (FloatLiteralValue!7119 (text!25364 List!19481)) (BytesLiteralValue!3559 (value!108535 List!19481)) (CommentValue!7119 (value!108536 List!19481)) (StringLiteralValue!10679 (value!108537 List!19481)) (ErrorTokenValue!3559 (msg!3620 List!19481)) )
))
(declare-datatypes ((C!9768 0))(
  ( (C!9769 (val!5480 Int)) )
))
(declare-datatypes ((List!19482 0))(
  ( (Nil!19412) (Cons!19412 (h!24813 C!9768) (t!164503 List!19482)) )
))
(declare-datatypes ((Regex!4797 0))(
  ( (ElementMatch!4797 (c!287394 C!9768)) (Concat!8357 (regOne!10106 Regex!4797) (regTwo!10106 Regex!4797)) (EmptyExpr!4797) (Star!4797 (reg!5126 Regex!4797)) (EmptyLang!4797) (Union!4797 (regOne!10107 Regex!4797) (regTwo!10107 Regex!4797)) )
))
(declare-datatypes ((String!22127 0))(
  ( (String!22128 (value!108538 String)) )
))
(declare-datatypes ((IArray!12919 0))(
  ( (IArray!12920 (innerList!6517 List!19482)) )
))
(declare-datatypes ((Conc!6457 0))(
  ( (Node!6457 (left!15541 Conc!6457) (right!15871 Conc!6457) (csize!13144 Int) (cheight!6668 Int)) (Leaf!9412 (xs!9333 IArray!12919) (csize!13145 Int)) (Empty!6457) )
))
(declare-datatypes ((BalanceConc!12858 0))(
  ( (BalanceConc!12859 (c!287395 Conc!6457)) )
))
(declare-datatypes ((TokenValueInjection!6778 0))(
  ( (TokenValueInjection!6779 (toValue!4992 Int) (toChars!4851 Int)) )
))
(declare-datatypes ((Rule!6738 0))(
  ( (Rule!6739 (regex!3469 Regex!4797) (tag!3839 String!22127) (isSeparator!3469 Bool) (transformation!3469 TokenValueInjection!6778)) )
))
(declare-datatypes ((Token!6504 0))(
  ( (Token!6505 (value!108539 TokenValue!3559) (rule!5491 Rule!6738) (size!15421 Int) (originalCharacters!4283 List!19482)) )
))
(declare-datatypes ((tuple2!19022 0))(
  ( (tuple2!19023 (_1!10913 Token!6504) (_2!10913 List!19482)) )
))
(declare-fun lt!681967 () tuple2!19022)

(declare-fun lambda!70242 () Int)

(declare-fun order!12329 () Int)

(declare-fun order!12327 () Int)

(declare-fun dynLambda!9369 (Int Int) Int)

(declare-fun dynLambda!9370 (Int Int) Int)

(assert (=> b!1763938 (< (dynLambda!9369 order!12327 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) (dynLambda!9370 order!12329 lambda!70242))))

(declare-fun order!12331 () Int)

(declare-fun dynLambda!9371 (Int Int) Int)

(assert (=> b!1763938 (< (dynLambda!9371 order!12331 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) (dynLambda!9370 order!12329 lambda!70242))))

(declare-fun b!1763898 () Bool)

(declare-fun res!793932 () Bool)

(declare-fun e!1128778 () Bool)

(assert (=> b!1763898 (=> (not res!793932) (not e!1128778))))

(declare-datatypes ((List!19483 0))(
  ( (Nil!19413) (Cons!19413 (h!24814 Rule!6738) (t!164504 List!19483)) )
))
(declare-fun rules!3447 () List!19483)

(declare-fun rule!422 () Rule!6738)

(declare-fun contains!3499 (List!19483 Rule!6738) Bool)

(assert (=> b!1763898 (= res!793932 (contains!3499 rules!3447 rule!422))))

(declare-fun b!1763899 () Bool)

(declare-fun res!793934 () Bool)

(declare-fun e!1128762 () Bool)

(assert (=> b!1763899 (=> res!793934 e!1128762)))

(declare-fun lt!681975 () BalanceConc!12858)

(declare-fun dynLambda!9372 (Int TokenValue!3559) BalanceConc!12858)

(assert (=> b!1763899 (= res!793934 (not (= lt!681975 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967))))))))

(declare-fun e!1128755 () Bool)

(assert (=> b!1763900 (= e!1128755 (and tp!500817 tp!500826))))

(declare-fun b!1763901 () Bool)

(declare-fun res!793950 () Bool)

(declare-fun e!1128774 () Bool)

(assert (=> b!1763901 (=> res!793950 e!1128774)))

(declare-fun lt!681970 () List!19482)

(declare-fun matchR!2270 (Regex!4797 List!19482) Bool)

(assert (=> b!1763901 (= res!793950 (not (matchR!2270 (regex!3469 (rule!5491 (_1!10913 lt!681967))) lt!681970)))))

(declare-fun b!1763902 () Bool)

(declare-fun e!1128768 () Bool)

(declare-fun e!1128763 () Bool)

(assert (=> b!1763902 (= e!1128768 e!1128763)))

(declare-fun res!793936 () Bool)

(assert (=> b!1763902 (=> res!793936 e!1128763)))

(declare-fun lt!681971 () Int)

(declare-fun lt!681990 () BalanceConc!12858)

(declare-fun size!15422 (BalanceConc!12858) Int)

(assert (=> b!1763902 (= res!793936 (<= lt!681971 (size!15422 lt!681990)))))

(declare-fun lt!681979 () Regex!4797)

(declare-fun lt!681966 () List!19482)

(assert (=> b!1763902 (matchR!2270 lt!681979 lt!681966)))

(declare-datatypes ((LexerInterface!3098 0))(
  ( (LexerInterfaceExt!3095 (__x!12421 Int)) (Lexer!3096) )
))
(declare-fun thiss!24550 () LexerInterface!3098)

(declare-datatypes ((Unit!33599 0))(
  ( (Unit!33600) )
))
(declare-fun lt!681987 () Unit!33599)

(declare-fun token!523 () Token!6504)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!176 (LexerInterface!3098 List!19483 List!19482 Token!6504 Rule!6738 List!19482) Unit!33599)

(assert (=> b!1763902 (= lt!681987 (lemmaMaxPrefixThenMatchesRulesRegex!176 thiss!24550 rules!3447 lt!681966 token!523 rule!422 Nil!19412))))

(declare-fun b!1763903 () Bool)

(declare-fun res!793952 () Bool)

(declare-fun e!1128777 () Bool)

(assert (=> b!1763903 (=> (not res!793952) (not e!1128777))))

(assert (=> b!1763903 (= res!793952 (= (rule!5491 token!523) rule!422))))

(declare-fun res!793946 () Bool)

(assert (=> start!174642 (=> (not res!793946) (not e!1128778))))

(get-info :version)

(assert (=> start!174642 (= res!793946 ((_ is Lexer!3096) thiss!24550))))

(assert (=> start!174642 e!1128778))

(declare-fun e!1128756 () Bool)

(assert (=> start!174642 e!1128756))

(declare-fun e!1128764 () Bool)

(assert (=> start!174642 e!1128764))

(assert (=> start!174642 true))

(declare-fun e!1128770 () Bool)

(declare-fun inv!25214 (Token!6504) Bool)

(assert (=> start!174642 (and (inv!25214 token!523) e!1128770)))

(declare-fun e!1128767 () Bool)

(assert (=> start!174642 e!1128767))

(declare-fun b!1763904 () Bool)

(declare-fun e!1128757 () Bool)

(assert (=> b!1763904 (= e!1128762 e!1128757)))

(declare-fun res!793940 () Bool)

(assert (=> b!1763904 (=> res!793940 e!1128757)))

(declare-fun lt!681980 () TokenValue!3559)

(declare-datatypes ((Option!3960 0))(
  ( (None!3959) (Some!3959 (v!25424 tuple2!19022)) )
))
(declare-fun lt!681991 () Option!3960)

(assert (=> b!1763904 (= res!793940 (not (= lt!681991 (Some!3959 (tuple2!19023 (Token!6505 lt!681980 (rule!5491 (_1!10913 lt!681967)) lt!681971 lt!681970) (_2!10913 lt!681967))))))))

(assert (=> b!1763904 (= lt!681971 (size!15422 lt!681975))))

(declare-fun apply!5269 (TokenValueInjection!6778 BalanceConc!12858) TokenValue!3559)

(assert (=> b!1763904 (= lt!681980 (apply!5269 (transformation!3469 (rule!5491 (_1!10913 lt!681967))) lt!681975))))

(declare-fun lt!681982 () Unit!33599)

(declare-fun lemmaCharactersSize!527 (Token!6504) Unit!33599)

(assert (=> b!1763904 (= lt!681982 (lemmaCharactersSize!527 (_1!10913 lt!681967)))))

(declare-fun lt!681992 () Unit!33599)

(declare-fun lemmaEqSameImage!380 (TokenValueInjection!6778 BalanceConc!12858 BalanceConc!12858) Unit!33599)

(declare-fun seqFromList!2438 (List!19482) BalanceConc!12858)

(assert (=> b!1763904 (= lt!681992 (lemmaEqSameImage!380 (transformation!3469 (rule!5491 (_1!10913 lt!681967))) lt!681975 (seqFromList!2438 (originalCharacters!4283 (_1!10913 lt!681967)))))))

(declare-fun b!1763905 () Bool)

(declare-fun e!1128769 () Bool)

(declare-fun e!1128759 () Bool)

(assert (=> b!1763905 (= e!1128769 e!1128759)))

(declare-fun res!793949 () Bool)

(assert (=> b!1763905 (=> (not res!793949) (not e!1128759))))

(declare-fun lt!681978 () Rule!6738)

(declare-fun list!7879 (BalanceConc!12858) List!19482)

(declare-fun charsOf!2118 (Token!6504) BalanceConc!12858)

(assert (=> b!1763905 (= res!793949 (matchR!2270 (regex!3469 lt!681978) (list!7879 (charsOf!2118 (_1!10913 lt!681967)))))))

(declare-datatypes ((Option!3961 0))(
  ( (None!3960) (Some!3960 (v!25425 Rule!6738)) )
))
(declare-fun lt!681983 () Option!3961)

(declare-fun get!5912 (Option!3961) Rule!6738)

(assert (=> b!1763905 (= lt!681978 (get!5912 lt!681983))))

(declare-fun b!1763906 () Bool)

(declare-fun res!793941 () Bool)

(assert (=> b!1763906 (=> (not res!793941) (not e!1128778))))

(declare-fun isEmpty!12252 (List!19483) Bool)

(assert (=> b!1763906 (= res!793941 (not (isEmpty!12252 rules!3447)))))

(declare-fun e!1128772 () Bool)

(assert (=> b!1763907 (= e!1128772 (and tp!500823 tp!500819))))

(declare-fun e!1128773 () Bool)

(assert (=> b!1763908 (= e!1128774 e!1128773)))

(declare-fun res!793937 () Bool)

(assert (=> b!1763908 (=> res!793937 e!1128773)))

(declare-fun Forall!836 (Int) Bool)

(assert (=> b!1763908 (= res!793937 (not (Forall!836 lambda!70242)))))

(declare-fun lt!681977 () Unit!33599)

(declare-fun lemmaInv!668 (TokenValueInjection!6778) Unit!33599)

(assert (=> b!1763908 (= lt!681977 (lemmaInv!668 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))))

(declare-fun b!1763909 () Bool)

(declare-fun e!1128765 () Bool)

(assert (=> b!1763909 (= e!1128765 e!1128777)))

(declare-fun res!793938 () Bool)

(assert (=> b!1763909 (=> (not res!793938) (not e!1128777))))

(declare-fun lt!681976 () tuple2!19022)

(assert (=> b!1763909 (= res!793938 (= (_1!10913 lt!681976) token!523))))

(declare-fun lt!681973 () Option!3960)

(declare-fun get!5913 (Option!3960) tuple2!19022)

(assert (=> b!1763909 (= lt!681976 (get!5913 lt!681973))))

(declare-fun b!1763910 () Bool)

(declare-fun e!1128775 () Bool)

(assert (=> b!1763910 (= e!1128777 (not e!1128775))))

(declare-fun res!793945 () Bool)

(assert (=> b!1763910 (=> res!793945 e!1128775)))

(assert (=> b!1763910 (= res!793945 (not (matchR!2270 (regex!3469 rule!422) lt!681966)))))

(declare-fun ruleValid!967 (LexerInterface!3098 Rule!6738) Bool)

(assert (=> b!1763910 (ruleValid!967 thiss!24550 rule!422)))

(declare-fun lt!681984 () Unit!33599)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!490 (LexerInterface!3098 Rule!6738 List!19483) Unit!33599)

(assert (=> b!1763910 (= lt!681984 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!490 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1763911 () Bool)

(declare-fun e!1128779 () Bool)

(declare-fun tp!500825 () Bool)

(declare-fun e!1128776 () Bool)

(declare-fun inv!25209 (String!22127) Bool)

(declare-fun inv!25215 (TokenValueInjection!6778) Bool)

(assert (=> b!1763911 (= e!1128779 (and tp!500825 (inv!25209 (tag!3839 (h!24814 rules!3447))) (inv!25215 (transformation!3469 (h!24814 rules!3447))) e!1128776))))

(declare-fun b!1763912 () Bool)

(declare-fun res!793948 () Bool)

(assert (=> b!1763912 (=> (not res!793948) (not e!1128778))))

(declare-fun rulesInvariant!2767 (LexerInterface!3098 List!19483) Bool)

(assert (=> b!1763912 (= res!793948 (rulesInvariant!2767 thiss!24550 rules!3447))))

(declare-fun b!1763913 () Bool)

(assert (=> b!1763913 (= e!1128773 e!1128762)))

(declare-fun res!793935 () Bool)

(assert (=> b!1763913 (=> res!793935 e!1128762)))

(declare-fun dynLambda!9373 (Int BalanceConc!12858) TokenValue!3559)

(assert (=> b!1763913 (= res!793935 (not (= (list!7879 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))) lt!681970)))))

(declare-fun lt!681993 () Unit!33599)

(declare-fun lemmaSemiInverse!607 (TokenValueInjection!6778 BalanceConc!12858) Unit!33599)

(assert (=> b!1763913 (= lt!681993 (lemmaSemiInverse!607 (transformation!3469 (rule!5491 (_1!10913 lt!681967))) lt!681975))))

(declare-fun b!1763914 () Bool)

(declare-fun tp_is_empty!7837 () Bool)

(declare-fun tp!500815 () Bool)

(assert (=> b!1763914 (= e!1128756 (and tp_is_empty!7837 tp!500815))))

(declare-fun b!1763915 () Bool)

(assert (=> b!1763915 (= e!1128778 e!1128765)))

(declare-fun res!793942 () Bool)

(assert (=> b!1763915 (=> (not res!793942) (not e!1128765))))

(declare-fun isDefined!3303 (Option!3960) Bool)

(assert (=> b!1763915 (= res!793942 (isDefined!3303 lt!681973))))

(declare-fun maxPrefix!1652 (LexerInterface!3098 List!19483 List!19482) Option!3960)

(assert (=> b!1763915 (= lt!681973 (maxPrefix!1652 thiss!24550 rules!3447 lt!681966))))

(assert (=> b!1763915 (= lt!681966 (list!7879 lt!681990))))

(assert (=> b!1763915 (= lt!681990 (charsOf!2118 token!523))))

(declare-fun e!1128780 () Bool)

(declare-fun b!1763916 () Bool)

(declare-fun tp!500820 () Bool)

(assert (=> b!1763916 (= e!1128780 (and tp!500820 (inv!25209 (tag!3839 (rule!5491 token!523))) (inv!25215 (transformation!3469 (rule!5491 token!523))) e!1128755))))

(declare-fun b!1763917 () Bool)

(declare-fun e!1128758 () Bool)

(assert (=> b!1763917 (= e!1128775 e!1128758)))

(declare-fun res!793943 () Bool)

(assert (=> b!1763917 (=> res!793943 e!1128758)))

(declare-fun suffix!1421 () List!19482)

(declare-fun prefixMatch!680 (Regex!4797 List!19482) Bool)

(declare-fun ++!5293 (List!19482 List!19482) List!19482)

(declare-fun head!4088 (List!19482) C!9768)

(assert (=> b!1763917 (= res!793943 (prefixMatch!680 lt!681979 (++!5293 lt!681966 (Cons!19412 (head!4088 suffix!1421) Nil!19412))))))

(declare-fun rulesRegex!825 (LexerInterface!3098 List!19483) Regex!4797)

(assert (=> b!1763917 (= lt!681979 (rulesRegex!825 thiss!24550 rules!3447))))

(declare-fun b!1763918 () Bool)

(declare-fun res!793944 () Bool)

(assert (=> b!1763918 (=> (not res!793944) (not e!1128777))))

(declare-fun isEmpty!12253 (List!19482) Bool)

(assert (=> b!1763918 (= res!793944 (isEmpty!12253 (_2!10913 lt!681976)))))

(assert (=> b!1763919 (= e!1128776 (and tp!500824 tp!500818))))

(declare-fun tp!500816 () Bool)

(declare-fun b!1763920 () Bool)

(assert (=> b!1763920 (= e!1128764 (and tp!500816 (inv!25209 (tag!3839 rule!422)) (inv!25215 (transformation!3469 rule!422)) e!1128772))))

(declare-fun b!1763921 () Bool)

(declare-fun res!793951 () Bool)

(assert (=> b!1763921 (=> res!793951 e!1128775)))

(assert (=> b!1763921 (= res!793951 (isEmpty!12253 suffix!1421))))

(declare-fun b!1763922 () Bool)

(assert (=> b!1763922 (= e!1128763 (contains!3499 rules!3447 (rule!5491 (_1!10913 lt!681967))))))

(declare-fun b!1763923 () Bool)

(assert (=> b!1763923 (= e!1128759 (= (rule!5491 (_1!10913 lt!681967)) lt!681978))))

(declare-fun b!1763924 () Bool)

(declare-fun tp!500821 () Bool)

(assert (=> b!1763924 (= e!1128767 (and e!1128779 tp!500821))))

(declare-fun b!1763925 () Bool)

(assert (=> b!1763925 (= e!1128758 e!1128774)))

(declare-fun res!793939 () Bool)

(assert (=> b!1763925 (=> res!793939 e!1128774)))

(declare-fun lt!681989 () List!19482)

(declare-fun isPrefix!1709 (List!19482 List!19482) Bool)

(assert (=> b!1763925 (= res!793939 (not (isPrefix!1709 lt!681970 lt!681989)))))

(assert (=> b!1763925 (isPrefix!1709 lt!681970 (++!5293 lt!681970 (_2!10913 lt!681967)))))

(declare-fun lt!681969 () Unit!33599)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1218 (List!19482 List!19482) Unit!33599)

(assert (=> b!1763925 (= lt!681969 (lemmaConcatTwoListThenFirstIsPrefix!1218 lt!681970 (_2!10913 lt!681967)))))

(assert (=> b!1763925 (= lt!681970 (list!7879 lt!681975))))

(assert (=> b!1763925 (= lt!681975 (charsOf!2118 (_1!10913 lt!681967)))))

(assert (=> b!1763925 e!1128769))

(declare-fun res!793933 () Bool)

(assert (=> b!1763925 (=> (not res!793933) (not e!1128769))))

(declare-fun isDefined!3304 (Option!3961) Bool)

(assert (=> b!1763925 (= res!793933 (isDefined!3304 lt!681983))))

(declare-fun getRuleFromTag!517 (LexerInterface!3098 List!19483 String!22127) Option!3961)

(assert (=> b!1763925 (= lt!681983 (getRuleFromTag!517 thiss!24550 rules!3447 (tag!3839 (rule!5491 (_1!10913 lt!681967)))))))

(declare-fun lt!681981 () Unit!33599)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!517 (LexerInterface!3098 List!19483 List!19482 Token!6504) Unit!33599)

(assert (=> b!1763925 (= lt!681981 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!517 thiss!24550 rules!3447 lt!681989 (_1!10913 lt!681967)))))

(assert (=> b!1763925 (= lt!681967 (get!5913 lt!681991))))

(declare-fun lt!681968 () Unit!33599)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!620 (LexerInterface!3098 List!19483 List!19482 List!19482) Unit!33599)

(assert (=> b!1763925 (= lt!681968 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!620 thiss!24550 rules!3447 lt!681966 suffix!1421))))

(assert (=> b!1763925 (= lt!681991 (maxPrefix!1652 thiss!24550 rules!3447 lt!681989))))

(assert (=> b!1763925 (isPrefix!1709 lt!681966 lt!681989)))

(declare-fun lt!681986 () Unit!33599)

(assert (=> b!1763925 (= lt!681986 (lemmaConcatTwoListThenFirstIsPrefix!1218 lt!681966 suffix!1421))))

(assert (=> b!1763925 (= lt!681989 (++!5293 lt!681966 suffix!1421))))

(declare-fun tp!500822 () Bool)

(declare-fun b!1763926 () Bool)

(declare-fun inv!21 (TokenValue!3559) Bool)

(assert (=> b!1763926 (= e!1128770 (and (inv!21 (value!108539 token!523)) e!1128780 tp!500822))))

(declare-fun b!1763927 () Bool)

(assert (=> b!1763927 (= e!1128757 e!1128768)))

(declare-fun res!793947 () Bool)

(assert (=> b!1763927 (=> res!793947 e!1128768)))

(declare-fun lt!681974 () Option!3960)

(declare-fun lt!681965 () List!19482)

(assert (=> b!1763927 (= res!793947 (or (not (= lt!681965 (_2!10913 lt!681967))) (not (= lt!681974 (Some!3959 (tuple2!19023 (_1!10913 lt!681967) lt!681965))))))))

(assert (=> b!1763927 (= (_2!10913 lt!681967) lt!681965)))

(declare-fun lt!681972 () Unit!33599)

(declare-fun lemmaSamePrefixThenSameSuffix!820 (List!19482 List!19482 List!19482 List!19482 List!19482) Unit!33599)

(assert (=> b!1763927 (= lt!681972 (lemmaSamePrefixThenSameSuffix!820 lt!681970 (_2!10913 lt!681967) lt!681970 lt!681965 lt!681989))))

(declare-fun getSuffix!876 (List!19482 List!19482) List!19482)

(assert (=> b!1763927 (= lt!681965 (getSuffix!876 lt!681989 lt!681970))))

(declare-fun lt!681985 () TokenValue!3559)

(declare-fun lt!681988 () Int)

(assert (=> b!1763927 (= lt!681974 (Some!3959 (tuple2!19023 (Token!6505 lt!681985 (rule!5491 (_1!10913 lt!681967)) lt!681988 lt!681970) (_2!10913 lt!681967))))))

(declare-fun maxPrefixOneRule!1021 (LexerInterface!3098 Rule!6738 List!19482) Option!3960)

(assert (=> b!1763927 (= lt!681974 (maxPrefixOneRule!1021 thiss!24550 (rule!5491 (_1!10913 lt!681967)) lt!681989))))

(declare-fun size!15423 (List!19482) Int)

(assert (=> b!1763927 (= lt!681988 (size!15423 lt!681970))))

(assert (=> b!1763927 (= lt!681985 (apply!5269 (transformation!3469 (rule!5491 (_1!10913 lt!681967))) (seqFromList!2438 lt!681970)))))

(declare-fun lt!681994 () Unit!33599)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!399 (LexerInterface!3098 List!19483 List!19482 List!19482 List!19482 Rule!6738) Unit!33599)

(assert (=> b!1763927 (= lt!681994 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!399 thiss!24550 rules!3447 lt!681970 lt!681989 (_2!10913 lt!681967) (rule!5491 (_1!10913 lt!681967))))))

(assert (= (and start!174642 res!793946) b!1763906))

(assert (= (and b!1763906 res!793941) b!1763912))

(assert (= (and b!1763912 res!793948) b!1763898))

(assert (= (and b!1763898 res!793932) b!1763915))

(assert (= (and b!1763915 res!793942) b!1763909))

(assert (= (and b!1763909 res!793938) b!1763918))

(assert (= (and b!1763918 res!793944) b!1763903))

(assert (= (and b!1763903 res!793952) b!1763910))

(assert (= (and b!1763910 (not res!793945)) b!1763921))

(assert (= (and b!1763921 (not res!793951)) b!1763917))

(assert (= (and b!1763917 (not res!793943)) b!1763925))

(assert (= (and b!1763925 res!793933) b!1763905))

(assert (= (and b!1763905 res!793949) b!1763923))

(assert (= (and b!1763925 (not res!793939)) b!1763901))

(assert (= (and b!1763901 (not res!793950)) b!1763908))

(assert (= (and b!1763908 (not res!793937)) b!1763913))

(assert (= (and b!1763913 (not res!793935)) b!1763899))

(assert (= (and b!1763899 (not res!793934)) b!1763904))

(assert (= (and b!1763904 (not res!793940)) b!1763927))

(assert (= (and b!1763927 (not res!793947)) b!1763902))

(assert (= (and b!1763902 (not res!793936)) b!1763922))

(assert (= (and start!174642 ((_ is Cons!19412) suffix!1421)) b!1763914))

(assert (= b!1763920 b!1763907))

(assert (= start!174642 b!1763920))

(assert (= b!1763916 b!1763900))

(assert (= b!1763926 b!1763916))

(assert (= start!174642 b!1763926))

(assert (= b!1763911 b!1763919))

(assert (= b!1763924 b!1763911))

(assert (= (and start!174642 ((_ is Cons!19413) rules!3447)) b!1763924))

(declare-fun b_lambda!57199 () Bool)

(assert (=> (not b_lambda!57199) (not b!1763899)))

(declare-fun t!164485 () Bool)

(declare-fun tb!106419 () Bool)

(assert (=> (and b!1763907 (= (toChars!4851 (transformation!3469 rule!422)) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164485) tb!106419))

(declare-fun b!1763943 () Bool)

(declare-fun e!1128792 () Bool)

(declare-fun tp!500829 () Bool)

(declare-fun inv!25216 (Conc!6457) Bool)

(assert (=> b!1763943 (= e!1128792 (and (inv!25216 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967))))) tp!500829))))

(declare-fun result!128014 () Bool)

(declare-fun inv!25217 (BalanceConc!12858) Bool)

(assert (=> tb!106419 (= result!128014 (and (inv!25217 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967)))) e!1128792))))

(assert (= tb!106419 b!1763943))

(declare-fun m!2180797 () Bool)

(assert (=> b!1763943 m!2180797))

(declare-fun m!2180799 () Bool)

(assert (=> tb!106419 m!2180799))

(assert (=> b!1763899 t!164485))

(declare-fun b_and!133395 () Bool)

(assert (= b_and!133385 (and (=> t!164485 result!128014) b_and!133395)))

(declare-fun tb!106421 () Bool)

(declare-fun t!164487 () Bool)

(assert (=> (and b!1763900 (= (toChars!4851 (transformation!3469 (rule!5491 token!523))) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164487) tb!106421))

(declare-fun result!128018 () Bool)

(assert (= result!128018 result!128014))

(assert (=> b!1763899 t!164487))

(declare-fun b_and!133397 () Bool)

(assert (= b_and!133389 (and (=> t!164487 result!128018) b_and!133397)))

(declare-fun tb!106423 () Bool)

(declare-fun t!164489 () Bool)

(assert (=> (and b!1763919 (= (toChars!4851 (transformation!3469 (h!24814 rules!3447))) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164489) tb!106423))

(declare-fun result!128020 () Bool)

(assert (= result!128020 result!128014))

(assert (=> b!1763899 t!164489))

(declare-fun b_and!133399 () Bool)

(assert (= b_and!133393 (and (=> t!164489 result!128020) b_and!133399)))

(declare-fun b_lambda!57201 () Bool)

(assert (=> (not b_lambda!57201) (not b!1763913)))

(declare-fun t!164491 () Bool)

(declare-fun tb!106425 () Bool)

(assert (=> (and b!1763907 (= (toChars!4851 (transformation!3469 rule!422)) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164491) tb!106425))

(declare-fun b!1763944 () Bool)

(declare-fun tp!500830 () Bool)

(declare-fun e!1128793 () Bool)

(assert (=> b!1763944 (= e!1128793 (and (inv!25216 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))) tp!500830))))

(declare-fun result!128022 () Bool)

(assert (=> tb!106425 (= result!128022 (and (inv!25217 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))) e!1128793))))

(assert (= tb!106425 b!1763944))

(declare-fun m!2180801 () Bool)

(assert (=> b!1763944 m!2180801))

(declare-fun m!2180803 () Bool)

(assert (=> tb!106425 m!2180803))

(assert (=> b!1763913 t!164491))

(declare-fun b_and!133401 () Bool)

(assert (= b_and!133395 (and (=> t!164491 result!128022) b_and!133401)))

(declare-fun tb!106427 () Bool)

(declare-fun t!164493 () Bool)

(assert (=> (and b!1763900 (= (toChars!4851 (transformation!3469 (rule!5491 token!523))) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164493) tb!106427))

(declare-fun result!128024 () Bool)

(assert (= result!128024 result!128022))

(assert (=> b!1763913 t!164493))

(declare-fun b_and!133403 () Bool)

(assert (= b_and!133397 (and (=> t!164493 result!128024) b_and!133403)))

(declare-fun tb!106429 () Bool)

(declare-fun t!164495 () Bool)

(assert (=> (and b!1763919 (= (toChars!4851 (transformation!3469 (h!24814 rules!3447))) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164495) tb!106429))

(declare-fun result!128026 () Bool)

(assert (= result!128026 result!128022))

(assert (=> b!1763913 t!164495))

(declare-fun b_and!133405 () Bool)

(assert (= b_and!133399 (and (=> t!164495 result!128026) b_and!133405)))

(declare-fun b_lambda!57203 () Bool)

(assert (=> (not b_lambda!57203) (not b!1763913)))

(declare-fun tb!106431 () Bool)

(declare-fun t!164497 () Bool)

(assert (=> (and b!1763907 (= (toValue!4992 (transformation!3469 rule!422)) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164497) tb!106431))

(declare-fun result!128028 () Bool)

(assert (=> tb!106431 (= result!128028 (inv!21 (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))))

(declare-fun m!2180805 () Bool)

(assert (=> tb!106431 m!2180805))

(assert (=> b!1763913 t!164497))

(declare-fun b_and!133407 () Bool)

(assert (= b_and!133383 (and (=> t!164497 result!128028) b_and!133407)))

(declare-fun t!164499 () Bool)

(declare-fun tb!106433 () Bool)

(assert (=> (and b!1763900 (= (toValue!4992 (transformation!3469 (rule!5491 token!523))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164499) tb!106433))

(declare-fun result!128032 () Bool)

(assert (= result!128032 result!128028))

(assert (=> b!1763913 t!164499))

(declare-fun b_and!133409 () Bool)

(assert (= b_and!133387 (and (=> t!164499 result!128032) b_and!133409)))

(declare-fun t!164501 () Bool)

(declare-fun tb!106435 () Bool)

(assert (=> (and b!1763919 (= (toValue!4992 (transformation!3469 (h!24814 rules!3447))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164501) tb!106435))

(declare-fun result!128034 () Bool)

(assert (= result!128034 result!128028))

(assert (=> b!1763913 t!164501))

(declare-fun b_and!133411 () Bool)

(assert (= b_and!133391 (and (=> t!164501 result!128034) b_and!133411)))

(declare-fun m!2180807 () Bool)

(assert (=> b!1763917 m!2180807))

(declare-fun m!2180809 () Bool)

(assert (=> b!1763917 m!2180809))

(assert (=> b!1763917 m!2180809))

(declare-fun m!2180811 () Bool)

(assert (=> b!1763917 m!2180811))

(declare-fun m!2180813 () Bool)

(assert (=> b!1763917 m!2180813))

(declare-fun m!2180815 () Bool)

(assert (=> b!1763927 m!2180815))

(declare-fun m!2180817 () Bool)

(assert (=> b!1763927 m!2180817))

(assert (=> b!1763927 m!2180817))

(declare-fun m!2180819 () Bool)

(assert (=> b!1763927 m!2180819))

(declare-fun m!2180821 () Bool)

(assert (=> b!1763927 m!2180821))

(declare-fun m!2180823 () Bool)

(assert (=> b!1763927 m!2180823))

(declare-fun m!2180825 () Bool)

(assert (=> b!1763927 m!2180825))

(declare-fun m!2180827 () Bool)

(assert (=> b!1763927 m!2180827))

(declare-fun m!2180829 () Bool)

(assert (=> b!1763906 m!2180829))

(declare-fun m!2180831 () Bool)

(assert (=> b!1763926 m!2180831))

(declare-fun m!2180833 () Bool)

(assert (=> b!1763902 m!2180833))

(declare-fun m!2180835 () Bool)

(assert (=> b!1763902 m!2180835))

(declare-fun m!2180837 () Bool)

(assert (=> b!1763902 m!2180837))

(declare-fun m!2180839 () Bool)

(assert (=> b!1763916 m!2180839))

(declare-fun m!2180841 () Bool)

(assert (=> b!1763916 m!2180841))

(declare-fun m!2180843 () Bool)

(assert (=> b!1763901 m!2180843))

(declare-fun m!2180845 () Bool)

(assert (=> b!1763910 m!2180845))

(declare-fun m!2180847 () Bool)

(assert (=> b!1763910 m!2180847))

(declare-fun m!2180849 () Bool)

(assert (=> b!1763910 m!2180849))

(declare-fun m!2180851 () Bool)

(assert (=> b!1763912 m!2180851))

(declare-fun m!2180853 () Bool)

(assert (=> b!1763909 m!2180853))

(declare-fun m!2180855 () Bool)

(assert (=> b!1763908 m!2180855))

(declare-fun m!2180857 () Bool)

(assert (=> b!1763908 m!2180857))

(declare-fun m!2180859 () Bool)

(assert (=> b!1763918 m!2180859))

(declare-fun m!2180861 () Bool)

(assert (=> b!1763920 m!2180861))

(declare-fun m!2180863 () Bool)

(assert (=> b!1763920 m!2180863))

(declare-fun m!2180865 () Bool)

(assert (=> b!1763921 m!2180865))

(declare-fun m!2180867 () Bool)

(assert (=> b!1763911 m!2180867))

(declare-fun m!2180869 () Bool)

(assert (=> b!1763911 m!2180869))

(declare-fun m!2180871 () Bool)

(assert (=> b!1763898 m!2180871))

(declare-fun m!2180873 () Bool)

(assert (=> b!1763899 m!2180873))

(declare-fun m!2180875 () Bool)

(assert (=> start!174642 m!2180875))

(declare-fun m!2180877 () Bool)

(assert (=> b!1763913 m!2180877))

(assert (=> b!1763913 m!2180877))

(declare-fun m!2180879 () Bool)

(assert (=> b!1763913 m!2180879))

(assert (=> b!1763913 m!2180879))

(declare-fun m!2180881 () Bool)

(assert (=> b!1763913 m!2180881))

(declare-fun m!2180883 () Bool)

(assert (=> b!1763913 m!2180883))

(declare-fun m!2180885 () Bool)

(assert (=> b!1763905 m!2180885))

(assert (=> b!1763905 m!2180885))

(declare-fun m!2180887 () Bool)

(assert (=> b!1763905 m!2180887))

(assert (=> b!1763905 m!2180887))

(declare-fun m!2180889 () Bool)

(assert (=> b!1763905 m!2180889))

(declare-fun m!2180891 () Bool)

(assert (=> b!1763905 m!2180891))

(declare-fun m!2180893 () Bool)

(assert (=> b!1763925 m!2180893))

(declare-fun m!2180895 () Bool)

(assert (=> b!1763925 m!2180895))

(declare-fun m!2180897 () Bool)

(assert (=> b!1763925 m!2180897))

(declare-fun m!2180899 () Bool)

(assert (=> b!1763925 m!2180899))

(declare-fun m!2180901 () Bool)

(assert (=> b!1763925 m!2180901))

(declare-fun m!2180903 () Bool)

(assert (=> b!1763925 m!2180903))

(assert (=> b!1763925 m!2180885))

(declare-fun m!2180905 () Bool)

(assert (=> b!1763925 m!2180905))

(declare-fun m!2180907 () Bool)

(assert (=> b!1763925 m!2180907))

(declare-fun m!2180909 () Bool)

(assert (=> b!1763925 m!2180909))

(declare-fun m!2180911 () Bool)

(assert (=> b!1763925 m!2180911))

(declare-fun m!2180913 () Bool)

(assert (=> b!1763925 m!2180913))

(declare-fun m!2180915 () Bool)

(assert (=> b!1763925 m!2180915))

(assert (=> b!1763925 m!2180893))

(declare-fun m!2180917 () Bool)

(assert (=> b!1763925 m!2180917))

(declare-fun m!2180919 () Bool)

(assert (=> b!1763925 m!2180919))

(declare-fun m!2180921 () Bool)

(assert (=> b!1763904 m!2180921))

(declare-fun m!2180923 () Bool)

(assert (=> b!1763904 m!2180923))

(declare-fun m!2180925 () Bool)

(assert (=> b!1763904 m!2180925))

(assert (=> b!1763904 m!2180923))

(declare-fun m!2180927 () Bool)

(assert (=> b!1763904 m!2180927))

(declare-fun m!2180929 () Bool)

(assert (=> b!1763904 m!2180929))

(declare-fun m!2180931 () Bool)

(assert (=> b!1763915 m!2180931))

(declare-fun m!2180933 () Bool)

(assert (=> b!1763915 m!2180933))

(declare-fun m!2180935 () Bool)

(assert (=> b!1763915 m!2180935))

(declare-fun m!2180937 () Bool)

(assert (=> b!1763915 m!2180937))

(declare-fun m!2180939 () Bool)

(assert (=> b!1763922 m!2180939))

(check-sat (not b!1763910) (not b!1763921) (not b!1763912) b_and!133409 (not b_next!49473) (not b!1763943) (not b!1763944) (not b_lambda!57201) (not b_next!49479) (not b!1763925) (not b!1763926) (not b!1763902) b_and!133411 (not tb!106431) (not b!1763913) (not b!1763915) (not start!174642) b_and!133407 (not b!1763922) b_and!133403 (not b!1763917) (not b!1763914) (not b!1763911) (not b_lambda!57203) (not b!1763920) (not b!1763908) (not tb!106419) b_and!133401 (not b!1763909) (not b!1763918) (not b!1763927) (not b_next!49475) b_and!133405 (not b!1763904) (not b!1763901) (not b!1763916) (not b!1763924) tp_is_empty!7837 (not b!1763898) (not b!1763906) (not b_next!49477) (not b!1763905) (not tb!106425) (not b_lambda!57199) (not b_next!49471) (not b_next!49481))
(check-sat (not b_next!49479) b_and!133411 b_and!133407 b_and!133403 b_and!133401 b_and!133409 (not b_next!49477) (not b_next!49473) (not b_next!49475) b_and!133405 (not b_next!49471) (not b_next!49481))
(get-model)

(declare-fun d!539017 () Bool)

(declare-fun choose!10933 (Int) Bool)

(assert (=> d!539017 (= (Forall!836 lambda!70242) (choose!10933 lambda!70242))))

(declare-fun bs!404284 () Bool)

(assert (= bs!404284 d!539017))

(declare-fun m!2181093 () Bool)

(assert (=> bs!404284 m!2181093))

(assert (=> b!1763908 d!539017))

(declare-fun d!539021 () Bool)

(declare-fun e!1128899 () Bool)

(assert (=> d!539021 e!1128899))

(declare-fun res!794039 () Bool)

(assert (=> d!539021 (=> (not res!794039) (not e!1128899))))

(declare-fun semiInverseModEq!1380 (Int Int) Bool)

(assert (=> d!539021 (= res!794039 (semiInverseModEq!1380 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))))))

(declare-fun Unit!33602 () Unit!33599)

(assert (=> d!539021 (= (lemmaInv!668 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) Unit!33602)))

(declare-fun b!1764109 () Bool)

(declare-fun equivClasses!1321 (Int Int) Bool)

(assert (=> b!1764109 (= e!1128899 (equivClasses!1321 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))))))

(assert (= (and d!539021 res!794039) b!1764109))

(declare-fun m!2181095 () Bool)

(assert (=> d!539021 m!2181095))

(declare-fun m!2181097 () Bool)

(assert (=> b!1764109 m!2181097))

(assert (=> b!1763908 d!539021))

(declare-fun d!539023 () Bool)

(assert (=> d!539023 (= (isEmpty!12252 rules!3447) ((_ is Nil!19413) rules!3447))))

(assert (=> b!1763906 d!539023))

(declare-fun b!1764138 () Bool)

(declare-fun res!794060 () Bool)

(declare-fun e!1128914 () Bool)

(assert (=> b!1764138 (=> res!794060 e!1128914)))

(declare-fun tail!2639 (List!19482) List!19482)

(assert (=> b!1764138 (= res!794060 (not (isEmpty!12253 (tail!2639 lt!681966))))))

(declare-fun b!1764139 () Bool)

(declare-fun res!794056 () Bool)

(declare-fun e!1128920 () Bool)

(assert (=> b!1764139 (=> (not res!794056) (not e!1128920))))

(declare-fun call!110823 () Bool)

(assert (=> b!1764139 (= res!794056 (not call!110823))))

(declare-fun b!1764140 () Bool)

(declare-fun res!794062 () Bool)

(declare-fun e!1128915 () Bool)

(assert (=> b!1764140 (=> res!794062 e!1128915)))

(assert (=> b!1764140 (= res!794062 (not ((_ is ElementMatch!4797) (regex!3469 rule!422))))))

(declare-fun e!1128916 () Bool)

(assert (=> b!1764140 (= e!1128916 e!1128915)))

(declare-fun b!1764141 () Bool)

(declare-fun e!1128917 () Bool)

(assert (=> b!1764141 (= e!1128915 e!1128917)))

(declare-fun res!794063 () Bool)

(assert (=> b!1764141 (=> (not res!794063) (not e!1128917))))

(declare-fun lt!682033 () Bool)

(assert (=> b!1764141 (= res!794063 (not lt!682033))))

(declare-fun b!1764142 () Bool)

(assert (=> b!1764142 (= e!1128914 (not (= (head!4088 lt!681966) (c!287394 (regex!3469 rule!422)))))))

(declare-fun b!1764143 () Bool)

(declare-fun res!794057 () Bool)

(assert (=> b!1764143 (=> (not res!794057) (not e!1128920))))

(assert (=> b!1764143 (= res!794057 (isEmpty!12253 (tail!2639 lt!681966)))))

(declare-fun d!539025 () Bool)

(declare-fun e!1128918 () Bool)

(assert (=> d!539025 e!1128918))

(declare-fun c!287438 () Bool)

(assert (=> d!539025 (= c!287438 ((_ is EmptyExpr!4797) (regex!3469 rule!422)))))

(declare-fun e!1128919 () Bool)

(assert (=> d!539025 (= lt!682033 e!1128919)))

(declare-fun c!287437 () Bool)

(assert (=> d!539025 (= c!287437 (isEmpty!12253 lt!681966))))

(declare-fun validRegex!1939 (Regex!4797) Bool)

(assert (=> d!539025 (validRegex!1939 (regex!3469 rule!422))))

(assert (=> d!539025 (= (matchR!2270 (regex!3469 rule!422) lt!681966) lt!682033)))

(declare-fun bm!110818 () Bool)

(assert (=> bm!110818 (= call!110823 (isEmpty!12253 lt!681966))))

(declare-fun b!1764144 () Bool)

(assert (=> b!1764144 (= e!1128918 (= lt!682033 call!110823))))

(declare-fun b!1764145 () Bool)

(declare-fun derivativeStep!1234 (Regex!4797 C!9768) Regex!4797)

(assert (=> b!1764145 (= e!1128919 (matchR!2270 (derivativeStep!1234 (regex!3469 rule!422) (head!4088 lt!681966)) (tail!2639 lt!681966)))))

(declare-fun b!1764146 () Bool)

(assert (=> b!1764146 (= e!1128917 e!1128914)))

(declare-fun res!794059 () Bool)

(assert (=> b!1764146 (=> res!794059 e!1128914)))

(assert (=> b!1764146 (= res!794059 call!110823)))

(declare-fun b!1764147 () Bool)

(declare-fun nullable!1465 (Regex!4797) Bool)

(assert (=> b!1764147 (= e!1128919 (nullable!1465 (regex!3469 rule!422)))))

(declare-fun b!1764148 () Bool)

(declare-fun res!794061 () Bool)

(assert (=> b!1764148 (=> res!794061 e!1128915)))

(assert (=> b!1764148 (= res!794061 e!1128920)))

(declare-fun res!794058 () Bool)

(assert (=> b!1764148 (=> (not res!794058) (not e!1128920))))

(assert (=> b!1764148 (= res!794058 lt!682033)))

(declare-fun b!1764149 () Bool)

(assert (=> b!1764149 (= e!1128916 (not lt!682033))))

(declare-fun b!1764150 () Bool)

(assert (=> b!1764150 (= e!1128920 (= (head!4088 lt!681966) (c!287394 (regex!3469 rule!422))))))

(declare-fun b!1764151 () Bool)

(assert (=> b!1764151 (= e!1128918 e!1128916)))

(declare-fun c!287436 () Bool)

(assert (=> b!1764151 (= c!287436 ((_ is EmptyLang!4797) (regex!3469 rule!422)))))

(assert (= (and d!539025 c!287437) b!1764147))

(assert (= (and d!539025 (not c!287437)) b!1764145))

(assert (= (and d!539025 c!287438) b!1764144))

(assert (= (and d!539025 (not c!287438)) b!1764151))

(assert (= (and b!1764151 c!287436) b!1764149))

(assert (= (and b!1764151 (not c!287436)) b!1764140))

(assert (= (and b!1764140 (not res!794062)) b!1764148))

(assert (= (and b!1764148 res!794058) b!1764139))

(assert (= (and b!1764139 res!794056) b!1764143))

(assert (= (and b!1764143 res!794057) b!1764150))

(assert (= (and b!1764148 (not res!794061)) b!1764141))

(assert (= (and b!1764141 res!794063) b!1764146))

(assert (= (and b!1764146 (not res!794059)) b!1764138))

(assert (= (and b!1764138 (not res!794060)) b!1764142))

(assert (= (or b!1764144 b!1764139 b!1764146) bm!110818))

(declare-fun m!2181099 () Bool)

(assert (=> b!1764142 m!2181099))

(declare-fun m!2181101 () Bool)

(assert (=> bm!110818 m!2181101))

(declare-fun m!2181103 () Bool)

(assert (=> b!1764143 m!2181103))

(assert (=> b!1764143 m!2181103))

(declare-fun m!2181105 () Bool)

(assert (=> b!1764143 m!2181105))

(assert (=> d!539025 m!2181101))

(declare-fun m!2181107 () Bool)

(assert (=> d!539025 m!2181107))

(declare-fun m!2181109 () Bool)

(assert (=> b!1764147 m!2181109))

(assert (=> b!1764150 m!2181099))

(assert (=> b!1764138 m!2181103))

(assert (=> b!1764138 m!2181103))

(assert (=> b!1764138 m!2181105))

(assert (=> b!1764145 m!2181099))

(assert (=> b!1764145 m!2181099))

(declare-fun m!2181111 () Bool)

(assert (=> b!1764145 m!2181111))

(assert (=> b!1764145 m!2181103))

(assert (=> b!1764145 m!2181111))

(assert (=> b!1764145 m!2181103))

(declare-fun m!2181113 () Bool)

(assert (=> b!1764145 m!2181113))

(assert (=> b!1763910 d!539025))

(declare-fun d!539027 () Bool)

(declare-fun res!794068 () Bool)

(declare-fun e!1128923 () Bool)

(assert (=> d!539027 (=> (not res!794068) (not e!1128923))))

(assert (=> d!539027 (= res!794068 (validRegex!1939 (regex!3469 rule!422)))))

(assert (=> d!539027 (= (ruleValid!967 thiss!24550 rule!422) e!1128923)))

(declare-fun b!1764156 () Bool)

(declare-fun res!794069 () Bool)

(assert (=> b!1764156 (=> (not res!794069) (not e!1128923))))

(assert (=> b!1764156 (= res!794069 (not (nullable!1465 (regex!3469 rule!422))))))

(declare-fun b!1764157 () Bool)

(assert (=> b!1764157 (= e!1128923 (not (= (tag!3839 rule!422) (String!22128 ""))))))

(assert (= (and d!539027 res!794068) b!1764156))

(assert (= (and b!1764156 res!794069) b!1764157))

(assert (=> d!539027 m!2181107))

(assert (=> b!1764156 m!2181109))

(assert (=> b!1763910 d!539027))

(declare-fun d!539029 () Bool)

(assert (=> d!539029 (ruleValid!967 thiss!24550 rule!422)))

(declare-fun lt!682036 () Unit!33599)

(declare-fun choose!10934 (LexerInterface!3098 Rule!6738 List!19483) Unit!33599)

(assert (=> d!539029 (= lt!682036 (choose!10934 thiss!24550 rule!422 rules!3447))))

(assert (=> d!539029 (contains!3499 rules!3447 rule!422)))

(assert (=> d!539029 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!490 thiss!24550 rule!422 rules!3447) lt!682036)))

(declare-fun bs!404285 () Bool)

(assert (= bs!404285 d!539029))

(assert (=> bs!404285 m!2180847))

(declare-fun m!2181115 () Bool)

(assert (=> bs!404285 m!2181115))

(assert (=> bs!404285 m!2180871))

(assert (=> b!1763910 d!539029))

(declare-fun d!539031 () Bool)

(declare-fun c!287441 () Bool)

(assert (=> d!539031 (= c!287441 ((_ is Node!6457) (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))))))

(declare-fun e!1128928 () Bool)

(assert (=> d!539031 (= (inv!25216 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))) e!1128928)))

(declare-fun b!1764164 () Bool)

(declare-fun inv!25220 (Conc!6457) Bool)

(assert (=> b!1764164 (= e!1128928 (inv!25220 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))))))

(declare-fun b!1764165 () Bool)

(declare-fun e!1128929 () Bool)

(assert (=> b!1764165 (= e!1128928 e!1128929)))

(declare-fun res!794072 () Bool)

(assert (=> b!1764165 (= res!794072 (not ((_ is Leaf!9412) (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))))))))

(assert (=> b!1764165 (=> res!794072 e!1128929)))

(declare-fun b!1764166 () Bool)

(declare-fun inv!25221 (Conc!6457) Bool)

(assert (=> b!1764166 (= e!1128929 (inv!25221 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))))))

(assert (= (and d!539031 c!287441) b!1764164))

(assert (= (and d!539031 (not c!287441)) b!1764165))

(assert (= (and b!1764165 (not res!794072)) b!1764166))

(declare-fun m!2181117 () Bool)

(assert (=> b!1764164 m!2181117))

(declare-fun m!2181119 () Bool)

(assert (=> b!1764166 m!2181119))

(assert (=> b!1763944 d!539031))

(declare-fun d!539033 () Bool)

(assert (=> d!539033 (= (inv!25209 (tag!3839 (h!24814 rules!3447))) (= (mod (str.len (value!108538 (tag!3839 (h!24814 rules!3447)))) 2) 0))))

(assert (=> b!1763911 d!539033))

(declare-fun d!539035 () Bool)

(declare-fun res!794075 () Bool)

(declare-fun e!1128932 () Bool)

(assert (=> d!539035 (=> (not res!794075) (not e!1128932))))

(assert (=> d!539035 (= res!794075 (semiInverseModEq!1380 (toChars!4851 (transformation!3469 (h!24814 rules!3447))) (toValue!4992 (transformation!3469 (h!24814 rules!3447)))))))

(assert (=> d!539035 (= (inv!25215 (transformation!3469 (h!24814 rules!3447))) e!1128932)))

(declare-fun b!1764169 () Bool)

(assert (=> b!1764169 (= e!1128932 (equivClasses!1321 (toChars!4851 (transformation!3469 (h!24814 rules!3447))) (toValue!4992 (transformation!3469 (h!24814 rules!3447)))))))

(assert (= (and d!539035 res!794075) b!1764169))

(declare-fun m!2181121 () Bool)

(assert (=> d!539035 m!2181121))

(declare-fun m!2181123 () Bool)

(assert (=> b!1764169 m!2181123))

(assert (=> b!1763911 d!539035))

(declare-fun d!539037 () Bool)

(assert (=> d!539037 (= (get!5913 lt!681973) (v!25424 lt!681973))))

(assert (=> b!1763909 d!539037))

(declare-fun d!539039 () Bool)

(declare-fun list!7882 (Conc!6457) List!19482)

(assert (=> d!539039 (= (list!7879 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))) (list!7882 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))))))

(declare-fun bs!404286 () Bool)

(assert (= bs!404286 d!539039))

(declare-fun m!2181125 () Bool)

(assert (=> bs!404286 m!2181125))

(assert (=> b!1763913 d!539039))

(declare-fun bs!404287 () Bool)

(declare-fun d!539041 () Bool)

(assert (= bs!404287 (and d!539041 b!1763908)))

(declare-fun lambda!70251 () Int)

(assert (=> bs!404287 (= lambda!70251 lambda!70242)))

(declare-fun b!1764174 () Bool)

(declare-fun e!1128935 () Bool)

(assert (=> b!1764174 (= e!1128935 true)))

(assert (=> d!539041 e!1128935))

(assert (= d!539041 b!1764174))

(assert (=> b!1764174 (< (dynLambda!9369 order!12327 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) (dynLambda!9370 order!12329 lambda!70251))))

(assert (=> b!1764174 (< (dynLambda!9371 order!12331 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) (dynLambda!9370 order!12329 lambda!70251))))

(assert (=> d!539041 (= (list!7879 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))) (list!7879 lt!681975))))

(declare-fun lt!682039 () Unit!33599)

(declare-fun ForallOf!318 (Int BalanceConc!12858) Unit!33599)

(assert (=> d!539041 (= lt!682039 (ForallOf!318 lambda!70251 lt!681975))))

(assert (=> d!539041 (= (lemmaSemiInverse!607 (transformation!3469 (rule!5491 (_1!10913 lt!681967))) lt!681975) lt!682039)))

(declare-fun b_lambda!57217 () Bool)

(assert (=> (not b_lambda!57217) (not d!539041)))

(assert (=> d!539041 t!164491))

(declare-fun b_and!133449 () Bool)

(assert (= b_and!133401 (and (=> t!164491 result!128022) b_and!133449)))

(assert (=> d!539041 t!164493))

(declare-fun b_and!133451 () Bool)

(assert (= b_and!133403 (and (=> t!164493 result!128024) b_and!133451)))

(assert (=> d!539041 t!164495))

(declare-fun b_and!133453 () Bool)

(assert (= b_and!133405 (and (=> t!164495 result!128026) b_and!133453)))

(declare-fun b_lambda!57219 () Bool)

(assert (=> (not b_lambda!57219) (not d!539041)))

(assert (=> d!539041 t!164497))

(declare-fun b_and!133455 () Bool)

(assert (= b_and!133407 (and (=> t!164497 result!128028) b_and!133455)))

(assert (=> d!539041 t!164499))

(declare-fun b_and!133457 () Bool)

(assert (= b_and!133409 (and (=> t!164499 result!128032) b_and!133457)))

(assert (=> d!539041 t!164501))

(declare-fun b_and!133459 () Bool)

(assert (= b_and!133411 (and (=> t!164501 result!128034) b_and!133459)))

(assert (=> d!539041 m!2180877))

(assert (=> d!539041 m!2180879))

(assert (=> d!539041 m!2180877))

(declare-fun m!2181127 () Bool)

(assert (=> d!539041 m!2181127))

(assert (=> d!539041 m!2180879))

(assert (=> d!539041 m!2180881))

(assert (=> d!539041 m!2180915))

(assert (=> b!1763913 d!539041))

(declare-fun d!539043 () Bool)

(declare-fun res!794078 () Bool)

(declare-fun e!1128938 () Bool)

(assert (=> d!539043 (=> (not res!794078) (not e!1128938))))

(declare-fun rulesValid!1306 (LexerInterface!3098 List!19483) Bool)

(assert (=> d!539043 (= res!794078 (rulesValid!1306 thiss!24550 rules!3447))))

(assert (=> d!539043 (= (rulesInvariant!2767 thiss!24550 rules!3447) e!1128938)))

(declare-fun b!1764177 () Bool)

(declare-datatypes ((List!19486 0))(
  ( (Nil!19416) (Cons!19416 (h!24817 String!22127) (t!164567 List!19486)) )
))
(declare-fun noDuplicateTag!1306 (LexerInterface!3098 List!19483 List!19486) Bool)

(assert (=> b!1764177 (= e!1128938 (noDuplicateTag!1306 thiss!24550 rules!3447 Nil!19416))))

(assert (= (and d!539043 res!794078) b!1764177))

(declare-fun m!2181129 () Bool)

(assert (=> d!539043 m!2181129))

(declare-fun m!2181131 () Bool)

(assert (=> b!1764177 m!2181131))

(assert (=> b!1763912 d!539043))

(declare-fun d!539045 () Bool)

(assert (=> d!539045 (= (inv!25209 (tag!3839 (rule!5491 token!523))) (= (mod (str.len (value!108538 (tag!3839 (rule!5491 token!523)))) 2) 0))))

(assert (=> b!1763916 d!539045))

(declare-fun d!539047 () Bool)

(declare-fun res!794079 () Bool)

(declare-fun e!1128939 () Bool)

(assert (=> d!539047 (=> (not res!794079) (not e!1128939))))

(assert (=> d!539047 (= res!794079 (semiInverseModEq!1380 (toChars!4851 (transformation!3469 (rule!5491 token!523))) (toValue!4992 (transformation!3469 (rule!5491 token!523)))))))

(assert (=> d!539047 (= (inv!25215 (transformation!3469 (rule!5491 token!523))) e!1128939)))

(declare-fun b!1764178 () Bool)

(assert (=> b!1764178 (= e!1128939 (equivClasses!1321 (toChars!4851 (transformation!3469 (rule!5491 token!523))) (toValue!4992 (transformation!3469 (rule!5491 token!523)))))))

(assert (= (and d!539047 res!794079) b!1764178))

(declare-fun m!2181133 () Bool)

(assert (=> d!539047 m!2181133))

(declare-fun m!2181135 () Bool)

(assert (=> b!1764178 m!2181135))

(assert (=> b!1763916 d!539047))

(declare-fun d!539049 () Bool)

(declare-fun isEmpty!12256 (Option!3960) Bool)

(assert (=> d!539049 (= (isDefined!3303 lt!681973) (not (isEmpty!12256 lt!681973)))))

(declare-fun bs!404288 () Bool)

(assert (= bs!404288 d!539049))

(declare-fun m!2181137 () Bool)

(assert (=> bs!404288 m!2181137))

(assert (=> b!1763915 d!539049))

(declare-fun b!1764213 () Bool)

(declare-fun e!1128955 () Option!3960)

(declare-fun lt!682108 () Option!3960)

(declare-fun lt!682109 () Option!3960)

(assert (=> b!1764213 (= e!1128955 (ite (and ((_ is None!3959) lt!682108) ((_ is None!3959) lt!682109)) None!3959 (ite ((_ is None!3959) lt!682109) lt!682108 (ite ((_ is None!3959) lt!682108) lt!682109 (ite (>= (size!15421 (_1!10913 (v!25424 lt!682108))) (size!15421 (_1!10913 (v!25424 lt!682109)))) lt!682108 lt!682109)))))))

(declare-fun call!110826 () Option!3960)

(assert (=> b!1764213 (= lt!682108 call!110826)))

(assert (=> b!1764213 (= lt!682109 (maxPrefix!1652 thiss!24550 (t!164504 rules!3447) lt!681966))))

(declare-fun b!1764214 () Bool)

(declare-fun res!794110 () Bool)

(declare-fun e!1128957 () Bool)

(assert (=> b!1764214 (=> (not res!794110) (not e!1128957))))

(declare-fun lt!682107 () Option!3960)

(assert (=> b!1764214 (= res!794110 (matchR!2270 (regex!3469 (rule!5491 (_1!10913 (get!5913 lt!682107)))) (list!7879 (charsOf!2118 (_1!10913 (get!5913 lt!682107))))))))

(declare-fun b!1764215 () Bool)

(declare-fun res!794109 () Bool)

(assert (=> b!1764215 (=> (not res!794109) (not e!1128957))))

(assert (=> b!1764215 (= res!794109 (= (++!5293 (list!7879 (charsOf!2118 (_1!10913 (get!5913 lt!682107)))) (_2!10913 (get!5913 lt!682107))) lt!681966))))

(declare-fun b!1764216 () Bool)

(declare-fun res!794104 () Bool)

(assert (=> b!1764216 (=> (not res!794104) (not e!1128957))))

(assert (=> b!1764216 (= res!794104 (= (value!108539 (_1!10913 (get!5913 lt!682107))) (apply!5269 (transformation!3469 (rule!5491 (_1!10913 (get!5913 lt!682107)))) (seqFromList!2438 (originalCharacters!4283 (_1!10913 (get!5913 lt!682107)))))))))

(declare-fun b!1764218 () Bool)

(assert (=> b!1764218 (= e!1128957 (contains!3499 rules!3447 (rule!5491 (_1!10913 (get!5913 lt!682107)))))))

(declare-fun bm!110821 () Bool)

(assert (=> bm!110821 (= call!110826 (maxPrefixOneRule!1021 thiss!24550 (h!24814 rules!3447) lt!681966))))

(declare-fun b!1764219 () Bool)

(declare-fun res!794105 () Bool)

(assert (=> b!1764219 (=> (not res!794105) (not e!1128957))))

(assert (=> b!1764219 (= res!794105 (< (size!15423 (_2!10913 (get!5913 lt!682107))) (size!15423 lt!681966)))))

(declare-fun b!1764220 () Bool)

(declare-fun e!1128956 () Bool)

(assert (=> b!1764220 (= e!1128956 e!1128957)))

(declare-fun res!794108 () Bool)

(assert (=> b!1764220 (=> (not res!794108) (not e!1128957))))

(assert (=> b!1764220 (= res!794108 (isDefined!3303 lt!682107))))

(declare-fun b!1764221 () Bool)

(assert (=> b!1764221 (= e!1128955 call!110826)))

(declare-fun b!1764217 () Bool)

(declare-fun res!794107 () Bool)

(assert (=> b!1764217 (=> (not res!794107) (not e!1128957))))

(assert (=> b!1764217 (= res!794107 (= (list!7879 (charsOf!2118 (_1!10913 (get!5913 lt!682107)))) (originalCharacters!4283 (_1!10913 (get!5913 lt!682107)))))))

(declare-fun d!539051 () Bool)

(assert (=> d!539051 e!1128956))

(declare-fun res!794106 () Bool)

(assert (=> d!539051 (=> res!794106 e!1128956)))

(assert (=> d!539051 (= res!794106 (isEmpty!12256 lt!682107))))

(assert (=> d!539051 (= lt!682107 e!1128955)))

(declare-fun c!287448 () Bool)

(assert (=> d!539051 (= c!287448 (and ((_ is Cons!19413) rules!3447) ((_ is Nil!19413) (t!164504 rules!3447))))))

(declare-fun lt!682106 () Unit!33599)

(declare-fun lt!682105 () Unit!33599)

(assert (=> d!539051 (= lt!682106 lt!682105)))

(assert (=> d!539051 (isPrefix!1709 lt!681966 lt!681966)))

(declare-fun lemmaIsPrefixRefl!1131 (List!19482 List!19482) Unit!33599)

(assert (=> d!539051 (= lt!682105 (lemmaIsPrefixRefl!1131 lt!681966 lt!681966))))

(declare-fun rulesValidInductive!1169 (LexerInterface!3098 List!19483) Bool)

(assert (=> d!539051 (rulesValidInductive!1169 thiss!24550 rules!3447)))

(assert (=> d!539051 (= (maxPrefix!1652 thiss!24550 rules!3447 lt!681966) lt!682107)))

(assert (= (and d!539051 c!287448) b!1764221))

(assert (= (and d!539051 (not c!287448)) b!1764213))

(assert (= (or b!1764221 b!1764213) bm!110821))

(assert (= (and d!539051 (not res!794106)) b!1764220))

(assert (= (and b!1764220 res!794108) b!1764217))

(assert (= (and b!1764217 res!794107) b!1764219))

(assert (= (and b!1764219 res!794105) b!1764215))

(assert (= (and b!1764215 res!794109) b!1764216))

(assert (= (and b!1764216 res!794104) b!1764214))

(assert (= (and b!1764214 res!794110) b!1764218))

(declare-fun m!2181195 () Bool)

(assert (=> b!1764213 m!2181195))

(declare-fun m!2181197 () Bool)

(assert (=> b!1764217 m!2181197))

(declare-fun m!2181199 () Bool)

(assert (=> b!1764217 m!2181199))

(assert (=> b!1764217 m!2181199))

(declare-fun m!2181201 () Bool)

(assert (=> b!1764217 m!2181201))

(assert (=> b!1764216 m!2181197))

(declare-fun m!2181203 () Bool)

(assert (=> b!1764216 m!2181203))

(assert (=> b!1764216 m!2181203))

(declare-fun m!2181205 () Bool)

(assert (=> b!1764216 m!2181205))

(assert (=> b!1764214 m!2181197))

(assert (=> b!1764214 m!2181199))

(assert (=> b!1764214 m!2181199))

(assert (=> b!1764214 m!2181201))

(assert (=> b!1764214 m!2181201))

(declare-fun m!2181207 () Bool)

(assert (=> b!1764214 m!2181207))

(declare-fun m!2181209 () Bool)

(assert (=> bm!110821 m!2181209))

(assert (=> b!1764215 m!2181197))

(assert (=> b!1764215 m!2181199))

(assert (=> b!1764215 m!2181199))

(assert (=> b!1764215 m!2181201))

(assert (=> b!1764215 m!2181201))

(declare-fun m!2181211 () Bool)

(assert (=> b!1764215 m!2181211))

(declare-fun m!2181213 () Bool)

(assert (=> d!539051 m!2181213))

(declare-fun m!2181215 () Bool)

(assert (=> d!539051 m!2181215))

(declare-fun m!2181217 () Bool)

(assert (=> d!539051 m!2181217))

(declare-fun m!2181219 () Bool)

(assert (=> d!539051 m!2181219))

(assert (=> b!1764219 m!2181197))

(declare-fun m!2181221 () Bool)

(assert (=> b!1764219 m!2181221))

(declare-fun m!2181223 () Bool)

(assert (=> b!1764219 m!2181223))

(declare-fun m!2181225 () Bool)

(assert (=> b!1764220 m!2181225))

(assert (=> b!1764218 m!2181197))

(declare-fun m!2181227 () Bool)

(assert (=> b!1764218 m!2181227))

(assert (=> b!1763915 d!539051))

(declare-fun d!539059 () Bool)

(assert (=> d!539059 (= (list!7879 lt!681990) (list!7882 (c!287395 lt!681990)))))

(declare-fun bs!404290 () Bool)

(assert (= bs!404290 d!539059))

(declare-fun m!2181229 () Bool)

(assert (=> bs!404290 m!2181229))

(assert (=> b!1763915 d!539059))

(declare-fun d!539061 () Bool)

(declare-fun lt!682112 () BalanceConc!12858)

(assert (=> d!539061 (= (list!7879 lt!682112) (originalCharacters!4283 token!523))))

(assert (=> d!539061 (= lt!682112 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 token!523))) (value!108539 token!523)))))

(assert (=> d!539061 (= (charsOf!2118 token!523) lt!682112)))

(declare-fun b_lambda!57221 () Bool)

(assert (=> (not b_lambda!57221) (not d!539061)))

(declare-fun t!164512 () Bool)

(declare-fun tb!106443 () Bool)

(assert (=> (and b!1763907 (= (toChars!4851 (transformation!3469 rule!422)) (toChars!4851 (transformation!3469 (rule!5491 token!523)))) t!164512) tb!106443))

(declare-fun b!1764222 () Bool)

(declare-fun e!1128958 () Bool)

(declare-fun tp!500831 () Bool)

(assert (=> b!1764222 (= e!1128958 (and (inv!25216 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 token!523))) (value!108539 token!523)))) tp!500831))))

(declare-fun result!128042 () Bool)

(assert (=> tb!106443 (= result!128042 (and (inv!25217 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 token!523))) (value!108539 token!523))) e!1128958))))

(assert (= tb!106443 b!1764222))

(declare-fun m!2181231 () Bool)

(assert (=> b!1764222 m!2181231))

(declare-fun m!2181233 () Bool)

(assert (=> tb!106443 m!2181233))

(assert (=> d!539061 t!164512))

(declare-fun b_and!133461 () Bool)

(assert (= b_and!133449 (and (=> t!164512 result!128042) b_and!133461)))

(declare-fun t!164514 () Bool)

(declare-fun tb!106445 () Bool)

(assert (=> (and b!1763900 (= (toChars!4851 (transformation!3469 (rule!5491 token!523))) (toChars!4851 (transformation!3469 (rule!5491 token!523)))) t!164514) tb!106445))

(declare-fun result!128044 () Bool)

(assert (= result!128044 result!128042))

(assert (=> d!539061 t!164514))

(declare-fun b_and!133463 () Bool)

(assert (= b_and!133451 (and (=> t!164514 result!128044) b_and!133463)))

(declare-fun tb!106447 () Bool)

(declare-fun t!164516 () Bool)

(assert (=> (and b!1763919 (= (toChars!4851 (transformation!3469 (h!24814 rules!3447))) (toChars!4851 (transformation!3469 (rule!5491 token!523)))) t!164516) tb!106447))

(declare-fun result!128046 () Bool)

(assert (= result!128046 result!128042))

(assert (=> d!539061 t!164516))

(declare-fun b_and!133465 () Bool)

(assert (= b_and!133453 (and (=> t!164516 result!128046) b_and!133465)))

(declare-fun m!2181235 () Bool)

(assert (=> d!539061 m!2181235))

(declare-fun m!2181237 () Bool)

(assert (=> d!539061 m!2181237))

(assert (=> b!1763915 d!539061))

(declare-fun d!539063 () Bool)

(assert (=> d!539063 (= (isEmpty!12253 (_2!10913 lt!681976)) ((_ is Nil!19412) (_2!10913 lt!681976)))))

(assert (=> b!1763918 d!539063))

(declare-fun d!539065 () Bool)

(declare-fun c!287451 () Bool)

(assert (=> d!539065 (= c!287451 (isEmpty!12253 (++!5293 lt!681966 (Cons!19412 (head!4088 suffix!1421) Nil!19412))))))

(declare-fun e!1128961 () Bool)

(assert (=> d!539065 (= (prefixMatch!680 lt!681979 (++!5293 lt!681966 (Cons!19412 (head!4088 suffix!1421) Nil!19412))) e!1128961)))

(declare-fun b!1764227 () Bool)

(declare-fun lostCause!575 (Regex!4797) Bool)

(assert (=> b!1764227 (= e!1128961 (not (lostCause!575 lt!681979)))))

(declare-fun b!1764228 () Bool)

(assert (=> b!1764228 (= e!1128961 (prefixMatch!680 (derivativeStep!1234 lt!681979 (head!4088 (++!5293 lt!681966 (Cons!19412 (head!4088 suffix!1421) Nil!19412)))) (tail!2639 (++!5293 lt!681966 (Cons!19412 (head!4088 suffix!1421) Nil!19412)))))))

(assert (= (and d!539065 c!287451) b!1764227))

(assert (= (and d!539065 (not c!287451)) b!1764228))

(assert (=> d!539065 m!2180809))

(declare-fun m!2181239 () Bool)

(assert (=> d!539065 m!2181239))

(declare-fun m!2181241 () Bool)

(assert (=> b!1764227 m!2181241))

(assert (=> b!1764228 m!2180809))

(declare-fun m!2181243 () Bool)

(assert (=> b!1764228 m!2181243))

(assert (=> b!1764228 m!2181243))

(declare-fun m!2181245 () Bool)

(assert (=> b!1764228 m!2181245))

(assert (=> b!1764228 m!2180809))

(declare-fun m!2181247 () Bool)

(assert (=> b!1764228 m!2181247))

(assert (=> b!1764228 m!2181245))

(assert (=> b!1764228 m!2181247))

(declare-fun m!2181249 () Bool)

(assert (=> b!1764228 m!2181249))

(assert (=> b!1763917 d!539065))

(declare-fun b!1764239 () Bool)

(declare-fun res!794116 () Bool)

(declare-fun e!1128967 () Bool)

(assert (=> b!1764239 (=> (not res!794116) (not e!1128967))))

(declare-fun lt!682115 () List!19482)

(assert (=> b!1764239 (= res!794116 (= (size!15423 lt!682115) (+ (size!15423 lt!681966) (size!15423 (Cons!19412 (head!4088 suffix!1421) Nil!19412)))))))

(declare-fun b!1764240 () Bool)

(assert (=> b!1764240 (= e!1128967 (or (not (= (Cons!19412 (head!4088 suffix!1421) Nil!19412) Nil!19412)) (= lt!682115 lt!681966)))))

(declare-fun b!1764238 () Bool)

(declare-fun e!1128966 () List!19482)

(assert (=> b!1764238 (= e!1128966 (Cons!19412 (h!24813 lt!681966) (++!5293 (t!164503 lt!681966) (Cons!19412 (head!4088 suffix!1421) Nil!19412))))))

(declare-fun b!1764237 () Bool)

(assert (=> b!1764237 (= e!1128966 (Cons!19412 (head!4088 suffix!1421) Nil!19412))))

(declare-fun d!539067 () Bool)

(assert (=> d!539067 e!1128967))

(declare-fun res!794115 () Bool)

(assert (=> d!539067 (=> (not res!794115) (not e!1128967))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2807 (List!19482) (InoxSet C!9768))

(assert (=> d!539067 (= res!794115 (= (content!2807 lt!682115) ((_ map or) (content!2807 lt!681966) (content!2807 (Cons!19412 (head!4088 suffix!1421) Nil!19412)))))))

(assert (=> d!539067 (= lt!682115 e!1128966)))

(declare-fun c!287454 () Bool)

(assert (=> d!539067 (= c!287454 ((_ is Nil!19412) lt!681966))))

(assert (=> d!539067 (= (++!5293 lt!681966 (Cons!19412 (head!4088 suffix!1421) Nil!19412)) lt!682115)))

(assert (= (and d!539067 c!287454) b!1764237))

(assert (= (and d!539067 (not c!287454)) b!1764238))

(assert (= (and d!539067 res!794115) b!1764239))

(assert (= (and b!1764239 res!794116) b!1764240))

(declare-fun m!2181251 () Bool)

(assert (=> b!1764239 m!2181251))

(assert (=> b!1764239 m!2181223))

(declare-fun m!2181253 () Bool)

(assert (=> b!1764239 m!2181253))

(declare-fun m!2181255 () Bool)

(assert (=> b!1764238 m!2181255))

(declare-fun m!2181257 () Bool)

(assert (=> d!539067 m!2181257))

(declare-fun m!2181259 () Bool)

(assert (=> d!539067 m!2181259))

(declare-fun m!2181261 () Bool)

(assert (=> d!539067 m!2181261))

(assert (=> b!1763917 d!539067))

(declare-fun d!539069 () Bool)

(assert (=> d!539069 (= (head!4088 suffix!1421) (h!24813 suffix!1421))))

(assert (=> b!1763917 d!539069))

(declare-fun d!539071 () Bool)

(declare-fun lt!682128 () Unit!33599)

(declare-fun lemma!388 (List!19483 LexerInterface!3098 List!19483) Unit!33599)

(assert (=> d!539071 (= lt!682128 (lemma!388 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70254 () Int)

(declare-datatypes ((List!19487 0))(
  ( (Nil!19417) (Cons!19417 (h!24818 Regex!4797) (t!164568 List!19487)) )
))
(declare-fun generalisedUnion!396 (List!19487) Regex!4797)

(declare-fun map!4002 (List!19483 Int) List!19487)

(assert (=> d!539071 (= (rulesRegex!825 thiss!24550 rules!3447) (generalisedUnion!396 (map!4002 rules!3447 lambda!70254)))))

(declare-fun bs!404291 () Bool)

(assert (= bs!404291 d!539071))

(declare-fun m!2181263 () Bool)

(assert (=> bs!404291 m!2181263))

(declare-fun m!2181265 () Bool)

(assert (=> bs!404291 m!2181265))

(assert (=> bs!404291 m!2181265))

(declare-fun m!2181267 () Bool)

(assert (=> bs!404291 m!2181267))

(assert (=> b!1763917 d!539071))

(declare-fun d!539073 () Bool)

(declare-fun c!287461 () Bool)

(assert (=> d!539073 (= c!287461 ((_ is IntegerValue!10677) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))))

(declare-fun e!1128982 () Bool)

(assert (=> d!539073 (= (inv!21 (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)) e!1128982)))

(declare-fun b!1764269 () Bool)

(declare-fun inv!16 (TokenValue!3559) Bool)

(assert (=> b!1764269 (= e!1128982 (inv!16 (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))))

(declare-fun b!1764270 () Bool)

(declare-fun e!1128981 () Bool)

(declare-fun inv!17 (TokenValue!3559) Bool)

(assert (=> b!1764270 (= e!1128981 (inv!17 (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))))

(declare-fun b!1764271 () Bool)

(declare-fun res!794133 () Bool)

(declare-fun e!1128980 () Bool)

(assert (=> b!1764271 (=> res!794133 e!1128980)))

(assert (=> b!1764271 (= res!794133 (not ((_ is IntegerValue!10679) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))))))

(assert (=> b!1764271 (= e!1128981 e!1128980)))

(declare-fun b!1764272 () Bool)

(assert (=> b!1764272 (= e!1128982 e!1128981)))

(declare-fun c!287462 () Bool)

(assert (=> b!1764272 (= c!287462 ((_ is IntegerValue!10678) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))))

(declare-fun b!1764273 () Bool)

(declare-fun inv!15 (TokenValue!3559) Bool)

(assert (=> b!1764273 (= e!1128980 (inv!15 (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))))

(assert (= (and d!539073 c!287461) b!1764269))

(assert (= (and d!539073 (not c!287461)) b!1764272))

(assert (= (and b!1764272 c!287462) b!1764270))

(assert (= (and b!1764272 (not c!287462)) b!1764271))

(assert (= (and b!1764271 (not res!794133)) b!1764273))

(declare-fun m!2181269 () Bool)

(assert (=> b!1764269 m!2181269))

(declare-fun m!2181271 () Bool)

(assert (=> b!1764270 m!2181271))

(declare-fun m!2181273 () Bool)

(assert (=> b!1764273 m!2181273))

(assert (=> tb!106431 d!539073))

(declare-fun d!539075 () Bool)

(assert (=> d!539075 (= (isEmpty!12253 suffix!1421) ((_ is Nil!19412) suffix!1421))))

(assert (=> b!1763921 d!539075))

(declare-fun d!539077 () Bool)

(declare-fun res!794145 () Bool)

(declare-fun e!1128988 () Bool)

(assert (=> d!539077 (=> (not res!794145) (not e!1128988))))

(assert (=> d!539077 (= res!794145 (not (isEmpty!12253 (originalCharacters!4283 token!523))))))

(assert (=> d!539077 (= (inv!25214 token!523) e!1128988)))

(declare-fun b!1764287 () Bool)

(declare-fun res!794146 () Bool)

(assert (=> b!1764287 (=> (not res!794146) (not e!1128988))))

(assert (=> b!1764287 (= res!794146 (= (originalCharacters!4283 token!523) (list!7879 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 token!523))) (value!108539 token!523)))))))

(declare-fun b!1764288 () Bool)

(assert (=> b!1764288 (= e!1128988 (= (size!15421 token!523) (size!15423 (originalCharacters!4283 token!523))))))

(assert (= (and d!539077 res!794145) b!1764287))

(assert (= (and b!1764287 res!794146) b!1764288))

(declare-fun b_lambda!57223 () Bool)

(assert (=> (not b_lambda!57223) (not b!1764287)))

(assert (=> b!1764287 t!164512))

(declare-fun b_and!133467 () Bool)

(assert (= b_and!133461 (and (=> t!164512 result!128042) b_and!133467)))

(assert (=> b!1764287 t!164514))

(declare-fun b_and!133469 () Bool)

(assert (= b_and!133463 (and (=> t!164514 result!128044) b_and!133469)))

(assert (=> b!1764287 t!164516))

(declare-fun b_and!133471 () Bool)

(assert (= b_and!133465 (and (=> t!164516 result!128046) b_and!133471)))

(declare-fun m!2181293 () Bool)

(assert (=> d!539077 m!2181293))

(assert (=> b!1764287 m!2181237))

(assert (=> b!1764287 m!2181237))

(declare-fun m!2181297 () Bool)

(assert (=> b!1764287 m!2181297))

(declare-fun m!2181299 () Bool)

(assert (=> b!1764288 m!2181299))

(assert (=> start!174642 d!539077))

(declare-fun d!539079 () Bool)

(declare-fun lt!682137 () Bool)

(declare-fun content!2808 (List!19483) (InoxSet Rule!6738))

(assert (=> d!539079 (= lt!682137 (select (content!2808 rules!3447) rule!422))))

(declare-fun e!1128993 () Bool)

(assert (=> d!539079 (= lt!682137 e!1128993)))

(declare-fun res!794152 () Bool)

(assert (=> d!539079 (=> (not res!794152) (not e!1128993))))

(assert (=> d!539079 (= res!794152 ((_ is Cons!19413) rules!3447))))

(assert (=> d!539079 (= (contains!3499 rules!3447 rule!422) lt!682137)))

(declare-fun b!1764293 () Bool)

(declare-fun e!1128994 () Bool)

(assert (=> b!1764293 (= e!1128993 e!1128994)))

(declare-fun res!794151 () Bool)

(assert (=> b!1764293 (=> res!794151 e!1128994)))

(assert (=> b!1764293 (= res!794151 (= (h!24814 rules!3447) rule!422))))

(declare-fun b!1764294 () Bool)

(assert (=> b!1764294 (= e!1128994 (contains!3499 (t!164504 rules!3447) rule!422))))

(assert (= (and d!539079 res!794152) b!1764293))

(assert (= (and b!1764293 (not res!794151)) b!1764294))

(declare-fun m!2181315 () Bool)

(assert (=> d!539079 m!2181315))

(declare-fun m!2181317 () Bool)

(assert (=> d!539079 m!2181317))

(declare-fun m!2181319 () Bool)

(assert (=> b!1764294 m!2181319))

(assert (=> b!1763898 d!539079))

(declare-fun d!539087 () Bool)

(assert (=> d!539087 (= (inv!25209 (tag!3839 rule!422)) (= (mod (str.len (value!108538 (tag!3839 rule!422))) 2) 0))))

(assert (=> b!1763920 d!539087))

(declare-fun d!539089 () Bool)

(declare-fun res!794153 () Bool)

(declare-fun e!1128995 () Bool)

(assert (=> d!539089 (=> (not res!794153) (not e!1128995))))

(assert (=> d!539089 (= res!794153 (semiInverseModEq!1380 (toChars!4851 (transformation!3469 rule!422)) (toValue!4992 (transformation!3469 rule!422))))))

(assert (=> d!539089 (= (inv!25215 (transformation!3469 rule!422)) e!1128995)))

(declare-fun b!1764295 () Bool)

(assert (=> b!1764295 (= e!1128995 (equivClasses!1321 (toChars!4851 (transformation!3469 rule!422)) (toValue!4992 (transformation!3469 rule!422))))))

(assert (= (and d!539089 res!794153) b!1764295))

(declare-fun m!2181321 () Bool)

(assert (=> d!539089 m!2181321))

(declare-fun m!2181323 () Bool)

(assert (=> b!1764295 m!2181323))

(assert (=> b!1763920 d!539089))

(declare-fun d!539091 () Bool)

(declare-fun c!287464 () Bool)

(assert (=> d!539091 (= c!287464 ((_ is Node!6457) (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967))))))))

(declare-fun e!1128996 () Bool)

(assert (=> d!539091 (= (inv!25216 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967))))) e!1128996)))

(declare-fun b!1764296 () Bool)

(assert (=> b!1764296 (= e!1128996 (inv!25220 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967))))))))

(declare-fun b!1764297 () Bool)

(declare-fun e!1128997 () Bool)

(assert (=> b!1764297 (= e!1128996 e!1128997)))

(declare-fun res!794154 () Bool)

(assert (=> b!1764297 (= res!794154 (not ((_ is Leaf!9412) (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967)))))))))

(assert (=> b!1764297 (=> res!794154 e!1128997)))

(declare-fun b!1764298 () Bool)

(assert (=> b!1764298 (= e!1128997 (inv!25221 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967))))))))

(assert (= (and d!539091 c!287464) b!1764296))

(assert (= (and d!539091 (not c!287464)) b!1764297))

(assert (= (and b!1764297 (not res!794154)) b!1764298))

(declare-fun m!2181325 () Bool)

(assert (=> b!1764296 m!2181325))

(declare-fun m!2181327 () Bool)

(assert (=> b!1764298 m!2181327))

(assert (=> b!1763943 d!539091))

(declare-fun d!539093 () Bool)

(declare-fun lt!682140 () Int)

(assert (=> d!539093 (= lt!682140 (size!15423 (list!7879 lt!681990)))))

(declare-fun size!15425 (Conc!6457) Int)

(assert (=> d!539093 (= lt!682140 (size!15425 (c!287395 lt!681990)))))

(assert (=> d!539093 (= (size!15422 lt!681990) lt!682140)))

(declare-fun bs!404293 () Bool)

(assert (= bs!404293 d!539093))

(assert (=> bs!404293 m!2180935))

(assert (=> bs!404293 m!2180935))

(declare-fun m!2181329 () Bool)

(assert (=> bs!404293 m!2181329))

(declare-fun m!2181331 () Bool)

(assert (=> bs!404293 m!2181331))

(assert (=> b!1763902 d!539093))

(declare-fun b!1764299 () Bool)

(declare-fun res!794159 () Bool)

(declare-fun e!1128998 () Bool)

(assert (=> b!1764299 (=> res!794159 e!1128998)))

(assert (=> b!1764299 (= res!794159 (not (isEmpty!12253 (tail!2639 lt!681966))))))

(declare-fun b!1764300 () Bool)

(declare-fun res!794155 () Bool)

(declare-fun e!1129004 () Bool)

(assert (=> b!1764300 (=> (not res!794155) (not e!1129004))))

(declare-fun call!110830 () Bool)

(assert (=> b!1764300 (= res!794155 (not call!110830))))

(declare-fun b!1764301 () Bool)

(declare-fun res!794161 () Bool)

(declare-fun e!1128999 () Bool)

(assert (=> b!1764301 (=> res!794161 e!1128999)))

(assert (=> b!1764301 (= res!794161 (not ((_ is ElementMatch!4797) lt!681979)))))

(declare-fun e!1129000 () Bool)

(assert (=> b!1764301 (= e!1129000 e!1128999)))

(declare-fun b!1764302 () Bool)

(declare-fun e!1129001 () Bool)

(assert (=> b!1764302 (= e!1128999 e!1129001)))

(declare-fun res!794162 () Bool)

(assert (=> b!1764302 (=> (not res!794162) (not e!1129001))))

(declare-fun lt!682141 () Bool)

(assert (=> b!1764302 (= res!794162 (not lt!682141))))

(declare-fun b!1764303 () Bool)

(assert (=> b!1764303 (= e!1128998 (not (= (head!4088 lt!681966) (c!287394 lt!681979))))))

(declare-fun b!1764304 () Bool)

(declare-fun res!794156 () Bool)

(assert (=> b!1764304 (=> (not res!794156) (not e!1129004))))

(assert (=> b!1764304 (= res!794156 (isEmpty!12253 (tail!2639 lt!681966)))))

(declare-fun d!539095 () Bool)

(declare-fun e!1129002 () Bool)

(assert (=> d!539095 e!1129002))

(declare-fun c!287467 () Bool)

(assert (=> d!539095 (= c!287467 ((_ is EmptyExpr!4797) lt!681979))))

(declare-fun e!1129003 () Bool)

(assert (=> d!539095 (= lt!682141 e!1129003)))

(declare-fun c!287466 () Bool)

(assert (=> d!539095 (= c!287466 (isEmpty!12253 lt!681966))))

(assert (=> d!539095 (validRegex!1939 lt!681979)))

(assert (=> d!539095 (= (matchR!2270 lt!681979 lt!681966) lt!682141)))

(declare-fun bm!110825 () Bool)

(assert (=> bm!110825 (= call!110830 (isEmpty!12253 lt!681966))))

(declare-fun b!1764305 () Bool)

(assert (=> b!1764305 (= e!1129002 (= lt!682141 call!110830))))

(declare-fun b!1764306 () Bool)

(assert (=> b!1764306 (= e!1129003 (matchR!2270 (derivativeStep!1234 lt!681979 (head!4088 lt!681966)) (tail!2639 lt!681966)))))

(declare-fun b!1764307 () Bool)

(assert (=> b!1764307 (= e!1129001 e!1128998)))

(declare-fun res!794158 () Bool)

(assert (=> b!1764307 (=> res!794158 e!1128998)))

(assert (=> b!1764307 (= res!794158 call!110830)))

(declare-fun b!1764308 () Bool)

(assert (=> b!1764308 (= e!1129003 (nullable!1465 lt!681979))))

(declare-fun b!1764309 () Bool)

(declare-fun res!794160 () Bool)

(assert (=> b!1764309 (=> res!794160 e!1128999)))

(assert (=> b!1764309 (= res!794160 e!1129004)))

(declare-fun res!794157 () Bool)

(assert (=> b!1764309 (=> (not res!794157) (not e!1129004))))

(assert (=> b!1764309 (= res!794157 lt!682141)))

(declare-fun b!1764310 () Bool)

(assert (=> b!1764310 (= e!1129000 (not lt!682141))))

(declare-fun b!1764311 () Bool)

(assert (=> b!1764311 (= e!1129004 (= (head!4088 lt!681966) (c!287394 lt!681979)))))

(declare-fun b!1764312 () Bool)

(assert (=> b!1764312 (= e!1129002 e!1129000)))

(declare-fun c!287465 () Bool)

(assert (=> b!1764312 (= c!287465 ((_ is EmptyLang!4797) lt!681979))))

(assert (= (and d!539095 c!287466) b!1764308))

(assert (= (and d!539095 (not c!287466)) b!1764306))

(assert (= (and d!539095 c!287467) b!1764305))

(assert (= (and d!539095 (not c!287467)) b!1764312))

(assert (= (and b!1764312 c!287465) b!1764310))

(assert (= (and b!1764312 (not c!287465)) b!1764301))

(assert (= (and b!1764301 (not res!794161)) b!1764309))

(assert (= (and b!1764309 res!794157) b!1764300))

(assert (= (and b!1764300 res!794155) b!1764304))

(assert (= (and b!1764304 res!794156) b!1764311))

(assert (= (and b!1764309 (not res!794160)) b!1764302))

(assert (= (and b!1764302 res!794162) b!1764307))

(assert (= (and b!1764307 (not res!794158)) b!1764299))

(assert (= (and b!1764299 (not res!794159)) b!1764303))

(assert (= (or b!1764305 b!1764300 b!1764307) bm!110825))

(assert (=> b!1764303 m!2181099))

(assert (=> bm!110825 m!2181101))

(assert (=> b!1764304 m!2181103))

(assert (=> b!1764304 m!2181103))

(assert (=> b!1764304 m!2181105))

(assert (=> d!539095 m!2181101))

(declare-fun m!2181333 () Bool)

(assert (=> d!539095 m!2181333))

(declare-fun m!2181335 () Bool)

(assert (=> b!1764308 m!2181335))

(assert (=> b!1764311 m!2181099))

(assert (=> b!1764299 m!2181103))

(assert (=> b!1764299 m!2181103))

(assert (=> b!1764299 m!2181105))

(assert (=> b!1764306 m!2181099))

(assert (=> b!1764306 m!2181099))

(declare-fun m!2181337 () Bool)

(assert (=> b!1764306 m!2181337))

(assert (=> b!1764306 m!2181103))

(assert (=> b!1764306 m!2181337))

(assert (=> b!1764306 m!2181103))

(declare-fun m!2181339 () Bool)

(assert (=> b!1764306 m!2181339))

(assert (=> b!1763902 d!539095))

(declare-fun d!539097 () Bool)

(assert (=> d!539097 (matchR!2270 (rulesRegex!825 thiss!24550 rules!3447) (list!7879 (charsOf!2118 token!523)))))

(declare-fun lt!682152 () Unit!33599)

(declare-fun choose!10937 (LexerInterface!3098 List!19483 List!19482 Token!6504 Rule!6738 List!19482) Unit!33599)

(assert (=> d!539097 (= lt!682152 (choose!10937 thiss!24550 rules!3447 lt!681966 token!523 rule!422 Nil!19412))))

(assert (=> d!539097 (not (isEmpty!12252 rules!3447))))

(assert (=> d!539097 (= (lemmaMaxPrefixThenMatchesRulesRegex!176 thiss!24550 rules!3447 lt!681966 token!523 rule!422 Nil!19412) lt!682152)))

(declare-fun bs!404295 () Bool)

(assert (= bs!404295 d!539097))

(assert (=> bs!404295 m!2180813))

(declare-fun m!2181351 () Bool)

(assert (=> bs!404295 m!2181351))

(declare-fun m!2181353 () Bool)

(assert (=> bs!404295 m!2181353))

(declare-fun m!2181355 () Bool)

(assert (=> bs!404295 m!2181355))

(assert (=> bs!404295 m!2180813))

(assert (=> bs!404295 m!2180829))

(assert (=> bs!404295 m!2180937))

(assert (=> bs!404295 m!2180937))

(assert (=> bs!404295 m!2181351))

(assert (=> b!1763902 d!539097))

(declare-fun d!539103 () Bool)

(declare-fun lt!682153 () Bool)

(assert (=> d!539103 (= lt!682153 (select (content!2808 rules!3447) (rule!5491 (_1!10913 lt!681967))))))

(declare-fun e!1129011 () Bool)

(assert (=> d!539103 (= lt!682153 e!1129011)))

(declare-fun res!794177 () Bool)

(assert (=> d!539103 (=> (not res!794177) (not e!1129011))))

(assert (=> d!539103 (= res!794177 ((_ is Cons!19413) rules!3447))))

(assert (=> d!539103 (= (contains!3499 rules!3447 (rule!5491 (_1!10913 lt!681967))) lt!682153)))

(declare-fun b!1764328 () Bool)

(declare-fun e!1129012 () Bool)

(assert (=> b!1764328 (= e!1129011 e!1129012)))

(declare-fun res!794176 () Bool)

(assert (=> b!1764328 (=> res!794176 e!1129012)))

(assert (=> b!1764328 (= res!794176 (= (h!24814 rules!3447) (rule!5491 (_1!10913 lt!681967))))))

(declare-fun b!1764329 () Bool)

(assert (=> b!1764329 (= e!1129012 (contains!3499 (t!164504 rules!3447) (rule!5491 (_1!10913 lt!681967))))))

(assert (= (and d!539103 res!794177) b!1764328))

(assert (= (and b!1764328 (not res!794176)) b!1764329))

(assert (=> d!539103 m!2181315))

(declare-fun m!2181357 () Bool)

(assert (=> d!539103 m!2181357))

(declare-fun m!2181361 () Bool)

(assert (=> b!1764329 m!2181361))

(assert (=> b!1763922 d!539103))

(declare-fun b!1764330 () Bool)

(declare-fun res!794182 () Bool)

(declare-fun e!1129013 () Bool)

(assert (=> b!1764330 (=> res!794182 e!1129013)))

(assert (=> b!1764330 (= res!794182 (not (isEmpty!12253 (tail!2639 lt!681970))))))

(declare-fun b!1764331 () Bool)

(declare-fun res!794178 () Bool)

(declare-fun e!1129019 () Bool)

(assert (=> b!1764331 (=> (not res!794178) (not e!1129019))))

(declare-fun call!110832 () Bool)

(assert (=> b!1764331 (= res!794178 (not call!110832))))

(declare-fun b!1764332 () Bool)

(declare-fun res!794184 () Bool)

(declare-fun e!1129014 () Bool)

(assert (=> b!1764332 (=> res!794184 e!1129014)))

(assert (=> b!1764332 (= res!794184 (not ((_ is ElementMatch!4797) (regex!3469 (rule!5491 (_1!10913 lt!681967))))))))

(declare-fun e!1129015 () Bool)

(assert (=> b!1764332 (= e!1129015 e!1129014)))

(declare-fun b!1764333 () Bool)

(declare-fun e!1129016 () Bool)

(assert (=> b!1764333 (= e!1129014 e!1129016)))

(declare-fun res!794185 () Bool)

(assert (=> b!1764333 (=> (not res!794185) (not e!1129016))))

(declare-fun lt!682154 () Bool)

(assert (=> b!1764333 (= res!794185 (not lt!682154))))

(declare-fun b!1764334 () Bool)

(assert (=> b!1764334 (= e!1129013 (not (= (head!4088 lt!681970) (c!287394 (regex!3469 (rule!5491 (_1!10913 lt!681967)))))))))

(declare-fun b!1764335 () Bool)

(declare-fun res!794179 () Bool)

(assert (=> b!1764335 (=> (not res!794179) (not e!1129019))))

(assert (=> b!1764335 (= res!794179 (isEmpty!12253 (tail!2639 lt!681970)))))

(declare-fun d!539105 () Bool)

(declare-fun e!1129017 () Bool)

(assert (=> d!539105 e!1129017))

(declare-fun c!287471 () Bool)

(assert (=> d!539105 (= c!287471 ((_ is EmptyExpr!4797) (regex!3469 (rule!5491 (_1!10913 lt!681967)))))))

(declare-fun e!1129018 () Bool)

(assert (=> d!539105 (= lt!682154 e!1129018)))

(declare-fun c!287470 () Bool)

(assert (=> d!539105 (= c!287470 (isEmpty!12253 lt!681970))))

(assert (=> d!539105 (validRegex!1939 (regex!3469 (rule!5491 (_1!10913 lt!681967))))))

(assert (=> d!539105 (= (matchR!2270 (regex!3469 (rule!5491 (_1!10913 lt!681967))) lt!681970) lt!682154)))

(declare-fun bm!110827 () Bool)

(assert (=> bm!110827 (= call!110832 (isEmpty!12253 lt!681970))))

(declare-fun b!1764336 () Bool)

(assert (=> b!1764336 (= e!1129017 (= lt!682154 call!110832))))

(declare-fun b!1764337 () Bool)

(assert (=> b!1764337 (= e!1129018 (matchR!2270 (derivativeStep!1234 (regex!3469 (rule!5491 (_1!10913 lt!681967))) (head!4088 lt!681970)) (tail!2639 lt!681970)))))

(declare-fun b!1764338 () Bool)

(assert (=> b!1764338 (= e!1129016 e!1129013)))

(declare-fun res!794181 () Bool)

(assert (=> b!1764338 (=> res!794181 e!1129013)))

(assert (=> b!1764338 (= res!794181 call!110832)))

(declare-fun b!1764339 () Bool)

(assert (=> b!1764339 (= e!1129018 (nullable!1465 (regex!3469 (rule!5491 (_1!10913 lt!681967)))))))

(declare-fun b!1764340 () Bool)

(declare-fun res!794183 () Bool)

(assert (=> b!1764340 (=> res!794183 e!1129014)))

(assert (=> b!1764340 (= res!794183 e!1129019)))

(declare-fun res!794180 () Bool)

(assert (=> b!1764340 (=> (not res!794180) (not e!1129019))))

(assert (=> b!1764340 (= res!794180 lt!682154)))

(declare-fun b!1764341 () Bool)

(assert (=> b!1764341 (= e!1129015 (not lt!682154))))

(declare-fun b!1764342 () Bool)

(assert (=> b!1764342 (= e!1129019 (= (head!4088 lt!681970) (c!287394 (regex!3469 (rule!5491 (_1!10913 lt!681967))))))))

(declare-fun b!1764343 () Bool)

(assert (=> b!1764343 (= e!1129017 e!1129015)))

(declare-fun c!287469 () Bool)

(assert (=> b!1764343 (= c!287469 ((_ is EmptyLang!4797) (regex!3469 (rule!5491 (_1!10913 lt!681967)))))))

(assert (= (and d!539105 c!287470) b!1764339))

(assert (= (and d!539105 (not c!287470)) b!1764337))

(assert (= (and d!539105 c!287471) b!1764336))

(assert (= (and d!539105 (not c!287471)) b!1764343))

(assert (= (and b!1764343 c!287469) b!1764341))

(assert (= (and b!1764343 (not c!287469)) b!1764332))

(assert (= (and b!1764332 (not res!794184)) b!1764340))

(assert (= (and b!1764340 res!794180) b!1764331))

(assert (= (and b!1764331 res!794178) b!1764335))

(assert (= (and b!1764335 res!794179) b!1764342))

(assert (= (and b!1764340 (not res!794183)) b!1764333))

(assert (= (and b!1764333 res!794185) b!1764338))

(assert (= (and b!1764338 (not res!794181)) b!1764330))

(assert (= (and b!1764330 (not res!794182)) b!1764334))

(assert (= (or b!1764336 b!1764331 b!1764338) bm!110827))

(declare-fun m!2181385 () Bool)

(assert (=> b!1764334 m!2181385))

(declare-fun m!2181389 () Bool)

(assert (=> bm!110827 m!2181389))

(declare-fun m!2181391 () Bool)

(assert (=> b!1764335 m!2181391))

(assert (=> b!1764335 m!2181391))

(declare-fun m!2181395 () Bool)

(assert (=> b!1764335 m!2181395))

(assert (=> d!539105 m!2181389))

(declare-fun m!2181399 () Bool)

(assert (=> d!539105 m!2181399))

(declare-fun m!2181401 () Bool)

(assert (=> b!1764339 m!2181401))

(assert (=> b!1764342 m!2181385))

(assert (=> b!1764330 m!2181391))

(assert (=> b!1764330 m!2181391))

(assert (=> b!1764330 m!2181395))

(assert (=> b!1764337 m!2181385))

(assert (=> b!1764337 m!2181385))

(declare-fun m!2181405 () Bool)

(assert (=> b!1764337 m!2181405))

(assert (=> b!1764337 m!2181391))

(assert (=> b!1764337 m!2181405))

(assert (=> b!1764337 m!2181391))

(declare-fun m!2181407 () Bool)

(assert (=> b!1764337 m!2181407))

(assert (=> b!1763901 d!539105))

(declare-fun d!539111 () Bool)

(declare-fun c!287472 () Bool)

(assert (=> d!539111 (= c!287472 ((_ is IntegerValue!10677) (value!108539 token!523)))))

(declare-fun e!1129022 () Bool)

(assert (=> d!539111 (= (inv!21 (value!108539 token!523)) e!1129022)))

(declare-fun b!1764344 () Bool)

(assert (=> b!1764344 (= e!1129022 (inv!16 (value!108539 token!523)))))

(declare-fun b!1764345 () Bool)

(declare-fun e!1129021 () Bool)

(assert (=> b!1764345 (= e!1129021 (inv!17 (value!108539 token!523)))))

(declare-fun b!1764346 () Bool)

(declare-fun res!794186 () Bool)

(declare-fun e!1129020 () Bool)

(assert (=> b!1764346 (=> res!794186 e!1129020)))

(assert (=> b!1764346 (= res!794186 (not ((_ is IntegerValue!10679) (value!108539 token!523))))))

(assert (=> b!1764346 (= e!1129021 e!1129020)))

(declare-fun b!1764347 () Bool)

(assert (=> b!1764347 (= e!1129022 e!1129021)))

(declare-fun c!287473 () Bool)

(assert (=> b!1764347 (= c!287473 ((_ is IntegerValue!10678) (value!108539 token!523)))))

(declare-fun b!1764348 () Bool)

(assert (=> b!1764348 (= e!1129020 (inv!15 (value!108539 token!523)))))

(assert (= (and d!539111 c!287472) b!1764344))

(assert (= (and d!539111 (not c!287472)) b!1764347))

(assert (= (and b!1764347 c!287473) b!1764345))

(assert (= (and b!1764347 (not c!287473)) b!1764346))

(assert (= (and b!1764346 (not res!794186)) b!1764348))

(declare-fun m!2181409 () Bool)

(assert (=> b!1764344 m!2181409))

(declare-fun m!2181411 () Bool)

(assert (=> b!1764345 m!2181411))

(declare-fun m!2181413 () Bool)

(assert (=> b!1764348 m!2181413))

(assert (=> b!1763926 d!539111))

(declare-fun b!1764350 () Bool)

(declare-fun res!794191 () Bool)

(declare-fun e!1129024 () Bool)

(assert (=> b!1764350 (=> res!794191 e!1129024)))

(assert (=> b!1764350 (= res!794191 (not (isEmpty!12253 (tail!2639 (list!7879 (charsOf!2118 (_1!10913 lt!681967)))))))))

(declare-fun b!1764351 () Bool)

(declare-fun res!794187 () Bool)

(declare-fun e!1129030 () Bool)

(assert (=> b!1764351 (=> (not res!794187) (not e!1129030))))

(declare-fun call!110833 () Bool)

(assert (=> b!1764351 (= res!794187 (not call!110833))))

(declare-fun b!1764352 () Bool)

(declare-fun res!794193 () Bool)

(declare-fun e!1129025 () Bool)

(assert (=> b!1764352 (=> res!794193 e!1129025)))

(assert (=> b!1764352 (= res!794193 (not ((_ is ElementMatch!4797) (regex!3469 lt!681978))))))

(declare-fun e!1129026 () Bool)

(assert (=> b!1764352 (= e!1129026 e!1129025)))

(declare-fun b!1764353 () Bool)

(declare-fun e!1129027 () Bool)

(assert (=> b!1764353 (= e!1129025 e!1129027)))

(declare-fun res!794194 () Bool)

(assert (=> b!1764353 (=> (not res!794194) (not e!1129027))))

(declare-fun lt!682156 () Bool)

(assert (=> b!1764353 (= res!794194 (not lt!682156))))

(declare-fun b!1764354 () Bool)

(assert (=> b!1764354 (= e!1129024 (not (= (head!4088 (list!7879 (charsOf!2118 (_1!10913 lt!681967)))) (c!287394 (regex!3469 lt!681978)))))))

(declare-fun b!1764355 () Bool)

(declare-fun res!794188 () Bool)

(assert (=> b!1764355 (=> (not res!794188) (not e!1129030))))

(assert (=> b!1764355 (= res!794188 (isEmpty!12253 (tail!2639 (list!7879 (charsOf!2118 (_1!10913 lt!681967))))))))

(declare-fun d!539113 () Bool)

(declare-fun e!1129028 () Bool)

(assert (=> d!539113 e!1129028))

(declare-fun c!287476 () Bool)

(assert (=> d!539113 (= c!287476 ((_ is EmptyExpr!4797) (regex!3469 lt!681978)))))

(declare-fun e!1129029 () Bool)

(assert (=> d!539113 (= lt!682156 e!1129029)))

(declare-fun c!287475 () Bool)

(assert (=> d!539113 (= c!287475 (isEmpty!12253 (list!7879 (charsOf!2118 (_1!10913 lt!681967)))))))

(assert (=> d!539113 (validRegex!1939 (regex!3469 lt!681978))))

(assert (=> d!539113 (= (matchR!2270 (regex!3469 lt!681978) (list!7879 (charsOf!2118 (_1!10913 lt!681967)))) lt!682156)))

(declare-fun bm!110828 () Bool)

(assert (=> bm!110828 (= call!110833 (isEmpty!12253 (list!7879 (charsOf!2118 (_1!10913 lt!681967)))))))

(declare-fun b!1764356 () Bool)

(assert (=> b!1764356 (= e!1129028 (= lt!682156 call!110833))))

(declare-fun b!1764357 () Bool)

(assert (=> b!1764357 (= e!1129029 (matchR!2270 (derivativeStep!1234 (regex!3469 lt!681978) (head!4088 (list!7879 (charsOf!2118 (_1!10913 lt!681967))))) (tail!2639 (list!7879 (charsOf!2118 (_1!10913 lt!681967))))))))

(declare-fun b!1764358 () Bool)

(assert (=> b!1764358 (= e!1129027 e!1129024)))

(declare-fun res!794190 () Bool)

(assert (=> b!1764358 (=> res!794190 e!1129024)))

(assert (=> b!1764358 (= res!794190 call!110833)))

(declare-fun b!1764359 () Bool)

(assert (=> b!1764359 (= e!1129029 (nullable!1465 (regex!3469 lt!681978)))))

(declare-fun b!1764360 () Bool)

(declare-fun res!794192 () Bool)

(assert (=> b!1764360 (=> res!794192 e!1129025)))

(assert (=> b!1764360 (= res!794192 e!1129030)))

(declare-fun res!794189 () Bool)

(assert (=> b!1764360 (=> (not res!794189) (not e!1129030))))

(assert (=> b!1764360 (= res!794189 lt!682156)))

(declare-fun b!1764361 () Bool)

(assert (=> b!1764361 (= e!1129026 (not lt!682156))))

(declare-fun b!1764362 () Bool)

(assert (=> b!1764362 (= e!1129030 (= (head!4088 (list!7879 (charsOf!2118 (_1!10913 lt!681967)))) (c!287394 (regex!3469 lt!681978))))))

(declare-fun b!1764363 () Bool)

(assert (=> b!1764363 (= e!1129028 e!1129026)))

(declare-fun c!287474 () Bool)

(assert (=> b!1764363 (= c!287474 ((_ is EmptyLang!4797) (regex!3469 lt!681978)))))

(assert (= (and d!539113 c!287475) b!1764359))

(assert (= (and d!539113 (not c!287475)) b!1764357))

(assert (= (and d!539113 c!287476) b!1764356))

(assert (= (and d!539113 (not c!287476)) b!1764363))

(assert (= (and b!1764363 c!287474) b!1764361))

(assert (= (and b!1764363 (not c!287474)) b!1764352))

(assert (= (and b!1764352 (not res!794193)) b!1764360))

(assert (= (and b!1764360 res!794189) b!1764351))

(assert (= (and b!1764351 res!794187) b!1764355))

(assert (= (and b!1764355 res!794188) b!1764362))

(assert (= (and b!1764360 (not res!794192)) b!1764353))

(assert (= (and b!1764353 res!794194) b!1764358))

(assert (= (and b!1764358 (not res!794190)) b!1764350))

(assert (= (and b!1764350 (not res!794191)) b!1764354))

(assert (= (or b!1764356 b!1764351 b!1764358) bm!110828))

(assert (=> b!1764354 m!2180887))

(declare-fun m!2181423 () Bool)

(assert (=> b!1764354 m!2181423))

(assert (=> bm!110828 m!2180887))

(declare-fun m!2181425 () Bool)

(assert (=> bm!110828 m!2181425))

(assert (=> b!1764355 m!2180887))

(declare-fun m!2181427 () Bool)

(assert (=> b!1764355 m!2181427))

(assert (=> b!1764355 m!2181427))

(declare-fun m!2181429 () Bool)

(assert (=> b!1764355 m!2181429))

(assert (=> d!539113 m!2180887))

(assert (=> d!539113 m!2181425))

(declare-fun m!2181431 () Bool)

(assert (=> d!539113 m!2181431))

(declare-fun m!2181433 () Bool)

(assert (=> b!1764359 m!2181433))

(assert (=> b!1764362 m!2180887))

(assert (=> b!1764362 m!2181423))

(assert (=> b!1764350 m!2180887))

(assert (=> b!1764350 m!2181427))

(assert (=> b!1764350 m!2181427))

(assert (=> b!1764350 m!2181429))

(assert (=> b!1764357 m!2180887))

(assert (=> b!1764357 m!2181423))

(assert (=> b!1764357 m!2181423))

(declare-fun m!2181435 () Bool)

(assert (=> b!1764357 m!2181435))

(assert (=> b!1764357 m!2180887))

(assert (=> b!1764357 m!2181427))

(assert (=> b!1764357 m!2181435))

(assert (=> b!1764357 m!2181427))

(declare-fun m!2181437 () Bool)

(assert (=> b!1764357 m!2181437))

(assert (=> b!1763905 d!539113))

(declare-fun d!539117 () Bool)

(assert (=> d!539117 (= (list!7879 (charsOf!2118 (_1!10913 lt!681967))) (list!7882 (c!287395 (charsOf!2118 (_1!10913 lt!681967)))))))

(declare-fun bs!404297 () Bool)

(assert (= bs!404297 d!539117))

(declare-fun m!2181439 () Bool)

(assert (=> bs!404297 m!2181439))

(assert (=> b!1763905 d!539117))

(declare-fun d!539119 () Bool)

(declare-fun lt!682157 () BalanceConc!12858)

(assert (=> d!539119 (= (list!7879 lt!682157) (originalCharacters!4283 (_1!10913 lt!681967)))))

(assert (=> d!539119 (= lt!682157 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967))))))

(assert (=> d!539119 (= (charsOf!2118 (_1!10913 lt!681967)) lt!682157)))

(declare-fun b_lambda!57227 () Bool)

(assert (=> (not b_lambda!57227) (not d!539119)))

(assert (=> d!539119 t!164485))

(declare-fun b_and!133479 () Bool)

(assert (= b_and!133467 (and (=> t!164485 result!128014) b_and!133479)))

(assert (=> d!539119 t!164487))

(declare-fun b_and!133481 () Bool)

(assert (= b_and!133469 (and (=> t!164487 result!128018) b_and!133481)))

(assert (=> d!539119 t!164489))

(declare-fun b_and!133483 () Bool)

(assert (= b_and!133471 (and (=> t!164489 result!128020) b_and!133483)))

(declare-fun m!2181441 () Bool)

(assert (=> d!539119 m!2181441))

(assert (=> d!539119 m!2180873))

(assert (=> b!1763905 d!539119))

(declare-fun d!539121 () Bool)

(assert (=> d!539121 (= (get!5912 lt!681983) (v!25425 lt!681983))))

(assert (=> b!1763905 d!539121))

(declare-fun b!1764412 () Bool)

(declare-fun res!794230 () Bool)

(declare-fun e!1129053 () Bool)

(assert (=> b!1764412 (=> (not res!794230) (not e!1129053))))

(declare-fun lt!682185 () Option!3960)

(assert (=> b!1764412 (= res!794230 (= (rule!5491 (_1!10913 (get!5913 lt!682185))) (rule!5491 (_1!10913 lt!681967))))))

(declare-fun b!1764413 () Bool)

(declare-fun res!794232 () Bool)

(assert (=> b!1764413 (=> (not res!794232) (not e!1129053))))

(assert (=> b!1764413 (= res!794232 (= (++!5293 (list!7879 (charsOf!2118 (_1!10913 (get!5913 lt!682185)))) (_2!10913 (get!5913 lt!682185))) lt!681989))))

(declare-fun b!1764414 () Bool)

(declare-fun res!794231 () Bool)

(assert (=> b!1764414 (=> (not res!794231) (not e!1129053))))

(assert (=> b!1764414 (= res!794231 (= (value!108539 (_1!10913 (get!5913 lt!682185))) (apply!5269 (transformation!3469 (rule!5491 (_1!10913 (get!5913 lt!682185)))) (seqFromList!2438 (originalCharacters!4283 (_1!10913 (get!5913 lt!682185)))))))))

(declare-fun b!1764415 () Bool)

(declare-fun e!1129054 () Option!3960)

(assert (=> b!1764415 (= e!1129054 None!3959)))

(declare-fun b!1764416 () Bool)

(declare-fun e!1129056 () Bool)

(declare-datatypes ((tuple2!19028 0))(
  ( (tuple2!19029 (_1!10916 List!19482) (_2!10916 List!19482)) )
))
(declare-fun findLongestMatchInner!443 (Regex!4797 List!19482 Int List!19482 List!19482 Int) tuple2!19028)

(assert (=> b!1764416 (= e!1129056 (matchR!2270 (regex!3469 (rule!5491 (_1!10913 lt!681967))) (_1!10916 (findLongestMatchInner!443 (regex!3469 (rule!5491 (_1!10913 lt!681967))) Nil!19412 (size!15423 Nil!19412) lt!681989 lt!681989 (size!15423 lt!681989)))))))

(declare-fun b!1764417 () Bool)

(declare-fun e!1129055 () Bool)

(assert (=> b!1764417 (= e!1129055 e!1129053)))

(declare-fun res!794234 () Bool)

(assert (=> b!1764417 (=> (not res!794234) (not e!1129053))))

(assert (=> b!1764417 (= res!794234 (matchR!2270 (regex!3469 (rule!5491 (_1!10913 lt!681967))) (list!7879 (charsOf!2118 (_1!10913 (get!5913 lt!682185))))))))

(declare-fun b!1764418 () Bool)

(declare-fun res!794229 () Bool)

(assert (=> b!1764418 (=> (not res!794229) (not e!1129053))))

(assert (=> b!1764418 (= res!794229 (< (size!15423 (_2!10913 (get!5913 lt!682185))) (size!15423 lt!681989)))))

(declare-fun d!539123 () Bool)

(assert (=> d!539123 e!1129055))

(declare-fun res!794233 () Bool)

(assert (=> d!539123 (=> res!794233 e!1129055)))

(assert (=> d!539123 (= res!794233 (isEmpty!12256 lt!682185))))

(assert (=> d!539123 (= lt!682185 e!1129054)))

(declare-fun c!287484 () Bool)

(declare-fun lt!682182 () tuple2!19028)

(assert (=> d!539123 (= c!287484 (isEmpty!12253 (_1!10916 lt!682182)))))

(declare-fun findLongestMatch!370 (Regex!4797 List!19482) tuple2!19028)

(assert (=> d!539123 (= lt!682182 (findLongestMatch!370 (regex!3469 (rule!5491 (_1!10913 lt!681967))) lt!681989))))

(assert (=> d!539123 (ruleValid!967 thiss!24550 (rule!5491 (_1!10913 lt!681967)))))

(assert (=> d!539123 (= (maxPrefixOneRule!1021 thiss!24550 (rule!5491 (_1!10913 lt!681967)) lt!681989) lt!682185)))

(declare-fun b!1764419 () Bool)

(assert (=> b!1764419 (= e!1129053 (= (size!15421 (_1!10913 (get!5913 lt!682185))) (size!15423 (originalCharacters!4283 (_1!10913 (get!5913 lt!682185))))))))

(declare-fun b!1764420 () Bool)

(assert (=> b!1764420 (= e!1129054 (Some!3959 (tuple2!19023 (Token!6505 (apply!5269 (transformation!3469 (rule!5491 (_1!10913 lt!681967))) (seqFromList!2438 (_1!10916 lt!682182))) (rule!5491 (_1!10913 lt!681967)) (size!15422 (seqFromList!2438 (_1!10916 lt!682182))) (_1!10916 lt!682182)) (_2!10916 lt!682182))))))

(declare-fun lt!682181 () Unit!33599)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!427 (Regex!4797 List!19482) Unit!33599)

(assert (=> b!1764420 (= lt!682181 (longestMatchIsAcceptedByMatchOrIsEmpty!427 (regex!3469 (rule!5491 (_1!10913 lt!681967))) lt!681989))))

(declare-fun res!794235 () Bool)

(assert (=> b!1764420 (= res!794235 (isEmpty!12253 (_1!10916 (findLongestMatchInner!443 (regex!3469 (rule!5491 (_1!10913 lt!681967))) Nil!19412 (size!15423 Nil!19412) lt!681989 lt!681989 (size!15423 lt!681989)))))))

(assert (=> b!1764420 (=> res!794235 e!1129056)))

(assert (=> b!1764420 e!1129056))

(declare-fun lt!682184 () Unit!33599)

(assert (=> b!1764420 (= lt!682184 lt!682181)))

(declare-fun lt!682183 () Unit!33599)

(assert (=> b!1764420 (= lt!682183 (lemmaSemiInverse!607 (transformation!3469 (rule!5491 (_1!10913 lt!681967))) (seqFromList!2438 (_1!10916 lt!682182))))))

(assert (= (and d!539123 c!287484) b!1764415))

(assert (= (and d!539123 (not c!287484)) b!1764420))

(assert (= (and b!1764420 (not res!794235)) b!1764416))

(assert (= (and d!539123 (not res!794233)) b!1764417))

(assert (= (and b!1764417 res!794234) b!1764413))

(assert (= (and b!1764413 res!794232) b!1764418))

(assert (= (and b!1764418 res!794229) b!1764412))

(assert (= (and b!1764412 res!794230) b!1764414))

(assert (= (and b!1764414 res!794231) b!1764419))

(declare-fun m!2181453 () Bool)

(assert (=> b!1764412 m!2181453))

(assert (=> b!1764419 m!2181453))

(declare-fun m!2181455 () Bool)

(assert (=> b!1764419 m!2181455))

(assert (=> b!1764413 m!2181453))

(declare-fun m!2181457 () Bool)

(assert (=> b!1764413 m!2181457))

(assert (=> b!1764413 m!2181457))

(declare-fun m!2181459 () Bool)

(assert (=> b!1764413 m!2181459))

(assert (=> b!1764413 m!2181459))

(declare-fun m!2181461 () Bool)

(assert (=> b!1764413 m!2181461))

(assert (=> b!1764414 m!2181453))

(declare-fun m!2181463 () Bool)

(assert (=> b!1764414 m!2181463))

(assert (=> b!1764414 m!2181463))

(declare-fun m!2181465 () Bool)

(assert (=> b!1764414 m!2181465))

(declare-fun m!2181467 () Bool)

(assert (=> b!1764416 m!2181467))

(declare-fun m!2181469 () Bool)

(assert (=> b!1764416 m!2181469))

(assert (=> b!1764416 m!2181467))

(assert (=> b!1764416 m!2181469))

(declare-fun m!2181471 () Bool)

(assert (=> b!1764416 m!2181471))

(declare-fun m!2181473 () Bool)

(assert (=> b!1764416 m!2181473))

(assert (=> b!1764418 m!2181453))

(declare-fun m!2181475 () Bool)

(assert (=> b!1764418 m!2181475))

(assert (=> b!1764418 m!2181469))

(declare-fun m!2181477 () Bool)

(assert (=> d!539123 m!2181477))

(declare-fun m!2181479 () Bool)

(assert (=> d!539123 m!2181479))

(declare-fun m!2181481 () Bool)

(assert (=> d!539123 m!2181481))

(declare-fun m!2181483 () Bool)

(assert (=> d!539123 m!2181483))

(assert (=> b!1764420 m!2181467))

(assert (=> b!1764420 m!2181469))

(assert (=> b!1764420 m!2181471))

(assert (=> b!1764420 m!2181467))

(declare-fun m!2181485 () Bool)

(assert (=> b!1764420 m!2181485))

(declare-fun m!2181487 () Bool)

(assert (=> b!1764420 m!2181487))

(declare-fun m!2181489 () Bool)

(assert (=> b!1764420 m!2181489))

(assert (=> b!1764420 m!2181469))

(assert (=> b!1764420 m!2181485))

(declare-fun m!2181491 () Bool)

(assert (=> b!1764420 m!2181491))

(assert (=> b!1764420 m!2181485))

(declare-fun m!2181493 () Bool)

(assert (=> b!1764420 m!2181493))

(assert (=> b!1764420 m!2181485))

(declare-fun m!2181495 () Bool)

(assert (=> b!1764420 m!2181495))

(assert (=> b!1764417 m!2181453))

(assert (=> b!1764417 m!2181457))

(assert (=> b!1764417 m!2181457))

(assert (=> b!1764417 m!2181459))

(assert (=> b!1764417 m!2181459))

(declare-fun m!2181497 () Bool)

(assert (=> b!1764417 m!2181497))

(assert (=> b!1763927 d!539123))

(declare-fun d!539129 () Bool)

(assert (=> d!539129 (= (maxPrefixOneRule!1021 thiss!24550 (rule!5491 (_1!10913 lt!681967)) lt!681989) (Some!3959 (tuple2!19023 (Token!6505 (apply!5269 (transformation!3469 (rule!5491 (_1!10913 lt!681967))) (seqFromList!2438 lt!681970)) (rule!5491 (_1!10913 lt!681967)) (size!15423 lt!681970) lt!681970) (_2!10913 lt!681967))))))

(declare-fun lt!682196 () Unit!33599)

(declare-fun choose!10942 (LexerInterface!3098 List!19483 List!19482 List!19482 List!19482 Rule!6738) Unit!33599)

(assert (=> d!539129 (= lt!682196 (choose!10942 thiss!24550 rules!3447 lt!681970 lt!681989 (_2!10913 lt!681967) (rule!5491 (_1!10913 lt!681967))))))

(assert (=> d!539129 (not (isEmpty!12252 rules!3447))))

(assert (=> d!539129 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!399 thiss!24550 rules!3447 lt!681970 lt!681989 (_2!10913 lt!681967) (rule!5491 (_1!10913 lt!681967))) lt!682196)))

(declare-fun bs!404299 () Bool)

(assert (= bs!404299 d!539129))

(assert (=> bs!404299 m!2180817))

(declare-fun m!2181551 () Bool)

(assert (=> bs!404299 m!2181551))

(assert (=> bs!404299 m!2180825))

(assert (=> bs!404299 m!2180817))

(assert (=> bs!404299 m!2180819))

(assert (=> bs!404299 m!2180829))

(assert (=> bs!404299 m!2180827))

(assert (=> b!1763927 d!539129))

(declare-fun d!539139 () Bool)

(declare-fun lt!682199 () Int)

(assert (=> d!539139 (>= lt!682199 0)))

(declare-fun e!1129067 () Int)

(assert (=> d!539139 (= lt!682199 e!1129067)))

(declare-fun c!287491 () Bool)

(assert (=> d!539139 (= c!287491 ((_ is Nil!19412) lt!681970))))

(assert (=> d!539139 (= (size!15423 lt!681970) lt!682199)))

(declare-fun b!1764440 () Bool)

(assert (=> b!1764440 (= e!1129067 0)))

(declare-fun b!1764441 () Bool)

(assert (=> b!1764441 (= e!1129067 (+ 1 (size!15423 (t!164503 lt!681970))))))

(assert (= (and d!539139 c!287491) b!1764440))

(assert (= (and d!539139 (not c!287491)) b!1764441))

(declare-fun m!2181553 () Bool)

(assert (=> b!1764441 m!2181553))

(assert (=> b!1763927 d!539139))

(declare-fun d!539141 () Bool)

(assert (=> d!539141 (= (apply!5269 (transformation!3469 (rule!5491 (_1!10913 lt!681967))) (seqFromList!2438 lt!681970)) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (seqFromList!2438 lt!681970)))))

(declare-fun b_lambda!57233 () Bool)

(assert (=> (not b_lambda!57233) (not d!539141)))

(declare-fun tb!106461 () Bool)

(declare-fun t!164530 () Bool)

(assert (=> (and b!1763907 (= (toValue!4992 (transformation!3469 rule!422)) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164530) tb!106461))

(declare-fun result!128060 () Bool)

(assert (=> tb!106461 (= result!128060 (inv!21 (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (seqFromList!2438 lt!681970))))))

(declare-fun m!2181555 () Bool)

(assert (=> tb!106461 m!2181555))

(assert (=> d!539141 t!164530))

(declare-fun b_and!133497 () Bool)

(assert (= b_and!133455 (and (=> t!164530 result!128060) b_and!133497)))

(declare-fun t!164532 () Bool)

(declare-fun tb!106463 () Bool)

(assert (=> (and b!1763900 (= (toValue!4992 (transformation!3469 (rule!5491 token!523))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164532) tb!106463))

(declare-fun result!128062 () Bool)

(assert (= result!128062 result!128060))

(assert (=> d!539141 t!164532))

(declare-fun b_and!133499 () Bool)

(assert (= b_and!133457 (and (=> t!164532 result!128062) b_and!133499)))

(declare-fun t!164534 () Bool)

(declare-fun tb!106465 () Bool)

(assert (=> (and b!1763919 (= (toValue!4992 (transformation!3469 (h!24814 rules!3447))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164534) tb!106465))

(declare-fun result!128064 () Bool)

(assert (= result!128064 result!128060))

(assert (=> d!539141 t!164534))

(declare-fun b_and!133501 () Bool)

(assert (= b_and!133459 (and (=> t!164534 result!128064) b_and!133501)))

(assert (=> d!539141 m!2180817))

(declare-fun m!2181557 () Bool)

(assert (=> d!539141 m!2181557))

(assert (=> b!1763927 d!539141))

(declare-fun d!539143 () Bool)

(assert (=> d!539143 (= (_2!10913 lt!681967) lt!681965)))

(declare-fun lt!682202 () Unit!33599)

(declare-fun choose!10944 (List!19482 List!19482 List!19482 List!19482 List!19482) Unit!33599)

(assert (=> d!539143 (= lt!682202 (choose!10944 lt!681970 (_2!10913 lt!681967) lt!681970 lt!681965 lt!681989))))

(assert (=> d!539143 (isPrefix!1709 lt!681970 lt!681989)))

(assert (=> d!539143 (= (lemmaSamePrefixThenSameSuffix!820 lt!681970 (_2!10913 lt!681967) lt!681970 lt!681965 lt!681989) lt!682202)))

(declare-fun bs!404300 () Bool)

(assert (= bs!404300 d!539143))

(declare-fun m!2181559 () Bool)

(assert (=> bs!404300 m!2181559))

(assert (=> bs!404300 m!2180909))

(assert (=> b!1763927 d!539143))

(declare-fun d!539145 () Bool)

(declare-fun lt!682208 () List!19482)

(assert (=> d!539145 (= (++!5293 lt!681970 lt!682208) lt!681989)))

(declare-fun e!1129071 () List!19482)

(assert (=> d!539145 (= lt!682208 e!1129071)))

(declare-fun c!287494 () Bool)

(assert (=> d!539145 (= c!287494 ((_ is Cons!19412) lt!681970))))

(assert (=> d!539145 (>= (size!15423 lt!681989) (size!15423 lt!681970))))

(assert (=> d!539145 (= (getSuffix!876 lt!681989 lt!681970) lt!682208)))

(declare-fun b!1764446 () Bool)

(assert (=> b!1764446 (= e!1129071 (getSuffix!876 (tail!2639 lt!681989) (t!164503 lt!681970)))))

(declare-fun b!1764447 () Bool)

(assert (=> b!1764447 (= e!1129071 lt!681989)))

(assert (= (and d!539145 c!287494) b!1764446))

(assert (= (and d!539145 (not c!287494)) b!1764447))

(declare-fun m!2181563 () Bool)

(assert (=> d!539145 m!2181563))

(assert (=> d!539145 m!2181469))

(assert (=> d!539145 m!2180825))

(declare-fun m!2181565 () Bool)

(assert (=> b!1764446 m!2181565))

(assert (=> b!1764446 m!2181565))

(declare-fun m!2181567 () Bool)

(assert (=> b!1764446 m!2181567))

(assert (=> b!1763927 d!539145))

(declare-fun d!539149 () Bool)

(declare-fun fromListB!1114 (List!19482) BalanceConc!12858)

(assert (=> d!539149 (= (seqFromList!2438 lt!681970) (fromListB!1114 lt!681970))))

(declare-fun bs!404303 () Bool)

(assert (= bs!404303 d!539149))

(declare-fun m!2181571 () Bool)

(assert (=> bs!404303 m!2181571))

(assert (=> b!1763927 d!539149))

(declare-fun d!539153 () Bool)

(declare-fun isBalanced!2018 (Conc!6457) Bool)

(assert (=> d!539153 (= (inv!25217 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))) (isBalanced!2018 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))))))

(declare-fun bs!404305 () Bool)

(assert (= bs!404305 d!539153))

(declare-fun m!2181575 () Bool)

(assert (=> bs!404305 m!2181575))

(assert (=> tb!106425 d!539153))

(declare-fun d!539157 () Bool)

(assert (=> d!539157 (= (inv!25217 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967)))) (isBalanced!2018 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967))))))))

(declare-fun bs!404306 () Bool)

(assert (= bs!404306 d!539157))

(declare-fun m!2181577 () Bool)

(assert (=> bs!404306 m!2181577))

(assert (=> tb!106419 d!539157))

(declare-fun d!539159 () Bool)

(declare-fun isEmpty!12257 (Option!3961) Bool)

(assert (=> d!539159 (= (isDefined!3304 lt!681983) (not (isEmpty!12257 lt!681983)))))

(declare-fun bs!404307 () Bool)

(assert (= bs!404307 d!539159))

(declare-fun m!2181579 () Bool)

(assert (=> bs!404307 m!2181579))

(assert (=> b!1763925 d!539159))

(declare-fun b!1764500 () Bool)

(declare-fun e!1129102 () Option!3961)

(assert (=> b!1764500 (= e!1129102 None!3960)))

(declare-fun b!1764501 () Bool)

(declare-fun e!1129103 () Option!3961)

(assert (=> b!1764501 (= e!1129103 e!1129102)))

(declare-fun c!287507 () Bool)

(assert (=> b!1764501 (= c!287507 (and ((_ is Cons!19413) rules!3447) (not (= (tag!3839 (h!24814 rules!3447)) (tag!3839 (rule!5491 (_1!10913 lt!681967)))))))))

(declare-fun b!1764502 () Bool)

(assert (=> b!1764502 (= e!1129103 (Some!3960 (h!24814 rules!3447)))))

(declare-fun b!1764503 () Bool)

(declare-fun e!1129104 () Bool)

(declare-fun e!1129105 () Bool)

(assert (=> b!1764503 (= e!1129104 e!1129105)))

(declare-fun res!794274 () Bool)

(assert (=> b!1764503 (=> (not res!794274) (not e!1129105))))

(declare-fun lt!682224 () Option!3961)

(assert (=> b!1764503 (= res!794274 (contains!3499 rules!3447 (get!5912 lt!682224)))))

(declare-fun d!539161 () Bool)

(assert (=> d!539161 e!1129104))

(declare-fun res!794273 () Bool)

(assert (=> d!539161 (=> res!794273 e!1129104)))

(assert (=> d!539161 (= res!794273 (isEmpty!12257 lt!682224))))

(assert (=> d!539161 (= lt!682224 e!1129103)))

(declare-fun c!287506 () Bool)

(assert (=> d!539161 (= c!287506 (and ((_ is Cons!19413) rules!3447) (= (tag!3839 (h!24814 rules!3447)) (tag!3839 (rule!5491 (_1!10913 lt!681967))))))))

(assert (=> d!539161 (rulesInvariant!2767 thiss!24550 rules!3447)))

(assert (=> d!539161 (= (getRuleFromTag!517 thiss!24550 rules!3447 (tag!3839 (rule!5491 (_1!10913 lt!681967)))) lt!682224)))

(declare-fun b!1764504 () Bool)

(assert (=> b!1764504 (= e!1129105 (= (tag!3839 (get!5912 lt!682224)) (tag!3839 (rule!5491 (_1!10913 lt!681967)))))))

(declare-fun b!1764505 () Bool)

(declare-fun lt!682226 () Unit!33599)

(declare-fun lt!682225 () Unit!33599)

(assert (=> b!1764505 (= lt!682226 lt!682225)))

(assert (=> b!1764505 (rulesInvariant!2767 thiss!24550 (t!164504 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!194 (LexerInterface!3098 Rule!6738 List!19483) Unit!33599)

(assert (=> b!1764505 (= lt!682225 (lemmaInvariantOnRulesThenOnTail!194 thiss!24550 (h!24814 rules!3447) (t!164504 rules!3447)))))

(assert (=> b!1764505 (= e!1129102 (getRuleFromTag!517 thiss!24550 (t!164504 rules!3447) (tag!3839 (rule!5491 (_1!10913 lt!681967)))))))

(assert (= (and d!539161 c!287506) b!1764502))

(assert (= (and d!539161 (not c!287506)) b!1764501))

(assert (= (and b!1764501 c!287507) b!1764505))

(assert (= (and b!1764501 (not c!287507)) b!1764500))

(assert (= (and d!539161 (not res!794273)) b!1764503))

(assert (= (and b!1764503 res!794274) b!1764504))

(declare-fun m!2181615 () Bool)

(assert (=> b!1764503 m!2181615))

(assert (=> b!1764503 m!2181615))

(declare-fun m!2181617 () Bool)

(assert (=> b!1764503 m!2181617))

(declare-fun m!2181619 () Bool)

(assert (=> d!539161 m!2181619))

(assert (=> d!539161 m!2180851))

(assert (=> b!1764504 m!2181615))

(declare-fun m!2181621 () Bool)

(assert (=> b!1764505 m!2181621))

(declare-fun m!2181623 () Bool)

(assert (=> b!1764505 m!2181623))

(declare-fun m!2181625 () Bool)

(assert (=> b!1764505 m!2181625))

(assert (=> b!1763925 d!539161))

(declare-fun b!1764517 () Bool)

(declare-fun e!1129112 () Bool)

(assert (=> b!1764517 (= e!1129112 (>= (size!15423 (++!5293 lt!681970 (_2!10913 lt!681967))) (size!15423 lt!681970)))))

(declare-fun b!1764516 () Bool)

(declare-fun e!1129114 () Bool)

(assert (=> b!1764516 (= e!1129114 (isPrefix!1709 (tail!2639 lt!681970) (tail!2639 (++!5293 lt!681970 (_2!10913 lt!681967)))))))

(declare-fun d!539177 () Bool)

(assert (=> d!539177 e!1129112))

(declare-fun res!794283 () Bool)

(assert (=> d!539177 (=> res!794283 e!1129112)))

(declare-fun lt!682232 () Bool)

(assert (=> d!539177 (= res!794283 (not lt!682232))))

(declare-fun e!1129113 () Bool)

(assert (=> d!539177 (= lt!682232 e!1129113)))

(declare-fun res!794286 () Bool)

(assert (=> d!539177 (=> res!794286 e!1129113)))

(assert (=> d!539177 (= res!794286 ((_ is Nil!19412) lt!681970))))

(assert (=> d!539177 (= (isPrefix!1709 lt!681970 (++!5293 lt!681970 (_2!10913 lt!681967))) lt!682232)))

(declare-fun b!1764514 () Bool)

(assert (=> b!1764514 (= e!1129113 e!1129114)))

(declare-fun res!794284 () Bool)

(assert (=> b!1764514 (=> (not res!794284) (not e!1129114))))

(assert (=> b!1764514 (= res!794284 (not ((_ is Nil!19412) (++!5293 lt!681970 (_2!10913 lt!681967)))))))

(declare-fun b!1764515 () Bool)

(declare-fun res!794285 () Bool)

(assert (=> b!1764515 (=> (not res!794285) (not e!1129114))))

(assert (=> b!1764515 (= res!794285 (= (head!4088 lt!681970) (head!4088 (++!5293 lt!681970 (_2!10913 lt!681967)))))))

(assert (= (and d!539177 (not res!794286)) b!1764514))

(assert (= (and b!1764514 res!794284) b!1764515))

(assert (= (and b!1764515 res!794285) b!1764516))

(assert (= (and d!539177 (not res!794283)) b!1764517))

(assert (=> b!1764517 m!2180893))

(declare-fun m!2181633 () Bool)

(assert (=> b!1764517 m!2181633))

(assert (=> b!1764517 m!2180825))

(assert (=> b!1764516 m!2181391))

(assert (=> b!1764516 m!2180893))

(declare-fun m!2181635 () Bool)

(assert (=> b!1764516 m!2181635))

(assert (=> b!1764516 m!2181391))

(assert (=> b!1764516 m!2181635))

(declare-fun m!2181637 () Bool)

(assert (=> b!1764516 m!2181637))

(assert (=> b!1764515 m!2181385))

(assert (=> b!1764515 m!2180893))

(declare-fun m!2181639 () Bool)

(assert (=> b!1764515 m!2181639))

(assert (=> b!1763925 d!539177))

(declare-fun b!1764595 () Bool)

(declare-fun e!1129156 () Unit!33599)

(declare-fun Unit!33606 () Unit!33599)

(assert (=> b!1764595 (= e!1129156 Unit!33606)))

(declare-fun e!1129157 () Bool)

(declare-fun lt!682274 () Token!6504)

(declare-fun b!1764593 () Bool)

(assert (=> b!1764593 (= e!1129157 (= (rule!5491 lt!682274) (get!5912 (getRuleFromTag!517 thiss!24550 rules!3447 (tag!3839 (rule!5491 lt!682274))))))))

(declare-fun b!1764592 () Bool)

(declare-fun res!794296 () Bool)

(assert (=> b!1764592 (=> (not res!794296) (not e!1129157))))

(assert (=> b!1764592 (= res!794296 (matchR!2270 (regex!3469 (get!5912 (getRuleFromTag!517 thiss!24550 rules!3447 (tag!3839 (rule!5491 lt!682274))))) (list!7879 (charsOf!2118 lt!682274))))))

(declare-fun d!539181 () Bool)

(assert (=> d!539181 (isDefined!3303 (maxPrefix!1652 thiss!24550 rules!3447 (++!5293 lt!681966 suffix!1421)))))

(declare-fun lt!682280 () Unit!33599)

(assert (=> d!539181 (= lt!682280 e!1129156)))

(declare-fun c!287514 () Bool)

(assert (=> d!539181 (= c!287514 (isEmpty!12256 (maxPrefix!1652 thiss!24550 rules!3447 (++!5293 lt!681966 suffix!1421))))))

(declare-fun lt!682287 () Unit!33599)

(declare-fun lt!682277 () Unit!33599)

(assert (=> d!539181 (= lt!682287 lt!682277)))

(assert (=> d!539181 e!1129157))

(declare-fun res!794297 () Bool)

(assert (=> d!539181 (=> (not res!794297) (not e!1129157))))

(assert (=> d!539181 (= res!794297 (isDefined!3304 (getRuleFromTag!517 thiss!24550 rules!3447 (tag!3839 (rule!5491 lt!682274)))))))

(assert (=> d!539181 (= lt!682277 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!517 thiss!24550 rules!3447 lt!681966 lt!682274))))

(declare-fun lt!682282 () Unit!33599)

(declare-fun lt!682281 () Unit!33599)

(assert (=> d!539181 (= lt!682282 lt!682281)))

(declare-fun lt!682273 () List!19482)

(assert (=> d!539181 (isPrefix!1709 lt!682273 (++!5293 lt!681966 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!315 (List!19482 List!19482 List!19482) Unit!33599)

(assert (=> d!539181 (= lt!682281 (lemmaPrefixStaysPrefixWhenAddingToSuffix!315 lt!682273 lt!681966 suffix!1421))))

(assert (=> d!539181 (= lt!682273 (list!7879 (charsOf!2118 lt!682274)))))

(declare-fun lt!682283 () Unit!33599)

(declare-fun lt!682272 () Unit!33599)

(assert (=> d!539181 (= lt!682283 lt!682272)))

(declare-fun lt!682276 () List!19482)

(declare-fun lt!682279 () List!19482)

(assert (=> d!539181 (isPrefix!1709 lt!682276 (++!5293 lt!682276 lt!682279))))

(assert (=> d!539181 (= lt!682272 (lemmaConcatTwoListThenFirstIsPrefix!1218 lt!682276 lt!682279))))

(assert (=> d!539181 (= lt!682279 (_2!10913 (get!5913 (maxPrefix!1652 thiss!24550 rules!3447 lt!681966))))))

(assert (=> d!539181 (= lt!682276 (list!7879 (charsOf!2118 lt!682274)))))

(declare-datatypes ((List!19489 0))(
  ( (Nil!19419) (Cons!19419 (h!24820 Token!6504) (t!164570 List!19489)) )
))
(declare-fun head!4090 (List!19489) Token!6504)

(declare-datatypes ((IArray!12923 0))(
  ( (IArray!12924 (innerList!6519 List!19489)) )
))
(declare-datatypes ((Conc!6459 0))(
  ( (Node!6459 (left!15543 Conc!6459) (right!15873 Conc!6459) (csize!13148 Int) (cheight!6670 Int)) (Leaf!9414 (xs!9335 IArray!12923) (csize!13149 Int)) (Empty!6459) )
))
(declare-datatypes ((BalanceConc!12862 0))(
  ( (BalanceConc!12863 (c!287519 Conc!6459)) )
))
(declare-fun list!7883 (BalanceConc!12862) List!19489)

(declare-datatypes ((tuple2!19030 0))(
  ( (tuple2!19031 (_1!10917 BalanceConc!12862) (_2!10917 BalanceConc!12858)) )
))
(declare-fun lex!1454 (LexerInterface!3098 List!19483 BalanceConc!12858) tuple2!19030)

(assert (=> d!539181 (= lt!682274 (head!4090 (list!7883 (_1!10917 (lex!1454 thiss!24550 rules!3447 (seqFromList!2438 lt!681966))))))))

(assert (=> d!539181 (not (isEmpty!12252 rules!3447))))

(assert (=> d!539181 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!620 thiss!24550 rules!3447 lt!681966 suffix!1421) lt!682280)))

(declare-fun b!1764594 () Bool)

(declare-fun Unit!33607 () Unit!33599)

(assert (=> b!1764594 (= e!1129156 Unit!33607)))

(declare-fun lt!682288 () List!19482)

(assert (=> b!1764594 (= lt!682288 (++!5293 lt!681966 suffix!1421))))

(declare-fun lt!682284 () Unit!33599)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!323 (LexerInterface!3098 Rule!6738 List!19483 List!19482) Unit!33599)

(assert (=> b!1764594 (= lt!682284 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!323 thiss!24550 (rule!5491 lt!682274) rules!3447 lt!682288))))

(assert (=> b!1764594 (isEmpty!12256 (maxPrefixOneRule!1021 thiss!24550 (rule!5491 lt!682274) lt!682288))))

(declare-fun lt!682285 () Unit!33599)

(assert (=> b!1764594 (= lt!682285 lt!682284)))

(declare-fun lt!682286 () List!19482)

(assert (=> b!1764594 (= lt!682286 (list!7879 (charsOf!2118 lt!682274)))))

(declare-fun lt!682278 () Unit!33599)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!319 (LexerInterface!3098 Rule!6738 List!19482 List!19482) Unit!33599)

(assert (=> b!1764594 (= lt!682278 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!319 thiss!24550 (rule!5491 lt!682274) lt!682286 (++!5293 lt!681966 suffix!1421)))))

(assert (=> b!1764594 (not (matchR!2270 (regex!3469 (rule!5491 lt!682274)) lt!682286))))

(declare-fun lt!682275 () Unit!33599)

(assert (=> b!1764594 (= lt!682275 lt!682278)))

(assert (=> b!1764594 false))

(assert (= (and d!539181 res!794297) b!1764592))

(assert (= (and b!1764592 res!794296) b!1764593))

(assert (= (and d!539181 c!287514) b!1764594))

(assert (= (and d!539181 (not c!287514)) b!1764595))

(declare-fun m!2181697 () Bool)

(assert (=> b!1764593 m!2181697))

(assert (=> b!1764593 m!2181697))

(declare-fun m!2181699 () Bool)

(assert (=> b!1764593 m!2181699))

(assert (=> b!1764592 m!2181697))

(assert (=> b!1764592 m!2181699))

(assert (=> b!1764592 m!2181697))

(declare-fun m!2181701 () Bool)

(assert (=> b!1764592 m!2181701))

(declare-fun m!2181703 () Bool)

(assert (=> b!1764592 m!2181703))

(declare-fun m!2181705 () Bool)

(assert (=> b!1764592 m!2181705))

(assert (=> b!1764592 m!2181705))

(assert (=> b!1764592 m!2181701))

(assert (=> d!539181 m!2180901))

(declare-fun m!2181707 () Bool)

(assert (=> d!539181 m!2181707))

(assert (=> d!539181 m!2181697))

(declare-fun m!2181709 () Bool)

(assert (=> d!539181 m!2181709))

(assert (=> d!539181 m!2180933))

(declare-fun m!2181711 () Bool)

(assert (=> d!539181 m!2181711))

(assert (=> d!539181 m!2180829))

(assert (=> d!539181 m!2181697))

(declare-fun m!2181713 () Bool)

(assert (=> d!539181 m!2181713))

(declare-fun m!2181715 () Bool)

(assert (=> d!539181 m!2181715))

(declare-fun m!2181717 () Bool)

(assert (=> d!539181 m!2181717))

(declare-fun m!2181719 () Bool)

(assert (=> d!539181 m!2181719))

(assert (=> d!539181 m!2180901))

(declare-fun m!2181721 () Bool)

(assert (=> d!539181 m!2181721))

(declare-fun m!2181723 () Bool)

(assert (=> d!539181 m!2181723))

(assert (=> d!539181 m!2181705))

(assert (=> d!539181 m!2180933))

(declare-fun m!2181725 () Bool)

(assert (=> d!539181 m!2181725))

(assert (=> d!539181 m!2181705))

(assert (=> d!539181 m!2181701))

(assert (=> d!539181 m!2180901))

(assert (=> d!539181 m!2181713))

(assert (=> d!539181 m!2181713))

(declare-fun m!2181727 () Bool)

(assert (=> d!539181 m!2181727))

(assert (=> d!539181 m!2181707))

(declare-fun m!2181729 () Bool)

(assert (=> d!539181 m!2181729))

(assert (=> d!539181 m!2181719))

(declare-fun m!2181731 () Bool)

(assert (=> d!539181 m!2181731))

(assert (=> d!539181 m!2181723))

(declare-fun m!2181733 () Bool)

(assert (=> d!539181 m!2181733))

(declare-fun m!2181735 () Bool)

(assert (=> d!539181 m!2181735))

(declare-fun m!2181737 () Bool)

(assert (=> b!1764594 m!2181737))

(declare-fun m!2181739 () Bool)

(assert (=> b!1764594 m!2181739))

(assert (=> b!1764594 m!2180901))

(declare-fun m!2181741 () Bool)

(assert (=> b!1764594 m!2181741))

(declare-fun m!2181743 () Bool)

(assert (=> b!1764594 m!2181743))

(assert (=> b!1764594 m!2181705))

(assert (=> b!1764594 m!2181705))

(assert (=> b!1764594 m!2181701))

(assert (=> b!1764594 m!2180901))

(assert (=> b!1764594 m!2181737))

(declare-fun m!2181745 () Bool)

(assert (=> b!1764594 m!2181745))

(assert (=> b!1763925 d!539181))

(declare-fun d!539203 () Bool)

(declare-fun e!1129160 () Bool)

(assert (=> d!539203 e!1129160))

(declare-fun res!794302 () Bool)

(assert (=> d!539203 (=> (not res!794302) (not e!1129160))))

(assert (=> d!539203 (= res!794302 (isDefined!3304 (getRuleFromTag!517 thiss!24550 rules!3447 (tag!3839 (rule!5491 (_1!10913 lt!681967))))))))

(declare-fun lt!682291 () Unit!33599)

(declare-fun choose!10945 (LexerInterface!3098 List!19483 List!19482 Token!6504) Unit!33599)

(assert (=> d!539203 (= lt!682291 (choose!10945 thiss!24550 rules!3447 lt!681989 (_1!10913 lt!681967)))))

(assert (=> d!539203 (rulesInvariant!2767 thiss!24550 rules!3447)))

(assert (=> d!539203 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!517 thiss!24550 rules!3447 lt!681989 (_1!10913 lt!681967)) lt!682291)))

(declare-fun b!1764600 () Bool)

(declare-fun res!794303 () Bool)

(assert (=> b!1764600 (=> (not res!794303) (not e!1129160))))

(assert (=> b!1764600 (= res!794303 (matchR!2270 (regex!3469 (get!5912 (getRuleFromTag!517 thiss!24550 rules!3447 (tag!3839 (rule!5491 (_1!10913 lt!681967)))))) (list!7879 (charsOf!2118 (_1!10913 lt!681967)))))))

(declare-fun b!1764601 () Bool)

(assert (=> b!1764601 (= e!1129160 (= (rule!5491 (_1!10913 lt!681967)) (get!5912 (getRuleFromTag!517 thiss!24550 rules!3447 (tag!3839 (rule!5491 (_1!10913 lt!681967)))))))))

(assert (= (and d!539203 res!794302) b!1764600))

(assert (= (and b!1764600 res!794303) b!1764601))

(assert (=> d!539203 m!2180905))

(assert (=> d!539203 m!2180905))

(declare-fun m!2181747 () Bool)

(assert (=> d!539203 m!2181747))

(declare-fun m!2181749 () Bool)

(assert (=> d!539203 m!2181749))

(assert (=> d!539203 m!2180851))

(assert (=> b!1764600 m!2180887))

(declare-fun m!2181751 () Bool)

(assert (=> b!1764600 m!2181751))

(assert (=> b!1764600 m!2180905))

(assert (=> b!1764600 m!2180885))

(assert (=> b!1764600 m!2180887))

(assert (=> b!1764600 m!2180905))

(declare-fun m!2181753 () Bool)

(assert (=> b!1764600 m!2181753))

(assert (=> b!1764600 m!2180885))

(assert (=> b!1764601 m!2180905))

(assert (=> b!1764601 m!2180905))

(assert (=> b!1764601 m!2181753))

(assert (=> b!1763925 d!539203))

(declare-fun d!539205 () Bool)

(assert (=> d!539205 (isPrefix!1709 lt!681970 (++!5293 lt!681970 (_2!10913 lt!681967)))))

(declare-fun lt!682294 () Unit!33599)

(declare-fun choose!10946 (List!19482 List!19482) Unit!33599)

(assert (=> d!539205 (= lt!682294 (choose!10946 lt!681970 (_2!10913 lt!681967)))))

(assert (=> d!539205 (= (lemmaConcatTwoListThenFirstIsPrefix!1218 lt!681970 (_2!10913 lt!681967)) lt!682294)))

(declare-fun bs!404314 () Bool)

(assert (= bs!404314 d!539205))

(assert (=> bs!404314 m!2180893))

(assert (=> bs!404314 m!2180893))

(assert (=> bs!404314 m!2180917))

(declare-fun m!2181755 () Bool)

(assert (=> bs!404314 m!2181755))

(assert (=> b!1763925 d!539205))

(declare-fun b!1764604 () Bool)

(declare-fun res!794305 () Bool)

(declare-fun e!1129162 () Bool)

(assert (=> b!1764604 (=> (not res!794305) (not e!1129162))))

(declare-fun lt!682295 () List!19482)

(assert (=> b!1764604 (= res!794305 (= (size!15423 lt!682295) (+ (size!15423 lt!681966) (size!15423 suffix!1421))))))

(declare-fun b!1764605 () Bool)

(assert (=> b!1764605 (= e!1129162 (or (not (= suffix!1421 Nil!19412)) (= lt!682295 lt!681966)))))

(declare-fun b!1764603 () Bool)

(declare-fun e!1129161 () List!19482)

(assert (=> b!1764603 (= e!1129161 (Cons!19412 (h!24813 lt!681966) (++!5293 (t!164503 lt!681966) suffix!1421)))))

(declare-fun b!1764602 () Bool)

(assert (=> b!1764602 (= e!1129161 suffix!1421)))

(declare-fun d!539207 () Bool)

(assert (=> d!539207 e!1129162))

(declare-fun res!794304 () Bool)

(assert (=> d!539207 (=> (not res!794304) (not e!1129162))))

(assert (=> d!539207 (= res!794304 (= (content!2807 lt!682295) ((_ map or) (content!2807 lt!681966) (content!2807 suffix!1421))))))

(assert (=> d!539207 (= lt!682295 e!1129161)))

(declare-fun c!287515 () Bool)

(assert (=> d!539207 (= c!287515 ((_ is Nil!19412) lt!681966))))

(assert (=> d!539207 (= (++!5293 lt!681966 suffix!1421) lt!682295)))

(assert (= (and d!539207 c!287515) b!1764602))

(assert (= (and d!539207 (not c!287515)) b!1764603))

(assert (= (and d!539207 res!794304) b!1764604))

(assert (= (and b!1764604 res!794305) b!1764605))

(declare-fun m!2181757 () Bool)

(assert (=> b!1764604 m!2181757))

(assert (=> b!1764604 m!2181223))

(declare-fun m!2181759 () Bool)

(assert (=> b!1764604 m!2181759))

(declare-fun m!2181761 () Bool)

(assert (=> b!1764603 m!2181761))

(declare-fun m!2181763 () Bool)

(assert (=> d!539207 m!2181763))

(assert (=> d!539207 m!2181259))

(declare-fun m!2181765 () Bool)

(assert (=> d!539207 m!2181765))

(assert (=> b!1763925 d!539207))

(declare-fun d!539209 () Bool)

(assert (=> d!539209 (= (list!7879 lt!681975) (list!7882 (c!287395 lt!681975)))))

(declare-fun bs!404315 () Bool)

(assert (= bs!404315 d!539209))

(declare-fun m!2181767 () Bool)

(assert (=> bs!404315 m!2181767))

(assert (=> b!1763925 d!539209))

(declare-fun d!539211 () Bool)

(assert (=> d!539211 (isPrefix!1709 lt!681966 (++!5293 lt!681966 suffix!1421))))

(declare-fun lt!682296 () Unit!33599)

(assert (=> d!539211 (= lt!682296 (choose!10946 lt!681966 suffix!1421))))

(assert (=> d!539211 (= (lemmaConcatTwoListThenFirstIsPrefix!1218 lt!681966 suffix!1421) lt!682296)))

(declare-fun bs!404316 () Bool)

(assert (= bs!404316 d!539211))

(assert (=> bs!404316 m!2180901))

(assert (=> bs!404316 m!2180901))

(declare-fun m!2181769 () Bool)

(assert (=> bs!404316 m!2181769))

(declare-fun m!2181771 () Bool)

(assert (=> bs!404316 m!2181771))

(assert (=> b!1763925 d!539211))

(declare-fun b!1764609 () Bool)

(declare-fun e!1129163 () Bool)

(assert (=> b!1764609 (= e!1129163 (>= (size!15423 lt!681989) (size!15423 lt!681970)))))

(declare-fun b!1764608 () Bool)

(declare-fun e!1129165 () Bool)

(assert (=> b!1764608 (= e!1129165 (isPrefix!1709 (tail!2639 lt!681970) (tail!2639 lt!681989)))))

(declare-fun d!539213 () Bool)

(assert (=> d!539213 e!1129163))

(declare-fun res!794306 () Bool)

(assert (=> d!539213 (=> res!794306 e!1129163)))

(declare-fun lt!682297 () Bool)

(assert (=> d!539213 (= res!794306 (not lt!682297))))

(declare-fun e!1129164 () Bool)

(assert (=> d!539213 (= lt!682297 e!1129164)))

(declare-fun res!794309 () Bool)

(assert (=> d!539213 (=> res!794309 e!1129164)))

(assert (=> d!539213 (= res!794309 ((_ is Nil!19412) lt!681970))))

(assert (=> d!539213 (= (isPrefix!1709 lt!681970 lt!681989) lt!682297)))

(declare-fun b!1764606 () Bool)

(assert (=> b!1764606 (= e!1129164 e!1129165)))

(declare-fun res!794307 () Bool)

(assert (=> b!1764606 (=> (not res!794307) (not e!1129165))))

(assert (=> b!1764606 (= res!794307 (not ((_ is Nil!19412) lt!681989)))))

(declare-fun b!1764607 () Bool)

(declare-fun res!794308 () Bool)

(assert (=> b!1764607 (=> (not res!794308) (not e!1129165))))

(assert (=> b!1764607 (= res!794308 (= (head!4088 lt!681970) (head!4088 lt!681989)))))

(assert (= (and d!539213 (not res!794309)) b!1764606))

(assert (= (and b!1764606 res!794307) b!1764607))

(assert (= (and b!1764607 res!794308) b!1764608))

(assert (= (and d!539213 (not res!794306)) b!1764609))

(assert (=> b!1764609 m!2181469))

(assert (=> b!1764609 m!2180825))

(assert (=> b!1764608 m!2181391))

(assert (=> b!1764608 m!2181565))

(assert (=> b!1764608 m!2181391))

(assert (=> b!1764608 m!2181565))

(declare-fun m!2181773 () Bool)

(assert (=> b!1764608 m!2181773))

(assert (=> b!1764607 m!2181385))

(declare-fun m!2181775 () Bool)

(assert (=> b!1764607 m!2181775))

(assert (=> b!1763925 d!539213))

(assert (=> b!1763925 d!539119))

(declare-fun b!1764613 () Bool)

(declare-fun e!1129166 () Bool)

(assert (=> b!1764613 (= e!1129166 (>= (size!15423 lt!681989) (size!15423 lt!681966)))))

(declare-fun b!1764612 () Bool)

(declare-fun e!1129168 () Bool)

(assert (=> b!1764612 (= e!1129168 (isPrefix!1709 (tail!2639 lt!681966) (tail!2639 lt!681989)))))

(declare-fun d!539215 () Bool)

(assert (=> d!539215 e!1129166))

(declare-fun res!794310 () Bool)

(assert (=> d!539215 (=> res!794310 e!1129166)))

(declare-fun lt!682298 () Bool)

(assert (=> d!539215 (= res!794310 (not lt!682298))))

(declare-fun e!1129167 () Bool)

(assert (=> d!539215 (= lt!682298 e!1129167)))

(declare-fun res!794313 () Bool)

(assert (=> d!539215 (=> res!794313 e!1129167)))

(assert (=> d!539215 (= res!794313 ((_ is Nil!19412) lt!681966))))

(assert (=> d!539215 (= (isPrefix!1709 lt!681966 lt!681989) lt!682298)))

(declare-fun b!1764610 () Bool)

(assert (=> b!1764610 (= e!1129167 e!1129168)))

(declare-fun res!794311 () Bool)

(assert (=> b!1764610 (=> (not res!794311) (not e!1129168))))

(assert (=> b!1764610 (= res!794311 (not ((_ is Nil!19412) lt!681989)))))

(declare-fun b!1764611 () Bool)

(declare-fun res!794312 () Bool)

(assert (=> b!1764611 (=> (not res!794312) (not e!1129168))))

(assert (=> b!1764611 (= res!794312 (= (head!4088 lt!681966) (head!4088 lt!681989)))))

(assert (= (and d!539215 (not res!794313)) b!1764610))

(assert (= (and b!1764610 res!794311) b!1764611))

(assert (= (and b!1764611 res!794312) b!1764612))

(assert (= (and d!539215 (not res!794310)) b!1764613))

(assert (=> b!1764613 m!2181469))

(assert (=> b!1764613 m!2181223))

(assert (=> b!1764612 m!2181103))

(assert (=> b!1764612 m!2181565))

(assert (=> b!1764612 m!2181103))

(assert (=> b!1764612 m!2181565))

(declare-fun m!2181777 () Bool)

(assert (=> b!1764612 m!2181777))

(assert (=> b!1764611 m!2181099))

(assert (=> b!1764611 m!2181775))

(assert (=> b!1763925 d!539215))

(declare-fun b!1764616 () Bool)

(declare-fun res!794315 () Bool)

(declare-fun e!1129170 () Bool)

(assert (=> b!1764616 (=> (not res!794315) (not e!1129170))))

(declare-fun lt!682299 () List!19482)

(assert (=> b!1764616 (= res!794315 (= (size!15423 lt!682299) (+ (size!15423 lt!681970) (size!15423 (_2!10913 lt!681967)))))))

(declare-fun b!1764617 () Bool)

(assert (=> b!1764617 (= e!1129170 (or (not (= (_2!10913 lt!681967) Nil!19412)) (= lt!682299 lt!681970)))))

(declare-fun b!1764615 () Bool)

(declare-fun e!1129169 () List!19482)

(assert (=> b!1764615 (= e!1129169 (Cons!19412 (h!24813 lt!681970) (++!5293 (t!164503 lt!681970) (_2!10913 lt!681967))))))

(declare-fun b!1764614 () Bool)

(assert (=> b!1764614 (= e!1129169 (_2!10913 lt!681967))))

(declare-fun d!539217 () Bool)

(assert (=> d!539217 e!1129170))

(declare-fun res!794314 () Bool)

(assert (=> d!539217 (=> (not res!794314) (not e!1129170))))

(assert (=> d!539217 (= res!794314 (= (content!2807 lt!682299) ((_ map or) (content!2807 lt!681970) (content!2807 (_2!10913 lt!681967)))))))

(assert (=> d!539217 (= lt!682299 e!1129169)))

(declare-fun c!287516 () Bool)

(assert (=> d!539217 (= c!287516 ((_ is Nil!19412) lt!681970))))

(assert (=> d!539217 (= (++!5293 lt!681970 (_2!10913 lt!681967)) lt!682299)))

(assert (= (and d!539217 c!287516) b!1764614))

(assert (= (and d!539217 (not c!287516)) b!1764615))

(assert (= (and d!539217 res!794314) b!1764616))

(assert (= (and b!1764616 res!794315) b!1764617))

(declare-fun m!2181779 () Bool)

(assert (=> b!1764616 m!2181779))

(assert (=> b!1764616 m!2180825))

(declare-fun m!2181781 () Bool)

(assert (=> b!1764616 m!2181781))

(declare-fun m!2181783 () Bool)

(assert (=> b!1764615 m!2181783))

(declare-fun m!2181785 () Bool)

(assert (=> d!539217 m!2181785))

(declare-fun m!2181787 () Bool)

(assert (=> d!539217 m!2181787))

(declare-fun m!2181789 () Bool)

(assert (=> d!539217 m!2181789))

(assert (=> b!1763925 d!539217))

(declare-fun d!539219 () Bool)

(assert (=> d!539219 (= (get!5913 lt!681991) (v!25424 lt!681991))))

(assert (=> b!1763925 d!539219))

(declare-fun b!1764618 () Bool)

(declare-fun e!1129171 () Option!3960)

(declare-fun lt!682303 () Option!3960)

(declare-fun lt!682304 () Option!3960)

(assert (=> b!1764618 (= e!1129171 (ite (and ((_ is None!3959) lt!682303) ((_ is None!3959) lt!682304)) None!3959 (ite ((_ is None!3959) lt!682304) lt!682303 (ite ((_ is None!3959) lt!682303) lt!682304 (ite (>= (size!15421 (_1!10913 (v!25424 lt!682303))) (size!15421 (_1!10913 (v!25424 lt!682304)))) lt!682303 lt!682304)))))))

(declare-fun call!110836 () Option!3960)

(assert (=> b!1764618 (= lt!682303 call!110836)))

(assert (=> b!1764618 (= lt!682304 (maxPrefix!1652 thiss!24550 (t!164504 rules!3447) lt!681989))))

(declare-fun b!1764619 () Bool)

(declare-fun res!794322 () Bool)

(declare-fun e!1129173 () Bool)

(assert (=> b!1764619 (=> (not res!794322) (not e!1129173))))

(declare-fun lt!682302 () Option!3960)

(assert (=> b!1764619 (= res!794322 (matchR!2270 (regex!3469 (rule!5491 (_1!10913 (get!5913 lt!682302)))) (list!7879 (charsOf!2118 (_1!10913 (get!5913 lt!682302))))))))

(declare-fun b!1764620 () Bool)

(declare-fun res!794321 () Bool)

(assert (=> b!1764620 (=> (not res!794321) (not e!1129173))))

(assert (=> b!1764620 (= res!794321 (= (++!5293 (list!7879 (charsOf!2118 (_1!10913 (get!5913 lt!682302)))) (_2!10913 (get!5913 lt!682302))) lt!681989))))

(declare-fun b!1764621 () Bool)

(declare-fun res!794316 () Bool)

(assert (=> b!1764621 (=> (not res!794316) (not e!1129173))))

(assert (=> b!1764621 (= res!794316 (= (value!108539 (_1!10913 (get!5913 lt!682302))) (apply!5269 (transformation!3469 (rule!5491 (_1!10913 (get!5913 lt!682302)))) (seqFromList!2438 (originalCharacters!4283 (_1!10913 (get!5913 lt!682302)))))))))

(declare-fun b!1764623 () Bool)

(assert (=> b!1764623 (= e!1129173 (contains!3499 rules!3447 (rule!5491 (_1!10913 (get!5913 lt!682302)))))))

(declare-fun bm!110831 () Bool)

(assert (=> bm!110831 (= call!110836 (maxPrefixOneRule!1021 thiss!24550 (h!24814 rules!3447) lt!681989))))

(declare-fun b!1764624 () Bool)

(declare-fun res!794317 () Bool)

(assert (=> b!1764624 (=> (not res!794317) (not e!1129173))))

(assert (=> b!1764624 (= res!794317 (< (size!15423 (_2!10913 (get!5913 lt!682302))) (size!15423 lt!681989)))))

(declare-fun b!1764625 () Bool)

(declare-fun e!1129172 () Bool)

(assert (=> b!1764625 (= e!1129172 e!1129173)))

(declare-fun res!794320 () Bool)

(assert (=> b!1764625 (=> (not res!794320) (not e!1129173))))

(assert (=> b!1764625 (= res!794320 (isDefined!3303 lt!682302))))

(declare-fun b!1764626 () Bool)

(assert (=> b!1764626 (= e!1129171 call!110836)))

(declare-fun b!1764622 () Bool)

(declare-fun res!794319 () Bool)

(assert (=> b!1764622 (=> (not res!794319) (not e!1129173))))

(assert (=> b!1764622 (= res!794319 (= (list!7879 (charsOf!2118 (_1!10913 (get!5913 lt!682302)))) (originalCharacters!4283 (_1!10913 (get!5913 lt!682302)))))))

(declare-fun d!539221 () Bool)

(assert (=> d!539221 e!1129172))

(declare-fun res!794318 () Bool)

(assert (=> d!539221 (=> res!794318 e!1129172)))

(assert (=> d!539221 (= res!794318 (isEmpty!12256 lt!682302))))

(assert (=> d!539221 (= lt!682302 e!1129171)))

(declare-fun c!287517 () Bool)

(assert (=> d!539221 (= c!287517 (and ((_ is Cons!19413) rules!3447) ((_ is Nil!19413) (t!164504 rules!3447))))))

(declare-fun lt!682301 () Unit!33599)

(declare-fun lt!682300 () Unit!33599)

(assert (=> d!539221 (= lt!682301 lt!682300)))

(assert (=> d!539221 (isPrefix!1709 lt!681989 lt!681989)))

(assert (=> d!539221 (= lt!682300 (lemmaIsPrefixRefl!1131 lt!681989 lt!681989))))

(assert (=> d!539221 (rulesValidInductive!1169 thiss!24550 rules!3447)))

(assert (=> d!539221 (= (maxPrefix!1652 thiss!24550 rules!3447 lt!681989) lt!682302)))

(assert (= (and d!539221 c!287517) b!1764626))

(assert (= (and d!539221 (not c!287517)) b!1764618))

(assert (= (or b!1764626 b!1764618) bm!110831))

(assert (= (and d!539221 (not res!794318)) b!1764625))

(assert (= (and b!1764625 res!794320) b!1764622))

(assert (= (and b!1764622 res!794319) b!1764624))

(assert (= (and b!1764624 res!794317) b!1764620))

(assert (= (and b!1764620 res!794321) b!1764621))

(assert (= (and b!1764621 res!794316) b!1764619))

(assert (= (and b!1764619 res!794322) b!1764623))

(declare-fun m!2181791 () Bool)

(assert (=> b!1764618 m!2181791))

(declare-fun m!2181793 () Bool)

(assert (=> b!1764622 m!2181793))

(declare-fun m!2181795 () Bool)

(assert (=> b!1764622 m!2181795))

(assert (=> b!1764622 m!2181795))

(declare-fun m!2181797 () Bool)

(assert (=> b!1764622 m!2181797))

(assert (=> b!1764621 m!2181793))

(declare-fun m!2181799 () Bool)

(assert (=> b!1764621 m!2181799))

(assert (=> b!1764621 m!2181799))

(declare-fun m!2181801 () Bool)

(assert (=> b!1764621 m!2181801))

(assert (=> b!1764619 m!2181793))

(assert (=> b!1764619 m!2181795))

(assert (=> b!1764619 m!2181795))

(assert (=> b!1764619 m!2181797))

(assert (=> b!1764619 m!2181797))

(declare-fun m!2181803 () Bool)

(assert (=> b!1764619 m!2181803))

(declare-fun m!2181805 () Bool)

(assert (=> bm!110831 m!2181805))

(assert (=> b!1764620 m!2181793))

(assert (=> b!1764620 m!2181795))

(assert (=> b!1764620 m!2181795))

(assert (=> b!1764620 m!2181797))

(assert (=> b!1764620 m!2181797))

(declare-fun m!2181807 () Bool)

(assert (=> b!1764620 m!2181807))

(declare-fun m!2181809 () Bool)

(assert (=> d!539221 m!2181809))

(declare-fun m!2181811 () Bool)

(assert (=> d!539221 m!2181811))

(declare-fun m!2181813 () Bool)

(assert (=> d!539221 m!2181813))

(assert (=> d!539221 m!2181219))

(assert (=> b!1764624 m!2181793))

(declare-fun m!2181815 () Bool)

(assert (=> b!1764624 m!2181815))

(assert (=> b!1764624 m!2181469))

(declare-fun m!2181817 () Bool)

(assert (=> b!1764625 m!2181817))

(assert (=> b!1764623 m!2181793))

(declare-fun m!2181819 () Bool)

(assert (=> b!1764623 m!2181819))

(assert (=> b!1763925 d!539221))

(declare-fun d!539223 () Bool)

(declare-fun lt!682305 () Int)

(assert (=> d!539223 (= lt!682305 (size!15423 (list!7879 lt!681975)))))

(assert (=> d!539223 (= lt!682305 (size!15425 (c!287395 lt!681975)))))

(assert (=> d!539223 (= (size!15422 lt!681975) lt!682305)))

(declare-fun bs!404317 () Bool)

(assert (= bs!404317 d!539223))

(assert (=> bs!404317 m!2180915))

(assert (=> bs!404317 m!2180915))

(declare-fun m!2181821 () Bool)

(assert (=> bs!404317 m!2181821))

(declare-fun m!2181823 () Bool)

(assert (=> bs!404317 m!2181823))

(assert (=> b!1763904 d!539223))

(declare-fun d!539225 () Bool)

(assert (=> d!539225 (= (size!15421 (_1!10913 lt!681967)) (size!15423 (originalCharacters!4283 (_1!10913 lt!681967))))))

(declare-fun Unit!33608 () Unit!33599)

(assert (=> d!539225 (= (lemmaCharactersSize!527 (_1!10913 lt!681967)) Unit!33608)))

(declare-fun bs!404318 () Bool)

(assert (= bs!404318 d!539225))

(declare-fun m!2181825 () Bool)

(assert (=> bs!404318 m!2181825))

(assert (=> b!1763904 d!539225))

(declare-fun b!1764633 () Bool)

(declare-fun e!1129178 () Bool)

(assert (=> b!1764633 (= e!1129178 true)))

(declare-fun d!539227 () Bool)

(assert (=> d!539227 e!1129178))

(assert (= d!539227 b!1764633))

(declare-fun order!12335 () Int)

(declare-fun lambda!70260 () Int)

(declare-fun dynLambda!9375 (Int Int) Int)

(assert (=> b!1764633 (< (dynLambda!9369 order!12327 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) (dynLambda!9375 order!12335 lambda!70260))))

(assert (=> b!1764633 (< (dynLambda!9371 order!12331 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) (dynLambda!9375 order!12335 lambda!70260))))

(assert (=> d!539227 (= (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (seqFromList!2438 (originalCharacters!4283 (_1!10913 lt!681967)))))))

(declare-fun lt!682308 () Unit!33599)

(declare-fun Forall2of!127 (Int BalanceConc!12858 BalanceConc!12858) Unit!33599)

(assert (=> d!539227 (= lt!682308 (Forall2of!127 lambda!70260 lt!681975 (seqFromList!2438 (originalCharacters!4283 (_1!10913 lt!681967)))))))

(assert (=> d!539227 (= (list!7879 lt!681975) (list!7879 (seqFromList!2438 (originalCharacters!4283 (_1!10913 lt!681967)))))))

(assert (=> d!539227 (= (lemmaEqSameImage!380 (transformation!3469 (rule!5491 (_1!10913 lt!681967))) lt!681975 (seqFromList!2438 (originalCharacters!4283 (_1!10913 lt!681967)))) lt!682308)))

(declare-fun b_lambda!57245 () Bool)

(assert (=> (not b_lambda!57245) (not d!539227)))

(assert (=> d!539227 t!164497))

(declare-fun b_and!133507 () Bool)

(assert (= b_and!133497 (and (=> t!164497 result!128028) b_and!133507)))

(assert (=> d!539227 t!164499))

(declare-fun b_and!133509 () Bool)

(assert (= b_and!133499 (and (=> t!164499 result!128032) b_and!133509)))

(assert (=> d!539227 t!164501))

(declare-fun b_and!133511 () Bool)

(assert (= b_and!133501 (and (=> t!164501 result!128034) b_and!133511)))

(declare-fun b_lambda!57247 () Bool)

(assert (=> (not b_lambda!57247) (not d!539227)))

(declare-fun t!164549 () Bool)

(declare-fun tb!106479 () Bool)

(assert (=> (and b!1763907 (= (toValue!4992 (transformation!3469 rule!422)) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164549) tb!106479))

(declare-fun result!128086 () Bool)

(assert (=> tb!106479 (= result!128086 (inv!21 (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (seqFromList!2438 (originalCharacters!4283 (_1!10913 lt!681967))))))))

(declare-fun m!2181827 () Bool)

(assert (=> tb!106479 m!2181827))

(assert (=> d!539227 t!164549))

(declare-fun b_and!133513 () Bool)

(assert (= b_and!133507 (and (=> t!164549 result!128086) b_and!133513)))

(declare-fun t!164551 () Bool)

(declare-fun tb!106481 () Bool)

(assert (=> (and b!1763900 (= (toValue!4992 (transformation!3469 (rule!5491 token!523))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164551) tb!106481))

(declare-fun result!128088 () Bool)

(assert (= result!128088 result!128086))

(assert (=> d!539227 t!164551))

(declare-fun b_and!133515 () Bool)

(assert (= b_and!133509 (and (=> t!164551 result!128088) b_and!133515)))

(declare-fun tb!106483 () Bool)

(declare-fun t!164553 () Bool)

(assert (=> (and b!1763919 (= (toValue!4992 (transformation!3469 (h!24814 rules!3447))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164553) tb!106483))

(declare-fun result!128090 () Bool)

(assert (= result!128090 result!128086))

(assert (=> d!539227 t!164553))

(declare-fun b_and!133517 () Bool)

(assert (= b_and!133511 (and (=> t!164553 result!128090) b_and!133517)))

(assert (=> d!539227 m!2180923))

(declare-fun m!2181829 () Bool)

(assert (=> d!539227 m!2181829))

(assert (=> d!539227 m!2180923))

(declare-fun m!2181831 () Bool)

(assert (=> d!539227 m!2181831))

(assert (=> d!539227 m!2180877))

(assert (=> d!539227 m!2180915))

(assert (=> d!539227 m!2180923))

(declare-fun m!2181833 () Bool)

(assert (=> d!539227 m!2181833))

(assert (=> b!1763904 d!539227))

(declare-fun d!539229 () Bool)

(assert (=> d!539229 (= (apply!5269 (transformation!3469 (rule!5491 (_1!10913 lt!681967))) lt!681975) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))))

(declare-fun b_lambda!57249 () Bool)

(assert (=> (not b_lambda!57249) (not d!539229)))

(assert (=> d!539229 t!164497))

(declare-fun b_and!133519 () Bool)

(assert (= b_and!133513 (and (=> t!164497 result!128028) b_and!133519)))

(assert (=> d!539229 t!164499))

(declare-fun b_and!133521 () Bool)

(assert (= b_and!133515 (and (=> t!164499 result!128032) b_and!133521)))

(assert (=> d!539229 t!164501))

(declare-fun b_and!133523 () Bool)

(assert (= b_and!133517 (and (=> t!164501 result!128034) b_and!133523)))

(assert (=> d!539229 m!2180877))

(assert (=> b!1763904 d!539229))

(declare-fun d!539231 () Bool)

(assert (=> d!539231 (= (seqFromList!2438 (originalCharacters!4283 (_1!10913 lt!681967))) (fromListB!1114 (originalCharacters!4283 (_1!10913 lt!681967))))))

(declare-fun bs!404319 () Bool)

(assert (= bs!404319 d!539231))

(declare-fun m!2181835 () Bool)

(assert (=> bs!404319 m!2181835))

(assert (=> b!1763904 d!539231))

(declare-fun b!1764644 () Bool)

(declare-fun b_free!48783 () Bool)

(declare-fun b_next!49487 () Bool)

(assert (=> b!1764644 (= b_free!48783 (not b_next!49487))))

(declare-fun t!164555 () Bool)

(declare-fun tb!106485 () Bool)

(assert (=> (and b!1764644 (= (toValue!4992 (transformation!3469 (h!24814 (t!164504 rules!3447)))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164555) tb!106485))

(declare-fun result!128094 () Bool)

(assert (= result!128094 result!128060))

(assert (=> d!539141 t!164555))

(declare-fun t!164557 () Bool)

(declare-fun tb!106487 () Bool)

(assert (=> (and b!1764644 (= (toValue!4992 (transformation!3469 (h!24814 (t!164504 rules!3447)))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164557) tb!106487))

(declare-fun result!128096 () Bool)

(assert (= result!128096 result!128028))

(assert (=> d!539229 t!164557))

(assert (=> d!539227 t!164557))

(declare-fun t!164559 () Bool)

(declare-fun tb!106489 () Bool)

(assert (=> (and b!1764644 (= (toValue!4992 (transformation!3469 (h!24814 (t!164504 rules!3447)))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164559) tb!106489))

(declare-fun result!128098 () Bool)

(assert (= result!128098 result!128086))

(assert (=> d!539227 t!164559))

(assert (=> d!539041 t!164557))

(assert (=> b!1763913 t!164557))

(declare-fun tp!500894 () Bool)

(declare-fun b_and!133525 () Bool)

(assert (=> b!1764644 (= tp!500894 (and (=> t!164557 result!128096) (=> t!164555 result!128094) (=> t!164559 result!128098) b_and!133525))))

(declare-fun b_free!48785 () Bool)

(declare-fun b_next!49489 () Bool)

(assert (=> b!1764644 (= b_free!48785 (not b_next!49489))))

(declare-fun tb!106491 () Bool)

(declare-fun t!164561 () Bool)

(assert (=> (and b!1764644 (= (toChars!4851 (transformation!3469 (h!24814 (t!164504 rules!3447)))) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164561) tb!106491))

(declare-fun result!128100 () Bool)

(assert (= result!128100 result!128022))

(assert (=> d!539041 t!164561))

(declare-fun t!164563 () Bool)

(declare-fun tb!106493 () Bool)

(assert (=> (and b!1764644 (= (toChars!4851 (transformation!3469 (h!24814 (t!164504 rules!3447)))) (toChars!4851 (transformation!3469 (rule!5491 token!523)))) t!164563) tb!106493))

(declare-fun result!128102 () Bool)

(assert (= result!128102 result!128042))

(assert (=> b!1764287 t!164563))

(declare-fun tb!106495 () Bool)

(declare-fun t!164565 () Bool)

(assert (=> (and b!1764644 (= (toChars!4851 (transformation!3469 (h!24814 (t!164504 rules!3447)))) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967))))) t!164565) tb!106495))

(declare-fun result!128104 () Bool)

(assert (= result!128104 result!128014))

(assert (=> d!539119 t!164565))

(assert (=> b!1763899 t!164565))

(assert (=> d!539061 t!164563))

(assert (=> b!1763913 t!164561))

(declare-fun b_and!133527 () Bool)

(declare-fun tp!500896 () Bool)

(assert (=> b!1764644 (= tp!500896 (and (=> t!164561 result!128100) (=> t!164565 result!128104) (=> t!164563 result!128102) b_and!133527))))

(declare-fun e!1129188 () Bool)

(assert (=> b!1764644 (= e!1129188 (and tp!500894 tp!500896))))

(declare-fun b!1764643 () Bool)

(declare-fun e!1129190 () Bool)

(declare-fun tp!500897 () Bool)

(assert (=> b!1764643 (= e!1129190 (and tp!500897 (inv!25209 (tag!3839 (h!24814 (t!164504 rules!3447)))) (inv!25215 (transformation!3469 (h!24814 (t!164504 rules!3447)))) e!1129188))))

(declare-fun b!1764642 () Bool)

(declare-fun e!1129191 () Bool)

(declare-fun tp!500895 () Bool)

(assert (=> b!1764642 (= e!1129191 (and e!1129190 tp!500895))))

(assert (=> b!1763924 (= tp!500821 e!1129191)))

(assert (= b!1764643 b!1764644))

(assert (= b!1764642 b!1764643))

(assert (= (and b!1763924 ((_ is Cons!19413) (t!164504 rules!3447))) b!1764642))

(declare-fun m!2181837 () Bool)

(assert (=> b!1764643 m!2181837))

(declare-fun m!2181839 () Bool)

(assert (=> b!1764643 m!2181839))

(declare-fun b!1764649 () Bool)

(declare-fun e!1129194 () Bool)

(declare-fun tp!500900 () Bool)

(assert (=> b!1764649 (= e!1129194 (and tp_is_empty!7837 tp!500900))))

(assert (=> b!1763926 (= tp!500822 e!1129194)))

(assert (= (and b!1763926 ((_ is Cons!19412) (originalCharacters!4283 token!523))) b!1764649))

(declare-fun e!1129197 () Bool)

(assert (=> b!1763916 (= tp!500820 e!1129197)))

(declare-fun b!1764661 () Bool)

(declare-fun tp!500915 () Bool)

(declare-fun tp!500911 () Bool)

(assert (=> b!1764661 (= e!1129197 (and tp!500915 tp!500911))))

(declare-fun b!1764662 () Bool)

(declare-fun tp!500914 () Bool)

(assert (=> b!1764662 (= e!1129197 tp!500914)))

(declare-fun b!1764663 () Bool)

(declare-fun tp!500913 () Bool)

(declare-fun tp!500912 () Bool)

(assert (=> b!1764663 (= e!1129197 (and tp!500913 tp!500912))))

(declare-fun b!1764660 () Bool)

(assert (=> b!1764660 (= e!1129197 tp_is_empty!7837)))

(assert (= (and b!1763916 ((_ is ElementMatch!4797) (regex!3469 (rule!5491 token!523)))) b!1764660))

(assert (= (and b!1763916 ((_ is Concat!8357) (regex!3469 (rule!5491 token!523)))) b!1764661))

(assert (= (and b!1763916 ((_ is Star!4797) (regex!3469 (rule!5491 token!523)))) b!1764662))

(assert (= (and b!1763916 ((_ is Union!4797) (regex!3469 (rule!5491 token!523)))) b!1764663))

(declare-fun tp!500923 () Bool)

(declare-fun b!1764672 () Bool)

(declare-fun e!1129202 () Bool)

(declare-fun tp!500924 () Bool)

(assert (=> b!1764672 (= e!1129202 (and (inv!25216 (left!15541 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))))) tp!500923 (inv!25216 (right!15871 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))))) tp!500924))))

(declare-fun b!1764674 () Bool)

(declare-fun e!1129203 () Bool)

(declare-fun tp!500922 () Bool)

(assert (=> b!1764674 (= e!1129203 tp!500922)))

(declare-fun b!1764673 () Bool)

(declare-fun inv!25223 (IArray!12919) Bool)

(assert (=> b!1764673 (= e!1129202 (and (inv!25223 (xs!9333 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))))) e!1129203))))

(assert (=> b!1763944 (= tp!500830 (and (inv!25216 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975)))) e!1129202))))

(assert (= (and b!1763944 ((_ is Node!6457) (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))))) b!1764672))

(assert (= b!1764673 b!1764674))

(assert (= (and b!1763944 ((_ is Leaf!9412) (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (dynLambda!9373 (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) lt!681975))))) b!1764673))

(declare-fun m!2181841 () Bool)

(assert (=> b!1764672 m!2181841))

(declare-fun m!2181843 () Bool)

(assert (=> b!1764672 m!2181843))

(declare-fun m!2181845 () Bool)

(assert (=> b!1764673 m!2181845))

(assert (=> b!1763944 m!2180801))

(declare-fun e!1129204 () Bool)

(assert (=> b!1763911 (= tp!500825 e!1129204)))

(declare-fun b!1764676 () Bool)

(declare-fun tp!500929 () Bool)

(declare-fun tp!500925 () Bool)

(assert (=> b!1764676 (= e!1129204 (and tp!500929 tp!500925))))

(declare-fun b!1764677 () Bool)

(declare-fun tp!500928 () Bool)

(assert (=> b!1764677 (= e!1129204 tp!500928)))

(declare-fun b!1764678 () Bool)

(declare-fun tp!500927 () Bool)

(declare-fun tp!500926 () Bool)

(assert (=> b!1764678 (= e!1129204 (and tp!500927 tp!500926))))

(declare-fun b!1764675 () Bool)

(assert (=> b!1764675 (= e!1129204 tp_is_empty!7837)))

(assert (= (and b!1763911 ((_ is ElementMatch!4797) (regex!3469 (h!24814 rules!3447)))) b!1764675))

(assert (= (and b!1763911 ((_ is Concat!8357) (regex!3469 (h!24814 rules!3447)))) b!1764676))

(assert (= (and b!1763911 ((_ is Star!4797) (regex!3469 (h!24814 rules!3447)))) b!1764677))

(assert (= (and b!1763911 ((_ is Union!4797) (regex!3469 (h!24814 rules!3447)))) b!1764678))

(declare-fun b!1764679 () Bool)

(declare-fun e!1129205 () Bool)

(declare-fun tp!500930 () Bool)

(assert (=> b!1764679 (= e!1129205 (and tp_is_empty!7837 tp!500930))))

(assert (=> b!1763914 (= tp!500815 e!1129205)))

(assert (= (and b!1763914 ((_ is Cons!19412) (t!164503 suffix!1421))) b!1764679))

(declare-fun e!1129206 () Bool)

(assert (=> b!1763920 (= tp!500816 e!1129206)))

(declare-fun b!1764681 () Bool)

(declare-fun tp!500935 () Bool)

(declare-fun tp!500931 () Bool)

(assert (=> b!1764681 (= e!1129206 (and tp!500935 tp!500931))))

(declare-fun b!1764682 () Bool)

(declare-fun tp!500934 () Bool)

(assert (=> b!1764682 (= e!1129206 tp!500934)))

(declare-fun b!1764683 () Bool)

(declare-fun tp!500933 () Bool)

(declare-fun tp!500932 () Bool)

(assert (=> b!1764683 (= e!1129206 (and tp!500933 tp!500932))))

(declare-fun b!1764680 () Bool)

(assert (=> b!1764680 (= e!1129206 tp_is_empty!7837)))

(assert (= (and b!1763920 ((_ is ElementMatch!4797) (regex!3469 rule!422))) b!1764680))

(assert (= (and b!1763920 ((_ is Concat!8357) (regex!3469 rule!422))) b!1764681))

(assert (= (and b!1763920 ((_ is Star!4797) (regex!3469 rule!422))) b!1764682))

(assert (= (and b!1763920 ((_ is Union!4797) (regex!3469 rule!422))) b!1764683))

(declare-fun tp!500938 () Bool)

(declare-fun e!1129207 () Bool)

(declare-fun b!1764684 () Bool)

(declare-fun tp!500937 () Bool)

(assert (=> b!1764684 (= e!1129207 (and (inv!25216 (left!15541 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967)))))) tp!500937 (inv!25216 (right!15871 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967)))))) tp!500938))))

(declare-fun b!1764686 () Bool)

(declare-fun e!1129208 () Bool)

(declare-fun tp!500936 () Bool)

(assert (=> b!1764686 (= e!1129208 tp!500936)))

(declare-fun b!1764685 () Bool)

(assert (=> b!1764685 (= e!1129207 (and (inv!25223 (xs!9333 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967)))))) e!1129208))))

(assert (=> b!1763943 (= tp!500829 (and (inv!25216 (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967))))) e!1129207))))

(assert (= (and b!1763943 ((_ is Node!6457) (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967)))))) b!1764684))

(assert (= b!1764685 b!1764686))

(assert (= (and b!1763943 ((_ is Leaf!9412) (c!287395 (dynLambda!9372 (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))) (value!108539 (_1!10913 lt!681967)))))) b!1764685))

(declare-fun m!2181847 () Bool)

(assert (=> b!1764684 m!2181847))

(declare-fun m!2181849 () Bool)

(assert (=> b!1764684 m!2181849))

(declare-fun m!2181851 () Bool)

(assert (=> b!1764685 m!2181851))

(assert (=> b!1763943 m!2180797))

(declare-fun b_lambda!57251 () Bool)

(assert (= b_lambda!57201 (or (and b!1763907 b_free!48769 (= (toChars!4851 (transformation!3469 rule!422)) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))) (and b!1763900 b_free!48773 (= (toChars!4851 (transformation!3469 (rule!5491 token!523))) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))) (and b!1763919 b_free!48777 (= (toChars!4851 (transformation!3469 (h!24814 rules!3447))) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))) (and b!1764644 b_free!48785 (= (toChars!4851 (transformation!3469 (h!24814 (t!164504 rules!3447)))) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))) b_lambda!57251)))

(declare-fun b_lambda!57253 () Bool)

(assert (= b_lambda!57223 (or (and b!1763907 b_free!48769 (= (toChars!4851 (transformation!3469 rule!422)) (toChars!4851 (transformation!3469 (rule!5491 token!523))))) (and b!1763900 b_free!48773) (and b!1763919 b_free!48777 (= (toChars!4851 (transformation!3469 (h!24814 rules!3447))) (toChars!4851 (transformation!3469 (rule!5491 token!523))))) (and b!1764644 b_free!48785 (= (toChars!4851 (transformation!3469 (h!24814 (t!164504 rules!3447)))) (toChars!4851 (transformation!3469 (rule!5491 token!523))))) b_lambda!57253)))

(declare-fun b_lambda!57255 () Bool)

(assert (= b_lambda!57221 (or (and b!1763907 b_free!48769 (= (toChars!4851 (transformation!3469 rule!422)) (toChars!4851 (transformation!3469 (rule!5491 token!523))))) (and b!1763900 b_free!48773) (and b!1763919 b_free!48777 (= (toChars!4851 (transformation!3469 (h!24814 rules!3447))) (toChars!4851 (transformation!3469 (rule!5491 token!523))))) (and b!1764644 b_free!48785 (= (toChars!4851 (transformation!3469 (h!24814 (t!164504 rules!3447)))) (toChars!4851 (transformation!3469 (rule!5491 token!523))))) b_lambda!57255)))

(declare-fun b_lambda!57257 () Bool)

(assert (= b_lambda!57199 (or (and b!1763907 b_free!48769 (= (toChars!4851 (transformation!3469 rule!422)) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))) (and b!1763900 b_free!48773 (= (toChars!4851 (transformation!3469 (rule!5491 token!523))) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))) (and b!1763919 b_free!48777 (= (toChars!4851 (transformation!3469 (h!24814 rules!3447))) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))) (and b!1764644 b_free!48785 (= (toChars!4851 (transformation!3469 (h!24814 (t!164504 rules!3447)))) (toChars!4851 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))) b_lambda!57257)))

(declare-fun b_lambda!57259 () Bool)

(assert (= b_lambda!57203 (or (and b!1763907 b_free!48767 (= (toValue!4992 (transformation!3469 rule!422)) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))) (and b!1763900 b_free!48771 (= (toValue!4992 (transformation!3469 (rule!5491 token!523))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))) (and b!1763919 b_free!48775 (= (toValue!4992 (transformation!3469 (h!24814 rules!3447))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))) (and b!1764644 b_free!48783 (= (toValue!4992 (transformation!3469 (h!24814 (t!164504 rules!3447)))) (toValue!4992 (transformation!3469 (rule!5491 (_1!10913 lt!681967)))))) b_lambda!57259)))

(check-sat (not b!1764355) (not b!1764612) (not d!539123) (not b!1764109) (not b!1764624) (not b!1764608) (not tb!106443) (not d!539203) (not bm!110818) (not b_lambda!57259) (not b!1764682) (not b!1764342) (not b!1764143) (not d!539225) (not b_lambda!57253) (not d!539049) (not d!539221) (not b!1764613) (not b!1764295) (not b!1764296) (not b!1764679) (not b!1764517) (not d!539089) b_and!133527 (not b_lambda!57247) (not b!1764618) (not b!1764677) (not b!1764446) (not b!1764609) (not b!1764288) (not b!1764270) b_and!133519 (not b!1764142) (not b!1763943) (not bm!110828) (not b!1763944) (not b!1764503) (not b!1764334) (not b!1764621) (not b!1764623) (not b!1764339) (not b!1764311) (not b!1764329) (not d!539181) (not b!1764269) (not b_next!49479) (not b!1764504) (not b!1764418) (not d!539025) (not b!1764335) (not b!1764676) (not d!539017) (not b!1764337) (not d!539159) (not b!1764593) (not d!539071) (not b!1764515) (not d!539061) (not d!539145) (not d!539205) b_and!133481 (not b!1764345) (not d!539103) (not b!1764215) (not d!539105) (not b!1764683) (not d!539209) (not d!539093) (not b!1764150) b_and!133483 (not b!1764164) (not d!539059) (not b!1764607) b_and!133479 (not b!1764516) (not b!1764169) (not b!1764219) (not b!1764681) (not b!1764304) (not b!1764138) (not b!1764642) (not d!539223) (not bm!110821) (not b!1764306) (not d!539129) (not b_lambda!57217) (not b!1764661) (not d!539113) (not b!1764348) (not d!539097) (not b!1764505) (not d!539027) (not d!539117) (not b!1764357) (not d!539051) (not b!1764147) (not b!1764177) (not b!1764686) (not d!539231) (not b!1764218) (not b!1764592) (not b!1764214) (not b!1764344) (not b_next!49487) (not b!1764362) (not b!1764673) (not d!539035) (not b!1764684) (not bm!110831) (not b!1764359) (not tb!106461) (not b!1764178) (not b!1764416) (not b!1764287) (not d!539079) (not b!1764604) (not b!1764213) (not b!1764145) (not b!1764441) b_and!133525 (not b_lambda!57251) (not b!1764216) (not b!1764239) (not b!1764419) (not b!1764412) (not b!1764662) (not b!1764350) (not b!1764238) (not b!1764228) (not d!539211) (not b!1764622) (not b!1764299) (not d!539043) (not d!539161) (not b_next!49475) (not b_lambda!57257) (not b!1764601) (not b_lambda!57245) (not b!1764220) b_and!133523 (not b!1764166) (not d!539157) (not b!1764663) (not d!539217) (not d!539077) (not d!539047) (not b!1764294) (not b!1764156) (not d!539227) (not b!1764616) (not d!539029) (not b!1764674) (not b!1764227) (not d!539095) (not b!1764625) tp_is_empty!7837 (not b!1764273) (not b!1764615) (not b!1764413) (not b!1764643) (not d!539067) (not d!539021) b_and!133521 (not b!1764678) (not b!1764330) (not b!1764603) (not bm!110827) (not d!539039) (not d!539143) (not d!539041) (not bm!110825) (not b!1764611) (not d!539207) (not b!1764672) (not b_lambda!57233) (not b!1764594) (not b!1764619) (not b_lambda!57249) (not d!539149) (not b!1764649) (not b_next!49477) (not d!539065) (not b!1764417) (not b_lambda!57255) (not b!1764303) (not b!1764222) (not b!1764620) (not b!1764414) (not b!1764420) (not d!539153) (not tb!106479) (not b!1764298) (not b!1764354) (not b_next!49473) (not b!1764600) (not b_next!49471) (not b!1764308) (not b!1764685) (not b_next!49481) (not b_next!49489) (not b_lambda!57227) (not b!1764217) (not d!539119) (not b_lambda!57219))
(check-sat b_and!133527 b_and!133519 (not b_next!49479) b_and!133481 b_and!133483 b_and!133479 (not b_next!49487) b_and!133525 (not b_next!49475) b_and!133523 b_and!133521 (not b_next!49477) (not b_next!49473) (not b_next!49489) (not b_next!49471) (not b_next!49481))
