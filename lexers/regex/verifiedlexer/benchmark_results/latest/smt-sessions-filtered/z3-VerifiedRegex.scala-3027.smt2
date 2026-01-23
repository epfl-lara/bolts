; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181022 () Bool)

(assert start!181022)

(declare-fun b!1825883 () Bool)

(declare-fun b_free!50823 () Bool)

(declare-fun b_next!51527 () Bool)

(assert (=> b!1825883 (= b_free!50823 (not b_next!51527))))

(declare-fun tp!516228 () Bool)

(declare-fun b_and!141801 () Bool)

(assert (=> b!1825883 (= tp!516228 b_and!141801)))

(declare-fun b_free!50825 () Bool)

(declare-fun b_next!51529 () Bool)

(assert (=> b!1825883 (= b_free!50825 (not b_next!51529))))

(declare-fun tp!516232 () Bool)

(declare-fun b_and!141803 () Bool)

(assert (=> b!1825883 (= tp!516232 b_and!141803)))

(declare-fun b!1825889 () Bool)

(declare-fun b_free!50827 () Bool)

(declare-fun b_next!51531 () Bool)

(assert (=> b!1825889 (= b_free!50827 (not b_next!51531))))

(declare-fun tp!516230 () Bool)

(declare-fun b_and!141805 () Bool)

(assert (=> b!1825889 (= tp!516230 b_and!141805)))

(declare-fun b_free!50829 () Bool)

(declare-fun b_next!51533 () Bool)

(assert (=> b!1825889 (= b_free!50829 (not b_next!51533))))

(declare-fun tp!516227 () Bool)

(declare-fun b_and!141807 () Bool)

(assert (=> b!1825889 (= tp!516227 b_and!141807)))

(declare-fun b!1825881 () Bool)

(declare-fun b_free!50831 () Bool)

(declare-fun b_next!51535 () Bool)

(assert (=> b!1825881 (= b_free!50831 (not b_next!51535))))

(declare-fun tp!516236 () Bool)

(declare-fun b_and!141809 () Bool)

(assert (=> b!1825881 (= tp!516236 b_and!141809)))

(declare-fun b_free!50833 () Bool)

(declare-fun b_next!51537 () Bool)

(assert (=> b!1825881 (= b_free!50833 (not b_next!51537))))

(declare-fun tp!516237 () Bool)

(declare-fun b_and!141811 () Bool)

(assert (=> b!1825881 (= tp!516237 b_and!141811)))

(declare-fun b!1825892 () Bool)

(assert (=> b!1825892 true))

(declare-fun b!1825876 () Bool)

(declare-fun e!1166958 () Bool)

(declare-fun e!1166954 () Bool)

(assert (=> b!1825876 (= e!1166958 e!1166954)))

(declare-fun res!821129 () Bool)

(assert (=> b!1825876 (=> (not res!821129) (not e!1166954))))

(declare-datatypes ((LexerInterface!3244 0))(
  ( (LexerInterfaceExt!3241 (__x!12712 Int)) (Lexer!3242) )
))
(declare-fun thiss!28068 () LexerInterface!3244)

