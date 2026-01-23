; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180362 () Bool)

(assert start!180362)

(declare-fun b!1821562 () Bool)

(declare-fun b_free!50607 () Bool)

(declare-fun b_next!51311 () Bool)

(assert (=> b!1821562 (= b_free!50607 (not b_next!51311))))

(declare-fun tp!515028 () Bool)

(declare-fun b_and!141293 () Bool)

(assert (=> b!1821562 (= tp!515028 b_and!141293)))

(declare-fun b_free!50609 () Bool)

(declare-fun b_next!51313 () Bool)

(assert (=> b!1821562 (= b_free!50609 (not b_next!51313))))

(declare-fun tp!515034 () Bool)

(declare-fun b_and!141295 () Bool)

(assert (=> b!1821562 (= tp!515034 b_and!141295)))

(declare-fun b!1821543 () Bool)

(declare-fun b_free!50611 () Bool)

(declare-fun b_next!51315 () Bool)

(assert (=> b!1821543 (= b_free!50611 (not b_next!51315))))

(declare-fun tp!515027 () Bool)

(declare-fun b_and!141297 () Bool)

(assert (=> b!1821543 (= tp!515027 b_and!141297)))

(declare-fun b_free!50613 () Bool)

(declare-fun b_next!51317 () Bool)

(assert (=> b!1821543 (= b_free!50613 (not b_next!51317))))

(declare-fun tp!515038 () Bool)

(declare-fun b_and!141299 () Bool)

(assert (=> b!1821543 (= tp!515038 b_and!141299)))

(declare-fun b!1821548 () Bool)

(declare-fun b_free!50615 () Bool)

(declare-fun b_next!51319 () Bool)

(assert (=> b!1821548 (= b_free!50615 (not b_next!51319))))

(declare-fun tp!515031 () Bool)

(declare-fun b_and!141301 () Bool)

(assert (=> b!1821548 (= tp!515031 b_and!141301)))

(declare-fun b_free!50617 () Bool)

(declare-fun b_next!51321 () Bool)

(assert (=> b!1821548 (= b_free!50617 (not b_next!51321))))

(declare-fun tp!515030 () Bool)

(declare-fun b_and!141303 () Bool)

(assert (=> b!1821548 (= tp!515030 b_and!141303)))

(declare-fun b!1821558 () Bool)

(assert (=> b!1821558 true))

(declare-fun e!1164163 () Bool)

(assert (=> b!1821543 (= e!1164163 (and tp!515027 tp!515038))))

(declare-fun b!1821544 () Bool)

(declare-fun e!1164149 () Bool)

(declare-fun e!1164158 () Bool)

(assert (=> b!1821544 (= e!1164149 e!1164158)))

(declare-fun res!819172 () Bool)

(assert (=> b!1821544 (=> (not res!819172) (not e!1164158))))

