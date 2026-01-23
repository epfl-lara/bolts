; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!167958 () Bool)

(assert start!167958)

(declare-fun b!1715984 () Bool)

(declare-fun b_free!46611 () Bool)

(declare-fun b_next!47315 () Bool)

(assert (=> b!1715984 (= b_free!46611 (not b_next!47315))))

(declare-fun tp!490138 () Bool)

(declare-fun b_and!124575 () Bool)

(assert (=> b!1715984 (= tp!490138 b_and!124575)))

(declare-fun b_free!46613 () Bool)

(declare-fun b_next!47317 () Bool)

(assert (=> b!1715984 (= b_free!46613 (not b_next!47317))))

(declare-fun tp!490141 () Bool)

(declare-fun b_and!124577 () Bool)

(assert (=> b!1715984 (= tp!490141 b_and!124577)))

(declare-fun b!1715989 () Bool)

(declare-fun b_free!46615 () Bool)

(declare-fun b_next!47319 () Bool)

(assert (=> b!1715989 (= b_free!46615 (not b_next!47319))))

(declare-fun tp!490142 () Bool)

(declare-fun b_and!124579 () Bool)

(assert (=> b!1715989 (= tp!490142 b_and!124579)))

(declare-fun b_free!46617 () Bool)

(declare-fun b_next!47321 () Bool)

(assert (=> b!1715989 (= b_free!46617 (not b_next!47321))))

(declare-fun tp!490143 () Bool)

(declare-fun b_and!124581 () Bool)

(assert (=> b!1715989 (= tp!490143 b_and!124581)))

(declare-fun b!1715997 () Bool)

(declare-fun b_free!46619 () Bool)

(declare-fun b_next!47323 () Bool)

(assert (=> b!1715997 (= b_free!46619 (not b_next!47323))))

(declare-fun tp!490137 () Bool)

(declare-fun b_and!124583 () Bool)

(assert (=> b!1715997 (= tp!490137 b_and!124583)))

(declare-fun b_free!46621 () Bool)

(declare-fun b_next!47325 () Bool)

(assert (=> b!1715997 (= b_free!46621 (not b_next!47325))))

(declare-fun tp!490134 () Bool)

(declare-fun b_and!124585 () Bool)

(assert (=> b!1715997 (= tp!490134 b_and!124585)))

(declare-fun b!1716026 () Bool)

(declare-fun e!1097415 () Bool)

(assert (=> b!1716026 (= e!1097415 true)))

(declare-fun b!1716025 () Bool)

(declare-fun e!1097414 () Bool)

(assert (=> b!1716025 (= e!1097414 e!1097415)))

(declare-fun b!1716024 () Bool)

(declare-fun e!1097413 () Bool)

(assert (=> b!1716024 (= e!1097413 e!1097414)))

(declare-fun b!1715990 () Bool)

(assert (=> b!1715990 e!1097413))

(assert (= b!1716025 b!1716026))

(assert (= b!1716024 b!1716025))

(assert (= b!1715990 b!1716024))

(declare-fun lambda!68978 () Int)

(declare-fun order!11327 () Int)

(declare-fun order!11329 () Int)