(declare-datatypes ((List!20108 0))(
  ( (Nil!20038) (Cons!20038 (h!25439 (_ BitVec 16)) (t!170275 List!20108)) )
))
(declare-datatypes ((TokenValue!3705 0))(
  ( (FloatLiteralValue!7410 (text!26380 List!20108)) (TokenValueExt!3704 (__x!12713 Int)) (Broken!18525 (value!112668 List!20108)) (Object!3774) (End!3705) (Def!3705) (Underscore!3705) (Match!3705) (Else!3705) (Error!3705) (Case!3705) (If!3705) (Extends!3705) (Abstract!3705) (Class!3705) (Val!3705) (DelimiterValue!7410 (del!3765 List!20108)) (KeywordValue!3711 (value!112669 List!20108)) (CommentValue!7410 (value!112670 List!20108)) (WhitespaceValue!7410 (value!112671 List!20108)) (IndentationValue!3705 (value!112672 List!20108)) (String!22856) (Int32!3705) (Broken!18526 (value!112673 List!20108)) (Boolean!3706) (Unit!34716) (OperatorValue!3708 (op!3765 List!20108)) (IdentifierValue!7410 (value!112674 List!20108)) (IdentifierValue!7411 (value!112675 List!20108)) (WhitespaceValue!7411 (value!112676 List!20108)) (True!7410) (False!7410) (Broken!18527 (value!112677 List!20108)) (Broken!18528 (value!112678 List!20108)) (True!7411) (RightBrace!3705) (RightBracket!3705) (Colon!3705) (Null!3705) (Comma!3705) (LeftBracket!3705) (False!7411) (LeftBrace!3705) (ImaginaryLiteralValue!3705 (text!26381 List!20108)) (StringLiteralValue!11115 (value!112679 List!20108)) (EOFValue!3705 (value!112680 List!20108)) (IdentValue!3705 (value!112681 List!20108)) (DelimiterValue!7411 (value!112682 List!20108)) (DedentValue!3705 (value!112683 List!20108)) (NewLineValue!3705 (value!112684 List!20108)) (IntegerValue!11115 (value!112685 (_ BitVec 32)) (text!26382 List!20108)) (IntegerValue!11116 (value!112686 Int) (text!26383 List!20108)) (Times!3705) (Or!3705) (Equal!3705) (Minus!3705) (Broken!18529 (value!112687 List!20108)) (And!3705) (Div!3705) (LessEqual!3705) (Mod!3705) (Concat!8648) (Not!3705) (Plus!3705) (SpaceValue!3705 (value!112688 List!20108)) (IntegerValue!11117 (value!112689 Int) (text!26384 List!20108)) (StringLiteralValue!11116 (text!26385 List!20108)) (FloatLiteralValue!7411 (text!26386 List!20108)) (BytesLiteralValue!3705 (value!112690 List!20108)) (CommentValue!7411 (value!112691 List!20108)) (StringLiteralValue!11117 (value!112692 List!20108)) (ErrorTokenValue!3705 (msg!3766 List!20108)) )
))
(declare-datatypes ((C!10060 0))(
  ( (C!10061 (val!5626 Int)) )
))
(declare-datatypes ((List!20109 0))(
  ( (Nil!20039) (Cons!20039 (h!25440 C!10060) (t!170276 List!20109)) )
))
(declare-datatypes ((IArray!13299 0))(
  ( (IArray!13300 (innerList!6707 List!20109)) )
))
(declare-datatypes ((Conc!6647 0))(
  ( (Node!6647 (left!16036 Conc!6647) (right!16366 Conc!6647) (csize!13524 Int) (cheight!6858 Int)) (Leaf!9675 (xs!9523 IArray!13299) (csize!13525 Int)) (Empty!6647) )
))
(declare-datatypes ((BalanceConc!13238 0))(
  ( (BalanceConc!13239 (c!297884 Conc!6647)) )
))
(declare-datatypes ((TokenValueInjection!7070 0))(
  ( (TokenValueInjection!7071 (toValue!5154 Int) (toChars!5013 Int)) )
))
(declare-datatypes ((Regex!4943 0))(
  ( (ElementMatch!4943 (c!297885 C!10060)) (Concat!8649 (regOne!10398 Regex!4943) (regTwo!10398 Regex!4943)) (EmptyExpr!4943) (Star!4943 (reg!5272 Regex!4943)) (EmptyLang!4943) (Union!4943 (regOne!10399 Regex!4943) (regTwo!10399 Regex!4943)) )
))
(declare-datatypes ((String!22857 0))(
  ( (String!22858 (value!112693 String)) )
))
(declare-datatypes ((Rule!7030 0))(
  ( (Rule!7031 (regex!3615 Regex!4943) (tag!4029 String!22857) (isSeparator!3615 Bool) (transformation!3615 TokenValueInjection!7070)) )
))
(declare-datatypes ((List!20110 0))(
  ( (Nil!20040) (Cons!20040 (h!25441 Rule!7030) (t!170277 List!20110)) )
))
(declare-fun rules!4538 () List!20110)

(declare-fun input!3612 () List!20109)

(declare-datatypes ((Token!6784 0))(
  ( (Token!6785 (value!112694 TokenValue!3705) (rule!5769 Rule!7030) (size!15901 Int) (originalCharacters!4423 List!20109)) )
))
(declare-datatypes ((tuple2!19534 0))(
  ( (tuple2!19535 (_1!11169 Token!6784) (_2!11169 List!20109)) )
))
(declare-datatypes ((Option!4195 0))(
  ( (None!4194) (Some!4194 (v!25751 tuple2!19534)) )
))
(declare-fun lt!709439 () Option!4195)