(declare-datatypes ((List!20044 0))(
  ( (Nil!19974) (Cons!19974 (h!25375 (_ BitVec 16)) (t!169921 List!20044)) )
))
(declare-datatypes ((TokenValue!3691 0))(
  ( (FloatLiteralValue!7382 (text!26282 List!20044)) (TokenValueExt!3690 (__x!12684 Int)) (Broken!18455 (value!112269 List!20044)) (Object!3760) (End!3691) (Def!3691) (Underscore!3691) (Match!3691) (Else!3691) (Error!3691) (Case!3691) (If!3691) (Extends!3691) (Abstract!3691) (Class!3691) (Val!3691) (DelimiterValue!7382 (del!3751 List!20044)) (KeywordValue!3697 (value!112270 List!20044)) (CommentValue!7382 (value!112271 List!20044)) (WhitespaceValue!7382 (value!112272 List!20044)) (IndentationValue!3691 (value!112273 List!20044)) (String!22786) (Int32!3691) (Broken!18456 (value!112274 List!20044)) (Boolean!3692) (Unit!34646) (OperatorValue!3694 (op!3751 List!20044)) (IdentifierValue!7382 (value!112275 List!20044)) (IdentifierValue!7383 (value!112276 List!20044)) (WhitespaceValue!7383 (value!112277 List!20044)) (True!7382) (False!7382) (Broken!18457 (value!112278 List!20044)) (Broken!18458 (value!112279 List!20044)) (True!7383) (RightBrace!3691) (RightBracket!3691) (Colon!3691) (Null!3691) (Comma!3691) (LeftBracket!3691) (False!7383) (LeftBrace!3691) (ImaginaryLiteralValue!3691 (text!26283 List!20044)) (StringLiteralValue!11073 (value!112280 List!20044)) (EOFValue!3691 (value!112281 List!20044)) (IdentValue!3691 (value!112282 List!20044)) (DelimiterValue!7383 (value!112283 List!20044)) (DedentValue!3691 (value!112284 List!20044)) (NewLineValue!3691 (value!112285 List!20044)) (IntegerValue!11073 (value!112286 (_ BitVec 32)) (text!26284 List!20044)) (IntegerValue!11074 (value!112287 Int) (text!26285 List!20044)) (Times!3691) (Or!3691) (Equal!3691) (Minus!3691) (Broken!18459 (value!112288 List!20044)) (And!3691) (Div!3691) (LessEqual!3691) (Mod!3691) (Concat!8620) (Not!3691) (Plus!3691) (SpaceValue!3691 (value!112289 List!20044)) (IntegerValue!11075 (value!112290 Int) (text!26286 List!20044)) (StringLiteralValue!11074 (text!26287 List!20044)) (FloatLiteralValue!7383 (text!26288 List!20044)) (BytesLiteralValue!3691 (value!112291 List!20044)) (CommentValue!7383 (value!112292 List!20044)) (StringLiteralValue!11075 (value!112293 List!20044)) (ErrorTokenValue!3691 (msg!3752 List!20044)) )
))
(declare-datatypes ((C!10032 0))(
  ( (C!10033 (val!5612 Int)) )
))
(declare-datatypes ((List!20045 0))(
  ( (Nil!19975) (Cons!19975 (h!25376 C!10032) (t!169922 List!20045)) )
))
(declare-datatypes ((IArray!13271 0))(
  ( (IArray!13272 (innerList!6693 List!20045)) )
))
(declare-datatypes ((Conc!6633 0))(
  ( (Node!6633 (left!15995 Conc!6633) (right!16325 Conc!6633) (csize!13496 Int) (cheight!6844 Int)) (Leaf!9654 (xs!9509 IArray!13271) (csize!13497 Int)) (Empty!6633) )
))
(declare-datatypes ((BalanceConc!13210 0))(
  ( (BalanceConc!13211 (c!297198 Conc!6633)) )
))
(declare-datatypes ((TokenValueInjection!7042 0))(
  ( (TokenValueInjection!7043 (toValue!5136 Int) (toChars!4995 Int)) )
))
(declare-datatypes ((Regex!4929 0))(
  ( (ElementMatch!4929 (c!297199 C!10032)) (Concat!8621 (regOne!10370 Regex!4929) (regTwo!10370 Regex!4929)) (EmptyExpr!4929) (Star!4929 (reg!5258 Regex!4929)) (EmptyLang!4929) (Union!4929 (regOne!10371 Regex!4929) (regTwo!10371 Regex!4929)) )
))
(declare-datatypes ((String!22787 0))(
  ( (String!22788 (value!112294 String)) )
))
(declare-datatypes ((Rule!7002 0))(
  ( (Rule!7003 (regex!3601 Regex!4929) (tag!4015 String!22787) (isSeparator!3601 Bool) (transformation!3601 TokenValueInjection!7042)) )
))
(declare-datatypes ((Token!6756 0))(
  ( (Token!6757 (value!112295 TokenValue!3691) (rule!5731 Rule!7002) (size!15845 Int) (originalCharacters!4409 List!20045)) )
))
(declare-datatypes ((tuple2!19486 0))(
  ( (tuple2!19487 (_1!11145 Token!6756) (_2!11145 List!20045)) )
))
(declare-datatypes ((Option!4181 0))(
  ( (None!4180) (Some!4180 (v!25721 tuple2!19486)) )
))
(declare-fun lt!707793 () Option!4181)

