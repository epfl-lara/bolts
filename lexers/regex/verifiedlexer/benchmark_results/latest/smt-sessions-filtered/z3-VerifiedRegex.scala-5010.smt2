; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253686 () Bool)

(assert start!253686)

(declare-fun b!2609562 () Bool)

(declare-fun b_free!73261 () Bool)

(declare-fun b_next!73965 () Bool)

(assert (=> b!2609562 (= b_free!73261 (not b_next!73965))))

(declare-fun tp!828961 () Bool)

(declare-fun b_and!190819 () Bool)

(assert (=> b!2609562 (= tp!828961 b_and!190819)))

(declare-fun b_free!73263 () Bool)

(declare-fun b_next!73967 () Bool)

(assert (=> b!2609562 (= b_free!73263 (not b_next!73967))))

(declare-fun tp!828962 () Bool)

(declare-fun b_and!190821 () Bool)

(assert (=> b!2609562 (= tp!828962 b_and!190821)))

(declare-fun b!2609561 () Bool)

(declare-fun b_free!73265 () Bool)

(declare-fun b_next!73969 () Bool)

(assert (=> b!2609561 (= b_free!73265 (not b_next!73969))))

(declare-fun tp!828959 () Bool)

(declare-fun b_and!190823 () Bool)

(assert (=> b!2609561 (= tp!828959 b_and!190823)))

(declare-fun b_free!73267 () Bool)

(declare-fun b_next!73971 () Bool)

(assert (=> b!2609561 (= b_free!73267 (not b_next!73971))))

(declare-fun tp!828965 () Bool)

(declare-fun b_and!190825 () Bool)

(assert (=> b!2609561 (= tp!828965 b_and!190825)))

(declare-fun b!2609554 () Bool)

(declare-fun res!1098280 () Bool)

(declare-fun e!1646382 () Bool)

(assert (=> b!2609554 (=> (not res!1098280) (not e!1646382))))

(declare-datatypes ((LexerInterface!4138 0))(
  ( (LexerInterfaceExt!4135 (__x!19359 Int)) (Lexer!4136) )
))
(declare-fun thiss!14197 () LexerInterface!4138)

(declare-datatypes ((List!30189 0))(
  ( (Nil!30089) (Cons!30089 (h!35509 (_ BitVec 16)) (t!213948 List!30189)) )
))
(declare-datatypes ((C!15528 0))(
  ( (C!15529 (val!9698 Int)) )
))
(declare-datatypes ((Regex!7685 0))(
  ( (ElementMatch!7685 (c!419576 C!15528)) (Concat!12448 (regOne!15882 Regex!7685) (regTwo!15882 Regex!7685)) (EmptyExpr!7685) (Star!7685 (reg!8014 Regex!7685)) (EmptyLang!7685) (Union!7685 (regOne!15883 Regex!7685) (regTwo!15883 Regex!7685)) )
))
(declare-datatypes ((String!33698 0))(
  ( (String!33699 (value!146997 String)) )
))
(declare-datatypes ((TokenValue!4763 0))(
  ( (FloatLiteralValue!9526 (text!33786 List!30189)) (TokenValueExt!4762 (__x!19360 Int)) (Broken!23815 (value!146998 List!30189)) (Object!4862) (End!4763) (Def!4763) (Underscore!4763) (Match!4763) (Else!4763) (Error!4763) (Case!4763) (If!4763) (Extends!4763) (Abstract!4763) (Class!4763) (Val!4763) (DelimiterValue!9526 (del!4823 List!30189)) (KeywordValue!4769 (value!146999 List!30189)) (CommentValue!9526 (value!147000 List!30189)) (WhitespaceValue!9526 (value!147001 List!30189)) (IndentationValue!4763 (value!147002 List!30189)) (String!33700) (Int32!4763) (Broken!23816 (value!147003 List!30189)) (Boolean!4764) (Unit!44088) (OperatorValue!4766 (op!4823 List!30189)) (IdentifierValue!9526 (value!147004 List!30189)) (IdentifierValue!9527 (value!147005 List!30189)) (WhitespaceValue!9527 (value!147006 List!30189)) (True!9526) (False!9526) (Broken!23817 (value!147007 List!30189)) (Broken!23818 (value!147008 List!30189)) (True!9527) (RightBrace!4763) (RightBracket!4763) (Colon!4763) (Null!4763) (Comma!4763) (LeftBracket!4763) (False!9527) (LeftBrace!4763) (ImaginaryLiteralValue!4763 (text!33787 List!30189)) (StringLiteralValue!14289 (value!147009 List!30189)) (EOFValue!4763 (value!147010 List!30189)) (IdentValue!4763 (value!147011 List!30189)) (DelimiterValue!9527 (value!147012 List!30189)) (DedentValue!4763 (value!147013 List!30189)) (NewLineValue!4763 (value!147014 List!30189)) (IntegerValue!14289 (value!147015 (_ BitVec 32)) (text!33788 List!30189)) (IntegerValue!14290 (value!147016 Int) (text!33789 List!30189)) (Times!4763) (Or!4763) (Equal!4763) (Minus!4763) (Broken!23819 (value!147017 List!30189)) (And!4763) (Div!4763) (LessEqual!4763) (Mod!4763) (Concat!12449) (Not!4763) (Plus!4763) (SpaceValue!4763 (value!147018 List!30189)) (IntegerValue!14291 (value!147019 Int) (text!33790 List!30189)) (StringLiteralValue!14290 (text!33791 List!30189)) (FloatLiteralValue!9527 (text!33792 List!30189)) (BytesLiteralValue!4763 (value!147020 List!30189)) (CommentValue!9527 (value!147021 List!30189)) (StringLiteralValue!14291 (value!147022 List!30189)) (ErrorTokenValue!4763 (msg!4824 List!30189)) )
))
(declare-datatypes ((List!30190 0))(
  ( (Nil!30090) (Cons!30090 (h!35510 C!15528) (t!213949 List!30190)) )
))
(declare-datatypes ((IArray!18653 0))(
  ( (IArray!18654 (innerList!9384 List!30190)) )
))
(declare-datatypes ((Conc!9324 0))(
  ( (Node!9324 (left!23142 Conc!9324) (right!23472 Conc!9324) (csize!18878 Int) (cheight!9535 Int)) (Leaf!14335 (xs!12308 IArray!18653) (csize!18879 Int)) (Empty!9324) )
))
(declare-datatypes ((BalanceConc!18262 0))(
  ( (BalanceConc!18263 (c!419577 Conc!9324)) )
))
(declare-datatypes ((TokenValueInjection!8966 0))(
  ( (TokenValueInjection!8967 (toValue!6443 Int) (toChars!6302 Int)) )
))
(declare-datatypes ((Rule!8882 0))(
  ( (Rule!8883 (regex!4541 Regex!7685) (tag!5031 String!33698) (isSeparator!4541 Bool) (transformation!4541 TokenValueInjection!8966)) )
))
(declare-datatypes ((List!30191 0))(
  ( (Nil!30091) (Cons!30091 (h!35511 Rule!8882) (t!213950 List!30191)) )
))
(declare-fun rules!1726 () List!30191)

