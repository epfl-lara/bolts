; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170314 () Bool)

(assert start!170314)

(declare-fun b!1731962 () Bool)

(declare-fun b_free!47387 () Bool)

(declare-fun b_next!48091 () Bool)

(assert (=> b!1731962 (= b_free!47387 (not b_next!48091))))

(declare-fun tp!493780 () Bool)

(declare-fun b_and!127763 () Bool)

(assert (=> b!1731962 (= tp!493780 b_and!127763)))

(declare-fun b_free!47389 () Bool)

(declare-fun b_next!48093 () Bool)

(assert (=> b!1731962 (= b_free!47389 (not b_next!48093))))

(declare-fun tp!493787 () Bool)

(declare-fun b_and!127765 () Bool)

(assert (=> b!1731962 (= tp!493787 b_and!127765)))

(declare-fun b!1731976 () Bool)

(declare-fun b_free!47391 () Bool)

(declare-fun b_next!48095 () Bool)

(assert (=> b!1731976 (= b_free!47391 (not b_next!48095))))

(declare-fun tp!493778 () Bool)

(declare-fun b_and!127767 () Bool)

(assert (=> b!1731976 (= tp!493778 b_and!127767)))

(declare-fun b_free!47393 () Bool)

(declare-fun b_next!48097 () Bool)

(assert (=> b!1731976 (= b_free!47393 (not b_next!48097))))

(declare-fun tp!493781 () Bool)

(declare-fun b_and!127769 () Bool)

(assert (=> b!1731976 (= tp!493781 b_and!127769)))

(declare-fun b!1731972 () Bool)

(declare-fun b_free!47395 () Bool)

(declare-fun b_next!48099 () Bool)

(assert (=> b!1731972 (= b_free!47395 (not b_next!48099))))

(declare-fun tp!493777 () Bool)

(declare-fun b_and!127771 () Bool)

(assert (=> b!1731972 (= tp!493777 b_and!127771)))

(declare-fun b_free!47397 () Bool)

(declare-fun b_next!48101 () Bool)

(assert (=> b!1731972 (= b_free!47397 (not b_next!48101))))

(declare-fun tp!493785 () Bool)

(declare-fun b_and!127773 () Bool)

(assert (=> b!1731972 (= tp!493785 b_and!127773)))

(declare-fun b!1731994 () Bool)

(declare-fun e!1108091 () Bool)

(assert (=> b!1731994 (= e!1108091 true)))

(declare-fun b!1731993 () Bool)

(declare-fun e!1108090 () Bool)

(assert (=> b!1731993 (= e!1108090 e!1108091)))

(declare-fun b!1731992 () Bool)

(declare-fun e!1108089 () Bool)

(assert (=> b!1731992 (= e!1108089 e!1108090)))

(declare-fun b!1731959 () Bool)

(assert (=> b!1731959 e!1108089))

(assert (= b!1731993 b!1731994))

(assert (= b!1731992 b!1731993))

(assert (= b!1731959 b!1731992))

(declare-fun order!11717 () Int)

(declare-fun order!11715 () Int)

(declare-datatypes ((List!19062 0))(
  ( (Nil!18992) (Cons!18992 (h!24393 (_ BitVec 16)) (t!160817 List!19062)) )
))
(declare-datatypes ((TokenValue!3461 0))(
  ( (FloatLiteralValue!6922 (text!24672 List!19062)) (TokenValueExt!3460 (__x!12224 Int)) (Broken!17305 (value!105720 List!19062)) (Object!3530) (End!3461) (Def!3461) (Underscore!3461) (Match!3461) (Else!3461) (Error!3461) (Case!3461) (If!3461) (Extends!3461) (Abstract!3461) (Class!3461) (Val!3461) (DelimiterValue!6922 (del!3521 List!19062)) (KeywordValue!3467 (value!105721 List!19062)) (CommentValue!6922 (value!105722 List!19062)) (WhitespaceValue!6922 (value!105723 List!19062)) (IndentationValue!3461 (value!105724 List!19062)) (String!21636) (Int32!3461) (Broken!17306 (value!105725 List!19062)) (Boolean!3462) (Unit!32850) (OperatorValue!3464 (op!3521 List!19062)) (IdentifierValue!6922 (value!105726 List!19062)) (IdentifierValue!6923 (value!105727 List!19062)) (WhitespaceValue!6923 (value!105728 List!19062)) (True!6922) (False!6922) (Broken!17307 (value!105729 List!19062)) (Broken!17308 (value!105730 List!19062)) (True!6923) (RightBrace!3461) (RightBracket!3461) (Colon!3461) (Null!3461) (Comma!3461) (LeftBracket!3461) (False!6923) (LeftBrace!3461) (ImaginaryLiteralValue!3461 (text!24673 List!19062)) (StringLiteralValue!10383 (value!105731 List!19062)) (EOFValue!3461 (value!105732 List!19062)) (IdentValue!3461 (value!105733 List!19062)) (DelimiterValue!6923 (value!105734 List!19062)) (DedentValue!3461 (value!105735 List!19062)) (NewLineValue!3461 (value!105736 List!19062)) (IntegerValue!10383 (value!105737 (_ BitVec 32)) (text!24674 List!19062)) (IntegerValue!10384 (value!105738 Int) (text!24675 List!19062)) (Times!3461) (Or!3461) (Equal!3461) (Minus!3461) (Broken!17309 (value!105739 List!19062)) (And!3461) (Div!3461) (LessEqual!3461) (Mod!3461) (Concat!8160) (Not!3461) (Plus!3461) (SpaceValue!3461 (value!105740 List!19062)) (IntegerValue!10385 (value!105741 Int) (text!24676 List!19062)) (StringLiteralValue!10384 (text!24677 List!19062)) (FloatLiteralValue!6923 (text!24678 List!19062)) (BytesLiteralValue!3461 (value!105742 List!19062)) (CommentValue!6923 (value!105743 List!19062)) (StringLiteralValue!10385 (value!105744 List!19062)) (ErrorTokenValue!3461 (msg!3522 List!19062)) )
))
(declare-datatypes ((C!9572 0))(
  ( (C!9573 (val!5382 Int)) )
))
(declare-datatypes ((List!19063 0))(
  ( (Nil!18993) (Cons!18993 (h!24394 C!9572) (t!160818 List!19063)) )
))
(declare-datatypes ((String!21637 0))(
  ( (String!21638 (value!105745 String)) )
))
(declare-datatypes ((Regex!4699 0))(
  ( (ElementMatch!4699 (c!282922 C!9572)) (Concat!8161 (regOne!9910 Regex!4699) (regTwo!9910 Regex!4699)) (EmptyExpr!4699) (Star!4699 (reg!5028 Regex!4699)) (EmptyLang!4699) (Union!4699 (regOne!9911 Regex!4699) (regTwo!9911 Regex!4699)) )
))
(declare-datatypes ((IArray!12639 0))(
  ( (IArray!12640 (innerList!6377 List!19063)) )
))
(declare-datatypes ((Conc!6317 0))(
  ( (Node!6317 (left!15168 Conc!6317) (right!15498 Conc!6317) (csize!12864 Int) (cheight!6528 Int)) (Leaf!9223 (xs!9193 IArray!12639) (csize!12865 Int)) (Empty!6317) )
))
(declare-datatypes ((BalanceConc!12578 0))(
  ( (BalanceConc!12579 (c!282923 Conc!6317)) )
))
(declare-datatypes ((TokenValueInjection!6582 0))(
  ( (TokenValueInjection!6583 (toValue!4878 Int) (toChars!4737 Int)) )
))
(declare-datatypes ((Rule!6542 0))(
  ( (Rule!6543 (regex!3371 Regex!4699) (tag!3699 String!21637) (isSeparator!3371 Bool) (transformation!3371 TokenValueInjection!6582)) )
))
(declare-datatypes ((Token!6308 0))(
  ( (Token!6309 (value!105746 TokenValue!3461) (rule!5353 Rule!6542) (size!15088 Int) (originalCharacters!4185 List!19063)) )
))
(declare-datatypes ((tuple2!18670 0))(
  ( (tuple2!18671 (_1!10737 Token!6308) (_2!10737 List!19063)) )
))
(declare-fun lt!664615 () tuple2!18670)

