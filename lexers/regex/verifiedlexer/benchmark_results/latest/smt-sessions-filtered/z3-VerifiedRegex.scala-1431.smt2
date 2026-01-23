; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74710 () Bool)

(assert start!74710)

(declare-fun b!841212 () Bool)

(declare-fun b_free!25089 () Bool)

(declare-fun b_next!25153 () Bool)

(assert (=> b!841212 (= b_free!25089 (not b_next!25153))))

(declare-fun tp!264542 () Bool)

(declare-fun b_and!72701 () Bool)

(assert (=> b!841212 (= tp!264542 b_and!72701)))

(declare-fun b_free!25091 () Bool)

(declare-fun b_next!25155 () Bool)

(assert (=> b!841212 (= b_free!25091 (not b_next!25155))))

(declare-fun tp!264535 () Bool)

(declare-fun b_and!72703 () Bool)

(assert (=> b!841212 (= tp!264535 b_and!72703)))

(declare-fun b!841222 () Bool)

(declare-fun b_free!25093 () Bool)

(declare-fun b_next!25157 () Bool)

(assert (=> b!841222 (= b_free!25093 (not b_next!25157))))

(declare-fun tp!264539 () Bool)

(declare-fun b_and!72705 () Bool)

(assert (=> b!841222 (= tp!264539 b_and!72705)))

(declare-fun b_free!25095 () Bool)

(declare-fun b_next!25159 () Bool)

(assert (=> b!841222 (= b_free!25095 (not b_next!25159))))

(declare-fun tp!264533 () Bool)

(declare-fun b_and!72707 () Bool)

(assert (=> b!841222 (= tp!264533 b_and!72707)))

(declare-fun b!841224 () Bool)

(declare-fun b_free!25097 () Bool)

(declare-fun b_next!25161 () Bool)

(assert (=> b!841224 (= b_free!25097 (not b_next!25161))))

(declare-fun tp!264536 () Bool)

(declare-fun b_and!72709 () Bool)

(assert (=> b!841224 (= tp!264536 b_and!72709)))

(declare-fun b_free!25099 () Bool)

(declare-fun b_next!25163 () Bool)

(assert (=> b!841224 (= b_free!25099 (not b_next!25163))))

(declare-fun tp!264541 () Bool)

(declare-fun b_and!72711 () Bool)

(assert (=> b!841224 (= tp!264541 b_and!72711)))

(declare-fun b!841207 () Bool)

(declare-fun e!553260 () Bool)

(declare-fun e!553245 () Bool)

(assert (=> b!841207 (= e!553260 e!553245)))

(declare-fun res!384509 () Bool)

(assert (=> b!841207 (=> res!384509 e!553245)))

