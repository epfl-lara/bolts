; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374352 () Bool)

(assert start!374352)

(declare-fun b!3977298 () Bool)

(declare-fun b_free!110337 () Bool)

(declare-fun b_next!111041 () Bool)

(assert (=> b!3977298 (= b_free!110337 (not b_next!111041))))

(declare-fun tp!1212657 () Bool)

(declare-fun b_and!305727 () Bool)

(assert (=> b!3977298 (= tp!1212657 b_and!305727)))

(declare-fun b_free!110339 () Bool)

(declare-fun b_next!111043 () Bool)

(assert (=> b!3977298 (= b_free!110339 (not b_next!111043))))

(declare-fun tp!1212650 () Bool)

(declare-fun b_and!305729 () Bool)

(assert (=> b!3977298 (= tp!1212650 b_and!305729)))

(declare-fun b!3977278 () Bool)

(declare-fun b_free!110341 () Bool)

(declare-fun b_next!111045 () Bool)

(assert (=> b!3977278 (= b_free!110341 (not b_next!111045))))

(declare-fun tp!1212658 () Bool)

(declare-fun b_and!305731 () Bool)

(assert (=> b!3977278 (= tp!1212658 b_and!305731)))

(declare-fun b_free!110343 () Bool)

(declare-fun b_next!111047 () Bool)

(assert (=> b!3977278 (= b_free!110343 (not b_next!111047))))

(declare-fun tp!1212651 () Bool)

(declare-fun b_and!305733 () Bool)

(assert (=> b!3977278 (= tp!1212651 b_and!305733)))

(declare-fun b!3977265 () Bool)

(declare-fun e!2464391 () Bool)

(declare-fun tp_is_empty!20185 () Bool)

(declare-fun tp!1212652 () Bool)

(assert (=> b!3977265 (= e!2464391 (and tp_is_empty!20185 tp!1212652))))

(declare-fun b!3977266 () Bool)

(declare-fun e!2464404 () Bool)

(declare-fun e!2464403 () Bool)

(assert (=> b!3977266 (= e!2464404 e!2464403)))

(declare-fun res!1611067 () Bool)

(assert (=> b!3977266 (=> (not res!1611067) (not e!2464403))))

(declare-datatypes ((C!23400 0))(
  ( (C!23401 (val!13794 Int)) )
))
(declare-datatypes ((List!42626 0))(
  ( (Nil!42502) (Cons!42502 (h!47922 C!23400) (t!331137 List!42626)) )
))
(declare-fun lt!1395100 () List!42626)

(declare-fun lt!1395114 () List!42626)

(assert (=> b!3977266 (= res!1611067 (= lt!1395100 lt!1395114))))

(declare-fun prefix!494 () List!42626)

(declare-fun newSuffix!27 () List!42626)

(declare-fun ++!11104 (List!42626 List!42626) List!42626)

(assert (=> b!3977266 (= lt!1395114 (++!11104 prefix!494 newSuffix!27))))

(declare-fun lt!1395093 () List!42626)

(declare-fun newSuffixResult!27 () List!42626)

(assert (=> b!3977266 (= lt!1395100 (++!11104 lt!1395093 newSuffixResult!27))))

(declare-fun b!3977267 () Bool)

(declare-fun e!2464414 () Bool)

(declare-fun tp!1212653 () Bool)

(assert (=> b!3977267 (= e!2464414 (and tp_is_empty!20185 tp!1212653))))

(declare-fun b!3977268 () Bool)

(declare-fun e!2464406 () Bool)

(declare-fun e!2464399 () Bool)

(assert (=> b!3977268 (= e!2464406 e!2464399)))

(declare-fun res!1611054 () Bool)

(assert (=> b!3977268 (=> res!1611054 e!2464399)))