(declare-fun lambda!69392 () Int)

(declare-fun dynLambda!8860 (Int Int) Int)

(declare-fun dynLambda!8861 (Int Int) Int)

(assert (=> b!1731994 (< (dynLambda!8860 order!11715 (toValue!4878 (transformation!3371 (rule!5353 (_1!10737 lt!664615))))) (dynLambda!8861 order!11717 lambda!69392))))

(declare-fun order!11719 () Int)

(declare-fun dynLambda!8862 (Int Int) Int)

(assert (=> b!1731994 (< (dynLambda!8862 order!11719 (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615))))) (dynLambda!8861 order!11717 lambda!69392))))

(declare-fun b!1731952 () Bool)

(declare-fun res!777939 () Bool)

(declare-fun e!1108058 () Bool)

(assert (=> b!1731952 (=> res!777939 e!1108058)))

(declare-fun lt!664604 () List!19063)

(declare-fun matchR!2173 (Regex!4699 List!19063) Bool)

(assert (=> b!1731952 (= res!777939 (not (matchR!2173 (regex!3371 (rule!5353 (_1!10737 lt!664615))) lt!664604)))))

(declare-fun b!1731953 () Bool)

(declare-fun res!777943 () Bool)

(declare-fun e!1108078 () Bool)

(assert (=> b!1731953 (=> (not res!777943) (not e!1108078))))

(declare-fun lt!664597 () tuple2!18670)

(declare-fun isEmpty!11949 (List!19063) Bool)

(assert (=> b!1731953 (= res!777943 (isEmpty!11949 (_2!10737 lt!664597)))))

(declare-fun b!1731954 () Bool)

(declare-fun e!1108075 () Bool)

(declare-fun e!1108076 () Bool)

(assert (=> b!1731954 (= e!1108075 e!1108076)))

(declare-fun res!777952 () Bool)

(assert (=> b!1731954 (=> (not res!777952) (not e!1108076))))

(declare-datatypes ((Option!3766 0))(
  ( (None!3765) (Some!3765 (v!25186 tuple2!18670)) )
))
(declare-fun lt!664621 () Option!3766)

(declare-fun isDefined!3109 (Option!3766) Bool)

(assert (=> b!1731954 (= res!777952 (isDefined!3109 lt!664621))))

(declare-datatypes ((LexerInterface!3000 0))(
  ( (LexerInterfaceExt!2997 (__x!12225 Int)) (Lexer!2998) )
))
(declare-fun thiss!24550 () LexerInterface!3000)

(declare-datatypes ((List!19064 0))(
  ( (Nil!18994) (Cons!18994 (h!24395 Rule!6542) (t!160819 List!19064)) )
))
(declare-fun rules!3447 () List!19064)

(declare-fun lt!664590 () List!19063)

(declare-fun maxPrefix!1554 (LexerInterface!3000 List!19064 List!19063) Option!3766)

(assert (=> b!1731954 (= lt!664621 (maxPrefix!1554 thiss!24550 rules!3447 lt!664590))))

(declare-fun lt!664593 () BalanceConc!12578)

(declare-fun list!7680 (BalanceConc!12578) List!19063)

(assert (=> b!1731954 (= lt!664590 (list!7680 lt!664593))))

(declare-fun token!523 () Token!6308)

(declare-fun charsOf!2020 (Token!6308) BalanceConc!12578)

(assert (=> b!1731954 (= lt!664593 (charsOf!2020 token!523))))

(declare-fun b!1731955 () Bool)

(declare-fun e!1108065 () Bool)

(declare-fun e!1108069 () Bool)

(assert (=> b!1731955 (= e!1108065 e!1108069)))

(declare-fun res!777947 () Bool)

(assert (=> b!1731955 (=> res!777947 e!1108069)))

(declare-fun lt!664607 () List!19063)

(declare-fun lt!664598 () List!19063)

(declare-fun isPrefix!1612 (List!19063 List!19063) Bool)

(assert (=> b!1731955 (= res!777947 (not (isPrefix!1612 lt!664607 lt!664598)))))

(declare-fun lt!664614 () List!19063)

(declare-fun ++!5196 (List!19063 List!19063) List!19063)

(declare-fun head!3942 (List!19063) C!9572)

(assert (=> b!1731955 (isPrefix!1612 (++!5196 lt!664590 (Cons!18993 (head!3942 lt!664614) Nil!18993)) lt!664598)))