(declare-datatypes ((List!9026 0))(
  ( (Nil!9010) (Cons!9010 (h!14411 (_ BitVec 16)) (t!93568 List!9026)) )
))
(declare-datatypes ((TokenValue!1754 0))(
  ( (FloatLiteralValue!3508 (text!12723 List!9026)) (TokenValueExt!1753 (__x!7239 Int)) (Broken!8770 (value!54781 List!9026)) (Object!1769) (End!1754) (Def!1754) (Underscore!1754) (Match!1754) (Else!1754) (Error!1754) (Case!1754) (If!1754) (Extends!1754) (Abstract!1754) (Class!1754) (Val!1754) (DelimiterValue!3508 (del!1814 List!9026)) (KeywordValue!1760 (value!54782 List!9026)) (CommentValue!3508 (value!54783 List!9026)) (WhitespaceValue!3508 (value!54784 List!9026)) (IndentationValue!1754 (value!54785 List!9026)) (String!10667) (Int32!1754) (Broken!8771 (value!54786 List!9026)) (Boolean!1755) (Unit!13454) (OperatorValue!1757 (op!1814 List!9026)) (IdentifierValue!3508 (value!54787 List!9026)) (IdentifierValue!3509 (value!54788 List!9026)) (WhitespaceValue!3509 (value!54789 List!9026)) (True!3508) (False!3508) (Broken!8772 (value!54790 List!9026)) (Broken!8773 (value!54791 List!9026)) (True!3509) (RightBrace!1754) (RightBracket!1754) (Colon!1754) (Null!1754) (Comma!1754) (LeftBracket!1754) (False!3509) (LeftBrace!1754) (ImaginaryLiteralValue!1754 (text!12724 List!9026)) (StringLiteralValue!5262 (value!54792 List!9026)) (EOFValue!1754 (value!54793 List!9026)) (IdentValue!1754 (value!54794 List!9026)) (DelimiterValue!3509 (value!54795 List!9026)) (DedentValue!1754 (value!54796 List!9026)) (NewLineValue!1754 (value!54797 List!9026)) (IntegerValue!5262 (value!54798 (_ BitVec 32)) (text!12725 List!9026)) (IntegerValue!5263 (value!54799 Int) (text!12726 List!9026)) (Times!1754) (Or!1754) (Equal!1754) (Minus!1754) (Broken!8774 (value!54800 List!9026)) (And!1754) (Div!1754) (LessEqual!1754) (Mod!1754) (Concat!3875) (Not!1754) (Plus!1754) (SpaceValue!1754 (value!54801 List!9026)) (IntegerValue!5264 (value!54802 Int) (text!12727 List!9026)) (StringLiteralValue!5263 (text!12728 List!9026)) (FloatLiteralValue!3509 (text!12729 List!9026)) (BytesLiteralValue!1754 (value!54803 List!9026)) (CommentValue!3509 (value!54804 List!9026)) (StringLiteralValue!5264 (value!54805 List!9026)) (ErrorTokenValue!1754 (msg!1815 List!9026)) )
))
(declare-datatypes ((C!4812 0))(
  ( (C!4813 (val!2654 Int)) )
))
(declare-datatypes ((Regex!2121 0))(
  ( (ElementMatch!2121 (c!137145 C!4812)) (Concat!3876 (regOne!4754 Regex!2121) (regTwo!4754 Regex!2121)) (EmptyExpr!2121) (Star!2121 (reg!2450 Regex!2121)) (EmptyLang!2121) (Union!2121 (regOne!4755 Regex!2121) (regTwo!4755 Regex!2121)) )
))
(declare-datatypes ((String!10668 0))(
  ( (String!10669 (value!54806 String)) )
))
(declare-datatypes ((List!9027 0))(
  ( (Nil!9011) (Cons!9011 (h!14412 C!4812) (t!93569 List!9027)) )
))
(declare-datatypes ((IArray!5987 0))(
  ( (IArray!5988 (innerList!3051 List!9027)) )
))
(declare-datatypes ((Conc!2991 0))(
  ( (Node!2991 (left!6692 Conc!2991) (right!7022 Conc!2991) (csize!6212 Int) (cheight!3202 Int)) (Leaf!4423 (xs!5680 IArray!5987) (csize!6213 Int)) (Empty!2991) )
))
(declare-datatypes ((BalanceConc!5996 0))(
  ( (BalanceConc!5997 (c!137146 Conc!2991)) )
))
(declare-datatypes ((TokenValueInjection!3208 0))(
  ( (TokenValueInjection!3209 (toValue!2705 Int) (toChars!2564 Int)) )
))
(declare-datatypes ((Rule!3176 0))(
  ( (Rule!3177 (regex!1688 Regex!2121) (tag!1950 String!10668) (isSeparator!1688 Bool) (transformation!1688 TokenValueInjection!3208)) )
))
(declare-datatypes ((Token!3042 0))(
  ( (Token!3043 (value!54807 TokenValue!1754) (rule!3111 Rule!3176) (size!7537 Int) (originalCharacters!2244 List!9027)) )
))
(declare-fun separatorToken!297 () Token!3042)

(declare-datatypes ((List!9028 0))(
  ( (Nil!9012) (Cons!9012 (h!14413 Token!3042) (t!93570 List!9028)) )
))
(declare-fun lt!318648 () List!9028)

(declare-fun lt!318651 () List!9028)

(declare-datatypes ((LexerInterface!1490 0))(
  ( (LexerInterfaceExt!1487 (__x!7240 Int)) (Lexer!1488) )
))
(declare-fun thiss!20117 () LexerInterface!1490)

(declare-fun withSeparatorTokenList!20 (LexerInterface!1490 List!9028 Token!3042) List!9028)

(assert (=> b!841207 (= res!384509 (not (= (t!93570 (t!93570 lt!318651)) (withSeparatorTokenList!20 thiss!20117 lt!318648 separatorToken!297))))))

(declare-fun l!5107 () List!9028)

(declare-fun tail!1006 (List!9028) List!9028)

(assert (=> b!841207 (= lt!318648 (tail!1006 l!5107))))