(declare-datatypes ((IArray!25831 0))(
  ( (IArray!25832 (innerList!12973 List!42626)) )
))
(declare-datatypes ((Conc!12913 0))(
  ( (Node!12913 (left!32162 Conc!12913) (right!32492 Conc!12913) (csize!26056 Int) (cheight!13124 Int)) (Leaf!19971 (xs!16219 IArray!25831) (csize!26057 Int)) (Empty!12913) )
))
(declare-datatypes ((BalanceConc!25420 0))(
  ( (BalanceConc!25421 (c!689348 Conc!12913)) )
))
(declare-datatypes ((List!42627 0))(
  ( (Nil!42503) (Cons!42503 (h!47923 (_ BitVec 16)) (t!331138 List!42627)) )
))
(declare-datatypes ((TokenValue!6932 0))(
  ( (FloatLiteralValue!13864 (text!48969 List!42627)) (TokenValueExt!6931 (__x!26081 Int)) (Broken!34660 (value!211615 List!42627)) (Object!7055) (End!6932) (Def!6932) (Underscore!6932) (Match!6932) (Else!6932) (Error!6932) (Case!6932) (If!6932) (Extends!6932) (Abstract!6932) (Class!6932) (Val!6932) (DelimiterValue!13864 (del!6992 List!42627)) (KeywordValue!6938 (value!211616 List!42627)) (CommentValue!13864 (value!211617 List!42627)) (WhitespaceValue!13864 (value!211618 List!42627)) (IndentationValue!6932 (value!211619 List!42627)) (String!48377) (Int32!6932) (Broken!34661 (value!211620 List!42627)) (Boolean!6933) (Unit!61152) (OperatorValue!6935 (op!6992 List!42627)) (IdentifierValue!13864 (value!211621 List!42627)) (IdentifierValue!13865 (value!211622 List!42627)) (WhitespaceValue!13865 (value!211623 List!42627)) (True!13864) (False!13864) (Broken!34662 (value!211624 List!42627)) (Broken!34663 (value!211625 List!42627)) (True!13865) (RightBrace!6932) (RightBracket!6932) (Colon!6932) (Null!6932) (Comma!6932) (LeftBracket!6932) (False!13865) (LeftBrace!6932) (ImaginaryLiteralValue!6932 (text!48970 List!42627)) (StringLiteralValue!20796 (value!211626 List!42627)) (EOFValue!6932 (value!211627 List!42627)) (IdentValue!6932 (value!211628 List!42627)) (DelimiterValue!13865 (value!211629 List!42627)) (DedentValue!6932 (value!211630 List!42627)) (NewLineValue!6932 (value!211631 List!42627)) (IntegerValue!20796 (value!211632 (_ BitVec 32)) (text!48971 List!42627)) (IntegerValue!20797 (value!211633 Int) (text!48972 List!42627)) (Times!6932) (Or!6932) (Equal!6932) (Minus!6932) (Broken!34664 (value!211634 List!42627)) (And!6932) (Div!6932) (LessEqual!6932) (Mod!6932) (Concat!18539) (Not!6932) (Plus!6932) (SpaceValue!6932 (value!211635 List!42627)) (IntegerValue!20798 (value!211636 Int) (text!48973 List!42627)) (StringLiteralValue!20797 (text!48974 List!42627)) (FloatLiteralValue!13865 (text!48975 List!42627)) (BytesLiteralValue!6932 (value!211637 List!42627)) (CommentValue!13865 (value!211638 List!42627)) (StringLiteralValue!20798 (value!211639 List!42627)) (ErrorTokenValue!6932 (msg!6993 List!42627)) )
))
(declare-datatypes ((Regex!11607 0))(
  ( (ElementMatch!11607 (c!689349 C!23400)) (Concat!18540 (regOne!23726 Regex!11607) (regTwo!23726 Regex!11607)) (EmptyExpr!11607) (Star!11607 (reg!11936 Regex!11607)) (EmptyLang!11607) (Union!11607 (regOne!23727 Regex!11607) (regTwo!23727 Regex!11607)) )
))
(declare-datatypes ((String!48378 0))(
  ( (String!48379 (value!211640 String)) )
))
(declare-datatypes ((TokenValueInjection!13292 0))(
  ( (TokenValueInjection!13293 (toValue!9190 Int) (toChars!9049 Int)) )
))
(declare-datatypes ((Rule!13204 0))(
  ( (Rule!13205 (regex!6702 Regex!11607) (tag!7562 String!48378) (isSeparator!6702 Bool) (transformation!6702 TokenValueInjection!13292)) )
))
(declare-datatypes ((Token!12542 0))(
  ( (Token!12543 (value!211641 TokenValue!6932) (rule!9702 Rule!13204) (size!31796 Int) (originalCharacters!7302 List!42626)) )
))
(declare-datatypes ((tuple2!41740 0))(
  ( (tuple2!41741 (_1!24004 Token!12542) (_2!24004 List!42626)) )
))
(declare-datatypes ((Option!9116 0))(
  ( (None!9115) (Some!9115 (v!39463 tuple2!41740)) )
))
(declare-fun lt!1395094 () Option!9116)

(declare-fun lt!1395112 () Option!9116)

(assert (=> b!3977268 (= res!1611054 (not (= lt!1395094 lt!1395112)))))

(declare-fun lt!1395108 () Token!12542)

(declare-fun suffixResult!105 () List!42626)

(assert (=> b!3977268 (= lt!1395094 (Some!9115 (tuple2!41741 lt!1395108 suffixResult!105)))))

(declare-fun lt!1395098 () List!42626)

(declare-fun token!484 () Token!12542)

(declare-datatypes ((LexerInterface!6291 0))(
  ( (LexerInterfaceExt!6288 (__x!26082 Int)) (Lexer!6289) )
))
(declare-fun thiss!21717 () LexerInterface!6291)

(declare-fun maxPrefixOneRule!2623 (LexerInterface!6291 Rule!13204 List!42626) Option!9116)

(assert (=> b!3977268 (= lt!1395094 (maxPrefixOneRule!2623 thiss!21717 (rule!9702 token!484) lt!1395098))))

(declare-fun lt!1395097 () Int)

(declare-fun lt!1395080 () TokenValue!6932)

(assert (=> b!3977268 (= lt!1395108 (Token!12543 lt!1395080 (rule!9702 token!484) lt!1395097 lt!1395093))))

(declare-fun apply!9913 (TokenValueInjection!13292 BalanceConc!25420) TokenValue!6932)

(declare-fun seqFromList!4941 (List!42626) BalanceConc!25420)

(assert (=> b!3977268 (= lt!1395080 (apply!9913 (transformation!6702 (rule!9702 token!484)) (seqFromList!4941 lt!1395093)))))