(declare-datatypes ((List!18816 0))(
  ( (Nil!18746) (Cons!18746 (h!24147 (_ BitVec 16)) (t!158783 List!18816)) )
))
(declare-datatypes ((TokenValue!3405 0))(
  ( (FloatLiteralValue!6810 (text!24280 List!18816)) (TokenValueExt!3404 (__x!12112 Int)) (Broken!17025 (value!104124 List!18816)) (Object!3474) (End!3405) (Def!3405) (Underscore!3405) (Match!3405) (Else!3405) (Error!3405) (Case!3405) (If!3405) (Extends!3405) (Abstract!3405) (Class!3405) (Val!3405) (DelimiterValue!6810 (del!3465 List!18816)) (KeywordValue!3411 (value!104125 List!18816)) (CommentValue!6810 (value!104126 List!18816)) (WhitespaceValue!6810 (value!104127 List!18816)) (IndentationValue!3405 (value!104128 List!18816)) (String!21356) (Int32!3405) (Broken!17026 (value!104129 List!18816)) (Boolean!3406) (Unit!32578) (OperatorValue!3408 (op!3465 List!18816)) (IdentifierValue!6810 (value!104130 List!18816)) (IdentifierValue!6811 (value!104131 List!18816)) (WhitespaceValue!6811 (value!104132 List!18816)) (True!6810) (False!6810) (Broken!17027 (value!104133 List!18816)) (Broken!17028 (value!104134 List!18816)) (True!6811) (RightBrace!3405) (RightBracket!3405) (Colon!3405) (Null!3405) (Comma!3405) (LeftBracket!3405) (False!6811) (LeftBrace!3405) (ImaginaryLiteralValue!3405 (text!24281 List!18816)) (StringLiteralValue!10215 (value!104135 List!18816)) (EOFValue!3405 (value!104136 List!18816)) (IdentValue!3405 (value!104137 List!18816)) (DelimiterValue!6811 (value!104138 List!18816)) (DedentValue!3405 (value!104139 List!18816)) (NewLineValue!3405 (value!104140 List!18816)) (IntegerValue!10215 (value!104141 (_ BitVec 32)) (text!24282 List!18816)) (IntegerValue!10216 (value!104142 Int) (text!24283 List!18816)) (Times!3405) (Or!3405) (Equal!3405) (Minus!3405) (Broken!17029 (value!104143 List!18816)) (And!3405) (Div!3405) (LessEqual!3405) (Mod!3405) (Concat!8048) (Not!3405) (Plus!3405) (SpaceValue!3405 (value!104144 List!18816)) (IntegerValue!10217 (value!104145 Int) (text!24284 List!18816)) (StringLiteralValue!10216 (text!24285 List!18816)) (FloatLiteralValue!6811 (text!24286 List!18816)) (BytesLiteralValue!3405 (value!104146 List!18816)) (CommentValue!6811 (value!104147 List!18816)) (StringLiteralValue!10217 (value!104148 List!18816)) (ErrorTokenValue!3405 (msg!3466 List!18816)) )
))
(declare-datatypes ((C!9460 0))(
  ( (C!9461 (val!5326 Int)) )
))
(declare-datatypes ((List!18817 0))(
  ( (Nil!18747) (Cons!18747 (h!24148 C!9460) (t!158784 List!18817)) )
))
(declare-datatypes ((Regex!4643 0))(
  ( (ElementMatch!4643 (c!281078 C!9460)) (Concat!8049 (regOne!9798 Regex!4643) (regTwo!9798 Regex!4643)) (EmptyExpr!4643) (Star!4643 (reg!4972 Regex!4643)) (EmptyLang!4643) (Union!4643 (regOne!9799 Regex!4643) (regTwo!9799 Regex!4643)) )
))
(declare-datatypes ((String!21357 0))(
  ( (String!21358 (value!104149 String)) )
))
(declare-datatypes ((IArray!12475 0))(
  ( (IArray!12476 (innerList!6295 List!18817)) )
))
(declare-datatypes ((Conc!6235 0))(
  ( (Node!6235 (left!14946 Conc!6235) (right!15276 Conc!6235) (csize!12700 Int) (cheight!6446 Int)) (Leaf!9113 (xs!9111 IArray!12475) (csize!12701 Int)) (Empty!6235) )
))
(declare-datatypes ((BalanceConc!12414 0))(
  ( (BalanceConc!12415 (c!281079 Conc!6235)) )
))
(declare-datatypes ((TokenValueInjection!6470 0))(
  ( (TokenValueInjection!6471 (toValue!4822 Int) (toChars!4681 Int)) )
))
(declare-datatypes ((Rule!6430 0))(
  ( (Rule!6431 (regex!3315 Regex!4643) (tag!3617 String!21357) (isSeparator!3315 Bool) (transformation!3315 TokenValueInjection!6470)) )
))
(declare-datatypes ((Token!6196 0))(
  ( (Token!6197 (value!104150 TokenValue!3405) (rule!5253 Rule!6430) (size!14894 Int) (originalCharacters!4129 List!18817)) )
))
(declare-datatypes ((tuple2!18454 0))(
  ( (tuple2!18455 (_1!10629 Token!6196) (_2!10629 List!18817)) )
))
(declare-fun lt!655638 () tuple2!18454)

(declare-fun dynLambda!8554 (Int Int) Int)

(declare-fun dynLambda!8555 (Int Int) Int)

(assert (=> b!1716026 (< (dynLambda!8554 order!11327 (toValue!4822 (transformation!3315 (rule!5253 (_1!10629 lt!655638))))) (dynLambda!8555 order!11329 lambda!68978))))

(declare-fun order!11331 () Int)

(declare-fun dynLambda!8556 (Int Int) Int)

(assert (=> b!1716026 (< (dynLambda!8556 order!11331 (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638))))) (dynLambda!8555 order!11329 lambda!68978))))

(declare-fun e!1097400 () Bool)

(assert (=> b!1715984 (= e!1097400 (and tp!490138 tp!490141))))

(declare-fun b!1715985 () Bool)

(declare-fun e!1097395 () Bool)

(assert (=> b!1715985 (= e!1097395 true)))

(declare-datatypes ((LexerInterface!2944 0))(
  ( (LexerInterfaceExt!2941 (__x!12113 Int)) (Lexer!2942) )
))
(declare-fun thiss!24550 () LexerInterface!2944)

(declare-fun ruleValid!814 (LexerInterface!2944 Rule!6430) Bool)

(assert (=> b!1715985 (ruleValid!814 thiss!24550 (rule!5253 (_1!10629 lt!655638)))))

(declare-datatypes ((List!18818 0))(
  ( (Nil!18748) (Cons!18748 (h!24149 Rule!6430) (t!158785 List!18818)) )
))
(declare-fun rules!3447 () List!18818)

(declare-datatypes ((Unit!32579 0))(
  ( (Unit!32580) )
))
(declare-fun lt!655620 () Unit!32579)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!338 (LexerInterface!2944 Rule!6430 List!18818) Unit!32579)

(assert (=> b!1715985 (= lt!655620 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!338 thiss!24550 (rule!5253 (_1!10629 lt!655638)) rules!3447))))

(declare-fun b!1715986 () Bool)

(declare-fun e!1097394 () Bool)

(declare-fun e!1097390 () Bool)

(assert (=> b!1715986 (= e!1097394 e!1097390)))

(declare-fun res!769478 () Bool)

(assert (=> b!1715986 (=> (not res!769478) (not e!1097390))))

(declare-fun lt!655633 () Rule!6430)

(declare-fun matchR!2117 (Regex!4643 List!18817) Bool)

(declare-fun list!7572 (BalanceConc!12414) List!18817)

(declare-fun charsOf!1964 (Token!6196) BalanceConc!12414)

(assert (=> b!1715986 (= res!769478 (matchR!2117 (regex!3315 lt!655633) (list!7572 (charsOf!1964 (_1!10629 lt!655638)))))))

(declare-datatypes ((Option!3654 0))(
  ( (None!3653) (Some!3653 (v!25048 Rule!6430)) )
))
(declare-fun lt!655639 () Option!3654)

(declare-fun get!5529 (Option!3654) Rule!6430)

