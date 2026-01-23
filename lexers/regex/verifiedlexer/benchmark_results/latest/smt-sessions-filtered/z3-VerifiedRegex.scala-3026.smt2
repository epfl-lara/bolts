; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180918 () Bool)

(assert start!180918)

(declare-fun b!1825250 () Bool)

(declare-fun b_free!50791 () Bool)

(declare-fun b_next!51495 () Bool)

(assert (=> b!1825250 (= b_free!50791 (not b_next!51495))))

(declare-fun tp!516062 () Bool)

(declare-fun b_and!141733 () Bool)

(assert (=> b!1825250 (= tp!516062 b_and!141733)))

(declare-fun b_free!50793 () Bool)

(declare-fun b_next!51497 () Bool)

(assert (=> b!1825250 (= b_free!50793 (not b_next!51497))))

(declare-fun tp!516065 () Bool)

(declare-fun b_and!141735 () Bool)

(assert (=> b!1825250 (= tp!516065 b_and!141735)))

(declare-fun b!1825243 () Bool)

(declare-fun b_free!50795 () Bool)

(declare-fun b_next!51499 () Bool)

(assert (=> b!1825243 (= b_free!50795 (not b_next!51499))))

(declare-fun tp!516058 () Bool)

(declare-fun b_and!141737 () Bool)

(assert (=> b!1825243 (= tp!516058 b_and!141737)))

(declare-fun b_free!50797 () Bool)

(declare-fun b_next!51501 () Bool)

(assert (=> b!1825243 (= b_free!50797 (not b_next!51501))))

(declare-fun tp!516061 () Bool)

(declare-fun b_and!141739 () Bool)

(assert (=> b!1825243 (= tp!516061 b_and!141739)))

(declare-fun b!1825233 () Bool)

(declare-fun b_free!50799 () Bool)

(declare-fun b_next!51503 () Bool)

(assert (=> b!1825233 (= b_free!50799 (not b_next!51503))))

(declare-fun tp!516064 () Bool)

(declare-fun b_and!141741 () Bool)

(assert (=> b!1825233 (= tp!516064 b_and!141741)))

(declare-fun b_free!50801 () Bool)

(declare-fun b_next!51505 () Bool)

(assert (=> b!1825233 (= b_free!50801 (not b_next!51505))))

(declare-fun tp!516069 () Bool)

(declare-fun b_and!141743 () Bool)

(assert (=> b!1825233 (= tp!516069 b_and!141743)))

(declare-fun e!1166540 () Bool)

(assert (=> b!1825233 (= e!1166540 (and tp!516064 tp!516069))))

(declare-fun res!820828 () Bool)

(declare-fun e!1166554 () Bool)

(assert (=> start!180918 (=> (not res!820828) (not e!1166554))))

(declare-datatypes ((LexerInterface!3242 0))(
  ( (LexerInterfaceExt!3239 (__x!12708 Int)) (Lexer!3240) )
))
(declare-fun thiss!28068 () LexerInterface!3242)

(get-info :version)

(assert (=> start!180918 (= res!820828 ((_ is Lexer!3240) thiss!28068))))

(assert (=> start!180918 e!1166554))

(declare-fun e!1166544 () Bool)

(assert (=> start!180918 e!1166544))

(assert (=> start!180918 true))

(declare-fun e!1166537 () Bool)

(assert (=> start!180918 e!1166537))

(declare-datatypes ((List!20098 0))(
  ( (Nil!20028) (Cons!20028 (h!25429 (_ BitVec 16)) (t!170233 List!20098)) )
))
(declare-datatypes ((TokenValue!3703 0))(
  ( (FloatLiteralValue!7406 (text!26366 List!20098)) (TokenValueExt!3702 (__x!12709 Int)) (Broken!18515 (value!112611 List!20098)) (Object!3772) (End!3703) (Def!3703) (Underscore!3703) (Match!3703) (Else!3703) (Error!3703) (Case!3703) (If!3703) (Extends!3703) (Abstract!3703) (Class!3703) (Val!3703) (DelimiterValue!7406 (del!3763 List!20098)) (KeywordValue!3709 (value!112612 List!20098)) (CommentValue!7406 (value!112613 List!20098)) (WhitespaceValue!7406 (value!112614 List!20098)) (IndentationValue!3703 (value!112615 List!20098)) (String!22846) (Int32!3703) (Broken!18516 (value!112616 List!20098)) (Boolean!3704) (Unit!34704) (OperatorValue!3706 (op!3763 List!20098)) (IdentifierValue!7406 (value!112617 List!20098)) (IdentifierValue!7407 (value!112618 List!20098)) (WhitespaceValue!7407 (value!112619 List!20098)) (True!7406) (False!7406) (Broken!18517 (value!112620 List!20098)) (Broken!18518 (value!112621 List!20098)) (True!7407) (RightBrace!3703) (RightBracket!3703) (Colon!3703) (Null!3703) (Comma!3703) (LeftBracket!3703) (False!7407) (LeftBrace!3703) (ImaginaryLiteralValue!3703 (text!26367 List!20098)) (StringLiteralValue!11109 (value!112622 List!20098)) (EOFValue!3703 (value!112623 List!20098)) (IdentValue!3703 (value!112624 List!20098)) (DelimiterValue!7407 (value!112625 List!20098)) (DedentValue!3703 (value!112626 List!20098)) (NewLineValue!3703 (value!112627 List!20098)) (IntegerValue!11109 (value!112628 (_ BitVec 32)) (text!26368 List!20098)) (IntegerValue!11110 (value!112629 Int) (text!26369 List!20098)) (Times!3703) (Or!3703) (Equal!3703) (Minus!3703) (Broken!18519 (value!112630 List!20098)) (And!3703) (Div!3703) (LessEqual!3703) (Mod!3703) (Concat!8644) (Not!3703) (Plus!3703) (SpaceValue!3703 (value!112631 List!20098)) (IntegerValue!11111 (value!112632 Int) (text!26370 List!20098)) (StringLiteralValue!11110 (text!26371 List!20098)) (FloatLiteralValue!7407 (text!26372 List!20098)) (BytesLiteralValue!3703 (value!112633 List!20098)) (CommentValue!7407 (value!112634 List!20098)) (StringLiteralValue!11111 (value!112635 List!20098)) (ErrorTokenValue!3703 (msg!3764 List!20098)) )
))
(declare-datatypes ((C!10056 0))(
  ( (C!10057 (val!5624 Int)) )
))
(declare-datatypes ((List!20099 0))(
  ( (Nil!20029) (Cons!20029 (h!25430 C!10056) (t!170234 List!20099)) )
))
(declare-datatypes ((IArray!13295 0))(
  ( (IArray!13296 (innerList!6705 List!20099)) )
))
(declare-datatypes ((Conc!6645 0))(
  ( (Node!6645 (left!16029 Conc!6645) (right!16359 Conc!6645) (csize!13520 Int) (cheight!6856 Int)) (Leaf!9672 (xs!9521 IArray!13295) (csize!13521 Int)) (Empty!6645) )
))
(declare-datatypes ((BalanceConc!13234 0))(
  ( (BalanceConc!13235 (c!297782 Conc!6645)) )
))
(declare-datatypes ((TokenValueInjection!7066 0))(
  ( (TokenValueInjection!7067 (toValue!5152 Int) (toChars!5011 Int)) )
))
(declare-datatypes ((Regex!4941 0))(
  ( (ElementMatch!4941 (c!297783 C!10056)) (Concat!8645 (regOne!10394 Regex!4941) (regTwo!10394 Regex!4941)) (EmptyExpr!4941) (Star!4941 (reg!5270 Regex!4941)) (EmptyLang!4941) (Union!4941 (regOne!10395 Regex!4941) (regTwo!10395 Regex!4941)) )
))
(declare-datatypes ((String!22847 0))(
  ( (String!22848 (value!112636 String)) )
))
(declare-datatypes ((Rule!7026 0))(
  ( (Rule!7027 (regex!3613 Regex!4941) (tag!4027 String!22847) (isSeparator!3613 Bool) (transformation!3613 TokenValueInjection!7066)) )
))
(declare-datatypes ((Token!6780 0))(
  ( (Token!6781 (value!112637 TokenValue!3703) (rule!5761 Rule!7026) (size!15891 Int) (originalCharacters!4421 List!20099)) )
))
(declare-fun token!556 () Token!6780)

(declare-fun e!1166541 () Bool)

(declare-fun inv!26071 (Token!6780) Bool)

(assert (=> start!180918 (and (inv!26071 token!556) e!1166541)))

(declare-fun e!1166546 () Bool)

(assert (=> start!180918 e!1166546))

(declare-fun e!1166539 () Bool)

(assert (=> start!180918 e!1166539))

(declare-fun b!1825234 () Bool)

(declare-fun tp_is_empty!8117 () Bool)

(declare-fun tp!516059 () Bool)

(assert (=> b!1825234 (= e!1166539 (and tp_is_empty!8117 tp!516059))))

(declare-fun b!1825235 () Bool)

(declare-fun e!1166548 () Bool)

(declare-fun e!1166543 () Bool)

(assert (=> b!1825235 (= e!1166548 (not e!1166543))))

(declare-fun res!820829 () Bool)

(assert (=> b!1825235 (=> res!820829 e!1166543)))

(declare-fun rule!559 () Rule!7026)

(declare-fun lt!709179 () List!20099)

(declare-fun matchR!2406 (Regex!4941 List!20099) Bool)

(assert (=> b!1825235 (= res!820829 (not (matchR!2406 (regex!3613 rule!559) lt!709179)))))

(declare-fun ruleValid!1105 (LexerInterface!3242 Rule!7026) Bool)

(assert (=> b!1825235 (ruleValid!1105 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34705 0))(
  ( (Unit!34706) )
))
(declare-fun lt!709180 () Unit!34705)

(declare-datatypes ((List!20100 0))(
  ( (Nil!20030) (Cons!20030 (h!25431 Rule!7026) (t!170235 List!20100)) )
))
(declare-fun rules!4538 () List!20100)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!626 (LexerInterface!3242 Rule!7026 List!20100) Unit!34705)

(assert (=> b!1825235 (= lt!709180 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!626 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1825236 () Bool)

(declare-fun e!1166553 () Bool)

(declare-fun tp!516060 () Bool)

(assert (=> b!1825236 (= e!1166537 (and e!1166553 tp!516060))))

(declare-fun b!1825237 () Bool)

(declare-fun e!1166545 () Bool)

(declare-fun tp!516068 () Bool)

(declare-fun e!1166555 () Bool)

(declare-fun inv!26068 (String!22847) Bool)

(declare-fun inv!26072 (TokenValueInjection!7066) Bool)

(assert (=> b!1825237 (= e!1166555 (and tp!516068 (inv!26068 (tag!4027 (rule!5761 token!556))) (inv!26072 (transformation!3613 (rule!5761 token!556))) e!1166545))))

(declare-fun b!1825238 () Bool)

(declare-fun e!1166538 () Bool)

(assert (=> b!1825238 (= e!1166543 e!1166538)))

(declare-fun res!820832 () Bool)

(assert (=> b!1825238 (=> res!820832 e!1166538)))

(declare-datatypes ((tuple2!19526 0))(
  ( (tuple2!19527 (_1!11165 Token!6780) (_2!11165 List!20099)) )
))
(declare-datatypes ((Option!4193 0))(
  ( (None!4192) (Some!4192 (v!25745 tuple2!19526)) )
))
(declare-fun lt!709178 () Option!4193)

(declare-fun lt!709176 () Option!4193)

(assert (=> b!1825238 (= res!820832 (not (= lt!709178 lt!709176)))))

(declare-fun suffix!1667 () List!20099)

(declare-fun lt!709174 () Int)

(declare-fun lt!709173 () TokenValue!3703)

(assert (=> b!1825238 (= lt!709178 (Some!4192 (tuple2!19527 (Token!6781 lt!709173 rule!559 lt!709174 lt!709179) suffix!1667)))))

(declare-fun input!3612 () List!20099)

(declare-fun maxPrefixOneRule!1155 (LexerInterface!3242 Rule!7026 List!20099) Option!4193)

(assert (=> b!1825238 (= lt!709178 (maxPrefixOneRule!1155 thiss!28068 rule!559 input!3612))))

(declare-fun size!15892 (List!20099) Int)

(assert (=> b!1825238 (= lt!709174 (size!15892 lt!709179))))

(declare-fun apply!5405 (TokenValueInjection!7066 BalanceConc!13234) TokenValue!3703)

(declare-fun seqFromList!2574 (List!20099) BalanceConc!13234)

(assert (=> b!1825238 (= lt!709173 (apply!5405 (transformation!3613 rule!559) (seqFromList!2574 lt!709179)))))

(declare-fun lt!709177 () Unit!34705)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!531 (LexerInterface!3242 List!20100 List!20099 List!20099 List!20099 Rule!7026) Unit!34705)

(assert (=> b!1825238 (= lt!709177 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!531 thiss!28068 rules!4538 lt!709179 input!3612 suffix!1667 rule!559))))

(declare-fun b!1825239 () Bool)

(declare-fun res!820833 () Bool)

(assert (=> b!1825239 (=> (not res!820833) (not e!1166554))))