(declare-datatypes ((Unit!61153 0))(
  ( (Unit!61154) )
))
(declare-fun lt!1395091 () Unit!61153)

(declare-datatypes ((List!42628 0))(
  ( (Nil!42504) (Cons!42504 (h!47924 Rule!13204) (t!331139 List!42628)) )
))
(declare-fun rules!2999 () List!42628)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1445 (LexerInterface!6291 List!42628 List!42626 List!42626 List!42626 Rule!13204) Unit!61153)

(assert (=> b!3977268 (= lt!1395091 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1445 thiss!21717 rules!2999 lt!1395093 lt!1395098 suffixResult!105 (rule!9702 token!484)))))

(declare-fun lt!1395102 () List!42626)

(assert (=> b!3977268 (= lt!1395102 suffixResult!105)))

(declare-fun lt!1395081 () Unit!61153)

(declare-fun lemmaSamePrefixThenSameSuffix!1976 (List!42626 List!42626 List!42626 List!42626 List!42626) Unit!61153)

(assert (=> b!3977268 (= lt!1395081 (lemmaSamePrefixThenSameSuffix!1976 lt!1395093 lt!1395102 lt!1395093 suffixResult!105 lt!1395098))))

(declare-fun lt!1395101 () List!42626)

(declare-fun isPrefix!3789 (List!42626 List!42626) Bool)

(assert (=> b!3977268 (isPrefix!3789 lt!1395093 lt!1395101)))

(declare-fun lt!1395110 () Unit!61153)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2632 (List!42626 List!42626) Unit!61153)

(assert (=> b!3977268 (= lt!1395110 (lemmaConcatTwoListThenFirstIsPrefix!2632 lt!1395093 lt!1395102))))

(declare-fun e!2464394 () Bool)

(declare-fun tp!1212647 () Bool)

(declare-fun e!2464398 () Bool)

(declare-fun b!3977269 () Bool)

(declare-fun inv!21 (TokenValue!6932) Bool)

(assert (=> b!3977269 (= e!2464398 (and (inv!21 (value!211641 token!484)) e!2464394 tp!1212647))))

(declare-fun b!3977270 () Bool)

(declare-fun res!1611050 () Bool)

(declare-fun e!2464412 () Bool)

(assert (=> b!3977270 (=> res!1611050 e!2464412)))

(declare-fun lt!1395089 () List!42626)

(declare-fun isEmpty!25417 (List!42626) Bool)

(assert (=> b!3977270 (= res!1611050 (isEmpty!25417 lt!1395089))))

(declare-fun b!3977271 () Bool)

(declare-fun e!2464408 () Bool)

(declare-fun tp!1212649 () Bool)

(declare-fun e!2464407 () Bool)

(declare-fun inv!56781 (String!48378) Bool)

(declare-fun inv!56784 (TokenValueInjection!13292) Bool)

(assert (=> b!3977271 (= e!2464408 (and tp!1212649 (inv!56781 (tag!7562 (h!47924 rules!2999))) (inv!56784 (transformation!6702 (h!47924 rules!2999))) e!2464407))))

(declare-fun b!3977272 () Bool)

(declare-fun res!1611046 () Bool)

(declare-fun e!2464416 () Bool)

(assert (=> b!3977272 (=> (not res!1611046) (not e!2464416))))

(declare-fun size!31797 (List!42626) Int)

(assert (=> b!3977272 (= res!1611046 (= (size!31796 token!484) (size!31797 (originalCharacters!7302 token!484))))))

(declare-fun tp!1212648 () Bool)

(declare-fun e!2464396 () Bool)

(declare-fun b!3977273 () Bool)

(assert (=> b!3977273 (= e!2464394 (and tp!1212648 (inv!56781 (tag!7562 (rule!9702 token!484))) (inv!56784 (transformation!6702 (rule!9702 token!484))) e!2464396))))

(declare-fun b!3977274 () Bool)

(declare-fun e!2464390 () Bool)

(declare-fun tp!1212646 () Bool)

(assert (=> b!3977274 (= e!2464390 (and e!2464408 tp!1212646))))

(declare-fun b!3977275 () Bool)

(declare-fun res!1611064 () Bool)

(declare-fun e!2464392 () Bool)

(assert (=> b!3977275 (=> (not res!1611064) (not e!2464392))))

(declare-fun rulesInvariant!5634 (LexerInterface!6291 List!42628) Bool)

(assert (=> b!3977275 (= res!1611064 (rulesInvariant!5634 thiss!21717 rules!2999))))

(declare-fun b!3977276 () Bool)

(declare-fun e!2464411 () Bool)

(assert (=> b!3977276 (= e!2464403 e!2464411)))

(declare-fun res!1611047 () Bool)

(assert (=> b!3977276 (=> (not res!1611047) (not e!2464411))))

(declare-fun maxPrefix!3589 (LexerInterface!6291 List!42628 List!42626) Option!9116)

(assert (=> b!3977276 (= res!1611047 (= (maxPrefix!3589 thiss!21717 rules!2999 lt!1395098) lt!1395112))))

(declare-fun lt!1395117 () tuple2!41740)

(assert (=> b!3977276 (= lt!1395112 (Some!9115 lt!1395117))))