(declare-datatypes ((Unit!32851 0))(
  ( (Unit!32852) )
))
(declare-fun lt!664623 () Unit!32851)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!207 (List!19063 List!19063) Unit!32851)

(assert (=> b!1731955 (= lt!664623 (lemmaAddHeadSuffixToPrefixStillPrefix!207 lt!664590 lt!664598))))

(declare-fun e!1108062 () Bool)

(declare-fun b!1731956 () Bool)

(declare-fun tp!493782 () Bool)

(declare-fun e!1108059 () Bool)

(declare-fun inv!21 (TokenValue!3461) Bool)

(assert (=> b!1731956 (= e!1108059 (and (inv!21 (value!105746 token!523)) e!1108062 tp!493782))))

(declare-fun b!1731957 () Bool)

(assert (=> b!1731957 (= e!1108069 true)))

(assert (=> b!1731957 (isPrefix!1612 lt!664607 lt!664604)))

(declare-fun lt!664617 () Unit!32851)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!87 (List!19063 List!19063 List!19063) Unit!32851)

(assert (=> b!1731957 (= lt!664617 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!87 lt!664604 lt!664607 lt!664598))))

(declare-fun res!777948 () Bool)

(assert (=> start!170314 (=> (not res!777948) (not e!1108075))))

(get-info :version)

(assert (=> start!170314 (= res!777948 ((_ is Lexer!2998) thiss!24550))))

(assert (=> start!170314 e!1108075))

(declare-fun e!1108064 () Bool)

(assert (=> start!170314 e!1108064))

(declare-fun e!1108061 () Bool)

(assert (=> start!170314 e!1108061))

(assert (=> start!170314 true))

(declare-fun inv!24568 (Token!6308) Bool)

(assert (=> start!170314 (and (inv!24568 token!523) e!1108059)))

(declare-fun e!1108073 () Bool)

(assert (=> start!170314 e!1108073))

(declare-fun b!1731958 () Bool)

(declare-fun res!777944 () Bool)

(declare-fun e!1108074 () Bool)

(assert (=> b!1731958 (=> res!777944 e!1108074)))

(declare-fun suffix!1421 () List!19063)

(assert (=> b!1731958 (= res!777944 (isEmpty!11949 suffix!1421))))

(declare-fun e!1108066 () Bool)

(assert (=> b!1731959 (= e!1108058 e!1108066)))

(declare-fun res!777950 () Bool)

(assert (=> b!1731959 (=> res!777950 e!1108066)))

(declare-fun Forall!746 (Int) Bool)

(assert (=> b!1731959 (= res!777950 (not (Forall!746 lambda!69392)))))

(declare-fun lt!664616 () Unit!32851)

(declare-fun lemmaInv!578 (TokenValueInjection!6582) Unit!32851)

(assert (=> b!1731959 (= lt!664616 (lemmaInv!578 (transformation!3371 (rule!5353 (_1!10737 lt!664615)))))))

(declare-fun b!1731960 () Bool)

(declare-fun e!1108079 () Bool)

(assert (=> b!1731960 (= e!1108079 e!1108065)))

(declare-fun res!777936 () Bool)

(assert (=> b!1731960 (=> res!777936 e!1108065)))

(assert (=> b!1731960 (= res!777936 (not (= lt!664614 suffix!1421)))))

(assert (=> b!1731960 (= suffix!1421 lt!664614)))

(declare-fun lt!664592 () Unit!32851)

(declare-fun lemmaSamePrefixThenSameSuffix!756 (List!19063 List!19063 List!19063 List!19063 List!19063) Unit!32851)

(assert (=> b!1731960 (= lt!664592 (lemmaSamePrefixThenSameSuffix!756 lt!664590 suffix!1421 lt!664590 lt!664614 lt!664598))))

(declare-fun getSuffix!806 (List!19063 List!19063) List!19063)

(assert (=> b!1731960 (= lt!664614 (getSuffix!806 lt!664598 lt!664590))))

(declare-fun lt!664599 () Regex!4699)

(assert (=> b!1731960 (matchR!2173 lt!664599 lt!664604)))

(declare-fun lt!664610 () Unit!32851)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!120 (LexerInterface!3000 List!19064 List!19063 Token!6308 Rule!6542 List!19063) Unit!32851)

(assert (=> b!1731960 (= lt!664610 (lemmaMaxPrefixThenMatchesRulesRegex!120 thiss!24550 rules!3447 lt!664598 (_1!10737 lt!664615) (rule!5353 (_1!10737 lt!664615)) (_2!10737 lt!664615)))))

(declare-fun b!1731961 () Bool)

(declare-fun e!1108082 () Bool)

(declare-fun lt!664618 () Rule!6542)

(assert (=> b!1731961 (= e!1108082 (= (rule!5353 (_1!10737 lt!664615)) lt!664618))))

(declare-fun e!1108072 () Bool)

(assert (=> b!1731962 (= e!1108072 (and tp!493780 tp!493787))))

(declare-fun b!1731963 () Bool)

(declare-fun e!1108063 () Bool)

(assert (=> b!1731963 (= e!1108074 e!1108063)))

(declare-fun res!777941 () Bool)

(assert (=> b!1731963 (=> res!777941 e!1108063)))

(declare-fun prefixMatch!584 (Regex!4699 List!19063) Bool)

(assert (=> b!1731963 (= res!777941 (prefixMatch!584 lt!664599 lt!664607))))

(assert (=> b!1731963 (= lt!664607 (++!5196 lt!664590 (Cons!18993 (head!3942 suffix!1421) Nil!18993)))))

(declare-fun rulesRegex!729 (LexerInterface!3000 List!19064) Regex!4699)

(assert (=> b!1731963 (= lt!664599 (rulesRegex!729 thiss!24550 rules!3447))))

(declare-fun b!1731964 () Bool)

(declare-fun e!1108067 () Bool)

(assert (=> b!1731964 (= e!1108067 e!1108079)))

(declare-fun res!777951 () Bool)

(assert (=> b!1731964 (=> res!777951 e!1108079)))

(declare-fun lt!664596 () Int)

(declare-fun size!15089 (BalanceConc!12578) Int)

(assert (=> b!1731964 (= res!777951 (<= lt!664596 (size!15089 lt!664593)))))

(assert (=> b!1731964 (matchR!2173 lt!664599 lt!664590)))

(declare-fun rule!422 () Rule!6542)

(declare-fun lt!664612 () Unit!32851)