(declare-datatypes ((LexerInterface!3230 0))(
  ( (LexerInterfaceExt!3227 (__x!12685 Int)) (Lexer!3228) )
))
(declare-fun thiss!28068 () LexerInterface!3230)

(declare-datatypes ((List!20046 0))(
  ( (Nil!19976) (Cons!19976 (h!25377 Rule!7002) (t!169923 List!20046)) )
))
(declare-fun rules!4538 () List!20046)

(declare-fun input!3612 () List!20045)

(declare-fun maxPrefix!1778 (LexerInterface!3230 List!20046 List!20045) Option!4181)

(assert (=> b!1821544 (= res!819172 (= (maxPrefix!1778 thiss!28068 rules!4538 input!3612) lt!707793))))

(declare-fun token!556 () Token!6756)

(declare-fun suffix!1667 () List!20045)

(assert (=> b!1821544 (= lt!707793 (Some!4180 (tuple2!19487 token!556 suffix!1667)))))

(declare-fun b!1821545 () Bool)

(declare-fun e!1164165 () Bool)

(declare-fun tp!515033 () Bool)

(declare-fun tp!515041 () Bool)

(assert (=> b!1821545 (= e!1164165 (and tp!515033 tp!515041))))

(declare-fun b!1821546 () Bool)

(declare-fun e!1164166 () Bool)

(assert (=> b!1821546 (= e!1164158 e!1164166)))

(declare-fun res!819171 () Bool)

(assert (=> b!1821546 (=> (not res!819171) (not e!1164166))))

(declare-fun lt!707794 () List!20045)

(declare-fun ++!5425 (List!20045 List!20045) List!20045)

(assert (=> b!1821546 (= res!819171 (= input!3612 (++!5425 lt!707794 suffix!1667)))))

(declare-fun list!8117 (BalanceConc!13210) List!20045)

(declare-fun charsOf!2244 (Token!6756) BalanceConc!13210)

(assert (=> b!1821546 (= lt!707794 (list!8117 (charsOf!2244 token!556)))))

(declare-fun b!1821547 () Bool)

(declare-fun e!1164156 () Bool)

(declare-fun e!1164170 () Bool)

(assert (=> b!1821547 (= e!1164156 e!1164170)))

(declare-fun res!819176 () Bool)

(assert (=> b!1821547 (=> res!819176 e!1164170)))

(declare-fun lt!707792 () Option!4181)

(assert (=> b!1821547 (= res!819176 (not (= lt!707792 lt!707793)))))

(declare-fun lt!707796 () TokenValue!3691)

(declare-fun lt!707786 () Int)

(declare-fun rule!559 () Rule!7002)

(assert (=> b!1821547 (= lt!707792 (Some!4180 (tuple2!19487 (Token!6757 lt!707796 rule!559 lt!707786 lt!707794) suffix!1667)))))

(declare-fun maxPrefixOneRule!1143 (LexerInterface!3230 Rule!7002 List!20045) Option!4181)

(assert (=> b!1821547 (= lt!707792 (maxPrefixOneRule!1143 thiss!28068 rule!559 input!3612))))

(declare-fun size!15846 (List!20045) Int)

(assert (=> b!1821547 (= lt!707786 (size!15846 lt!707794))))

(declare-fun apply!5393 (TokenValueInjection!7042 BalanceConc!13210) TokenValue!3691)

(declare-fun seqFromList!2562 (List!20045) BalanceConc!13210)

(assert (=> b!1821547 (= lt!707796 (apply!5393 (transformation!3601 rule!559) (seqFromList!2562 lt!707794)))))

(declare-datatypes ((Unit!34647 0))(
  ( (Unit!34648) )
))
(declare-fun lt!707784 () Unit!34647)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!519 (LexerInterface!3230 List!20046 List!20045 List!20045 List!20045 Rule!7002) Unit!34647)