(assert (=> b!3977276 (= lt!1395117 (tuple2!41741 token!484 suffixResult!105))))

(declare-fun suffix!1299 () List!42626)

(assert (=> b!3977276 (= lt!1395098 (++!11104 prefix!494 suffix!1299))))

(declare-fun b!3977277 () Bool)

(declare-fun e!2464388 () Bool)

(declare-fun tp!1212656 () Bool)

(assert (=> b!3977277 (= e!2464388 (and tp_is_empty!20185 tp!1212656))))

(declare-fun res!1611065 () Bool)

(assert (=> start!374352 (=> (not res!1611065) (not e!2464392))))

(get-info :version)

(assert (=> start!374352 (= res!1611065 ((_ is Lexer!6289) thiss!21717))))

(assert (=> start!374352 e!2464392))

(assert (=> start!374352 e!2464388))

(declare-fun inv!56785 (Token!12542) Bool)

(assert (=> start!374352 (and (inv!56785 token!484) e!2464398)))

(declare-fun e!2464405 () Bool)

(assert (=> start!374352 e!2464405))

(declare-fun e!2464400 () Bool)

(assert (=> start!374352 e!2464400))

(assert (=> start!374352 e!2464414))

(assert (=> start!374352 true))

(assert (=> start!374352 e!2464390))

(assert (=> start!374352 e!2464391))

(assert (=> b!3977278 (= e!2464396 (and tp!1212658 tp!1212651))))

(declare-fun b!3977279 () Bool)

(declare-fun e!2464402 () Bool)

(assert (=> b!3977279 (= e!2464411 (not e!2464402))))

(declare-fun res!1611049 () Bool)

(assert (=> b!3977279 (=> res!1611049 e!2464402)))

(declare-fun lt!1395079 () List!42626)

(assert (=> b!3977279 (= res!1611049 (not (= lt!1395079 lt!1395098)))))

(assert (=> b!3977279 (= lt!1395079 (++!11104 lt!1395093 suffixResult!105))))

(declare-fun lt!1395115 () Unit!61153)

(declare-fun lemmaInv!917 (TokenValueInjection!13292) Unit!61153)

(assert (=> b!3977279 (= lt!1395115 (lemmaInv!917 (transformation!6702 (rule!9702 token!484))))))

(declare-fun ruleValid!2634 (LexerInterface!6291 Rule!13204) Bool)

(assert (=> b!3977279 (ruleValid!2634 thiss!21717 (rule!9702 token!484))))

(declare-fun lt!1395105 () Unit!61153)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1708 (LexerInterface!6291 Rule!13204 List!42628) Unit!61153)

(assert (=> b!3977279 (= lt!1395105 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1708 thiss!21717 (rule!9702 token!484) rules!2999))))

(declare-fun b!3977280 () Bool)

(declare-fun e!2464393 () Bool)

(assert (=> b!3977280 (= e!2464393 e!2464406)))

(declare-fun res!1611058 () Bool)

(assert (=> b!3977280 (=> res!1611058 e!2464406)))

(declare-fun lt!1395083 () List!42626)

(assert (=> b!3977280 (= res!1611058 (or (not (= lt!1395098 lt!1395083)) (not (= lt!1395098 lt!1395101))))))

(assert (=> b!3977280 (= lt!1395083 lt!1395101)))

(assert (=> b!3977280 (= lt!1395101 (++!11104 lt!1395093 lt!1395102))))

(declare-fun lt!1395078 () List!42626)

(assert (=> b!3977280 (= lt!1395083 (++!11104 lt!1395078 suffix!1299))))

(declare-fun lt!1395084 () List!42626)

(assert (=> b!3977280 (= lt!1395102 (++!11104 lt!1395084 suffix!1299))))

(declare-fun lt!1395116 () Unit!61153)

(declare-fun lemmaConcatAssociativity!2424 (List!42626 List!42626 List!42626) Unit!61153)

(assert (=> b!3977280 (= lt!1395116 (lemmaConcatAssociativity!2424 lt!1395093 lt!1395084 suffix!1299))))

(declare-fun b!3977281 () Bool)

(assert (=> b!3977281 (= e!2464392 e!2464404)))

(declare-fun res!1611048 () Bool)

(assert (=> b!3977281 (=> (not res!1611048) (not e!2464404))))

(declare-fun lt!1395086 () Int)

(assert (=> b!3977281 (= res!1611048 (>= lt!1395086 lt!1395097))))

(assert (=> b!3977281 (= lt!1395097 (size!31797 lt!1395093))))

(assert (=> b!3977281 (= lt!1395086 (size!31797 prefix!494))))

(declare-fun list!15774 (BalanceConc!25420) List!42626)

(declare-fun charsOf!4518 (Token!12542) BalanceConc!25420)

(assert (=> b!3977281 (= lt!1395093 (list!15774 (charsOf!4518 token!484)))))

(declare-fun b!3977282 () Bool)

(declare-fun e!2464397 () Bool)

(assert (=> b!3977282 (= e!2464397 true)))

(declare-fun lt!1395090 () Bool)

(declare-fun lt!1395096 () Option!9116)

(declare-fun matchR!5584 (Regex!11607 List!42626) Bool)

(assert (=> b!3977282 (= lt!1395090 (matchR!5584 (regex!6702 (rule!9702 (_1!24004 (v!39463 lt!1395096)))) lt!1395089))))