(declare-fun maxPrefix!1792 (LexerInterface!3244 List!20110 List!20109) Option!4195)

(assert (=> b!1825876 (= res!821129 (= (maxPrefix!1792 thiss!28068 rules!4538 input!3612) lt!709439))))

(declare-fun token!556 () Token!6784)

(declare-fun suffix!1667 () List!20109)

(assert (=> b!1825876 (= lt!709439 (Some!4194 (tuple2!19535 token!556 suffix!1667)))))

(declare-fun b!1825877 () Bool)

(declare-fun res!821127 () Bool)

(assert (=> b!1825877 (=> (not res!821127) (not e!1166954))))

(declare-fun rule!559 () Rule!7030)

(assert (=> b!1825877 (= res!821127 (= (rule!5769 token!556) rule!559))))

(declare-fun b!1825878 () Bool)

(declare-fun e!1166960 () Bool)

(declare-fun e!1166968 () Bool)

(declare-fun tp!516231 () Bool)

(declare-fun inv!26079 (String!22857) Bool)

(declare-fun inv!26082 (TokenValueInjection!7070) Bool)

(assert (=> b!1825878 (= e!1166960 (and tp!516231 (inv!26079 (tag!4029 (h!25441 rules!4538))) (inv!26082 (transformation!3615 (h!25441 rules!4538))) e!1166968))))

(declare-fun b!1825879 () Bool)

(declare-fun res!821131 () Bool)

(assert (=> b!1825879 (=> (not res!821131) (not e!1166958))))

(declare-fun rulesInvariant!2913 (LexerInterface!3244 List!20110) Bool)

(assert (=> b!1825879 (= res!821131 (rulesInvariant!2913 thiss!28068 rules!4538))))

(declare-fun b!1825880 () Bool)

(declare-fun e!1166950 () Bool)

(declare-fun e!1166951 () Bool)

(assert (=> b!1825880 (= e!1166950 (not e!1166951))))

(declare-fun res!821126 () Bool)

(assert (=> b!1825880 (=> res!821126 e!1166951)))

(declare-fun lt!709443 () List!20109)

(declare-fun matchR!2408 (Regex!4943 List!20109) Bool)

(assert (=> b!1825880 (= res!821126 (not (matchR!2408 (regex!3615 rule!559) lt!709443)))))

(declare-fun ruleValid!1107 (LexerInterface!3244 Rule!7030) Bool)

(assert (=> b!1825880 (ruleValid!1107 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34717 0))(
  ( (Unit!34718) )
))
(declare-fun lt!709436 () Unit!34717)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!628 (LexerInterface!3244 Rule!7030 List!20110) Unit!34717)