(assert (=> b!1731964 (= lt!664612 (lemmaMaxPrefixThenMatchesRulesRegex!120 thiss!24550 rules!3447 lt!664590 token!523 rule!422 Nil!18993))))

(declare-fun tp!493783 () Bool)

(declare-fun b!1731965 () Bool)

(declare-fun inv!24563 (String!21637) Bool)

(declare-fun inv!24569 (TokenValueInjection!6582) Bool)

(assert (=> b!1731965 (= e!1108061 (and tp!493783 (inv!24563 (tag!3699 rule!422)) (inv!24569 (transformation!3371 rule!422)) e!1108072))))

(declare-fun b!1731966 () Bool)

(assert (=> b!1731966 (= e!1108063 e!1108058)))

(declare-fun res!777940 () Bool)

(assert (=> b!1731966 (=> res!777940 e!1108058)))

(assert (=> b!1731966 (= res!777940 (not (isPrefix!1612 lt!664604 lt!664598)))))

(assert (=> b!1731966 (isPrefix!1612 lt!664604 (++!5196 lt!664604 (_2!10737 lt!664615)))))

(declare-fun lt!664602 () Unit!32851)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1122 (List!19063 List!19063) Unit!32851)

(assert (=> b!1731966 (= lt!664602 (lemmaConcatTwoListThenFirstIsPrefix!1122 lt!664604 (_2!10737 lt!664615)))))

(declare-fun lt!664605 () BalanceConc!12578)

(assert (=> b!1731966 (= lt!664604 (list!7680 lt!664605))))

(assert (=> b!1731966 (= lt!664605 (charsOf!2020 (_1!10737 lt!664615)))))

(declare-fun e!1108068 () Bool)

(assert (=> b!1731966 e!1108068))

(declare-fun res!777935 () Bool)

(assert (=> b!1731966 (=> (not res!777935) (not e!1108068))))

(declare-datatypes ((Option!3767 0))(
  ( (None!3766) (Some!3766 (v!25187 Rule!6542)) )
))
(declare-fun lt!664594 () Option!3767)

(declare-fun isDefined!3110 (Option!3767) Bool)

(assert (=> b!1731966 (= res!777935 (isDefined!3110 lt!664594))))

(declare-fun getRuleFromTag!421 (LexerInterface!3000 List!19064 String!21637) Option!3767)

(assert (=> b!1731966 (= lt!664594 (getRuleFromTag!421 thiss!24550 rules!3447 (tag!3699 (rule!5353 (_1!10737 lt!664615)))))))

(declare-fun lt!664611 () Unit!32851)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!421 (LexerInterface!3000 List!19064 List!19063 Token!6308) Unit!32851)

(assert (=> b!1731966 (= lt!664611 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!421 thiss!24550 rules!3447 lt!664598 (_1!10737 lt!664615)))))

(declare-fun lt!664620 () Option!3766)

(declare-fun get!5669 (Option!3766) tuple2!18670)

(assert (=> b!1731966 (= lt!664615 (get!5669 lt!664620))))

(declare-fun lt!664591 () Unit!32851)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!524 (LexerInterface!3000 List!19064 List!19063 List!19063) Unit!32851)

(assert (=> b!1731966 (= lt!664591 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!524 thiss!24550 rules!3447 lt!664590 suffix!1421))))

(assert (=> b!1731966 (= lt!664620 (maxPrefix!1554 thiss!24550 rules!3447 lt!664598))))

(assert (=> b!1731966 (isPrefix!1612 lt!664590 lt!664598)))

(declare-fun lt!664613 () Unit!32851)

(assert (=> b!1731966 (= lt!664613 (lemmaConcatTwoListThenFirstIsPrefix!1122 lt!664590 suffix!1421))))

(assert (=> b!1731966 (= lt!664598 (++!5196 lt!664590 suffix!1421))))

(declare-fun b!1731967 () Bool)

(declare-fun e!1108080 () Bool)

(assert (=> b!1731967 (= e!1108080 e!1108067)))

(declare-fun res!777954 () Bool)

(assert (=> b!1731967 (=> res!777954 e!1108067)))

(declare-fun lt!664622 () Option!3766)

(declare-fun lt!664600 () List!19063)

(assert (=> b!1731967 (= res!777954 (or (not (= lt!664600 (_2!10737 lt!664615))) (not (= lt!664622 (Some!3765 (tuple2!18671 (_1!10737 lt!664615) lt!664600))))))))

(assert (=> b!1731967 (= (_2!10737 lt!664615) lt!664600)))

(declare-fun lt!664589 () Unit!32851)

(assert (=> b!1731967 (= lt!664589 (lemmaSamePrefixThenSameSuffix!756 lt!664604 (_2!10737 lt!664615) lt!664604 lt!664600 lt!664598))))

(assert (=> b!1731967 (= lt!664600 (getSuffix!806 lt!664598 lt!664604))))

(declare-fun lt!664601 () Int)

(declare-fun lt!664603 () TokenValue!3461)

(assert (=> b!1731967 (= lt!664622 (Some!3765 (tuple2!18671 (Token!6309 lt!664603 (rule!5353 (_1!10737 lt!664615)) lt!664601 lt!664604) (_2!10737 lt!664615))))))

(declare-fun maxPrefixOneRule!930 (LexerInterface!3000 Rule!6542 List!19063) Option!3766)

(assert (=> b!1731967 (= lt!664622 (maxPrefixOneRule!930 thiss!24550 (rule!5353 (_1!10737 lt!664615)) lt!664598))))

(declare-fun size!15090 (List!19063) Int)

(assert (=> b!1731967 (= lt!664601 (size!15090 lt!664604))))

(declare-fun apply!5176 (TokenValueInjection!6582 BalanceConc!12578) TokenValue!3461)

(declare-fun seqFromList!2345 (List!19063) BalanceConc!12578)

(assert (=> b!1731967 (= lt!664603 (apply!5176 (transformation!3371 (rule!5353 (_1!10737 lt!664615))) (seqFromList!2345 lt!664604)))))

(declare-fun lt!664595 () Unit!32851)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!329 (LexerInterface!3000 List!19064 List!19063 List!19063 List!19063 Rule!6542) Unit!32851)

(assert (=> b!1731967 (= lt!664595 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!329 thiss!24550 rules!3447 lt!664604 lt!664598 (_2!10737 lt!664615) (rule!5353 (_1!10737 lt!664615))))))