(declare-fun b!3977283 () Bool)

(declare-fun e!2464410 () Bool)

(declare-fun e!2464413 () Bool)

(assert (=> b!3977283 (= e!2464410 e!2464413)))

(declare-fun res!1611060 () Bool)

(assert (=> b!3977283 (=> res!1611060 e!2464413)))

(declare-fun lt!1395088 () List!42626)

(assert (=> b!3977283 (= res!1611060 (not (= lt!1395088 lt!1395098)))))

(declare-fun lt!1395077 () List!42626)

(assert (=> b!3977283 (= lt!1395088 (++!11104 lt!1395093 lt!1395077))))

(declare-fun getSuffix!2220 (List!42626 List!42626) List!42626)

(assert (=> b!3977283 (= lt!1395077 (getSuffix!2220 lt!1395098 lt!1395093))))

(assert (=> b!3977283 e!2464416))

(declare-fun res!1611066 () Bool)

(assert (=> b!3977283 (=> (not res!1611066) (not e!2464416))))

(assert (=> b!3977283 (= res!1611066 (isPrefix!3789 lt!1395098 lt!1395098))))

(declare-fun lt!1395103 () Unit!61153)

(declare-fun lemmaIsPrefixRefl!2381 (List!42626 List!42626) Unit!61153)

(assert (=> b!3977283 (= lt!1395103 (lemmaIsPrefixRefl!2381 lt!1395098 lt!1395098))))

(declare-fun b!3977284 () Bool)

(declare-fun e!2464389 () Bool)

(assert (=> b!3977284 (= e!2464389 e!2464393)))

(declare-fun res!1611051 () Bool)

(assert (=> b!3977284 (=> res!1611051 e!2464393)))

(assert (=> b!3977284 (= res!1611051 (not (= lt!1395078 prefix!494)))))

(assert (=> b!3977284 (= lt!1395078 (++!11104 lt!1395093 lt!1395084))))

(assert (=> b!3977284 (= lt!1395084 (getSuffix!2220 prefix!494 lt!1395093))))

(assert (=> b!3977284 (isPrefix!3789 lt!1395093 prefix!494)))

(declare-fun lt!1395109 () Unit!61153)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!367 (List!42626 List!42626 List!42626) Unit!61153)

(assert (=> b!3977284 (= lt!1395109 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!367 prefix!494 lt!1395093 lt!1395098))))

(declare-fun b!3977285 () Bool)

(declare-fun tp!1212654 () Bool)

(assert (=> b!3977285 (= e!2464400 (and tp_is_empty!20185 tp!1212654))))

(declare-fun b!3977286 () Bool)

(assert (=> b!3977286 (= e!2464416 (and (= (size!31796 token!484) lt!1395097) (= (originalCharacters!7302 token!484) lt!1395093)))))

(declare-fun b!3977287 () Bool)

(declare-fun res!1611056 () Bool)

(assert (=> b!3977287 (=> (not res!1611056) (not e!2464392))))

(assert (=> b!3977287 (= res!1611056 (>= (size!31797 suffix!1299) (size!31797 newSuffix!27)))))

(declare-fun b!3977288 () Bool)

(assert (=> b!3977288 (= e!2464399 e!2464410)))

(declare-fun res!1611063 () Bool)

(assert (=> b!3977288 (=> res!1611063 e!2464410)))

(assert (=> b!3977288 (= res!1611063 (not (matchR!5584 (regex!6702 (rule!9702 token!484)) lt!1395093)))))

(assert (=> b!3977288 (isPrefix!3789 lt!1395093 lt!1395114)))

(declare-fun lt!1395095 () Unit!61153)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!622 (List!42626 List!42626 List!42626) Unit!61153)

(assert (=> b!3977288 (= lt!1395095 (lemmaPrefixStaysPrefixWhenAddingToSuffix!622 lt!1395093 prefix!494 newSuffix!27))))

(declare-fun lt!1395107 () Unit!61153)

(assert (=> b!3977288 (= lt!1395107 (lemmaPrefixStaysPrefixWhenAddingToSuffix!622 lt!1395093 prefix!494 suffix!1299))))

(declare-fun b!3977289 () Bool)

(declare-fun res!1611053 () Bool)

(assert (=> b!3977289 (=> res!1611053 e!2464412)))

(assert (=> b!3977289 (= res!1611053 (not (= lt!1395114 (++!11104 lt!1395089 (_2!24004 (v!39463 lt!1395096))))))))

(declare-fun b!3977290 () Bool)

(declare-fun e!2464415 () Bool)

(assert (=> b!3977290 (= e!2464415 e!2464412)))

(declare-fun res!1611055 () Bool)

(assert (=> b!3977290 (=> res!1611055 e!2464412)))

(declare-fun contains!8463 (List!42628 Rule!13204) Bool)

(assert (=> b!3977290 (= res!1611055 (not (contains!8463 rules!2999 (rule!9702 (_1!24004 (v!39463 lt!1395096))))))))

(assert (=> b!3977290 (= lt!1395089 (list!15774 (charsOf!4518 (_1!24004 (v!39463 lt!1395096)))))))

(declare-fun lt!1395106 () Unit!61153)