(assert (=> b!1825880 (= lt!709436 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!628 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1825882 () Bool)

(declare-fun e!1166957 () Bool)

(declare-fun tp_is_empty!8121 () Bool)

(declare-fun tp!516233 () Bool)

(assert (=> b!1825882 (= e!1166957 (and tp_is_empty!8121 tp!516233))))

(assert (=> b!1825883 (= e!1166968 (and tp!516228 tp!516232))))

(declare-fun b!1825884 () Bool)

(declare-fun res!821136 () Bool)

(assert (=> b!1825884 (=> (not res!821136) (not e!1166958))))

(declare-fun contains!3676 (List!20110 Rule!7030) Bool)

(assert (=> b!1825884 (= res!821136 (contains!3676 rules!4538 rule!559))))

(declare-fun b!1825885 () Bool)

(declare-fun res!821130 () Bool)

(assert (=> b!1825885 (=> (not res!821130) (not e!1166958))))

(declare-fun isEmpty!12657 (List!20110) Bool)

(assert (=> b!1825885 (= res!821130 (not (isEmpty!12657 rules!4538)))))

(declare-fun tp!516229 () Bool)

(declare-fun e!1166953 () Bool)

(declare-fun e!1166961 () Bool)

(declare-fun b!1825886 () Bool)

(declare-fun inv!21 (TokenValue!3705) Bool)

(assert (=> b!1825886 (= e!1166961 (and (inv!21 (value!112694 token!556)) e!1166953 tp!516229))))

(declare-fun b!1825887 () Bool)

(declare-fun e!1166965 () Bool)

(assert (=> b!1825887 (= e!1166951 e!1166965)))

(declare-fun res!821135 () Bool)

(assert (=> b!1825887 (=> res!821135 e!1166965)))

(declare-fun lt!709432 () Option!4195)

(assert (=> b!1825887 (= res!821135 (not (= lt!709432 lt!709439)))))

(declare-fun lt!709438 () TokenValue!3705)

(declare-fun lt!709442 () Int)

(assert (=> b!1825887 (= lt!709432 (Some!4194 (tuple2!19535 (Token!6785 lt!709438 rule!559 lt!709442 lt!709443) suffix!1667)))))

(declare-fun maxPrefixOneRule!1157 (LexerInterface!3244 Rule!7030 List!20109) Option!4195)

(assert (=> b!1825887 (= lt!709432 (maxPrefixOneRule!1157 thiss!28068 rule!559 input!3612))))

(declare-fun size!15902 (List!20109) Int)

(assert (=> b!1825887 (= lt!709442 (size!15902 lt!709443))))

(declare-fun apply!5407 (TokenValueInjection!7070 BalanceConc!13238) TokenValue!3705)

(declare-fun seqFromList!2576 (List!20109) BalanceConc!13238)

(assert (=> b!1825887 (= lt!709438 (apply!5407 (transformation!3615 rule!559) (seqFromList!2576 lt!709443)))))

(declare-fun lt!709435 () Unit!34717)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!533 (LexerInterface!3244 List!20110 List!20109 List!20109 List!20109 Rule!7030) Unit!34717)

(assert (=> b!1825887 (= lt!709435 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!533 thiss!28068 rules!4538 lt!709443 input!3612 suffix!1667 rule!559))))

(declare-fun b!1825888 () Bool)

(declare-fun e!1166962 () Bool)

(declare-fun tp!516234 () Bool)

(assert (=> b!1825888 (= e!1166962 (and e!1166960 tp!516234))))

(declare-fun e!1166959 () Bool)

(assert (=> b!1825889 (= e!1166959 (and tp!516230 tp!516227))))

(declare-fun tp!516226 () Bool)

(declare-fun e!1166967 () Bool)

(declare-fun e!1166948 () Bool)

(declare-fun b!1825890 () Bool)

(assert (=> b!1825890 (= e!1166967 (and tp!516226 (inv!26079 (tag!4029 rule!559)) (inv!26082 (transformation!3615 rule!559)) e!1166948))))

(declare-fun b!1825891 () Bool)

(declare-fun e!1166949 () Bool)

(assert (=> b!1825891 (= e!1166965 e!1166949)))

(declare-fun res!821133 () Bool)

(assert (=> b!1825891 (=> res!821133 e!1166949)))

(declare-fun lt!709444 () Regex!4943)

(declare-datatypes ((List!20111 0))(
  ( (Nil!20041) (Cons!20041 (h!25442 Regex!4943) (t!170278 List!20111)) )
))
(declare-fun lt!709433 () List!20111)

(declare-fun generalisedUnion!468 (List!20111) Regex!4943)

(assert (=> b!1825891 (= res!821133 (not (= lt!709444 (generalisedUnion!468 lt!709433))))))

(declare-fun rulesRegex!945 (LexerInterface!3244 List!20110) Regex!4943)

(assert (=> b!1825891 (= lt!709444 (rulesRegex!945 thiss!28068 rules!4538))))

(declare-fun lambda!71639 () Int)

(declare-fun map!4151 (List!20110 Int) List!20111)

(assert (=> b!1825891 (= lt!709433 (map!4151 rules!4538 lambda!71639))))

(declare-fun lt!709434 () Unit!34717)

(declare-fun lemma!501 (List!20109 Rule!7030 List!20110 List!20109 LexerInterface!3244 Token!6784 List!20110) Unit!34717)