(assert (=> b!1821547 (= lt!707784 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!519 thiss!28068 rules!4538 lt!707794 input!3612 suffix!1667 rule!559))))

(declare-fun e!1164161 () Bool)

(assert (=> b!1821548 (= e!1164161 (and tp!515031 tp!515030))))

(declare-fun e!1164155 () Bool)

(declare-fun tp!515032 () Bool)

(declare-fun e!1164167 () Bool)

(declare-fun b!1821549 () Bool)

(declare-fun inv!26004 (String!22787) Bool)

(declare-fun inv!26007 (TokenValueInjection!7042) Bool)

(assert (=> b!1821549 (= e!1164155 (and tp!515032 (inv!26004 (tag!4015 rule!559)) (inv!26007 (transformation!3601 rule!559)) e!1164167))))

(declare-fun b!1821550 () Bool)

(declare-fun res!819179 () Bool)

(assert (=> b!1821550 (=> (not res!819179) (not e!1164149))))

(declare-fun isEmpty!12615 (List!20046) Bool)

(assert (=> b!1821550 (= res!819179 (not (isEmpty!12615 rules!4538)))))

(declare-fun b!1821551 () Bool)

(declare-fun res!819177 () Bool)

(assert (=> b!1821551 (=> (not res!819177) (not e!1164149))))

(declare-fun rulesInvariant!2899 (LexerInterface!3230 List!20046) Bool)

(assert (=> b!1821551 (= res!819177 (rulesInvariant!2899 thiss!28068 rules!4538))))

(declare-fun b!1821552 () Bool)

(declare-fun e!1164148 () Bool)

(declare-fun tp!515037 () Bool)

(assert (=> b!1821552 (= e!1164148 (and tp!515037 (inv!26004 (tag!4015 (rule!5731 token!556))) (inv!26007 (transformation!3601 (rule!5731 token!556))) e!1164161))))

(declare-fun b!1821554 () Bool)

(declare-fun tp!515035 () Bool)

(declare-fun tp!515040 () Bool)

(assert (=> b!1821554 (= e!1164165 (and tp!515035 tp!515040))))

(declare-fun b!1821555 () Bool)

(assert (=> b!1821555 (= e!1164166 (not e!1164156))))

(declare-fun res!819178 () Bool)

(assert (=> b!1821555 (=> res!819178 e!1164156)))

(declare-fun matchR!2394 (Regex!4929 List!20045) Bool)

(assert (=> b!1821555 (= res!819178 (not (matchR!2394 (regex!3601 rule!559) lt!707794)))))

(declare-fun ruleValid!1093 (LexerInterface!3230 Rule!7002) Bool)

(assert (=> b!1821555 (ruleValid!1093 thiss!28068 rule!559)))

(declare-fun lt!707788 () Unit!34647)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!614 (LexerInterface!3230 Rule!7002 List!20046) Unit!34647)

(assert (=> b!1821555 (= lt!707788 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!614 thiss!28068 rule!559 rules!4538))))

(declare-fun tp!515029 () Bool)

(declare-fun e!1164164 () Bool)

(declare-fun b!1821556 () Bool)

(declare-fun inv!21 (TokenValue!3691) Bool)

(assert (=> b!1821556 (= e!1164164 (and (inv!21 (value!112295 token!556)) e!1164148 tp!515029))))

(declare-fun b!1821557 () Bool)

(declare-fun e!1164169 () Bool)

(declare-fun e!1164152 () Bool)

(declare-fun tp!515039 () Bool)

(assert (=> b!1821557 (= e!1164169 (and e!1164152 tp!515039))))

(declare-fun e!1164160 () Bool)

(declare-fun e!1164168 () Bool)

(assert (=> b!1821558 (= e!1164160 e!1164168)))

(declare-fun res!819175 () Bool)

(assert (=> b!1821558 (=> res!819175 e!1164168)))

(declare-fun validRegex!1999 (Regex!4929) Bool)

(assert (=> b!1821558 (= res!819175 (not (validRegex!1999 (regex!3601 rule!559))))))