(assert (=> b!3977290 (= lt!1395106 (lemmaInv!917 (transformation!6702 (rule!9702 (_1!24004 (v!39463 lt!1395096))))))))

(assert (=> b!3977290 (ruleValid!2634 thiss!21717 (rule!9702 (_1!24004 (v!39463 lt!1395096))))))

(declare-fun lt!1395104 () Unit!61153)

(assert (=> b!3977290 (= lt!1395104 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1708 thiss!21717 (rule!9702 (_1!24004 (v!39463 lt!1395096))) rules!2999))))

(declare-fun lt!1395076 () Unit!61153)

(declare-fun lemmaCharactersSize!1297 (Token!12542) Unit!61153)

(assert (=> b!3977290 (= lt!1395076 (lemmaCharactersSize!1297 token!484))))

(declare-fun lt!1395092 () Unit!61153)

(assert (=> b!3977290 (= lt!1395092 (lemmaCharactersSize!1297 (_1!24004 (v!39463 lt!1395096))))))

(declare-fun b!3977291 () Bool)

(declare-fun res!1611059 () Bool)

(assert (=> b!3977291 (=> (not res!1611059) (not e!2464392))))

(assert (=> b!3977291 (= res!1611059 (isPrefix!3789 newSuffix!27 suffix!1299))))

(declare-fun b!3977292 () Bool)

(declare-fun res!1611061 () Bool)

(assert (=> b!3977292 (=> (not res!1611061) (not e!2464392))))

(declare-fun isEmpty!25418 (List!42628) Bool)

(assert (=> b!3977292 (= res!1611061 (not (isEmpty!25418 rules!2999)))))

(declare-fun b!3977293 () Bool)

(declare-fun tp!1212655 () Bool)

(assert (=> b!3977293 (= e!2464405 (and tp_is_empty!20185 tp!1212655))))

(declare-fun b!3977294 () Bool)

(assert (=> b!3977294 (= e!2464413 e!2464415)))

(declare-fun res!1611057 () Bool)

(assert (=> b!3977294 (=> res!1611057 e!2464415)))

(assert (=> b!3977294 (= res!1611057 (not ((_ is Some!9115) lt!1395096)))))

(assert (=> b!3977294 (= lt!1395096 (maxPrefix!3589 thiss!21717 rules!2999 lt!1395114))))

(assert (=> b!3977294 (and (= suffixResult!105 lt!1395077) (= lt!1395117 (tuple2!41741 lt!1395108 lt!1395077)))))

(declare-fun lt!1395113 () Unit!61153)

(assert (=> b!3977294 (= lt!1395113 (lemmaSamePrefixThenSameSuffix!1976 lt!1395093 suffixResult!105 lt!1395093 lt!1395077 lt!1395098))))

(assert (=> b!3977294 (isPrefix!3789 lt!1395093 lt!1395088)))

(declare-fun lt!1395111 () Unit!61153)

(assert (=> b!3977294 (= lt!1395111 (lemmaConcatTwoListThenFirstIsPrefix!2632 lt!1395093 lt!1395077))))

(declare-fun b!3977295 () Bool)

(assert (=> b!3977295 (= e!2464402 e!2464389)))

(declare-fun res!1611052 () Bool)

(assert (=> b!3977295 (=> res!1611052 e!2464389)))

(assert (=> b!3977295 (= res!1611052 (not (isPrefix!3789 lt!1395093 lt!1395098)))))

(assert (=> b!3977295 (isPrefix!3789 prefix!494 lt!1395098)))

(declare-fun lt!1395085 () Unit!61153)

(assert (=> b!3977295 (= lt!1395085 (lemmaConcatTwoListThenFirstIsPrefix!2632 prefix!494 suffix!1299))))

(assert (=> b!3977295 (isPrefix!3789 lt!1395093 lt!1395079)))

(declare-fun lt!1395087 () Unit!61153)

(assert (=> b!3977295 (= lt!1395087 (lemmaConcatTwoListThenFirstIsPrefix!2632 lt!1395093 suffixResult!105))))

(declare-fun b!3977296 () Bool)

(assert (=> b!3977296 (= e!2464412 e!2464397)))

(declare-fun res!1611068 () Bool)

(assert (=> b!3977296 (=> res!1611068 e!2464397)))

(declare-fun lt!1395099 () BalanceConc!25420)

(assert (=> b!3977296 (= res!1611068 (not (= lt!1395096 (Some!9115 (tuple2!41741 (Token!12543 (apply!9913 (transformation!6702 (rule!9702 (_1!24004 (v!39463 lt!1395096)))) lt!1395099) (rule!9702 (_1!24004 (v!39463 lt!1395096))) (size!31797 lt!1395089) lt!1395089) (_2!24004 (v!39463 lt!1395096)))))))))

(declare-fun lt!1395082 () Unit!61153)

(declare-fun lemmaSemiInverse!1826 (TokenValueInjection!13292 BalanceConc!25420) Unit!61153)

(assert (=> b!3977296 (= lt!1395082 (lemmaSemiInverse!1826 (transformation!6702 (rule!9702 (_1!24004 (v!39463 lt!1395096)))) lt!1395099))))

(assert (=> b!3977296 (= lt!1395099 (seqFromList!4941 lt!1395089))))