(assert (=> b!1715986 (= lt!655633 (get!5529 lt!655639))))

(declare-fun b!1715987 () Bool)

(assert (=> b!1715987 (= e!1097390 (= (rule!5253 (_1!10629 lt!655638)) lt!655633))))

(declare-fun rule!422 () Rule!6430)

(declare-fun b!1715988 () Bool)

(declare-fun tp!490135 () Bool)

(declare-fun e!1097392 () Bool)

(declare-fun e!1097396 () Bool)

(declare-fun inv!24179 (String!21357) Bool)

(declare-fun inv!24184 (TokenValueInjection!6470) Bool)

(assert (=> b!1715988 (= e!1097396 (and tp!490135 (inv!24179 (tag!3617 rule!422)) (inv!24184 (transformation!3315 rule!422)) e!1097392))))

(declare-fun e!1097404 () Bool)

(assert (=> b!1715989 (= e!1097404 (and tp!490142 tp!490143))))

(declare-fun e!1097402 () Bool)

(declare-fun e!1097399 () Bool)

(assert (=> b!1715990 (= e!1097402 e!1097399)))

(declare-fun res!769474 () Bool)

(assert (=> b!1715990 (=> res!769474 e!1097399)))

(declare-fun Forall!690 (Int) Bool)

(assert (=> b!1715990 (= res!769474 (not (Forall!690 lambda!68978)))))

(declare-fun lt!655627 () Unit!32579)

(declare-fun lemmaInv!522 (TokenValueInjection!6470) Unit!32579)

(assert (=> b!1715990 (= lt!655627 (lemmaInv!522 (transformation!3315 (rule!5253 (_1!10629 lt!655638)))))))

(declare-fun b!1715992 () Bool)

(declare-fun e!1097393 () Bool)

(declare-fun e!1097397 () Bool)

(assert (=> b!1715992 (= e!1097393 (not e!1097397))))

(declare-fun res!769466 () Bool)

(assert (=> b!1715992 (=> res!769466 e!1097397)))

(declare-fun lt!655630 () List!18817)

(assert (=> b!1715992 (= res!769466 (not (matchR!2117 (regex!3315 rule!422) lt!655630)))))

(assert (=> b!1715992 (ruleValid!814 thiss!24550 rule!422)))

(declare-fun lt!655628 () Unit!32579)

(assert (=> b!1715992 (= lt!655628 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!338 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1715993 () Bool)

(declare-fun res!769471 () Bool)

(declare-fun e!1097403 () Bool)

(assert (=> b!1715993 (=> res!769471 e!1097403)))

(declare-fun lt!655625 () List!18817)

(declare-fun lt!655619 () List!18817)

(assert (=> b!1715993 (= res!769471 (not (= lt!655625 lt!655619)))))

(declare-fun b!1715994 () Bool)

(declare-fun res!769463 () Bool)

(declare-fun e!1097384 () Bool)

(assert (=> b!1715994 (=> (not res!769463) (not e!1097384))))

(declare-fun rulesInvariant!2613 (LexerInterface!2944 List!18818) Bool)

(assert (=> b!1715994 (= res!769463 (rulesInvariant!2613 thiss!24550 rules!3447))))

(declare-fun b!1715995 () Bool)

(declare-fun res!769470 () Bool)

(declare-fun e!1097391 () Bool)

(assert (=> b!1715995 (=> res!769470 e!1097391)))

(declare-fun lt!655622 () BalanceConc!12414)

(declare-fun dynLambda!8557 (Int TokenValue!3405) BalanceConc!12414)

(assert (=> b!1715995 (= res!769470 (not (= lt!655622 (dynLambda!8557 (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638)))) (value!104150 (_1!10629 lt!655638))))))))

(declare-fun b!1715996 () Bool)

(declare-fun res!769477 () Bool)

(assert (=> b!1715996 (=> res!769477 e!1097403)))

(declare-fun lt!655635 () List!18817)

(declare-fun isEmpty!11785 (List!18817) Bool)

(assert (=> b!1715996 (= res!769477 (isEmpty!11785 lt!655635))))

(assert (=> b!1715997 (= e!1097392 (and tp!490137 tp!490134))))

(declare-fun b!1715998 () Bool)

(declare-fun res!769476 () Bool)

(assert (=> b!1715998 (=> (not res!769476) (not e!1097384))))

(declare-fun isEmpty!11786 (List!18818) Bool)

(assert (=> b!1715998 (= res!769476 (not (isEmpty!11786 rules!3447)))))

(declare-fun b!1715999 () Bool)

(declare-fun res!769475 () Bool)

(assert (=> b!1715999 (=> res!769475 e!1097397)))

(declare-fun suffix!1421 () List!18817)

(assert (=> b!1715999 (= res!769475 (isEmpty!11785 suffix!1421))))

(declare-fun res!769465 () Bool)

(assert (=> start!167958 (=> (not res!769465) (not e!1097384))))

(get-info :version)

(assert (=> start!167958 (= res!769465 ((_ is Lexer!2942) thiss!24550))))

(assert (=> start!167958 e!1097384))

(declare-fun e!1097386 () Bool)

(assert (=> start!167958 e!1097386))

(assert (=> start!167958 e!1097396))

(assert (=> start!167958 true))

(declare-fun token!523 () Token!6196)

(declare-fun e!1097389 () Bool)

(declare-fun inv!24185 (Token!6196) Bool)

(assert (=> start!167958 (and (inv!24185 token!523) e!1097389)))

(declare-fun e!1097388 () Bool)

(assert (=> start!167958 e!1097388))

(declare-fun b!1715991 () Bool)

(declare-fun e!1097401 () Bool)

(declare-fun tp!490140 () Bool)