(declare-fun lambda!71346 () Int)

(declare-datatypes ((List!20047 0))(
  ( (Nil!19977) (Cons!19977 (h!25378 Regex!4929) (t!169924 List!20047)) )
))
(declare-fun lt!707789 () List!20047)

(declare-fun lt!707783 () Regex!4929)

(declare-fun exists!631 (List!20047 Int) Bool)

(assert (=> b!1821558 (= (matchR!2394 lt!707783 lt!707794) (exists!631 lt!707789 lambda!71346))))

(declare-fun lt!707785 () Unit!34647)

(declare-fun matchRGenUnionSpec!216 (Regex!4929 List!20047 List!20045) Unit!34647)

(assert (=> b!1821558 (= lt!707785 (matchRGenUnionSpec!216 lt!707783 lt!707789 lt!707794))))

(declare-fun b!1821559 () Bool)

(assert (=> b!1821559 (= e!1164168 true)))

(assert (=> b!1821559 (exists!631 lt!707789 lambda!71346)))

(declare-fun lt!707790 () Unit!34647)

(declare-fun lemmaContainsThenExists!41 (List!20047 Regex!4929 Int) Unit!34647)

(assert (=> b!1821559 (= lt!707790 (lemmaContainsThenExists!41 lt!707789 (regex!3601 rule!559) lambda!71346))))

(declare-fun b!1821560 () Bool)

(declare-fun e!1164153 () Bool)

(declare-fun tp_is_empty!8093 () Bool)

(declare-fun tp!515036 () Bool)

(assert (=> b!1821560 (= e!1164153 (and tp_is_empty!8093 tp!515036))))

(declare-fun b!1821561 () Bool)

(declare-fun e!1164162 () Bool)

(assert (=> b!1821561 (= e!1164162 e!1164160)))

(declare-fun res!819174 () Bool)

(assert (=> b!1821561 (=> res!819174 e!1164160)))

(declare-fun contains!3650 (List!20047 Regex!4929) Bool)

(assert (=> b!1821561 (= res!819174 (not (contains!3650 lt!707789 (regex!3601 rule!559))))))

(declare-fun lambda!71345 () Int)

(declare-fun map!4132 (List!20046 Int) List!20047)

(assert (=> b!1821561 (= lt!707789 (map!4132 rules!4538 lambda!71345))))

(declare-fun lt!707795 () Unit!34647)

(declare-fun lemma!471 (List!20045 Rule!7002 List!20046 List!20045 LexerInterface!3230 Token!6756 List!20046) Unit!34647)