(declare-fun b!3977297 () Bool)

(declare-fun res!1611062 () Bool)

(assert (=> b!3977297 (=> (not res!1611062) (not e!2464416))))

(assert (=> b!3977297 (= res!1611062 (= (value!211641 token!484) lt!1395080))))

(assert (=> b!3977298 (= e!2464407 (and tp!1212657 tp!1212650))))

(assert (= (and start!374352 res!1611065) b!3977292))

(assert (= (and b!3977292 res!1611061) b!3977275))

(assert (= (and b!3977275 res!1611064) b!3977287))

(assert (= (and b!3977287 res!1611056) b!3977291))

(assert (= (and b!3977291 res!1611059) b!3977281))

(assert (= (and b!3977281 res!1611048) b!3977266))

(assert (= (and b!3977266 res!1611067) b!3977276))

(assert (= (and b!3977276 res!1611047) b!3977279))

(assert (= (and b!3977279 (not res!1611049)) b!3977295))

(assert (= (and b!3977295 (not res!1611052)) b!3977284))

(assert (= (and b!3977284 (not res!1611051)) b!3977280))

(assert (= (and b!3977280 (not res!1611058)) b!3977268))

(assert (= (and b!3977268 (not res!1611054)) b!3977288))

(assert (= (and b!3977288 (not res!1611063)) b!3977283))

(assert (= (and b!3977283 res!1611066) b!3977297))

(assert (= (and b!3977297 res!1611062) b!3977272))

(assert (= (and b!3977272 res!1611046) b!3977286))

(assert (= (and b!3977283 (not res!1611060)) b!3977294))

(assert (= (and b!3977294 (not res!1611057)) b!3977290))

(assert (= (and b!3977290 (not res!1611055)) b!3977289))

(assert (= (and b!3977289 (not res!1611053)) b!3977270))

(assert (= (and b!3977270 (not res!1611050)) b!3977296))

(assert (= (and b!3977296 (not res!1611068)) b!3977282))

(assert (= (and start!374352 ((_ is Cons!42502) prefix!494)) b!3977277))

(assert (= b!3977273 b!3977278))

(assert (= b!3977269 b!3977273))

(assert (= start!374352 b!3977269))

(assert (= (and start!374352 ((_ is Cons!42502) suffixResult!105)) b!3977293))

(assert (= (and start!374352 ((_ is Cons!42502) suffix!1299)) b!3977285))

(assert (= (and start!374352 ((_ is Cons!42502) newSuffix!27)) b!3977267))

(assert (= b!3977271 b!3977298))

(assert (= b!3977274 b!3977271))

(assert (= (and start!374352 ((_ is Cons!42504) rules!2999)) b!3977274))

(assert (= (and start!374352 ((_ is Cons!42502) newSuffixResult!27)) b!3977265))

(declare-fun m!4548655 () Bool)

(assert (=> b!3977266 m!4548655))

(declare-fun m!4548657 () Bool)

(assert (=> b!3977266 m!4548657))

(declare-fun m!4548659 () Bool)

(assert (=> b!3977283 m!4548659))

(declare-fun m!4548661 () Bool)

(assert (=> b!3977283 m!4548661))

(declare-fun m!4548663 () Bool)

(assert (=> b!3977283 m!4548663))

(declare-fun m!4548665 () Bool)

(assert (=> b!3977283 m!4548665))

(declare-fun m!4548667 () Bool)

(assert (=> b!3977269 m!4548667))

(declare-fun m!4548669 () Bool)

(assert (=> b!3977292 m!4548669))

(declare-fun m!4548671 () Bool)

(assert (=> b!3977281 m!4548671))

(declare-fun m!4548673 () Bool)

(assert (=> b!3977281 m!4548673))

(declare-fun m!4548675 () Bool)

(assert (=> b!3977281 m!4548675))

(assert (=> b!3977281 m!4548675))

(declare-fun m!4548677 () Bool)

(assert (=> b!3977281 m!4548677))

(declare-fun m!4548679 () Bool)

(assert (=> b!3977271 m!4548679))

(declare-fun m!4548681 () Bool)

(assert (=> b!3977271 m!4548681))

(declare-fun m!4548683 () Bool)

(assert (=> b!3977291 m!4548683))

(declare-fun m!4548685 () Bool)

(assert (=> b!3977288 m!4548685))

(declare-fun m!4548687 () Bool)

(assert (=> b!3977288 m!4548687))

(declare-fun m!4548689 () Bool)

(assert (=> b!3977288 m!4548689))

(declare-fun m!4548691 () Bool)

(assert (=> b!3977288 m!4548691))

(declare-fun m!4548693 () Bool)

(assert (=> b!3977280 m!4548693))

(declare-fun m!4548695 () Bool)

(assert (=> b!3977280 m!4548695))

(declare-fun m!4548697 () Bool)

(assert (=> b!3977280 m!4548697))

(declare-fun m!4548699 () Bool)

(assert (=> b!3977280 m!4548699))

(declare-fun m!4548701 () Bool)

(assert (=> b!3977284 m!4548701))

(declare-fun m!4548703 () Bool)

(assert (=> b!3977284 m!4548703))

(declare-fun m!4548705 () Bool)

(assert (=> b!3977284 m!4548705))