(assert (=> b!1715991 (= e!1097388 (and e!1097401 tp!490140))))

(declare-fun b!1716000 () Bool)

(declare-fun tp!490136 () Bool)

(assert (=> b!1716000 (= e!1097401 (and tp!490136 (inv!24179 (tag!3617 (h!24149 rules!3447))) (inv!24184 (transformation!3315 (h!24149 rules!3447))) e!1097404))))

(declare-fun b!1716001 () Bool)

(declare-fun res!769481 () Bool)

(assert (=> b!1716001 (=> (not res!769481) (not e!1097393))))

(assert (=> b!1716001 (= res!769481 (= (rule!5253 token!523) rule!422))))

(declare-fun b!1716002 () Bool)

(declare-fun tp!490139 () Bool)

(declare-fun e!1097383 () Bool)

(declare-fun inv!21 (TokenValue!3405) Bool)

(assert (=> b!1716002 (= e!1097389 (and (inv!21 (value!104150 token!523)) e!1097383 tp!490139))))

(declare-fun b!1716003 () Bool)

(declare-fun res!769480 () Bool)

(assert (=> b!1716003 (=> (not res!769480) (not e!1097384))))

(declare-fun contains!3337 (List!18818 Rule!6430) Bool)

(assert (=> b!1716003 (= res!769480 (contains!3337 rules!3447 rule!422))))

(declare-fun b!1716004 () Bool)

(declare-fun e!1097387 () Bool)

(assert (=> b!1716004 (= e!1097384 e!1097387)))

(declare-fun res!769469 () Bool)

(assert (=> b!1716004 (=> (not res!769469) (not e!1097387))))

(declare-datatypes ((Option!3655 0))(
  ( (None!3654) (Some!3654 (v!25049 tuple2!18454)) )
))
(declare-fun lt!655637 () Option!3655)

(declare-fun isDefined!2997 (Option!3655) Bool)

(assert (=> b!1716004 (= res!769469 (isDefined!2997 lt!655637))))

(declare-fun maxPrefix!1498 (LexerInterface!2944 List!18818 List!18817) Option!3655)

(assert (=> b!1716004 (= lt!655637 (maxPrefix!1498 thiss!24550 rules!3447 lt!655630))))

(assert (=> b!1716004 (= lt!655630 (list!7572 (charsOf!1964 token!523)))))

(declare-fun b!1716005 () Bool)

(assert (=> b!1716005 (= e!1097391 e!1097403)))

(declare-fun res!769462 () Bool)

(assert (=> b!1716005 (=> res!769462 e!1097403)))

(declare-fun lt!655621 () Option!3655)

(declare-fun apply!5120 (TokenValueInjection!6470 BalanceConc!12414) TokenValue!3405)

(declare-fun size!14895 (BalanceConc!12414) Int)

(assert (=> b!1716005 (= res!769462 (not (= lt!655621 (Some!3654 (tuple2!18455 (Token!6197 (apply!5120 (transformation!3315 (rule!5253 (_1!10629 lt!655638))) lt!655622) (rule!5253 (_1!10629 lt!655638)) (size!14895 lt!655622) lt!655635) (_2!10629 lt!655638))))))))

(declare-fun lt!655626 () Unit!32579)

(declare-fun lemmaCharactersSize!387 (Token!6196) Unit!32579)

(assert (=> b!1716005 (= lt!655626 (lemmaCharactersSize!387 (_1!10629 lt!655638)))))

(declare-fun lt!655618 () Unit!32579)

(declare-fun lemmaEqSameImage!240 (TokenValueInjection!6470 BalanceConc!12414 BalanceConc!12414) Unit!32579)

(declare-fun seqFromList!2289 (List!18817) BalanceConc!12414)

(assert (=> b!1716005 (= lt!655618 (lemmaEqSameImage!240 (transformation!3315 (rule!5253 (_1!10629 lt!655638))) lt!655622 (seqFromList!2289 (originalCharacters!4129 (_1!10629 lt!655638)))))))

(declare-fun b!1716006 () Bool)

(declare-fun res!769482 () Bool)

(assert (=> b!1716006 (=> res!769482 e!1097402)))

(assert (=> b!1716006 (= res!769482 (not (matchR!2117 (regex!3315 (rule!5253 (_1!10629 lt!655638))) lt!655635)))))

(declare-fun b!1716007 () Bool)

(assert (=> b!1716007 (= e!1097399 e!1097391)))

(declare-fun res!769473 () Bool)

(assert (=> b!1716007 (=> res!769473 e!1097391)))

(declare-fun dynLambda!8558 (Int BalanceConc!12414) TokenValue!3405)

(assert (=> b!1716007 (= res!769473 (not (= (list!7572 (dynLambda!8557 (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638)))) (dynLambda!8558 (toValue!4822 (transformation!3315 (rule!5253 (_1!10629 lt!655638)))) lt!655622))) lt!655635)))))

(declare-fun lt!655640 () Unit!32579)

(declare-fun lemmaSemiInverse!461 (TokenValueInjection!6470 BalanceConc!12414) Unit!32579)

(assert (=> b!1716007 (= lt!655640 (lemmaSemiInverse!461 (transformation!3315 (rule!5253 (_1!10629 lt!655638))) lt!655622))))

(declare-fun b!1716008 () Bool)

(assert (=> b!1716008 (= e!1097403 e!1097395)))

(declare-fun res!769467 () Bool)

(assert (=> b!1716008 (=> res!769467 e!1097395)))

(declare-fun lt!655632 () BalanceConc!12414)

(declare-fun size!14896 (List!18817) Int)