(declare-fun b!1731968 () Bool)

(declare-fun tp_is_empty!7641 () Bool)

(declare-fun tp!493784 () Bool)

(assert (=> b!1731968 (= e!1108064 (and tp_is_empty!7641 tp!493784))))

(declare-fun b!1731969 () Bool)

(declare-fun e!1108056 () Bool)

(assert (=> b!1731969 (= e!1108066 e!1108056)))

(declare-fun res!777932 () Bool)

(assert (=> b!1731969 (=> res!777932 e!1108056)))

(declare-fun dynLambda!8863 (Int TokenValue!3461) BalanceConc!12578)

(declare-fun dynLambda!8864 (Int BalanceConc!12578) TokenValue!3461)

(assert (=> b!1731969 (= res!777932 (not (= (list!7680 (dynLambda!8863 (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615)))) (dynLambda!8864 (toValue!4878 (transformation!3371 (rule!5353 (_1!10737 lt!664615)))) lt!664605))) lt!664604)))))

(declare-fun lt!664609 () Unit!32851)

(declare-fun lemmaSemiInverse!517 (TokenValueInjection!6582 BalanceConc!12578) Unit!32851)

(assert (=> b!1731969 (= lt!664609 (lemmaSemiInverse!517 (transformation!3371 (rule!5353 (_1!10737 lt!664615))) lt!664605))))

(declare-fun b!1731970 () Bool)

(declare-fun res!777937 () Bool)

(assert (=> b!1731970 (=> (not res!777937) (not e!1108075))))

(declare-fun isEmpty!11950 (List!19064) Bool)

(assert (=> b!1731970 (= res!777937 (not (isEmpty!11950 rules!3447)))))

(declare-fun b!1731971 () Bool)

(declare-fun tp!493786 () Bool)

(declare-fun e!1108077 () Bool)

(assert (=> b!1731971 (= e!1108062 (and tp!493786 (inv!24563 (tag!3699 (rule!5353 token!523))) (inv!24569 (transformation!3371 (rule!5353 token!523))) e!1108077))))

(assert (=> b!1731972 (= e!1108077 (and tp!493777 tp!493785))))

(declare-fun b!1731973 () Bool)

(assert (=> b!1731973 (= e!1108068 e!1108082)))

(declare-fun res!777938 () Bool)

(assert (=> b!1731973 (=> (not res!777938) (not e!1108082))))

(assert (=> b!1731973 (= res!777938 (matchR!2173 (regex!3371 lt!664618) (list!7680 (charsOf!2020 (_1!10737 lt!664615)))))))

(declare-fun get!5670 (Option!3767) Rule!6542)

(assert (=> b!1731973 (= lt!664618 (get!5670 lt!664594))))

(declare-fun b!1731974 () Bool)

(declare-fun res!777949 () Bool)

(assert (=> b!1731974 (=> res!777949 e!1108056)))

(assert (=> b!1731974 (= res!777949 (not (= lt!664605 (dynLambda!8863 (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615)))) (value!105746 (_1!10737 lt!664615))))))))

(declare-fun b!1731975 () Bool)

(declare-fun res!777933 () Bool)

(assert (=> b!1731975 (=> (not res!777933) (not e!1108078))))

(assert (=> b!1731975 (= res!777933 (= (rule!5353 token!523) rule!422))))

(declare-fun e!1108057 () Bool)

(assert (=> b!1731976 (= e!1108057 (and tp!493778 tp!493781))))

(declare-fun b!1731977 () Bool)

(declare-fun e!1108060 () Bool)

(declare-fun tp!493788 () Bool)

(assert (=> b!1731977 (= e!1108073 (and e!1108060 tp!493788))))

(declare-fun b!1731978 () Bool)

(declare-fun res!777934 () Bool)

(assert (=> b!1731978 (=> (not res!777934) (not e!1108075))))

(declare-fun rulesInvariant!2669 (LexerInterface!3000 List!19064) Bool)

(assert (=> b!1731978 (= res!777934 (rulesInvariant!2669 thiss!24550 rules!3447))))

(declare-fun b!1731979 () Bool)

(declare-fun res!777946 () Bool)

(assert (=> b!1731979 (=> (not res!777946) (not e!1108075))))

(declare-fun contains!3393 (List!19064 Rule!6542) Bool)

(assert (=> b!1731979 (= res!777946 (contains!3393 rules!3447 rule!422))))

(declare-fun b!1731980 () Bool)

(assert (=> b!1731980 (= e!1108056 e!1108080)))

(declare-fun res!777942 () Bool)

(assert (=> b!1731980 (=> res!777942 e!1108080)))

(declare-fun lt!664608 () TokenValue!3461)

(assert (=> b!1731980 (= res!777942 (not (= lt!664620 (Some!3765 (tuple2!18671 (Token!6309 lt!664608 (rule!5353 (_1!10737 lt!664615)) lt!664596 lt!664604) (_2!10737 lt!664615))))))))

(assert (=> b!1731980 (= lt!664596 (size!15089 lt!664605))))

(assert (=> b!1731980 (= lt!664608 (apply!5176 (transformation!3371 (rule!5353 (_1!10737 lt!664615))) lt!664605))))

(declare-fun lt!664619 () Unit!32851)

(declare-fun lemmaCharactersSize!443 (Token!6308) Unit!32851)

(assert (=> b!1731980 (= lt!664619 (lemmaCharactersSize!443 (_1!10737 lt!664615)))))

(declare-fun lt!664606 () Unit!32851)

(declare-fun lemmaEqSameImage!296 (TokenValueInjection!6582 BalanceConc!12578 BalanceConc!12578) Unit!32851)

(assert (=> b!1731980 (= lt!664606 (lemmaEqSameImage!296 (transformation!3371 (rule!5353 (_1!10737 lt!664615))) lt!664605 (seqFromList!2345 (originalCharacters!4185 (_1!10737 lt!664615)))))))

(declare-fun b!1731981 () Bool)

(assert (=> b!1731981 (= e!1108076 e!1108078)))

(declare-fun res!777953 () Bool)

(assert (=> b!1731981 (=> (not res!777953) (not e!1108078))))

(assert (=> b!1731981 (= res!777953 (= (_1!10737 lt!664597) token!523))))

(assert (=> b!1731981 (= lt!664597 (get!5669 lt!664621))))

(declare-fun tp!493779 () Bool)