(declare-fun b!841208 () Bool)

(declare-fun e!553250 () Bool)

(assert (=> b!841208 (= e!553250 true)))

(declare-fun e!553252 () Bool)

(declare-fun e!553257 () Bool)

(declare-fun tp!264537 () Bool)

(declare-datatypes ((List!9029 0))(
  ( (Nil!9013) (Cons!9013 (h!14414 Rule!3176) (t!93571 List!9029)) )
))
(declare-fun rules!2621 () List!9029)

(declare-fun b!841209 () Bool)

(declare-fun inv!11484 (String!10668) Bool)

(declare-fun inv!11487 (TokenValueInjection!3208) Bool)

(assert (=> b!841209 (= e!553252 (and tp!264537 (inv!11484 (tag!1950 (h!14414 rules!2621))) (inv!11487 (transformation!1688 (h!14414 rules!2621))) e!553257))))

(declare-fun b!841211 () Bool)

(declare-fun res!384512 () Bool)

(declare-fun e!553248 () Bool)

(assert (=> b!841211 (=> (not res!384512) (not e!553248))))

(declare-fun rulesProduceEachTokenIndividuallyList!378 (LexerInterface!1490 List!9029 List!9028) Bool)

(assert (=> b!841211 (= res!384512 (rulesProduceEachTokenIndividuallyList!378 thiss!20117 rules!2621 l!5107))))

(declare-fun e!553254 () Bool)

(assert (=> b!841212 (= e!553254 (and tp!264542 tp!264535))))

(declare-fun b!841213 () Bool)

(declare-fun res!384510 () Bool)

(assert (=> b!841213 (=> res!384510 e!553245)))

(assert (=> b!841213 (= res!384510 (not (= (h!14413 (t!93570 lt!318651)) separatorToken!297)))))

(declare-fun e!553244 () Bool)

(declare-fun tp!264534 () Bool)

(declare-fun e!553251 () Bool)

(declare-fun b!841214 () Bool)

(declare-fun inv!11488 (Token!3042) Bool)

(assert (=> b!841214 (= e!553244 (and (inv!11488 (h!14413 l!5107)) e!553251 tp!264534))))

(declare-fun b!841215 () Bool)

(assert (=> b!841215 (= e!553248 (not e!553260))))

(declare-fun res!384504 () Bool)

(assert (=> b!841215 (=> res!384504 e!553260)))

(get-info :version)

(assert (=> b!841215 (= res!384504 (or (not ((_ is Cons!9012) lt!318651)) (not ((_ is Cons!9012) (t!93570 lt!318651)))))))

(assert (=> b!841215 (rulesProduceEachTokenIndividuallyList!378 thiss!20117 rules!2621 lt!318651)))

(assert (=> b!841215 (= lt!318651 (withSeparatorTokenList!20 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13455 0))(
  ( (Unit!13456) )
))
(declare-fun lt!318649 () Unit!13455)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!20 (LexerInterface!1490 List!9029 List!9028 Token!3042) Unit!13455)