(assert (=> b!1825891 (= lt!709434 (lemma!501 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun e!1166966 () Bool)

(assert (=> b!1825892 (= e!1166966 true)))

(declare-fun lt!709437 () List!20111)

(declare-fun lambda!71640 () Int)

(declare-fun exists!639 (List!20111 Int) Bool)

(assert (=> b!1825892 (= (matchR!2408 lt!709444 lt!709443) (exists!639 lt!709437 lambda!71640))))

(declare-fun lt!709441 () Unit!34717)

(declare-fun matchRGenUnionSpec!224 (Regex!4943 List!20111 List!20109) Unit!34717)

(assert (=> b!1825892 (= lt!709441 (matchRGenUnionSpec!224 lt!709444 lt!709437 lt!709443))))

(declare-fun tp!516238 () Bool)

(declare-fun b!1825893 () Bool)

(assert (=> b!1825893 (= e!1166953 (and tp!516238 (inv!26079 (tag!4029 (rule!5769 token!556))) (inv!26082 (transformation!3615 (rule!5769 token!556))) e!1166959))))

(declare-fun b!1825894 () Bool)

(assert (=> b!1825894 (= e!1166949 e!1166966)))

(declare-fun res!821128 () Bool)

(assert (=> b!1825894 (=> res!821128 e!1166966)))

(declare-fun contains!3677 (List!20111 Regex!4943) Bool)

(assert (=> b!1825894 (= res!821128 (not (contains!3677 lt!709437 (regex!3615 rule!559))))))

(assert (=> b!1825894 (= lt!709437 (map!4151 rules!4538 lambda!71639))))

(declare-fun lt!709440 () Unit!34717)

(declare-fun lemma!502 (List!20109 Rule!7030 List!20110 List!20109 LexerInterface!3244 Token!6784 List!20110) Unit!34717)

(assert (=> b!1825894 (= lt!709440 (lemma!502 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun res!821132 () Bool)

(assert (=> start!181022 (=> (not res!821132) (not e!1166958))))

(get-info :version)

(assert (=> start!181022 (= res!821132 ((_ is Lexer!3242) thiss!28068))))

(assert (=> start!181022 e!1166958))

(declare-fun e!1166956 () Bool)

(assert (=> start!181022 e!1166956))

(assert (=> start!181022 true))

(assert (=> start!181022 e!1166962))

(declare-fun inv!26083 (Token!6784) Bool)

(assert (=> start!181022 (and (inv!26083 token!556) e!1166961)))

(assert (=> start!181022 e!1166967))

(assert (=> start!181022 e!1166957))

(assert (=> b!1825881 (= e!1166948 (and tp!516236 tp!516237))))

(declare-fun b!1825895 () Bool)

(assert (=> b!1825895 (= e!1166954 e!1166950)))

(declare-fun res!821134 () Bool)

(assert (=> b!1825895 (=> (not res!821134) (not e!1166950))))

(declare-fun ++!5439 (List!20109 List!20109) List!20109)

(assert (=> b!1825895 (= res!821134 (= input!3612 (++!5439 lt!709443 suffix!1667)))))

(declare-fun list!8143 (BalanceConc!13238) List!20109)

(declare-fun charsOf!2258 (Token!6784) BalanceConc!13238)

(assert (=> b!1825895 (= lt!709443 (list!8143 (charsOf!2258 token!556)))))

(declare-fun b!1825896 () Bool)

(declare-fun tp!516235 () Bool)

(assert (=> b!1825896 (= e!1166956 (and tp_is_empty!8121 tp!516235))))

(assert (= (and start!181022 res!821132) b!1825885))

(assert (= (and b!1825885 res!821130) b!1825879))

(assert (= (and b!1825879 res!821131) b!1825884))

(assert (= (and b!1825884 res!821136) b!1825876))

(assert (= (and b!1825876 res!821129) b!1825877))

(assert (= (and b!1825877 res!821127) b!1825895))

(assert (= (and b!1825895 res!821134) b!1825880))

(assert (= (and b!1825880 (not res!821126)) b!1825887))

(assert (= (and b!1825887 (not res!821135)) b!1825891))

(assert (= (and b!1825891 (not res!821133)) b!1825894))

(assert (= (and b!1825894 (not res!821128)) b!1825892))

(assert (= (and start!181022 ((_ is Cons!20039) suffix!1667)) b!1825896))

(assert (= b!1825878 b!1825883))

(assert (= b!1825888 b!1825878))

(assert (= (and start!181022 ((_ is Cons!20040) rules!4538)) b!1825888))

(assert (= b!1825893 b!1825889))

(assert (= b!1825886 b!1825893))

(assert (= start!181022 b!1825886))

(assert (= b!1825890 b!1825881))

(assert (= start!181022 b!1825890))

(assert (= (and start!181022 ((_ is Cons!20039) input!3612)) b!1825882))

(declare-fun m!2254281 () Bool)

(assert (=> b!1825891 m!2254281))

(declare-fun m!2254283 () Bool)

(assert (=> b!1825891 m!2254283))

(declare-fun m!2254285 () Bool)

(assert (=> b!1825891 m!2254285))

(declare-fun m!2254287 () Bool)

(assert (=> b!1825891 m!2254287))

(declare-fun m!2254289 () Bool)

(assert (=> start!181022 m!2254289))

(declare-fun m!2254291 () Bool)

(assert (=> b!1825887 m!2254291))

(declare-fun m!2254293 () Bool)

(assert (=> b!1825887 m!2254293))

(declare-fun m!2254295 () Bool)

(assert (=> b!1825887 m!2254295))

(declare-fun m!2254297 () Bool)

(assert (=> b!1825887 m!2254297))

(declare-fun m!2254299 () Bool)

(assert (=> b!1825887 m!2254299))

(assert (=> b!1825887 m!2254291))

(declare-fun m!2254301 () Bool)

(assert (=> b!1825895 m!2254301))

(declare-fun m!2254303 () Bool)

(assert (=> b!1825895 m!2254303))

(assert (=> b!1825895 m!2254303))

(declare-fun m!2254305 () Bool)

(assert (=> b!1825895 m!2254305))

(declare-fun m!2254307 () Bool)

(assert (=> b!1825886 m!2254307))

(declare-fun m!2254309 () Bool)

(assert (=> b!1825878 m!2254309))

(declare-fun m!2254311 () Bool)

(assert (=> b!1825878 m!2254311))

(declare-fun m!2254313 () Bool)

(assert (=> b!1825884 m!2254313))

(declare-fun m!2254315 () Bool)

(assert (=> b!1825876 m!2254315))

(declare-fun m!2254317 () Bool)

(assert (=> b!1825892 m!2254317))

(declare-fun m!2254319 () Bool)

(assert (=> b!1825892 m!2254319))

(declare-fun m!2254321 () Bool)

(assert (=> b!1825892 m!2254321))

(declare-fun m!2254323 () Bool)

(assert (=> b!1825879 m!2254323))

(declare-fun m!2254325 () Bool)

(assert (=> b!1825880 m!2254325))

(declare-fun m!2254327 () Bool)

(assert (=> b!1825880 m!2254327))

(declare-fun m!2254329 () Bool)

(assert (=> b!1825880 m!2254329))

(declare-fun m!2254331 () Bool)

(assert (=> b!1825894 m!2254331))

(assert (=> b!1825894 m!2254285))

(declare-fun m!2254333 () Bool)

(assert (=> b!1825894 m!2254333))

(declare-fun m!2254335 () Bool)

(assert (=> b!1825885 m!2254335))

(declare-fun m!2254337 () Bool)

(assert (=> b!1825890 m!2254337))

(declare-fun m!2254339 () Bool)

(assert (=> b!1825890 m!2254339))

(declare-fun m!2254341 () Bool)

(assert (=> b!1825893 m!2254341))

(declare-fun m!2254343 () Bool)

(assert (=> b!1825893 m!2254343))

(check-sat b_and!141811 (not b_next!51531) (not b_next!51533) (not b!1825878) (not start!181022) (not b!1825882) (not b_next!51535) (not b!1825890) (not b!1825886) (not b!1825887) (not b!1825884) (not b_next!51529) (not b!1825879) (not b!1825876) (not b!1825896) (not b!1825894) (not b!1825893) b_and!141809 (not b!1825891) (not b!1825888) b_and!141807 (not b_next!51537) (not b!1825895) (not b!1825880) b_and!141805 tp_is_empty!8121 (not b!1825885) (not b!1825892) b_and!141801 b_and!141803 (not b_next!51527))
(check-sat b_and!141811 (not b_next!51531) (not b_next!51533) (not b_next!51529) b_and!141809 (not b_next!51535) b_and!141805 b_and!141807 (not b_next!51537) b_and!141801 b_and!141803 (not b_next!51527))