(assert (=> b!1821561 (= lt!707795 (lemma!471 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (=> b!1821562 (= e!1164167 (and tp!515028 tp!515034))))

(declare-fun b!1821563 () Bool)

(declare-fun e!1164154 () Bool)

(declare-fun tp!515042 () Bool)

(assert (=> b!1821563 (= e!1164154 (and tp_is_empty!8093 tp!515042))))

(declare-fun tp!515043 () Bool)

(declare-fun b!1821564 () Bool)

(assert (=> b!1821564 (= e!1164152 (and tp!515043 (inv!26004 (tag!4015 (h!25377 rules!4538))) (inv!26007 (transformation!3601 (h!25377 rules!4538))) e!1164163))))

(declare-fun b!1821565 () Bool)

(assert (=> b!1821565 (= e!1164165 tp_is_empty!8093)))

(declare-fun b!1821566 () Bool)

(assert (=> b!1821566 (= e!1164170 e!1164162)))

(declare-fun res!819170 () Bool)

(assert (=> b!1821566 (=> res!819170 e!1164162)))

(declare-fun lt!707791 () List!20047)

(declare-fun generalisedUnion!456 (List!20047) Regex!4929)

(assert (=> b!1821566 (= res!819170 (not (= lt!707783 (generalisedUnion!456 lt!707791))))))

(declare-fun rulesRegex!933 (LexerInterface!3230 List!20046) Regex!4929)

(assert (=> b!1821566 (= lt!707783 (rulesRegex!933 thiss!28068 rules!4538))))

(assert (=> b!1821566 (= lt!707791 (map!4132 rules!4538 lambda!71345))))

(declare-fun lt!707787 () Unit!34647)

(declare-fun lemma!472 (List!20045 Rule!7002 List!20046 List!20045 LexerInterface!3230 Token!6756 List!20046) Unit!34647)

(assert (=> b!1821566 (= lt!707787 (lemma!472 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1821567 () Bool)

(declare-fun tp!515044 () Bool)

(assert (=> b!1821567 (= e!1164165 tp!515044)))

(declare-fun b!1821568 () Bool)

(declare-fun res!819180 () Bool)

(assert (=> b!1821568 (=> (not res!819180) (not e!1164158))))

(assert (=> b!1821568 (= res!819180 (= (rule!5731 token!556) rule!559))))

(declare-fun res!819173 () Bool)

(assert (=> start!180362 (=> (not res!819173) (not e!1164149))))

(get-info :version)

(assert (=> start!180362 (= res!819173 ((_ is Lexer!3228) thiss!28068))))

(assert (=> start!180362 e!1164149))

(assert (=> start!180362 e!1164153))

(assert (=> start!180362 true))

(assert (=> start!180362 e!1164169))

(declare-fun inv!26008 (Token!6756) Bool)

(assert (=> start!180362 (and (inv!26008 token!556) e!1164164)))

(assert (=> start!180362 e!1164165))

(assert (=> start!180362 e!1164155))

(assert (=> start!180362 e!1164154))

(declare-fun b!1821553 () Bool)

(declare-fun res!819169 () Bool)

(assert (=> b!1821553 (=> (not res!819169) (not e!1164149))))

(declare-fun contains!3651 (List!20046 Rule!7002) Bool)

(assert (=> b!1821553 (= res!819169 (contains!3651 rules!4538 rule!559))))

(assert (= (and start!180362 res!819173) b!1821550))

(assert (= (and b!1821550 res!819179) b!1821551))

(assert (= (and b!1821551 res!819177) b!1821553))

(assert (= (and b!1821553 res!819169) b!1821544))

(assert (= (and b!1821544 res!819172) b!1821568))

(assert (= (and b!1821568 res!819180) b!1821546))

(assert (= (and b!1821546 res!819171) b!1821555))

(assert (= (and b!1821555 (not res!819178)) b!1821547))

(assert (= (and b!1821547 (not res!819176)) b!1821566))

(assert (= (and b!1821566 (not res!819170)) b!1821561))

(assert (= (and b!1821561 (not res!819174)) b!1821558))

(assert (= (and b!1821558 (not res!819175)) b!1821559))

(assert (= (and start!180362 ((_ is Cons!19975) suffix!1667)) b!1821560))

(assert (= b!1821564 b!1821543))

(assert (= b!1821557 b!1821564))

(assert (= (and start!180362 ((_ is Cons!19976) rules!4538)) b!1821557))

(assert (= b!1821552 b!1821548))

(assert (= b!1821556 b!1821552))

(assert (= start!180362 b!1821556))

(declare-fun rr!29 () Regex!4929)

(assert (= (and start!180362 ((_ is ElementMatch!4929) rr!29)) b!1821565))

(assert (= (and start!180362 ((_ is Concat!8621) rr!29)) b!1821554))

(assert (= (and start!180362 ((_ is Star!4929) rr!29)) b!1821567))

(assert (= (and start!180362 ((_ is Union!4929) rr!29)) b!1821545))

(assert (= b!1821549 b!1821562))

(assert (= start!180362 b!1821549))

(assert (= (and start!180362 ((_ is Cons!19975) input!3612)) b!1821563))

(declare-fun m!2250345 () Bool)

(assert (=> b!1821558 m!2250345))

(declare-fun m!2250347 () Bool)

(assert (=> b!1821558 m!2250347))

(declare-fun m!2250349 () Bool)

(assert (=> b!1821558 m!2250349))

(declare-fun m!2250351 () Bool)

(assert (=> b!1821558 m!2250351))

(declare-fun m!2250353 () Bool)

(assert (=> b!1821546 m!2250353))

(declare-fun m!2250355 () Bool)

(assert (=> b!1821546 m!2250355))

(assert (=> b!1821546 m!2250355))

(declare-fun m!2250357 () Bool)

(assert (=> b!1821546 m!2250357))

(declare-fun m!2250359 () Bool)

(assert (=> b!1821549 m!2250359))

(declare-fun m!2250361 () Bool)

(assert (=> b!1821549 m!2250361))

(declare-fun m!2250363 () Bool)

(assert (=> b!1821555 m!2250363))

(declare-fun m!2250365 () Bool)

(assert (=> b!1821555 m!2250365))

(declare-fun m!2250367 () Bool)

(assert (=> b!1821555 m!2250367))

(declare-fun m!2250369 () Bool)

(assert (=> b!1821553 m!2250369))

(declare-fun m!2250371 () Bool)

(assert (=> b!1821566 m!2250371))

(declare-fun m!2250373 () Bool)

(assert (=> b!1821566 m!2250373))

(declare-fun m!2250375 () Bool)

(assert (=> b!1821566 m!2250375))

(declare-fun m!2250377 () Bool)

(assert (=> b!1821566 m!2250377))

(assert (=> b!1821559 m!2250349))

(declare-fun m!2250379 () Bool)

(assert (=> b!1821559 m!2250379))

(declare-fun m!2250381 () Bool)

(assert (=> b!1821564 m!2250381))

(declare-fun m!2250383 () Bool)

(assert (=> b!1821564 m!2250383))

(declare-fun m!2250385 () Bool)

(assert (=> start!180362 m!2250385))

(declare-fun m!2250387 () Bool)

(assert (=> b!1821552 m!2250387))

(declare-fun m!2250389 () Bool)

(assert (=> b!1821552 m!2250389))

(declare-fun m!2250391 () Bool)

(assert (=> b!1821550 m!2250391))

(declare-fun m!2250393 () Bool)

(assert (=> b!1821547 m!2250393))

(declare-fun m!2250395 () Bool)

(assert (=> b!1821547 m!2250395))

(declare-fun m!2250397 () Bool)

(assert (=> b!1821547 m!2250397))

(assert (=> b!1821547 m!2250397))

(declare-fun m!2250399 () Bool)

(assert (=> b!1821547 m!2250399))

(declare-fun m!2250401 () Bool)

(assert (=> b!1821547 m!2250401))

(declare-fun m!2250403 () Bool)

(assert (=> b!1821561 m!2250403))

(assert (=> b!1821561 m!2250375))

(declare-fun m!2250405 () Bool)

(assert (=> b!1821561 m!2250405))

(declare-fun m!2250407 () Bool)

(assert (=> b!1821556 m!2250407))

(declare-fun m!2250409 () Bool)

(assert (=> b!1821551 m!2250409))

(declare-fun m!2250411 () Bool)

(assert (=> b!1821544 m!2250411))

(check-sat (not b!1821559) b_and!141299 b_and!141303 (not b!1821553) b_and!141297 (not b_next!51315) (not b!1821546) (not b!1821567) tp_is_empty!8093 (not b!1821547) b_and!141293 (not b!1821556) (not b!1821566) (not b!1821550) b_and!141301 (not b!1821555) (not b!1821563) (not b!1821564) (not b_next!51319) b_and!141295 (not b!1821552) (not b_next!51321) (not start!180362) (not b_next!51317) (not b_next!51313) (not b_next!51311) (not b!1821545) (not b!1821558) (not b!1821561) (not b!1821560) (not b!1821551) (not b!1821554) (not b!1821544) (not b!1821557) (not b!1821549))
(check-sat b_and!141293 b_and!141299 b_and!141301 b_and!141303 (not b_next!51319) b_and!141295 (not b_next!51321) b_and!141297 (not b_next!51315) (not b_next!51317) (not b_next!51313) (not b_next!51311))