(declare-fun b!1731982 () Bool)

(assert (=> b!1731982 (= e!1108060 (and tp!493779 (inv!24563 (tag!3699 (h!24395 rules!3447))) (inv!24569 (transformation!3371 (h!24395 rules!3447))) e!1108057))))

(declare-fun b!1731983 () Bool)

(assert (=> b!1731983 (= e!1108078 (not e!1108074))))

(declare-fun res!777945 () Bool)

(assert (=> b!1731983 (=> res!777945 e!1108074)))

(assert (=> b!1731983 (= res!777945 (not (matchR!2173 (regex!3371 rule!422) lt!664590)))))

(declare-fun ruleValid!870 (LexerInterface!3000 Rule!6542) Bool)

(assert (=> b!1731983 (ruleValid!870 thiss!24550 rule!422)))

(declare-fun lt!664624 () Unit!32851)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!394 (LexerInterface!3000 Rule!6542 List!19064) Unit!32851)

(assert (=> b!1731983 (= lt!664624 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!394 thiss!24550 rule!422 rules!3447))))

(assert (= (and start!170314 res!777948) b!1731970))

(assert (= (and b!1731970 res!777937) b!1731978))

(assert (= (and b!1731978 res!777934) b!1731979))

(assert (= (and b!1731979 res!777946) b!1731954))

(assert (= (and b!1731954 res!777952) b!1731981))

(assert (= (and b!1731981 res!777953) b!1731953))

(assert (= (and b!1731953 res!777943) b!1731975))

(assert (= (and b!1731975 res!777933) b!1731983))

(assert (= (and b!1731983 (not res!777945)) b!1731958))

(assert (= (and b!1731958 (not res!777944)) b!1731963))

(assert (= (and b!1731963 (not res!777941)) b!1731966))

(assert (= (and b!1731966 res!777935) b!1731973))

(assert (= (and b!1731973 res!777938) b!1731961))

(assert (= (and b!1731966 (not res!777940)) b!1731952))

(assert (= (and b!1731952 (not res!777939)) b!1731959))

(assert (= (and b!1731959 (not res!777950)) b!1731969))

(assert (= (and b!1731969 (not res!777932)) b!1731974))

(assert (= (and b!1731974 (not res!777949)) b!1731980))

(assert (= (and b!1731980 (not res!777942)) b!1731967))

(assert (= (and b!1731967 (not res!777954)) b!1731964))

(assert (= (and b!1731964 (not res!777951)) b!1731960))

(assert (= (and b!1731960 (not res!777936)) b!1731955))

(assert (= (and b!1731955 (not res!777947)) b!1731957))

(assert (= (and start!170314 ((_ is Cons!18993) suffix!1421)) b!1731968))

(assert (= b!1731965 b!1731962))

(assert (= start!170314 b!1731965))

(assert (= b!1731971 b!1731972))

(assert (= b!1731956 b!1731971))

(assert (= start!170314 b!1731956))

(assert (= b!1731982 b!1731976))

(assert (= b!1731977 b!1731982))

(assert (= (and start!170314 ((_ is Cons!18994) rules!3447)) b!1731977))

(declare-fun b_lambda!55287 () Bool)

(assert (=> (not b_lambda!55287) (not b!1731969)))

(declare-fun tb!103173 () Bool)

(declare-fun t!160800 () Bool)

(assert (=> (and b!1731962 (= (toChars!4737 (transformation!3371 rule!422)) (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615))))) t!160800) tb!103173))

(declare-fun b!1731999 () Bool)

(declare-fun e!1108094 () Bool)

(declare-fun tp!493791 () Bool)

(declare-fun inv!24570 (Conc!6317) Bool)

(assert (=> b!1731999 (= e!1108094 (and (inv!24570 (c!282923 (dynLambda!8863 (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615)))) (dynLambda!8864 (toValue!4878 (transformation!3371 (rule!5353 (_1!10737 lt!664615)))) lt!664605)))) tp!493791))))

(declare-fun result!124056 () Bool)

(declare-fun inv!24571 (BalanceConc!12578) Bool)

(assert (=> tb!103173 (= result!124056 (and (inv!24571 (dynLambda!8863 (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615)))) (dynLambda!8864 (toValue!4878 (transformation!3371 (rule!5353 (_1!10737 lt!664615)))) lt!664605))) e!1108094))))

(assert (= tb!103173 b!1731999))

(declare-fun m!2140417 () Bool)

(assert (=> b!1731999 m!2140417))

(declare-fun m!2140419 () Bool)

(assert (=> tb!103173 m!2140419))

(assert (=> b!1731969 t!160800))

(declare-fun b_and!127775 () Bool)

(assert (= b_and!127765 (and (=> t!160800 result!124056) b_and!127775)))

(declare-fun tb!103175 () Bool)

(declare-fun t!160802 () Bool)

(assert (=> (and b!1731976 (= (toChars!4737 (transformation!3371 (h!24395 rules!3447))) (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615))))) t!160802) tb!103175))

(declare-fun result!124060 () Bool)

(assert (= result!124060 result!124056))

(assert (=> b!1731969 t!160802))

(declare-fun b_and!127777 () Bool)

(assert (= b_and!127769 (and (=> t!160802 result!124060) b_and!127777)))

(declare-fun tb!103177 () Bool)

(declare-fun t!160804 () Bool)

(assert (=> (and b!1731972 (= (toChars!4737 (transformation!3371 (rule!5353 token!523))) (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615))))) t!160804) tb!103177))

(declare-fun result!124062 () Bool)

(assert (= result!124062 result!124056))

(assert (=> b!1731969 t!160804))

(declare-fun b_and!127779 () Bool)

(assert (= b_and!127773 (and (=> t!160804 result!124062) b_and!127779)))

(declare-fun b_lambda!55289 () Bool)

(assert (=> (not b_lambda!55289) (not b!1731969)))

(declare-fun tb!103179 () Bool)

(declare-fun t!160806 () Bool)

(assert (=> (and b!1731962 (= (toValue!4878 (transformation!3371 rule!422)) (toValue!4878 (transformation!3371 (rule!5353 (_1!10737 lt!664615))))) t!160806) tb!103179))

(declare-fun result!124064 () Bool)

(assert (=> tb!103179 (= result!124064 (inv!21 (dynLambda!8864 (toValue!4878 (transformation!3371 (rule!5353 (_1!10737 lt!664615)))) lt!664605)))))