(declare-datatypes ((Token!8552 0))(
  ( (Token!8553 (value!147023 TokenValue!4763) (rule!6911 Rule!8882) (size!23311 Int) (originalCharacters!5307 List!30190)) )
))
(declare-datatypes ((List!30192 0))(
  ( (Nil!30092) (Cons!30092 (h!35512 Token!8552) (t!213951 List!30192)) )
))
(declare-datatypes ((IArray!18655 0))(
  ( (IArray!18656 (innerList!9385 List!30192)) )
))
(declare-datatypes ((Conc!9325 0))(
  ( (Node!9325 (left!23143 Conc!9325) (right!23473 Conc!9325) (csize!18880 Int) (cheight!9536 Int)) (Leaf!14336 (xs!12309 IArray!18655) (csize!18881 Int)) (Empty!9325) )
))
(declare-datatypes ((BalanceConc!18264 0))(
  ( (BalanceConc!18265 (c!419578 Conc!9325)) )
))
(declare-fun v!6381 () BalanceConc!18264)

(declare-fun rulesProduceEachTokenIndividually!958 (LexerInterface!4138 List!30191 BalanceConc!18264) Bool)

(assert (=> b!2609554 (= res!1098280 (rulesProduceEachTokenIndividually!958 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2609555 () Bool)

(declare-fun e!1646377 () Bool)

(assert (=> b!2609555 (= e!1646377 e!1646382)))

(declare-fun res!1098278 () Bool)

(assert (=> b!2609555 (=> (not res!1098278) (not e!1646382))))

(declare-fun from!862 () Int)

(declare-fun lt!916986 () Int)

(assert (=> b!2609555 (= res!1098278 (<= from!862 lt!916986))))

(declare-fun size!23312 (BalanceConc!18264) Int)

(assert (=> b!2609555 (= lt!916986 (size!23312 v!6381))))

(declare-fun b!2609556 () Bool)

(declare-fun e!1646375 () Bool)

(assert (=> b!2609556 (= e!1646375 false)))

(declare-fun lt!916985 () Int)

(declare-fun lt!916984 () List!30192)

(declare-fun size!23313 (List!30192) Int)

(assert (=> b!2609556 (= lt!916985 (size!23313 lt!916984))))

(declare-fun b!2609557 () Bool)

(declare-fun res!1098274 () Bool)

(assert (=> b!2609557 (=> (not res!1098274) (not e!1646382))))

(declare-fun lambda!97578 () Int)

(declare-fun forall!6233 (BalanceConc!18264 Int) Bool)

(assert (=> b!2609557 (= res!1098274 (forall!6233 v!6381 lambda!97578))))

(declare-fun b!2609558 () Bool)

(declare-fun e!1646383 () Bool)

(declare-fun tp!828958 () Bool)

(declare-fun inv!40712 (Conc!9325) Bool)

(assert (=> b!2609558 (= e!1646383 (and (inv!40712 (c!419578 v!6381)) tp!828958))))

(declare-fun b!2609559 () Bool)

(declare-fun tp!828963 () Bool)

(declare-fun e!1646374 () Bool)

(declare-fun separatorToken!156 () Token!8552)

(declare-fun e!1646373 () Bool)

(declare-fun inv!40707 (String!33698) Bool)

(declare-fun inv!40713 (TokenValueInjection!8966) Bool)

(assert (=> b!2609559 (= e!1646373 (and tp!828963 (inv!40707 (tag!5031 (rule!6911 separatorToken!156))) (inv!40713 (transformation!4541 (rule!6911 separatorToken!156))) e!1646374))))

(declare-fun tp!828960 () Bool)

(declare-fun b!2609560 () Bool)

(declare-fun e!1646380 () Bool)

(declare-fun e!1646379 () Bool)

(assert (=> b!2609560 (= e!1646379 (and tp!828960 (inv!40707 (tag!5031 (h!35511 rules!1726))) (inv!40713 (transformation!4541 (h!35511 rules!1726))) e!1646380))))

(assert (=> b!2609561 (= e!1646374 (and tp!828959 tp!828965))))

(declare-fun res!1098271 () Bool)

(assert (=> start!253686 (=> (not res!1098271) (not e!1646377))))

(get-info :version)

(assert (=> start!253686 (= res!1098271 (and ((_ is Lexer!4136) thiss!14197) (>= from!862 0)))))

(assert (=> start!253686 e!1646377))

(assert (=> start!253686 true))

(declare-fun e!1646384 () Bool)

(assert (=> start!253686 e!1646384))

(declare-fun e!1646381 () Bool)

(declare-fun inv!40714 (Token!8552) Bool)

(assert (=> start!253686 (and (inv!40714 separatorToken!156) e!1646381)))

(declare-fun inv!40715 (BalanceConc!18264) Bool)

(assert (=> start!253686 (and (inv!40715 v!6381) e!1646383)))

(assert (=> b!2609562 (= e!1646380 (and tp!828961 tp!828962))))

(declare-fun b!2609563 () Bool)

(assert (=> b!2609563 (= e!1646382 e!1646375)))

(declare-fun res!1098279 () Bool)

(assert (=> b!2609563 (=> (not res!1098279) (not e!1646375))))

(assert (=> b!2609563 (= res!1098279 (< from!862 lt!916986))))

(declare-datatypes ((Unit!44089 0))(
  ( (Unit!44090) )
))
(declare-fun lt!916987 () Unit!44089)

(declare-fun lemmaContentSubsetPreservesForall!210 (List!30192 List!30192 Int) Unit!44089)

(declare-fun dropList!844 (BalanceConc!18264 Int) List!30192)

(assert (=> b!2609563 (= lt!916987 (lemmaContentSubsetPreservesForall!210 lt!916984 (dropList!844 v!6381 from!862) lambda!97578))))

(declare-fun list!11299 (BalanceConc!18264) List!30192)

(assert (=> b!2609563 (= lt!916984 (list!11299 v!6381))))

(declare-fun b!2609564 () Bool)

(declare-fun res!1098276 () Bool)

(assert (=> b!2609564 (=> (not res!1098276) (not e!1646382))))

(declare-fun rulesInvariant!3638 (LexerInterface!4138 List!30191) Bool)

(assert (=> b!2609564 (= res!1098276 (rulesInvariant!3638 thiss!14197 rules!1726))))

(declare-fun tp!828964 () Bool)

(declare-fun b!2609565 () Bool)

(declare-fun inv!21 (TokenValue!4763) Bool)

(assert (=> b!2609565 (= e!1646381 (and (inv!21 (value!147023 separatorToken!156)) e!1646373 tp!828964))))

(declare-fun b!2609566 () Bool)

(declare-fun res!1098272 () Bool)

(assert (=> b!2609566 (=> (not res!1098272) (not e!1646382))))

(declare-fun sepAndNonSepRulesDisjointChars!1114 (List!30191 List!30191) Bool)

(assert (=> b!2609566 (= res!1098272 (sepAndNonSepRulesDisjointChars!1114 rules!1726 rules!1726))))

(declare-fun b!2609567 () Bool)

(declare-fun res!1098273 () Bool)

(assert (=> b!2609567 (=> (not res!1098273) (not e!1646382))))

(assert (=> b!2609567 (= res!1098273 (isSeparator!4541 (rule!6911 separatorToken!156)))))

(declare-fun b!2609568 () Bool)

(declare-fun res!1098275 () Bool)

(assert (=> b!2609568 (=> (not res!1098275) (not e!1646382))))

(declare-fun rulesProduceIndividualToken!1850 (LexerInterface!4138 List!30191 Token!8552) Bool)

(assert (=> b!2609568 (= res!1098275 (rulesProduceIndividualToken!1850 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2609569 () Bool)

(declare-fun tp!828966 () Bool)

(assert (=> b!2609569 (= e!1646384 (and e!1646379 tp!828966))))

(declare-fun b!2609570 () Bool)

(declare-fun res!1098277 () Bool)

(assert (=> b!2609570 (=> (not res!1098277) (not e!1646382))))

(declare-fun isEmpty!17214 (List!30191) Bool)

(assert (=> b!2609570 (= res!1098277 (not (isEmpty!17214 rules!1726)))))

(assert (= (and start!253686 res!1098271) b!2609555))

(assert (= (and b!2609555 res!1098278) b!2609570))

(assert (= (and b!2609570 res!1098277) b!2609564))

(assert (= (and b!2609564 res!1098276) b!2609554))

(assert (= (and b!2609554 res!1098280) b!2609568))

(assert (= (and b!2609568 res!1098275) b!2609567))

(assert (= (and b!2609567 res!1098273) b!2609557))

(assert (= (and b!2609557 res!1098274) b!2609566))

(assert (= (and b!2609566 res!1098272) b!2609563))

(assert (= (and b!2609563 res!1098279) b!2609556))

(assert (= b!2609560 b!2609562))

(assert (= b!2609569 b!2609560))

(assert (= (and start!253686 ((_ is Cons!30091) rules!1726)) b!2609569))

(assert (= b!2609559 b!2609561))

(assert (= b!2609565 b!2609559))

(assert (= start!253686 b!2609565))

(assert (= start!253686 b!2609558))

(declare-fun m!2944271 () Bool)

(assert (=> b!2609566 m!2944271))

(declare-fun m!2944273 () Bool)

(assert (=> b!2609559 m!2944273))

(declare-fun m!2944275 () Bool)

(assert (=> b!2609559 m!2944275))

(declare-fun m!2944277 () Bool)

(assert (=> b!2609556 m!2944277))

(declare-fun m!2944279 () Bool)

(assert (=> start!253686 m!2944279))

(declare-fun m!2944281 () Bool)

(assert (=> start!253686 m!2944281))

(declare-fun m!2944283 () Bool)

(assert (=> b!2609555 m!2944283))

(declare-fun m!2944285 () Bool)

(assert (=> b!2609554 m!2944285))

(declare-fun m!2944287 () Bool)

(assert (=> b!2609560 m!2944287))

(declare-fun m!2944289 () Bool)

(assert (=> b!2609560 m!2944289))

(declare-fun m!2944291 () Bool)

(assert (=> b!2609563 m!2944291))

(assert (=> b!2609563 m!2944291))

(declare-fun m!2944293 () Bool)

(assert (=> b!2609563 m!2944293))

(declare-fun m!2944295 () Bool)

(assert (=> b!2609563 m!2944295))

(declare-fun m!2944297 () Bool)

(assert (=> b!2609564 m!2944297))

(declare-fun m!2944299 () Bool)

(assert (=> b!2609570 m!2944299))

(declare-fun m!2944301 () Bool)

(assert (=> b!2609558 m!2944301))

(declare-fun m!2944303 () Bool)

(assert (=> b!2609557 m!2944303))

(declare-fun m!2944305 () Bool)

(assert (=> b!2609568 m!2944305))

(declare-fun m!2944307 () Bool)

(assert (=> b!2609565 m!2944307))

(check-sat (not b!2609566) (not b!2609556) (not b_next!73965) (not b!2609554) b_and!190819 (not b!2609558) (not b!2609555) (not b!2609570) (not b!2609557) b_and!190825 (not b_next!73971) (not b!2609560) (not b_next!73969) (not b!2609569) (not b!2609559) (not b!2609563) (not b!2609568) (not b!2609564) (not b_next!73967) b_and!190821 b_and!190823 (not start!253686) (not b!2609565))
(check-sat (not b_next!73965) b_and!190819 b_and!190825 (not b_next!73967) (not b_next!73971) (not b_next!73969) b_and!190821 b_and!190823)