(declare-fun isEmpty!12649 (List!20100) Bool)

(assert (=> b!1825239 (= res!820833 (not (isEmpty!12649 rules!4538)))))

(declare-fun e!1166551 () Bool)

(declare-fun b!1825240 () Bool)

(declare-fun tp!516066 () Bool)

(assert (=> b!1825240 (= e!1166553 (and tp!516066 (inv!26068 (tag!4027 (h!25431 rules!4538))) (inv!26072 (transformation!3613 (h!25431 rules!4538))) e!1166551))))

(declare-fun b!1825241 () Bool)

(declare-fun tp!516070 () Bool)

(assert (=> b!1825241 (= e!1166544 (and tp_is_empty!8117 tp!516070))))

(declare-fun b!1825242 () Bool)

(declare-fun e!1166542 () Bool)

(assert (=> b!1825242 (= e!1166538 e!1166542)))

(declare-fun res!820836 () Bool)

(assert (=> b!1825242 (=> res!820836 e!1166542)))

(declare-fun lambda!71594 () Int)

(declare-fun rulesRegex!943 (LexerInterface!3242 List!20100) Regex!4941)

(declare-datatypes ((List!20101 0))(
  ( (Nil!20031) (Cons!20031 (h!25432 Regex!4941) (t!170236 List!20101)) )
))
(declare-fun generalisedUnion!466 (List!20101) Regex!4941)

(declare-fun map!4148 (List!20100 Int) List!20101)

(assert (=> b!1825242 (= res!820836 (not (= (rulesRegex!943 thiss!28068 rules!4538) (generalisedUnion!466 (map!4148 rules!4538 lambda!71594)))))))

(declare-fun lt!709175 () Unit!34705)

(declare-fun lemma!495 (List!20099 Rule!7026 List!20100 List!20099 LexerInterface!3242 Token!6780 List!20100) Unit!34705)