(declare-fun m!2140421 () Bool)

(assert (=> tb!103179 m!2140421))

(assert (=> b!1731969 t!160806))

(declare-fun b_and!127781 () Bool)

(assert (= b_and!127763 (and (=> t!160806 result!124064) b_and!127781)))

(declare-fun t!160808 () Bool)

(declare-fun tb!103181 () Bool)

(assert (=> (and b!1731976 (= (toValue!4878 (transformation!3371 (h!24395 rules!3447))) (toValue!4878 (transformation!3371 (rule!5353 (_1!10737 lt!664615))))) t!160808) tb!103181))

(declare-fun result!124068 () Bool)

(assert (= result!124068 result!124064))

(assert (=> b!1731969 t!160808))

(declare-fun b_and!127783 () Bool)

(assert (= b_and!127767 (and (=> t!160808 result!124068) b_and!127783)))

(declare-fun t!160810 () Bool)

(declare-fun tb!103183 () Bool)

(assert (=> (and b!1731972 (= (toValue!4878 (transformation!3371 (rule!5353 token!523))) (toValue!4878 (transformation!3371 (rule!5353 (_1!10737 lt!664615))))) t!160810) tb!103183))

(declare-fun result!124070 () Bool)

(assert (= result!124070 result!124064))

(assert (=> b!1731969 t!160810))

(declare-fun b_and!127785 () Bool)

(assert (= b_and!127771 (and (=> t!160810 result!124070) b_and!127785)))

(declare-fun b_lambda!55291 () Bool)

(assert (=> (not b_lambda!55291) (not b!1731974)))

(declare-fun t!160812 () Bool)

(declare-fun tb!103185 () Bool)

(assert (=> (and b!1731962 (= (toChars!4737 (transformation!3371 rule!422)) (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615))))) t!160812) tb!103185))

(declare-fun b!1732002 () Bool)

(declare-fun e!1108098 () Bool)

(declare-fun tp!493792 () Bool)

(assert (=> b!1732002 (= e!1108098 (and (inv!24570 (c!282923 (dynLambda!8863 (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615)))) (value!105746 (_1!10737 lt!664615))))) tp!493792))))

(declare-fun result!124072 () Bool)

(assert (=> tb!103185 (= result!124072 (and (inv!24571 (dynLambda!8863 (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615)))) (value!105746 (_1!10737 lt!664615)))) e!1108098))))

(assert (= tb!103185 b!1732002))

(declare-fun m!2140423 () Bool)

(assert (=> b!1732002 m!2140423))

(declare-fun m!2140425 () Bool)

(assert (=> tb!103185 m!2140425))

(assert (=> b!1731974 t!160812))

(declare-fun b_and!127787 () Bool)

(assert (= b_and!127775 (and (=> t!160812 result!124072) b_and!127787)))

(declare-fun t!160814 () Bool)

(declare-fun tb!103187 () Bool)

(assert (=> (and b!1731976 (= (toChars!4737 (transformation!3371 (h!24395 rules!3447))) (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615))))) t!160814) tb!103187))

(declare-fun result!124074 () Bool)

(assert (= result!124074 result!124072))

(assert (=> b!1731974 t!160814))

(declare-fun b_and!127789 () Bool)

(assert (= b_and!127777 (and (=> t!160814 result!124074) b_and!127789)))

(declare-fun t!160816 () Bool)

(declare-fun tb!103189 () Bool)

(assert (=> (and b!1731972 (= (toChars!4737 (transformation!3371 (rule!5353 token!523))) (toChars!4737 (transformation!3371 (rule!5353 (_1!10737 lt!664615))))) t!160816) tb!103189))

(declare-fun result!124076 () Bool)

(assert (= result!124076 result!124072))

(assert (=> b!1731974 t!160816))

(declare-fun b_and!127791 () Bool)

(assert (= b_and!127779 (and (=> t!160816 result!124076) b_and!127791)))

(declare-fun m!2140427 () Bool)

(assert (=> b!1731953 m!2140427))

(declare-fun m!2140429 () Bool)

(assert (=> b!1731974 m!2140429))

(declare-fun m!2140431 () Bool)

(assert (=> b!1731959 m!2140431))

(declare-fun m!2140433 () Bool)

(assert (=> b!1731959 m!2140433))

(declare-fun m!2140435 () Bool)

(assert (=> b!1731958 m!2140435))

(declare-fun m!2140437 () Bool)

(assert (=> b!1731980 m!2140437))

(declare-fun m!2140439 () Bool)

(assert (=> b!1731980 m!2140439))

(declare-fun m!2140441 () Bool)

(assert (=> b!1731980 m!2140441))

(declare-fun m!2140443 () Bool)

(assert (=> b!1731980 m!2140443))

(assert (=> b!1731980 m!2140441))

(declare-fun m!2140445 () Bool)

(assert (=> b!1731980 m!2140445))

(declare-fun m!2140447 () Bool)

(assert (=> b!1731957 m!2140447))

(declare-fun m!2140449 () Bool)

(assert (=> b!1731957 m!2140449))

(declare-fun m!2140451 () Bool)

(assert (=> b!1731965 m!2140451))

(declare-fun m!2140453 () Bool)

(assert (=> b!1731965 m!2140453))

(declare-fun m!2140455 () Bool)

(assert (=> b!1731978 m!2140455))

(declare-fun m!2140457 () Bool)

(assert (=> b!1731952 m!2140457))

(declare-fun m!2140459 () Bool)

(assert (=> b!1731967 m!2140459))

(declare-fun m!2140461 () Bool)

(assert (=> b!1731967 m!2140461))

(declare-fun m!2140463 () Bool)

(assert (=> b!1731967 m!2140463))

(declare-fun m!2140465 () Bool)

(assert (=> b!1731967 m!2140465))

(declare-fun m!2140467 () Bool)

(assert (=> b!1731967 m!2140467))

(assert (=> b!1731967 m!2140467))

(declare-fun m!2140469 () Bool)

(assert (=> b!1731967 m!2140469))

(declare-fun m!2140471 () Bool)

(assert (=> b!1731967 m!2140471))

(declare-fun m!2140473 () Bool)

(assert (=> b!1731973 m!2140473))

(assert (=> b!1731973 m!2140473))

(declare-fun m!2140475 () Bool)

(assert (=> b!1731973 m!2140475))