(declare-fun m!4548707 () Bool)

(assert (=> b!3977284 m!4548707))

(declare-fun m!4548709 () Bool)

(assert (=> b!3977290 m!4548709))

(declare-fun m!4548711 () Bool)

(assert (=> b!3977290 m!4548711))

(declare-fun m!4548713 () Bool)

(assert (=> b!3977290 m!4548713))

(declare-fun m!4548715 () Bool)

(assert (=> b!3977290 m!4548715))

(declare-fun m!4548717 () Bool)

(assert (=> b!3977290 m!4548717))

(declare-fun m!4548719 () Bool)

(assert (=> b!3977290 m!4548719))

(assert (=> b!3977290 m!4548711))

(declare-fun m!4548721 () Bool)

(assert (=> b!3977290 m!4548721))

(declare-fun m!4548723 () Bool)

(assert (=> b!3977290 m!4548723))

(declare-fun m!4548725 () Bool)

(assert (=> b!3977294 m!4548725))

(declare-fun m!4548727 () Bool)

(assert (=> b!3977294 m!4548727))

(declare-fun m!4548729 () Bool)

(assert (=> b!3977294 m!4548729))

(declare-fun m!4548731 () Bool)

(assert (=> b!3977294 m!4548731))

(declare-fun m!4548733 () Bool)

(assert (=> b!3977270 m!4548733))

(declare-fun m!4548735 () Bool)

(assert (=> b!3977268 m!4548735))

(declare-fun m!4548737 () Bool)

(assert (=> b!3977268 m!4548737))

(declare-fun m!4548739 () Bool)

(assert (=> b!3977268 m!4548739))

(declare-fun m!4548741 () Bool)

(assert (=> b!3977268 m!4548741))

(declare-fun m!4548743 () Bool)

(assert (=> b!3977268 m!4548743))

(declare-fun m!4548745 () Bool)

(assert (=> b!3977268 m!4548745))

(assert (=> b!3977268 m!4548739))

(declare-fun m!4548747 () Bool)

(assert (=> b!3977268 m!4548747))

(declare-fun m!4548749 () Bool)

(assert (=> b!3977295 m!4548749))

(declare-fun m!4548751 () Bool)

(assert (=> b!3977295 m!4548751))

(declare-fun m!4548753 () Bool)

(assert (=> b!3977295 m!4548753))

(declare-fun m!4548755 () Bool)

(assert (=> b!3977295 m!4548755))

(declare-fun m!4548757 () Bool)

(assert (=> b!3977295 m!4548757))

(declare-fun m!4548759 () Bool)

(assert (=> start!374352 m!4548759))

(declare-fun m!4548761 () Bool)

(assert (=> b!3977279 m!4548761))

(declare-fun m!4548763 () Bool)

(assert (=> b!3977279 m!4548763))

(declare-fun m!4548765 () Bool)

(assert (=> b!3977279 m!4548765))

(declare-fun m!4548767 () Bool)

(assert (=> b!3977279 m!4548767))

(declare-fun m!4548769 () Bool)

(assert (=> b!3977272 m!4548769))

(declare-fun m!4548771 () Bool)

(assert (=> b!3977273 m!4548771))

(declare-fun m!4548773 () Bool)

(assert (=> b!3977273 m!4548773))

(declare-fun m!4548775 () Bool)

(assert (=> b!3977289 m!4548775))

(declare-fun m!4548777 () Bool)

(assert (=> b!3977287 m!4548777))

(declare-fun m!4548779 () Bool)

(assert (=> b!3977287 m!4548779))

(declare-fun m!4548781 () Bool)

(assert (=> b!3977276 m!4548781))

(declare-fun m!4548783 () Bool)

(assert (=> b!3977276 m!4548783))

(declare-fun m!4548785 () Bool)

(assert (=> b!3977296 m!4548785))

(declare-fun m!4548787 () Bool)

(assert (=> b!3977296 m!4548787))

(declare-fun m!4548789 () Bool)

(assert (=> b!3977296 m!4548789))

(declare-fun m!4548791 () Bool)

(assert (=> b!3977296 m!4548791))

(declare-fun m!4548793 () Bool)

(assert (=> b!3977282 m!4548793))

(declare-fun m!4548795 () Bool)

(assert (=> b!3977275 m!4548795))

(check-sat (not b!3977268) (not b!3977271) (not b!3977293) (not b!3977290) (not b!3977269) (not b!3977272) tp_is_empty!20185 (not b!3977275) (not b_next!111047) b_and!305729 b_and!305727 (not b!3977289) (not start!374352) (not b!3977284) (not b_next!111045) (not b_next!111043) (not b!3977287) (not b!3977277) (not b!3977292) (not b!3977280) (not b!3977279) (not b!3977294) (not b!3977296) (not b!3977283) (not b!3977291) (not b!3977282) (not b!3977281) (not b!3977288) (not b!3977285) b_and!305731 (not b!3977274) (not b_next!111041) (not b!3977270) (not b!3977276) (not b!3977265) (not b!3977273) (not b!3977267) (not b!3977266) b_and!305733 (not b!3977295))
(check-sat (not b_next!111047) b_and!305729 b_and!305727 b_and!305731 (not b_next!111041) (not b_next!111045) (not b_next!111043) b_and!305733)