(assert (=> b!1825242 (= lt!709175 (lemma!495 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (=> b!1825243 (= e!1166545 (and tp!516058 tp!516061))))

(declare-fun b!1825244 () Bool)

(declare-fun e!1166550 () Bool)

(assert (=> b!1825244 (= e!1166554 e!1166550)))

(declare-fun res!820834 () Bool)

(assert (=> b!1825244 (=> (not res!820834) (not e!1166550))))

(declare-fun maxPrefix!1790 (LexerInterface!3242 List!20100 List!20099) Option!4193)

(assert (=> b!1825244 (= res!820834 (= (maxPrefix!1790 thiss!28068 rules!4538 input!3612) lt!709176))))

(assert (=> b!1825244 (= lt!709176 (Some!4192 (tuple2!19527 token!556 suffix!1667)))))

(declare-fun b!1825245 () Bool)

(declare-fun res!820830 () Bool)

(assert (=> b!1825245 (=> (not res!820830) (not e!1166550))))

(assert (=> b!1825245 (= res!820830 (= (rule!5761 token!556) rule!559))))

(declare-fun b!1825246 () Bool)

(declare-fun tp!516067 () Bool)

(assert (=> b!1825246 (= e!1166546 (and tp!516067 (inv!26068 (tag!4027 rule!559)) (inv!26072 (transformation!3613 rule!559)) e!1166540))))

(declare-fun b!1825247 () Bool)

(assert (=> b!1825247 (= e!1166550 e!1166548)))

(declare-fun res!820827 () Bool)

(assert (=> b!1825247 (=> (not res!820827) (not e!1166548))))

(declare-fun ++!5437 (List!20099 List!20099) List!20099)

(assert (=> b!1825247 (= res!820827 (= input!3612 (++!5437 lt!709179 suffix!1667)))))

(declare-fun list!8139 (BalanceConc!13234) List!20099)

(declare-fun charsOf!2256 (Token!6780) BalanceConc!13234)

(assert (=> b!1825247 (= lt!709179 (list!8139 (charsOf!2256 token!556)))))

(declare-fun b!1825248 () Bool)

(declare-fun res!820831 () Bool)

(assert (=> b!1825248 (=> (not res!820831) (not e!1166554))))

(declare-fun contains!3672 (List!20100 Rule!7026) Bool)

(assert (=> b!1825248 (= res!820831 (contains!3672 rules!4538 rule!559))))

(declare-fun b!1825249 () Bool)

(declare-fun res!820835 () Bool)

(assert (=> b!1825249 (=> (not res!820835) (not e!1166554))))

(declare-fun rulesInvariant!2911 (LexerInterface!3242 List!20100) Bool)

(assert (=> b!1825249 (= res!820835 (rulesInvariant!2911 thiss!28068 rules!4538))))

(assert (=> b!1825250 (= e!1166551 (and tp!516062 tp!516065))))

(declare-fun b!1825251 () Bool)

(declare-fun contains!3673 (List!20101 Regex!4941) Bool)

(assert (=> b!1825251 (= e!1166542 (contains!3673 (map!4148 rules!4538 lambda!71594) (regex!3613 rule!559)))))

(declare-fun lt!709172 () Unit!34705)

(declare-fun lemma!496 (List!20099 Rule!7026 List!20100 List!20099 LexerInterface!3242 Token!6780 List!20100) Unit!34705)

(assert (=> b!1825251 (= lt!709172 (lemma!496 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1825252 () Bool)

(declare-fun tp!516063 () Bool)

(declare-fun inv!21 (TokenValue!3703) Bool)

(assert (=> b!1825252 (= e!1166541 (and (inv!21 (value!112637 token!556)) e!1166555 tp!516063))))

(assert (= (and start!180918 res!820828) b!1825239))

(assert (= (and b!1825239 res!820833) b!1825249))

(assert (= (and b!1825249 res!820835) b!1825248))

(assert (= (and b!1825248 res!820831) b!1825244))

(assert (= (and b!1825244 res!820834) b!1825245))

(assert (= (and b!1825245 res!820830) b!1825247))

(assert (= (and b!1825247 res!820827) b!1825235))

(assert (= (and b!1825235 (not res!820829)) b!1825238))

(assert (= (and b!1825238 (not res!820832)) b!1825242))

(assert (= (and b!1825242 (not res!820836)) b!1825251))

(assert (= (and start!180918 ((_ is Cons!20029) suffix!1667)) b!1825241))

(assert (= b!1825240 b!1825250))

(assert (= b!1825236 b!1825240))

(assert (= (and start!180918 ((_ is Cons!20030) rules!4538)) b!1825236))

(assert (= b!1825237 b!1825243))

(assert (= b!1825252 b!1825237))

(assert (= start!180918 b!1825252))

(assert (= b!1825246 b!1825233))

(assert (= start!180918 b!1825246))

(assert (= (and start!180918 ((_ is Cons!20029) input!3612)) b!1825234))

(declare-fun m!2253691 () Bool)

(assert (=> b!1825249 m!2253691))

(declare-fun m!2253693 () Bool)

(assert (=> b!1825251 m!2253693))

(assert (=> b!1825251 m!2253693))

(declare-fun m!2253695 () Bool)

(assert (=> b!1825251 m!2253695))

(declare-fun m!2253697 () Bool)

(assert (=> b!1825251 m!2253697))

(declare-fun m!2253699 () Bool)

(assert (=> b!1825238 m!2253699))

(declare-fun m!2253701 () Bool)

(assert (=> b!1825238 m!2253701))

(declare-fun m!2253703 () Bool)

(assert (=> b!1825238 m!2253703))

(declare-fun m!2253705 () Bool)

(assert (=> b!1825238 m!2253705))

(assert (=> b!1825238 m!2253705))

(declare-fun m!2253707 () Bool)

(assert (=> b!1825238 m!2253707))

(declare-fun m!2253709 () Bool)

(assert (=> b!1825246 m!2253709))

(declare-fun m!2253711 () Bool)

(assert (=> b!1825246 m!2253711))

(declare-fun m!2253713 () Bool)

(assert (=> b!1825235 m!2253713))

(declare-fun m!2253715 () Bool)

(assert (=> b!1825235 m!2253715))

(declare-fun m!2253717 () Bool)

(assert (=> b!1825235 m!2253717))

(declare-fun m!2253719 () Bool)

(assert (=> start!180918 m!2253719))

(declare-fun m!2253721 () Bool)

(assert (=> b!1825240 m!2253721))

(declare-fun m!2253723 () Bool)

(assert (=> b!1825240 m!2253723))

(declare-fun m!2253725 () Bool)

(assert (=> b!1825252 m!2253725))

(declare-fun m!2253727 () Bool)

(assert (=> b!1825244 m!2253727))

(declare-fun m!2253729 () Bool)

(assert (=> b!1825247 m!2253729))

(declare-fun m!2253731 () Bool)

(assert (=> b!1825247 m!2253731))

(assert (=> b!1825247 m!2253731))

(declare-fun m!2253733 () Bool)

(assert (=> b!1825247 m!2253733))

(declare-fun m!2253735 () Bool)

(assert (=> b!1825237 m!2253735))

(declare-fun m!2253737 () Bool)

(assert (=> b!1825237 m!2253737))

(declare-fun m!2253739 () Bool)

(assert (=> b!1825242 m!2253739))

(assert (=> b!1825242 m!2253693))

(assert (=> b!1825242 m!2253693))

(declare-fun m!2253741 () Bool)

(assert (=> b!1825242 m!2253741))

(declare-fun m!2253743 () Bool)

(assert (=> b!1825242 m!2253743))

(declare-fun m!2253745 () Bool)

(assert (=> b!1825248 m!2253745))

(declare-fun m!2253747 () Bool)

(assert (=> b!1825239 m!2253747))

(check-sat (not b!1825237) (not b_next!51499) b_and!141741 (not b!1825234) (not b!1825240) b_and!141733 (not b!1825239) (not b!1825252) (not start!180918) b_and!141737 (not b!1825242) tp_is_empty!8117 b_and!141743 (not b!1825241) b_and!141739 (not b!1825238) (not b_next!51495) (not b_next!51501) (not b!1825235) (not b_next!51503) (not b!1825244) (not b!1825247) b_and!141735 (not b_next!51505) (not b!1825251) (not b_next!51497) (not b!1825236) (not b!1825249) (not b!1825248) (not b!1825246))
(check-sat b_and!141737 b_and!141743 b_and!141739 (not b_next!51499) (not b_next!51495) b_and!141741 (not b_next!51501) (not b_next!51503) (not b_next!51497) b_and!141733 b_and!141735 (not b_next!51505))
(get-model)

(declare-fun d!558603 () Bool)

(assert (=> d!558603 (= (isEmpty!12649 rules!4538) ((_ is Nil!20030) rules!4538))))

(assert (=> b!1825239 d!558603))

(declare-fun d!558605 () Bool)

(assert (=> d!558605 (= (inv!26068 (tag!4027 (h!25431 rules!4538))) (= (mod (str.len (value!112636 (tag!4027 (h!25431 rules!4538)))) 2) 0))))

(assert (=> b!1825240 d!558605))

(declare-fun d!558607 () Bool)

(declare-fun res!820868 () Bool)

(declare-fun e!1166582 () Bool)

(assert (=> d!558607 (=> (not res!820868) (not e!1166582))))

(declare-fun semiInverseModEq!1448 (Int Int) Bool)

(assert (=> d!558607 (= res!820868 (semiInverseModEq!1448 (toChars!5011 (transformation!3613 (h!25431 rules!4538))) (toValue!5152 (transformation!3613 (h!25431 rules!4538)))))))

(assert (=> d!558607 (= (inv!26072 (transformation!3613 (h!25431 rules!4538))) e!1166582)))

(declare-fun b!1825292 () Bool)

(declare-fun equivClasses!1389 (Int Int) Bool)

(assert (=> b!1825292 (= e!1166582 (equivClasses!1389 (toChars!5011 (transformation!3613 (h!25431 rules!4538))) (toValue!5152 (transformation!3613 (h!25431 rules!4538)))))))

(assert (= (and d!558607 res!820868) b!1825292))

(declare-fun m!2253759 () Bool)

(assert (=> d!558607 m!2253759))

(declare-fun m!2253761 () Bool)

(assert (=> b!1825292 m!2253761))

(assert (=> b!1825240 d!558607))

(declare-fun d!558609 () Bool)

(declare-fun lt!709192 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2951 (List!20101) (InoxSet Regex!4941))

(assert (=> d!558609 (= lt!709192 (select (content!2951 (map!4148 rules!4538 lambda!71594)) (regex!3613 rule!559)))))

(declare-fun e!1166597 () Bool)

(assert (=> d!558609 (= lt!709192 e!1166597)))

(declare-fun res!820888 () Bool)

(assert (=> d!558609 (=> (not res!820888) (not e!1166597))))

(assert (=> d!558609 (= res!820888 ((_ is Cons!20031) (map!4148 rules!4538 lambda!71594)))))

(assert (=> d!558609 (= (contains!3673 (map!4148 rules!4538 lambda!71594) (regex!3613 rule!559)) lt!709192)))

(declare-fun b!1825317 () Bool)

(declare-fun e!1166598 () Bool)

(assert (=> b!1825317 (= e!1166597 e!1166598)))

(declare-fun res!820887 () Bool)

(assert (=> b!1825317 (=> res!820887 e!1166598)))

(assert (=> b!1825317 (= res!820887 (= (h!25432 (map!4148 rules!4538 lambda!71594)) (regex!3613 rule!559)))))

(declare-fun b!1825318 () Bool)

(assert (=> b!1825318 (= e!1166598 (contains!3673 (t!170236 (map!4148 rules!4538 lambda!71594)) (regex!3613 rule!559)))))

(assert (= (and d!558609 res!820888) b!1825317))

(assert (= (and b!1825317 (not res!820887)) b!1825318))

(assert (=> d!558609 m!2253693))

(declare-fun m!2253781 () Bool)

(assert (=> d!558609 m!2253781))

(declare-fun m!2253783 () Bool)

(assert (=> d!558609 m!2253783))

(declare-fun m!2253785 () Bool)

(assert (=> b!1825318 m!2253785))

(assert (=> b!1825251 d!558609))

(declare-fun d!558617 () Bool)

(declare-fun lt!709198 () List!20101)

(declare-fun size!15896 (List!20101) Int)

(declare-fun size!15897 (List!20100) Int)

(assert (=> d!558617 (= (size!15896 lt!709198) (size!15897 rules!4538))))

(declare-fun e!1166601 () List!20101)

(assert (=> d!558617 (= lt!709198 e!1166601)))

(declare-fun c!297795 () Bool)

(assert (=> d!558617 (= c!297795 ((_ is Nil!20030) rules!4538))))

(assert (=> d!558617 (= (map!4148 rules!4538 lambda!71594) lt!709198)))

(declare-fun b!1825323 () Bool)

(assert (=> b!1825323 (= e!1166601 Nil!20031)))

(declare-fun b!1825324 () Bool)

(declare-fun $colon$colon!452 (List!20101 Regex!4941) List!20101)

(declare-fun dynLambda!9962 (Int Rule!7026) Regex!4941)

(assert (=> b!1825324 (= e!1166601 ($colon$colon!452 (map!4148 (t!170235 rules!4538) lambda!71594) (dynLambda!9962 lambda!71594 (h!25431 rules!4538))))))

(assert (= (and d!558617 c!297795) b!1825323))

(assert (= (and d!558617 (not c!297795)) b!1825324))

(declare-fun b_lambda!60289 () Bool)

(assert (=> (not b_lambda!60289) (not b!1825324)))

(declare-fun m!2253793 () Bool)

(assert (=> d!558617 m!2253793))

(declare-fun m!2253795 () Bool)

(assert (=> d!558617 m!2253795))

(declare-fun m!2253797 () Bool)

(assert (=> b!1825324 m!2253797))

(declare-fun m!2253799 () Bool)

(assert (=> b!1825324 m!2253799))

(assert (=> b!1825324 m!2253797))

(assert (=> b!1825324 m!2253799))

(declare-fun m!2253801 () Bool)

(assert (=> b!1825324 m!2253801))

(assert (=> b!1825251 d!558617))

(declare-fun bs!407559 () Bool)

(declare-fun d!558621 () Bool)

(assert (= bs!407559 (and d!558621 b!1825242)))

(declare-fun lambda!71600 () Int)

(assert (=> bs!407559 (= lambda!71600 lambda!71594)))

(assert (=> d!558621 (contains!3673 (map!4148 rules!4538 lambda!71600) (regex!3613 rule!559))))

(declare-fun lt!709211 () Unit!34705)

(declare-fun e!1166604 () Unit!34705)

(assert (=> d!558621 (= lt!709211 e!1166604)))

(declare-fun c!297798 () Bool)

(assert (=> d!558621 (= c!297798 (and ((_ is Cons!20030) rules!4538) (not (= (h!25431 rules!4538) rule!559))))))

(declare-fun rulesValid!1375 (LexerInterface!3242 List!20100) Bool)

(assert (=> d!558621 (rulesValid!1375 thiss!28068 rules!4538)))

(declare-fun lt!709210 () Unit!34705)

(assert (=> d!558621 (= lt!709210 (lemma!495 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun lt!709213 () Unit!34705)

(declare-fun lt!709209 () Unit!34705)

(assert (=> d!558621 (= lt!709213 lt!709209)))

(declare-fun lt!709212 () List!20099)

(assert (=> d!558621 (= (maxPrefixOneRule!1155 thiss!28068 rule!559 input!3612) (Some!4192 (tuple2!19527 (Token!6781 (apply!5405 (transformation!3613 rule!559) (seqFromList!2574 lt!709212)) rule!559 (size!15892 lt!709212) lt!709212) suffix!1667)))))

(assert (=> d!558621 (= lt!709209 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!531 thiss!28068 rules!4538 lt!709212 input!3612 suffix!1667 rule!559))))

(assert (=> d!558621 (= lt!709212 (list!8139 (charsOf!2256 token!556)))))

(assert (=> d!558621 (= (lemma!496 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!709211)))

(declare-fun b!1825329 () Bool)

(assert (=> b!1825329 (= e!1166604 (lemma!496 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!170235 rules!4538)))))

(declare-fun b!1825330 () Bool)

(declare-fun Unit!34710 () Unit!34705)

(assert (=> b!1825330 (= e!1166604 Unit!34710)))

(assert (= (and d!558621 c!297798) b!1825329))

(assert (= (and d!558621 (not c!297798)) b!1825330))

(assert (=> d!558621 m!2253731))

(assert (=> d!558621 m!2253733))

(declare-fun m!2253803 () Bool)

(assert (=> d!558621 m!2253803))

(declare-fun m!2253805 () Bool)

(assert (=> d!558621 m!2253805))

(declare-fun m!2253807 () Bool)

(assert (=> d!558621 m!2253807))

(declare-fun m!2253809 () Bool)

(assert (=> d!558621 m!2253809))

(assert (=> d!558621 m!2253805))

(declare-fun m!2253811 () Bool)

(assert (=> d!558621 m!2253811))

(declare-fun m!2253813 () Bool)

(assert (=> d!558621 m!2253813))

(assert (=> d!558621 m!2253703))

(assert (=> d!558621 m!2253731))

(assert (=> d!558621 m!2253743))

(assert (=> d!558621 m!2253813))

(declare-fun m!2253815 () Bool)

(assert (=> d!558621 m!2253815))

(declare-fun m!2253817 () Bool)

(assert (=> b!1825329 m!2253817))

(assert (=> b!1825251 d!558621))

(declare-fun d!558623 () Bool)

(assert (=> d!558623 (= (inv!26068 (tag!4027 (rule!5761 token!556))) (= (mod (str.len (value!112636 (tag!4027 (rule!5761 token!556)))) 2) 0))))

(assert (=> b!1825237 d!558623))

(declare-fun d!558625 () Bool)

(declare-fun res!820889 () Bool)

(declare-fun e!1166605 () Bool)

(assert (=> d!558625 (=> (not res!820889) (not e!1166605))))

(assert (=> d!558625 (= res!820889 (semiInverseModEq!1448 (toChars!5011 (transformation!3613 (rule!5761 token!556))) (toValue!5152 (transformation!3613 (rule!5761 token!556)))))))

(assert (=> d!558625 (= (inv!26072 (transformation!3613 (rule!5761 token!556))) e!1166605)))

(declare-fun b!1825331 () Bool)

(assert (=> b!1825331 (= e!1166605 (equivClasses!1389 (toChars!5011 (transformation!3613 (rule!5761 token!556))) (toValue!5152 (transformation!3613 (rule!5761 token!556)))))))

(assert (= (and d!558625 res!820889) b!1825331))

(declare-fun m!2253819 () Bool)

(assert (=> d!558625 m!2253819))

(declare-fun m!2253821 () Bool)

(assert (=> b!1825331 m!2253821))

(assert (=> b!1825237 d!558625))

(declare-fun e!1166610 () Bool)

(declare-fun lt!709216 () List!20099)

(declare-fun b!1825343 () Bool)

(assert (=> b!1825343 (= e!1166610 (or (not (= suffix!1667 Nil!20029)) (= lt!709216 lt!709179)))))

(declare-fun b!1825341 () Bool)

(declare-fun e!1166611 () List!20099)

(assert (=> b!1825341 (= e!1166611 (Cons!20029 (h!25430 lt!709179) (++!5437 (t!170234 lt!709179) suffix!1667)))))

(declare-fun b!1825340 () Bool)

(assert (=> b!1825340 (= e!1166611 suffix!1667)))

(declare-fun d!558627 () Bool)

(assert (=> d!558627 e!1166610))

(declare-fun res!820895 () Bool)

(assert (=> d!558627 (=> (not res!820895) (not e!1166610))))

(declare-fun content!2952 (List!20099) (InoxSet C!10056))

(assert (=> d!558627 (= res!820895 (= (content!2952 lt!709216) ((_ map or) (content!2952 lt!709179) (content!2952 suffix!1667))))))

(assert (=> d!558627 (= lt!709216 e!1166611)))

(declare-fun c!297801 () Bool)

(assert (=> d!558627 (= c!297801 ((_ is Nil!20029) lt!709179))))

(assert (=> d!558627 (= (++!5437 lt!709179 suffix!1667) lt!709216)))

(declare-fun b!1825342 () Bool)

(declare-fun res!820894 () Bool)

(assert (=> b!1825342 (=> (not res!820894) (not e!1166610))))

(assert (=> b!1825342 (= res!820894 (= (size!15892 lt!709216) (+ (size!15892 lt!709179) (size!15892 suffix!1667))))))

(assert (= (and d!558627 c!297801) b!1825340))

(assert (= (and d!558627 (not c!297801)) b!1825341))

(assert (= (and d!558627 res!820895) b!1825342))

(assert (= (and b!1825342 res!820894) b!1825343))

(declare-fun m!2253823 () Bool)

(assert (=> b!1825341 m!2253823))

(declare-fun m!2253825 () Bool)

(assert (=> d!558627 m!2253825))

(declare-fun m!2253827 () Bool)

(assert (=> d!558627 m!2253827))

(declare-fun m!2253829 () Bool)

(assert (=> d!558627 m!2253829))

(declare-fun m!2253831 () Bool)

(assert (=> b!1825342 m!2253831))

(assert (=> b!1825342 m!2253701))

(declare-fun m!2253833 () Bool)

(assert (=> b!1825342 m!2253833))

(assert (=> b!1825247 d!558627))

(declare-fun d!558629 () Bool)

(declare-fun list!8141 (Conc!6645) List!20099)

(assert (=> d!558629 (= (list!8139 (charsOf!2256 token!556)) (list!8141 (c!297782 (charsOf!2256 token!556))))))

(declare-fun bs!407560 () Bool)

(assert (= bs!407560 d!558629))

(declare-fun m!2253835 () Bool)

(assert (=> bs!407560 m!2253835))

(assert (=> b!1825247 d!558629))

(declare-fun d!558631 () Bool)

(declare-fun lt!709219 () BalanceConc!13234)

(assert (=> d!558631 (= (list!8139 lt!709219) (originalCharacters!4421 token!556))))

(declare-fun dynLambda!9963 (Int TokenValue!3703) BalanceConc!13234)

(assert (=> d!558631 (= lt!709219 (dynLambda!9963 (toChars!5011 (transformation!3613 (rule!5761 token!556))) (value!112637 token!556)))))

(assert (=> d!558631 (= (charsOf!2256 token!556) lt!709219)))

(declare-fun b_lambda!60291 () Bool)

(assert (=> (not b_lambda!60291) (not d!558631)))

(declare-fun t!170238 () Bool)

(declare-fun tb!111525 () Bool)

(assert (=> (and b!1825250 (= (toChars!5011 (transformation!3613 (h!25431 rules!4538))) (toChars!5011 (transformation!3613 (rule!5761 token!556)))) t!170238) tb!111525))

(declare-fun b!1825348 () Bool)

(declare-fun e!1166614 () Bool)

(declare-fun tp!516073 () Bool)

(declare-fun inv!26075 (Conc!6645) Bool)

(assert (=> b!1825348 (= e!1166614 (and (inv!26075 (c!297782 (dynLambda!9963 (toChars!5011 (transformation!3613 (rule!5761 token!556))) (value!112637 token!556)))) tp!516073))))

(declare-fun result!134064 () Bool)

(declare-fun inv!26076 (BalanceConc!13234) Bool)

(assert (=> tb!111525 (= result!134064 (and (inv!26076 (dynLambda!9963 (toChars!5011 (transformation!3613 (rule!5761 token!556))) (value!112637 token!556))) e!1166614))))

(assert (= tb!111525 b!1825348))

(declare-fun m!2253837 () Bool)

(assert (=> b!1825348 m!2253837))

(declare-fun m!2253839 () Bool)

(assert (=> tb!111525 m!2253839))

(assert (=> d!558631 t!170238))

(declare-fun b_and!141745 () Bool)

(assert (= b_and!141735 (and (=> t!170238 result!134064) b_and!141745)))

(declare-fun t!170240 () Bool)

(declare-fun tb!111527 () Bool)

(assert (=> (and b!1825243 (= (toChars!5011 (transformation!3613 (rule!5761 token!556))) (toChars!5011 (transformation!3613 (rule!5761 token!556)))) t!170240) tb!111527))

(declare-fun result!134068 () Bool)

(assert (= result!134068 result!134064))

(assert (=> d!558631 t!170240))

(declare-fun b_and!141747 () Bool)

(assert (= b_and!141739 (and (=> t!170240 result!134068) b_and!141747)))

(declare-fun t!170242 () Bool)

(declare-fun tb!111529 () Bool)

(assert (=> (and b!1825233 (= (toChars!5011 (transformation!3613 rule!559)) (toChars!5011 (transformation!3613 (rule!5761 token!556)))) t!170242) tb!111529))

(declare-fun result!134070 () Bool)

(assert (= result!134070 result!134064))

(assert (=> d!558631 t!170242))

(declare-fun b_and!141749 () Bool)

(assert (= b_and!141743 (and (=> t!170242 result!134070) b_and!141749)))

(declare-fun m!2253841 () Bool)

(assert (=> d!558631 m!2253841))

(declare-fun m!2253843 () Bool)

(assert (=> d!558631 m!2253843))

(assert (=> b!1825247 d!558631))

(declare-fun d!558633 () Bool)

(declare-fun dynLambda!9965 (Int BalanceConc!13234) TokenValue!3703)

(assert (=> d!558633 (= (apply!5405 (transformation!3613 rule!559) (seqFromList!2574 lt!709179)) (dynLambda!9965 (toValue!5152 (transformation!3613 rule!559)) (seqFromList!2574 lt!709179)))))

(declare-fun b_lambda!60293 () Bool)

(assert (=> (not b_lambda!60293) (not d!558633)))

(declare-fun t!170244 () Bool)

(declare-fun tb!111531 () Bool)

(assert (=> (and b!1825250 (= (toValue!5152 (transformation!3613 (h!25431 rules!4538))) (toValue!5152 (transformation!3613 rule!559))) t!170244) tb!111531))

(declare-fun result!134072 () Bool)

(assert (=> tb!111531 (= result!134072 (inv!21 (dynLambda!9965 (toValue!5152 (transformation!3613 rule!559)) (seqFromList!2574 lt!709179))))))

(declare-fun m!2253845 () Bool)

(assert (=> tb!111531 m!2253845))

(assert (=> d!558633 t!170244))

(declare-fun b_and!141751 () Bool)

(assert (= b_and!141733 (and (=> t!170244 result!134072) b_and!141751)))

(declare-fun tb!111533 () Bool)

(declare-fun t!170246 () Bool)

(assert (=> (and b!1825243 (= (toValue!5152 (transformation!3613 (rule!5761 token!556))) (toValue!5152 (transformation!3613 rule!559))) t!170246) tb!111533))

(declare-fun result!134076 () Bool)

(assert (= result!134076 result!134072))

(assert (=> d!558633 t!170246))

(declare-fun b_and!141753 () Bool)

(assert (= b_and!141737 (and (=> t!170246 result!134076) b_and!141753)))

(declare-fun t!170248 () Bool)

(declare-fun tb!111535 () Bool)

(assert (=> (and b!1825233 (= (toValue!5152 (transformation!3613 rule!559)) (toValue!5152 (transformation!3613 rule!559))) t!170248) tb!111535))

(declare-fun result!134078 () Bool)

(assert (= result!134078 result!134072))

(assert (=> d!558633 t!170248))

(declare-fun b_and!141755 () Bool)

(assert (= b_and!141741 (and (=> t!170248 result!134078) b_and!141755)))

(assert (=> d!558633 m!2253705))

(declare-fun m!2253847 () Bool)

(assert (=> d!558633 m!2253847))

(assert (=> b!1825238 d!558633))

(declare-fun b!1825369 () Bool)

(declare-fun e!1166626 () Bool)

(declare-datatypes ((tuple2!19530 0))(
  ( (tuple2!19531 (_1!11167 List!20099) (_2!11167 List!20099)) )
))
(declare-fun findLongestMatchInner!507 (Regex!4941 List!20099 Int List!20099 List!20099 Int) tuple2!19530)

(assert (=> b!1825369 (= e!1166626 (matchR!2406 (regex!3613 rule!559) (_1!11167 (findLongestMatchInner!507 (regex!3613 rule!559) Nil!20029 (size!15892 Nil!20029) input!3612 input!3612 (size!15892 input!3612)))))))

(declare-fun b!1825370 () Bool)

(declare-fun e!1166627 () Bool)

(declare-fun e!1166628 () Bool)

(assert (=> b!1825370 (= e!1166627 e!1166628)))

(declare-fun res!820913 () Bool)

(assert (=> b!1825370 (=> (not res!820913) (not e!1166628))))

(declare-fun lt!709230 () Option!4193)

(declare-fun get!6191 (Option!4193) tuple2!19526)

(assert (=> b!1825370 (= res!820913 (matchR!2406 (regex!3613 rule!559) (list!8139 (charsOf!2256 (_1!11165 (get!6191 lt!709230))))))))

(declare-fun b!1825371 () Bool)

(declare-fun res!820911 () Bool)

(assert (=> b!1825371 (=> (not res!820911) (not e!1166628))))

(assert (=> b!1825371 (= res!820911 (= (++!5437 (list!8139 (charsOf!2256 (_1!11165 (get!6191 lt!709230)))) (_2!11165 (get!6191 lt!709230))) input!3612))))

(declare-fun b!1825372 () Bool)

(declare-fun e!1166629 () Option!4193)

(assert (=> b!1825372 (= e!1166629 None!4192)))

(declare-fun b!1825373 () Bool)

(declare-fun res!820914 () Bool)

(assert (=> b!1825373 (=> (not res!820914) (not e!1166628))))

(assert (=> b!1825373 (= res!820914 (= (value!112637 (_1!11165 (get!6191 lt!709230))) (apply!5405 (transformation!3613 (rule!5761 (_1!11165 (get!6191 lt!709230)))) (seqFromList!2574 (originalCharacters!4421 (_1!11165 (get!6191 lt!709230)))))))))

(declare-fun d!558635 () Bool)

(assert (=> d!558635 e!1166627))

(declare-fun res!820916 () Bool)

(assert (=> d!558635 (=> res!820916 e!1166627)))

(declare-fun isEmpty!12653 (Option!4193) Bool)

(assert (=> d!558635 (= res!820916 (isEmpty!12653 lt!709230))))

(assert (=> d!558635 (= lt!709230 e!1166629)))

(declare-fun c!297804 () Bool)

(declare-fun lt!709233 () tuple2!19530)

(declare-fun isEmpty!12654 (List!20099) Bool)

(assert (=> d!558635 (= c!297804 (isEmpty!12654 (_1!11167 lt!709233)))))

(declare-fun findLongestMatch!434 (Regex!4941 List!20099) tuple2!19530)

(assert (=> d!558635 (= lt!709233 (findLongestMatch!434 (regex!3613 rule!559) input!3612))))

(assert (=> d!558635 (ruleValid!1105 thiss!28068 rule!559)))

(assert (=> d!558635 (= (maxPrefixOneRule!1155 thiss!28068 rule!559 input!3612) lt!709230)))

(declare-fun b!1825374 () Bool)

(declare-fun size!15898 (BalanceConc!13234) Int)

(assert (=> b!1825374 (= e!1166629 (Some!4192 (tuple2!19527 (Token!6781 (apply!5405 (transformation!3613 rule!559) (seqFromList!2574 (_1!11167 lt!709233))) rule!559 (size!15898 (seqFromList!2574 (_1!11167 lt!709233))) (_1!11167 lt!709233)) (_2!11167 lt!709233))))))

(declare-fun lt!709231 () Unit!34705)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!491 (Regex!4941 List!20099) Unit!34705)

(assert (=> b!1825374 (= lt!709231 (longestMatchIsAcceptedByMatchOrIsEmpty!491 (regex!3613 rule!559) input!3612))))

(declare-fun res!820915 () Bool)

(assert (=> b!1825374 (= res!820915 (isEmpty!12654 (_1!11167 (findLongestMatchInner!507 (regex!3613 rule!559) Nil!20029 (size!15892 Nil!20029) input!3612 input!3612 (size!15892 input!3612)))))))

(assert (=> b!1825374 (=> res!820915 e!1166626)))

(assert (=> b!1825374 e!1166626))

(declare-fun lt!709232 () Unit!34705)

(assert (=> b!1825374 (= lt!709232 lt!709231)))

(declare-fun lt!709234 () Unit!34705)

(declare-fun lemmaSemiInverse!721 (TokenValueInjection!7066 BalanceConc!13234) Unit!34705)

(assert (=> b!1825374 (= lt!709234 (lemmaSemiInverse!721 (transformation!3613 rule!559) (seqFromList!2574 (_1!11167 lt!709233))))))

(declare-fun b!1825375 () Bool)

(assert (=> b!1825375 (= e!1166628 (= (size!15891 (_1!11165 (get!6191 lt!709230))) (size!15892 (originalCharacters!4421 (_1!11165 (get!6191 lt!709230))))))))

(declare-fun b!1825376 () Bool)

(declare-fun res!820910 () Bool)

(assert (=> b!1825376 (=> (not res!820910) (not e!1166628))))

(assert (=> b!1825376 (= res!820910 (= (rule!5761 (_1!11165 (get!6191 lt!709230))) rule!559))))

(declare-fun b!1825377 () Bool)

(declare-fun res!820912 () Bool)

(assert (=> b!1825377 (=> (not res!820912) (not e!1166628))))

(assert (=> b!1825377 (= res!820912 (< (size!15892 (_2!11165 (get!6191 lt!709230))) (size!15892 input!3612)))))

(assert (= (and d!558635 c!297804) b!1825372))

(assert (= (and d!558635 (not c!297804)) b!1825374))

(assert (= (and b!1825374 (not res!820915)) b!1825369))

(assert (= (and d!558635 (not res!820916)) b!1825370))

(assert (= (and b!1825370 res!820913) b!1825371))

(assert (= (and b!1825371 res!820911) b!1825377))

(assert (= (and b!1825377 res!820912) b!1825376))

(assert (= (and b!1825376 res!820910) b!1825373))

(assert (= (and b!1825373 res!820914) b!1825375))

(declare-fun m!2253849 () Bool)

(assert (=> b!1825369 m!2253849))

(declare-fun m!2253851 () Bool)

(assert (=> b!1825369 m!2253851))

(assert (=> b!1825369 m!2253849))

(assert (=> b!1825369 m!2253851))

(declare-fun m!2253853 () Bool)

(assert (=> b!1825369 m!2253853))

(declare-fun m!2253855 () Bool)

(assert (=> b!1825369 m!2253855))

(declare-fun m!2253857 () Bool)

(assert (=> b!1825371 m!2253857))

(declare-fun m!2253859 () Bool)

(assert (=> b!1825371 m!2253859))

(assert (=> b!1825371 m!2253859))

(declare-fun m!2253861 () Bool)

(assert (=> b!1825371 m!2253861))

(assert (=> b!1825371 m!2253861))

(declare-fun m!2253863 () Bool)

(assert (=> b!1825371 m!2253863))

(assert (=> b!1825373 m!2253857))

(declare-fun m!2253865 () Bool)

(assert (=> b!1825373 m!2253865))

(assert (=> b!1825373 m!2253865))

(declare-fun m!2253867 () Bool)

(assert (=> b!1825373 m!2253867))

(declare-fun m!2253869 () Bool)

(assert (=> d!558635 m!2253869))

(declare-fun m!2253871 () Bool)

(assert (=> d!558635 m!2253871))

(declare-fun m!2253873 () Bool)

(assert (=> d!558635 m!2253873))

(assert (=> d!558635 m!2253715))

(assert (=> b!1825375 m!2253857))

(declare-fun m!2253875 () Bool)

(assert (=> b!1825375 m!2253875))

(assert (=> b!1825376 m!2253857))

(assert (=> b!1825377 m!2253857))

(declare-fun m!2253877 () Bool)

(assert (=> b!1825377 m!2253877))

(assert (=> b!1825377 m!2253851))

(assert (=> b!1825374 m!2253851))

(assert (=> b!1825374 m!2253849))

(assert (=> b!1825374 m!2253851))

(assert (=> b!1825374 m!2253853))

(declare-fun m!2253879 () Bool)

(assert (=> b!1825374 m!2253879))

(declare-fun m!2253881 () Bool)

(assert (=> b!1825374 m!2253881))

(declare-fun m!2253883 () Bool)

(assert (=> b!1825374 m!2253883))

(declare-fun m!2253885 () Bool)

(assert (=> b!1825374 m!2253885))

(assert (=> b!1825374 m!2253879))

(declare-fun m!2253887 () Bool)

(assert (=> b!1825374 m!2253887))

(assert (=> b!1825374 m!2253879))

(declare-fun m!2253889 () Bool)

(assert (=> b!1825374 m!2253889))

(assert (=> b!1825374 m!2253879))

(assert (=> b!1825374 m!2253849))

(assert (=> b!1825370 m!2253857))

(assert (=> b!1825370 m!2253859))

(assert (=> b!1825370 m!2253859))

(assert (=> b!1825370 m!2253861))

(assert (=> b!1825370 m!2253861))

(declare-fun m!2253891 () Bool)

(assert (=> b!1825370 m!2253891))

(assert (=> b!1825238 d!558635))

(declare-fun d!558637 () Bool)

(declare-fun fromListB!1178 (List!20099) BalanceConc!13234)

(assert (=> d!558637 (= (seqFromList!2574 lt!709179) (fromListB!1178 lt!709179))))

(declare-fun bs!407561 () Bool)

(assert (= bs!407561 d!558637))

(declare-fun m!2253893 () Bool)

(assert (=> bs!407561 m!2253893))

(assert (=> b!1825238 d!558637))

(declare-fun d!558639 () Bool)

(declare-fun lt!709237 () Int)

(assert (=> d!558639 (>= lt!709237 0)))

(declare-fun e!1166632 () Int)

(assert (=> d!558639 (= lt!709237 e!1166632)))

(declare-fun c!297807 () Bool)

(assert (=> d!558639 (= c!297807 ((_ is Nil!20029) lt!709179))))

(assert (=> d!558639 (= (size!15892 lt!709179) lt!709237)))

(declare-fun b!1825382 () Bool)

(assert (=> b!1825382 (= e!1166632 0)))

(declare-fun b!1825383 () Bool)

(assert (=> b!1825383 (= e!1166632 (+ 1 (size!15892 (t!170234 lt!709179))))))

(assert (= (and d!558639 c!297807) b!1825382))

(assert (= (and d!558639 (not c!297807)) b!1825383))

(declare-fun m!2253895 () Bool)

(assert (=> b!1825383 m!2253895))

(assert (=> b!1825238 d!558639))

(declare-fun d!558641 () Bool)

(assert (=> d!558641 (= (maxPrefixOneRule!1155 thiss!28068 rule!559 input!3612) (Some!4192 (tuple2!19527 (Token!6781 (apply!5405 (transformation!3613 rule!559) (seqFromList!2574 lt!709179)) rule!559 (size!15892 lt!709179) lt!709179) suffix!1667)))))

(declare-fun lt!709240 () Unit!34705)

(declare-fun choose!11506 (LexerInterface!3242 List!20100 List!20099 List!20099 List!20099 Rule!7026) Unit!34705)

(assert (=> d!558641 (= lt!709240 (choose!11506 thiss!28068 rules!4538 lt!709179 input!3612 suffix!1667 rule!559))))

(assert (=> d!558641 (not (isEmpty!12649 rules!4538))))

(assert (=> d!558641 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!531 thiss!28068 rules!4538 lt!709179 input!3612 suffix!1667 rule!559) lt!709240)))

(declare-fun bs!407562 () Bool)

(assert (= bs!407562 d!558641))

(declare-fun m!2253897 () Bool)

(assert (=> bs!407562 m!2253897))

(assert (=> bs!407562 m!2253705))

(assert (=> bs!407562 m!2253707))

(assert (=> bs!407562 m!2253701))

(assert (=> bs!407562 m!2253703))

(assert (=> bs!407562 m!2253747))

(assert (=> bs!407562 m!2253705))

(assert (=> b!1825238 d!558641))

(declare-fun d!558643 () Bool)

(declare-fun res!820919 () Bool)

(declare-fun e!1166635 () Bool)

(assert (=> d!558643 (=> (not res!820919) (not e!1166635))))

(assert (=> d!558643 (= res!820919 (rulesValid!1375 thiss!28068 rules!4538))))

(assert (=> d!558643 (= (rulesInvariant!2911 thiss!28068 rules!4538) e!1166635)))

(declare-fun b!1825386 () Bool)

(declare-datatypes ((List!20103 0))(
  ( (Nil!20033) (Cons!20033 (h!25434 String!22847) (t!170270 List!20103)) )
))
(declare-fun noDuplicateTag!1373 (LexerInterface!3242 List!20100 List!20103) Bool)

(assert (=> b!1825386 (= e!1166635 (noDuplicateTag!1373 thiss!28068 rules!4538 Nil!20033))))

(assert (= (and d!558643 res!820919) b!1825386))

(assert (=> d!558643 m!2253803))

(declare-fun m!2253899 () Bool)

(assert (=> b!1825386 m!2253899))

(assert (=> b!1825249 d!558643))

(declare-fun d!558645 () Bool)

(declare-fun lt!709243 () Bool)

(declare-fun content!2953 (List!20100) (InoxSet Rule!7026))

(assert (=> d!558645 (= lt!709243 (select (content!2953 rules!4538) rule!559))))

(declare-fun e!1166641 () Bool)

(assert (=> d!558645 (= lt!709243 e!1166641)))

(declare-fun res!820925 () Bool)

(assert (=> d!558645 (=> (not res!820925) (not e!1166641))))

(assert (=> d!558645 (= res!820925 ((_ is Cons!20030) rules!4538))))

(assert (=> d!558645 (= (contains!3672 rules!4538 rule!559) lt!709243)))

(declare-fun b!1825391 () Bool)

(declare-fun e!1166640 () Bool)

(assert (=> b!1825391 (= e!1166641 e!1166640)))

(declare-fun res!820924 () Bool)

(assert (=> b!1825391 (=> res!820924 e!1166640)))

(assert (=> b!1825391 (= res!820924 (= (h!25431 rules!4538) rule!559))))

(declare-fun b!1825392 () Bool)

(assert (=> b!1825392 (= e!1166640 (contains!3672 (t!170235 rules!4538) rule!559))))

(assert (= (and d!558645 res!820925) b!1825391))

(assert (= (and b!1825391 (not res!820924)) b!1825392))

(declare-fun m!2253901 () Bool)

(assert (=> d!558645 m!2253901))

(declare-fun m!2253903 () Bool)

(assert (=> d!558645 m!2253903))

(declare-fun m!2253905 () Bool)

(assert (=> b!1825392 m!2253905))

(assert (=> b!1825248 d!558645))

(declare-fun d!558647 () Bool)

(declare-fun res!820930 () Bool)

(declare-fun e!1166644 () Bool)

(assert (=> d!558647 (=> (not res!820930) (not e!1166644))))

(assert (=> d!558647 (= res!820930 (not (isEmpty!12654 (originalCharacters!4421 token!556))))))

(assert (=> d!558647 (= (inv!26071 token!556) e!1166644)))

(declare-fun b!1825397 () Bool)

(declare-fun res!820931 () Bool)

(assert (=> b!1825397 (=> (not res!820931) (not e!1166644))))

(assert (=> b!1825397 (= res!820931 (= (originalCharacters!4421 token!556) (list!8139 (dynLambda!9963 (toChars!5011 (transformation!3613 (rule!5761 token!556))) (value!112637 token!556)))))))

(declare-fun b!1825398 () Bool)

(assert (=> b!1825398 (= e!1166644 (= (size!15891 token!556) (size!15892 (originalCharacters!4421 token!556))))))

(assert (= (and d!558647 res!820930) b!1825397))

(assert (= (and b!1825397 res!820931) b!1825398))

(declare-fun b_lambda!60295 () Bool)

(assert (=> (not b_lambda!60295) (not b!1825397)))

(assert (=> b!1825397 t!170238))

(declare-fun b_and!141757 () Bool)

(assert (= b_and!141745 (and (=> t!170238 result!134064) b_and!141757)))

(assert (=> b!1825397 t!170240))

(declare-fun b_and!141759 () Bool)

(assert (= b_and!141747 (and (=> t!170240 result!134068) b_and!141759)))

(assert (=> b!1825397 t!170242))

(declare-fun b_and!141761 () Bool)

(assert (= b_and!141749 (and (=> t!170242 result!134070) b_and!141761)))

(declare-fun m!2253907 () Bool)

(assert (=> d!558647 m!2253907))

(assert (=> b!1825397 m!2253843))

(assert (=> b!1825397 m!2253843))

(declare-fun m!2253909 () Bool)

(assert (=> b!1825397 m!2253909))

(declare-fun m!2253911 () Bool)

(assert (=> b!1825398 m!2253911))

(assert (=> start!180918 d!558647))

(declare-fun bm!114501 () Bool)

(declare-fun call!114506 () Option!4193)

(assert (=> bm!114501 (= call!114506 (maxPrefixOneRule!1155 thiss!28068 (h!25431 rules!4538) input!3612))))

(declare-fun b!1825417 () Bool)

(declare-fun res!820950 () Bool)

(declare-fun e!1166651 () Bool)

(assert (=> b!1825417 (=> (not res!820950) (not e!1166651))))

(declare-fun lt!709257 () Option!4193)

(assert (=> b!1825417 (= res!820950 (= (list!8139 (charsOf!2256 (_1!11165 (get!6191 lt!709257)))) (originalCharacters!4421 (_1!11165 (get!6191 lt!709257)))))))

(declare-fun b!1825418 () Bool)

(declare-fun res!820947 () Bool)

(assert (=> b!1825418 (=> (not res!820947) (not e!1166651))))

(assert (=> b!1825418 (= res!820947 (< (size!15892 (_2!11165 (get!6191 lt!709257))) (size!15892 input!3612)))))

(declare-fun d!558649 () Bool)

(declare-fun e!1166652 () Bool)

(assert (=> d!558649 e!1166652))

(declare-fun res!820949 () Bool)

(assert (=> d!558649 (=> res!820949 e!1166652)))

(assert (=> d!558649 (= res!820949 (isEmpty!12653 lt!709257))))

(declare-fun e!1166653 () Option!4193)

(assert (=> d!558649 (= lt!709257 e!1166653)))

(declare-fun c!297810 () Bool)

(assert (=> d!558649 (= c!297810 (and ((_ is Cons!20030) rules!4538) ((_ is Nil!20030) (t!170235 rules!4538))))))

(declare-fun lt!709256 () Unit!34705)

(declare-fun lt!709255 () Unit!34705)

(assert (=> d!558649 (= lt!709256 lt!709255)))

(declare-fun isPrefix!1823 (List!20099 List!20099) Bool)

(assert (=> d!558649 (isPrefix!1823 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1200 (List!20099 List!20099) Unit!34705)

(assert (=> d!558649 (= lt!709255 (lemmaIsPrefixRefl!1200 input!3612 input!3612))))

(declare-fun rulesValidInductive!1242 (LexerInterface!3242 List!20100) Bool)

(assert (=> d!558649 (rulesValidInductive!1242 thiss!28068 rules!4538)))

(assert (=> d!558649 (= (maxPrefix!1790 thiss!28068 rules!4538 input!3612) lt!709257)))

(declare-fun b!1825419 () Bool)

(declare-fun res!820951 () Bool)

(assert (=> b!1825419 (=> (not res!820951) (not e!1166651))))

(assert (=> b!1825419 (= res!820951 (matchR!2406 (regex!3613 (rule!5761 (_1!11165 (get!6191 lt!709257)))) (list!8139 (charsOf!2256 (_1!11165 (get!6191 lt!709257))))))))

(declare-fun b!1825420 () Bool)

(declare-fun lt!709254 () Option!4193)

(declare-fun lt!709258 () Option!4193)

(assert (=> b!1825420 (= e!1166653 (ite (and ((_ is None!4192) lt!709254) ((_ is None!4192) lt!709258)) None!4192 (ite ((_ is None!4192) lt!709258) lt!709254 (ite ((_ is None!4192) lt!709254) lt!709258 (ite (>= (size!15891 (_1!11165 (v!25745 lt!709254))) (size!15891 (_1!11165 (v!25745 lt!709258)))) lt!709254 lt!709258)))))))

(assert (=> b!1825420 (= lt!709254 call!114506)))

(assert (=> b!1825420 (= lt!709258 (maxPrefix!1790 thiss!28068 (t!170235 rules!4538) input!3612))))

(declare-fun b!1825421 () Bool)

(assert (=> b!1825421 (= e!1166653 call!114506)))

(declare-fun b!1825422 () Bool)

(declare-fun res!820946 () Bool)

(assert (=> b!1825422 (=> (not res!820946) (not e!1166651))))

(assert (=> b!1825422 (= res!820946 (= (++!5437 (list!8139 (charsOf!2256 (_1!11165 (get!6191 lt!709257)))) (_2!11165 (get!6191 lt!709257))) input!3612))))

(declare-fun b!1825423 () Bool)

(assert (=> b!1825423 (= e!1166652 e!1166651)))

(declare-fun res!820952 () Bool)

(assert (=> b!1825423 (=> (not res!820952) (not e!1166651))))

(declare-fun isDefined!3510 (Option!4193) Bool)

(assert (=> b!1825423 (= res!820952 (isDefined!3510 lt!709257))))

(declare-fun b!1825424 () Bool)

(declare-fun res!820948 () Bool)

(assert (=> b!1825424 (=> (not res!820948) (not e!1166651))))

(assert (=> b!1825424 (= res!820948 (= (value!112637 (_1!11165 (get!6191 lt!709257))) (apply!5405 (transformation!3613 (rule!5761 (_1!11165 (get!6191 lt!709257)))) (seqFromList!2574 (originalCharacters!4421 (_1!11165 (get!6191 lt!709257)))))))))

(declare-fun b!1825425 () Bool)

(assert (=> b!1825425 (= e!1166651 (contains!3672 rules!4538 (rule!5761 (_1!11165 (get!6191 lt!709257)))))))

(assert (= (and d!558649 c!297810) b!1825421))

(assert (= (and d!558649 (not c!297810)) b!1825420))

(assert (= (or b!1825421 b!1825420) bm!114501))

(assert (= (and d!558649 (not res!820949)) b!1825423))

(assert (= (and b!1825423 res!820952) b!1825417))

(assert (= (and b!1825417 res!820950) b!1825418))

(assert (= (and b!1825418 res!820947) b!1825422))

(assert (= (and b!1825422 res!820946) b!1825424))

(assert (= (and b!1825424 res!820948) b!1825419))

(assert (= (and b!1825419 res!820951) b!1825425))

(declare-fun m!2253913 () Bool)

(assert (=> b!1825419 m!2253913))

(declare-fun m!2253915 () Bool)

(assert (=> b!1825419 m!2253915))

(assert (=> b!1825419 m!2253915))

(declare-fun m!2253917 () Bool)

(assert (=> b!1825419 m!2253917))

(assert (=> b!1825419 m!2253917))

(declare-fun m!2253919 () Bool)

(assert (=> b!1825419 m!2253919))

(assert (=> b!1825424 m!2253913))

(declare-fun m!2253921 () Bool)

(assert (=> b!1825424 m!2253921))

(assert (=> b!1825424 m!2253921))

(declare-fun m!2253923 () Bool)

(assert (=> b!1825424 m!2253923))

(declare-fun m!2253925 () Bool)

(assert (=> d!558649 m!2253925))

(declare-fun m!2253927 () Bool)

(assert (=> d!558649 m!2253927))

(declare-fun m!2253929 () Bool)

(assert (=> d!558649 m!2253929))

(declare-fun m!2253931 () Bool)

(assert (=> d!558649 m!2253931))

(declare-fun m!2253933 () Bool)

(assert (=> b!1825423 m!2253933))

(declare-fun m!2253935 () Bool)

(assert (=> bm!114501 m!2253935))

(declare-fun m!2253937 () Bool)

(assert (=> b!1825420 m!2253937))

(assert (=> b!1825422 m!2253913))

(assert (=> b!1825422 m!2253915))

(assert (=> b!1825422 m!2253915))

(assert (=> b!1825422 m!2253917))

(assert (=> b!1825422 m!2253917))

(declare-fun m!2253939 () Bool)

(assert (=> b!1825422 m!2253939))

(assert (=> b!1825418 m!2253913))

(declare-fun m!2253941 () Bool)

(assert (=> b!1825418 m!2253941))

(assert (=> b!1825418 m!2253851))

(assert (=> b!1825417 m!2253913))

(assert (=> b!1825417 m!2253915))

(assert (=> b!1825417 m!2253915))

(assert (=> b!1825417 m!2253917))

(assert (=> b!1825425 m!2253913))

(declare-fun m!2253943 () Bool)

(assert (=> b!1825425 m!2253943))

(assert (=> b!1825244 d!558649))

(declare-fun d!558651 () Bool)

(assert (=> d!558651 (= (inv!26068 (tag!4027 rule!559)) (= (mod (str.len (value!112636 (tag!4027 rule!559))) 2) 0))))

(assert (=> b!1825246 d!558651))

(declare-fun d!558653 () Bool)

(declare-fun res!820953 () Bool)

(declare-fun e!1166654 () Bool)

(assert (=> d!558653 (=> (not res!820953) (not e!1166654))))

(assert (=> d!558653 (= res!820953 (semiInverseModEq!1448 (toChars!5011 (transformation!3613 rule!559)) (toValue!5152 (transformation!3613 rule!559))))))

(assert (=> d!558653 (= (inv!26072 (transformation!3613 rule!559)) e!1166654)))

(declare-fun b!1825426 () Bool)

(assert (=> b!1825426 (= e!1166654 (equivClasses!1389 (toChars!5011 (transformation!3613 rule!559)) (toValue!5152 (transformation!3613 rule!559))))))

(assert (= (and d!558653 res!820953) b!1825426))

(declare-fun m!2253945 () Bool)

(assert (=> d!558653 m!2253945))

(declare-fun m!2253947 () Bool)

(assert (=> b!1825426 m!2253947))

(assert (=> b!1825246 d!558653))

(declare-fun b!1825491 () Bool)

(declare-fun e!1166696 () Bool)

(declare-fun derivativeStep!1298 (Regex!4941 C!10056) Regex!4941)

(declare-fun head!4259 (List!20099) C!10056)

(declare-fun tail!2718 (List!20099) List!20099)

(assert (=> b!1825491 (= e!1166696 (matchR!2406 (derivativeStep!1298 (regex!3613 rule!559) (head!4259 lt!709179)) (tail!2718 lt!709179)))))

(declare-fun d!558655 () Bool)

(declare-fun e!1166692 () Bool)

(assert (=> d!558655 e!1166692))

(declare-fun c!297832 () Bool)

(assert (=> d!558655 (= c!297832 ((_ is EmptyExpr!4941) (regex!3613 rule!559)))))

(declare-fun lt!709267 () Bool)

(assert (=> d!558655 (= lt!709267 e!1166696)))

(declare-fun c!297833 () Bool)

(assert (=> d!558655 (= c!297833 (isEmpty!12654 lt!709179))))

(declare-fun validRegex!2011 (Regex!4941) Bool)

(assert (=> d!558655 (validRegex!2011 (regex!3613 rule!559))))

(assert (=> d!558655 (= (matchR!2406 (regex!3613 rule!559) lt!709179) lt!709267)))

(declare-fun b!1825492 () Bool)

(declare-fun call!114509 () Bool)

(assert (=> b!1825492 (= e!1166692 (= lt!709267 call!114509))))

(declare-fun b!1825493 () Bool)

(declare-fun e!1166693 () Bool)

(assert (=> b!1825493 (= e!1166693 (not (= (head!4259 lt!709179) (c!297783 (regex!3613 rule!559)))))))

(declare-fun b!1825494 () Bool)

(declare-fun res!820977 () Bool)

(assert (=> b!1825494 (=> res!820977 e!1166693)))

(assert (=> b!1825494 (= res!820977 (not (isEmpty!12654 (tail!2718 lt!709179))))))

(declare-fun b!1825495 () Bool)

(declare-fun res!820979 () Bool)

(declare-fun e!1166691 () Bool)

(assert (=> b!1825495 (=> (not res!820979) (not e!1166691))))

(assert (=> b!1825495 (= res!820979 (isEmpty!12654 (tail!2718 lt!709179)))))

(declare-fun b!1825496 () Bool)

(declare-fun e!1166695 () Bool)

(assert (=> b!1825496 (= e!1166695 e!1166693)))

(declare-fun res!820980 () Bool)

(assert (=> b!1825496 (=> res!820980 e!1166693)))

(assert (=> b!1825496 (= res!820980 call!114509)))

(declare-fun b!1825497 () Bool)

(declare-fun nullable!1533 (Regex!4941) Bool)

(assert (=> b!1825497 (= e!1166696 (nullable!1533 (regex!3613 rule!559)))))

(declare-fun b!1825498 () Bool)

(declare-fun e!1166690 () Bool)

(assert (=> b!1825498 (= e!1166690 (not lt!709267))))

(declare-fun b!1825499 () Bool)

(declare-fun e!1166694 () Bool)

(assert (=> b!1825499 (= e!1166694 e!1166695)))

(declare-fun res!820976 () Bool)

(assert (=> b!1825499 (=> (not res!820976) (not e!1166695))))

(assert (=> b!1825499 (= res!820976 (not lt!709267))))

(declare-fun b!1825500 () Bool)

(assert (=> b!1825500 (= e!1166691 (= (head!4259 lt!709179) (c!297783 (regex!3613 rule!559))))))

(declare-fun b!1825501 () Bool)

(declare-fun res!820981 () Bool)

(assert (=> b!1825501 (=> res!820981 e!1166694)))

(assert (=> b!1825501 (= res!820981 e!1166691)))

(declare-fun res!820978 () Bool)

(assert (=> b!1825501 (=> (not res!820978) (not e!1166691))))

(assert (=> b!1825501 (= res!820978 lt!709267)))

(declare-fun bm!114504 () Bool)

(assert (=> bm!114504 (= call!114509 (isEmpty!12654 lt!709179))))

(declare-fun b!1825502 () Bool)

(assert (=> b!1825502 (= e!1166692 e!1166690)))

(declare-fun c!297834 () Bool)

(assert (=> b!1825502 (= c!297834 ((_ is EmptyLang!4941) (regex!3613 rule!559)))))

(declare-fun b!1825503 () Bool)

(declare-fun res!820982 () Bool)

(assert (=> b!1825503 (=> (not res!820982) (not e!1166691))))

(assert (=> b!1825503 (= res!820982 (not call!114509))))

(declare-fun b!1825504 () Bool)

(declare-fun res!820983 () Bool)

(assert (=> b!1825504 (=> res!820983 e!1166694)))

(assert (=> b!1825504 (= res!820983 (not ((_ is ElementMatch!4941) (regex!3613 rule!559))))))

(assert (=> b!1825504 (= e!1166690 e!1166694)))

(assert (= (and d!558655 c!297833) b!1825497))

(assert (= (and d!558655 (not c!297833)) b!1825491))

(assert (= (and d!558655 c!297832) b!1825492))

(assert (= (and d!558655 (not c!297832)) b!1825502))

(assert (= (and b!1825502 c!297834) b!1825498))

(assert (= (and b!1825502 (not c!297834)) b!1825504))

(assert (= (and b!1825504 (not res!820983)) b!1825501))

(assert (= (and b!1825501 res!820978) b!1825503))

(assert (= (and b!1825503 res!820982) b!1825495))

(assert (= (and b!1825495 res!820979) b!1825500))

(assert (= (and b!1825501 (not res!820981)) b!1825499))

(assert (= (and b!1825499 res!820976) b!1825496))

(assert (= (and b!1825496 (not res!820980)) b!1825494))

(assert (= (and b!1825494 (not res!820977)) b!1825493))

(assert (= (or b!1825492 b!1825496 b!1825503) bm!114504))

(declare-fun m!2253979 () Bool)

(assert (=> b!1825495 m!2253979))

(assert (=> b!1825495 m!2253979))

(declare-fun m!2253981 () Bool)

(assert (=> b!1825495 m!2253981))

(declare-fun m!2253983 () Bool)

(assert (=> b!1825493 m!2253983))

(assert (=> b!1825494 m!2253979))

(assert (=> b!1825494 m!2253979))

(assert (=> b!1825494 m!2253981))

(declare-fun m!2253985 () Bool)

(assert (=> d!558655 m!2253985))

(declare-fun m!2253987 () Bool)

(assert (=> d!558655 m!2253987))

(assert (=> b!1825500 m!2253983))

(assert (=> bm!114504 m!2253985))

(assert (=> b!1825491 m!2253983))

(assert (=> b!1825491 m!2253983))

(declare-fun m!2253989 () Bool)

(assert (=> b!1825491 m!2253989))

(assert (=> b!1825491 m!2253979))

(assert (=> b!1825491 m!2253989))

(assert (=> b!1825491 m!2253979))

(declare-fun m!2253991 () Bool)

(assert (=> b!1825491 m!2253991))

(declare-fun m!2253993 () Bool)

(assert (=> b!1825497 m!2253993))

(assert (=> b!1825235 d!558655))

(declare-fun d!558661 () Bool)

(declare-fun res!820988 () Bool)

(declare-fun e!1166699 () Bool)

(assert (=> d!558661 (=> (not res!820988) (not e!1166699))))

(assert (=> d!558661 (= res!820988 (validRegex!2011 (regex!3613 rule!559)))))

(assert (=> d!558661 (= (ruleValid!1105 thiss!28068 rule!559) e!1166699)))

(declare-fun b!1825509 () Bool)

(declare-fun res!820989 () Bool)

(assert (=> b!1825509 (=> (not res!820989) (not e!1166699))))

(assert (=> b!1825509 (= res!820989 (not (nullable!1533 (regex!3613 rule!559))))))

(declare-fun b!1825510 () Bool)

(assert (=> b!1825510 (= e!1166699 (not (= (tag!4027 rule!559) (String!22848 ""))))))

(assert (= (and d!558661 res!820988) b!1825509))

(assert (= (and b!1825509 res!820989) b!1825510))

(assert (=> d!558661 m!2253987))

(assert (=> b!1825509 m!2253993))

(assert (=> b!1825235 d!558661))

(declare-fun d!558663 () Bool)

(assert (=> d!558663 (ruleValid!1105 thiss!28068 rule!559)))

(declare-fun lt!709270 () Unit!34705)

(declare-fun choose!11507 (LexerInterface!3242 Rule!7026 List!20100) Unit!34705)

(assert (=> d!558663 (= lt!709270 (choose!11507 thiss!28068 rule!559 rules!4538))))

(assert (=> d!558663 (contains!3672 rules!4538 rule!559)))

(assert (=> d!558663 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!626 thiss!28068 rule!559 rules!4538) lt!709270)))

(declare-fun bs!407563 () Bool)

(assert (= bs!407563 d!558663))

(assert (=> bs!407563 m!2253715))

(declare-fun m!2253995 () Bool)

(assert (=> bs!407563 m!2253995))

(assert (=> bs!407563 m!2253745))

(assert (=> b!1825235 d!558663))

(declare-fun bs!407564 () Bool)

(declare-fun d!558665 () Bool)

(assert (= bs!407564 (and d!558665 b!1825242)))

(declare-fun lambda!71606 () Int)

(assert (=> bs!407564 (= lambda!71606 lambda!71594)))

(declare-fun bs!407565 () Bool)

(assert (= bs!407565 (and d!558665 d!558621)))

(assert (=> bs!407565 (= lambda!71606 lambda!71600)))

(declare-fun lt!709273 () Unit!34705)

(declare-fun lemma!498 (List!20100 LexerInterface!3242 List!20100) Unit!34705)

(assert (=> d!558665 (= lt!709273 (lemma!498 rules!4538 thiss!28068 rules!4538))))

(assert (=> d!558665 (= (rulesRegex!943 thiss!28068 rules!4538) (generalisedUnion!466 (map!4148 rules!4538 lambda!71606)))))

(declare-fun bs!407566 () Bool)

(assert (= bs!407566 d!558665))

(declare-fun m!2253997 () Bool)

(assert (=> bs!407566 m!2253997))

(declare-fun m!2253999 () Bool)

(assert (=> bs!407566 m!2253999))

(assert (=> bs!407566 m!2253999))

(declare-fun m!2254001 () Bool)

(assert (=> bs!407566 m!2254001))

(assert (=> b!1825242 d!558665))

(declare-fun b!1825694 () Bool)

(declare-fun e!1166804 () Bool)

(declare-fun e!1166802 () Bool)

(assert (=> b!1825694 (= e!1166804 e!1166802)))

(declare-fun c!297870 () Bool)

(declare-fun isEmpty!12655 (List!20101) Bool)

(assert (=> b!1825694 (= c!297870 (isEmpty!12655 (map!4148 rules!4538 lambda!71594)))))

(declare-fun b!1825695 () Bool)

(declare-fun e!1166803 () Bool)

(assert (=> b!1825695 (= e!1166802 e!1166803)))

(declare-fun c!297869 () Bool)

(declare-fun tail!2719 (List!20101) List!20101)

(assert (=> b!1825695 (= c!297869 (isEmpty!12655 (tail!2719 (map!4148 rules!4538 lambda!71594))))))

(declare-fun d!558667 () Bool)

(assert (=> d!558667 e!1166804))

(declare-fun res!821062 () Bool)

(assert (=> d!558667 (=> (not res!821062) (not e!1166804))))

(declare-fun lt!709351 () Regex!4941)

(assert (=> d!558667 (= res!821062 (validRegex!2011 lt!709351))))

(declare-fun e!1166799 () Regex!4941)

(assert (=> d!558667 (= lt!709351 e!1166799)))

(declare-fun c!297867 () Bool)

(declare-fun e!1166801 () Bool)

(assert (=> d!558667 (= c!297867 e!1166801)))

(declare-fun res!821063 () Bool)

(assert (=> d!558667 (=> (not res!821063) (not e!1166801))))

(assert (=> d!558667 (= res!821063 ((_ is Cons!20031) (map!4148 rules!4538 lambda!71594)))))

(declare-fun lambda!71618 () Int)

(declare-fun forall!4319 (List!20101 Int) Bool)

(assert (=> d!558667 (forall!4319 (map!4148 rules!4538 lambda!71594) lambda!71618)))

(assert (=> d!558667 (= (generalisedUnion!466 (map!4148 rules!4538 lambda!71594)) lt!709351)))

(declare-fun b!1825696 () Bool)

(assert (=> b!1825696 (= e!1166799 (h!25432 (map!4148 rules!4538 lambda!71594)))))

(declare-fun b!1825697 () Bool)

(declare-fun isEmptyLang!119 (Regex!4941) Bool)

(assert (=> b!1825697 (= e!1166802 (isEmptyLang!119 lt!709351))))

(declare-fun b!1825698 () Bool)

(declare-fun isUnion!119 (Regex!4941) Bool)

(assert (=> b!1825698 (= e!1166803 (isUnion!119 lt!709351))))

(declare-fun b!1825699 () Bool)

(declare-fun e!1166800 () Regex!4941)

(assert (=> b!1825699 (= e!1166800 (Union!4941 (h!25432 (map!4148 rules!4538 lambda!71594)) (generalisedUnion!466 (t!170236 (map!4148 rules!4538 lambda!71594)))))))

(declare-fun b!1825700 () Bool)

(declare-fun head!4260 (List!20101) Regex!4941)

(assert (=> b!1825700 (= e!1166803 (= lt!709351 (head!4260 (map!4148 rules!4538 lambda!71594))))))

(declare-fun b!1825701 () Bool)

(assert (=> b!1825701 (= e!1166799 e!1166800)))

(declare-fun c!297868 () Bool)

(assert (=> b!1825701 (= c!297868 ((_ is Cons!20031) (map!4148 rules!4538 lambda!71594)))))

(declare-fun b!1825702 () Bool)

(assert (=> b!1825702 (= e!1166800 EmptyLang!4941)))

(declare-fun b!1825703 () Bool)

(assert (=> b!1825703 (= e!1166801 (isEmpty!12655 (t!170236 (map!4148 rules!4538 lambda!71594))))))

(assert (= (and d!558667 res!821063) b!1825703))

(assert (= (and d!558667 c!297867) b!1825696))

(assert (= (and d!558667 (not c!297867)) b!1825701))

(assert (= (and b!1825701 c!297868) b!1825699))

(assert (= (and b!1825701 (not c!297868)) b!1825702))

(assert (= (and d!558667 res!821062) b!1825694))

(assert (= (and b!1825694 c!297870) b!1825697))

(assert (= (and b!1825694 (not c!297870)) b!1825695))

(assert (= (and b!1825695 c!297869) b!1825700))

(assert (= (and b!1825695 (not c!297869)) b!1825698))

(declare-fun m!2254173 () Bool)

(assert (=> b!1825699 m!2254173))

(assert (=> b!1825700 m!2253693))

(declare-fun m!2254175 () Bool)

(assert (=> b!1825700 m!2254175))

(declare-fun m!2254177 () Bool)

(assert (=> d!558667 m!2254177))

(assert (=> d!558667 m!2253693))

(declare-fun m!2254179 () Bool)

(assert (=> d!558667 m!2254179))

(declare-fun m!2254181 () Bool)

(assert (=> b!1825703 m!2254181))

(declare-fun m!2254183 () Bool)

(assert (=> b!1825698 m!2254183))

(declare-fun m!2254185 () Bool)

(assert (=> b!1825697 m!2254185))

(assert (=> b!1825695 m!2253693))

(declare-fun m!2254187 () Bool)

(assert (=> b!1825695 m!2254187))

(assert (=> b!1825695 m!2254187))

(declare-fun m!2254189 () Bool)

(assert (=> b!1825695 m!2254189))

(assert (=> b!1825694 m!2253693))

(declare-fun m!2254191 () Bool)

(assert (=> b!1825694 m!2254191))

(assert (=> b!1825242 d!558667))

(assert (=> b!1825242 d!558617))

(declare-fun bs!407577 () Bool)

(declare-fun d!558707 () Bool)

(assert (= bs!407577 (and d!558707 b!1825242)))

(declare-fun lambda!71623 () Int)

(assert (=> bs!407577 (= lambda!71623 lambda!71594)))

(declare-fun bs!407578 () Bool)

(assert (= bs!407578 (and d!558707 d!558621)))

(assert (=> bs!407578 (= lambda!71623 lambda!71600)))

(declare-fun bs!407579 () Bool)

(assert (= bs!407579 (and d!558707 d!558665)))

(assert (=> bs!407579 (= lambda!71623 lambda!71606)))

(declare-fun bs!407580 () Bool)

(assert (= bs!407580 (and d!558707 d!558667)))

(declare-fun lambda!71624 () Int)

(assert (=> bs!407580 (= lambda!71624 lambda!71618)))

(assert (=> d!558707 (forall!4319 (map!4148 rules!4538 lambda!71623) lambda!71624)))

(declare-fun lt!709362 () Unit!34705)

(declare-fun e!1166807 () Unit!34705)

(assert (=> d!558707 (= lt!709362 e!1166807)))

(declare-fun c!297873 () Bool)

(assert (=> d!558707 (= c!297873 ((_ is Nil!20030) rules!4538))))

(assert (=> d!558707 (rulesValid!1375 thiss!28068 rules!4538)))

(declare-fun lt!709363 () Unit!34705)

(declare-fun lt!709365 () Unit!34705)

(assert (=> d!558707 (= lt!709363 lt!709365)))

(declare-fun lt!709366 () List!20099)

(assert (=> d!558707 (= (maxPrefixOneRule!1155 thiss!28068 rule!559 input!3612) (Some!4192 (tuple2!19527 (Token!6781 (apply!5405 (transformation!3613 rule!559) (seqFromList!2574 lt!709366)) rule!559 (size!15892 lt!709366) lt!709366) suffix!1667)))))

(assert (=> d!558707 (= lt!709365 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!531 thiss!28068 rules!4538 lt!709366 input!3612 suffix!1667 rule!559))))

(assert (=> d!558707 (= lt!709366 (list!8139 (charsOf!2256 token!556)))))

(assert (=> d!558707 (= (lemma!495 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!709362)))

(declare-fun b!1825708 () Bool)

(declare-fun Unit!34711 () Unit!34705)

(assert (=> b!1825708 (= e!1166807 Unit!34711)))

(declare-fun b!1825709 () Bool)

(declare-fun Unit!34712 () Unit!34705)

(assert (=> b!1825709 (= e!1166807 Unit!34712)))

(declare-fun lt!709364 () Unit!34705)

(assert (=> b!1825709 (= lt!709364 (lemma!495 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!170235 rules!4538)))))

(assert (= (and d!558707 c!297873) b!1825708))

(assert (= (and d!558707 (not c!297873)) b!1825709))

(declare-fun m!2254193 () Bool)

(assert (=> d!558707 m!2254193))

(declare-fun m!2254195 () Bool)

(assert (=> d!558707 m!2254195))

(assert (=> d!558707 m!2253731))

(assert (=> d!558707 m!2253733))

(declare-fun m!2254197 () Bool)

(assert (=> d!558707 m!2254197))

(assert (=> d!558707 m!2253803))

(assert (=> d!558707 m!2253731))

(declare-fun m!2254199 () Bool)

(assert (=> d!558707 m!2254199))

(declare-fun m!2254201 () Bool)

(assert (=> d!558707 m!2254201))

(declare-fun m!2254203 () Bool)

(assert (=> d!558707 m!2254203))

(assert (=> d!558707 m!2253703))

(assert (=> d!558707 m!2254193))

(assert (=> d!558707 m!2254201))

(declare-fun m!2254205 () Bool)

(assert (=> b!1825709 m!2254205))

(assert (=> b!1825242 d!558707))

(declare-fun b!1825720 () Bool)

(declare-fun res!821066 () Bool)

(declare-fun e!1166815 () Bool)

(assert (=> b!1825720 (=> res!821066 e!1166815)))

(assert (=> b!1825720 (= res!821066 (not ((_ is IntegerValue!11111) (value!112637 token!556))))))

(declare-fun e!1166814 () Bool)

(assert (=> b!1825720 (= e!1166814 e!1166815)))

(declare-fun b!1825721 () Bool)

(declare-fun e!1166816 () Bool)

(declare-fun inv!16 (TokenValue!3703) Bool)

(assert (=> b!1825721 (= e!1166816 (inv!16 (value!112637 token!556)))))

(declare-fun b!1825722 () Bool)

(declare-fun inv!17 (TokenValue!3703) Bool)

(assert (=> b!1825722 (= e!1166814 (inv!17 (value!112637 token!556)))))

(declare-fun b!1825723 () Bool)

(declare-fun inv!15 (TokenValue!3703) Bool)

(assert (=> b!1825723 (= e!1166815 (inv!15 (value!112637 token!556)))))

(declare-fun b!1825724 () Bool)

(assert (=> b!1825724 (= e!1166816 e!1166814)))

(declare-fun c!297879 () Bool)

(assert (=> b!1825724 (= c!297879 ((_ is IntegerValue!11110) (value!112637 token!556)))))

(declare-fun d!558709 () Bool)

(declare-fun c!297878 () Bool)

(assert (=> d!558709 (= c!297878 ((_ is IntegerValue!11109) (value!112637 token!556)))))

(assert (=> d!558709 (= (inv!21 (value!112637 token!556)) e!1166816)))

(assert (= (and d!558709 c!297878) b!1825721))

(assert (= (and d!558709 (not c!297878)) b!1825724))

(assert (= (and b!1825724 c!297879) b!1825722))

(assert (= (and b!1825724 (not c!297879)) b!1825720))

(assert (= (and b!1825720 (not res!821066)) b!1825723))

(declare-fun m!2254207 () Bool)

(assert (=> b!1825721 m!2254207))

(declare-fun m!2254209 () Bool)

(assert (=> b!1825722 m!2254209))

(declare-fun m!2254211 () Bool)

(assert (=> b!1825723 m!2254211))

(assert (=> b!1825252 d!558709))

(declare-fun b!1825729 () Bool)

(declare-fun e!1166819 () Bool)

(declare-fun tp!516121 () Bool)

(assert (=> b!1825729 (= e!1166819 (and tp_is_empty!8117 tp!516121))))

(assert (=> b!1825234 (= tp!516059 e!1166819)))

(assert (= (and b!1825234 ((_ is Cons!20029) (t!170234 input!3612))) b!1825729))

(declare-fun e!1166822 () Bool)

(assert (=> b!1825246 (= tp!516067 e!1166822)))

(declare-fun b!1825742 () Bool)

(declare-fun tp!516135 () Bool)

(assert (=> b!1825742 (= e!1166822 tp!516135)))

(declare-fun b!1825741 () Bool)

(declare-fun tp!516132 () Bool)

(declare-fun tp!516134 () Bool)

(assert (=> b!1825741 (= e!1166822 (and tp!516132 tp!516134))))

(declare-fun b!1825743 () Bool)

(declare-fun tp!516136 () Bool)

(declare-fun tp!516133 () Bool)

(assert (=> b!1825743 (= e!1166822 (and tp!516136 tp!516133))))

(declare-fun b!1825740 () Bool)

(assert (=> b!1825740 (= e!1166822 tp_is_empty!8117)))

(assert (= (and b!1825246 ((_ is ElementMatch!4941) (regex!3613 rule!559))) b!1825740))

(assert (= (and b!1825246 ((_ is Concat!8645) (regex!3613 rule!559))) b!1825741))

(assert (= (and b!1825246 ((_ is Star!4941) (regex!3613 rule!559))) b!1825742))

(assert (= (and b!1825246 ((_ is Union!4941) (regex!3613 rule!559))) b!1825743))

(declare-fun b!1825744 () Bool)

(declare-fun e!1166823 () Bool)

(declare-fun tp!516137 () Bool)

(assert (=> b!1825744 (= e!1166823 (and tp_is_empty!8117 tp!516137))))

(assert (=> b!1825241 (= tp!516070 e!1166823)))

(assert (= (and b!1825241 ((_ is Cons!20029) (t!170234 suffix!1667))) b!1825744))

(declare-fun e!1166824 () Bool)

(assert (=> b!1825240 (= tp!516066 e!1166824)))

(declare-fun b!1825747 () Bool)

(declare-fun tp!516141 () Bool)

(assert (=> b!1825747 (= e!1166824 tp!516141)))

(declare-fun b!1825746 () Bool)

(declare-fun tp!516138 () Bool)

(declare-fun tp!516140 () Bool)

(assert (=> b!1825746 (= e!1166824 (and tp!516138 tp!516140))))

(declare-fun b!1825748 () Bool)

(declare-fun tp!516142 () Bool)

(declare-fun tp!516139 () Bool)

(assert (=> b!1825748 (= e!1166824 (and tp!516142 tp!516139))))

(declare-fun b!1825745 () Bool)

(assert (=> b!1825745 (= e!1166824 tp_is_empty!8117)))

(assert (= (and b!1825240 ((_ is ElementMatch!4941) (regex!3613 (h!25431 rules!4538)))) b!1825745))

(assert (= (and b!1825240 ((_ is Concat!8645) (regex!3613 (h!25431 rules!4538)))) b!1825746))

(assert (= (and b!1825240 ((_ is Star!4941) (regex!3613 (h!25431 rules!4538)))) b!1825747))

(assert (= (and b!1825240 ((_ is Union!4941) (regex!3613 (h!25431 rules!4538)))) b!1825748))

(declare-fun e!1166825 () Bool)

(assert (=> b!1825237 (= tp!516068 e!1166825)))

(declare-fun b!1825751 () Bool)

(declare-fun tp!516146 () Bool)

(assert (=> b!1825751 (= e!1166825 tp!516146)))

(declare-fun b!1825750 () Bool)

(declare-fun tp!516143 () Bool)

(declare-fun tp!516145 () Bool)

(assert (=> b!1825750 (= e!1166825 (and tp!516143 tp!516145))))

(declare-fun b!1825752 () Bool)

(declare-fun tp!516147 () Bool)

(declare-fun tp!516144 () Bool)

(assert (=> b!1825752 (= e!1166825 (and tp!516147 tp!516144))))

(declare-fun b!1825749 () Bool)

(assert (=> b!1825749 (= e!1166825 tp_is_empty!8117)))

(assert (= (and b!1825237 ((_ is ElementMatch!4941) (regex!3613 (rule!5761 token!556)))) b!1825749))

(assert (= (and b!1825237 ((_ is Concat!8645) (regex!3613 (rule!5761 token!556)))) b!1825750))

(assert (= (and b!1825237 ((_ is Star!4941) (regex!3613 (rule!5761 token!556)))) b!1825751))

(assert (= (and b!1825237 ((_ is Union!4941) (regex!3613 (rule!5761 token!556)))) b!1825752))

(declare-fun b!1825753 () Bool)

(declare-fun e!1166826 () Bool)

(declare-fun tp!516148 () Bool)

(assert (=> b!1825753 (= e!1166826 (and tp_is_empty!8117 tp!516148))))

(assert (=> b!1825252 (= tp!516063 e!1166826)))

(assert (= (and b!1825252 ((_ is Cons!20029) (originalCharacters!4421 token!556))) b!1825753))

(declare-fun b!1825764 () Bool)

(declare-fun b_free!50807 () Bool)

(declare-fun b_next!51511 () Bool)

(assert (=> b!1825764 (= b_free!50807 (not b_next!51511))))

(declare-fun t!170266 () Bool)

(declare-fun tb!111553 () Bool)

(assert (=> (and b!1825764 (= (toValue!5152 (transformation!3613 (h!25431 (t!170235 rules!4538)))) (toValue!5152 (transformation!3613 rule!559))) t!170266) tb!111553))

(declare-fun result!134112 () Bool)

(assert (= result!134112 result!134072))

(assert (=> d!558633 t!170266))

(declare-fun tp!516159 () Bool)

(declare-fun b_and!141785 () Bool)

(assert (=> b!1825764 (= tp!516159 (and (=> t!170266 result!134112) b_and!141785))))

(declare-fun b_free!50809 () Bool)

(declare-fun b_next!51513 () Bool)

(assert (=> b!1825764 (= b_free!50809 (not b_next!51513))))

(declare-fun tb!111555 () Bool)

(declare-fun t!170268 () Bool)

(assert (=> (and b!1825764 (= (toChars!5011 (transformation!3613 (h!25431 (t!170235 rules!4538)))) (toChars!5011 (transformation!3613 (rule!5761 token!556)))) t!170268) tb!111555))

(declare-fun result!134114 () Bool)

(assert (= result!134114 result!134064))

(assert (=> d!558631 t!170268))

(assert (=> b!1825397 t!170268))

(declare-fun b_and!141787 () Bool)

(declare-fun tp!516157 () Bool)

(assert (=> b!1825764 (= tp!516157 (and (=> t!170268 result!134114) b_and!141787))))

(declare-fun e!1166837 () Bool)

(assert (=> b!1825764 (= e!1166837 (and tp!516159 tp!516157))))

(declare-fun e!1166836 () Bool)

(declare-fun tp!516158 () Bool)

(declare-fun b!1825763 () Bool)

(assert (=> b!1825763 (= e!1166836 (and tp!516158 (inv!26068 (tag!4027 (h!25431 (t!170235 rules!4538)))) (inv!26072 (transformation!3613 (h!25431 (t!170235 rules!4538)))) e!1166837))))

(declare-fun b!1825762 () Bool)

(declare-fun e!1166838 () Bool)

(declare-fun tp!516160 () Bool)

(assert (=> b!1825762 (= e!1166838 (and e!1166836 tp!516160))))

(assert (=> b!1825236 (= tp!516060 e!1166838)))

(assert (= b!1825763 b!1825764))

(assert (= b!1825762 b!1825763))

(assert (= (and b!1825236 ((_ is Cons!20030) (t!170235 rules!4538))) b!1825762))

(declare-fun m!2254213 () Bool)

(assert (=> b!1825763 m!2254213))

(declare-fun m!2254215 () Bool)

(assert (=> b!1825763 m!2254215))

(declare-fun b_lambda!60313 () Bool)

(assert (= b_lambda!60293 (or (and b!1825250 b_free!50791 (= (toValue!5152 (transformation!3613 (h!25431 rules!4538))) (toValue!5152 (transformation!3613 rule!559)))) (and b!1825243 b_free!50795 (= (toValue!5152 (transformation!3613 (rule!5761 token!556))) (toValue!5152 (transformation!3613 rule!559)))) (and b!1825233 b_free!50799) (and b!1825764 b_free!50807 (= (toValue!5152 (transformation!3613 (h!25431 (t!170235 rules!4538)))) (toValue!5152 (transformation!3613 rule!559)))) b_lambda!60313)))

(declare-fun b_lambda!60315 () Bool)

(assert (= b_lambda!60289 (or b!1825242 b_lambda!60315)))

(declare-fun bs!407581 () Bool)

(declare-fun d!558711 () Bool)

(assert (= bs!407581 (and d!558711 b!1825242)))

(assert (=> bs!407581 (= (dynLambda!9962 lambda!71594 (h!25431 rules!4538)) (regex!3613 (h!25431 rules!4538)))))

(assert (=> b!1825324 d!558711))

(declare-fun b_lambda!60317 () Bool)

(assert (= b_lambda!60291 (or (and b!1825250 b_free!50793 (= (toChars!5011 (transformation!3613 (h!25431 rules!4538))) (toChars!5011 (transformation!3613 (rule!5761 token!556))))) (and b!1825243 b_free!50797) (and b!1825233 b_free!50801 (= (toChars!5011 (transformation!3613 rule!559)) (toChars!5011 (transformation!3613 (rule!5761 token!556))))) (and b!1825764 b_free!50809 (= (toChars!5011 (transformation!3613 (h!25431 (t!170235 rules!4538)))) (toChars!5011 (transformation!3613 (rule!5761 token!556))))) b_lambda!60317)))

(declare-fun b_lambda!60319 () Bool)

(assert (= b_lambda!60295 (or (and b!1825250 b_free!50793 (= (toChars!5011 (transformation!3613 (h!25431 rules!4538))) (toChars!5011 (transformation!3613 (rule!5761 token!556))))) (and b!1825243 b_free!50797) (and b!1825233 b_free!50801 (= (toChars!5011 (transformation!3613 rule!559)) (toChars!5011 (transformation!3613 (rule!5761 token!556))))) (and b!1825764 b_free!50809 (= (toChars!5011 (transformation!3613 (h!25431 (t!170235 rules!4538)))) (toChars!5011 (transformation!3613 (rule!5761 token!556))))) b_lambda!60319)))

(check-sat b_and!141753 (not b!1825318) (not b_lambda!60315) b_and!141757 (not b!1825722) (not bm!114501) (not b!1825493) (not b!1825341) (not b!1825744) (not b!1825377) (not b!1825748) (not b!1825509) (not b!1825383) (not b!1825373) (not b!1825747) (not b!1825375) tp_is_empty!8117 (not b!1825386) (not b!1825700) (not d!558707) (not b!1825753) (not d!558663) (not b!1825423) (not d!558645) (not b_next!51513) b_and!141751 (not b!1825419) (not b_next!51499) (not b!1825763) (not tb!111525) (not d!558661) (not b!1825709) (not b!1825762) (not b_next!51495) (not b!1825721) (not tb!111531) (not b!1825426) (not b!1825348) (not b!1825500) (not d!558607) (not b!1825703) (not b!1825698) (not d!558609) (not b!1825495) b_and!141787 (not b_next!51501) (not d!558631) (not b!1825751) (not b!1825422) (not d!558629) (not b!1825695) (not d!558667) (not b_next!51503) (not b!1825417) (not b!1825398) (not b_next!51505) (not b!1825424) (not b!1825329) (not b!1825371) (not b!1825750) (not d!558627) (not d!558621) (not d!558655) b_and!141761 (not d!558665) (not d!558635) (not b_next!51497) (not b!1825752) (not b!1825331) (not b!1825729) (not b!1825369) (not b!1825743) (not b!1825342) (not b!1825494) (not b!1825376) (not d!558649) (not b!1825324) (not b!1825292) (not d!558637) (not b!1825491) (not b!1825741) (not b!1825418) (not b!1825694) (not b_next!51511) (not b!1825742) b_and!141785 (not b!1825392) (not d!558647) (not b!1825374) (not b!1825397) (not b_lambda!60313) (not d!558625) (not d!558641) (not b!1825425) (not b!1825746) (not b!1825420) (not b_lambda!60317) (not b!1825370) (not b!1825723) (not d!558653) (not b!1825699) (not d!558617) b_and!141759 (not bm!114504) (not b!1825697) (not b_lambda!60319) b_and!141755 (not b!1825497) (not d!558643))
(check-sat b_and!141757 (not b_next!51499) (not b_next!51495) b_and!141787 (not b_next!51501) (not b_next!51503) (not b_next!51505) b_and!141761 (not b_next!51497) b_and!141753 (not b_next!51511) b_and!141785 b_and!141759 b_and!141755 (not b_next!51513) b_and!141751)