(assert (=> b!1716008 (= res!769467 (not (= lt!655621 (Some!3654 (tuple2!18455 (Token!6197 (apply!5120 (transformation!3315 (rule!5253 (_1!10629 lt!655638))) lt!655632) (rule!5253 (_1!10629 lt!655638)) (size!14896 lt!655635) lt!655635) (_2!10629 lt!655638))))))))

(declare-fun lt!655629 () Unit!32579)

(assert (=> b!1716008 (= lt!655629 (lemmaSemiInverse!461 (transformation!3315 (rule!5253 (_1!10629 lt!655638))) lt!655632))))

(assert (=> b!1716008 (= lt!655632 (seqFromList!2289 lt!655635))))

(declare-fun b!1716009 () Bool)

(declare-fun res!769460 () Bool)

(assert (=> b!1716009 (=> res!769460 e!1097403)))

(assert (=> b!1716009 (= res!769460 (not (contains!3337 rules!3447 (rule!5253 (_1!10629 lt!655638)))))))

(declare-fun b!1716010 () Bool)

(declare-fun res!769461 () Bool)

(assert (=> b!1716010 (=> res!769461 e!1097397)))

(declare-fun prefixMatch!528 (Regex!4643 List!18817) Bool)

(declare-fun rulesRegex!673 (LexerInterface!2944 List!18818) Regex!4643)

(declare-fun ++!5140 (List!18817 List!18817) List!18817)

(declare-fun head!3860 (List!18817) C!9460)

(assert (=> b!1716010 (= res!769461 (prefixMatch!528 (rulesRegex!673 thiss!24550 rules!3447) (++!5140 lt!655630 (Cons!18747 (head!3860 suffix!1421) Nil!18747))))))

(declare-fun b!1716011 () Bool)

(assert (=> b!1716011 (= e!1097397 e!1097402)))

(declare-fun res!769472 () Bool)

(assert (=> b!1716011 (=> res!769472 e!1097402)))

(declare-fun isPrefix!1556 (List!18817 List!18817) Bool)

(assert (=> b!1716011 (= res!769472 (not (isPrefix!1556 lt!655635 lt!655625)))))

(assert (=> b!1716011 (isPrefix!1556 lt!655635 lt!655619)))

(assert (=> b!1716011 (= lt!655619 (++!5140 lt!655635 (_2!10629 lt!655638)))))

(declare-fun lt!655624 () Unit!32579)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1066 (List!18817 List!18817) Unit!32579)

(assert (=> b!1716011 (= lt!655624 (lemmaConcatTwoListThenFirstIsPrefix!1066 lt!655635 (_2!10629 lt!655638)))))

(assert (=> b!1716011 (= lt!655635 (list!7572 lt!655622))))

(assert (=> b!1716011 (= lt!655622 (charsOf!1964 (_1!10629 lt!655638)))))

(assert (=> b!1716011 e!1097394))

(declare-fun res!769479 () Bool)

(assert (=> b!1716011 (=> (not res!769479) (not e!1097394))))

(declare-fun isDefined!2998 (Option!3654) Bool)

(assert (=> b!1716011 (= res!769479 (isDefined!2998 lt!655639))))

(declare-fun getRuleFromTag!365 (LexerInterface!2944 List!18818 String!21357) Option!3654)

(assert (=> b!1716011 (= lt!655639 (getRuleFromTag!365 thiss!24550 rules!3447 (tag!3617 (rule!5253 (_1!10629 lt!655638)))))))

(declare-fun lt!655631 () Unit!32579)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!365 (LexerInterface!2944 List!18818 List!18817 Token!6196) Unit!32579)

(assert (=> b!1716011 (= lt!655631 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!365 thiss!24550 rules!3447 lt!655625 (_1!10629 lt!655638)))))

(declare-fun get!5530 (Option!3655) tuple2!18454)

(assert (=> b!1716011 (= lt!655638 (get!5530 lt!655621))))

(declare-fun lt!655623 () Unit!32579)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!468 (LexerInterface!2944 List!18818 List!18817 List!18817) Unit!32579)

(assert (=> b!1716011 (= lt!655623 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!468 thiss!24550 rules!3447 lt!655630 suffix!1421))))

(assert (=> b!1716011 (= lt!655621 (maxPrefix!1498 thiss!24550 rules!3447 lt!655625))))

(assert (=> b!1716011 (isPrefix!1556 lt!655630 lt!655625)))

(declare-fun lt!655636 () Unit!32579)

(assert (=> b!1716011 (= lt!655636 (lemmaConcatTwoListThenFirstIsPrefix!1066 lt!655630 suffix!1421))))

(assert (=> b!1716011 (= lt!655625 (++!5140 lt!655630 suffix!1421))))

(declare-fun b!1716012 () Bool)

(declare-fun res!769468 () Bool)

(assert (=> b!1716012 (=> (not res!769468) (not e!1097393))))

(declare-fun lt!655634 () tuple2!18454)

(assert (=> b!1716012 (= res!769468 (isEmpty!11785 (_2!10629 lt!655634)))))

(declare-fun b!1716013 () Bool)

(assert (=> b!1716013 (= e!1097387 e!1097393)))

(declare-fun res!769464 () Bool)

(assert (=> b!1716013 (=> (not res!769464) (not e!1097393))))

(assert (=> b!1716013 (= res!769464 (= (_1!10629 lt!655634) token!523))))

(assert (=> b!1716013 (= lt!655634 (get!5530 lt!655637))))

(declare-fun b!1716014 () Bool)

(declare-fun tp_is_empty!7529 () Bool)

(declare-fun tp!490133 () Bool)

(assert (=> b!1716014 (= e!1097386 (and tp_is_empty!7529 tp!490133))))

(declare-fun b!1716015 () Bool)

(declare-fun tp!490144 () Bool)