(assert (=> b!1731973 m!2140475))

(declare-fun m!2140477 () Bool)

(assert (=> b!1731973 m!2140477))

(declare-fun m!2140479 () Bool)

(assert (=> b!1731973 m!2140479))

(declare-fun m!2140481 () Bool)

(assert (=> start!170314 m!2140481))

(declare-fun m!2140483 () Bool)

(assert (=> b!1731964 m!2140483))

(declare-fun m!2140485 () Bool)

(assert (=> b!1731964 m!2140485))

(declare-fun m!2140487 () Bool)

(assert (=> b!1731964 m!2140487))

(declare-fun m!2140489 () Bool)

(assert (=> b!1731970 m!2140489))

(declare-fun m!2140491 () Bool)

(assert (=> b!1731979 m!2140491))

(declare-fun m!2140493 () Bool)

(assert (=> b!1731963 m!2140493))

(declare-fun m!2140495 () Bool)

(assert (=> b!1731963 m!2140495))

(declare-fun m!2140497 () Bool)

(assert (=> b!1731963 m!2140497))

(declare-fun m!2140499 () Bool)

(assert (=> b!1731963 m!2140499))

(declare-fun m!2140501 () Bool)

(assert (=> b!1731954 m!2140501))

(declare-fun m!2140503 () Bool)

(assert (=> b!1731954 m!2140503))

(declare-fun m!2140505 () Bool)

(assert (=> b!1731954 m!2140505))

(declare-fun m!2140507 () Bool)

(assert (=> b!1731954 m!2140507))

(declare-fun m!2140509 () Bool)

(assert (=> b!1731960 m!2140509))

(declare-fun m!2140511 () Bool)

(assert (=> b!1731960 m!2140511))

(declare-fun m!2140513 () Bool)

(assert (=> b!1731960 m!2140513))

(declare-fun m!2140515 () Bool)

(assert (=> b!1731960 m!2140515))

(declare-fun m!2140517 () Bool)

(assert (=> b!1731982 m!2140517))

(declare-fun m!2140519 () Bool)

(assert (=> b!1731982 m!2140519))

(declare-fun m!2140521 () Bool)

(assert (=> b!1731983 m!2140521))

(declare-fun m!2140523 () Bool)

(assert (=> b!1731983 m!2140523))

(declare-fun m!2140525 () Bool)

(assert (=> b!1731983 m!2140525))

(declare-fun m!2140527 () Bool)

(assert (=> b!1731956 m!2140527))

(declare-fun m!2140529 () Bool)

(assert (=> b!1731969 m!2140529))

(assert (=> b!1731969 m!2140529))

(declare-fun m!2140531 () Bool)

(assert (=> b!1731969 m!2140531))

(assert (=> b!1731969 m!2140531))

(declare-fun m!2140533 () Bool)

(assert (=> b!1731969 m!2140533))

(declare-fun m!2140535 () Bool)

(assert (=> b!1731969 m!2140535))

(declare-fun m!2140537 () Bool)

(assert (=> b!1731971 m!2140537))

(declare-fun m!2140539 () Bool)

(assert (=> b!1731971 m!2140539))

(declare-fun m!2140541 () Bool)

(assert (=> b!1731966 m!2140541))

(declare-fun m!2140543 () Bool)

(assert (=> b!1731966 m!2140543))

(declare-fun m!2140545 () Bool)

(assert (=> b!1731966 m!2140545))

(declare-fun m!2140547 () Bool)

(assert (=> b!1731966 m!2140547))

(assert (=> b!1731966 m!2140473))

(declare-fun m!2140549 () Bool)

(assert (=> b!1731966 m!2140549))

(declare-fun m!2140551 () Bool)

(assert (=> b!1731966 m!2140551))

(declare-fun m!2140553 () Bool)

(assert (=> b!1731966 m!2140553))

(declare-fun m!2140555 () Bool)

(assert (=> b!1731966 m!2140555))

(declare-fun m!2140557 () Bool)

(assert (=> b!1731966 m!2140557))

(assert (=> b!1731966 m!2140545))

(declare-fun m!2140559 () Bool)

(assert (=> b!1731966 m!2140559))

(declare-fun m!2140561 () Bool)

(assert (=> b!1731966 m!2140561))

(declare-fun m!2140563 () Bool)

(assert (=> b!1731966 m!2140563))

(declare-fun m!2140565 () Bool)

(assert (=> b!1731966 m!2140565))

(declare-fun m!2140567 () Bool)

(assert (=> b!1731966 m!2140567))

(declare-fun m!2140569 () Bool)

(assert (=> b!1731981 m!2140569))

(declare-fun m!2140571 () Bool)

(assert (=> b!1731955 m!2140571))

(declare-fun m!2140573 () Bool)

(assert (=> b!1731955 m!2140573))

(assert (=> b!1731955 m!2140571))

(declare-fun m!2140575 () Bool)

(assert (=> b!1731955 m!2140575))

(declare-fun m!2140577 () Bool)

(assert (=> b!1731955 m!2140577))

(declare-fun m!2140579 () Bool)

(assert (=> b!1731955 m!2140579))

(check-sat (not b!1731964) (not b!1731955) tp_is_empty!7641 b_and!127783 (not b!1731957) (not b!1731967) (not b!1731959) (not b!1731954) (not b_next!48099) (not start!170314) b_and!127787 (not b!1731966) (not b!1731983) (not b!1731980) (not b_lambda!55289) (not b!1731963) (not b!1731973) (not b_next!48097) (not b!1731958) (not b_next!48095) (not b_next!48091) (not tb!103173) (not b!1731977) (not tb!103179) (not b!1731960) (not b!1731982) (not b!1731981) (not tb!103185) b_and!127781 b_and!127785 b_and!127791 (not b!1731979) (not b!1731971) (not b_lambda!55291) (not b!1731969) (not b_next!48093) (not b!1732002) (not b!1731965) (not b_lambda!55287) (not b!1731978) (not b!1731952) b_and!127789 (not b!1731999) (not b_next!48101) (not b!1731953) (not b!1731956) (not b!1731970) (not b!1731968))
(check-sat (not b_next!48099) b_and!127787 (not b_next!48097) b_and!127783 b_and!127781 (not b_next!48093) b_and!127789 (not b_next!48101) (not b_next!48095) (not b_next!48091) b_and!127785 b_and!127791)