(assert (=> b!841215 (= lt!318649 (withSeparatorTokenListPreservesRulesProduceTokens!20 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun e!553253 () Bool)

(declare-fun b!841216 () Bool)

(declare-fun tp!264531 () Bool)

(declare-fun e!553256 () Bool)

(assert (=> b!841216 (= e!553256 (and tp!264531 (inv!11484 (tag!1950 (rule!3111 (h!14413 l!5107)))) (inv!11487 (transformation!1688 (rule!3111 (h!14413 l!5107)))) e!553253))))

(declare-fun b!841217 () Bool)

(declare-fun res!384507 () Bool)

(assert (=> b!841217 (=> res!384507 e!553245)))

(declare-fun head!1448 (List!9028) Token!3042)

(assert (=> b!841217 (= res!384507 (not (= (head!1448 l!5107) (h!14413 lt!318651))))))

(declare-fun b!841218 () Bool)

(declare-fun res!384511 () Bool)

(assert (=> b!841218 (=> (not res!384511) (not e!553248))))

(declare-fun isEmpty!5315 (List!9029) Bool)

(assert (=> b!841218 (= res!384511 (not (isEmpty!5315 rules!2621)))))

(declare-fun b!841219 () Bool)

(assert (=> b!841219 (= e!553245 e!553250)))

(declare-fun res!384501 () Bool)

(assert (=> b!841219 (=> res!384501 e!553250)))

(assert (=> b!841219 (= res!384501 (not (rulesProduceEachTokenIndividuallyList!378 thiss!20117 rules!2621 lt!318648)))))

(declare-fun separableTokensPredicate!30 (LexerInterface!1490 Token!3042 Token!3042 List!9029) Bool)

(assert (=> b!841219 (separableTokensPredicate!30 thiss!20117 (h!14413 lt!318651) (h!14413 (t!93570 lt!318651)) rules!2621)))

(declare-fun lt!318650 () Unit!13455)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!12 (LexerInterface!1490 Token!3042 Token!3042 List!9029) Unit!13455)

(assert (=> b!841219 (= lt!318650 (lemmaTokensOfDifferentKindsAreSeparable!12 thiss!20117 (h!14413 lt!318651) (h!14413 (t!93570 lt!318651)) rules!2621))))

(declare-fun b!841220 () Bool)

(declare-fun res!384506 () Bool)

(assert (=> b!841220 (=> (not res!384506) (not e!553248))))

(declare-fun sepAndNonSepRulesDisjointChars!488 (List!9029 List!9029) Bool)

(assert (=> b!841220 (= res!384506 (sepAndNonSepRulesDisjointChars!488 rules!2621 rules!2621))))

(declare-fun e!553255 () Bool)

(declare-fun tp!264538 () Bool)

(declare-fun b!841221 () Bool)

(assert (=> b!841221 (= e!553255 (and tp!264538 (inv!11484 (tag!1950 (rule!3111 separatorToken!297))) (inv!11487 (transformation!1688 (rule!3111 separatorToken!297))) e!553254))))

(assert (=> b!841222 (= e!553257 (and tp!264539 tp!264533))))

(declare-fun b!841223 () Bool)

(declare-fun res!384505 () Bool)

(assert (=> b!841223 (=> (not res!384505) (not e!553248))))

(declare-fun rulesProduceIndividualToken!554 (LexerInterface!1490 List!9029 Token!3042) Bool)

(assert (=> b!841223 (= res!384505 (rulesProduceIndividualToken!554 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun res!384502 () Bool)

(assert (=> start!74710 (=> (not res!384502) (not e!553248))))

(assert (=> start!74710 (= res!384502 ((_ is Lexer!1488) thiss!20117))))

(assert (=> start!74710 e!553248))

(assert (=> start!74710 true))

(declare-fun e!553259 () Bool)

(assert (=> start!74710 e!553259))

(assert (=> start!74710 e!553244))

(declare-fun e!553258 () Bool)

(assert (=> start!74710 (and (inv!11488 separatorToken!297) e!553258)))

(declare-fun b!841210 () Bool)

(declare-fun tp!264540 () Bool)

(declare-fun inv!21 (TokenValue!1754) Bool)

(assert (=> b!841210 (= e!553258 (and (inv!21 (value!54807 separatorToken!297)) e!553255 tp!264540))))

(assert (=> b!841224 (= e!553253 (and tp!264536 tp!264541))))

(declare-fun b!841225 () Bool)

(declare-fun res!384500 () Bool)

(assert (=> b!841225 (=> (not res!384500) (not e!553248))))

(declare-fun lambda!24972 () Int)

(declare-fun forall!2103 (List!9028 Int) Bool)

(assert (=> b!841225 (= res!384500 (forall!2103 l!5107 lambda!24972))))

(declare-fun b!841226 () Bool)

(declare-fun tp!264532 () Bool)

(assert (=> b!841226 (= e!553259 (and e!553252 tp!264532))))

(declare-fun b!841227 () Bool)

(declare-fun res!384503 () Bool)

(assert (=> b!841227 (=> (not res!384503) (not e!553248))))

(assert (=> b!841227 (= res!384503 (isSeparator!1688 (rule!3111 separatorToken!297)))))

(declare-fun tp!264530 () Bool)

(declare-fun b!841228 () Bool)

(assert (=> b!841228 (= e!553251 (and (inv!21 (value!54807 (h!14413 l!5107))) e!553256 tp!264530))))

(declare-fun b!841229 () Bool)

(declare-fun res!384508 () Bool)

(assert (=> b!841229 (=> (not res!384508) (not e!553248))))

(declare-fun rulesInvariant!1366 (LexerInterface!1490 List!9029) Bool)

(assert (=> b!841229 (= res!384508 (rulesInvariant!1366 thiss!20117 rules!2621))))

(assert (= (and start!74710 res!384502) b!841218))

(assert (= (and b!841218 res!384511) b!841229))

(assert (= (and b!841229 res!384508) b!841211))

(assert (= (and b!841211 res!384512) b!841223))

(assert (= (and b!841223 res!384505) b!841227))

(assert (= (and b!841227 res!384503) b!841225))

(assert (= (and b!841225 res!384500) b!841220))

(assert (= (and b!841220 res!384506) b!841215))

(assert (= (and b!841215 (not res!384504)) b!841207))

(assert (= (and b!841207 (not res!384509)) b!841217))

(assert (= (and b!841217 (not res!384507)) b!841213))

(assert (= (and b!841213 (not res!384510)) b!841219))

(assert (= (and b!841219 (not res!384501)) b!841208))

(assert (= b!841209 b!841222))

(assert (= b!841226 b!841209))

(assert (= (and start!74710 ((_ is Cons!9013) rules!2621)) b!841226))

(assert (= b!841216 b!841224))

(assert (= b!841228 b!841216))

(assert (= b!841214 b!841228))

(assert (= (and start!74710 ((_ is Cons!9012) l!5107)) b!841214))

(assert (= b!841221 b!841212))

(assert (= b!841210 b!841221))

(assert (= start!74710 b!841210))

(declare-fun m!1074287 () Bool)

(assert (=> b!841229 m!1074287))

(declare-fun m!1074289 () Bool)

(assert (=> b!841214 m!1074289))

(declare-fun m!1074291 () Bool)

(assert (=> b!841228 m!1074291))

(declare-fun m!1074293 () Bool)

(assert (=> b!841223 m!1074293))

(declare-fun m!1074295 () Bool)

(assert (=> b!841209 m!1074295))

(declare-fun m!1074297 () Bool)

(assert (=> b!841209 m!1074297))

(declare-fun m!1074299 () Bool)

(assert (=> b!841216 m!1074299))

(declare-fun m!1074301 () Bool)

(assert (=> b!841216 m!1074301))

(declare-fun m!1074303 () Bool)

(assert (=> b!841225 m!1074303))

(declare-fun m!1074305 () Bool)

(assert (=> b!841218 m!1074305))

(declare-fun m!1074307 () Bool)

(assert (=> b!841215 m!1074307))

(declare-fun m!1074309 () Bool)

(assert (=> b!841215 m!1074309))

(declare-fun m!1074311 () Bool)

(assert (=> b!841215 m!1074311))

(declare-fun m!1074313 () Bool)

(assert (=> start!74710 m!1074313))

(declare-fun m!1074315 () Bool)

(assert (=> b!841207 m!1074315))

(declare-fun m!1074317 () Bool)

(assert (=> b!841207 m!1074317))

(declare-fun m!1074319 () Bool)

(assert (=> b!841221 m!1074319))

(declare-fun m!1074321 () Bool)

(assert (=> b!841221 m!1074321))

(declare-fun m!1074323 () Bool)

(assert (=> b!841217 m!1074323))

(declare-fun m!1074325 () Bool)

(assert (=> b!841210 m!1074325))

(declare-fun m!1074327 () Bool)

(assert (=> b!841211 m!1074327))

(declare-fun m!1074329 () Bool)

(assert (=> b!841219 m!1074329))

(declare-fun m!1074331 () Bool)

(assert (=> b!841219 m!1074331))

(declare-fun m!1074333 () Bool)

(assert (=> b!841219 m!1074333))

(declare-fun m!1074335 () Bool)

(assert (=> b!841220 m!1074335))

(check-sat (not b!841228) (not b!841218) (not b_next!25153) (not b_next!25157) b_and!72705 (not b!841210) (not b!841217) (not b!841223) (not b!841226) (not b!841225) b_and!72703 (not b_next!25155) b_and!72701 b_and!72711 b_and!72709 (not b_next!25161) (not b_next!25159) (not b!841219) (not start!74710) (not b!841207) (not b!841215) (not b!841209) (not b!841220) b_and!72707 (not b!841229) (not b!841211) (not b!841221) (not b!841214) (not b_next!25163) (not b!841216))
(check-sat (not b_next!25153) b_and!72703 (not b_next!25157) b_and!72705 b_and!72707 (not b_next!25163) (not b_next!25155) b_and!72701 b_and!72711 b_and!72709 (not b_next!25161) (not b_next!25159))