(assert (=> b!1716015 (= e!1097383 (and tp!490144 (inv!24179 (tag!3617 (rule!5253 token!523))) (inv!24184 (transformation!3315 (rule!5253 token!523))) e!1097400))))

(assert (= (and start!167958 res!769465) b!1715998))

(assert (= (and b!1715998 res!769476) b!1715994))

(assert (= (and b!1715994 res!769463) b!1716003))

(assert (= (and b!1716003 res!769480) b!1716004))

(assert (= (and b!1716004 res!769469) b!1716013))

(assert (= (and b!1716013 res!769464) b!1716012))

(assert (= (and b!1716012 res!769468) b!1716001))

(assert (= (and b!1716001 res!769481) b!1715992))

(assert (= (and b!1715992 (not res!769466)) b!1715999))

(assert (= (and b!1715999 (not res!769475)) b!1716010))

(assert (= (and b!1716010 (not res!769461)) b!1716011))

(assert (= (and b!1716011 res!769479) b!1715986))

(assert (= (and b!1715986 res!769478) b!1715987))

(assert (= (and b!1716011 (not res!769472)) b!1716006))

(assert (= (and b!1716006 (not res!769482)) b!1715990))

(assert (= (and b!1715990 (not res!769474)) b!1716007))

(assert (= (and b!1716007 (not res!769473)) b!1715995))

(assert (= (and b!1715995 (not res!769470)) b!1716005))

(assert (= (and b!1716005 (not res!769462)) b!1716009))

(assert (= (and b!1716009 (not res!769460)) b!1715993))

(assert (= (and b!1715993 (not res!769471)) b!1715996))

(assert (= (and b!1715996 (not res!769477)) b!1716008))

(assert (= (and b!1716008 (not res!769467)) b!1715985))

(assert (= (and start!167958 ((_ is Cons!18747) suffix!1421)) b!1716014))

(assert (= b!1715988 b!1715997))

(assert (= start!167958 b!1715988))

(assert (= b!1716015 b!1715984))

(assert (= b!1716002 b!1716015))

(assert (= start!167958 b!1716002))

(assert (= b!1716000 b!1715989))

(assert (= b!1715991 b!1716000))

(assert (= (and start!167958 ((_ is Cons!18748) rules!3447)) b!1715991))

(declare-fun b_lambda!54223 () Bool)

(assert (=> (not b_lambda!54223) (not b!1715995)))

(declare-fun t!158766 () Bool)

(declare-fun tb!101385 () Bool)

(assert (=> (and b!1715984 (= (toChars!4681 (transformation!3315 (rule!5253 token!523))) (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638))))) t!158766) tb!101385))

(declare-fun b!1716031 () Bool)

(declare-fun e!1097418 () Bool)

(declare-fun tp!490147 () Bool)

(declare-fun inv!24186 (Conc!6235) Bool)

(assert (=> b!1716031 (= e!1097418 (and (inv!24186 (c!281079 (dynLambda!8557 (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638)))) (value!104150 (_1!10629 lt!655638))))) tp!490147))))

(declare-fun result!121836 () Bool)

(declare-fun inv!24187 (BalanceConc!12414) Bool)

(assert (=> tb!101385 (= result!121836 (and (inv!24187 (dynLambda!8557 (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638)))) (value!104150 (_1!10629 lt!655638)))) e!1097418))))

(assert (= tb!101385 b!1716031))

(declare-fun m!2120299 () Bool)

(assert (=> b!1716031 m!2120299))

(declare-fun m!2120301 () Bool)

(assert (=> tb!101385 m!2120301))

(assert (=> b!1715995 t!158766))

(declare-fun b_and!124587 () Bool)

(assert (= b_and!124577 (and (=> t!158766 result!121836) b_and!124587)))

(declare-fun tb!101387 () Bool)

(declare-fun t!158768 () Bool)

(assert (=> (and b!1715989 (= (toChars!4681 (transformation!3315 (h!24149 rules!3447))) (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638))))) t!158768) tb!101387))

(declare-fun result!121840 () Bool)

(assert (= result!121840 result!121836))

(assert (=> b!1715995 t!158768))

(declare-fun b_and!124589 () Bool)

(assert (= b_and!124581 (and (=> t!158768 result!121840) b_and!124589)))

(declare-fun tb!101389 () Bool)

(declare-fun t!158770 () Bool)

(assert (=> (and b!1715997 (= (toChars!4681 (transformation!3315 rule!422)) (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638))))) t!158770) tb!101389))

(declare-fun result!121842 () Bool)

(assert (= result!121842 result!121836))

(assert (=> b!1715995 t!158770))

(declare-fun b_and!124591 () Bool)

(assert (= b_and!124585 (and (=> t!158770 result!121842) b_and!124591)))

(declare-fun b_lambda!54225 () Bool)

(assert (=> (not b_lambda!54225) (not b!1716007)))

(declare-fun tb!101391 () Bool)

(declare-fun t!158772 () Bool)

(assert (=> (and b!1715984 (= (toChars!4681 (transformation!3315 (rule!5253 token!523))) (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638))))) t!158772) tb!101391))

(declare-fun tp!490148 () Bool)

(declare-fun e!1097419 () Bool)

(declare-fun b!1716032 () Bool)

(assert (=> b!1716032 (= e!1097419 (and (inv!24186 (c!281079 (dynLambda!8557 (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638)))) (dynLambda!8558 (toValue!4822 (transformation!3315 (rule!5253 (_1!10629 lt!655638)))) lt!655622)))) tp!490148))))

(declare-fun result!121844 () Bool)

(assert (=> tb!101391 (= result!121844 (and (inv!24187 (dynLambda!8557 (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638)))) (dynLambda!8558 (toValue!4822 (transformation!3315 (rule!5253 (_1!10629 lt!655638)))) lt!655622))) e!1097419))))

(assert (= tb!101391 b!1716032))

(declare-fun m!2120303 () Bool)

(assert (=> b!1716032 m!2120303))

(declare-fun m!2120305 () Bool)

(assert (=> tb!101391 m!2120305))

(assert (=> b!1716007 t!158772))

(declare-fun b_and!124593 () Bool)

(assert (= b_and!124587 (and (=> t!158772 result!121844) b_and!124593)))

(declare-fun tb!101393 () Bool)

(declare-fun t!158774 () Bool)

(assert (=> (and b!1715989 (= (toChars!4681 (transformation!3315 (h!24149 rules!3447))) (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638))))) t!158774) tb!101393))

(declare-fun result!121846 () Bool)

(assert (= result!121846 result!121844))

(assert (=> b!1716007 t!158774))

(declare-fun b_and!124595 () Bool)

(assert (= b_and!124589 (and (=> t!158774 result!121846) b_and!124595)))

(declare-fun t!158776 () Bool)

(declare-fun tb!101395 () Bool)

(assert (=> (and b!1715997 (= (toChars!4681 (transformation!3315 rule!422)) (toChars!4681 (transformation!3315 (rule!5253 (_1!10629 lt!655638))))) t!158776) tb!101395))

(declare-fun result!121848 () Bool)

(assert (= result!121848 result!121844))

(assert (=> b!1716007 t!158776))

(declare-fun b_and!124597 () Bool)

(assert (= b_and!124591 (and (=> t!158776 result!121848) b_and!124597)))

(declare-fun b_lambda!54227 () Bool)

(assert (=> (not b_lambda!54227) (not b!1716007)))

(declare-fun t!158778 () Bool)

(declare-fun tb!101397 () Bool)

(assert (=> (and b!1715984 (= (toValue!4822 (transformation!3315 (rule!5253 token!523))) (toValue!4822 (transformation!3315 (rule!5253 (_1!10629 lt!655638))))) t!158778) tb!101397))

(declare-fun result!121850 () Bool)

(assert (=> tb!101397 (= result!121850 (inv!21 (dynLambda!8558 (toValue!4822 (transformation!3315 (rule!5253 (_1!10629 lt!655638)))) lt!655622)))))

(declare-fun m!2120307 () Bool)

(assert (=> tb!101397 m!2120307))

(assert (=> b!1716007 t!158778))

(declare-fun b_and!124599 () Bool)

(assert (= b_and!124575 (and (=> t!158778 result!121850) b_and!124599)))

(declare-fun tb!101399 () Bool)

(declare-fun t!158780 () Bool)

(assert (=> (and b!1715989 (= (toValue!4822 (transformation!3315 (h!24149 rules!3447))) (toValue!4822 (transformation!3315 (rule!5253 (_1!10629 lt!655638))))) t!158780) tb!101399))

(declare-fun result!121854 () Bool)

(assert (= result!121854 result!121850))

(assert (=> b!1716007 t!158780))

(declare-fun b_and!124601 () Bool)

(assert (= b_and!124579 (and (=> t!158780 result!121854) b_and!124601)))

(declare-fun tb!101401 () Bool)

(declare-fun t!158782 () Bool)

(assert (=> (and b!1715997 (= (toValue!4822 (transformation!3315 rule!422)) (toValue!4822 (transformation!3315 (rule!5253 (_1!10629 lt!655638))))) t!158782) tb!101401))

(declare-fun result!121856 () Bool)

(assert (= result!121856 result!121850))

(assert (=> b!1716007 t!158782))

(declare-fun b_and!124603 () Bool)

(assert (= b_and!124583 (and (=> t!158782 result!121856) b_and!124603)))

(declare-fun m!2120309 () Bool)

(assert (=> b!1715995 m!2120309))

(declare-fun m!2120311 () Bool)

(assert (=> b!1715986 m!2120311))

(assert (=> b!1715986 m!2120311))

(declare-fun m!2120313 () Bool)

(assert (=> b!1715986 m!2120313))

(assert (=> b!1715986 m!2120313))

(declare-fun m!2120315 () Bool)

(assert (=> b!1715986 m!2120315))

(declare-fun m!2120317 () Bool)

(assert (=> b!1715986 m!2120317))

(declare-fun m!2120319 () Bool)

(assert (=> b!1715992 m!2120319))

(declare-fun m!2120321 () Bool)

(assert (=> b!1715992 m!2120321))

(declare-fun m!2120323 () Bool)

(assert (=> b!1715992 m!2120323))

(declare-fun m!2120325 () Bool)

(assert (=> b!1715998 m!2120325))

(declare-fun m!2120327 () Bool)

(assert (=> b!1716007 m!2120327))

(assert (=> b!1716007 m!2120327))

(declare-fun m!2120329 () Bool)

(assert (=> b!1716007 m!2120329))

(assert (=> b!1716007 m!2120329))

(declare-fun m!2120331 () Bool)

(assert (=> b!1716007 m!2120331))

(declare-fun m!2120333 () Bool)

(assert (=> b!1716007 m!2120333))

(declare-fun m!2120335 () Bool)

(assert (=> b!1716005 m!2120335))

(declare-fun m!2120337 () Bool)

(assert (=> b!1716005 m!2120337))

(declare-fun m!2120339 () Bool)

(assert (=> b!1716005 m!2120339))

(declare-fun m!2120341 () Bool)

(assert (=> b!1716005 m!2120341))

(declare-fun m!2120343 () Bool)

(assert (=> b!1716005 m!2120343))

(assert (=> b!1716005 m!2120337))

(declare-fun m!2120345 () Bool)

(assert (=> b!1715994 m!2120345))

(declare-fun m!2120347 () Bool)

(assert (=> b!1715996 m!2120347))

(declare-fun m!2120349 () Bool)

(assert (=> b!1716009 m!2120349))

(declare-fun m!2120351 () Bool)

(assert (=> b!1716013 m!2120351))

(declare-fun m!2120353 () Bool)

(assert (=> b!1715999 m!2120353))

(declare-fun m!2120355 () Bool)

(assert (=> b!1716008 m!2120355))

(declare-fun m!2120357 () Bool)

(assert (=> b!1716008 m!2120357))

(declare-fun m!2120359 () Bool)

(assert (=> b!1716008 m!2120359))

(declare-fun m!2120361 () Bool)

(assert (=> b!1716008 m!2120361))

(declare-fun m!2120363 () Bool)

(assert (=> b!1716010 m!2120363))

(declare-fun m!2120365 () Bool)

(assert (=> b!1716010 m!2120365))

(declare-fun m!2120367 () Bool)

(assert (=> b!1716010 m!2120367))

(assert (=> b!1716010 m!2120363))

(assert (=> b!1716010 m!2120367))

(declare-fun m!2120369 () Bool)

(assert (=> b!1716010 m!2120369))

(declare-fun m!2120371 () Bool)

(assert (=> start!167958 m!2120371))

(declare-fun m!2120373 () Bool)

(assert (=> b!1716015 m!2120373))

(declare-fun m!2120375 () Bool)

(assert (=> b!1716015 m!2120375))

(declare-fun m!2120377 () Bool)

(assert (=> b!1716000 m!2120377))

(declare-fun m!2120379 () Bool)

(assert (=> b!1716000 m!2120379))

(declare-fun m!2120381 () Bool)

(assert (=> b!1716004 m!2120381))

(declare-fun m!2120383 () Bool)

(assert (=> b!1716004 m!2120383))

(declare-fun m!2120385 () Bool)

(assert (=> b!1716004 m!2120385))

(assert (=> b!1716004 m!2120385))

(declare-fun m!2120387 () Bool)

(assert (=> b!1716004 m!2120387))

(assert (=> b!1716011 m!2120311))

(declare-fun m!2120389 () Bool)

(assert (=> b!1716011 m!2120389))

(declare-fun m!2120391 () Bool)

(assert (=> b!1716011 m!2120391))

(declare-fun m!2120393 () Bool)

(assert (=> b!1716011 m!2120393))

(declare-fun m!2120395 () Bool)

(assert (=> b!1716011 m!2120395))

(declare-fun m!2120397 () Bool)

(assert (=> b!1716011 m!2120397))

(declare-fun m!2120399 () Bool)

(assert (=> b!1716011 m!2120399))

(declare-fun m!2120401 () Bool)

(assert (=> b!1716011 m!2120401))

(declare-fun m!2120403 () Bool)

(assert (=> b!1716011 m!2120403))

(declare-fun m!2120405 () Bool)

(assert (=> b!1716011 m!2120405))

(declare-fun m!2120407 () Bool)

(assert (=> b!1716011 m!2120407))

(declare-fun m!2120409 () Bool)

(assert (=> b!1716011 m!2120409))

(declare-fun m!2120411 () Bool)

(assert (=> b!1716011 m!2120411))

(declare-fun m!2120413 () Bool)

(assert (=> b!1716011 m!2120413))

(declare-fun m!2120415 () Bool)

(assert (=> b!1716011 m!2120415))

(declare-fun m!2120417 () Bool)

(assert (=> b!1715985 m!2120417))

(declare-fun m!2120419 () Bool)

(assert (=> b!1715985 m!2120419))

(declare-fun m!2120421 () Bool)

(assert (=> b!1716002 m!2120421))

(declare-fun m!2120423 () Bool)

(assert (=> b!1715988 m!2120423))

(declare-fun m!2120425 () Bool)

(assert (=> b!1715988 m!2120425))

(declare-fun m!2120427 () Bool)

(assert (=> b!1716006 m!2120427))

(declare-fun m!2120429 () Bool)

(assert (=> b!1715990 m!2120429))

(declare-fun m!2120431 () Bool)

(assert (=> b!1715990 m!2120431))

(declare-fun m!2120433 () Bool)

(assert (=> b!1716003 m!2120433))

(declare-fun m!2120435 () Bool)

(assert (=> b!1716012 m!2120435))

(check-sat b_and!124603 (not b_lambda!54223) b_and!124597 (not b!1715985) (not b!1716005) (not b!1716004) b_and!124601 (not b_next!47315) b_and!124595 (not b!1716008) (not b!1716007) (not b!1715994) (not b!1716013) (not b!1716015) (not b_next!47319) (not b!1715992) (not b!1716014) (not b!1716010) (not b!1716006) b_and!124599 (not b_next!47317) (not tb!101385) (not b!1716000) (not b!1715986) (not b!1716011) (not tb!101397) (not b!1715990) (not b!1716002) (not b!1716031) (not b!1715988) (not b_next!47323) tp_is_empty!7529 (not b_next!47321) (not b!1715998) (not b!1716032) (not start!167958) (not b!1715996) (not b!1715999) (not tb!101391) (not b_lambda!54225) (not b!1715991) (not b!1716009) (not b!1716012) b_and!124593 (not b_lambda!54227) (not b_next!47325) (not b!1716003))
(check-sat (not b_next!47319) b_and!124603 b_and!124599 b_and!124597 (not b_next!47317) b_and!124601 (not b_next!47315) b_and!124595 b_and!124593 (not b_next!47325) (not b_next!47323) (not b_next!47321))
